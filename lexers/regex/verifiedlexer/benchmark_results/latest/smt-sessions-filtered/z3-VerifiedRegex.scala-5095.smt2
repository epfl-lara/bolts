; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261078 () Bool)

(assert start!261078)

(declare-fun b!2679856 () Bool)

(declare-fun b_free!75585 () Bool)

(declare-fun b_next!76289 () Bool)

(assert (=> b!2679856 (= b_free!75585 (not b_next!76289))))

(declare-fun tp!847198 () Bool)

(declare-fun b_and!198381 () Bool)

(assert (=> b!2679856 (= tp!847198 b_and!198381)))

(declare-fun b_free!75587 () Bool)

(declare-fun b_next!76291 () Bool)

(assert (=> b!2679856 (= b_free!75587 (not b_next!76291))))

(declare-fun tp!847202 () Bool)

(declare-fun b_and!198383 () Bool)

(assert (=> b!2679856 (= tp!847202 b_and!198383)))

(declare-fun b!2679863 () Bool)

(declare-fun b_free!75589 () Bool)

(declare-fun b_next!76293 () Bool)

(assert (=> b!2679863 (= b_free!75589 (not b_next!76293))))

(declare-fun tp!847197 () Bool)

(declare-fun b_and!198385 () Bool)

(assert (=> b!2679863 (= tp!847197 b_and!198385)))

(declare-fun b_free!75591 () Bool)

(declare-fun b_next!76295 () Bool)

(assert (=> b!2679863 (= b_free!75591 (not b_next!76295))))

(declare-fun tp!847196 () Bool)

(declare-fun b_and!198387 () Bool)

(assert (=> b!2679863 (= tp!847196 b_and!198387)))

(declare-fun b!2679853 () Bool)

(declare-fun b_free!75593 () Bool)

(declare-fun b_next!76297 () Bool)

(assert (=> b!2679853 (= b_free!75593 (not b_next!76297))))

(declare-fun tp!847199 () Bool)

(declare-fun b_and!198389 () Bool)

(assert (=> b!2679853 (= tp!847199 b_and!198389)))

(declare-fun b_free!75595 () Bool)

(declare-fun b_next!76299 () Bool)

(assert (=> b!2679853 (= b_free!75595 (not b_next!76299))))

(declare-fun tp!847201 () Bool)

(declare-fun b_and!198391 () Bool)

(assert (=> b!2679853 (= tp!847201 b_and!198391)))

(declare-fun bs!480150 () Bool)

(declare-fun b!2679868 () Bool)

(declare-fun b!2679866 () Bool)

(assert (= bs!480150 (and b!2679868 b!2679866)))

(declare-fun lambda!100100 () Int)

(declare-fun lambda!100099 () Int)

(assert (=> bs!480150 (not (= lambda!100100 lambda!100099))))

(declare-fun b!2679881 () Bool)

(declare-fun e!1689214 () Bool)

(assert (=> b!2679881 (= e!1689214 true)))

(declare-fun b!2679880 () Bool)

(declare-fun e!1689213 () Bool)

(assert (=> b!2679880 (= e!1689213 e!1689214)))

(declare-fun b!2679879 () Bool)

(declare-fun e!1689212 () Bool)

(assert (=> b!2679879 (= e!1689212 e!1689213)))

(assert (=> b!2679868 e!1689212))

(assert (= b!2679880 b!2679881))

(assert (= b!2679879 b!2679880))

(declare-datatypes ((List!30927 0))(
  ( (Nil!30827) (Cons!30827 (h!36247 (_ BitVec 16)) (t!224428 List!30927)) )
))
(declare-datatypes ((TokenValue!4933 0))(
  ( (FloatLiteralValue!9866 (text!34976 List!30927)) (TokenValueExt!4932 (__x!19699 Int)) (Broken!24665 (value!151842 List!30927)) (Object!5032) (End!4933) (Def!4933) (Underscore!4933) (Match!4933) (Else!4933) (Error!4933) (Case!4933) (If!4933) (Extends!4933) (Abstract!4933) (Class!4933) (Val!4933) (DelimiterValue!9866 (del!4993 List!30927)) (KeywordValue!4939 (value!151843 List!30927)) (CommentValue!9866 (value!151844 List!30927)) (WhitespaceValue!9866 (value!151845 List!30927)) (IndentationValue!4933 (value!151846 List!30927)) (String!34548) (Int32!4933) (Broken!24666 (value!151847 List!30927)) (Boolean!4934) (Unit!45064) (OperatorValue!4936 (op!4993 List!30927)) (IdentifierValue!9866 (value!151848 List!30927)) (IdentifierValue!9867 (value!151849 List!30927)) (WhitespaceValue!9867 (value!151850 List!30927)) (True!9866) (False!9866) (Broken!24667 (value!151851 List!30927)) (Broken!24668 (value!151852 List!30927)) (True!9867) (RightBrace!4933) (RightBracket!4933) (Colon!4933) (Null!4933) (Comma!4933) (LeftBracket!4933) (False!9867) (LeftBrace!4933) (ImaginaryLiteralValue!4933 (text!34977 List!30927)) (StringLiteralValue!14799 (value!151853 List!30927)) (EOFValue!4933 (value!151854 List!30927)) (IdentValue!4933 (value!151855 List!30927)) (DelimiterValue!9867 (value!151856 List!30927)) (DedentValue!4933 (value!151857 List!30927)) (NewLineValue!4933 (value!151858 List!30927)) (IntegerValue!14799 (value!151859 (_ BitVec 32)) (text!34978 List!30927)) (IntegerValue!14800 (value!151860 Int) (text!34979 List!30927)) (Times!4933) (Or!4933) (Equal!4933) (Minus!4933) (Broken!24669 (value!151861 List!30927)) (And!4933) (Div!4933) (LessEqual!4933) (Mod!4933) (Concat!12788) (Not!4933) (Plus!4933) (SpaceValue!4933 (value!151862 List!30927)) (IntegerValue!14801 (value!151863 Int) (text!34980 List!30927)) (StringLiteralValue!14800 (text!34981 List!30927)) (FloatLiteralValue!9867 (text!34982 List!30927)) (BytesLiteralValue!4933 (value!151864 List!30927)) (CommentValue!9867 (value!151865 List!30927)) (StringLiteralValue!14801 (value!151866 List!30927)) (ErrorTokenValue!4933 (msg!4994 List!30927)) )
))
(declare-datatypes ((C!15868 0))(
  ( (C!15869 (val!9868 Int)) )
))
(declare-datatypes ((List!30928 0))(
  ( (Nil!30828) (Cons!30828 (h!36248 C!15868) (t!224429 List!30928)) )
))
(declare-datatypes ((IArray!19307 0))(
  ( (IArray!19308 (innerList!9711 List!30928)) )
))
(declare-datatypes ((Conc!9651 0))(
  ( (Node!9651 (left!23866 Conc!9651) (right!24196 Conc!9651) (csize!19532 Int) (cheight!9862 Int)) (Leaf!14747 (xs!12681 IArray!19307) (csize!19533 Int)) (Empty!9651) )
))
(declare-datatypes ((BalanceConc!18916 0))(
  ( (BalanceConc!18917 (c!431781 Conc!9651)) )
))
(declare-datatypes ((TokenValueInjection!9306 0))(
  ( (TokenValueInjection!9307 (toValue!6665 Int) (toChars!6524 Int)) )
))
(declare-datatypes ((Regex!7855 0))(
  ( (ElementMatch!7855 (c!431782 C!15868)) (Concat!12789 (regOne!16222 Regex!7855) (regTwo!16222 Regex!7855)) (EmptyExpr!7855) (Star!7855 (reg!8184 Regex!7855)) (EmptyLang!7855) (Union!7855 (regOne!16223 Regex!7855) (regTwo!16223 Regex!7855)) )
))
(declare-datatypes ((String!34549 0))(
  ( (String!34550 (value!151867 String)) )
))
(declare-datatypes ((Rule!9222 0))(
  ( (Rule!9223 (regex!4711 Regex!7855) (tag!5215 String!34549) (isSeparator!4711 Bool) (transformation!4711 TokenValueInjection!9306)) )
))
(declare-datatypes ((List!30929 0))(
  ( (Nil!30829) (Cons!30829 (h!36249 Rule!9222) (t!224430 List!30929)) )
))
(declare-fun rules!1712 () List!30929)

(get-info :version)

(assert (= (and b!2679868 ((_ is Cons!30829) rules!1712)) b!2679879))

(declare-fun order!17039 () Int)

(declare-fun order!17041 () Int)

(declare-fun dynLambda!13424 (Int Int) Int)

(declare-fun dynLambda!13425 (Int Int) Int)

(assert (=> b!2679881 (< (dynLambda!13424 order!17039 (toValue!6665 (transformation!4711 (h!36249 rules!1712)))) (dynLambda!13425 order!17041 lambda!100100))))

(declare-fun order!17043 () Int)

(declare-fun dynLambda!13426 (Int Int) Int)

(assert (=> b!2679881 (< (dynLambda!13426 order!17043 (toChars!6524 (transformation!4711 (h!36249 rules!1712)))) (dynLambda!13425 order!17041 lambda!100100))))

(assert (=> b!2679868 true))

(declare-fun e!1689198 () Bool)

(declare-fun e!1689193 () Bool)

(declare-datatypes ((Token!8892 0))(
  ( (Token!8893 (value!151868 TokenValue!4933) (rule!7123 Rule!9222) (size!23833 Int) (originalCharacters!5477 List!30928)) )
))
(declare-datatypes ((List!30930 0))(
  ( (Nil!30830) (Cons!30830 (h!36250 Token!8892) (t!224431 List!30930)) )
))
(declare-fun l!4335 () List!30930)

(declare-fun b!2679851 () Bool)

(declare-fun tp!847205 () Bool)

(declare-fun inv!41858 (Token!8892) Bool)

(assert (=> b!2679851 (= e!1689198 (and (inv!41858 (h!36250 l!4335)) e!1689193 tp!847205))))

(declare-fun b!2679852 () Bool)

(declare-fun res!1126655 () Bool)

(declare-fun e!1689190 () Bool)

(assert (=> b!2679852 (=> (not res!1126655) (not e!1689190))))

(declare-datatypes ((LexerInterface!4308 0))(
  ( (LexerInterfaceExt!4305 (__x!19700 Int)) (Lexer!4306) )
))
(declare-fun thiss!14116 () LexerInterface!4308)

(declare-fun rulesInvariant!3808 (LexerInterface!4308 List!30929) Bool)

(assert (=> b!2679852 (= res!1126655 (rulesInvariant!3808 thiss!14116 rules!1712))))

(declare-fun e!1689197 () Bool)

(assert (=> b!2679853 (= e!1689197 (and tp!847199 tp!847201))))

(declare-fun b!2679854 () Bool)

(declare-fun res!1126657 () Bool)

(assert (=> b!2679854 (=> (not res!1126657) (not e!1689190))))

(assert (=> b!2679854 (= res!1126657 ((_ is Cons!30830) l!4335))))

(declare-fun b!2679855 () Bool)

(declare-fun res!1126659 () Bool)

(assert (=> b!2679855 (=> (not res!1126659) (not e!1689190))))

(declare-fun rulesProduceEachTokenIndividuallyList!1530 (LexerInterface!4308 List!30929 List!30930) Bool)

(assert (=> b!2679855 (= res!1126659 (rulesProduceEachTokenIndividuallyList!1530 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1689191 () Bool)

(assert (=> b!2679856 (= e!1689191 (and tp!847198 tp!847202))))

(declare-fun b!2679857 () Bool)

(declare-fun res!1126654 () Bool)

(assert (=> b!2679857 (=> (not res!1126654) (not e!1689190))))

(declare-fun isEmpty!17661 (List!30929) Bool)

(assert (=> b!2679857 (= res!1126654 (not (isEmpty!17661 rules!1712)))))

(declare-fun separatorToken!152 () Token!8892)

(declare-fun b!2679858 () Bool)

(declare-fun e!1689203 () Bool)

(declare-fun tp!847203 () Bool)

(declare-fun inv!41855 (String!34549) Bool)

(declare-fun inv!41859 (TokenValueInjection!9306) Bool)

(assert (=> b!2679858 (= e!1689203 (and tp!847203 (inv!41855 (tag!5215 (rule!7123 separatorToken!152))) (inv!41859 (transformation!4711 (rule!7123 separatorToken!152))) e!1689197))))

(declare-fun b!2679859 () Bool)

(declare-fun res!1126656 () Bool)

(assert (=> b!2679859 (=> (not res!1126656) (not e!1689190))))

(assert (=> b!2679859 (= res!1126656 (isSeparator!4711 (rule!7123 separatorToken!152)))))

(declare-fun b!2679860 () Bool)

(declare-fun e!1689194 () Bool)

(declare-fun e!1689195 () Bool)

(declare-fun tp!847195 () Bool)

(assert (=> b!2679860 (= e!1689194 (and e!1689195 tp!847195))))

(declare-fun b!2679861 () Bool)

(declare-fun res!1126661 () Bool)

(assert (=> b!2679861 (=> (not res!1126661) (not e!1689190))))

(declare-fun sepAndNonSepRulesDisjointChars!1284 (List!30929 List!30929) Bool)

(assert (=> b!2679861 (= res!1126661 (sepAndNonSepRulesDisjointChars!1284 rules!1712 rules!1712))))

(declare-fun e!1689200 () Bool)

(declare-fun tp!847200 () Bool)

(declare-fun b!2679862 () Bool)

(assert (=> b!2679862 (= e!1689195 (and tp!847200 (inv!41855 (tag!5215 (h!36249 rules!1712))) (inv!41859 (transformation!4711 (h!36249 rules!1712))) e!1689200))))

(assert (=> b!2679863 (= e!1689200 (and tp!847197 tp!847196))))

(declare-fun e!1689201 () Bool)

(declare-fun tp!847206 () Bool)

(declare-fun b!2679864 () Bool)

(declare-fun inv!21 (TokenValue!4933) Bool)

(assert (=> b!2679864 (= e!1689201 (and (inv!21 (value!151868 separatorToken!152)) e!1689203 tp!847206))))

(declare-fun b!2679865 () Bool)

(declare-fun res!1126660 () Bool)

(assert (=> b!2679865 (=> (not res!1126660) (not e!1689190))))

(declare-fun contains!5939 (List!30930 Token!8892) Bool)

(assert (=> b!2679865 (= res!1126660 (contains!5939 l!4335 (h!36250 l!4335)))))

(declare-fun res!1126663 () Bool)

(assert (=> start!261078 (=> (not res!1126663) (not e!1689190))))

(assert (=> start!261078 (= res!1126663 ((_ is Lexer!4306) thiss!14116))))

(assert (=> start!261078 e!1689190))

(assert (=> start!261078 true))

(assert (=> start!261078 e!1689194))

(assert (=> start!261078 e!1689198))

(assert (=> start!261078 (and (inv!41858 separatorToken!152) e!1689201)))

(declare-fun res!1126662 () Bool)

(assert (=> b!2679866 (=> (not res!1126662) (not e!1689190))))

(declare-fun forall!6532 (List!30930 Int) Bool)

(assert (=> b!2679866 (= res!1126662 (forall!6532 l!4335 lambda!100099))))

(declare-fun b!2679867 () Bool)

(declare-fun res!1126658 () Bool)

(assert (=> b!2679867 (=> (not res!1126658) (not e!1689190))))

(declare-fun rulesProduceIndividualToken!2020 (LexerInterface!4308 List!30929 Token!8892) Bool)

(assert (=> b!2679867 (= res!1126658 (rulesProduceIndividualToken!2020 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun lt!944030 () Bool)

(declare-datatypes ((tuple2!30294 0))(
  ( (tuple2!30295 (_1!17689 Token!8892) (_2!17689 List!30928)) )
))
(declare-datatypes ((Option!6108 0))(
  ( (None!6107) (Some!6107 (v!32682 tuple2!30294)) )
))
(declare-fun lt!944029 () Option!6108)

(assert (=> b!2679868 (= e!1689190 (and (or lt!944030 (not (= (_1!17689 (v!32682 lt!944029)) (h!36250 l!4335)))) (or lt!944030 (= (_1!17689 (v!32682 lt!944029)) (h!36250 l!4335))) (not ((_ is None!6107) lt!944029))))))

(assert (=> b!2679868 (= lt!944030 (not ((_ is Some!6107) lt!944029)))))

(declare-fun maxPrefix!2344 (LexerInterface!4308 List!30929 List!30928) Option!6108)

(declare-fun ++!7533 (List!30928 List!30928) List!30928)

(declare-fun list!11659 (BalanceConc!18916) List!30928)

(declare-fun charsOf!2972 (Token!8892) BalanceConc!18916)

(declare-fun printWithSeparatorTokenWhenNeededList!700 (LexerInterface!4308 List!30929 List!30930 Token!8892) List!30928)

(assert (=> b!2679868 (= lt!944029 (maxPrefix!2344 thiss!14116 rules!1712 (++!7533 (list!11659 (charsOf!2972 (h!36250 l!4335))) (printWithSeparatorTokenWhenNeededList!700 thiss!14116 rules!1712 (t!224431 l!4335) separatorToken!152))))))

(declare-datatypes ((Unit!45065 0))(
  ( (Unit!45066) )
))
(declare-fun lt!944028 () Unit!45065)

(declare-fun forallContained!1051 (List!30930 Int Token!8892) Unit!45065)

(assert (=> b!2679868 (= lt!944028 (forallContained!1051 l!4335 lambda!100100 (h!36250 l!4335)))))

(declare-fun e!1689202 () Bool)

(declare-fun tp!847204 () Bool)

(declare-fun b!2679869 () Bool)

(assert (=> b!2679869 (= e!1689202 (and tp!847204 (inv!41855 (tag!5215 (rule!7123 (h!36250 l!4335)))) (inv!41859 (transformation!4711 (rule!7123 (h!36250 l!4335)))) e!1689191))))

(declare-fun b!2679870 () Bool)

(declare-fun tp!847194 () Bool)

(assert (=> b!2679870 (= e!1689193 (and (inv!21 (value!151868 (h!36250 l!4335))) e!1689202 tp!847194))))

(assert (= (and start!261078 res!1126663) b!2679857))

(assert (= (and b!2679857 res!1126654) b!2679852))

(assert (= (and b!2679852 res!1126655) b!2679855))

(assert (= (and b!2679855 res!1126659) b!2679867))

(assert (= (and b!2679867 res!1126658) b!2679859))

(assert (= (and b!2679859 res!1126656) b!2679866))

(assert (= (and b!2679866 res!1126662) b!2679861))

(assert (= (and b!2679861 res!1126661) b!2679854))

(assert (= (and b!2679854 res!1126657) b!2679865))

(assert (= (and b!2679865 res!1126660) b!2679868))

(assert (= b!2679862 b!2679863))

(assert (= b!2679860 b!2679862))

(assert (= (and start!261078 ((_ is Cons!30829) rules!1712)) b!2679860))

(assert (= b!2679869 b!2679856))

(assert (= b!2679870 b!2679869))

(assert (= b!2679851 b!2679870))

(assert (= (and start!261078 ((_ is Cons!30830) l!4335)) b!2679851))

(assert (= b!2679858 b!2679853))

(assert (= b!2679864 b!2679858))

(assert (= start!261078 b!2679864))

(declare-fun m!3048281 () Bool)

(assert (=> b!2679869 m!3048281))

(declare-fun m!3048283 () Bool)

(assert (=> b!2679869 m!3048283))

(declare-fun m!3048285 () Bool)

(assert (=> b!2679868 m!3048285))

(declare-fun m!3048287 () Bool)

(assert (=> b!2679868 m!3048287))

(assert (=> b!2679868 m!3048287))

(declare-fun m!3048289 () Bool)

(assert (=> b!2679868 m!3048289))

(declare-fun m!3048291 () Bool)

(assert (=> b!2679868 m!3048291))

(declare-fun m!3048293 () Bool)

(assert (=> b!2679868 m!3048293))

(assert (=> b!2679868 m!3048285))

(assert (=> b!2679868 m!3048289))

(assert (=> b!2679868 m!3048291))

(declare-fun m!3048295 () Bool)

(assert (=> b!2679868 m!3048295))

(declare-fun m!3048297 () Bool)

(assert (=> b!2679862 m!3048297))

(declare-fun m!3048299 () Bool)

(assert (=> b!2679862 m!3048299))

(declare-fun m!3048301 () Bool)

(assert (=> b!2679861 m!3048301))

(declare-fun m!3048303 () Bool)

(assert (=> b!2679866 m!3048303))

(declare-fun m!3048305 () Bool)

(assert (=> b!2679855 m!3048305))

(declare-fun m!3048307 () Bool)

(assert (=> start!261078 m!3048307))

(declare-fun m!3048309 () Bool)

(assert (=> b!2679852 m!3048309))

(declare-fun m!3048311 () Bool)

(assert (=> b!2679870 m!3048311))

(declare-fun m!3048313 () Bool)

(assert (=> b!2679867 m!3048313))

(declare-fun m!3048315 () Bool)

(assert (=> b!2679864 m!3048315))

(declare-fun m!3048317 () Bool)

(assert (=> b!2679858 m!3048317))

(declare-fun m!3048319 () Bool)

(assert (=> b!2679858 m!3048319))

(declare-fun m!3048321 () Bool)

(assert (=> b!2679851 m!3048321))

(declare-fun m!3048323 () Bool)

(assert (=> b!2679865 m!3048323))

(declare-fun m!3048325 () Bool)

(assert (=> b!2679857 m!3048325))

(check-sat (not b!2679851) (not b!2679867) (not b!2679852) (not b!2679870) (not b!2679862) b_and!198381 (not b!2679866) b_and!198387 (not b!2679857) (not b_next!76291) (not b_next!76289) (not b!2679861) (not b!2679858) (not b!2679865) (not b!2679868) (not b!2679855) (not start!261078) b_and!198385 (not b!2679864) b_and!198391 (not b!2679879) b_and!198389 (not b!2679860) (not b_next!76299) (not b_next!76293) b_and!198383 (not b!2679869) (not b_next!76297) (not b_next!76295))
(check-sat b_and!198381 b_and!198387 b_and!198389 (not b_next!76299) (not b_next!76291) (not b_next!76289) b_and!198385 b_and!198391 (not b_next!76293) b_and!198383 (not b_next!76297) (not b_next!76295))
