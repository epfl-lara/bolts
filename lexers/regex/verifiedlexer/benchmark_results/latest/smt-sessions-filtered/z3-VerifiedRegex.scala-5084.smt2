; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259902 () Bool)

(assert start!259902)

(declare-fun b!2671890 () Bool)

(declare-fun b_free!75161 () Bool)

(declare-fun b_next!75865 () Bool)

(assert (=> b!2671890 (= b_free!75161 (not b_next!75865))))

(declare-fun tp!844822 () Bool)

(declare-fun b_and!197289 () Bool)

(assert (=> b!2671890 (= tp!844822 b_and!197289)))

(declare-fun b_free!75163 () Bool)

(declare-fun b_next!75867 () Bool)

(assert (=> b!2671890 (= b_free!75163 (not b_next!75867))))

(declare-fun tp!844817 () Bool)

(declare-fun b_and!197291 () Bool)

(assert (=> b!2671890 (= tp!844817 b_and!197291)))

(declare-fun b!2671887 () Bool)

(declare-fun b_free!75165 () Bool)

(declare-fun b_next!75869 () Bool)

(assert (=> b!2671887 (= b_free!75165 (not b_next!75869))))

(declare-fun tp!844815 () Bool)

(declare-fun b_and!197293 () Bool)

(assert (=> b!2671887 (= tp!844815 b_and!197293)))

(declare-fun b_free!75167 () Bool)

(declare-fun b_next!75871 () Bool)

(assert (=> b!2671887 (= b_free!75167 (not b_next!75871))))

(declare-fun tp!844816 () Bool)

(declare-fun b_and!197295 () Bool)

(assert (=> b!2671887 (= tp!844816 b_and!197295)))

(declare-fun b!2671881 () Bool)

(declare-fun b_free!75169 () Bool)

(declare-fun b_next!75873 () Bool)

(assert (=> b!2671881 (= b_free!75169 (not b_next!75873))))

(declare-fun tp!844820 () Bool)

(declare-fun b_and!197297 () Bool)

(assert (=> b!2671881 (= tp!844820 b_and!197297)))

(declare-fun b_free!75171 () Bool)

(declare-fun b_next!75875 () Bool)

(assert (=> b!2671881 (= b_free!75171 (not b_next!75875))))

(declare-fun tp!844821 () Bool)

(declare-fun b_and!197299 () Bool)

(assert (=> b!2671881 (= tp!844821 b_and!197299)))

(declare-fun bs!479554 () Bool)

(declare-fun b!2671895 () Bool)

(declare-fun b!2671884 () Bool)

(assert (= bs!479554 (and b!2671895 b!2671884)))

(declare-fun lambda!99794 () Int)

(declare-fun lambda!99793 () Int)

(assert (=> bs!479554 (not (= lambda!99794 lambda!99793))))

(declare-fun b!2671909 () Bool)

(declare-fun e!1684022 () Bool)

(assert (=> b!2671909 (= e!1684022 true)))

(declare-fun b!2671908 () Bool)

(declare-fun e!1684021 () Bool)

(assert (=> b!2671908 (= e!1684021 e!1684022)))

(declare-fun b!2671907 () Bool)

(declare-fun e!1684020 () Bool)

(assert (=> b!2671907 (= e!1684020 e!1684021)))

(assert (=> b!2671895 e!1684020))

(assert (= b!2671908 b!2671909))

(assert (= b!2671907 b!2671908))

(declare-datatypes ((List!30825 0))(
  ( (Nil!30725) (Cons!30725 (h!36145 (_ BitVec 16)) (t!223332 List!30825)) )
))
(declare-datatypes ((TokenValue!4911 0))(
  ( (FloatLiteralValue!9822 (text!34822 List!30825)) (TokenValueExt!4910 (__x!19655 Int)) (Broken!24555 (value!151215 List!30825)) (Object!5010) (End!4911) (Def!4911) (Underscore!4911) (Match!4911) (Else!4911) (Error!4911) (Case!4911) (If!4911) (Extends!4911) (Abstract!4911) (Class!4911) (Val!4911) (DelimiterValue!9822 (del!4971 List!30825)) (KeywordValue!4917 (value!151216 List!30825)) (CommentValue!9822 (value!151217 List!30825)) (WhitespaceValue!9822 (value!151218 List!30825)) (IndentationValue!4911 (value!151219 List!30825)) (String!34438) (Int32!4911) (Broken!24556 (value!151220 List!30825)) (Boolean!4912) (Unit!44946) (OperatorValue!4914 (op!4971 List!30825)) (IdentifierValue!9822 (value!151221 List!30825)) (IdentifierValue!9823 (value!151222 List!30825)) (WhitespaceValue!9823 (value!151223 List!30825)) (True!9822) (False!9822) (Broken!24557 (value!151224 List!30825)) (Broken!24558 (value!151225 List!30825)) (True!9823) (RightBrace!4911) (RightBracket!4911) (Colon!4911) (Null!4911) (Comma!4911) (LeftBracket!4911) (False!9823) (LeftBrace!4911) (ImaginaryLiteralValue!4911 (text!34823 List!30825)) (StringLiteralValue!14733 (value!151226 List!30825)) (EOFValue!4911 (value!151227 List!30825)) (IdentValue!4911 (value!151228 List!30825)) (DelimiterValue!9823 (value!151229 List!30825)) (DedentValue!4911 (value!151230 List!30825)) (NewLineValue!4911 (value!151231 List!30825)) (IntegerValue!14733 (value!151232 (_ BitVec 32)) (text!34824 List!30825)) (IntegerValue!14734 (value!151233 Int) (text!34825 List!30825)) (Times!4911) (Or!4911) (Equal!4911) (Minus!4911) (Broken!24559 (value!151234 List!30825)) (And!4911) (Div!4911) (LessEqual!4911) (Mod!4911) (Concat!12744) (Not!4911) (Plus!4911) (SpaceValue!4911 (value!151235 List!30825)) (IntegerValue!14735 (value!151236 Int) (text!34826 List!30825)) (StringLiteralValue!14734 (text!34827 List!30825)) (FloatLiteralValue!9823 (text!34828 List!30825)) (BytesLiteralValue!4911 (value!151237 List!30825)) (CommentValue!9823 (value!151238 List!30825)) (StringLiteralValue!14735 (value!151239 List!30825)) (ErrorTokenValue!4911 (msg!4972 List!30825)) )
))
(declare-datatypes ((C!15824 0))(
  ( (C!15825 (val!9846 Int)) )
))
(declare-datatypes ((List!30826 0))(
  ( (Nil!30726) (Cons!30726 (h!36146 C!15824) (t!223333 List!30826)) )
))
(declare-datatypes ((IArray!19221 0))(
  ( (IArray!19222 (innerList!9668 List!30826)) )
))
(declare-datatypes ((Conc!9608 0))(
  ( (Node!9608 (left!23768 Conc!9608) (right!24098 Conc!9608) (csize!19446 Int) (cheight!9819 Int)) (Leaf!14693 (xs!12638 IArray!19221) (csize!19447 Int)) (Empty!9608) )
))
(declare-datatypes ((BalanceConc!18830 0))(
  ( (BalanceConc!18831 (c!430630 Conc!9608)) )
))
(declare-datatypes ((Regex!7833 0))(
  ( (ElementMatch!7833 (c!430631 C!15824)) (Concat!12745 (regOne!16178 Regex!7833) (regTwo!16178 Regex!7833)) (EmptyExpr!7833) (Star!7833 (reg!8162 Regex!7833)) (EmptyLang!7833) (Union!7833 (regOne!16179 Regex!7833) (regTwo!16179 Regex!7833)) )
))
(declare-datatypes ((String!34439 0))(
  ( (String!34440 (value!151240 String)) )
))
(declare-datatypes ((TokenValueInjection!9262 0))(
  ( (TokenValueInjection!9263 (toValue!6631 Int) (toChars!6490 Int)) )
))
(declare-datatypes ((Rule!9178 0))(
  ( (Rule!9179 (regex!4689 Regex!7833) (tag!5191 String!34439) (isSeparator!4689 Bool) (transformation!4689 TokenValueInjection!9262)) )
))
(declare-datatypes ((List!30827 0))(
  ( (Nil!30727) (Cons!30727 (h!36147 Rule!9178) (t!223334 List!30827)) )
))
(declare-fun rules!1712 () List!30827)

(get-info :version)

(assert (= (and b!2671895 ((_ is Cons!30727) rules!1712)) b!2671907))

(declare-fun order!16883 () Int)

(declare-fun order!16885 () Int)

(declare-fun dynLambda!13312 (Int Int) Int)

(declare-fun dynLambda!13313 (Int Int) Int)

(assert (=> b!2671909 (< (dynLambda!13312 order!16883 (toValue!6631 (transformation!4689 (h!36147 rules!1712)))) (dynLambda!13313 order!16885 lambda!99794))))

(declare-fun order!16887 () Int)

(declare-fun dynLambda!13314 (Int Int) Int)

(assert (=> b!2671909 (< (dynLambda!13314 order!16887 (toChars!6490 (transformation!4689 (h!36147 rules!1712)))) (dynLambda!13313 order!16885 lambda!99794))))

(assert (=> b!2671895 true))

(declare-fun tp!844818 () Bool)

(declare-datatypes ((Token!8848 0))(
  ( (Token!8849 (value!151241 TokenValue!4911) (rule!7095 Rule!9178) (size!23761 Int) (originalCharacters!5455 List!30826)) )
))
(declare-datatypes ((List!30828 0))(
  ( (Nil!30728) (Cons!30728 (h!36148 Token!8848) (t!223335 List!30828)) )
))
(declare-fun l!4335 () List!30828)

(declare-fun e!1684008 () Bool)

(declare-fun b!2671878 () Bool)

(declare-fun e!1684005 () Bool)

(declare-fun inv!21 (TokenValue!4911) Bool)

(assert (=> b!2671878 (= e!1684005 (and (inv!21 (value!151241 (h!36148 l!4335))) e!1684008 tp!844818))))

(declare-fun b!2671879 () Bool)

(declare-fun e!1684004 () Bool)

(assert (=> b!2671879 (= e!1684004 (not true))))

(declare-datatypes ((LexerInterface!4286 0))(
  ( (LexerInterfaceExt!4283 (__x!19656 Int)) (Lexer!4284) )
))
(declare-fun thiss!14116 () LexerInterface!4286)

(declare-datatypes ((IArray!19223 0))(
  ( (IArray!19224 (innerList!9669 List!30828)) )
))
(declare-datatypes ((Conc!9609 0))(
  ( (Node!9609 (left!23769 Conc!9609) (right!24099 Conc!9609) (csize!19448 Int) (cheight!9820 Int)) (Leaf!14694 (xs!12639 IArray!19223) (csize!19449 Int)) (Empty!9609) )
))
(declare-datatypes ((BalanceConc!18832 0))(
  ( (BalanceConc!18833 (c!430632 Conc!9609)) )
))
(declare-fun lt!940910 () BalanceConc!18832)

(declare-fun print!1665 (LexerInterface!4286 BalanceConc!18832) BalanceConc!18830)

(declare-fun printTailRec!1141 (LexerInterface!4286 BalanceConc!18832 Int BalanceConc!18830) BalanceConc!18830)

(assert (=> b!2671879 (= (print!1665 thiss!14116 lt!940910) (printTailRec!1141 thiss!14116 lt!940910 0 (BalanceConc!18831 Empty!9608)))))

(declare-fun singletonSeq!2086 (Token!8848) BalanceConc!18832)

(assert (=> b!2671879 (= lt!940910 (singletonSeq!2086 (h!36148 l!4335)))))

(declare-fun b!2671880 () Bool)

(declare-fun res!1123303 () Bool)

(declare-fun e!1684012 () Bool)

(assert (=> b!2671880 (=> (not res!1123303) (not e!1684012))))

(declare-fun sepAndNonSepRulesDisjointChars!1262 (List!30827 List!30827) Bool)

(assert (=> b!2671880 (= res!1123303 (sepAndNonSepRulesDisjointChars!1262 rules!1712 rules!1712))))

(declare-fun e!1684002 () Bool)

(assert (=> b!2671881 (= e!1684002 (and tp!844820 tp!844821))))

(declare-fun b!2671882 () Bool)

(declare-fun res!1123306 () Bool)

(assert (=> b!2671882 (=> (not res!1123306) (not e!1684012))))

(declare-fun rulesProduceEachTokenIndividuallyList!1508 (LexerInterface!4286 List!30827 List!30828) Bool)

(assert (=> b!2671882 (= res!1123306 (rulesProduceEachTokenIndividuallyList!1508 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2671883 () Bool)

(declare-fun res!1123302 () Bool)

(assert (=> b!2671883 (=> (not res!1123302) (not e!1684012))))

(declare-fun separatorToken!152 () Token!8848)

(declare-fun rulesProduceIndividualToken!1998 (LexerInterface!4286 List!30827 Token!8848) Bool)

(assert (=> b!2671883 (= res!1123302 (rulesProduceIndividualToken!1998 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun res!1123301 () Bool)

(assert (=> b!2671884 (=> (not res!1123301) (not e!1684012))))

(declare-fun forall!6504 (List!30828 Int) Bool)

(assert (=> b!2671884 (= res!1123301 (forall!6504 l!4335 lambda!99793))))

(declare-fun e!1684009 () Bool)

(declare-fun tp!844811 () Bool)

(declare-fun b!2671885 () Bool)

(declare-fun inv!41732 (String!34439) Bool)

(declare-fun inv!41735 (TokenValueInjection!9262) Bool)

(assert (=> b!2671885 (= e!1684008 (and tp!844811 (inv!41732 (tag!5191 (rule!7095 (h!36148 l!4335)))) (inv!41735 (transformation!4689 (rule!7095 (h!36148 l!4335)))) e!1684009))))

(declare-fun e!1684011 () Bool)

(declare-fun e!1684000 () Bool)

(declare-fun b!2671886 () Bool)

(declare-fun tp!844812 () Bool)

(assert (=> b!2671886 (= e!1684000 (and tp!844812 (inv!41732 (tag!5191 (h!36147 rules!1712))) (inv!41735 (transformation!4689 (h!36147 rules!1712))) e!1684011))))

(assert (=> b!2671887 (= e!1684009 (and tp!844815 tp!844816))))

(declare-fun res!1123311 () Bool)

(assert (=> start!259902 (=> (not res!1123311) (not e!1684012))))

(assert (=> start!259902 (= res!1123311 ((_ is Lexer!4284) thiss!14116))))

(assert (=> start!259902 e!1684012))

(assert (=> start!259902 true))

(declare-fun e!1683997 () Bool)

(assert (=> start!259902 e!1683997))

(declare-fun e!1684010 () Bool)

(assert (=> start!259902 e!1684010))

(declare-fun e!1683998 () Bool)

(declare-fun inv!41736 (Token!8848) Bool)

(assert (=> start!259902 (and (inv!41736 separatorToken!152) e!1683998)))

(declare-fun tp!844819 () Bool)

(declare-fun b!2671888 () Bool)

(assert (=> b!2671888 (= e!1684010 (and (inv!41736 (h!36148 l!4335)) e!1684005 tp!844819))))

(declare-fun b!2671889 () Bool)

(declare-fun res!1123304 () Bool)

(assert (=> b!2671889 (=> (not res!1123304) (not e!1684012))))

(declare-fun isEmpty!17575 (List!30827) Bool)

(assert (=> b!2671889 (= res!1123304 (not (isEmpty!17575 rules!1712)))))

(assert (=> b!2671890 (= e!1684011 (and tp!844822 tp!844817))))

(declare-fun tp!844814 () Bool)

(declare-fun e!1684003 () Bool)

(declare-fun b!2671891 () Bool)

(assert (=> b!2671891 (= e!1684003 (and tp!844814 (inv!41732 (tag!5191 (rule!7095 separatorToken!152))) (inv!41735 (transformation!4689 (rule!7095 separatorToken!152))) e!1684002))))

(declare-fun b!2671892 () Bool)

(declare-fun res!1123309 () Bool)

(assert (=> b!2671892 (=> (not res!1123309) (not e!1684012))))

(declare-fun contains!5901 (List!30828 Token!8848) Bool)

(assert (=> b!2671892 (= res!1123309 (contains!5901 l!4335 (h!36148 l!4335)))))

(declare-fun b!2671893 () Bool)

(declare-fun res!1123305 () Bool)

(assert (=> b!2671893 (=> (not res!1123305) (not e!1684012))))

(assert (=> b!2671893 (= res!1123305 (isSeparator!4689 (rule!7095 separatorToken!152)))))

(declare-fun b!2671894 () Bool)

(declare-fun res!1123308 () Bool)

(assert (=> b!2671894 (=> (not res!1123308) (not e!1684012))))

(assert (=> b!2671894 (= res!1123308 ((_ is Cons!30728) l!4335))))

(assert (=> b!2671895 (= e!1684012 e!1684004)))

(declare-fun res!1123307 () Bool)

(assert (=> b!2671895 (=> (not res!1123307) (not e!1684004))))

(declare-datatypes ((tuple2!30194 0))(
  ( (tuple2!30195 (_1!17639 Token!8848) (_2!17639 List!30826)) )
))
(declare-datatypes ((Option!6080 0))(
  ( (None!6079) (Some!6079 (v!32614 tuple2!30194)) )
))
(declare-fun lt!940912 () Option!6080)

(declare-fun lt!940909 () Bool)

(assert (=> b!2671895 (= res!1123307 (and (or lt!940909 (not (= (_1!17639 (v!32614 lt!940912)) (h!36148 l!4335)))) (or lt!940909 (= (_1!17639 (v!32614 lt!940912)) (h!36148 l!4335))) ((_ is None!6079) lt!940912)))))

(assert (=> b!2671895 (= lt!940909 (not ((_ is Some!6079) lt!940912)))))

(declare-fun maxPrefix!2326 (LexerInterface!4286 List!30827 List!30826) Option!6080)

(declare-fun ++!7495 (List!30826 List!30826) List!30826)

(declare-fun list!11601 (BalanceConc!18830) List!30826)

(declare-fun charsOf!2954 (Token!8848) BalanceConc!18830)

(declare-fun printWithSeparatorTokenWhenNeededList!682 (LexerInterface!4286 List!30827 List!30828 Token!8848) List!30826)

(assert (=> b!2671895 (= lt!940912 (maxPrefix!2326 thiss!14116 rules!1712 (++!7495 (list!11601 (charsOf!2954 (h!36148 l!4335))) (printWithSeparatorTokenWhenNeededList!682 thiss!14116 rules!1712 (t!223335 l!4335) separatorToken!152))))))

(declare-datatypes ((Unit!44947 0))(
  ( (Unit!44948) )
))
(declare-fun lt!940911 () Unit!44947)

(declare-fun forallContained!1031 (List!30828 Int Token!8848) Unit!44947)

(assert (=> b!2671895 (= lt!940911 (forallContained!1031 l!4335 lambda!99794 (h!36148 l!4335)))))

(declare-fun b!2671896 () Bool)

(declare-fun tp!844810 () Bool)

(assert (=> b!2671896 (= e!1683997 (and e!1684000 tp!844810))))

(declare-fun b!2671897 () Bool)

(declare-fun res!1123310 () Bool)

(assert (=> b!2671897 (=> (not res!1123310) (not e!1684012))))

(declare-fun rulesInvariant!3786 (LexerInterface!4286 List!30827) Bool)

(assert (=> b!2671897 (= res!1123310 (rulesInvariant!3786 thiss!14116 rules!1712))))

(declare-fun b!2671898 () Bool)

(declare-fun tp!844813 () Bool)

(assert (=> b!2671898 (= e!1683998 (and (inv!21 (value!151241 separatorToken!152)) e!1684003 tp!844813))))

(assert (= (and start!259902 res!1123311) b!2671889))

(assert (= (and b!2671889 res!1123304) b!2671897))

(assert (= (and b!2671897 res!1123310) b!2671882))

(assert (= (and b!2671882 res!1123306) b!2671883))

(assert (= (and b!2671883 res!1123302) b!2671893))

(assert (= (and b!2671893 res!1123305) b!2671884))

(assert (= (and b!2671884 res!1123301) b!2671880))

(assert (= (and b!2671880 res!1123303) b!2671894))

(assert (= (and b!2671894 res!1123308) b!2671892))

(assert (= (and b!2671892 res!1123309) b!2671895))

(assert (= (and b!2671895 res!1123307) b!2671879))

(assert (= b!2671886 b!2671890))

(assert (= b!2671896 b!2671886))

(assert (= (and start!259902 ((_ is Cons!30727) rules!1712)) b!2671896))

(assert (= b!2671885 b!2671887))

(assert (= b!2671878 b!2671885))

(assert (= b!2671888 b!2671878))

(assert (= (and start!259902 ((_ is Cons!30728) l!4335)) b!2671888))

(assert (= b!2671891 b!2671881))

(assert (= b!2671898 b!2671891))

(assert (= start!259902 b!2671898))

(declare-fun m!3038071 () Bool)

(assert (=> b!2671889 m!3038071))

(declare-fun m!3038073 () Bool)

(assert (=> b!2671882 m!3038073))

(declare-fun m!3038075 () Bool)

(assert (=> b!2671892 m!3038075))

(declare-fun m!3038077 () Bool)

(assert (=> b!2671898 m!3038077))

(declare-fun m!3038079 () Bool)

(assert (=> b!2671891 m!3038079))

(declare-fun m!3038081 () Bool)

(assert (=> b!2671891 m!3038081))

(declare-fun m!3038083 () Bool)

(assert (=> b!2671884 m!3038083))

(declare-fun m!3038085 () Bool)

(assert (=> b!2671880 m!3038085))

(declare-fun m!3038087 () Bool)

(assert (=> b!2671895 m!3038087))

(declare-fun m!3038089 () Bool)

(assert (=> b!2671895 m!3038089))

(assert (=> b!2671895 m!3038089))

(declare-fun m!3038091 () Bool)

(assert (=> b!2671895 m!3038091))

(declare-fun m!3038093 () Bool)

(assert (=> b!2671895 m!3038093))

(assert (=> b!2671895 m!3038087))

(declare-fun m!3038095 () Bool)

(assert (=> b!2671895 m!3038095))

(assert (=> b!2671895 m!3038091))

(assert (=> b!2671895 m!3038093))

(declare-fun m!3038097 () Bool)

(assert (=> b!2671895 m!3038097))

(declare-fun m!3038099 () Bool)

(assert (=> b!2671886 m!3038099))

(declare-fun m!3038101 () Bool)

(assert (=> b!2671886 m!3038101))

(declare-fun m!3038103 () Bool)

(assert (=> b!2671885 m!3038103))

(declare-fun m!3038105 () Bool)

(assert (=> b!2671885 m!3038105))

(declare-fun m!3038107 () Bool)

(assert (=> start!259902 m!3038107))

(declare-fun m!3038109 () Bool)

(assert (=> b!2671878 m!3038109))

(declare-fun m!3038111 () Bool)

(assert (=> b!2671888 m!3038111))

(declare-fun m!3038113 () Bool)

(assert (=> b!2671897 m!3038113))

(declare-fun m!3038115 () Bool)

(assert (=> b!2671879 m!3038115))

(declare-fun m!3038117 () Bool)

(assert (=> b!2671879 m!3038117))

(declare-fun m!3038119 () Bool)

(assert (=> b!2671879 m!3038119))

(declare-fun m!3038121 () Bool)

(assert (=> b!2671883 m!3038121))

(check-sat (not b!2671880) (not b!2671896) (not b!2671892) b_and!197291 (not b_next!75867) (not b!2671879) (not b_next!75869) (not b_next!75871) (not b!2671895) (not b!2671898) (not b_next!75865) (not b!2671891) (not b!2671878) (not b!2671884) b_and!197297 b_and!197295 (not b!2671882) (not b!2671907) (not b!2671889) b_and!197289 (not b!2671888) (not start!259902) (not b_next!75873) b_and!197299 (not b!2671886) (not b!2671883) (not b_next!75875) (not b!2671885) (not b!2671897) b_and!197293)
(check-sat b_and!197289 b_and!197291 (not b_next!75873) (not b_next!75867) (not b_next!75869) (not b_next!75871) b_and!197299 (not b_next!75875) (not b_next!75865) b_and!197293 b_and!197297 b_and!197295)
