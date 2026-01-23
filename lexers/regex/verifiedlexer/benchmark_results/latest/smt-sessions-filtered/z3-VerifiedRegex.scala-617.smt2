; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19830 () Bool)

(assert start!19830)

(declare-fun b!183140 () Bool)

(declare-fun b_free!7145 () Bool)

(declare-fun b_next!7145 () Bool)

(assert (=> b!183140 (= b_free!7145 (not b_next!7145))))

(declare-fun tp!86896 () Bool)

(declare-fun b_and!12557 () Bool)

(assert (=> b!183140 (= tp!86896 b_and!12557)))

(declare-fun b_free!7147 () Bool)

(declare-fun b_next!7147 () Bool)

(assert (=> b!183140 (= b_free!7147 (not b_next!7147))))

(declare-fun tp!86890 () Bool)

(declare-fun b_and!12559 () Bool)

(assert (=> b!183140 (= tp!86890 b_and!12559)))

(declare-fun b!183158 () Bool)

(declare-fun b_free!7149 () Bool)

(declare-fun b_next!7149 () Bool)

(assert (=> b!183158 (= b_free!7149 (not b_next!7149))))

(declare-fun tp!86891 () Bool)

(declare-fun b_and!12561 () Bool)

(assert (=> b!183158 (= tp!86891 b_and!12561)))

(declare-fun b_free!7151 () Bool)

(declare-fun b_next!7151 () Bool)

(assert (=> b!183158 (= b_free!7151 (not b_next!7151))))

(declare-fun tp!86886 () Bool)

(declare-fun b_and!12563 () Bool)

(assert (=> b!183158 (= tp!86886 b_and!12563)))

(declare-fun b!183138 () Bool)

(declare-fun b_free!7153 () Bool)

(declare-fun b_next!7153 () Bool)

(assert (=> b!183138 (= b_free!7153 (not b_next!7153))))

(declare-fun tp!86892 () Bool)

(declare-fun b_and!12565 () Bool)

(assert (=> b!183138 (= tp!86892 b_and!12565)))

(declare-fun b_free!7155 () Bool)

(declare-fun b_next!7155 () Bool)

(assert (=> b!183138 (= b_free!7155 (not b_next!7155))))

(declare-fun tp!86887 () Bool)

(declare-fun b_and!12567 () Bool)

(assert (=> b!183138 (= tp!86887 b_and!12567)))

(declare-fun bs!18202 () Bool)

(declare-fun b!183154 () Bool)

(declare-fun b!183146 () Bool)

(assert (= bs!18202 (and b!183154 b!183146)))

(declare-fun lambda!5458 () Int)

(declare-fun lambda!5457 () Int)

(assert (=> bs!18202 (not (= lambda!5458 lambda!5457))))

(declare-fun b!183180 () Bool)

(declare-fun e!111807 () Bool)

(assert (=> b!183180 (= e!111807 true)))

(declare-fun b!183179 () Bool)

(declare-fun e!111806 () Bool)

(assert (=> b!183179 (= e!111806 e!111807)))

(declare-fun b!183178 () Bool)

(declare-fun e!111805 () Bool)

(assert (=> b!183178 (= e!111805 e!111806)))

(assert (=> b!183154 e!111805))

(assert (= b!183179 b!183180))

(assert (= b!183178 b!183179))

(declare-datatypes ((List!3075 0))(
  ( (Nil!3065) (Cons!3065 (h!8462 (_ BitVec 16)) (t!28433 List!3075)) )
))
(declare-datatypes ((TokenValue!579 0))(
  ( (FloatLiteralValue!1158 (text!4498 List!3075)) (TokenValueExt!578 (__x!2645 Int)) (Broken!2895 (value!20164 List!3075)) (Object!588) (End!579) (Def!579) (Underscore!579) (Match!579) (Else!579) (Error!579) (Case!579) (If!579) (Extends!579) (Abstract!579) (Class!579) (Val!579) (DelimiterValue!1158 (del!639 List!3075)) (KeywordValue!585 (value!20165 List!3075)) (CommentValue!1158 (value!20166 List!3075)) (WhitespaceValue!1158 (value!20167 List!3075)) (IndentationValue!579 (value!20168 List!3075)) (String!3974) (Int32!579) (Broken!2896 (value!20169 List!3075)) (Boolean!580) (Unit!2825) (OperatorValue!582 (op!639 List!3075)) (IdentifierValue!1158 (value!20170 List!3075)) (IdentifierValue!1159 (value!20171 List!3075)) (WhitespaceValue!1159 (value!20172 List!3075)) (True!1158) (False!1158) (Broken!2897 (value!20173 List!3075)) (Broken!2898 (value!20174 List!3075)) (True!1159) (RightBrace!579) (RightBracket!579) (Colon!579) (Null!579) (Comma!579) (LeftBracket!579) (False!1159) (LeftBrace!579) (ImaginaryLiteralValue!579 (text!4499 List!3075)) (StringLiteralValue!1737 (value!20175 List!3075)) (EOFValue!579 (value!20176 List!3075)) (IdentValue!579 (value!20177 List!3075)) (DelimiterValue!1159 (value!20178 List!3075)) (DedentValue!579 (value!20179 List!3075)) (NewLineValue!579 (value!20180 List!3075)) (IntegerValue!1737 (value!20181 (_ BitVec 32)) (text!4500 List!3075)) (IntegerValue!1738 (value!20182 Int) (text!4501 List!3075)) (Times!579) (Or!579) (Equal!579) (Minus!579) (Broken!2899 (value!20183 List!3075)) (And!579) (Div!579) (LessEqual!579) (Mod!579) (Concat!1360) (Not!579) (Plus!579) (SpaceValue!579 (value!20184 List!3075)) (IntegerValue!1739 (value!20185 Int) (text!4502 List!3075)) (StringLiteralValue!1738 (text!4503 List!3075)) (FloatLiteralValue!1159 (text!4504 List!3075)) (BytesLiteralValue!579 (value!20186 List!3075)) (CommentValue!1159 (value!20187 List!3075)) (StringLiteralValue!1739 (value!20188 List!3075)) (ErrorTokenValue!579 (msg!640 List!3075)) )
))
(declare-datatypes ((C!2484 0))(
  ( (C!2485 (val!1128 Int)) )
))
(declare-datatypes ((List!3076 0))(
  ( (Nil!3066) (Cons!3066 (h!8463 C!2484) (t!28434 List!3076)) )
))
(declare-datatypes ((IArray!1873 0))(
  ( (IArray!1874 (innerList!994 List!3076)) )
))
(declare-datatypes ((Conc!936 0))(
  ( (Node!936 (left!2385 Conc!936) (right!2715 Conc!936) (csize!2102 Int) (cheight!1147 Int)) (Leaf!1554 (xs!3531 IArray!1873) (csize!2103 Int)) (Empty!936) )
))
(declare-datatypes ((BalanceConc!1880 0))(
  ( (BalanceConc!1881 (c!35633 Conc!936)) )
))
(declare-datatypes ((TokenValueInjection!930 0))(
  ( (TokenValueInjection!931 (toValue!1228 Int) (toChars!1087 Int)) )
))
(declare-datatypes ((String!3975 0))(
  ( (String!3976 (value!20189 String)) )
))
(declare-datatypes ((Regex!781 0))(
  ( (ElementMatch!781 (c!35634 C!2484)) (Concat!1361 (regOne!2074 Regex!781) (regTwo!2074 Regex!781)) (EmptyExpr!781) (Star!781 (reg!1110 Regex!781)) (EmptyLang!781) (Union!781 (regOne!2075 Regex!781) (regTwo!2075 Regex!781)) )
))
(declare-datatypes ((Rule!914 0))(
  ( (Rule!915 (regex!557 Regex!781) (tag!735 String!3975) (isSeparator!557 Bool) (transformation!557 TokenValueInjection!930)) )
))
(declare-datatypes ((List!3077 0))(
  ( (Nil!3067) (Cons!3067 (h!8464 Rule!914) (t!28435 List!3077)) )
))
(declare-fun rules!1920 () List!3077)

(get-info :version)

(assert (= (and b!183154 ((_ is Cons!3067) rules!1920)) b!183178))

(declare-fun order!1817 () Int)

(declare-fun order!1819 () Int)

(declare-fun dynLambda!1245 (Int Int) Int)

(declare-fun dynLambda!1246 (Int Int) Int)

(assert (=> b!183180 (< (dynLambda!1245 order!1817 (toValue!1228 (transformation!557 (h!8464 rules!1920)))) (dynLambda!1246 order!1819 lambda!5458))))

(declare-fun order!1821 () Int)

(declare-fun dynLambda!1247 (Int Int) Int)

(assert (=> b!183180 (< (dynLambda!1247 order!1821 (toChars!1087 (transformation!557 (h!8464 rules!1920)))) (dynLambda!1246 order!1819 lambda!5458))))

(assert (=> b!183154 true))

(declare-fun e!111777 () Bool)

(declare-fun b!183137 () Bool)

(declare-datatypes ((Token!858 0))(
  ( (Token!859 (value!20190 TokenValue!579) (rule!1072 Rule!914) (size!2493 Int) (originalCharacters!600 List!3076)) )
))
(declare-datatypes ((List!3078 0))(
  ( (Nil!3068) (Cons!3068 (h!8465 Token!858) (t!28436 List!3078)) )
))
(declare-fun tokens!465 () List!3078)

(declare-fun tp!86895 () Bool)

(declare-fun e!111790 () Bool)

(declare-fun inv!3895 (String!3975) Bool)

(declare-fun inv!3898 (TokenValueInjection!930) Bool)

(assert (=> b!183137 (= e!111777 (and tp!86895 (inv!3895 (tag!735 (rule!1072 (h!8465 tokens!465)))) (inv!3898 (transformation!557 (rule!1072 (h!8465 tokens!465)))) e!111790))))

(declare-fun e!111791 () Bool)

(assert (=> b!183138 (= e!111791 (and tp!86892 tp!86887))))

(declare-fun b!183139 () Bool)

(declare-fun res!83182 () Bool)

(declare-fun e!111788 () Bool)

(assert (=> b!183139 (=> res!83182 e!111788)))

(declare-datatypes ((LexerInterface!443 0))(
  ( (LexerInterfaceExt!440 (__x!2646 Int)) (Lexer!441) )
))
(declare-fun thiss!17480 () LexerInterface!443)

(declare-fun rulesProduceIndividualToken!192 (LexerInterface!443 List!3077 Token!858) Bool)

(assert (=> b!183139 (= res!83182 (not (rulesProduceIndividualToken!192 thiss!17480 rules!1920 (h!8465 tokens!465))))))

(assert (=> b!183140 (= e!111790 (and tp!86896 tp!86890))))

(declare-fun tp!86894 () Bool)

(declare-fun e!111775 () Bool)

(declare-fun b!183141 () Bool)

(declare-fun inv!21 (TokenValue!579) Bool)

(assert (=> b!183141 (= e!111775 (and (inv!21 (value!20190 (h!8465 tokens!465))) e!111777 tp!86894))))

(declare-fun b!183142 () Bool)

(declare-fun e!111780 () Bool)

(declare-fun e!111782 () Bool)

(assert (=> b!183142 (= e!111780 e!111782)))

(declare-fun res!83176 () Bool)

(assert (=> b!183142 (=> (not res!83176) (not e!111782))))

(declare-fun lt!60753 () List!3076)

(declare-fun lt!60758 () List!3076)

(assert (=> b!183142 (= res!83176 (= lt!60753 lt!60758))))

(declare-datatypes ((IArray!1875 0))(
  ( (IArray!1876 (innerList!995 List!3078)) )
))
(declare-datatypes ((Conc!937 0))(
  ( (Node!937 (left!2386 Conc!937) (right!2716 Conc!937) (csize!2104 Int) (cheight!1148 Int)) (Leaf!1555 (xs!3532 IArray!1875) (csize!2105 Int)) (Empty!937) )
))
(declare-datatypes ((BalanceConc!1882 0))(
  ( (BalanceConc!1883 (c!35635 Conc!937)) )
))
(declare-fun lt!60751 () BalanceConc!1882)

(declare-fun separatorToken!170 () Token!858)

(declare-fun list!1127 (BalanceConc!1880) List!3076)

(declare-fun printWithSeparatorTokenWhenNeededRec!126 (LexerInterface!443 List!3077 BalanceConc!1882 Token!858 Int) BalanceConc!1880)

(assert (=> b!183142 (= lt!60758 (list!1127 (printWithSeparatorTokenWhenNeededRec!126 thiss!17480 rules!1920 lt!60751 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!136 (LexerInterface!443 List!3077 List!3078 Token!858) List!3076)

(assert (=> b!183142 (= lt!60753 (printWithSeparatorTokenWhenNeededList!136 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!183144 () Bool)

(declare-fun res!83175 () Bool)

(declare-fun e!111786 () Bool)

(assert (=> b!183144 (=> (not res!83175) (not e!111786))))

(declare-datatypes ((tuple2!3070 0))(
  ( (tuple2!3071 (_1!1751 Token!858) (_2!1751 List!3076)) )
))
(declare-fun lt!60757 () tuple2!3070)

(declare-fun isEmpty!1423 (List!3076) Bool)

(assert (=> b!183144 (= res!83175 (isEmpty!1423 (_2!1751 lt!60757)))))

(declare-fun b!183145 () Bool)

(declare-fun e!111794 () Bool)

(assert (=> b!183145 (= e!111794 true)))

(declare-datatypes ((Option!392 0))(
  ( (None!391) (Some!391 (v!13878 tuple2!3070)) )
))
(declare-fun lt!60745 () Option!392)

(declare-fun lt!60749 () List!3076)

(declare-fun maxPrefix!173 (LexerInterface!443 List!3077 List!3076) Option!392)

(assert (=> b!183145 (= lt!60745 (maxPrefix!173 thiss!17480 rules!1920 lt!60749))))

(declare-fun lt!60760 () tuple2!3070)

(assert (=> b!183145 (= lt!60749 (_2!1751 lt!60760))))

(declare-datatypes ((Unit!2826 0))(
  ( (Unit!2827) )
))
(declare-fun lt!60755 () Unit!2826)

(declare-fun lt!60754 () List!3076)

(declare-fun lemmaSamePrefixThenSameSuffix!78 (List!3076 List!3076 List!3076 List!3076 List!3076) Unit!2826)

(assert (=> b!183145 (= lt!60755 (lemmaSamePrefixThenSameSuffix!78 lt!60754 lt!60749 lt!60754 (_2!1751 lt!60760) lt!60753))))

(declare-fun get!868 (Option!392) tuple2!3070)

(assert (=> b!183145 (= lt!60760 (get!868 (maxPrefix!173 thiss!17480 rules!1920 lt!60753)))))

(declare-fun lt!60746 () List!3076)

(declare-fun isPrefix!253 (List!3076 List!3076) Bool)

(assert (=> b!183145 (isPrefix!253 lt!60754 lt!60746)))

(declare-fun lt!60756 () Unit!2826)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!148 (List!3076 List!3076) Unit!2826)

(assert (=> b!183145 (= lt!60756 (lemmaConcatTwoListThenFirstIsPrefix!148 lt!60754 lt!60749))))

(declare-fun e!111778 () Bool)

(assert (=> b!183145 e!111778))

(declare-fun res!83173 () Bool)

(assert (=> b!183145 (=> res!83173 e!111778)))

(declare-fun isEmpty!1424 (List!3078) Bool)

(assert (=> b!183145 (= res!83173 (isEmpty!1424 tokens!465))))

(declare-fun lt!60741 () Unit!2826)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!18 (LexerInterface!443 List!3077 List!3078 Token!858) Unit!2826)

(assert (=> b!183145 (= lt!60741 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!18 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!83190 () Bool)

(assert (=> b!183146 (=> (not res!83190) (not e!111780))))

(declare-fun forall!631 (List!3078 Int) Bool)

(assert (=> b!183146 (= res!83190 (forall!631 tokens!465 lambda!5457))))

(declare-fun b!183147 () Bool)

(declare-fun e!111776 () Bool)

(declare-fun e!111772 () Bool)

(assert (=> b!183147 (= e!111776 e!111772)))

(declare-fun res!83183 () Bool)

(assert (=> b!183147 (=> res!83183 e!111772)))

(declare-fun e!111783 () Bool)

(assert (=> b!183147 (= res!83183 e!111783)))

(declare-fun res!83174 () Bool)

(assert (=> b!183147 (=> (not res!83174) (not e!111783))))

(declare-fun lt!60748 () Bool)

(assert (=> b!183147 (= res!83174 (not lt!60748))))

(assert (=> b!183147 (= lt!60748 (= lt!60753 lt!60746))))

(declare-fun tp!86893 () Bool)

(declare-fun e!111795 () Bool)

(declare-fun b!183148 () Bool)

(assert (=> b!183148 (= e!111795 (and tp!86893 (inv!3895 (tag!735 (rule!1072 separatorToken!170))) (inv!3898 (transformation!557 (rule!1072 separatorToken!170))) e!111791))))

(declare-fun b!183149 () Bool)

(declare-fun res!83181 () Bool)

(assert (=> b!183149 (=> (not res!83181) (not e!111780))))

(assert (=> b!183149 (= res!83181 (rulesProduceIndividualToken!192 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!183150 () Bool)

(declare-fun res!83189 () Bool)

(assert (=> b!183150 (=> (not res!83189) (not e!111780))))

(assert (=> b!183150 (= res!83189 (isSeparator!557 (rule!1072 separatorToken!170)))))

(declare-fun b!183151 () Bool)

(declare-fun lt!60761 () List!3076)

(declare-fun ++!724 (List!3076 List!3076) List!3076)

(assert (=> b!183151 (= e!111783 (not (= lt!60753 (++!724 lt!60754 lt!60761))))))

(declare-fun b!183152 () Bool)

(declare-fun e!111773 () Bool)

(assert (=> b!183152 (= e!111773 e!111794)))

(declare-fun res!83169 () Bool)

(assert (=> b!183152 (=> res!83169 e!111794)))

(assert (=> b!183152 (= res!83169 (not lt!60748))))

(assert (=> b!183152 e!111786))

(declare-fun res!83170 () Bool)

(assert (=> b!183152 (=> (not res!83170) (not e!111786))))

(assert (=> b!183152 (= res!83170 (= (_1!1751 lt!60757) (h!8465 tokens!465)))))

(declare-fun lt!60752 () Option!392)

(assert (=> b!183152 (= lt!60757 (get!868 lt!60752))))

(declare-fun isDefined!243 (Option!392) Bool)

(assert (=> b!183152 (isDefined!243 lt!60752)))

(assert (=> b!183152 (= lt!60752 (maxPrefix!173 thiss!17480 rules!1920 lt!60754))))

(declare-fun b!183153 () Bool)

(declare-fun res!83187 () Bool)

(assert (=> b!183153 (=> (not res!83187) (not e!111780))))

(declare-fun sepAndNonSepRulesDisjointChars!146 (List!3077 List!3077) Bool)

(assert (=> b!183153 (= res!83187 (sepAndNonSepRulesDisjointChars!146 rules!1920 rules!1920))))

(assert (=> b!183154 (= e!111788 e!111773)))

(declare-fun res!83185 () Bool)

(assert (=> b!183154 (=> res!83185 e!111773)))

(declare-datatypes ((tuple2!3072 0))(
  ( (tuple2!3073 (_1!1752 Token!858) (_2!1752 BalanceConc!1880)) )
))
(declare-datatypes ((Option!393 0))(
  ( (None!392) (Some!392 (v!13879 tuple2!3072)) )
))
(declare-fun isDefined!244 (Option!393) Bool)

(declare-fun maxPrefixZipperSequence!136 (LexerInterface!443 List!3077 BalanceConc!1880) Option!393)

(declare-fun seqFromList!491 (List!3076) BalanceConc!1880)

(assert (=> b!183154 (= res!83185 (not (isDefined!244 (maxPrefixZipperSequence!136 thiss!17480 rules!1920 (seqFromList!491 (originalCharacters!600 (h!8465 tokens!465)))))))))

(declare-fun lt!60747 () Unit!2826)

(declare-fun forallContained!124 (List!3078 Int Token!858) Unit!2826)

(assert (=> b!183154 (= lt!60747 (forallContained!124 tokens!465 lambda!5458 (h!8465 tokens!465)))))

(assert (=> b!183154 (= lt!60754 (originalCharacters!600 (h!8465 tokens!465)))))

(declare-fun b!183155 () Bool)

(declare-fun e!111781 () Bool)

(declare-fun tp!86897 () Bool)

(declare-fun inv!3899 (Token!858) Bool)

(assert (=> b!183155 (= e!111781 (and (inv!3899 (h!8465 tokens!465)) e!111775 tp!86897))))

(declare-fun res!83180 () Bool)

(declare-fun e!111789 () Bool)

(assert (=> start!19830 (=> (not res!83180) (not e!111789))))

(assert (=> start!19830 (= res!83180 ((_ is Lexer!441) thiss!17480))))

(assert (=> start!19830 e!111789))

(assert (=> start!19830 true))

(declare-fun e!111798 () Bool)

(assert (=> start!19830 e!111798))

(declare-fun e!111797 () Bool)

(assert (=> start!19830 (and (inv!3899 separatorToken!170) e!111797)))

(assert (=> start!19830 e!111781))

(declare-fun b!183143 () Bool)

(declare-fun res!83191 () Bool)

(assert (=> b!183143 (=> (not res!83191) (not e!111789))))

(declare-fun isEmpty!1425 (List!3077) Bool)

(assert (=> b!183143 (= res!83191 (not (isEmpty!1425 rules!1920)))))

(declare-fun b!183156 () Bool)

(declare-fun res!83184 () Bool)

(assert (=> b!183156 (=> (not res!83184) (not e!111789))))

(declare-fun rulesInvariant!409 (LexerInterface!443 List!3077) Bool)

(assert (=> b!183156 (= res!83184 (rulesInvariant!409 thiss!17480 rules!1920))))

(declare-fun b!183157 () Bool)

(declare-fun e!111796 () Bool)

(declare-fun tp!86889 () Bool)

(assert (=> b!183157 (= e!111798 (and e!111796 tp!86889))))

(declare-fun e!111792 () Bool)

(assert (=> b!183158 (= e!111792 (and tp!86891 tp!86886))))

(declare-fun b!183159 () Bool)

(assert (=> b!183159 (= e!111772 e!111788)))

(declare-fun res!83179 () Bool)

(assert (=> b!183159 (=> res!83179 e!111788)))

(declare-fun lt!60763 () List!3076)

(declare-fun lt!60762 () List!3076)

(assert (=> b!183159 (= res!83179 (or (not (= lt!60762 lt!60763)) (not (= lt!60763 lt!60754)) (not (= lt!60762 lt!60754))))))

(declare-fun printList!127 (LexerInterface!443 List!3078) List!3076)

(assert (=> b!183159 (= lt!60763 (printList!127 thiss!17480 (Cons!3068 (h!8465 tokens!465) Nil!3068)))))

(declare-fun lt!60743 () BalanceConc!1880)

(assert (=> b!183159 (= lt!60762 (list!1127 lt!60743))))

(declare-fun lt!60750 () BalanceConc!1882)

(declare-fun printTailRec!137 (LexerInterface!443 BalanceConc!1882 Int BalanceConc!1880) BalanceConc!1880)

(assert (=> b!183159 (= lt!60743 (printTailRec!137 thiss!17480 lt!60750 0 (BalanceConc!1881 Empty!936)))))

(declare-fun print!174 (LexerInterface!443 BalanceConc!1882) BalanceConc!1880)

(assert (=> b!183159 (= lt!60743 (print!174 thiss!17480 lt!60750))))

(declare-fun singletonSeq!109 (Token!858) BalanceConc!1882)

(assert (=> b!183159 (= lt!60750 (singletonSeq!109 (h!8465 tokens!465)))))

(declare-fun b!183160 () Bool)

(declare-fun res!83186 () Bool)

(assert (=> b!183160 (=> (not res!83186) (not e!111782))))

(assert (=> b!183160 (= res!83186 (= (list!1127 (seqFromList!491 lt!60753)) lt!60758))))

(declare-fun b!183161 () Bool)

(declare-fun tp!86885 () Bool)

(assert (=> b!183161 (= e!111796 (and tp!86885 (inv!3895 (tag!735 (h!8464 rules!1920))) (inv!3898 (transformation!557 (h!8464 rules!1920))) e!111792))))

(declare-fun b!183162 () Bool)

(declare-fun res!83171 () Bool)

(assert (=> b!183162 (=> res!83171 e!111788)))

(declare-fun isEmpty!1426 (BalanceConc!1882) Bool)

(declare-datatypes ((tuple2!3074 0))(
  ( (tuple2!3075 (_1!1753 BalanceConc!1882) (_2!1753 BalanceConc!1880)) )
))
(declare-fun lex!243 (LexerInterface!443 List!3077 BalanceConc!1880) tuple2!3074)

(assert (=> b!183162 (= res!83171 (isEmpty!1426 (_1!1753 (lex!243 thiss!17480 rules!1920 (seqFromList!491 lt!60754)))))))

(declare-fun b!183163 () Bool)

(assert (=> b!183163 (= e!111782 (not e!111776))))

(declare-fun res!83188 () Bool)

(assert (=> b!183163 (=> res!83188 e!111776)))

(declare-fun seqFromList!492 (List!3078) BalanceConc!1882)

(assert (=> b!183163 (= res!83188 (not (= lt!60761 (list!1127 (printWithSeparatorTokenWhenNeededRec!126 thiss!17480 rules!1920 (seqFromList!492 (t!28436 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!60759 () List!3076)

(assert (=> b!183163 (= lt!60759 lt!60746)))

(assert (=> b!183163 (= lt!60746 (++!724 lt!60754 lt!60749))))

(declare-fun lt!60744 () List!3076)

(assert (=> b!183163 (= lt!60759 (++!724 (++!724 lt!60754 lt!60744) lt!60761))))

(declare-fun lt!60742 () Unit!2826)

(declare-fun lemmaConcatAssociativity!246 (List!3076 List!3076 List!3076) Unit!2826)

(assert (=> b!183163 (= lt!60742 (lemmaConcatAssociativity!246 lt!60754 lt!60744 lt!60761))))

(declare-fun charsOf!212 (Token!858) BalanceConc!1880)

(assert (=> b!183163 (= lt!60754 (list!1127 (charsOf!212 (h!8465 tokens!465))))))

(assert (=> b!183163 (= lt!60749 (++!724 lt!60744 lt!60761))))

(assert (=> b!183163 (= lt!60761 (printWithSeparatorTokenWhenNeededList!136 thiss!17480 rules!1920 (t!28436 tokens!465) separatorToken!170))))

(assert (=> b!183163 (= lt!60744 (list!1127 (charsOf!212 separatorToken!170)))))

(declare-fun b!183164 () Bool)

(declare-fun tp!86888 () Bool)

(assert (=> b!183164 (= e!111797 (and (inv!21 (value!20190 separatorToken!170)) e!111795 tp!86888))))

(declare-fun b!183165 () Bool)

(declare-fun e!111793 () Bool)

(declare-fun lt!60764 () Option!392)

(declare-fun head!638 (List!3078) Token!858)

(assert (=> b!183165 (= e!111793 (= (_1!1751 (get!868 lt!60764)) (head!638 tokens!465)))))

(declare-fun b!183166 () Bool)

(assert (=> b!183166 (= e!111778 e!111793)))

(declare-fun res!83178 () Bool)

(assert (=> b!183166 (=> (not res!83178) (not e!111793))))

(assert (=> b!183166 (= res!83178 (isDefined!243 lt!60764))))

(assert (=> b!183166 (= lt!60764 (maxPrefix!173 thiss!17480 rules!1920 lt!60753))))

(declare-fun b!183167 () Bool)

(declare-fun matchR!119 (Regex!781 List!3076) Bool)

(assert (=> b!183167 (= e!111786 (matchR!119 (regex!557 (rule!1072 (h!8465 tokens!465))) lt!60754))))

(declare-fun b!183168 () Bool)

(assert (=> b!183168 (= e!111789 e!111780)))

(declare-fun res!83177 () Bool)

(assert (=> b!183168 (=> (not res!83177) (not e!111780))))

(declare-fun rulesProduceEachTokenIndividually!235 (LexerInterface!443 List!3077 BalanceConc!1882) Bool)

(assert (=> b!183168 (= res!83177 (rulesProduceEachTokenIndividually!235 thiss!17480 rules!1920 lt!60751))))

(assert (=> b!183168 (= lt!60751 (seqFromList!492 tokens!465))))

(declare-fun b!183169 () Bool)

(declare-fun res!83172 () Bool)

(assert (=> b!183169 (=> (not res!83172) (not e!111780))))

(assert (=> b!183169 (= res!83172 ((_ is Cons!3068) tokens!465))))

(assert (= (and start!19830 res!83180) b!183143))

(assert (= (and b!183143 res!83191) b!183156))

(assert (= (and b!183156 res!83184) b!183168))

(assert (= (and b!183168 res!83177) b!183149))

(assert (= (and b!183149 res!83181) b!183150))

(assert (= (and b!183150 res!83189) b!183146))

(assert (= (and b!183146 res!83190) b!183153))

(assert (= (and b!183153 res!83187) b!183169))

(assert (= (and b!183169 res!83172) b!183142))

(assert (= (and b!183142 res!83176) b!183160))

(assert (= (and b!183160 res!83186) b!183163))

(assert (= (and b!183163 (not res!83188)) b!183147))

(assert (= (and b!183147 res!83174) b!183151))

(assert (= (and b!183147 (not res!83183)) b!183159))

(assert (= (and b!183159 (not res!83179)) b!183139))

(assert (= (and b!183139 (not res!83182)) b!183162))

(assert (= (and b!183162 (not res!83171)) b!183154))

(assert (= (and b!183154 (not res!83185)) b!183152))

(assert (= (and b!183152 res!83170) b!183144))

(assert (= (and b!183144 res!83175) b!183167))

(assert (= (and b!183152 (not res!83169)) b!183145))

(assert (= (and b!183145 (not res!83173)) b!183166))

(assert (= (and b!183166 res!83178) b!183165))

(assert (= b!183161 b!183158))

(assert (= b!183157 b!183161))

(assert (= (and start!19830 ((_ is Cons!3067) rules!1920)) b!183157))

(assert (= b!183148 b!183138))

(assert (= b!183164 b!183148))

(assert (= start!19830 b!183164))

(assert (= b!183137 b!183140))

(assert (= b!183141 b!183137))

(assert (= b!183155 b!183141))

(assert (= (and start!19830 ((_ is Cons!3068) tokens!465)) b!183155))

(declare-fun m!186305 () Bool)

(assert (=> b!183137 m!186305))

(declare-fun m!186307 () Bool)

(assert (=> b!183137 m!186307))

(declare-fun m!186309 () Bool)

(assert (=> b!183141 m!186309))

(declare-fun m!186311 () Bool)

(assert (=> b!183154 m!186311))

(assert (=> b!183154 m!186311))

(declare-fun m!186313 () Bool)

(assert (=> b!183154 m!186313))

(assert (=> b!183154 m!186313))

(declare-fun m!186315 () Bool)

(assert (=> b!183154 m!186315))

(declare-fun m!186317 () Bool)

(assert (=> b!183154 m!186317))

(declare-fun m!186319 () Bool)

(assert (=> b!183143 m!186319))

(declare-fun m!186321 () Bool)

(assert (=> b!183159 m!186321))

(declare-fun m!186323 () Bool)

(assert (=> b!183159 m!186323))

(declare-fun m!186325 () Bool)

(assert (=> b!183159 m!186325))

(declare-fun m!186327 () Bool)

(assert (=> b!183159 m!186327))

(declare-fun m!186329 () Bool)

(assert (=> b!183159 m!186329))

(declare-fun m!186331 () Bool)

(assert (=> b!183144 m!186331))

(declare-fun m!186333 () Bool)

(assert (=> b!183152 m!186333))

(declare-fun m!186335 () Bool)

(assert (=> b!183152 m!186335))

(declare-fun m!186337 () Bool)

(assert (=> b!183152 m!186337))

(declare-fun m!186339 () Bool)

(assert (=> b!183164 m!186339))

(declare-fun m!186341 () Bool)

(assert (=> start!19830 m!186341))

(declare-fun m!186343 () Bool)

(assert (=> b!183167 m!186343))

(declare-fun m!186345 () Bool)

(assert (=> b!183149 m!186345))

(declare-fun m!186347 () Bool)

(assert (=> b!183151 m!186347))

(declare-fun m!186349 () Bool)

(assert (=> b!183163 m!186349))

(declare-fun m!186351 () Bool)

(assert (=> b!183163 m!186351))

(declare-fun m!186353 () Bool)

(assert (=> b!183163 m!186353))

(assert (=> b!183163 m!186353))

(declare-fun m!186355 () Bool)

(assert (=> b!183163 m!186355))

(declare-fun m!186357 () Bool)

(assert (=> b!183163 m!186357))

(declare-fun m!186359 () Bool)

(assert (=> b!183163 m!186359))

(assert (=> b!183163 m!186357))

(declare-fun m!186361 () Bool)

(assert (=> b!183163 m!186361))

(declare-fun m!186363 () Bool)

(assert (=> b!183163 m!186363))

(assert (=> b!183163 m!186349))

(declare-fun m!186365 () Bool)

(assert (=> b!183163 m!186365))

(declare-fun m!186367 () Bool)

(assert (=> b!183163 m!186367))

(declare-fun m!186369 () Bool)

(assert (=> b!183163 m!186369))

(assert (=> b!183163 m!186367))

(declare-fun m!186371 () Bool)

(assert (=> b!183163 m!186371))

(assert (=> b!183163 m!186365))

(declare-fun m!186373 () Bool)

(assert (=> b!183163 m!186373))

(declare-fun m!186375 () Bool)

(assert (=> b!183148 m!186375))

(declare-fun m!186377 () Bool)

(assert (=> b!183148 m!186377))

(declare-fun m!186379 () Bool)

(assert (=> b!183139 m!186379))

(declare-fun m!186381 () Bool)

(assert (=> b!183162 m!186381))

(assert (=> b!183162 m!186381))

(declare-fun m!186383 () Bool)

(assert (=> b!183162 m!186383))

(declare-fun m!186385 () Bool)

(assert (=> b!183162 m!186385))

(declare-fun m!186387 () Bool)

(assert (=> b!183146 m!186387))

(declare-fun m!186389 () Bool)

(assert (=> b!183166 m!186389))

(declare-fun m!186391 () Bool)

(assert (=> b!183166 m!186391))

(declare-fun m!186393 () Bool)

(assert (=> b!183160 m!186393))

(assert (=> b!183160 m!186393))

(declare-fun m!186395 () Bool)

(assert (=> b!183160 m!186395))

(declare-fun m!186397 () Bool)

(assert (=> b!183168 m!186397))

(declare-fun m!186399 () Bool)

(assert (=> b!183168 m!186399))

(declare-fun m!186401 () Bool)

(assert (=> b!183145 m!186401))

(declare-fun m!186403 () Bool)

(assert (=> b!183145 m!186403))

(declare-fun m!186405 () Bool)

(assert (=> b!183145 m!186405))

(assert (=> b!183145 m!186391))

(assert (=> b!183145 m!186391))

(declare-fun m!186407 () Bool)

(assert (=> b!183145 m!186407))

(declare-fun m!186409 () Bool)

(assert (=> b!183145 m!186409))

(declare-fun m!186411 () Bool)

(assert (=> b!183145 m!186411))

(declare-fun m!186413 () Bool)

(assert (=> b!183145 m!186413))

(declare-fun m!186415 () Bool)

(assert (=> b!183142 m!186415))

(assert (=> b!183142 m!186415))

(declare-fun m!186417 () Bool)

(assert (=> b!183142 m!186417))

(declare-fun m!186419 () Bool)

(assert (=> b!183142 m!186419))

(declare-fun m!186421 () Bool)

(assert (=> b!183161 m!186421))

(declare-fun m!186423 () Bool)

(assert (=> b!183161 m!186423))

(declare-fun m!186425 () Bool)

(assert (=> b!183155 m!186425))

(declare-fun m!186427 () Bool)

(assert (=> b!183165 m!186427))

(declare-fun m!186429 () Bool)

(assert (=> b!183165 m!186429))

(declare-fun m!186431 () Bool)

(assert (=> b!183153 m!186431))

(declare-fun m!186433 () Bool)

(assert (=> b!183156 m!186433))

(check-sat (not start!19830) (not b!183151) (not b!183153) (not b!183155) (not b!183156) (not b_next!7153) (not b_next!7147) (not b!183160) (not b_next!7149) (not b_next!7151) (not b!183137) (not b!183166) (not b_next!7145) (not b!183154) (not b!183148) b_and!12563 (not b!183142) (not b!183149) (not b!183164) (not b!183146) (not b!183157) b_and!12561 b_and!12559 b_and!12567 (not b!183161) (not b!183163) (not b!183159) (not b!183145) (not b!183178) (not b!183152) (not b!183167) (not b_next!7155) b_and!12557 (not b!183141) (not b!183143) (not b!183162) (not b!183144) b_and!12565 (not b!183165) (not b!183139) (not b!183168))
(check-sat (not b_next!7145) b_and!12563 b_and!12561 (not b_next!7153) (not b_next!7147) b_and!12565 (not b_next!7149) (not b_next!7151) b_and!12559 b_and!12567 (not b_next!7155) b_and!12557)
