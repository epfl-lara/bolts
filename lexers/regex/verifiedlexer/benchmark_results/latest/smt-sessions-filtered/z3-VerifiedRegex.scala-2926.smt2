; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171490 () Bool)

(assert start!171490)

(declare-fun b!1741996 () Bool)

(declare-fun b_free!47939 () Bool)

(declare-fun b_next!48643 () Bool)

(assert (=> b!1741996 (= b_free!47939 (not b_next!48643))))

(declare-fun tp!496070 () Bool)

(declare-fun b_and!129521 () Bool)

(assert (=> b!1741996 (= tp!496070 b_and!129521)))

(declare-fun b_free!47941 () Bool)

(declare-fun b_next!48645 () Bool)

(assert (=> b!1741996 (= b_free!47941 (not b_next!48645))))

(declare-fun tp!496066 () Bool)

(declare-fun b_and!129523 () Bool)

(assert (=> b!1741996 (= tp!496066 b_and!129523)))

(declare-fun b!1741986 () Bool)

(declare-fun b_free!47943 () Bool)

(declare-fun b_next!48647 () Bool)

(assert (=> b!1741986 (= b_free!47943 (not b_next!48647))))

(declare-fun tp!496060 () Bool)

(declare-fun b_and!129525 () Bool)

(assert (=> b!1741986 (= tp!496060 b_and!129525)))

(declare-fun b_free!47945 () Bool)

(declare-fun b_next!48649 () Bool)

(assert (=> b!1741986 (= b_free!47945 (not b_next!48649))))

(declare-fun tp!496063 () Bool)

(declare-fun b_and!129527 () Bool)

(assert (=> b!1741986 (= tp!496063 b_and!129527)))

(declare-fun b!1741978 () Bool)

(declare-fun b_free!47947 () Bool)

(declare-fun b_next!48651 () Bool)

(assert (=> b!1741978 (= b_free!47947 (not b_next!48651))))

(declare-fun tp!496069 () Bool)

(declare-fun b_and!129529 () Bool)

(assert (=> b!1741978 (= tp!496069 b_and!129529)))

(declare-fun b_free!47949 () Bool)

(declare-fun b_next!48653 () Bool)

(assert (=> b!1741978 (= b_free!47949 (not b_next!48653))))

(declare-fun tp!496064 () Bool)

(declare-fun b_and!129531 () Bool)

(assert (=> b!1741978 (= tp!496064 b_and!129531)))

(declare-fun b!1742010 () Bool)

(declare-fun e!1115032 () Bool)

(assert (=> b!1742010 (= e!1115032 true)))

(declare-fun b!1742009 () Bool)

(declare-fun e!1115031 () Bool)

(assert (=> b!1742009 (= e!1115031 e!1115032)))

(declare-fun b!1742008 () Bool)

(declare-fun e!1115030 () Bool)

(assert (=> b!1742008 (= e!1115030 e!1115031)))

(declare-fun b!1741985 () Bool)

(assert (=> b!1741985 e!1115030))

(assert (= b!1742009 b!1742010))

(assert (= b!1742008 b!1742009))

(assert (= b!1741985 b!1742008))

(declare-datatypes ((List!19223 0))(
  ( (Nil!19153) (Cons!19153 (h!24554 (_ BitVec 16)) (t!161922 List!19223)) )
))
(declare-datatypes ((TokenValue!3503 0))(
  ( (FloatLiteralValue!7006 (text!24966 List!19223)) (TokenValueExt!3502 (__x!12308 Int)) (Broken!17515 (value!106917 List!19223)) (Object!3572) (End!3503) (Def!3503) (Underscore!3503) (Match!3503) (Else!3503) (Error!3503) (Case!3503) (If!3503) (Extends!3503) (Abstract!3503) (Class!3503) (Val!3503) (DelimiterValue!7006 (del!3563 List!19223)) (KeywordValue!3509 (value!106918 List!19223)) (CommentValue!7006 (value!106919 List!19223)) (WhitespaceValue!7006 (value!106920 List!19223)) (IndentationValue!3503 (value!106921 List!19223)) (String!21846) (Int32!3503) (Broken!17516 (value!106922 List!19223)) (Boolean!3504) (Unit!33220) (OperatorValue!3506 (op!3563 List!19223)) (IdentifierValue!7006 (value!106923 List!19223)) (IdentifierValue!7007 (value!106924 List!19223)) (WhitespaceValue!7007 (value!106925 List!19223)) (True!7006) (False!7006) (Broken!17517 (value!106926 List!19223)) (Broken!17518 (value!106927 List!19223)) (True!7007) (RightBrace!3503) (RightBracket!3503) (Colon!3503) (Null!3503) (Comma!3503) (LeftBracket!3503) (False!7007) (LeftBrace!3503) (ImaginaryLiteralValue!3503 (text!24967 List!19223)) (StringLiteralValue!10509 (value!106928 List!19223)) (EOFValue!3503 (value!106929 List!19223)) (IdentValue!3503 (value!106930 List!19223)) (DelimiterValue!7007 (value!106931 List!19223)) (DedentValue!3503 (value!106932 List!19223)) (NewLineValue!3503 (value!106933 List!19223)) (IntegerValue!10509 (value!106934 (_ BitVec 32)) (text!24968 List!19223)) (IntegerValue!10510 (value!106935 Int) (text!24969 List!19223)) (Times!3503) (Or!3503) (Equal!3503) (Minus!3503) (Broken!17519 (value!106936 List!19223)) (And!3503) (Div!3503) (LessEqual!3503) (Mod!3503) (Concat!8244) (Not!3503) (Plus!3503) (SpaceValue!3503 (value!106937 List!19223)) (IntegerValue!10511 (value!106938 Int) (text!24970 List!19223)) (StringLiteralValue!10510 (text!24971 List!19223)) (FloatLiteralValue!7007 (text!24972 List!19223)) (BytesLiteralValue!3503 (value!106939 List!19223)) (CommentValue!7007 (value!106940 List!19223)) (StringLiteralValue!10511 (value!106941 List!19223)) (ErrorTokenValue!3503 (msg!3564 List!19223)) )
))
(declare-datatypes ((C!9656 0))(
  ( (C!9657 (val!5424 Int)) )
))
(declare-datatypes ((List!19224 0))(
  ( (Nil!19154) (Cons!19154 (h!24555 C!9656) (t!161923 List!19224)) )
))
(declare-datatypes ((Regex!4741 0))(
  ( (ElementMatch!4741 (c!284176 C!9656)) (Concat!8245 (regOne!9994 Regex!4741) (regTwo!9994 Regex!4741)) (EmptyExpr!4741) (Star!4741 (reg!5070 Regex!4741)) (EmptyLang!4741) (Union!4741 (regOne!9995 Regex!4741) (regTwo!9995 Regex!4741)) )
))
(declare-datatypes ((String!21847 0))(
  ( (String!21848 (value!106942 String)) )
))
(declare-datatypes ((IArray!12747 0))(
  ( (IArray!12748 (innerList!6431 List!19224)) )
))
(declare-datatypes ((Conc!6371 0))(
  ( (Node!6371 (left!15315 Conc!6371) (right!15645 Conc!6371) (csize!12972 Int) (cheight!6582 Int)) (Leaf!9298 (xs!9247 IArray!12747) (csize!12973 Int)) (Empty!6371) )
))
(declare-datatypes ((BalanceConc!12686 0))(
  ( (BalanceConc!12687 (c!284177 Conc!6371)) )
))
(declare-datatypes ((TokenValueInjection!6666 0))(
  ( (TokenValueInjection!6667 (toValue!4920 Int) (toChars!4779 Int)) )
))
(declare-datatypes ((Rule!6626 0))(
  ( (Rule!6627 (regex!3413 Regex!4741) (tag!3753 String!21847) (isSeparator!3413 Bool) (transformation!3413 TokenValueInjection!6666)) )
))
(declare-datatypes ((Token!6392 0))(
  ( (Token!6393 (value!106943 TokenValue!3503) (rule!5415 Rule!6626) (size!15212 Int) (originalCharacters!4227 List!19224)) )
))
(declare-datatypes ((tuple2!18798 0))(
  ( (tuple2!18799 (_1!10801 Token!6392) (_2!10801 List!19224)) )
))
(declare-fun lt!671797 () tuple2!18798)

(declare-fun order!11951 () Int)

(declare-fun order!11953 () Int)

(declare-fun lambda!69608 () Int)

(declare-fun dynLambda!9050 (Int Int) Int)

(declare-fun dynLambda!9051 (Int Int) Int)

(assert (=> b!1742010 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (dynLambda!9051 order!11953 lambda!69608))))

(declare-fun order!11955 () Int)

(declare-fun dynLambda!9052 (Int Int) Int)

(assert (=> b!1742010 (< (dynLambda!9052 order!11955 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (dynLambda!9051 order!11953 lambda!69608))))

(declare-fun e!1115005 () Bool)

(declare-fun tp!496068 () Bool)

(declare-fun b!1741976 () Bool)

(declare-fun e!1115019 () Bool)

(declare-fun token!523 () Token!6392)

(declare-fun inv!24814 (String!21847) Bool)

(declare-fun inv!24817 (TokenValueInjection!6666) Bool)

(assert (=> b!1741976 (= e!1115019 (and tp!496068 (inv!24814 (tag!3753 (rule!5415 token!523))) (inv!24817 (transformation!3413 (rule!5415 token!523))) e!1115005))))

(declare-fun b!1741977 () Bool)

(declare-fun e!1115011 () Bool)

(declare-fun e!1115008 () Bool)

(declare-fun tp!496067 () Bool)

(assert (=> b!1741977 (= e!1115011 (and e!1115008 tp!496067))))

(declare-fun e!1115021 () Bool)

(assert (=> b!1741978 (= e!1115021 (and tp!496069 tp!496064))))

(declare-fun b!1741979 () Bool)

(declare-fun rule!422 () Rule!6626)

(declare-fun e!1115010 () Bool)

(declare-fun tp!496059 () Bool)

(assert (=> b!1741979 (= e!1115010 (and tp!496059 (inv!24814 (tag!3753 rule!422)) (inv!24817 (transformation!3413 rule!422)) e!1115021))))

(declare-fun b!1741980 () Bool)

(declare-fun res!783219 () Bool)

(declare-fun e!1115007 () Bool)

(assert (=> b!1741980 (=> res!783219 e!1115007)))

(declare-fun suffix!1421 () List!19224)

(declare-fun isEmpty!12057 (List!19224) Bool)

(assert (=> b!1741980 (= res!783219 (isEmpty!12057 suffix!1421))))

(declare-fun b!1741982 () Bool)

(declare-fun e!1115013 () Bool)

(declare-fun tp_is_empty!7725 () Bool)

(declare-fun tp!496065 () Bool)

(assert (=> b!1741982 (= e!1115013 (and tp_is_empty!7725 tp!496065))))

(declare-fun b!1741983 () Bool)

(declare-fun res!783208 () Bool)

(declare-fun e!1115017 () Bool)

(assert (=> b!1741983 (=> (not res!783208) (not e!1115017))))

(declare-fun lt!671801 () tuple2!18798)

(assert (=> b!1741983 (= res!783208 (isEmpty!12057 (_2!10801 lt!671801)))))

(declare-fun b!1741984 () Bool)

(declare-fun res!783216 () Bool)

(declare-fun e!1115020 () Bool)

(assert (=> b!1741984 (=> (not res!783216) (not e!1115020))))

(declare-datatypes ((List!19225 0))(
  ( (Nil!19155) (Cons!19155 (h!24556 Rule!6626) (t!161924 List!19225)) )
))
(declare-fun rules!3447 () List!19225)

(declare-fun contains!3435 (List!19225 Rule!6626) Bool)

(assert (=> b!1741984 (= res!783216 (contains!3435 rules!3447 rule!422))))

(declare-fun e!1115018 () Bool)

(declare-fun Forall!782 (Int) Bool)

(assert (=> b!1741985 (= e!1115018 (Forall!782 lambda!69608))))

(declare-datatypes ((Unit!33221 0))(
  ( (Unit!33222) )
))
(declare-fun lt!671810 () Unit!33221)

(declare-fun lemmaInv!614 (TokenValueInjection!6666) Unit!33221)

(assert (=> b!1741985 (= lt!671810 (lemmaInv!614 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun e!1115009 () Bool)

(assert (=> b!1741986 (= e!1115009 (and tp!496060 tp!496063))))

(declare-fun b!1741987 () Bool)

(assert (=> b!1741987 (= e!1115017 (not e!1115007))))

(declare-fun res!783214 () Bool)

(assert (=> b!1741987 (=> res!783214 e!1115007)))

(declare-fun lt!671800 () List!19224)

(declare-fun matchR!2215 (Regex!4741 List!19224) Bool)

(assert (=> b!1741987 (= res!783214 (not (matchR!2215 (regex!3413 rule!422) lt!671800)))))

(declare-datatypes ((LexerInterface!3042 0))(
  ( (LexerInterfaceExt!3039 (__x!12309 Int)) (Lexer!3040) )
))
(declare-fun thiss!24550 () LexerInterface!3042)

(declare-fun ruleValid!912 (LexerInterface!3042 Rule!6626) Bool)

(assert (=> b!1741987 (ruleValid!912 thiss!24550 rule!422)))

(declare-fun lt!671809 () Unit!33221)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!436 (LexerInterface!3042 Rule!6626 List!19225) Unit!33221)

(assert (=> b!1741987 (= lt!671809 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!436 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1741988 () Bool)

(assert (=> b!1741988 (= e!1115007 e!1115018)))

(declare-fun res!783217 () Bool)

(assert (=> b!1741988 (=> res!783217 e!1115018)))

(declare-fun lt!671799 () List!19224)

(declare-fun lt!671803 () List!19224)

(declare-fun isPrefix!1654 (List!19224 List!19224) Bool)

(assert (=> b!1741988 (= res!783217 (not (isPrefix!1654 lt!671799 lt!671803)))))

(declare-fun ++!5238 (List!19224 List!19224) List!19224)

(assert (=> b!1741988 (isPrefix!1654 lt!671799 (++!5238 lt!671799 (_2!10801 lt!671797)))))

(declare-fun lt!671804 () Unit!33221)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1164 (List!19224 List!19224) Unit!33221)

(assert (=> b!1741988 (= lt!671804 (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!671799 (_2!10801 lt!671797)))))

(declare-fun list!7746 (BalanceConc!12686) List!19224)

(declare-fun charsOf!2062 (Token!6392) BalanceConc!12686)

(assert (=> b!1741988 (= lt!671799 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))

(declare-fun e!1115004 () Bool)

(assert (=> b!1741988 e!1115004))

(declare-fun res!783207 () Bool)

(assert (=> b!1741988 (=> (not res!783207) (not e!1115004))))

(declare-datatypes ((Option!3850 0))(
  ( (None!3849) (Some!3849 (v!25282 Rule!6626)) )
))
(declare-fun lt!671805 () Option!3850)

(declare-fun isDefined!3193 (Option!3850) Bool)

(assert (=> b!1741988 (= res!783207 (isDefined!3193 lt!671805))))

(declare-fun getRuleFromTag!463 (LexerInterface!3042 List!19225 String!21847) Option!3850)

(assert (=> b!1741988 (= lt!671805 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun lt!671808 () Unit!33221)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!463 (LexerInterface!3042 List!19225 List!19224 Token!6392) Unit!33221)

(assert (=> b!1741988 (= lt!671808 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!463 thiss!24550 rules!3447 lt!671803 (_1!10801 lt!671797)))))

(declare-datatypes ((Option!3851 0))(
  ( (None!3850) (Some!3850 (v!25283 tuple2!18798)) )
))
(declare-fun lt!671806 () Option!3851)

(declare-fun get!5774 (Option!3851) tuple2!18798)

(assert (=> b!1741988 (= lt!671797 (get!5774 lt!671806))))

(declare-fun lt!671798 () Unit!33221)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!566 (LexerInterface!3042 List!19225 List!19224 List!19224) Unit!33221)

(assert (=> b!1741988 (= lt!671798 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!566 thiss!24550 rules!3447 lt!671800 suffix!1421))))

(declare-fun maxPrefix!1596 (LexerInterface!3042 List!19225 List!19224) Option!3851)

(assert (=> b!1741988 (= lt!671806 (maxPrefix!1596 thiss!24550 rules!3447 lt!671803))))

(assert (=> b!1741988 (isPrefix!1654 lt!671800 lt!671803)))

(declare-fun lt!671807 () Unit!33221)

(assert (=> b!1741988 (= lt!671807 (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!671800 suffix!1421))))

(assert (=> b!1741988 (= lt!671803 (++!5238 lt!671800 suffix!1421))))

(declare-fun b!1741989 () Bool)

(declare-fun res!783218 () Bool)

(assert (=> b!1741989 (=> (not res!783218) (not e!1115020))))

(declare-fun isEmpty!12058 (List!19225) Bool)

(assert (=> b!1741989 (= res!783218 (not (isEmpty!12058 rules!3447)))))

(declare-fun res!783211 () Bool)

(assert (=> start!171490 (=> (not res!783211) (not e!1115020))))

(get-info :version)

(assert (=> start!171490 (= res!783211 ((_ is Lexer!3040) thiss!24550))))

(assert (=> start!171490 e!1115020))

(assert (=> start!171490 e!1115013))

(assert (=> start!171490 e!1115010))

(assert (=> start!171490 true))

(declare-fun e!1115006 () Bool)

(declare-fun inv!24818 (Token!6392) Bool)

(assert (=> start!171490 (and (inv!24818 token!523) e!1115006)))

(assert (=> start!171490 e!1115011))

(declare-fun b!1741981 () Bool)

(declare-fun e!1115014 () Bool)

(declare-fun lt!671796 () Rule!6626)

(assert (=> b!1741981 (= e!1115014 (= (rule!5415 (_1!10801 lt!671797)) lt!671796))))

(declare-fun b!1741990 () Bool)

(declare-fun res!783210 () Bool)

(assert (=> b!1741990 (=> (not res!783210) (not e!1115017))))

(assert (=> b!1741990 (= res!783210 (= (rule!5415 token!523) rule!422))))

(declare-fun tp!496061 () Bool)

(declare-fun b!1741991 () Bool)

(assert (=> b!1741991 (= e!1115008 (and tp!496061 (inv!24814 (tag!3753 (h!24556 rules!3447))) (inv!24817 (transformation!3413 (h!24556 rules!3447))) e!1115009))))

(declare-fun b!1741992 () Bool)

(declare-fun e!1115012 () Bool)

(assert (=> b!1741992 (= e!1115020 e!1115012)))

(declare-fun res!783209 () Bool)

(assert (=> b!1741992 (=> (not res!783209) (not e!1115012))))

(declare-fun lt!671802 () Option!3851)

(declare-fun isDefined!3194 (Option!3851) Bool)

(assert (=> b!1741992 (= res!783209 (isDefined!3194 lt!671802))))

(assert (=> b!1741992 (= lt!671802 (maxPrefix!1596 thiss!24550 rules!3447 lt!671800))))

(assert (=> b!1741992 (= lt!671800 (list!7746 (charsOf!2062 token!523)))))

(declare-fun tp!496062 () Bool)

(declare-fun b!1741993 () Bool)

(declare-fun inv!21 (TokenValue!3503) Bool)

(assert (=> b!1741993 (= e!1115006 (and (inv!21 (value!106943 token!523)) e!1115019 tp!496062))))

(declare-fun b!1741994 () Bool)

(assert (=> b!1741994 (= e!1115004 e!1115014)))

(declare-fun res!783206 () Bool)

(assert (=> b!1741994 (=> (not res!783206) (not e!1115014))))

(assert (=> b!1741994 (= res!783206 (matchR!2215 (regex!3413 lt!671796) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun get!5775 (Option!3850) Rule!6626)

(assert (=> b!1741994 (= lt!671796 (get!5775 lt!671805))))

(declare-fun b!1741995 () Bool)

(assert (=> b!1741995 (= e!1115012 e!1115017)))

(declare-fun res!783205 () Bool)

(assert (=> b!1741995 (=> (not res!783205) (not e!1115017))))

(assert (=> b!1741995 (= res!783205 (= (_1!10801 lt!671801) token!523))))

(assert (=> b!1741995 (= lt!671801 (get!5774 lt!671802))))

(assert (=> b!1741996 (= e!1115005 (and tp!496070 tp!496066))))

(declare-fun b!1741997 () Bool)

(declare-fun res!783212 () Bool)

(assert (=> b!1741997 (=> res!783212 e!1115007)))

(declare-fun prefixMatch!626 (Regex!4741 List!19224) Bool)

(declare-fun rulesRegex!771 (LexerInterface!3042 List!19225) Regex!4741)

(declare-fun head!3996 (List!19224) C!9656)

(assert (=> b!1741997 (= res!783212 (prefixMatch!626 (rulesRegex!771 thiss!24550 rules!3447) (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(declare-fun b!1741998 () Bool)

(declare-fun res!783215 () Bool)

(assert (=> b!1741998 (=> (not res!783215) (not e!1115020))))

(declare-fun rulesInvariant!2711 (LexerInterface!3042 List!19225) Bool)

(assert (=> b!1741998 (= res!783215 (rulesInvariant!2711 thiss!24550 rules!3447))))

(declare-fun b!1741999 () Bool)

(declare-fun res!783213 () Bool)

(assert (=> b!1741999 (=> res!783213 e!1115018)))

(assert (=> b!1741999 (= res!783213 (not (matchR!2215 (regex!3413 (rule!5415 (_1!10801 lt!671797))) lt!671799)))))

(assert (= (and start!171490 res!783211) b!1741989))

(assert (= (and b!1741989 res!783218) b!1741998))

(assert (= (and b!1741998 res!783215) b!1741984))

(assert (= (and b!1741984 res!783216) b!1741992))

(assert (= (and b!1741992 res!783209) b!1741995))

(assert (= (and b!1741995 res!783205) b!1741983))

(assert (= (and b!1741983 res!783208) b!1741990))

(assert (= (and b!1741990 res!783210) b!1741987))

(assert (= (and b!1741987 (not res!783214)) b!1741980))

(assert (= (and b!1741980 (not res!783219)) b!1741997))

(assert (= (and b!1741997 (not res!783212)) b!1741988))

(assert (= (and b!1741988 res!783207) b!1741994))

(assert (= (and b!1741994 res!783206) b!1741981))

(assert (= (and b!1741988 (not res!783217)) b!1741999))

(assert (= (and b!1741999 (not res!783213)) b!1741985))

(assert (= (and start!171490 ((_ is Cons!19154) suffix!1421)) b!1741982))

(assert (= b!1741979 b!1741978))

(assert (= start!171490 b!1741979))

(assert (= b!1741976 b!1741996))

(assert (= b!1741993 b!1741976))

(assert (= start!171490 b!1741993))

(assert (= b!1741991 b!1741986))

(assert (= b!1741977 b!1741991))

(assert (= (and start!171490 ((_ is Cons!19155) rules!3447)) b!1741977))

(declare-fun m!2153111 () Bool)

(assert (=> b!1741997 m!2153111))

(declare-fun m!2153113 () Bool)

(assert (=> b!1741997 m!2153113))

(declare-fun m!2153115 () Bool)

(assert (=> b!1741997 m!2153115))

(assert (=> b!1741997 m!2153111))

(assert (=> b!1741997 m!2153115))

(declare-fun m!2153117 () Bool)

(assert (=> b!1741997 m!2153117))

(declare-fun m!2153119 () Bool)

(assert (=> b!1741998 m!2153119))

(declare-fun m!2153121 () Bool)

(assert (=> b!1741993 m!2153121))

(declare-fun m!2153123 () Bool)

(assert (=> b!1741976 m!2153123))

(declare-fun m!2153125 () Bool)

(assert (=> b!1741976 m!2153125))

(declare-fun m!2153127 () Bool)

(assert (=> b!1741999 m!2153127))

(declare-fun m!2153129 () Bool)

(assert (=> b!1741994 m!2153129))

(assert (=> b!1741994 m!2153129))

(declare-fun m!2153131 () Bool)

(assert (=> b!1741994 m!2153131))

(assert (=> b!1741994 m!2153131))

(declare-fun m!2153133 () Bool)

(assert (=> b!1741994 m!2153133))

(declare-fun m!2153135 () Bool)

(assert (=> b!1741994 m!2153135))

(declare-fun m!2153137 () Bool)

(assert (=> b!1741988 m!2153137))

(declare-fun m!2153139 () Bool)

(assert (=> b!1741988 m!2153139))

(declare-fun m!2153141 () Bool)

(assert (=> b!1741988 m!2153141))

(declare-fun m!2153143 () Bool)

(assert (=> b!1741988 m!2153143))

(declare-fun m!2153145 () Bool)

(assert (=> b!1741988 m!2153145))

(declare-fun m!2153147 () Bool)

(assert (=> b!1741988 m!2153147))

(assert (=> b!1741988 m!2153129))

(declare-fun m!2153149 () Bool)

(assert (=> b!1741988 m!2153149))

(declare-fun m!2153151 () Bool)

(assert (=> b!1741988 m!2153151))

(assert (=> b!1741988 m!2153149))

(declare-fun m!2153153 () Bool)

(assert (=> b!1741988 m!2153153))

(declare-fun m!2153155 () Bool)

(assert (=> b!1741988 m!2153155))

(declare-fun m!2153157 () Bool)

(assert (=> b!1741988 m!2153157))

(declare-fun m!2153159 () Bool)

(assert (=> b!1741988 m!2153159))

(declare-fun m!2153161 () Bool)

(assert (=> b!1741988 m!2153161))

(assert (=> b!1741988 m!2153129))

(assert (=> b!1741988 m!2153131))

(declare-fun m!2153163 () Bool)

(assert (=> b!1741983 m!2153163))

(declare-fun m!2153165 () Bool)

(assert (=> start!171490 m!2153165))

(declare-fun m!2153167 () Bool)

(assert (=> b!1741992 m!2153167))

(declare-fun m!2153169 () Bool)

(assert (=> b!1741992 m!2153169))

(declare-fun m!2153171 () Bool)

(assert (=> b!1741992 m!2153171))

(assert (=> b!1741992 m!2153171))

(declare-fun m!2153173 () Bool)

(assert (=> b!1741992 m!2153173))

(declare-fun m!2153175 () Bool)

(assert (=> b!1741995 m!2153175))

(declare-fun m!2153177 () Bool)

(assert (=> b!1741985 m!2153177))

(declare-fun m!2153179 () Bool)

(assert (=> b!1741985 m!2153179))

(declare-fun m!2153181 () Bool)

(assert (=> b!1741989 m!2153181))

(declare-fun m!2153183 () Bool)

(assert (=> b!1741980 m!2153183))

(declare-fun m!2153185 () Bool)

(assert (=> b!1741987 m!2153185))

(declare-fun m!2153187 () Bool)

(assert (=> b!1741987 m!2153187))

(declare-fun m!2153189 () Bool)

(assert (=> b!1741987 m!2153189))

(declare-fun m!2153191 () Bool)

(assert (=> b!1741984 m!2153191))

(declare-fun m!2153193 () Bool)

(assert (=> b!1741979 m!2153193))

(declare-fun m!2153195 () Bool)

(assert (=> b!1741979 m!2153195))

(declare-fun m!2153197 () Bool)

(assert (=> b!1741991 m!2153197))

(declare-fun m!2153199 () Bool)

(assert (=> b!1741991 m!2153199))

(check-sat (not b_next!48649) (not b!1741998) (not b!1741982) (not b!1741992) (not b!1741987) b_and!129531 (not b_next!48653) (not b_next!48651) (not b_next!48645) b_and!129527 b_and!129529 b_and!129525 (not b!1741985) (not b_next!48647) b_and!129521 (not b_next!48643) b_and!129523 (not b!1741991) (not b!1741984) (not b!1741997) (not b!1741979) tp_is_empty!7725 (not b!1741995) (not start!171490) (not b!1741999) (not b!1741983) (not b!1741977) (not b!1741988) (not b!1741994) (not b!1741989) (not b!1741993) (not b!1741980) (not b!1741976))
(check-sat (not b_next!48649) b_and!129531 (not b_next!48653) (not b_next!48651) (not b_next!48645) b_and!129527 b_and!129529 b_and!129525 (not b_next!48647) b_and!129521 (not b_next!48643) b_and!129523)
(get-model)

(declare-fun d!532179 () Bool)

(assert (=> d!532179 (= (get!5774 lt!671802) (v!25283 lt!671802))))

(assert (=> b!1741995 d!532179))

(declare-fun d!532181 () Bool)

(declare-fun res!783313 () Bool)

(declare-fun e!1115108 () Bool)

(assert (=> d!532181 (=> (not res!783313) (not e!1115108))))

(assert (=> d!532181 (= res!783313 (not (isEmpty!12057 (originalCharacters!4227 token!523))))))

(assert (=> d!532181 (= (inv!24818 token!523) e!1115108)))

(declare-fun b!1742143 () Bool)

(declare-fun res!783314 () Bool)

(assert (=> b!1742143 (=> (not res!783314) (not e!1115108))))

(declare-fun dynLambda!9054 (Int TokenValue!3503) BalanceConc!12686)

(assert (=> b!1742143 (= res!783314 (= (originalCharacters!4227 token!523) (list!7746 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(declare-fun b!1742144 () Bool)

(declare-fun size!15214 (List!19224) Int)

(assert (=> b!1742144 (= e!1115108 (= (size!15212 token!523) (size!15214 (originalCharacters!4227 token!523))))))

(assert (= (and d!532181 res!783313) b!1742143))

(assert (= (and b!1742143 res!783314) b!1742144))

(declare-fun b_lambda!55801 () Bool)

(assert (=> (not b_lambda!55801) (not b!1742143)))

(declare-fun t!161938 () Bool)

(declare-fun tb!104147 () Bool)

(assert (=> (and b!1741996 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 token!523)))) t!161938) tb!104147))

(declare-fun b!1742149 () Bool)

(declare-fun e!1115111 () Bool)

(declare-fun tp!496077 () Bool)

(declare-fun inv!24821 (Conc!6371) Bool)

(assert (=> b!1742149 (= e!1115111 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))) tp!496077))))

(declare-fun result!125268 () Bool)

(declare-fun inv!24822 (BalanceConc!12686) Bool)

(assert (=> tb!104147 (= result!125268 (and (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))) e!1115111))))

(assert (= tb!104147 b!1742149))

(declare-fun m!2153337 () Bool)

(assert (=> b!1742149 m!2153337))

(declare-fun m!2153339 () Bool)

(assert (=> tb!104147 m!2153339))

(assert (=> b!1742143 t!161938))

(declare-fun b_and!129545 () Bool)

(assert (= b_and!129523 (and (=> t!161938 result!125268) b_and!129545)))

(declare-fun t!161940 () Bool)

(declare-fun tb!104149 () Bool)

(assert (=> (and b!1741986 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 token!523)))) t!161940) tb!104149))

(declare-fun result!125272 () Bool)

(assert (= result!125272 result!125268))

(assert (=> b!1742143 t!161940))

(declare-fun b_and!129547 () Bool)

(assert (= b_and!129527 (and (=> t!161940 result!125272) b_and!129547)))

(declare-fun tb!104151 () Bool)

(declare-fun t!161942 () Bool)

(assert (=> (and b!1741978 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 token!523)))) t!161942) tb!104151))

(declare-fun result!125274 () Bool)

(assert (= result!125274 result!125268))

(assert (=> b!1742143 t!161942))

(declare-fun b_and!129549 () Bool)

(assert (= b_and!129531 (and (=> t!161942 result!125274) b_and!129549)))

(declare-fun m!2153341 () Bool)

(assert (=> d!532181 m!2153341))

(declare-fun m!2153343 () Bool)

(assert (=> b!1742143 m!2153343))

(assert (=> b!1742143 m!2153343))

(declare-fun m!2153345 () Bool)

(assert (=> b!1742143 m!2153345))

(declare-fun m!2153347 () Bool)

(assert (=> b!1742144 m!2153347))

(assert (=> start!171490 d!532181))

(declare-fun d!532187 () Bool)

(declare-fun lt!671836 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2747 (List!19225) (InoxSet Rule!6626))

(assert (=> d!532187 (= lt!671836 (select (content!2747 rules!3447) rule!422))))

(declare-fun e!1115116 () Bool)

(assert (=> d!532187 (= lt!671836 e!1115116)))

(declare-fun res!783320 () Bool)

(assert (=> d!532187 (=> (not res!783320) (not e!1115116))))

(assert (=> d!532187 (= res!783320 ((_ is Cons!19155) rules!3447))))

(assert (=> d!532187 (= (contains!3435 rules!3447 rule!422) lt!671836)))

(declare-fun b!1742154 () Bool)

(declare-fun e!1115117 () Bool)

(assert (=> b!1742154 (= e!1115116 e!1115117)))

(declare-fun res!783319 () Bool)

(assert (=> b!1742154 (=> res!783319 e!1115117)))

(assert (=> b!1742154 (= res!783319 (= (h!24556 rules!3447) rule!422))))

(declare-fun b!1742155 () Bool)

(assert (=> b!1742155 (= e!1115117 (contains!3435 (t!161924 rules!3447) rule!422))))

(assert (= (and d!532187 res!783320) b!1742154))

(assert (= (and b!1742154 (not res!783319)) b!1742155))

(declare-fun m!2153349 () Bool)

(assert (=> d!532187 m!2153349))

(declare-fun m!2153351 () Bool)

(assert (=> d!532187 m!2153351))

(declare-fun m!2153353 () Bool)

(assert (=> b!1742155 m!2153353))

(assert (=> b!1741984 d!532187))

(declare-fun b!1742229 () Bool)

(declare-fun e!1115156 () Bool)

(declare-fun e!1115157 () Bool)

(assert (=> b!1742229 (= e!1115156 e!1115157)))

(declare-fun res!783369 () Bool)

(assert (=> b!1742229 (=> (not res!783369) (not e!1115157))))

(declare-fun lt!671863 () Bool)

(assert (=> b!1742229 (= res!783369 (not lt!671863))))

(declare-fun b!1742230 () Bool)

(declare-fun e!1115154 () Bool)

(assert (=> b!1742230 (= e!1115157 e!1115154)))

(declare-fun res!783367 () Bool)

(assert (=> b!1742230 (=> res!783367 e!1115154)))

(declare-fun call!110091 () Bool)

(assert (=> b!1742230 (= res!783367 call!110091)))

(declare-fun b!1742231 () Bool)

(declare-fun res!783368 () Bool)

(declare-fun e!1115155 () Bool)

(assert (=> b!1742231 (=> (not res!783368) (not e!1115155))))

(declare-fun tail!2601 (List!19224) List!19224)

(assert (=> b!1742231 (= res!783368 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun b!1742232 () Bool)

(assert (=> b!1742232 (= e!1115155 (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (c!284176 (regex!3413 lt!671796))))))

(declare-fun b!1742233 () Bool)

(declare-fun e!1115153 () Bool)

(declare-fun e!1115158 () Bool)

(assert (=> b!1742233 (= e!1115153 e!1115158)))

(declare-fun c!284215 () Bool)

(assert (=> b!1742233 (= c!284215 ((_ is EmptyLang!4741) (regex!3413 lt!671796)))))

(declare-fun d!532189 () Bool)

(assert (=> d!532189 e!1115153))

(declare-fun c!284216 () Bool)

(assert (=> d!532189 (= c!284216 ((_ is EmptyExpr!4741) (regex!3413 lt!671796)))))

(declare-fun e!1115159 () Bool)

(assert (=> d!532189 (= lt!671863 e!1115159)))

(declare-fun c!284214 () Bool)

(assert (=> d!532189 (= c!284214 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun validRegex!1910 (Regex!4741) Bool)

(assert (=> d!532189 (validRegex!1910 (regex!3413 lt!671796))))

(assert (=> d!532189 (= (matchR!2215 (regex!3413 lt!671796) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) lt!671863)))

(declare-fun b!1742234 () Bool)

(declare-fun res!783364 () Bool)

(assert (=> b!1742234 (=> res!783364 e!1115154)))

(assert (=> b!1742234 (= res!783364 (not (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1742235 () Bool)

(assert (=> b!1742235 (= e!1115154 (not (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (c!284176 (regex!3413 lt!671796)))))))

(declare-fun b!1742236 () Bool)

(assert (=> b!1742236 (= e!1115158 (not lt!671863))))

(declare-fun b!1742237 () Bool)

(declare-fun res!783370 () Bool)

(assert (=> b!1742237 (=> res!783370 e!1115156)))

(assert (=> b!1742237 (= res!783370 (not ((_ is ElementMatch!4741) (regex!3413 lt!671796))))))

(assert (=> b!1742237 (= e!1115158 e!1115156)))

(declare-fun b!1742238 () Bool)

(assert (=> b!1742238 (= e!1115153 (= lt!671863 call!110091))))

(declare-fun b!1742239 () Bool)

(declare-fun res!783366 () Bool)

(assert (=> b!1742239 (=> res!783366 e!1115156)))

(assert (=> b!1742239 (= res!783366 e!1115155)))

(declare-fun res!783365 () Bool)

(assert (=> b!1742239 (=> (not res!783365) (not e!1115155))))

(assert (=> b!1742239 (= res!783365 lt!671863)))

(declare-fun b!1742240 () Bool)

(declare-fun nullable!1436 (Regex!4741) Bool)

(assert (=> b!1742240 (= e!1115159 (nullable!1436 (regex!3413 lt!671796)))))

(declare-fun b!1742241 () Bool)

(declare-fun derivativeStep!1204 (Regex!4741 C!9656) Regex!4741)

(assert (=> b!1742241 (= e!1115159 (matchR!2215 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun b!1742242 () Bool)

(declare-fun res!783371 () Bool)

(assert (=> b!1742242 (=> (not res!783371) (not e!1115155))))

(assert (=> b!1742242 (= res!783371 (not call!110091))))

(declare-fun bm!110086 () Bool)

(assert (=> bm!110086 (= call!110091 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (= (and d!532189 c!284214) b!1742240))

(assert (= (and d!532189 (not c!284214)) b!1742241))

(assert (= (and d!532189 c!284216) b!1742238))

(assert (= (and d!532189 (not c!284216)) b!1742233))

(assert (= (and b!1742233 c!284215) b!1742236))

(assert (= (and b!1742233 (not c!284215)) b!1742237))

(assert (= (and b!1742237 (not res!783370)) b!1742239))

(assert (= (and b!1742239 res!783365) b!1742242))

(assert (= (and b!1742242 res!783371) b!1742231))

(assert (= (and b!1742231 res!783368) b!1742232))

(assert (= (and b!1742239 (not res!783366)) b!1742229))

(assert (= (and b!1742229 res!783369) b!1742230))

(assert (= (and b!1742230 (not res!783367)) b!1742234))

(assert (= (and b!1742234 (not res!783364)) b!1742235))

(assert (= (or b!1742238 b!1742230 b!1742242) bm!110086))

(assert (=> d!532189 m!2153131))

(declare-fun m!2153401 () Bool)

(assert (=> d!532189 m!2153401))

(declare-fun m!2153403 () Bool)

(assert (=> d!532189 m!2153403))

(assert (=> b!1742231 m!2153131))

(declare-fun m!2153405 () Bool)

(assert (=> b!1742231 m!2153405))

(assert (=> b!1742231 m!2153405))

(declare-fun m!2153407 () Bool)

(assert (=> b!1742231 m!2153407))

(assert (=> b!1742232 m!2153131))

(declare-fun m!2153409 () Bool)

(assert (=> b!1742232 m!2153409))

(declare-fun m!2153411 () Bool)

(assert (=> b!1742240 m!2153411))

(assert (=> b!1742241 m!2153131))

(assert (=> b!1742241 m!2153409))

(assert (=> b!1742241 m!2153409))

(declare-fun m!2153413 () Bool)

(assert (=> b!1742241 m!2153413))

(assert (=> b!1742241 m!2153131))

(assert (=> b!1742241 m!2153405))

(assert (=> b!1742241 m!2153413))

(assert (=> b!1742241 m!2153405))

(declare-fun m!2153415 () Bool)

(assert (=> b!1742241 m!2153415))

(assert (=> b!1742235 m!2153131))

(assert (=> b!1742235 m!2153409))

(assert (=> b!1742234 m!2153131))

(assert (=> b!1742234 m!2153405))

(assert (=> b!1742234 m!2153405))

(assert (=> b!1742234 m!2153407))

(assert (=> bm!110086 m!2153131))

(assert (=> bm!110086 m!2153401))

(assert (=> b!1741994 d!532189))

(declare-fun d!532195 () Bool)

(declare-fun list!7748 (Conc!6371) List!19224)

(assert (=> d!532195 (= (list!7746 (charsOf!2062 (_1!10801 lt!671797))) (list!7748 (c!284177 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun bs!403036 () Bool)

(assert (= bs!403036 d!532195))

(declare-fun m!2153417 () Bool)

(assert (=> bs!403036 m!2153417))

(assert (=> b!1741994 d!532195))

(declare-fun d!532197 () Bool)

(declare-fun lt!671872 () BalanceConc!12686)

(assert (=> d!532197 (= (list!7746 lt!671872) (originalCharacters!4227 (_1!10801 lt!671797)))))

(assert (=> d!532197 (= lt!671872 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))))

(assert (=> d!532197 (= (charsOf!2062 (_1!10801 lt!671797)) lt!671872)))

(declare-fun b_lambda!55803 () Bool)

(assert (=> (not b_lambda!55803) (not d!532197)))

(declare-fun tb!104153 () Bool)

(declare-fun t!161944 () Bool)

(assert (=> (and b!1741996 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) t!161944) tb!104153))

(declare-fun b!1742267 () Bool)

(declare-fun e!1115177 () Bool)

(declare-fun tp!496078 () Bool)

(assert (=> b!1742267 (= e!1115177 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))) tp!496078))))

(declare-fun result!125276 () Bool)

(assert (=> tb!104153 (= result!125276 (and (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))) e!1115177))))

(assert (= tb!104153 b!1742267))

(declare-fun m!2153449 () Bool)

(assert (=> b!1742267 m!2153449))

(declare-fun m!2153451 () Bool)

(assert (=> tb!104153 m!2153451))

(assert (=> d!532197 t!161944))

(declare-fun b_and!129551 () Bool)

(assert (= b_and!129545 (and (=> t!161944 result!125276) b_and!129551)))

(declare-fun t!161946 () Bool)

(declare-fun tb!104155 () Bool)

(assert (=> (and b!1741986 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) t!161946) tb!104155))

(declare-fun result!125278 () Bool)

(assert (= result!125278 result!125276))

(assert (=> d!532197 t!161946))

(declare-fun b_and!129553 () Bool)

(assert (= b_and!129547 (and (=> t!161946 result!125278) b_and!129553)))

(declare-fun t!161948 () Bool)

(declare-fun tb!104157 () Bool)

(assert (=> (and b!1741978 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) t!161948) tb!104157))

(declare-fun result!125280 () Bool)

(assert (= result!125280 result!125276))

(assert (=> d!532197 t!161948))

(declare-fun b_and!129555 () Bool)

(assert (= b_and!129549 (and (=> t!161948 result!125280) b_and!129555)))

(declare-fun m!2153455 () Bool)

(assert (=> d!532197 m!2153455))

(declare-fun m!2153461 () Bool)

(assert (=> d!532197 m!2153461))

(assert (=> b!1741994 d!532197))

(declare-fun d!532213 () Bool)

(assert (=> d!532213 (= (get!5775 lt!671805) (v!25282 lt!671805))))

(assert (=> b!1741994 d!532213))

(declare-fun d!532217 () Bool)

(assert (=> d!532217 (= (isEmpty!12057 (_2!10801 lt!671801)) ((_ is Nil!19154) (_2!10801 lt!671801)))))

(assert (=> b!1741983 d!532217))

(declare-fun b!1742282 () Bool)

(declare-fun e!1115186 () Bool)

(declare-fun inv!16 (TokenValue!3503) Bool)

(assert (=> b!1742282 (= e!1115186 (inv!16 (value!106943 token!523)))))

(declare-fun b!1742283 () Bool)

(declare-fun e!1115187 () Bool)

(declare-fun inv!15 (TokenValue!3503) Bool)

(assert (=> b!1742283 (= e!1115187 (inv!15 (value!106943 token!523)))))

(declare-fun b!1742284 () Bool)

(declare-fun res!783398 () Bool)

(assert (=> b!1742284 (=> res!783398 e!1115187)))

(assert (=> b!1742284 (= res!783398 (not ((_ is IntegerValue!10511) (value!106943 token!523))))))

(declare-fun e!1115188 () Bool)

(assert (=> b!1742284 (= e!1115188 e!1115187)))

(declare-fun d!532219 () Bool)

(declare-fun c!284223 () Bool)

(assert (=> d!532219 (= c!284223 ((_ is IntegerValue!10509) (value!106943 token!523)))))

(assert (=> d!532219 (= (inv!21 (value!106943 token!523)) e!1115186)))

(declare-fun b!1742285 () Bool)

(assert (=> b!1742285 (= e!1115186 e!1115188)))

(declare-fun c!284224 () Bool)

(assert (=> b!1742285 (= c!284224 ((_ is IntegerValue!10510) (value!106943 token!523)))))

(declare-fun b!1742286 () Bool)

(declare-fun inv!17 (TokenValue!3503) Bool)

(assert (=> b!1742286 (= e!1115188 (inv!17 (value!106943 token!523)))))

(assert (= (and d!532219 c!284223) b!1742282))

(assert (= (and d!532219 (not c!284223)) b!1742285))

(assert (= (and b!1742285 c!284224) b!1742286))

(assert (= (and b!1742285 (not c!284224)) b!1742284))

(assert (= (and b!1742284 (not res!783398)) b!1742283))

(declare-fun m!2153475 () Bool)

(assert (=> b!1742282 m!2153475))

(declare-fun m!2153477 () Bool)

(assert (=> b!1742283 m!2153477))

(declare-fun m!2153479 () Bool)

(assert (=> b!1742286 m!2153479))

(assert (=> b!1741993 d!532219))

(declare-fun d!532221 () Bool)

(declare-fun isEmpty!12061 (Option!3851) Bool)

(assert (=> d!532221 (= (isDefined!3194 lt!671802) (not (isEmpty!12061 lt!671802)))))

(declare-fun bs!403040 () Bool)

(assert (= bs!403040 d!532221))

(declare-fun m!2153481 () Bool)

(assert (=> bs!403040 m!2153481))

(assert (=> b!1741992 d!532221))

(declare-fun b!1742305 () Bool)

(declare-fun res!783416 () Bool)

(declare-fun e!1115196 () Bool)

(assert (=> b!1742305 (=> (not res!783416) (not e!1115196))))

(declare-fun lt!671892 () Option!3851)

(assert (=> b!1742305 (= res!783416 (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun b!1742306 () Bool)

(assert (=> b!1742306 (= e!1115196 (contains!3435 rules!3447 (rule!5415 (_1!10801 (get!5774 lt!671892)))))))

(declare-fun call!110094 () Option!3851)

(declare-fun bm!110089 () Bool)

(declare-fun maxPrefixOneRule!968 (LexerInterface!3042 Rule!6626 List!19224) Option!3851)

(assert (=> bm!110089 (= call!110094 (maxPrefixOneRule!968 thiss!24550 (h!24556 rules!3447) lt!671800))))

(declare-fun b!1742307 () Bool)

(declare-fun res!783419 () Bool)

(assert (=> b!1742307 (=> (not res!783419) (not e!1115196))))

(assert (=> b!1742307 (= res!783419 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))) (_2!10801 (get!5774 lt!671892))) lt!671800))))

(declare-fun b!1742308 () Bool)

(declare-fun e!1115195 () Option!3851)

(assert (=> b!1742308 (= e!1115195 call!110094)))

(declare-fun b!1742309 () Bool)

(declare-fun e!1115197 () Bool)

(assert (=> b!1742309 (= e!1115197 e!1115196)))

(declare-fun res!783417 () Bool)

(assert (=> b!1742309 (=> (not res!783417) (not e!1115196))))

(assert (=> b!1742309 (= res!783417 (isDefined!3194 lt!671892))))

(declare-fun b!1742310 () Bool)

(declare-fun res!783414 () Bool)

(assert (=> b!1742310 (=> (not res!783414) (not e!1115196))))

(declare-fun apply!5214 (TokenValueInjection!6666 BalanceConc!12686) TokenValue!3503)

(declare-fun seqFromList!2383 (List!19224) BalanceConc!12686)

(assert (=> b!1742310 (= res!783414 (= (value!106943 (_1!10801 (get!5774 lt!671892))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun d!532223 () Bool)

(assert (=> d!532223 e!1115197))

(declare-fun res!783418 () Bool)

(assert (=> d!532223 (=> res!783418 e!1115197)))

(assert (=> d!532223 (= res!783418 (isEmpty!12061 lt!671892))))

(assert (=> d!532223 (= lt!671892 e!1115195)))

(declare-fun c!284227 () Bool)

(assert (=> d!532223 (= c!284227 (and ((_ is Cons!19155) rules!3447) ((_ is Nil!19155) (t!161924 rules!3447))))))

(declare-fun lt!671888 () Unit!33221)

(declare-fun lt!671889 () Unit!33221)

(assert (=> d!532223 (= lt!671888 lt!671889)))

(assert (=> d!532223 (isPrefix!1654 lt!671800 lt!671800)))

(declare-fun lemmaIsPrefixRefl!1101 (List!19224 List!19224) Unit!33221)

(assert (=> d!532223 (= lt!671889 (lemmaIsPrefixRefl!1101 lt!671800 lt!671800))))

(declare-fun rulesValidInductive!1138 (LexerInterface!3042 List!19225) Bool)

(assert (=> d!532223 (rulesValidInductive!1138 thiss!24550 rules!3447)))

(assert (=> d!532223 (= (maxPrefix!1596 thiss!24550 rules!3447 lt!671800) lt!671892)))

(declare-fun b!1742311 () Bool)

(declare-fun lt!671890 () Option!3851)

(declare-fun lt!671891 () Option!3851)

(assert (=> b!1742311 (= e!1115195 (ite (and ((_ is None!3850) lt!671890) ((_ is None!3850) lt!671891)) None!3850 (ite ((_ is None!3850) lt!671891) lt!671890 (ite ((_ is None!3850) lt!671890) lt!671891 (ite (>= (size!15212 (_1!10801 (v!25283 lt!671890))) (size!15212 (_1!10801 (v!25283 lt!671891)))) lt!671890 lt!671891)))))))

(assert (=> b!1742311 (= lt!671890 call!110094)))

(assert (=> b!1742311 (= lt!671891 (maxPrefix!1596 thiss!24550 (t!161924 rules!3447) lt!671800))))

(declare-fun b!1742312 () Bool)

(declare-fun res!783413 () Bool)

(assert (=> b!1742312 (=> (not res!783413) (not e!1115196))))

(assert (=> b!1742312 (= res!783413 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))) (originalCharacters!4227 (_1!10801 (get!5774 lt!671892)))))))

(declare-fun b!1742313 () Bool)

(declare-fun res!783415 () Bool)

(assert (=> b!1742313 (=> (not res!783415) (not e!1115196))))

(assert (=> b!1742313 (= res!783415 (< (size!15214 (_2!10801 (get!5774 lt!671892))) (size!15214 lt!671800)))))

(assert (= (and d!532223 c!284227) b!1742308))

(assert (= (and d!532223 (not c!284227)) b!1742311))

(assert (= (or b!1742308 b!1742311) bm!110089))

(assert (= (and d!532223 (not res!783418)) b!1742309))

(assert (= (and b!1742309 res!783417) b!1742312))

(assert (= (and b!1742312 res!783413) b!1742313))

(assert (= (and b!1742313 res!783415) b!1742307))

(assert (= (and b!1742307 res!783419) b!1742310))

(assert (= (and b!1742310 res!783414) b!1742305))

(assert (= (and b!1742305 res!783416) b!1742306))

(declare-fun m!2153483 () Bool)

(assert (=> b!1742311 m!2153483))

(declare-fun m!2153485 () Bool)

(assert (=> b!1742305 m!2153485))

(declare-fun m!2153487 () Bool)

(assert (=> b!1742305 m!2153487))

(assert (=> b!1742305 m!2153487))

(declare-fun m!2153489 () Bool)

(assert (=> b!1742305 m!2153489))

(assert (=> b!1742305 m!2153489))

(declare-fun m!2153491 () Bool)

(assert (=> b!1742305 m!2153491))

(declare-fun m!2153493 () Bool)

(assert (=> b!1742309 m!2153493))

(assert (=> b!1742310 m!2153485))

(declare-fun m!2153495 () Bool)

(assert (=> b!1742310 m!2153495))

(assert (=> b!1742310 m!2153495))

(declare-fun m!2153497 () Bool)

(assert (=> b!1742310 m!2153497))

(assert (=> b!1742307 m!2153485))

(assert (=> b!1742307 m!2153487))

(assert (=> b!1742307 m!2153487))

(assert (=> b!1742307 m!2153489))

(assert (=> b!1742307 m!2153489))

(declare-fun m!2153499 () Bool)

(assert (=> b!1742307 m!2153499))

(declare-fun m!2153501 () Bool)

(assert (=> d!532223 m!2153501))

(declare-fun m!2153503 () Bool)

(assert (=> d!532223 m!2153503))

(declare-fun m!2153505 () Bool)

(assert (=> d!532223 m!2153505))

(declare-fun m!2153507 () Bool)

(assert (=> d!532223 m!2153507))

(assert (=> b!1742306 m!2153485))

(declare-fun m!2153509 () Bool)

(assert (=> b!1742306 m!2153509))

(declare-fun m!2153511 () Bool)

(assert (=> bm!110089 m!2153511))

(assert (=> b!1742313 m!2153485))

(declare-fun m!2153513 () Bool)

(assert (=> b!1742313 m!2153513))

(declare-fun m!2153515 () Bool)

(assert (=> b!1742313 m!2153515))

(assert (=> b!1742312 m!2153485))

(assert (=> b!1742312 m!2153487))

(assert (=> b!1742312 m!2153487))

(assert (=> b!1742312 m!2153489))

(assert (=> b!1741992 d!532223))

(declare-fun d!532225 () Bool)

(assert (=> d!532225 (= (list!7746 (charsOf!2062 token!523)) (list!7748 (c!284177 (charsOf!2062 token!523))))))

(declare-fun bs!403041 () Bool)

(assert (= bs!403041 d!532225))

(declare-fun m!2153517 () Bool)

(assert (=> bs!403041 m!2153517))

(assert (=> b!1741992 d!532225))

(declare-fun d!532227 () Bool)

(declare-fun lt!671893 () BalanceConc!12686)

(assert (=> d!532227 (= (list!7746 lt!671893) (originalCharacters!4227 token!523))))

(assert (=> d!532227 (= lt!671893 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))

(assert (=> d!532227 (= (charsOf!2062 token!523) lt!671893)))

(declare-fun b_lambda!55805 () Bool)

(assert (=> (not b_lambda!55805) (not d!532227)))

(assert (=> d!532227 t!161938))

(declare-fun b_and!129557 () Bool)

(assert (= b_and!129551 (and (=> t!161938 result!125268) b_and!129557)))

(assert (=> d!532227 t!161940))

(declare-fun b_and!129559 () Bool)

(assert (= b_and!129553 (and (=> t!161940 result!125272) b_and!129559)))

(assert (=> d!532227 t!161942))

(declare-fun b_and!129561 () Bool)

(assert (= b_and!129555 (and (=> t!161942 result!125274) b_and!129561)))

(declare-fun m!2153519 () Bool)

(assert (=> d!532227 m!2153519))

(assert (=> d!532227 m!2153343))

(assert (=> b!1741992 d!532227))

(declare-fun d!532229 () Bool)

(assert (=> d!532229 (= (inv!24814 (tag!3753 (h!24556 rules!3447))) (= (mod (str.len (value!106942 (tag!3753 (h!24556 rules!3447)))) 2) 0))))

(assert (=> b!1741991 d!532229))

(declare-fun d!532231 () Bool)

(declare-fun res!783422 () Bool)

(declare-fun e!1115200 () Bool)

(assert (=> d!532231 (=> (not res!783422) (not e!1115200))))

(declare-fun semiInverseModEq!1349 (Int Int) Bool)

(assert (=> d!532231 (= res!783422 (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))))))

(assert (=> d!532231 (= (inv!24817 (transformation!3413 (h!24556 rules!3447))) e!1115200)))

(declare-fun b!1742316 () Bool)

(declare-fun equivClasses!1290 (Int Int) Bool)

(assert (=> b!1742316 (= e!1115200 (equivClasses!1290 (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))))))

(assert (= (and d!532231 res!783422) b!1742316))

(declare-fun m!2153521 () Bool)

(assert (=> d!532231 m!2153521))

(declare-fun m!2153523 () Bool)

(assert (=> b!1742316 m!2153523))

(assert (=> b!1741991 d!532231))

(declare-fun d!532233 () Bool)

(assert (=> d!532233 (= (isEmpty!12057 suffix!1421) ((_ is Nil!19154) suffix!1421))))

(assert (=> b!1741980 d!532233))

(declare-fun d!532235 () Bool)

(assert (=> d!532235 (= (inv!24814 (tag!3753 rule!422)) (= (mod (str.len (value!106942 (tag!3753 rule!422))) 2) 0))))

(assert (=> b!1741979 d!532235))

(declare-fun d!532237 () Bool)

(declare-fun res!783423 () Bool)

(declare-fun e!1115201 () Bool)

(assert (=> d!532237 (=> (not res!783423) (not e!1115201))))

(assert (=> d!532237 (= res!783423 (semiInverseModEq!1349 (toChars!4779 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 rule!422))))))

(assert (=> d!532237 (= (inv!24817 (transformation!3413 rule!422)) e!1115201)))

(declare-fun b!1742317 () Bool)

(assert (=> b!1742317 (= e!1115201 (equivClasses!1290 (toChars!4779 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 rule!422))))))

(assert (= (and d!532237 res!783423) b!1742317))

(declare-fun m!2153525 () Bool)

(assert (=> d!532237 m!2153525))

(declare-fun m!2153527 () Bool)

(assert (=> b!1742317 m!2153527))

(assert (=> b!1741979 d!532237))

(declare-fun d!532239 () Bool)

(assert (=> d!532239 (= (isEmpty!12058 rules!3447) ((_ is Nil!19155) rules!3447))))

(assert (=> b!1741989 d!532239))

(declare-fun b!1742318 () Bool)

(declare-fun e!1115205 () Bool)

(declare-fun e!1115206 () Bool)

(assert (=> b!1742318 (= e!1115205 e!1115206)))

(declare-fun res!783429 () Bool)

(assert (=> b!1742318 (=> (not res!783429) (not e!1115206))))

(declare-fun lt!671894 () Bool)

(assert (=> b!1742318 (= res!783429 (not lt!671894))))

(declare-fun b!1742319 () Bool)

(declare-fun e!1115203 () Bool)

(assert (=> b!1742319 (= e!1115206 e!1115203)))

(declare-fun res!783427 () Bool)

(assert (=> b!1742319 (=> res!783427 e!1115203)))

(declare-fun call!110095 () Bool)

(assert (=> b!1742319 (= res!783427 call!110095)))

(declare-fun b!1742320 () Bool)

(declare-fun res!783428 () Bool)

(declare-fun e!1115204 () Bool)

(assert (=> b!1742320 (=> (not res!783428) (not e!1115204))))

(assert (=> b!1742320 (= res!783428 (isEmpty!12057 (tail!2601 lt!671799)))))

(declare-fun b!1742321 () Bool)

(assert (=> b!1742321 (= e!1115204 (= (head!3996 lt!671799) (c!284176 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))

(declare-fun b!1742322 () Bool)

(declare-fun e!1115202 () Bool)

(declare-fun e!1115207 () Bool)

(assert (=> b!1742322 (= e!1115202 e!1115207)))

(declare-fun c!284229 () Bool)

(assert (=> b!1742322 (= c!284229 ((_ is EmptyLang!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun d!532241 () Bool)

(assert (=> d!532241 e!1115202))

(declare-fun c!284230 () Bool)

(assert (=> d!532241 (= c!284230 ((_ is EmptyExpr!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun e!1115208 () Bool)

(assert (=> d!532241 (= lt!671894 e!1115208)))

(declare-fun c!284228 () Bool)

(assert (=> d!532241 (= c!284228 (isEmpty!12057 lt!671799))))

(assert (=> d!532241 (validRegex!1910 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))

(assert (=> d!532241 (= (matchR!2215 (regex!3413 (rule!5415 (_1!10801 lt!671797))) lt!671799) lt!671894)))

(declare-fun b!1742323 () Bool)

(declare-fun res!783424 () Bool)

(assert (=> b!1742323 (=> res!783424 e!1115203)))

(assert (=> b!1742323 (= res!783424 (not (isEmpty!12057 (tail!2601 lt!671799))))))

(declare-fun b!1742324 () Bool)

(assert (=> b!1742324 (= e!1115203 (not (= (head!3996 lt!671799) (c!284176 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))))

(declare-fun b!1742325 () Bool)

(assert (=> b!1742325 (= e!1115207 (not lt!671894))))

(declare-fun b!1742326 () Bool)

(declare-fun res!783430 () Bool)

(assert (=> b!1742326 (=> res!783430 e!1115205)))

(assert (=> b!1742326 (= res!783430 (not ((_ is ElementMatch!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> b!1742326 (= e!1115207 e!1115205)))

(declare-fun b!1742327 () Bool)

(assert (=> b!1742327 (= e!1115202 (= lt!671894 call!110095))))

(declare-fun b!1742328 () Bool)

(declare-fun res!783426 () Bool)

(assert (=> b!1742328 (=> res!783426 e!1115205)))

(assert (=> b!1742328 (= res!783426 e!1115204)))

(declare-fun res!783425 () Bool)

(assert (=> b!1742328 (=> (not res!783425) (not e!1115204))))

(assert (=> b!1742328 (= res!783425 lt!671894)))

(declare-fun b!1742329 () Bool)

(assert (=> b!1742329 (= e!1115208 (nullable!1436 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1742330 () Bool)

(assert (=> b!1742330 (= e!1115208 (matchR!2215 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)) (tail!2601 lt!671799)))))

(declare-fun b!1742331 () Bool)

(declare-fun res!783431 () Bool)

(assert (=> b!1742331 (=> (not res!783431) (not e!1115204))))

(assert (=> b!1742331 (= res!783431 (not call!110095))))

(declare-fun bm!110090 () Bool)

(assert (=> bm!110090 (= call!110095 (isEmpty!12057 lt!671799))))

(assert (= (and d!532241 c!284228) b!1742329))

(assert (= (and d!532241 (not c!284228)) b!1742330))

(assert (= (and d!532241 c!284230) b!1742327))

(assert (= (and d!532241 (not c!284230)) b!1742322))

(assert (= (and b!1742322 c!284229) b!1742325))

(assert (= (and b!1742322 (not c!284229)) b!1742326))

(assert (= (and b!1742326 (not res!783430)) b!1742328))

(assert (= (and b!1742328 res!783425) b!1742331))

(assert (= (and b!1742331 res!783431) b!1742320))

(assert (= (and b!1742320 res!783428) b!1742321))

(assert (= (and b!1742328 (not res!783426)) b!1742318))

(assert (= (and b!1742318 res!783429) b!1742319))

(assert (= (and b!1742319 (not res!783427)) b!1742323))

(assert (= (and b!1742323 (not res!783424)) b!1742324))

(assert (= (or b!1742327 b!1742319 b!1742331) bm!110090))

(declare-fun m!2153529 () Bool)

(assert (=> d!532241 m!2153529))

(declare-fun m!2153531 () Bool)

(assert (=> d!532241 m!2153531))

(declare-fun m!2153533 () Bool)

(assert (=> b!1742320 m!2153533))

(assert (=> b!1742320 m!2153533))

(declare-fun m!2153535 () Bool)

(assert (=> b!1742320 m!2153535))

(declare-fun m!2153537 () Bool)

(assert (=> b!1742321 m!2153537))

(declare-fun m!2153539 () Bool)

(assert (=> b!1742329 m!2153539))

(assert (=> b!1742330 m!2153537))

(assert (=> b!1742330 m!2153537))

(declare-fun m!2153541 () Bool)

(assert (=> b!1742330 m!2153541))

(assert (=> b!1742330 m!2153533))

(assert (=> b!1742330 m!2153541))

(assert (=> b!1742330 m!2153533))

(declare-fun m!2153543 () Bool)

(assert (=> b!1742330 m!2153543))

(assert (=> b!1742324 m!2153537))

(assert (=> b!1742323 m!2153533))

(assert (=> b!1742323 m!2153533))

(assert (=> b!1742323 m!2153535))

(assert (=> bm!110090 m!2153529))

(assert (=> b!1741999 d!532241))

(declare-fun b!1742342 () Bool)

(declare-fun res!783437 () Bool)

(declare-fun e!1115214 () Bool)

(assert (=> b!1742342 (=> (not res!783437) (not e!1115214))))

(declare-fun lt!671897 () List!19224)

(assert (=> b!1742342 (= res!783437 (= (size!15214 lt!671897) (+ (size!15214 lt!671799) (size!15214 (_2!10801 lt!671797)))))))

(declare-fun b!1742341 () Bool)

(declare-fun e!1115213 () List!19224)

(assert (=> b!1742341 (= e!1115213 (Cons!19154 (h!24555 lt!671799) (++!5238 (t!161923 lt!671799) (_2!10801 lt!671797))))))

(declare-fun b!1742340 () Bool)

(assert (=> b!1742340 (= e!1115213 (_2!10801 lt!671797))))

(declare-fun b!1742343 () Bool)

(assert (=> b!1742343 (= e!1115214 (or (not (= (_2!10801 lt!671797) Nil!19154)) (= lt!671897 lt!671799)))))

(declare-fun d!532243 () Bool)

(assert (=> d!532243 e!1115214))

(declare-fun res!783436 () Bool)

(assert (=> d!532243 (=> (not res!783436) (not e!1115214))))

(declare-fun content!2748 (List!19224) (InoxSet C!9656))

(assert (=> d!532243 (= res!783436 (= (content!2748 lt!671897) ((_ map or) (content!2748 lt!671799) (content!2748 (_2!10801 lt!671797)))))))

(assert (=> d!532243 (= lt!671897 e!1115213)))

(declare-fun c!284233 () Bool)

(assert (=> d!532243 (= c!284233 ((_ is Nil!19154) lt!671799))))

(assert (=> d!532243 (= (++!5238 lt!671799 (_2!10801 lt!671797)) lt!671897)))

(assert (= (and d!532243 c!284233) b!1742340))

(assert (= (and d!532243 (not c!284233)) b!1742341))

(assert (= (and d!532243 res!783436) b!1742342))

(assert (= (and b!1742342 res!783437) b!1742343))

(declare-fun m!2153545 () Bool)

(assert (=> b!1742342 m!2153545))

(declare-fun m!2153547 () Bool)

(assert (=> b!1742342 m!2153547))

(declare-fun m!2153549 () Bool)

(assert (=> b!1742342 m!2153549))

(declare-fun m!2153551 () Bool)

(assert (=> b!1742341 m!2153551))

(declare-fun m!2153553 () Bool)

(assert (=> d!532243 m!2153553))

(declare-fun m!2153555 () Bool)

(assert (=> d!532243 m!2153555))

(declare-fun m!2153557 () Bool)

(assert (=> d!532243 m!2153557))

(assert (=> b!1741988 d!532243))

(declare-fun d!532245 () Bool)

(assert (=> d!532245 (isPrefix!1654 lt!671799 (++!5238 lt!671799 (_2!10801 lt!671797)))))

(declare-fun lt!671900 () Unit!33221)

(declare-fun choose!10728 (List!19224 List!19224) Unit!33221)

(assert (=> d!532245 (= lt!671900 (choose!10728 lt!671799 (_2!10801 lt!671797)))))

(assert (=> d!532245 (= (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!671799 (_2!10801 lt!671797)) lt!671900)))

(declare-fun bs!403042 () Bool)

(assert (= bs!403042 d!532245))

(assert (=> bs!403042 m!2153149))

(assert (=> bs!403042 m!2153149))

(assert (=> bs!403042 m!2153153))

(declare-fun m!2153559 () Bool)

(assert (=> bs!403042 m!2153559))

(assert (=> b!1741988 d!532245))

(declare-fun b!1742346 () Bool)

(declare-fun res!783439 () Bool)

(declare-fun e!1115216 () Bool)

(assert (=> b!1742346 (=> (not res!783439) (not e!1115216))))

(declare-fun lt!671901 () List!19224)

(assert (=> b!1742346 (= res!783439 (= (size!15214 lt!671901) (+ (size!15214 lt!671800) (size!15214 suffix!1421))))))

(declare-fun b!1742345 () Bool)

(declare-fun e!1115215 () List!19224)

(assert (=> b!1742345 (= e!1115215 (Cons!19154 (h!24555 lt!671800) (++!5238 (t!161923 lt!671800) suffix!1421)))))

(declare-fun b!1742344 () Bool)

(assert (=> b!1742344 (= e!1115215 suffix!1421)))

(declare-fun b!1742347 () Bool)

(assert (=> b!1742347 (= e!1115216 (or (not (= suffix!1421 Nil!19154)) (= lt!671901 lt!671800)))))

(declare-fun d!532247 () Bool)

(assert (=> d!532247 e!1115216))

(declare-fun res!783438 () Bool)

(assert (=> d!532247 (=> (not res!783438) (not e!1115216))))

(assert (=> d!532247 (= res!783438 (= (content!2748 lt!671901) ((_ map or) (content!2748 lt!671800) (content!2748 suffix!1421))))))

(assert (=> d!532247 (= lt!671901 e!1115215)))

(declare-fun c!284234 () Bool)

(assert (=> d!532247 (= c!284234 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532247 (= (++!5238 lt!671800 suffix!1421) lt!671901)))

(assert (= (and d!532247 c!284234) b!1742344))

(assert (= (and d!532247 (not c!284234)) b!1742345))

(assert (= (and d!532247 res!783438) b!1742346))

(assert (= (and b!1742346 res!783439) b!1742347))

(declare-fun m!2153561 () Bool)

(assert (=> b!1742346 m!2153561))

(assert (=> b!1742346 m!2153515))

(declare-fun m!2153563 () Bool)

(assert (=> b!1742346 m!2153563))

(declare-fun m!2153565 () Bool)

(assert (=> b!1742345 m!2153565))

(declare-fun m!2153567 () Bool)

(assert (=> d!532247 m!2153567))

(declare-fun m!2153569 () Bool)

(assert (=> d!532247 m!2153569))

(declare-fun m!2153571 () Bool)

(assert (=> d!532247 m!2153571))

(assert (=> b!1741988 d!532247))

(declare-fun b!1742359 () Bool)

(declare-fun e!1115225 () Bool)

(assert (=> b!1742359 (= e!1115225 (>= (size!15214 lt!671803) (size!15214 lt!671800)))))

(declare-fun b!1742357 () Bool)

(declare-fun res!783448 () Bool)

(declare-fun e!1115224 () Bool)

(assert (=> b!1742357 (=> (not res!783448) (not e!1115224))))

(assert (=> b!1742357 (= res!783448 (= (head!3996 lt!671800) (head!3996 lt!671803)))))

(declare-fun b!1742358 () Bool)

(assert (=> b!1742358 (= e!1115224 (isPrefix!1654 (tail!2601 lt!671800) (tail!2601 lt!671803)))))

(declare-fun d!532249 () Bool)

(assert (=> d!532249 e!1115225))

(declare-fun res!783450 () Bool)

(assert (=> d!532249 (=> res!783450 e!1115225)))

(declare-fun lt!671904 () Bool)

(assert (=> d!532249 (= res!783450 (not lt!671904))))

(declare-fun e!1115223 () Bool)

(assert (=> d!532249 (= lt!671904 e!1115223)))

(declare-fun res!783449 () Bool)

(assert (=> d!532249 (=> res!783449 e!1115223)))

(assert (=> d!532249 (= res!783449 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532249 (= (isPrefix!1654 lt!671800 lt!671803) lt!671904)))

(declare-fun b!1742356 () Bool)

(assert (=> b!1742356 (= e!1115223 e!1115224)))

(declare-fun res!783451 () Bool)

(assert (=> b!1742356 (=> (not res!783451) (not e!1115224))))

(assert (=> b!1742356 (= res!783451 (not ((_ is Nil!19154) lt!671803)))))

(assert (= (and d!532249 (not res!783449)) b!1742356))

(assert (= (and b!1742356 res!783451) b!1742357))

(assert (= (and b!1742357 res!783448) b!1742358))

(assert (= (and d!532249 (not res!783450)) b!1742359))

(declare-fun m!2153573 () Bool)

(assert (=> b!1742359 m!2153573))

(assert (=> b!1742359 m!2153515))

(declare-fun m!2153575 () Bool)

(assert (=> b!1742357 m!2153575))

(declare-fun m!2153577 () Bool)

(assert (=> b!1742357 m!2153577))

(declare-fun m!2153579 () Bool)

(assert (=> b!1742358 m!2153579))

(declare-fun m!2153581 () Bool)

(assert (=> b!1742358 m!2153581))

(assert (=> b!1742358 m!2153579))

(assert (=> b!1742358 m!2153581))

(declare-fun m!2153583 () Bool)

(assert (=> b!1742358 m!2153583))

(assert (=> b!1741988 d!532249))

(declare-fun b!1742446 () Bool)

(declare-fun e!1115270 () Unit!33221)

(declare-fun Unit!33226 () Unit!33221)

(assert (=> b!1742446 (= e!1115270 Unit!33226)))

(declare-fun lt!672010 () List!19224)

(assert (=> b!1742446 (= lt!672010 (++!5238 lt!671800 suffix!1421))))

(declare-fun lt!672009 () Unit!33221)

(declare-fun lt!672004 () Token!6392)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!293 (LexerInterface!3042 Rule!6626 List!19225 List!19224) Unit!33221)

(assert (=> b!1742446 (= lt!672009 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!293 thiss!24550 (rule!5415 lt!672004) rules!3447 lt!672010))))

(assert (=> b!1742446 (isEmpty!12061 (maxPrefixOneRule!968 thiss!24550 (rule!5415 lt!672004) lt!672010))))

(declare-fun lt!671997 () Unit!33221)

(assert (=> b!1742446 (= lt!671997 lt!672009)))

(declare-fun lt!671998 () List!19224)

(assert (=> b!1742446 (= lt!671998 (list!7746 (charsOf!2062 lt!672004)))))

(declare-fun lt!672001 () Unit!33221)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!289 (LexerInterface!3042 Rule!6626 List!19224 List!19224) Unit!33221)

(assert (=> b!1742446 (= lt!672001 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!289 thiss!24550 (rule!5415 lt!672004) lt!671998 (++!5238 lt!671800 suffix!1421)))))

(assert (=> b!1742446 (not (matchR!2215 (regex!3413 (rule!5415 lt!672004)) lt!671998))))

(declare-fun lt!671996 () Unit!33221)

(assert (=> b!1742446 (= lt!671996 lt!672001)))

(assert (=> b!1742446 false))

(declare-fun b!1742444 () Bool)

(declare-fun res!783474 () Bool)

(declare-fun e!1115271 () Bool)

(assert (=> b!1742444 (=> (not res!783474) (not e!1115271))))

(assert (=> b!1742444 (= res!783474 (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))) (list!7746 (charsOf!2062 lt!672004))))))

(declare-fun b!1742445 () Bool)

(assert (=> b!1742445 (= e!1115271 (= (rule!5415 lt!672004) (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))

(declare-fun b!1742447 () Bool)

(declare-fun Unit!33227 () Unit!33221)

(assert (=> b!1742447 (= e!1115270 Unit!33227)))

(declare-fun d!532251 () Bool)

(assert (=> d!532251 (isDefined!3194 (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421)))))

(declare-fun lt!672011 () Unit!33221)

(assert (=> d!532251 (= lt!672011 e!1115270)))

(declare-fun c!284247 () Bool)

(assert (=> d!532251 (= c!284247 (isEmpty!12061 (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421))))))

(declare-fun lt!672006 () Unit!33221)

(declare-fun lt!672007 () Unit!33221)

(assert (=> d!532251 (= lt!672006 lt!672007)))

(assert (=> d!532251 e!1115271))

(declare-fun res!783473 () Bool)

(assert (=> d!532251 (=> (not res!783473) (not e!1115271))))

(assert (=> d!532251 (= res!783473 (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))

(assert (=> d!532251 (= lt!672007 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!463 thiss!24550 rules!3447 lt!671800 lt!672004))))

(declare-fun lt!671999 () Unit!33221)

(declare-fun lt!672003 () Unit!33221)

(assert (=> d!532251 (= lt!671999 lt!672003)))

(declare-fun lt!672002 () List!19224)

(assert (=> d!532251 (isPrefix!1654 lt!672002 (++!5238 lt!671800 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!285 (List!19224 List!19224 List!19224) Unit!33221)

(assert (=> d!532251 (= lt!672003 (lemmaPrefixStaysPrefixWhenAddingToSuffix!285 lt!672002 lt!671800 suffix!1421))))

(assert (=> d!532251 (= lt!672002 (list!7746 (charsOf!2062 lt!672004)))))

(declare-fun lt!672008 () Unit!33221)

(declare-fun lt!672005 () Unit!33221)

(assert (=> d!532251 (= lt!672008 lt!672005)))

(declare-fun lt!672012 () List!19224)

(declare-fun lt!672000 () List!19224)

(assert (=> d!532251 (isPrefix!1654 lt!672012 (++!5238 lt!672012 lt!672000))))

(assert (=> d!532251 (= lt!672005 (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!672012 lt!672000))))

(assert (=> d!532251 (= lt!672000 (_2!10801 (get!5774 (maxPrefix!1596 thiss!24550 rules!3447 lt!671800))))))

(assert (=> d!532251 (= lt!672012 (list!7746 (charsOf!2062 lt!672004)))))

(declare-datatypes ((List!19229 0))(
  ( (Nil!19159) (Cons!19159 (h!24560 Token!6392) (t!161960 List!19229)) )
))
(declare-fun head!3998 (List!19229) Token!6392)

(declare-datatypes ((IArray!12751 0))(
  ( (IArray!12752 (innerList!6433 List!19229)) )
))
(declare-datatypes ((Conc!6373 0))(
  ( (Node!6373 (left!15317 Conc!6373) (right!15647 Conc!6373) (csize!12976 Int) (cheight!6584 Int)) (Leaf!9300 (xs!9249 IArray!12751) (csize!12977 Int)) (Empty!6373) )
))
(declare-datatypes ((BalanceConc!12690 0))(
  ( (BalanceConc!12691 (c!284263 Conc!6373)) )
))
(declare-fun list!7750 (BalanceConc!12690) List!19229)

(declare-datatypes ((tuple2!18802 0))(
  ( (tuple2!18803 (_1!10803 BalanceConc!12690) (_2!10803 BalanceConc!12686)) )
))
(declare-fun lex!1424 (LexerInterface!3042 List!19225 BalanceConc!12686) tuple2!18802)

(assert (=> d!532251 (= lt!672004 (head!3998 (list!7750 (_1!10803 (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800))))))))

(assert (=> d!532251 (not (isEmpty!12058 rules!3447))))

(assert (=> d!532251 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!566 thiss!24550 rules!3447 lt!671800 suffix!1421) lt!672011)))

(assert (= (and d!532251 res!783473) b!1742444))

(assert (= (and b!1742444 res!783474) b!1742445))

(assert (= (and d!532251 c!284247) b!1742446))

(assert (= (and d!532251 (not c!284247)) b!1742447))

(assert (=> b!1742446 m!2153155))

(declare-fun m!2153685 () Bool)

(assert (=> b!1742446 m!2153685))

(declare-fun m!2153687 () Bool)

(assert (=> b!1742446 m!2153687))

(declare-fun m!2153689 () Bool)

(assert (=> b!1742446 m!2153689))

(declare-fun m!2153691 () Bool)

(assert (=> b!1742446 m!2153691))

(assert (=> b!1742446 m!2153155))

(declare-fun m!2153693 () Bool)

(assert (=> b!1742446 m!2153693))

(assert (=> b!1742446 m!2153689))

(assert (=> b!1742446 m!2153685))

(declare-fun m!2153695 () Bool)

(assert (=> b!1742446 m!2153695))

(declare-fun m!2153697 () Bool)

(assert (=> b!1742446 m!2153697))

(assert (=> b!1742444 m!2153691))

(declare-fun m!2153699 () Bool)

(assert (=> b!1742444 m!2153699))

(assert (=> b!1742444 m!2153689))

(assert (=> b!1742444 m!2153691))

(declare-fun m!2153701 () Bool)

(assert (=> b!1742444 m!2153701))

(assert (=> b!1742444 m!2153689))

(assert (=> b!1742444 m!2153701))

(declare-fun m!2153703 () Bool)

(assert (=> b!1742444 m!2153703))

(assert (=> b!1742445 m!2153701))

(assert (=> b!1742445 m!2153701))

(assert (=> b!1742445 m!2153703))

(assert (=> d!532251 m!2153155))

(declare-fun m!2153705 () Bool)

(assert (=> d!532251 m!2153705))

(declare-fun m!2153707 () Bool)

(assert (=> d!532251 m!2153707))

(declare-fun m!2153709 () Bool)

(assert (=> d!532251 m!2153709))

(assert (=> d!532251 m!2153701))

(declare-fun m!2153711 () Bool)

(assert (=> d!532251 m!2153711))

(declare-fun m!2153713 () Bool)

(assert (=> d!532251 m!2153713))

(declare-fun m!2153715 () Bool)

(assert (=> d!532251 m!2153715))

(assert (=> d!532251 m!2153713))

(declare-fun m!2153717 () Bool)

(assert (=> d!532251 m!2153717))

(assert (=> d!532251 m!2153701))

(declare-fun m!2153719 () Bool)

(assert (=> d!532251 m!2153719))

(assert (=> d!532251 m!2153155))

(assert (=> d!532251 m!2153713))

(declare-fun m!2153721 () Bool)

(assert (=> d!532251 m!2153721))

(assert (=> d!532251 m!2153711))

(declare-fun m!2153723 () Bool)

(assert (=> d!532251 m!2153723))

(assert (=> d!532251 m!2153181))

(assert (=> d!532251 m!2153169))

(declare-fun m!2153725 () Bool)

(assert (=> d!532251 m!2153725))

(declare-fun m!2153727 () Bool)

(assert (=> d!532251 m!2153727))

(declare-fun m!2153729 () Bool)

(assert (=> d!532251 m!2153729))

(assert (=> d!532251 m!2153155))

(declare-fun m!2153731 () Bool)

(assert (=> d!532251 m!2153731))

(assert (=> d!532251 m!2153707))

(assert (=> d!532251 m!2153727))

(assert (=> d!532251 m!2153689))

(assert (=> d!532251 m!2153691))

(assert (=> d!532251 m!2153169))

(assert (=> d!532251 m!2153689))

(declare-fun m!2153733 () Bool)

(assert (=> d!532251 m!2153733))

(assert (=> b!1741988 d!532251))

(assert (=> b!1741988 d!532197))

(declare-fun d!532269 () Bool)

(declare-fun e!1115274 () Bool)

(assert (=> d!532269 e!1115274))

(declare-fun res!783479 () Bool)

(assert (=> d!532269 (=> (not res!783479) (not e!1115274))))

(assert (=> d!532269 (= res!783479 (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))

(declare-fun lt!672015 () Unit!33221)

(declare-fun choose!10729 (LexerInterface!3042 List!19225 List!19224 Token!6392) Unit!33221)

(assert (=> d!532269 (= lt!672015 (choose!10729 thiss!24550 rules!3447 lt!671803 (_1!10801 lt!671797)))))

(assert (=> d!532269 (rulesInvariant!2711 thiss!24550 rules!3447)))

(assert (=> d!532269 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!463 thiss!24550 rules!3447 lt!671803 (_1!10801 lt!671797)) lt!672015)))

(declare-fun b!1742452 () Bool)

(declare-fun res!783480 () Bool)

(assert (=> b!1742452 (=> (not res!783480) (not e!1115274))))

(assert (=> b!1742452 (= res!783480 (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun b!1742453 () Bool)

(assert (=> b!1742453 (= e!1115274 (= (rule!5415 (_1!10801 lt!671797)) (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(assert (= (and d!532269 res!783479) b!1742452))

(assert (= (and b!1742452 res!783480) b!1742453))

(assert (=> d!532269 m!2153137))

(assert (=> d!532269 m!2153137))

(declare-fun m!2153735 () Bool)

(assert (=> d!532269 m!2153735))

(declare-fun m!2153737 () Bool)

(assert (=> d!532269 m!2153737))

(assert (=> d!532269 m!2153119))

(assert (=> b!1742452 m!2153137))

(declare-fun m!2153739 () Bool)

(assert (=> b!1742452 m!2153739))

(assert (=> b!1742452 m!2153137))

(assert (=> b!1742452 m!2153131))

(declare-fun m!2153741 () Bool)

(assert (=> b!1742452 m!2153741))

(assert (=> b!1742452 m!2153129))

(assert (=> b!1742452 m!2153129))

(assert (=> b!1742452 m!2153131))

(assert (=> b!1742453 m!2153137))

(assert (=> b!1742453 m!2153137))

(assert (=> b!1742453 m!2153739))

(assert (=> b!1741988 d!532269))

(declare-fun d!532271 () Bool)

(assert (=> d!532271 (= (get!5774 lt!671806) (v!25283 lt!671806))))

(assert (=> b!1741988 d!532271))

(declare-fun b!1742457 () Bool)

(declare-fun e!1115277 () Bool)

(assert (=> b!1742457 (= e!1115277 (>= (size!15214 (++!5238 lt!671799 (_2!10801 lt!671797))) (size!15214 lt!671799)))))

(declare-fun b!1742455 () Bool)

(declare-fun res!783481 () Bool)

(declare-fun e!1115276 () Bool)

(assert (=> b!1742455 (=> (not res!783481) (not e!1115276))))

(assert (=> b!1742455 (= res!783481 (= (head!3996 lt!671799) (head!3996 (++!5238 lt!671799 (_2!10801 lt!671797)))))))

(declare-fun b!1742456 () Bool)

(assert (=> b!1742456 (= e!1115276 (isPrefix!1654 (tail!2601 lt!671799) (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797)))))))

(declare-fun d!532273 () Bool)

(assert (=> d!532273 e!1115277))

(declare-fun res!783483 () Bool)

(assert (=> d!532273 (=> res!783483 e!1115277)))

(declare-fun lt!672016 () Bool)

(assert (=> d!532273 (= res!783483 (not lt!672016))))

(declare-fun e!1115275 () Bool)

(assert (=> d!532273 (= lt!672016 e!1115275)))

(declare-fun res!783482 () Bool)

(assert (=> d!532273 (=> res!783482 e!1115275)))

(assert (=> d!532273 (= res!783482 ((_ is Nil!19154) lt!671799))))

(assert (=> d!532273 (= (isPrefix!1654 lt!671799 (++!5238 lt!671799 (_2!10801 lt!671797))) lt!672016)))

(declare-fun b!1742454 () Bool)

(assert (=> b!1742454 (= e!1115275 e!1115276)))

(declare-fun res!783484 () Bool)

(assert (=> b!1742454 (=> (not res!783484) (not e!1115276))))

(assert (=> b!1742454 (= res!783484 (not ((_ is Nil!19154) (++!5238 lt!671799 (_2!10801 lt!671797)))))))

(assert (= (and d!532273 (not res!783482)) b!1742454))

(assert (= (and b!1742454 res!783484) b!1742455))

(assert (= (and b!1742455 res!783481) b!1742456))

(assert (= (and d!532273 (not res!783483)) b!1742457))

(assert (=> b!1742457 m!2153149))

(declare-fun m!2153743 () Bool)

(assert (=> b!1742457 m!2153743))

(assert (=> b!1742457 m!2153547))

(assert (=> b!1742455 m!2153537))

(assert (=> b!1742455 m!2153149))

(declare-fun m!2153745 () Bool)

(assert (=> b!1742455 m!2153745))

(assert (=> b!1742456 m!2153533))

(assert (=> b!1742456 m!2153149))

(declare-fun m!2153747 () Bool)

(assert (=> b!1742456 m!2153747))

(assert (=> b!1742456 m!2153533))

(assert (=> b!1742456 m!2153747))

(declare-fun m!2153749 () Bool)

(assert (=> b!1742456 m!2153749))

(assert (=> b!1741988 d!532273))

(declare-fun d!532275 () Bool)

(declare-fun isEmpty!12062 (Option!3850) Bool)

(assert (=> d!532275 (= (isDefined!3193 lt!671805) (not (isEmpty!12062 lt!671805)))))

(declare-fun bs!403045 () Bool)

(assert (= bs!403045 d!532275))

(declare-fun m!2153751 () Bool)

(assert (=> bs!403045 m!2153751))

(assert (=> b!1741988 d!532275))

(assert (=> b!1741988 d!532195))

(declare-fun d!532277 () Bool)

(assert (=> d!532277 (isPrefix!1654 lt!671800 (++!5238 lt!671800 suffix!1421))))

(declare-fun lt!672017 () Unit!33221)

(assert (=> d!532277 (= lt!672017 (choose!10728 lt!671800 suffix!1421))))

(assert (=> d!532277 (= (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!671800 suffix!1421) lt!672017)))

(declare-fun bs!403046 () Bool)

(assert (= bs!403046 d!532277))

(assert (=> bs!403046 m!2153155))

(assert (=> bs!403046 m!2153155))

(declare-fun m!2153753 () Bool)

(assert (=> bs!403046 m!2153753))

(declare-fun m!2153755 () Bool)

(assert (=> bs!403046 m!2153755))

(assert (=> b!1741988 d!532277))

(declare-fun b!1742470 () Bool)

(declare-fun lt!672024 () Unit!33221)

(declare-fun lt!672026 () Unit!33221)

(assert (=> b!1742470 (= lt!672024 lt!672026)))

(assert (=> b!1742470 (rulesInvariant!2711 thiss!24550 (t!161924 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!164 (LexerInterface!3042 Rule!6626 List!19225) Unit!33221)

(assert (=> b!1742470 (= lt!672026 (lemmaInvariantOnRulesThenOnTail!164 thiss!24550 (h!24556 rules!3447) (t!161924 rules!3447)))))

(declare-fun e!1115286 () Option!3850)

(assert (=> b!1742470 (= e!1115286 (getRuleFromTag!463 thiss!24550 (t!161924 rules!3447) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1742471 () Bool)

(assert (=> b!1742471 (= e!1115286 None!3849)))

(declare-fun b!1742472 () Bool)

(declare-fun e!1115287 () Bool)

(declare-fun e!1115289 () Bool)

(assert (=> b!1742472 (= e!1115287 e!1115289)))

(declare-fun res!783489 () Bool)

(assert (=> b!1742472 (=> (not res!783489) (not e!1115289))))

(declare-fun lt!672025 () Option!3850)

(assert (=> b!1742472 (= res!783489 (contains!3435 rules!3447 (get!5775 lt!672025)))))

(declare-fun b!1742473 () Bool)

(declare-fun e!1115288 () Option!3850)

(assert (=> b!1742473 (= e!1115288 e!1115286)))

(declare-fun c!284253 () Bool)

(assert (=> b!1742473 (= c!284253 (and ((_ is Cons!19155) rules!3447) (not (= (tag!3753 (h!24556 rules!3447)) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(declare-fun d!532279 () Bool)

(assert (=> d!532279 e!1115287))

(declare-fun res!783490 () Bool)

(assert (=> d!532279 (=> res!783490 e!1115287)))

(assert (=> d!532279 (= res!783490 (isEmpty!12062 lt!672025))))

(assert (=> d!532279 (= lt!672025 e!1115288)))

(declare-fun c!284252 () Bool)

(assert (=> d!532279 (= c!284252 (and ((_ is Cons!19155) rules!3447) (= (tag!3753 (h!24556 rules!3447)) (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> d!532279 (rulesInvariant!2711 thiss!24550 rules!3447)))

(assert (=> d!532279 (= (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))) lt!672025)))

(declare-fun b!1742474 () Bool)

(assert (=> b!1742474 (= e!1115289 (= (tag!3753 (get!5775 lt!672025)) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1742475 () Bool)

(assert (=> b!1742475 (= e!1115288 (Some!3849 (h!24556 rules!3447)))))

(assert (= (and d!532279 c!284252) b!1742475))

(assert (= (and d!532279 (not c!284252)) b!1742473))

(assert (= (and b!1742473 c!284253) b!1742470))

(assert (= (and b!1742473 (not c!284253)) b!1742471))

(assert (= (and d!532279 (not res!783490)) b!1742472))

(assert (= (and b!1742472 res!783489) b!1742474))

(declare-fun m!2153757 () Bool)

(assert (=> b!1742470 m!2153757))

(declare-fun m!2153759 () Bool)

(assert (=> b!1742470 m!2153759))

(declare-fun m!2153761 () Bool)

(assert (=> b!1742470 m!2153761))

(declare-fun m!2153763 () Bool)

(assert (=> b!1742472 m!2153763))

(assert (=> b!1742472 m!2153763))

(declare-fun m!2153765 () Bool)

(assert (=> b!1742472 m!2153765))

(declare-fun m!2153767 () Bool)

(assert (=> d!532279 m!2153767))

(assert (=> d!532279 m!2153119))

(assert (=> b!1742474 m!2153763))

(assert (=> b!1741988 d!532279))

(declare-fun b!1742476 () Bool)

(declare-fun res!783494 () Bool)

(declare-fun e!1115291 () Bool)

(assert (=> b!1742476 (=> (not res!783494) (not e!1115291))))

(declare-fun lt!672031 () Option!3851)

(assert (=> b!1742476 (= res!783494 (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun b!1742477 () Bool)

(assert (=> b!1742477 (= e!1115291 (contains!3435 rules!3447 (rule!5415 (_1!10801 (get!5774 lt!672031)))))))

(declare-fun call!110097 () Option!3851)

(declare-fun bm!110092 () Bool)

(assert (=> bm!110092 (= call!110097 (maxPrefixOneRule!968 thiss!24550 (h!24556 rules!3447) lt!671803))))

(declare-fun b!1742478 () Bool)

(declare-fun res!783497 () Bool)

(assert (=> b!1742478 (=> (not res!783497) (not e!1115291))))

(assert (=> b!1742478 (= res!783497 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))) (_2!10801 (get!5774 lt!672031))) lt!671803))))

(declare-fun b!1742479 () Bool)

(declare-fun e!1115290 () Option!3851)

(assert (=> b!1742479 (= e!1115290 call!110097)))

(declare-fun b!1742480 () Bool)

(declare-fun e!1115292 () Bool)

(assert (=> b!1742480 (= e!1115292 e!1115291)))

(declare-fun res!783495 () Bool)

(assert (=> b!1742480 (=> (not res!783495) (not e!1115291))))

(assert (=> b!1742480 (= res!783495 (isDefined!3194 lt!672031))))

(declare-fun b!1742481 () Bool)

(declare-fun res!783492 () Bool)

(assert (=> b!1742481 (=> (not res!783492) (not e!1115291))))

(assert (=> b!1742481 (= res!783492 (= (value!106943 (_1!10801 (get!5774 lt!672031))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun d!532281 () Bool)

(assert (=> d!532281 e!1115292))

(declare-fun res!783496 () Bool)

(assert (=> d!532281 (=> res!783496 e!1115292)))

(assert (=> d!532281 (= res!783496 (isEmpty!12061 lt!672031))))

(assert (=> d!532281 (= lt!672031 e!1115290)))

(declare-fun c!284254 () Bool)

(assert (=> d!532281 (= c!284254 (and ((_ is Cons!19155) rules!3447) ((_ is Nil!19155) (t!161924 rules!3447))))))

(declare-fun lt!672027 () Unit!33221)

(declare-fun lt!672028 () Unit!33221)

(assert (=> d!532281 (= lt!672027 lt!672028)))

(assert (=> d!532281 (isPrefix!1654 lt!671803 lt!671803)))

(assert (=> d!532281 (= lt!672028 (lemmaIsPrefixRefl!1101 lt!671803 lt!671803))))

(assert (=> d!532281 (rulesValidInductive!1138 thiss!24550 rules!3447)))

(assert (=> d!532281 (= (maxPrefix!1596 thiss!24550 rules!3447 lt!671803) lt!672031)))

(declare-fun b!1742482 () Bool)

(declare-fun lt!672029 () Option!3851)

(declare-fun lt!672030 () Option!3851)

(assert (=> b!1742482 (= e!1115290 (ite (and ((_ is None!3850) lt!672029) ((_ is None!3850) lt!672030)) None!3850 (ite ((_ is None!3850) lt!672030) lt!672029 (ite ((_ is None!3850) lt!672029) lt!672030 (ite (>= (size!15212 (_1!10801 (v!25283 lt!672029))) (size!15212 (_1!10801 (v!25283 lt!672030)))) lt!672029 lt!672030)))))))

(assert (=> b!1742482 (= lt!672029 call!110097)))

(assert (=> b!1742482 (= lt!672030 (maxPrefix!1596 thiss!24550 (t!161924 rules!3447) lt!671803))))

(declare-fun b!1742483 () Bool)

(declare-fun res!783491 () Bool)

(assert (=> b!1742483 (=> (not res!783491) (not e!1115291))))

(assert (=> b!1742483 (= res!783491 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))) (originalCharacters!4227 (_1!10801 (get!5774 lt!672031)))))))

(declare-fun b!1742484 () Bool)

(declare-fun res!783493 () Bool)

(assert (=> b!1742484 (=> (not res!783493) (not e!1115291))))

(assert (=> b!1742484 (= res!783493 (< (size!15214 (_2!10801 (get!5774 lt!672031))) (size!15214 lt!671803)))))

(assert (= (and d!532281 c!284254) b!1742479))

(assert (= (and d!532281 (not c!284254)) b!1742482))

(assert (= (or b!1742479 b!1742482) bm!110092))

(assert (= (and d!532281 (not res!783496)) b!1742480))

(assert (= (and b!1742480 res!783495) b!1742483))

(assert (= (and b!1742483 res!783491) b!1742484))

(assert (= (and b!1742484 res!783493) b!1742478))

(assert (= (and b!1742478 res!783497) b!1742481))

(assert (= (and b!1742481 res!783492) b!1742476))

(assert (= (and b!1742476 res!783494) b!1742477))

(declare-fun m!2153769 () Bool)

(assert (=> b!1742482 m!2153769))

(declare-fun m!2153771 () Bool)

(assert (=> b!1742476 m!2153771))

(declare-fun m!2153773 () Bool)

(assert (=> b!1742476 m!2153773))

(assert (=> b!1742476 m!2153773))

(declare-fun m!2153775 () Bool)

(assert (=> b!1742476 m!2153775))

(assert (=> b!1742476 m!2153775))

(declare-fun m!2153777 () Bool)

(assert (=> b!1742476 m!2153777))

(declare-fun m!2153779 () Bool)

(assert (=> b!1742480 m!2153779))

(assert (=> b!1742481 m!2153771))

(declare-fun m!2153781 () Bool)

(assert (=> b!1742481 m!2153781))

(assert (=> b!1742481 m!2153781))

(declare-fun m!2153783 () Bool)

(assert (=> b!1742481 m!2153783))

(assert (=> b!1742478 m!2153771))

(assert (=> b!1742478 m!2153773))

(assert (=> b!1742478 m!2153773))

(assert (=> b!1742478 m!2153775))

(assert (=> b!1742478 m!2153775))

(declare-fun m!2153785 () Bool)

(assert (=> b!1742478 m!2153785))

(declare-fun m!2153787 () Bool)

(assert (=> d!532281 m!2153787))

(declare-fun m!2153789 () Bool)

(assert (=> d!532281 m!2153789))

(declare-fun m!2153791 () Bool)

(assert (=> d!532281 m!2153791))

(assert (=> d!532281 m!2153507))

(assert (=> b!1742477 m!2153771))

(declare-fun m!2153793 () Bool)

(assert (=> b!1742477 m!2153793))

(declare-fun m!2153795 () Bool)

(assert (=> bm!110092 m!2153795))

(assert (=> b!1742484 m!2153771))

(declare-fun m!2153797 () Bool)

(assert (=> b!1742484 m!2153797))

(assert (=> b!1742484 m!2153573))

(assert (=> b!1742483 m!2153771))

(assert (=> b!1742483 m!2153773))

(assert (=> b!1742483 m!2153773))

(assert (=> b!1742483 m!2153775))

(assert (=> b!1741988 d!532281))

(declare-fun b!1742488 () Bool)

(declare-fun e!1115295 () Bool)

(assert (=> b!1742488 (= e!1115295 (>= (size!15214 lt!671803) (size!15214 lt!671799)))))

(declare-fun b!1742486 () Bool)

(declare-fun res!783498 () Bool)

(declare-fun e!1115294 () Bool)

(assert (=> b!1742486 (=> (not res!783498) (not e!1115294))))

(assert (=> b!1742486 (= res!783498 (= (head!3996 lt!671799) (head!3996 lt!671803)))))

(declare-fun b!1742487 () Bool)

(assert (=> b!1742487 (= e!1115294 (isPrefix!1654 (tail!2601 lt!671799) (tail!2601 lt!671803)))))

(declare-fun d!532283 () Bool)

(assert (=> d!532283 e!1115295))

(declare-fun res!783500 () Bool)

(assert (=> d!532283 (=> res!783500 e!1115295)))

(declare-fun lt!672032 () Bool)

(assert (=> d!532283 (= res!783500 (not lt!672032))))

(declare-fun e!1115293 () Bool)

(assert (=> d!532283 (= lt!672032 e!1115293)))

(declare-fun res!783499 () Bool)

(assert (=> d!532283 (=> res!783499 e!1115293)))

(assert (=> d!532283 (= res!783499 ((_ is Nil!19154) lt!671799))))

(assert (=> d!532283 (= (isPrefix!1654 lt!671799 lt!671803) lt!672032)))

(declare-fun b!1742485 () Bool)

(assert (=> b!1742485 (= e!1115293 e!1115294)))

(declare-fun res!783501 () Bool)

(assert (=> b!1742485 (=> (not res!783501) (not e!1115294))))

(assert (=> b!1742485 (= res!783501 (not ((_ is Nil!19154) lt!671803)))))

(assert (= (and d!532283 (not res!783499)) b!1742485))

(assert (= (and b!1742485 res!783501) b!1742486))

(assert (= (and b!1742486 res!783498) b!1742487))

(assert (= (and d!532283 (not res!783500)) b!1742488))

(assert (=> b!1742488 m!2153573))

(assert (=> b!1742488 m!2153547))

(assert (=> b!1742486 m!2153537))

(assert (=> b!1742486 m!2153577))

(assert (=> b!1742487 m!2153533))

(assert (=> b!1742487 m!2153581))

(assert (=> b!1742487 m!2153533))

(assert (=> b!1742487 m!2153581))

(declare-fun m!2153799 () Bool)

(assert (=> b!1742487 m!2153799))

(assert (=> b!1741988 d!532283))

(declare-fun d!532285 () Bool)

(declare-fun res!783504 () Bool)

(declare-fun e!1115298 () Bool)

(assert (=> d!532285 (=> (not res!783504) (not e!1115298))))

(declare-fun rulesValid!1276 (LexerInterface!3042 List!19225) Bool)

(assert (=> d!532285 (= res!783504 (rulesValid!1276 thiss!24550 rules!3447))))

(assert (=> d!532285 (= (rulesInvariant!2711 thiss!24550 rules!3447) e!1115298)))

(declare-fun b!1742491 () Bool)

(declare-datatypes ((List!19230 0))(
  ( (Nil!19160) (Cons!19160 (h!24561 String!21847) (t!161961 List!19230)) )
))
(declare-fun noDuplicateTag!1276 (LexerInterface!3042 List!19225 List!19230) Bool)

(assert (=> b!1742491 (= e!1115298 (noDuplicateTag!1276 thiss!24550 rules!3447 Nil!19160))))

(assert (= (and d!532285 res!783504) b!1742491))

(declare-fun m!2153801 () Bool)

(assert (=> d!532285 m!2153801))

(declare-fun m!2153803 () Bool)

(assert (=> b!1742491 m!2153803))

(assert (=> b!1741998 d!532285))

(declare-fun b!1742492 () Bool)

(declare-fun e!1115302 () Bool)

(declare-fun e!1115303 () Bool)

(assert (=> b!1742492 (= e!1115302 e!1115303)))

(declare-fun res!783510 () Bool)

(assert (=> b!1742492 (=> (not res!783510) (not e!1115303))))

(declare-fun lt!672033 () Bool)

(assert (=> b!1742492 (= res!783510 (not lt!672033))))

(declare-fun b!1742493 () Bool)

(declare-fun e!1115300 () Bool)

(assert (=> b!1742493 (= e!1115303 e!1115300)))

(declare-fun res!783508 () Bool)

(assert (=> b!1742493 (=> res!783508 e!1115300)))

(declare-fun call!110098 () Bool)

(assert (=> b!1742493 (= res!783508 call!110098)))

(declare-fun b!1742494 () Bool)

(declare-fun res!783509 () Bool)

(declare-fun e!1115301 () Bool)

(assert (=> b!1742494 (=> (not res!783509) (not e!1115301))))

(assert (=> b!1742494 (= res!783509 (isEmpty!12057 (tail!2601 lt!671800)))))

(declare-fun b!1742495 () Bool)

(assert (=> b!1742495 (= e!1115301 (= (head!3996 lt!671800) (c!284176 (regex!3413 rule!422))))))

(declare-fun b!1742496 () Bool)

(declare-fun e!1115299 () Bool)

(declare-fun e!1115304 () Bool)

(assert (=> b!1742496 (= e!1115299 e!1115304)))

(declare-fun c!284256 () Bool)

(assert (=> b!1742496 (= c!284256 ((_ is EmptyLang!4741) (regex!3413 rule!422)))))

(declare-fun d!532287 () Bool)

(assert (=> d!532287 e!1115299))

(declare-fun c!284257 () Bool)

(assert (=> d!532287 (= c!284257 ((_ is EmptyExpr!4741) (regex!3413 rule!422)))))

(declare-fun e!1115305 () Bool)

(assert (=> d!532287 (= lt!672033 e!1115305)))

(declare-fun c!284255 () Bool)

(assert (=> d!532287 (= c!284255 (isEmpty!12057 lt!671800))))

(assert (=> d!532287 (validRegex!1910 (regex!3413 rule!422))))

(assert (=> d!532287 (= (matchR!2215 (regex!3413 rule!422) lt!671800) lt!672033)))

(declare-fun b!1742497 () Bool)

(declare-fun res!783505 () Bool)

(assert (=> b!1742497 (=> res!783505 e!1115300)))

(assert (=> b!1742497 (= res!783505 (not (isEmpty!12057 (tail!2601 lt!671800))))))

(declare-fun b!1742498 () Bool)

(assert (=> b!1742498 (= e!1115300 (not (= (head!3996 lt!671800) (c!284176 (regex!3413 rule!422)))))))

(declare-fun b!1742499 () Bool)

(assert (=> b!1742499 (= e!1115304 (not lt!672033))))

(declare-fun b!1742500 () Bool)

(declare-fun res!783511 () Bool)

(assert (=> b!1742500 (=> res!783511 e!1115302)))

(assert (=> b!1742500 (= res!783511 (not ((_ is ElementMatch!4741) (regex!3413 rule!422))))))

(assert (=> b!1742500 (= e!1115304 e!1115302)))

(declare-fun b!1742501 () Bool)

(assert (=> b!1742501 (= e!1115299 (= lt!672033 call!110098))))

(declare-fun b!1742502 () Bool)

(declare-fun res!783507 () Bool)

(assert (=> b!1742502 (=> res!783507 e!1115302)))

(assert (=> b!1742502 (= res!783507 e!1115301)))

(declare-fun res!783506 () Bool)

(assert (=> b!1742502 (=> (not res!783506) (not e!1115301))))

(assert (=> b!1742502 (= res!783506 lt!672033)))

(declare-fun b!1742503 () Bool)

(assert (=> b!1742503 (= e!1115305 (nullable!1436 (regex!3413 rule!422)))))

(declare-fun b!1742504 () Bool)

(assert (=> b!1742504 (= e!1115305 (matchR!2215 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)) (tail!2601 lt!671800)))))

(declare-fun b!1742505 () Bool)

(declare-fun res!783512 () Bool)

(assert (=> b!1742505 (=> (not res!783512) (not e!1115301))))

(assert (=> b!1742505 (= res!783512 (not call!110098))))

(declare-fun bm!110093 () Bool)

(assert (=> bm!110093 (= call!110098 (isEmpty!12057 lt!671800))))

(assert (= (and d!532287 c!284255) b!1742503))

(assert (= (and d!532287 (not c!284255)) b!1742504))

(assert (= (and d!532287 c!284257) b!1742501))

(assert (= (and d!532287 (not c!284257)) b!1742496))

(assert (= (and b!1742496 c!284256) b!1742499))

(assert (= (and b!1742496 (not c!284256)) b!1742500))

(assert (= (and b!1742500 (not res!783511)) b!1742502))

(assert (= (and b!1742502 res!783506) b!1742505))

(assert (= (and b!1742505 res!783512) b!1742494))

(assert (= (and b!1742494 res!783509) b!1742495))

(assert (= (and b!1742502 (not res!783507)) b!1742492))

(assert (= (and b!1742492 res!783510) b!1742493))

(assert (= (and b!1742493 (not res!783508)) b!1742497))

(assert (= (and b!1742497 (not res!783505)) b!1742498))

(assert (= (or b!1742501 b!1742493 b!1742505) bm!110093))

(declare-fun m!2153805 () Bool)

(assert (=> d!532287 m!2153805))

(declare-fun m!2153807 () Bool)

(assert (=> d!532287 m!2153807))

(assert (=> b!1742494 m!2153579))

(assert (=> b!1742494 m!2153579))

(declare-fun m!2153809 () Bool)

(assert (=> b!1742494 m!2153809))

(assert (=> b!1742495 m!2153575))

(declare-fun m!2153811 () Bool)

(assert (=> b!1742503 m!2153811))

(assert (=> b!1742504 m!2153575))

(assert (=> b!1742504 m!2153575))

(declare-fun m!2153813 () Bool)

(assert (=> b!1742504 m!2153813))

(assert (=> b!1742504 m!2153579))

(assert (=> b!1742504 m!2153813))

(assert (=> b!1742504 m!2153579))

(declare-fun m!2153815 () Bool)

(assert (=> b!1742504 m!2153815))

(assert (=> b!1742498 m!2153575))

(assert (=> b!1742497 m!2153579))

(assert (=> b!1742497 m!2153579))

(assert (=> b!1742497 m!2153809))

(assert (=> bm!110093 m!2153805))

(assert (=> b!1741987 d!532287))

(declare-fun d!532289 () Bool)

(declare-fun res!783517 () Bool)

(declare-fun e!1115308 () Bool)

(assert (=> d!532289 (=> (not res!783517) (not e!1115308))))

(assert (=> d!532289 (= res!783517 (validRegex!1910 (regex!3413 rule!422)))))

(assert (=> d!532289 (= (ruleValid!912 thiss!24550 rule!422) e!1115308)))

(declare-fun b!1742510 () Bool)

(declare-fun res!783518 () Bool)

(assert (=> b!1742510 (=> (not res!783518) (not e!1115308))))

(assert (=> b!1742510 (= res!783518 (not (nullable!1436 (regex!3413 rule!422))))))

(declare-fun b!1742511 () Bool)

(assert (=> b!1742511 (= e!1115308 (not (= (tag!3753 rule!422) (String!21848 ""))))))

(assert (= (and d!532289 res!783517) b!1742510))

(assert (= (and b!1742510 res!783518) b!1742511))

(assert (=> d!532289 m!2153807))

(assert (=> b!1742510 m!2153811))

(assert (=> b!1741987 d!532289))

(declare-fun d!532291 () Bool)

(assert (=> d!532291 (ruleValid!912 thiss!24550 rule!422)))

(declare-fun lt!672036 () Unit!33221)

(declare-fun choose!10730 (LexerInterface!3042 Rule!6626 List!19225) Unit!33221)

(assert (=> d!532291 (= lt!672036 (choose!10730 thiss!24550 rule!422 rules!3447))))

(assert (=> d!532291 (contains!3435 rules!3447 rule!422)))

(assert (=> d!532291 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!436 thiss!24550 rule!422 rules!3447) lt!672036)))

(declare-fun bs!403047 () Bool)

(assert (= bs!403047 d!532291))

(assert (=> bs!403047 m!2153187))

(declare-fun m!2153817 () Bool)

(assert (=> bs!403047 m!2153817))

(assert (=> bs!403047 m!2153191))

(assert (=> b!1741987 d!532291))

(declare-fun d!532293 () Bool)

(assert (=> d!532293 (= (inv!24814 (tag!3753 (rule!5415 token!523))) (= (mod (str.len (value!106942 (tag!3753 (rule!5415 token!523)))) 2) 0))))

(assert (=> b!1741976 d!532293))

(declare-fun d!532295 () Bool)

(declare-fun res!783519 () Bool)

(declare-fun e!1115309 () Bool)

(assert (=> d!532295 (=> (not res!783519) (not e!1115309))))

(assert (=> d!532295 (= res!783519 (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))))))

(assert (=> d!532295 (= (inv!24817 (transformation!3413 (rule!5415 token!523))) e!1115309)))

(declare-fun b!1742512 () Bool)

(assert (=> b!1742512 (= e!1115309 (equivClasses!1290 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))))))

(assert (= (and d!532295 res!783519) b!1742512))

(declare-fun m!2153819 () Bool)

(assert (=> d!532295 m!2153819))

(declare-fun m!2153821 () Bool)

(assert (=> b!1742512 m!2153821))

(assert (=> b!1741976 d!532295))

(declare-fun d!532297 () Bool)

(declare-fun c!284260 () Bool)

(assert (=> d!532297 (= c!284260 (isEmpty!12057 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(declare-fun e!1115312 () Bool)

(assert (=> d!532297 (= (prefixMatch!626 (rulesRegex!771 thiss!24550 rules!3447) (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))) e!1115312)))

(declare-fun b!1742517 () Bool)

(declare-fun lostCause!546 (Regex!4741) Bool)

(assert (=> b!1742517 (= e!1115312 (not (lostCause!546 (rulesRegex!771 thiss!24550 rules!3447))))))

(declare-fun b!1742518 () Bool)

(assert (=> b!1742518 (= e!1115312 (prefixMatch!626 (derivativeStep!1204 (rulesRegex!771 thiss!24550 rules!3447) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))) (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(assert (= (and d!532297 c!284260) b!1742517))

(assert (= (and d!532297 (not c!284260)) b!1742518))

(assert (=> d!532297 m!2153115))

(declare-fun m!2153823 () Bool)

(assert (=> d!532297 m!2153823))

(assert (=> b!1742517 m!2153111))

(declare-fun m!2153825 () Bool)

(assert (=> b!1742517 m!2153825))

(assert (=> b!1742518 m!2153115))

(declare-fun m!2153827 () Bool)

(assert (=> b!1742518 m!2153827))

(assert (=> b!1742518 m!2153111))

(assert (=> b!1742518 m!2153827))

(declare-fun m!2153829 () Bool)

(assert (=> b!1742518 m!2153829))

(assert (=> b!1742518 m!2153115))

(declare-fun m!2153831 () Bool)

(assert (=> b!1742518 m!2153831))

(assert (=> b!1742518 m!2153829))

(assert (=> b!1742518 m!2153831))

(declare-fun m!2153833 () Bool)

(assert (=> b!1742518 m!2153833))

(assert (=> b!1741997 d!532297))

(declare-fun d!532299 () Bool)

(declare-fun lt!672039 () Unit!33221)

(declare-fun lemma!359 (List!19225 LexerInterface!3042 List!19225) Unit!33221)

(assert (=> d!532299 (= lt!672039 (lemma!359 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69614 () Int)

(declare-datatypes ((List!19231 0))(
  ( (Nil!19161) (Cons!19161 (h!24562 Regex!4741) (t!161962 List!19231)) )
))
(declare-fun generalisedUnion!367 (List!19231) Regex!4741)

(declare-fun map!3945 (List!19225 Int) List!19231)

(assert (=> d!532299 (= (rulesRegex!771 thiss!24550 rules!3447) (generalisedUnion!367 (map!3945 rules!3447 lambda!69614)))))

(declare-fun bs!403048 () Bool)

(assert (= bs!403048 d!532299))

(declare-fun m!2153835 () Bool)

(assert (=> bs!403048 m!2153835))

(declare-fun m!2153837 () Bool)

(assert (=> bs!403048 m!2153837))

(assert (=> bs!403048 m!2153837))

(declare-fun m!2153839 () Bool)

(assert (=> bs!403048 m!2153839))

(assert (=> b!1741997 d!532299))

(declare-fun b!1742521 () Bool)

(declare-fun res!783521 () Bool)

(declare-fun e!1115314 () Bool)

(assert (=> b!1742521 (=> (not res!783521) (not e!1115314))))

(declare-fun lt!672040 () List!19224)

(assert (=> b!1742521 (= res!783521 (= (size!15214 lt!672040) (+ (size!15214 lt!671800) (size!15214 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(declare-fun b!1742520 () Bool)

(declare-fun e!1115313 () List!19224)

(assert (=> b!1742520 (= e!1115313 (Cons!19154 (h!24555 lt!671800) (++!5238 (t!161923 lt!671800) (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(declare-fun b!1742519 () Bool)

(assert (=> b!1742519 (= e!1115313 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))

(declare-fun b!1742522 () Bool)

(assert (=> b!1742522 (= e!1115314 (or (not (= (Cons!19154 (head!3996 suffix!1421) Nil!19154) Nil!19154)) (= lt!672040 lt!671800)))))

(declare-fun d!532301 () Bool)

(assert (=> d!532301 e!1115314))

(declare-fun res!783520 () Bool)

(assert (=> d!532301 (=> (not res!783520) (not e!1115314))))

(assert (=> d!532301 (= res!783520 (= (content!2748 lt!672040) ((_ map or) (content!2748 lt!671800) (content!2748 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(assert (=> d!532301 (= lt!672040 e!1115313)))

(declare-fun c!284261 () Bool)

(assert (=> d!532301 (= c!284261 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532301 (= (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)) lt!672040)))

(assert (= (and d!532301 c!284261) b!1742519))

(assert (= (and d!532301 (not c!284261)) b!1742520))

(assert (= (and d!532301 res!783520) b!1742521))

(assert (= (and b!1742521 res!783521) b!1742522))

(declare-fun m!2153841 () Bool)

(assert (=> b!1742521 m!2153841))

(assert (=> b!1742521 m!2153515))

(declare-fun m!2153843 () Bool)

(assert (=> b!1742521 m!2153843))

(declare-fun m!2153845 () Bool)

(assert (=> b!1742520 m!2153845))

(declare-fun m!2153847 () Bool)

(assert (=> d!532301 m!2153847))

(assert (=> d!532301 m!2153569))

(declare-fun m!2153849 () Bool)

(assert (=> d!532301 m!2153849))

(assert (=> b!1741997 d!532301))

(declare-fun d!532303 () Bool)

(assert (=> d!532303 (= (head!3996 suffix!1421) (h!24555 suffix!1421))))

(assert (=> b!1741997 d!532303))

(declare-fun d!532305 () Bool)

(declare-fun choose!10731 (Int) Bool)

(assert (=> d!532305 (= (Forall!782 lambda!69608) (choose!10731 lambda!69608))))

(declare-fun bs!403049 () Bool)

(assert (= bs!403049 d!532305))

(declare-fun m!2153851 () Bool)

(assert (=> bs!403049 m!2153851))

(assert (=> b!1741985 d!532305))

(declare-fun d!532307 () Bool)

(declare-fun e!1115317 () Bool)

(assert (=> d!532307 e!1115317))

(declare-fun res!783524 () Bool)

(assert (=> d!532307 (=> (not res!783524) (not e!1115317))))

(assert (=> d!532307 (= res!783524 (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))))))

(declare-fun Unit!33228 () Unit!33221)

(assert (=> d!532307 (= (lemmaInv!614 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) Unit!33228)))

(declare-fun b!1742525 () Bool)

(assert (=> b!1742525 (= e!1115317 (equivClasses!1290 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))))))

(assert (= (and d!532307 res!783524) b!1742525))

(declare-fun m!2153853 () Bool)

(assert (=> d!532307 m!2153853))

(declare-fun m!2153855 () Bool)

(assert (=> b!1742525 m!2153855))

(assert (=> b!1741985 d!532307))

(declare-fun b!1742539 () Bool)

(declare-fun e!1115320 () Bool)

(declare-fun tp!496131 () Bool)

(declare-fun tp!496134 () Bool)

(assert (=> b!1742539 (= e!1115320 (and tp!496131 tp!496134))))

(declare-fun b!1742537 () Bool)

(declare-fun tp!496132 () Bool)

(declare-fun tp!496130 () Bool)

(assert (=> b!1742537 (= e!1115320 (and tp!496132 tp!496130))))

(declare-fun b!1742536 () Bool)

(assert (=> b!1742536 (= e!1115320 tp_is_empty!7725)))

(declare-fun b!1742538 () Bool)

(declare-fun tp!496133 () Bool)

(assert (=> b!1742538 (= e!1115320 tp!496133)))

(assert (=> b!1741979 (= tp!496059 e!1115320)))

(assert (= (and b!1741979 ((_ is ElementMatch!4741) (regex!3413 rule!422))) b!1742536))

(assert (= (and b!1741979 ((_ is Concat!8245) (regex!3413 rule!422))) b!1742537))

(assert (= (and b!1741979 ((_ is Star!4741) (regex!3413 rule!422))) b!1742538))

(assert (= (and b!1741979 ((_ is Union!4741) (regex!3413 rule!422))) b!1742539))

(declare-fun b!1742544 () Bool)

(declare-fun e!1115323 () Bool)

(declare-fun tp!496137 () Bool)

(assert (=> b!1742544 (= e!1115323 (and tp_is_empty!7725 tp!496137))))

(assert (=> b!1741993 (= tp!496062 e!1115323)))

(assert (= (and b!1741993 ((_ is Cons!19154) (originalCharacters!4227 token!523))) b!1742544))

(declare-fun b!1742555 () Bool)

(declare-fun b_free!47955 () Bool)

(declare-fun b_next!48659 () Bool)

(assert (=> b!1742555 (= b_free!47955 (not b_next!48659))))

(declare-fun tp!496148 () Bool)

(declare-fun b_and!129573 () Bool)

(assert (=> b!1742555 (= tp!496148 b_and!129573)))

(declare-fun b_free!47957 () Bool)

(declare-fun b_next!48661 () Bool)

(assert (=> b!1742555 (= b_free!47957 (not b_next!48661))))

(declare-fun t!161956 () Bool)

(declare-fun tb!104163 () Bool)

(assert (=> (and b!1742555 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 token!523)))) t!161956) tb!104163))

(declare-fun result!125298 () Bool)

(assert (= result!125298 result!125268))

(assert (=> b!1742143 t!161956))

(declare-fun t!161958 () Bool)

(declare-fun tb!104165 () Bool)

(assert (=> (and b!1742555 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) t!161958) tb!104165))

(declare-fun result!125300 () Bool)

(assert (= result!125300 result!125276))

(assert (=> d!532197 t!161958))

(assert (=> d!532227 t!161956))

(declare-fun tp!496146 () Bool)

(declare-fun b_and!129575 () Bool)

(assert (=> b!1742555 (= tp!496146 (and (=> t!161956 result!125298) (=> t!161958 result!125300) b_and!129575))))

(declare-fun e!1115334 () Bool)

(assert (=> b!1742555 (= e!1115334 (and tp!496148 tp!496146))))

(declare-fun e!1115333 () Bool)

(declare-fun b!1742554 () Bool)

(declare-fun tp!496149 () Bool)

(assert (=> b!1742554 (= e!1115333 (and tp!496149 (inv!24814 (tag!3753 (h!24556 (t!161924 rules!3447)))) (inv!24817 (transformation!3413 (h!24556 (t!161924 rules!3447)))) e!1115334))))

(declare-fun b!1742553 () Bool)

(declare-fun e!1115332 () Bool)

(declare-fun tp!496147 () Bool)

(assert (=> b!1742553 (= e!1115332 (and e!1115333 tp!496147))))

(assert (=> b!1741977 (= tp!496067 e!1115332)))

(assert (= b!1742554 b!1742555))

(assert (= b!1742553 b!1742554))

(assert (= (and b!1741977 ((_ is Cons!19155) (t!161924 rules!3447))) b!1742553))

(declare-fun m!2153857 () Bool)

(assert (=> b!1742554 m!2153857))

(declare-fun m!2153859 () Bool)

(assert (=> b!1742554 m!2153859))

(declare-fun b!1742556 () Bool)

(declare-fun e!1115336 () Bool)

(declare-fun tp!496150 () Bool)

(assert (=> b!1742556 (= e!1115336 (and tp_is_empty!7725 tp!496150))))

(assert (=> b!1741982 (= tp!496065 e!1115336)))

(assert (= (and b!1741982 ((_ is Cons!19154) (t!161923 suffix!1421))) b!1742556))

(declare-fun b!1742560 () Bool)

(declare-fun e!1115337 () Bool)

(declare-fun tp!496152 () Bool)

(declare-fun tp!496155 () Bool)

(assert (=> b!1742560 (= e!1115337 (and tp!496152 tp!496155))))

(declare-fun b!1742558 () Bool)

(declare-fun tp!496153 () Bool)

(declare-fun tp!496151 () Bool)

(assert (=> b!1742558 (= e!1115337 (and tp!496153 tp!496151))))

(declare-fun b!1742557 () Bool)

(assert (=> b!1742557 (= e!1115337 tp_is_empty!7725)))

(declare-fun b!1742559 () Bool)

(declare-fun tp!496154 () Bool)

(assert (=> b!1742559 (= e!1115337 tp!496154)))

(assert (=> b!1741976 (= tp!496068 e!1115337)))

(assert (= (and b!1741976 ((_ is ElementMatch!4741) (regex!3413 (rule!5415 token!523)))) b!1742557))

(assert (= (and b!1741976 ((_ is Concat!8245) (regex!3413 (rule!5415 token!523)))) b!1742558))

(assert (= (and b!1741976 ((_ is Star!4741) (regex!3413 (rule!5415 token!523)))) b!1742559))

(assert (= (and b!1741976 ((_ is Union!4741) (regex!3413 (rule!5415 token!523)))) b!1742560))

(declare-fun b!1742564 () Bool)

(declare-fun e!1115338 () Bool)

(declare-fun tp!496157 () Bool)

(declare-fun tp!496160 () Bool)

(assert (=> b!1742564 (= e!1115338 (and tp!496157 tp!496160))))

(declare-fun b!1742562 () Bool)

(declare-fun tp!496158 () Bool)

(declare-fun tp!496156 () Bool)

(assert (=> b!1742562 (= e!1115338 (and tp!496158 tp!496156))))

(declare-fun b!1742561 () Bool)

(assert (=> b!1742561 (= e!1115338 tp_is_empty!7725)))

(declare-fun b!1742563 () Bool)

(declare-fun tp!496159 () Bool)

(assert (=> b!1742563 (= e!1115338 tp!496159)))

(assert (=> b!1741991 (= tp!496061 e!1115338)))

(assert (= (and b!1741991 ((_ is ElementMatch!4741) (regex!3413 (h!24556 rules!3447)))) b!1742561))

(assert (= (and b!1741991 ((_ is Concat!8245) (regex!3413 (h!24556 rules!3447)))) b!1742562))

(assert (= (and b!1741991 ((_ is Star!4741) (regex!3413 (h!24556 rules!3447)))) b!1742563))

(assert (= (and b!1741991 ((_ is Union!4741) (regex!3413 (h!24556 rules!3447)))) b!1742564))

(declare-fun b_lambda!55813 () Bool)

(assert (= b_lambda!55805 (or (and b!1741996 b_free!47941) (and b!1741986 b_free!47945 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) (and b!1741978 b_free!47949 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) (and b!1742555 b_free!47957 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) b_lambda!55813)))

(declare-fun b_lambda!55815 () Bool)

(assert (= b_lambda!55801 (or (and b!1741996 b_free!47941) (and b!1741986 b_free!47945 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) (and b!1741978 b_free!47949 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) (and b!1742555 b_free!47957 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 token!523))))) b_lambda!55815)))

(check-sat (not d!532279) (not b!1742345) (not b!1742155) (not b!1742563) (not d!532197) (not b!1742316) (not b!1742310) b_and!129557 (not d!532195) (not b!1742452) (not b!1742495) (not d!532247) (not b_next!48649) (not bm!110092) (not b!1742518) (not b!1742357) (not b!1742305) (not b!1742480) (not b!1742341) (not b!1742504) (not b!1742497) (not b!1742306) b_and!129573 (not b!1742481) (not b!1742453) (not b!1742558) (not b!1742537) (not b!1742553) (not b!1742283) (not b!1742472) (not d!532231) (not b!1742498) (not b!1742234) (not d!532251) (not b!1742240) (not b!1742346) (not b!1742312) (not b!1742286) (not d!532269) (not b!1742455) (not b!1742487) (not b!1742562) (not bm!110086) (not b!1742559) (not b!1742538) (not b_next!48647) (not b!1742323) b_and!129521 (not d!532295) (not b!1742474) (not b_next!48643) (not d!532237) (not b!1742320) (not b_lambda!55813) (not d!532245) (not b!1742329) (not b!1742503) (not b!1742241) (not b!1742235) (not b_next!48653) (not b!1742144) (not b!1742267) (not d!532281) (not b_next!48651) (not b!1742491) (not b!1742521) (not b!1742149) (not tb!104153) (not b_next!48645) (not b!1742512) (not b!1742560) (not b!1742317) (not b!1742510) (not b!1742486) (not b!1742456) (not b!1742525) (not b!1742520) (not b!1742324) (not b!1742482) (not d!532243) (not b!1742494) (not b!1742444) (not b!1742232) (not b!1742313) (not b!1742457) (not b!1742488) (not d!532227) b_and!129559 (not d!532289) (not b!1742478) (not b_lambda!55803) (not b!1742282) (not b!1742470) (not b!1742554) (not d!532305) (not b!1742143) (not b!1742311) (not b_next!48661) (not b!1742446) b_and!129529 (not b!1742483) (not bm!110089) (not tb!104147) (not b!1742330) tp_is_empty!7725 (not bm!110093) (not b!1742539) b_and!129575 (not b!1742307) (not b!1742359) (not b!1742309) (not d!532297) (not b_next!48659) b_and!129561 b_and!129525 (not d!532223) (not d!532187) (not b!1742342) (not b!1742358) (not d!532241) (not b!1742556) (not bm!110090) (not d!532291) (not d!532221) (not d!532299) (not b!1742476) (not d!532307) (not b!1742484) (not b!1742231) (not d!532287) (not d!532277) (not d!532225) (not b!1742564) (not b!1742544) (not d!532181) (not d!532275) (not b!1742477) (not d!532285) (not b!1742517) (not b!1742445) (not b!1742321) (not b_lambda!55815) (not d!532301) (not d!532189))
(check-sat b_and!129557 (not b_next!48649) b_and!129573 (not b_next!48643) (not b_next!48653) (not b_next!48651) (not b_next!48645) b_and!129559 b_and!129575 (not b_next!48647) b_and!129521 (not b_next!48661) b_and!129529 (not b_next!48659) b_and!129561 b_and!129525)
(get-model)

(declare-fun d!532595 () Bool)

(assert (=> d!532595 (= (isEmpty!12062 lt!672025) (not ((_ is Some!3849) lt!672025)))))

(assert (=> d!532279 d!532595))

(assert (=> d!532279 d!532285))

(declare-fun d!532597 () Bool)

(assert (=> d!532597 true))

(declare-fun order!11959 () Int)

(declare-fun lambda!69644 () Int)

(declare-fun dynLambda!9058 (Int Int) Int)

(assert (=> d!532597 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (dynLambda!9058 order!11959 lambda!69644))))

(declare-fun Forall2!555 (Int) Bool)

(assert (=> d!532597 (= (equivClasses!1290 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (Forall2!555 lambda!69644))))

(declare-fun bs!403106 () Bool)

(assert (= bs!403106 d!532597))

(declare-fun m!2154533 () Bool)

(assert (=> bs!403106 m!2154533))

(assert (=> b!1742512 d!532597))

(declare-fun b!1743061 () Bool)

(declare-fun res!783750 () Bool)

(declare-fun e!1115622 () Bool)

(assert (=> b!1743061 (=> (not res!783750) (not e!1115622))))

(declare-fun lt!672154 () List!19224)

(assert (=> b!1743061 (= res!783750 (= (size!15214 lt!672154) (+ (size!15214 (t!161923 lt!671799)) (size!15214 (_2!10801 lt!671797)))))))

(declare-fun b!1743060 () Bool)

(declare-fun e!1115621 () List!19224)

(assert (=> b!1743060 (= e!1115621 (Cons!19154 (h!24555 (t!161923 lt!671799)) (++!5238 (t!161923 (t!161923 lt!671799)) (_2!10801 lt!671797))))))

(declare-fun b!1743059 () Bool)

(assert (=> b!1743059 (= e!1115621 (_2!10801 lt!671797))))

(declare-fun b!1743062 () Bool)

(assert (=> b!1743062 (= e!1115622 (or (not (= (_2!10801 lt!671797) Nil!19154)) (= lt!672154 (t!161923 lt!671799))))))

(declare-fun d!532599 () Bool)

(assert (=> d!532599 e!1115622))

(declare-fun res!783749 () Bool)

(assert (=> d!532599 (=> (not res!783749) (not e!1115622))))

(assert (=> d!532599 (= res!783749 (= (content!2748 lt!672154) ((_ map or) (content!2748 (t!161923 lt!671799)) (content!2748 (_2!10801 lt!671797)))))))

(assert (=> d!532599 (= lt!672154 e!1115621)))

(declare-fun c!284397 () Bool)

(assert (=> d!532599 (= c!284397 ((_ is Nil!19154) (t!161923 lt!671799)))))

(assert (=> d!532599 (= (++!5238 (t!161923 lt!671799) (_2!10801 lt!671797)) lt!672154)))

(assert (= (and d!532599 c!284397) b!1743059))

(assert (= (and d!532599 (not c!284397)) b!1743060))

(assert (= (and d!532599 res!783749) b!1743061))

(assert (= (and b!1743061 res!783750) b!1743062))

(declare-fun m!2154535 () Bool)

(assert (=> b!1743061 m!2154535))

(declare-fun m!2154537 () Bool)

(assert (=> b!1743061 m!2154537))

(assert (=> b!1743061 m!2153549))

(declare-fun m!2154539 () Bool)

(assert (=> b!1743060 m!2154539))

(declare-fun m!2154541 () Bool)

(assert (=> d!532599 m!2154541))

(declare-fun m!2154543 () Bool)

(assert (=> d!532599 m!2154543))

(assert (=> d!532599 m!2153557))

(assert (=> b!1742341 d!532599))

(declare-fun d!532601 () Bool)

(assert (=> d!532601 (= (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) ((_ is Nil!19154) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (=> bm!110086 d!532601))

(declare-fun d!532603 () Bool)

(declare-fun c!284400 () Bool)

(assert (=> d!532603 (= c!284400 ((_ is Nil!19154) lt!672040))))

(declare-fun e!1115625 () (InoxSet C!9656))

(assert (=> d!532603 (= (content!2748 lt!672040) e!1115625)))

(declare-fun b!1743067 () Bool)

(assert (=> b!1743067 (= e!1115625 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743068 () Bool)

(assert (=> b!1743068 (= e!1115625 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 lt!672040) true) (content!2748 (t!161923 lt!672040))))))

(assert (= (and d!532603 c!284400) b!1743067))

(assert (= (and d!532603 (not c!284400)) b!1743068))

(declare-fun m!2154545 () Bool)

(assert (=> b!1743068 m!2154545))

(declare-fun m!2154547 () Bool)

(assert (=> b!1743068 m!2154547))

(assert (=> d!532301 d!532603))

(declare-fun d!532605 () Bool)

(declare-fun c!284401 () Bool)

(assert (=> d!532605 (= c!284401 ((_ is Nil!19154) lt!671800))))

(declare-fun e!1115626 () (InoxSet C!9656))

(assert (=> d!532605 (= (content!2748 lt!671800) e!1115626)))

(declare-fun b!1743069 () Bool)

(assert (=> b!1743069 (= e!1115626 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743070 () Bool)

(assert (=> b!1743070 (= e!1115626 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 lt!671800) true) (content!2748 (t!161923 lt!671800))))))

(assert (= (and d!532605 c!284401) b!1743069))

(assert (= (and d!532605 (not c!284401)) b!1743070))

(declare-fun m!2154549 () Bool)

(assert (=> b!1743070 m!2154549))

(declare-fun m!2154551 () Bool)

(assert (=> b!1743070 m!2154551))

(assert (=> d!532301 d!532605))

(declare-fun d!532607 () Bool)

(declare-fun c!284402 () Bool)

(assert (=> d!532607 (= c!284402 ((_ is Nil!19154) (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))

(declare-fun e!1115627 () (InoxSet C!9656))

(assert (=> d!532607 (= (content!2748 (Cons!19154 (head!3996 suffix!1421) Nil!19154)) e!1115627)))

(declare-fun b!1743071 () Bool)

(assert (=> b!1743071 (= e!1115627 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743072 () Bool)

(assert (=> b!1743072 (= e!1115627 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 (Cons!19154 (head!3996 suffix!1421) Nil!19154)) true) (content!2748 (t!161923 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(assert (= (and d!532607 c!284402) b!1743071))

(assert (= (and d!532607 (not c!284402)) b!1743072))

(declare-fun m!2154553 () Bool)

(assert (=> b!1743072 m!2154553))

(declare-fun m!2154555 () Bool)

(assert (=> b!1743072 m!2154555))

(assert (=> d!532301 d!532607))

(declare-fun bs!403107 () Bool)

(declare-fun d!532609 () Bool)

(assert (= bs!403107 (and d!532609 d!532597)))

(declare-fun lambda!69645 () Int)

(assert (=> bs!403107 (= (= (toValue!4920 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (= lambda!69645 lambda!69644))))

(assert (=> d!532609 true))

(assert (=> d!532609 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (dynLambda!9058 order!11959 lambda!69645))))

(assert (=> d!532609 (= (equivClasses!1290 (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (Forall2!555 lambda!69645))))

(declare-fun bs!403108 () Bool)

(assert (= bs!403108 d!532609))

(declare-fun m!2154557 () Bool)

(assert (=> bs!403108 m!2154557))

(assert (=> b!1742316 d!532609))

(declare-fun d!532611 () Bool)

(assert (=> d!532611 (= (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))) (v!25282 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))

(assert (=> b!1742444 d!532611))

(declare-fun d!532613 () Bool)

(assert (=> d!532613 (= (list!7746 (charsOf!2062 lt!672004)) (list!7748 (c!284177 (charsOf!2062 lt!672004))))))

(declare-fun bs!403109 () Bool)

(assert (= bs!403109 d!532613))

(declare-fun m!2154559 () Bool)

(assert (=> bs!403109 m!2154559))

(assert (=> b!1742444 d!532613))

(declare-fun b!1743073 () Bool)

(declare-fun e!1115631 () Bool)

(declare-fun e!1115632 () Bool)

(assert (=> b!1743073 (= e!1115631 e!1115632)))

(declare-fun res!783756 () Bool)

(assert (=> b!1743073 (=> (not res!783756) (not e!1115632))))

(declare-fun lt!672155 () Bool)

(assert (=> b!1743073 (= res!783756 (not lt!672155))))

(declare-fun b!1743074 () Bool)

(declare-fun e!1115629 () Bool)

(assert (=> b!1743074 (= e!1115632 e!1115629)))

(declare-fun res!783754 () Bool)

(assert (=> b!1743074 (=> res!783754 e!1115629)))

(declare-fun call!110147 () Bool)

(assert (=> b!1743074 (= res!783754 call!110147)))

(declare-fun b!1743075 () Bool)

(declare-fun res!783755 () Bool)

(declare-fun e!1115630 () Bool)

(assert (=> b!1743075 (=> (not res!783755) (not e!1115630))))

(assert (=> b!1743075 (= res!783755 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 lt!672004)))))))

(declare-fun b!1743076 () Bool)

(assert (=> b!1743076 (= e!1115630 (= (head!3996 (list!7746 (charsOf!2062 lt!672004))) (c!284176 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))))

(declare-fun b!1743077 () Bool)

(declare-fun e!1115628 () Bool)

(declare-fun e!1115633 () Bool)

(assert (=> b!1743077 (= e!1115628 e!1115633)))

(declare-fun c!284404 () Bool)

(assert (=> b!1743077 (= c!284404 ((_ is EmptyLang!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))))

(declare-fun d!532615 () Bool)

(assert (=> d!532615 e!1115628))

(declare-fun c!284405 () Bool)

(assert (=> d!532615 (= c!284405 ((_ is EmptyExpr!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))))

(declare-fun e!1115634 () Bool)

(assert (=> d!532615 (= lt!672155 e!1115634)))

(declare-fun c!284403 () Bool)

(assert (=> d!532615 (= c!284403 (isEmpty!12057 (list!7746 (charsOf!2062 lt!672004))))))

(assert (=> d!532615 (validRegex!1910 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))

(assert (=> d!532615 (= (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))) (list!7746 (charsOf!2062 lt!672004))) lt!672155)))

(declare-fun b!1743078 () Bool)

(declare-fun res!783751 () Bool)

(assert (=> b!1743078 (=> res!783751 e!1115629)))

(assert (=> b!1743078 (= res!783751 (not (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 lt!672004))))))))

(declare-fun b!1743079 () Bool)

(assert (=> b!1743079 (= e!1115629 (not (= (head!3996 (list!7746 (charsOf!2062 lt!672004))) (c!284176 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))))))

(declare-fun b!1743080 () Bool)

(assert (=> b!1743080 (= e!1115633 (not lt!672155))))

(declare-fun b!1743081 () Bool)

(declare-fun res!783757 () Bool)

(assert (=> b!1743081 (=> res!783757 e!1115631)))

(assert (=> b!1743081 (= res!783757 (not ((_ is ElementMatch!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))))

(assert (=> b!1743081 (= e!1115633 e!1115631)))

(declare-fun b!1743082 () Bool)

(assert (=> b!1743082 (= e!1115628 (= lt!672155 call!110147))))

(declare-fun b!1743083 () Bool)

(declare-fun res!783753 () Bool)

(assert (=> b!1743083 (=> res!783753 e!1115631)))

(assert (=> b!1743083 (= res!783753 e!1115630)))

(declare-fun res!783752 () Bool)

(assert (=> b!1743083 (=> (not res!783752) (not e!1115630))))

(assert (=> b!1743083 (= res!783752 lt!672155)))

(declare-fun b!1743084 () Bool)

(assert (=> b!1743084 (= e!1115634 (nullable!1436 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))))

(declare-fun b!1743085 () Bool)

(assert (=> b!1743085 (= e!1115634 (matchR!2215 (derivativeStep!1204 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))) (head!3996 (list!7746 (charsOf!2062 lt!672004)))) (tail!2601 (list!7746 (charsOf!2062 lt!672004)))))))

(declare-fun b!1743086 () Bool)

(declare-fun res!783758 () Bool)

(assert (=> b!1743086 (=> (not res!783758) (not e!1115630))))

(assert (=> b!1743086 (= res!783758 (not call!110147))))

(declare-fun bm!110142 () Bool)

(assert (=> bm!110142 (= call!110147 (isEmpty!12057 (list!7746 (charsOf!2062 lt!672004))))))

(assert (= (and d!532615 c!284403) b!1743084))

(assert (= (and d!532615 (not c!284403)) b!1743085))

(assert (= (and d!532615 c!284405) b!1743082))

(assert (= (and d!532615 (not c!284405)) b!1743077))

(assert (= (and b!1743077 c!284404) b!1743080))

(assert (= (and b!1743077 (not c!284404)) b!1743081))

(assert (= (and b!1743081 (not res!783757)) b!1743083))

(assert (= (and b!1743083 res!783752) b!1743086))

(assert (= (and b!1743086 res!783758) b!1743075))

(assert (= (and b!1743075 res!783755) b!1743076))

(assert (= (and b!1743083 (not res!783753)) b!1743073))

(assert (= (and b!1743073 res!783756) b!1743074))

(assert (= (and b!1743074 (not res!783754)) b!1743078))

(assert (= (and b!1743078 (not res!783751)) b!1743079))

(assert (= (or b!1743082 b!1743074 b!1743086) bm!110142))

(assert (=> d!532615 m!2153691))

(declare-fun m!2154561 () Bool)

(assert (=> d!532615 m!2154561))

(declare-fun m!2154563 () Bool)

(assert (=> d!532615 m!2154563))

(assert (=> b!1743075 m!2153691))

(declare-fun m!2154565 () Bool)

(assert (=> b!1743075 m!2154565))

(assert (=> b!1743075 m!2154565))

(declare-fun m!2154567 () Bool)

(assert (=> b!1743075 m!2154567))

(assert (=> b!1743076 m!2153691))

(declare-fun m!2154569 () Bool)

(assert (=> b!1743076 m!2154569))

(declare-fun m!2154571 () Bool)

(assert (=> b!1743084 m!2154571))

(assert (=> b!1743085 m!2153691))

(assert (=> b!1743085 m!2154569))

(assert (=> b!1743085 m!2154569))

(declare-fun m!2154573 () Bool)

(assert (=> b!1743085 m!2154573))

(assert (=> b!1743085 m!2153691))

(assert (=> b!1743085 m!2154565))

(assert (=> b!1743085 m!2154573))

(assert (=> b!1743085 m!2154565))

(declare-fun m!2154575 () Bool)

(assert (=> b!1743085 m!2154575))

(assert (=> b!1743079 m!2153691))

(assert (=> b!1743079 m!2154569))

(assert (=> b!1743078 m!2153691))

(assert (=> b!1743078 m!2154565))

(assert (=> b!1743078 m!2154565))

(assert (=> b!1743078 m!2154567))

(assert (=> bm!110142 m!2153691))

(assert (=> bm!110142 m!2154561))

(assert (=> b!1742444 d!532615))

(declare-fun b!1743087 () Bool)

(declare-fun lt!672156 () Unit!33221)

(declare-fun lt!672158 () Unit!33221)

(assert (=> b!1743087 (= lt!672156 lt!672158)))

(assert (=> b!1743087 (rulesInvariant!2711 thiss!24550 (t!161924 rules!3447))))

(assert (=> b!1743087 (= lt!672158 (lemmaInvariantOnRulesThenOnTail!164 thiss!24550 (h!24556 rules!3447) (t!161924 rules!3447)))))

(declare-fun e!1115635 () Option!3850)

(assert (=> b!1743087 (= e!1115635 (getRuleFromTag!463 thiss!24550 (t!161924 rules!3447) (tag!3753 (rule!5415 lt!672004))))))

(declare-fun b!1743088 () Bool)

(assert (=> b!1743088 (= e!1115635 None!3849)))

(declare-fun b!1743089 () Bool)

(declare-fun e!1115636 () Bool)

(declare-fun e!1115638 () Bool)

(assert (=> b!1743089 (= e!1115636 e!1115638)))

(declare-fun res!783759 () Bool)

(assert (=> b!1743089 (=> (not res!783759) (not e!1115638))))

(declare-fun lt!672157 () Option!3850)

(assert (=> b!1743089 (= res!783759 (contains!3435 rules!3447 (get!5775 lt!672157)))))

(declare-fun b!1743090 () Bool)

(declare-fun e!1115637 () Option!3850)

(assert (=> b!1743090 (= e!1115637 e!1115635)))

(declare-fun c!284407 () Bool)

(assert (=> b!1743090 (= c!284407 (and ((_ is Cons!19155) rules!3447) (not (= (tag!3753 (h!24556 rules!3447)) (tag!3753 (rule!5415 lt!672004))))))))

(declare-fun d!532617 () Bool)

(assert (=> d!532617 e!1115636))

(declare-fun res!783760 () Bool)

(assert (=> d!532617 (=> res!783760 e!1115636)))

(assert (=> d!532617 (= res!783760 (isEmpty!12062 lt!672157))))

(assert (=> d!532617 (= lt!672157 e!1115637)))

(declare-fun c!284406 () Bool)

(assert (=> d!532617 (= c!284406 (and ((_ is Cons!19155) rules!3447) (= (tag!3753 (h!24556 rules!3447)) (tag!3753 (rule!5415 lt!672004)))))))

(assert (=> d!532617 (rulesInvariant!2711 thiss!24550 rules!3447)))

(assert (=> d!532617 (= (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))) lt!672157)))

(declare-fun b!1743091 () Bool)

(assert (=> b!1743091 (= e!1115638 (= (tag!3753 (get!5775 lt!672157)) (tag!3753 (rule!5415 lt!672004))))))

(declare-fun b!1743092 () Bool)

(assert (=> b!1743092 (= e!1115637 (Some!3849 (h!24556 rules!3447)))))

(assert (= (and d!532617 c!284406) b!1743092))

(assert (= (and d!532617 (not c!284406)) b!1743090))

(assert (= (and b!1743090 c!284407) b!1743087))

(assert (= (and b!1743090 (not c!284407)) b!1743088))

(assert (= (and d!532617 (not res!783760)) b!1743089))

(assert (= (and b!1743089 res!783759) b!1743091))

(assert (=> b!1743087 m!2153757))

(assert (=> b!1743087 m!2153759))

(declare-fun m!2154577 () Bool)

(assert (=> b!1743087 m!2154577))

(declare-fun m!2154579 () Bool)

(assert (=> b!1743089 m!2154579))

(assert (=> b!1743089 m!2154579))

(declare-fun m!2154581 () Bool)

(assert (=> b!1743089 m!2154581))

(declare-fun m!2154583 () Bool)

(assert (=> d!532617 m!2154583))

(assert (=> d!532617 m!2153119))

(assert (=> b!1743091 m!2154579))

(assert (=> b!1742444 d!532617))

(declare-fun d!532619 () Bool)

(declare-fun lt!672159 () BalanceConc!12686)

(assert (=> d!532619 (= (list!7746 lt!672159) (originalCharacters!4227 lt!672004))))

(assert (=> d!532619 (= lt!672159 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 lt!672004))) (value!106943 lt!672004)))))

(assert (=> d!532619 (= (charsOf!2062 lt!672004) lt!672159)))

(declare-fun b_lambda!55829 () Bool)

(assert (=> (not b_lambda!55829) (not d!532619)))

(declare-fun tb!104207 () Bool)

(declare-fun t!162005 () Bool)

(assert (=> (and b!1741996 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 lt!672004)))) t!162005) tb!104207))

(declare-fun b!1743093 () Bool)

(declare-fun e!1115639 () Bool)

(declare-fun tp!496164 () Bool)

(assert (=> b!1743093 (= e!1115639 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 lt!672004))) (value!106943 lt!672004)))) tp!496164))))

(declare-fun result!125344 () Bool)

(assert (=> tb!104207 (= result!125344 (and (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 lt!672004))) (value!106943 lt!672004))) e!1115639))))

(assert (= tb!104207 b!1743093))

(declare-fun m!2154585 () Bool)

(assert (=> b!1743093 m!2154585))

(declare-fun m!2154587 () Bool)

(assert (=> tb!104207 m!2154587))

(assert (=> d!532619 t!162005))

(declare-fun b_and!129617 () Bool)

(assert (= b_and!129557 (and (=> t!162005 result!125344) b_and!129617)))

(declare-fun tb!104209 () Bool)

(declare-fun t!162007 () Bool)

(assert (=> (and b!1741986 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 lt!672004)))) t!162007) tb!104209))

(declare-fun result!125346 () Bool)

(assert (= result!125346 result!125344))

(assert (=> d!532619 t!162007))

(declare-fun b_and!129619 () Bool)

(assert (= b_and!129559 (and (=> t!162007 result!125346) b_and!129619)))

(declare-fun tb!104211 () Bool)

(declare-fun t!162009 () Bool)

(assert (=> (and b!1741978 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 lt!672004)))) t!162009) tb!104211))

(declare-fun result!125348 () Bool)

(assert (= result!125348 result!125344))

(assert (=> d!532619 t!162009))

(declare-fun b_and!129621 () Bool)

(assert (= b_and!129561 (and (=> t!162009 result!125348) b_and!129621)))

(declare-fun t!162011 () Bool)

(declare-fun tb!104213 () Bool)

(assert (=> (and b!1742555 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 lt!672004)))) t!162011) tb!104213))

(declare-fun result!125350 () Bool)

(assert (= result!125350 result!125344))

(assert (=> d!532619 t!162011))

(declare-fun b_and!129623 () Bool)

(assert (= b_and!129575 (and (=> t!162011 result!125350) b_and!129623)))

(declare-fun m!2154589 () Bool)

(assert (=> d!532619 m!2154589))

(declare-fun m!2154591 () Bool)

(assert (=> d!532619 m!2154591))

(assert (=> b!1742444 d!532619))

(declare-fun d!532621 () Bool)

(assert (=> d!532621 (= (head!3996 lt!671800) (h!24555 lt!671800))))

(assert (=> b!1742357 d!532621))

(declare-fun d!532623 () Bool)

(assert (=> d!532623 (= (head!3996 lt!671803) (h!24555 lt!671803))))

(assert (=> b!1742357 d!532623))

(declare-fun b!1743096 () Bool)

(declare-fun res!783762 () Bool)

(declare-fun e!1115641 () Bool)

(assert (=> b!1743096 (=> (not res!783762) (not e!1115641))))

(declare-fun lt!672160 () List!19224)

(assert (=> b!1743096 (= res!783762 (= (size!15214 lt!672160) (+ (size!15214 (t!161923 lt!671800)) (size!15214 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(declare-fun b!1743095 () Bool)

(declare-fun e!1115640 () List!19224)

(assert (=> b!1743095 (= e!1115640 (Cons!19154 (h!24555 (t!161923 lt!671800)) (++!5238 (t!161923 (t!161923 lt!671800)) (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(declare-fun b!1743094 () Bool)

(assert (=> b!1743094 (= e!1115640 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))

(declare-fun b!1743097 () Bool)

(assert (=> b!1743097 (= e!1115641 (or (not (= (Cons!19154 (head!3996 suffix!1421) Nil!19154) Nil!19154)) (= lt!672160 (t!161923 lt!671800))))))

(declare-fun d!532625 () Bool)

(assert (=> d!532625 e!1115641))

(declare-fun res!783761 () Bool)

(assert (=> d!532625 (=> (not res!783761) (not e!1115641))))

(assert (=> d!532625 (= res!783761 (= (content!2748 lt!672160) ((_ map or) (content!2748 (t!161923 lt!671800)) (content!2748 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(assert (=> d!532625 (= lt!672160 e!1115640)))

(declare-fun c!284408 () Bool)

(assert (=> d!532625 (= c!284408 ((_ is Nil!19154) (t!161923 lt!671800)))))

(assert (=> d!532625 (= (++!5238 (t!161923 lt!671800) (Cons!19154 (head!3996 suffix!1421) Nil!19154)) lt!672160)))

(assert (= (and d!532625 c!284408) b!1743094))

(assert (= (and d!532625 (not c!284408)) b!1743095))

(assert (= (and d!532625 res!783761) b!1743096))

(assert (= (and b!1743096 res!783762) b!1743097))

(declare-fun m!2154593 () Bool)

(assert (=> b!1743096 m!2154593))

(declare-fun m!2154595 () Bool)

(assert (=> b!1743096 m!2154595))

(assert (=> b!1743096 m!2153843))

(declare-fun m!2154597 () Bool)

(assert (=> b!1743095 m!2154597))

(declare-fun m!2154599 () Bool)

(assert (=> d!532625 m!2154599))

(assert (=> d!532625 m!2154551))

(assert (=> d!532625 m!2153849))

(assert (=> b!1742520 d!532625))

(declare-fun d!532627 () Bool)

(assert (=> d!532627 (= (isEmpty!12057 (tail!2601 lt!671799)) ((_ is Nil!19154) (tail!2601 lt!671799)))))

(assert (=> b!1742323 d!532627))

(declare-fun d!532629 () Bool)

(assert (=> d!532629 (= (tail!2601 lt!671799) (t!161923 lt!671799))))

(assert (=> b!1742323 d!532629))

(declare-fun d!532631 () Bool)

(declare-fun nullableFct!327 (Regex!4741) Bool)

(assert (=> d!532631 (= (nullable!1436 (regex!3413 rule!422)) (nullableFct!327 (regex!3413 rule!422)))))

(declare-fun bs!403110 () Bool)

(assert (= bs!403110 d!532631))

(declare-fun m!2154601 () Bool)

(assert (=> bs!403110 m!2154601))

(assert (=> b!1742503 d!532631))

(declare-fun b!1743098 () Bool)

(declare-fun e!1115645 () Bool)

(declare-fun e!1115646 () Bool)

(assert (=> b!1743098 (= e!1115645 e!1115646)))

(declare-fun res!783768 () Bool)

(assert (=> b!1743098 (=> (not res!783768) (not e!1115646))))

(declare-fun lt!672161 () Bool)

(assert (=> b!1743098 (= res!783768 (not lt!672161))))

(declare-fun b!1743099 () Bool)

(declare-fun e!1115643 () Bool)

(assert (=> b!1743099 (= e!1115646 e!1115643)))

(declare-fun res!783766 () Bool)

(assert (=> b!1743099 (=> res!783766 e!1115643)))

(declare-fun call!110148 () Bool)

(assert (=> b!1743099 (= res!783766 call!110148)))

(declare-fun b!1743100 () Bool)

(declare-fun res!783767 () Bool)

(declare-fun e!1115644 () Bool)

(assert (=> b!1743100 (=> (not res!783767) (not e!1115644))))

(assert (=> b!1743100 (= res!783767 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun b!1743101 () Bool)

(assert (=> b!1743101 (= e!1115644 (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (c!284176 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun b!1743102 () Bool)

(declare-fun e!1115642 () Bool)

(declare-fun e!1115647 () Bool)

(assert (=> b!1743102 (= e!1115642 e!1115647)))

(declare-fun c!284410 () Bool)

(assert (=> b!1743102 (= c!284410 ((_ is EmptyLang!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun d!532633 () Bool)

(assert (=> d!532633 e!1115642))

(declare-fun c!284411 () Bool)

(assert (=> d!532633 (= c!284411 ((_ is EmptyExpr!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun e!1115648 () Bool)

(assert (=> d!532633 (= lt!672161 e!1115648)))

(declare-fun c!284409 () Bool)

(assert (=> d!532633 (= c!284409 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))

(assert (=> d!532633 (validRegex!1910 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))))

(assert (=> d!532633 (= (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) lt!672161)))

(declare-fun b!1743103 () Bool)

(declare-fun res!783763 () Bool)

(assert (=> b!1743103 (=> res!783763 e!1115643)))

(assert (=> b!1743103 (= res!783763 (not (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))))

(declare-fun b!1743104 () Bool)

(assert (=> b!1743104 (= e!1115643 (not (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (c!284176 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))))))))

(declare-fun b!1743105 () Bool)

(assert (=> b!1743105 (= e!1115647 (not lt!672161))))

(declare-fun b!1743106 () Bool)

(declare-fun res!783769 () Bool)

(assert (=> b!1743106 (=> res!783769 e!1115645)))

(assert (=> b!1743106 (= res!783769 (not ((_ is ElementMatch!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))))))

(assert (=> b!1743106 (= e!1115647 e!1115645)))

(declare-fun b!1743107 () Bool)

(assert (=> b!1743107 (= e!1115642 (= lt!672161 call!110148))))

(declare-fun b!1743108 () Bool)

(declare-fun res!783765 () Bool)

(assert (=> b!1743108 (=> res!783765 e!1115645)))

(assert (=> b!1743108 (= res!783765 e!1115644)))

(declare-fun res!783764 () Bool)

(assert (=> b!1743108 (=> (not res!783764) (not e!1115644))))

(assert (=> b!1743108 (= res!783764 lt!672161)))

(declare-fun b!1743109 () Bool)

(assert (=> b!1743109 (= e!1115648 (nullable!1436 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun b!1743110 () Bool)

(assert (=> b!1743110 (= e!1115648 (matchR!2215 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))) (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))))) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun b!1743111 () Bool)

(declare-fun res!783770 () Bool)

(assert (=> b!1743111 (=> (not res!783770) (not e!1115644))))

(assert (=> b!1743111 (= res!783770 (not call!110148))))

(declare-fun bm!110143 () Bool)

(assert (=> bm!110143 (= call!110148 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))

(assert (= (and d!532633 c!284409) b!1743109))

(assert (= (and d!532633 (not c!284409)) b!1743110))

(assert (= (and d!532633 c!284411) b!1743107))

(assert (= (and d!532633 (not c!284411)) b!1743102))

(assert (= (and b!1743102 c!284410) b!1743105))

(assert (= (and b!1743102 (not c!284410)) b!1743106))

(assert (= (and b!1743106 (not res!783769)) b!1743108))

(assert (= (and b!1743108 res!783764) b!1743111))

(assert (= (and b!1743111 res!783770) b!1743100))

(assert (= (and b!1743100 res!783767) b!1743101))

(assert (= (and b!1743108 (not res!783765)) b!1743098))

(assert (= (and b!1743098 res!783768) b!1743099))

(assert (= (and b!1743099 (not res!783766)) b!1743103))

(assert (= (and b!1743103 (not res!783763)) b!1743104))

(assert (= (or b!1743107 b!1743099 b!1743111) bm!110143))

(assert (=> d!532633 m!2153489))

(declare-fun m!2154603 () Bool)

(assert (=> d!532633 m!2154603))

(declare-fun m!2154605 () Bool)

(assert (=> d!532633 m!2154605))

(assert (=> b!1743100 m!2153489))

(declare-fun m!2154607 () Bool)

(assert (=> b!1743100 m!2154607))

(assert (=> b!1743100 m!2154607))

(declare-fun m!2154609 () Bool)

(assert (=> b!1743100 m!2154609))

(assert (=> b!1743101 m!2153489))

(declare-fun m!2154611 () Bool)

(assert (=> b!1743101 m!2154611))

(declare-fun m!2154613 () Bool)

(assert (=> b!1743109 m!2154613))

(assert (=> b!1743110 m!2153489))

(assert (=> b!1743110 m!2154611))

(assert (=> b!1743110 m!2154611))

(declare-fun m!2154615 () Bool)

(assert (=> b!1743110 m!2154615))

(assert (=> b!1743110 m!2153489))

(assert (=> b!1743110 m!2154607))

(assert (=> b!1743110 m!2154615))

(assert (=> b!1743110 m!2154607))

(declare-fun m!2154617 () Bool)

(assert (=> b!1743110 m!2154617))

(assert (=> b!1743104 m!2153489))

(assert (=> b!1743104 m!2154611))

(assert (=> b!1743103 m!2153489))

(assert (=> b!1743103 m!2154607))

(assert (=> b!1743103 m!2154607))

(assert (=> b!1743103 m!2154609))

(assert (=> bm!110143 m!2153489))

(assert (=> bm!110143 m!2154603))

(assert (=> b!1742305 d!532633))

(declare-fun d!532635 () Bool)

(assert (=> d!532635 (= (get!5774 lt!671892) (v!25283 lt!671892))))

(assert (=> b!1742305 d!532635))

(declare-fun d!532637 () Bool)

(assert (=> d!532637 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))) (list!7748 (c!284177 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun bs!403111 () Bool)

(assert (= bs!403111 d!532637))

(declare-fun m!2154619 () Bool)

(assert (=> bs!403111 m!2154619))

(assert (=> b!1742305 d!532637))

(declare-fun d!532639 () Bool)

(declare-fun lt!672164 () BalanceConc!12686)

(assert (=> d!532639 (= (list!7746 lt!672164) (originalCharacters!4227 (_1!10801 (get!5774 lt!671892))))))

(assert (=> d!532639 (= lt!672164 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))) (value!106943 (_1!10801 (get!5774 lt!671892)))))))

(assert (=> d!532639 (= (charsOf!2062 (_1!10801 (get!5774 lt!671892))) lt!672164)))

(declare-fun b_lambda!55831 () Bool)

(assert (=> (not b_lambda!55831) (not d!532639)))

(declare-fun tb!104215 () Bool)

(declare-fun t!162013 () Bool)

(assert (=> (and b!1741996 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162013) tb!104215))

(declare-fun b!1743122 () Bool)

(declare-fun e!1115655 () Bool)

(declare-fun tp!496165 () Bool)

(assert (=> b!1743122 (= e!1115655 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))) (value!106943 (_1!10801 (get!5774 lt!671892)))))) tp!496165))))

(declare-fun result!125352 () Bool)

(assert (=> tb!104215 (= result!125352 (and (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))) (value!106943 (_1!10801 (get!5774 lt!671892))))) e!1115655))))

(assert (= tb!104215 b!1743122))

(declare-fun m!2154621 () Bool)

(assert (=> b!1743122 m!2154621))

(declare-fun m!2154623 () Bool)

(assert (=> tb!104215 m!2154623))

(assert (=> d!532639 t!162013))

(declare-fun b_and!129625 () Bool)

(assert (= b_and!129617 (and (=> t!162013 result!125352) b_and!129625)))

(declare-fun t!162015 () Bool)

(declare-fun tb!104217 () Bool)

(assert (=> (and b!1741986 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162015) tb!104217))

(declare-fun result!125354 () Bool)

(assert (= result!125354 result!125352))

(assert (=> d!532639 t!162015))

(declare-fun b_and!129627 () Bool)

(assert (= b_and!129619 (and (=> t!162015 result!125354) b_and!129627)))

(declare-fun t!162017 () Bool)

(declare-fun tb!104219 () Bool)

(assert (=> (and b!1741978 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162017) tb!104219))

(declare-fun result!125356 () Bool)

(assert (= result!125356 result!125352))

(assert (=> d!532639 t!162017))

(declare-fun b_and!129629 () Bool)

(assert (= b_and!129621 (and (=> t!162017 result!125356) b_and!129629)))

(declare-fun tb!104221 () Bool)

(declare-fun t!162019 () Bool)

(assert (=> (and b!1742555 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162019) tb!104221))

(declare-fun result!125358 () Bool)

(assert (= result!125358 result!125352))

(assert (=> d!532639 t!162019))

(declare-fun b_and!129631 () Bool)

(assert (= b_and!129623 (and (=> t!162019 result!125358) b_and!129631)))

(declare-fun m!2154625 () Bool)

(assert (=> d!532639 m!2154625))

(declare-fun m!2154627 () Bool)

(assert (=> d!532639 m!2154627))

(assert (=> b!1742305 d!532639))

(declare-fun b!1743123 () Bool)

(declare-fun e!1115659 () Bool)

(declare-fun e!1115660 () Bool)

(assert (=> b!1743123 (= e!1115659 e!1115660)))

(declare-fun res!783782 () Bool)

(assert (=> b!1743123 (=> (not res!783782) (not e!1115660))))

(declare-fun lt!672165 () Bool)

(assert (=> b!1743123 (= res!783782 (not lt!672165))))

(declare-fun b!1743124 () Bool)

(declare-fun e!1115657 () Bool)

(assert (=> b!1743124 (= e!1115660 e!1115657)))

(declare-fun res!783780 () Bool)

(assert (=> b!1743124 (=> res!783780 e!1115657)))

(declare-fun call!110149 () Bool)

(assert (=> b!1743124 (= res!783780 call!110149)))

(declare-fun b!1743125 () Bool)

(declare-fun res!783781 () Bool)

(declare-fun e!1115658 () Bool)

(assert (=> b!1743125 (=> (not res!783781) (not e!1115658))))

(assert (=> b!1743125 (= res!783781 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun b!1743126 () Bool)

(assert (=> b!1743126 (= e!1115658 (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (c!284176 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun b!1743127 () Bool)

(declare-fun e!1115656 () Bool)

(declare-fun e!1115661 () Bool)

(assert (=> b!1743127 (= e!1115656 e!1115661)))

(declare-fun c!284415 () Bool)

(assert (=> b!1743127 (= c!284415 ((_ is EmptyLang!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun d!532641 () Bool)

(assert (=> d!532641 e!1115656))

(declare-fun c!284416 () Bool)

(assert (=> d!532641 (= c!284416 ((_ is EmptyExpr!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun e!1115662 () Bool)

(assert (=> d!532641 (= lt!672165 e!1115662)))

(declare-fun c!284414 () Bool)

(assert (=> d!532641 (= c!284414 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))

(assert (=> d!532641 (validRegex!1910 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))))

(assert (=> d!532641 (= (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) lt!672165)))

(declare-fun b!1743128 () Bool)

(declare-fun res!783777 () Bool)

(assert (=> b!1743128 (=> res!783777 e!1115657)))

(assert (=> b!1743128 (= res!783777 (not (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))))

(declare-fun b!1743129 () Bool)

(assert (=> b!1743129 (= e!1115657 (not (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (c!284176 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))))))))

(declare-fun b!1743130 () Bool)

(assert (=> b!1743130 (= e!1115661 (not lt!672165))))

(declare-fun b!1743131 () Bool)

(declare-fun res!783783 () Bool)

(assert (=> b!1743131 (=> res!783783 e!1115659)))

(assert (=> b!1743131 (= res!783783 (not ((_ is ElementMatch!4741) (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))))))

(assert (=> b!1743131 (= e!1115661 e!1115659)))

(declare-fun b!1743132 () Bool)

(assert (=> b!1743132 (= e!1115656 (= lt!672165 call!110149))))

(declare-fun b!1743133 () Bool)

(declare-fun res!783779 () Bool)

(assert (=> b!1743133 (=> res!783779 e!1115659)))

(assert (=> b!1743133 (= res!783779 e!1115658)))

(declare-fun res!783778 () Bool)

(assert (=> b!1743133 (=> (not res!783778) (not e!1115658))))

(assert (=> b!1743133 (= res!783778 lt!672165)))

(declare-fun b!1743134 () Bool)

(assert (=> b!1743134 (= e!1115662 (nullable!1436 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun b!1743135 () Bool)

(assert (=> b!1743135 (= e!1115662 (matchR!2215 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))) (head!3996 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))))) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun b!1743136 () Bool)

(declare-fun res!783784 () Bool)

(assert (=> b!1743136 (=> (not res!783784) (not e!1115658))))

(assert (=> b!1743136 (= res!783784 (not call!110149))))

(declare-fun bm!110144 () Bool)

(assert (=> bm!110144 (= call!110149 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))

(assert (= (and d!532641 c!284414) b!1743134))

(assert (= (and d!532641 (not c!284414)) b!1743135))

(assert (= (and d!532641 c!284416) b!1743132))

(assert (= (and d!532641 (not c!284416)) b!1743127))

(assert (= (and b!1743127 c!284415) b!1743130))

(assert (= (and b!1743127 (not c!284415)) b!1743131))

(assert (= (and b!1743131 (not res!783783)) b!1743133))

(assert (= (and b!1743133 res!783778) b!1743136))

(assert (= (and b!1743136 res!783784) b!1743125))

(assert (= (and b!1743125 res!783781) b!1743126))

(assert (= (and b!1743133 (not res!783779)) b!1743123))

(assert (= (and b!1743123 res!783782) b!1743124))

(assert (= (and b!1743124 (not res!783780)) b!1743128))

(assert (= (and b!1743128 (not res!783777)) b!1743129))

(assert (= (or b!1743132 b!1743124 b!1743136) bm!110144))

(assert (=> d!532641 m!2153775))

(declare-fun m!2154629 () Bool)

(assert (=> d!532641 m!2154629))

(declare-fun m!2154631 () Bool)

(assert (=> d!532641 m!2154631))

(assert (=> b!1743125 m!2153775))

(declare-fun m!2154633 () Bool)

(assert (=> b!1743125 m!2154633))

(assert (=> b!1743125 m!2154633))

(declare-fun m!2154635 () Bool)

(assert (=> b!1743125 m!2154635))

(assert (=> b!1743126 m!2153775))

(declare-fun m!2154637 () Bool)

(assert (=> b!1743126 m!2154637))

(declare-fun m!2154639 () Bool)

(assert (=> b!1743134 m!2154639))

(assert (=> b!1743135 m!2153775))

(assert (=> b!1743135 m!2154637))

(assert (=> b!1743135 m!2154637))

(declare-fun m!2154641 () Bool)

(assert (=> b!1743135 m!2154641))

(assert (=> b!1743135 m!2153775))

(assert (=> b!1743135 m!2154633))

(assert (=> b!1743135 m!2154641))

(assert (=> b!1743135 m!2154633))

(declare-fun m!2154643 () Bool)

(assert (=> b!1743135 m!2154643))

(assert (=> b!1743129 m!2153775))

(assert (=> b!1743129 m!2154637))

(assert (=> b!1743128 m!2153775))

(assert (=> b!1743128 m!2154633))

(assert (=> b!1743128 m!2154633))

(assert (=> b!1743128 m!2154635))

(assert (=> bm!110144 m!2153775))

(assert (=> bm!110144 m!2154629))

(assert (=> b!1742476 d!532641))

(declare-fun d!532643 () Bool)

(assert (=> d!532643 (= (get!5774 lt!672031) (v!25283 lt!672031))))

(assert (=> b!1742476 d!532643))

(declare-fun d!532645 () Bool)

(assert (=> d!532645 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))) (list!7748 (c!284177 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun bs!403112 () Bool)

(assert (= bs!403112 d!532645))

(declare-fun m!2154645 () Bool)

(assert (=> bs!403112 m!2154645))

(assert (=> b!1742476 d!532645))

(declare-fun d!532647 () Bool)

(declare-fun lt!672167 () BalanceConc!12686)

(assert (=> d!532647 (= (list!7746 lt!672167) (originalCharacters!4227 (_1!10801 (get!5774 lt!672031))))))

(assert (=> d!532647 (= lt!672167 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))) (value!106943 (_1!10801 (get!5774 lt!672031)))))))

(assert (=> d!532647 (= (charsOf!2062 (_1!10801 (get!5774 lt!672031))) lt!672167)))

(declare-fun b_lambda!55833 () Bool)

(assert (=> (not b_lambda!55833) (not d!532647)))

(declare-fun t!162021 () Bool)

(declare-fun tb!104223 () Bool)

(assert (=> (and b!1741996 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162021) tb!104223))

(declare-fun b!1743142 () Bool)

(declare-fun e!1115666 () Bool)

(declare-fun tp!496166 () Bool)

(assert (=> b!1743142 (= e!1115666 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))) (value!106943 (_1!10801 (get!5774 lt!672031)))))) tp!496166))))

(declare-fun result!125360 () Bool)

(assert (=> tb!104223 (= result!125360 (and (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))) (value!106943 (_1!10801 (get!5774 lt!672031))))) e!1115666))))

(assert (= tb!104223 b!1743142))

(declare-fun m!2154665 () Bool)

(assert (=> b!1743142 m!2154665))

(declare-fun m!2154667 () Bool)

(assert (=> tb!104223 m!2154667))

(assert (=> d!532647 t!162021))

(declare-fun b_and!129633 () Bool)

(assert (= b_and!129625 (and (=> t!162021 result!125360) b_and!129633)))

(declare-fun t!162023 () Bool)

(declare-fun tb!104225 () Bool)

(assert (=> (and b!1741986 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162023) tb!104225))

(declare-fun result!125362 () Bool)

(assert (= result!125362 result!125360))

(assert (=> d!532647 t!162023))

(declare-fun b_and!129635 () Bool)

(assert (= b_and!129627 (and (=> t!162023 result!125362) b_and!129635)))

(declare-fun tb!104227 () Bool)

(declare-fun t!162025 () Bool)

(assert (=> (and b!1741978 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162025) tb!104227))

(declare-fun result!125364 () Bool)

(assert (= result!125364 result!125360))

(assert (=> d!532647 t!162025))

(declare-fun b_and!129637 () Bool)

(assert (= b_and!129629 (and (=> t!162025 result!125364) b_and!129637)))

(declare-fun t!162027 () Bool)

(declare-fun tb!104229 () Bool)

(assert (=> (and b!1742555 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162027) tb!104229))

(declare-fun result!125366 () Bool)

(assert (= result!125366 result!125360))

(assert (=> d!532647 t!162027))

(declare-fun b_and!129639 () Bool)

(assert (= b_and!129631 (and (=> t!162027 result!125366) b_and!129639)))

(declare-fun m!2154669 () Bool)

(assert (=> d!532647 m!2154669))

(declare-fun m!2154671 () Bool)

(assert (=> d!532647 m!2154671))

(assert (=> b!1742476 d!532647))

(declare-fun d!532651 () Bool)

(declare-fun charsToInt!0 (List!19223) (_ BitVec 32))

(assert (=> d!532651 (= (inv!16 (value!106943 token!523)) (= (charsToInt!0 (text!24968 (value!106943 token!523))) (value!106934 (value!106943 token!523))))))

(declare-fun bs!403114 () Bool)

(assert (= bs!403114 d!532651))

(declare-fun m!2154675 () Bool)

(assert (=> bs!403114 m!2154675))

(assert (=> b!1742282 d!532651))

(declare-fun d!532655 () Bool)

(assert (=> d!532655 (= (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))) (v!25282 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> b!1742452 d!532655))

(assert (=> b!1742452 d!532195))

(assert (=> b!1742452 d!532279))

(assert (=> b!1742452 d!532197))

(declare-fun b!1743143 () Bool)

(declare-fun e!1115670 () Bool)

(declare-fun e!1115671 () Bool)

(assert (=> b!1743143 (= e!1115670 e!1115671)))

(declare-fun res!783793 () Bool)

(assert (=> b!1743143 (=> (not res!783793) (not e!1115671))))

(declare-fun lt!672168 () Bool)

(assert (=> b!1743143 (= res!783793 (not lt!672168))))

(declare-fun b!1743144 () Bool)

(declare-fun e!1115668 () Bool)

(assert (=> b!1743144 (= e!1115671 e!1115668)))

(declare-fun res!783791 () Bool)

(assert (=> b!1743144 (=> res!783791 e!1115668)))

(declare-fun call!110150 () Bool)

(assert (=> b!1743144 (= res!783791 call!110150)))

(declare-fun b!1743145 () Bool)

(declare-fun res!783792 () Bool)

(declare-fun e!1115669 () Bool)

(assert (=> b!1743145 (=> (not res!783792) (not e!1115669))))

(assert (=> b!1743145 (= res!783792 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun b!1743146 () Bool)

(assert (=> b!1743146 (= e!1115669 (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (c!284176 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))))

(declare-fun b!1743147 () Bool)

(declare-fun e!1115667 () Bool)

(declare-fun e!1115672 () Bool)

(assert (=> b!1743147 (= e!1115667 e!1115672)))

(declare-fun c!284419 () Bool)

(assert (=> b!1743147 (= c!284419 ((_ is EmptyLang!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))))

(declare-fun d!532657 () Bool)

(assert (=> d!532657 e!1115667))

(declare-fun c!284420 () Bool)

(assert (=> d!532657 (= c!284420 ((_ is EmptyExpr!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))))

(declare-fun e!1115673 () Bool)

(assert (=> d!532657 (= lt!672168 e!1115673)))

(declare-fun c!284418 () Bool)

(assert (=> d!532657 (= c!284418 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (=> d!532657 (validRegex!1910 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(assert (=> d!532657 (= (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) lt!672168)))

(declare-fun b!1743148 () Bool)

(declare-fun res!783788 () Bool)

(assert (=> b!1743148 (=> res!783788 e!1115668)))

(assert (=> b!1743148 (= res!783788 (not (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1743149 () Bool)

(assert (=> b!1743149 (= e!1115668 (not (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (c!284176 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))))))

(declare-fun b!1743150 () Bool)

(assert (=> b!1743150 (= e!1115672 (not lt!672168))))

(declare-fun b!1743151 () Bool)

(declare-fun res!783794 () Bool)

(assert (=> b!1743151 (=> res!783794 e!1115670)))

(assert (=> b!1743151 (= res!783794 (not ((_ is ElementMatch!4741) (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))))

(assert (=> b!1743151 (= e!1115672 e!1115670)))

(declare-fun b!1743152 () Bool)

(assert (=> b!1743152 (= e!1115667 (= lt!672168 call!110150))))

(declare-fun b!1743153 () Bool)

(declare-fun res!783790 () Bool)

(assert (=> b!1743153 (=> res!783790 e!1115670)))

(assert (=> b!1743153 (= res!783790 e!1115669)))

(declare-fun res!783789 () Bool)

(assert (=> b!1743153 (=> (not res!783789) (not e!1115669))))

(assert (=> b!1743153 (= res!783789 lt!672168)))

(declare-fun b!1743154 () Bool)

(assert (=> b!1743154 (= e!1115673 (nullable!1436 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))))

(declare-fun b!1743155 () Bool)

(assert (=> b!1743155 (= e!1115673 (matchR!2215 (derivativeStep!1204 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun b!1743156 () Bool)

(declare-fun res!783795 () Bool)

(assert (=> b!1743156 (=> (not res!783795) (not e!1115669))))

(assert (=> b!1743156 (= res!783795 (not call!110150))))

(declare-fun bm!110145 () Bool)

(assert (=> bm!110145 (= call!110150 (isEmpty!12057 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (= (and d!532657 c!284418) b!1743154))

(assert (= (and d!532657 (not c!284418)) b!1743155))

(assert (= (and d!532657 c!284420) b!1743152))

(assert (= (and d!532657 (not c!284420)) b!1743147))

(assert (= (and b!1743147 c!284419) b!1743150))

(assert (= (and b!1743147 (not c!284419)) b!1743151))

(assert (= (and b!1743151 (not res!783794)) b!1743153))

(assert (= (and b!1743153 res!783789) b!1743156))

(assert (= (and b!1743156 res!783795) b!1743145))

(assert (= (and b!1743145 res!783792) b!1743146))

(assert (= (and b!1743153 (not res!783790)) b!1743143))

(assert (= (and b!1743143 res!783793) b!1743144))

(assert (= (and b!1743144 (not res!783791)) b!1743148))

(assert (= (and b!1743148 (not res!783788)) b!1743149))

(assert (= (or b!1743152 b!1743144 b!1743156) bm!110145))

(assert (=> d!532657 m!2153131))

(assert (=> d!532657 m!2153401))

(declare-fun m!2154677 () Bool)

(assert (=> d!532657 m!2154677))

(assert (=> b!1743145 m!2153131))

(assert (=> b!1743145 m!2153405))

(assert (=> b!1743145 m!2153405))

(assert (=> b!1743145 m!2153407))

(assert (=> b!1743146 m!2153131))

(assert (=> b!1743146 m!2153409))

(declare-fun m!2154679 () Bool)

(assert (=> b!1743154 m!2154679))

(assert (=> b!1743155 m!2153131))

(assert (=> b!1743155 m!2153409))

(assert (=> b!1743155 m!2153409))

(declare-fun m!2154681 () Bool)

(assert (=> b!1743155 m!2154681))

(assert (=> b!1743155 m!2153131))

(assert (=> b!1743155 m!2153405))

(assert (=> b!1743155 m!2154681))

(assert (=> b!1743155 m!2153405))

(declare-fun m!2154683 () Bool)

(assert (=> b!1743155 m!2154683))

(assert (=> b!1743149 m!2153131))

(assert (=> b!1743149 m!2153409))

(assert (=> b!1743148 m!2153131))

(assert (=> b!1743148 m!2153405))

(assert (=> b!1743148 m!2153405))

(assert (=> b!1743148 m!2153407))

(assert (=> bm!110145 m!2153131))

(assert (=> bm!110145 m!2153401))

(assert (=> b!1742452 d!532657))

(assert (=> b!1742312 d!532637))

(assert (=> b!1742312 d!532639))

(assert (=> b!1742312 d!532635))

(assert (=> b!1742483 d!532645))

(assert (=> b!1742483 d!532647))

(assert (=> b!1742483 d!532643))

(declare-fun d!532659 () Bool)

(declare-fun res!783807 () Bool)

(declare-fun e!1115681 () Bool)

(assert (=> d!532659 (=> res!783807 e!1115681)))

(assert (=> d!532659 (= res!783807 ((_ is Nil!19155) rules!3447))))

(assert (=> d!532659 (= (noDuplicateTag!1276 thiss!24550 rules!3447 Nil!19160) e!1115681)))

(declare-fun b!1743170 () Bool)

(declare-fun e!1115682 () Bool)

(assert (=> b!1743170 (= e!1115681 e!1115682)))

(declare-fun res!783808 () Bool)

(assert (=> b!1743170 (=> (not res!783808) (not e!1115682))))

(declare-fun contains!3437 (List!19230 String!21847) Bool)

(assert (=> b!1743170 (= res!783808 (not (contains!3437 Nil!19160 (tag!3753 (h!24556 rules!3447)))))))

(declare-fun b!1743171 () Bool)

(assert (=> b!1743171 (= e!1115682 (noDuplicateTag!1276 thiss!24550 (t!161924 rules!3447) (Cons!19160 (tag!3753 (h!24556 rules!3447)) Nil!19160)))))

(assert (= (and d!532659 (not res!783807)) b!1743170))

(assert (= (and b!1743170 res!783808) b!1743171))

(declare-fun m!2154717 () Bool)

(assert (=> b!1743170 m!2154717))

(declare-fun m!2154719 () Bool)

(assert (=> b!1743171 m!2154719))

(assert (=> b!1742491 d!532659))

(declare-fun d!532663 () Bool)

(assert (=> d!532663 (= (list!7746 lt!671893) (list!7748 (c!284177 lt!671893)))))

(declare-fun bs!403116 () Bool)

(assert (= bs!403116 d!532663))

(declare-fun m!2154721 () Bool)

(assert (=> bs!403116 m!2154721))

(assert (=> d!532227 d!532663))

(declare-fun d!532665 () Bool)

(assert (=> d!532665 (= (isEmpty!12057 (tail!2601 lt!671800)) ((_ is Nil!19154) (tail!2601 lt!671800)))))

(assert (=> b!1742494 d!532665))

(declare-fun d!532667 () Bool)

(assert (=> d!532667 (= (tail!2601 lt!671800) (t!161923 lt!671800))))

(assert (=> b!1742494 d!532667))

(declare-fun d!532671 () Bool)

(declare-fun lt!672181 () Int)

(assert (=> d!532671 (>= lt!672181 0)))

(declare-fun e!1115690 () Int)

(assert (=> d!532671 (= lt!672181 e!1115690)))

(declare-fun c!284425 () Bool)

(assert (=> d!532671 (= c!284425 ((_ is Nil!19154) (++!5238 lt!671799 (_2!10801 lt!671797))))))

(assert (=> d!532671 (= (size!15214 (++!5238 lt!671799 (_2!10801 lt!671797))) lt!672181)))

(declare-fun b!1743184 () Bool)

(assert (=> b!1743184 (= e!1115690 0)))

(declare-fun b!1743185 () Bool)

(assert (=> b!1743185 (= e!1115690 (+ 1 (size!15214 (t!161923 (++!5238 lt!671799 (_2!10801 lt!671797))))))))

(assert (= (and d!532671 c!284425) b!1743184))

(assert (= (and d!532671 (not c!284425)) b!1743185))

(declare-fun m!2154751 () Bool)

(assert (=> b!1743185 m!2154751))

(assert (=> b!1742457 d!532671))

(declare-fun d!532683 () Bool)

(declare-fun lt!672182 () Int)

(assert (=> d!532683 (>= lt!672182 0)))

(declare-fun e!1115691 () Int)

(assert (=> d!532683 (= lt!672182 e!1115691)))

(declare-fun c!284426 () Bool)

(assert (=> d!532683 (= c!284426 ((_ is Nil!19154) lt!671799))))

(assert (=> d!532683 (= (size!15214 lt!671799) lt!672182)))

(declare-fun b!1743186 () Bool)

(assert (=> b!1743186 (= e!1115691 0)))

(declare-fun b!1743187 () Bool)

(assert (=> b!1743187 (= e!1115691 (+ 1 (size!15214 (t!161923 lt!671799))))))

(assert (= (and d!532683 c!284426) b!1743186))

(assert (= (and d!532683 (not c!284426)) b!1743187))

(assert (=> b!1743187 m!2154537))

(assert (=> b!1742457 d!532683))

(declare-fun d!532687 () Bool)

(declare-fun charsToBigInt!1 (List!19223) Int)

(assert (=> d!532687 (= (inv!17 (value!106943 token!523)) (= (charsToBigInt!1 (text!24969 (value!106943 token!523))) (value!106935 (value!106943 token!523))))))

(declare-fun bs!403118 () Bool)

(assert (= bs!403118 d!532687))

(declare-fun m!2154757 () Bool)

(assert (=> bs!403118 m!2154757))

(assert (=> b!1742286 d!532687))

(declare-fun bs!403122 () Bool)

(declare-fun d!532693 () Bool)

(assert (= bs!403122 (and d!532693 d!532299)))

(declare-fun lambda!69650 () Int)

(assert (=> bs!403122 (= lambda!69650 lambda!69614)))

(declare-fun lambda!69651 () Int)

(declare-fun forall!4263 (List!19231 Int) Bool)

(assert (=> d!532693 (forall!4263 (map!3945 rules!3447 lambda!69650) lambda!69651)))

(declare-fun lt!672196 () Unit!33221)

(declare-fun e!1115705 () Unit!33221)

(assert (=> d!532693 (= lt!672196 e!1115705)))

(declare-fun c!284435 () Bool)

(assert (=> d!532693 (= c!284435 ((_ is Nil!19155) rules!3447))))

(assert (=> d!532693 (rulesValidInductive!1138 thiss!24550 rules!3447)))

(assert (=> d!532693 (= (lemma!359 rules!3447 thiss!24550 rules!3447) lt!672196)))

(declare-fun b!1743219 () Bool)

(declare-fun Unit!33231 () Unit!33221)

(assert (=> b!1743219 (= e!1115705 Unit!33231)))

(declare-fun b!1743220 () Bool)

(declare-fun Unit!33232 () Unit!33221)

(assert (=> b!1743220 (= e!1115705 Unit!33232)))

(declare-fun lt!672197 () Unit!33221)

(assert (=> b!1743220 (= lt!672197 (lemma!359 rules!3447 thiss!24550 (t!161924 rules!3447)))))

(assert (= (and d!532693 c!284435) b!1743219))

(assert (= (and d!532693 (not c!284435)) b!1743220))

(declare-fun m!2154807 () Bool)

(assert (=> d!532693 m!2154807))

(assert (=> d!532693 m!2154807))

(declare-fun m!2154809 () Bool)

(assert (=> d!532693 m!2154809))

(assert (=> d!532693 m!2153507))

(declare-fun m!2154811 () Bool)

(assert (=> b!1743220 m!2154811))

(assert (=> d!532299 d!532693))

(declare-fun bs!403124 () Bool)

(declare-fun d!532709 () Bool)

(assert (= bs!403124 (and d!532709 d!532693)))

(declare-fun lambda!69654 () Int)

(assert (=> bs!403124 (= lambda!69654 lambda!69651)))

(declare-fun b!1743320 () Bool)

(declare-fun e!1115748 () Bool)

(declare-fun lt!672200 () Regex!4741)

(declare-fun isUnion!97 (Regex!4741) Bool)

(assert (=> b!1743320 (= e!1115748 (isUnion!97 lt!672200))))

(declare-fun b!1743321 () Bool)

(declare-fun e!1115749 () Bool)

(declare-fun isEmpty!12064 (List!19231) Bool)

(assert (=> b!1743321 (= e!1115749 (isEmpty!12064 (t!161962 (map!3945 rules!3447 lambda!69614))))))

(declare-fun b!1743322 () Bool)

(declare-fun e!1115751 () Regex!4741)

(assert (=> b!1743322 (= e!1115751 EmptyLang!4741)))

(declare-fun b!1743323 () Bool)

(declare-fun e!1115752 () Bool)

(assert (=> b!1743323 (= e!1115752 e!1115748)))

(declare-fun c!284445 () Bool)

(declare-fun tail!2603 (List!19231) List!19231)

(assert (=> b!1743323 (= c!284445 (isEmpty!12064 (tail!2603 (map!3945 rules!3447 lambda!69614))))))

(declare-fun b!1743324 () Bool)

(declare-fun e!1115747 () Regex!4741)

(assert (=> b!1743324 (= e!1115747 (h!24562 (map!3945 rules!3447 lambda!69614)))))

(declare-fun e!1115750 () Bool)

(assert (=> d!532709 e!1115750))

(declare-fun res!783830 () Bool)

(assert (=> d!532709 (=> (not res!783830) (not e!1115750))))

(assert (=> d!532709 (= res!783830 (validRegex!1910 lt!672200))))

(assert (=> d!532709 (= lt!672200 e!1115747)))

(declare-fun c!284444 () Bool)

(assert (=> d!532709 (= c!284444 e!1115749)))

(declare-fun res!783831 () Bool)

(assert (=> d!532709 (=> (not res!783831) (not e!1115749))))

(assert (=> d!532709 (= res!783831 ((_ is Cons!19161) (map!3945 rules!3447 lambda!69614)))))

(assert (=> d!532709 (forall!4263 (map!3945 rules!3447 lambda!69614) lambda!69654)))

(assert (=> d!532709 (= (generalisedUnion!367 (map!3945 rules!3447 lambda!69614)) lt!672200)))

(declare-fun b!1743325 () Bool)

(declare-fun isEmptyLang!97 (Regex!4741) Bool)

(assert (=> b!1743325 (= e!1115752 (isEmptyLang!97 lt!672200))))

(declare-fun b!1743326 () Bool)

(declare-fun head!4000 (List!19231) Regex!4741)

(assert (=> b!1743326 (= e!1115748 (= lt!672200 (head!4000 (map!3945 rules!3447 lambda!69614))))))

(declare-fun b!1743327 () Bool)

(assert (=> b!1743327 (= e!1115747 e!1115751)))

(declare-fun c!284446 () Bool)

(assert (=> b!1743327 (= c!284446 ((_ is Cons!19161) (map!3945 rules!3447 lambda!69614)))))

(declare-fun b!1743328 () Bool)

(assert (=> b!1743328 (= e!1115750 e!1115752)))

(declare-fun c!284447 () Bool)

(assert (=> b!1743328 (= c!284447 (isEmpty!12064 (map!3945 rules!3447 lambda!69614)))))

(declare-fun b!1743329 () Bool)

(assert (=> b!1743329 (= e!1115751 (Union!4741 (h!24562 (map!3945 rules!3447 lambda!69614)) (generalisedUnion!367 (t!161962 (map!3945 rules!3447 lambda!69614)))))))

(assert (= (and d!532709 res!783831) b!1743321))

(assert (= (and d!532709 c!284444) b!1743324))

(assert (= (and d!532709 (not c!284444)) b!1743327))

(assert (= (and b!1743327 c!284446) b!1743329))

(assert (= (and b!1743327 (not c!284446)) b!1743322))

(assert (= (and d!532709 res!783830) b!1743328))

(assert (= (and b!1743328 c!284447) b!1743325))

(assert (= (and b!1743328 (not c!284447)) b!1743323))

(assert (= (and b!1743323 c!284445) b!1743326))

(assert (= (and b!1743323 (not c!284445)) b!1743320))

(assert (=> b!1743323 m!2153837))

(declare-fun m!2154829 () Bool)

(assert (=> b!1743323 m!2154829))

(assert (=> b!1743323 m!2154829))

(declare-fun m!2154831 () Bool)

(assert (=> b!1743323 m!2154831))

(declare-fun m!2154833 () Bool)

(assert (=> b!1743325 m!2154833))

(assert (=> b!1743326 m!2153837))

(declare-fun m!2154835 () Bool)

(assert (=> b!1743326 m!2154835))

(declare-fun m!2154837 () Bool)

(assert (=> b!1743321 m!2154837))

(declare-fun m!2154839 () Bool)

(assert (=> b!1743320 m!2154839))

(declare-fun m!2154841 () Bool)

(assert (=> d!532709 m!2154841))

(assert (=> d!532709 m!2153837))

(declare-fun m!2154843 () Bool)

(assert (=> d!532709 m!2154843))

(declare-fun m!2154845 () Bool)

(assert (=> b!1743329 m!2154845))

(assert (=> b!1743328 m!2153837))

(declare-fun m!2154847 () Bool)

(assert (=> b!1743328 m!2154847))

(assert (=> d!532299 d!532709))

(declare-fun d!532713 () Bool)

(declare-fun lt!672203 () List!19231)

(declare-fun size!15218 (List!19231) Int)

(declare-fun size!15219 (List!19225) Int)

(assert (=> d!532713 (= (size!15218 lt!672203) (size!15219 rules!3447))))

(declare-fun e!1115755 () List!19231)

(assert (=> d!532713 (= lt!672203 e!1115755)))

(declare-fun c!284450 () Bool)

(assert (=> d!532713 (= c!284450 ((_ is Nil!19155) rules!3447))))

(assert (=> d!532713 (= (map!3945 rules!3447 lambda!69614) lt!672203)))

(declare-fun b!1743334 () Bool)

(assert (=> b!1743334 (= e!1115755 Nil!19161)))

(declare-fun b!1743335 () Bool)

(declare-fun $colon$colon!428 (List!19231 Regex!4741) List!19231)

(declare-fun dynLambda!9059 (Int Rule!6626) Regex!4741)

(assert (=> b!1743335 (= e!1115755 ($colon$colon!428 (map!3945 (t!161924 rules!3447) lambda!69614) (dynLambda!9059 lambda!69614 (h!24556 rules!3447))))))

(assert (= (and d!532713 c!284450) b!1743334))

(assert (= (and d!532713 (not c!284450)) b!1743335))

(declare-fun b_lambda!55839 () Bool)

(assert (=> (not b_lambda!55839) (not b!1743335)))

(declare-fun m!2154849 () Bool)

(assert (=> d!532713 m!2154849))

(declare-fun m!2154851 () Bool)

(assert (=> d!532713 m!2154851))

(declare-fun m!2154853 () Bool)

(assert (=> b!1743335 m!2154853))

(declare-fun m!2154855 () Bool)

(assert (=> b!1743335 m!2154855))

(assert (=> b!1743335 m!2154853))

(assert (=> b!1743335 m!2154855))

(declare-fun m!2154857 () Bool)

(assert (=> b!1743335 m!2154857))

(assert (=> d!532299 d!532713))

(declare-fun d!532715 () Bool)

(assert (=> d!532715 (= (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) ((_ is Nil!19154) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(assert (=> b!1742234 d!532715))

(declare-fun d!532717 () Bool)

(assert (=> d!532717 (= (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (t!161923 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (=> b!1742234 d!532717))

(declare-fun b!1743354 () Bool)

(declare-fun e!1115773 () Bool)

(declare-fun call!110159 () Bool)

(assert (=> b!1743354 (= e!1115773 call!110159)))

(declare-fun bm!110154 () Bool)

(declare-fun call!110160 () Bool)

(declare-fun call!110161 () Bool)

(assert (=> bm!110154 (= call!110160 call!110161)))

(declare-fun b!1743355 () Bool)

(declare-fun e!1115774 () Bool)

(declare-fun e!1115775 () Bool)

(assert (=> b!1743355 (= e!1115774 e!1115775)))

(declare-fun res!783844 () Bool)

(assert (=> b!1743355 (= res!783844 (not (nullable!1436 (reg!5070 (regex!3413 rule!422)))))))

(assert (=> b!1743355 (=> (not res!783844) (not e!1115775))))

(declare-fun b!1743356 () Bool)

(declare-fun res!783843 () Bool)

(declare-fun e!1115776 () Bool)

(assert (=> b!1743356 (=> res!783843 e!1115776)))

(assert (=> b!1743356 (= res!783843 (not ((_ is Concat!8245) (regex!3413 rule!422))))))

(declare-fun e!1115772 () Bool)

(assert (=> b!1743356 (= e!1115772 e!1115776)))

(declare-fun b!1743357 () Bool)

(declare-fun e!1115770 () Bool)

(assert (=> b!1743357 (= e!1115770 call!110160)))

(declare-fun b!1743358 () Bool)

(declare-fun res!783845 () Bool)

(assert (=> b!1743358 (=> (not res!783845) (not e!1115773))))

(assert (=> b!1743358 (= res!783845 call!110160)))

(assert (=> b!1743358 (= e!1115772 e!1115773)))

(declare-fun b!1743359 () Bool)

(assert (=> b!1743359 (= e!1115776 e!1115770)))

(declare-fun res!783846 () Bool)

(assert (=> b!1743359 (=> (not res!783846) (not e!1115770))))

(assert (=> b!1743359 (= res!783846 call!110159)))

(declare-fun d!532719 () Bool)

(declare-fun res!783842 () Bool)

(declare-fun e!1115771 () Bool)

(assert (=> d!532719 (=> res!783842 e!1115771)))

(assert (=> d!532719 (= res!783842 ((_ is ElementMatch!4741) (regex!3413 rule!422)))))

(assert (=> d!532719 (= (validRegex!1910 (regex!3413 rule!422)) e!1115771)))

(declare-fun c!284456 () Bool)

(declare-fun bm!110155 () Bool)

(declare-fun c!284455 () Bool)

(assert (=> bm!110155 (= call!110161 (validRegex!1910 (ite c!284456 (reg!5070 (regex!3413 rule!422)) (ite c!284455 (regOne!9995 (regex!3413 rule!422)) (regTwo!9994 (regex!3413 rule!422))))))))

(declare-fun b!1743360 () Bool)

(assert (=> b!1743360 (= e!1115774 e!1115772)))

(assert (=> b!1743360 (= c!284455 ((_ is Union!4741) (regex!3413 rule!422)))))

(declare-fun b!1743361 () Bool)

(assert (=> b!1743361 (= e!1115775 call!110161)))

(declare-fun bm!110156 () Bool)

(assert (=> bm!110156 (= call!110159 (validRegex!1910 (ite c!284455 (regTwo!9995 (regex!3413 rule!422)) (regOne!9994 (regex!3413 rule!422)))))))

(declare-fun b!1743362 () Bool)

(assert (=> b!1743362 (= e!1115771 e!1115774)))

(assert (=> b!1743362 (= c!284456 ((_ is Star!4741) (regex!3413 rule!422)))))

(assert (= (and d!532719 (not res!783842)) b!1743362))

(assert (= (and b!1743362 c!284456) b!1743355))

(assert (= (and b!1743362 (not c!284456)) b!1743360))

(assert (= (and b!1743355 res!783844) b!1743361))

(assert (= (and b!1743360 c!284455) b!1743358))

(assert (= (and b!1743360 (not c!284455)) b!1743356))

(assert (= (and b!1743358 res!783845) b!1743354))

(assert (= (and b!1743356 (not res!783843)) b!1743359))

(assert (= (and b!1743359 res!783846) b!1743357))

(assert (= (or b!1743358 b!1743357) bm!110154))

(assert (= (or b!1743354 b!1743359) bm!110156))

(assert (= (or b!1743361 bm!110154) bm!110155))

(declare-fun m!2154859 () Bool)

(assert (=> b!1743355 m!2154859))

(declare-fun m!2154861 () Bool)

(assert (=> bm!110155 m!2154861))

(declare-fun m!2154863 () Bool)

(assert (=> bm!110156 m!2154863))

(assert (=> d!532289 d!532719))

(assert (=> b!1742320 d!532627))

(assert (=> b!1742320 d!532629))

(declare-fun d!532721 () Bool)

(declare-fun lt!672204 () Int)

(assert (=> d!532721 (>= lt!672204 0)))

(declare-fun e!1115777 () Int)

(assert (=> d!532721 (= lt!672204 e!1115777)))

(declare-fun c!284457 () Bool)

(assert (=> d!532721 (= c!284457 ((_ is Nil!19154) lt!671897))))

(assert (=> d!532721 (= (size!15214 lt!671897) lt!672204)))

(declare-fun b!1743363 () Bool)

(assert (=> b!1743363 (= e!1115777 0)))

(declare-fun b!1743364 () Bool)

(assert (=> b!1743364 (= e!1115777 (+ 1 (size!15214 (t!161923 lt!671897))))))

(assert (= (and d!532721 c!284457) b!1743363))

(assert (= (and d!532721 (not c!284457)) b!1743364))

(declare-fun m!2154865 () Bool)

(assert (=> b!1743364 m!2154865))

(assert (=> b!1742342 d!532721))

(assert (=> b!1742342 d!532683))

(declare-fun d!532723 () Bool)

(declare-fun lt!672205 () Int)

(assert (=> d!532723 (>= lt!672205 0)))

(declare-fun e!1115778 () Int)

(assert (=> d!532723 (= lt!672205 e!1115778)))

(declare-fun c!284458 () Bool)

(assert (=> d!532723 (= c!284458 ((_ is Nil!19154) (_2!10801 lt!671797)))))

(assert (=> d!532723 (= (size!15214 (_2!10801 lt!671797)) lt!672205)))

(declare-fun b!1743365 () Bool)

(assert (=> b!1743365 (= e!1115778 0)))

(declare-fun b!1743366 () Bool)

(assert (=> b!1743366 (= e!1115778 (+ 1 (size!15214 (t!161923 (_2!10801 lt!671797)))))))

(assert (= (and d!532723 c!284458) b!1743365))

(assert (= (and d!532723 (not c!284458)) b!1743366))

(declare-fun m!2154867 () Bool)

(assert (=> b!1743366 m!2154867))

(assert (=> b!1742342 d!532723))

(declare-fun d!532725 () Bool)

(declare-fun lostCauseFct!183 (Regex!4741) Bool)

(assert (=> d!532725 (= (lostCause!546 (rulesRegex!771 thiss!24550 rules!3447)) (lostCauseFct!183 (rulesRegex!771 thiss!24550 rules!3447)))))

(declare-fun bs!403125 () Bool)

(assert (= bs!403125 d!532725))

(assert (=> bs!403125 m!2153111))

(declare-fun m!2154869 () Bool)

(assert (=> bs!403125 m!2154869))

(assert (=> b!1742517 d!532725))

(assert (=> b!1742445 d!532611))

(assert (=> b!1742445 d!532617))

(declare-fun d!532727 () Bool)

(assert (=> d!532727 (= (nullable!1436 (regex!3413 lt!671796)) (nullableFct!327 (regex!3413 lt!671796)))))

(declare-fun bs!403126 () Bool)

(assert (= bs!403126 d!532727))

(declare-fun m!2154871 () Bool)

(assert (=> bs!403126 m!2154871))

(assert (=> b!1742240 d!532727))

(declare-fun bs!403127 () Bool)

(declare-fun d!532729 () Bool)

(assert (= bs!403127 (and d!532729 b!1741985)))

(declare-fun lambda!69657 () Int)

(assert (=> bs!403127 (= (and (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (= (toValue!4920 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (= lambda!69657 lambda!69608))))

(assert (=> d!532729 true))

(assert (=> d!532729 (< (dynLambda!9052 order!11955 (toChars!4779 (transformation!3413 (h!24556 rules!3447)))) (dynLambda!9051 order!11953 lambda!69657))))

(assert (=> d!532729 true))

(assert (=> d!532729 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (dynLambda!9051 order!11953 lambda!69657))))

(assert (=> d!532729 (= (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (Forall!782 lambda!69657))))

(declare-fun bs!403128 () Bool)

(assert (= bs!403128 d!532729))

(declare-fun m!2154873 () Bool)

(assert (=> bs!403128 m!2154873))

(assert (=> d!532231 d!532729))

(declare-fun b!1743374 () Bool)

(declare-fun e!1115781 () Bool)

(assert (=> b!1743374 (= e!1115781 (>= (size!15214 (tail!2601 lt!671803)) (size!15214 (tail!2601 lt!671800))))))

(declare-fun b!1743372 () Bool)

(declare-fun res!783847 () Bool)

(declare-fun e!1115780 () Bool)

(assert (=> b!1743372 (=> (not res!783847) (not e!1115780))))

(assert (=> b!1743372 (= res!783847 (= (head!3996 (tail!2601 lt!671800)) (head!3996 (tail!2601 lt!671803))))))

(declare-fun b!1743373 () Bool)

(assert (=> b!1743373 (= e!1115780 (isPrefix!1654 (tail!2601 (tail!2601 lt!671800)) (tail!2601 (tail!2601 lt!671803))))))

(declare-fun d!532731 () Bool)

(assert (=> d!532731 e!1115781))

(declare-fun res!783849 () Bool)

(assert (=> d!532731 (=> res!783849 e!1115781)))

(declare-fun lt!672206 () Bool)

(assert (=> d!532731 (= res!783849 (not lt!672206))))

(declare-fun e!1115779 () Bool)

(assert (=> d!532731 (= lt!672206 e!1115779)))

(declare-fun res!783848 () Bool)

(assert (=> d!532731 (=> res!783848 e!1115779)))

(assert (=> d!532731 (= res!783848 ((_ is Nil!19154) (tail!2601 lt!671800)))))

(assert (=> d!532731 (= (isPrefix!1654 (tail!2601 lt!671800) (tail!2601 lt!671803)) lt!672206)))

(declare-fun b!1743371 () Bool)

(assert (=> b!1743371 (= e!1115779 e!1115780)))

(declare-fun res!783850 () Bool)

(assert (=> b!1743371 (=> (not res!783850) (not e!1115780))))

(assert (=> b!1743371 (= res!783850 (not ((_ is Nil!19154) (tail!2601 lt!671803))))))

(assert (= (and d!532731 (not res!783848)) b!1743371))

(assert (= (and b!1743371 res!783850) b!1743372))

(assert (= (and b!1743372 res!783847) b!1743373))

(assert (= (and d!532731 (not res!783849)) b!1743374))

(assert (=> b!1743374 m!2153581))

(declare-fun m!2154875 () Bool)

(assert (=> b!1743374 m!2154875))

(assert (=> b!1743374 m!2153579))

(declare-fun m!2154877 () Bool)

(assert (=> b!1743374 m!2154877))

(assert (=> b!1743372 m!2153579))

(declare-fun m!2154879 () Bool)

(assert (=> b!1743372 m!2154879))

(assert (=> b!1743372 m!2153581))

(declare-fun m!2154881 () Bool)

(assert (=> b!1743372 m!2154881))

(assert (=> b!1743373 m!2153579))

(declare-fun m!2154883 () Bool)

(assert (=> b!1743373 m!2154883))

(assert (=> b!1743373 m!2153581))

(declare-fun m!2154885 () Bool)

(assert (=> b!1743373 m!2154885))

(assert (=> b!1743373 m!2154883))

(assert (=> b!1743373 m!2154885))

(declare-fun m!2154887 () Bool)

(assert (=> b!1743373 m!2154887))

(assert (=> b!1742358 d!532731))

(assert (=> b!1742358 d!532667))

(declare-fun d!532733 () Bool)

(assert (=> d!532733 (= (tail!2601 lt!671803) (t!161923 lt!671803))))

(assert (=> b!1742358 d!532733))

(declare-fun d!532735 () Bool)

(assert (=> d!532735 (= (isDefined!3194 lt!672031) (not (isEmpty!12061 lt!672031)))))

(declare-fun bs!403129 () Bool)

(assert (= bs!403129 d!532735))

(assert (=> bs!403129 m!2153787))

(assert (=> b!1742480 d!532735))

(declare-fun d!532737 () Bool)

(assert (=> d!532737 (= (isEmpty!12062 lt!671805) (not ((_ is Some!3849) lt!671805)))))

(assert (=> d!532275 d!532737))

(declare-fun b!1743375 () Bool)

(declare-fun e!1115785 () Bool)

(declare-fun e!1115786 () Bool)

(assert (=> b!1743375 (= e!1115785 e!1115786)))

(declare-fun res!783856 () Bool)

(assert (=> b!1743375 (=> (not res!783856) (not e!1115786))))

(declare-fun lt!672207 () Bool)

(assert (=> b!1743375 (= res!783856 (not lt!672207))))

(declare-fun b!1743376 () Bool)

(declare-fun e!1115783 () Bool)

(assert (=> b!1743376 (= e!1115786 e!1115783)))

(declare-fun res!783854 () Bool)

(assert (=> b!1743376 (=> res!783854 e!1115783)))

(declare-fun call!110162 () Bool)

(assert (=> b!1743376 (= res!783854 call!110162)))

(declare-fun b!1743377 () Bool)

(declare-fun res!783855 () Bool)

(declare-fun e!1115784 () Bool)

(assert (=> b!1743377 (=> (not res!783855) (not e!1115784))))

(assert (=> b!1743377 (= res!783855 (isEmpty!12057 (tail!2601 (tail!2601 lt!671800))))))

(declare-fun b!1743378 () Bool)

(assert (=> b!1743378 (= e!1115784 (= (head!3996 (tail!2601 lt!671800)) (c!284176 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)))))))

(declare-fun b!1743379 () Bool)

(declare-fun e!1115782 () Bool)

(declare-fun e!1115787 () Bool)

(assert (=> b!1743379 (= e!1115782 e!1115787)))

(declare-fun c!284460 () Bool)

(assert (=> b!1743379 (= c!284460 ((_ is EmptyLang!4741) (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800))))))

(declare-fun d!532739 () Bool)

(assert (=> d!532739 e!1115782))

(declare-fun c!284461 () Bool)

(assert (=> d!532739 (= c!284461 ((_ is EmptyExpr!4741) (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800))))))

(declare-fun e!1115788 () Bool)

(assert (=> d!532739 (= lt!672207 e!1115788)))

(declare-fun c!284459 () Bool)

(assert (=> d!532739 (= c!284459 (isEmpty!12057 (tail!2601 lt!671800)))))

(assert (=> d!532739 (validRegex!1910 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)))))

(assert (=> d!532739 (= (matchR!2215 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)) (tail!2601 lt!671800)) lt!672207)))

(declare-fun b!1743380 () Bool)

(declare-fun res!783851 () Bool)

(assert (=> b!1743380 (=> res!783851 e!1115783)))

(assert (=> b!1743380 (= res!783851 (not (isEmpty!12057 (tail!2601 (tail!2601 lt!671800)))))))

(declare-fun b!1743381 () Bool)

(assert (=> b!1743381 (= e!1115783 (not (= (head!3996 (tail!2601 lt!671800)) (c!284176 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800))))))))

(declare-fun b!1743382 () Bool)

(assert (=> b!1743382 (= e!1115787 (not lt!672207))))

(declare-fun b!1743383 () Bool)

(declare-fun res!783857 () Bool)

(assert (=> b!1743383 (=> res!783857 e!1115785)))

(assert (=> b!1743383 (= res!783857 (not ((_ is ElementMatch!4741) (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)))))))

(assert (=> b!1743383 (= e!1115787 e!1115785)))

(declare-fun b!1743384 () Bool)

(assert (=> b!1743384 (= e!1115782 (= lt!672207 call!110162))))

(declare-fun b!1743385 () Bool)

(declare-fun res!783853 () Bool)

(assert (=> b!1743385 (=> res!783853 e!1115785)))

(assert (=> b!1743385 (= res!783853 e!1115784)))

(declare-fun res!783852 () Bool)

(assert (=> b!1743385 (=> (not res!783852) (not e!1115784))))

(assert (=> b!1743385 (= res!783852 lt!672207)))

(declare-fun b!1743386 () Bool)

(assert (=> b!1743386 (= e!1115788 (nullable!1436 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800))))))

(declare-fun b!1743387 () Bool)

(assert (=> b!1743387 (= e!1115788 (matchR!2215 (derivativeStep!1204 (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)) (head!3996 (tail!2601 lt!671800))) (tail!2601 (tail!2601 lt!671800))))))

(declare-fun b!1743388 () Bool)

(declare-fun res!783858 () Bool)

(assert (=> b!1743388 (=> (not res!783858) (not e!1115784))))

(assert (=> b!1743388 (= res!783858 (not call!110162))))

(declare-fun bm!110157 () Bool)

(assert (=> bm!110157 (= call!110162 (isEmpty!12057 (tail!2601 lt!671800)))))

(assert (= (and d!532739 c!284459) b!1743386))

(assert (= (and d!532739 (not c!284459)) b!1743387))

(assert (= (and d!532739 c!284461) b!1743384))

(assert (= (and d!532739 (not c!284461)) b!1743379))

(assert (= (and b!1743379 c!284460) b!1743382))

(assert (= (and b!1743379 (not c!284460)) b!1743383))

(assert (= (and b!1743383 (not res!783857)) b!1743385))

(assert (= (and b!1743385 res!783852) b!1743388))

(assert (= (and b!1743388 res!783858) b!1743377))

(assert (= (and b!1743377 res!783855) b!1743378))

(assert (= (and b!1743385 (not res!783853)) b!1743375))

(assert (= (and b!1743375 res!783856) b!1743376))

(assert (= (and b!1743376 (not res!783854)) b!1743380))

(assert (= (and b!1743380 (not res!783851)) b!1743381))

(assert (= (or b!1743384 b!1743376 b!1743388) bm!110157))

(assert (=> d!532739 m!2153579))

(assert (=> d!532739 m!2153809))

(assert (=> d!532739 m!2153813))

(declare-fun m!2154889 () Bool)

(assert (=> d!532739 m!2154889))

(assert (=> b!1743377 m!2153579))

(assert (=> b!1743377 m!2154883))

(assert (=> b!1743377 m!2154883))

(declare-fun m!2154891 () Bool)

(assert (=> b!1743377 m!2154891))

(assert (=> b!1743378 m!2153579))

(assert (=> b!1743378 m!2154879))

(assert (=> b!1743386 m!2153813))

(declare-fun m!2154893 () Bool)

(assert (=> b!1743386 m!2154893))

(assert (=> b!1743387 m!2153579))

(assert (=> b!1743387 m!2154879))

(assert (=> b!1743387 m!2153813))

(assert (=> b!1743387 m!2154879))

(declare-fun m!2154895 () Bool)

(assert (=> b!1743387 m!2154895))

(assert (=> b!1743387 m!2153579))

(assert (=> b!1743387 m!2154883))

(assert (=> b!1743387 m!2154895))

(assert (=> b!1743387 m!2154883))

(declare-fun m!2154897 () Bool)

(assert (=> b!1743387 m!2154897))

(assert (=> b!1743381 m!2153579))

(assert (=> b!1743381 m!2154879))

(assert (=> b!1743380 m!2153579))

(assert (=> b!1743380 m!2154883))

(assert (=> b!1743380 m!2154883))

(assert (=> b!1743380 m!2154891))

(assert (=> bm!110157 m!2153579))

(assert (=> bm!110157 m!2153809))

(assert (=> b!1742504 d!532739))

(declare-fun b!1743409 () Bool)

(declare-fun e!1115800 () Regex!4741)

(declare-fun call!110173 () Regex!4741)

(assert (=> b!1743409 (= e!1115800 (Concat!8245 call!110173 (regex!3413 rule!422)))))

(declare-fun b!1743410 () Bool)

(declare-fun e!1115799 () Regex!4741)

(assert (=> b!1743410 (= e!1115799 e!1115800)))

(declare-fun c!284476 () Bool)

(assert (=> b!1743410 (= c!284476 ((_ is Star!4741) (regex!3413 rule!422)))))

(declare-fun b!1743411 () Bool)

(declare-fun e!1115802 () Regex!4741)

(assert (=> b!1743411 (= e!1115802 EmptyLang!4741)))

(declare-fun b!1743412 () Bool)

(declare-fun call!110174 () Regex!4741)

(declare-fun call!110171 () Regex!4741)

(assert (=> b!1743412 (= e!1115799 (Union!4741 call!110174 call!110171))))

(declare-fun b!1743413 () Bool)

(declare-fun call!110172 () Regex!4741)

(declare-fun e!1115803 () Regex!4741)

(assert (=> b!1743413 (= e!1115803 (Union!4741 (Concat!8245 call!110174 (regTwo!9994 (regex!3413 rule!422))) call!110172))))

(declare-fun b!1743414 () Bool)

(declare-fun e!1115801 () Regex!4741)

(assert (=> b!1743414 (= e!1115802 e!1115801)))

(declare-fun c!284474 () Bool)

(assert (=> b!1743414 (= c!284474 ((_ is ElementMatch!4741) (regex!3413 rule!422)))))

(declare-fun b!1743415 () Bool)

(declare-fun c!284475 () Bool)

(assert (=> b!1743415 (= c!284475 ((_ is Union!4741) (regex!3413 rule!422)))))

(assert (=> b!1743415 (= e!1115801 e!1115799)))

(declare-fun b!1743416 () Bool)

(assert (=> b!1743416 (= e!1115803 (Union!4741 (Concat!8245 call!110172 (regTwo!9994 (regex!3413 rule!422))) EmptyLang!4741))))

(declare-fun bm!110167 () Bool)

(assert (=> bm!110167 (= call!110172 call!110173)))

(declare-fun bm!110168 () Bool)

(assert (=> bm!110168 (= call!110173 call!110171)))

(declare-fun b!1743417 () Bool)

(assert (=> b!1743417 (= e!1115801 (ite (= (head!3996 lt!671800) (c!284176 (regex!3413 rule!422))) EmptyExpr!4741 EmptyLang!4741))))

(declare-fun d!532741 () Bool)

(declare-fun lt!672210 () Regex!4741)

(assert (=> d!532741 (validRegex!1910 lt!672210)))

(assert (=> d!532741 (= lt!672210 e!1115802)))

(declare-fun c!284473 () Bool)

(assert (=> d!532741 (= c!284473 (or ((_ is EmptyExpr!4741) (regex!3413 rule!422)) ((_ is EmptyLang!4741) (regex!3413 rule!422))))))

(assert (=> d!532741 (validRegex!1910 (regex!3413 rule!422))))

(assert (=> d!532741 (= (derivativeStep!1204 (regex!3413 rule!422) (head!3996 lt!671800)) lt!672210)))

(declare-fun bm!110166 () Bool)

(assert (=> bm!110166 (= call!110174 (derivativeStep!1204 (ite c!284475 (regOne!9995 (regex!3413 rule!422)) (regOne!9994 (regex!3413 rule!422))) (head!3996 lt!671800)))))

(declare-fun bm!110169 () Bool)

(declare-fun c!284472 () Bool)

(assert (=> bm!110169 (= call!110171 (derivativeStep!1204 (ite c!284475 (regTwo!9995 (regex!3413 rule!422)) (ite c!284476 (reg!5070 (regex!3413 rule!422)) (ite c!284472 (regTwo!9994 (regex!3413 rule!422)) (regOne!9994 (regex!3413 rule!422))))) (head!3996 lt!671800)))))

(declare-fun b!1743418 () Bool)

(assert (=> b!1743418 (= c!284472 (nullable!1436 (regOne!9994 (regex!3413 rule!422))))))

(assert (=> b!1743418 (= e!1115800 e!1115803)))

(assert (= (and d!532741 c!284473) b!1743411))

(assert (= (and d!532741 (not c!284473)) b!1743414))

(assert (= (and b!1743414 c!284474) b!1743417))

(assert (= (and b!1743414 (not c!284474)) b!1743415))

(assert (= (and b!1743415 c!284475) b!1743412))

(assert (= (and b!1743415 (not c!284475)) b!1743410))

(assert (= (and b!1743410 c!284476) b!1743409))

(assert (= (and b!1743410 (not c!284476)) b!1743418))

(assert (= (and b!1743418 c!284472) b!1743413))

(assert (= (and b!1743418 (not c!284472)) b!1743416))

(assert (= (or b!1743413 b!1743416) bm!110167))

(assert (= (or b!1743409 bm!110167) bm!110168))

(assert (= (or b!1743412 bm!110168) bm!110169))

(assert (= (or b!1743412 b!1743413) bm!110166))

(declare-fun m!2154899 () Bool)

(assert (=> d!532741 m!2154899))

(assert (=> d!532741 m!2153807))

(assert (=> bm!110166 m!2153575))

(declare-fun m!2154901 () Bool)

(assert (=> bm!110166 m!2154901))

(assert (=> bm!110169 m!2153575))

(declare-fun m!2154903 () Bool)

(assert (=> bm!110169 m!2154903))

(declare-fun m!2154905 () Bool)

(assert (=> b!1743418 m!2154905))

(assert (=> b!1742504 d!532741))

(assert (=> b!1742504 d!532621))

(assert (=> b!1742504 d!532667))

(declare-fun d!532743 () Bool)

(assert (=> d!532743 (= (head!3996 lt!671799) (h!24555 lt!671799))))

(assert (=> b!1742324 d!532743))

(declare-fun d!532745 () Bool)

(declare-fun lt!672211 () Bool)

(assert (=> d!532745 (= lt!672211 (select (content!2747 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!671892)))))))

(declare-fun e!1115804 () Bool)

(assert (=> d!532745 (= lt!672211 e!1115804)))

(declare-fun res!783860 () Bool)

(assert (=> d!532745 (=> (not res!783860) (not e!1115804))))

(assert (=> d!532745 (= res!783860 ((_ is Cons!19155) rules!3447))))

(assert (=> d!532745 (= (contains!3435 rules!3447 (rule!5415 (_1!10801 (get!5774 lt!671892)))) lt!672211)))

(declare-fun b!1743419 () Bool)

(declare-fun e!1115805 () Bool)

(assert (=> b!1743419 (= e!1115804 e!1115805)))

(declare-fun res!783859 () Bool)

(assert (=> b!1743419 (=> res!783859 e!1115805)))

(assert (=> b!1743419 (= res!783859 (= (h!24556 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!671892)))))))

(declare-fun b!1743420 () Bool)

(assert (=> b!1743420 (= e!1115805 (contains!3435 (t!161924 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!671892)))))))

(assert (= (and d!532745 res!783860) b!1743419))

(assert (= (and b!1743419 (not res!783859)) b!1743420))

(assert (=> d!532745 m!2153349))

(declare-fun m!2154907 () Bool)

(assert (=> d!532745 m!2154907))

(declare-fun m!2154909 () Bool)

(assert (=> b!1743420 m!2154909))

(assert (=> b!1742306 d!532745))

(assert (=> b!1742306 d!532635))

(declare-fun bs!403130 () Bool)

(declare-fun d!532747 () Bool)

(assert (= bs!403130 (and d!532747 d!532597)))

(declare-fun lambda!69658 () Int)

(assert (=> bs!403130 (= (= (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (= lambda!69658 lambda!69644))))

(declare-fun bs!403131 () Bool)

(assert (= bs!403131 (and d!532747 d!532609)))

(assert (=> bs!403131 (= (= (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (= lambda!69658 lambda!69645))))

(assert (=> d!532747 true))

(assert (=> d!532747 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (dynLambda!9058 order!11959 lambda!69658))))

(assert (=> d!532747 (= (equivClasses!1290 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (Forall2!555 lambda!69658))))

(declare-fun bs!403132 () Bool)

(assert (= bs!403132 d!532747))

(declare-fun m!2154911 () Bool)

(assert (=> bs!403132 m!2154911))

(assert (=> b!1742525 d!532747))

(declare-fun d!532749 () Bool)

(declare-fun lt!672212 () Bool)

(assert (=> d!532749 (= lt!672212 (select (content!2747 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!672031)))))))

(declare-fun e!1115806 () Bool)

(assert (=> d!532749 (= lt!672212 e!1115806)))

(declare-fun res!783862 () Bool)

(assert (=> d!532749 (=> (not res!783862) (not e!1115806))))

(assert (=> d!532749 (= res!783862 ((_ is Cons!19155) rules!3447))))

(assert (=> d!532749 (= (contains!3435 rules!3447 (rule!5415 (_1!10801 (get!5774 lt!672031)))) lt!672212)))

(declare-fun b!1743421 () Bool)

(declare-fun e!1115807 () Bool)

(assert (=> b!1743421 (= e!1115806 e!1115807)))

(declare-fun res!783861 () Bool)

(assert (=> b!1743421 (=> res!783861 e!1115807)))

(assert (=> b!1743421 (= res!783861 (= (h!24556 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!672031)))))))

(declare-fun b!1743422 () Bool)

(assert (=> b!1743422 (= e!1115807 (contains!3435 (t!161924 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!672031)))))))

(assert (= (and d!532749 res!783862) b!1743421))

(assert (= (and b!1743421 (not res!783861)) b!1743422))

(assert (=> d!532749 m!2153349))

(declare-fun m!2154913 () Bool)

(assert (=> d!532749 m!2154913))

(declare-fun m!2154915 () Bool)

(assert (=> b!1743422 m!2154915))

(assert (=> b!1742477 d!532749))

(assert (=> b!1742477 d!532643))

(declare-fun d!532751 () Bool)

(declare-fun lt!672213 () Int)

(assert (=> d!532751 (>= lt!672213 0)))

(declare-fun e!1115808 () Int)

(assert (=> d!532751 (= lt!672213 e!1115808)))

(declare-fun c!284477 () Bool)

(assert (=> d!532751 (= c!284477 ((_ is Nil!19154) (_2!10801 (get!5774 lt!671892))))))

(assert (=> d!532751 (= (size!15214 (_2!10801 (get!5774 lt!671892))) lt!672213)))

(declare-fun b!1743423 () Bool)

(assert (=> b!1743423 (= e!1115808 0)))

(declare-fun b!1743424 () Bool)

(assert (=> b!1743424 (= e!1115808 (+ 1 (size!15214 (t!161923 (_2!10801 (get!5774 lt!671892))))))))

(assert (= (and d!532751 c!284477) b!1743423))

(assert (= (and d!532751 (not c!284477)) b!1743424))

(declare-fun m!2154917 () Bool)

(assert (=> b!1743424 m!2154917))

(assert (=> b!1742313 d!532751))

(assert (=> b!1742313 d!532635))

(declare-fun d!532753 () Bool)

(declare-fun lt!672214 () Int)

(assert (=> d!532753 (>= lt!672214 0)))

(declare-fun e!1115809 () Int)

(assert (=> d!532753 (= lt!672214 e!1115809)))

(declare-fun c!284478 () Bool)

(assert (=> d!532753 (= c!284478 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532753 (= (size!15214 lt!671800) lt!672214)))

(declare-fun b!1743425 () Bool)

(assert (=> b!1743425 (= e!1115809 0)))

(declare-fun b!1743426 () Bool)

(assert (=> b!1743426 (= e!1115809 (+ 1 (size!15214 (t!161923 lt!671800))))))

(assert (= (and d!532753 c!284478) b!1743425))

(assert (= (and d!532753 (not c!284478)) b!1743426))

(assert (=> b!1743426 m!2154595))

(assert (=> b!1742313 d!532753))

(declare-fun d!532755 () Bool)

(assert (=> d!532755 (= (get!5775 lt!672025) (v!25282 lt!672025))))

(assert (=> b!1742474 d!532755))

(declare-fun d!532757 () Bool)

(declare-fun c!284481 () Bool)

(assert (=> d!532757 (= c!284481 ((_ is Node!6371) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(declare-fun e!1115814 () Bool)

(assert (=> d!532757 (= (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))) e!1115814)))

(declare-fun b!1743433 () Bool)

(declare-fun inv!24825 (Conc!6371) Bool)

(assert (=> b!1743433 (= e!1115814 (inv!24825 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(declare-fun b!1743434 () Bool)

(declare-fun e!1115815 () Bool)

(assert (=> b!1743434 (= e!1115814 e!1115815)))

(declare-fun res!783865 () Bool)

(assert (=> b!1743434 (= res!783865 (not ((_ is Leaf!9298) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))))))

(assert (=> b!1743434 (=> res!783865 e!1115815)))

(declare-fun b!1743435 () Bool)

(declare-fun inv!24826 (Conc!6371) Bool)

(assert (=> b!1743435 (= e!1115815 (inv!24826 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(assert (= (and d!532757 c!284481) b!1743433))

(assert (= (and d!532757 (not c!284481)) b!1743434))

(assert (= (and b!1743434 (not res!783865)) b!1743435))

(declare-fun m!2154919 () Bool)

(assert (=> b!1743433 m!2154919))

(declare-fun m!2154921 () Bool)

(assert (=> b!1743435 m!2154921))

(assert (=> b!1742149 d!532757))

(declare-fun bs!403133 () Bool)

(declare-fun d!532759 () Bool)

(assert (= bs!403133 (and d!532759 d!532597)))

(declare-fun lambda!69659 () Int)

(assert (=> bs!403133 (= (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (= lambda!69659 lambda!69644))))

(declare-fun bs!403134 () Bool)

(assert (= bs!403134 (and d!532759 d!532609)))

(assert (=> bs!403134 (= (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (h!24556 rules!3447)))) (= lambda!69659 lambda!69645))))

(declare-fun bs!403135 () Bool)

(assert (= bs!403135 (and d!532759 d!532747)))

(assert (=> bs!403135 (= (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (= lambda!69659 lambda!69658))))

(assert (=> d!532759 true))

(assert (=> d!532759 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 rule!422))) (dynLambda!9058 order!11959 lambda!69659))))

(assert (=> d!532759 (= (equivClasses!1290 (toChars!4779 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 rule!422))) (Forall2!555 lambda!69659))))

(declare-fun bs!403136 () Bool)

(assert (= bs!403136 d!532759))

(declare-fun m!2154923 () Bool)

(assert (=> bs!403136 m!2154923))

(assert (=> b!1742317 d!532759))

(assert (=> b!1742486 d!532743))

(assert (=> b!1742486 d!532623))

(declare-fun d!532761 () Bool)

(declare-fun c!284482 () Bool)

(assert (=> d!532761 (= c!284482 ((_ is Node!6371) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))))))

(declare-fun e!1115816 () Bool)

(assert (=> d!532761 (= (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))) e!1115816)))

(declare-fun b!1743436 () Bool)

(assert (=> b!1743436 (= e!1115816 (inv!24825 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))))))

(declare-fun b!1743437 () Bool)

(declare-fun e!1115817 () Bool)

(assert (=> b!1743437 (= e!1115816 e!1115817)))

(declare-fun res!783866 () Bool)

(assert (=> b!1743437 (= res!783866 (not ((_ is Leaf!9298) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))))))

(assert (=> b!1743437 (=> res!783866 e!1115817)))

(declare-fun b!1743438 () Bool)

(assert (=> b!1743438 (= e!1115817 (inv!24826 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))))))

(assert (= (and d!532761 c!284482) b!1743436))

(assert (= (and d!532761 (not c!284482)) b!1743437))

(assert (= (and b!1743437 (not res!783866)) b!1743438))

(declare-fun m!2154925 () Bool)

(assert (=> b!1743436 m!2154925))

(declare-fun m!2154927 () Bool)

(assert (=> b!1743438 m!2154927))

(assert (=> b!1742267 d!532761))

(declare-fun d!532763 () Bool)

(declare-fun lt!672215 () Int)

(assert (=> d!532763 (>= lt!672215 0)))

(declare-fun e!1115818 () Int)

(assert (=> d!532763 (= lt!672215 e!1115818)))

(declare-fun c!284483 () Bool)

(assert (=> d!532763 (= c!284483 ((_ is Nil!19154) (_2!10801 (get!5774 lt!672031))))))

(assert (=> d!532763 (= (size!15214 (_2!10801 (get!5774 lt!672031))) lt!672215)))

(declare-fun b!1743439 () Bool)

(assert (=> b!1743439 (= e!1115818 0)))

(declare-fun b!1743440 () Bool)

(assert (=> b!1743440 (= e!1115818 (+ 1 (size!15214 (t!161923 (_2!10801 (get!5774 lt!672031))))))))

(assert (= (and d!532763 c!284483) b!1743439))

(assert (= (and d!532763 (not c!284483)) b!1743440))

(declare-fun m!2154929 () Bool)

(assert (=> b!1743440 m!2154929))

(assert (=> b!1742484 d!532763))

(assert (=> b!1742484 d!532643))

(declare-fun d!532765 () Bool)

(declare-fun lt!672216 () Int)

(assert (=> d!532765 (>= lt!672216 0)))

(declare-fun e!1115819 () Int)

(assert (=> d!532765 (= lt!672216 e!1115819)))

(declare-fun c!284484 () Bool)

(assert (=> d!532765 (= c!284484 ((_ is Nil!19154) lt!671803))))

(assert (=> d!532765 (= (size!15214 lt!671803) lt!672216)))

(declare-fun b!1743441 () Bool)

(assert (=> b!1743441 (= e!1115819 0)))

(declare-fun b!1743442 () Bool)

(assert (=> b!1743442 (= e!1115819 (+ 1 (size!15214 (t!161923 lt!671803))))))

(assert (= (and d!532765 c!284484) b!1743441))

(assert (= (and d!532765 (not c!284484)) b!1743442))

(declare-fun m!2154931 () Bool)

(assert (=> b!1743442 m!2154931))

(assert (=> b!1742484 d!532765))

(assert (=> b!1742231 d!532715))

(assert (=> b!1742231 d!532717))

(declare-fun d!532767 () Bool)

(assert (=> d!532767 (= (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))) (not (isEmpty!12062 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(declare-fun bs!403137 () Bool)

(assert (= bs!403137 d!532767))

(assert (=> bs!403137 m!2153137))

(declare-fun m!2154933 () Bool)

(assert (=> bs!403137 m!2154933))

(assert (=> d!532269 d!532767))

(assert (=> d!532269 d!532279))

(declare-fun d!532769 () Bool)

(declare-fun e!1115822 () Bool)

(assert (=> d!532769 e!1115822))

(declare-fun res!783871 () Bool)

(assert (=> d!532769 (=> (not res!783871) (not e!1115822))))

(assert (=> d!532769 (= res!783871 (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> d!532769 true))

(declare-fun _$52!1100 () Unit!33221)

(assert (=> d!532769 (= (choose!10729 thiss!24550 rules!3447 lt!671803 (_1!10801 lt!671797)) _$52!1100)))

(declare-fun b!1743447 () Bool)

(declare-fun res!783872 () Bool)

(assert (=> b!1743447 (=> (not res!783872) (not e!1115822))))

(assert (=> b!1743447 (= res!783872 (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))) (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun b!1743448 () Bool)

(assert (=> b!1743448 (= e!1115822 (= (rule!5415 (_1!10801 lt!671797)) (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(assert (= (and d!532769 res!783871) b!1743447))

(assert (= (and b!1743447 res!783872) b!1743448))

(assert (=> d!532769 m!2153137))

(assert (=> d!532769 m!2153137))

(assert (=> d!532769 m!2153735))

(assert (=> b!1743447 m!2153137))

(assert (=> b!1743447 m!2153137))

(assert (=> b!1743447 m!2153739))

(assert (=> b!1743447 m!2153129))

(assert (=> b!1743447 m!2153129))

(assert (=> b!1743447 m!2153131))

(assert (=> b!1743447 m!2153131))

(assert (=> b!1743447 m!2153741))

(assert (=> b!1743448 m!2153137))

(assert (=> b!1743448 m!2153137))

(assert (=> b!1743448 m!2153739))

(assert (=> d!532269 d!532769))

(assert (=> d!532269 d!532285))

(declare-fun d!532771 () Bool)

(declare-fun lt!672217 () Int)

(assert (=> d!532771 (>= lt!672217 0)))

(declare-fun e!1115823 () Int)

(assert (=> d!532771 (= lt!672217 e!1115823)))

(declare-fun c!284485 () Bool)

(assert (=> d!532771 (= c!284485 ((_ is Nil!19154) lt!672040))))

(assert (=> d!532771 (= (size!15214 lt!672040) lt!672217)))

(declare-fun b!1743449 () Bool)

(assert (=> b!1743449 (= e!1115823 0)))

(declare-fun b!1743450 () Bool)

(assert (=> b!1743450 (= e!1115823 (+ 1 (size!15214 (t!161923 lt!672040))))))

(assert (= (and d!532771 c!284485) b!1743449))

(assert (= (and d!532771 (not c!284485)) b!1743450))

(declare-fun m!2154935 () Bool)

(assert (=> b!1743450 m!2154935))

(assert (=> b!1742521 d!532771))

(assert (=> b!1742521 d!532753))

(declare-fun d!532773 () Bool)

(declare-fun lt!672218 () Int)

(assert (=> d!532773 (>= lt!672218 0)))

(declare-fun e!1115824 () Int)

(assert (=> d!532773 (= lt!672218 e!1115824)))

(declare-fun c!284486 () Bool)

(assert (=> d!532773 (= c!284486 ((_ is Nil!19154) (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))

(assert (=> d!532773 (= (size!15214 (Cons!19154 (head!3996 suffix!1421) Nil!19154)) lt!672218)))

(declare-fun b!1743451 () Bool)

(assert (=> b!1743451 (= e!1115824 0)))

(declare-fun b!1743452 () Bool)

(assert (=> b!1743452 (= e!1115824 (+ 1 (size!15214 (t!161923 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(assert (= (and d!532773 c!284486) b!1743451))

(assert (= (and d!532773 (not c!284486)) b!1743452))

(declare-fun m!2154937 () Bool)

(assert (=> b!1743452 m!2154937))

(assert (=> b!1742521 d!532773))

(declare-fun d!532775 () Bool)

(assert (=> d!532775 (= (isDefined!3194 lt!671892) (not (isEmpty!12061 lt!671892)))))

(declare-fun bs!403138 () Bool)

(assert (= bs!403138 d!532775))

(assert (=> bs!403138 m!2153501))

(assert (=> b!1742309 d!532775))

(declare-fun d!532777 () Bool)

(declare-fun res!783873 () Bool)

(declare-fun e!1115825 () Bool)

(assert (=> d!532777 (=> (not res!783873) (not e!1115825))))

(assert (=> d!532777 (= res!783873 (rulesValid!1276 thiss!24550 (t!161924 rules!3447)))))

(assert (=> d!532777 (= (rulesInvariant!2711 thiss!24550 (t!161924 rules!3447)) e!1115825)))

(declare-fun b!1743453 () Bool)

(assert (=> b!1743453 (= e!1115825 (noDuplicateTag!1276 thiss!24550 (t!161924 rules!3447) Nil!19160))))

(assert (= (and d!532777 res!783873) b!1743453))

(declare-fun m!2154939 () Bool)

(assert (=> d!532777 m!2154939))

(declare-fun m!2154941 () Bool)

(assert (=> b!1743453 m!2154941))

(assert (=> b!1742470 d!532777))

(declare-fun d!532779 () Bool)

(assert (=> d!532779 (rulesInvariant!2711 thiss!24550 (t!161924 rules!3447))))

(declare-fun lt!672221 () Unit!33221)

(declare-fun choose!10736 (LexerInterface!3042 Rule!6626 List!19225) Unit!33221)

(assert (=> d!532779 (= lt!672221 (choose!10736 thiss!24550 (h!24556 rules!3447) (t!161924 rules!3447)))))

(assert (=> d!532779 (rulesInvariant!2711 thiss!24550 (Cons!19155 (h!24556 rules!3447) (t!161924 rules!3447)))))

(assert (=> d!532779 (= (lemmaInvariantOnRulesThenOnTail!164 thiss!24550 (h!24556 rules!3447) (t!161924 rules!3447)) lt!672221)))

(declare-fun bs!403139 () Bool)

(assert (= bs!403139 d!532779))

(assert (=> bs!403139 m!2153757))

(declare-fun m!2154943 () Bool)

(assert (=> bs!403139 m!2154943))

(declare-fun m!2154945 () Bool)

(assert (=> bs!403139 m!2154945))

(assert (=> b!1742470 d!532779))

(declare-fun b!1743454 () Bool)

(declare-fun lt!672222 () Unit!33221)

(declare-fun lt!672224 () Unit!33221)

(assert (=> b!1743454 (= lt!672222 lt!672224)))

(assert (=> b!1743454 (rulesInvariant!2711 thiss!24550 (t!161924 (t!161924 rules!3447)))))

(assert (=> b!1743454 (= lt!672224 (lemmaInvariantOnRulesThenOnTail!164 thiss!24550 (h!24556 (t!161924 rules!3447)) (t!161924 (t!161924 rules!3447))))))

(declare-fun e!1115826 () Option!3850)

(assert (=> b!1743454 (= e!1115826 (getRuleFromTag!463 thiss!24550 (t!161924 (t!161924 rules!3447)) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743455 () Bool)

(assert (=> b!1743455 (= e!1115826 None!3849)))

(declare-fun b!1743456 () Bool)

(declare-fun e!1115827 () Bool)

(declare-fun e!1115829 () Bool)

(assert (=> b!1743456 (= e!1115827 e!1115829)))

(declare-fun res!783874 () Bool)

(assert (=> b!1743456 (=> (not res!783874) (not e!1115829))))

(declare-fun lt!672223 () Option!3850)

(assert (=> b!1743456 (= res!783874 (contains!3435 (t!161924 rules!3447) (get!5775 lt!672223)))))

(declare-fun b!1743457 () Bool)

(declare-fun e!1115828 () Option!3850)

(assert (=> b!1743457 (= e!1115828 e!1115826)))

(declare-fun c!284488 () Bool)

(assert (=> b!1743457 (= c!284488 (and ((_ is Cons!19155) (t!161924 rules!3447)) (not (= (tag!3753 (h!24556 (t!161924 rules!3447))) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))))

(declare-fun d!532781 () Bool)

(assert (=> d!532781 e!1115827))

(declare-fun res!783875 () Bool)

(assert (=> d!532781 (=> res!783875 e!1115827)))

(assert (=> d!532781 (= res!783875 (isEmpty!12062 lt!672223))))

(assert (=> d!532781 (= lt!672223 e!1115828)))

(declare-fun c!284487 () Bool)

(assert (=> d!532781 (= c!284487 (and ((_ is Cons!19155) (t!161924 rules!3447)) (= (tag!3753 (h!24556 (t!161924 rules!3447))) (tag!3753 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> d!532781 (rulesInvariant!2711 thiss!24550 (t!161924 rules!3447))))

(assert (=> d!532781 (= (getRuleFromTag!463 thiss!24550 (t!161924 rules!3447) (tag!3753 (rule!5415 (_1!10801 lt!671797)))) lt!672223)))

(declare-fun b!1743458 () Bool)

(assert (=> b!1743458 (= e!1115829 (= (tag!3753 (get!5775 lt!672223)) (tag!3753 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743459 () Bool)

(assert (=> b!1743459 (= e!1115828 (Some!3849 (h!24556 (t!161924 rules!3447))))))

(assert (= (and d!532781 c!284487) b!1743459))

(assert (= (and d!532781 (not c!284487)) b!1743457))

(assert (= (and b!1743457 c!284488) b!1743454))

(assert (= (and b!1743457 (not c!284488)) b!1743455))

(assert (= (and d!532781 (not res!783875)) b!1743456))

(assert (= (and b!1743456 res!783874) b!1743458))

(declare-fun m!2154947 () Bool)

(assert (=> b!1743454 m!2154947))

(declare-fun m!2154949 () Bool)

(assert (=> b!1743454 m!2154949))

(declare-fun m!2154951 () Bool)

(assert (=> b!1743454 m!2154951))

(declare-fun m!2154953 () Bool)

(assert (=> b!1743456 m!2154953))

(assert (=> b!1743456 m!2154953))

(declare-fun m!2154955 () Bool)

(assert (=> b!1743456 m!2154955))

(declare-fun m!2154957 () Bool)

(assert (=> d!532781 m!2154957))

(assert (=> d!532781 m!2153757))

(assert (=> b!1743458 m!2154953))

(assert (=> b!1742470 d!532781))

(declare-fun d!532783 () Bool)

(declare-fun c!284489 () Bool)

(assert (=> d!532783 (= c!284489 ((_ is Nil!19154) lt!671901))))

(declare-fun e!1115830 () (InoxSet C!9656))

(assert (=> d!532783 (= (content!2748 lt!671901) e!1115830)))

(declare-fun b!1743460 () Bool)

(assert (=> b!1743460 (= e!1115830 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743461 () Bool)

(assert (=> b!1743461 (= e!1115830 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 lt!671901) true) (content!2748 (t!161923 lt!671901))))))

(assert (= (and d!532783 c!284489) b!1743460))

(assert (= (and d!532783 (not c!284489)) b!1743461))

(declare-fun m!2154959 () Bool)

(assert (=> b!1743461 m!2154959))

(declare-fun m!2154961 () Bool)

(assert (=> b!1743461 m!2154961))

(assert (=> d!532247 d!532783))

(assert (=> d!532247 d!532605))

(declare-fun d!532785 () Bool)

(declare-fun c!284490 () Bool)

(assert (=> d!532785 (= c!284490 ((_ is Nil!19154) suffix!1421))))

(declare-fun e!1115831 () (InoxSet C!9656))

(assert (=> d!532785 (= (content!2748 suffix!1421) e!1115831)))

(declare-fun b!1743462 () Bool)

(assert (=> b!1743462 (= e!1115831 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743463 () Bool)

(assert (=> b!1743463 (= e!1115831 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 suffix!1421) true) (content!2748 (t!161923 suffix!1421))))))

(assert (= (and d!532785 c!284490) b!1743462))

(assert (= (and d!532785 (not c!284490)) b!1743463))

(declare-fun m!2154963 () Bool)

(assert (=> b!1743463 m!2154963))

(declare-fun m!2154965 () Bool)

(assert (=> b!1743463 m!2154965))

(assert (=> d!532247 d!532785))

(assert (=> b!1742495 d!532621))

(declare-fun d!532787 () Bool)

(declare-fun isBalanced!1988 (Conc!6371) Bool)

(assert (=> d!532787 (= (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))) (isBalanced!1988 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(declare-fun bs!403140 () Bool)

(assert (= bs!403140 d!532787))

(declare-fun m!2154967 () Bool)

(assert (=> bs!403140 m!2154967))

(assert (=> tb!104147 d!532787))

(declare-fun d!532789 () Bool)

(assert (=> d!532789 (= (list!7746 lt!671872) (list!7748 (c!284177 lt!671872)))))

(declare-fun bs!403141 () Bool)

(assert (= bs!403141 d!532789))

(declare-fun m!2154969 () Bool)

(assert (=> bs!403141 m!2154969))

(assert (=> d!532197 d!532789))

(declare-fun b!1743466 () Bool)

(declare-fun res!783877 () Bool)

(declare-fun e!1115833 () Bool)

(assert (=> b!1743466 (=> (not res!783877) (not e!1115833))))

(declare-fun lt!672225 () List!19224)

(assert (=> b!1743466 (= res!783877 (= (size!15214 lt!672225) (+ (size!15214 (t!161923 lt!671800)) (size!15214 suffix!1421))))))

(declare-fun b!1743465 () Bool)

(declare-fun e!1115832 () List!19224)

(assert (=> b!1743465 (= e!1115832 (Cons!19154 (h!24555 (t!161923 lt!671800)) (++!5238 (t!161923 (t!161923 lt!671800)) suffix!1421)))))

(declare-fun b!1743464 () Bool)

(assert (=> b!1743464 (= e!1115832 suffix!1421)))

(declare-fun b!1743467 () Bool)

(assert (=> b!1743467 (= e!1115833 (or (not (= suffix!1421 Nil!19154)) (= lt!672225 (t!161923 lt!671800))))))

(declare-fun d!532791 () Bool)

(assert (=> d!532791 e!1115833))

(declare-fun res!783876 () Bool)

(assert (=> d!532791 (=> (not res!783876) (not e!1115833))))

(assert (=> d!532791 (= res!783876 (= (content!2748 lt!672225) ((_ map or) (content!2748 (t!161923 lt!671800)) (content!2748 suffix!1421))))))

(assert (=> d!532791 (= lt!672225 e!1115832)))

(declare-fun c!284491 () Bool)

(assert (=> d!532791 (= c!284491 ((_ is Nil!19154) (t!161923 lt!671800)))))

(assert (=> d!532791 (= (++!5238 (t!161923 lt!671800) suffix!1421) lt!672225)))

(assert (= (and d!532791 c!284491) b!1743464))

(assert (= (and d!532791 (not c!284491)) b!1743465))

(assert (= (and d!532791 res!783876) b!1743466))

(assert (= (and b!1743466 res!783877) b!1743467))

(declare-fun m!2154971 () Bool)

(assert (=> b!1743466 m!2154971))

(assert (=> b!1743466 m!2154595))

(assert (=> b!1743466 m!2153563))

(declare-fun m!2154973 () Bool)

(assert (=> b!1743465 m!2154973))

(declare-fun m!2154975 () Bool)

(assert (=> d!532791 m!2154975))

(assert (=> d!532791 m!2154551))

(assert (=> d!532791 m!2153571))

(assert (=> b!1742345 d!532791))

(declare-fun d!532793 () Bool)

(declare-fun charsToBigInt!0 (List!19223 Int) Int)

(assert (=> d!532793 (= (inv!15 (value!106943 token!523)) (= (charsToBigInt!0 (text!24970 (value!106943 token!523)) 0) (value!106938 (value!106943 token!523))))))

(declare-fun bs!403142 () Bool)

(assert (= bs!403142 d!532793))

(declare-fun m!2154977 () Bool)

(assert (=> bs!403142 m!2154977))

(assert (=> b!1742283 d!532793))

(declare-fun b!1743471 () Bool)

(declare-fun e!1115836 () Bool)

(assert (=> b!1743471 (= e!1115836 (>= (size!15214 (++!5238 lt!671800 suffix!1421)) (size!15214 lt!671800)))))

(declare-fun b!1743469 () Bool)

(declare-fun res!783878 () Bool)

(declare-fun e!1115835 () Bool)

(assert (=> b!1743469 (=> (not res!783878) (not e!1115835))))

(assert (=> b!1743469 (= res!783878 (= (head!3996 lt!671800) (head!3996 (++!5238 lt!671800 suffix!1421))))))

(declare-fun b!1743470 () Bool)

(assert (=> b!1743470 (= e!1115835 (isPrefix!1654 (tail!2601 lt!671800) (tail!2601 (++!5238 lt!671800 suffix!1421))))))

(declare-fun d!532795 () Bool)

(assert (=> d!532795 e!1115836))

(declare-fun res!783880 () Bool)

(assert (=> d!532795 (=> res!783880 e!1115836)))

(declare-fun lt!672226 () Bool)

(assert (=> d!532795 (= res!783880 (not lt!672226))))

(declare-fun e!1115834 () Bool)

(assert (=> d!532795 (= lt!672226 e!1115834)))

(declare-fun res!783879 () Bool)

(assert (=> d!532795 (=> res!783879 e!1115834)))

(assert (=> d!532795 (= res!783879 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532795 (= (isPrefix!1654 lt!671800 (++!5238 lt!671800 suffix!1421)) lt!672226)))

(declare-fun b!1743468 () Bool)

(assert (=> b!1743468 (= e!1115834 e!1115835)))

(declare-fun res!783881 () Bool)

(assert (=> b!1743468 (=> (not res!783881) (not e!1115835))))

(assert (=> b!1743468 (= res!783881 (not ((_ is Nil!19154) (++!5238 lt!671800 suffix!1421))))))

(assert (= (and d!532795 (not res!783879)) b!1743468))

(assert (= (and b!1743468 res!783881) b!1743469))

(assert (= (and b!1743469 res!783878) b!1743470))

(assert (= (and d!532795 (not res!783880)) b!1743471))

(assert (=> b!1743471 m!2153155))

(declare-fun m!2154979 () Bool)

(assert (=> b!1743471 m!2154979))

(assert (=> b!1743471 m!2153515))

(assert (=> b!1743469 m!2153575))

(assert (=> b!1743469 m!2153155))

(declare-fun m!2154981 () Bool)

(assert (=> b!1743469 m!2154981))

(assert (=> b!1743470 m!2153579))

(assert (=> b!1743470 m!2153155))

(declare-fun m!2154983 () Bool)

(assert (=> b!1743470 m!2154983))

(assert (=> b!1743470 m!2153579))

(assert (=> b!1743470 m!2154983))

(declare-fun m!2154985 () Bool)

(assert (=> b!1743470 m!2154985))

(assert (=> d!532277 d!532795))

(assert (=> d!532277 d!532247))

(declare-fun d!532797 () Bool)

(assert (=> d!532797 (isPrefix!1654 lt!671800 (++!5238 lt!671800 suffix!1421))))

(assert (=> d!532797 true))

(declare-fun _$46!1192 () Unit!33221)

(assert (=> d!532797 (= (choose!10728 lt!671800 suffix!1421) _$46!1192)))

(declare-fun bs!403143 () Bool)

(assert (= bs!403143 d!532797))

(assert (=> bs!403143 m!2153155))

(assert (=> bs!403143 m!2153155))

(assert (=> bs!403143 m!2153753))

(assert (=> d!532277 d!532797))

(declare-fun d!532799 () Bool)

(assert (=> d!532799 (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (h!24555 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (=> b!1742235 d!532799))

(assert (=> b!1742453 d!532655))

(assert (=> b!1742453 d!532279))

(declare-fun d!532801 () Bool)

(assert (=> d!532801 (= (isEmpty!12057 lt!671799) ((_ is Nil!19154) lt!671799))))

(assert (=> bm!110090 d!532801))

(declare-fun d!532803 () Bool)

(declare-fun c!284492 () Bool)

(assert (=> d!532803 (= c!284492 (isEmpty!12057 (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(declare-fun e!1115837 () Bool)

(assert (=> d!532803 (= (prefixMatch!626 (derivativeStep!1204 (rulesRegex!771 thiss!24550 rules!3447) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))) (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))) e!1115837)))

(declare-fun b!1743472 () Bool)

(assert (=> b!1743472 (= e!1115837 (not (lostCause!546 (derivativeStep!1204 (rulesRegex!771 thiss!24550 rules!3447) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))))

(declare-fun b!1743473 () Bool)

(assert (=> b!1743473 (= e!1115837 (prefixMatch!626 (derivativeStep!1204 (derivativeStep!1204 (rulesRegex!771 thiss!24550 rules!3447) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))) (head!3996 (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))) (tail!2601 (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))))

(assert (= (and d!532803 c!284492) b!1743472))

(assert (= (and d!532803 (not c!284492)) b!1743473))

(assert (=> d!532803 m!2153831))

(declare-fun m!2154987 () Bool)

(assert (=> d!532803 m!2154987))

(assert (=> b!1743472 m!2153829))

(declare-fun m!2154989 () Bool)

(assert (=> b!1743472 m!2154989))

(assert (=> b!1743473 m!2153831))

(declare-fun m!2154991 () Bool)

(assert (=> b!1743473 m!2154991))

(assert (=> b!1743473 m!2153829))

(assert (=> b!1743473 m!2154991))

(declare-fun m!2154993 () Bool)

(assert (=> b!1743473 m!2154993))

(assert (=> b!1743473 m!2153831))

(declare-fun m!2154995 () Bool)

(assert (=> b!1743473 m!2154995))

(assert (=> b!1743473 m!2154993))

(assert (=> b!1743473 m!2154995))

(declare-fun m!2154997 () Bool)

(assert (=> b!1743473 m!2154997))

(assert (=> b!1742518 d!532803))

(declare-fun call!110177 () Regex!4741)

(declare-fun e!1115839 () Regex!4741)

(declare-fun b!1743474 () Bool)

(assert (=> b!1743474 (= e!1115839 (Concat!8245 call!110177 (rulesRegex!771 thiss!24550 rules!3447)))))

(declare-fun b!1743475 () Bool)

(declare-fun e!1115838 () Regex!4741)

(assert (=> b!1743475 (= e!1115838 e!1115839)))

(declare-fun c!284497 () Bool)

(assert (=> b!1743475 (= c!284497 ((_ is Star!4741) (rulesRegex!771 thiss!24550 rules!3447)))))

(declare-fun b!1743476 () Bool)

(declare-fun e!1115841 () Regex!4741)

(assert (=> b!1743476 (= e!1115841 EmptyLang!4741)))

(declare-fun b!1743477 () Bool)

(declare-fun call!110178 () Regex!4741)

(declare-fun call!110175 () Regex!4741)

(assert (=> b!1743477 (= e!1115838 (Union!4741 call!110178 call!110175))))

(declare-fun call!110176 () Regex!4741)

(declare-fun e!1115842 () Regex!4741)

(declare-fun b!1743478 () Bool)

(assert (=> b!1743478 (= e!1115842 (Union!4741 (Concat!8245 call!110178 (regTwo!9994 (rulesRegex!771 thiss!24550 rules!3447))) call!110176))))

(declare-fun b!1743479 () Bool)

(declare-fun e!1115840 () Regex!4741)

(assert (=> b!1743479 (= e!1115841 e!1115840)))

(declare-fun c!284495 () Bool)

(assert (=> b!1743479 (= c!284495 ((_ is ElementMatch!4741) (rulesRegex!771 thiss!24550 rules!3447)))))

(declare-fun b!1743480 () Bool)

(declare-fun c!284496 () Bool)

(assert (=> b!1743480 (= c!284496 ((_ is Union!4741) (rulesRegex!771 thiss!24550 rules!3447)))))

(assert (=> b!1743480 (= e!1115840 e!1115838)))

(declare-fun b!1743481 () Bool)

(assert (=> b!1743481 (= e!1115842 (Union!4741 (Concat!8245 call!110176 (regTwo!9994 (rulesRegex!771 thiss!24550 rules!3447))) EmptyLang!4741))))

(declare-fun bm!110171 () Bool)

(assert (=> bm!110171 (= call!110176 call!110177)))

(declare-fun bm!110172 () Bool)

(assert (=> bm!110172 (= call!110177 call!110175)))

(declare-fun b!1743482 () Bool)

(assert (=> b!1743482 (= e!1115840 (ite (= (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))) (c!284176 (rulesRegex!771 thiss!24550 rules!3447))) EmptyExpr!4741 EmptyLang!4741))))

(declare-fun d!532805 () Bool)

(declare-fun lt!672227 () Regex!4741)

(assert (=> d!532805 (validRegex!1910 lt!672227)))

(assert (=> d!532805 (= lt!672227 e!1115841)))

(declare-fun c!284494 () Bool)

(assert (=> d!532805 (= c!284494 (or ((_ is EmptyExpr!4741) (rulesRegex!771 thiss!24550 rules!3447)) ((_ is EmptyLang!4741) (rulesRegex!771 thiss!24550 rules!3447))))))

(assert (=> d!532805 (validRegex!1910 (rulesRegex!771 thiss!24550 rules!3447))))

(assert (=> d!532805 (= (derivativeStep!1204 (rulesRegex!771 thiss!24550 rules!3447) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))) lt!672227)))

(declare-fun bm!110170 () Bool)

(assert (=> bm!110170 (= call!110178 (derivativeStep!1204 (ite c!284496 (regOne!9995 (rulesRegex!771 thiss!24550 rules!3447)) (regOne!9994 (rulesRegex!771 thiss!24550 rules!3447))) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(declare-fun c!284493 () Bool)

(declare-fun bm!110173 () Bool)

(assert (=> bm!110173 (= call!110175 (derivativeStep!1204 (ite c!284496 (regTwo!9995 (rulesRegex!771 thiss!24550 rules!3447)) (ite c!284497 (reg!5070 (rulesRegex!771 thiss!24550 rules!3447)) (ite c!284493 (regTwo!9994 (rulesRegex!771 thiss!24550 rules!3447)) (regOne!9994 (rulesRegex!771 thiss!24550 rules!3447))))) (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154)))))))

(declare-fun b!1743483 () Bool)

(assert (=> b!1743483 (= c!284493 (nullable!1436 (regOne!9994 (rulesRegex!771 thiss!24550 rules!3447))))))

(assert (=> b!1743483 (= e!1115839 e!1115842)))

(assert (= (and d!532805 c!284494) b!1743476))

(assert (= (and d!532805 (not c!284494)) b!1743479))

(assert (= (and b!1743479 c!284495) b!1743482))

(assert (= (and b!1743479 (not c!284495)) b!1743480))

(assert (= (and b!1743480 c!284496) b!1743477))

(assert (= (and b!1743480 (not c!284496)) b!1743475))

(assert (= (and b!1743475 c!284497) b!1743474))

(assert (= (and b!1743475 (not c!284497)) b!1743483))

(assert (= (and b!1743483 c!284493) b!1743478))

(assert (= (and b!1743483 (not c!284493)) b!1743481))

(assert (= (or b!1743478 b!1743481) bm!110171))

(assert (= (or b!1743474 bm!110171) bm!110172))

(assert (= (or b!1743477 bm!110172) bm!110173))

(assert (= (or b!1743477 b!1743478) bm!110170))

(declare-fun m!2154999 () Bool)

(assert (=> d!532805 m!2154999))

(assert (=> d!532805 m!2153111))

(declare-fun m!2155001 () Bool)

(assert (=> d!532805 m!2155001))

(assert (=> bm!110170 m!2153827))

(declare-fun m!2155003 () Bool)

(assert (=> bm!110170 m!2155003))

(assert (=> bm!110173 m!2153827))

(declare-fun m!2155005 () Bool)

(assert (=> bm!110173 m!2155005))

(declare-fun m!2155007 () Bool)

(assert (=> b!1743483 m!2155007))

(assert (=> b!1742518 d!532805))

(declare-fun d!532807 () Bool)

(assert (=> d!532807 (= (head!3996 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))) (h!24555 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(assert (=> b!1742518 d!532807))

(declare-fun d!532809 () Bool)

(assert (=> d!532809 (= (tail!2601 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))) (t!161923 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(assert (=> b!1742518 d!532809))

(declare-fun b!1743494 () Bool)

(declare-fun e!1115848 () List!19224)

(declare-fun list!7752 (IArray!12747) List!19224)

(assert (=> b!1743494 (= e!1115848 (list!7752 (xs!9247 (c!284177 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun d!532811 () Bool)

(declare-fun c!284502 () Bool)

(assert (=> d!532811 (= c!284502 ((_ is Empty!6371) (c!284177 (charsOf!2062 (_1!10801 lt!671797)))))))

(declare-fun e!1115847 () List!19224)

(assert (=> d!532811 (= (list!7748 (c!284177 (charsOf!2062 (_1!10801 lt!671797)))) e!1115847)))

(declare-fun b!1743495 () Bool)

(assert (=> b!1743495 (= e!1115848 (++!5238 (list!7748 (left!15315 (c!284177 (charsOf!2062 (_1!10801 lt!671797))))) (list!7748 (right!15645 (c!284177 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1743492 () Bool)

(assert (=> b!1743492 (= e!1115847 Nil!19154)))

(declare-fun b!1743493 () Bool)

(assert (=> b!1743493 (= e!1115847 e!1115848)))

(declare-fun c!284503 () Bool)

(assert (=> b!1743493 (= c!284503 ((_ is Leaf!9298) (c!284177 (charsOf!2062 (_1!10801 lt!671797)))))))

(assert (= (and d!532811 c!284502) b!1743492))

(assert (= (and d!532811 (not c!284502)) b!1743493))

(assert (= (and b!1743493 c!284503) b!1743494))

(assert (= (and b!1743493 (not c!284503)) b!1743495))

(declare-fun m!2155009 () Bool)

(assert (=> b!1743494 m!2155009))

(declare-fun m!2155011 () Bool)

(assert (=> b!1743495 m!2155011))

(declare-fun m!2155013 () Bool)

(assert (=> b!1743495 m!2155013))

(assert (=> b!1743495 m!2155011))

(assert (=> b!1743495 m!2155013))

(declare-fun m!2155015 () Bool)

(assert (=> b!1743495 m!2155015))

(assert (=> d!532195 d!532811))

(assert (=> d!532291 d!532289))

(declare-fun d!532813 () Bool)

(assert (=> d!532813 (ruleValid!912 thiss!24550 rule!422)))

(assert (=> d!532813 true))

(declare-fun _$65!927 () Unit!33221)

(assert (=> d!532813 (= (choose!10730 thiss!24550 rule!422 rules!3447) _$65!927)))

(declare-fun bs!403144 () Bool)

(assert (= bs!403144 d!532813))

(assert (=> bs!403144 m!2153187))

(assert (=> d!532291 d!532813))

(assert (=> d!532291 d!532187))

(declare-fun d!532815 () Bool)

(assert (=> d!532815 (= (inv!24822 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))) (isBalanced!1988 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))))))

(declare-fun bs!403145 () Bool)

(assert (= bs!403145 d!532815))

(declare-fun m!2155017 () Bool)

(assert (=> bs!403145 m!2155017))

(assert (=> tb!104153 d!532815))

(assert (=> b!1742446 d!532247))

(declare-fun b!1743496 () Bool)

(declare-fun e!1115852 () Bool)

(declare-fun e!1115853 () Bool)

(assert (=> b!1743496 (= e!1115852 e!1115853)))

(declare-fun res!783887 () Bool)

(assert (=> b!1743496 (=> (not res!783887) (not e!1115853))))

(declare-fun lt!672228 () Bool)

(assert (=> b!1743496 (= res!783887 (not lt!672228))))

(declare-fun b!1743497 () Bool)

(declare-fun e!1115850 () Bool)

(assert (=> b!1743497 (= e!1115853 e!1115850)))

(declare-fun res!783885 () Bool)

(assert (=> b!1743497 (=> res!783885 e!1115850)))

(declare-fun call!110179 () Bool)

(assert (=> b!1743497 (= res!783885 call!110179)))

(declare-fun b!1743498 () Bool)

(declare-fun res!783886 () Bool)

(declare-fun e!1115851 () Bool)

(assert (=> b!1743498 (=> (not res!783886) (not e!1115851))))

(assert (=> b!1743498 (= res!783886 (isEmpty!12057 (tail!2601 lt!671998)))))

(declare-fun b!1743499 () Bool)

(assert (=> b!1743499 (= e!1115851 (= (head!3996 lt!671998) (c!284176 (regex!3413 (rule!5415 lt!672004)))))))

(declare-fun b!1743500 () Bool)

(declare-fun e!1115849 () Bool)

(declare-fun e!1115854 () Bool)

(assert (=> b!1743500 (= e!1115849 e!1115854)))

(declare-fun c!284505 () Bool)

(assert (=> b!1743500 (= c!284505 ((_ is EmptyLang!4741) (regex!3413 (rule!5415 lt!672004))))))

(declare-fun d!532817 () Bool)

(assert (=> d!532817 e!1115849))

(declare-fun c!284506 () Bool)

(assert (=> d!532817 (= c!284506 ((_ is EmptyExpr!4741) (regex!3413 (rule!5415 lt!672004))))))

(declare-fun e!1115855 () Bool)

(assert (=> d!532817 (= lt!672228 e!1115855)))

(declare-fun c!284504 () Bool)

(assert (=> d!532817 (= c!284504 (isEmpty!12057 lt!671998))))

(assert (=> d!532817 (validRegex!1910 (regex!3413 (rule!5415 lt!672004)))))

(assert (=> d!532817 (= (matchR!2215 (regex!3413 (rule!5415 lt!672004)) lt!671998) lt!672228)))

(declare-fun b!1743501 () Bool)

(declare-fun res!783882 () Bool)

(assert (=> b!1743501 (=> res!783882 e!1115850)))

(assert (=> b!1743501 (= res!783882 (not (isEmpty!12057 (tail!2601 lt!671998))))))

(declare-fun b!1743502 () Bool)

(assert (=> b!1743502 (= e!1115850 (not (= (head!3996 lt!671998) (c!284176 (regex!3413 (rule!5415 lt!672004))))))))

(declare-fun b!1743503 () Bool)

(assert (=> b!1743503 (= e!1115854 (not lt!672228))))

(declare-fun b!1743504 () Bool)

(declare-fun res!783888 () Bool)

(assert (=> b!1743504 (=> res!783888 e!1115852)))

(assert (=> b!1743504 (= res!783888 (not ((_ is ElementMatch!4741) (regex!3413 (rule!5415 lt!672004)))))))

(assert (=> b!1743504 (= e!1115854 e!1115852)))

(declare-fun b!1743505 () Bool)

(assert (=> b!1743505 (= e!1115849 (= lt!672228 call!110179))))

(declare-fun b!1743506 () Bool)

(declare-fun res!783884 () Bool)

(assert (=> b!1743506 (=> res!783884 e!1115852)))

(assert (=> b!1743506 (= res!783884 e!1115851)))

(declare-fun res!783883 () Bool)

(assert (=> b!1743506 (=> (not res!783883) (not e!1115851))))

(assert (=> b!1743506 (= res!783883 lt!672228)))

(declare-fun b!1743507 () Bool)

(assert (=> b!1743507 (= e!1115855 (nullable!1436 (regex!3413 (rule!5415 lt!672004))))))

(declare-fun b!1743508 () Bool)

(assert (=> b!1743508 (= e!1115855 (matchR!2215 (derivativeStep!1204 (regex!3413 (rule!5415 lt!672004)) (head!3996 lt!671998)) (tail!2601 lt!671998)))))

(declare-fun b!1743509 () Bool)

(declare-fun res!783889 () Bool)

(assert (=> b!1743509 (=> (not res!783889) (not e!1115851))))

(assert (=> b!1743509 (= res!783889 (not call!110179))))

(declare-fun bm!110174 () Bool)

(assert (=> bm!110174 (= call!110179 (isEmpty!12057 lt!671998))))

(assert (= (and d!532817 c!284504) b!1743507))

(assert (= (and d!532817 (not c!284504)) b!1743508))

(assert (= (and d!532817 c!284506) b!1743505))

(assert (= (and d!532817 (not c!284506)) b!1743500))

(assert (= (and b!1743500 c!284505) b!1743503))

(assert (= (and b!1743500 (not c!284505)) b!1743504))

(assert (= (and b!1743504 (not res!783888)) b!1743506))

(assert (= (and b!1743506 res!783883) b!1743509))

(assert (= (and b!1743509 res!783889) b!1743498))

(assert (= (and b!1743498 res!783886) b!1743499))

(assert (= (and b!1743506 (not res!783884)) b!1743496))

(assert (= (and b!1743496 res!783887) b!1743497))

(assert (= (and b!1743497 (not res!783885)) b!1743501))

(assert (= (and b!1743501 (not res!783882)) b!1743502))

(assert (= (or b!1743505 b!1743497 b!1743509) bm!110174))

(declare-fun m!2155019 () Bool)

(assert (=> d!532817 m!2155019))

(declare-fun m!2155021 () Bool)

(assert (=> d!532817 m!2155021))

(declare-fun m!2155023 () Bool)

(assert (=> b!1743498 m!2155023))

(assert (=> b!1743498 m!2155023))

(declare-fun m!2155025 () Bool)

(assert (=> b!1743498 m!2155025))

(declare-fun m!2155027 () Bool)

(assert (=> b!1743499 m!2155027))

(declare-fun m!2155029 () Bool)

(assert (=> b!1743507 m!2155029))

(assert (=> b!1743508 m!2155027))

(assert (=> b!1743508 m!2155027))

(declare-fun m!2155031 () Bool)

(assert (=> b!1743508 m!2155031))

(assert (=> b!1743508 m!2155023))

(assert (=> b!1743508 m!2155031))

(assert (=> b!1743508 m!2155023))

(declare-fun m!2155033 () Bool)

(assert (=> b!1743508 m!2155033))

(assert (=> b!1743502 m!2155027))

(assert (=> b!1743501 m!2155023))

(assert (=> b!1743501 m!2155023))

(assert (=> b!1743501 m!2155025))

(assert (=> bm!110174 m!2155019))

(assert (=> b!1742446 d!532817))

(declare-fun d!532819 () Bool)

(assert (=> d!532819 (= (isEmpty!12061 (maxPrefixOneRule!968 thiss!24550 (rule!5415 lt!672004) lt!672010)) (not ((_ is Some!3850) (maxPrefixOneRule!968 thiss!24550 (rule!5415 lt!672004) lt!672010))))))

(assert (=> b!1742446 d!532819))

(declare-fun d!532821 () Bool)

(assert (=> d!532821 (isEmpty!12061 (maxPrefixOneRule!968 thiss!24550 (rule!5415 lt!672004) lt!672010))))

(declare-fun lt!672231 () Unit!33221)

(declare-fun choose!10737 (LexerInterface!3042 Rule!6626 List!19225 List!19224) Unit!33221)

(assert (=> d!532821 (= lt!672231 (choose!10737 thiss!24550 (rule!5415 lt!672004) rules!3447 lt!672010))))

(assert (=> d!532821 (not (isEmpty!12058 rules!3447))))

(assert (=> d!532821 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!293 thiss!24550 (rule!5415 lt!672004) rules!3447 lt!672010) lt!672231)))

(declare-fun bs!403146 () Bool)

(assert (= bs!403146 d!532821))

(assert (=> bs!403146 m!2153685))

(assert (=> bs!403146 m!2153685))

(assert (=> bs!403146 m!2153687))

(declare-fun m!2155035 () Bool)

(assert (=> bs!403146 m!2155035))

(assert (=> bs!403146 m!2153181))

(assert (=> b!1742446 d!532821))

(assert (=> b!1742446 d!532619))

(declare-fun b!1743528 () Bool)

(declare-fun e!1115865 () Option!3851)

(assert (=> b!1743528 (= e!1115865 None!3850)))

(declare-fun b!1743529 () Bool)

(declare-fun e!1115864 () Bool)

(declare-fun e!1115867 () Bool)

(assert (=> b!1743529 (= e!1115864 e!1115867)))

(declare-fun res!783905 () Bool)

(assert (=> b!1743529 (=> (not res!783905) (not e!1115867))))

(declare-fun lt!672244 () Option!3851)

(assert (=> b!1743529 (= res!783905 (matchR!2215 (regex!3413 (rule!5415 lt!672004)) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672244))))))))

(declare-fun b!1743530 () Bool)

(declare-fun res!783908 () Bool)

(assert (=> b!1743530 (=> (not res!783908) (not e!1115867))))

(assert (=> b!1743530 (= res!783908 (= (value!106943 (_1!10801 (get!5774 lt!672244))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672244)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672244)))))))))

(declare-fun b!1743531 () Bool)

(declare-fun res!783904 () Bool)

(assert (=> b!1743531 (=> (not res!783904) (not e!1115867))))

(assert (=> b!1743531 (= res!783904 (< (size!15214 (_2!10801 (get!5774 lt!672244))) (size!15214 lt!672010)))))

(declare-fun b!1743532 () Bool)

(assert (=> b!1743532 (= e!1115867 (= (size!15212 (_1!10801 (get!5774 lt!672244))) (size!15214 (originalCharacters!4227 (_1!10801 (get!5774 lt!672244))))))))

(declare-fun b!1743533 () Bool)

(declare-fun e!1115866 () Bool)

(declare-datatypes ((tuple2!18806 0))(
  ( (tuple2!18807 (_1!10805 List!19224) (_2!10805 List!19224)) )
))
(declare-fun findLongestMatchInner!425 (Regex!4741 List!19224 Int List!19224 List!19224 Int) tuple2!18806)

(assert (=> b!1743533 (= e!1115866 (matchR!2215 (regex!3413 (rule!5415 lt!672004)) (_1!10805 (findLongestMatchInner!425 (regex!3413 (rule!5415 lt!672004)) Nil!19154 (size!15214 Nil!19154) lt!672010 lt!672010 (size!15214 lt!672010)))))))

(declare-fun b!1743534 () Bool)

(declare-fun res!783907 () Bool)

(assert (=> b!1743534 (=> (not res!783907) (not e!1115867))))

(assert (=> b!1743534 (= res!783907 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672244)))) (_2!10801 (get!5774 lt!672244))) lt!672010))))

(declare-fun d!532823 () Bool)

(assert (=> d!532823 e!1115864))

(declare-fun res!783909 () Bool)

(assert (=> d!532823 (=> res!783909 e!1115864)))

(assert (=> d!532823 (= res!783909 (isEmpty!12061 lt!672244))))

(assert (=> d!532823 (= lt!672244 e!1115865)))

(declare-fun c!284509 () Bool)

(declare-fun lt!672242 () tuple2!18806)

(assert (=> d!532823 (= c!284509 (isEmpty!12057 (_1!10805 lt!672242)))))

(declare-fun findLongestMatch!352 (Regex!4741 List!19224) tuple2!18806)

(assert (=> d!532823 (= lt!672242 (findLongestMatch!352 (regex!3413 (rule!5415 lt!672004)) lt!672010))))

(assert (=> d!532823 (ruleValid!912 thiss!24550 (rule!5415 lt!672004))))

(assert (=> d!532823 (= (maxPrefixOneRule!968 thiss!24550 (rule!5415 lt!672004) lt!672010) lt!672244)))

(declare-fun b!1743535 () Bool)

(declare-fun size!15220 (BalanceConc!12686) Int)

(assert (=> b!1743535 (= e!1115865 (Some!3850 (tuple2!18799 (Token!6393 (apply!5214 (transformation!3413 (rule!5415 lt!672004)) (seqFromList!2383 (_1!10805 lt!672242))) (rule!5415 lt!672004) (size!15220 (seqFromList!2383 (_1!10805 lt!672242))) (_1!10805 lt!672242)) (_2!10805 lt!672242))))))

(declare-fun lt!672246 () Unit!33221)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!409 (Regex!4741 List!19224) Unit!33221)

(assert (=> b!1743535 (= lt!672246 (longestMatchIsAcceptedByMatchOrIsEmpty!409 (regex!3413 (rule!5415 lt!672004)) lt!672010))))

(declare-fun res!783910 () Bool)

(assert (=> b!1743535 (= res!783910 (isEmpty!12057 (_1!10805 (findLongestMatchInner!425 (regex!3413 (rule!5415 lt!672004)) Nil!19154 (size!15214 Nil!19154) lt!672010 lt!672010 (size!15214 lt!672010)))))))

(assert (=> b!1743535 (=> res!783910 e!1115866)))

(assert (=> b!1743535 e!1115866))

(declare-fun lt!672245 () Unit!33221)

(assert (=> b!1743535 (= lt!672245 lt!672246)))

(declare-fun lt!672243 () Unit!33221)

(declare-fun lemmaSemiInverse!553 (TokenValueInjection!6666 BalanceConc!12686) Unit!33221)

(assert (=> b!1743535 (= lt!672243 (lemmaSemiInverse!553 (transformation!3413 (rule!5415 lt!672004)) (seqFromList!2383 (_1!10805 lt!672242))))))

(declare-fun b!1743536 () Bool)

(declare-fun res!783906 () Bool)

(assert (=> b!1743536 (=> (not res!783906) (not e!1115867))))

(assert (=> b!1743536 (= res!783906 (= (rule!5415 (_1!10801 (get!5774 lt!672244))) (rule!5415 lt!672004)))))

(assert (= (and d!532823 c!284509) b!1743528))

(assert (= (and d!532823 (not c!284509)) b!1743535))

(assert (= (and b!1743535 (not res!783910)) b!1743533))

(assert (= (and d!532823 (not res!783909)) b!1743529))

(assert (= (and b!1743529 res!783905) b!1743534))

(assert (= (and b!1743534 res!783907) b!1743531))

(assert (= (and b!1743531 res!783904) b!1743536))

(assert (= (and b!1743536 res!783906) b!1743530))

(assert (= (and b!1743530 res!783908) b!1743532))

(declare-fun m!2155037 () Bool)

(assert (=> b!1743531 m!2155037))

(declare-fun m!2155039 () Bool)

(assert (=> b!1743531 m!2155039))

(declare-fun m!2155041 () Bool)

(assert (=> b!1743531 m!2155041))

(declare-fun m!2155043 () Bool)

(assert (=> b!1743533 m!2155043))

(assert (=> b!1743533 m!2155041))

(assert (=> b!1743533 m!2155043))

(assert (=> b!1743533 m!2155041))

(declare-fun m!2155045 () Bool)

(assert (=> b!1743533 m!2155045))

(declare-fun m!2155047 () Bool)

(assert (=> b!1743533 m!2155047))

(assert (=> b!1743532 m!2155037))

(declare-fun m!2155049 () Bool)

(assert (=> b!1743532 m!2155049))

(assert (=> b!1743536 m!2155037))

(assert (=> b!1743530 m!2155037))

(declare-fun m!2155051 () Bool)

(assert (=> b!1743530 m!2155051))

(assert (=> b!1743530 m!2155051))

(declare-fun m!2155053 () Bool)

(assert (=> b!1743530 m!2155053))

(declare-fun m!2155055 () Bool)

(assert (=> d!532823 m!2155055))

(declare-fun m!2155057 () Bool)

(assert (=> d!532823 m!2155057))

(declare-fun m!2155059 () Bool)

(assert (=> d!532823 m!2155059))

(declare-fun m!2155061 () Bool)

(assert (=> d!532823 m!2155061))

(assert (=> b!1743529 m!2155037))

(declare-fun m!2155063 () Bool)

(assert (=> b!1743529 m!2155063))

(assert (=> b!1743529 m!2155063))

(declare-fun m!2155065 () Bool)

(assert (=> b!1743529 m!2155065))

(assert (=> b!1743529 m!2155065))

(declare-fun m!2155067 () Bool)

(assert (=> b!1743529 m!2155067))

(assert (=> b!1743534 m!2155037))

(assert (=> b!1743534 m!2155063))

(assert (=> b!1743534 m!2155063))

(assert (=> b!1743534 m!2155065))

(assert (=> b!1743534 m!2155065))

(declare-fun m!2155069 () Bool)

(assert (=> b!1743534 m!2155069))

(assert (=> b!1743535 m!2155041))

(declare-fun m!2155071 () Bool)

(assert (=> b!1743535 m!2155071))

(assert (=> b!1743535 m!2155043))

(assert (=> b!1743535 m!2155041))

(assert (=> b!1743535 m!2155045))

(assert (=> b!1743535 m!2155071))

(declare-fun m!2155073 () Bool)

(assert (=> b!1743535 m!2155073))

(declare-fun m!2155075 () Bool)

(assert (=> b!1743535 m!2155075))

(assert (=> b!1743535 m!2155043))

(assert (=> b!1743535 m!2155071))

(declare-fun m!2155077 () Bool)

(assert (=> b!1743535 m!2155077))

(assert (=> b!1743535 m!2155071))

(declare-fun m!2155079 () Bool)

(assert (=> b!1743535 m!2155079))

(declare-fun m!2155081 () Bool)

(assert (=> b!1743535 m!2155081))

(assert (=> b!1742446 d!532823))

(assert (=> b!1742446 d!532613))

(declare-fun d!532825 () Bool)

(assert (=> d!532825 (not (matchR!2215 (regex!3413 (rule!5415 lt!672004)) lt!671998))))

(declare-fun lt!672249 () Unit!33221)

(declare-fun choose!10738 (LexerInterface!3042 Rule!6626 List!19224 List!19224) Unit!33221)

(assert (=> d!532825 (= lt!672249 (choose!10738 thiss!24550 (rule!5415 lt!672004) lt!671998 (++!5238 lt!671800 suffix!1421)))))

(assert (=> d!532825 (isPrefix!1654 lt!671998 (++!5238 lt!671800 suffix!1421))))

(assert (=> d!532825 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!289 thiss!24550 (rule!5415 lt!672004) lt!671998 (++!5238 lt!671800 suffix!1421)) lt!672249)))

(declare-fun bs!403147 () Bool)

(assert (= bs!403147 d!532825))

(assert (=> bs!403147 m!2153697))

(assert (=> bs!403147 m!2153155))

(declare-fun m!2155083 () Bool)

(assert (=> bs!403147 m!2155083))

(assert (=> bs!403147 m!2153155))

(declare-fun m!2155085 () Bool)

(assert (=> bs!403147 m!2155085))

(assert (=> b!1742446 d!532825))

(declare-fun b!1743537 () Bool)

(declare-fun e!1115871 () Bool)

(declare-fun e!1115872 () Bool)

(assert (=> b!1743537 (= e!1115871 e!1115872)))

(declare-fun res!783916 () Bool)

(assert (=> b!1743537 (=> (not res!783916) (not e!1115872))))

(declare-fun lt!672250 () Bool)

(assert (=> b!1743537 (= res!783916 (not lt!672250))))

(declare-fun b!1743538 () Bool)

(declare-fun e!1115869 () Bool)

(assert (=> b!1743538 (= e!1115872 e!1115869)))

(declare-fun res!783914 () Bool)

(assert (=> b!1743538 (=> res!783914 e!1115869)))

(declare-fun call!110180 () Bool)

(assert (=> b!1743538 (= res!783914 call!110180)))

(declare-fun b!1743539 () Bool)

(declare-fun res!783915 () Bool)

(declare-fun e!1115870 () Bool)

(assert (=> b!1743539 (=> (not res!783915) (not e!1115870))))

(assert (=> b!1743539 (= res!783915 (isEmpty!12057 (tail!2601 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1743540 () Bool)

(assert (=> b!1743540 (= e!1115870 (= (head!3996 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (c!284176 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))))

(declare-fun b!1743541 () Bool)

(declare-fun e!1115868 () Bool)

(declare-fun e!1115873 () Bool)

(assert (=> b!1743541 (= e!1115868 e!1115873)))

(declare-fun c!284511 () Bool)

(assert (=> b!1743541 (= c!284511 ((_ is EmptyLang!4741) (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun d!532827 () Bool)

(assert (=> d!532827 e!1115868))

(declare-fun c!284512 () Bool)

(assert (=> d!532827 (= c!284512 ((_ is EmptyExpr!4741) (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun e!1115874 () Bool)

(assert (=> d!532827 (= lt!672250 e!1115874)))

(declare-fun c!284510 () Bool)

(assert (=> d!532827 (= c!284510 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(assert (=> d!532827 (validRegex!1910 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(assert (=> d!532827 (= (matchR!2215 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) lt!672250)))

(declare-fun b!1743542 () Bool)

(declare-fun res!783911 () Bool)

(assert (=> b!1743542 (=> res!783911 e!1115869)))

(assert (=> b!1743542 (= res!783911 (not (isEmpty!12057 (tail!2601 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))))

(declare-fun b!1743543 () Bool)

(assert (=> b!1743543 (= e!1115869 (not (= (head!3996 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (c!284176 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))))

(declare-fun b!1743544 () Bool)

(assert (=> b!1743544 (= e!1115873 (not lt!672250))))

(declare-fun b!1743545 () Bool)

(declare-fun res!783917 () Bool)

(assert (=> b!1743545 (=> res!783917 e!1115871)))

(assert (=> b!1743545 (= res!783917 (not ((_ is ElementMatch!4741) (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))))

(assert (=> b!1743545 (= e!1115873 e!1115871)))

(declare-fun b!1743546 () Bool)

(assert (=> b!1743546 (= e!1115868 (= lt!672250 call!110180))))

(declare-fun b!1743547 () Bool)

(declare-fun res!783913 () Bool)

(assert (=> b!1743547 (=> res!783913 e!1115871)))

(assert (=> b!1743547 (= res!783913 e!1115870)))

(declare-fun res!783912 () Bool)

(assert (=> b!1743547 (=> (not res!783912) (not e!1115870))))

(assert (=> b!1743547 (= res!783912 lt!672250)))

(declare-fun b!1743548 () Bool)

(assert (=> b!1743548 (= e!1115874 (nullable!1436 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1743549 () Bool)

(assert (=> b!1743549 (= e!1115874 (matchR!2215 (derivativeStep!1204 (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) (head!3996 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))) (tail!2601 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))))))))

(declare-fun b!1743550 () Bool)

(declare-fun res!783918 () Bool)

(assert (=> b!1743550 (=> (not res!783918) (not e!1115870))))

(assert (=> b!1743550 (= res!783918 (not call!110180))))

(declare-fun bm!110175 () Bool)

(assert (=> bm!110175 (= call!110180 (isEmpty!12057 (tail!2601 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(assert (= (and d!532827 c!284510) b!1743548))

(assert (= (and d!532827 (not c!284510)) b!1743549))

(assert (= (and d!532827 c!284512) b!1743546))

(assert (= (and d!532827 (not c!284512)) b!1743541))

(assert (= (and b!1743541 c!284511) b!1743544))

(assert (= (and b!1743541 (not c!284511)) b!1743545))

(assert (= (and b!1743545 (not res!783917)) b!1743547))

(assert (= (and b!1743547 res!783912) b!1743550))

(assert (= (and b!1743550 res!783918) b!1743539))

(assert (= (and b!1743539 res!783915) b!1743540))

(assert (= (and b!1743547 (not res!783913)) b!1743537))

(assert (= (and b!1743537 res!783916) b!1743538))

(assert (= (and b!1743538 (not res!783914)) b!1743542))

(assert (= (and b!1743542 (not res!783911)) b!1743543))

(assert (= (or b!1743546 b!1743538 b!1743550) bm!110175))

(assert (=> d!532827 m!2153405))

(assert (=> d!532827 m!2153407))

(assert (=> d!532827 m!2153413))

(declare-fun m!2155087 () Bool)

(assert (=> d!532827 m!2155087))

(assert (=> b!1743539 m!2153405))

(declare-fun m!2155089 () Bool)

(assert (=> b!1743539 m!2155089))

(assert (=> b!1743539 m!2155089))

(declare-fun m!2155091 () Bool)

(assert (=> b!1743539 m!2155091))

(assert (=> b!1743540 m!2153405))

(declare-fun m!2155093 () Bool)

(assert (=> b!1743540 m!2155093))

(assert (=> b!1743548 m!2153413))

(declare-fun m!2155095 () Bool)

(assert (=> b!1743548 m!2155095))

(assert (=> b!1743549 m!2153405))

(assert (=> b!1743549 m!2155093))

(assert (=> b!1743549 m!2153413))

(assert (=> b!1743549 m!2155093))

(declare-fun m!2155097 () Bool)

(assert (=> b!1743549 m!2155097))

(assert (=> b!1743549 m!2153405))

(assert (=> b!1743549 m!2155089))

(assert (=> b!1743549 m!2155097))

(assert (=> b!1743549 m!2155089))

(declare-fun m!2155099 () Bool)

(assert (=> b!1743549 m!2155099))

(assert (=> b!1743543 m!2153405))

(assert (=> b!1743543 m!2155093))

(assert (=> b!1743542 m!2153405))

(assert (=> b!1743542 m!2155089))

(assert (=> b!1743542 m!2155089))

(assert (=> b!1743542 m!2155091))

(assert (=> bm!110175 m!2153405))

(assert (=> bm!110175 m!2153407))

(assert (=> b!1742241 d!532827))

(declare-fun b!1743551 () Bool)

(declare-fun e!1115876 () Regex!4741)

(declare-fun call!110183 () Regex!4741)

(assert (=> b!1743551 (= e!1115876 (Concat!8245 call!110183 (regex!3413 lt!671796)))))

(declare-fun b!1743552 () Bool)

(declare-fun e!1115875 () Regex!4741)

(assert (=> b!1743552 (= e!1115875 e!1115876)))

(declare-fun c!284517 () Bool)

(assert (=> b!1743552 (= c!284517 ((_ is Star!4741) (regex!3413 lt!671796)))))

(declare-fun b!1743553 () Bool)

(declare-fun e!1115878 () Regex!4741)

(assert (=> b!1743553 (= e!1115878 EmptyLang!4741)))

(declare-fun b!1743554 () Bool)

(declare-fun call!110184 () Regex!4741)

(declare-fun call!110181 () Regex!4741)

(assert (=> b!1743554 (= e!1115875 (Union!4741 call!110184 call!110181))))

(declare-fun e!1115879 () Regex!4741)

(declare-fun b!1743555 () Bool)

(declare-fun call!110182 () Regex!4741)

(assert (=> b!1743555 (= e!1115879 (Union!4741 (Concat!8245 call!110184 (regTwo!9994 (regex!3413 lt!671796))) call!110182))))

(declare-fun b!1743556 () Bool)

(declare-fun e!1115877 () Regex!4741)

(assert (=> b!1743556 (= e!1115878 e!1115877)))

(declare-fun c!284515 () Bool)

(assert (=> b!1743556 (= c!284515 ((_ is ElementMatch!4741) (regex!3413 lt!671796)))))

(declare-fun b!1743557 () Bool)

(declare-fun c!284516 () Bool)

(assert (=> b!1743557 (= c!284516 ((_ is Union!4741) (regex!3413 lt!671796)))))

(assert (=> b!1743557 (= e!1115877 e!1115875)))

(declare-fun b!1743558 () Bool)

(assert (=> b!1743558 (= e!1115879 (Union!4741 (Concat!8245 call!110182 (regTwo!9994 (regex!3413 lt!671796))) EmptyLang!4741))))

(declare-fun bm!110177 () Bool)

(assert (=> bm!110177 (= call!110182 call!110183)))

(declare-fun bm!110178 () Bool)

(assert (=> bm!110178 (= call!110183 call!110181)))

(declare-fun b!1743559 () Bool)

(assert (=> b!1743559 (= e!1115877 (ite (= (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797)))) (c!284176 (regex!3413 lt!671796))) EmptyExpr!4741 EmptyLang!4741))))

(declare-fun d!532829 () Bool)

(declare-fun lt!672251 () Regex!4741)

(assert (=> d!532829 (validRegex!1910 lt!672251)))

(assert (=> d!532829 (= lt!672251 e!1115878)))

(declare-fun c!284514 () Bool)

(assert (=> d!532829 (= c!284514 (or ((_ is EmptyExpr!4741) (regex!3413 lt!671796)) ((_ is EmptyLang!4741) (regex!3413 lt!671796))))))

(assert (=> d!532829 (validRegex!1910 (regex!3413 lt!671796))))

(assert (=> d!532829 (= (derivativeStep!1204 (regex!3413 lt!671796) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))) lt!672251)))

(declare-fun bm!110176 () Bool)

(assert (=> bm!110176 (= call!110184 (derivativeStep!1204 (ite c!284516 (regOne!9995 (regex!3413 lt!671796)) (regOne!9994 (regex!3413 lt!671796))) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun c!284513 () Bool)

(declare-fun bm!110179 () Bool)

(assert (=> bm!110179 (= call!110181 (derivativeStep!1204 (ite c!284516 (regTwo!9995 (regex!3413 lt!671796)) (ite c!284517 (reg!5070 (regex!3413 lt!671796)) (ite c!284513 (regTwo!9994 (regex!3413 lt!671796)) (regOne!9994 (regex!3413 lt!671796))))) (head!3996 (list!7746 (charsOf!2062 (_1!10801 lt!671797))))))))

(declare-fun b!1743560 () Bool)

(assert (=> b!1743560 (= c!284513 (nullable!1436 (regOne!9994 (regex!3413 lt!671796))))))

(assert (=> b!1743560 (= e!1115876 e!1115879)))

(assert (= (and d!532829 c!284514) b!1743553))

(assert (= (and d!532829 (not c!284514)) b!1743556))

(assert (= (and b!1743556 c!284515) b!1743559))

(assert (= (and b!1743556 (not c!284515)) b!1743557))

(assert (= (and b!1743557 c!284516) b!1743554))

(assert (= (and b!1743557 (not c!284516)) b!1743552))

(assert (= (and b!1743552 c!284517) b!1743551))

(assert (= (and b!1743552 (not c!284517)) b!1743560))

(assert (= (and b!1743560 c!284513) b!1743555))

(assert (= (and b!1743560 (not c!284513)) b!1743558))

(assert (= (or b!1743555 b!1743558) bm!110177))

(assert (= (or b!1743551 bm!110177) bm!110178))

(assert (= (or b!1743554 bm!110178) bm!110179))

(assert (= (or b!1743554 b!1743555) bm!110176))

(declare-fun m!2155101 () Bool)

(assert (=> d!532829 m!2155101))

(assert (=> d!532829 m!2153403))

(assert (=> bm!110176 m!2153409))

(declare-fun m!2155103 () Bool)

(assert (=> bm!110176 m!2155103))

(assert (=> bm!110179 m!2153409))

(declare-fun m!2155105 () Bool)

(assert (=> bm!110179 m!2155105))

(declare-fun m!2155107 () Bool)

(assert (=> b!1743560 m!2155107))

(assert (=> b!1742241 d!532829))

(assert (=> b!1742241 d!532799))

(assert (=> b!1742241 d!532717))

(assert (=> b!1742497 d!532665))

(assert (=> b!1742497 d!532667))

(assert (=> b!1742510 d!532631))

(declare-fun bs!403148 () Bool)

(declare-fun d!532831 () Bool)

(assert (= bs!403148 (and d!532831 b!1741985)))

(declare-fun lambda!69660 () Int)

(assert (=> bs!403148 (= (and (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (= lambda!69660 lambda!69608))))

(declare-fun bs!403149 () Bool)

(assert (= bs!403149 (and d!532831 d!532729)))

(assert (=> bs!403149 (= (and (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (h!24556 rules!3447)))) (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (h!24556 rules!3447))))) (= lambda!69660 lambda!69657))))

(assert (=> d!532831 true))

(assert (=> d!532831 (< (dynLambda!9052 order!11955 (toChars!4779 (transformation!3413 rule!422))) (dynLambda!9051 order!11953 lambda!69660))))

(assert (=> d!532831 true))

(assert (=> d!532831 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 rule!422))) (dynLambda!9051 order!11953 lambda!69660))))

(assert (=> d!532831 (= (semiInverseModEq!1349 (toChars!4779 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 rule!422))) (Forall!782 lambda!69660))))

(declare-fun bs!403150 () Bool)

(assert (= bs!403150 d!532831))

(declare-fun m!2155109 () Bool)

(assert (=> bs!403150 m!2155109))

(assert (=> d!532237 d!532831))

(declare-fun d!532833 () Bool)

(assert (=> d!532833 (= (isEmpty!12057 (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))) ((_ is Nil!19154) (++!5238 lt!671800 (Cons!19154 (head!3996 suffix!1421) Nil!19154))))))

(assert (=> d!532297 d!532833))

(declare-fun b!1743561 () Bool)

(declare-fun e!1115881 () Option!3851)

(assert (=> b!1743561 (= e!1115881 None!3850)))

(declare-fun b!1743562 () Bool)

(declare-fun e!1115880 () Bool)

(declare-fun e!1115883 () Bool)

(assert (=> b!1743562 (= e!1115880 e!1115883)))

(declare-fun res!783920 () Bool)

(assert (=> b!1743562 (=> (not res!783920) (not e!1115883))))

(declare-fun lt!672254 () Option!3851)

(assert (=> b!1743562 (= res!783920 (matchR!2215 (regex!3413 (h!24556 rules!3447)) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672254))))))))

(declare-fun b!1743563 () Bool)

(declare-fun res!783923 () Bool)

(assert (=> b!1743563 (=> (not res!783923) (not e!1115883))))

(assert (=> b!1743563 (= res!783923 (= (value!106943 (_1!10801 (get!5774 lt!672254))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672254)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672254)))))))))

(declare-fun b!1743564 () Bool)

(declare-fun res!783919 () Bool)

(assert (=> b!1743564 (=> (not res!783919) (not e!1115883))))

(assert (=> b!1743564 (= res!783919 (< (size!15214 (_2!10801 (get!5774 lt!672254))) (size!15214 lt!671800)))))

(declare-fun b!1743565 () Bool)

(assert (=> b!1743565 (= e!1115883 (= (size!15212 (_1!10801 (get!5774 lt!672254))) (size!15214 (originalCharacters!4227 (_1!10801 (get!5774 lt!672254))))))))

(declare-fun b!1743566 () Bool)

(declare-fun e!1115882 () Bool)

(assert (=> b!1743566 (= e!1115882 (matchR!2215 (regex!3413 (h!24556 rules!3447)) (_1!10805 (findLongestMatchInner!425 (regex!3413 (h!24556 rules!3447)) Nil!19154 (size!15214 Nil!19154) lt!671800 lt!671800 (size!15214 lt!671800)))))))

(declare-fun b!1743567 () Bool)

(declare-fun res!783922 () Bool)

(assert (=> b!1743567 (=> (not res!783922) (not e!1115883))))

(assert (=> b!1743567 (= res!783922 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672254)))) (_2!10801 (get!5774 lt!672254))) lt!671800))))

(declare-fun d!532835 () Bool)

(assert (=> d!532835 e!1115880))

(declare-fun res!783924 () Bool)

(assert (=> d!532835 (=> res!783924 e!1115880)))

(assert (=> d!532835 (= res!783924 (isEmpty!12061 lt!672254))))

(assert (=> d!532835 (= lt!672254 e!1115881)))

(declare-fun c!284518 () Bool)

(declare-fun lt!672252 () tuple2!18806)

(assert (=> d!532835 (= c!284518 (isEmpty!12057 (_1!10805 lt!672252)))))

(assert (=> d!532835 (= lt!672252 (findLongestMatch!352 (regex!3413 (h!24556 rules!3447)) lt!671800))))

(assert (=> d!532835 (ruleValid!912 thiss!24550 (h!24556 rules!3447))))

(assert (=> d!532835 (= (maxPrefixOneRule!968 thiss!24550 (h!24556 rules!3447) lt!671800) lt!672254)))

(declare-fun b!1743568 () Bool)

(assert (=> b!1743568 (= e!1115881 (Some!3850 (tuple2!18799 (Token!6393 (apply!5214 (transformation!3413 (h!24556 rules!3447)) (seqFromList!2383 (_1!10805 lt!672252))) (h!24556 rules!3447) (size!15220 (seqFromList!2383 (_1!10805 lt!672252))) (_1!10805 lt!672252)) (_2!10805 lt!672252))))))

(declare-fun lt!672256 () Unit!33221)

(assert (=> b!1743568 (= lt!672256 (longestMatchIsAcceptedByMatchOrIsEmpty!409 (regex!3413 (h!24556 rules!3447)) lt!671800))))

(declare-fun res!783925 () Bool)

(assert (=> b!1743568 (= res!783925 (isEmpty!12057 (_1!10805 (findLongestMatchInner!425 (regex!3413 (h!24556 rules!3447)) Nil!19154 (size!15214 Nil!19154) lt!671800 lt!671800 (size!15214 lt!671800)))))))

(assert (=> b!1743568 (=> res!783925 e!1115882)))

(assert (=> b!1743568 e!1115882))

(declare-fun lt!672255 () Unit!33221)

(assert (=> b!1743568 (= lt!672255 lt!672256)))

(declare-fun lt!672253 () Unit!33221)

(assert (=> b!1743568 (= lt!672253 (lemmaSemiInverse!553 (transformation!3413 (h!24556 rules!3447)) (seqFromList!2383 (_1!10805 lt!672252))))))

(declare-fun b!1743569 () Bool)

(declare-fun res!783921 () Bool)

(assert (=> b!1743569 (=> (not res!783921) (not e!1115883))))

(assert (=> b!1743569 (= res!783921 (= (rule!5415 (_1!10801 (get!5774 lt!672254))) (h!24556 rules!3447)))))

(assert (= (and d!532835 c!284518) b!1743561))

(assert (= (and d!532835 (not c!284518)) b!1743568))

(assert (= (and b!1743568 (not res!783925)) b!1743566))

(assert (= (and d!532835 (not res!783924)) b!1743562))

(assert (= (and b!1743562 res!783920) b!1743567))

(assert (= (and b!1743567 res!783922) b!1743564))

(assert (= (and b!1743564 res!783919) b!1743569))

(assert (= (and b!1743569 res!783921) b!1743563))

(assert (= (and b!1743563 res!783923) b!1743565))

(declare-fun m!2155111 () Bool)

(assert (=> b!1743564 m!2155111))

(declare-fun m!2155113 () Bool)

(assert (=> b!1743564 m!2155113))

(assert (=> b!1743564 m!2153515))

(assert (=> b!1743566 m!2155043))

(assert (=> b!1743566 m!2153515))

(assert (=> b!1743566 m!2155043))

(assert (=> b!1743566 m!2153515))

(declare-fun m!2155115 () Bool)

(assert (=> b!1743566 m!2155115))

(declare-fun m!2155117 () Bool)

(assert (=> b!1743566 m!2155117))

(assert (=> b!1743565 m!2155111))

(declare-fun m!2155119 () Bool)

(assert (=> b!1743565 m!2155119))

(assert (=> b!1743569 m!2155111))

(assert (=> b!1743563 m!2155111))

(declare-fun m!2155121 () Bool)

(assert (=> b!1743563 m!2155121))

(assert (=> b!1743563 m!2155121))

(declare-fun m!2155123 () Bool)

(assert (=> b!1743563 m!2155123))

(declare-fun m!2155125 () Bool)

(assert (=> d!532835 m!2155125))

(declare-fun m!2155127 () Bool)

(assert (=> d!532835 m!2155127))

(declare-fun m!2155129 () Bool)

(assert (=> d!532835 m!2155129))

(declare-fun m!2155131 () Bool)

(assert (=> d!532835 m!2155131))

(assert (=> b!1743562 m!2155111))

(declare-fun m!2155133 () Bool)

(assert (=> b!1743562 m!2155133))

(assert (=> b!1743562 m!2155133))

(declare-fun m!2155135 () Bool)

(assert (=> b!1743562 m!2155135))

(assert (=> b!1743562 m!2155135))

(declare-fun m!2155137 () Bool)

(assert (=> b!1743562 m!2155137))

(assert (=> b!1743567 m!2155111))

(assert (=> b!1743567 m!2155133))

(assert (=> b!1743567 m!2155133))

(assert (=> b!1743567 m!2155135))

(assert (=> b!1743567 m!2155135))

(declare-fun m!2155139 () Bool)

(assert (=> b!1743567 m!2155139))

(assert (=> b!1743568 m!2153515))

(declare-fun m!2155141 () Bool)

(assert (=> b!1743568 m!2155141))

(assert (=> b!1743568 m!2155043))

(assert (=> b!1743568 m!2153515))

(assert (=> b!1743568 m!2155115))

(assert (=> b!1743568 m!2155141))

(declare-fun m!2155143 () Bool)

(assert (=> b!1743568 m!2155143))

(declare-fun m!2155145 () Bool)

(assert (=> b!1743568 m!2155145))

(assert (=> b!1743568 m!2155043))

(assert (=> b!1743568 m!2155141))

(declare-fun m!2155147 () Bool)

(assert (=> b!1743568 m!2155147))

(assert (=> b!1743568 m!2155141))

(declare-fun m!2155149 () Bool)

(assert (=> b!1743568 m!2155149))

(declare-fun m!2155151 () Bool)

(assert (=> b!1743568 m!2155151))

(assert (=> bm!110089 d!532835))

(declare-fun b!1743570 () Bool)

(declare-fun e!1115885 () Option!3851)

(assert (=> b!1743570 (= e!1115885 None!3850)))

(declare-fun b!1743571 () Bool)

(declare-fun e!1115884 () Bool)

(declare-fun e!1115887 () Bool)

(assert (=> b!1743571 (= e!1115884 e!1115887)))

(declare-fun res!783927 () Bool)

(assert (=> b!1743571 (=> (not res!783927) (not e!1115887))))

(declare-fun lt!672259 () Option!3851)

(assert (=> b!1743571 (= res!783927 (matchR!2215 (regex!3413 (h!24556 rules!3447)) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672259))))))))

(declare-fun b!1743572 () Bool)

(declare-fun res!783930 () Bool)

(assert (=> b!1743572 (=> (not res!783930) (not e!1115887))))

(assert (=> b!1743572 (= res!783930 (= (value!106943 (_1!10801 (get!5774 lt!672259))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672259)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672259)))))))))

(declare-fun b!1743573 () Bool)

(declare-fun res!783926 () Bool)

(assert (=> b!1743573 (=> (not res!783926) (not e!1115887))))

(assert (=> b!1743573 (= res!783926 (< (size!15214 (_2!10801 (get!5774 lt!672259))) (size!15214 lt!671803)))))

(declare-fun b!1743574 () Bool)

(assert (=> b!1743574 (= e!1115887 (= (size!15212 (_1!10801 (get!5774 lt!672259))) (size!15214 (originalCharacters!4227 (_1!10801 (get!5774 lt!672259))))))))

(declare-fun b!1743575 () Bool)

(declare-fun e!1115886 () Bool)

(assert (=> b!1743575 (= e!1115886 (matchR!2215 (regex!3413 (h!24556 rules!3447)) (_1!10805 (findLongestMatchInner!425 (regex!3413 (h!24556 rules!3447)) Nil!19154 (size!15214 Nil!19154) lt!671803 lt!671803 (size!15214 lt!671803)))))))

(declare-fun b!1743576 () Bool)

(declare-fun res!783929 () Bool)

(assert (=> b!1743576 (=> (not res!783929) (not e!1115887))))

(assert (=> b!1743576 (= res!783929 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672259)))) (_2!10801 (get!5774 lt!672259))) lt!671803))))

(declare-fun d!532837 () Bool)

(assert (=> d!532837 e!1115884))

(declare-fun res!783931 () Bool)

(assert (=> d!532837 (=> res!783931 e!1115884)))

(assert (=> d!532837 (= res!783931 (isEmpty!12061 lt!672259))))

(assert (=> d!532837 (= lt!672259 e!1115885)))

(declare-fun c!284519 () Bool)

(declare-fun lt!672257 () tuple2!18806)

(assert (=> d!532837 (= c!284519 (isEmpty!12057 (_1!10805 lt!672257)))))

(assert (=> d!532837 (= lt!672257 (findLongestMatch!352 (regex!3413 (h!24556 rules!3447)) lt!671803))))

(assert (=> d!532837 (ruleValid!912 thiss!24550 (h!24556 rules!3447))))

(assert (=> d!532837 (= (maxPrefixOneRule!968 thiss!24550 (h!24556 rules!3447) lt!671803) lt!672259)))

(declare-fun b!1743577 () Bool)

(assert (=> b!1743577 (= e!1115885 (Some!3850 (tuple2!18799 (Token!6393 (apply!5214 (transformation!3413 (h!24556 rules!3447)) (seqFromList!2383 (_1!10805 lt!672257))) (h!24556 rules!3447) (size!15220 (seqFromList!2383 (_1!10805 lt!672257))) (_1!10805 lt!672257)) (_2!10805 lt!672257))))))

(declare-fun lt!672261 () Unit!33221)

(assert (=> b!1743577 (= lt!672261 (longestMatchIsAcceptedByMatchOrIsEmpty!409 (regex!3413 (h!24556 rules!3447)) lt!671803))))

(declare-fun res!783932 () Bool)

(assert (=> b!1743577 (= res!783932 (isEmpty!12057 (_1!10805 (findLongestMatchInner!425 (regex!3413 (h!24556 rules!3447)) Nil!19154 (size!15214 Nil!19154) lt!671803 lt!671803 (size!15214 lt!671803)))))))

(assert (=> b!1743577 (=> res!783932 e!1115886)))

(assert (=> b!1743577 e!1115886))

(declare-fun lt!672260 () Unit!33221)

(assert (=> b!1743577 (= lt!672260 lt!672261)))

(declare-fun lt!672258 () Unit!33221)

(assert (=> b!1743577 (= lt!672258 (lemmaSemiInverse!553 (transformation!3413 (h!24556 rules!3447)) (seqFromList!2383 (_1!10805 lt!672257))))))

(declare-fun b!1743578 () Bool)

(declare-fun res!783928 () Bool)

(assert (=> b!1743578 (=> (not res!783928) (not e!1115887))))

(assert (=> b!1743578 (= res!783928 (= (rule!5415 (_1!10801 (get!5774 lt!672259))) (h!24556 rules!3447)))))

(assert (= (and d!532837 c!284519) b!1743570))

(assert (= (and d!532837 (not c!284519)) b!1743577))

(assert (= (and b!1743577 (not res!783932)) b!1743575))

(assert (= (and d!532837 (not res!783931)) b!1743571))

(assert (= (and b!1743571 res!783927) b!1743576))

(assert (= (and b!1743576 res!783929) b!1743573))

(assert (= (and b!1743573 res!783926) b!1743578))

(assert (= (and b!1743578 res!783928) b!1743572))

(assert (= (and b!1743572 res!783930) b!1743574))

(declare-fun m!2155153 () Bool)

(assert (=> b!1743573 m!2155153))

(declare-fun m!2155155 () Bool)

(assert (=> b!1743573 m!2155155))

(assert (=> b!1743573 m!2153573))

(assert (=> b!1743575 m!2155043))

(assert (=> b!1743575 m!2153573))

(assert (=> b!1743575 m!2155043))

(assert (=> b!1743575 m!2153573))

(declare-fun m!2155157 () Bool)

(assert (=> b!1743575 m!2155157))

(declare-fun m!2155159 () Bool)

(assert (=> b!1743575 m!2155159))

(assert (=> b!1743574 m!2155153))

(declare-fun m!2155161 () Bool)

(assert (=> b!1743574 m!2155161))

(assert (=> b!1743578 m!2155153))

(assert (=> b!1743572 m!2155153))

(declare-fun m!2155163 () Bool)

(assert (=> b!1743572 m!2155163))

(assert (=> b!1743572 m!2155163))

(declare-fun m!2155165 () Bool)

(assert (=> b!1743572 m!2155165))

(declare-fun m!2155167 () Bool)

(assert (=> d!532837 m!2155167))

(declare-fun m!2155169 () Bool)

(assert (=> d!532837 m!2155169))

(declare-fun m!2155171 () Bool)

(assert (=> d!532837 m!2155171))

(assert (=> d!532837 m!2155131))

(assert (=> b!1743571 m!2155153))

(declare-fun m!2155173 () Bool)

(assert (=> b!1743571 m!2155173))

(assert (=> b!1743571 m!2155173))

(declare-fun m!2155175 () Bool)

(assert (=> b!1743571 m!2155175))

(assert (=> b!1743571 m!2155175))

(declare-fun m!2155177 () Bool)

(assert (=> b!1743571 m!2155177))

(assert (=> b!1743576 m!2155153))

(assert (=> b!1743576 m!2155173))

(assert (=> b!1743576 m!2155173))

(assert (=> b!1743576 m!2155175))

(assert (=> b!1743576 m!2155175))

(declare-fun m!2155179 () Bool)

(assert (=> b!1743576 m!2155179))

(assert (=> b!1743577 m!2153573))

(declare-fun m!2155181 () Bool)

(assert (=> b!1743577 m!2155181))

(assert (=> b!1743577 m!2155043))

(assert (=> b!1743577 m!2153573))

(assert (=> b!1743577 m!2155157))

(assert (=> b!1743577 m!2155181))

(declare-fun m!2155183 () Bool)

(assert (=> b!1743577 m!2155183))

(declare-fun m!2155185 () Bool)

(assert (=> b!1743577 m!2155185))

(assert (=> b!1743577 m!2155043))

(assert (=> b!1743577 m!2155181))

(declare-fun m!2155187 () Bool)

(assert (=> b!1743577 m!2155187))

(assert (=> b!1743577 m!2155181))

(declare-fun m!2155189 () Bool)

(assert (=> b!1743577 m!2155189))

(declare-fun m!2155191 () Bool)

(assert (=> b!1743577 m!2155191))

(assert (=> bm!110092 d!532837))

(declare-fun d!532839 () Bool)

(assert (=> d!532839 true))

(assert (=> d!532839 true))

(declare-fun res!783935 () Bool)

(assert (=> d!532839 (= (choose!10731 lambda!69608) res!783935)))

(assert (=> d!532305 d!532839))

(assert (=> b!1742321 d!532743))

(declare-fun b!1743582 () Bool)

(declare-fun e!1115890 () Bool)

(assert (=> b!1743582 (= e!1115890 (>= (size!15214 (tail!2601 lt!671803)) (size!15214 (tail!2601 lt!671799))))))

(declare-fun b!1743580 () Bool)

(declare-fun res!783936 () Bool)

(declare-fun e!1115889 () Bool)

(assert (=> b!1743580 (=> (not res!783936) (not e!1115889))))

(assert (=> b!1743580 (= res!783936 (= (head!3996 (tail!2601 lt!671799)) (head!3996 (tail!2601 lt!671803))))))

(declare-fun b!1743581 () Bool)

(assert (=> b!1743581 (= e!1115889 (isPrefix!1654 (tail!2601 (tail!2601 lt!671799)) (tail!2601 (tail!2601 lt!671803))))))

(declare-fun d!532841 () Bool)

(assert (=> d!532841 e!1115890))

(declare-fun res!783938 () Bool)

(assert (=> d!532841 (=> res!783938 e!1115890)))

(declare-fun lt!672262 () Bool)

(assert (=> d!532841 (= res!783938 (not lt!672262))))

(declare-fun e!1115888 () Bool)

(assert (=> d!532841 (= lt!672262 e!1115888)))

(declare-fun res!783937 () Bool)

(assert (=> d!532841 (=> res!783937 e!1115888)))

(assert (=> d!532841 (= res!783937 ((_ is Nil!19154) (tail!2601 lt!671799)))))

(assert (=> d!532841 (= (isPrefix!1654 (tail!2601 lt!671799) (tail!2601 lt!671803)) lt!672262)))

(declare-fun b!1743579 () Bool)

(assert (=> b!1743579 (= e!1115888 e!1115889)))

(declare-fun res!783939 () Bool)

(assert (=> b!1743579 (=> (not res!783939) (not e!1115889))))

(assert (=> b!1743579 (= res!783939 (not ((_ is Nil!19154) (tail!2601 lt!671803))))))

(assert (= (and d!532841 (not res!783937)) b!1743579))

(assert (= (and b!1743579 res!783939) b!1743580))

(assert (= (and b!1743580 res!783936) b!1743581))

(assert (= (and d!532841 (not res!783938)) b!1743582))

(assert (=> b!1743582 m!2153581))

(assert (=> b!1743582 m!2154875))

(assert (=> b!1743582 m!2153533))

(declare-fun m!2155193 () Bool)

(assert (=> b!1743582 m!2155193))

(assert (=> b!1743580 m!2153533))

(declare-fun m!2155195 () Bool)

(assert (=> b!1743580 m!2155195))

(assert (=> b!1743580 m!2153581))

(assert (=> b!1743580 m!2154881))

(assert (=> b!1743581 m!2153533))

(declare-fun m!2155197 () Bool)

(assert (=> b!1743581 m!2155197))

(assert (=> b!1743581 m!2153581))

(assert (=> b!1743581 m!2154885))

(assert (=> b!1743581 m!2155197))

(assert (=> b!1743581 m!2154885))

(declare-fun m!2155199 () Bool)

(assert (=> b!1743581 m!2155199))

(assert (=> b!1742487 d!532841))

(assert (=> b!1742487 d!532629))

(assert (=> b!1742487 d!532733))

(declare-fun bs!403151 () Bool)

(declare-fun d!532843 () Bool)

(assert (= bs!403151 (and d!532843 b!1741985)))

(declare-fun lambda!69661 () Int)

(assert (=> bs!403151 (= lambda!69661 lambda!69608)))

(declare-fun bs!403152 () Bool)

(assert (= bs!403152 (and d!532843 d!532729)))

(assert (=> bs!403152 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toChars!4779 (transformation!3413 (h!24556 rules!3447)))) (= (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (h!24556 rules!3447))))) (= lambda!69661 lambda!69657))))

(declare-fun bs!403153 () Bool)

(assert (= bs!403153 (and d!532843 d!532831)))

(assert (=> bs!403153 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toChars!4779 (transformation!3413 rule!422))) (= (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 rule!422)))) (= lambda!69661 lambda!69660))))

(assert (=> d!532843 true))

(assert (=> d!532843 (< (dynLambda!9052 order!11955 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (dynLambda!9051 order!11953 lambda!69661))))

(assert (=> d!532843 true))

(assert (=> d!532843 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (dynLambda!9051 order!11953 lambda!69661))))

(assert (=> d!532843 (= (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (Forall!782 lambda!69661))))

(declare-fun bs!403154 () Bool)

(assert (= bs!403154 d!532843))

(declare-fun m!2155201 () Bool)

(assert (=> bs!403154 m!2155201))

(assert (=> d!532307 d!532843))

(declare-fun d!532845 () Bool)

(assert (=> d!532845 (= (nullable!1436 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (nullableFct!327 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun bs!403155 () Bool)

(assert (= bs!403155 d!532845))

(declare-fun m!2155203 () Bool)

(assert (=> bs!403155 m!2155203))

(assert (=> b!1742329 d!532845))

(declare-fun d!532847 () Bool)

(declare-fun c!284520 () Bool)

(assert (=> d!532847 (= c!284520 ((_ is Nil!19154) lt!671897))))

(declare-fun e!1115891 () (InoxSet C!9656))

(assert (=> d!532847 (= (content!2748 lt!671897) e!1115891)))

(declare-fun b!1743583 () Bool)

(assert (=> b!1743583 (= e!1115891 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743584 () Bool)

(assert (=> b!1743584 (= e!1115891 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 lt!671897) true) (content!2748 (t!161923 lt!671897))))))

(assert (= (and d!532847 c!284520) b!1743583))

(assert (= (and d!532847 (not c!284520)) b!1743584))

(declare-fun m!2155205 () Bool)

(assert (=> b!1743584 m!2155205))

(declare-fun m!2155207 () Bool)

(assert (=> b!1743584 m!2155207))

(assert (=> d!532243 d!532847))

(declare-fun d!532849 () Bool)

(declare-fun c!284521 () Bool)

(assert (=> d!532849 (= c!284521 ((_ is Nil!19154) lt!671799))))

(declare-fun e!1115892 () (InoxSet C!9656))

(assert (=> d!532849 (= (content!2748 lt!671799) e!1115892)))

(declare-fun b!1743585 () Bool)

(assert (=> b!1743585 (= e!1115892 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743586 () Bool)

(assert (=> b!1743586 (= e!1115892 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 lt!671799) true) (content!2748 (t!161923 lt!671799))))))

(assert (= (and d!532849 c!284521) b!1743585))

(assert (= (and d!532849 (not c!284521)) b!1743586))

(declare-fun m!2155209 () Bool)

(assert (=> b!1743586 m!2155209))

(assert (=> b!1743586 m!2154543))

(assert (=> d!532243 d!532849))

(declare-fun d!532851 () Bool)

(declare-fun c!284522 () Bool)

(assert (=> d!532851 (= c!284522 ((_ is Nil!19154) (_2!10801 lt!671797)))))

(declare-fun e!1115893 () (InoxSet C!9656))

(assert (=> d!532851 (= (content!2748 (_2!10801 lt!671797)) e!1115893)))

(declare-fun b!1743587 () Bool)

(assert (=> b!1743587 (= e!1115893 ((as const (Array C!9656 Bool)) false))))

(declare-fun b!1743588 () Bool)

(assert (=> b!1743588 (= e!1115893 ((_ map or) (store ((as const (Array C!9656 Bool)) false) (h!24555 (_2!10801 lt!671797)) true) (content!2748 (t!161923 (_2!10801 lt!671797)))))))

(assert (= (and d!532851 c!284522) b!1743587))

(assert (= (and d!532851 (not c!284522)) b!1743588))

(declare-fun m!2155211 () Bool)

(assert (=> b!1743588 m!2155211))

(declare-fun m!2155213 () Bool)

(assert (=> b!1743588 m!2155213))

(assert (=> d!532243 d!532851))

(declare-fun d!532853 () Bool)

(assert (=> d!532853 (= (inv!24814 (tag!3753 (h!24556 (t!161924 rules!3447)))) (= (mod (str.len (value!106942 (tag!3753 (h!24556 (t!161924 rules!3447))))) 2) 0))))

(assert (=> b!1742554 d!532853))

(declare-fun d!532855 () Bool)

(declare-fun res!783940 () Bool)

(declare-fun e!1115894 () Bool)

(assert (=> d!532855 (=> (not res!783940) (not e!1115894))))

(assert (=> d!532855 (= res!783940 (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toValue!4920 (transformation!3413 (h!24556 (t!161924 rules!3447))))))))

(assert (=> d!532855 (= (inv!24817 (transformation!3413 (h!24556 (t!161924 rules!3447)))) e!1115894)))

(declare-fun b!1743589 () Bool)

(assert (=> b!1743589 (= e!1115894 (equivClasses!1290 (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toValue!4920 (transformation!3413 (h!24556 (t!161924 rules!3447))))))))

(assert (= (and d!532855 res!783940) b!1743589))

(declare-fun m!2155215 () Bool)

(assert (=> d!532855 m!2155215))

(declare-fun m!2155217 () Bool)

(assert (=> b!1743589 m!2155217))

(assert (=> b!1742554 d!532855))

(assert (=> b!1742232 d!532799))

(declare-fun d!532857 () Bool)

(assert (=> d!532857 (= (list!7746 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))) (list!7748 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))))))

(declare-fun bs!403156 () Bool)

(assert (= bs!403156 d!532857))

(declare-fun m!2155219 () Bool)

(assert (=> bs!403156 m!2155219))

(assert (=> b!1742143 d!532857))

(assert (=> b!1742310 d!532635))

(declare-fun d!532859 () Bool)

(declare-fun dynLambda!9060 (Int BalanceConc!12686) TokenValue!3503)

(assert (=> d!532859 (= (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892))))) (dynLambda!9060 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892))))))))

(declare-fun b_lambda!55841 () Bool)

(assert (=> (not b_lambda!55841) (not d!532859)))

(declare-fun t!162044 () Bool)

(declare-fun tb!104245 () Bool)

(assert (=> (and b!1741996 (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162044) tb!104245))

(declare-fun result!125384 () Bool)

(assert (=> tb!104245 (= result!125384 (inv!21 (dynLambda!9060 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892))))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun m!2155221 () Bool)

(assert (=> tb!104245 m!2155221))

(assert (=> d!532859 t!162044))

(declare-fun b_and!129645 () Bool)

(assert (= b_and!129521 (and (=> t!162044 result!125384) b_and!129645)))

(declare-fun tb!104247 () Bool)

(declare-fun t!162046 () Bool)

(assert (=> (and b!1741986 (= (toValue!4920 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162046) tb!104247))

(declare-fun result!125388 () Bool)

(assert (= result!125388 result!125384))

(assert (=> d!532859 t!162046))

(declare-fun b_and!129647 () Bool)

(assert (= b_and!129525 (and (=> t!162046 result!125388) b_and!129647)))

(declare-fun tb!104249 () Bool)

(declare-fun t!162048 () Bool)

(assert (=> (and b!1741978 (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162048) tb!104249))

(declare-fun result!125390 () Bool)

(assert (= result!125390 result!125384))

(assert (=> d!532859 t!162048))

(declare-fun b_and!129649 () Bool)

(assert (= b_and!129529 (and (=> t!162048 result!125390) b_and!129649)))

(declare-fun tb!104251 () Bool)

(declare-fun t!162050 () Bool)

(assert (=> (and b!1742555 (= (toValue!4920 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162050) tb!104251))

(declare-fun result!125392 () Bool)

(assert (= result!125392 result!125384))

(assert (=> d!532859 t!162050))

(declare-fun b_and!129651 () Bool)

(assert (= b_and!129573 (and (=> t!162050 result!125392) b_and!129651)))

(assert (=> d!532859 m!2153495))

(declare-fun m!2155223 () Bool)

(assert (=> d!532859 m!2155223))

(assert (=> b!1742310 d!532859))

(declare-fun d!532861 () Bool)

(declare-fun fromListB!1088 (List!19224) BalanceConc!12686)

(assert (=> d!532861 (= (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892)))) (fromListB!1088 (originalCharacters!4227 (_1!10801 (get!5774 lt!671892)))))))

(declare-fun bs!403157 () Bool)

(assert (= bs!403157 d!532861))

(declare-fun m!2155225 () Bool)

(assert (=> bs!403157 m!2155225))

(assert (=> b!1742310 d!532861))

(assert (=> b!1742481 d!532643))

(declare-fun d!532863 () Bool)

(assert (=> d!532863 (= (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031))))) (dynLambda!9060 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031))))))))

(declare-fun b_lambda!55843 () Bool)

(assert (=> (not b_lambda!55843) (not d!532863)))

(declare-fun tb!104253 () Bool)

(declare-fun t!162052 () Bool)

(assert (=> (and b!1741996 (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162052) tb!104253))

(declare-fun result!125394 () Bool)

(assert (=> tb!104253 (= result!125394 (inv!21 (dynLambda!9060 (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031))))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun m!2155227 () Bool)

(assert (=> tb!104253 m!2155227))

(assert (=> d!532863 t!162052))

(declare-fun b_and!129653 () Bool)

(assert (= b_and!129645 (and (=> t!162052 result!125394) b_and!129653)))

(declare-fun tb!104255 () Bool)

(declare-fun t!162054 () Bool)

(assert (=> (and b!1741986 (= (toValue!4920 (transformation!3413 (h!24556 rules!3447))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162054) tb!104255))

(declare-fun result!125396 () Bool)

(assert (= result!125396 result!125394))

(assert (=> d!532863 t!162054))

(declare-fun b_and!129655 () Bool)

(assert (= b_and!129647 (and (=> t!162054 result!125396) b_and!129655)))

(declare-fun tb!104257 () Bool)

(declare-fun t!162056 () Bool)

(assert (=> (and b!1741978 (= (toValue!4920 (transformation!3413 rule!422)) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162056) tb!104257))

(declare-fun result!125398 () Bool)

(assert (= result!125398 result!125394))

(assert (=> d!532863 t!162056))

(declare-fun b_and!129657 () Bool)

(assert (= b_and!129649 (and (=> t!162056 result!125398) b_and!129657)))

(declare-fun tb!104259 () Bool)

(declare-fun t!162058 () Bool)

(assert (=> (and b!1742555 (= (toValue!4920 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162058) tb!104259))

(declare-fun result!125400 () Bool)

(assert (= result!125400 result!125394))

(assert (=> d!532863 t!162058))

(declare-fun b_and!129659 () Bool)

(assert (= b_and!129651 (and (=> t!162058 result!125400) b_and!129659)))

(assert (=> d!532863 m!2153781))

(declare-fun m!2155229 () Bool)

(assert (=> d!532863 m!2155229))

(assert (=> b!1742481 d!532863))

(declare-fun d!532865 () Bool)

(assert (=> d!532865 (= (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031)))) (fromListB!1088 (originalCharacters!4227 (_1!10801 (get!5774 lt!672031)))))))

(declare-fun bs!403158 () Bool)

(assert (= bs!403158 d!532865))

(declare-fun m!2155231 () Bool)

(assert (=> bs!403158 m!2155231))

(assert (=> b!1742481 d!532865))

(assert (=> b!1742359 d!532765))

(assert (=> b!1742359 d!532753))

(declare-fun d!532867 () Bool)

(declare-fun lt!672263 () Int)

(assert (=> d!532867 (>= lt!672263 0)))

(declare-fun e!1115899 () Int)

(assert (=> d!532867 (= lt!672263 e!1115899)))

(declare-fun c!284523 () Bool)

(assert (=> d!532867 (= c!284523 ((_ is Nil!19154) lt!671901))))

(assert (=> d!532867 (= (size!15214 lt!671901) lt!672263)))

(declare-fun b!1743592 () Bool)

(assert (=> b!1743592 (= e!1115899 0)))

(declare-fun b!1743593 () Bool)

(assert (=> b!1743593 (= e!1115899 (+ 1 (size!15214 (t!161923 lt!671901))))))

(assert (= (and d!532867 c!284523) b!1743592))

(assert (= (and d!532867 (not c!284523)) b!1743593))

(declare-fun m!2155233 () Bool)

(assert (=> b!1743593 m!2155233))

(assert (=> b!1742346 d!532867))

(assert (=> b!1742346 d!532753))

(declare-fun d!532869 () Bool)

(declare-fun lt!672264 () Int)

(assert (=> d!532869 (>= lt!672264 0)))

(declare-fun e!1115900 () Int)

(assert (=> d!532869 (= lt!672264 e!1115900)))

(declare-fun c!284524 () Bool)

(assert (=> d!532869 (= c!284524 ((_ is Nil!19154) suffix!1421))))

(assert (=> d!532869 (= (size!15214 suffix!1421) lt!672264)))

(declare-fun b!1743594 () Bool)

(assert (=> b!1743594 (= e!1115900 0)))

(declare-fun b!1743595 () Bool)

(assert (=> b!1743595 (= e!1115900 (+ 1 (size!15214 (t!161923 suffix!1421))))))

(assert (= (and d!532869 c!284524) b!1743594))

(assert (= (and d!532869 (not c!284524)) b!1743595))

(declare-fun m!2155235 () Bool)

(assert (=> b!1743595 m!2155235))

(assert (=> b!1742346 d!532869))

(assert (=> d!532245 d!532273))

(assert (=> d!532245 d!532243))

(declare-fun d!532871 () Bool)

(assert (=> d!532871 (isPrefix!1654 lt!671799 (++!5238 lt!671799 (_2!10801 lt!671797)))))

(assert (=> d!532871 true))

(declare-fun _$46!1193 () Unit!33221)

(assert (=> d!532871 (= (choose!10728 lt!671799 (_2!10801 lt!671797)) _$46!1193)))

(declare-fun bs!403159 () Bool)

(assert (= bs!403159 d!532871))

(assert (=> bs!403159 m!2153149))

(assert (=> bs!403159 m!2153149))

(assert (=> bs!403159 m!2153153))

(assert (=> d!532245 d!532871))

(declare-fun bs!403160 () Bool)

(declare-fun d!532873 () Bool)

(assert (= bs!403160 (and d!532873 b!1741985)))

(declare-fun lambda!69662 () Int)

(assert (=> bs!403160 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (= lambda!69662 lambda!69608))))

(declare-fun bs!403161 () Bool)

(assert (= bs!403161 (and d!532873 d!532729)))

(assert (=> bs!403161 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (h!24556 rules!3447)))) (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (h!24556 rules!3447))))) (= lambda!69662 lambda!69657))))

(declare-fun bs!403162 () Bool)

(assert (= bs!403162 (and d!532873 d!532831)))

(assert (=> bs!403162 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 rule!422))) (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 rule!422)))) (= lambda!69662 lambda!69660))))

(declare-fun bs!403163 () Bool)

(assert (= bs!403163 (and d!532873 d!532843)))

(assert (=> bs!403163 (= (and (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) (= (toValue!4920 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (= lambda!69662 lambda!69661))))

(assert (=> d!532873 true))

(assert (=> d!532873 (< (dynLambda!9052 order!11955 (toChars!4779 (transformation!3413 (rule!5415 token!523)))) (dynLambda!9051 order!11953 lambda!69662))))

(assert (=> d!532873 true))

(assert (=> d!532873 (< (dynLambda!9050 order!11951 (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (dynLambda!9051 order!11953 lambda!69662))))

(assert (=> d!532873 (= (semiInverseModEq!1349 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toValue!4920 (transformation!3413 (rule!5415 token!523)))) (Forall!782 lambda!69662))))

(declare-fun bs!403164 () Bool)

(assert (= bs!403164 d!532873))

(declare-fun m!2155237 () Bool)

(assert (=> bs!403164 m!2155237))

(assert (=> d!532295 d!532873))

(assert (=> b!1742455 d!532743))

(declare-fun d!532875 () Bool)

(assert (=> d!532875 (= (head!3996 (++!5238 lt!671799 (_2!10801 lt!671797))) (h!24555 (++!5238 lt!671799 (_2!10801 lt!671797))))))

(assert (=> b!1742455 d!532875))

(declare-fun d!532877 () Bool)

(assert (=> d!532877 (= (isEmpty!12057 lt!671800) ((_ is Nil!19154) lt!671800))))

(assert (=> d!532287 d!532877))

(assert (=> d!532287 d!532719))

(declare-fun d!532879 () Bool)

(assert (=> d!532879 (= (get!5774 (maxPrefix!1596 thiss!24550 rules!3447 lt!671800)) (v!25283 (maxPrefix!1596 thiss!24550 rules!3447 lt!671800)))))

(assert (=> d!532251 d!532879))

(assert (=> d!532251 d!532247))

(declare-fun d!532881 () Bool)

(declare-fun list!7754 (Conc!6373) List!19229)

(assert (=> d!532881 (= (list!7750 (_1!10803 (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800)))) (list!7754 (c!284263 (_1!10803 (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800))))))))

(declare-fun bs!403165 () Bool)

(assert (= bs!403165 d!532881))

(declare-fun m!2155239 () Bool)

(assert (=> bs!403165 m!2155239))

(assert (=> d!532251 d!532881))

(declare-fun d!532883 () Bool)

(assert (=> d!532883 (isPrefix!1654 lt!672002 (++!5238 lt!671800 suffix!1421))))

(declare-fun lt!672267 () Unit!33221)

(declare-fun choose!10740 (List!19224 List!19224 List!19224) Unit!33221)

(assert (=> d!532883 (= lt!672267 (choose!10740 lt!672002 lt!671800 suffix!1421))))

(assert (=> d!532883 (isPrefix!1654 lt!672002 lt!671800)))

(assert (=> d!532883 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!285 lt!672002 lt!671800 suffix!1421) lt!672267)))

(declare-fun bs!403166 () Bool)

(assert (= bs!403166 d!532883))

(assert (=> bs!403166 m!2153155))

(assert (=> bs!403166 m!2153155))

(assert (=> bs!403166 m!2153705))

(declare-fun m!2155241 () Bool)

(assert (=> bs!403166 m!2155241))

(declare-fun m!2155243 () Bool)

(assert (=> bs!403166 m!2155243))

(assert (=> d!532251 d!532883))

(declare-fun d!532885 () Bool)

(assert (=> d!532885 (= (isEmpty!12061 (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421))) (not ((_ is Some!3850) (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421)))))))

(assert (=> d!532251 d!532885))

(declare-fun d!532887 () Bool)

(assert (=> d!532887 (= (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))) (not (isEmpty!12062 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))

(declare-fun bs!403167 () Bool)

(assert (= bs!403167 d!532887))

(assert (=> bs!403167 m!2153701))

(declare-fun m!2155245 () Bool)

(assert (=> bs!403167 m!2155245))

(assert (=> d!532251 d!532887))

(declare-fun d!532889 () Bool)

(assert (=> d!532889 (= (isDefined!3194 (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421))) (not (isEmpty!12061 (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421)))))))

(declare-fun bs!403168 () Bool)

(assert (= bs!403168 d!532889))

(assert (=> bs!403168 m!2153713))

(assert (=> bs!403168 m!2153717))

(assert (=> d!532251 d!532889))

(assert (=> d!532251 d!532617))

(assert (=> d!532251 d!532619))

(declare-fun b!1743599 () Bool)

(declare-fun e!1115903 () Bool)

(assert (=> b!1743599 (= e!1115903 (>= (size!15214 (++!5238 lt!671800 suffix!1421)) (size!15214 lt!672002)))))

(declare-fun b!1743597 () Bool)

(declare-fun res!783941 () Bool)

(declare-fun e!1115902 () Bool)

(assert (=> b!1743597 (=> (not res!783941) (not e!1115902))))

(assert (=> b!1743597 (= res!783941 (= (head!3996 lt!672002) (head!3996 (++!5238 lt!671800 suffix!1421))))))

(declare-fun b!1743598 () Bool)

(assert (=> b!1743598 (= e!1115902 (isPrefix!1654 (tail!2601 lt!672002) (tail!2601 (++!5238 lt!671800 suffix!1421))))))

(declare-fun d!532891 () Bool)

(assert (=> d!532891 e!1115903))

(declare-fun res!783943 () Bool)

(assert (=> d!532891 (=> res!783943 e!1115903)))

(declare-fun lt!672268 () Bool)

(assert (=> d!532891 (= res!783943 (not lt!672268))))

(declare-fun e!1115901 () Bool)

(assert (=> d!532891 (= lt!672268 e!1115901)))

(declare-fun res!783942 () Bool)

(assert (=> d!532891 (=> res!783942 e!1115901)))

(assert (=> d!532891 (= res!783942 ((_ is Nil!19154) lt!672002))))

(assert (=> d!532891 (= (isPrefix!1654 lt!672002 (++!5238 lt!671800 suffix!1421)) lt!672268)))

(declare-fun b!1743596 () Bool)

(assert (=> b!1743596 (= e!1115901 e!1115902)))

(declare-fun res!783944 () Bool)

(assert (=> b!1743596 (=> (not res!783944) (not e!1115902))))

(assert (=> b!1743596 (= res!783944 (not ((_ is Nil!19154) (++!5238 lt!671800 suffix!1421))))))

(assert (= (and d!532891 (not res!783942)) b!1743596))

(assert (= (and b!1743596 res!783944) b!1743597))

(assert (= (and b!1743597 res!783941) b!1743598))

(assert (= (and d!532891 (not res!783943)) b!1743599))

(assert (=> b!1743599 m!2153155))

(assert (=> b!1743599 m!2154979))

(declare-fun m!2155247 () Bool)

(assert (=> b!1743599 m!2155247))

(declare-fun m!2155249 () Bool)

(assert (=> b!1743597 m!2155249))

(assert (=> b!1743597 m!2153155))

(assert (=> b!1743597 m!2154981))

(declare-fun m!2155251 () Bool)

(assert (=> b!1743598 m!2155251))

(assert (=> b!1743598 m!2153155))

(assert (=> b!1743598 m!2154983))

(assert (=> b!1743598 m!2155251))

(assert (=> b!1743598 m!2154983))

(declare-fun m!2155253 () Bool)

(assert (=> b!1743598 m!2155253))

(assert (=> d!532251 d!532891))

(assert (=> d!532251 d!532239))

(declare-fun b!1743602 () Bool)

(declare-fun res!783946 () Bool)

(declare-fun e!1115905 () Bool)

(assert (=> b!1743602 (=> (not res!783946) (not e!1115905))))

(declare-fun lt!672269 () List!19224)

(assert (=> b!1743602 (= res!783946 (= (size!15214 lt!672269) (+ (size!15214 lt!672012) (size!15214 lt!672000))))))

(declare-fun b!1743601 () Bool)

(declare-fun e!1115904 () List!19224)

(assert (=> b!1743601 (= e!1115904 (Cons!19154 (h!24555 lt!672012) (++!5238 (t!161923 lt!672012) lt!672000)))))

(declare-fun b!1743600 () Bool)

(assert (=> b!1743600 (= e!1115904 lt!672000)))

(declare-fun b!1743603 () Bool)

(assert (=> b!1743603 (= e!1115905 (or (not (= lt!672000 Nil!19154)) (= lt!672269 lt!672012)))))

(declare-fun d!532893 () Bool)

(assert (=> d!532893 e!1115905))

(declare-fun res!783945 () Bool)

(assert (=> d!532893 (=> (not res!783945) (not e!1115905))))

(assert (=> d!532893 (= res!783945 (= (content!2748 lt!672269) ((_ map or) (content!2748 lt!672012) (content!2748 lt!672000))))))

(assert (=> d!532893 (= lt!672269 e!1115904)))

(declare-fun c!284525 () Bool)

(assert (=> d!532893 (= c!284525 ((_ is Nil!19154) lt!672012))))

(assert (=> d!532893 (= (++!5238 lt!672012 lt!672000) lt!672269)))

(assert (= (and d!532893 c!284525) b!1743600))

(assert (= (and d!532893 (not c!284525)) b!1743601))

(assert (= (and d!532893 res!783945) b!1743602))

(assert (= (and b!1743602 res!783946) b!1743603))

(declare-fun m!2155255 () Bool)

(assert (=> b!1743602 m!2155255))

(declare-fun m!2155257 () Bool)

(assert (=> b!1743602 m!2155257))

(declare-fun m!2155259 () Bool)

(assert (=> b!1743602 m!2155259))

(declare-fun m!2155261 () Bool)

(assert (=> b!1743601 m!2155261))

(declare-fun m!2155263 () Bool)

(assert (=> d!532893 m!2155263))

(declare-fun m!2155265 () Bool)

(assert (=> d!532893 m!2155265))

(declare-fun m!2155267 () Bool)

(assert (=> d!532893 m!2155267))

(assert (=> d!532251 d!532893))

(assert (=> d!532251 d!532613))

(declare-fun b!1743604 () Bool)

(declare-fun res!783950 () Bool)

(declare-fun e!1115907 () Bool)

(assert (=> b!1743604 (=> (not res!783950) (not e!1115907))))

(declare-fun lt!672274 () Option!3851)

(assert (=> b!1743604 (= res!783950 (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672274)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672274))))))))

(declare-fun b!1743605 () Bool)

(assert (=> b!1743605 (= e!1115907 (contains!3435 rules!3447 (rule!5415 (_1!10801 (get!5774 lt!672274)))))))

(declare-fun bm!110180 () Bool)

(declare-fun call!110185 () Option!3851)

(assert (=> bm!110180 (= call!110185 (maxPrefixOneRule!968 thiss!24550 (h!24556 rules!3447) (++!5238 lt!671800 suffix!1421)))))

(declare-fun b!1743606 () Bool)

(declare-fun res!783953 () Bool)

(assert (=> b!1743606 (=> (not res!783953) (not e!1115907))))

(assert (=> b!1743606 (= res!783953 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672274)))) (_2!10801 (get!5774 lt!672274))) (++!5238 lt!671800 suffix!1421)))))

(declare-fun b!1743607 () Bool)

(declare-fun e!1115906 () Option!3851)

(assert (=> b!1743607 (= e!1115906 call!110185)))

(declare-fun b!1743608 () Bool)

(declare-fun e!1115908 () Bool)

(assert (=> b!1743608 (= e!1115908 e!1115907)))

(declare-fun res!783951 () Bool)

(assert (=> b!1743608 (=> (not res!783951) (not e!1115907))))

(assert (=> b!1743608 (= res!783951 (isDefined!3194 lt!672274))))

(declare-fun b!1743609 () Bool)

(declare-fun res!783948 () Bool)

(assert (=> b!1743609 (=> (not res!783948) (not e!1115907))))

(assert (=> b!1743609 (= res!783948 (= (value!106943 (_1!10801 (get!5774 lt!672274))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672274)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672274)))))))))

(declare-fun d!532895 () Bool)

(assert (=> d!532895 e!1115908))

(declare-fun res!783952 () Bool)

(assert (=> d!532895 (=> res!783952 e!1115908)))

(assert (=> d!532895 (= res!783952 (isEmpty!12061 lt!672274))))

(assert (=> d!532895 (= lt!672274 e!1115906)))

(declare-fun c!284526 () Bool)

(assert (=> d!532895 (= c!284526 (and ((_ is Cons!19155) rules!3447) ((_ is Nil!19155) (t!161924 rules!3447))))))

(declare-fun lt!672270 () Unit!33221)

(declare-fun lt!672271 () Unit!33221)

(assert (=> d!532895 (= lt!672270 lt!672271)))

(assert (=> d!532895 (isPrefix!1654 (++!5238 lt!671800 suffix!1421) (++!5238 lt!671800 suffix!1421))))

(assert (=> d!532895 (= lt!672271 (lemmaIsPrefixRefl!1101 (++!5238 lt!671800 suffix!1421) (++!5238 lt!671800 suffix!1421)))))

(assert (=> d!532895 (rulesValidInductive!1138 thiss!24550 rules!3447)))

(assert (=> d!532895 (= (maxPrefix!1596 thiss!24550 rules!3447 (++!5238 lt!671800 suffix!1421)) lt!672274)))

(declare-fun b!1743610 () Bool)

(declare-fun lt!672272 () Option!3851)

(declare-fun lt!672273 () Option!3851)

(assert (=> b!1743610 (= e!1115906 (ite (and ((_ is None!3850) lt!672272) ((_ is None!3850) lt!672273)) None!3850 (ite ((_ is None!3850) lt!672273) lt!672272 (ite ((_ is None!3850) lt!672272) lt!672273 (ite (>= (size!15212 (_1!10801 (v!25283 lt!672272))) (size!15212 (_1!10801 (v!25283 lt!672273)))) lt!672272 lt!672273)))))))

(assert (=> b!1743610 (= lt!672272 call!110185)))

(assert (=> b!1743610 (= lt!672273 (maxPrefix!1596 thiss!24550 (t!161924 rules!3447) (++!5238 lt!671800 suffix!1421)))))

(declare-fun b!1743611 () Bool)

(declare-fun res!783947 () Bool)

(assert (=> b!1743611 (=> (not res!783947) (not e!1115907))))

(assert (=> b!1743611 (= res!783947 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672274)))) (originalCharacters!4227 (_1!10801 (get!5774 lt!672274)))))))

(declare-fun b!1743612 () Bool)

(declare-fun res!783949 () Bool)

(assert (=> b!1743612 (=> (not res!783949) (not e!1115907))))

(assert (=> b!1743612 (= res!783949 (< (size!15214 (_2!10801 (get!5774 lt!672274))) (size!15214 (++!5238 lt!671800 suffix!1421))))))

(assert (= (and d!532895 c!284526) b!1743607))

(assert (= (and d!532895 (not c!284526)) b!1743610))

(assert (= (or b!1743607 b!1743610) bm!110180))

(assert (= (and d!532895 (not res!783952)) b!1743608))

(assert (= (and b!1743608 res!783951) b!1743611))

(assert (= (and b!1743611 res!783947) b!1743612))

(assert (= (and b!1743612 res!783949) b!1743606))

(assert (= (and b!1743606 res!783953) b!1743609))

(assert (= (and b!1743609 res!783948) b!1743604))

(assert (= (and b!1743604 res!783950) b!1743605))

(assert (=> b!1743610 m!2153155))

(declare-fun m!2155269 () Bool)

(assert (=> b!1743610 m!2155269))

(declare-fun m!2155271 () Bool)

(assert (=> b!1743604 m!2155271))

(declare-fun m!2155273 () Bool)

(assert (=> b!1743604 m!2155273))

(assert (=> b!1743604 m!2155273))

(declare-fun m!2155275 () Bool)

(assert (=> b!1743604 m!2155275))

(assert (=> b!1743604 m!2155275))

(declare-fun m!2155277 () Bool)

(assert (=> b!1743604 m!2155277))

(declare-fun m!2155279 () Bool)

(assert (=> b!1743608 m!2155279))

(assert (=> b!1743609 m!2155271))

(declare-fun m!2155281 () Bool)

(assert (=> b!1743609 m!2155281))

(assert (=> b!1743609 m!2155281))

(declare-fun m!2155283 () Bool)

(assert (=> b!1743609 m!2155283))

(assert (=> b!1743606 m!2155271))

(assert (=> b!1743606 m!2155273))

(assert (=> b!1743606 m!2155273))

(assert (=> b!1743606 m!2155275))

(assert (=> b!1743606 m!2155275))

(declare-fun m!2155285 () Bool)

(assert (=> b!1743606 m!2155285))

(declare-fun m!2155287 () Bool)

(assert (=> d!532895 m!2155287))

(assert (=> d!532895 m!2153155))

(assert (=> d!532895 m!2153155))

(declare-fun m!2155289 () Bool)

(assert (=> d!532895 m!2155289))

(assert (=> d!532895 m!2153155))

(assert (=> d!532895 m!2153155))

(declare-fun m!2155291 () Bool)

(assert (=> d!532895 m!2155291))

(assert (=> d!532895 m!2153507))

(assert (=> b!1743605 m!2155271))

(declare-fun m!2155293 () Bool)

(assert (=> b!1743605 m!2155293))

(assert (=> bm!110180 m!2153155))

(declare-fun m!2155295 () Bool)

(assert (=> bm!110180 m!2155295))

(assert (=> b!1743612 m!2155271))

(declare-fun m!2155297 () Bool)

(assert (=> b!1743612 m!2155297))

(assert (=> b!1743612 m!2153155))

(assert (=> b!1743612 m!2154979))

(assert (=> b!1743611 m!2155271))

(assert (=> b!1743611 m!2155273))

(assert (=> b!1743611 m!2155273))

(assert (=> b!1743611 m!2155275))

(assert (=> d!532251 d!532895))

(declare-fun d!532897 () Bool)

(assert (=> d!532897 (= (head!3998 (list!7750 (_1!10803 (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800))))) (h!24560 (list!7750 (_1!10803 (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800))))))))

(assert (=> d!532251 d!532897))

(declare-fun b!1743623 () Bool)

(declare-fun res!783961 () Bool)

(declare-fun e!1115917 () Bool)

(assert (=> b!1743623 (=> (not res!783961) (not e!1115917))))

(declare-fun lt!672277 () tuple2!18802)

(declare-datatypes ((tuple2!18810 0))(
  ( (tuple2!18811 (_1!10807 List!19229) (_2!10807 List!19224)) )
))
(declare-fun lexList!919 (LexerInterface!3042 List!19225 List!19224) tuple2!18810)

(assert (=> b!1743623 (= res!783961 (= (list!7750 (_1!10803 lt!672277)) (_1!10807 (lexList!919 thiss!24550 rules!3447 (list!7746 (seqFromList!2383 lt!671800))))))))

(declare-fun d!532899 () Bool)

(assert (=> d!532899 e!1115917))

(declare-fun res!783960 () Bool)

(assert (=> d!532899 (=> (not res!783960) (not e!1115917))))

(declare-fun e!1115916 () Bool)

(assert (=> d!532899 (= res!783960 e!1115916)))

(declare-fun c!284529 () Bool)

(declare-fun size!15222 (BalanceConc!12690) Int)

(assert (=> d!532899 (= c!284529 (> (size!15222 (_1!10803 lt!672277)) 0))))

(declare-fun lexTailRecV2!642 (LexerInterface!3042 List!19225 BalanceConc!12686 BalanceConc!12686 BalanceConc!12686 BalanceConc!12690) tuple2!18802)

(assert (=> d!532899 (= lt!672277 (lexTailRecV2!642 thiss!24550 rules!3447 (seqFromList!2383 lt!671800) (BalanceConc!12687 Empty!6371) (seqFromList!2383 lt!671800) (BalanceConc!12691 Empty!6373)))))

(assert (=> d!532899 (= (lex!1424 thiss!24550 rules!3447 (seqFromList!2383 lt!671800)) lt!672277)))

(declare-fun b!1743624 () Bool)

(assert (=> b!1743624 (= e!1115917 (= (list!7746 (_2!10803 lt!672277)) (_2!10807 (lexList!919 thiss!24550 rules!3447 (list!7746 (seqFromList!2383 lt!671800))))))))

(declare-fun b!1743625 () Bool)

(declare-fun e!1115915 () Bool)

(assert (=> b!1743625 (= e!1115916 e!1115915)))

(declare-fun res!783962 () Bool)

(assert (=> b!1743625 (= res!783962 (< (size!15220 (_2!10803 lt!672277)) (size!15220 (seqFromList!2383 lt!671800))))))

(assert (=> b!1743625 (=> (not res!783962) (not e!1115915))))

(declare-fun b!1743626 () Bool)

(assert (=> b!1743626 (= e!1115916 (= (_2!10803 lt!672277) (seqFromList!2383 lt!671800)))))

(declare-fun b!1743627 () Bool)

(declare-fun isEmpty!12066 (BalanceConc!12690) Bool)

(assert (=> b!1743627 (= e!1115915 (not (isEmpty!12066 (_1!10803 lt!672277))))))

(assert (= (and d!532899 c!284529) b!1743625))

(assert (= (and d!532899 (not c!284529)) b!1743626))

(assert (= (and b!1743625 res!783962) b!1743627))

(assert (= (and d!532899 res!783960) b!1743623))

(assert (= (and b!1743623 res!783961) b!1743624))

(declare-fun m!2155299 () Bool)

(assert (=> b!1743627 m!2155299))

(declare-fun m!2155301 () Bool)

(assert (=> b!1743625 m!2155301))

(assert (=> b!1743625 m!2153727))

(declare-fun m!2155303 () Bool)

(assert (=> b!1743625 m!2155303))

(declare-fun m!2155305 () Bool)

(assert (=> b!1743623 m!2155305))

(assert (=> b!1743623 m!2153727))

(declare-fun m!2155307 () Bool)

(assert (=> b!1743623 m!2155307))

(assert (=> b!1743623 m!2155307))

(declare-fun m!2155309 () Bool)

(assert (=> b!1743623 m!2155309))

(declare-fun m!2155311 () Bool)

(assert (=> d!532899 m!2155311))

(assert (=> d!532899 m!2153727))

(assert (=> d!532899 m!2153727))

(declare-fun m!2155313 () Bool)

(assert (=> d!532899 m!2155313))

(declare-fun m!2155315 () Bool)

(assert (=> b!1743624 m!2155315))

(assert (=> b!1743624 m!2153727))

(assert (=> b!1743624 m!2155307))

(assert (=> b!1743624 m!2155307))

(assert (=> b!1743624 m!2155309))

(assert (=> d!532251 d!532899))

(declare-fun d!532901 () Bool)

(assert (=> d!532901 (= (seqFromList!2383 lt!671800) (fromListB!1088 lt!671800))))

(declare-fun bs!403169 () Bool)

(assert (= bs!403169 d!532901))

(declare-fun m!2155317 () Bool)

(assert (=> bs!403169 m!2155317))

(assert (=> d!532251 d!532901))

(declare-fun d!532903 () Bool)

(assert (=> d!532903 (isPrefix!1654 lt!672012 (++!5238 lt!672012 lt!672000))))

(declare-fun lt!672278 () Unit!33221)

(assert (=> d!532903 (= lt!672278 (choose!10728 lt!672012 lt!672000))))

(assert (=> d!532903 (= (lemmaConcatTwoListThenFirstIsPrefix!1164 lt!672012 lt!672000) lt!672278)))

(declare-fun bs!403170 () Bool)

(assert (= bs!403170 d!532903))

(assert (=> bs!403170 m!2153711))

(assert (=> bs!403170 m!2153711))

(assert (=> bs!403170 m!2153723))

(declare-fun m!2155319 () Bool)

(assert (=> bs!403170 m!2155319))

(assert (=> d!532251 d!532903))

(declare-fun b!1743631 () Bool)

(declare-fun e!1115920 () Bool)

(assert (=> b!1743631 (= e!1115920 (>= (size!15214 (++!5238 lt!672012 lt!672000)) (size!15214 lt!672012)))))

(declare-fun b!1743629 () Bool)

(declare-fun res!783963 () Bool)

(declare-fun e!1115919 () Bool)

(assert (=> b!1743629 (=> (not res!783963) (not e!1115919))))

(assert (=> b!1743629 (= res!783963 (= (head!3996 lt!672012) (head!3996 (++!5238 lt!672012 lt!672000))))))

(declare-fun b!1743630 () Bool)

(assert (=> b!1743630 (= e!1115919 (isPrefix!1654 (tail!2601 lt!672012) (tail!2601 (++!5238 lt!672012 lt!672000))))))

(declare-fun d!532905 () Bool)

(assert (=> d!532905 e!1115920))

(declare-fun res!783965 () Bool)

(assert (=> d!532905 (=> res!783965 e!1115920)))

(declare-fun lt!672279 () Bool)

(assert (=> d!532905 (= res!783965 (not lt!672279))))

(declare-fun e!1115918 () Bool)

(assert (=> d!532905 (= lt!672279 e!1115918)))

(declare-fun res!783964 () Bool)

(assert (=> d!532905 (=> res!783964 e!1115918)))

(assert (=> d!532905 (= res!783964 ((_ is Nil!19154) lt!672012))))

(assert (=> d!532905 (= (isPrefix!1654 lt!672012 (++!5238 lt!672012 lt!672000)) lt!672279)))

(declare-fun b!1743628 () Bool)

(assert (=> b!1743628 (= e!1115918 e!1115919)))

(declare-fun res!783966 () Bool)

(assert (=> b!1743628 (=> (not res!783966) (not e!1115919))))

(assert (=> b!1743628 (= res!783966 (not ((_ is Nil!19154) (++!5238 lt!672012 lt!672000))))))

(assert (= (and d!532905 (not res!783964)) b!1743628))

(assert (= (and b!1743628 res!783966) b!1743629))

(assert (= (and b!1743629 res!783963) b!1743630))

(assert (= (and d!532905 (not res!783965)) b!1743631))

(assert (=> b!1743631 m!2153711))

(declare-fun m!2155321 () Bool)

(assert (=> b!1743631 m!2155321))

(assert (=> b!1743631 m!2155257))

(declare-fun m!2155323 () Bool)

(assert (=> b!1743629 m!2155323))

(assert (=> b!1743629 m!2153711))

(declare-fun m!2155325 () Bool)

(assert (=> b!1743629 m!2155325))

(declare-fun m!2155327 () Bool)

(assert (=> b!1743630 m!2155327))

(assert (=> b!1743630 m!2153711))

(declare-fun m!2155329 () Bool)

(assert (=> b!1743630 m!2155329))

(assert (=> b!1743630 m!2155327))

(assert (=> b!1743630 m!2155329))

(declare-fun m!2155331 () Bool)

(assert (=> b!1743630 m!2155331))

(assert (=> d!532251 d!532905))

(assert (=> d!532251 d!532223))

(declare-fun d!532907 () Bool)

(declare-fun e!1115921 () Bool)

(assert (=> d!532907 e!1115921))

(declare-fun res!783967 () Bool)

(assert (=> d!532907 (=> (not res!783967) (not e!1115921))))

(assert (=> d!532907 (= res!783967 (isDefined!3193 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004)))))))

(declare-fun lt!672280 () Unit!33221)

(assert (=> d!532907 (= lt!672280 (choose!10729 thiss!24550 rules!3447 lt!671800 lt!672004))))

(assert (=> d!532907 (rulesInvariant!2711 thiss!24550 rules!3447)))

(assert (=> d!532907 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!463 thiss!24550 rules!3447 lt!671800 lt!672004) lt!672280)))

(declare-fun b!1743632 () Bool)

(declare-fun res!783968 () Bool)

(assert (=> b!1743632 (=> (not res!783968) (not e!1115921))))

(assert (=> b!1743632 (= res!783968 (matchR!2215 (regex!3413 (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))) (list!7746 (charsOf!2062 lt!672004))))))

(declare-fun b!1743633 () Bool)

(assert (=> b!1743633 (= e!1115921 (= (rule!5415 lt!672004) (get!5775 (getRuleFromTag!463 thiss!24550 rules!3447 (tag!3753 (rule!5415 lt!672004))))))))

(assert (= (and d!532907 res!783967) b!1743632))

(assert (= (and b!1743632 res!783968) b!1743633))

(assert (=> d!532907 m!2153701))

(assert (=> d!532907 m!2153701))

(assert (=> d!532907 m!2153719))

(declare-fun m!2155333 () Bool)

(assert (=> d!532907 m!2155333))

(assert (=> d!532907 m!2153119))

(assert (=> b!1743632 m!2153701))

(assert (=> b!1743632 m!2153703))

(assert (=> b!1743632 m!2153701))

(assert (=> b!1743632 m!2153691))

(assert (=> b!1743632 m!2153699))

(assert (=> b!1743632 m!2153689))

(assert (=> b!1743632 m!2153689))

(assert (=> b!1743632 m!2153691))

(assert (=> b!1743633 m!2153701))

(assert (=> b!1743633 m!2153701))

(assert (=> b!1743633 m!2153703))

(assert (=> d!532251 d!532907))

(assert (=> d!532241 d!532801))

(declare-fun b!1743634 () Bool)

(declare-fun e!1115925 () Bool)

(declare-fun call!110186 () Bool)

(assert (=> b!1743634 (= e!1115925 call!110186)))

(declare-fun bm!110181 () Bool)

(declare-fun call!110187 () Bool)

(declare-fun call!110188 () Bool)

(assert (=> bm!110181 (= call!110187 call!110188)))

(declare-fun b!1743635 () Bool)

(declare-fun e!1115926 () Bool)

(declare-fun e!1115927 () Bool)

(assert (=> b!1743635 (= e!1115926 e!1115927)))

(declare-fun res!783971 () Bool)

(assert (=> b!1743635 (= res!783971 (not (nullable!1436 (reg!5070 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))))

(assert (=> b!1743635 (=> (not res!783971) (not e!1115927))))

(declare-fun b!1743636 () Bool)

(declare-fun res!783970 () Bool)

(declare-fun e!1115928 () Bool)

(assert (=> b!1743636 (=> res!783970 e!1115928)))

(assert (=> b!1743636 (= res!783970 (not ((_ is Concat!8245) (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))

(declare-fun e!1115924 () Bool)

(assert (=> b!1743636 (= e!1115924 e!1115928)))

(declare-fun b!1743637 () Bool)

(declare-fun e!1115922 () Bool)

(assert (=> b!1743637 (= e!1115922 call!110187)))

(declare-fun b!1743638 () Bool)

(declare-fun res!783972 () Bool)

(assert (=> b!1743638 (=> (not res!783972) (not e!1115925))))

(assert (=> b!1743638 (= res!783972 call!110187)))

(assert (=> b!1743638 (= e!1115924 e!1115925)))

(declare-fun b!1743639 () Bool)

(assert (=> b!1743639 (= e!1115928 e!1115922)))

(declare-fun res!783973 () Bool)

(assert (=> b!1743639 (=> (not res!783973) (not e!1115922))))

(assert (=> b!1743639 (= res!783973 call!110186)))

(declare-fun d!532909 () Bool)

(declare-fun res!783969 () Bool)

(declare-fun e!1115923 () Bool)

(assert (=> d!532909 (=> res!783969 e!1115923)))

(assert (=> d!532909 (= res!783969 ((_ is ElementMatch!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(assert (=> d!532909 (= (validRegex!1910 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) e!1115923)))

(declare-fun c!284530 () Bool)

(declare-fun c!284531 () Bool)

(declare-fun bm!110182 () Bool)

(assert (=> bm!110182 (= call!110188 (validRegex!1910 (ite c!284531 (reg!5070 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (ite c!284530 (regOne!9995 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (regTwo!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))))

(declare-fun b!1743640 () Bool)

(assert (=> b!1743640 (= e!1115926 e!1115924)))

(assert (=> b!1743640 (= c!284530 ((_ is Union!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743641 () Bool)

(assert (=> b!1743641 (= e!1115927 call!110188)))

(declare-fun bm!110183 () Bool)

(assert (=> bm!110183 (= call!110186 (validRegex!1910 (ite c!284530 (regTwo!9995 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (regOne!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))))

(declare-fun b!1743642 () Bool)

(assert (=> b!1743642 (= e!1115923 e!1115926)))

(assert (=> b!1743642 (= c!284531 ((_ is Star!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(assert (= (and d!532909 (not res!783969)) b!1743642))

(assert (= (and b!1743642 c!284531) b!1743635))

(assert (= (and b!1743642 (not c!284531)) b!1743640))

(assert (= (and b!1743635 res!783971) b!1743641))

(assert (= (and b!1743640 c!284530) b!1743638))

(assert (= (and b!1743640 (not c!284530)) b!1743636))

(assert (= (and b!1743638 res!783972) b!1743634))

(assert (= (and b!1743636 (not res!783970)) b!1743639))

(assert (= (and b!1743639 res!783973) b!1743637))

(assert (= (or b!1743638 b!1743637) bm!110181))

(assert (= (or b!1743634 b!1743639) bm!110183))

(assert (= (or b!1743641 bm!110181) bm!110182))

(declare-fun m!2155335 () Bool)

(assert (=> b!1743635 m!2155335))

(declare-fun m!2155337 () Bool)

(assert (=> bm!110182 m!2155337))

(declare-fun m!2155339 () Bool)

(assert (=> bm!110183 m!2155339))

(assert (=> d!532241 d!532909))

(assert (=> b!1742498 d!532621))

(declare-fun d!532911 () Bool)

(declare-fun c!284534 () Bool)

(assert (=> d!532911 (= c!284534 ((_ is Nil!19155) rules!3447))))

(declare-fun e!1115931 () (InoxSet Rule!6626))

(assert (=> d!532911 (= (content!2747 rules!3447) e!1115931)))

(declare-fun b!1743647 () Bool)

(assert (=> b!1743647 (= e!1115931 ((as const (Array Rule!6626 Bool)) false))))

(declare-fun b!1743648 () Bool)

(assert (=> b!1743648 (= e!1115931 ((_ map or) (store ((as const (Array Rule!6626 Bool)) false) (h!24556 rules!3447) true) (content!2747 (t!161924 rules!3447))))))

(assert (= (and d!532911 c!284534) b!1743647))

(assert (= (and d!532911 (not c!284534)) b!1743648))

(declare-fun m!2155341 () Bool)

(assert (=> b!1743648 m!2155341))

(declare-fun m!2155343 () Bool)

(assert (=> b!1743648 m!2155343))

(assert (=> d!532187 d!532911))

(declare-fun d!532913 () Bool)

(assert (=> d!532913 (= (isEmpty!12057 (originalCharacters!4227 token!523)) ((_ is Nil!19154) (originalCharacters!4227 token!523)))))

(assert (=> d!532181 d!532913))

(declare-fun b!1743651 () Bool)

(declare-fun e!1115933 () List!19224)

(assert (=> b!1743651 (= e!1115933 (list!7752 (xs!9247 (c!284177 (charsOf!2062 token!523)))))))

(declare-fun d!532915 () Bool)

(declare-fun c!284535 () Bool)

(assert (=> d!532915 (= c!284535 ((_ is Empty!6371) (c!284177 (charsOf!2062 token!523))))))

(declare-fun e!1115932 () List!19224)

(assert (=> d!532915 (= (list!7748 (c!284177 (charsOf!2062 token!523))) e!1115932)))

(declare-fun b!1743652 () Bool)

(assert (=> b!1743652 (= e!1115933 (++!5238 (list!7748 (left!15315 (c!284177 (charsOf!2062 token!523)))) (list!7748 (right!15645 (c!284177 (charsOf!2062 token!523))))))))

(declare-fun b!1743649 () Bool)

(assert (=> b!1743649 (= e!1115932 Nil!19154)))

(declare-fun b!1743650 () Bool)

(assert (=> b!1743650 (= e!1115932 e!1115933)))

(declare-fun c!284536 () Bool)

(assert (=> b!1743650 (= c!284536 ((_ is Leaf!9298) (c!284177 (charsOf!2062 token!523))))))

(assert (= (and d!532915 c!284535) b!1743649))

(assert (= (and d!532915 (not c!284535)) b!1743650))

(assert (= (and b!1743650 c!284536) b!1743651))

(assert (= (and b!1743650 (not c!284536)) b!1743652))

(declare-fun m!2155345 () Bool)

(assert (=> b!1743651 m!2155345))

(declare-fun m!2155347 () Bool)

(assert (=> b!1743652 m!2155347))

(declare-fun m!2155349 () Bool)

(assert (=> b!1743652 m!2155349))

(assert (=> b!1743652 m!2155347))

(assert (=> b!1743652 m!2155349))

(declare-fun m!2155351 () Bool)

(assert (=> b!1743652 m!2155351))

(assert (=> d!532225 d!532915))

(declare-fun b!1743655 () Bool)

(declare-fun res!783975 () Bool)

(declare-fun e!1115935 () Bool)

(assert (=> b!1743655 (=> (not res!783975) (not e!1115935))))

(declare-fun lt!672281 () List!19224)

(assert (=> b!1743655 (= res!783975 (= (size!15214 lt!672281) (+ (size!15214 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (size!15214 (_2!10801 (get!5774 lt!672031))))))))

(declare-fun b!1743654 () Bool)

(declare-fun e!1115934 () List!19224)

(assert (=> b!1743654 (= e!1115934 (Cons!19154 (h!24555 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (++!5238 (t!161923 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (_2!10801 (get!5774 lt!672031)))))))

(declare-fun b!1743653 () Bool)

(assert (=> b!1743653 (= e!1115934 (_2!10801 (get!5774 lt!672031)))))

(declare-fun b!1743656 () Bool)

(assert (=> b!1743656 (= e!1115935 (or (not (= (_2!10801 (get!5774 lt!672031)) Nil!19154)) (= lt!672281 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))))))))

(declare-fun d!532917 () Bool)

(assert (=> d!532917 e!1115935))

(declare-fun res!783974 () Bool)

(assert (=> d!532917 (=> (not res!783974) (not e!1115935))))

(assert (=> d!532917 (= res!783974 (= (content!2748 lt!672281) ((_ map or) (content!2748 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))) (content!2748 (_2!10801 (get!5774 lt!672031))))))))

(assert (=> d!532917 (= lt!672281 e!1115934)))

(declare-fun c!284537 () Bool)

(assert (=> d!532917 (= c!284537 ((_ is Nil!19154) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031))))))))

(assert (=> d!532917 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672031)))) (_2!10801 (get!5774 lt!672031))) lt!672281)))

(assert (= (and d!532917 c!284537) b!1743653))

(assert (= (and d!532917 (not c!284537)) b!1743654))

(assert (= (and d!532917 res!783974) b!1743655))

(assert (= (and b!1743655 res!783975) b!1743656))

(declare-fun m!2155353 () Bool)

(assert (=> b!1743655 m!2155353))

(assert (=> b!1743655 m!2153775))

(declare-fun m!2155355 () Bool)

(assert (=> b!1743655 m!2155355))

(assert (=> b!1743655 m!2153797))

(declare-fun m!2155357 () Bool)

(assert (=> b!1743654 m!2155357))

(declare-fun m!2155359 () Bool)

(assert (=> d!532917 m!2155359))

(assert (=> d!532917 m!2153775))

(declare-fun m!2155361 () Bool)

(assert (=> d!532917 m!2155361))

(declare-fun m!2155363 () Bool)

(assert (=> d!532917 m!2155363))

(assert (=> b!1742478 d!532917))

(assert (=> b!1742478 d!532645))

(assert (=> b!1742478 d!532647))

(assert (=> b!1742478 d!532643))

(declare-fun d!532919 () Bool)

(assert (=> d!532919 (= (isEmpty!12061 lt!672031) (not ((_ is Some!3850) lt!672031)))))

(assert (=> d!532281 d!532919))

(declare-fun b!1743660 () Bool)

(declare-fun e!1115938 () Bool)

(assert (=> b!1743660 (= e!1115938 (>= (size!15214 lt!671803) (size!15214 lt!671803)))))

(declare-fun b!1743658 () Bool)

(declare-fun res!783976 () Bool)

(declare-fun e!1115937 () Bool)

(assert (=> b!1743658 (=> (not res!783976) (not e!1115937))))

(assert (=> b!1743658 (= res!783976 (= (head!3996 lt!671803) (head!3996 lt!671803)))))

(declare-fun b!1743659 () Bool)

(assert (=> b!1743659 (= e!1115937 (isPrefix!1654 (tail!2601 lt!671803) (tail!2601 lt!671803)))))

(declare-fun d!532921 () Bool)

(assert (=> d!532921 e!1115938))

(declare-fun res!783978 () Bool)

(assert (=> d!532921 (=> res!783978 e!1115938)))

(declare-fun lt!672282 () Bool)

(assert (=> d!532921 (= res!783978 (not lt!672282))))

(declare-fun e!1115936 () Bool)

(assert (=> d!532921 (= lt!672282 e!1115936)))

(declare-fun res!783977 () Bool)

(assert (=> d!532921 (=> res!783977 e!1115936)))

(assert (=> d!532921 (= res!783977 ((_ is Nil!19154) lt!671803))))

(assert (=> d!532921 (= (isPrefix!1654 lt!671803 lt!671803) lt!672282)))

(declare-fun b!1743657 () Bool)

(assert (=> b!1743657 (= e!1115936 e!1115937)))

(declare-fun res!783979 () Bool)

(assert (=> b!1743657 (=> (not res!783979) (not e!1115937))))

(assert (=> b!1743657 (= res!783979 (not ((_ is Nil!19154) lt!671803)))))

(assert (= (and d!532921 (not res!783977)) b!1743657))

(assert (= (and b!1743657 res!783979) b!1743658))

(assert (= (and b!1743658 res!783976) b!1743659))

(assert (= (and d!532921 (not res!783978)) b!1743660))

(assert (=> b!1743660 m!2153573))

(assert (=> b!1743660 m!2153573))

(assert (=> b!1743658 m!2153577))

(assert (=> b!1743658 m!2153577))

(assert (=> b!1743659 m!2153581))

(assert (=> b!1743659 m!2153581))

(assert (=> b!1743659 m!2153581))

(assert (=> b!1743659 m!2153581))

(declare-fun m!2155365 () Bool)

(assert (=> b!1743659 m!2155365))

(assert (=> d!532281 d!532921))

(declare-fun d!532923 () Bool)

(assert (=> d!532923 (isPrefix!1654 lt!671803 lt!671803)))

(declare-fun lt!672285 () Unit!33221)

(declare-fun choose!10741 (List!19224 List!19224) Unit!33221)

(assert (=> d!532923 (= lt!672285 (choose!10741 lt!671803 lt!671803))))

(assert (=> d!532923 (= (lemmaIsPrefixRefl!1101 lt!671803 lt!671803) lt!672285)))

(declare-fun bs!403171 () Bool)

(assert (= bs!403171 d!532923))

(assert (=> bs!403171 m!2153789))

(declare-fun m!2155367 () Bool)

(assert (=> bs!403171 m!2155367))

(assert (=> d!532281 d!532923))

(declare-fun d!532925 () Bool)

(assert (=> d!532925 true))

(declare-fun lt!672288 () Bool)

(declare-fun lambda!69665 () Int)

(declare-fun forall!4264 (List!19225 Int) Bool)

(assert (=> d!532925 (= lt!672288 (forall!4264 rules!3447 lambda!69665))))

(declare-fun e!1115943 () Bool)

(assert (=> d!532925 (= lt!672288 e!1115943)))

(declare-fun res!783984 () Bool)

(assert (=> d!532925 (=> res!783984 e!1115943)))

(assert (=> d!532925 (= res!783984 (not ((_ is Cons!19155) rules!3447)))))

(assert (=> d!532925 (= (rulesValidInductive!1138 thiss!24550 rules!3447) lt!672288)))

(declare-fun b!1743665 () Bool)

(declare-fun e!1115944 () Bool)

(assert (=> b!1743665 (= e!1115943 e!1115944)))

(declare-fun res!783985 () Bool)

(assert (=> b!1743665 (=> (not res!783985) (not e!1115944))))

(assert (=> b!1743665 (= res!783985 (ruleValid!912 thiss!24550 (h!24556 rules!3447)))))

(declare-fun b!1743666 () Bool)

(assert (=> b!1743666 (= e!1115944 (rulesValidInductive!1138 thiss!24550 (t!161924 rules!3447)))))

(assert (= (and d!532925 (not res!783984)) b!1743665))

(assert (= (and b!1743665 res!783985) b!1743666))

(declare-fun m!2155369 () Bool)

(assert (=> d!532925 m!2155369))

(assert (=> b!1743665 m!2155131))

(declare-fun m!2155371 () Bool)

(assert (=> b!1743666 m!2155371))

(assert (=> d!532281 d!532925))

(declare-fun b!1743671 () Bool)

(declare-fun res!783987 () Bool)

(declare-fun e!1115946 () Bool)

(assert (=> b!1743671 (=> (not res!783987) (not e!1115946))))

(declare-fun lt!672289 () List!19224)

(assert (=> b!1743671 (= res!783987 (= (size!15214 lt!672289) (+ (size!15214 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (size!15214 (_2!10801 (get!5774 lt!671892))))))))

(declare-fun b!1743670 () Bool)

(declare-fun e!1115945 () List!19224)

(assert (=> b!1743670 (= e!1115945 (Cons!19154 (h!24555 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (++!5238 (t!161923 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (_2!10801 (get!5774 lt!671892)))))))

(declare-fun b!1743669 () Bool)

(assert (=> b!1743669 (= e!1115945 (_2!10801 (get!5774 lt!671892)))))

(declare-fun b!1743672 () Bool)

(assert (=> b!1743672 (= e!1115946 (or (not (= (_2!10801 (get!5774 lt!671892)) Nil!19154)) (= lt!672289 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))))))))

(declare-fun d!532927 () Bool)

(assert (=> d!532927 e!1115946))

(declare-fun res!783986 () Bool)

(assert (=> d!532927 (=> (not res!783986) (not e!1115946))))

(assert (=> d!532927 (= res!783986 (= (content!2748 lt!672289) ((_ map or) (content!2748 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))) (content!2748 (_2!10801 (get!5774 lt!671892))))))))

(assert (=> d!532927 (= lt!672289 e!1115945)))

(declare-fun c!284538 () Bool)

(assert (=> d!532927 (= c!284538 ((_ is Nil!19154) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892))))))))

(assert (=> d!532927 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!671892)))) (_2!10801 (get!5774 lt!671892))) lt!672289)))

(assert (= (and d!532927 c!284538) b!1743669))

(assert (= (and d!532927 (not c!284538)) b!1743670))

(assert (= (and d!532927 res!783986) b!1743671))

(assert (= (and b!1743671 res!783987) b!1743672))

(declare-fun m!2155373 () Bool)

(assert (=> b!1743671 m!2155373))

(assert (=> b!1743671 m!2153489))

(declare-fun m!2155375 () Bool)

(assert (=> b!1743671 m!2155375))

(assert (=> b!1743671 m!2153513))

(declare-fun m!2155377 () Bool)

(assert (=> b!1743670 m!2155377))

(declare-fun m!2155379 () Bool)

(assert (=> d!532927 m!2155379))

(assert (=> d!532927 m!2153489))

(declare-fun m!2155381 () Bool)

(assert (=> d!532927 m!2155381))

(declare-fun m!2155383 () Bool)

(assert (=> d!532927 m!2155383))

(assert (=> b!1742307 d!532927))

(assert (=> b!1742307 d!532637))

(assert (=> b!1742307 d!532639))

(assert (=> b!1742307 d!532635))

(declare-fun d!532929 () Bool)

(declare-fun lt!672290 () Bool)

(assert (=> d!532929 (= lt!672290 (select (content!2747 (t!161924 rules!3447)) rule!422))))

(declare-fun e!1115947 () Bool)

(assert (=> d!532929 (= lt!672290 e!1115947)))

(declare-fun res!783989 () Bool)

(assert (=> d!532929 (=> (not res!783989) (not e!1115947))))

(assert (=> d!532929 (= res!783989 ((_ is Cons!19155) (t!161924 rules!3447)))))

(assert (=> d!532929 (= (contains!3435 (t!161924 rules!3447) rule!422) lt!672290)))

(declare-fun b!1743673 () Bool)

(declare-fun e!1115948 () Bool)

(assert (=> b!1743673 (= e!1115947 e!1115948)))

(declare-fun res!783988 () Bool)

(assert (=> b!1743673 (=> res!783988 e!1115948)))

(assert (=> b!1743673 (= res!783988 (= (h!24556 (t!161924 rules!3447)) rule!422))))

(declare-fun b!1743674 () Bool)

(assert (=> b!1743674 (= e!1115948 (contains!3435 (t!161924 (t!161924 rules!3447)) rule!422))))

(assert (= (and d!532929 res!783989) b!1743673))

(assert (= (and b!1743673 (not res!783988)) b!1743674))

(assert (=> d!532929 m!2155343))

(declare-fun m!2155385 () Bool)

(assert (=> d!532929 m!2155385))

(declare-fun m!2155387 () Bool)

(assert (=> b!1743674 m!2155387))

(assert (=> b!1742155 d!532929))

(declare-fun d!532931 () Bool)

(assert (=> d!532931 (= (isEmpty!12061 lt!671802) (not ((_ is Some!3850) lt!671802)))))

(assert (=> d!532221 d!532931))

(assert (=> d!532189 d!532601))

(declare-fun b!1743675 () Bool)

(declare-fun e!1115952 () Bool)

(declare-fun call!110189 () Bool)

(assert (=> b!1743675 (= e!1115952 call!110189)))

(declare-fun bm!110184 () Bool)

(declare-fun call!110190 () Bool)

(declare-fun call!110191 () Bool)

(assert (=> bm!110184 (= call!110190 call!110191)))

(declare-fun b!1743676 () Bool)

(declare-fun e!1115953 () Bool)

(declare-fun e!1115954 () Bool)

(assert (=> b!1743676 (= e!1115953 e!1115954)))

(declare-fun res!783992 () Bool)

(assert (=> b!1743676 (= res!783992 (not (nullable!1436 (reg!5070 (regex!3413 lt!671796)))))))

(assert (=> b!1743676 (=> (not res!783992) (not e!1115954))))

(declare-fun b!1743677 () Bool)

(declare-fun res!783991 () Bool)

(declare-fun e!1115955 () Bool)

(assert (=> b!1743677 (=> res!783991 e!1115955)))

(assert (=> b!1743677 (= res!783991 (not ((_ is Concat!8245) (regex!3413 lt!671796))))))

(declare-fun e!1115951 () Bool)

(assert (=> b!1743677 (= e!1115951 e!1115955)))

(declare-fun b!1743678 () Bool)

(declare-fun e!1115949 () Bool)

(assert (=> b!1743678 (= e!1115949 call!110190)))

(declare-fun b!1743679 () Bool)

(declare-fun res!783993 () Bool)

(assert (=> b!1743679 (=> (not res!783993) (not e!1115952))))

(assert (=> b!1743679 (= res!783993 call!110190)))

(assert (=> b!1743679 (= e!1115951 e!1115952)))

(declare-fun b!1743680 () Bool)

(assert (=> b!1743680 (= e!1115955 e!1115949)))

(declare-fun res!783994 () Bool)

(assert (=> b!1743680 (=> (not res!783994) (not e!1115949))))

(assert (=> b!1743680 (= res!783994 call!110189)))

(declare-fun d!532933 () Bool)

(declare-fun res!783990 () Bool)

(declare-fun e!1115950 () Bool)

(assert (=> d!532933 (=> res!783990 e!1115950)))

(assert (=> d!532933 (= res!783990 ((_ is ElementMatch!4741) (regex!3413 lt!671796)))))

(assert (=> d!532933 (= (validRegex!1910 (regex!3413 lt!671796)) e!1115950)))

(declare-fun bm!110185 () Bool)

(declare-fun c!284540 () Bool)

(declare-fun c!284539 () Bool)

(assert (=> bm!110185 (= call!110191 (validRegex!1910 (ite c!284540 (reg!5070 (regex!3413 lt!671796)) (ite c!284539 (regOne!9995 (regex!3413 lt!671796)) (regTwo!9994 (regex!3413 lt!671796))))))))

(declare-fun b!1743681 () Bool)

(assert (=> b!1743681 (= e!1115953 e!1115951)))

(assert (=> b!1743681 (= c!284539 ((_ is Union!4741) (regex!3413 lt!671796)))))

(declare-fun b!1743682 () Bool)

(assert (=> b!1743682 (= e!1115954 call!110191)))

(declare-fun bm!110186 () Bool)

(assert (=> bm!110186 (= call!110189 (validRegex!1910 (ite c!284539 (regTwo!9995 (regex!3413 lt!671796)) (regOne!9994 (regex!3413 lt!671796)))))))

(declare-fun b!1743683 () Bool)

(assert (=> b!1743683 (= e!1115950 e!1115953)))

(assert (=> b!1743683 (= c!284540 ((_ is Star!4741) (regex!3413 lt!671796)))))

(assert (= (and d!532933 (not res!783990)) b!1743683))

(assert (= (and b!1743683 c!284540) b!1743676))

(assert (= (and b!1743683 (not c!284540)) b!1743681))

(assert (= (and b!1743676 res!783992) b!1743682))

(assert (= (and b!1743681 c!284539) b!1743679))

(assert (= (and b!1743681 (not c!284539)) b!1743677))

(assert (= (and b!1743679 res!783993) b!1743675))

(assert (= (and b!1743677 (not res!783991)) b!1743680))

(assert (= (and b!1743680 res!783994) b!1743678))

(assert (= (or b!1743679 b!1743678) bm!110184))

(assert (= (or b!1743675 b!1743680) bm!110186))

(assert (= (or b!1743682 bm!110184) bm!110185))

(declare-fun m!2155389 () Bool)

(assert (=> b!1743676 m!2155389))

(declare-fun m!2155391 () Bool)

(assert (=> bm!110185 m!2155391))

(declare-fun m!2155393 () Bool)

(assert (=> bm!110186 m!2155393))

(assert (=> d!532189 d!532933))

(declare-fun b!1743684 () Bool)

(declare-fun e!1115959 () Bool)

(declare-fun e!1115960 () Bool)

(assert (=> b!1743684 (= e!1115959 e!1115960)))

(declare-fun res!784000 () Bool)

(assert (=> b!1743684 (=> (not res!784000) (not e!1115960))))

(declare-fun lt!672291 () Bool)

(assert (=> b!1743684 (= res!784000 (not lt!672291))))

(declare-fun b!1743685 () Bool)

(declare-fun e!1115957 () Bool)

(assert (=> b!1743685 (= e!1115960 e!1115957)))

(declare-fun res!783998 () Bool)

(assert (=> b!1743685 (=> res!783998 e!1115957)))

(declare-fun call!110192 () Bool)

(assert (=> b!1743685 (= res!783998 call!110192)))

(declare-fun b!1743686 () Bool)

(declare-fun res!783999 () Bool)

(declare-fun e!1115958 () Bool)

(assert (=> b!1743686 (=> (not res!783999) (not e!1115958))))

(assert (=> b!1743686 (= res!783999 (isEmpty!12057 (tail!2601 (tail!2601 lt!671799))))))

(declare-fun b!1743687 () Bool)

(assert (=> b!1743687 (= e!1115958 (= (head!3996 (tail!2601 lt!671799)) (c!284176 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)))))))

(declare-fun b!1743688 () Bool)

(declare-fun e!1115956 () Bool)

(declare-fun e!1115961 () Bool)

(assert (=> b!1743688 (= e!1115956 e!1115961)))

(declare-fun c!284542 () Bool)

(assert (=> b!1743688 (= c!284542 ((_ is EmptyLang!4741) (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799))))))

(declare-fun d!532935 () Bool)

(assert (=> d!532935 e!1115956))

(declare-fun c!284543 () Bool)

(assert (=> d!532935 (= c!284543 ((_ is EmptyExpr!4741) (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799))))))

(declare-fun e!1115962 () Bool)

(assert (=> d!532935 (= lt!672291 e!1115962)))

(declare-fun c!284541 () Bool)

(assert (=> d!532935 (= c!284541 (isEmpty!12057 (tail!2601 lt!671799)))))

(assert (=> d!532935 (validRegex!1910 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)))))

(assert (=> d!532935 (= (matchR!2215 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)) (tail!2601 lt!671799)) lt!672291)))

(declare-fun b!1743689 () Bool)

(declare-fun res!783995 () Bool)

(assert (=> b!1743689 (=> res!783995 e!1115957)))

(assert (=> b!1743689 (= res!783995 (not (isEmpty!12057 (tail!2601 (tail!2601 lt!671799)))))))

(declare-fun b!1743690 () Bool)

(assert (=> b!1743690 (= e!1115957 (not (= (head!3996 (tail!2601 lt!671799)) (c!284176 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799))))))))

(declare-fun b!1743691 () Bool)

(assert (=> b!1743691 (= e!1115961 (not lt!672291))))

(declare-fun b!1743692 () Bool)

(declare-fun res!784001 () Bool)

(assert (=> b!1743692 (=> res!784001 e!1115959)))

(assert (=> b!1743692 (= res!784001 (not ((_ is ElementMatch!4741) (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)))))))

(assert (=> b!1743692 (= e!1115961 e!1115959)))

(declare-fun b!1743693 () Bool)

(assert (=> b!1743693 (= e!1115956 (= lt!672291 call!110192))))

(declare-fun b!1743694 () Bool)

(declare-fun res!783997 () Bool)

(assert (=> b!1743694 (=> res!783997 e!1115959)))

(assert (=> b!1743694 (= res!783997 e!1115958)))

(declare-fun res!783996 () Bool)

(assert (=> b!1743694 (=> (not res!783996) (not e!1115958))))

(assert (=> b!1743694 (= res!783996 lt!672291)))

(declare-fun b!1743695 () Bool)

(assert (=> b!1743695 (= e!1115962 (nullable!1436 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799))))))

(declare-fun b!1743696 () Bool)

(assert (=> b!1743696 (= e!1115962 (matchR!2215 (derivativeStep!1204 (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)) (head!3996 (tail!2601 lt!671799))) (tail!2601 (tail!2601 lt!671799))))))

(declare-fun b!1743697 () Bool)

(declare-fun res!784002 () Bool)

(assert (=> b!1743697 (=> (not res!784002) (not e!1115958))))

(assert (=> b!1743697 (= res!784002 (not call!110192))))

(declare-fun bm!110187 () Bool)

(assert (=> bm!110187 (= call!110192 (isEmpty!12057 (tail!2601 lt!671799)))))

(assert (= (and d!532935 c!284541) b!1743695))

(assert (= (and d!532935 (not c!284541)) b!1743696))

(assert (= (and d!532935 c!284543) b!1743693))

(assert (= (and d!532935 (not c!284543)) b!1743688))

(assert (= (and b!1743688 c!284542) b!1743691))

(assert (= (and b!1743688 (not c!284542)) b!1743692))

(assert (= (and b!1743692 (not res!784001)) b!1743694))

(assert (= (and b!1743694 res!783996) b!1743697))

(assert (= (and b!1743697 res!784002) b!1743686))

(assert (= (and b!1743686 res!783999) b!1743687))

(assert (= (and b!1743694 (not res!783997)) b!1743684))

(assert (= (and b!1743684 res!784000) b!1743685))

(assert (= (and b!1743685 (not res!783998)) b!1743689))

(assert (= (and b!1743689 (not res!783995)) b!1743690))

(assert (= (or b!1743693 b!1743685 b!1743697) bm!110187))

(assert (=> d!532935 m!2153533))

(assert (=> d!532935 m!2153535))

(assert (=> d!532935 m!2153541))

(declare-fun m!2155395 () Bool)

(assert (=> d!532935 m!2155395))

(assert (=> b!1743686 m!2153533))

(assert (=> b!1743686 m!2155197))

(assert (=> b!1743686 m!2155197))

(declare-fun m!2155397 () Bool)

(assert (=> b!1743686 m!2155397))

(assert (=> b!1743687 m!2153533))

(assert (=> b!1743687 m!2155195))

(assert (=> b!1743695 m!2153541))

(declare-fun m!2155399 () Bool)

(assert (=> b!1743695 m!2155399))

(assert (=> b!1743696 m!2153533))

(assert (=> b!1743696 m!2155195))

(assert (=> b!1743696 m!2153541))

(assert (=> b!1743696 m!2155195))

(declare-fun m!2155401 () Bool)

(assert (=> b!1743696 m!2155401))

(assert (=> b!1743696 m!2153533))

(assert (=> b!1743696 m!2155197))

(assert (=> b!1743696 m!2155401))

(assert (=> b!1743696 m!2155197))

(declare-fun m!2155403 () Bool)

(assert (=> b!1743696 m!2155403))

(assert (=> b!1743690 m!2153533))

(assert (=> b!1743690 m!2155195))

(assert (=> b!1743689 m!2153533))

(assert (=> b!1743689 m!2155197))

(assert (=> b!1743689 m!2155197))

(assert (=> b!1743689 m!2155397))

(assert (=> bm!110187 m!2153533))

(assert (=> bm!110187 m!2153535))

(assert (=> b!1742330 d!532935))

(declare-fun b!1743698 () Bool)

(declare-fun e!1115964 () Regex!4741)

(declare-fun call!110195 () Regex!4741)

(assert (=> b!1743698 (= e!1115964 (Concat!8245 call!110195 (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743699 () Bool)

(declare-fun e!1115963 () Regex!4741)

(assert (=> b!1743699 (= e!1115963 e!1115964)))

(declare-fun c!284548 () Bool)

(assert (=> b!1743699 (= c!284548 ((_ is Star!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743700 () Bool)

(declare-fun e!1115966 () Regex!4741)

(assert (=> b!1743700 (= e!1115966 EmptyLang!4741)))

(declare-fun b!1743701 () Bool)

(declare-fun call!110196 () Regex!4741)

(declare-fun call!110193 () Regex!4741)

(assert (=> b!1743701 (= e!1115963 (Union!4741 call!110196 call!110193))))

(declare-fun b!1743702 () Bool)

(declare-fun call!110194 () Regex!4741)

(declare-fun e!1115967 () Regex!4741)

(assert (=> b!1743702 (= e!1115967 (Union!4741 (Concat!8245 call!110196 (regTwo!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))) call!110194))))

(declare-fun b!1743703 () Bool)

(declare-fun e!1115965 () Regex!4741)

(assert (=> b!1743703 (= e!1115966 e!1115965)))

(declare-fun c!284546 () Bool)

(assert (=> b!1743703 (= c!284546 ((_ is ElementMatch!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(declare-fun b!1743704 () Bool)

(declare-fun c!284547 () Bool)

(assert (=> b!1743704 (= c!284547 ((_ is Union!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))))))

(assert (=> b!1743704 (= e!1115965 e!1115963)))

(declare-fun b!1743705 () Bool)

(assert (=> b!1743705 (= e!1115967 (Union!4741 (Concat!8245 call!110194 (regTwo!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))) EmptyLang!4741))))

(declare-fun bm!110189 () Bool)

(assert (=> bm!110189 (= call!110194 call!110195)))

(declare-fun bm!110190 () Bool)

(assert (=> bm!110190 (= call!110195 call!110193)))

(declare-fun b!1743706 () Bool)

(assert (=> b!1743706 (= e!1115965 (ite (= (head!3996 lt!671799) (c!284176 (regex!3413 (rule!5415 (_1!10801 lt!671797))))) EmptyExpr!4741 EmptyLang!4741))))

(declare-fun d!532937 () Bool)

(declare-fun lt!672292 () Regex!4741)

(assert (=> d!532937 (validRegex!1910 lt!672292)))

(assert (=> d!532937 (= lt!672292 e!1115966)))

(declare-fun c!284545 () Bool)

(assert (=> d!532937 (= c!284545 (or ((_ is EmptyExpr!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797)))) ((_ is EmptyLang!4741) (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> d!532937 (validRegex!1910 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))

(assert (=> d!532937 (= (derivativeStep!1204 (regex!3413 (rule!5415 (_1!10801 lt!671797))) (head!3996 lt!671799)) lt!672292)))

(declare-fun bm!110188 () Bool)

(assert (=> bm!110188 (= call!110196 (derivativeStep!1204 (ite c!284547 (regOne!9995 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (regOne!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))) (head!3996 lt!671799)))))

(declare-fun bm!110191 () Bool)

(declare-fun c!284544 () Bool)

(assert (=> bm!110191 (= call!110193 (derivativeStep!1204 (ite c!284547 (regTwo!9995 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (ite c!284548 (reg!5070 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (ite c!284544 (regTwo!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797)))) (regOne!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))) (head!3996 lt!671799)))))

(declare-fun b!1743707 () Bool)

(assert (=> b!1743707 (= c!284544 (nullable!1436 (regOne!9994 (regex!3413 (rule!5415 (_1!10801 lt!671797))))))))

(assert (=> b!1743707 (= e!1115964 e!1115967)))

(assert (= (and d!532937 c!284545) b!1743700))

(assert (= (and d!532937 (not c!284545)) b!1743703))

(assert (= (and b!1743703 c!284546) b!1743706))

(assert (= (and b!1743703 (not c!284546)) b!1743704))

(assert (= (and b!1743704 c!284547) b!1743701))

(assert (= (and b!1743704 (not c!284547)) b!1743699))

(assert (= (and b!1743699 c!284548) b!1743698))

(assert (= (and b!1743699 (not c!284548)) b!1743707))

(assert (= (and b!1743707 c!284544) b!1743702))

(assert (= (and b!1743707 (not c!284544)) b!1743705))

(assert (= (or b!1743702 b!1743705) bm!110189))

(assert (= (or b!1743698 bm!110189) bm!110190))

(assert (= (or b!1743701 bm!110190) bm!110191))

(assert (= (or b!1743701 b!1743702) bm!110188))

(declare-fun m!2155405 () Bool)

(assert (=> d!532937 m!2155405))

(assert (=> d!532937 m!2153531))

(assert (=> bm!110188 m!2153537))

(declare-fun m!2155407 () Bool)

(assert (=> bm!110188 m!2155407))

(assert (=> bm!110191 m!2153537))

(declare-fun m!2155409 () Bool)

(assert (=> bm!110191 m!2155409))

(declare-fun m!2155411 () Bool)

(assert (=> b!1743707 m!2155411))

(assert (=> b!1742330 d!532937))

(assert (=> b!1742330 d!532743))

(assert (=> b!1742330 d!532629))

(assert (=> b!1742488 d!532765))

(assert (=> b!1742488 d!532683))

(declare-fun d!532939 () Bool)

(assert (=> d!532939 (= (isEmpty!12061 lt!671892) (not ((_ is Some!3850) lt!671892)))))

(assert (=> d!532223 d!532939))

(declare-fun b!1743711 () Bool)

(declare-fun e!1115970 () Bool)

(assert (=> b!1743711 (= e!1115970 (>= (size!15214 lt!671800) (size!15214 lt!671800)))))

(declare-fun b!1743709 () Bool)

(declare-fun res!784003 () Bool)

(declare-fun e!1115969 () Bool)

(assert (=> b!1743709 (=> (not res!784003) (not e!1115969))))

(assert (=> b!1743709 (= res!784003 (= (head!3996 lt!671800) (head!3996 lt!671800)))))

(declare-fun b!1743710 () Bool)

(assert (=> b!1743710 (= e!1115969 (isPrefix!1654 (tail!2601 lt!671800) (tail!2601 lt!671800)))))

(declare-fun d!532941 () Bool)

(assert (=> d!532941 e!1115970))

(declare-fun res!784005 () Bool)

(assert (=> d!532941 (=> res!784005 e!1115970)))

(declare-fun lt!672293 () Bool)

(assert (=> d!532941 (= res!784005 (not lt!672293))))

(declare-fun e!1115968 () Bool)

(assert (=> d!532941 (= lt!672293 e!1115968)))

(declare-fun res!784004 () Bool)

(assert (=> d!532941 (=> res!784004 e!1115968)))

(assert (=> d!532941 (= res!784004 ((_ is Nil!19154) lt!671800))))

(assert (=> d!532941 (= (isPrefix!1654 lt!671800 lt!671800) lt!672293)))

(declare-fun b!1743708 () Bool)

(assert (=> b!1743708 (= e!1115968 e!1115969)))

(declare-fun res!784006 () Bool)

(assert (=> b!1743708 (=> (not res!784006) (not e!1115969))))

(assert (=> b!1743708 (= res!784006 (not ((_ is Nil!19154) lt!671800)))))

(assert (= (and d!532941 (not res!784004)) b!1743708))

(assert (= (and b!1743708 res!784006) b!1743709))

(assert (= (and b!1743709 res!784003) b!1743710))

(assert (= (and d!532941 (not res!784005)) b!1743711))

(assert (=> b!1743711 m!2153515))

(assert (=> b!1743711 m!2153515))

(assert (=> b!1743709 m!2153575))

(assert (=> b!1743709 m!2153575))

(assert (=> b!1743710 m!2153579))

(assert (=> b!1743710 m!2153579))

(assert (=> b!1743710 m!2153579))

(assert (=> b!1743710 m!2153579))

(declare-fun m!2155413 () Bool)

(assert (=> b!1743710 m!2155413))

(assert (=> d!532223 d!532941))

(declare-fun d!532943 () Bool)

(assert (=> d!532943 (isPrefix!1654 lt!671800 lt!671800)))

(declare-fun lt!672294 () Unit!33221)

(assert (=> d!532943 (= lt!672294 (choose!10741 lt!671800 lt!671800))))

(assert (=> d!532943 (= (lemmaIsPrefixRefl!1101 lt!671800 lt!671800) lt!672294)))

(declare-fun bs!403172 () Bool)

(assert (= bs!403172 d!532943))

(assert (=> bs!403172 m!2153503))

(declare-fun m!2155415 () Bool)

(assert (=> bs!403172 m!2155415))

(assert (=> d!532223 d!532943))

(assert (=> d!532223 d!532925))

(declare-fun d!532945 () Bool)

(declare-fun lt!672295 () Int)

(assert (=> d!532945 (>= lt!672295 0)))

(declare-fun e!1115971 () Int)

(assert (=> d!532945 (= lt!672295 e!1115971)))

(declare-fun c!284549 () Bool)

(assert (=> d!532945 (= c!284549 ((_ is Nil!19154) (originalCharacters!4227 token!523)))))

(assert (=> d!532945 (= (size!15214 (originalCharacters!4227 token!523)) lt!672295)))

(declare-fun b!1743712 () Bool)

(assert (=> b!1743712 (= e!1115971 0)))

(declare-fun b!1743713 () Bool)

(assert (=> b!1743713 (= e!1115971 (+ 1 (size!15214 (t!161923 (originalCharacters!4227 token!523)))))))

(assert (= (and d!532945 c!284549) b!1743712))

(assert (= (and d!532945 (not c!284549)) b!1743713))

(declare-fun m!2155417 () Bool)

(assert (=> b!1743713 m!2155417))

(assert (=> b!1742144 d!532945))

(declare-fun b!1743714 () Bool)

(declare-fun res!784010 () Bool)

(declare-fun e!1115973 () Bool)

(assert (=> b!1743714 (=> (not res!784010) (not e!1115973))))

(declare-fun lt!672300 () Option!3851)

(assert (=> b!1743714 (= res!784010 (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672300)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672300))))))))

(declare-fun b!1743715 () Bool)

(assert (=> b!1743715 (= e!1115973 (contains!3435 (t!161924 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!672300)))))))

(declare-fun call!110197 () Option!3851)

(declare-fun bm!110192 () Bool)

(assert (=> bm!110192 (= call!110197 (maxPrefixOneRule!968 thiss!24550 (h!24556 (t!161924 rules!3447)) lt!671803))))

(declare-fun b!1743716 () Bool)

(declare-fun res!784013 () Bool)

(assert (=> b!1743716 (=> (not res!784013) (not e!1115973))))

(assert (=> b!1743716 (= res!784013 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672300)))) (_2!10801 (get!5774 lt!672300))) lt!671803))))

(declare-fun b!1743717 () Bool)

(declare-fun e!1115972 () Option!3851)

(assert (=> b!1743717 (= e!1115972 call!110197)))

(declare-fun b!1743718 () Bool)

(declare-fun e!1115974 () Bool)

(assert (=> b!1743718 (= e!1115974 e!1115973)))

(declare-fun res!784011 () Bool)

(assert (=> b!1743718 (=> (not res!784011) (not e!1115973))))

(assert (=> b!1743718 (= res!784011 (isDefined!3194 lt!672300))))

(declare-fun b!1743719 () Bool)

(declare-fun res!784008 () Bool)

(assert (=> b!1743719 (=> (not res!784008) (not e!1115973))))

(assert (=> b!1743719 (= res!784008 (= (value!106943 (_1!10801 (get!5774 lt!672300))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672300)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672300)))))))))

(declare-fun d!532947 () Bool)

(assert (=> d!532947 e!1115974))

(declare-fun res!784012 () Bool)

(assert (=> d!532947 (=> res!784012 e!1115974)))

(assert (=> d!532947 (= res!784012 (isEmpty!12061 lt!672300))))

(assert (=> d!532947 (= lt!672300 e!1115972)))

(declare-fun c!284550 () Bool)

(assert (=> d!532947 (= c!284550 (and ((_ is Cons!19155) (t!161924 rules!3447)) ((_ is Nil!19155) (t!161924 (t!161924 rules!3447)))))))

(declare-fun lt!672296 () Unit!33221)

(declare-fun lt!672297 () Unit!33221)

(assert (=> d!532947 (= lt!672296 lt!672297)))

(assert (=> d!532947 (isPrefix!1654 lt!671803 lt!671803)))

(assert (=> d!532947 (= lt!672297 (lemmaIsPrefixRefl!1101 lt!671803 lt!671803))))

(assert (=> d!532947 (rulesValidInductive!1138 thiss!24550 (t!161924 rules!3447))))

(assert (=> d!532947 (= (maxPrefix!1596 thiss!24550 (t!161924 rules!3447) lt!671803) lt!672300)))

(declare-fun b!1743720 () Bool)

(declare-fun lt!672298 () Option!3851)

(declare-fun lt!672299 () Option!3851)

(assert (=> b!1743720 (= e!1115972 (ite (and ((_ is None!3850) lt!672298) ((_ is None!3850) lt!672299)) None!3850 (ite ((_ is None!3850) lt!672299) lt!672298 (ite ((_ is None!3850) lt!672298) lt!672299 (ite (>= (size!15212 (_1!10801 (v!25283 lt!672298))) (size!15212 (_1!10801 (v!25283 lt!672299)))) lt!672298 lt!672299)))))))

(assert (=> b!1743720 (= lt!672298 call!110197)))

(assert (=> b!1743720 (= lt!672299 (maxPrefix!1596 thiss!24550 (t!161924 (t!161924 rules!3447)) lt!671803))))

(declare-fun b!1743721 () Bool)

(declare-fun res!784007 () Bool)

(assert (=> b!1743721 (=> (not res!784007) (not e!1115973))))

(assert (=> b!1743721 (= res!784007 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672300)))) (originalCharacters!4227 (_1!10801 (get!5774 lt!672300)))))))

(declare-fun b!1743722 () Bool)

(declare-fun res!784009 () Bool)

(assert (=> b!1743722 (=> (not res!784009) (not e!1115973))))

(assert (=> b!1743722 (= res!784009 (< (size!15214 (_2!10801 (get!5774 lt!672300))) (size!15214 lt!671803)))))

(assert (= (and d!532947 c!284550) b!1743717))

(assert (= (and d!532947 (not c!284550)) b!1743720))

(assert (= (or b!1743717 b!1743720) bm!110192))

(assert (= (and d!532947 (not res!784012)) b!1743718))

(assert (= (and b!1743718 res!784011) b!1743721))

(assert (= (and b!1743721 res!784007) b!1743722))

(assert (= (and b!1743722 res!784009) b!1743716))

(assert (= (and b!1743716 res!784013) b!1743719))

(assert (= (and b!1743719 res!784008) b!1743714))

(assert (= (and b!1743714 res!784010) b!1743715))

(declare-fun m!2155419 () Bool)

(assert (=> b!1743720 m!2155419))

(declare-fun m!2155421 () Bool)

(assert (=> b!1743714 m!2155421))

(declare-fun m!2155423 () Bool)

(assert (=> b!1743714 m!2155423))

(assert (=> b!1743714 m!2155423))

(declare-fun m!2155425 () Bool)

(assert (=> b!1743714 m!2155425))

(assert (=> b!1743714 m!2155425))

(declare-fun m!2155427 () Bool)

(assert (=> b!1743714 m!2155427))

(declare-fun m!2155429 () Bool)

(assert (=> b!1743718 m!2155429))

(assert (=> b!1743719 m!2155421))

(declare-fun m!2155431 () Bool)

(assert (=> b!1743719 m!2155431))

(assert (=> b!1743719 m!2155431))

(declare-fun m!2155433 () Bool)

(assert (=> b!1743719 m!2155433))

(assert (=> b!1743716 m!2155421))

(assert (=> b!1743716 m!2155423))

(assert (=> b!1743716 m!2155423))

(assert (=> b!1743716 m!2155425))

(assert (=> b!1743716 m!2155425))

(declare-fun m!2155435 () Bool)

(assert (=> b!1743716 m!2155435))

(declare-fun m!2155437 () Bool)

(assert (=> d!532947 m!2155437))

(assert (=> d!532947 m!2153789))

(assert (=> d!532947 m!2153791))

(assert (=> d!532947 m!2155371))

(assert (=> b!1743715 m!2155421))

(declare-fun m!2155439 () Bool)

(assert (=> b!1743715 m!2155439))

(declare-fun m!2155441 () Bool)

(assert (=> bm!110192 m!2155441))

(assert (=> b!1743722 m!2155421))

(declare-fun m!2155443 () Bool)

(assert (=> b!1743722 m!2155443))

(assert (=> b!1743722 m!2153573))

(assert (=> b!1743721 m!2155421))

(assert (=> b!1743721 m!2155423))

(assert (=> b!1743721 m!2155423))

(assert (=> b!1743721 m!2155425))

(assert (=> b!1742482 d!532947))

(declare-fun b!1743723 () Bool)

(declare-fun res!784017 () Bool)

(declare-fun e!1115976 () Bool)

(assert (=> b!1743723 (=> (not res!784017) (not e!1115976))))

(declare-fun lt!672305 () Option!3851)

(assert (=> b!1743723 (= res!784017 (matchR!2215 (regex!3413 (rule!5415 (_1!10801 (get!5774 lt!672305)))) (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672305))))))))

(declare-fun b!1743724 () Bool)

(assert (=> b!1743724 (= e!1115976 (contains!3435 (t!161924 rules!3447) (rule!5415 (_1!10801 (get!5774 lt!672305)))))))

(declare-fun call!110198 () Option!3851)

(declare-fun bm!110193 () Bool)

(assert (=> bm!110193 (= call!110198 (maxPrefixOneRule!968 thiss!24550 (h!24556 (t!161924 rules!3447)) lt!671800))))

(declare-fun b!1743725 () Bool)

(declare-fun res!784020 () Bool)

(assert (=> b!1743725 (=> (not res!784020) (not e!1115976))))

(assert (=> b!1743725 (= res!784020 (= (++!5238 (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672305)))) (_2!10801 (get!5774 lt!672305))) lt!671800))))

(declare-fun b!1743726 () Bool)

(declare-fun e!1115975 () Option!3851)

(assert (=> b!1743726 (= e!1115975 call!110198)))

(declare-fun b!1743727 () Bool)

(declare-fun e!1115977 () Bool)

(assert (=> b!1743727 (= e!1115977 e!1115976)))

(declare-fun res!784018 () Bool)

(assert (=> b!1743727 (=> (not res!784018) (not e!1115976))))

(assert (=> b!1743727 (= res!784018 (isDefined!3194 lt!672305))))

(declare-fun b!1743728 () Bool)

(declare-fun res!784015 () Bool)

(assert (=> b!1743728 (=> (not res!784015) (not e!1115976))))

(assert (=> b!1743728 (= res!784015 (= (value!106943 (_1!10801 (get!5774 lt!672305))) (apply!5214 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672305)))) (seqFromList!2383 (originalCharacters!4227 (_1!10801 (get!5774 lt!672305)))))))))

(declare-fun d!532949 () Bool)

(assert (=> d!532949 e!1115977))

(declare-fun res!784019 () Bool)

(assert (=> d!532949 (=> res!784019 e!1115977)))

(assert (=> d!532949 (= res!784019 (isEmpty!12061 lt!672305))))

(assert (=> d!532949 (= lt!672305 e!1115975)))

(declare-fun c!284551 () Bool)

(assert (=> d!532949 (= c!284551 (and ((_ is Cons!19155) (t!161924 rules!3447)) ((_ is Nil!19155) (t!161924 (t!161924 rules!3447)))))))

(declare-fun lt!672301 () Unit!33221)

(declare-fun lt!672302 () Unit!33221)

(assert (=> d!532949 (= lt!672301 lt!672302)))

(assert (=> d!532949 (isPrefix!1654 lt!671800 lt!671800)))

(assert (=> d!532949 (= lt!672302 (lemmaIsPrefixRefl!1101 lt!671800 lt!671800))))

(assert (=> d!532949 (rulesValidInductive!1138 thiss!24550 (t!161924 rules!3447))))

(assert (=> d!532949 (= (maxPrefix!1596 thiss!24550 (t!161924 rules!3447) lt!671800) lt!672305)))

(declare-fun b!1743729 () Bool)

(declare-fun lt!672303 () Option!3851)

(declare-fun lt!672304 () Option!3851)

(assert (=> b!1743729 (= e!1115975 (ite (and ((_ is None!3850) lt!672303) ((_ is None!3850) lt!672304)) None!3850 (ite ((_ is None!3850) lt!672304) lt!672303 (ite ((_ is None!3850) lt!672303) lt!672304 (ite (>= (size!15212 (_1!10801 (v!25283 lt!672303))) (size!15212 (_1!10801 (v!25283 lt!672304)))) lt!672303 lt!672304)))))))

(assert (=> b!1743729 (= lt!672303 call!110198)))

(assert (=> b!1743729 (= lt!672304 (maxPrefix!1596 thiss!24550 (t!161924 (t!161924 rules!3447)) lt!671800))))

(declare-fun b!1743730 () Bool)

(declare-fun res!784014 () Bool)

(assert (=> b!1743730 (=> (not res!784014) (not e!1115976))))

(assert (=> b!1743730 (= res!784014 (= (list!7746 (charsOf!2062 (_1!10801 (get!5774 lt!672305)))) (originalCharacters!4227 (_1!10801 (get!5774 lt!672305)))))))

(declare-fun b!1743731 () Bool)

(declare-fun res!784016 () Bool)

(assert (=> b!1743731 (=> (not res!784016) (not e!1115976))))

(assert (=> b!1743731 (= res!784016 (< (size!15214 (_2!10801 (get!5774 lt!672305))) (size!15214 lt!671800)))))

(assert (= (and d!532949 c!284551) b!1743726))

(assert (= (and d!532949 (not c!284551)) b!1743729))

(assert (= (or b!1743726 b!1743729) bm!110193))

(assert (= (and d!532949 (not res!784019)) b!1743727))

(assert (= (and b!1743727 res!784018) b!1743730))

(assert (= (and b!1743730 res!784014) b!1743731))

(assert (= (and b!1743731 res!784016) b!1743725))

(assert (= (and b!1743725 res!784020) b!1743728))

(assert (= (and b!1743728 res!784015) b!1743723))

(assert (= (and b!1743723 res!784017) b!1743724))

(declare-fun m!2155445 () Bool)

(assert (=> b!1743729 m!2155445))

(declare-fun m!2155447 () Bool)

(assert (=> b!1743723 m!2155447))

(declare-fun m!2155449 () Bool)

(assert (=> b!1743723 m!2155449))

(assert (=> b!1743723 m!2155449))

(declare-fun m!2155451 () Bool)

(assert (=> b!1743723 m!2155451))

(assert (=> b!1743723 m!2155451))

(declare-fun m!2155453 () Bool)

(assert (=> b!1743723 m!2155453))

(declare-fun m!2155455 () Bool)

(assert (=> b!1743727 m!2155455))

(assert (=> b!1743728 m!2155447))

(declare-fun m!2155457 () Bool)

(assert (=> b!1743728 m!2155457))

(assert (=> b!1743728 m!2155457))

(declare-fun m!2155459 () Bool)

(assert (=> b!1743728 m!2155459))

(assert (=> b!1743725 m!2155447))

(assert (=> b!1743725 m!2155449))

(assert (=> b!1743725 m!2155449))

(assert (=> b!1743725 m!2155451))

(assert (=> b!1743725 m!2155451))

(declare-fun m!2155461 () Bool)

(assert (=> b!1743725 m!2155461))

(declare-fun m!2155463 () Bool)

(assert (=> d!532949 m!2155463))

(assert (=> d!532949 m!2153503))

(assert (=> d!532949 m!2153505))

(assert (=> d!532949 m!2155371))

(assert (=> b!1743724 m!2155447))

(declare-fun m!2155465 () Bool)

(assert (=> b!1743724 m!2155465))

(declare-fun m!2155467 () Bool)

(assert (=> bm!110193 m!2155467))

(assert (=> b!1743731 m!2155447))

(declare-fun m!2155469 () Bool)

(assert (=> b!1743731 m!2155469))

(assert (=> b!1743731 m!2153515))

(assert (=> b!1743730 m!2155447))

(assert (=> b!1743730 m!2155449))

(assert (=> b!1743730 m!2155449))

(assert (=> b!1743730 m!2155451))

(assert (=> b!1742311 d!532949))

(declare-fun d!532951 () Bool)

(declare-fun lt!672306 () Bool)

(assert (=> d!532951 (= lt!672306 (select (content!2747 rules!3447) (get!5775 lt!672025)))))

(declare-fun e!1115978 () Bool)

(assert (=> d!532951 (= lt!672306 e!1115978)))

(declare-fun res!784022 () Bool)

(assert (=> d!532951 (=> (not res!784022) (not e!1115978))))

(assert (=> d!532951 (= res!784022 ((_ is Cons!19155) rules!3447))))

(assert (=> d!532951 (= (contains!3435 rules!3447 (get!5775 lt!672025)) lt!672306)))

(declare-fun b!1743732 () Bool)

(declare-fun e!1115979 () Bool)

(assert (=> b!1743732 (= e!1115978 e!1115979)))

(declare-fun res!784021 () Bool)

(assert (=> b!1743732 (=> res!784021 e!1115979)))

(assert (=> b!1743732 (= res!784021 (= (h!24556 rules!3447) (get!5775 lt!672025)))))

(declare-fun b!1743733 () Bool)

(assert (=> b!1743733 (= e!1115979 (contains!3435 (t!161924 rules!3447) (get!5775 lt!672025)))))

(assert (= (and d!532951 res!784022) b!1743732))

(assert (= (and b!1743732 (not res!784021)) b!1743733))

(assert (=> d!532951 m!2153349))

(assert (=> d!532951 m!2153763))

(declare-fun m!2155471 () Bool)

(assert (=> d!532951 m!2155471))

(assert (=> b!1743733 m!2153763))

(declare-fun m!2155473 () Bool)

(assert (=> b!1743733 m!2155473))

(assert (=> b!1742472 d!532951))

(assert (=> b!1742472 d!532755))

(assert (=> bm!110093 d!532877))

(declare-fun bs!403173 () Bool)

(declare-fun d!532953 () Bool)

(assert (= bs!403173 (and d!532953 d!532925)))

(declare-fun lambda!69668 () Int)

(assert (=> bs!403173 (= lambda!69668 lambda!69665)))

(assert (=> d!532953 true))

(declare-fun lt!672309 () Bool)

(assert (=> d!532953 (= lt!672309 (rulesValidInductive!1138 thiss!24550 rules!3447))))

(assert (=> d!532953 (= lt!672309 (forall!4264 rules!3447 lambda!69668))))

(assert (=> d!532953 (= (rulesValid!1276 thiss!24550 rules!3447) lt!672309)))

(declare-fun bs!403174 () Bool)

(assert (= bs!403174 d!532953))

(assert (=> bs!403174 m!2153507))

(declare-fun m!2155475 () Bool)

(assert (=> bs!403174 m!2155475))

(assert (=> d!532285 d!532953))

(declare-fun b!1743737 () Bool)

(declare-fun e!1115982 () Bool)

(assert (=> b!1743737 (= e!1115982 (>= (size!15214 (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797)))) (size!15214 (tail!2601 lt!671799))))))

(declare-fun b!1743735 () Bool)

(declare-fun res!784023 () Bool)

(declare-fun e!1115981 () Bool)

(assert (=> b!1743735 (=> (not res!784023) (not e!1115981))))

(assert (=> b!1743735 (= res!784023 (= (head!3996 (tail!2601 lt!671799)) (head!3996 (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797))))))))

(declare-fun b!1743736 () Bool)

(assert (=> b!1743736 (= e!1115981 (isPrefix!1654 (tail!2601 (tail!2601 lt!671799)) (tail!2601 (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797))))))))

(declare-fun d!532955 () Bool)

(assert (=> d!532955 e!1115982))

(declare-fun res!784025 () Bool)

(assert (=> d!532955 (=> res!784025 e!1115982)))

(declare-fun lt!672310 () Bool)

(assert (=> d!532955 (= res!784025 (not lt!672310))))

(declare-fun e!1115980 () Bool)

(assert (=> d!532955 (= lt!672310 e!1115980)))

(declare-fun res!784024 () Bool)

(assert (=> d!532955 (=> res!784024 e!1115980)))

(assert (=> d!532955 (= res!784024 ((_ is Nil!19154) (tail!2601 lt!671799)))))

(assert (=> d!532955 (= (isPrefix!1654 (tail!2601 lt!671799) (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797)))) lt!672310)))

(declare-fun b!1743734 () Bool)

(assert (=> b!1743734 (= e!1115980 e!1115981)))

(declare-fun res!784026 () Bool)

(assert (=> b!1743734 (=> (not res!784026) (not e!1115981))))

(assert (=> b!1743734 (= res!784026 (not ((_ is Nil!19154) (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797))))))))

(assert (= (and d!532955 (not res!784024)) b!1743734))

(assert (= (and b!1743734 res!784026) b!1743735))

(assert (= (and b!1743735 res!784023) b!1743736))

(assert (= (and d!532955 (not res!784025)) b!1743737))

(assert (=> b!1743737 m!2153747))

(declare-fun m!2155477 () Bool)

(assert (=> b!1743737 m!2155477))

(assert (=> b!1743737 m!2153533))

(assert (=> b!1743737 m!2155193))

(assert (=> b!1743735 m!2153533))

(assert (=> b!1743735 m!2155195))

(assert (=> b!1743735 m!2153747))

(declare-fun m!2155479 () Bool)

(assert (=> b!1743735 m!2155479))

(assert (=> b!1743736 m!2153533))

(assert (=> b!1743736 m!2155197))

(assert (=> b!1743736 m!2153747))

(declare-fun m!2155481 () Bool)

(assert (=> b!1743736 m!2155481))

(assert (=> b!1743736 m!2155197))

(assert (=> b!1743736 m!2155481))

(declare-fun m!2155483 () Bool)

(assert (=> b!1743736 m!2155483))

(assert (=> b!1742456 d!532955))

(assert (=> b!1742456 d!532629))

(declare-fun d!532957 () Bool)

(assert (=> d!532957 (= (tail!2601 (++!5238 lt!671799 (_2!10801 lt!671797))) (t!161923 (++!5238 lt!671799 (_2!10801 lt!671797))))))

(assert (=> b!1742456 d!532957))

(declare-fun b!1743746 () Bool)

(declare-fun e!1115988 () Bool)

(declare-fun tp!496273 () Bool)

(declare-fun tp!496272 () Bool)

(assert (=> b!1743746 (= e!1115988 (and (inv!24821 (left!15315 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))) tp!496273 (inv!24821 (right!15645 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))) tp!496272))))

(declare-fun b!1743748 () Bool)

(declare-fun e!1115987 () Bool)

(declare-fun tp!496271 () Bool)

(assert (=> b!1743748 (= e!1115987 tp!496271)))

(declare-fun b!1743747 () Bool)

(declare-fun inv!24828 (IArray!12747) Bool)

(assert (=> b!1743747 (= e!1115988 (and (inv!24828 (xs!9247 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))) e!1115987))))

(assert (=> b!1742149 (= tp!496077 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523)))) e!1115988))))

(assert (= (and b!1742149 ((_ is Node!6371) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))) b!1743746))

(assert (= b!1743747 b!1743748))

(assert (= (and b!1742149 ((_ is Leaf!9298) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 token!523))) (value!106943 token!523))))) b!1743747))

(declare-fun m!2155485 () Bool)

(assert (=> b!1743746 m!2155485))

(declare-fun m!2155487 () Bool)

(assert (=> b!1743746 m!2155487))

(declare-fun m!2155489 () Bool)

(assert (=> b!1743747 m!2155489))

(assert (=> b!1742149 m!2153337))

(declare-fun b!1743752 () Bool)

(declare-fun e!1115989 () Bool)

(declare-fun tp!496275 () Bool)

(declare-fun tp!496278 () Bool)

(assert (=> b!1743752 (= e!1115989 (and tp!496275 tp!496278))))

(declare-fun b!1743750 () Bool)

(declare-fun tp!496276 () Bool)

(declare-fun tp!496274 () Bool)

(assert (=> b!1743750 (= e!1115989 (and tp!496276 tp!496274))))

(declare-fun b!1743749 () Bool)

(assert (=> b!1743749 (= e!1115989 tp_is_empty!7725)))

(declare-fun b!1743751 () Bool)

(declare-fun tp!496277 () Bool)

(assert (=> b!1743751 (= e!1115989 tp!496277)))

(assert (=> b!1742554 (= tp!496149 e!1115989)))

(assert (= (and b!1742554 ((_ is ElementMatch!4741) (regex!3413 (h!24556 (t!161924 rules!3447))))) b!1743749))

(assert (= (and b!1742554 ((_ is Concat!8245) (regex!3413 (h!24556 (t!161924 rules!3447))))) b!1743750))

(assert (= (and b!1742554 ((_ is Star!4741) (regex!3413 (h!24556 (t!161924 rules!3447))))) b!1743751))

(assert (= (and b!1742554 ((_ is Union!4741) (regex!3413 (h!24556 (t!161924 rules!3447))))) b!1743752))

(declare-fun b!1743753 () Bool)

(declare-fun e!1115990 () Bool)

(declare-fun tp!496279 () Bool)

(assert (=> b!1743753 (= e!1115990 (and tp_is_empty!7725 tp!496279))))

(assert (=> b!1742556 (= tp!496150 e!1115990)))

(assert (= (and b!1742556 ((_ is Cons!19154) (t!161923 (t!161923 suffix!1421)))) b!1743753))

(declare-fun b!1743757 () Bool)

(declare-fun e!1115991 () Bool)

(declare-fun tp!496281 () Bool)

(declare-fun tp!496284 () Bool)

(assert (=> b!1743757 (= e!1115991 (and tp!496281 tp!496284))))

(declare-fun b!1743755 () Bool)

(declare-fun tp!496282 () Bool)

(declare-fun tp!496280 () Bool)

(assert (=> b!1743755 (= e!1115991 (and tp!496282 tp!496280))))

(declare-fun b!1743754 () Bool)

(assert (=> b!1743754 (= e!1115991 tp_is_empty!7725)))

(declare-fun b!1743756 () Bool)

(declare-fun tp!496283 () Bool)

(assert (=> b!1743756 (= e!1115991 tp!496283)))

(assert (=> b!1742539 (= tp!496131 e!1115991)))

(assert (= (and b!1742539 ((_ is ElementMatch!4741) (regOne!9995 (regex!3413 rule!422)))) b!1743754))

(assert (= (and b!1742539 ((_ is Concat!8245) (regOne!9995 (regex!3413 rule!422)))) b!1743755))

(assert (= (and b!1742539 ((_ is Star!4741) (regOne!9995 (regex!3413 rule!422)))) b!1743756))

(assert (= (and b!1742539 ((_ is Union!4741) (regOne!9995 (regex!3413 rule!422)))) b!1743757))

(declare-fun b!1743761 () Bool)

(declare-fun e!1115992 () Bool)

(declare-fun tp!496286 () Bool)

(declare-fun tp!496289 () Bool)

(assert (=> b!1743761 (= e!1115992 (and tp!496286 tp!496289))))

(declare-fun b!1743759 () Bool)

(declare-fun tp!496287 () Bool)

(declare-fun tp!496285 () Bool)

(assert (=> b!1743759 (= e!1115992 (and tp!496287 tp!496285))))

(declare-fun b!1743758 () Bool)

(assert (=> b!1743758 (= e!1115992 tp_is_empty!7725)))

(declare-fun b!1743760 () Bool)

(declare-fun tp!496288 () Bool)

(assert (=> b!1743760 (= e!1115992 tp!496288)))

(assert (=> b!1742539 (= tp!496134 e!1115992)))

(assert (= (and b!1742539 ((_ is ElementMatch!4741) (regTwo!9995 (regex!3413 rule!422)))) b!1743758))

(assert (= (and b!1742539 ((_ is Concat!8245) (regTwo!9995 (regex!3413 rule!422)))) b!1743759))

(assert (= (and b!1742539 ((_ is Star!4741) (regTwo!9995 (regex!3413 rule!422)))) b!1743760))

(assert (= (and b!1742539 ((_ is Union!4741) (regTwo!9995 (regex!3413 rule!422)))) b!1743761))

(declare-fun e!1115994 () Bool)

(declare-fun tp!496291 () Bool)

(declare-fun b!1743762 () Bool)

(declare-fun tp!496292 () Bool)

(assert (=> b!1743762 (= e!1115994 (and (inv!24821 (left!15315 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))) tp!496292 (inv!24821 (right!15645 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))) tp!496291))))

(declare-fun b!1743764 () Bool)

(declare-fun e!1115993 () Bool)

(declare-fun tp!496290 () Bool)

(assert (=> b!1743764 (= e!1115993 tp!496290)))

(declare-fun b!1743763 () Bool)

(assert (=> b!1743763 (= e!1115994 (and (inv!24828 (xs!9247 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))) e!1115993))))

(assert (=> b!1742267 (= tp!496078 (and (inv!24821 (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797))))) e!1115994))))

(assert (= (and b!1742267 ((_ is Node!6371) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))) b!1743762))

(assert (= b!1743763 b!1743764))

(assert (= (and b!1742267 ((_ is Leaf!9298) (c!284177 (dynLambda!9054 (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))) (value!106943 (_1!10801 lt!671797)))))) b!1743763))

(declare-fun m!2155491 () Bool)

(assert (=> b!1743762 m!2155491))

(declare-fun m!2155493 () Bool)

(assert (=> b!1743762 m!2155493))

(declare-fun m!2155495 () Bool)

(assert (=> b!1743763 m!2155495))

(assert (=> b!1742267 m!2153449))

(declare-fun b!1743768 () Bool)

(declare-fun e!1115995 () Bool)

(declare-fun tp!496294 () Bool)

(declare-fun tp!496297 () Bool)

(assert (=> b!1743768 (= e!1115995 (and tp!496294 tp!496297))))

(declare-fun b!1743766 () Bool)

(declare-fun tp!496295 () Bool)

(declare-fun tp!496293 () Bool)

(assert (=> b!1743766 (= e!1115995 (and tp!496295 tp!496293))))

(declare-fun b!1743765 () Bool)

(assert (=> b!1743765 (= e!1115995 tp_is_empty!7725)))

(declare-fun b!1743767 () Bool)

(declare-fun tp!496296 () Bool)

(assert (=> b!1743767 (= e!1115995 tp!496296)))

(assert (=> b!1742537 (= tp!496132 e!1115995)))

(assert (= (and b!1742537 ((_ is ElementMatch!4741) (regOne!9994 (regex!3413 rule!422)))) b!1743765))

(assert (= (and b!1742537 ((_ is Concat!8245) (regOne!9994 (regex!3413 rule!422)))) b!1743766))

(assert (= (and b!1742537 ((_ is Star!4741) (regOne!9994 (regex!3413 rule!422)))) b!1743767))

(assert (= (and b!1742537 ((_ is Union!4741) (regOne!9994 (regex!3413 rule!422)))) b!1743768))

(declare-fun b!1743772 () Bool)

(declare-fun e!1115996 () Bool)

(declare-fun tp!496299 () Bool)

(declare-fun tp!496302 () Bool)

(assert (=> b!1743772 (= e!1115996 (and tp!496299 tp!496302))))

(declare-fun b!1743770 () Bool)

(declare-fun tp!496300 () Bool)

(declare-fun tp!496298 () Bool)

(assert (=> b!1743770 (= e!1115996 (and tp!496300 tp!496298))))

(declare-fun b!1743769 () Bool)

(assert (=> b!1743769 (= e!1115996 tp_is_empty!7725)))

(declare-fun b!1743771 () Bool)

(declare-fun tp!496301 () Bool)

(assert (=> b!1743771 (= e!1115996 tp!496301)))

(assert (=> b!1742537 (= tp!496130 e!1115996)))

(assert (= (and b!1742537 ((_ is ElementMatch!4741) (regTwo!9994 (regex!3413 rule!422)))) b!1743769))

(assert (= (and b!1742537 ((_ is Concat!8245) (regTwo!9994 (regex!3413 rule!422)))) b!1743770))

(assert (= (and b!1742537 ((_ is Star!4741) (regTwo!9994 (regex!3413 rule!422)))) b!1743771))

(assert (= (and b!1742537 ((_ is Union!4741) (regTwo!9994 (regex!3413 rule!422)))) b!1743772))

(declare-fun b!1743776 () Bool)

(declare-fun e!1115997 () Bool)

(declare-fun tp!496304 () Bool)

(declare-fun tp!496307 () Bool)

(assert (=> b!1743776 (= e!1115997 (and tp!496304 tp!496307))))

(declare-fun b!1743774 () Bool)

(declare-fun tp!496305 () Bool)

(declare-fun tp!496303 () Bool)

(assert (=> b!1743774 (= e!1115997 (and tp!496305 tp!496303))))

(declare-fun b!1743773 () Bool)

(assert (=> b!1743773 (= e!1115997 tp_is_empty!7725)))

(declare-fun b!1743775 () Bool)

(declare-fun tp!496306 () Bool)

(assert (=> b!1743775 (= e!1115997 tp!496306)))

(assert (=> b!1742559 (= tp!496154 e!1115997)))

(assert (= (and b!1742559 ((_ is ElementMatch!4741) (reg!5070 (regex!3413 (rule!5415 token!523))))) b!1743773))

(assert (= (and b!1742559 ((_ is Concat!8245) (reg!5070 (regex!3413 (rule!5415 token!523))))) b!1743774))

(assert (= (and b!1742559 ((_ is Star!4741) (reg!5070 (regex!3413 (rule!5415 token!523))))) b!1743775))

(assert (= (and b!1742559 ((_ is Union!4741) (reg!5070 (regex!3413 (rule!5415 token!523))))) b!1743776))

(declare-fun b!1743780 () Bool)

(declare-fun e!1115998 () Bool)

(declare-fun tp!496309 () Bool)

(declare-fun tp!496312 () Bool)

(assert (=> b!1743780 (= e!1115998 (and tp!496309 tp!496312))))

(declare-fun b!1743778 () Bool)

(declare-fun tp!496310 () Bool)

(declare-fun tp!496308 () Bool)

(assert (=> b!1743778 (= e!1115998 (and tp!496310 tp!496308))))

(declare-fun b!1743777 () Bool)

(assert (=> b!1743777 (= e!1115998 tp_is_empty!7725)))

(declare-fun b!1743779 () Bool)

(declare-fun tp!496311 () Bool)

(assert (=> b!1743779 (= e!1115998 tp!496311)))

(assert (=> b!1742564 (= tp!496157 e!1115998)))

(assert (= (and b!1742564 ((_ is ElementMatch!4741) (regOne!9995 (regex!3413 (h!24556 rules!3447))))) b!1743777))

(assert (= (and b!1742564 ((_ is Concat!8245) (regOne!9995 (regex!3413 (h!24556 rules!3447))))) b!1743778))

(assert (= (and b!1742564 ((_ is Star!4741) (regOne!9995 (regex!3413 (h!24556 rules!3447))))) b!1743779))

(assert (= (and b!1742564 ((_ is Union!4741) (regOne!9995 (regex!3413 (h!24556 rules!3447))))) b!1743780))

(declare-fun b!1743784 () Bool)

(declare-fun e!1115999 () Bool)

(declare-fun tp!496314 () Bool)

(declare-fun tp!496317 () Bool)

(assert (=> b!1743784 (= e!1115999 (and tp!496314 tp!496317))))

(declare-fun b!1743782 () Bool)

(declare-fun tp!496315 () Bool)

(declare-fun tp!496313 () Bool)

(assert (=> b!1743782 (= e!1115999 (and tp!496315 tp!496313))))

(declare-fun b!1743781 () Bool)

(assert (=> b!1743781 (= e!1115999 tp_is_empty!7725)))

(declare-fun b!1743783 () Bool)

(declare-fun tp!496316 () Bool)

(assert (=> b!1743783 (= e!1115999 tp!496316)))

(assert (=> b!1742564 (= tp!496160 e!1115999)))

(assert (= (and b!1742564 ((_ is ElementMatch!4741) (regTwo!9995 (regex!3413 (h!24556 rules!3447))))) b!1743781))

(assert (= (and b!1742564 ((_ is Concat!8245) (regTwo!9995 (regex!3413 (h!24556 rules!3447))))) b!1743782))

(assert (= (and b!1742564 ((_ is Star!4741) (regTwo!9995 (regex!3413 (h!24556 rules!3447))))) b!1743783))

(assert (= (and b!1742564 ((_ is Union!4741) (regTwo!9995 (regex!3413 (h!24556 rules!3447))))) b!1743784))

(declare-fun b!1743787 () Bool)

(declare-fun b_free!47963 () Bool)

(declare-fun b_next!48667 () Bool)

(assert (=> b!1743787 (= b_free!47963 (not b_next!48667))))

(declare-fun t!162060 () Bool)

(declare-fun tb!104261 () Bool)

(assert (=> (and b!1743787 (= (toValue!4920 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162060) tb!104261))

(declare-fun result!125404 () Bool)

(assert (= result!125404 result!125384))

(assert (=> d!532859 t!162060))

(declare-fun t!162062 () Bool)

(declare-fun tb!104263 () Bool)

(assert (=> (and b!1743787 (= (toValue!4920 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toValue!4920 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162062) tb!104263))

(declare-fun result!125406 () Bool)

(assert (= result!125406 result!125394))

(assert (=> d!532863 t!162062))

(declare-fun tp!496320 () Bool)

(declare-fun b_and!129661 () Bool)

(assert (=> b!1743787 (= tp!496320 (and (=> t!162060 result!125404) (=> t!162062 result!125406) b_and!129661))))

(declare-fun b_free!47965 () Bool)

(declare-fun b_next!48669 () Bool)

(assert (=> b!1743787 (= b_free!47965 (not b_next!48669))))

(declare-fun tb!104265 () Bool)

(declare-fun t!162064 () Bool)

(assert (=> (and b!1743787 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!672031)))))) t!162064) tb!104265))

(declare-fun result!125408 () Bool)

(assert (= result!125408 result!125360))

(assert (=> d!532647 t!162064))

(declare-fun t!162066 () Bool)

(declare-fun tb!104267 () Bool)

(assert (=> (and b!1743787 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 token!523)))) t!162066) tb!104267))

(declare-fun result!125410 () Bool)

(assert (= result!125410 result!125268))

(assert (=> b!1742143 t!162066))

(declare-fun t!162068 () Bool)

(declare-fun tb!104269 () Bool)

(assert (=> (and b!1743787 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 lt!672004)))) t!162068) tb!104269))

(declare-fun result!125412 () Bool)

(assert (= result!125412 result!125344))

(assert (=> d!532619 t!162068))

(declare-fun tb!104271 () Bool)

(declare-fun t!162070 () Bool)

(assert (=> (and b!1743787 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 (get!5774 lt!671892)))))) t!162070) tb!104271))

(declare-fun result!125414 () Bool)

(assert (= result!125414 result!125352))

(assert (=> d!532639 t!162070))

(declare-fun tb!104273 () Bool)

(declare-fun t!162072 () Bool)

(assert (=> (and b!1743787 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797))))) t!162072) tb!104273))

(declare-fun result!125416 () Bool)

(assert (= result!125416 result!125276))

(assert (=> d!532197 t!162072))

(assert (=> d!532227 t!162066))

(declare-fun b_and!129663 () Bool)

(declare-fun tp!496318 () Bool)

(assert (=> b!1743787 (= tp!496318 (and (=> t!162072 result!125416) (=> t!162064 result!125408) (=> t!162068 result!125412) (=> t!162066 result!125410) (=> t!162070 result!125414) b_and!129663))))

(declare-fun e!1116002 () Bool)

(assert (=> b!1743787 (= e!1116002 (and tp!496320 tp!496318))))

(declare-fun e!1116001 () Bool)

(declare-fun b!1743786 () Bool)

(declare-fun tp!496321 () Bool)

(assert (=> b!1743786 (= e!1116001 (and tp!496321 (inv!24814 (tag!3753 (h!24556 (t!161924 (t!161924 rules!3447))))) (inv!24817 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) e!1116002))))

(declare-fun b!1743785 () Bool)

(declare-fun e!1116000 () Bool)

(declare-fun tp!496319 () Bool)

(assert (=> b!1743785 (= e!1116000 (and e!1116001 tp!496319))))

(assert (=> b!1742553 (= tp!496147 e!1116000)))

(assert (= b!1743786 b!1743787))

(assert (= b!1743785 b!1743786))

(assert (= (and b!1742553 ((_ is Cons!19155) (t!161924 (t!161924 rules!3447)))) b!1743785))

(declare-fun m!2155497 () Bool)

(assert (=> b!1743786 m!2155497))

(declare-fun m!2155499 () Bool)

(assert (=> b!1743786 m!2155499))

(declare-fun b!1743791 () Bool)

(declare-fun e!1116004 () Bool)

(declare-fun tp!496323 () Bool)

(declare-fun tp!496326 () Bool)

(assert (=> b!1743791 (= e!1116004 (and tp!496323 tp!496326))))

(declare-fun b!1743789 () Bool)

(declare-fun tp!496324 () Bool)

(declare-fun tp!496322 () Bool)

(assert (=> b!1743789 (= e!1116004 (and tp!496324 tp!496322))))

(declare-fun b!1743788 () Bool)

(assert (=> b!1743788 (= e!1116004 tp_is_empty!7725)))

(declare-fun b!1743790 () Bool)

(declare-fun tp!496325 () Bool)

(assert (=> b!1743790 (= e!1116004 tp!496325)))

(assert (=> b!1742538 (= tp!496133 e!1116004)))

(assert (= (and b!1742538 ((_ is ElementMatch!4741) (reg!5070 (regex!3413 rule!422)))) b!1743788))

(assert (= (and b!1742538 ((_ is Concat!8245) (reg!5070 (regex!3413 rule!422)))) b!1743789))

(assert (= (and b!1742538 ((_ is Star!4741) (reg!5070 (regex!3413 rule!422)))) b!1743790))

(assert (= (and b!1742538 ((_ is Union!4741) (reg!5070 (regex!3413 rule!422)))) b!1743791))

(declare-fun b!1743795 () Bool)

(declare-fun e!1116005 () Bool)

(declare-fun tp!496328 () Bool)

(declare-fun tp!496331 () Bool)

(assert (=> b!1743795 (= e!1116005 (and tp!496328 tp!496331))))

(declare-fun b!1743793 () Bool)

(declare-fun tp!496329 () Bool)

(declare-fun tp!496327 () Bool)

(assert (=> b!1743793 (= e!1116005 (and tp!496329 tp!496327))))

(declare-fun b!1743792 () Bool)

(assert (=> b!1743792 (= e!1116005 tp_is_empty!7725)))

(declare-fun b!1743794 () Bool)

(declare-fun tp!496330 () Bool)

(assert (=> b!1743794 (= e!1116005 tp!496330)))

(assert (=> b!1742560 (= tp!496152 e!1116005)))

(assert (= (and b!1742560 ((_ is ElementMatch!4741) (regOne!9995 (regex!3413 (rule!5415 token!523))))) b!1743792))

(assert (= (and b!1742560 ((_ is Concat!8245) (regOne!9995 (regex!3413 (rule!5415 token!523))))) b!1743793))

(assert (= (and b!1742560 ((_ is Star!4741) (regOne!9995 (regex!3413 (rule!5415 token!523))))) b!1743794))

(assert (= (and b!1742560 ((_ is Union!4741) (regOne!9995 (regex!3413 (rule!5415 token!523))))) b!1743795))

(declare-fun b!1743799 () Bool)

(declare-fun e!1116006 () Bool)

(declare-fun tp!496333 () Bool)

(declare-fun tp!496336 () Bool)

(assert (=> b!1743799 (= e!1116006 (and tp!496333 tp!496336))))

(declare-fun b!1743797 () Bool)

(declare-fun tp!496334 () Bool)

(declare-fun tp!496332 () Bool)

(assert (=> b!1743797 (= e!1116006 (and tp!496334 tp!496332))))

(declare-fun b!1743796 () Bool)

(assert (=> b!1743796 (= e!1116006 tp_is_empty!7725)))

(declare-fun b!1743798 () Bool)

(declare-fun tp!496335 () Bool)

(assert (=> b!1743798 (= e!1116006 tp!496335)))

(assert (=> b!1742560 (= tp!496155 e!1116006)))

(assert (= (and b!1742560 ((_ is ElementMatch!4741) (regTwo!9995 (regex!3413 (rule!5415 token!523))))) b!1743796))

(assert (= (and b!1742560 ((_ is Concat!8245) (regTwo!9995 (regex!3413 (rule!5415 token!523))))) b!1743797))

(assert (= (and b!1742560 ((_ is Star!4741) (regTwo!9995 (regex!3413 (rule!5415 token!523))))) b!1743798))

(assert (= (and b!1742560 ((_ is Union!4741) (regTwo!9995 (regex!3413 (rule!5415 token!523))))) b!1743799))

(declare-fun b!1743803 () Bool)

(declare-fun e!1116007 () Bool)

(declare-fun tp!496338 () Bool)

(declare-fun tp!496341 () Bool)

(assert (=> b!1743803 (= e!1116007 (and tp!496338 tp!496341))))

(declare-fun b!1743801 () Bool)

(declare-fun tp!496339 () Bool)

(declare-fun tp!496337 () Bool)

(assert (=> b!1743801 (= e!1116007 (and tp!496339 tp!496337))))

(declare-fun b!1743800 () Bool)

(assert (=> b!1743800 (= e!1116007 tp_is_empty!7725)))

(declare-fun b!1743802 () Bool)

(declare-fun tp!496340 () Bool)

(assert (=> b!1743802 (= e!1116007 tp!496340)))

(assert (=> b!1742558 (= tp!496153 e!1116007)))

(assert (= (and b!1742558 ((_ is ElementMatch!4741) (regOne!9994 (regex!3413 (rule!5415 token!523))))) b!1743800))

(assert (= (and b!1742558 ((_ is Concat!8245) (regOne!9994 (regex!3413 (rule!5415 token!523))))) b!1743801))

(assert (= (and b!1742558 ((_ is Star!4741) (regOne!9994 (regex!3413 (rule!5415 token!523))))) b!1743802))

(assert (= (and b!1742558 ((_ is Union!4741) (regOne!9994 (regex!3413 (rule!5415 token!523))))) b!1743803))

(declare-fun b!1743807 () Bool)

(declare-fun e!1116008 () Bool)

(declare-fun tp!496343 () Bool)

(declare-fun tp!496346 () Bool)

(assert (=> b!1743807 (= e!1116008 (and tp!496343 tp!496346))))

(declare-fun b!1743805 () Bool)

(declare-fun tp!496344 () Bool)

(declare-fun tp!496342 () Bool)

(assert (=> b!1743805 (= e!1116008 (and tp!496344 tp!496342))))

(declare-fun b!1743804 () Bool)

(assert (=> b!1743804 (= e!1116008 tp_is_empty!7725)))

(declare-fun b!1743806 () Bool)

(declare-fun tp!496345 () Bool)

(assert (=> b!1743806 (= e!1116008 tp!496345)))

(assert (=> b!1742558 (= tp!496151 e!1116008)))

(assert (= (and b!1742558 ((_ is ElementMatch!4741) (regTwo!9994 (regex!3413 (rule!5415 token!523))))) b!1743804))

(assert (= (and b!1742558 ((_ is Concat!8245) (regTwo!9994 (regex!3413 (rule!5415 token!523))))) b!1743805))

(assert (= (and b!1742558 ((_ is Star!4741) (regTwo!9994 (regex!3413 (rule!5415 token!523))))) b!1743806))

(assert (= (and b!1742558 ((_ is Union!4741) (regTwo!9994 (regex!3413 (rule!5415 token!523))))) b!1743807))

(declare-fun b!1743811 () Bool)

(declare-fun e!1116009 () Bool)

(declare-fun tp!496348 () Bool)

(declare-fun tp!496351 () Bool)

(assert (=> b!1743811 (= e!1116009 (and tp!496348 tp!496351))))

(declare-fun b!1743809 () Bool)

(declare-fun tp!496349 () Bool)

(declare-fun tp!496347 () Bool)

(assert (=> b!1743809 (= e!1116009 (and tp!496349 tp!496347))))

(declare-fun b!1743808 () Bool)

(assert (=> b!1743808 (= e!1116009 tp_is_empty!7725)))

(declare-fun b!1743810 () Bool)

(declare-fun tp!496350 () Bool)

(assert (=> b!1743810 (= e!1116009 tp!496350)))

(assert (=> b!1742563 (= tp!496159 e!1116009)))

(assert (= (and b!1742563 ((_ is ElementMatch!4741) (reg!5070 (regex!3413 (h!24556 rules!3447))))) b!1743808))

(assert (= (and b!1742563 ((_ is Concat!8245) (reg!5070 (regex!3413 (h!24556 rules!3447))))) b!1743809))

(assert (= (and b!1742563 ((_ is Star!4741) (reg!5070 (regex!3413 (h!24556 rules!3447))))) b!1743810))

(assert (= (and b!1742563 ((_ is Union!4741) (reg!5070 (regex!3413 (h!24556 rules!3447))))) b!1743811))

(declare-fun b!1743815 () Bool)

(declare-fun e!1116010 () Bool)

(declare-fun tp!496353 () Bool)

(declare-fun tp!496356 () Bool)

(assert (=> b!1743815 (= e!1116010 (and tp!496353 tp!496356))))

(declare-fun b!1743813 () Bool)

(declare-fun tp!496354 () Bool)

(declare-fun tp!496352 () Bool)

(assert (=> b!1743813 (= e!1116010 (and tp!496354 tp!496352))))

(declare-fun b!1743812 () Bool)

(assert (=> b!1743812 (= e!1116010 tp_is_empty!7725)))

(declare-fun b!1743814 () Bool)

(declare-fun tp!496355 () Bool)

(assert (=> b!1743814 (= e!1116010 tp!496355)))

(assert (=> b!1742562 (= tp!496158 e!1116010)))

(assert (= (and b!1742562 ((_ is ElementMatch!4741) (regOne!9994 (regex!3413 (h!24556 rules!3447))))) b!1743812))

(assert (= (and b!1742562 ((_ is Concat!8245) (regOne!9994 (regex!3413 (h!24556 rules!3447))))) b!1743813))

(assert (= (and b!1742562 ((_ is Star!4741) (regOne!9994 (regex!3413 (h!24556 rules!3447))))) b!1743814))

(assert (= (and b!1742562 ((_ is Union!4741) (regOne!9994 (regex!3413 (h!24556 rules!3447))))) b!1743815))

(declare-fun b!1743819 () Bool)

(declare-fun e!1116011 () Bool)

(declare-fun tp!496358 () Bool)

(declare-fun tp!496361 () Bool)

(assert (=> b!1743819 (= e!1116011 (and tp!496358 tp!496361))))

(declare-fun b!1743817 () Bool)

(declare-fun tp!496359 () Bool)

(declare-fun tp!496357 () Bool)

(assert (=> b!1743817 (= e!1116011 (and tp!496359 tp!496357))))

(declare-fun b!1743816 () Bool)

(assert (=> b!1743816 (= e!1116011 tp_is_empty!7725)))

(declare-fun b!1743818 () Bool)

(declare-fun tp!496360 () Bool)

(assert (=> b!1743818 (= e!1116011 tp!496360)))

(assert (=> b!1742562 (= tp!496156 e!1116011)))

(assert (= (and b!1742562 ((_ is ElementMatch!4741) (regTwo!9994 (regex!3413 (h!24556 rules!3447))))) b!1743816))

(assert (= (and b!1742562 ((_ is Concat!8245) (regTwo!9994 (regex!3413 (h!24556 rules!3447))))) b!1743817))

(assert (= (and b!1742562 ((_ is Star!4741) (regTwo!9994 (regex!3413 (h!24556 rules!3447))))) b!1743818))

(assert (= (and b!1742562 ((_ is Union!4741) (regTwo!9994 (regex!3413 (h!24556 rules!3447))))) b!1743819))

(declare-fun b!1743820 () Bool)

(declare-fun e!1116012 () Bool)

(declare-fun tp!496362 () Bool)

(assert (=> b!1743820 (= e!1116012 (and tp_is_empty!7725 tp!496362))))

(assert (=> b!1742544 (= tp!496137 e!1116012)))

(assert (= (and b!1742544 ((_ is Cons!19154) (t!161923 (originalCharacters!4227 token!523)))) b!1743820))

(declare-fun b_lambda!55845 () Bool)

(assert (= b_lambda!55839 (or d!532299 b_lambda!55845)))

(declare-fun bs!403175 () Bool)

(declare-fun d!532959 () Bool)

(assert (= bs!403175 (and d!532959 d!532299)))

(assert (=> bs!403175 (= (dynLambda!9059 lambda!69614 (h!24556 rules!3447)) (regex!3413 (h!24556 rules!3447)))))

(assert (=> b!1743335 d!532959))

(declare-fun b_lambda!55847 () Bool)

(assert (= b_lambda!55803 (or (and b!1741986 b_free!47945 (= (toChars!4779 (transformation!3413 (h!24556 rules!3447))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (and b!1741996 b_free!47941 (= (toChars!4779 (transformation!3413 (rule!5415 token!523))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (and b!1741978 b_free!47949 (= (toChars!4779 (transformation!3413 rule!422)) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (and b!1742555 b_free!47957 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 rules!3447)))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) (and b!1743787 b_free!47965 (= (toChars!4779 (transformation!3413 (h!24556 (t!161924 (t!161924 rules!3447))))) (toChars!4779 (transformation!3413 (rule!5415 (_1!10801 lt!671797)))))) b_lambda!55847)))

(check-sat (not d!532829) (not b!1743542) (not b!1743581) b_and!129663 (not d!532929) (not b!1743536) (not b_lambda!55845) (not b!1743095) (not b!1743601) (not b!1743811) (not b!1743472) (not b_next!48669) (not b!1743220) (not b!1743328) (not bm!110142) (not b!1743387) (not b!1743593) (not b_next!48649) (not d!532781) (not d!532949) (not b!1743772) (not b!1743674) (not b!1743707) (not b!1743060) (not d!532619) (not bm!110143) (not d!532615) (not b_lambda!55831) (not b!1743718) b_and!129637 (not b!1743659) (not b!1743569) (not d!532647) (not b!1743763) (not b!1743187) (not b!1743624) (not b!1743453) (not d!532631) (not b!1743714) (not b!1743543) (not b!1743440) (not b!1743483) (not b!1743795) (not d!532907) (not d!532935) (not b!1743532) (not d!532663) (not d!532625) (not b!1743713) (not d!532769) (not d!532645) (not d!532943) (not b!1743735) (not b!1743802) (not b!1743780) (not b!1743820) (not d!532835) (not d!532925) (not b!1743604) (not b!1743103) (not b!1743372) (not d!532787) (not b!1743791) (not b!1743426) (not d!532865) (not b!1743572) (not b!1743573) (not d!532947) (not b!1743534) (not b!1743759) (not b!1743815) (not b!1743782) (not b!1743084) b_and!129633 (not b!1743435) (not b!1743805) (not d!532845) (not b!1743463) (not b!1743374) (not b!1743498) (not d!532831) (not d!532741) (not b!1743633) (not d!532895) (not d!532951) (not bm!110156) (not b!1743146) (not d!532651) (not b!1743730) (not bm!110173) (not b!1743142) (not b!1743070) (not b!1743793) (not b!1743671) (not d!532759) (not b!1743785) (not b!1743757) (not b!1743471) (not b!1743612) (not b!1743109) (not b!1743588) (not b_lambda!55841) (not b!1743719) (not b!1743126) (not b!1743548) (not b!1743494) (not b!1743609) (not d!532749) (not b_next!48647) (not b!1743711) (not b!1743599) (not d!532639) (not b!1743725) (not b!1743381) (not b!1743768) (not b!1743549) (not b!1743438) (not b!1743655) b_and!129661 (not d!532713) (not b!1743764) (not b!1743335) (not b_next!48643) (not b!1743733) (not b_lambda!55813) (not b!1743814) (not d!532823) (not b!1743631) (not b!1743660) (not b!1743775) (not b!1743753) (not b!1743149) (not b!1743658) (not d!532735) (not b!1743709) (not b!1743606) (not b!1743110) (not b!1743320) (not bm!110179) (not bm!110193) (not b!1743720) (not b!1743507) (not bm!110170) (not b_next!48653) (not b!1743078) b_and!129639 (not b!1743654) (not b!1743366) (not b!1743801) (not b!1743560) (not d!532817) (not d!532791) (not b!1743433) (not b!1743364) (not b!1743377) (not b!1742267) (not b!1743452) (not d!532883) (not b_next!48651) (not b!1743627) (not b_lambda!55843) (not d!532815) (not d!532797) (not d!532917) (not b!1743568) (not b!1743731) (not bm!110145) (not bm!110185) (not b!1742149) (not b!1743580) (not d!532857) (not b!1743575) (not b!1743577) (not d!532599) (not b!1743813) (not b_next!48645) (not b!1743648) (not b!1743442) (not b!1743586) (not b!1743355) (not b!1743752) (not b!1743533) (not b!1743803) (not b!1743748) (not b!1743729) (not b!1743578) (not b!1743567) b_and!129653 (not b!1743635) (not b!1743145) (not b!1743129) (not b!1743076) (not b!1743072) (not b!1743736) (not b!1743566) (not b!1743794) (not b!1743715) (not bm!110188) (not b!1743540) (not d!532837) (not b!1743563) (not b!1743818) (not b!1743134) (not b_next!48667) (not b!1743470) (not b!1743789) (not b!1743535) (not b!1743665) (not b!1743154) (not b!1743171) (not b!1743089) (not b!1743529) (not b!1743632) (not b!1743466) (not d!532887) b_and!129635 (not b!1743623) (not b!1743771) (not b!1743436) (not b!1743329) (not b!1743798) (not b_lambda!55829) (not d!532871) (not b!1743079) (not d!532767) (not bm!110192) (not b!1743326) (not b!1743122) (not d!532727) (not b!1743727) (not bm!110180) (not d!532597) (not b!1743778) (not d!532803) (not b!1743797) b_and!129655 (not b!1743750) (not b!1743093) (not b!1743687) (not b!1743786) (not b!1743755) (not b!1743085) (not tb!104207) (not b_next!48661) (not d!532617) (not b!1743666) (not d!532613) (not b!1743499) (not d!532861) (not b!1743762) (not d!532609) (not d!532687) (not d!532657) (not b!1743716) (not b!1743799) (not b!1743676) tp_is_empty!7725 (not b!1743530) (not b!1743448) (not b!1743422) (not b!1743321) (not b_lambda!55833) (not d!532739) (not b!1743582) (not b_lambda!55847) (not b!1743461) (not b!1743378) (not b!1743819) (not b!1743458) (not bm!110191) (not b!1743589) b_and!129657 (not b!1743598) (not d!532825) (not b!1743087) (not d!532827) (not b!1743728) (not bm!110186) (not b!1743170) (not b!1743325) (not b!1743531) (not b!1743562) (not b!1743756) (not b!1743104) (not d!532725) (not b!1743456) (not b!1743420) (not d!532901) (not d!532881) (not b!1743185) (not b_next!48659) (not tb!104253) (not b!1743747) (not d!532821) (not bm!110166) (not b!1743380) (not d!532709) (not d!532893) (not d!532779) (not d!532899) (not b!1743766) (not b!1743450) (not b!1743373) (not b!1743386) (not b!1743710) (not b!1743696) (not d!532633) (not b!1743584) (not b!1743670) (not d!532641) (not b!1743125) (not d!532843) (not b!1743806) (not b!1743447) (not b!1743101) (not b!1743155) (not b!1743686) (not b!1743695) (not b!1743501) (not bm!110144) (not tb!104223) (not b!1743817) (not b!1743746) (not d!532777) (not b!1743790) (not b!1743135) (not d!532729) (not tb!104245) (not b!1743779) (not b!1743610) (not b!1743809) (not d!532793) (not bm!110174) (not b!1743776) (not b!1743784) (not d!532855) (not b!1743630) (not b!1743469) (not b!1743574) (not b!1743418) (not b!1743751) (not b!1743629) (not b!1743096) (not b!1743576) (not bm!110183) (not b!1743068) (not d!532953) (not bm!110157) (not b!1743721) (not b!1743723) (not b!1743611) (not d!532747) (not b!1743454) (not b!1743323) (not d!532805) (not b!1743465) (not b!1743571) (not b!1743100) (not b!1743652) (not d!532873) (not bm!110187) (not b!1743807) (not b!1743774) (not d!532903) (not d!532745) (not b!1743737) (not b!1743602) (not tb!104215) (not b!1743473) (not d!532927) (not d!532889) (not b!1743767) (not bm!110155) (not b!1743061) (not b!1743595) (not b!1743690) (not b!1743128) (not b!1743605) (not b!1743597) (not b!1743148) (not bm!110182) (not b!1743724) (not d!532813) (not bm!110169) (not b!1743625) (not b!1743564) (not b!1743760) b_and!129659 (not b!1743722) (not d!532693) (not b!1743508) (not d!532789) (not bm!110175) (not b!1743502) (not b!1743651) (not b!1743810) (not b!1743565) (not b!1743770) (not d!532637) (not b!1743075) (not b_lambda!55815) (not b!1743495) (not d!532775) (not b!1743539) (not b!1743424) (not bm!110176) (not b!1743689) (not d!532937) (not b!1743783) (not b!1743608) (not b!1743091) (not d!532923) (not b!1743761))
(check-sat b_and!129663 (not b_next!48669) (not b_next!48649) b_and!129637 b_and!129633 (not b_next!48647) (not b_next!48651) (not b_next!48645) b_and!129653 (not b_next!48667) b_and!129635 b_and!129655 (not b_next!48661) b_and!129657 (not b_next!48659) b_and!129659 b_and!129661 (not b_next!48643) b_and!129639 (not b_next!48653))
