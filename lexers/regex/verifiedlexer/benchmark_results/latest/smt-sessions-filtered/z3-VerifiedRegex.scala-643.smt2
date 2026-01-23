; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22278 () Bool)

(assert start!22278)

(declare-fun b!206683 () Bool)

(declare-fun b_free!7961 () Bool)

(declare-fun b_next!7961 () Bool)

(assert (=> b!206683 (= b_free!7961 (not b_next!7961))))

(declare-fun tp!90760 () Bool)

(declare-fun b_and!14933 () Bool)

(assert (=> b!206683 (= tp!90760 b_and!14933)))

(declare-fun b_free!7963 () Bool)

(declare-fun b_next!7963 () Bool)

(assert (=> b!206683 (= b_free!7963 (not b_next!7963))))

(declare-fun tp!90752 () Bool)

(declare-fun b_and!14935 () Bool)

(assert (=> b!206683 (= tp!90752 b_and!14935)))

(declare-fun b!206676 () Bool)

(declare-fun b_free!7965 () Bool)

(declare-fun b_next!7965 () Bool)

(assert (=> b!206676 (= b_free!7965 (not b_next!7965))))

(declare-fun tp!90755 () Bool)

(declare-fun b_and!14937 () Bool)

(assert (=> b!206676 (= tp!90755 b_and!14937)))

(declare-fun b_free!7967 () Bool)

(declare-fun b_next!7967 () Bool)

(assert (=> b!206676 (= b_free!7967 (not b_next!7967))))

(declare-fun tp!90762 () Bool)

(declare-fun b_and!14939 () Bool)

(assert (=> b!206676 (= tp!90762 b_and!14939)))

(declare-fun b!206717 () Bool)

(declare-fun b_free!7969 () Bool)

(declare-fun b_next!7969 () Bool)

(assert (=> b!206717 (= b_free!7969 (not b_next!7969))))

(declare-fun tp!90758 () Bool)

(declare-fun b_and!14941 () Bool)

(assert (=> b!206717 (= tp!90758 b_and!14941)))

(declare-fun b_free!7971 () Bool)

(declare-fun b_next!7971 () Bool)

(assert (=> b!206717 (= b_free!7971 (not b_next!7971))))

(declare-fun tp!90757 () Bool)

(declare-fun b_and!14943 () Bool)

(assert (=> b!206717 (= tp!90757 b_and!14943)))

(declare-fun bs!21018 () Bool)

(declare-fun b!206694 () Bool)

(declare-fun b!206685 () Bool)

(assert (= bs!21018 (and b!206694 b!206685)))

(declare-fun lambda!6324 () Int)

(declare-fun lambda!6323 () Int)

(assert (=> bs!21018 (not (= lambda!6324 lambda!6323))))

(declare-fun b!206738 () Bool)

(declare-fun e!127239 () Bool)

(assert (=> b!206738 (= e!127239 true)))

(declare-fun b!206737 () Bool)

(declare-fun e!127238 () Bool)

(assert (=> b!206737 (= e!127238 e!127239)))

(declare-fun b!206736 () Bool)

(declare-fun e!127237 () Bool)

(assert (=> b!206736 (= e!127237 e!127238)))

(assert (=> b!206694 e!127237))

(assert (= b!206737 b!206738))

(assert (= b!206736 b!206737))

(declare-datatypes ((C!2588 0))(
  ( (C!2589 (val!1180 Int)) )
))
(declare-datatypes ((List!3301 0))(
  ( (Nil!3291) (Cons!3291 (h!8688 (_ BitVec 16)) (t!31029 List!3301)) )
))
(declare-datatypes ((TokenValue!631 0))(
  ( (FloatLiteralValue!1262 (text!4862 List!3301)) (TokenValueExt!630 (__x!2749 Int)) (Broken!3155 (value!21646 List!3301)) (Object!640) (End!631) (Def!631) (Underscore!631) (Match!631) (Else!631) (Error!631) (Case!631) (If!631) (Extends!631) (Abstract!631) (Class!631) (Val!631) (DelimiterValue!1262 (del!691 List!3301)) (KeywordValue!637 (value!21647 List!3301)) (CommentValue!1262 (value!21648 List!3301)) (WhitespaceValue!1262 (value!21649 List!3301)) (IndentationValue!631 (value!21650 List!3301)) (String!4234) (Int32!631) (Broken!3156 (value!21651 List!3301)) (Boolean!632) (Unit!3355) (OperatorValue!634 (op!691 List!3301)) (IdentifierValue!1262 (value!21652 List!3301)) (IdentifierValue!1263 (value!21653 List!3301)) (WhitespaceValue!1263 (value!21654 List!3301)) (True!1262) (False!1262) (Broken!3157 (value!21655 List!3301)) (Broken!3158 (value!21656 List!3301)) (True!1263) (RightBrace!631) (RightBracket!631) (Colon!631) (Null!631) (Comma!631) (LeftBracket!631) (False!1263) (LeftBrace!631) (ImaginaryLiteralValue!631 (text!4863 List!3301)) (StringLiteralValue!1893 (value!21657 List!3301)) (EOFValue!631 (value!21658 List!3301)) (IdentValue!631 (value!21659 List!3301)) (DelimiterValue!1263 (value!21660 List!3301)) (DedentValue!631 (value!21661 List!3301)) (NewLineValue!631 (value!21662 List!3301)) (IntegerValue!1893 (value!21663 (_ BitVec 32)) (text!4864 List!3301)) (IntegerValue!1894 (value!21664 Int) (text!4865 List!3301)) (Times!631) (Or!631) (Equal!631) (Minus!631) (Broken!3159 (value!21665 List!3301)) (And!631) (Div!631) (LessEqual!631) (Mod!631) (Concat!1464) (Not!631) (Plus!631) (SpaceValue!631 (value!21666 List!3301)) (IntegerValue!1895 (value!21667 Int) (text!4866 List!3301)) (StringLiteralValue!1894 (text!4867 List!3301)) (FloatLiteralValue!1263 (text!4868 List!3301)) (BytesLiteralValue!631 (value!21668 List!3301)) (CommentValue!1263 (value!21669 List!3301)) (StringLiteralValue!1895 (value!21670 List!3301)) (ErrorTokenValue!631 (msg!692 List!3301)) )
))
(declare-datatypes ((List!3302 0))(
  ( (Nil!3292) (Cons!3292 (h!8689 C!2588) (t!31030 List!3302)) )
))
(declare-datatypes ((IArray!2081 0))(
  ( (IArray!2082 (innerList!1098 List!3302)) )
))
(declare-datatypes ((Conc!1040 0))(
  ( (Node!1040 (left!2619 Conc!1040) (right!2949 Conc!1040) (csize!2310 Int) (cheight!1251 Int)) (Leaf!1684 (xs!3635 IArray!2081) (csize!2311 Int)) (Empty!1040) )
))
(declare-datatypes ((BalanceConc!2088 0))(
  ( (BalanceConc!2089 (c!39591 Conc!1040)) )
))
(declare-datatypes ((TokenValueInjection!1034 0))(
  ( (TokenValueInjection!1035 (toValue!1292 Int) (toChars!1151 Int)) )
))
(declare-datatypes ((Regex!833 0))(
  ( (ElementMatch!833 (c!39592 C!2588)) (Concat!1465 (regOne!2178 Regex!833) (regTwo!2178 Regex!833)) (EmptyExpr!833) (Star!833 (reg!1162 Regex!833)) (EmptyLang!833) (Union!833 (regOne!2179 Regex!833) (regTwo!2179 Regex!833)) )
))
(declare-datatypes ((String!4235 0))(
  ( (String!4236 (value!21671 String)) )
))
(declare-datatypes ((Rule!1018 0))(
  ( (Rule!1019 (regex!609 Regex!833) (tag!797 String!4235) (isSeparator!609 Bool) (transformation!609 TokenValueInjection!1034)) )
))
(declare-datatypes ((List!3303 0))(
  ( (Nil!3293) (Cons!3293 (h!8690 Rule!1018) (t!31031 List!3303)) )
))
(declare-fun rules!1920 () List!3303)

(get-info :version)

(assert (= (and b!206694 ((_ is Cons!3293) rules!1920)) b!206736))

(declare-fun order!2155 () Int)

(declare-fun order!2153 () Int)

(declare-fun dynLambda!1455 (Int Int) Int)

(declare-fun dynLambda!1456 (Int Int) Int)

(assert (=> b!206738 (< (dynLambda!1455 order!2153 (toValue!1292 (transformation!609 (h!8690 rules!1920)))) (dynLambda!1456 order!2155 lambda!6324))))

(declare-fun order!2157 () Int)

(declare-fun dynLambda!1457 (Int Int) Int)

(assert (=> b!206738 (< (dynLambda!1457 order!2157 (toChars!1151 (transformation!609 (h!8690 rules!1920)))) (dynLambda!1456 order!2155 lambda!6324))))

(assert (=> b!206694 true))

(declare-fun b!206671 () Bool)

(declare-datatypes ((Unit!3356 0))(
  ( (Unit!3357) )
))
(declare-fun e!127201 () Unit!3356)

(declare-fun Unit!3358 () Unit!3356)

(assert (=> b!206671 (= e!127201 Unit!3358)))

(declare-datatypes ((Token!962 0))(
  ( (Token!963 (value!21672 TokenValue!631) (rule!1136 Rule!1018) (size!2640 Int) (originalCharacters!652 List!3302)) )
))
(declare-fun lt!74828 () Token!962)

(declare-fun lt!74862 () Unit!3356)

(declare-fun lt!74858 () List!3302)

(declare-fun lt!74855 () C!2588)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!8 (Regex!833 List!3302 C!2588) Unit!3356)

(assert (=> b!206671 (= lt!74862 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!8 (regex!609 (rule!1136 lt!74828)) lt!74858 lt!74855))))

(declare-fun res!94822 () Bool)

(declare-fun matchR!171 (Regex!833 List!3302) Bool)

(assert (=> b!206671 (= res!94822 (not (matchR!171 (regex!609 (rule!1136 lt!74828)) lt!74858)))))

(declare-fun e!127214 () Bool)

(assert (=> b!206671 (=> (not res!94822) (not e!127214))))

(assert (=> b!206671 e!127214))

(declare-fun b!206672 () Bool)

(declare-fun e!127216 () Bool)

(declare-fun separatorToken!170 () Token!962)

(declare-fun lt!74864 () Rule!1018)

(assert (=> b!206672 (= e!127216 (= (rule!1136 separatorToken!170) lt!74864))))

(declare-fun b!206673 () Bool)

(declare-fun e!127194 () Bool)

(declare-datatypes ((tuple2!3442 0))(
  ( (tuple2!3443 (_1!1937 Token!962) (_2!1937 List!3302)) )
))
(declare-datatypes ((Option!519 0))(
  ( (None!518) (Some!518 (v!14077 tuple2!3442)) )
))
(declare-fun lt!74844 () Option!519)

(declare-datatypes ((List!3304 0))(
  ( (Nil!3294) (Cons!3294 (h!8691 Token!962) (t!31032 List!3304)) )
))
(declare-fun tokens!465 () List!3304)

(declare-fun get!987 (Option!519) tuple2!3442)

(declare-fun head!713 (List!3304) Token!962)

(assert (=> b!206673 (= e!127194 (= (_1!1937 (get!987 lt!74844)) (head!713 tokens!465)))))

(declare-fun b!206674 () Bool)

(declare-fun e!127208 () Bool)

(declare-fun e!127192 () Bool)

(assert (=> b!206674 (= e!127208 e!127192)))

(declare-fun res!94823 () Bool)

(assert (=> b!206674 (=> (not res!94823) (not e!127192))))

(declare-datatypes ((IArray!2083 0))(
  ( (IArray!2084 (innerList!1099 List!3304)) )
))
(declare-datatypes ((Conc!1041 0))(
  ( (Node!1041 (left!2620 Conc!1041) (right!2950 Conc!1041) (csize!2312 Int) (cheight!1252 Int)) (Leaf!1685 (xs!3636 IArray!2083) (csize!2313 Int)) (Empty!1041) )
))
(declare-datatypes ((BalanceConc!2090 0))(
  ( (BalanceConc!2091 (c!39593 Conc!1041)) )
))
(declare-fun lt!74838 () BalanceConc!2090)

(declare-datatypes ((LexerInterface!495 0))(
  ( (LexerInterfaceExt!492 (__x!2750 Int)) (Lexer!493) )
))
(declare-fun thiss!17480 () LexerInterface!495)

(declare-fun rulesProduceEachTokenIndividually!287 (LexerInterface!495 List!3303 BalanceConc!2090) Bool)

(assert (=> b!206674 (= res!94823 (rulesProduceEachTokenIndividually!287 thiss!17480 rules!1920 lt!74838))))

(declare-fun seqFromList!595 (List!3304) BalanceConc!2090)

(assert (=> b!206674 (= lt!74838 (seqFromList!595 tokens!465))))

(declare-fun b!206675 () Bool)

(declare-fun e!127190 () Bool)

(declare-fun lt!74839 () List!3302)

(assert (=> b!206675 (= e!127190 (matchR!171 (regex!609 (rule!1136 (h!8691 tokens!465))) lt!74839))))

(declare-fun e!127217 () Bool)

(assert (=> b!206676 (= e!127217 (and tp!90755 tp!90762))))

(declare-fun b!206677 () Bool)

(declare-fun tp!90754 () Bool)

(declare-fun e!127204 () Bool)

(declare-fun inv!4131 (String!4235) Bool)

(declare-fun inv!4134 (TokenValueInjection!1034) Bool)

(assert (=> b!206677 (= e!127204 (and tp!90754 (inv!4131 (tag!797 (rule!1136 (h!8691 tokens!465)))) (inv!4134 (transformation!609 (rule!1136 (h!8691 tokens!465)))) e!127217))))

(declare-fun b!206678 () Bool)

(declare-fun e!127230 () Bool)

(declare-fun e!127221 () Bool)

(declare-fun tp!90751 () Bool)

(assert (=> b!206678 (= e!127230 (and e!127221 tp!90751))))

(declare-fun b!206679 () Bool)

(declare-fun res!94843 () Bool)

(declare-fun e!127218 () Bool)

(assert (=> b!206679 (=> res!94843 e!127218)))

(assert (=> b!206679 (= res!94843 (isSeparator!609 (rule!1136 lt!74828)))))

(declare-fun b!206680 () Bool)

(declare-fun res!94819 () Bool)

(assert (=> b!206680 (=> res!94819 e!127218)))

(declare-fun contains!553 (List!3303 Rule!1018) Bool)

(assert (=> b!206680 (= res!94819 (not (contains!553 rules!1920 (rule!1136 lt!74828))))))

(declare-fun b!206681 () Bool)

(declare-fun res!94847 () Bool)

(assert (=> b!206681 (=> (not res!94847) (not e!127192))))

(assert (=> b!206681 (= res!94847 (isSeparator!609 (rule!1136 separatorToken!170)))))

(declare-fun b!206682 () Bool)

(declare-fun e!127211 () Bool)

(assert (=> b!206682 (= e!127218 e!127211)))

(declare-fun res!94841 () Bool)

(assert (=> b!206682 (=> res!94841 e!127211)))

(declare-fun lt!74846 () Option!519)

(declare-fun isDefined!370 (Option!519) Bool)

(assert (=> b!206682 (= res!94841 (not (isDefined!370 lt!74846)))))

(declare-fun lt!74856 () List!3302)

(declare-fun maxPrefix!225 (LexerInterface!495 List!3303 List!3302) Option!519)

(assert (=> b!206682 (= lt!74846 (maxPrefix!225 thiss!17480 rules!1920 lt!74856))))

(declare-fun e!127210 () Bool)

(assert (=> b!206683 (= e!127210 (and tp!90760 tp!90752))))

(declare-fun b!206684 () Bool)

(declare-fun e!127202 () Bool)

(assert (=> b!206684 (= e!127202 true)))

(declare-fun lt!74860 () Bool)

(declare-fun lt!74832 () List!3302)

(declare-fun lt!74857 () C!2588)

(declare-fun contains!554 (List!3302 C!2588) Bool)

(assert (=> b!206684 (= lt!74860 (contains!554 lt!74832 lt!74857))))

(declare-fun res!94842 () Bool)

(assert (=> b!206685 (=> (not res!94842) (not e!127192))))

(declare-fun forall!713 (List!3304 Int) Bool)

(assert (=> b!206685 (= res!94842 (forall!713 tokens!465 lambda!6323))))

(declare-fun b!206686 () Bool)

(declare-fun res!94829 () Bool)

(assert (=> b!206686 (=> (not res!94829) (not e!127192))))

(declare-fun rulesProduceIndividualToken!244 (LexerInterface!495 List!3303 Token!962) Bool)

(assert (=> b!206686 (= res!94829 (rulesProduceIndividualToken!244 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!206687 () Bool)

(declare-fun e!127193 () Bool)

(declare-fun e!127212 () Bool)

(assert (=> b!206687 (= e!127193 e!127212)))

(declare-fun res!94834 () Bool)

(assert (=> b!206687 (=> res!94834 e!127212)))

(declare-fun lt!74859 () Bool)

(assert (=> b!206687 (= res!94834 (not lt!74859))))

(assert (=> b!206687 e!127190))

(declare-fun res!94839 () Bool)

(assert (=> b!206687 (=> (not res!94839) (not e!127190))))

(declare-fun lt!74819 () tuple2!3442)

(assert (=> b!206687 (= res!94839 (= (_1!1937 lt!74819) (h!8691 tokens!465)))))

(declare-fun lt!74821 () Option!519)

(assert (=> b!206687 (= lt!74819 (get!987 lt!74821))))

(assert (=> b!206687 (isDefined!370 lt!74821)))

(assert (=> b!206687 (= lt!74821 (maxPrefix!225 thiss!17480 rules!1920 lt!74839))))

(declare-fun b!206688 () Bool)

(declare-fun e!127220 () Unit!3356)

(declare-fun Unit!3359 () Unit!3356)

(assert (=> b!206688 (= e!127220 Unit!3359)))

(assert (=> b!206688 false))

(declare-fun b!206689 () Bool)

(declare-fun e!127224 () Bool)

(assert (=> b!206689 (= e!127211 e!127224)))

(declare-fun res!94846 () Bool)

(assert (=> b!206689 (=> res!94846 e!127224)))

(declare-fun lt!74836 () tuple2!3442)

(assert (=> b!206689 (= res!94846 (not (= (_1!1937 lt!74836) separatorToken!170)))))

(assert (=> b!206689 (= lt!74836 (get!987 lt!74846))))

(declare-fun b!206690 () Bool)

(declare-fun res!94815 () Bool)

(assert (=> b!206690 (=> (not res!94815) (not e!127192))))

(assert (=> b!206690 (= res!94815 ((_ is Cons!3294) tokens!465))))

(declare-fun b!206691 () Bool)

(declare-fun e!127213 () Unit!3356)

(declare-fun Unit!3360 () Unit!3356)

(assert (=> b!206691 (= e!127213 Unit!3360)))

(declare-fun lt!74833 () Unit!3356)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!2 (LexerInterface!495 List!3303 List!3303 Rule!1018 Rule!1018 C!2588) Unit!3356)

(assert (=> b!206691 (= lt!74833 (lemmaSepRuleNotContainsCharContainedInANonSepRule!2 thiss!17480 rules!1920 rules!1920 (rule!1136 lt!74828) (rule!1136 separatorToken!170) lt!74857))))

(assert (=> b!206691 false))

(declare-fun b!206692 () Bool)

(declare-fun Unit!3361 () Unit!3356)

(assert (=> b!206692 (= e!127220 Unit!3361)))

(declare-fun b!206693 () Bool)

(declare-fun res!94853 () Bool)

(declare-fun e!127223 () Bool)

(assert (=> b!206693 (=> (not res!94853) (not e!127223))))

(declare-datatypes ((tuple2!3444 0))(
  ( (tuple2!3445 (_1!1938 BalanceConc!2090) (_2!1938 BalanceConc!2088)) )
))
(declare-fun lt!74842 () tuple2!3444)

(declare-fun apply!544 (BalanceConc!2090 Int) Token!962)

(assert (=> b!206693 (= res!94853 (= (apply!544 (_1!1938 lt!74842) 0) lt!74828))))

(declare-fun e!127207 () Bool)

(assert (=> b!206694 (= e!127207 e!127193)))

(declare-fun res!94851 () Bool)

(assert (=> b!206694 (=> res!94851 e!127193)))

(declare-datatypes ((tuple2!3446 0))(
  ( (tuple2!3447 (_1!1939 Token!962) (_2!1939 BalanceConc!2088)) )
))
(declare-datatypes ((Option!520 0))(
  ( (None!519) (Some!519 (v!14078 tuple2!3446)) )
))
(declare-fun isDefined!371 (Option!520) Bool)

(declare-fun maxPrefixZipperSequence!188 (LexerInterface!495 List!3303 BalanceConc!2088) Option!520)

(declare-fun seqFromList!596 (List!3302) BalanceConc!2088)

(assert (=> b!206694 (= res!94851 (not (isDefined!371 (maxPrefixZipperSequence!188 thiss!17480 rules!1920 (seqFromList!596 (originalCharacters!652 (h!8691 tokens!465)))))))))

(declare-fun lt!74835 () Unit!3356)

(declare-fun forallContained!176 (List!3304 Int Token!962) Unit!3356)

(assert (=> b!206694 (= lt!74835 (forallContained!176 tokens!465 lambda!6324 (h!8691 tokens!465)))))

(assert (=> b!206694 (= lt!74839 (originalCharacters!652 (h!8691 tokens!465)))))

(declare-fun res!94816 () Bool)

(assert (=> start!22278 (=> (not res!94816) (not e!127208))))

(assert (=> start!22278 (= res!94816 ((_ is Lexer!493) thiss!17480))))

(assert (=> start!22278 e!127208))

(assert (=> start!22278 true))

(assert (=> start!22278 e!127230))

(declare-fun e!127209 () Bool)

(declare-fun inv!4135 (Token!962) Bool)

(assert (=> start!22278 (and (inv!4135 separatorToken!170) e!127209)))

(declare-fun e!127215 () Bool)

(assert (=> start!22278 e!127215))

(declare-fun b!206695 () Bool)

(declare-fun e!127229 () Bool)

(assert (=> b!206695 (= e!127229 e!127216)))

(declare-fun res!94820 () Bool)

(assert (=> b!206695 (=> (not res!94820) (not e!127216))))

(assert (=> b!206695 (= res!94820 (matchR!171 (regex!609 lt!74864) lt!74856))))

(declare-datatypes ((Option!521 0))(
  ( (None!520) (Some!520 (v!14079 Rule!1018)) )
))
(declare-fun lt!74829 () Option!521)

(declare-fun get!988 (Option!521) Rule!1018)

(assert (=> b!206695 (= lt!74864 (get!988 lt!74829))))

(declare-fun b!206696 () Bool)

(declare-fun e!127228 () Bool)

(declare-fun lt!74865 () Rule!1018)

(assert (=> b!206696 (= e!127228 (= (rule!1136 lt!74828) lt!74865))))

(declare-fun b!206697 () Bool)

(declare-fun res!94835 () Bool)

(assert (=> b!206697 (=> (not res!94835) (not e!127208))))

(declare-fun rulesInvariant!461 (LexerInterface!495 List!3303) Bool)

(assert (=> b!206697 (= res!94835 (rulesInvariant!461 thiss!17480 rules!1920))))

(declare-fun b!206698 () Bool)

(declare-fun res!94838 () Bool)

(assert (=> b!206698 (=> res!94838 e!127224)))

(declare-fun isEmpty!1738 (List!3302) Bool)

(assert (=> b!206698 (= res!94838 (not (isEmpty!1738 (_2!1937 lt!74836))))))

(declare-fun b!206699 () Bool)

(declare-fun isEmpty!1739 (BalanceConc!2088) Bool)

(assert (=> b!206699 (= e!127223 (isEmpty!1739 (_2!1938 lt!74842)))))

(declare-fun b!206700 () Bool)

(assert (=> b!206700 (= e!127214 false)))

(declare-fun b!206701 () Bool)

(declare-fun e!127205 () Bool)

(assert (=> b!206701 (= e!127192 e!127205)))

(declare-fun res!94826 () Bool)

(assert (=> b!206701 (=> (not res!94826) (not e!127205))))

(declare-fun lt!74841 () List!3302)

(declare-fun lt!74816 () List!3302)

(assert (=> b!206701 (= res!94826 (= lt!74841 lt!74816))))

(declare-fun list!1227 (BalanceConc!2088) List!3302)

(declare-fun printWithSeparatorTokenWhenNeededRec!178 (LexerInterface!495 List!3303 BalanceConc!2090 Token!962 Int) BalanceConc!2088)

(assert (=> b!206701 (= lt!74816 (list!1227 (printWithSeparatorTokenWhenNeededRec!178 thiss!17480 rules!1920 lt!74838 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!188 (LexerInterface!495 List!3303 List!3304 Token!962) List!3302)

(assert (=> b!206701 (= lt!74841 (printWithSeparatorTokenWhenNeededList!188 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!206702 () Bool)

(declare-fun res!94832 () Bool)

(declare-fun e!127225 () Bool)

(assert (=> b!206702 (=> (not res!94832) (not e!127225))))

(declare-fun lt!74824 () tuple2!3444)

(assert (=> b!206702 (= res!94832 (= (apply!544 (_1!1938 lt!74824) 0) separatorToken!170))))

(declare-fun b!206703 () Bool)

(declare-fun res!94845 () Bool)

(assert (=> b!206703 (=> (not res!94845) (not e!127205))))

(assert (=> b!206703 (= res!94845 (= (list!1227 (seqFromList!596 lt!74841)) lt!74816))))

(declare-fun b!206704 () Bool)

(declare-fun res!94852 () Bool)

(assert (=> b!206704 (=> (not res!94852) (not e!127192))))

(declare-fun sepAndNonSepRulesDisjointChars!198 (List!3303 List!3303) Bool)

(assert (=> b!206704 (= res!94852 (sepAndNonSepRulesDisjointChars!198 rules!1920 rules!1920))))

(declare-fun b!206705 () Bool)

(declare-fun Unit!3362 () Unit!3356)

(assert (=> b!206705 (= e!127213 Unit!3362)))

(declare-fun tp!90761 () Bool)

(declare-fun b!206706 () Bool)

(assert (=> b!206706 (= e!127221 (and tp!90761 (inv!4131 (tag!797 (h!8690 rules!1920))) (inv!4134 (transformation!609 (h!8690 rules!1920))) e!127210))))

(declare-fun b!206707 () Bool)

(declare-fun res!94828 () Bool)

(assert (=> b!206707 (=> (not res!94828) (not e!127190))))

(assert (=> b!206707 (= res!94828 (isEmpty!1738 (_2!1937 lt!74819)))))

(declare-fun b!206708 () Bool)

(declare-fun e!127203 () Bool)

(assert (=> b!206708 (= e!127203 e!127194)))

(declare-fun res!94824 () Bool)

(assert (=> b!206708 (=> (not res!94824) (not e!127194))))

(assert (=> b!206708 (= res!94824 (isDefined!370 lt!74844))))

(assert (=> b!206708 (= lt!74844 (maxPrefix!225 thiss!17480 rules!1920 lt!74841))))

(declare-fun b!206709 () Bool)

(assert (=> b!206709 (= e!127224 e!127202)))

(declare-fun res!94814 () Bool)

(assert (=> b!206709 (=> res!94814 e!127202)))

(assert (=> b!206709 (= res!94814 (not (matchR!171 (regex!609 (rule!1136 separatorToken!170)) lt!74856)))))

(declare-fun ruleValid!72 (LexerInterface!495 Rule!1018) Bool)

(assert (=> b!206709 (ruleValid!72 thiss!17480 (rule!1136 separatorToken!170))))

(declare-fun lt!74854 () Unit!3356)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2 (LexerInterface!495 Rule!1018 List!3303) Unit!3356)

(assert (=> b!206709 (= lt!74854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2 thiss!17480 (rule!1136 separatorToken!170) rules!1920))))

(declare-fun b!206710 () Bool)

(declare-fun res!94850 () Bool)

(assert (=> b!206710 (=> res!94850 e!127202)))

(declare-fun lt!74850 () Bool)

(assert (=> b!206710 (= res!94850 lt!74850)))

(declare-fun b!206711 () Bool)

(declare-fun tp!90759 () Bool)

(declare-fun e!127198 () Bool)

(declare-fun inv!21 (TokenValue!631) Bool)

(assert (=> b!206711 (= e!127198 (and (inv!21 (value!21672 (h!8691 tokens!465))) e!127204 tp!90759))))

(declare-fun e!127195 () Bool)

(declare-fun e!127206 () Bool)

(declare-fun b!206712 () Bool)

(declare-fun tp!90756 () Bool)

(assert (=> b!206712 (= e!127206 (and tp!90756 (inv!4131 (tag!797 (rule!1136 separatorToken!170))) (inv!4134 (transformation!609 (rule!1136 separatorToken!170))) e!127195))))

(declare-fun b!206713 () Bool)

(declare-fun res!94849 () Bool)

(assert (=> b!206713 (=> res!94849 e!127207)))

(declare-fun isEmpty!1740 (BalanceConc!2090) Bool)

(declare-fun lex!295 (LexerInterface!495 List!3303 BalanceConc!2088) tuple2!3444)

(assert (=> b!206713 (= res!94849 (isEmpty!1740 (_1!1938 (lex!295 thiss!17480 rules!1920 (seqFromList!596 lt!74839)))))))

(declare-fun b!206714 () Bool)

(declare-fun res!94840 () Bool)

(assert (=> b!206714 (=> res!94840 e!127207)))

(assert (=> b!206714 (= res!94840 (not (rulesProduceIndividualToken!244 thiss!17480 rules!1920 (h!8691 tokens!465))))))

(declare-fun b!206715 () Bool)

(declare-fun Unit!3363 () Unit!3356)

(assert (=> b!206715 (= e!127201 Unit!3363)))

(declare-fun b!206716 () Bool)

(declare-fun res!94837 () Bool)

(assert (=> b!206716 (=> (not res!94837) (not e!127208))))

(declare-fun isEmpty!1741 (List!3303) Bool)

(assert (=> b!206716 (= res!94837 (not (isEmpty!1741 rules!1920)))))

(assert (=> b!206717 (= e!127195 (and tp!90758 tp!90757))))

(declare-fun b!206718 () Bool)

(declare-fun e!127197 () Bool)

(assert (=> b!206718 (= e!127197 e!127228)))

(declare-fun res!94833 () Bool)

(assert (=> b!206718 (=> (not res!94833) (not e!127228))))

(assert (=> b!206718 (= res!94833 (matchR!171 (regex!609 lt!74865) lt!74858))))

(declare-fun lt!74849 () Option!521)

(assert (=> b!206718 (= lt!74865 (get!988 lt!74849))))

(declare-fun tp!90763 () Bool)

(declare-fun b!206719 () Bool)

(assert (=> b!206719 (= e!127215 (and (inv!4135 (h!8691 tokens!465)) e!127198 tp!90763))))

(declare-fun b!206720 () Bool)

(declare-fun e!127199 () Bool)

(assert (=> b!206720 (= e!127205 (not e!127199))))

(declare-fun res!94836 () Bool)

(assert (=> b!206720 (=> res!94836 e!127199)))

(declare-fun lt!74827 () List!3302)

(assert (=> b!206720 (= res!94836 (not (= lt!74827 (list!1227 (printWithSeparatorTokenWhenNeededRec!178 thiss!17480 rules!1920 (seqFromList!595 (t!31032 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!74866 () List!3302)

(declare-fun lt!74820 () List!3302)

(assert (=> b!206720 (= lt!74866 lt!74820)))

(declare-fun lt!74851 () List!3302)

(declare-fun ++!806 (List!3302 List!3302) List!3302)

(assert (=> b!206720 (= lt!74820 (++!806 lt!74839 lt!74851))))

(assert (=> b!206720 (= lt!74866 (++!806 (++!806 lt!74839 lt!74856) lt!74827))))

(declare-fun lt!74843 () Unit!3356)

(declare-fun lemmaConcatAssociativity!304 (List!3302 List!3302 List!3302) Unit!3356)

(assert (=> b!206720 (= lt!74843 (lemmaConcatAssociativity!304 lt!74839 lt!74856 lt!74827))))

(declare-fun charsOf!264 (Token!962) BalanceConc!2088)

(assert (=> b!206720 (= lt!74839 (list!1227 (charsOf!264 (h!8691 tokens!465))))))

(assert (=> b!206720 (= lt!74851 (++!806 lt!74856 lt!74827))))

(assert (=> b!206720 (= lt!74827 (printWithSeparatorTokenWhenNeededList!188 thiss!17480 rules!1920 (t!31032 tokens!465) separatorToken!170))))

(assert (=> b!206720 (= lt!74856 (list!1227 (charsOf!264 separatorToken!170)))))

(declare-fun b!206721 () Bool)

(declare-fun res!94827 () Bool)

(assert (=> b!206721 (=> res!94827 e!127202)))

(assert (=> b!206721 (= res!94827 (isEmpty!1738 lt!74827))))

(declare-fun b!206722 () Bool)

(declare-fun e!127219 () Bool)

(assert (=> b!206722 (= e!127199 e!127219)))

(declare-fun res!94818 () Bool)

(assert (=> b!206722 (=> res!94818 e!127219)))

(declare-fun e!127227 () Bool)

(assert (=> b!206722 (= res!94818 e!127227)))

(declare-fun res!94813 () Bool)

(assert (=> b!206722 (=> (not res!94813) (not e!127227))))

(assert (=> b!206722 (= res!94813 (not lt!74859))))

(assert (=> b!206722 (= lt!74859 (= lt!74841 lt!74820))))

(declare-fun b!206723 () Bool)

(assert (=> b!206723 (= e!127219 e!127207)))

(declare-fun res!94831 () Bool)

(assert (=> b!206723 (=> res!94831 e!127207)))

(declare-fun lt!74845 () List!3302)

(declare-fun lt!74834 () List!3302)

(assert (=> b!206723 (= res!94831 (or (not (= lt!74834 lt!74845)) (not (= lt!74845 lt!74839)) (not (= lt!74834 lt!74839))))))

(declare-fun printList!179 (LexerInterface!495 List!3304) List!3302)

(assert (=> b!206723 (= lt!74845 (printList!179 thiss!17480 (Cons!3294 (h!8691 tokens!465) Nil!3294)))))

(declare-fun lt!74818 () BalanceConc!2088)

(assert (=> b!206723 (= lt!74834 (list!1227 lt!74818))))

(declare-fun lt!74817 () BalanceConc!2090)

(declare-fun printTailRec!189 (LexerInterface!495 BalanceConc!2090 Int BalanceConc!2088) BalanceConc!2088)

(assert (=> b!206723 (= lt!74818 (printTailRec!189 thiss!17480 lt!74817 0 (BalanceConc!2089 Empty!1040)))))

(declare-fun print!226 (LexerInterface!495 BalanceConc!2090) BalanceConc!2088)

(assert (=> b!206723 (= lt!74818 (print!226 thiss!17480 lt!74817))))

(declare-fun singletonSeq!161 (Token!962) BalanceConc!2090)

(assert (=> b!206723 (= lt!74817 (singletonSeq!161 (h!8691 tokens!465)))))

(declare-fun b!206724 () Bool)

(assert (=> b!206724 (= e!127225 (isEmpty!1739 (_2!1938 lt!74824)))))

(declare-fun b!206725 () Bool)

(assert (=> b!206725 (= e!127212 e!127218)))

(declare-fun res!94830 () Bool)

(assert (=> b!206725 (=> res!94830 e!127218)))

(assert (=> b!206725 (= res!94830 (not (contains!553 rules!1920 (rule!1136 separatorToken!170))))))

(declare-fun lt!74822 () Unit!3356)

(assert (=> b!206725 (= lt!74822 e!127213)))

(declare-fun c!39589 () Bool)

(assert (=> b!206725 (= c!39589 lt!74850)))

(declare-fun usedCharacters!14 (Regex!833) List!3302)

(assert (=> b!206725 (= lt!74850 (contains!554 (usedCharacters!14 (regex!609 (rule!1136 separatorToken!170))) lt!74857))))

(declare-fun head!714 (List!3302) C!2588)

(assert (=> b!206725 (= lt!74857 (head!714 lt!74827))))

(declare-fun lt!74825 () Unit!3356)

(assert (=> b!206725 (= lt!74825 e!127201)))

(declare-fun c!39590 () Bool)

(assert (=> b!206725 (= c!39590 (not (contains!554 lt!74832 lt!74855)))))

(assert (=> b!206725 (= lt!74855 (head!714 lt!74858))))

(assert (=> b!206725 (= lt!74832 (usedCharacters!14 (regex!609 (rule!1136 lt!74828))))))

(assert (=> b!206725 e!127197))

(declare-fun res!94817 () Bool)

(assert (=> b!206725 (=> (not res!94817) (not e!127197))))

(declare-fun isDefined!372 (Option!521) Bool)

(assert (=> b!206725 (= res!94817 (isDefined!372 lt!74849))))

(declare-fun getRuleFromTag!50 (LexerInterface!495 List!3303 String!4235) Option!521)

(assert (=> b!206725 (= lt!74849 (getRuleFromTag!50 thiss!17480 rules!1920 (tag!797 (rule!1136 lt!74828))))))

(declare-fun lt!74863 () Unit!3356)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!50 (LexerInterface!495 List!3303 List!3302 Token!962) Unit!3356)

(assert (=> b!206725 (= lt!74863 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!50 thiss!17480 rules!1920 lt!74858 lt!74828))))

(assert (=> b!206725 (= lt!74858 (list!1227 (charsOf!264 lt!74828)))))

(declare-fun lt!74831 () Unit!3356)

(assert (=> b!206725 (= lt!74831 (forallContained!176 tokens!465 lambda!6324 lt!74828))))

(assert (=> b!206725 e!127223))

(declare-fun res!94825 () Bool)

(assert (=> b!206725 (=> (not res!94825) (not e!127223))))

(declare-fun size!2641 (BalanceConc!2090) Int)

(assert (=> b!206725 (= res!94825 (= (size!2641 (_1!1938 lt!74842)) 1))))

(declare-fun lt!74848 () BalanceConc!2088)

(assert (=> b!206725 (= lt!74842 (lex!295 thiss!17480 rules!1920 lt!74848))))

(declare-fun lt!74826 () BalanceConc!2090)

(assert (=> b!206725 (= lt!74848 (printTailRec!189 thiss!17480 lt!74826 0 (BalanceConc!2089 Empty!1040)))))

(assert (=> b!206725 (= lt!74848 (print!226 thiss!17480 lt!74826))))

(assert (=> b!206725 (= lt!74826 (singletonSeq!161 lt!74828))))

(assert (=> b!206725 e!127229))

(declare-fun res!94844 () Bool)

(assert (=> b!206725 (=> (not res!94844) (not e!127229))))

(assert (=> b!206725 (= res!94844 (isDefined!372 lt!74829))))

(assert (=> b!206725 (= lt!74829 (getRuleFromTag!50 thiss!17480 rules!1920 (tag!797 (rule!1136 separatorToken!170))))))

(declare-fun lt!74823 () Unit!3356)

(assert (=> b!206725 (= lt!74823 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!50 thiss!17480 rules!1920 lt!74856 separatorToken!170))))

(assert (=> b!206725 e!127225))

(declare-fun res!94821 () Bool)

(assert (=> b!206725 (=> (not res!94821) (not e!127225))))

(assert (=> b!206725 (= res!94821 (= (size!2641 (_1!1938 lt!74824)) 1))))

(declare-fun lt!74868 () BalanceConc!2088)

(assert (=> b!206725 (= lt!74824 (lex!295 thiss!17480 rules!1920 lt!74868))))

(declare-fun lt!74830 () BalanceConc!2090)

(assert (=> b!206725 (= lt!74868 (printTailRec!189 thiss!17480 lt!74830 0 (BalanceConc!2089 Empty!1040)))))

(assert (=> b!206725 (= lt!74868 (print!226 thiss!17480 lt!74830))))

(assert (=> b!206725 (= lt!74830 (singletonSeq!161 separatorToken!170))))

(assert (=> b!206725 (rulesProduceIndividualToken!244 thiss!17480 rules!1920 lt!74828)))

(declare-fun lt!74852 () Unit!3356)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!62 (LexerInterface!495 List!3303 List!3304 Token!962) Unit!3356)

(assert (=> b!206725 (= lt!74852 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!62 thiss!17480 rules!1920 tokens!465 lt!74828))))

(assert (=> b!206725 (= lt!74828 (head!713 (t!31032 tokens!465)))))

(declare-fun lt!74840 () Unit!3356)

(assert (=> b!206725 (= lt!74840 e!127220)))

(declare-fun c!39588 () Bool)

(declare-fun isEmpty!1742 (List!3304) Bool)

(assert (=> b!206725 (= c!39588 (isEmpty!1742 (t!31032 tokens!465)))))

(declare-fun lt!74837 () Option!519)

(assert (=> b!206725 (= lt!74837 (maxPrefix!225 thiss!17480 rules!1920 lt!74851))))

(declare-fun lt!74853 () tuple2!3442)

(assert (=> b!206725 (= lt!74851 (_2!1937 lt!74853))))

(declare-fun lt!74847 () Unit!3356)

(declare-fun lemmaSamePrefixThenSameSuffix!130 (List!3302 List!3302 List!3302 List!3302 List!3302) Unit!3356)

(assert (=> b!206725 (= lt!74847 (lemmaSamePrefixThenSameSuffix!130 lt!74839 lt!74851 lt!74839 (_2!1937 lt!74853) lt!74841))))

(assert (=> b!206725 (= lt!74853 (get!987 (maxPrefix!225 thiss!17480 rules!1920 lt!74841)))))

(declare-fun isPrefix!305 (List!3302 List!3302) Bool)

(assert (=> b!206725 (isPrefix!305 lt!74839 lt!74820)))

(declare-fun lt!74867 () Unit!3356)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!200 (List!3302 List!3302) Unit!3356)

(assert (=> b!206725 (= lt!74867 (lemmaConcatTwoListThenFirstIsPrefix!200 lt!74839 lt!74851))))

(assert (=> b!206725 e!127203))

(declare-fun res!94848 () Bool)

(assert (=> b!206725 (=> res!94848 e!127203)))

(assert (=> b!206725 (= res!94848 (isEmpty!1742 tokens!465))))

(declare-fun lt!74861 () Unit!3356)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!70 (LexerInterface!495 List!3303 List!3304 Token!962) Unit!3356)

(assert (=> b!206725 (= lt!74861 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!70 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!206726 () Bool)

(assert (=> b!206726 (= e!127227 (not (= lt!74841 (++!806 lt!74839 lt!74827))))))

(declare-fun tp!90753 () Bool)

(declare-fun b!206727 () Bool)

(assert (=> b!206727 (= e!127209 (and (inv!21 (value!21672 separatorToken!170)) e!127206 tp!90753))))

(assert (= (and start!22278 res!94816) b!206716))

(assert (= (and b!206716 res!94837) b!206697))

(assert (= (and b!206697 res!94835) b!206674))

(assert (= (and b!206674 res!94823) b!206686))

(assert (= (and b!206686 res!94829) b!206681))

(assert (= (and b!206681 res!94847) b!206685))

(assert (= (and b!206685 res!94842) b!206704))

(assert (= (and b!206704 res!94852) b!206690))

(assert (= (and b!206690 res!94815) b!206701))

(assert (= (and b!206701 res!94826) b!206703))

(assert (= (and b!206703 res!94845) b!206720))

(assert (= (and b!206720 (not res!94836)) b!206722))

(assert (= (and b!206722 res!94813) b!206726))

(assert (= (and b!206722 (not res!94818)) b!206723))

(assert (= (and b!206723 (not res!94831)) b!206714))

(assert (= (and b!206714 (not res!94840)) b!206713))

(assert (= (and b!206713 (not res!94849)) b!206694))

(assert (= (and b!206694 (not res!94851)) b!206687))

(assert (= (and b!206687 res!94839) b!206707))

(assert (= (and b!206707 res!94828) b!206675))

(assert (= (and b!206687 (not res!94834)) b!206725))

(assert (= (and b!206725 (not res!94848)) b!206708))

(assert (= (and b!206708 res!94824) b!206673))

(assert (= (and b!206725 c!39588) b!206688))

(assert (= (and b!206725 (not c!39588)) b!206692))

(assert (= (and b!206725 res!94821) b!206702))

(assert (= (and b!206702 res!94832) b!206724))

(assert (= (and b!206725 res!94844) b!206695))

(assert (= (and b!206695 res!94820) b!206672))

(assert (= (and b!206725 res!94825) b!206693))

(assert (= (and b!206693 res!94853) b!206699))

(assert (= (and b!206725 res!94817) b!206718))

(assert (= (and b!206718 res!94833) b!206696))

(assert (= (and b!206725 c!39590) b!206671))

(assert (= (and b!206725 (not c!39590)) b!206715))

(assert (= (and b!206671 res!94822) b!206700))

(assert (= (and b!206725 c!39589) b!206691))

(assert (= (and b!206725 (not c!39589)) b!206705))

(assert (= (and b!206725 (not res!94830)) b!206680))

(assert (= (and b!206680 (not res!94819)) b!206679))

(assert (= (and b!206679 (not res!94843)) b!206682))

(assert (= (and b!206682 (not res!94841)) b!206689))

(assert (= (and b!206689 (not res!94846)) b!206698))

(assert (= (and b!206698 (not res!94838)) b!206709))

(assert (= (and b!206709 (not res!94814)) b!206721))

(assert (= (and b!206721 (not res!94827)) b!206710))

(assert (= (and b!206710 (not res!94850)) b!206684))

(assert (= b!206706 b!206683))

(assert (= b!206678 b!206706))

(assert (= (and start!22278 ((_ is Cons!3293) rules!1920)) b!206678))

(assert (= b!206712 b!206717))

(assert (= b!206727 b!206712))

(assert (= start!22278 b!206727))

(assert (= b!206677 b!206676))

(assert (= b!206711 b!206677))

(assert (= b!206719 b!206711))

(assert (= (and start!22278 ((_ is Cons!3294) tokens!465)) b!206719))

(declare-fun m!227979 () Bool)

(assert (=> b!206726 m!227979))

(declare-fun m!227981 () Bool)

(assert (=> b!206704 m!227981))

(declare-fun m!227983 () Bool)

(assert (=> b!206680 m!227983))

(declare-fun m!227985 () Bool)

(assert (=> b!206698 m!227985))

(declare-fun m!227987 () Bool)

(assert (=> b!206727 m!227987))

(declare-fun m!227989 () Bool)

(assert (=> b!206714 m!227989))

(declare-fun m!227991 () Bool)

(assert (=> b!206691 m!227991))

(declare-fun m!227993 () Bool)

(assert (=> b!206685 m!227993))

(declare-fun m!227995 () Bool)

(assert (=> b!206693 m!227995))

(declare-fun m!227997 () Bool)

(assert (=> b!206719 m!227997))

(declare-fun m!227999 () Bool)

(assert (=> b!206707 m!227999))

(declare-fun m!228001 () Bool)

(assert (=> b!206686 m!228001))

(declare-fun m!228003 () Bool)

(assert (=> b!206687 m!228003))

(declare-fun m!228005 () Bool)

(assert (=> b!206687 m!228005))

(declare-fun m!228007 () Bool)

(assert (=> b!206687 m!228007))

(declare-fun m!228009 () Bool)

(assert (=> b!206713 m!228009))

(assert (=> b!206713 m!228009))

(declare-fun m!228011 () Bool)

(assert (=> b!206713 m!228011))

(declare-fun m!228013 () Bool)

(assert (=> b!206713 m!228013))

(declare-fun m!228015 () Bool)

(assert (=> b!206675 m!228015))

(declare-fun m!228017 () Bool)

(assert (=> b!206725 m!228017))

(declare-fun m!228019 () Bool)

(assert (=> b!206725 m!228019))

(declare-fun m!228021 () Bool)

(assert (=> b!206725 m!228021))

(declare-fun m!228023 () Bool)

(assert (=> b!206725 m!228023))

(declare-fun m!228025 () Bool)

(assert (=> b!206725 m!228025))

(declare-fun m!228027 () Bool)

(assert (=> b!206725 m!228027))

(declare-fun m!228029 () Bool)

(assert (=> b!206725 m!228029))

(declare-fun m!228031 () Bool)

(assert (=> b!206725 m!228031))

(declare-fun m!228033 () Bool)

(assert (=> b!206725 m!228033))

(assert (=> b!206725 m!228019))

(declare-fun m!228035 () Bool)

(assert (=> b!206725 m!228035))

(declare-fun m!228037 () Bool)

(assert (=> b!206725 m!228037))

(declare-fun m!228039 () Bool)

(assert (=> b!206725 m!228039))

(declare-fun m!228041 () Bool)

(assert (=> b!206725 m!228041))

(declare-fun m!228043 () Bool)

(assert (=> b!206725 m!228043))

(declare-fun m!228045 () Bool)

(assert (=> b!206725 m!228045))

(declare-fun m!228047 () Bool)

(assert (=> b!206725 m!228047))

(declare-fun m!228049 () Bool)

(assert (=> b!206725 m!228049))

(declare-fun m!228051 () Bool)

(assert (=> b!206725 m!228051))

(declare-fun m!228053 () Bool)

(assert (=> b!206725 m!228053))

(declare-fun m!228055 () Bool)

(assert (=> b!206725 m!228055))

(declare-fun m!228057 () Bool)

(assert (=> b!206725 m!228057))

(declare-fun m!228059 () Bool)

(assert (=> b!206725 m!228059))

(declare-fun m!228061 () Bool)

(assert (=> b!206725 m!228061))

(declare-fun m!228063 () Bool)

(assert (=> b!206725 m!228063))

(declare-fun m!228065 () Bool)

(assert (=> b!206725 m!228065))

(declare-fun m!228067 () Bool)

(assert (=> b!206725 m!228067))

(declare-fun m!228069 () Bool)

(assert (=> b!206725 m!228069))

(declare-fun m!228071 () Bool)

(assert (=> b!206725 m!228071))

(declare-fun m!228073 () Bool)

(assert (=> b!206725 m!228073))

(declare-fun m!228075 () Bool)

(assert (=> b!206725 m!228075))

(declare-fun m!228077 () Bool)

(assert (=> b!206725 m!228077))

(assert (=> b!206725 m!228071))

(declare-fun m!228079 () Bool)

(assert (=> b!206725 m!228079))

(declare-fun m!228081 () Bool)

(assert (=> b!206725 m!228081))

(declare-fun m!228083 () Bool)

(assert (=> b!206725 m!228083))

(declare-fun m!228085 () Bool)

(assert (=> b!206725 m!228085))

(declare-fun m!228087 () Bool)

(assert (=> b!206725 m!228087))

(declare-fun m!228089 () Bool)

(assert (=> b!206725 m!228089))

(declare-fun m!228091 () Bool)

(assert (=> b!206725 m!228091))

(assert (=> b!206725 m!228049))

(declare-fun m!228093 () Bool)

(assert (=> b!206671 m!228093))

(declare-fun m!228095 () Bool)

(assert (=> b!206671 m!228095))

(declare-fun m!228097 () Bool)

(assert (=> b!206723 m!228097))

(declare-fun m!228099 () Bool)

(assert (=> b!206723 m!228099))

(declare-fun m!228101 () Bool)

(assert (=> b!206723 m!228101))

(declare-fun m!228103 () Bool)

(assert (=> b!206723 m!228103))

(declare-fun m!228105 () Bool)

(assert (=> b!206723 m!228105))

(declare-fun m!228107 () Bool)

(assert (=> b!206702 m!228107))

(declare-fun m!228109 () Bool)

(assert (=> b!206721 m!228109))

(declare-fun m!228111 () Bool)

(assert (=> b!206689 m!228111))

(declare-fun m!228113 () Bool)

(assert (=> b!206682 m!228113))

(declare-fun m!228115 () Bool)

(assert (=> b!206682 m!228115))

(declare-fun m!228117 () Bool)

(assert (=> b!206720 m!228117))

(declare-fun m!228119 () Bool)

(assert (=> b!206720 m!228119))

(declare-fun m!228121 () Bool)

(assert (=> b!206720 m!228121))

(declare-fun m!228123 () Bool)

(assert (=> b!206720 m!228123))

(assert (=> b!206720 m!228121))

(declare-fun m!228125 () Bool)

(assert (=> b!206720 m!228125))

(declare-fun m!228127 () Bool)

(assert (=> b!206720 m!228127))

(declare-fun m!228129 () Bool)

(assert (=> b!206720 m!228129))

(declare-fun m!228131 () Bool)

(assert (=> b!206720 m!228131))

(declare-fun m!228133 () Bool)

(assert (=> b!206720 m!228133))

(assert (=> b!206720 m!228127))

(declare-fun m!228135 () Bool)

(assert (=> b!206720 m!228135))

(declare-fun m!228137 () Bool)

(assert (=> b!206720 m!228137))

(assert (=> b!206720 m!228129))

(assert (=> b!206720 m!228133))

(declare-fun m!228139 () Bool)

(assert (=> b!206720 m!228139))

(assert (=> b!206720 m!228131))

(declare-fun m!228141 () Bool)

(assert (=> b!206720 m!228141))

(declare-fun m!228143 () Bool)

(assert (=> b!206706 m!228143))

(declare-fun m!228145 () Bool)

(assert (=> b!206706 m!228145))

(declare-fun m!228147 () Bool)

(assert (=> b!206673 m!228147))

(declare-fun m!228149 () Bool)

(assert (=> b!206673 m!228149))

(declare-fun m!228151 () Bool)

(assert (=> b!206684 m!228151))

(declare-fun m!228153 () Bool)

(assert (=> b!206716 m!228153))

(declare-fun m!228155 () Bool)

(assert (=> b!206677 m!228155))

(declare-fun m!228157 () Bool)

(assert (=> b!206677 m!228157))

(declare-fun m!228159 () Bool)

(assert (=> b!206703 m!228159))

(assert (=> b!206703 m!228159))

(declare-fun m!228161 () Bool)

(assert (=> b!206703 m!228161))

(declare-fun m!228163 () Bool)

(assert (=> b!206724 m!228163))

(declare-fun m!228165 () Bool)

(assert (=> b!206674 m!228165))

(declare-fun m!228167 () Bool)

(assert (=> b!206674 m!228167))

(declare-fun m!228169 () Bool)

(assert (=> start!22278 m!228169))

(declare-fun m!228171 () Bool)

(assert (=> b!206712 m!228171))

(declare-fun m!228173 () Bool)

(assert (=> b!206712 m!228173))

(declare-fun m!228175 () Bool)

(assert (=> b!206711 m!228175))

(declare-fun m!228177 () Bool)

(assert (=> b!206694 m!228177))

(assert (=> b!206694 m!228177))

(declare-fun m!228179 () Bool)

(assert (=> b!206694 m!228179))

(assert (=> b!206694 m!228179))

(declare-fun m!228181 () Bool)

(assert (=> b!206694 m!228181))

(declare-fun m!228183 () Bool)

(assert (=> b!206694 m!228183))

(declare-fun m!228185 () Bool)

(assert (=> b!206697 m!228185))

(declare-fun m!228187 () Bool)

(assert (=> b!206695 m!228187))

(declare-fun m!228189 () Bool)

(assert (=> b!206695 m!228189))

(declare-fun m!228191 () Bool)

(assert (=> b!206701 m!228191))

(assert (=> b!206701 m!228191))

(declare-fun m!228193 () Bool)

(assert (=> b!206701 m!228193))

(declare-fun m!228195 () Bool)

(assert (=> b!206701 m!228195))

(declare-fun m!228197 () Bool)

(assert (=> b!206699 m!228197))

(declare-fun m!228199 () Bool)

(assert (=> b!206709 m!228199))

(declare-fun m!228201 () Bool)

(assert (=> b!206709 m!228201))

(declare-fun m!228203 () Bool)

(assert (=> b!206709 m!228203))

(declare-fun m!228205 () Bool)

(assert (=> b!206708 m!228205))

(assert (=> b!206708 m!228019))

(declare-fun m!228207 () Bool)

(assert (=> b!206718 m!228207))

(declare-fun m!228209 () Bool)

(assert (=> b!206718 m!228209))

(check-sat (not b!206675) (not b!206703) (not b!206706) (not b!206736) (not b!206694) (not b!206684) (not b_next!7969) (not b!206713) (not b!206697) (not b!206686) (not b!206691) b_and!14941 (not b!206711) (not b!206724) (not b_next!7967) (not b!206721) (not b!206671) (not b!206727) (not b!206701) (not b!206685) (not start!22278) (not b!206712) b_and!14937 (not b!206695) b_and!14943 (not b!206716) (not b!206719) (not b!206726) (not b!206708) b_and!14935 (not b!206704) (not b!206699) (not b!206674) (not b_next!7965) (not b!206718) (not b!206707) (not b!206725) (not b!206680) (not b_next!7971) (not b!206693) b_and!14939 (not b!206677) (not b!206723) (not b!206682) (not b!206702) (not b_next!7961) (not b!206689) (not b!206673) b_and!14933 (not b!206720) (not b!206714) (not b_next!7963) (not b!206709) (not b!206678) (not b!206698) (not b!206687))
(check-sat (not b_next!7967) b_and!14935 (not b_next!7965) (not b_next!7971) b_and!14939 (not b_next!7969) (not b_next!7961) b_and!14933 (not b_next!7963) b_and!14941 b_and!14943 b_and!14937)
