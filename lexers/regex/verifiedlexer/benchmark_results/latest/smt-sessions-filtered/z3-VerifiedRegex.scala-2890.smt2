; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168850 () Bool)

(assert start!168850)

(declare-fun b!1722324 () Bool)

(declare-fun b_free!46963 () Bool)

(declare-fun b_next!47667 () Bool)

(assert (=> b!1722324 (= b_free!46963 (not b_next!47667))))

(declare-fun tp!491716 () Bool)

(declare-fun b_and!125935 () Bool)

(assert (=> b!1722324 (= tp!491716 b_and!125935)))

(declare-fun b_free!46965 () Bool)

(declare-fun b_next!47669 () Bool)

(assert (=> b!1722324 (= b_free!46965 (not b_next!47669))))

(declare-fun tp!491718 () Bool)

(declare-fun b_and!125937 () Bool)

(assert (=> b!1722324 (= tp!491718 b_and!125937)))

(declare-fun b!1722313 () Bool)

(declare-fun b_free!46967 () Bool)

(declare-fun b_next!47671 () Bool)

(assert (=> b!1722313 (= b_free!46967 (not b_next!47671))))

(declare-fun tp!491724 () Bool)

(declare-fun b_and!125939 () Bool)

(assert (=> b!1722313 (= tp!491724 b_and!125939)))

(declare-fun b_free!46969 () Bool)

(declare-fun b_next!47673 () Bool)

(assert (=> b!1722313 (= b_free!46969 (not b_next!47673))))

(declare-fun tp!491714 () Bool)

(declare-fun b_and!125941 () Bool)

(assert (=> b!1722313 (= tp!491714 b_and!125941)))

(declare-fun b!1722314 () Bool)

(declare-fun b_free!46971 () Bool)

(declare-fun b_next!47675 () Bool)

(assert (=> b!1722314 (= b_free!46971 (not b_next!47675))))

(declare-fun tp!491713 () Bool)

(declare-fun b_and!125943 () Bool)

(assert (=> b!1722314 (= tp!491713 b_and!125943)))

(declare-fun b_free!46973 () Bool)

(declare-fun b_next!47677 () Bool)

(assert (=> b!1722314 (= b_free!46973 (not b_next!47677))))

(declare-fun tp!491717 () Bool)

(declare-fun b_and!125945 () Bool)

(assert (=> b!1722314 (= tp!491717 b_and!125945)))

(declare-fun b!1722340 () Bool)

(declare-fun e!1101689 () Bool)

(assert (=> b!1722340 (= e!1101689 true)))

(declare-fun b!1722339 () Bool)

(declare-fun e!1101688 () Bool)

(assert (=> b!1722339 (= e!1101688 e!1101689)))

(declare-fun b!1722338 () Bool)

(declare-fun e!1101687 () Bool)

(assert (=> b!1722338 (= e!1101687 e!1101688)))

(declare-fun b!1722309 () Bool)

(assert (=> b!1722309 e!1101687))

(assert (= b!1722339 b!1722340))

(assert (= b!1722338 b!1722339))

(assert (= b!1722309 b!1722338))

(declare-fun order!11503 () Int)

(declare-datatypes ((List!18924 0))(
  ( (Nil!18854) (Cons!18854 (h!24255 (_ BitVec 16)) (t!159659 List!18924)) )
))
(declare-datatypes ((TokenValue!3431 0))(
  ( (FloatLiteralValue!6862 (text!24462 List!18924)) (TokenValueExt!3430 (__x!12164 Int)) (Broken!17155 (value!104865 List!18924)) (Object!3500) (End!3431) (Def!3431) (Underscore!3431) (Match!3431) (Else!3431) (Error!3431) (Case!3431) (If!3431) (Extends!3431) (Abstract!3431) (Class!3431) (Val!3431) (DelimiterValue!6862 (del!3491 List!18924)) (KeywordValue!3437 (value!104866 List!18924)) (CommentValue!6862 (value!104867 List!18924)) (WhitespaceValue!6862 (value!104868 List!18924)) (IndentationValue!3431 (value!104869 List!18924)) (String!21486) (Int32!3431) (Broken!17156 (value!104870 List!18924)) (Boolean!3432) (Unit!32696) (OperatorValue!3434 (op!3491 List!18924)) (IdentifierValue!6862 (value!104871 List!18924)) (IdentifierValue!6863 (value!104872 List!18924)) (WhitespaceValue!6863 (value!104873 List!18924)) (True!6862) (False!6862) (Broken!17157 (value!104874 List!18924)) (Broken!17158 (value!104875 List!18924)) (True!6863) (RightBrace!3431) (RightBracket!3431) (Colon!3431) (Null!3431) (Comma!3431) (LeftBracket!3431) (False!6863) (LeftBrace!3431) (ImaginaryLiteralValue!3431 (text!24463 List!18924)) (StringLiteralValue!10293 (value!104876 List!18924)) (EOFValue!3431 (value!104877 List!18924)) (IdentValue!3431 (value!104878 List!18924)) (DelimiterValue!6863 (value!104879 List!18924)) (DedentValue!3431 (value!104880 List!18924)) (NewLineValue!3431 (value!104881 List!18924)) (IntegerValue!10293 (value!104882 (_ BitVec 32)) (text!24464 List!18924)) (IntegerValue!10294 (value!104883 Int) (text!24465 List!18924)) (Times!3431) (Or!3431) (Equal!3431) (Minus!3431) (Broken!17159 (value!104884 List!18924)) (And!3431) (Div!3431) (LessEqual!3431) (Mod!3431) (Concat!8100) (Not!3431) (Plus!3431) (SpaceValue!3431 (value!104885 List!18924)) (IntegerValue!10295 (value!104886 Int) (text!24466 List!18924)) (StringLiteralValue!10294 (text!24467 List!18924)) (FloatLiteralValue!6863 (text!24468 List!18924)) (BytesLiteralValue!3431 (value!104887 List!18924)) (CommentValue!6863 (value!104888 List!18924)) (StringLiteralValue!10295 (value!104889 List!18924)) (ErrorTokenValue!3431 (msg!3492 List!18924)) )
))
(declare-datatypes ((C!9512 0))(
  ( (C!9513 (val!5352 Int)) )
))
(declare-datatypes ((List!18925 0))(
  ( (Nil!18855) (Cons!18855 (h!24256 C!9512) (t!159660 List!18925)) )
))
(declare-datatypes ((String!21487 0))(
  ( (String!21488 (value!104890 String)) )
))
(declare-datatypes ((Regex!4669 0))(
  ( (ElementMatch!4669 (c!281752 C!9512)) (Concat!8101 (regOne!9850 Regex!4669) (regTwo!9850 Regex!4669)) (EmptyExpr!4669) (Star!4669 (reg!4998 Regex!4669)) (EmptyLang!4669) (Union!4669 (regOne!9851 Regex!4669) (regTwo!9851 Regex!4669)) )
))
(declare-datatypes ((IArray!12547 0))(
  ( (IArray!12548 (innerList!6331 List!18925)) )
))
(declare-datatypes ((Conc!6271 0))(
  ( (Node!6271 (left!15047 Conc!6271) (right!15377 Conc!6271) (csize!12772 Int) (cheight!6482 Int)) (Leaf!9162 (xs!9147 IArray!12547) (csize!12773 Int)) (Empty!6271) )
))
(declare-datatypes ((BalanceConc!12486 0))(
  ( (BalanceConc!12487 (c!281753 Conc!6271)) )
))
(declare-datatypes ((TokenValueInjection!6522 0))(
  ( (TokenValueInjection!6523 (toValue!4848 Int) (toChars!4707 Int)) )
))
(declare-datatypes ((Rule!6482 0))(
  ( (Rule!6483 (regex!3341 Regex!4669) (tag!3653 String!21487) (isSeparator!3341 Bool) (transformation!3341 TokenValueInjection!6522)) )
))
(declare-datatypes ((Token!6248 0))(
  ( (Token!6249 (value!104891 TokenValue!3431) (rule!5291 Rule!6482) (size!14982 Int) (originalCharacters!4155 List!18925)) )
))
(declare-datatypes ((tuple2!18546 0))(
  ( (tuple2!18547 (_1!10675 Token!6248) (_2!10675 List!18925)) )
))
(declare-fun lt!659004 () tuple2!18546)

(declare-fun lambda!69152 () Int)

(declare-fun order!11505 () Int)

(declare-fun dynLambda!8694 (Int Int) Int)

(declare-fun dynLambda!8695 (Int Int) Int)

(assert (=> b!1722340 (< (dynLambda!8694 order!11503 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8695 order!11505 lambda!69152))))

(declare-fun order!11507 () Int)

(declare-fun dynLambda!8696 (Int Int) Int)

(assert (=> b!1722340 (< (dynLambda!8696 order!11507 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8695 order!11505 lambda!69152))))

(declare-fun b!1722301 () Bool)

(declare-fun e!1101656 () Bool)

(declare-fun e!1101666 () Bool)

(assert (=> b!1722301 (= e!1101656 e!1101666)))

(declare-fun res!772804 () Bool)

(assert (=> b!1722301 (=> (not res!772804) (not e!1101666))))

(declare-fun lt!658999 () tuple2!18546)

(declare-fun token!523 () Token!6248)

(assert (=> b!1722301 (= res!772804 (= (_1!10675 lt!658999) token!523))))

(declare-datatypes ((Option!3706 0))(
  ( (None!3705) (Some!3705 (v!25110 tuple2!18546)) )
))
(declare-fun lt!659002 () Option!3706)

(declare-fun get!5594 (Option!3706) tuple2!18546)

(assert (=> b!1722301 (= lt!658999 (get!5594 lt!659002))))

(declare-fun b!1722302 () Bool)

(declare-fun e!1101671 () Bool)

(declare-fun e!1101657 () Bool)

(assert (=> b!1722302 (= e!1101671 e!1101657)))

(declare-fun res!772799 () Bool)

(assert (=> b!1722302 (=> res!772799 e!1101657)))

(declare-fun lt!659010 () Option!3706)

(declare-fun lt!659001 () List!18925)

(assert (=> b!1722302 (= res!772799 (or (not (= lt!659001 (_2!10675 lt!659004))) (not (= lt!659010 (Some!3705 (tuple2!18547 (_1!10675 lt!659004) lt!659001))))))))

(assert (=> b!1722302 (= (_2!10675 lt!659004) lt!659001)))

(declare-fun lt!659013 () List!18925)

(declare-fun lt!659016 () List!18925)

(declare-datatypes ((Unit!32697 0))(
  ( (Unit!32698) )
))
(declare-fun lt!659007 () Unit!32697)

(declare-fun lemmaSamePrefixThenSameSuffix!726 (List!18925 List!18925 List!18925 List!18925 List!18925) Unit!32697)

(assert (=> b!1722302 (= lt!659007 (lemmaSamePrefixThenSameSuffix!726 lt!659013 (_2!10675 lt!659004) lt!659013 lt!659001 lt!659016))))

(declare-fun getSuffix!776 (List!18925 List!18925) List!18925)

(assert (=> b!1722302 (= lt!659001 (getSuffix!776 lt!659016 lt!659013))))

(declare-fun lt!659012 () Int)

(declare-fun lt!658998 () TokenValue!3431)

(assert (=> b!1722302 (= lt!659010 (Some!3705 (tuple2!18547 (Token!6249 lt!658998 (rule!5291 (_1!10675 lt!659004)) lt!659012 lt!659013) (_2!10675 lt!659004))))))

(declare-datatypes ((LexerInterface!2970 0))(
  ( (LexerInterfaceExt!2967 (__x!12165 Int)) (Lexer!2968) )
))
(declare-fun thiss!24550 () LexerInterface!2970)

(declare-fun maxPrefixOneRule!900 (LexerInterface!2970 Rule!6482 List!18925) Option!3706)

(assert (=> b!1722302 (= lt!659010 (maxPrefixOneRule!900 thiss!24550 (rule!5291 (_1!10675 lt!659004)) lt!659016))))

(declare-fun size!14983 (List!18925) Int)

(assert (=> b!1722302 (= lt!659012 (size!14983 lt!659013))))

(declare-fun apply!5146 (TokenValueInjection!6522 BalanceConc!12486) TokenValue!3431)

(declare-fun seqFromList!2315 (List!18925) BalanceConc!12486)

(assert (=> b!1722302 (= lt!658998 (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) (seqFromList!2315 lt!659013)))))

(declare-datatypes ((List!18926 0))(
  ( (Nil!18856) (Cons!18856 (h!24257 Rule!6482) (t!159661 List!18926)) )
))
(declare-fun rules!3447 () List!18926)

(declare-fun lt!659017 () Unit!32697)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!299 (LexerInterface!2970 List!18926 List!18925 List!18925 List!18925 Rule!6482) Unit!32697)

(assert (=> b!1722302 (= lt!659017 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!299 thiss!24550 rules!3447 lt!659013 lt!659016 (_2!10675 lt!659004) (rule!5291 (_1!10675 lt!659004))))))

(declare-fun b!1722303 () Bool)

(declare-fun res!772795 () Bool)

(declare-fun e!1101658 () Bool)

(assert (=> b!1722303 (=> (not res!772795) (not e!1101658))))

(declare-fun rule!422 () Rule!6482)

(declare-fun contains!3363 (List!18926 Rule!6482) Bool)

(assert (=> b!1722303 (= res!772795 (contains!3363 rules!3447 rule!422))))

(declare-fun e!1101664 () Bool)

(declare-fun b!1722304 () Bool)

(declare-fun e!1101672 () Bool)

(declare-fun tp!491721 () Bool)

(declare-fun inv!24351 (String!21487) Bool)

(declare-fun inv!24356 (TokenValueInjection!6522) Bool)

(assert (=> b!1722304 (= e!1101664 (and tp!491721 (inv!24351 (tag!3653 (rule!5291 token!523))) (inv!24356 (transformation!3341 (rule!5291 token!523))) e!1101672))))

(declare-fun b!1722305 () Bool)

(declare-fun res!772797 () Bool)

(declare-fun e!1101676 () Bool)

(assert (=> b!1722305 (=> res!772797 e!1101676)))

(declare-fun suffix!1421 () List!18925)

(declare-fun isEmpty!11857 (List!18925) Bool)

(assert (=> b!1722305 (= res!772797 (isEmpty!11857 suffix!1421))))

(declare-fun b!1722306 () Bool)

(declare-fun res!772800 () Bool)

(declare-fun e!1101662 () Bool)

(assert (=> b!1722306 (=> res!772800 e!1101662)))

(declare-fun matchR!2143 (Regex!4669 List!18925) Bool)

(assert (=> b!1722306 (= res!772800 (not (matchR!2143 (regex!3341 (rule!5291 (_1!10675 lt!659004))) lt!659013)))))

(declare-fun res!772793 () Bool)

(assert (=> start!168850 (=> (not res!772793) (not e!1101658))))

(get-info :version)

(assert (=> start!168850 (= res!772793 ((_ is Lexer!2968) thiss!24550))))

(assert (=> start!168850 e!1101658))

(declare-fun e!1101673 () Bool)

(assert (=> start!168850 e!1101673))

(declare-fun e!1101661 () Bool)

(assert (=> start!168850 e!1101661))

(assert (=> start!168850 true))

(declare-fun e!1101660 () Bool)

(declare-fun inv!24357 (Token!6248) Bool)

(assert (=> start!168850 (and (inv!24357 token!523) e!1101660)))

(declare-fun e!1101679 () Bool)

(assert (=> start!168850 e!1101679))

(declare-fun b!1722307 () Bool)

(declare-fun e!1101674 () Bool)

(declare-fun lt!659009 () Rule!6482)

(assert (=> b!1722307 (= e!1101674 (= (rule!5291 (_1!10675 lt!659004)) lt!659009))))

(declare-fun b!1722308 () Bool)

(assert (=> b!1722308 (= e!1101658 e!1101656)))

(declare-fun res!772789 () Bool)

(assert (=> b!1722308 (=> (not res!772789) (not e!1101656))))

(declare-fun isDefined!3049 (Option!3706) Bool)

(assert (=> b!1722308 (= res!772789 (isDefined!3049 lt!659002))))

(declare-fun lt!659022 () List!18925)

(declare-fun maxPrefix!1524 (LexerInterface!2970 List!18926 List!18925) Option!3706)

(assert (=> b!1722308 (= lt!659002 (maxPrefix!1524 thiss!24550 rules!3447 lt!659022))))

(declare-fun list!7618 (BalanceConc!12486) List!18925)

(declare-fun charsOf!1990 (Token!6248) BalanceConc!12486)

(assert (=> b!1722308 (= lt!659022 (list!7618 (charsOf!1990 token!523)))))

(declare-fun e!1101659 () Bool)

(assert (=> b!1722309 (= e!1101662 e!1101659)))

(declare-fun res!772787 () Bool)

(assert (=> b!1722309 (=> res!772787 e!1101659)))

(declare-fun Forall!716 (Int) Bool)

(assert (=> b!1722309 (= res!772787 (not (Forall!716 lambda!69152)))))

(declare-fun lt!659015 () Unit!32697)

(declare-fun lemmaInv!548 (TokenValueInjection!6522) Unit!32697)

(assert (=> b!1722309 (= lt!659015 (lemmaInv!548 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun e!1101670 () Bool)

(declare-fun tp!491723 () Bool)

(declare-fun b!1722310 () Bool)

(assert (=> b!1722310 (= e!1101661 (and tp!491723 (inv!24351 (tag!3653 rule!422)) (inv!24356 (transformation!3341 rule!422)) e!1101670))))

(declare-fun b!1722311 () Bool)

(declare-fun res!772792 () Bool)

(assert (=> b!1722311 (=> (not res!772792) (not e!1101658))))

(declare-fun rulesInvariant!2639 (LexerInterface!2970 List!18926) Bool)

(assert (=> b!1722311 (= res!772792 (rulesInvariant!2639 thiss!24550 rules!3447))))

(declare-fun b!1722312 () Bool)

(declare-fun e!1101678 () Bool)

(declare-fun tp!491719 () Bool)

(assert (=> b!1722312 (= e!1101679 (and e!1101678 tp!491719))))

(assert (=> b!1722313 (= e!1101670 (and tp!491724 tp!491714))))

(assert (=> b!1722314 (= e!1101672 (and tp!491713 tp!491717))))

(declare-fun e!1101663 () Bool)

(declare-fun tp!491720 () Bool)

(declare-fun b!1722315 () Bool)

(assert (=> b!1722315 (= e!1101678 (and tp!491720 (inv!24351 (tag!3653 (h!24257 rules!3447))) (inv!24356 (transformation!3341 (h!24257 rules!3447))) e!1101663))))

(declare-fun b!1722316 () Bool)

(assert (=> b!1722316 (= e!1101666 (not e!1101676))))

(declare-fun res!772796 () Bool)

(assert (=> b!1722316 (=> res!772796 e!1101676)))

(assert (=> b!1722316 (= res!772796 (not (matchR!2143 (regex!3341 rule!422) lt!659022)))))

(declare-fun ruleValid!840 (LexerInterface!2970 Rule!6482) Bool)

(assert (=> b!1722316 (ruleValid!840 thiss!24550 rule!422)))

(declare-fun lt!659019 () Unit!32697)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!364 (LexerInterface!2970 Rule!6482 List!18926) Unit!32697)

(assert (=> b!1722316 (= lt!659019 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!364 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1722317 () Bool)

(declare-fun res!772786 () Bool)

(assert (=> b!1722317 (=> (not res!772786) (not e!1101666))))

(assert (=> b!1722317 (= res!772786 (= (rule!5291 token!523) rule!422))))

(declare-fun b!1722318 () Bool)

(declare-fun res!772788 () Bool)

(assert (=> b!1722318 (=> (not res!772788) (not e!1101666))))

(assert (=> b!1722318 (= res!772788 (isEmpty!11857 (_2!10675 lt!658999)))))

(declare-fun b!1722319 () Bool)

(declare-fun res!772791 () Bool)

(declare-fun e!1101668 () Bool)

(assert (=> b!1722319 (=> res!772791 e!1101668)))

(declare-fun lt!659021 () BalanceConc!12486)

(declare-fun dynLambda!8697 (Int TokenValue!3431) BalanceConc!12486)

(assert (=> b!1722319 (= res!772791 (not (= lt!659021 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))))

(declare-fun b!1722320 () Bool)

(declare-fun lt!659000 () Regex!4669)

(declare-fun validRegex!1882 (Regex!4669) Bool)

(assert (=> b!1722320 (= e!1101657 (validRegex!1882 lt!659000))))

(assert (=> b!1722320 (matchR!2143 lt!659000 lt!659022)))

(declare-fun lt!659011 () Unit!32697)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!90 (LexerInterface!2970 List!18926 List!18925 Token!6248 Rule!6482 List!18925) Unit!32697)

(assert (=> b!1722320 (= lt!659011 (lemmaMaxPrefixThenMatchesRulesRegex!90 thiss!24550 rules!3447 lt!659022 token!523 rule!422 Nil!18855))))

(declare-fun b!1722321 () Bool)

(declare-fun e!1101677 () Bool)

(assert (=> b!1722321 (= e!1101677 e!1101674)))

(declare-fun res!772801 () Bool)

(assert (=> b!1722321 (=> (not res!772801) (not e!1101674))))

(assert (=> b!1722321 (= res!772801 (matchR!2143 (regex!3341 lt!659009) (list!7618 (charsOf!1990 (_1!10675 lt!659004)))))))

(declare-datatypes ((Option!3707 0))(
  ( (None!3706) (Some!3706 (v!25111 Rule!6482)) )
))
(declare-fun lt!659014 () Option!3707)

(declare-fun get!5595 (Option!3707) Rule!6482)

(assert (=> b!1722321 (= lt!659009 (get!5595 lt!659014))))

(declare-fun b!1722322 () Bool)

(declare-fun res!772794 () Bool)

(assert (=> b!1722322 (=> (not res!772794) (not e!1101658))))

(declare-fun isEmpty!11858 (List!18926) Bool)

(assert (=> b!1722322 (= res!772794 (not (isEmpty!11858 rules!3447)))))

(declare-fun b!1722323 () Bool)

(declare-fun tp_is_empty!7581 () Bool)

(declare-fun tp!491715 () Bool)

(assert (=> b!1722323 (= e!1101673 (and tp_is_empty!7581 tp!491715))))

(assert (=> b!1722324 (= e!1101663 (and tp!491716 tp!491718))))

(declare-fun b!1722325 () Bool)

(declare-fun e!1101669 () Bool)

(assert (=> b!1722325 (= e!1101676 e!1101669)))

(declare-fun res!772802 () Bool)

(assert (=> b!1722325 (=> res!772802 e!1101669)))

(declare-fun prefixMatch!554 (Regex!4669 List!18925) Bool)

(declare-fun ++!5166 (List!18925 List!18925) List!18925)

(declare-fun head!3896 (List!18925) C!9512)

(assert (=> b!1722325 (= res!772802 (prefixMatch!554 lt!659000 (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855))))))

(declare-fun rulesRegex!699 (LexerInterface!2970 List!18926) Regex!4669)

(assert (=> b!1722325 (= lt!659000 (rulesRegex!699 thiss!24550 rules!3447))))

(declare-fun b!1722326 () Bool)

(declare-fun tp!491722 () Bool)

(declare-fun inv!21 (TokenValue!3431) Bool)

(assert (=> b!1722326 (= e!1101660 (and (inv!21 (value!104891 token!523)) e!1101664 tp!491722))))

(declare-fun b!1722327 () Bool)

(assert (=> b!1722327 (= e!1101668 e!1101671)))

(declare-fun res!772785 () Bool)

(assert (=> b!1722327 (=> res!772785 e!1101671)))

(declare-fun lt!659018 () Option!3706)

(declare-fun size!14984 (BalanceConc!12486) Int)

(assert (=> b!1722327 (= res!772785 (not (= lt!659018 (Some!3705 (tuple2!18547 (Token!6249 (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021) (rule!5291 (_1!10675 lt!659004)) (size!14984 lt!659021) lt!659013) (_2!10675 lt!659004))))))))

(declare-fun lt!659020 () Unit!32697)

(declare-fun lemmaCharactersSize!413 (Token!6248) Unit!32697)

(assert (=> b!1722327 (= lt!659020 (lemmaCharactersSize!413 (_1!10675 lt!659004)))))

(declare-fun lt!659024 () Unit!32697)

(declare-fun lemmaEqSameImage!266 (TokenValueInjection!6522 BalanceConc!12486 BalanceConc!12486) Unit!32697)

(assert (=> b!1722327 (= lt!659024 (lemmaEqSameImage!266 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021 (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004)))))))

(declare-fun b!1722328 () Bool)

(assert (=> b!1722328 (= e!1101669 e!1101662)))

(declare-fun res!772790 () Bool)

(assert (=> b!1722328 (=> res!772790 e!1101662)))

(declare-fun isPrefix!1582 (List!18925 List!18925) Bool)

(assert (=> b!1722328 (= res!772790 (not (isPrefix!1582 lt!659013 lt!659016)))))

(assert (=> b!1722328 (isPrefix!1582 lt!659013 (++!5166 lt!659013 (_2!10675 lt!659004)))))

(declare-fun lt!659003 () Unit!32697)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1092 (List!18925 List!18925) Unit!32697)

(assert (=> b!1722328 (= lt!659003 (lemmaConcatTwoListThenFirstIsPrefix!1092 lt!659013 (_2!10675 lt!659004)))))

(assert (=> b!1722328 (= lt!659013 (list!7618 lt!659021))))

(assert (=> b!1722328 (= lt!659021 (charsOf!1990 (_1!10675 lt!659004)))))

(assert (=> b!1722328 e!1101677))

(declare-fun res!772798 () Bool)

(assert (=> b!1722328 (=> (not res!772798) (not e!1101677))))

(declare-fun isDefined!3050 (Option!3707) Bool)

(assert (=> b!1722328 (= res!772798 (isDefined!3050 lt!659014))))

(declare-fun getRuleFromTag!391 (LexerInterface!2970 List!18926 String!21487) Option!3707)

(assert (=> b!1722328 (= lt!659014 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun lt!659006 () Unit!32697)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!391 (LexerInterface!2970 List!18926 List!18925 Token!6248) Unit!32697)

(assert (=> b!1722328 (= lt!659006 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!391 thiss!24550 rules!3447 lt!659016 (_1!10675 lt!659004)))))

(assert (=> b!1722328 (= lt!659004 (get!5594 lt!659018))))

(declare-fun lt!659023 () Unit!32697)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!494 (LexerInterface!2970 List!18926 List!18925 List!18925) Unit!32697)

(assert (=> b!1722328 (= lt!659023 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!494 thiss!24550 rules!3447 lt!659022 suffix!1421))))

(assert (=> b!1722328 (= lt!659018 (maxPrefix!1524 thiss!24550 rules!3447 lt!659016))))

(assert (=> b!1722328 (isPrefix!1582 lt!659022 lt!659016)))

(declare-fun lt!659008 () Unit!32697)

(assert (=> b!1722328 (= lt!659008 (lemmaConcatTwoListThenFirstIsPrefix!1092 lt!659022 suffix!1421))))

(assert (=> b!1722328 (= lt!659016 (++!5166 lt!659022 suffix!1421))))

(declare-fun b!1722329 () Bool)

(assert (=> b!1722329 (= e!1101659 e!1101668)))

(declare-fun res!772803 () Bool)

(assert (=> b!1722329 (=> res!772803 e!1101668)))

(declare-fun dynLambda!8698 (Int BalanceConc!12486) TokenValue!3431)

(assert (=> b!1722329 (= res!772803 (not (= (list!7618 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))) lt!659013)))))

(declare-fun lt!659005 () Unit!32697)

(declare-fun lemmaSemiInverse!487 (TokenValueInjection!6522 BalanceConc!12486) Unit!32697)

(assert (=> b!1722329 (= lt!659005 (lemmaSemiInverse!487 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021))))

(assert (= (and start!168850 res!772793) b!1722322))

(assert (= (and b!1722322 res!772794) b!1722311))

(assert (= (and b!1722311 res!772792) b!1722303))

(assert (= (and b!1722303 res!772795) b!1722308))

(assert (= (and b!1722308 res!772789) b!1722301))

(assert (= (and b!1722301 res!772804) b!1722318))

(assert (= (and b!1722318 res!772788) b!1722317))

(assert (= (and b!1722317 res!772786) b!1722316))

(assert (= (and b!1722316 (not res!772796)) b!1722305))

(assert (= (and b!1722305 (not res!772797)) b!1722325))

(assert (= (and b!1722325 (not res!772802)) b!1722328))

(assert (= (and b!1722328 res!772798) b!1722321))

(assert (= (and b!1722321 res!772801) b!1722307))

(assert (= (and b!1722328 (not res!772790)) b!1722306))

(assert (= (and b!1722306 (not res!772800)) b!1722309))

(assert (= (and b!1722309 (not res!772787)) b!1722329))

(assert (= (and b!1722329 (not res!772803)) b!1722319))

(assert (= (and b!1722319 (not res!772791)) b!1722327))

(assert (= (and b!1722327 (not res!772785)) b!1722302))

(assert (= (and b!1722302 (not res!772799)) b!1722320))

(assert (= (and start!168850 ((_ is Cons!18855) suffix!1421)) b!1722323))

(assert (= b!1722310 b!1722313))

(assert (= start!168850 b!1722310))

(assert (= b!1722304 b!1722314))

(assert (= b!1722326 b!1722304))

(assert (= start!168850 b!1722326))

(assert (= b!1722315 b!1722324))

(assert (= b!1722312 b!1722315))

(assert (= (and start!168850 ((_ is Cons!18856) rules!3447)) b!1722312))

(declare-fun b_lambda!54659 () Bool)

(assert (=> (not b_lambda!54659) (not b!1722319)))

(declare-fun tb!102153 () Bool)

(declare-fun t!159642 () Bool)

(assert (=> (and b!1722324 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159642) tb!102153))

(declare-fun b!1722345 () Bool)

(declare-fun e!1101692 () Bool)

(declare-fun tp!491727 () Bool)

(declare-fun inv!24358 (Conc!6271) Bool)

(assert (=> b!1722345 (= e!1101692 (and (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))) tp!491727))))

(declare-fun result!122788 () Bool)

(declare-fun inv!24359 (BalanceConc!12486) Bool)

(assert (=> tb!102153 (= result!122788 (and (inv!24359 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))) e!1101692))))

(assert (= tb!102153 b!1722345))

(declare-fun m!2128235 () Bool)

(assert (=> b!1722345 m!2128235))

(declare-fun m!2128237 () Bool)

(assert (=> tb!102153 m!2128237))

(assert (=> b!1722319 t!159642))

(declare-fun b_and!125947 () Bool)

(assert (= b_and!125937 (and (=> t!159642 result!122788) b_and!125947)))

(declare-fun t!159644 () Bool)

(declare-fun tb!102155 () Bool)

(assert (=> (and b!1722313 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159644) tb!102155))

(declare-fun result!122792 () Bool)

(assert (= result!122792 result!122788))

(assert (=> b!1722319 t!159644))

(declare-fun b_and!125949 () Bool)

(assert (= b_and!125941 (and (=> t!159644 result!122792) b_and!125949)))

(declare-fun t!159646 () Bool)

(declare-fun tb!102157 () Bool)

(assert (=> (and b!1722314 (= (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159646) tb!102157))

(declare-fun result!122794 () Bool)

(assert (= result!122794 result!122788))

(assert (=> b!1722319 t!159646))

(declare-fun b_and!125951 () Bool)

(assert (= b_and!125945 (and (=> t!159646 result!122794) b_and!125951)))

(declare-fun b_lambda!54661 () Bool)

(assert (=> (not b_lambda!54661) (not b!1722329)))

(declare-fun tb!102159 () Bool)

(declare-fun t!159648 () Bool)

(assert (=> (and b!1722324 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159648) tb!102159))

(declare-fun b!1722346 () Bool)

(declare-fun tp!491728 () Bool)

(declare-fun e!1101693 () Bool)

(assert (=> b!1722346 (= e!1101693 (and (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))) tp!491728))))

(declare-fun result!122796 () Bool)

(assert (=> tb!102159 (= result!122796 (and (inv!24359 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))) e!1101693))))

(assert (= tb!102159 b!1722346))

(declare-fun m!2128239 () Bool)

(assert (=> b!1722346 m!2128239))

(declare-fun m!2128241 () Bool)

(assert (=> tb!102159 m!2128241))

(assert (=> b!1722329 t!159648))

(declare-fun b_and!125953 () Bool)

(assert (= b_and!125947 (and (=> t!159648 result!122796) b_and!125953)))

(declare-fun tb!102161 () Bool)

(declare-fun t!159650 () Bool)

(assert (=> (and b!1722313 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159650) tb!102161))

(declare-fun result!122798 () Bool)

(assert (= result!122798 result!122796))

(assert (=> b!1722329 t!159650))

(declare-fun b_and!125955 () Bool)

(assert (= b_and!125949 (and (=> t!159650 result!122798) b_and!125955)))

(declare-fun tb!102163 () Bool)

(declare-fun t!159652 () Bool)

(assert (=> (and b!1722314 (= (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159652) tb!102163))

(declare-fun result!122800 () Bool)

(assert (= result!122800 result!122796))

(assert (=> b!1722329 t!159652))

(declare-fun b_and!125957 () Bool)

(assert (= b_and!125951 (and (=> t!159652 result!122800) b_and!125957)))

(declare-fun b_lambda!54663 () Bool)

(assert (=> (not b_lambda!54663) (not b!1722329)))

(declare-fun t!159654 () Bool)

(declare-fun tb!102165 () Bool)

(assert (=> (and b!1722324 (= (toValue!4848 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159654) tb!102165))

(declare-fun result!122802 () Bool)

(assert (=> tb!102165 (= result!122802 (inv!21 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(declare-fun m!2128243 () Bool)

(assert (=> tb!102165 m!2128243))

(assert (=> b!1722329 t!159654))

(declare-fun b_and!125959 () Bool)

(assert (= b_and!125935 (and (=> t!159654 result!122802) b_and!125959)))

(declare-fun t!159656 () Bool)

(declare-fun tb!102167 () Bool)

(assert (=> (and b!1722313 (= (toValue!4848 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159656) tb!102167))

(declare-fun result!122806 () Bool)

(assert (= result!122806 result!122802))

(assert (=> b!1722329 t!159656))

(declare-fun b_and!125961 () Bool)

(assert (= b_and!125939 (and (=> t!159656 result!122806) b_and!125961)))

(declare-fun t!159658 () Bool)

(declare-fun tb!102169 () Bool)

(assert (=> (and b!1722314 (= (toValue!4848 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159658) tb!102169))

(declare-fun result!122808 () Bool)

(assert (= result!122808 result!122802))

(assert (=> b!1722329 t!159658))

(declare-fun b_and!125963 () Bool)

(assert (= b_and!125943 (and (=> t!159658 result!122808) b_and!125963)))

(declare-fun m!2128245 () Bool)

(assert (=> b!1722301 m!2128245))

(declare-fun m!2128247 () Bool)

(assert (=> b!1722320 m!2128247))

(declare-fun m!2128249 () Bool)

(assert (=> b!1722320 m!2128249))

(declare-fun m!2128251 () Bool)

(assert (=> b!1722320 m!2128251))

(declare-fun m!2128253 () Bool)

(assert (=> b!1722319 m!2128253))

(declare-fun m!2128255 () Bool)

(assert (=> b!1722302 m!2128255))

(declare-fun m!2128257 () Bool)

(assert (=> b!1722302 m!2128257))

(declare-fun m!2128259 () Bool)

(assert (=> b!1722302 m!2128259))

(assert (=> b!1722302 m!2128257))

(declare-fun m!2128261 () Bool)

(assert (=> b!1722302 m!2128261))

(declare-fun m!2128263 () Bool)

(assert (=> b!1722302 m!2128263))

(declare-fun m!2128265 () Bool)

(assert (=> b!1722302 m!2128265))

(declare-fun m!2128267 () Bool)

(assert (=> b!1722302 m!2128267))

(declare-fun m!2128269 () Bool)

(assert (=> b!1722328 m!2128269))

(declare-fun m!2128271 () Bool)

(assert (=> b!1722328 m!2128271))

(declare-fun m!2128273 () Bool)

(assert (=> b!1722328 m!2128273))

(declare-fun m!2128275 () Bool)

(assert (=> b!1722328 m!2128275))

(declare-fun m!2128277 () Bool)

(assert (=> b!1722328 m!2128277))

(declare-fun m!2128279 () Bool)

(assert (=> b!1722328 m!2128279))

(assert (=> b!1722328 m!2128269))

(declare-fun m!2128281 () Bool)

(assert (=> b!1722328 m!2128281))

(declare-fun m!2128283 () Bool)

(assert (=> b!1722328 m!2128283))

(declare-fun m!2128285 () Bool)

(assert (=> b!1722328 m!2128285))

(declare-fun m!2128287 () Bool)

(assert (=> b!1722328 m!2128287))

(declare-fun m!2128289 () Bool)

(assert (=> b!1722328 m!2128289))

(declare-fun m!2128291 () Bool)

(assert (=> b!1722328 m!2128291))

(declare-fun m!2128293 () Bool)

(assert (=> b!1722328 m!2128293))

(declare-fun m!2128295 () Bool)

(assert (=> b!1722328 m!2128295))

(declare-fun m!2128297 () Bool)

(assert (=> b!1722328 m!2128297))

(declare-fun m!2128299 () Bool)

(assert (=> b!1722309 m!2128299))

(declare-fun m!2128301 () Bool)

(assert (=> b!1722309 m!2128301))

(declare-fun m!2128303 () Bool)

(assert (=> b!1722310 m!2128303))

(declare-fun m!2128305 () Bool)

(assert (=> b!1722310 m!2128305))

(declare-fun m!2128307 () Bool)

(assert (=> start!168850 m!2128307))

(declare-fun m!2128309 () Bool)

(assert (=> b!1722316 m!2128309))

(declare-fun m!2128311 () Bool)

(assert (=> b!1722316 m!2128311))

(declare-fun m!2128313 () Bool)

(assert (=> b!1722316 m!2128313))

(assert (=> b!1722321 m!2128287))

(assert (=> b!1722321 m!2128287))

(declare-fun m!2128315 () Bool)

(assert (=> b!1722321 m!2128315))

(assert (=> b!1722321 m!2128315))

(declare-fun m!2128317 () Bool)

(assert (=> b!1722321 m!2128317))

(declare-fun m!2128319 () Bool)

(assert (=> b!1722321 m!2128319))

(declare-fun m!2128321 () Bool)

(assert (=> b!1722308 m!2128321))

(declare-fun m!2128323 () Bool)

(assert (=> b!1722308 m!2128323))

(declare-fun m!2128325 () Bool)

(assert (=> b!1722308 m!2128325))

(assert (=> b!1722308 m!2128325))

(declare-fun m!2128327 () Bool)

(assert (=> b!1722308 m!2128327))

(declare-fun m!2128329 () Bool)

(assert (=> b!1722329 m!2128329))

(assert (=> b!1722329 m!2128329))

(declare-fun m!2128331 () Bool)

(assert (=> b!1722329 m!2128331))

(assert (=> b!1722329 m!2128331))

(declare-fun m!2128333 () Bool)

(assert (=> b!1722329 m!2128333))

(declare-fun m!2128335 () Bool)

(assert (=> b!1722329 m!2128335))

(declare-fun m!2128337 () Bool)

(assert (=> b!1722304 m!2128337))

(declare-fun m!2128339 () Bool)

(assert (=> b!1722304 m!2128339))

(declare-fun m!2128341 () Bool)

(assert (=> b!1722311 m!2128341))

(declare-fun m!2128343 () Bool)

(assert (=> b!1722315 m!2128343))

(declare-fun m!2128345 () Bool)

(assert (=> b!1722315 m!2128345))

(declare-fun m!2128347 () Bool)

(assert (=> b!1722305 m!2128347))

(declare-fun m!2128349 () Bool)

(assert (=> b!1722326 m!2128349))

(declare-fun m!2128351 () Bool)

(assert (=> b!1722322 m!2128351))

(declare-fun m!2128353 () Bool)

(assert (=> b!1722306 m!2128353))

(declare-fun m!2128355 () Bool)

(assert (=> b!1722325 m!2128355))

(declare-fun m!2128357 () Bool)

(assert (=> b!1722325 m!2128357))

(assert (=> b!1722325 m!2128357))

(declare-fun m!2128359 () Bool)

(assert (=> b!1722325 m!2128359))

(declare-fun m!2128361 () Bool)

(assert (=> b!1722325 m!2128361))

(declare-fun m!2128363 () Bool)

(assert (=> b!1722327 m!2128363))

(declare-fun m!2128365 () Bool)

(assert (=> b!1722327 m!2128365))

(declare-fun m!2128367 () Bool)

(assert (=> b!1722327 m!2128367))

(assert (=> b!1722327 m!2128365))

(declare-fun m!2128369 () Bool)

(assert (=> b!1722327 m!2128369))

(declare-fun m!2128371 () Bool)

(assert (=> b!1722327 m!2128371))

(declare-fun m!2128373 () Bool)

(assert (=> b!1722303 m!2128373))

(declare-fun m!2128375 () Bool)

(assert (=> b!1722318 m!2128375))

(check-sat (not b!1722326) (not tb!102153) (not b_next!47667) tp_is_empty!7581 (not start!168850) b_and!125955 (not b!1722320) (not b!1722325) (not b!1722308) (not b!1722305) (not b!1722323) (not b!1722327) (not b_next!47673) (not b!1722318) (not b_next!47671) (not b!1722315) b_and!125953 (not b_next!47675) b_and!125963 (not b!1722321) b_and!125959 (not b_lambda!54663) (not b!1722301) (not b!1722304) (not b_next!47677) (not b!1722309) (not b_next!47669) (not b!1722346) (not b!1722303) (not b!1722311) (not b!1722345) (not b!1722316) (not b!1722306) (not b!1722312) (not b!1722322) (not b!1722302) (not b!1722328) b_and!125957 (not b_lambda!54661) (not tb!102159) (not b_lambda!54659) (not b!1722329) (not tb!102165) (not b!1722310) b_and!125961)
(check-sat (not b_next!47671) (not b_next!47667) b_and!125959 b_and!125955 b_and!125957 b_and!125961 (not b_next!47673) b_and!125953 (not b_next!47675) b_and!125963 (not b_next!47677) (not b_next!47669))
(get-model)

(declare-fun d!527863 () Bool)

(declare-fun lt!659036 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2691 (List!18926) (InoxSet Rule!6482))

(assert (=> d!527863 (= lt!659036 (select (content!2691 rules!3447) rule!422))))

(declare-fun e!1101737 () Bool)

(assert (=> d!527863 (= lt!659036 e!1101737)))

(declare-fun res!772842 () Bool)

(assert (=> d!527863 (=> (not res!772842) (not e!1101737))))

(assert (=> d!527863 (= res!772842 ((_ is Cons!18856) rules!3447))))

(assert (=> d!527863 (= (contains!3363 rules!3447 rule!422) lt!659036)))

(declare-fun b!1722416 () Bool)

(declare-fun e!1101738 () Bool)

(assert (=> b!1722416 (= e!1101737 e!1101738)))

(declare-fun res!772843 () Bool)

(assert (=> b!1722416 (=> res!772843 e!1101738)))

(assert (=> b!1722416 (= res!772843 (= (h!24257 rules!3447) rule!422))))

(declare-fun b!1722417 () Bool)

(assert (=> b!1722417 (= e!1101738 (contains!3363 (t!159661 rules!3447) rule!422))))

(assert (= (and d!527863 res!772842) b!1722416))

(assert (= (and b!1722416 (not res!772843)) b!1722417))

(declare-fun m!2128409 () Bool)

(assert (=> d!527863 m!2128409))

(declare-fun m!2128411 () Bool)

(assert (=> d!527863 m!2128411))

(declare-fun m!2128413 () Bool)

(assert (=> b!1722417 m!2128413))

(assert (=> b!1722303 d!527863))

(declare-fun d!527875 () Bool)

(assert (=> d!527875 (= (inv!24351 (tag!3653 (rule!5291 token!523))) (= (mod (str.len (value!104890 (tag!3653 (rule!5291 token!523)))) 2) 0))))

(assert (=> b!1722304 d!527875))

(declare-fun d!527877 () Bool)

(declare-fun res!772849 () Bool)

(declare-fun e!1101744 () Bool)

(assert (=> d!527877 (=> (not res!772849) (not e!1101744))))

(declare-fun semiInverseModEq!1321 (Int Int) Bool)

(assert (=> d!527877 (= res!772849 (semiInverseModEq!1321 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 token!523)))))))

(assert (=> d!527877 (= (inv!24356 (transformation!3341 (rule!5291 token!523))) e!1101744)))

(declare-fun b!1722423 () Bool)

(declare-fun equivClasses!1262 (Int Int) Bool)

(assert (=> b!1722423 (= e!1101744 (equivClasses!1262 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 token!523)))))))

(assert (= (and d!527877 res!772849) b!1722423))

(declare-fun m!2128421 () Bool)

(assert (=> d!527877 m!2128421))

(declare-fun m!2128423 () Bool)

(assert (=> b!1722423 m!2128423))

(assert (=> b!1722304 d!527877))

(declare-fun d!527883 () Bool)

(declare-fun c!281775 () Bool)

(assert (=> d!527883 (= c!281775 (isEmpty!11857 (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855))))))

(declare-fun e!1101756 () Bool)

(assert (=> d!527883 (= (prefixMatch!554 lt!659000 (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855))) e!1101756)))

(declare-fun b!1722442 () Bool)

(declare-fun lostCause!518 (Regex!4669) Bool)

(assert (=> b!1722442 (= e!1101756 (not (lostCause!518 lt!659000)))))

(declare-fun b!1722443 () Bool)

(declare-fun derivativeStep!1176 (Regex!4669 C!9512) Regex!4669)

(declare-fun tail!2573 (List!18925) List!18925)

(assert (=> b!1722443 (= e!1101756 (prefixMatch!554 (derivativeStep!1176 lt!659000 (head!3896 (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855)))) (tail!2573 (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855)))))))

(assert (= (and d!527883 c!281775) b!1722442))

(assert (= (and d!527883 (not c!281775)) b!1722443))

(assert (=> d!527883 m!2128357))

(declare-fun m!2128445 () Bool)

(assert (=> d!527883 m!2128445))

(declare-fun m!2128447 () Bool)

(assert (=> b!1722442 m!2128447))

(assert (=> b!1722443 m!2128357))

(declare-fun m!2128449 () Bool)

(assert (=> b!1722443 m!2128449))

(assert (=> b!1722443 m!2128449))

(declare-fun m!2128451 () Bool)

(assert (=> b!1722443 m!2128451))

(assert (=> b!1722443 m!2128357))

(declare-fun m!2128453 () Bool)

(assert (=> b!1722443 m!2128453))

(assert (=> b!1722443 m!2128451))

(assert (=> b!1722443 m!2128453))

(declare-fun m!2128455 () Bool)

(assert (=> b!1722443 m!2128455))

(assert (=> b!1722325 d!527883))

(declare-fun b!1722479 () Bool)

(declare-fun e!1101775 () List!18925)

(assert (=> b!1722479 (= e!1101775 (Cons!18855 (head!3896 suffix!1421) Nil!18855))))

(declare-fun b!1722480 () Bool)

(assert (=> b!1722480 (= e!1101775 (Cons!18855 (h!24256 lt!659022) (++!5166 (t!159660 lt!659022) (Cons!18855 (head!3896 suffix!1421) Nil!18855))))))

(declare-fun b!1722482 () Bool)

(declare-fun e!1101776 () Bool)

(declare-fun lt!659049 () List!18925)

(assert (=> b!1722482 (= e!1101776 (or (not (= (Cons!18855 (head!3896 suffix!1421) Nil!18855) Nil!18855)) (= lt!659049 lt!659022)))))

(declare-fun b!1722481 () Bool)

(declare-fun res!772872 () Bool)

(assert (=> b!1722481 (=> (not res!772872) (not e!1101776))))

(assert (=> b!1722481 (= res!772872 (= (size!14983 lt!659049) (+ (size!14983 lt!659022) (size!14983 (Cons!18855 (head!3896 suffix!1421) Nil!18855)))))))

(declare-fun d!527893 () Bool)

(assert (=> d!527893 e!1101776))

(declare-fun res!772873 () Bool)

(assert (=> d!527893 (=> (not res!772873) (not e!1101776))))

(declare-fun content!2693 (List!18925) (InoxSet C!9512))

(assert (=> d!527893 (= res!772873 (= (content!2693 lt!659049) ((_ map or) (content!2693 lt!659022) (content!2693 (Cons!18855 (head!3896 suffix!1421) Nil!18855)))))))

(assert (=> d!527893 (= lt!659049 e!1101775)))

(declare-fun c!281784 () Bool)

(assert (=> d!527893 (= c!281784 ((_ is Nil!18855) lt!659022))))

(assert (=> d!527893 (= (++!5166 lt!659022 (Cons!18855 (head!3896 suffix!1421) Nil!18855)) lt!659049)))

(assert (= (and d!527893 c!281784) b!1722479))

(assert (= (and d!527893 (not c!281784)) b!1722480))

(assert (= (and d!527893 res!772873) b!1722481))

(assert (= (and b!1722481 res!772872) b!1722482))

(declare-fun m!2128497 () Bool)

(assert (=> b!1722480 m!2128497))

(declare-fun m!2128499 () Bool)

(assert (=> b!1722481 m!2128499))

(declare-fun m!2128503 () Bool)

(assert (=> b!1722481 m!2128503))

(declare-fun m!2128505 () Bool)

(assert (=> b!1722481 m!2128505))

(declare-fun m!2128507 () Bool)

(assert (=> d!527893 m!2128507))

(declare-fun m!2128509 () Bool)

(assert (=> d!527893 m!2128509))

(declare-fun m!2128511 () Bool)

(assert (=> d!527893 m!2128511))

(assert (=> b!1722325 d!527893))

(declare-fun d!527909 () Bool)

(assert (=> d!527909 (= (head!3896 suffix!1421) (h!24256 suffix!1421))))

(assert (=> b!1722325 d!527909))

(declare-fun d!527911 () Bool)

(declare-fun lt!659053 () Unit!32697)

(declare-fun lemma!331 (List!18926 LexerInterface!2970 List!18926) Unit!32697)

(assert (=> d!527911 (= lt!659053 (lemma!331 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69161 () Int)

(declare-datatypes ((List!18927 0))(
  ( (Nil!18857) (Cons!18857 (h!24258 Regex!4669) (t!159722 List!18927)) )
))
(declare-fun generalisedUnion!339 (List!18927) Regex!4669)

(declare-fun map!3881 (List!18926 Int) List!18927)

(assert (=> d!527911 (= (rulesRegex!699 thiss!24550 rules!3447) (generalisedUnion!339 (map!3881 rules!3447 lambda!69161)))))

(declare-fun bs!402266 () Bool)

(assert (= bs!402266 d!527911))

(declare-fun m!2128533 () Bool)

(assert (=> bs!402266 m!2128533))

(declare-fun m!2128535 () Bool)

(assert (=> bs!402266 m!2128535))

(assert (=> bs!402266 m!2128535))

(declare-fun m!2128537 () Bool)

(assert (=> bs!402266 m!2128537))

(assert (=> b!1722325 d!527911))

(declare-fun d!527917 () Bool)

(assert (=> d!527917 (= (_2!10675 lt!659004) lt!659001)))

(declare-fun lt!659056 () Unit!32697)

(declare-fun choose!10479 (List!18925 List!18925 List!18925 List!18925 List!18925) Unit!32697)

(assert (=> d!527917 (= lt!659056 (choose!10479 lt!659013 (_2!10675 lt!659004) lt!659013 lt!659001 lt!659016))))

(assert (=> d!527917 (isPrefix!1582 lt!659013 lt!659016)))

(assert (=> d!527917 (= (lemmaSamePrefixThenSameSuffix!726 lt!659013 (_2!10675 lt!659004) lt!659013 lt!659001 lt!659016) lt!659056)))

(declare-fun bs!402267 () Bool)

(assert (= bs!402267 d!527917))

(declare-fun m!2128539 () Bool)

(assert (=> bs!402267 m!2128539))

(assert (=> bs!402267 m!2128289))

(assert (=> b!1722302 d!527917))

(declare-fun b!1722632 () Bool)

(declare-fun res!772975 () Bool)

(declare-fun e!1101863 () Bool)

(assert (=> b!1722632 (=> (not res!772975) (not e!1101863))))

(declare-fun lt!659110 () Option!3706)

(assert (=> b!1722632 (= res!772975 (= (rule!5291 (_1!10675 (get!5594 lt!659110))) (rule!5291 (_1!10675 lt!659004))))))

(declare-fun b!1722633 () Bool)

(declare-fun res!772979 () Bool)

(assert (=> b!1722633 (=> (not res!772979) (not e!1101863))))

(assert (=> b!1722633 (= res!772979 (= (value!104891 (_1!10675 (get!5594 lt!659110))) (apply!5146 (transformation!3341 (rule!5291 (_1!10675 (get!5594 lt!659110)))) (seqFromList!2315 (originalCharacters!4155 (_1!10675 (get!5594 lt!659110)))))))))

(declare-fun b!1722634 () Bool)

(declare-fun e!1101864 () Option!3706)

(declare-datatypes ((tuple2!18548 0))(
  ( (tuple2!18549 (_1!10676 List!18925) (_2!10676 List!18925)) )
))
(declare-fun lt!659108 () tuple2!18548)

(assert (=> b!1722634 (= e!1101864 (Some!3705 (tuple2!18547 (Token!6249 (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) (seqFromList!2315 (_1!10676 lt!659108))) (rule!5291 (_1!10675 lt!659004)) (size!14984 (seqFromList!2315 (_1!10676 lt!659108))) (_1!10676 lt!659108)) (_2!10676 lt!659108))))))

(declare-fun lt!659107 () Unit!32697)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!382 (Regex!4669 List!18925) Unit!32697)

(assert (=> b!1722634 (= lt!659107 (longestMatchIsAcceptedByMatchOrIsEmpty!382 (regex!3341 (rule!5291 (_1!10675 lt!659004))) lt!659016))))

(declare-fun res!772974 () Bool)

(declare-fun findLongestMatchInner!398 (Regex!4669 List!18925 Int List!18925 List!18925 Int) tuple2!18548)

(assert (=> b!1722634 (= res!772974 (isEmpty!11857 (_1!10676 (findLongestMatchInner!398 (regex!3341 (rule!5291 (_1!10675 lt!659004))) Nil!18855 (size!14983 Nil!18855) lt!659016 lt!659016 (size!14983 lt!659016)))))))

(declare-fun e!1101866 () Bool)

(assert (=> b!1722634 (=> res!772974 e!1101866)))

(assert (=> b!1722634 e!1101866))

(declare-fun lt!659106 () Unit!32697)

(assert (=> b!1722634 (= lt!659106 lt!659107)))

(declare-fun lt!659109 () Unit!32697)

(assert (=> b!1722634 (= lt!659109 (lemmaSemiInverse!487 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) (seqFromList!2315 (_1!10676 lt!659108))))))

(declare-fun b!1722635 () Bool)

(declare-fun res!772980 () Bool)

(assert (=> b!1722635 (=> (not res!772980) (not e!1101863))))

(assert (=> b!1722635 (= res!772980 (= (++!5166 (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659110)))) (_2!10675 (get!5594 lt!659110))) lt!659016))))

(declare-fun b!1722636 () Bool)

(declare-fun res!772976 () Bool)

(assert (=> b!1722636 (=> (not res!772976) (not e!1101863))))

(assert (=> b!1722636 (= res!772976 (< (size!14983 (_2!10675 (get!5594 lt!659110))) (size!14983 lt!659016)))))

(declare-fun b!1722637 () Bool)

(assert (=> b!1722637 (= e!1101866 (matchR!2143 (regex!3341 (rule!5291 (_1!10675 lt!659004))) (_1!10676 (findLongestMatchInner!398 (regex!3341 (rule!5291 (_1!10675 lt!659004))) Nil!18855 (size!14983 Nil!18855) lt!659016 lt!659016 (size!14983 lt!659016)))))))

(declare-fun b!1722638 () Bool)

(assert (=> b!1722638 (= e!1101863 (= (size!14982 (_1!10675 (get!5594 lt!659110))) (size!14983 (originalCharacters!4155 (_1!10675 (get!5594 lt!659110))))))))

(declare-fun d!527919 () Bool)

(declare-fun e!1101865 () Bool)

(assert (=> d!527919 e!1101865))

(declare-fun res!772977 () Bool)

(assert (=> d!527919 (=> res!772977 e!1101865)))

(declare-fun isEmpty!11859 (Option!3706) Bool)

(assert (=> d!527919 (= res!772977 (isEmpty!11859 lt!659110))))

(assert (=> d!527919 (= lt!659110 e!1101864)))

(declare-fun c!281809 () Bool)

(assert (=> d!527919 (= c!281809 (isEmpty!11857 (_1!10676 lt!659108)))))

(declare-fun findLongestMatch!325 (Regex!4669 List!18925) tuple2!18548)

(assert (=> d!527919 (= lt!659108 (findLongestMatch!325 (regex!3341 (rule!5291 (_1!10675 lt!659004))) lt!659016))))

(assert (=> d!527919 (ruleValid!840 thiss!24550 (rule!5291 (_1!10675 lt!659004)))))

(assert (=> d!527919 (= (maxPrefixOneRule!900 thiss!24550 (rule!5291 (_1!10675 lt!659004)) lt!659016) lt!659110)))

(declare-fun b!1722639 () Bool)

(assert (=> b!1722639 (= e!1101865 e!1101863)))

(declare-fun res!772978 () Bool)

(assert (=> b!1722639 (=> (not res!772978) (not e!1101863))))

(assert (=> b!1722639 (= res!772978 (matchR!2143 (regex!3341 (rule!5291 (_1!10675 lt!659004))) (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659110))))))))

(declare-fun b!1722640 () Bool)

(assert (=> b!1722640 (= e!1101864 None!3705)))

(assert (= (and d!527919 c!281809) b!1722640))

(assert (= (and d!527919 (not c!281809)) b!1722634))

(assert (= (and b!1722634 (not res!772974)) b!1722637))

(assert (= (and d!527919 (not res!772977)) b!1722639))

(assert (= (and b!1722639 res!772978) b!1722635))

(assert (= (and b!1722635 res!772980) b!1722636))

(assert (= (and b!1722636 res!772976) b!1722632))

(assert (= (and b!1722632 res!772975) b!1722633))

(assert (= (and b!1722633 res!772979) b!1722638))

(declare-fun m!2128661 () Bool)

(assert (=> d!527919 m!2128661))

(declare-fun m!2128663 () Bool)

(assert (=> d!527919 m!2128663))

(declare-fun m!2128665 () Bool)

(assert (=> d!527919 m!2128665))

(declare-fun m!2128667 () Bool)

(assert (=> d!527919 m!2128667))

(declare-fun m!2128669 () Bool)

(assert (=> b!1722639 m!2128669))

(declare-fun m!2128671 () Bool)

(assert (=> b!1722639 m!2128671))

(assert (=> b!1722639 m!2128671))

(declare-fun m!2128673 () Bool)

(assert (=> b!1722639 m!2128673))

(assert (=> b!1722639 m!2128673))

(declare-fun m!2128675 () Bool)

(assert (=> b!1722639 m!2128675))

(assert (=> b!1722638 m!2128669))

(declare-fun m!2128677 () Bool)

(assert (=> b!1722638 m!2128677))

(declare-fun m!2128679 () Bool)

(assert (=> b!1722634 m!2128679))

(declare-fun m!2128681 () Bool)

(assert (=> b!1722634 m!2128681))

(declare-fun m!2128683 () Bool)

(assert (=> b!1722634 m!2128683))

(declare-fun m!2128685 () Bool)

(assert (=> b!1722634 m!2128685))

(assert (=> b!1722634 m!2128679))

(declare-fun m!2128687 () Bool)

(assert (=> b!1722634 m!2128687))

(declare-fun m!2128689 () Bool)

(assert (=> b!1722634 m!2128689))

(assert (=> b!1722634 m!2128683))

(declare-fun m!2128691 () Bool)

(assert (=> b!1722634 m!2128691))

(assert (=> b!1722634 m!2128687))

(assert (=> b!1722634 m!2128683))

(declare-fun m!2128693 () Bool)

(assert (=> b!1722634 m!2128693))

(assert (=> b!1722634 m!2128683))

(declare-fun m!2128695 () Bool)

(assert (=> b!1722634 m!2128695))

(assert (=> b!1722632 m!2128669))

(assert (=> b!1722637 m!2128679))

(assert (=> b!1722637 m!2128687))

(assert (=> b!1722637 m!2128679))

(assert (=> b!1722637 m!2128687))

(assert (=> b!1722637 m!2128689))

(declare-fun m!2128697 () Bool)

(assert (=> b!1722637 m!2128697))

(assert (=> b!1722633 m!2128669))

(declare-fun m!2128699 () Bool)

(assert (=> b!1722633 m!2128699))

(assert (=> b!1722633 m!2128699))

(declare-fun m!2128701 () Bool)

(assert (=> b!1722633 m!2128701))

(assert (=> b!1722635 m!2128669))

(assert (=> b!1722635 m!2128671))

(assert (=> b!1722635 m!2128671))

(assert (=> b!1722635 m!2128673))

(assert (=> b!1722635 m!2128673))

(declare-fun m!2128703 () Bool)

(assert (=> b!1722635 m!2128703))

(assert (=> b!1722636 m!2128669))

(declare-fun m!2128705 () Bool)

(assert (=> b!1722636 m!2128705))

(assert (=> b!1722636 m!2128687))

(assert (=> b!1722302 d!527919))

(declare-fun d!527945 () Bool)

(assert (=> d!527945 (= (maxPrefixOneRule!900 thiss!24550 (rule!5291 (_1!10675 lt!659004)) lt!659016) (Some!3705 (tuple2!18547 (Token!6249 (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) (seqFromList!2315 lt!659013)) (rule!5291 (_1!10675 lt!659004)) (size!14983 lt!659013) lt!659013) (_2!10675 lt!659004))))))

(declare-fun lt!659113 () Unit!32697)

(declare-fun choose!10480 (LexerInterface!2970 List!18926 List!18925 List!18925 List!18925 Rule!6482) Unit!32697)

(assert (=> d!527945 (= lt!659113 (choose!10480 thiss!24550 rules!3447 lt!659013 lt!659016 (_2!10675 lt!659004) (rule!5291 (_1!10675 lt!659004))))))

(assert (=> d!527945 (not (isEmpty!11858 rules!3447))))

(assert (=> d!527945 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!299 thiss!24550 rules!3447 lt!659013 lt!659016 (_2!10675 lt!659004) (rule!5291 (_1!10675 lt!659004))) lt!659113)))

(declare-fun bs!402270 () Bool)

(assert (= bs!402270 d!527945))

(declare-fun m!2128707 () Bool)

(assert (=> bs!402270 m!2128707))

(assert (=> bs!402270 m!2128257))

(assert (=> bs!402270 m!2128259))

(assert (=> bs!402270 m!2128257))

(assert (=> bs!402270 m!2128263))

(assert (=> bs!402270 m!2128351))

(assert (=> bs!402270 m!2128267))

(assert (=> b!1722302 d!527945))

(declare-fun d!527947 () Bool)

(assert (=> d!527947 (= (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) (seqFromList!2315 lt!659013)) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (seqFromList!2315 lt!659013)))))

(declare-fun b_lambda!54673 () Bool)

(assert (=> (not b_lambda!54673) (not d!527947)))

(declare-fun t!159669 () Bool)

(declare-fun tb!102177 () Bool)

(assert (=> (and b!1722324 (= (toValue!4848 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159669) tb!102177))

(declare-fun result!122816 () Bool)

(assert (=> tb!102177 (= result!122816 (inv!21 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (seqFromList!2315 lt!659013))))))

(declare-fun m!2128709 () Bool)

(assert (=> tb!102177 m!2128709))

(assert (=> d!527947 t!159669))

(declare-fun b_and!125989 () Bool)

(assert (= b_and!125959 (and (=> t!159669 result!122816) b_and!125989)))

(declare-fun t!159671 () Bool)

(declare-fun tb!102179 () Bool)

(assert (=> (and b!1722313 (= (toValue!4848 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159671) tb!102179))

(declare-fun result!122818 () Bool)

(assert (= result!122818 result!122816))

(assert (=> d!527947 t!159671))

(declare-fun b_and!125991 () Bool)

(assert (= b_and!125961 (and (=> t!159671 result!122818) b_and!125991)))

(declare-fun t!159673 () Bool)

(declare-fun tb!102181 () Bool)

(assert (=> (and b!1722314 (= (toValue!4848 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159673) tb!102181))

(declare-fun result!122820 () Bool)

(assert (= result!122820 result!122816))

(assert (=> d!527947 t!159673))

(declare-fun b_and!125993 () Bool)

(assert (= b_and!125963 (and (=> t!159673 result!122820) b_and!125993)))

(assert (=> d!527947 m!2128257))

(declare-fun m!2128711 () Bool)

(assert (=> d!527947 m!2128711))

(assert (=> b!1722302 d!527947))

(declare-fun d!527949 () Bool)

(declare-fun lt!659116 () List!18925)

(assert (=> d!527949 (= (++!5166 lt!659013 lt!659116) lt!659016)))

(declare-fun e!1101870 () List!18925)

(assert (=> d!527949 (= lt!659116 e!1101870)))

(declare-fun c!281812 () Bool)

(assert (=> d!527949 (= c!281812 ((_ is Cons!18855) lt!659013))))

(assert (=> d!527949 (>= (size!14983 lt!659016) (size!14983 lt!659013))))

(assert (=> d!527949 (= (getSuffix!776 lt!659016 lt!659013) lt!659116)))

(declare-fun b!1722645 () Bool)

(assert (=> b!1722645 (= e!1101870 (getSuffix!776 (tail!2573 lt!659016) (t!159660 lt!659013)))))

(declare-fun b!1722646 () Bool)

(assert (=> b!1722646 (= e!1101870 lt!659016)))

(assert (= (and d!527949 c!281812) b!1722645))

(assert (= (and d!527949 (not c!281812)) b!1722646))

(declare-fun m!2128713 () Bool)

(assert (=> d!527949 m!2128713))

(assert (=> d!527949 m!2128687))

(assert (=> d!527949 m!2128263))

(declare-fun m!2128715 () Bool)

(assert (=> b!1722645 m!2128715))

(assert (=> b!1722645 m!2128715))

(declare-fun m!2128717 () Bool)

(assert (=> b!1722645 m!2128717))

(assert (=> b!1722302 d!527949))

(declare-fun d!527951 () Bool)

(declare-fun fromListB!1061 (List!18925) BalanceConc!12486)

(assert (=> d!527951 (= (seqFromList!2315 lt!659013) (fromListB!1061 lt!659013))))

(declare-fun bs!402271 () Bool)

(assert (= bs!402271 d!527951))

(declare-fun m!2128719 () Bool)

(assert (=> bs!402271 m!2128719))

(assert (=> b!1722302 d!527951))

(declare-fun d!527953 () Bool)

(declare-fun lt!659119 () Int)

(assert (=> d!527953 (>= lt!659119 0)))

(declare-fun e!1101873 () Int)

(assert (=> d!527953 (= lt!659119 e!1101873)))

(declare-fun c!281815 () Bool)

(assert (=> d!527953 (= c!281815 ((_ is Nil!18855) lt!659013))))

(assert (=> d!527953 (= (size!14983 lt!659013) lt!659119)))

(declare-fun b!1722651 () Bool)

(assert (=> b!1722651 (= e!1101873 0)))

(declare-fun b!1722652 () Bool)

(assert (=> b!1722652 (= e!1101873 (+ 1 (size!14983 (t!159660 lt!659013))))))

(assert (= (and d!527953 c!281815) b!1722651))

(assert (= (and d!527953 (not c!281815)) b!1722652))

(declare-fun m!2128721 () Bool)

(assert (=> b!1722652 m!2128721))

(assert (=> b!1722302 d!527953))

(declare-fun b!1722681 () Bool)

(declare-fun res!773001 () Bool)

(declare-fun e!1101893 () Bool)

(assert (=> b!1722681 (=> (not res!773001) (not e!1101893))))

(assert (=> b!1722681 (= res!773001 (isEmpty!11857 (tail!2573 lt!659013)))))

(declare-fun d!527955 () Bool)

(declare-fun e!1101891 () Bool)

(assert (=> d!527955 e!1101891))

(declare-fun c!281824 () Bool)

(assert (=> d!527955 (= c!281824 ((_ is EmptyExpr!4669) (regex!3341 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun lt!659122 () Bool)

(declare-fun e!1101892 () Bool)

(assert (=> d!527955 (= lt!659122 e!1101892)))

(declare-fun c!281823 () Bool)

(assert (=> d!527955 (= c!281823 (isEmpty!11857 lt!659013))))

(assert (=> d!527955 (validRegex!1882 (regex!3341 (rule!5291 (_1!10675 lt!659004))))))

(assert (=> d!527955 (= (matchR!2143 (regex!3341 (rule!5291 (_1!10675 lt!659004))) lt!659013) lt!659122)))

(declare-fun b!1722682 () Bool)

(declare-fun e!1101888 () Bool)

(assert (=> b!1722682 (= e!1101891 e!1101888)))

(declare-fun c!281822 () Bool)

(assert (=> b!1722682 (= c!281822 ((_ is EmptyLang!4669) (regex!3341 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun bm!109749 () Bool)

(declare-fun call!109754 () Bool)

(assert (=> bm!109749 (= call!109754 (isEmpty!11857 lt!659013))))

(declare-fun b!1722683 () Bool)

(declare-fun res!772997 () Bool)

(declare-fun e!1101894 () Bool)

(assert (=> b!1722683 (=> res!772997 e!1101894)))

(assert (=> b!1722683 (= res!772997 (not (isEmpty!11857 (tail!2573 lt!659013))))))

(declare-fun b!1722684 () Bool)

(declare-fun res!772998 () Bool)

(declare-fun e!1101890 () Bool)

(assert (=> b!1722684 (=> res!772998 e!1101890)))

(assert (=> b!1722684 (= res!772998 (not ((_ is ElementMatch!4669) (regex!3341 (rule!5291 (_1!10675 lt!659004))))))))

(assert (=> b!1722684 (= e!1101888 e!1101890)))

(declare-fun b!1722685 () Bool)

(declare-fun e!1101889 () Bool)

(assert (=> b!1722685 (= e!1101889 e!1101894)))

(declare-fun res!772999 () Bool)

(assert (=> b!1722685 (=> res!772999 e!1101894)))

(assert (=> b!1722685 (= res!772999 call!109754)))

(declare-fun b!1722686 () Bool)

(assert (=> b!1722686 (= e!1101888 (not lt!659122))))

(declare-fun b!1722687 () Bool)

(assert (=> b!1722687 (= e!1101893 (= (head!3896 lt!659013) (c!281752 (regex!3341 (rule!5291 (_1!10675 lt!659004))))))))

(declare-fun b!1722688 () Bool)

(assert (=> b!1722688 (= e!1101894 (not (= (head!3896 lt!659013) (c!281752 (regex!3341 (rule!5291 (_1!10675 lt!659004)))))))))

(declare-fun b!1722689 () Bool)

(assert (=> b!1722689 (= e!1101892 (matchR!2143 (derivativeStep!1176 (regex!3341 (rule!5291 (_1!10675 lt!659004))) (head!3896 lt!659013)) (tail!2573 lt!659013)))))

(declare-fun b!1722690 () Bool)

(declare-fun res!773000 () Bool)

(assert (=> b!1722690 (=> (not res!773000) (not e!1101893))))

(assert (=> b!1722690 (= res!773000 (not call!109754))))

(declare-fun b!1722691 () Bool)

(assert (=> b!1722691 (= e!1101890 e!1101889)))

(declare-fun res!773003 () Bool)

(assert (=> b!1722691 (=> (not res!773003) (not e!1101889))))

(assert (=> b!1722691 (= res!773003 (not lt!659122))))

(declare-fun b!1722692 () Bool)

(declare-fun nullable!1408 (Regex!4669) Bool)

(assert (=> b!1722692 (= e!1101892 (nullable!1408 (regex!3341 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun b!1722693 () Bool)

(assert (=> b!1722693 (= e!1101891 (= lt!659122 call!109754))))

(declare-fun b!1722694 () Bool)

(declare-fun res!773004 () Bool)

(assert (=> b!1722694 (=> res!773004 e!1101890)))

(assert (=> b!1722694 (= res!773004 e!1101893)))

(declare-fun res!773002 () Bool)

(assert (=> b!1722694 (=> (not res!773002) (not e!1101893))))

(assert (=> b!1722694 (= res!773002 lt!659122)))

(assert (= (and d!527955 c!281823) b!1722692))

(assert (= (and d!527955 (not c!281823)) b!1722689))

(assert (= (and d!527955 c!281824) b!1722693))

(assert (= (and d!527955 (not c!281824)) b!1722682))

(assert (= (and b!1722682 c!281822) b!1722686))

(assert (= (and b!1722682 (not c!281822)) b!1722684))

(assert (= (and b!1722684 (not res!772998)) b!1722694))

(assert (= (and b!1722694 res!773002) b!1722690))

(assert (= (and b!1722690 res!773000) b!1722681))

(assert (= (and b!1722681 res!773001) b!1722687))

(assert (= (and b!1722694 (not res!773004)) b!1722691))

(assert (= (and b!1722691 res!773003) b!1722685))

(assert (= (and b!1722685 (not res!772999)) b!1722683))

(assert (= (and b!1722683 (not res!772997)) b!1722688))

(assert (= (or b!1722693 b!1722685 b!1722690) bm!109749))

(declare-fun m!2128723 () Bool)

(assert (=> b!1722689 m!2128723))

(assert (=> b!1722689 m!2128723))

(declare-fun m!2128725 () Bool)

(assert (=> b!1722689 m!2128725))

(declare-fun m!2128727 () Bool)

(assert (=> b!1722689 m!2128727))

(assert (=> b!1722689 m!2128725))

(assert (=> b!1722689 m!2128727))

(declare-fun m!2128729 () Bool)

(assert (=> b!1722689 m!2128729))

(assert (=> b!1722681 m!2128727))

(assert (=> b!1722681 m!2128727))

(declare-fun m!2128731 () Bool)

(assert (=> b!1722681 m!2128731))

(assert (=> b!1722687 m!2128723))

(declare-fun m!2128733 () Bool)

(assert (=> d!527955 m!2128733))

(declare-fun m!2128735 () Bool)

(assert (=> d!527955 m!2128735))

(assert (=> bm!109749 m!2128733))

(declare-fun m!2128737 () Bool)

(assert (=> b!1722692 m!2128737))

(assert (=> b!1722688 m!2128723))

(assert (=> b!1722683 m!2128727))

(assert (=> b!1722683 m!2128727))

(assert (=> b!1722683 m!2128731))

(assert (=> b!1722306 d!527955))

(declare-fun d!527957 () Bool)

(assert (=> d!527957 (= (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004))) (fromListB!1061 (originalCharacters!4155 (_1!10675 lt!659004))))))

(declare-fun bs!402272 () Bool)

(assert (= bs!402272 d!527957))

(declare-fun m!2128739 () Bool)

(assert (=> bs!402272 m!2128739))

(assert (=> b!1722327 d!527957))

(declare-fun b!1722701 () Bool)

(declare-fun e!1101899 () Bool)

(assert (=> b!1722701 (= e!1101899 true)))

(declare-fun d!527959 () Bool)

(assert (=> d!527959 e!1101899))

(assert (= d!527959 b!1722701))

(declare-fun lambda!69164 () Int)

(declare-fun order!11509 () Int)

(declare-fun dynLambda!8699 (Int Int) Int)

(assert (=> b!1722701 (< (dynLambda!8694 order!11503 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8699 order!11509 lambda!69164))))

(assert (=> b!1722701 (< (dynLambda!8696 order!11507 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8699 order!11509 lambda!69164))))

(assert (=> d!527959 (= (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004)))))))

(declare-fun lt!659125 () Unit!32697)

(declare-fun Forall2of!76 (Int BalanceConc!12486 BalanceConc!12486) Unit!32697)

(assert (=> d!527959 (= lt!659125 (Forall2of!76 lambda!69164 lt!659021 (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004)))))))

(assert (=> d!527959 (= (list!7618 lt!659021) (list!7618 (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004)))))))

(assert (=> d!527959 (= (lemmaEqSameImage!266 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021 (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004)))) lt!659125)))

(declare-fun b_lambda!54675 () Bool)

(assert (=> (not b_lambda!54675) (not d!527959)))

(assert (=> d!527959 t!159654))

(declare-fun b_and!125995 () Bool)

(assert (= b_and!125989 (and (=> t!159654 result!122802) b_and!125995)))

(assert (=> d!527959 t!159656))

(declare-fun b_and!125997 () Bool)

(assert (= b_and!125991 (and (=> t!159656 result!122806) b_and!125997)))

(assert (=> d!527959 t!159658))

(declare-fun b_and!125999 () Bool)

(assert (= b_and!125993 (and (=> t!159658 result!122808) b_and!125999)))

(declare-fun b_lambda!54677 () Bool)

(assert (=> (not b_lambda!54677) (not d!527959)))

(declare-fun tb!102183 () Bool)

(declare-fun t!159675 () Bool)

(assert (=> (and b!1722324 (= (toValue!4848 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159675) tb!102183))

(declare-fun result!122822 () Bool)

(assert (=> tb!102183 (= result!122822 (inv!21 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (seqFromList!2315 (originalCharacters!4155 (_1!10675 lt!659004))))))))

(declare-fun m!2128741 () Bool)

(assert (=> tb!102183 m!2128741))

(assert (=> d!527959 t!159675))

(declare-fun b_and!126001 () Bool)

(assert (= b_and!125995 (and (=> t!159675 result!122822) b_and!126001)))

(declare-fun t!159677 () Bool)

(declare-fun tb!102185 () Bool)

(assert (=> (and b!1722313 (= (toValue!4848 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159677) tb!102185))

(declare-fun result!122824 () Bool)

(assert (= result!122824 result!122822))

(assert (=> d!527959 t!159677))

(declare-fun b_and!126003 () Bool)

(assert (= b_and!125997 (and (=> t!159677 result!122824) b_and!126003)))

(declare-fun tb!102187 () Bool)

(declare-fun t!159679 () Bool)

(assert (=> (and b!1722314 (= (toValue!4848 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159679) tb!102187))

(declare-fun result!122826 () Bool)

(assert (= result!122826 result!122822))

(assert (=> d!527959 t!159679))

(declare-fun b_and!126005 () Bool)

(assert (= b_and!125999 (and (=> t!159679 result!122826) b_and!126005)))

(assert (=> d!527959 m!2128365))

(declare-fun m!2128743 () Bool)

(assert (=> d!527959 m!2128743))

(assert (=> d!527959 m!2128283))

(assert (=> d!527959 m!2128329))

(assert (=> d!527959 m!2128365))

(declare-fun m!2128745 () Bool)

(assert (=> d!527959 m!2128745))

(assert (=> d!527959 m!2128365))

(declare-fun m!2128747 () Bool)

(assert (=> d!527959 m!2128747))

(assert (=> b!1722327 d!527959))

(declare-fun d!527961 () Bool)

(assert (=> d!527961 (= (size!14982 (_1!10675 lt!659004)) (size!14983 (originalCharacters!4155 (_1!10675 lt!659004))))))

(declare-fun Unit!32700 () Unit!32697)

(assert (=> d!527961 (= (lemmaCharactersSize!413 (_1!10675 lt!659004)) Unit!32700)))

(declare-fun bs!402273 () Bool)

(assert (= bs!402273 d!527961))

(declare-fun m!2128749 () Bool)

(assert (=> bs!402273 m!2128749))

(assert (=> b!1722327 d!527961))

(declare-fun d!527963 () Bool)

(assert (=> d!527963 (= (apply!5146 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))

(declare-fun b_lambda!54679 () Bool)

(assert (=> (not b_lambda!54679) (not d!527963)))

(assert (=> d!527963 t!159654))

(declare-fun b_and!126007 () Bool)

(assert (= b_and!126001 (and (=> t!159654 result!122802) b_and!126007)))

(assert (=> d!527963 t!159656))

(declare-fun b_and!126009 () Bool)

(assert (= b_and!126003 (and (=> t!159656 result!122806) b_and!126009)))

(assert (=> d!527963 t!159658))

(declare-fun b_and!126011 () Bool)

(assert (= b_and!126005 (and (=> t!159658 result!122808) b_and!126011)))

(assert (=> d!527963 m!2128329))

(assert (=> b!1722327 d!527963))

(declare-fun d!527965 () Bool)

(declare-fun lt!659128 () Int)

(assert (=> d!527965 (= lt!659128 (size!14983 (list!7618 lt!659021)))))

(declare-fun size!14985 (Conc!6271) Int)

(assert (=> d!527965 (= lt!659128 (size!14985 (c!281753 lt!659021)))))

(assert (=> d!527965 (= (size!14984 lt!659021) lt!659128)))

(declare-fun bs!402274 () Bool)

(assert (= bs!402274 d!527965))

(assert (=> bs!402274 m!2128283))

(assert (=> bs!402274 m!2128283))

(declare-fun m!2128751 () Bool)

(assert (=> bs!402274 m!2128751))

(declare-fun m!2128753 () Bool)

(assert (=> bs!402274 m!2128753))

(assert (=> b!1722327 d!527965))

(declare-fun d!527967 () Bool)

(declare-fun e!1101903 () Bool)

(assert (=> d!527967 e!1101903))

(declare-fun res!773011 () Bool)

(assert (=> d!527967 (=> (not res!773011) (not e!1101903))))

(assert (=> d!527967 (= res!773011 (isDefined!3050 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 (_1!10675 lt!659004))))))))

(declare-fun lt!659131 () Unit!32697)

(declare-fun choose!10482 (LexerInterface!2970 List!18926 List!18925 Token!6248) Unit!32697)

(assert (=> d!527967 (= lt!659131 (choose!10482 thiss!24550 rules!3447 lt!659016 (_1!10675 lt!659004)))))

(assert (=> d!527967 (rulesInvariant!2639 thiss!24550 rules!3447)))

(assert (=> d!527967 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!391 thiss!24550 rules!3447 lt!659016 (_1!10675 lt!659004)) lt!659131)))

(declare-fun b!1722706 () Bool)

(declare-fun res!773012 () Bool)

(assert (=> b!1722706 (=> (not res!773012) (not e!1101903))))

(assert (=> b!1722706 (= res!773012 (matchR!2143 (regex!3341 (get!5595 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 (_1!10675 lt!659004)))))) (list!7618 (charsOf!1990 (_1!10675 lt!659004)))))))

(declare-fun b!1722707 () Bool)

(assert (=> b!1722707 (= e!1101903 (= (rule!5291 (_1!10675 lt!659004)) (get!5595 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 (_1!10675 lt!659004)))))))))

(assert (= (and d!527967 res!773011) b!1722706))

(assert (= (and b!1722706 res!773012) b!1722707))

(assert (=> d!527967 m!2128293))

(assert (=> d!527967 m!2128293))

(declare-fun m!2128755 () Bool)

(assert (=> d!527967 m!2128755))

(declare-fun m!2128757 () Bool)

(assert (=> d!527967 m!2128757))

(assert (=> d!527967 m!2128341))

(assert (=> b!1722706 m!2128287))

(assert (=> b!1722706 m!2128315))

(assert (=> b!1722706 m!2128293))

(assert (=> b!1722706 m!2128287))

(assert (=> b!1722706 m!2128315))

(declare-fun m!2128759 () Bool)

(assert (=> b!1722706 m!2128759))

(assert (=> b!1722706 m!2128293))

(declare-fun m!2128761 () Bool)

(assert (=> b!1722706 m!2128761))

(assert (=> b!1722707 m!2128293))

(assert (=> b!1722707 m!2128293))

(assert (=> b!1722707 m!2128761))

(assert (=> b!1722328 d!527967))

(declare-fun d!527969 () Bool)

(declare-fun isEmpty!11860 (Option!3707) Bool)

(assert (=> d!527969 (= (isDefined!3050 lt!659014) (not (isEmpty!11860 lt!659014)))))

(declare-fun bs!402275 () Bool)

(assert (= bs!402275 d!527969))

(declare-fun m!2128763 () Bool)

(assert (=> bs!402275 m!2128763))

(assert (=> b!1722328 d!527969))

(declare-fun b!1722708 () Bool)

(declare-fun e!1101904 () List!18925)

(assert (=> b!1722708 (= e!1101904 (_2!10675 lt!659004))))

(declare-fun b!1722709 () Bool)

(assert (=> b!1722709 (= e!1101904 (Cons!18855 (h!24256 lt!659013) (++!5166 (t!159660 lt!659013) (_2!10675 lt!659004))))))

(declare-fun e!1101905 () Bool)

(declare-fun b!1722711 () Bool)

(declare-fun lt!659132 () List!18925)

(assert (=> b!1722711 (= e!1101905 (or (not (= (_2!10675 lt!659004) Nil!18855)) (= lt!659132 lt!659013)))))

(declare-fun b!1722710 () Bool)

(declare-fun res!773013 () Bool)

(assert (=> b!1722710 (=> (not res!773013) (not e!1101905))))

(assert (=> b!1722710 (= res!773013 (= (size!14983 lt!659132) (+ (size!14983 lt!659013) (size!14983 (_2!10675 lt!659004)))))))

(declare-fun d!527971 () Bool)

(assert (=> d!527971 e!1101905))

(declare-fun res!773014 () Bool)

(assert (=> d!527971 (=> (not res!773014) (not e!1101905))))

(assert (=> d!527971 (= res!773014 (= (content!2693 lt!659132) ((_ map or) (content!2693 lt!659013) (content!2693 (_2!10675 lt!659004)))))))

(assert (=> d!527971 (= lt!659132 e!1101904)))

(declare-fun c!281825 () Bool)

(assert (=> d!527971 (= c!281825 ((_ is Nil!18855) lt!659013))))

(assert (=> d!527971 (= (++!5166 lt!659013 (_2!10675 lt!659004)) lt!659132)))

(assert (= (and d!527971 c!281825) b!1722708))

(assert (= (and d!527971 (not c!281825)) b!1722709))

(assert (= (and d!527971 res!773014) b!1722710))

(assert (= (and b!1722710 res!773013) b!1722711))

(declare-fun m!2128765 () Bool)

(assert (=> b!1722709 m!2128765))

(declare-fun m!2128767 () Bool)

(assert (=> b!1722710 m!2128767))

(assert (=> b!1722710 m!2128263))

(declare-fun m!2128769 () Bool)

(assert (=> b!1722710 m!2128769))

(declare-fun m!2128771 () Bool)

(assert (=> d!527971 m!2128771))

(declare-fun m!2128773 () Bool)

(assert (=> d!527971 m!2128773))

(declare-fun m!2128775 () Bool)

(assert (=> d!527971 m!2128775))

(assert (=> b!1722328 d!527971))

(declare-fun d!527973 () Bool)

(declare-fun lt!659135 () BalanceConc!12486)

(assert (=> d!527973 (= (list!7618 lt!659135) (originalCharacters!4155 (_1!10675 lt!659004)))))

(assert (=> d!527973 (= lt!659135 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))

(assert (=> d!527973 (= (charsOf!1990 (_1!10675 lt!659004)) lt!659135)))

(declare-fun b_lambda!54681 () Bool)

(assert (=> (not b_lambda!54681) (not d!527973)))

(assert (=> d!527973 t!159642))

(declare-fun b_and!126013 () Bool)

(assert (= b_and!125953 (and (=> t!159642 result!122788) b_and!126013)))

(assert (=> d!527973 t!159644))

(declare-fun b_and!126015 () Bool)

(assert (= b_and!125955 (and (=> t!159644 result!122792) b_and!126015)))

(assert (=> d!527973 t!159646))

(declare-fun b_and!126017 () Bool)

(assert (= b_and!125957 (and (=> t!159646 result!122794) b_and!126017)))

(declare-fun m!2128777 () Bool)

(assert (=> d!527973 m!2128777))

(assert (=> d!527973 m!2128253))

(assert (=> b!1722328 d!527973))

(declare-fun b!1722720 () Bool)

(declare-fun e!1101912 () Bool)

(declare-fun e!1101913 () Bool)

(assert (=> b!1722720 (= e!1101912 e!1101913)))

(declare-fun res!773025 () Bool)

(assert (=> b!1722720 (=> (not res!773025) (not e!1101913))))

(assert (=> b!1722720 (= res!773025 (not ((_ is Nil!18855) lt!659016)))))

(declare-fun b!1722722 () Bool)

(assert (=> b!1722722 (= e!1101913 (isPrefix!1582 (tail!2573 lt!659022) (tail!2573 lt!659016)))))

(declare-fun b!1722723 () Bool)

(declare-fun e!1101914 () Bool)

(assert (=> b!1722723 (= e!1101914 (>= (size!14983 lt!659016) (size!14983 lt!659022)))))

(declare-fun d!527975 () Bool)

(assert (=> d!527975 e!1101914))

(declare-fun res!773023 () Bool)

(assert (=> d!527975 (=> res!773023 e!1101914)))

(declare-fun lt!659138 () Bool)

(assert (=> d!527975 (= res!773023 (not lt!659138))))

(assert (=> d!527975 (= lt!659138 e!1101912)))

(declare-fun res!773024 () Bool)

(assert (=> d!527975 (=> res!773024 e!1101912)))

(assert (=> d!527975 (= res!773024 ((_ is Nil!18855) lt!659022))))

(assert (=> d!527975 (= (isPrefix!1582 lt!659022 lt!659016) lt!659138)))

(declare-fun b!1722721 () Bool)

(declare-fun res!773026 () Bool)

(assert (=> b!1722721 (=> (not res!773026) (not e!1101913))))

(assert (=> b!1722721 (= res!773026 (= (head!3896 lt!659022) (head!3896 lt!659016)))))

(assert (= (and d!527975 (not res!773024)) b!1722720))

(assert (= (and b!1722720 res!773025) b!1722721))

(assert (= (and b!1722721 res!773026) b!1722722))

(assert (= (and d!527975 (not res!773023)) b!1722723))

(declare-fun m!2128779 () Bool)

(assert (=> b!1722722 m!2128779))

(assert (=> b!1722722 m!2128715))

(assert (=> b!1722722 m!2128779))

(assert (=> b!1722722 m!2128715))

(declare-fun m!2128781 () Bool)

(assert (=> b!1722722 m!2128781))

(assert (=> b!1722723 m!2128687))

(assert (=> b!1722723 m!2128503))

(declare-fun m!2128783 () Bool)

(assert (=> b!1722721 m!2128783))

(declare-fun m!2128785 () Bool)

(assert (=> b!1722721 m!2128785))

(assert (=> b!1722328 d!527975))

(declare-fun d!527977 () Bool)

(assert (=> d!527977 (= (get!5594 lt!659018) (v!25110 lt!659018))))

(assert (=> b!1722328 d!527977))

(declare-fun d!527979 () Bool)

(assert (=> d!527979 (isPrefix!1582 lt!659013 (++!5166 lt!659013 (_2!10675 lt!659004)))))

(declare-fun lt!659141 () Unit!32697)

(declare-fun choose!10484 (List!18925 List!18925) Unit!32697)

(assert (=> d!527979 (= lt!659141 (choose!10484 lt!659013 (_2!10675 lt!659004)))))

(assert (=> d!527979 (= (lemmaConcatTwoListThenFirstIsPrefix!1092 lt!659013 (_2!10675 lt!659004)) lt!659141)))

(declare-fun bs!402276 () Bool)

(assert (= bs!402276 d!527979))

(assert (=> bs!402276 m!2128269))

(assert (=> bs!402276 m!2128269))

(assert (=> bs!402276 m!2128281))

(declare-fun m!2128787 () Bool)

(assert (=> bs!402276 m!2128787))

(assert (=> b!1722328 d!527979))

(declare-fun b!1722798 () Bool)

(declare-fun e!1101958 () Bool)

(declare-fun lt!659260 () Token!6248)

(assert (=> b!1722798 (= e!1101958 (= (rule!5291 lt!659260) (get!5595 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 lt!659260))))))))

(declare-fun b!1722800 () Bool)

(declare-fun e!1101957 () Unit!32697)

(declare-fun Unit!32701 () Unit!32697)

(assert (=> b!1722800 (= e!1101957 Unit!32701)))

(declare-fun d!527981 () Bool)

(assert (=> d!527981 (isDefined!3049 (maxPrefix!1524 thiss!24550 rules!3447 (++!5166 lt!659022 suffix!1421)))))

(declare-fun lt!659246 () Unit!32697)

(assert (=> d!527981 (= lt!659246 e!1101957)))

(declare-fun c!281839 () Bool)

(assert (=> d!527981 (= c!281839 (isEmpty!11859 (maxPrefix!1524 thiss!24550 rules!3447 (++!5166 lt!659022 suffix!1421))))))

(declare-fun lt!659248 () Unit!32697)

(declare-fun lt!659252 () Unit!32697)

(assert (=> d!527981 (= lt!659248 lt!659252)))

(assert (=> d!527981 e!1101958))

(declare-fun res!773070 () Bool)

(assert (=> d!527981 (=> (not res!773070) (not e!1101958))))

(assert (=> d!527981 (= res!773070 (isDefined!3050 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 lt!659260)))))))

(assert (=> d!527981 (= lt!659252 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!391 thiss!24550 rules!3447 lt!659022 lt!659260))))

(declare-fun lt!659253 () Unit!32697)

(declare-fun lt!659258 () Unit!32697)

(assert (=> d!527981 (= lt!659253 lt!659258)))

(declare-fun lt!659249 () List!18925)

(assert (=> d!527981 (isPrefix!1582 lt!659249 (++!5166 lt!659022 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!256 (List!18925 List!18925 List!18925) Unit!32697)

(assert (=> d!527981 (= lt!659258 (lemmaPrefixStaysPrefixWhenAddingToSuffix!256 lt!659249 lt!659022 suffix!1421))))

(assert (=> d!527981 (= lt!659249 (list!7618 (charsOf!1990 lt!659260)))))

(declare-fun lt!659259 () Unit!32697)

(declare-fun lt!659250 () Unit!32697)

(assert (=> d!527981 (= lt!659259 lt!659250)))

(declare-fun lt!659251 () List!18925)

(declare-fun lt!659245 () List!18925)

(assert (=> d!527981 (isPrefix!1582 lt!659251 (++!5166 lt!659251 lt!659245))))

(assert (=> d!527981 (= lt!659250 (lemmaConcatTwoListThenFirstIsPrefix!1092 lt!659251 lt!659245))))

(assert (=> d!527981 (= lt!659245 (_2!10675 (get!5594 (maxPrefix!1524 thiss!24550 rules!3447 lt!659022))))))

(assert (=> d!527981 (= lt!659251 (list!7618 (charsOf!1990 lt!659260)))))

(declare-datatypes ((List!18930 0))(
  ( (Nil!18860) (Cons!18860 (h!24261 Token!6248) (t!159725 List!18930)) )
))
(declare-fun head!3897 (List!18930) Token!6248)

(declare-datatypes ((IArray!12549 0))(
  ( (IArray!12550 (innerList!6332 List!18930)) )
))
(declare-datatypes ((Conc!6272 0))(
  ( (Node!6272 (left!15048 Conc!6272) (right!15378 Conc!6272) (csize!12774 Int) (cheight!6483 Int)) (Leaf!9163 (xs!9148 IArray!12549) (csize!12775 Int)) (Empty!6272) )
))
(declare-datatypes ((BalanceConc!12488 0))(
  ( (BalanceConc!12489 (c!281888 Conc!6272)) )
))
(declare-fun list!7620 (BalanceConc!12488) List!18930)

(declare-datatypes ((tuple2!18550 0))(
  ( (tuple2!18551 (_1!10677 BalanceConc!12488) (_2!10677 BalanceConc!12486)) )
))
(declare-fun lex!1395 (LexerInterface!2970 List!18926 BalanceConc!12486) tuple2!18550)

(assert (=> d!527981 (= lt!659260 (head!3897 (list!7620 (_1!10677 (lex!1395 thiss!24550 rules!3447 (seqFromList!2315 lt!659022))))))))

(assert (=> d!527981 (not (isEmpty!11858 rules!3447))))

(assert (=> d!527981 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!494 thiss!24550 rules!3447 lt!659022 suffix!1421) lt!659246)))

(declare-fun b!1722797 () Bool)

(declare-fun res!773069 () Bool)

(assert (=> b!1722797 (=> (not res!773069) (not e!1101958))))

(assert (=> b!1722797 (= res!773069 (matchR!2143 (regex!3341 (get!5595 (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 lt!659260))))) (list!7618 (charsOf!1990 lt!659260))))))

(declare-fun b!1722799 () Bool)

(declare-fun Unit!32702 () Unit!32697)

(assert (=> b!1722799 (= e!1101957 Unit!32702)))

(declare-fun lt!659254 () List!18925)

(assert (=> b!1722799 (= lt!659254 (++!5166 lt!659022 suffix!1421))))

(declare-fun lt!659261 () Unit!32697)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!264 (LexerInterface!2970 Rule!6482 List!18926 List!18925) Unit!32697)

(assert (=> b!1722799 (= lt!659261 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!264 thiss!24550 (rule!5291 lt!659260) rules!3447 lt!659254))))

(assert (=> b!1722799 (isEmpty!11859 (maxPrefixOneRule!900 thiss!24550 (rule!5291 lt!659260) lt!659254))))

(declare-fun lt!659256 () Unit!32697)

(assert (=> b!1722799 (= lt!659256 lt!659261)))

(declare-fun lt!659247 () List!18925)

(assert (=> b!1722799 (= lt!659247 (list!7618 (charsOf!1990 lt!659260)))))

(declare-fun lt!659257 () Unit!32697)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!260 (LexerInterface!2970 Rule!6482 List!18925 List!18925) Unit!32697)

(assert (=> b!1722799 (= lt!659257 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!260 thiss!24550 (rule!5291 lt!659260) lt!659247 (++!5166 lt!659022 suffix!1421)))))

(assert (=> b!1722799 (not (matchR!2143 (regex!3341 (rule!5291 lt!659260)) lt!659247))))

(declare-fun lt!659255 () Unit!32697)

(assert (=> b!1722799 (= lt!659255 lt!659257)))

(assert (=> b!1722799 false))

(assert (= (and d!527981 res!773070) b!1722797))

(assert (= (and b!1722797 res!773069) b!1722798))

(assert (= (and d!527981 c!281839) b!1722799))

(assert (= (and d!527981 (not c!281839)) b!1722800))

(declare-fun m!2128927 () Bool)

(assert (=> b!1722798 m!2128927))

(assert (=> b!1722798 m!2128927))

(declare-fun m!2128929 () Bool)

(assert (=> b!1722798 m!2128929))

(declare-fun m!2128931 () Bool)

(assert (=> d!527981 m!2128931))

(declare-fun m!2128933 () Bool)

(assert (=> d!527981 m!2128933))

(declare-fun m!2128935 () Bool)

(assert (=> d!527981 m!2128935))

(declare-fun m!2128937 () Bool)

(assert (=> d!527981 m!2128937))

(assert (=> d!527981 m!2128931))

(declare-fun m!2128939 () Bool)

(assert (=> d!527981 m!2128939))

(declare-fun m!2128941 () Bool)

(assert (=> d!527981 m!2128941))

(declare-fun m!2128943 () Bool)

(assert (=> d!527981 m!2128943))

(assert (=> d!527981 m!2128279))

(assert (=> d!527981 m!2128939))

(declare-fun m!2128945 () Bool)

(assert (=> d!527981 m!2128945))

(assert (=> d!527981 m!2128351))

(assert (=> d!527981 m!2128323))

(assert (=> d!527981 m!2128323))

(declare-fun m!2128947 () Bool)

(assert (=> d!527981 m!2128947))

(assert (=> d!527981 m!2128927))

(declare-fun m!2128949 () Bool)

(assert (=> d!527981 m!2128949))

(assert (=> d!527981 m!2128941))

(declare-fun m!2128951 () Bool)

(assert (=> d!527981 m!2128951))

(declare-fun m!2128953 () Bool)

(assert (=> d!527981 m!2128953))

(declare-fun m!2128955 () Bool)

(assert (=> d!527981 m!2128955))

(assert (=> d!527981 m!2128279))

(declare-fun m!2128957 () Bool)

(assert (=> d!527981 m!2128957))

(assert (=> d!527981 m!2128949))

(declare-fun m!2128959 () Bool)

(assert (=> d!527981 m!2128959))

(assert (=> d!527981 m!2128279))

(assert (=> d!527981 m!2128935))

(assert (=> d!527981 m!2128935))

(declare-fun m!2128961 () Bool)

(assert (=> d!527981 m!2128961))

(assert (=> d!527981 m!2128927))

(declare-fun m!2128963 () Bool)

(assert (=> d!527981 m!2128963))

(assert (=> b!1722797 m!2128939))

(assert (=> b!1722797 m!2128939))

(assert (=> b!1722797 m!2128945))

(assert (=> b!1722797 m!2128927))

(assert (=> b!1722797 m!2128945))

(declare-fun m!2128965 () Bool)

(assert (=> b!1722797 m!2128965))

(assert (=> b!1722797 m!2128927))

(assert (=> b!1722797 m!2128929))

(assert (=> b!1722799 m!2128939))

(declare-fun m!2128967 () Bool)

(assert (=> b!1722799 m!2128967))

(declare-fun m!2128969 () Bool)

(assert (=> b!1722799 m!2128969))

(assert (=> b!1722799 m!2128967))

(assert (=> b!1722799 m!2128279))

(assert (=> b!1722799 m!2128279))

(declare-fun m!2128971 () Bool)

(assert (=> b!1722799 m!2128971))

(assert (=> b!1722799 m!2128939))

(assert (=> b!1722799 m!2128945))

(declare-fun m!2128973 () Bool)

(assert (=> b!1722799 m!2128973))

(declare-fun m!2128975 () Bool)

(assert (=> b!1722799 m!2128975))

(assert (=> b!1722328 d!527981))

(declare-fun b!1722801 () Bool)

(declare-fun e!1101959 () List!18925)

(assert (=> b!1722801 (= e!1101959 suffix!1421)))

(declare-fun b!1722802 () Bool)

(assert (=> b!1722802 (= e!1101959 (Cons!18855 (h!24256 lt!659022) (++!5166 (t!159660 lt!659022) suffix!1421)))))

(declare-fun lt!659262 () List!18925)

(declare-fun b!1722804 () Bool)

(declare-fun e!1101960 () Bool)

(assert (=> b!1722804 (= e!1101960 (or (not (= suffix!1421 Nil!18855)) (= lt!659262 lt!659022)))))

(declare-fun b!1722803 () Bool)

(declare-fun res!773071 () Bool)

(assert (=> b!1722803 (=> (not res!773071) (not e!1101960))))

(assert (=> b!1722803 (= res!773071 (= (size!14983 lt!659262) (+ (size!14983 lt!659022) (size!14983 suffix!1421))))))

(declare-fun d!528039 () Bool)

(assert (=> d!528039 e!1101960))

(declare-fun res!773072 () Bool)

(assert (=> d!528039 (=> (not res!773072) (not e!1101960))))

(assert (=> d!528039 (= res!773072 (= (content!2693 lt!659262) ((_ map or) (content!2693 lt!659022) (content!2693 suffix!1421))))))

(assert (=> d!528039 (= lt!659262 e!1101959)))

(declare-fun c!281840 () Bool)

(assert (=> d!528039 (= c!281840 ((_ is Nil!18855) lt!659022))))

(assert (=> d!528039 (= (++!5166 lt!659022 suffix!1421) lt!659262)))

(assert (= (and d!528039 c!281840) b!1722801))

(assert (= (and d!528039 (not c!281840)) b!1722802))

(assert (= (and d!528039 res!773072) b!1722803))

(assert (= (and b!1722803 res!773071) b!1722804))

(declare-fun m!2128977 () Bool)

(assert (=> b!1722802 m!2128977))

(declare-fun m!2128979 () Bool)

(assert (=> b!1722803 m!2128979))

(assert (=> b!1722803 m!2128503))

(declare-fun m!2128981 () Bool)

(assert (=> b!1722803 m!2128981))

(declare-fun m!2128983 () Bool)

(assert (=> d!528039 m!2128983))

(assert (=> d!528039 m!2128509))

(declare-fun m!2128985 () Bool)

(assert (=> d!528039 m!2128985))

(assert (=> b!1722328 d!528039))

(declare-fun d!528041 () Bool)

(assert (=> d!528041 (isPrefix!1582 lt!659022 (++!5166 lt!659022 suffix!1421))))

(declare-fun lt!659263 () Unit!32697)

(assert (=> d!528041 (= lt!659263 (choose!10484 lt!659022 suffix!1421))))

(assert (=> d!528041 (= (lemmaConcatTwoListThenFirstIsPrefix!1092 lt!659022 suffix!1421) lt!659263)))

(declare-fun bs!402287 () Bool)

(assert (= bs!402287 d!528041))

(assert (=> bs!402287 m!2128279))

(assert (=> bs!402287 m!2128279))

(declare-fun m!2128987 () Bool)

(assert (=> bs!402287 m!2128987))

(declare-fun m!2128989 () Bool)

(assert (=> bs!402287 m!2128989))

(assert (=> b!1722328 d!528041))

(declare-fun b!1722817 () Bool)

(declare-fun lt!659270 () Unit!32697)

(declare-fun lt!659272 () Unit!32697)

(assert (=> b!1722817 (= lt!659270 lt!659272)))

(assert (=> b!1722817 (rulesInvariant!2639 thiss!24550 (t!159661 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!136 (LexerInterface!2970 Rule!6482 List!18926) Unit!32697)

(assert (=> b!1722817 (= lt!659272 (lemmaInvariantOnRulesThenOnTail!136 thiss!24550 (h!24257 rules!3447) (t!159661 rules!3447)))))

(declare-fun e!1101969 () Option!3707)

(assert (=> b!1722817 (= e!1101969 (getRuleFromTag!391 thiss!24550 (t!159661 rules!3447) (tag!3653 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun b!1722818 () Bool)

(declare-fun e!1101971 () Bool)

(declare-fun e!1101970 () Bool)

(assert (=> b!1722818 (= e!1101971 e!1101970)))

(declare-fun res!773078 () Bool)

(assert (=> b!1722818 (=> (not res!773078) (not e!1101970))))

(declare-fun lt!659271 () Option!3707)

(assert (=> b!1722818 (= res!773078 (contains!3363 rules!3447 (get!5595 lt!659271)))))

(declare-fun d!528043 () Bool)

(assert (=> d!528043 e!1101971))

(declare-fun res!773077 () Bool)

(assert (=> d!528043 (=> res!773077 e!1101971)))

(assert (=> d!528043 (= res!773077 (isEmpty!11860 lt!659271))))

(declare-fun e!1101972 () Option!3707)

(assert (=> d!528043 (= lt!659271 e!1101972)))

(declare-fun c!281845 () Bool)

(assert (=> d!528043 (= c!281845 (and ((_ is Cons!18856) rules!3447) (= (tag!3653 (h!24257 rules!3447)) (tag!3653 (rule!5291 (_1!10675 lt!659004))))))))

(assert (=> d!528043 (rulesInvariant!2639 thiss!24550 rules!3447)))

(assert (=> d!528043 (= (getRuleFromTag!391 thiss!24550 rules!3447 (tag!3653 (rule!5291 (_1!10675 lt!659004)))) lt!659271)))

(declare-fun b!1722819 () Bool)

(assert (=> b!1722819 (= e!1101970 (= (tag!3653 (get!5595 lt!659271)) (tag!3653 (rule!5291 (_1!10675 lt!659004)))))))

(declare-fun b!1722820 () Bool)

(assert (=> b!1722820 (= e!1101969 None!3706)))

(declare-fun b!1722821 () Bool)

(assert (=> b!1722821 (= e!1101972 (Some!3706 (h!24257 rules!3447)))))

(declare-fun b!1722822 () Bool)

(assert (=> b!1722822 (= e!1101972 e!1101969)))

(declare-fun c!281846 () Bool)

(assert (=> b!1722822 (= c!281846 (and ((_ is Cons!18856) rules!3447) (not (= (tag!3653 (h!24257 rules!3447)) (tag!3653 (rule!5291 (_1!10675 lt!659004)))))))))

(assert (= (and d!528043 c!281845) b!1722821))

(assert (= (and d!528043 (not c!281845)) b!1722822))

(assert (= (and b!1722822 c!281846) b!1722817))

(assert (= (and b!1722822 (not c!281846)) b!1722820))

(assert (= (and d!528043 (not res!773077)) b!1722818))

(assert (= (and b!1722818 res!773078) b!1722819))

(declare-fun m!2128991 () Bool)

(assert (=> b!1722817 m!2128991))

(declare-fun m!2128993 () Bool)

(assert (=> b!1722817 m!2128993))

(declare-fun m!2128995 () Bool)

(assert (=> b!1722817 m!2128995))

(declare-fun m!2128997 () Bool)

(assert (=> b!1722818 m!2128997))

(assert (=> b!1722818 m!2128997))

(declare-fun m!2128999 () Bool)

(assert (=> b!1722818 m!2128999))

(declare-fun m!2129001 () Bool)

(assert (=> d!528043 m!2129001))

(assert (=> d!528043 m!2128341))

(assert (=> b!1722819 m!2128997))

(assert (=> b!1722328 d!528043))

(declare-fun d!528045 () Bool)

(declare-fun e!1101996 () Bool)

(assert (=> d!528045 e!1101996))

(declare-fun res!773120 () Bool)

(assert (=> d!528045 (=> res!773120 e!1101996)))

(declare-fun lt!659307 () Option!3706)

(assert (=> d!528045 (= res!773120 (isEmpty!11859 lt!659307))))

(declare-fun e!1101995 () Option!3706)

(assert (=> d!528045 (= lt!659307 e!1101995)))

(declare-fun c!281855 () Bool)

(assert (=> d!528045 (= c!281855 (and ((_ is Cons!18856) rules!3447) ((_ is Nil!18856) (t!159661 rules!3447))))))

(declare-fun lt!659304 () Unit!32697)

(declare-fun lt!659308 () Unit!32697)

(assert (=> d!528045 (= lt!659304 lt!659308)))

(assert (=> d!528045 (isPrefix!1582 lt!659016 lt!659016)))

(declare-fun lemmaIsPrefixRefl!1071 (List!18925 List!18925) Unit!32697)

(assert (=> d!528045 (= lt!659308 (lemmaIsPrefixRefl!1071 lt!659016 lt!659016))))

(declare-fun rulesValidInductive!1108 (LexerInterface!2970 List!18926) Bool)

(assert (=> d!528045 (rulesValidInductive!1108 thiss!24550 rules!3447)))

(assert (=> d!528045 (= (maxPrefix!1524 thiss!24550 rules!3447 lt!659016) lt!659307)))

(declare-fun b!1722874 () Bool)

(declare-fun res!773118 () Bool)

(declare-fun e!1101994 () Bool)

(assert (=> b!1722874 (=> (not res!773118) (not e!1101994))))

(assert (=> b!1722874 (= res!773118 (matchR!2143 (regex!3341 (rule!5291 (_1!10675 (get!5594 lt!659307)))) (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659307))))))))

(declare-fun b!1722875 () Bool)

(assert (=> b!1722875 (= e!1101994 (contains!3363 rules!3447 (rule!5291 (_1!10675 (get!5594 lt!659307)))))))

(declare-fun b!1722876 () Bool)

(assert (=> b!1722876 (= e!1101996 e!1101994)))

(declare-fun res!773117 () Bool)

(assert (=> b!1722876 (=> (not res!773117) (not e!1101994))))

(assert (=> b!1722876 (= res!773117 (isDefined!3049 lt!659307))))

(declare-fun b!1722877 () Bool)

(declare-fun lt!659306 () Option!3706)

(declare-fun lt!659305 () Option!3706)

(assert (=> b!1722877 (= e!1101995 (ite (and ((_ is None!3705) lt!659306) ((_ is None!3705) lt!659305)) None!3705 (ite ((_ is None!3705) lt!659305) lt!659306 (ite ((_ is None!3705) lt!659306) lt!659305 (ite (>= (size!14982 (_1!10675 (v!25110 lt!659306))) (size!14982 (_1!10675 (v!25110 lt!659305)))) lt!659306 lt!659305)))))))

(declare-fun call!109759 () Option!3706)

(assert (=> b!1722877 (= lt!659306 call!109759)))

(assert (=> b!1722877 (= lt!659305 (maxPrefix!1524 thiss!24550 (t!159661 rules!3447) lt!659016))))

(declare-fun bm!109754 () Bool)

(assert (=> bm!109754 (= call!109759 (maxPrefixOneRule!900 thiss!24550 (h!24257 rules!3447) lt!659016))))

(declare-fun b!1722878 () Bool)

(declare-fun res!773119 () Bool)

(assert (=> b!1722878 (=> (not res!773119) (not e!1101994))))

(assert (=> b!1722878 (= res!773119 (= (++!5166 (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659307)))) (_2!10675 (get!5594 lt!659307))) lt!659016))))

(declare-fun b!1722879 () Bool)

(assert (=> b!1722879 (= e!1101995 call!109759)))

(declare-fun b!1722880 () Bool)

(declare-fun res!773116 () Bool)

(assert (=> b!1722880 (=> (not res!773116) (not e!1101994))))

(assert (=> b!1722880 (= res!773116 (= (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659307)))) (originalCharacters!4155 (_1!10675 (get!5594 lt!659307)))))))

(declare-fun b!1722881 () Bool)

(declare-fun res!773115 () Bool)

(assert (=> b!1722881 (=> (not res!773115) (not e!1101994))))

(assert (=> b!1722881 (= res!773115 (= (value!104891 (_1!10675 (get!5594 lt!659307))) (apply!5146 (transformation!3341 (rule!5291 (_1!10675 (get!5594 lt!659307)))) (seqFromList!2315 (originalCharacters!4155 (_1!10675 (get!5594 lt!659307)))))))))

(declare-fun b!1722882 () Bool)

(declare-fun res!773114 () Bool)

(assert (=> b!1722882 (=> (not res!773114) (not e!1101994))))

(assert (=> b!1722882 (= res!773114 (< (size!14983 (_2!10675 (get!5594 lt!659307))) (size!14983 lt!659016)))))

(assert (= (and d!528045 c!281855) b!1722879))

(assert (= (and d!528045 (not c!281855)) b!1722877))

(assert (= (or b!1722879 b!1722877) bm!109754))

(assert (= (and d!528045 (not res!773120)) b!1722876))

(assert (= (and b!1722876 res!773117) b!1722880))

(assert (= (and b!1722880 res!773116) b!1722882))

(assert (= (and b!1722882 res!773114) b!1722878))

(assert (= (and b!1722878 res!773119) b!1722881))

(assert (= (and b!1722881 res!773115) b!1722874))

(assert (= (and b!1722874 res!773118) b!1722875))

(declare-fun m!2129053 () Bool)

(assert (=> b!1722880 m!2129053))

(declare-fun m!2129055 () Bool)

(assert (=> b!1722880 m!2129055))

(assert (=> b!1722880 m!2129055))

(declare-fun m!2129057 () Bool)

(assert (=> b!1722880 m!2129057))

(assert (=> b!1722875 m!2129053))

(declare-fun m!2129061 () Bool)

(assert (=> b!1722875 m!2129061))

(declare-fun m!2129063 () Bool)

(assert (=> bm!109754 m!2129063))

(declare-fun m!2129065 () Bool)

(assert (=> b!1722877 m!2129065))

(assert (=> b!1722881 m!2129053))

(declare-fun m!2129069 () Bool)

(assert (=> b!1722881 m!2129069))

(assert (=> b!1722881 m!2129069))

(declare-fun m!2129071 () Bool)

(assert (=> b!1722881 m!2129071))

(assert (=> b!1722874 m!2129053))

(assert (=> b!1722874 m!2129055))

(assert (=> b!1722874 m!2129055))

(assert (=> b!1722874 m!2129057))

(assert (=> b!1722874 m!2129057))

(declare-fun m!2129073 () Bool)

(assert (=> b!1722874 m!2129073))

(declare-fun m!2129075 () Bool)

(assert (=> b!1722876 m!2129075))

(assert (=> b!1722878 m!2129053))

(assert (=> b!1722878 m!2129055))

(assert (=> b!1722878 m!2129055))

(assert (=> b!1722878 m!2129057))

(assert (=> b!1722878 m!2129057))

(declare-fun m!2129077 () Bool)

(assert (=> b!1722878 m!2129077))

(declare-fun m!2129079 () Bool)

(assert (=> d!528045 m!2129079))

(declare-fun m!2129081 () Bool)

(assert (=> d!528045 m!2129081))

(declare-fun m!2129083 () Bool)

(assert (=> d!528045 m!2129083))

(declare-fun m!2129085 () Bool)

(assert (=> d!528045 m!2129085))

(assert (=> b!1722882 m!2129053))

(declare-fun m!2129087 () Bool)

(assert (=> b!1722882 m!2129087))

(assert (=> b!1722882 m!2128687))

(assert (=> b!1722328 d!528045))

(declare-fun d!528057 () Bool)

(declare-fun list!7622 (Conc!6271) List!18925)

(assert (=> d!528057 (= (list!7618 lt!659021) (list!7622 (c!281753 lt!659021)))))

(declare-fun bs!402290 () Bool)

(assert (= bs!402290 d!528057))

(declare-fun m!2129089 () Bool)

(assert (=> bs!402290 m!2129089))

(assert (=> b!1722328 d!528057))

(declare-fun b!1722889 () Bool)

(declare-fun e!1102000 () Bool)

(declare-fun e!1102001 () Bool)

(assert (=> b!1722889 (= e!1102000 e!1102001)))

(declare-fun res!773123 () Bool)

(assert (=> b!1722889 (=> (not res!773123) (not e!1102001))))

(assert (=> b!1722889 (= res!773123 (not ((_ is Nil!18855) lt!659016)))))

(declare-fun b!1722891 () Bool)

(assert (=> b!1722891 (= e!1102001 (isPrefix!1582 (tail!2573 lt!659013) (tail!2573 lt!659016)))))

(declare-fun b!1722892 () Bool)

(declare-fun e!1102002 () Bool)

(assert (=> b!1722892 (= e!1102002 (>= (size!14983 lt!659016) (size!14983 lt!659013)))))

(declare-fun d!528059 () Bool)

(assert (=> d!528059 e!1102002))

(declare-fun res!773121 () Bool)

(assert (=> d!528059 (=> res!773121 e!1102002)))

(declare-fun lt!659312 () Bool)

(assert (=> d!528059 (= res!773121 (not lt!659312))))

(assert (=> d!528059 (= lt!659312 e!1102000)))

(declare-fun res!773122 () Bool)

(assert (=> d!528059 (=> res!773122 e!1102000)))

(assert (=> d!528059 (= res!773122 ((_ is Nil!18855) lt!659013))))

(assert (=> d!528059 (= (isPrefix!1582 lt!659013 lt!659016) lt!659312)))

(declare-fun b!1722890 () Bool)

(declare-fun res!773124 () Bool)

(assert (=> b!1722890 (=> (not res!773124) (not e!1102001))))

(assert (=> b!1722890 (= res!773124 (= (head!3896 lt!659013) (head!3896 lt!659016)))))

(assert (= (and d!528059 (not res!773122)) b!1722889))

(assert (= (and b!1722889 res!773123) b!1722890))

(assert (= (and b!1722890 res!773124) b!1722891))

(assert (= (and d!528059 (not res!773121)) b!1722892))

(assert (=> b!1722891 m!2128727))

(assert (=> b!1722891 m!2128715))

(assert (=> b!1722891 m!2128727))

(assert (=> b!1722891 m!2128715))

(declare-fun m!2129091 () Bool)

(assert (=> b!1722891 m!2129091))

(assert (=> b!1722892 m!2128687))

(assert (=> b!1722892 m!2128263))

(assert (=> b!1722890 m!2128723))

(assert (=> b!1722890 m!2128785))

(assert (=> b!1722328 d!528059))

(declare-fun b!1722893 () Bool)

(declare-fun e!1102003 () Bool)

(declare-fun e!1102004 () Bool)

(assert (=> b!1722893 (= e!1102003 e!1102004)))

(declare-fun res!773127 () Bool)

(assert (=> b!1722893 (=> (not res!773127) (not e!1102004))))

(assert (=> b!1722893 (= res!773127 (not ((_ is Nil!18855) (++!5166 lt!659013 (_2!10675 lt!659004)))))))

(declare-fun b!1722895 () Bool)

(assert (=> b!1722895 (= e!1102004 (isPrefix!1582 (tail!2573 lt!659013) (tail!2573 (++!5166 lt!659013 (_2!10675 lt!659004)))))))

(declare-fun b!1722896 () Bool)

(declare-fun e!1102005 () Bool)

(assert (=> b!1722896 (= e!1102005 (>= (size!14983 (++!5166 lt!659013 (_2!10675 lt!659004))) (size!14983 lt!659013)))))

(declare-fun d!528061 () Bool)

(assert (=> d!528061 e!1102005))

(declare-fun res!773125 () Bool)

(assert (=> d!528061 (=> res!773125 e!1102005)))

(declare-fun lt!659313 () Bool)

(assert (=> d!528061 (= res!773125 (not lt!659313))))

(assert (=> d!528061 (= lt!659313 e!1102003)))

(declare-fun res!773126 () Bool)

(assert (=> d!528061 (=> res!773126 e!1102003)))

(assert (=> d!528061 (= res!773126 ((_ is Nil!18855) lt!659013))))

(assert (=> d!528061 (= (isPrefix!1582 lt!659013 (++!5166 lt!659013 (_2!10675 lt!659004))) lt!659313)))

(declare-fun b!1722894 () Bool)

(declare-fun res!773128 () Bool)

(assert (=> b!1722894 (=> (not res!773128) (not e!1102004))))

(assert (=> b!1722894 (= res!773128 (= (head!3896 lt!659013) (head!3896 (++!5166 lt!659013 (_2!10675 lt!659004)))))))

(assert (= (and d!528061 (not res!773126)) b!1722893))

(assert (= (and b!1722893 res!773127) b!1722894))

(assert (= (and b!1722894 res!773128) b!1722895))

(assert (= (and d!528061 (not res!773125)) b!1722896))

(assert (=> b!1722895 m!2128727))

(assert (=> b!1722895 m!2128269))

(declare-fun m!2129093 () Bool)

(assert (=> b!1722895 m!2129093))

(assert (=> b!1722895 m!2128727))

(assert (=> b!1722895 m!2129093))

(declare-fun m!2129095 () Bool)

(assert (=> b!1722895 m!2129095))

(assert (=> b!1722896 m!2128269))

(declare-fun m!2129097 () Bool)

(assert (=> b!1722896 m!2129097))

(assert (=> b!1722896 m!2128263))

(assert (=> b!1722894 m!2128723))

(assert (=> b!1722894 m!2128269))

(declare-fun m!2129099 () Bool)

(assert (=> b!1722894 m!2129099))

(assert (=> b!1722328 d!528061))

(declare-fun d!528063 () Bool)

(declare-fun c!281864 () Bool)

(assert (=> d!528063 (= c!281864 ((_ is IntegerValue!10293) (value!104891 token!523)))))

(declare-fun e!1102013 () Bool)

(assert (=> d!528063 (= (inv!21 (value!104891 token!523)) e!1102013)))

(declare-fun b!1722907 () Bool)

(declare-fun inv!16 (TokenValue!3431) Bool)

(assert (=> b!1722907 (= e!1102013 (inv!16 (value!104891 token!523)))))

(declare-fun b!1722908 () Bool)

(declare-fun res!773131 () Bool)

(declare-fun e!1102012 () Bool)

(assert (=> b!1722908 (=> res!773131 e!1102012)))

(assert (=> b!1722908 (= res!773131 (not ((_ is IntegerValue!10295) (value!104891 token!523))))))

(declare-fun e!1102014 () Bool)

(assert (=> b!1722908 (= e!1102014 e!1102012)))

(declare-fun b!1722909 () Bool)

(declare-fun inv!17 (TokenValue!3431) Bool)

(assert (=> b!1722909 (= e!1102014 (inv!17 (value!104891 token!523)))))

(declare-fun b!1722910 () Bool)

(assert (=> b!1722910 (= e!1102013 e!1102014)))

(declare-fun c!281863 () Bool)

(assert (=> b!1722910 (= c!281863 ((_ is IntegerValue!10294) (value!104891 token!523)))))

(declare-fun b!1722911 () Bool)

(declare-fun inv!15 (TokenValue!3431) Bool)

(assert (=> b!1722911 (= e!1102012 (inv!15 (value!104891 token!523)))))

(assert (= (and d!528063 c!281864) b!1722907))

(assert (= (and d!528063 (not c!281864)) b!1722910))

(assert (= (and b!1722910 c!281863) b!1722909))

(assert (= (and b!1722910 (not c!281863)) b!1722908))

(assert (= (and b!1722908 (not res!773131)) b!1722911))

(declare-fun m!2129101 () Bool)

(assert (=> b!1722907 m!2129101))

(declare-fun m!2129103 () Bool)

(assert (=> b!1722909 m!2129103))

(declare-fun m!2129105 () Bool)

(assert (=> b!1722911 m!2129105))

(assert (=> b!1722326 d!528063))

(declare-fun d!528065 () Bool)

(declare-fun isBalanced!1962 (Conc!6271) Bool)

(assert (=> d!528065 (= (inv!24359 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))) (isBalanced!1962 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))))

(declare-fun bs!402291 () Bool)

(assert (= bs!402291 d!528065))

(declare-fun m!2129107 () Bool)

(assert (=> bs!402291 m!2129107))

(assert (=> tb!102153 d!528065))

(declare-fun d!528067 () Bool)

(assert (=> d!528067 (= (isEmpty!11857 suffix!1421) ((_ is Nil!18855) suffix!1421))))

(assert (=> b!1722305 d!528067))

(declare-fun d!528069 () Bool)

(declare-fun c!281866 () Bool)

(assert (=> d!528069 (= c!281866 ((_ is IntegerValue!10293) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(declare-fun e!1102016 () Bool)

(assert (=> d!528069 (= (inv!21 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)) e!1102016)))

(declare-fun b!1722912 () Bool)

(assert (=> b!1722912 (= e!1102016 (inv!16 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(declare-fun b!1722913 () Bool)

(declare-fun res!773132 () Bool)

(declare-fun e!1102015 () Bool)

(assert (=> b!1722913 (=> res!773132 e!1102015)))

(assert (=> b!1722913 (= res!773132 (not ((_ is IntegerValue!10295) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))))

(declare-fun e!1102017 () Bool)

(assert (=> b!1722913 (= e!1102017 e!1102015)))

(declare-fun b!1722914 () Bool)

(assert (=> b!1722914 (= e!1102017 (inv!17 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(declare-fun b!1722915 () Bool)

(assert (=> b!1722915 (= e!1102016 e!1102017)))

(declare-fun c!281865 () Bool)

(assert (=> b!1722915 (= c!281865 ((_ is IntegerValue!10294) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(declare-fun b!1722916 () Bool)

(assert (=> b!1722916 (= e!1102015 (inv!15 (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))

(assert (= (and d!528069 c!281866) b!1722912))

(assert (= (and d!528069 (not c!281866)) b!1722915))

(assert (= (and b!1722915 c!281865) b!1722914))

(assert (= (and b!1722915 (not c!281865)) b!1722913))

(assert (= (and b!1722913 (not res!773132)) b!1722916))

(declare-fun m!2129109 () Bool)

(assert (=> b!1722912 m!2129109))

(declare-fun m!2129111 () Bool)

(assert (=> b!1722914 m!2129111))

(declare-fun m!2129113 () Bool)

(assert (=> b!1722916 m!2129113))

(assert (=> tb!102165 d!528069))

(declare-fun d!528071 () Bool)

(declare-fun res!773143 () Bool)

(declare-fun e!1102043 () Bool)

(assert (=> d!528071 (=> res!773143 e!1102043)))

(assert (=> d!528071 (= res!773143 ((_ is ElementMatch!4669) lt!659000))))

(assert (=> d!528071 (= (validRegex!1882 lt!659000) e!1102043)))

(declare-fun b!1722963 () Bool)

(declare-fun res!773144 () Bool)

(declare-fun e!1102048 () Bool)

(assert (=> b!1722963 (=> res!773144 e!1102048)))

(assert (=> b!1722963 (= res!773144 (not ((_ is Concat!8101) lt!659000)))))

(declare-fun e!1102045 () Bool)

(assert (=> b!1722963 (= e!1102045 e!1102048)))

(declare-fun b!1722964 () Bool)

(declare-fun e!1102047 () Bool)

(declare-fun e!1102046 () Bool)

(assert (=> b!1722964 (= e!1102047 e!1102046)))

(declare-fun res!773146 () Bool)

(assert (=> b!1722964 (= res!773146 (not (nullable!1408 (reg!4998 lt!659000))))))

(assert (=> b!1722964 (=> (not res!773146) (not e!1102046))))

(declare-fun b!1722965 () Bool)

(assert (=> b!1722965 (= e!1102043 e!1102047)))

(declare-fun c!281872 () Bool)

(assert (=> b!1722965 (= c!281872 ((_ is Star!4669) lt!659000))))

(declare-fun b!1722966 () Bool)

(assert (=> b!1722966 (= e!1102047 e!1102045)))

(declare-fun c!281871 () Bool)

(assert (=> b!1722966 (= c!281871 ((_ is Union!4669) lt!659000))))

(declare-fun b!1722967 () Bool)

(declare-fun e!1102044 () Bool)

(declare-fun call!109768 () Bool)

(assert (=> b!1722967 (= e!1102044 call!109768)))

(declare-fun call!109766 () Bool)

(declare-fun bm!109761 () Bool)

(assert (=> bm!109761 (= call!109766 (validRegex!1882 (ite c!281872 (reg!4998 lt!659000) (ite c!281871 (regOne!9851 lt!659000) (regTwo!9850 lt!659000)))))))

(declare-fun bm!109762 () Bool)

(assert (=> bm!109762 (= call!109768 (validRegex!1882 (ite c!281871 (regTwo!9851 lt!659000) (regOne!9850 lt!659000))))))

(declare-fun b!1722968 () Bool)

(declare-fun e!1102049 () Bool)

(assert (=> b!1722968 (= e!1102048 e!1102049)))

(declare-fun res!773145 () Bool)

(assert (=> b!1722968 (=> (not res!773145) (not e!1102049))))

(assert (=> b!1722968 (= res!773145 call!109768)))

(declare-fun b!1722969 () Bool)

(assert (=> b!1722969 (= e!1102046 call!109766)))

(declare-fun b!1722970 () Bool)

(declare-fun call!109767 () Bool)

(assert (=> b!1722970 (= e!1102049 call!109767)))

(declare-fun b!1722971 () Bool)

(declare-fun res!773147 () Bool)

(assert (=> b!1722971 (=> (not res!773147) (not e!1102044))))

(assert (=> b!1722971 (= res!773147 call!109767)))

(assert (=> b!1722971 (= e!1102045 e!1102044)))

(declare-fun bm!109763 () Bool)

(assert (=> bm!109763 (= call!109767 call!109766)))

(assert (= (and d!528071 (not res!773143)) b!1722965))

(assert (= (and b!1722965 c!281872) b!1722964))

(assert (= (and b!1722965 (not c!281872)) b!1722966))

(assert (= (and b!1722964 res!773146) b!1722969))

(assert (= (and b!1722966 c!281871) b!1722971))

(assert (= (and b!1722966 (not c!281871)) b!1722963))

(assert (= (and b!1722971 res!773147) b!1722967))

(assert (= (and b!1722963 (not res!773144)) b!1722968))

(assert (= (and b!1722968 res!773145) b!1722970))

(assert (= (or b!1722971 b!1722970) bm!109763))

(assert (= (or b!1722967 b!1722968) bm!109762))

(assert (= (or b!1722969 bm!109763) bm!109761))

(declare-fun m!2129117 () Bool)

(assert (=> b!1722964 m!2129117))

(declare-fun m!2129119 () Bool)

(assert (=> bm!109761 m!2129119))

(declare-fun m!2129121 () Bool)

(assert (=> bm!109762 m!2129121))

(assert (=> b!1722320 d!528071))

(declare-fun b!1722972 () Bool)

(declare-fun res!773152 () Bool)

(declare-fun e!1102055 () Bool)

(assert (=> b!1722972 (=> (not res!773152) (not e!1102055))))

(assert (=> b!1722972 (= res!773152 (isEmpty!11857 (tail!2573 lt!659022)))))

(declare-fun d!528073 () Bool)

(declare-fun e!1102053 () Bool)

(assert (=> d!528073 e!1102053))

(declare-fun c!281875 () Bool)

(assert (=> d!528073 (= c!281875 ((_ is EmptyExpr!4669) lt!659000))))

(declare-fun lt!659317 () Bool)

(declare-fun e!1102054 () Bool)

(assert (=> d!528073 (= lt!659317 e!1102054)))

(declare-fun c!281874 () Bool)

(assert (=> d!528073 (= c!281874 (isEmpty!11857 lt!659022))))

(assert (=> d!528073 (validRegex!1882 lt!659000)))

(assert (=> d!528073 (= (matchR!2143 lt!659000 lt!659022) lt!659317)))

(declare-fun b!1722973 () Bool)

(declare-fun e!1102050 () Bool)

(assert (=> b!1722973 (= e!1102053 e!1102050)))

(declare-fun c!281873 () Bool)

(assert (=> b!1722973 (= c!281873 ((_ is EmptyLang!4669) lt!659000))))

(declare-fun bm!109764 () Bool)

(declare-fun call!109769 () Bool)

(assert (=> bm!109764 (= call!109769 (isEmpty!11857 lt!659022))))

(declare-fun b!1722974 () Bool)

(declare-fun res!773148 () Bool)

(declare-fun e!1102056 () Bool)

(assert (=> b!1722974 (=> res!773148 e!1102056)))

(assert (=> b!1722974 (= res!773148 (not (isEmpty!11857 (tail!2573 lt!659022))))))

(declare-fun b!1722975 () Bool)

(declare-fun res!773149 () Bool)

(declare-fun e!1102052 () Bool)

(assert (=> b!1722975 (=> res!773149 e!1102052)))

(assert (=> b!1722975 (= res!773149 (not ((_ is ElementMatch!4669) lt!659000)))))

(assert (=> b!1722975 (= e!1102050 e!1102052)))

(declare-fun b!1722976 () Bool)

(declare-fun e!1102051 () Bool)

(assert (=> b!1722976 (= e!1102051 e!1102056)))

(declare-fun res!773150 () Bool)

(assert (=> b!1722976 (=> res!773150 e!1102056)))

(assert (=> b!1722976 (= res!773150 call!109769)))

(declare-fun b!1722977 () Bool)

(assert (=> b!1722977 (= e!1102050 (not lt!659317))))

(declare-fun b!1722978 () Bool)

(assert (=> b!1722978 (= e!1102055 (= (head!3896 lt!659022) (c!281752 lt!659000)))))

(declare-fun b!1722979 () Bool)

(assert (=> b!1722979 (= e!1102056 (not (= (head!3896 lt!659022) (c!281752 lt!659000))))))

(declare-fun b!1722980 () Bool)

(assert (=> b!1722980 (= e!1102054 (matchR!2143 (derivativeStep!1176 lt!659000 (head!3896 lt!659022)) (tail!2573 lt!659022)))))

(declare-fun b!1722981 () Bool)

(declare-fun res!773151 () Bool)

(assert (=> b!1722981 (=> (not res!773151) (not e!1102055))))

(assert (=> b!1722981 (= res!773151 (not call!109769))))

(declare-fun b!1722984 () Bool)

(assert (=> b!1722984 (= e!1102052 e!1102051)))

(declare-fun res!773154 () Bool)

(assert (=> b!1722984 (=> (not res!773154) (not e!1102051))))

(assert (=> b!1722984 (= res!773154 (not lt!659317))))

(declare-fun b!1722986 () Bool)

(assert (=> b!1722986 (= e!1102054 (nullable!1408 lt!659000))))

(declare-fun b!1722987 () Bool)

(assert (=> b!1722987 (= e!1102053 (= lt!659317 call!109769))))

(declare-fun b!1722988 () Bool)

(declare-fun res!773155 () Bool)

(assert (=> b!1722988 (=> res!773155 e!1102052)))

(assert (=> b!1722988 (= res!773155 e!1102055)))

(declare-fun res!773153 () Bool)

(assert (=> b!1722988 (=> (not res!773153) (not e!1102055))))

(assert (=> b!1722988 (= res!773153 lt!659317)))

(assert (= (and d!528073 c!281874) b!1722986))

(assert (= (and d!528073 (not c!281874)) b!1722980))

(assert (= (and d!528073 c!281875) b!1722987))

(assert (= (and d!528073 (not c!281875)) b!1722973))

(assert (= (and b!1722973 c!281873) b!1722977))

(assert (= (and b!1722973 (not c!281873)) b!1722975))

(assert (= (and b!1722975 (not res!773149)) b!1722988))

(assert (= (and b!1722988 res!773153) b!1722981))

(assert (= (and b!1722981 res!773151) b!1722972))

(assert (= (and b!1722972 res!773152) b!1722978))

(assert (= (and b!1722988 (not res!773155)) b!1722984))

(assert (= (and b!1722984 res!773154) b!1722976))

(assert (= (and b!1722976 (not res!773150)) b!1722974))

(assert (= (and b!1722974 (not res!773148)) b!1722979))

(assert (= (or b!1722987 b!1722976 b!1722981) bm!109764))

(assert (=> b!1722980 m!2128783))

(assert (=> b!1722980 m!2128783))

(declare-fun m!2129129 () Bool)

(assert (=> b!1722980 m!2129129))

(assert (=> b!1722980 m!2128779))

(assert (=> b!1722980 m!2129129))

(assert (=> b!1722980 m!2128779))

(declare-fun m!2129135 () Bool)

(assert (=> b!1722980 m!2129135))

(assert (=> b!1722972 m!2128779))

(assert (=> b!1722972 m!2128779))

(declare-fun m!2129139 () Bool)

(assert (=> b!1722972 m!2129139))

(assert (=> b!1722978 m!2128783))

(declare-fun m!2129141 () Bool)

(assert (=> d!528073 m!2129141))

(assert (=> d!528073 m!2128247))

(assert (=> bm!109764 m!2129141))

(declare-fun m!2129143 () Bool)

(assert (=> b!1722986 m!2129143))

(assert (=> b!1722979 m!2128783))

(assert (=> b!1722974 m!2128779))

(assert (=> b!1722974 m!2128779))

(assert (=> b!1722974 m!2129139))

(assert (=> b!1722320 d!528073))

(declare-fun d!528075 () Bool)

(assert (=> d!528075 (matchR!2143 (rulesRegex!699 thiss!24550 rules!3447) (list!7618 (charsOf!1990 token!523)))))

(declare-fun lt!659320 () Unit!32697)

(declare-fun choose!10486 (LexerInterface!2970 List!18926 List!18925 Token!6248 Rule!6482 List!18925) Unit!32697)

(assert (=> d!528075 (= lt!659320 (choose!10486 thiss!24550 rules!3447 lt!659022 token!523 rule!422 Nil!18855))))

(assert (=> d!528075 (not (isEmpty!11858 rules!3447))))

(assert (=> d!528075 (= (lemmaMaxPrefixThenMatchesRulesRegex!90 thiss!24550 rules!3447 lt!659022 token!523 rule!422 Nil!18855) lt!659320)))

(declare-fun bs!402293 () Bool)

(assert (= bs!402293 d!528075))

(assert (=> bs!402293 m!2128361))

(assert (=> bs!402293 m!2128327))

(declare-fun m!2129149 () Bool)

(assert (=> bs!402293 m!2129149))

(assert (=> bs!402293 m!2128361))

(assert (=> bs!402293 m!2128325))

(assert (=> bs!402293 m!2128325))

(assert (=> bs!402293 m!2128327))

(assert (=> bs!402293 m!2128351))

(declare-fun m!2129151 () Bool)

(assert (=> bs!402293 m!2129151))

(assert (=> b!1722320 d!528075))

(declare-fun d!528077 () Bool)

(assert (=> d!528077 (= (isEmpty!11857 (_2!10675 lt!658999)) ((_ is Nil!18855) (_2!10675 lt!658999)))))

(assert (=> b!1722318 d!528077))

(declare-fun d!528079 () Bool)

(declare-fun res!773160 () Bool)

(declare-fun e!1102077 () Bool)

(assert (=> d!528079 (=> (not res!773160) (not e!1102077))))

(assert (=> d!528079 (= res!773160 (not (isEmpty!11857 (originalCharacters!4155 token!523))))))

(assert (=> d!528079 (= (inv!24357 token!523) e!1102077)))

(declare-fun b!1723015 () Bool)

(declare-fun res!773161 () Bool)

(assert (=> b!1723015 (=> (not res!773161) (not e!1102077))))

(assert (=> b!1723015 (= res!773161 (= (originalCharacters!4155 token!523) (list!7618 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (value!104891 token!523)))))))

(declare-fun b!1723016 () Bool)

(assert (=> b!1723016 (= e!1102077 (= (size!14982 token!523) (size!14983 (originalCharacters!4155 token!523))))))

(assert (= (and d!528079 res!773160) b!1723015))

(assert (= (and b!1723015 res!773161) b!1723016))

(declare-fun b_lambda!54703 () Bool)

(assert (=> (not b_lambda!54703) (not b!1723015)))

(declare-fun tb!102213 () Bool)

(declare-fun t!159705 () Bool)

(assert (=> (and b!1722324 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 token!523)))) t!159705) tb!102213))

(declare-fun b!1723017 () Bool)

(declare-fun e!1102078 () Bool)

(declare-fun tp!491783 () Bool)

(assert (=> b!1723017 (= e!1102078 (and (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (value!104891 token!523)))) tp!491783))))

(declare-fun result!122860 () Bool)

(assert (=> tb!102213 (= result!122860 (and (inv!24359 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (value!104891 token!523))) e!1102078))))

(assert (= tb!102213 b!1723017))

(declare-fun m!2129153 () Bool)

(assert (=> b!1723017 m!2129153))

(declare-fun m!2129155 () Bool)

(assert (=> tb!102213 m!2129155))

(assert (=> b!1723015 t!159705))

(declare-fun b_and!126053 () Bool)

(assert (= b_and!126013 (and (=> t!159705 result!122860) b_and!126053)))

(declare-fun tb!102215 () Bool)

(declare-fun t!159707 () Bool)

(assert (=> (and b!1722313 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 token!523)))) t!159707) tb!102215))

(declare-fun result!122862 () Bool)

(assert (= result!122862 result!122860))

(assert (=> b!1723015 t!159707))

(declare-fun b_and!126055 () Bool)

(assert (= b_and!126015 (and (=> t!159707 result!122862) b_and!126055)))

(declare-fun t!159709 () Bool)

(declare-fun tb!102217 () Bool)

(assert (=> (and b!1722314 (= (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toChars!4707 (transformation!3341 (rule!5291 token!523)))) t!159709) tb!102217))

(declare-fun result!122864 () Bool)

(assert (= result!122864 result!122860))

(assert (=> b!1723015 t!159709))

(declare-fun b_and!126057 () Bool)

(assert (= b_and!126017 (and (=> t!159709 result!122864) b_and!126057)))

(declare-fun m!2129157 () Bool)

(assert (=> d!528079 m!2129157))

(declare-fun m!2129159 () Bool)

(assert (=> b!1723015 m!2129159))

(assert (=> b!1723015 m!2129159))

(declare-fun m!2129161 () Bool)

(assert (=> b!1723015 m!2129161))

(declare-fun m!2129163 () Bool)

(assert (=> b!1723016 m!2129163))

(assert (=> start!168850 d!528079))

(declare-fun d!528081 () Bool)

(assert (=> d!528081 (= (isEmpty!11858 rules!3447) ((_ is Nil!18856) rules!3447))))

(assert (=> b!1722322 d!528081))

(declare-fun d!528083 () Bool)

(assert (=> d!528083 (= (get!5594 lt!659002) (v!25110 lt!659002))))

(assert (=> b!1722301 d!528083))

(declare-fun d!528085 () Bool)

(declare-fun c!281878 () Bool)

(assert (=> d!528085 (= c!281878 ((_ is Node!6271) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))))

(declare-fun e!1102083 () Bool)

(assert (=> d!528085 (= (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))) e!1102083)))

(declare-fun b!1723024 () Bool)

(declare-fun inv!24362 (Conc!6271) Bool)

(assert (=> b!1723024 (= e!1102083 (inv!24362 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))))

(declare-fun b!1723025 () Bool)

(declare-fun e!1102084 () Bool)

(assert (=> b!1723025 (= e!1102083 e!1102084)))

(declare-fun res!773164 () Bool)

(assert (=> b!1723025 (= res!773164 (not ((_ is Leaf!9162) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))))))

(assert (=> b!1723025 (=> res!773164 e!1102084)))

(declare-fun b!1723026 () Bool)

(declare-fun inv!24363 (Conc!6271) Bool)

(assert (=> b!1723026 (= e!1102084 (inv!24363 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))))))

(assert (= (and d!528085 c!281878) b!1723024))

(assert (= (and d!528085 (not c!281878)) b!1723025))

(assert (= (and b!1723025 (not res!773164)) b!1723026))

(declare-fun m!2129165 () Bool)

(assert (=> b!1723024 m!2129165))

(declare-fun m!2129167 () Bool)

(assert (=> b!1723026 m!2129167))

(assert (=> b!1722345 d!528085))

(declare-fun b!1723027 () Bool)

(declare-fun res!773169 () Bool)

(declare-fun e!1102090 () Bool)

(assert (=> b!1723027 (=> (not res!773169) (not e!1102090))))

(assert (=> b!1723027 (= res!773169 (isEmpty!11857 (tail!2573 (list!7618 (charsOf!1990 (_1!10675 lt!659004))))))))

(declare-fun d!528087 () Bool)

(declare-fun e!1102088 () Bool)

(assert (=> d!528087 e!1102088))

(declare-fun c!281881 () Bool)

(assert (=> d!528087 (= c!281881 ((_ is EmptyExpr!4669) (regex!3341 lt!659009)))))

(declare-fun lt!659321 () Bool)

(declare-fun e!1102089 () Bool)

(assert (=> d!528087 (= lt!659321 e!1102089)))

(declare-fun c!281880 () Bool)

(assert (=> d!528087 (= c!281880 (isEmpty!11857 (list!7618 (charsOf!1990 (_1!10675 lt!659004)))))))

(assert (=> d!528087 (validRegex!1882 (regex!3341 lt!659009))))

(assert (=> d!528087 (= (matchR!2143 (regex!3341 lt!659009) (list!7618 (charsOf!1990 (_1!10675 lt!659004)))) lt!659321)))

(declare-fun b!1723028 () Bool)

(declare-fun e!1102085 () Bool)

(assert (=> b!1723028 (= e!1102088 e!1102085)))

(declare-fun c!281879 () Bool)

(assert (=> b!1723028 (= c!281879 ((_ is EmptyLang!4669) (regex!3341 lt!659009)))))

(declare-fun bm!109765 () Bool)

(declare-fun call!109770 () Bool)

(assert (=> bm!109765 (= call!109770 (isEmpty!11857 (list!7618 (charsOf!1990 (_1!10675 lt!659004)))))))

(declare-fun b!1723029 () Bool)

(declare-fun res!773165 () Bool)

(declare-fun e!1102091 () Bool)

(assert (=> b!1723029 (=> res!773165 e!1102091)))

(assert (=> b!1723029 (= res!773165 (not (isEmpty!11857 (tail!2573 (list!7618 (charsOf!1990 (_1!10675 lt!659004)))))))))

(declare-fun b!1723030 () Bool)

(declare-fun res!773166 () Bool)

(declare-fun e!1102087 () Bool)

(assert (=> b!1723030 (=> res!773166 e!1102087)))

(assert (=> b!1723030 (= res!773166 (not ((_ is ElementMatch!4669) (regex!3341 lt!659009))))))

(assert (=> b!1723030 (= e!1102085 e!1102087)))

(declare-fun b!1723031 () Bool)

(declare-fun e!1102086 () Bool)

(assert (=> b!1723031 (= e!1102086 e!1102091)))

(declare-fun res!773167 () Bool)

(assert (=> b!1723031 (=> res!773167 e!1102091)))

(assert (=> b!1723031 (= res!773167 call!109770)))

(declare-fun b!1723032 () Bool)

(assert (=> b!1723032 (= e!1102085 (not lt!659321))))

(declare-fun b!1723033 () Bool)

(assert (=> b!1723033 (= e!1102090 (= (head!3896 (list!7618 (charsOf!1990 (_1!10675 lt!659004)))) (c!281752 (regex!3341 lt!659009))))))

(declare-fun b!1723034 () Bool)

(assert (=> b!1723034 (= e!1102091 (not (= (head!3896 (list!7618 (charsOf!1990 (_1!10675 lt!659004)))) (c!281752 (regex!3341 lt!659009)))))))

(declare-fun b!1723035 () Bool)

(assert (=> b!1723035 (= e!1102089 (matchR!2143 (derivativeStep!1176 (regex!3341 lt!659009) (head!3896 (list!7618 (charsOf!1990 (_1!10675 lt!659004))))) (tail!2573 (list!7618 (charsOf!1990 (_1!10675 lt!659004))))))))

(declare-fun b!1723036 () Bool)

(declare-fun res!773168 () Bool)

(assert (=> b!1723036 (=> (not res!773168) (not e!1102090))))

(assert (=> b!1723036 (= res!773168 (not call!109770))))

(declare-fun b!1723037 () Bool)

(assert (=> b!1723037 (= e!1102087 e!1102086)))

(declare-fun res!773171 () Bool)

(assert (=> b!1723037 (=> (not res!773171) (not e!1102086))))

(assert (=> b!1723037 (= res!773171 (not lt!659321))))

(declare-fun b!1723038 () Bool)

(assert (=> b!1723038 (= e!1102089 (nullable!1408 (regex!3341 lt!659009)))))

(declare-fun b!1723039 () Bool)

(assert (=> b!1723039 (= e!1102088 (= lt!659321 call!109770))))

(declare-fun b!1723040 () Bool)

(declare-fun res!773172 () Bool)

(assert (=> b!1723040 (=> res!773172 e!1102087)))

(assert (=> b!1723040 (= res!773172 e!1102090)))

(declare-fun res!773170 () Bool)

(assert (=> b!1723040 (=> (not res!773170) (not e!1102090))))

(assert (=> b!1723040 (= res!773170 lt!659321)))

(assert (= (and d!528087 c!281880) b!1723038))

(assert (= (and d!528087 (not c!281880)) b!1723035))

(assert (= (and d!528087 c!281881) b!1723039))

(assert (= (and d!528087 (not c!281881)) b!1723028))

(assert (= (and b!1723028 c!281879) b!1723032))

(assert (= (and b!1723028 (not c!281879)) b!1723030))

(assert (= (and b!1723030 (not res!773166)) b!1723040))

(assert (= (and b!1723040 res!773170) b!1723036))

(assert (= (and b!1723036 res!773168) b!1723027))

(assert (= (and b!1723027 res!773169) b!1723033))

(assert (= (and b!1723040 (not res!773172)) b!1723037))

(assert (= (and b!1723037 res!773171) b!1723031))

(assert (= (and b!1723031 (not res!773167)) b!1723029))

(assert (= (and b!1723029 (not res!773165)) b!1723034))

(assert (= (or b!1723039 b!1723031 b!1723036) bm!109765))

(assert (=> b!1723035 m!2128315))

(declare-fun m!2129169 () Bool)

(assert (=> b!1723035 m!2129169))

(assert (=> b!1723035 m!2129169))

(declare-fun m!2129171 () Bool)

(assert (=> b!1723035 m!2129171))

(assert (=> b!1723035 m!2128315))

(declare-fun m!2129173 () Bool)

(assert (=> b!1723035 m!2129173))

(assert (=> b!1723035 m!2129171))

(assert (=> b!1723035 m!2129173))

(declare-fun m!2129175 () Bool)

(assert (=> b!1723035 m!2129175))

(assert (=> b!1723027 m!2128315))

(assert (=> b!1723027 m!2129173))

(assert (=> b!1723027 m!2129173))

(declare-fun m!2129177 () Bool)

(assert (=> b!1723027 m!2129177))

(assert (=> b!1723033 m!2128315))

(assert (=> b!1723033 m!2129169))

(assert (=> d!528087 m!2128315))

(declare-fun m!2129179 () Bool)

(assert (=> d!528087 m!2129179))

(declare-fun m!2129181 () Bool)

(assert (=> d!528087 m!2129181))

(assert (=> bm!109765 m!2128315))

(assert (=> bm!109765 m!2129179))

(declare-fun m!2129183 () Bool)

(assert (=> b!1723038 m!2129183))

(assert (=> b!1723034 m!2128315))

(assert (=> b!1723034 m!2129169))

(assert (=> b!1723029 m!2128315))

(assert (=> b!1723029 m!2129173))

(assert (=> b!1723029 m!2129173))

(assert (=> b!1723029 m!2129177))

(assert (=> b!1722321 d!528087))

(declare-fun d!528089 () Bool)

(assert (=> d!528089 (= (list!7618 (charsOf!1990 (_1!10675 lt!659004))) (list!7622 (c!281753 (charsOf!1990 (_1!10675 lt!659004)))))))

(declare-fun bs!402294 () Bool)

(assert (= bs!402294 d!528089))

(declare-fun m!2129185 () Bool)

(assert (=> bs!402294 m!2129185))

(assert (=> b!1722321 d!528089))

(assert (=> b!1722321 d!527973))

(declare-fun d!528091 () Bool)

(assert (=> d!528091 (= (get!5595 lt!659014) (v!25111 lt!659014))))

(assert (=> b!1722321 d!528091))

(declare-fun d!528093 () Bool)

(declare-fun c!281882 () Bool)

(assert (=> d!528093 (= c!281882 ((_ is Node!6271) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))))

(declare-fun e!1102092 () Bool)

(assert (=> d!528093 (= (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))) e!1102092)))

(declare-fun b!1723041 () Bool)

(assert (=> b!1723041 (= e!1102092 (inv!24362 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))))

(declare-fun b!1723042 () Bool)

(declare-fun e!1102093 () Bool)

(assert (=> b!1723042 (= e!1102092 e!1102093)))

(declare-fun res!773173 () Bool)

(assert (=> b!1723042 (= res!773173 (not ((_ is Leaf!9162) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))))))

(assert (=> b!1723042 (=> res!773173 e!1102093)))

(declare-fun b!1723043 () Bool)

(assert (=> b!1723043 (= e!1102093 (inv!24363 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))))

(assert (= (and d!528093 c!281882) b!1723041))

(assert (= (and d!528093 (not c!281882)) b!1723042))

(assert (= (and b!1723042 (not res!773173)) b!1723043))

(declare-fun m!2129187 () Bool)

(assert (=> b!1723041 m!2129187))

(declare-fun m!2129189 () Bool)

(assert (=> b!1723043 m!2129189))

(assert (=> b!1722346 d!528093))

(declare-fun d!528095 () Bool)

(assert (=> d!528095 (= (inv!24351 (tag!3653 (h!24257 rules!3447))) (= (mod (str.len (value!104890 (tag!3653 (h!24257 rules!3447)))) 2) 0))))

(assert (=> b!1722315 d!528095))

(declare-fun d!528097 () Bool)

(declare-fun res!773174 () Bool)

(declare-fun e!1102094 () Bool)

(assert (=> d!528097 (=> (not res!773174) (not e!1102094))))

(assert (=> d!528097 (= res!773174 (semiInverseModEq!1321 (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (h!24257 rules!3447)))))))

(assert (=> d!528097 (= (inv!24356 (transformation!3341 (h!24257 rules!3447))) e!1102094)))

(declare-fun b!1723044 () Bool)

(assert (=> b!1723044 (= e!1102094 (equivClasses!1262 (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (h!24257 rules!3447)))))))

(assert (= (and d!528097 res!773174) b!1723044))

(declare-fun m!2129191 () Bool)

(assert (=> d!528097 m!2129191))

(declare-fun m!2129193 () Bool)

(assert (=> b!1723044 m!2129193))

(assert (=> b!1722315 d!528097))

(declare-fun b!1723045 () Bool)

(declare-fun res!773179 () Bool)

(declare-fun e!1102100 () Bool)

(assert (=> b!1723045 (=> (not res!773179) (not e!1102100))))

(assert (=> b!1723045 (= res!773179 (isEmpty!11857 (tail!2573 lt!659022)))))

(declare-fun d!528099 () Bool)

(declare-fun e!1102098 () Bool)

(assert (=> d!528099 e!1102098))

(declare-fun c!281885 () Bool)

(assert (=> d!528099 (= c!281885 ((_ is EmptyExpr!4669) (regex!3341 rule!422)))))

(declare-fun lt!659322 () Bool)

(declare-fun e!1102099 () Bool)

(assert (=> d!528099 (= lt!659322 e!1102099)))

(declare-fun c!281884 () Bool)

(assert (=> d!528099 (= c!281884 (isEmpty!11857 lt!659022))))

(assert (=> d!528099 (validRegex!1882 (regex!3341 rule!422))))

(assert (=> d!528099 (= (matchR!2143 (regex!3341 rule!422) lt!659022) lt!659322)))

(declare-fun b!1723046 () Bool)

(declare-fun e!1102095 () Bool)

(assert (=> b!1723046 (= e!1102098 e!1102095)))

(declare-fun c!281883 () Bool)

(assert (=> b!1723046 (= c!281883 ((_ is EmptyLang!4669) (regex!3341 rule!422)))))

(declare-fun bm!109766 () Bool)

(declare-fun call!109771 () Bool)

(assert (=> bm!109766 (= call!109771 (isEmpty!11857 lt!659022))))

(declare-fun b!1723047 () Bool)

(declare-fun res!773175 () Bool)

(declare-fun e!1102101 () Bool)

(assert (=> b!1723047 (=> res!773175 e!1102101)))

(assert (=> b!1723047 (= res!773175 (not (isEmpty!11857 (tail!2573 lt!659022))))))

(declare-fun b!1723048 () Bool)

(declare-fun res!773176 () Bool)

(declare-fun e!1102097 () Bool)

(assert (=> b!1723048 (=> res!773176 e!1102097)))

(assert (=> b!1723048 (= res!773176 (not ((_ is ElementMatch!4669) (regex!3341 rule!422))))))

(assert (=> b!1723048 (= e!1102095 e!1102097)))

(declare-fun b!1723049 () Bool)

(declare-fun e!1102096 () Bool)

(assert (=> b!1723049 (= e!1102096 e!1102101)))

(declare-fun res!773177 () Bool)

(assert (=> b!1723049 (=> res!773177 e!1102101)))

(assert (=> b!1723049 (= res!773177 call!109771)))

(declare-fun b!1723050 () Bool)

(assert (=> b!1723050 (= e!1102095 (not lt!659322))))

(declare-fun b!1723051 () Bool)

(assert (=> b!1723051 (= e!1102100 (= (head!3896 lt!659022) (c!281752 (regex!3341 rule!422))))))

(declare-fun b!1723052 () Bool)

(assert (=> b!1723052 (= e!1102101 (not (= (head!3896 lt!659022) (c!281752 (regex!3341 rule!422)))))))

(declare-fun b!1723053 () Bool)

(assert (=> b!1723053 (= e!1102099 (matchR!2143 (derivativeStep!1176 (regex!3341 rule!422) (head!3896 lt!659022)) (tail!2573 lt!659022)))))

(declare-fun b!1723054 () Bool)

(declare-fun res!773178 () Bool)

(assert (=> b!1723054 (=> (not res!773178) (not e!1102100))))

(assert (=> b!1723054 (= res!773178 (not call!109771))))

(declare-fun b!1723055 () Bool)

(assert (=> b!1723055 (= e!1102097 e!1102096)))

(declare-fun res!773181 () Bool)

(assert (=> b!1723055 (=> (not res!773181) (not e!1102096))))

(assert (=> b!1723055 (= res!773181 (not lt!659322))))

(declare-fun b!1723056 () Bool)

(assert (=> b!1723056 (= e!1102099 (nullable!1408 (regex!3341 rule!422)))))

(declare-fun b!1723057 () Bool)

(assert (=> b!1723057 (= e!1102098 (= lt!659322 call!109771))))

(declare-fun b!1723058 () Bool)

(declare-fun res!773182 () Bool)

(assert (=> b!1723058 (=> res!773182 e!1102097)))

(assert (=> b!1723058 (= res!773182 e!1102100)))

(declare-fun res!773180 () Bool)

(assert (=> b!1723058 (=> (not res!773180) (not e!1102100))))

(assert (=> b!1723058 (= res!773180 lt!659322)))

(assert (= (and d!528099 c!281884) b!1723056))

(assert (= (and d!528099 (not c!281884)) b!1723053))

(assert (= (and d!528099 c!281885) b!1723057))

(assert (= (and d!528099 (not c!281885)) b!1723046))

(assert (= (and b!1723046 c!281883) b!1723050))

(assert (= (and b!1723046 (not c!281883)) b!1723048))

(assert (= (and b!1723048 (not res!773176)) b!1723058))

(assert (= (and b!1723058 res!773180) b!1723054))

(assert (= (and b!1723054 res!773178) b!1723045))

(assert (= (and b!1723045 res!773179) b!1723051))

(assert (= (and b!1723058 (not res!773182)) b!1723055))

(assert (= (and b!1723055 res!773181) b!1723049))

(assert (= (and b!1723049 (not res!773177)) b!1723047))

(assert (= (and b!1723047 (not res!773175)) b!1723052))

(assert (= (or b!1723057 b!1723049 b!1723054) bm!109766))

(assert (=> b!1723053 m!2128783))

(assert (=> b!1723053 m!2128783))

(declare-fun m!2129195 () Bool)

(assert (=> b!1723053 m!2129195))

(assert (=> b!1723053 m!2128779))

(assert (=> b!1723053 m!2129195))

(assert (=> b!1723053 m!2128779))

(declare-fun m!2129197 () Bool)

(assert (=> b!1723053 m!2129197))

(assert (=> b!1723045 m!2128779))

(assert (=> b!1723045 m!2128779))

(assert (=> b!1723045 m!2129139))

(assert (=> b!1723051 m!2128783))

(assert (=> d!528099 m!2129141))

(declare-fun m!2129199 () Bool)

(assert (=> d!528099 m!2129199))

(assert (=> bm!109766 m!2129141))

(declare-fun m!2129201 () Bool)

(assert (=> b!1723056 m!2129201))

(assert (=> b!1723052 m!2128783))

(assert (=> b!1723047 m!2128779))

(assert (=> b!1723047 m!2128779))

(assert (=> b!1723047 m!2129139))

(assert (=> b!1722316 d!528099))

(declare-fun d!528101 () Bool)

(declare-fun res!773187 () Bool)

(declare-fun e!1102104 () Bool)

(assert (=> d!528101 (=> (not res!773187) (not e!1102104))))

(assert (=> d!528101 (= res!773187 (validRegex!1882 (regex!3341 rule!422)))))

(assert (=> d!528101 (= (ruleValid!840 thiss!24550 rule!422) e!1102104)))

(declare-fun b!1723063 () Bool)

(declare-fun res!773188 () Bool)

(assert (=> b!1723063 (=> (not res!773188) (not e!1102104))))

(assert (=> b!1723063 (= res!773188 (not (nullable!1408 (regex!3341 rule!422))))))

(declare-fun b!1723064 () Bool)

(assert (=> b!1723064 (= e!1102104 (not (= (tag!3653 rule!422) (String!21488 ""))))))

(assert (= (and d!528101 res!773187) b!1723063))

(assert (= (and b!1723063 res!773188) b!1723064))

(assert (=> d!528101 m!2129199))

(assert (=> b!1723063 m!2129201))

(assert (=> b!1722316 d!528101))

(declare-fun d!528103 () Bool)

(assert (=> d!528103 (ruleValid!840 thiss!24550 rule!422)))

(declare-fun lt!659325 () Unit!32697)

(declare-fun choose!10488 (LexerInterface!2970 Rule!6482 List!18926) Unit!32697)

(assert (=> d!528103 (= lt!659325 (choose!10488 thiss!24550 rule!422 rules!3447))))

(assert (=> d!528103 (contains!3363 rules!3447 rule!422)))

(assert (=> d!528103 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!364 thiss!24550 rule!422 rules!3447) lt!659325)))

(declare-fun bs!402295 () Bool)

(assert (= bs!402295 d!528103))

(assert (=> bs!402295 m!2128311))

(declare-fun m!2129203 () Bool)

(assert (=> bs!402295 m!2129203))

(assert (=> bs!402295 m!2128373))

(assert (=> b!1722316 d!528103))

(declare-fun d!528105 () Bool)

(declare-fun choose!10489 (Int) Bool)

(assert (=> d!528105 (= (Forall!716 lambda!69152) (choose!10489 lambda!69152))))

(declare-fun bs!402296 () Bool)

(assert (= bs!402296 d!528105))

(declare-fun m!2129205 () Bool)

(assert (=> bs!402296 m!2129205))

(assert (=> b!1722309 d!528105))

(declare-fun d!528107 () Bool)

(declare-fun e!1102107 () Bool)

(assert (=> d!528107 e!1102107))

(declare-fun res!773191 () Bool)

(assert (=> d!528107 (=> (not res!773191) (not e!1102107))))

(assert (=> d!528107 (= res!773191 (semiInverseModEq!1321 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))))))

(declare-fun Unit!32706 () Unit!32697)

(assert (=> d!528107 (= (lemmaInv!548 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) Unit!32706)))

(declare-fun b!1723067 () Bool)

(assert (=> b!1723067 (= e!1102107 (equivClasses!1262 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))))))

(assert (= (and d!528107 res!773191) b!1723067))

(declare-fun m!2129207 () Bool)

(assert (=> d!528107 m!2129207))

(declare-fun m!2129209 () Bool)

(assert (=> b!1723067 m!2129209))

(assert (=> b!1722309 d!528107))

(declare-fun d!528109 () Bool)

(assert (=> d!528109 (= (isDefined!3049 lt!659002) (not (isEmpty!11859 lt!659002)))))

(declare-fun bs!402297 () Bool)

(assert (= bs!402297 d!528109))

(declare-fun m!2129211 () Bool)

(assert (=> bs!402297 m!2129211))

(assert (=> b!1722308 d!528109))

(declare-fun d!528111 () Bool)

(declare-fun e!1102110 () Bool)

(assert (=> d!528111 e!1102110))

(declare-fun res!773198 () Bool)

(assert (=> d!528111 (=> res!773198 e!1102110)))

(declare-fun lt!659329 () Option!3706)

(assert (=> d!528111 (= res!773198 (isEmpty!11859 lt!659329))))

(declare-fun e!1102109 () Option!3706)

(assert (=> d!528111 (= lt!659329 e!1102109)))

(declare-fun c!281886 () Bool)

(assert (=> d!528111 (= c!281886 (and ((_ is Cons!18856) rules!3447) ((_ is Nil!18856) (t!159661 rules!3447))))))

(declare-fun lt!659326 () Unit!32697)

(declare-fun lt!659330 () Unit!32697)

(assert (=> d!528111 (= lt!659326 lt!659330)))

(assert (=> d!528111 (isPrefix!1582 lt!659022 lt!659022)))

(assert (=> d!528111 (= lt!659330 (lemmaIsPrefixRefl!1071 lt!659022 lt!659022))))

(assert (=> d!528111 (rulesValidInductive!1108 thiss!24550 rules!3447)))

(assert (=> d!528111 (= (maxPrefix!1524 thiss!24550 rules!3447 lt!659022) lt!659329)))

(declare-fun b!1723068 () Bool)

(declare-fun res!773196 () Bool)

(declare-fun e!1102108 () Bool)

(assert (=> b!1723068 (=> (not res!773196) (not e!1102108))))

(assert (=> b!1723068 (= res!773196 (matchR!2143 (regex!3341 (rule!5291 (_1!10675 (get!5594 lt!659329)))) (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659329))))))))

(declare-fun b!1723069 () Bool)

(assert (=> b!1723069 (= e!1102108 (contains!3363 rules!3447 (rule!5291 (_1!10675 (get!5594 lt!659329)))))))

(declare-fun b!1723070 () Bool)

(assert (=> b!1723070 (= e!1102110 e!1102108)))

(declare-fun res!773195 () Bool)

(assert (=> b!1723070 (=> (not res!773195) (not e!1102108))))

(assert (=> b!1723070 (= res!773195 (isDefined!3049 lt!659329))))

(declare-fun b!1723071 () Bool)

(declare-fun lt!659328 () Option!3706)

(declare-fun lt!659327 () Option!3706)

(assert (=> b!1723071 (= e!1102109 (ite (and ((_ is None!3705) lt!659328) ((_ is None!3705) lt!659327)) None!3705 (ite ((_ is None!3705) lt!659327) lt!659328 (ite ((_ is None!3705) lt!659328) lt!659327 (ite (>= (size!14982 (_1!10675 (v!25110 lt!659328))) (size!14982 (_1!10675 (v!25110 lt!659327)))) lt!659328 lt!659327)))))))

(declare-fun call!109772 () Option!3706)

(assert (=> b!1723071 (= lt!659328 call!109772)))

(assert (=> b!1723071 (= lt!659327 (maxPrefix!1524 thiss!24550 (t!159661 rules!3447) lt!659022))))

(declare-fun bm!109767 () Bool)

(assert (=> bm!109767 (= call!109772 (maxPrefixOneRule!900 thiss!24550 (h!24257 rules!3447) lt!659022))))

(declare-fun b!1723072 () Bool)

(declare-fun res!773197 () Bool)

(assert (=> b!1723072 (=> (not res!773197) (not e!1102108))))

(assert (=> b!1723072 (= res!773197 (= (++!5166 (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659329)))) (_2!10675 (get!5594 lt!659329))) lt!659022))))

(declare-fun b!1723073 () Bool)

(assert (=> b!1723073 (= e!1102109 call!109772)))

(declare-fun b!1723074 () Bool)

(declare-fun res!773194 () Bool)

(assert (=> b!1723074 (=> (not res!773194) (not e!1102108))))

(assert (=> b!1723074 (= res!773194 (= (list!7618 (charsOf!1990 (_1!10675 (get!5594 lt!659329)))) (originalCharacters!4155 (_1!10675 (get!5594 lt!659329)))))))

(declare-fun b!1723075 () Bool)

(declare-fun res!773193 () Bool)

(assert (=> b!1723075 (=> (not res!773193) (not e!1102108))))

(assert (=> b!1723075 (= res!773193 (= (value!104891 (_1!10675 (get!5594 lt!659329))) (apply!5146 (transformation!3341 (rule!5291 (_1!10675 (get!5594 lt!659329)))) (seqFromList!2315 (originalCharacters!4155 (_1!10675 (get!5594 lt!659329)))))))))

(declare-fun b!1723076 () Bool)

(declare-fun res!773192 () Bool)

(assert (=> b!1723076 (=> (not res!773192) (not e!1102108))))

(assert (=> b!1723076 (= res!773192 (< (size!14983 (_2!10675 (get!5594 lt!659329))) (size!14983 lt!659022)))))

(assert (= (and d!528111 c!281886) b!1723073))

(assert (= (and d!528111 (not c!281886)) b!1723071))

(assert (= (or b!1723073 b!1723071) bm!109767))

(assert (= (and d!528111 (not res!773198)) b!1723070))

(assert (= (and b!1723070 res!773195) b!1723074))

(assert (= (and b!1723074 res!773194) b!1723076))

(assert (= (and b!1723076 res!773192) b!1723072))

(assert (= (and b!1723072 res!773197) b!1723075))

(assert (= (and b!1723075 res!773193) b!1723068))

(assert (= (and b!1723068 res!773196) b!1723069))

(declare-fun m!2129213 () Bool)

(assert (=> b!1723074 m!2129213))

(declare-fun m!2129215 () Bool)

(assert (=> b!1723074 m!2129215))

(assert (=> b!1723074 m!2129215))

(declare-fun m!2129217 () Bool)

(assert (=> b!1723074 m!2129217))

(assert (=> b!1723069 m!2129213))

(declare-fun m!2129219 () Bool)

(assert (=> b!1723069 m!2129219))

(declare-fun m!2129221 () Bool)

(assert (=> bm!109767 m!2129221))

(declare-fun m!2129223 () Bool)

(assert (=> b!1723071 m!2129223))

(assert (=> b!1723075 m!2129213))

(declare-fun m!2129225 () Bool)

(assert (=> b!1723075 m!2129225))

(assert (=> b!1723075 m!2129225))

(declare-fun m!2129227 () Bool)

(assert (=> b!1723075 m!2129227))

(assert (=> b!1723068 m!2129213))

(assert (=> b!1723068 m!2129215))

(assert (=> b!1723068 m!2129215))

(assert (=> b!1723068 m!2129217))

(assert (=> b!1723068 m!2129217))

(declare-fun m!2129229 () Bool)

(assert (=> b!1723068 m!2129229))

(declare-fun m!2129231 () Bool)

(assert (=> b!1723070 m!2129231))

(assert (=> b!1723072 m!2129213))

(assert (=> b!1723072 m!2129215))

(assert (=> b!1723072 m!2129215))

(assert (=> b!1723072 m!2129217))

(assert (=> b!1723072 m!2129217))

(declare-fun m!2129233 () Bool)

(assert (=> b!1723072 m!2129233))

(declare-fun m!2129235 () Bool)

(assert (=> d!528111 m!2129235))

(declare-fun m!2129237 () Bool)

(assert (=> d!528111 m!2129237))

(declare-fun m!2129239 () Bool)

(assert (=> d!528111 m!2129239))

(assert (=> d!528111 m!2129085))

(assert (=> b!1723076 m!2129213))

(declare-fun m!2129241 () Bool)

(assert (=> b!1723076 m!2129241))

(assert (=> b!1723076 m!2128503))

(assert (=> b!1722308 d!528111))

(declare-fun d!528113 () Bool)

(assert (=> d!528113 (= (list!7618 (charsOf!1990 token!523)) (list!7622 (c!281753 (charsOf!1990 token!523))))))

(declare-fun bs!402298 () Bool)

(assert (= bs!402298 d!528113))

(declare-fun m!2129243 () Bool)

(assert (=> bs!402298 m!2129243))

(assert (=> b!1722308 d!528113))

(declare-fun d!528115 () Bool)

(declare-fun lt!659331 () BalanceConc!12486)

(assert (=> d!528115 (= (list!7618 lt!659331) (originalCharacters!4155 token!523))))

(assert (=> d!528115 (= lt!659331 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 token!523))) (value!104891 token!523)))))

(assert (=> d!528115 (= (charsOf!1990 token!523) lt!659331)))

(declare-fun b_lambda!54705 () Bool)

(assert (=> (not b_lambda!54705) (not d!528115)))

(assert (=> d!528115 t!159705))

(declare-fun b_and!126059 () Bool)

(assert (= b_and!126053 (and (=> t!159705 result!122860) b_and!126059)))

(assert (=> d!528115 t!159707))

(declare-fun b_and!126061 () Bool)

(assert (= b_and!126055 (and (=> t!159707 result!122862) b_and!126061)))

(assert (=> d!528115 t!159709))

(declare-fun b_and!126063 () Bool)

(assert (= b_and!126057 (and (=> t!159709 result!122864) b_and!126063)))

(declare-fun m!2129245 () Bool)

(assert (=> d!528115 m!2129245))

(assert (=> d!528115 m!2129159))

(assert (=> b!1722308 d!528115))

(declare-fun d!528117 () Bool)

(assert (=> d!528117 (= (list!7618 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))) (list!7622 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))))

(declare-fun bs!402299 () Bool)

(assert (= bs!402299 d!528117))

(declare-fun m!2129247 () Bool)

(assert (=> bs!402299 m!2129247))

(assert (=> b!1722329 d!528117))

(declare-fun bs!402300 () Bool)

(declare-fun d!528119 () Bool)

(assert (= bs!402300 (and d!528119 b!1722309)))

(declare-fun lambda!69170 () Int)

(assert (=> bs!402300 (= lambda!69170 lambda!69152)))

(declare-fun b!1723081 () Bool)

(declare-fun e!1102113 () Bool)

(assert (=> b!1723081 (= e!1102113 true)))

(assert (=> d!528119 e!1102113))

(assert (= d!528119 b!1723081))

(assert (=> b!1723081 (< (dynLambda!8694 order!11503 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8695 order!11505 lambda!69170))))

(assert (=> b!1723081 (< (dynLambda!8696 order!11507 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) (dynLambda!8695 order!11505 lambda!69170))))

(assert (=> d!528119 (= (list!7618 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))) (list!7618 lt!659021))))

(declare-fun lt!659334 () Unit!32697)

(declare-fun ForallOf!264 (Int BalanceConc!12486) Unit!32697)

(assert (=> d!528119 (= lt!659334 (ForallOf!264 lambda!69170 lt!659021))))

(assert (=> d!528119 (= (lemmaSemiInverse!487 (transformation!3341 (rule!5291 (_1!10675 lt!659004))) lt!659021) lt!659334)))

(declare-fun b_lambda!54707 () Bool)

(assert (=> (not b_lambda!54707) (not d!528119)))

(assert (=> d!528119 t!159648))

(declare-fun b_and!126065 () Bool)

(assert (= b_and!126059 (and (=> t!159648 result!122796) b_and!126065)))

(assert (=> d!528119 t!159650))

(declare-fun b_and!126067 () Bool)

(assert (= b_and!126061 (and (=> t!159650 result!122798) b_and!126067)))

(assert (=> d!528119 t!159652))

(declare-fun b_and!126069 () Bool)

(assert (= b_and!126063 (and (=> t!159652 result!122800) b_and!126069)))

(declare-fun b_lambda!54709 () Bool)

(assert (=> (not b_lambda!54709) (not d!528119)))

(assert (=> d!528119 t!159654))

(declare-fun b_and!126071 () Bool)

(assert (= b_and!126007 (and (=> t!159654 result!122802) b_and!126071)))

(assert (=> d!528119 t!159656))

(declare-fun b_and!126073 () Bool)

(assert (= b_and!126009 (and (=> t!159656 result!122806) b_and!126073)))

(assert (=> d!528119 t!159658))

(declare-fun b_and!126075 () Bool)

(assert (= b_and!126011 (and (=> t!159658 result!122808) b_and!126075)))

(assert (=> d!528119 m!2128329))

(assert (=> d!528119 m!2128331))

(assert (=> d!528119 m!2128329))

(assert (=> d!528119 m!2128331))

(assert (=> d!528119 m!2128333))

(declare-fun m!2129249 () Bool)

(assert (=> d!528119 m!2129249))

(assert (=> d!528119 m!2128283))

(assert (=> b!1722329 d!528119))

(declare-fun d!528121 () Bool)

(assert (=> d!528121 (= (inv!24359 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))) (isBalanced!1962 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))))))

(declare-fun bs!402301 () Bool)

(assert (= bs!402301 d!528121))

(declare-fun m!2129251 () Bool)

(assert (=> bs!402301 m!2129251))

(assert (=> tb!102159 d!528121))

(declare-fun d!528123 () Bool)

(declare-fun res!773201 () Bool)

(declare-fun e!1102116 () Bool)

(assert (=> d!528123 (=> (not res!773201) (not e!1102116))))

(declare-fun rulesValid!1248 (LexerInterface!2970 List!18926) Bool)

(assert (=> d!528123 (= res!773201 (rulesValid!1248 thiss!24550 rules!3447))))

(assert (=> d!528123 (= (rulesInvariant!2639 thiss!24550 rules!3447) e!1102116)))

(declare-fun b!1723084 () Bool)

(declare-datatypes ((List!18932 0))(
  ( (Nil!18862) (Cons!18862 (h!24263 String!21487) (t!159727 List!18932)) )
))
(declare-fun noDuplicateTag!1248 (LexerInterface!2970 List!18926 List!18932) Bool)

(assert (=> b!1723084 (= e!1102116 (noDuplicateTag!1248 thiss!24550 rules!3447 Nil!18862))))

(assert (= (and d!528123 res!773201) b!1723084))

(declare-fun m!2129253 () Bool)

(assert (=> d!528123 m!2129253))

(declare-fun m!2129255 () Bool)

(assert (=> b!1723084 m!2129255))

(assert (=> b!1722311 d!528123))

(declare-fun d!528125 () Bool)

(assert (=> d!528125 (= (inv!24351 (tag!3653 rule!422)) (= (mod (str.len (value!104890 (tag!3653 rule!422))) 2) 0))))

(assert (=> b!1722310 d!528125))

(declare-fun d!528127 () Bool)

(declare-fun res!773202 () Bool)

(declare-fun e!1102117 () Bool)

(assert (=> d!528127 (=> (not res!773202) (not e!1102117))))

(assert (=> d!528127 (= res!773202 (semiInverseModEq!1321 (toChars!4707 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 rule!422))))))

(assert (=> d!528127 (= (inv!24356 (transformation!3341 rule!422)) e!1102117)))

(declare-fun b!1723085 () Bool)

(assert (=> b!1723085 (= e!1102117 (equivClasses!1262 (toChars!4707 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 rule!422))))))

(assert (= (and d!528127 res!773202) b!1723085))

(declare-fun m!2129257 () Bool)

(assert (=> d!528127 m!2129257))

(declare-fun m!2129259 () Bool)

(assert (=> b!1723085 m!2129259))

(assert (=> b!1722310 d!528127))

(declare-fun b!1723097 () Bool)

(declare-fun e!1102120 () Bool)

(declare-fun tp!491795 () Bool)

(declare-fun tp!491796 () Bool)

(assert (=> b!1723097 (= e!1102120 (and tp!491795 tp!491796))))

(declare-fun b!1723098 () Bool)

(declare-fun tp!491798 () Bool)

(assert (=> b!1723098 (= e!1102120 tp!491798)))

(declare-fun b!1723096 () Bool)

(assert (=> b!1723096 (= e!1102120 tp_is_empty!7581)))

(assert (=> b!1722304 (= tp!491721 e!1102120)))

(declare-fun b!1723099 () Bool)

(declare-fun tp!491794 () Bool)

(declare-fun tp!491797 () Bool)

(assert (=> b!1723099 (= e!1102120 (and tp!491794 tp!491797))))

(assert (= (and b!1722304 ((_ is ElementMatch!4669) (regex!3341 (rule!5291 token!523)))) b!1723096))

(assert (= (and b!1722304 ((_ is Concat!8101) (regex!3341 (rule!5291 token!523)))) b!1723097))

(assert (= (and b!1722304 ((_ is Star!4669) (regex!3341 (rule!5291 token!523)))) b!1723098))

(assert (= (and b!1722304 ((_ is Union!4669) (regex!3341 (rule!5291 token!523)))) b!1723099))

(declare-fun e!1102126 () Bool)

(declare-fun tp!491805 () Bool)

(declare-fun b!1723108 () Bool)

(declare-fun tp!491807 () Bool)

(assert (=> b!1723108 (= e!1102126 (and (inv!24358 (left!15047 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))) tp!491807 (inv!24358 (right!15377 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))) tp!491805))))

(declare-fun b!1723110 () Bool)

(declare-fun e!1102125 () Bool)

(declare-fun tp!491806 () Bool)

(assert (=> b!1723110 (= e!1102125 tp!491806)))

(declare-fun b!1723109 () Bool)

(declare-fun inv!24365 (IArray!12547) Bool)

(assert (=> b!1723109 (= e!1102126 (and (inv!24365 (xs!9147 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))) e!1102125))))

(assert (=> b!1722346 (= tp!491728 (and (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021)))) e!1102126))))

(assert (= (and b!1722346 ((_ is Node!6271) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))) b!1723108))

(assert (= b!1723109 b!1723110))

(assert (= (and b!1722346 ((_ is Leaf!9162) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (dynLambda!8698 (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) lt!659021))))) b!1723109))

(declare-fun m!2129261 () Bool)

(assert (=> b!1723108 m!2129261))

(declare-fun m!2129263 () Bool)

(assert (=> b!1723108 m!2129263))

(declare-fun m!2129265 () Bool)

(assert (=> b!1723109 m!2129265))

(assert (=> b!1722346 m!2128239))

(declare-fun b!1723115 () Bool)

(declare-fun e!1102129 () Bool)

(declare-fun tp!491810 () Bool)

(assert (=> b!1723115 (= e!1102129 (and tp_is_empty!7581 tp!491810))))

(assert (=> b!1722323 (= tp!491715 e!1102129)))

(assert (= (and b!1722323 ((_ is Cons!18855) (t!159660 suffix!1421))) b!1723115))

(declare-fun b!1723126 () Bool)

(declare-fun b_free!46979 () Bool)

(declare-fun b_next!47683 () Bool)

(assert (=> b!1723126 (= b_free!46979 (not b_next!47683))))

(declare-fun tb!102219 () Bool)

(declare-fun t!159711 () Bool)

(assert (=> (and b!1723126 (= (toValue!4848 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159711) tb!102219))

(declare-fun result!122874 () Bool)

(assert (= result!122874 result!122802))

(assert (=> d!528119 t!159711))

(declare-fun t!159713 () Bool)

(declare-fun tb!102221 () Bool)

(assert (=> (and b!1723126 (= (toValue!4848 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159713) tb!102221))

(declare-fun result!122876 () Bool)

(assert (= result!122876 result!122822))

(assert (=> d!527959 t!159713))

(assert (=> d!527959 t!159711))

(assert (=> b!1722329 t!159711))

(assert (=> d!527963 t!159711))

(declare-fun t!159715 () Bool)

(declare-fun tb!102223 () Bool)

(assert (=> (and b!1723126 (= (toValue!4848 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159715) tb!102223))

(declare-fun result!122878 () Bool)

(assert (= result!122878 result!122816))

(assert (=> d!527947 t!159715))

(declare-fun b_and!126077 () Bool)

(declare-fun tp!491822 () Bool)

(assert (=> b!1723126 (= tp!491822 (and (=> t!159713 result!122876) (=> t!159711 result!122874) (=> t!159715 result!122878) b_and!126077))))

(declare-fun b_free!46981 () Bool)

(declare-fun b_next!47685 () Bool)

(assert (=> b!1723126 (= b_free!46981 (not b_next!47685))))

(declare-fun tb!102225 () Bool)

(declare-fun t!159717 () Bool)

(assert (=> (and b!1723126 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159717) tb!102225))

(declare-fun result!122880 () Bool)

(assert (= result!122880 result!122796))

(assert (=> d!528119 t!159717))

(declare-fun tb!102227 () Bool)

(declare-fun t!159719 () Bool)

(assert (=> (and b!1723126 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004))))) t!159719) tb!102227))

(declare-fun result!122882 () Bool)

(assert (= result!122882 result!122788))

(assert (=> b!1722319 t!159719))

(assert (=> b!1722329 t!159717))

(declare-fun tb!102229 () Bool)

(declare-fun t!159721 () Bool)

(assert (=> (and b!1723126 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 token!523)))) t!159721) tb!102229))

(declare-fun result!122884 () Bool)

(assert (= result!122884 result!122860))

(assert (=> d!528115 t!159721))

(assert (=> b!1723015 t!159721))

(assert (=> d!527973 t!159719))

(declare-fun b_and!126079 () Bool)

(declare-fun tp!491819 () Bool)

(assert (=> b!1723126 (= tp!491819 (and (=> t!159719 result!122882) (=> t!159721 result!122884) (=> t!159717 result!122880) b_and!126079))))

(declare-fun e!1102140 () Bool)

(assert (=> b!1723126 (= e!1102140 (and tp!491822 tp!491819))))

(declare-fun tp!491820 () Bool)

(declare-fun e!1102138 () Bool)

(declare-fun b!1723125 () Bool)

(assert (=> b!1723125 (= e!1102138 (and tp!491820 (inv!24351 (tag!3653 (h!24257 (t!159661 rules!3447)))) (inv!24356 (transformation!3341 (h!24257 (t!159661 rules!3447)))) e!1102140))))

(declare-fun b!1723124 () Bool)

(declare-fun e!1102141 () Bool)

(declare-fun tp!491821 () Bool)

(assert (=> b!1723124 (= e!1102141 (and e!1102138 tp!491821))))

(assert (=> b!1722312 (= tp!491719 e!1102141)))

(assert (= b!1723125 b!1723126))

(assert (= b!1723124 b!1723125))

(assert (= (and b!1722312 ((_ is Cons!18856) (t!159661 rules!3447))) b!1723124))

(declare-fun m!2129267 () Bool)

(assert (=> b!1723125 m!2129267))

(declare-fun m!2129269 () Bool)

(assert (=> b!1723125 m!2129269))

(declare-fun b!1723127 () Bool)

(declare-fun tp!491823 () Bool)

(declare-fun e!1102143 () Bool)

(declare-fun tp!491825 () Bool)

(assert (=> b!1723127 (= e!1102143 (and (inv!24358 (left!15047 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))) tp!491825 (inv!24358 (right!15377 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))) tp!491823))))

(declare-fun b!1723129 () Bool)

(declare-fun e!1102142 () Bool)

(declare-fun tp!491824 () Bool)

(assert (=> b!1723129 (= e!1102142 tp!491824)))

(declare-fun b!1723128 () Bool)

(assert (=> b!1723128 (= e!1102143 (and (inv!24365 (xs!9147 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))) e!1102142))))

(assert (=> b!1722345 (= tp!491727 (and (inv!24358 (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004))))) e!1102143))))

(assert (= (and b!1722345 ((_ is Node!6271) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))) b!1723127))

(assert (= b!1723128 b!1723129))

(assert (= (and b!1722345 ((_ is Leaf!9162) (c!281753 (dynLambda!8697 (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))) (value!104891 (_1!10675 lt!659004)))))) b!1723128))

(declare-fun m!2129271 () Bool)

(assert (=> b!1723127 m!2129271))

(declare-fun m!2129273 () Bool)

(assert (=> b!1723127 m!2129273))

(declare-fun m!2129275 () Bool)

(assert (=> b!1723128 m!2129275))

(assert (=> b!1722345 m!2128235))

(declare-fun b!1723131 () Bool)

(declare-fun e!1102144 () Bool)

(declare-fun tp!491827 () Bool)

(declare-fun tp!491828 () Bool)

(assert (=> b!1723131 (= e!1102144 (and tp!491827 tp!491828))))

(declare-fun b!1723132 () Bool)

(declare-fun tp!491830 () Bool)

(assert (=> b!1723132 (= e!1102144 tp!491830)))

(declare-fun b!1723130 () Bool)

(assert (=> b!1723130 (= e!1102144 tp_is_empty!7581)))

(assert (=> b!1722310 (= tp!491723 e!1102144)))

(declare-fun b!1723133 () Bool)

(declare-fun tp!491826 () Bool)

(declare-fun tp!491829 () Bool)

(assert (=> b!1723133 (= e!1102144 (and tp!491826 tp!491829))))

(assert (= (and b!1722310 ((_ is ElementMatch!4669) (regex!3341 rule!422))) b!1723130))

(assert (= (and b!1722310 ((_ is Concat!8101) (regex!3341 rule!422))) b!1723131))

(assert (= (and b!1722310 ((_ is Star!4669) (regex!3341 rule!422))) b!1723132))

(assert (= (and b!1722310 ((_ is Union!4669) (regex!3341 rule!422))) b!1723133))

(declare-fun b!1723134 () Bool)

(declare-fun e!1102145 () Bool)

(declare-fun tp!491831 () Bool)

(assert (=> b!1723134 (= e!1102145 (and tp_is_empty!7581 tp!491831))))

(assert (=> b!1722326 (= tp!491722 e!1102145)))

(assert (= (and b!1722326 ((_ is Cons!18855) (originalCharacters!4155 token!523))) b!1723134))

(declare-fun b!1723136 () Bool)

(declare-fun e!1102146 () Bool)

(declare-fun tp!491833 () Bool)

(declare-fun tp!491834 () Bool)

(assert (=> b!1723136 (= e!1102146 (and tp!491833 tp!491834))))

(declare-fun b!1723137 () Bool)

(declare-fun tp!491836 () Bool)

(assert (=> b!1723137 (= e!1102146 tp!491836)))

(declare-fun b!1723135 () Bool)

(assert (=> b!1723135 (= e!1102146 tp_is_empty!7581)))

(assert (=> b!1722315 (= tp!491720 e!1102146)))

(declare-fun b!1723138 () Bool)

(declare-fun tp!491832 () Bool)

(declare-fun tp!491835 () Bool)

(assert (=> b!1723138 (= e!1102146 (and tp!491832 tp!491835))))

(assert (= (and b!1722315 ((_ is ElementMatch!4669) (regex!3341 (h!24257 rules!3447)))) b!1723135))

(assert (= (and b!1722315 ((_ is Concat!8101) (regex!3341 (h!24257 rules!3447)))) b!1723136))

(assert (= (and b!1722315 ((_ is Star!4669) (regex!3341 (h!24257 rules!3447)))) b!1723137))

(assert (= (and b!1722315 ((_ is Union!4669) (regex!3341 (h!24257 rules!3447)))) b!1723138))

(declare-fun b_lambda!54711 () Bool)

(assert (= b_lambda!54659 (or (and b!1722324 b_free!46965 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722313 b_free!46969 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722314 b_free!46973 (= (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1723126 b_free!46981 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) b_lambda!54711)))

(declare-fun b_lambda!54713 () Bool)

(assert (= b_lambda!54661 (or (and b!1722324 b_free!46965 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722313 b_free!46969 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722314 b_free!46973 (= (toChars!4707 (transformation!3341 (rule!5291 token!523))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1723126 b_free!46981 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) b_lambda!54713)))

(declare-fun b_lambda!54715 () Bool)

(assert (= b_lambda!54705 (or (and b!1722324 b_free!46965 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) (and b!1722313 b_free!46969 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) (and b!1722314 b_free!46973) (and b!1723126 b_free!46981 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) b_lambda!54715)))

(declare-fun b_lambda!54717 () Bool)

(assert (= b_lambda!54703 (or (and b!1722324 b_free!46965 (= (toChars!4707 (transformation!3341 (h!24257 rules!3447))) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) (and b!1722313 b_free!46969 (= (toChars!4707 (transformation!3341 rule!422)) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) (and b!1722314 b_free!46973) (and b!1723126 b_free!46981 (= (toChars!4707 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toChars!4707 (transformation!3341 (rule!5291 token!523))))) b_lambda!54717)))

(declare-fun b_lambda!54719 () Bool)

(assert (= b_lambda!54663 (or (and b!1722324 b_free!46963 (= (toValue!4848 (transformation!3341 (h!24257 rules!3447))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722313 b_free!46967 (= (toValue!4848 (transformation!3341 rule!422)) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1722314 b_free!46971 (= (toValue!4848 (transformation!3341 (rule!5291 token!523))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) (and b!1723126 b_free!46979 (= (toValue!4848 (transformation!3341 (h!24257 (t!159661 rules!3447)))) (toValue!4848 (transformation!3341 (rule!5291 (_1!10675 lt!659004)))))) b_lambda!54719)))

(check-sat (not d!527965) (not b!1723131) (not d!528103) (not b!1723026) (not b!1723033) (not b_next!47671) (not d!527961) (not b!1723071) (not d!527969) (not b!1722633) (not b!1723124) (not b!1723134) (not bm!109762) (not b!1722874) (not b_next!47675) (not d!528105) (not b!1722634) (not b!1722652) b_and!126069 (not d!527957) (not b!1722710) (not b!1723017) (not d!528117) (not b_lambda!54673) (not b!1723070) (not b!1722707) (not d!527863) (not b_lambda!54677) (not b!1722877) (not b!1723138) (not b!1723099) (not b!1723108) (not b!1722972) (not b!1722797) (not d!528119) (not b_lambda!54715) (not d!527951) (not b_next!47667) (not b!1722819) (not bm!109766) (not b!1723127) (not d!527981) (not b!1722875) (not b!1723069) (not b!1723109) (not b!1722914) (not d!527949) (not b!1722688) (not b!1722890) (not b_lambda!54679) (not tb!102213) (not b!1723076) (not d!528111) (not b!1723052) (not b!1722979) (not b!1723034) tp_is_empty!7581 (not b!1722802) (not b!1723029) (not d!528107) (not tb!102177) (not d!527911) b_and!126071 (not d!527979) b_and!126073 (not b!1722709) (not b!1722443) (not b_lambda!54719) (not d!527919) (not b_lambda!54681) (not d!528039) (not b!1722442) (not d!528057) (not b_next!47685) (not d!528073) (not d!527955) (not b!1723136) (not b!1723074) (not b_next!47669) (not b!1723041) (not d!528075) (not b!1722878) (not b_next!47677) (not b!1723075) (not d!528121) (not b!1722417) (not b!1722683) (not b!1722636) (not b!1722964) b_and!126077 b_and!126075 (not b!1722894) (not b!1723129) (not b!1723045) (not b!1722346) (not bm!109767) (not d!527883) (not b!1723067) (not d!527959) (not bm!109761) b_and!126079 (not d!527917) (not b!1723063) (not b!1722637) (not b_next!47683) (not b!1722912) (not b!1722345) (not b!1723024) (not d!528109) (not b!1723016) (not b!1722645) (not b!1722632) (not b!1723051) (not b!1722723) b_and!126065 (not b!1723047) (not b_lambda!54713) (not b!1722639) (not b!1723072) (not b!1722909) (not d!528097) (not b!1722986) (not d!528127) (not b!1723137) (not b!1722891) (not b_lambda!54707) (not d!527971) (not b!1722681) (not b_lambda!54675) (not b!1722689) (not b!1722880) (not b!1723053) (not b!1722818) (not bm!109754) (not d!528099) (not b!1722896) (not d!528079) (not b!1723056) (not b_lambda!54717) (not b!1722895) (not b!1723125) (not b!1723133) (not b!1723043) (not b!1722881) (not bm!109764) (not b_lambda!54709) (not bm!109765) (not b!1723027) (not b!1722798) (not b!1722722) (not b!1722892) (not d!528115) (not b!1723110) (not b!1722638) (not b!1722721) (not d!528087) (not b!1722911) (not d!527973) (not b!1722907) (not b!1723038) (not b!1723068) (not b!1722978) (not d!528089) (not d!528113) (not d!528045) b_and!126067 (not b!1722882) (not d!528101) (not b!1723035) (not tb!102183) (not b_lambda!54711) (not b!1722980) (not d!528123) (not b_next!47673) (not d!528065) (not b!1722635) (not b!1723015) (not b!1722423) (not b!1722706) (not b!1723097) (not b!1722974) (not b!1723098) (not d!527967) (not b!1723128) (not b!1722803) (not bm!109749) (not b!1722692) (not b!1722480) (not d!528043) (not b!1722916) (not b!1722817) (not b!1723115) (not d!527945) (not d!527877) (not b!1723044) (not b!1723084) (not b!1722481) (not d!527893) (not b!1723132) (not d!528041) (not b!1722799) (not b!1722687) (not b!1722876) (not b!1723085))
(check-sat (not b_next!47671) (not b_next!47675) b_and!126069 (not b_next!47667) b_and!126071 b_and!126073 b_and!126065 b_and!126067 (not b_next!47673) (not b_next!47685) (not b_next!47677) (not b_next!47669) b_and!126077 b_and!126075 b_and!126079 (not b_next!47683))
