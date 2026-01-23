; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259590 () Bool)

(assert start!259590)

(declare-fun b!2668958 () Bool)

(declare-fun b_free!74881 () Bool)

(declare-fun b_next!75585 () Bool)

(assert (=> b!2668958 (= b_free!74881 (not b_next!75585))))

(declare-fun tp!843538 () Bool)

(declare-fun b_and!196865 () Bool)

(assert (=> b!2668958 (= tp!843538 b_and!196865)))

(declare-fun b_free!74883 () Bool)

(declare-fun b_next!75587 () Bool)

(assert (=> b!2668958 (= b_free!74883 (not b_next!75587))))

(declare-fun tp!843530 () Bool)

(declare-fun b_and!196867 () Bool)

(assert (=> b!2668958 (= tp!843530 b_and!196867)))

(declare-fun b!2668965 () Bool)

(declare-fun b_free!74885 () Bool)

(declare-fun b_next!75589 () Bool)

(assert (=> b!2668965 (= b_free!74885 (not b_next!75589))))

(declare-fun tp!843537 () Bool)

(declare-fun b_and!196869 () Bool)

(assert (=> b!2668965 (= tp!843537 b_and!196869)))

(declare-fun b_free!74887 () Bool)

(declare-fun b_next!75591 () Bool)

(assert (=> b!2668965 (= b_free!74887 (not b_next!75591))))

(declare-fun tp!843531 () Bool)

(declare-fun b_and!196871 () Bool)

(assert (=> b!2668965 (= tp!843531 b_and!196871)))

(declare-fun b!2668959 () Bool)

(declare-fun b_free!74889 () Bool)

(declare-fun b_next!75593 () Bool)

(assert (=> b!2668959 (= b_free!74889 (not b_next!75593))))

(declare-fun tp!843528 () Bool)

(declare-fun b_and!196873 () Bool)

(assert (=> b!2668959 (= tp!843528 b_and!196873)))

(declare-fun b_free!74891 () Bool)

(declare-fun b_next!75595 () Bool)

(assert (=> b!2668959 (= b_free!74891 (not b_next!75595))))

(declare-fun tp!843529 () Bool)

(declare-fun b_and!196875 () Bool)

(assert (=> b!2668959 (= tp!843529 b_and!196875)))

(declare-fun bs!479370 () Bool)

(declare-fun b!2668956 () Bool)

(declare-fun b!2668953 () Bool)

(assert (= bs!479370 (and b!2668956 b!2668953)))

(declare-fun lambda!99616 () Int)

(declare-fun lambda!99615 () Int)

(assert (=> bs!479370 (not (= lambda!99616 lambda!99615))))

(declare-fun b!2668979 () Bool)

(declare-fun e!1681890 () Bool)

(assert (=> b!2668979 (= e!1681890 true)))

(declare-fun b!2668978 () Bool)

(declare-fun e!1681889 () Bool)

(assert (=> b!2668978 (= e!1681889 e!1681890)))

(declare-fun b!2668977 () Bool)

(declare-fun e!1681888 () Bool)

(assert (=> b!2668977 (= e!1681888 e!1681889)))

(assert (=> b!2668956 e!1681888))

(assert (= b!2668978 b!2668979))

(assert (= b!2668977 b!2668978))

(declare-datatypes ((List!30747 0))(
  ( (Nil!30647) (Cons!30647 (h!36067 (_ BitVec 16)) (t!223000 List!30747)) )
))
(declare-datatypes ((TokenValue!4893 0))(
  ( (FloatLiteralValue!9786 (text!34696 List!30747)) (TokenValueExt!4892 (__x!19619 Int)) (Broken!24465 (value!150702 List!30747)) (Object!4992) (End!4893) (Def!4893) (Underscore!4893) (Match!4893) (Else!4893) (Error!4893) (Case!4893) (If!4893) (Extends!4893) (Abstract!4893) (Class!4893) (Val!4893) (DelimiterValue!9786 (del!4953 List!30747)) (KeywordValue!4899 (value!150703 List!30747)) (CommentValue!9786 (value!150704 List!30747)) (WhitespaceValue!9786 (value!150705 List!30747)) (IndentationValue!4893 (value!150706 List!30747)) (String!34348) (Int32!4893) (Broken!24466 (value!150707 List!30747)) (Boolean!4894) (Unit!44880) (OperatorValue!4896 (op!4953 List!30747)) (IdentifierValue!9786 (value!150708 List!30747)) (IdentifierValue!9787 (value!150709 List!30747)) (WhitespaceValue!9787 (value!150710 List!30747)) (True!9786) (False!9786) (Broken!24467 (value!150711 List!30747)) (Broken!24468 (value!150712 List!30747)) (True!9787) (RightBrace!4893) (RightBracket!4893) (Colon!4893) (Null!4893) (Comma!4893) (LeftBracket!4893) (False!9787) (LeftBrace!4893) (ImaginaryLiteralValue!4893 (text!34697 List!30747)) (StringLiteralValue!14679 (value!150713 List!30747)) (EOFValue!4893 (value!150714 List!30747)) (IdentValue!4893 (value!150715 List!30747)) (DelimiterValue!9787 (value!150716 List!30747)) (DedentValue!4893 (value!150717 List!30747)) (NewLineValue!4893 (value!150718 List!30747)) (IntegerValue!14679 (value!150719 (_ BitVec 32)) (text!34698 List!30747)) (IntegerValue!14680 (value!150720 Int) (text!34699 List!30747)) (Times!4893) (Or!4893) (Equal!4893) (Minus!4893) (Broken!24469 (value!150721 List!30747)) (And!4893) (Div!4893) (LessEqual!4893) (Mod!4893) (Concat!12708) (Not!4893) (Plus!4893) (SpaceValue!4893 (value!150722 List!30747)) (IntegerValue!14681 (value!150723 Int) (text!34700 List!30747)) (StringLiteralValue!14680 (text!34701 List!30747)) (FloatLiteralValue!9787 (text!34702 List!30747)) (BytesLiteralValue!4893 (value!150724 List!30747)) (CommentValue!9787 (value!150725 List!30747)) (StringLiteralValue!14681 (value!150726 List!30747)) (ErrorTokenValue!4893 (msg!4954 List!30747)) )
))
(declare-datatypes ((C!15788 0))(
  ( (C!15789 (val!9828 Int)) )
))
(declare-datatypes ((List!30748 0))(
  ( (Nil!30648) (Cons!30648 (h!36068 C!15788) (t!223001 List!30748)) )
))
(declare-datatypes ((IArray!19167 0))(
  ( (IArray!19168 (innerList!9641 List!30748)) )
))
(declare-datatypes ((Conc!9581 0))(
  ( (Node!9581 (left!23696 Conc!9581) (right!24026 Conc!9581) (csize!19392 Int) (cheight!9792 Int)) (Leaf!14657 (xs!12611 IArray!19167) (csize!19393 Int)) (Empty!9581) )
))
(declare-datatypes ((BalanceConc!18776 0))(
  ( (BalanceConc!18777 (c!430397 Conc!9581)) )
))
(declare-datatypes ((String!34349 0))(
  ( (String!34350 (value!150727 String)) )
))
(declare-datatypes ((Regex!7815 0))(
  ( (ElementMatch!7815 (c!430398 C!15788)) (Concat!12709 (regOne!16142 Regex!7815) (regTwo!16142 Regex!7815)) (EmptyExpr!7815) (Star!7815 (reg!8144 Regex!7815)) (EmptyLang!7815) (Union!7815 (regOne!16143 Regex!7815) (regTwo!16143 Regex!7815)) )
))
(declare-datatypes ((TokenValueInjection!9226 0))(
  ( (TokenValueInjection!9227 (toValue!6609 Int) (toChars!6468 Int)) )
))
(declare-datatypes ((Rule!9142 0))(
  ( (Rule!9143 (regex!4671 Regex!7815) (tag!5173 String!34349) (isSeparator!4671 Bool) (transformation!4671 TokenValueInjection!9226)) )
))
(declare-datatypes ((List!30749 0))(
  ( (Nil!30649) (Cons!30649 (h!36069 Rule!9142) (t!223002 List!30749)) )
))
(declare-fun rules!1712 () List!30749)

(get-info :version)

(assert (= (and b!2668956 ((_ is Cons!30649) rules!1712)) b!2668977))

(declare-fun order!16769 () Int)

(declare-fun order!16767 () Int)

(declare-fun dynLambda!13240 (Int Int) Int)

(declare-fun dynLambda!13241 (Int Int) Int)

(assert (=> b!2668979 (< (dynLambda!13240 order!16767 (toValue!6609 (transformation!4671 (h!36069 rules!1712)))) (dynLambda!13241 order!16769 lambda!99616))))

(declare-fun order!16771 () Int)

(declare-fun dynLambda!13242 (Int Int) Int)

(assert (=> b!2668979 (< (dynLambda!13242 order!16771 (toChars!6468 (transformation!4671 (h!36069 rules!1712)))) (dynLambda!13241 order!16769 lambda!99616))))

(assert (=> b!2668956 true))

(declare-fun b!2668949 () Bool)

(declare-fun res!1122125 () Bool)

(declare-fun e!1681875 () Bool)

(assert (=> b!2668949 (=> (not res!1122125) (not e!1681875))))

(declare-datatypes ((Token!8812 0))(
  ( (Token!8813 (value!150728 TokenValue!4893) (rule!7077 Rule!9142) (size!23725 Int) (originalCharacters!5437 List!30748)) )
))
(declare-datatypes ((List!30750 0))(
  ( (Nil!30650) (Cons!30650 (h!36070 Token!8812) (t!223003 List!30750)) )
))
(declare-fun l!4335 () List!30750)

(declare-fun contains!5879 (List!30750 Token!8812) Bool)

(assert (=> b!2668949 (= res!1122125 (contains!5879 l!4335 (h!36070 l!4335)))))

(declare-fun b!2668950 () Bool)

(declare-fun e!1681874 () Bool)

(declare-fun e!1681868 () Bool)

(declare-fun tp!843535 () Bool)

(assert (=> b!2668950 (= e!1681874 (and e!1681868 tp!843535))))

(declare-fun res!1122122 () Bool)

(assert (=> start!259590 (=> (not res!1122122) (not e!1681875))))

(declare-datatypes ((LexerInterface!4268 0))(
  ( (LexerInterfaceExt!4265 (__x!19620 Int)) (Lexer!4266) )
))
(declare-fun thiss!14116 () LexerInterface!4268)

(assert (=> start!259590 (= res!1122122 ((_ is Lexer!4266) thiss!14116))))

(assert (=> start!259590 e!1681875))

(assert (=> start!259590 true))

(assert (=> start!259590 e!1681874))

(declare-fun e!1681872 () Bool)

(assert (=> start!259590 e!1681872))

(declare-fun separatorToken!152 () Token!8812)

(declare-fun e!1681881 () Bool)

(declare-fun inv!41654 (Token!8812) Bool)

(assert (=> start!259590 (and (inv!41654 separatorToken!152) e!1681881)))

(declare-fun b!2668951 () Bool)

(declare-fun e!1681866 () Bool)

(declare-fun tp!843526 () Bool)

(declare-fun inv!21 (TokenValue!4893) Bool)

(assert (=> b!2668951 (= e!1681881 (and (inv!21 (value!150728 separatorToken!152)) e!1681866 tp!843526))))

(declare-fun b!2668952 () Bool)

(declare-fun res!1122121 () Bool)

(assert (=> b!2668952 (=> (not res!1122121) (not e!1681875))))

(declare-fun rulesProduceIndividualToken!1980 (LexerInterface!4268 List!30749 Token!8812) Bool)

(assert (=> b!2668952 (= res!1122121 (rulesProduceIndividualToken!1980 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun res!1122128 () Bool)

(assert (=> b!2668953 (=> (not res!1122128) (not e!1681875))))

(declare-fun forall!6484 (List!30750 Int) Bool)

(assert (=> b!2668953 (= res!1122128 (forall!6484 l!4335 lambda!99615))))

(declare-fun b!2668954 () Bool)

(declare-fun res!1122123 () Bool)

(assert (=> b!2668954 (=> (not res!1122123) (not e!1681875))))

(declare-fun sepAndNonSepRulesDisjointChars!1244 (List!30749 List!30749) Bool)

(assert (=> b!2668954 (= res!1122123 (sepAndNonSepRulesDisjointChars!1244 rules!1712 rules!1712))))

(declare-fun b!2668955 () Bool)

(declare-fun res!1122127 () Bool)

(assert (=> b!2668955 (=> (not res!1122127) (not e!1681875))))

(assert (=> b!2668955 (= res!1122127 ((_ is Cons!30650) l!4335))))

(assert (=> b!2668956 (= e!1681875 false)))

(declare-datatypes ((Unit!44881 0))(
  ( (Unit!44882) )
))
(declare-fun lt!940372 () Unit!44881)

(declare-fun forallContained!1013 (List!30750 Int Token!8812) Unit!44881)

(assert (=> b!2668956 (= lt!940372 (forallContained!1013 l!4335 lambda!99616 (h!36070 l!4335)))))

(declare-fun b!2668957 () Bool)

(declare-fun res!1122124 () Bool)

(assert (=> b!2668957 (=> (not res!1122124) (not e!1681875))))

(declare-fun rulesProduceEachTokenIndividuallyList!1490 (LexerInterface!4268 List!30749 List!30750) Bool)

(assert (=> b!2668957 (= res!1122124 (rulesProduceEachTokenIndividuallyList!1490 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1681876 () Bool)

(assert (=> b!2668958 (= e!1681876 (and tp!843538 tp!843530))))

(declare-fun e!1681870 () Bool)

(assert (=> b!2668959 (= e!1681870 (and tp!843528 tp!843529))))

(declare-fun tp!843533 () Bool)

(declare-fun b!2668960 () Bool)

(declare-fun e!1681871 () Bool)

(declare-fun inv!41651 (String!34349) Bool)

(declare-fun inv!41655 (TokenValueInjection!9226) Bool)

(assert (=> b!2668960 (= e!1681866 (and tp!843533 (inv!41651 (tag!5173 (rule!7077 separatorToken!152))) (inv!41655 (transformation!4671 (rule!7077 separatorToken!152))) e!1681871))))

(declare-fun b!2668961 () Bool)

(declare-fun tp!843534 () Bool)

(assert (=> b!2668961 (= e!1681868 (and tp!843534 (inv!41651 (tag!5173 (h!36069 rules!1712))) (inv!41655 (transformation!4671 (h!36069 rules!1712))) e!1681870))))

(declare-fun b!2668962 () Bool)

(declare-fun res!1122126 () Bool)

(assert (=> b!2668962 (=> (not res!1122126) (not e!1681875))))

(declare-fun rulesInvariant!3768 (LexerInterface!4268 List!30749) Bool)

(assert (=> b!2668962 (= res!1122126 (rulesInvariant!3768 thiss!14116 rules!1712))))

(declare-fun b!2668963 () Bool)

(declare-fun tp!843536 () Bool)

(declare-fun e!1681879 () Bool)

(assert (=> b!2668963 (= e!1681879 (and tp!843536 (inv!41651 (tag!5173 (rule!7077 (h!36070 l!4335)))) (inv!41655 (transformation!4671 (rule!7077 (h!36070 l!4335)))) e!1681876))))

(declare-fun b!2668964 () Bool)

(declare-fun res!1122130 () Bool)

(assert (=> b!2668964 (=> (not res!1122130) (not e!1681875))))

(assert (=> b!2668964 (= res!1122130 (isSeparator!4671 (rule!7077 separatorToken!152)))))

(assert (=> b!2668965 (= e!1681871 (and tp!843537 tp!843531))))

(declare-fun b!2668966 () Bool)

(declare-fun res!1122129 () Bool)

(assert (=> b!2668966 (=> (not res!1122129) (not e!1681875))))

(declare-fun isEmpty!17539 (List!30749) Bool)

(assert (=> b!2668966 (= res!1122129 (not (isEmpty!17539 rules!1712)))))

(declare-fun e!1681873 () Bool)

(declare-fun tp!843527 () Bool)

(declare-fun b!2668967 () Bool)

(assert (=> b!2668967 (= e!1681872 (and (inv!41654 (h!36070 l!4335)) e!1681873 tp!843527))))

(declare-fun b!2668968 () Bool)

(declare-fun tp!843532 () Bool)

(assert (=> b!2668968 (= e!1681873 (and (inv!21 (value!150728 (h!36070 l!4335))) e!1681879 tp!843532))))

(assert (= (and start!259590 res!1122122) b!2668966))

(assert (= (and b!2668966 res!1122129) b!2668962))

(assert (= (and b!2668962 res!1122126) b!2668957))

(assert (= (and b!2668957 res!1122124) b!2668952))

(assert (= (and b!2668952 res!1122121) b!2668964))

(assert (= (and b!2668964 res!1122130) b!2668953))

(assert (= (and b!2668953 res!1122128) b!2668954))

(assert (= (and b!2668954 res!1122123) b!2668955))

(assert (= (and b!2668955 res!1122127) b!2668949))

(assert (= (and b!2668949 res!1122125) b!2668956))

(assert (= b!2668961 b!2668959))

(assert (= b!2668950 b!2668961))

(assert (= (and start!259590 ((_ is Cons!30649) rules!1712)) b!2668950))

(assert (= b!2668963 b!2668958))

(assert (= b!2668968 b!2668963))

(assert (= b!2668967 b!2668968))

(assert (= (and start!259590 ((_ is Cons!30650) l!4335)) b!2668967))

(assert (= b!2668960 b!2668965))

(assert (= b!2668951 b!2668960))

(assert (= start!259590 b!2668951))

(declare-fun m!3035575 () Bool)

(assert (=> b!2668967 m!3035575))

(declare-fun m!3035577 () Bool)

(assert (=> b!2668956 m!3035577))

(declare-fun m!3035579 () Bool)

(assert (=> start!259590 m!3035579))

(declare-fun m!3035581 () Bool)

(assert (=> b!2668952 m!3035581))

(declare-fun m!3035583 () Bool)

(assert (=> b!2668962 m!3035583))

(declare-fun m!3035585 () Bool)

(assert (=> b!2668954 m!3035585))

(declare-fun m!3035587 () Bool)

(assert (=> b!2668953 m!3035587))

(declare-fun m!3035589 () Bool)

(assert (=> b!2668961 m!3035589))

(declare-fun m!3035591 () Bool)

(assert (=> b!2668961 m!3035591))

(declare-fun m!3035593 () Bool)

(assert (=> b!2668966 m!3035593))

(declare-fun m!3035595 () Bool)

(assert (=> b!2668963 m!3035595))

(declare-fun m!3035597 () Bool)

(assert (=> b!2668963 m!3035597))

(declare-fun m!3035599 () Bool)

(assert (=> b!2668957 m!3035599))

(declare-fun m!3035601 () Bool)

(assert (=> b!2668951 m!3035601))

(declare-fun m!3035603 () Bool)

(assert (=> b!2668968 m!3035603))

(declare-fun m!3035605 () Bool)

(assert (=> b!2668949 m!3035605))

(declare-fun m!3035607 () Bool)

(assert (=> b!2668960 m!3035607))

(declare-fun m!3035609 () Bool)

(assert (=> b!2668960 m!3035609))

(check-sat b_and!196871 (not b_next!75589) (not b_next!75595) b_and!196869 (not b!2668977) (not b!2668966) (not b!2668957) (not b!2668952) (not b_next!75591) (not b_next!75593) (not b!2668968) (not b!2668961) b_and!196867 (not b!2668960) (not b!2668962) (not b!2668954) (not b!2668950) (not b!2668956) b_and!196873 (not b_next!75587) (not b!2668963) (not b!2668953) (not b!2668967) b_and!196875 (not b!2668949) (not b_next!75585) b_and!196865 (not start!259590) (not b!2668951))
(check-sat b_and!196871 (not b_next!75589) (not b_next!75593) b_and!196867 (not b_next!75595) b_and!196869 b_and!196875 (not b_next!75585) (not b_next!75591) b_and!196865 b_and!196873 (not b_next!75587))
