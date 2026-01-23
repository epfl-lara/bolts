; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168310 () Bool)

(assert start!168310)

(declare-fun b!1718654 () Bool)

(declare-fun b_free!46771 () Bool)

(declare-fun b_next!47475 () Bool)

(assert (=> b!1718654 (= b_free!46771 (not b_next!47475))))

(declare-fun tp!490833 () Bool)

(declare-fun b_and!125167 () Bool)

(assert (=> b!1718654 (= tp!490833 b_and!125167)))

(declare-fun b_free!46773 () Bool)

(declare-fun b_next!47477 () Bool)

(assert (=> b!1718654 (= b_free!46773 (not b_next!47477))))

(declare-fun tp!490840 () Bool)

(declare-fun b_and!125169 () Bool)

(assert (=> b!1718654 (= tp!490840 b_and!125169)))

(declare-fun b!1718647 () Bool)

(declare-fun b_free!46775 () Bool)

(declare-fun b_next!47479 () Bool)

(assert (=> b!1718647 (= b_free!46775 (not b_next!47479))))

(declare-fun tp!490835 () Bool)

(declare-fun b_and!125171 () Bool)

(assert (=> b!1718647 (= tp!490835 b_and!125171)))

(declare-fun b_free!46777 () Bool)

(declare-fun b_next!47481 () Bool)

(assert (=> b!1718647 (= b_free!46777 (not b_next!47481))))

(declare-fun tp!490832 () Bool)

(declare-fun b_and!125173 () Bool)

(assert (=> b!1718647 (= tp!490832 b_and!125173)))

(declare-fun b!1718656 () Bool)

(declare-fun b_free!46779 () Bool)

(declare-fun b_next!47483 () Bool)

(assert (=> b!1718656 (= b_free!46779 (not b_next!47483))))

(declare-fun tp!490830 () Bool)

(declare-fun b_and!125175 () Bool)

(assert (=> b!1718656 (= tp!490830 b_and!125175)))

(declare-fun b_free!46781 () Bool)

(declare-fun b_next!47485 () Bool)

(assert (=> b!1718656 (= b_free!46781 (not b_next!47485))))

(declare-fun tp!490831 () Bool)

(declare-fun b_and!125177 () Bool)

(assert (=> b!1718656 (= tp!490831 b_and!125177)))

(declare-fun b!1718680 () Bool)

(declare-fun e!1099227 () Bool)

(assert (=> b!1718680 (= e!1099227 true)))

(declare-fun b!1718679 () Bool)

(declare-fun e!1099226 () Bool)

(assert (=> b!1718679 (= e!1099226 e!1099227)))

(declare-fun b!1718678 () Bool)

(declare-fun e!1099225 () Bool)

(assert (=> b!1718678 (= e!1099225 e!1099226)))

(declare-fun b!1718667 () Bool)

(assert (=> b!1718667 e!1099225))

(assert (= b!1718679 b!1718680))

(assert (= b!1718678 b!1718679))

(assert (= b!1718667 b!1718678))

(declare-fun order!11409 () Int)

(declare-fun order!11407 () Int)

(declare-datatypes ((List!18864 0))(
  ( (Nil!18794) (Cons!18794 (h!24195 (_ BitVec 16)) (t!159167 List!18864)) )
))
(declare-datatypes ((TokenValue!3417 0))(
  ( (FloatLiteralValue!6834 (text!24364 List!18864)) (TokenValueExt!3416 (__x!12136 Int)) (Broken!17085 (value!104466 List!18864)) (Object!3486) (End!3417) (Def!3417) (Underscore!3417) (Match!3417) (Else!3417) (Error!3417) (Case!3417) (If!3417) (Extends!3417) (Abstract!3417) (Class!3417) (Val!3417) (DelimiterValue!6834 (del!3477 List!18864)) (KeywordValue!3423 (value!104467 List!18864)) (CommentValue!6834 (value!104468 List!18864)) (WhitespaceValue!6834 (value!104469 List!18864)) (IndentationValue!3417 (value!104470 List!18864)) (String!21416) (Int32!3417) (Broken!17086 (value!104471 List!18864)) (Boolean!3418) (Unit!32630) (OperatorValue!3420 (op!3477 List!18864)) (IdentifierValue!6834 (value!104472 List!18864)) (IdentifierValue!6835 (value!104473 List!18864)) (WhitespaceValue!6835 (value!104474 List!18864)) (True!6834) (False!6834) (Broken!17087 (value!104475 List!18864)) (Broken!17088 (value!104476 List!18864)) (True!6835) (RightBrace!3417) (RightBracket!3417) (Colon!3417) (Null!3417) (Comma!3417) (LeftBracket!3417) (False!6835) (LeftBrace!3417) (ImaginaryLiteralValue!3417 (text!24365 List!18864)) (StringLiteralValue!10251 (value!104477 List!18864)) (EOFValue!3417 (value!104478 List!18864)) (IdentValue!3417 (value!104479 List!18864)) (DelimiterValue!6835 (value!104480 List!18864)) (DedentValue!3417 (value!104481 List!18864)) (NewLineValue!3417 (value!104482 List!18864)) (IntegerValue!10251 (value!104483 (_ BitVec 32)) (text!24366 List!18864)) (IntegerValue!10252 (value!104484 Int) (text!24367 List!18864)) (Times!3417) (Or!3417) (Equal!3417) (Minus!3417) (Broken!17089 (value!104485 List!18864)) (And!3417) (Div!3417) (LessEqual!3417) (Mod!3417) (Concat!8072) (Not!3417) (Plus!3417) (SpaceValue!3417 (value!104486 List!18864)) (IntegerValue!10253 (value!104487 Int) (text!24368 List!18864)) (StringLiteralValue!10252 (text!24369 List!18864)) (FloatLiteralValue!6835 (text!24370 List!18864)) (BytesLiteralValue!3417 (value!104488 List!18864)) (CommentValue!6835 (value!104489 List!18864)) (StringLiteralValue!10253 (value!104490 List!18864)) (ErrorTokenValue!3417 (msg!3478 List!18864)) )
))
(declare-datatypes ((C!9484 0))(
  ( (C!9485 (val!5338 Int)) )
))
(declare-datatypes ((List!18865 0))(
  ( (Nil!18795) (Cons!18795 (h!24196 C!9484) (t!159168 List!18865)) )
))
(declare-datatypes ((Regex!4655 0))(
  ( (ElementMatch!4655 (c!281348 C!9484)) (Concat!8073 (regOne!9822 Regex!4655) (regTwo!9822 Regex!4655)) (EmptyExpr!4655) (Star!4655 (reg!4984 Regex!4655)) (EmptyLang!4655) (Union!4655 (regOne!9823 Regex!4655) (regTwo!9823 Regex!4655)) )
))
(declare-datatypes ((String!21417 0))(
  ( (String!21418 (value!104491 String)) )
))
(declare-datatypes ((IArray!12507 0))(
  ( (IArray!12508 (innerList!6311 List!18865)) )
))
(declare-datatypes ((Conc!6251 0))(
  ( (Node!6251 (left!14992 Conc!6251) (right!15322 Conc!6251) (csize!12732 Int) (cheight!6462 Int)) (Leaf!9135 (xs!9127 IArray!12507) (csize!12733 Int)) (Empty!6251) )
))
(declare-datatypes ((BalanceConc!12446 0))(
  ( (BalanceConc!12447 (c!281349 Conc!6251)) )
))
(declare-datatypes ((TokenValueInjection!6494 0))(
  ( (TokenValueInjection!6495 (toValue!4834 Int) (toChars!4693 Int)) )
))
(declare-datatypes ((Rule!6454 0))(
  ( (Rule!6455 (regex!3327 Regex!4655) (tag!3633 String!21417) (isSeparator!3327 Bool) (transformation!3327 TokenValueInjection!6494)) )
))
(declare-datatypes ((Token!6220 0))(
  ( (Token!6221 (value!104492 TokenValue!3417) (rule!5269 Rule!6454) (size!14934 Int) (originalCharacters!4141 List!18865)) )
))
(declare-datatypes ((tuple2!18494 0))(
  ( (tuple2!18495 (_1!10649 Token!6220) (_2!10649 List!18865)) )
))
(declare-fun lt!657025 () tuple2!18494)

(declare-fun lambda!69050 () Int)

(declare-fun dynLambda!8618 (Int Int) Int)

(declare-fun dynLambda!8619 (Int Int) Int)

(assert (=> b!1718680 (< (dynLambda!8618 order!11407 (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) (dynLambda!8619 order!11409 lambda!69050))))

(declare-fun order!11411 () Int)

(declare-fun dynLambda!8620 (Int Int) Int)

(assert (=> b!1718680 (< (dynLambda!8620 order!11411 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) (dynLambda!8619 order!11409 lambda!69050))))

(declare-fun b!1718642 () Bool)

(declare-fun res!770869 () Bool)

(declare-fun e!1099201 () Bool)

(assert (=> b!1718642 (=> res!770869 e!1099201)))

(declare-datatypes ((LexerInterface!2956 0))(
  ( (LexerInterfaceExt!2953 (__x!12137 Int)) (Lexer!2954) )
))
(declare-fun thiss!24550 () LexerInterface!2956)

(declare-datatypes ((List!18866 0))(
  ( (Nil!18796) (Cons!18796 (h!24197 Rule!6454) (t!159169 List!18866)) )
))
(declare-fun rules!3447 () List!18866)

(declare-fun lt!657039 () List!18865)

(declare-fun suffix!1421 () List!18865)

(declare-fun prefixMatch!540 (Regex!4655 List!18865) Bool)

(declare-fun rulesRegex!685 (LexerInterface!2956 List!18866) Regex!4655)

(declare-fun ++!5152 (List!18865 List!18865) List!18865)

(declare-fun head!3876 (List!18865) C!9484)

(assert (=> b!1718642 (= res!770869 (prefixMatch!540 (rulesRegex!685 thiss!24550 rules!3447) (++!5152 lt!657039 (Cons!18795 (head!3876 suffix!1421) Nil!18795))))))

(declare-fun b!1718643 () Bool)

(declare-fun e!1099203 () Bool)

(declare-fun e!1099217 () Bool)

(assert (=> b!1718643 (= e!1099203 e!1099217)))

(declare-fun res!770873 () Bool)

(assert (=> b!1718643 (=> (not res!770873) (not e!1099217))))

(declare-datatypes ((Option!3678 0))(
  ( (None!3677) (Some!3677 (v!25076 tuple2!18494)) )
))
(declare-fun lt!657045 () Option!3678)

(declare-fun isDefined!3021 (Option!3678) Bool)

(assert (=> b!1718643 (= res!770873 (isDefined!3021 lt!657045))))

(declare-fun maxPrefix!1510 (LexerInterface!2956 List!18866 List!18865) Option!3678)

(assert (=> b!1718643 (= lt!657045 (maxPrefix!1510 thiss!24550 rules!3447 lt!657039))))

(declare-fun token!523 () Token!6220)

(declare-fun list!7592 (BalanceConc!12446) List!18865)

(declare-fun charsOf!1976 (Token!6220) BalanceConc!12446)

(assert (=> b!1718643 (= lt!657039 (list!7592 (charsOf!1976 token!523)))))

(declare-fun b!1718644 () Bool)

(declare-fun res!770875 () Bool)

(declare-fun e!1099206 () Bool)

(assert (=> b!1718644 (=> (not res!770875) (not e!1099206))))

(declare-fun rule!422 () Rule!6454)

(assert (=> b!1718644 (= res!770875 (= (rule!5269 token!523) rule!422))))

(declare-fun b!1718645 () Bool)

(declare-fun res!770866 () Bool)

(assert (=> b!1718645 (=> (not res!770866) (not e!1099203))))

(declare-fun isEmpty!11817 (List!18866) Bool)

(assert (=> b!1718645 (= res!770866 (not (isEmpty!11817 rules!3447)))))

(declare-fun b!1718646 () Bool)

(assert (=> b!1718646 (= e!1099217 e!1099206)))

(declare-fun res!770874 () Bool)

(assert (=> b!1718646 (=> (not res!770874) (not e!1099206))))

(declare-fun lt!657028 () tuple2!18494)

(assert (=> b!1718646 (= res!770874 (= (_1!10649 lt!657028) token!523))))

(declare-fun get!5559 (Option!3678) tuple2!18494)

(assert (=> b!1718646 (= lt!657028 (get!5559 lt!657045))))

(declare-fun e!1099199 () Bool)

(assert (=> b!1718647 (= e!1099199 (and tp!490835 tp!490832))))

(declare-fun b!1718648 () Bool)

(declare-fun e!1099209 () Bool)

(assert (=> b!1718648 (= e!1099209 true)))

(declare-fun lt!657032 () List!18865)

(assert (=> b!1718648 (= (_2!10649 lt!657025) lt!657032)))

(declare-fun lt!657034 () List!18865)

(declare-datatypes ((Unit!32631 0))(
  ( (Unit!32632) )
))
(declare-fun lt!657036 () Unit!32631)

(declare-fun lt!657044 () List!18865)

(declare-fun lemmaSamePrefixThenSameSuffix!712 (List!18865 List!18865 List!18865 List!18865 List!18865) Unit!32631)

(assert (=> b!1718648 (= lt!657036 (lemmaSamePrefixThenSameSuffix!712 lt!657034 (_2!10649 lt!657025) lt!657034 lt!657032 lt!657044))))

(declare-fun getSuffix!762 (List!18865 List!18865) List!18865)

(assert (=> b!1718648 (= lt!657032 (getSuffix!762 lt!657044 lt!657034))))

(declare-fun maxPrefixOneRule!886 (LexerInterface!2956 Rule!6454 List!18865) Option!3678)

(declare-fun apply!5132 (TokenValueInjection!6494 BalanceConc!12446) TokenValue!3417)

(declare-fun seqFromList!2301 (List!18865) BalanceConc!12446)

(declare-fun size!14935 (List!18865) Int)

(assert (=> b!1718648 (= (maxPrefixOneRule!886 thiss!24550 (rule!5269 (_1!10649 lt!657025)) lt!657044) (Some!3677 (tuple2!18495 (Token!6221 (apply!5132 (transformation!3327 (rule!5269 (_1!10649 lt!657025))) (seqFromList!2301 lt!657034)) (rule!5269 (_1!10649 lt!657025)) (size!14935 lt!657034) lt!657034) (_2!10649 lt!657025))))))

(declare-fun lt!657043 () Unit!32631)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!285 (LexerInterface!2956 List!18866 List!18865 List!18865 List!18865 Rule!6454) Unit!32631)

(assert (=> b!1718648 (= lt!657043 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!285 thiss!24550 rules!3447 lt!657034 lt!657044 (_2!10649 lt!657025) (rule!5269 (_1!10649 lt!657025))))))

(declare-fun e!1099214 () Bool)

(declare-fun b!1718649 () Bool)

(declare-fun e!1099200 () Bool)

(declare-fun tp!490837 () Bool)

(declare-fun inv!21 (TokenValue!3417) Bool)

(assert (=> b!1718649 (= e!1099214 (and (inv!21 (value!104492 token!523)) e!1099200 tp!490837))))

(declare-fun b!1718650 () Bool)

(declare-fun tp!490836 () Bool)

(declare-fun e!1099218 () Bool)

(declare-fun e!1099216 () Bool)

(declare-fun inv!24257 (String!21417) Bool)

(declare-fun inv!24262 (TokenValueInjection!6494) Bool)

(assert (=> b!1718650 (= e!1099216 (and tp!490836 (inv!24257 (tag!3633 rule!422)) (inv!24262 (transformation!3327 rule!422)) e!1099218))))

(declare-fun b!1718651 () Bool)

(declare-fun res!770871 () Bool)

(assert (=> b!1718651 (=> res!770871 e!1099201)))

(declare-fun isEmpty!11818 (List!18865) Bool)

(assert (=> b!1718651 (= res!770871 (isEmpty!11818 suffix!1421))))

(declare-fun b!1718652 () Bool)

(declare-fun res!770862 () Bool)

(declare-fun e!1099197 () Bool)

(assert (=> b!1718652 (=> res!770862 e!1099197)))

(declare-fun matchR!2129 (Regex!4655 List!18865) Bool)

(assert (=> b!1718652 (= res!770862 (not (matchR!2129 (regex!3327 (rule!5269 (_1!10649 lt!657025))) lt!657034)))))

(declare-fun tp!490838 () Bool)

(declare-fun b!1718653 () Bool)

(assert (=> b!1718653 (= e!1099200 (and tp!490838 (inv!24257 (tag!3633 (rule!5269 token!523))) (inv!24262 (transformation!3327 (rule!5269 token!523))) e!1099199))))

(declare-fun e!1099205 () Bool)

(assert (=> b!1718654 (= e!1099205 (and tp!490833 tp!490840))))

(declare-fun b!1718655 () Bool)

(declare-fun e!1099198 () Bool)

(declare-fun lt!657041 () Rule!6454)

(assert (=> b!1718655 (= e!1099198 (= (rule!5269 (_1!10649 lt!657025)) lt!657041))))

(assert (=> b!1718656 (= e!1099218 (and tp!490830 tp!490831))))

(declare-fun b!1718657 () Bool)

(declare-fun res!770872 () Bool)

(assert (=> b!1718657 (=> (not res!770872) (not e!1099206))))

(assert (=> b!1718657 (= res!770872 (isEmpty!11818 (_2!10649 lt!657028)))))

(declare-fun b!1718658 () Bool)

(declare-fun e!1099212 () Bool)

(assert (=> b!1718658 (= e!1099212 e!1099198)))

(declare-fun res!770865 () Bool)

(assert (=> b!1718658 (=> (not res!770865) (not e!1099198))))

(assert (=> b!1718658 (= res!770865 (matchR!2129 (regex!3327 lt!657041) (list!7592 (charsOf!1976 (_1!10649 lt!657025)))))))

(declare-datatypes ((Option!3679 0))(
  ( (None!3678) (Some!3678 (v!25077 Rule!6454)) )
))
(declare-fun lt!657033 () Option!3679)

(declare-fun get!5560 (Option!3679) Rule!6454)

(assert (=> b!1718658 (= lt!657041 (get!5560 lt!657033))))

(declare-fun b!1718659 () Bool)

(declare-fun e!1099213 () Bool)

(declare-fun tp_is_empty!7553 () Bool)

(declare-fun tp!490829 () Bool)

(assert (=> b!1718659 (= e!1099213 (and tp_is_empty!7553 tp!490829))))

(declare-fun res!770858 () Bool)

(assert (=> start!168310 (=> (not res!770858) (not e!1099203))))

(get-info :version)

(assert (=> start!168310 (= res!770858 ((_ is Lexer!2954) thiss!24550))))

(assert (=> start!168310 e!1099203))

(assert (=> start!168310 e!1099213))

(assert (=> start!168310 e!1099216))

(assert (=> start!168310 true))

(declare-fun inv!24263 (Token!6220) Bool)

(assert (=> start!168310 (and (inv!24263 token!523) e!1099214)))

(declare-fun e!1099204 () Bool)

(assert (=> start!168310 e!1099204))

(declare-fun b!1718660 () Bool)

(declare-fun e!1099196 () Bool)

(declare-fun tp!490834 () Bool)

(assert (=> b!1718660 (= e!1099204 (and e!1099196 tp!490834))))

(declare-fun b!1718661 () Bool)

(assert (=> b!1718661 (= e!1099201 e!1099197)))

(declare-fun res!770864 () Bool)

(assert (=> b!1718661 (=> res!770864 e!1099197)))

(declare-fun isPrefix!1568 (List!18865 List!18865) Bool)

(assert (=> b!1718661 (= res!770864 (not (isPrefix!1568 lt!657034 lt!657044)))))

(assert (=> b!1718661 (isPrefix!1568 lt!657034 (++!5152 lt!657034 (_2!10649 lt!657025)))))

(declare-fun lt!657029 () Unit!32631)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1078 (List!18865 List!18865) Unit!32631)

(assert (=> b!1718661 (= lt!657029 (lemmaConcatTwoListThenFirstIsPrefix!1078 lt!657034 (_2!10649 lt!657025)))))

(declare-fun lt!657037 () BalanceConc!12446)

(assert (=> b!1718661 (= lt!657034 (list!7592 lt!657037))))

(assert (=> b!1718661 (= lt!657037 (charsOf!1976 (_1!10649 lt!657025)))))

(assert (=> b!1718661 e!1099212))

(declare-fun res!770863 () Bool)

(assert (=> b!1718661 (=> (not res!770863) (not e!1099212))))

(declare-fun isDefined!3022 (Option!3679) Bool)

(assert (=> b!1718661 (= res!770863 (isDefined!3022 lt!657033))))

(declare-fun getRuleFromTag!377 (LexerInterface!2956 List!18866 String!21417) Option!3679)

(assert (=> b!1718661 (= lt!657033 (getRuleFromTag!377 thiss!24550 rules!3447 (tag!3633 (rule!5269 (_1!10649 lt!657025)))))))

(declare-fun lt!657046 () Unit!32631)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!377 (LexerInterface!2956 List!18866 List!18865 Token!6220) Unit!32631)

(assert (=> b!1718661 (= lt!657046 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!377 thiss!24550 rules!3447 lt!657044 (_1!10649 lt!657025)))))

(declare-fun lt!657038 () Option!3678)

(assert (=> b!1718661 (= lt!657025 (get!5559 lt!657038))))

(declare-fun lt!657026 () Unit!32631)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!480 (LexerInterface!2956 List!18866 List!18865 List!18865) Unit!32631)

(assert (=> b!1718661 (= lt!657026 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!480 thiss!24550 rules!3447 lt!657039 suffix!1421))))

(assert (=> b!1718661 (= lt!657038 (maxPrefix!1510 thiss!24550 rules!3447 lt!657044))))

(assert (=> b!1718661 (isPrefix!1568 lt!657039 lt!657044)))

(declare-fun lt!657031 () Unit!32631)

(assert (=> b!1718661 (= lt!657031 (lemmaConcatTwoListThenFirstIsPrefix!1078 lt!657039 suffix!1421))))

(assert (=> b!1718661 (= lt!657044 (++!5152 lt!657039 suffix!1421))))

(declare-fun b!1718662 () Bool)

(declare-fun res!770876 () Bool)

(assert (=> b!1718662 (=> (not res!770876) (not e!1099203))))

(declare-fun contains!3349 (List!18866 Rule!6454) Bool)

(assert (=> b!1718662 (= res!770876 (contains!3349 rules!3447 rule!422))))

(declare-fun b!1718663 () Bool)

(declare-fun res!770868 () Bool)

(declare-fun e!1099202 () Bool)

(assert (=> b!1718663 (=> res!770868 e!1099202)))

(declare-fun dynLambda!8621 (Int TokenValue!3417) BalanceConc!12446)

(assert (=> b!1718663 (= res!770868 (not (= lt!657037 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (value!104492 (_1!10649 lt!657025))))))))

(declare-fun b!1718664 () Bool)

(assert (=> b!1718664 (= e!1099206 (not e!1099201))))

(declare-fun res!770860 () Bool)

(assert (=> b!1718664 (=> res!770860 e!1099201)))

(assert (=> b!1718664 (= res!770860 (not (matchR!2129 (regex!3327 rule!422) lt!657039)))))

(declare-fun ruleValid!826 (LexerInterface!2956 Rule!6454) Bool)

(assert (=> b!1718664 (ruleValid!826 thiss!24550 rule!422)))

(declare-fun lt!657030 () Unit!32631)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!350 (LexerInterface!2956 Rule!6454 List!18866) Unit!32631)

(assert (=> b!1718664 (= lt!657030 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!350 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!490839 () Bool)

(declare-fun b!1718665 () Bool)

(assert (=> b!1718665 (= e!1099196 (and tp!490839 (inv!24257 (tag!3633 (h!24197 rules!3447))) (inv!24262 (transformation!3327 (h!24197 rules!3447))) e!1099205))))

(declare-fun b!1718666 () Bool)

(declare-fun e!1099208 () Bool)

(assert (=> b!1718666 (= e!1099208 e!1099202)))

(declare-fun res!770859 () Bool)

(assert (=> b!1718666 (=> res!770859 e!1099202)))

(declare-fun dynLambda!8622 (Int BalanceConc!12446) TokenValue!3417)

(assert (=> b!1718666 (= res!770859 (not (= (list!7592 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (dynLambda!8622 (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) lt!657037))) lt!657034)))))

(declare-fun lt!657042 () Unit!32631)

(declare-fun lemmaSemiInverse!473 (TokenValueInjection!6494 BalanceConc!12446) Unit!32631)

(assert (=> b!1718666 (= lt!657042 (lemmaSemiInverse!473 (transformation!3327 (rule!5269 (_1!10649 lt!657025))) lt!657037))))

(assert (=> b!1718667 (= e!1099197 e!1099208)))

(declare-fun res!770870 () Bool)

(assert (=> b!1718667 (=> res!770870 e!1099208)))

(declare-fun Forall!702 (Int) Bool)

(assert (=> b!1718667 (= res!770870 (not (Forall!702 lambda!69050)))))

(declare-fun lt!657035 () Unit!32631)

(declare-fun lemmaInv!534 (TokenValueInjection!6494) Unit!32631)

(assert (=> b!1718667 (= lt!657035 (lemmaInv!534 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))))))

(declare-fun b!1718668 () Bool)

(declare-fun res!770867 () Bool)

(assert (=> b!1718668 (=> (not res!770867) (not e!1099203))))

(declare-fun rulesInvariant!2625 (LexerInterface!2956 List!18866) Bool)

(assert (=> b!1718668 (= res!770867 (rulesInvariant!2625 thiss!24550 rules!3447))))

(declare-fun b!1718669 () Bool)

(assert (=> b!1718669 (= e!1099202 e!1099209)))

(declare-fun res!770861 () Bool)

(assert (=> b!1718669 (=> res!770861 e!1099209)))

(declare-fun size!14936 (BalanceConc!12446) Int)

(assert (=> b!1718669 (= res!770861 (not (= lt!657038 (Some!3677 (tuple2!18495 (Token!6221 (apply!5132 (transformation!3327 (rule!5269 (_1!10649 lt!657025))) lt!657037) (rule!5269 (_1!10649 lt!657025)) (size!14936 lt!657037) lt!657034) (_2!10649 lt!657025))))))))

(declare-fun lt!657040 () Unit!32631)

(declare-fun lemmaCharactersSize!399 (Token!6220) Unit!32631)

(assert (=> b!1718669 (= lt!657040 (lemmaCharactersSize!399 (_1!10649 lt!657025)))))

(declare-fun lt!657027 () Unit!32631)

(declare-fun lemmaEqSameImage!252 (TokenValueInjection!6494 BalanceConc!12446 BalanceConc!12446) Unit!32631)

(assert (=> b!1718669 (= lt!657027 (lemmaEqSameImage!252 (transformation!3327 (rule!5269 (_1!10649 lt!657025))) lt!657037 (seqFromList!2301 (originalCharacters!4141 (_1!10649 lt!657025)))))))

(assert (= (and start!168310 res!770858) b!1718645))

(assert (= (and b!1718645 res!770866) b!1718668))

(assert (= (and b!1718668 res!770867) b!1718662))

(assert (= (and b!1718662 res!770876) b!1718643))

(assert (= (and b!1718643 res!770873) b!1718646))

(assert (= (and b!1718646 res!770874) b!1718657))

(assert (= (and b!1718657 res!770872) b!1718644))

(assert (= (and b!1718644 res!770875) b!1718664))

(assert (= (and b!1718664 (not res!770860)) b!1718651))

(assert (= (and b!1718651 (not res!770871)) b!1718642))

(assert (= (and b!1718642 (not res!770869)) b!1718661))

(assert (= (and b!1718661 res!770863) b!1718658))

(assert (= (and b!1718658 res!770865) b!1718655))

(assert (= (and b!1718661 (not res!770864)) b!1718652))

(assert (= (and b!1718652 (not res!770862)) b!1718667))

(assert (= (and b!1718667 (not res!770870)) b!1718666))

(assert (= (and b!1718666 (not res!770859)) b!1718663))

(assert (= (and b!1718663 (not res!770868)) b!1718669))

(assert (= (and b!1718669 (not res!770861)) b!1718648))

(assert (= (and start!168310 ((_ is Cons!18795) suffix!1421)) b!1718659))

(assert (= b!1718650 b!1718656))

(assert (= start!168310 b!1718650))

(assert (= b!1718653 b!1718647))

(assert (= b!1718649 b!1718653))

(assert (= start!168310 b!1718649))

(assert (= b!1718665 b!1718654))

(assert (= b!1718660 b!1718665))

(assert (= (and start!168310 ((_ is Cons!18796) rules!3447)) b!1718660))

(declare-fun b_lambda!54407 () Bool)

(assert (=> (not b_lambda!54407) (not b!1718663)))

(declare-fun t!159150 () Bool)

(declare-fun tb!101721 () Bool)

(assert (=> (and b!1718654 (= (toChars!4693 (transformation!3327 (h!24197 rules!3447))) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159150) tb!101721))

(declare-fun b!1718685 () Bool)

(declare-fun e!1099230 () Bool)

(declare-fun tp!490843 () Bool)

(declare-fun inv!24264 (Conc!6251) Bool)

(assert (=> b!1718685 (= e!1099230 (and (inv!24264 (c!281349 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (value!104492 (_1!10649 lt!657025))))) tp!490843))))

(declare-fun result!122252 () Bool)

(declare-fun inv!24265 (BalanceConc!12446) Bool)

(assert (=> tb!101721 (= result!122252 (and (inv!24265 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (value!104492 (_1!10649 lt!657025)))) e!1099230))))

(assert (= tb!101721 b!1718685))

(declare-fun m!2123657 () Bool)

(assert (=> b!1718685 m!2123657))

(declare-fun m!2123659 () Bool)

(assert (=> tb!101721 m!2123659))

(assert (=> b!1718663 t!159150))

(declare-fun b_and!125179 () Bool)

(assert (= b_and!125169 (and (=> t!159150 result!122252) b_and!125179)))

(declare-fun tb!101723 () Bool)

(declare-fun t!159152 () Bool)

(assert (=> (and b!1718647 (= (toChars!4693 (transformation!3327 (rule!5269 token!523))) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159152) tb!101723))

(declare-fun result!122256 () Bool)

(assert (= result!122256 result!122252))

(assert (=> b!1718663 t!159152))

(declare-fun b_and!125181 () Bool)

(assert (= b_and!125173 (and (=> t!159152 result!122256) b_and!125181)))

(declare-fun tb!101725 () Bool)

(declare-fun t!159154 () Bool)

(assert (=> (and b!1718656 (= (toChars!4693 (transformation!3327 rule!422)) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159154) tb!101725))

(declare-fun result!122258 () Bool)

(assert (= result!122258 result!122252))

(assert (=> b!1718663 t!159154))

(declare-fun b_and!125183 () Bool)

(assert (= b_and!125177 (and (=> t!159154 result!122258) b_and!125183)))

(declare-fun b_lambda!54409 () Bool)

(assert (=> (not b_lambda!54409) (not b!1718666)))

(declare-fun t!159156 () Bool)

(declare-fun tb!101727 () Bool)

(assert (=> (and b!1718654 (= (toChars!4693 (transformation!3327 (h!24197 rules!3447))) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159156) tb!101727))

(declare-fun e!1099231 () Bool)

(declare-fun tp!490844 () Bool)

(declare-fun b!1718686 () Bool)

(assert (=> b!1718686 (= e!1099231 (and (inv!24264 (c!281349 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (dynLambda!8622 (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) lt!657037)))) tp!490844))))

(declare-fun result!122260 () Bool)

(assert (=> tb!101727 (= result!122260 (and (inv!24265 (dynLambda!8621 (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) (dynLambda!8622 (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) lt!657037))) e!1099231))))

(assert (= tb!101727 b!1718686))

(declare-fun m!2123661 () Bool)

(assert (=> b!1718686 m!2123661))

(declare-fun m!2123663 () Bool)

(assert (=> tb!101727 m!2123663))

(assert (=> b!1718666 t!159156))

(declare-fun b_and!125185 () Bool)

(assert (= b_and!125179 (and (=> t!159156 result!122260) b_and!125185)))

(declare-fun tb!101729 () Bool)

(declare-fun t!159158 () Bool)

(assert (=> (and b!1718647 (= (toChars!4693 (transformation!3327 (rule!5269 token!523))) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159158) tb!101729))

(declare-fun result!122262 () Bool)

(assert (= result!122262 result!122260))

(assert (=> b!1718666 t!159158))

(declare-fun b_and!125187 () Bool)

(assert (= b_and!125181 (and (=> t!159158 result!122262) b_and!125187)))

(declare-fun tb!101731 () Bool)

(declare-fun t!159160 () Bool)

(assert (=> (and b!1718656 (= (toChars!4693 (transformation!3327 rule!422)) (toChars!4693 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159160) tb!101731))

(declare-fun result!122264 () Bool)

(assert (= result!122264 result!122260))

(assert (=> b!1718666 t!159160))

(declare-fun b_and!125189 () Bool)

(assert (= b_and!125183 (and (=> t!159160 result!122264) b_and!125189)))

(declare-fun b_lambda!54411 () Bool)

(assert (=> (not b_lambda!54411) (not b!1718666)))

(declare-fun tb!101733 () Bool)

(declare-fun t!159162 () Bool)

(assert (=> (and b!1718654 (= (toValue!4834 (transformation!3327 (h!24197 rules!3447))) (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159162) tb!101733))

(declare-fun result!122266 () Bool)

(assert (=> tb!101733 (= result!122266 (inv!21 (dynLambda!8622 (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025)))) lt!657037)))))

(declare-fun m!2123665 () Bool)

(assert (=> tb!101733 m!2123665))

(assert (=> b!1718666 t!159162))

(declare-fun b_and!125191 () Bool)

(assert (= b_and!125167 (and (=> t!159162 result!122266) b_and!125191)))

(declare-fun tb!101735 () Bool)

(declare-fun t!159164 () Bool)

(assert (=> (and b!1718647 (= (toValue!4834 (transformation!3327 (rule!5269 token!523))) (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159164) tb!101735))

(declare-fun result!122270 () Bool)

(assert (= result!122270 result!122266))

(assert (=> b!1718666 t!159164))

(declare-fun b_and!125193 () Bool)

(assert (= b_and!125171 (and (=> t!159164 result!122270) b_and!125193)))

(declare-fun t!159166 () Bool)

(declare-fun tb!101737 () Bool)

(assert (=> (and b!1718656 (= (toValue!4834 (transformation!3327 rule!422)) (toValue!4834 (transformation!3327 (rule!5269 (_1!10649 lt!657025))))) t!159166) tb!101737))

(declare-fun result!122272 () Bool)

(assert (= result!122272 result!122266))

(assert (=> b!1718666 t!159166))

(declare-fun b_and!125195 () Bool)

(assert (= b_and!125175 (and (=> t!159166 result!122272) b_and!125195)))

(declare-fun m!2123667 () Bool)

(assert (=> b!1718648 m!2123667))

(declare-fun m!2123669 () Bool)

(assert (=> b!1718648 m!2123669))

(declare-fun m!2123671 () Bool)

(assert (=> b!1718648 m!2123671))

(declare-fun m!2123673 () Bool)

(assert (=> b!1718648 m!2123673))

(declare-fun m!2123675 () Bool)

(assert (=> b!1718648 m!2123675))

(declare-fun m!2123677 () Bool)

(assert (=> b!1718648 m!2123677))

(declare-fun m!2123679 () Bool)

(assert (=> b!1718648 m!2123679))

(assert (=> b!1718648 m!2123673))

(declare-fun m!2123681 () Bool)

(assert (=> b!1718652 m!2123681))

(declare-fun m!2123683 () Bool)

(assert (=> b!1718669 m!2123683))

(declare-fun m!2123685 () Bool)

(assert (=> b!1718669 m!2123685))

(declare-fun m!2123687 () Bool)

(assert (=> b!1718669 m!2123687))

(declare-fun m!2123689 () Bool)

(assert (=> b!1718669 m!2123689))

(assert (=> b!1718669 m!2123687))

(declare-fun m!2123691 () Bool)

(assert (=> b!1718669 m!2123691))

(declare-fun m!2123693 () Bool)

(assert (=> b!1718651 m!2123693))

(declare-fun m!2123695 () Bool)

(assert (=> b!1718661 m!2123695))

(declare-fun m!2123697 () Bool)

(assert (=> b!1718661 m!2123697))

(declare-fun m!2123699 () Bool)

(assert (=> b!1718661 m!2123699))

(declare-fun m!2123701 () Bool)

(assert (=> b!1718661 m!2123701))

(declare-fun m!2123703 () Bool)

(assert (=> b!1718661 m!2123703))

(declare-fun m!2123705 () Bool)

(assert (=> b!1718661 m!2123705))

(declare-fun m!2123707 () Bool)

(assert (=> b!1718661 m!2123707))

(declare-fun m!2123709 () Bool)

(assert (=> b!1718661 m!2123709))

(assert (=> b!1718661 m!2123703))

(declare-fun m!2123711 () Bool)

(assert (=> b!1718661 m!2123711))

(declare-fun m!2123713 () Bool)

(assert (=> b!1718661 m!2123713))

(declare-fun m!2123715 () Bool)

(assert (=> b!1718661 m!2123715))

(declare-fun m!2123717 () Bool)

(assert (=> b!1718661 m!2123717))

(declare-fun m!2123719 () Bool)

(assert (=> b!1718661 m!2123719))

(declare-fun m!2123721 () Bool)

(assert (=> b!1718661 m!2123721))

(declare-fun m!2123723 () Bool)

(assert (=> b!1718661 m!2123723))

(declare-fun m!2123725 () Bool)

(assert (=> b!1718663 m!2123725))

(declare-fun m!2123727 () Bool)

(assert (=> b!1718643 m!2123727))

(declare-fun m!2123729 () Bool)

(assert (=> b!1718643 m!2123729))

(declare-fun m!2123731 () Bool)

(assert (=> b!1718643 m!2123731))

(assert (=> b!1718643 m!2123731))

(declare-fun m!2123733 () Bool)

(assert (=> b!1718643 m!2123733))

(declare-fun m!2123735 () Bool)

(assert (=> b!1718642 m!2123735))

(declare-fun m!2123737 () Bool)

(assert (=> b!1718642 m!2123737))

(declare-fun m!2123739 () Bool)

(assert (=> b!1718642 m!2123739))

(assert (=> b!1718642 m!2123735))

(assert (=> b!1718642 m!2123739))

(declare-fun m!2123741 () Bool)

(assert (=> b!1718642 m!2123741))

(declare-fun m!2123743 () Bool)

(assert (=> b!1718650 m!2123743))

(declare-fun m!2123745 () Bool)

(assert (=> b!1718650 m!2123745))

(declare-fun m!2123747 () Bool)

(assert (=> b!1718645 m!2123747))

(declare-fun m!2123749 () Bool)

(assert (=> b!1718657 m!2123749))

(declare-fun m!2123751 () Bool)

(assert (=> start!168310 m!2123751))

(declare-fun m!2123753 () Bool)

(assert (=> b!1718662 m!2123753))

(declare-fun m!2123755 () Bool)

(assert (=> b!1718664 m!2123755))

(declare-fun m!2123757 () Bool)

(assert (=> b!1718664 m!2123757))

(declare-fun m!2123759 () Bool)

(assert (=> b!1718664 m!2123759))

(declare-fun m!2123761 () Bool)

(assert (=> b!1718667 m!2123761))

(declare-fun m!2123763 () Bool)

(assert (=> b!1718667 m!2123763))

(declare-fun m!2123765 () Bool)

(assert (=> b!1718646 m!2123765))

(declare-fun m!2123767 () Bool)

(assert (=> b!1718665 m!2123767))

(declare-fun m!2123769 () Bool)

(assert (=> b!1718665 m!2123769))

(assert (=> b!1718658 m!2123707))

(assert (=> b!1718658 m!2123707))

(declare-fun m!2123771 () Bool)

(assert (=> b!1718658 m!2123771))

(assert (=> b!1718658 m!2123771))

(declare-fun m!2123773 () Bool)

(assert (=> b!1718658 m!2123773))

(declare-fun m!2123775 () Bool)

(assert (=> b!1718658 m!2123775))

(declare-fun m!2123777 () Bool)

(assert (=> b!1718653 m!2123777))

(declare-fun m!2123779 () Bool)

(assert (=> b!1718653 m!2123779))

(declare-fun m!2123781 () Bool)

(assert (=> b!1718668 m!2123781))

(declare-fun m!2123783 () Bool)

(assert (=> b!1718666 m!2123783))

(assert (=> b!1718666 m!2123783))

(declare-fun m!2123785 () Bool)

(assert (=> b!1718666 m!2123785))

(assert (=> b!1718666 m!2123785))

(declare-fun m!2123787 () Bool)

(assert (=> b!1718666 m!2123787))

(declare-fun m!2123789 () Bool)

(assert (=> b!1718666 m!2123789))

(declare-fun m!2123791 () Bool)

(assert (=> b!1718649 m!2123791))

(check-sat (not b!1718668) (not b_next!47477) b_and!125191 (not b!1718650) b_and!125195 tp_is_empty!7553 (not b_next!47485) (not b_lambda!54409) (not b!1718659) b_and!125193 (not b!1718660) (not tb!101721) (not b!1718645) (not b_next!47475) (not b!1718661) (not tb!101733) (not b!1718646) (not b!1718652) (not b!1718642) (not b!1718685) (not b!1718653) (not b!1718662) b_and!125189 (not b_next!47483) (not start!168310) (not b!1718686) b_and!125187 (not b!1718643) (not b!1718649) (not b!1718658) (not b!1718648) (not b!1718666) (not b!1718657) (not b!1718667) (not b!1718651) (not tb!101727) (not b!1718665) (not b_next!47479) (not b_lambda!54407) (not b_lambda!54411) (not b!1718664) (not b!1718669) (not b_next!47481) b_and!125185)
(check-sat (not b_next!47485) b_and!125193 (not b_next!47477) (not b_next!47475) b_and!125191 b_and!125189 (not b_next!47483) b_and!125187 b_and!125195 (not b_next!47479) (not b_next!47481) b_and!125185)
