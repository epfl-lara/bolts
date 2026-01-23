; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170126 () Bool)

(assert start!170126)

(declare-fun b!1730721 () Bool)

(declare-fun b_free!47331 () Bool)

(declare-fun b_next!48035 () Bool)

(assert (=> b!1730721 (= b_free!47331 (not b_next!48035))))

(declare-fun tp!493509 () Bool)

(declare-fun b_and!127527 () Bool)

(assert (=> b!1730721 (= tp!493509 b_and!127527)))

(declare-fun b_free!47333 () Bool)

(declare-fun b_next!48037 () Bool)

(assert (=> b!1730721 (= b_free!47333 (not b_next!48037))))

(declare-fun tp!493511 () Bool)

(declare-fun b_and!127529 () Bool)

(assert (=> b!1730721 (= tp!493511 b_and!127529)))

(declare-fun b!1730694 () Bool)

(declare-fun b_free!47335 () Bool)

(declare-fun b_next!48039 () Bool)

(assert (=> b!1730694 (= b_free!47335 (not b_next!48039))))

(declare-fun tp!493519 () Bool)

(declare-fun b_and!127531 () Bool)

(assert (=> b!1730694 (= tp!493519 b_and!127531)))

(declare-fun b_free!47337 () Bool)

(declare-fun b_next!48041 () Bool)

(assert (=> b!1730694 (= b_free!47337 (not b_next!48041))))

(declare-fun tp!493515 () Bool)

(declare-fun b_and!127533 () Bool)

(assert (=> b!1730694 (= tp!493515 b_and!127533)))

(declare-fun b!1730705 () Bool)

(declare-fun b_free!47339 () Bool)

(declare-fun b_next!48043 () Bool)

(assert (=> b!1730705 (= b_free!47339 (not b_next!48043))))

(declare-fun tp!493514 () Bool)

(declare-fun b_and!127535 () Bool)

(assert (=> b!1730705 (= tp!493514 b_and!127535)))

(declare-fun b_free!47341 () Bool)

(declare-fun b_next!48045 () Bool)

(assert (=> b!1730705 (= b_free!47341 (not b_next!48045))))

(declare-fun tp!493513 () Bool)

(declare-fun b_and!127537 () Bool)

(assert (=> b!1730705 (= tp!493513 b_and!127537)))

(declare-fun b!1730734 () Bool)

(declare-fun e!1107245 () Bool)

(assert (=> b!1730734 (= e!1107245 true)))

(declare-fun b!1730733 () Bool)

(declare-fun e!1107244 () Bool)

(assert (=> b!1730733 (= e!1107244 e!1107245)))

(declare-fun b!1730732 () Bool)

(declare-fun e!1107243 () Bool)

(assert (=> b!1730732 (= e!1107243 e!1107244)))

(declare-fun b!1730692 () Bool)

(assert (=> b!1730692 e!1107243))

(assert (= b!1730733 b!1730734))

(assert (= b!1730732 b!1730733))

(assert (= b!1730692 b!1730732))

(declare-fun lambda!69362 () Int)

(declare-fun order!11689 () Int)

(declare-fun order!11687 () Int)

(declare-datatypes ((List!19044 0))(
  ( (Nil!18974) (Cons!18974 (h!24375 (_ BitVec 16)) (t!160667 List!19044)) )
))
(declare-datatypes ((TokenValue!3457 0))(
  ( (FloatLiteralValue!6914 (text!24644 List!19044)) (TokenValueExt!3456 (__x!12216 Int)) (Broken!17285 (value!105606 List!19044)) (Object!3526) (End!3457) (Def!3457) (Underscore!3457) (Match!3457) (Else!3457) (Error!3457) (Case!3457) (If!3457) (Extends!3457) (Abstract!3457) (Class!3457) (Val!3457) (DelimiterValue!6914 (del!3517 List!19044)) (KeywordValue!3463 (value!105607 List!19044)) (CommentValue!6914 (value!105608 List!19044)) (WhitespaceValue!6914 (value!105609 List!19044)) (IndentationValue!3457 (value!105610 List!19044)) (String!21616) (Int32!3457) (Broken!17286 (value!105611 List!19044)) (Boolean!3458) (Unit!32830) (OperatorValue!3460 (op!3517 List!19044)) (IdentifierValue!6914 (value!105612 List!19044)) (IdentifierValue!6915 (value!105613 List!19044)) (WhitespaceValue!6915 (value!105614 List!19044)) (True!6914) (False!6914) (Broken!17287 (value!105615 List!19044)) (Broken!17288 (value!105616 List!19044)) (True!6915) (RightBrace!3457) (RightBracket!3457) (Colon!3457) (Null!3457) (Comma!3457) (LeftBracket!3457) (False!6915) (LeftBrace!3457) (ImaginaryLiteralValue!3457 (text!24645 List!19044)) (StringLiteralValue!10371 (value!105617 List!19044)) (EOFValue!3457 (value!105618 List!19044)) (IdentValue!3457 (value!105619 List!19044)) (DelimiterValue!6915 (value!105620 List!19044)) (DedentValue!3457 (value!105621 List!19044)) (NewLineValue!3457 (value!105622 List!19044)) (IntegerValue!10371 (value!105623 (_ BitVec 32)) (text!24646 List!19044)) (IntegerValue!10372 (value!105624 Int) (text!24647 List!19044)) (Times!3457) (Or!3457) (Equal!3457) (Minus!3457) (Broken!17289 (value!105625 List!19044)) (And!3457) (Div!3457) (LessEqual!3457) (Mod!3457) (Concat!8152) (Not!3457) (Plus!3457) (SpaceValue!3457 (value!105626 List!19044)) (IntegerValue!10373 (value!105627 Int) (text!24648 List!19044)) (StringLiteralValue!10372 (text!24649 List!19044)) (FloatLiteralValue!6915 (text!24650 List!19044)) (BytesLiteralValue!3457 (value!105628 List!19044)) (CommentValue!6915 (value!105629 List!19044)) (StringLiteralValue!10373 (value!105630 List!19044)) (ErrorTokenValue!3457 (msg!3518 List!19044)) )
))
(declare-datatypes ((C!9564 0))(
  ( (C!9565 (val!5378 Int)) )
))
(declare-datatypes ((List!19045 0))(
  ( (Nil!18975) (Cons!18975 (h!24376 C!9564) (t!160668 List!19045)) )
))
(declare-datatypes ((Regex!4695 0))(
  ( (ElementMatch!4695 (c!282776 C!9564)) (Concat!8153 (regOne!9902 Regex!4695) (regTwo!9902 Regex!4695)) (EmptyExpr!4695) (Star!4695 (reg!5024 Regex!4695)) (EmptyLang!4695) (Union!4695 (regOne!9903 Regex!4695) (regTwo!9903 Regex!4695)) )
))
(declare-datatypes ((String!21617 0))(
  ( (String!21618 (value!105631 String)) )
))
(declare-datatypes ((IArray!12627 0))(
  ( (IArray!12628 (innerList!6371 List!19045)) )
))
(declare-datatypes ((Conc!6311 0))(
  ( (Node!6311 (left!15152 Conc!6311) (right!15482 Conc!6311) (csize!12852 Int) (cheight!6522 Int)) (Leaf!9215 (xs!9187 IArray!12627) (csize!12853 Int)) (Empty!6311) )
))
(declare-datatypes ((BalanceConc!12566 0))(
  ( (BalanceConc!12567 (c!282777 Conc!6311)) )
))
(declare-datatypes ((TokenValueInjection!6574 0))(
  ( (TokenValueInjection!6575 (toValue!4874 Int) (toChars!4733 Int)) )
))
(declare-datatypes ((Rule!6534 0))(
  ( (Rule!6535 (regex!3367 Regex!4695) (tag!3693 String!21617) (isSeparator!3367 Bool) (transformation!3367 TokenValueInjection!6574)) )
))
(declare-datatypes ((Token!6300 0))(
  ( (Token!6301 (value!105632 TokenValue!3457) (rule!5345 Rule!6534) (size!15074 Int) (originalCharacters!4181 List!19045)) )
))
(declare-datatypes ((tuple2!18654 0))(
  ( (tuple2!18655 (_1!10729 Token!6300) (_2!10729 List!19045)) )
))
(declare-fun lt!663836 () tuple2!18654)

(declare-fun dynLambda!8838 (Int Int) Int)

(declare-fun dynLambda!8839 (Int Int) Int)

(assert (=> b!1730734 (< (dynLambda!8838 order!11687 (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) (dynLambda!8839 order!11689 lambda!69362))))

(declare-fun order!11691 () Int)

(declare-fun dynLambda!8840 (Int Int) Int)

(assert (=> b!1730734 (< (dynLambda!8840 order!11691 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) (dynLambda!8839 order!11689 lambda!69362))))

(declare-fun e!1107231 () Bool)

(declare-fun e!1107224 () Bool)

(assert (=> b!1730692 (= e!1107231 e!1107224)))

(declare-fun res!777244 () Bool)

(assert (=> b!1730692 (=> res!777244 e!1107224)))

(declare-fun Forall!742 (Int) Bool)

(assert (=> b!1730692 (= res!777244 (not (Forall!742 lambda!69362)))))

(declare-datatypes ((Unit!32831 0))(
  ( (Unit!32832) )
))
(declare-fun lt!663823 () Unit!32831)

(declare-fun lemmaInv!574 (TokenValueInjection!6574) Unit!32831)

(assert (=> b!1730692 (= lt!663823 (lemmaInv!574 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))))))

(declare-fun e!1107213 () Bool)

(assert (=> b!1730694 (= e!1107213 (and tp!493519 tp!493515))))

(declare-fun b!1730695 () Bool)

(declare-fun res!777261 () Bool)

(declare-fun e!1107234 () Bool)

(assert (=> b!1730695 (=> (not res!777261) (not e!1107234))))

(declare-datatypes ((List!19046 0))(
  ( (Nil!18976) (Cons!18976 (h!24377 Rule!6534) (t!160669 List!19046)) )
))
(declare-fun rules!3447 () List!19046)

(declare-fun isEmpty!11937 (List!19046) Bool)

(assert (=> b!1730695 (= res!777261 (not (isEmpty!11937 rules!3447)))))

(declare-fun b!1730696 () Bool)

(declare-fun e!1107229 () Bool)

(declare-fun e!1107225 () Bool)

(assert (=> b!1730696 (= e!1107229 (not e!1107225))))

(declare-fun res!777260 () Bool)

(assert (=> b!1730696 (=> res!777260 e!1107225)))

(declare-fun rule!422 () Rule!6534)

(declare-fun lt!663847 () List!19045)

(declare-fun matchR!2169 (Regex!4695 List!19045) Bool)

(assert (=> b!1730696 (= res!777260 (not (matchR!2169 (regex!3367 rule!422) lt!663847)))))

(declare-datatypes ((LexerInterface!2996 0))(
  ( (LexerInterfaceExt!2993 (__x!12217 Int)) (Lexer!2994) )
))
(declare-fun thiss!24550 () LexerInterface!2996)

(declare-fun ruleValid!866 (LexerInterface!2996 Rule!6534) Bool)

(assert (=> b!1730696 (ruleValid!866 thiss!24550 rule!422)))

(declare-fun lt!663821 () Unit!32831)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!390 (LexerInterface!2996 Rule!6534 List!19046) Unit!32831)

(assert (=> b!1730696 (= lt!663821 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!390 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1730697 () Bool)

(declare-fun e!1107235 () Bool)

(declare-fun e!1107211 () Bool)

(declare-fun tp!493517 () Bool)

(assert (=> b!1730697 (= e!1107235 (and e!1107211 tp!493517))))

(declare-fun b!1730698 () Bool)

(declare-fun res!777256 () Bool)

(assert (=> b!1730698 (=> (not res!777256) (not e!1107229))))

(declare-fun lt!663852 () tuple2!18654)

(declare-fun isEmpty!11938 (List!19045) Bool)

(assert (=> b!1730698 (= res!777256 (isEmpty!11938 (_2!10729 lt!663852)))))

(declare-fun b!1730699 () Bool)

(declare-fun e!1107232 () Bool)

(assert (=> b!1730699 (= e!1107224 e!1107232)))

(declare-fun res!777266 () Bool)

(assert (=> b!1730699 (=> res!777266 e!1107232)))

(declare-fun lt!663838 () BalanceConc!12566)

(declare-fun lt!663824 () List!19045)

(declare-fun list!7672 (BalanceConc!12566) List!19045)

(declare-fun dynLambda!8841 (Int TokenValue!3457) BalanceConc!12566)

(declare-fun dynLambda!8842 (Int BalanceConc!12566) TokenValue!3457)

(assert (=> b!1730699 (= res!777266 (not (= (list!7672 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (dynLambda!8842 (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) lt!663838))) lt!663824)))))

(declare-fun lt!663841 () Unit!32831)

(declare-fun lemmaSemiInverse!513 (TokenValueInjection!6574 BalanceConc!12566) Unit!32831)

(assert (=> b!1730699 (= lt!663841 (lemmaSemiInverse!513 (transformation!3367 (rule!5345 (_1!10729 lt!663836))) lt!663838))))

(declare-fun e!1107220 () Bool)

(declare-fun e!1107210 () Bool)

(declare-fun b!1730700 () Bool)

(declare-fun tp!493512 () Bool)

(declare-fun inv!24535 (String!21617) Bool)

(declare-fun inv!24540 (TokenValueInjection!6574) Bool)

(assert (=> b!1730700 (= e!1107220 (and tp!493512 (inv!24535 (tag!3693 rule!422)) (inv!24540 (transformation!3367 rule!422)) e!1107210))))

(declare-fun b!1730701 () Bool)

(declare-fun e!1107228 () Bool)

(declare-fun e!1107214 () Bool)

(assert (=> b!1730701 (= e!1107228 e!1107214)))

(declare-fun res!777265 () Bool)

(assert (=> b!1730701 (=> res!777265 e!1107214)))

(declare-fun lt!663849 () List!19045)

(declare-fun suffix!1421 () List!19045)

(assert (=> b!1730701 (= res!777265 (not (= lt!663849 suffix!1421)))))

(assert (=> b!1730701 (= suffix!1421 lt!663849)))

(declare-fun lt!663819 () List!19045)

(declare-fun lt!663839 () Unit!32831)

(declare-fun lemmaSamePrefixThenSameSuffix!752 (List!19045 List!19045 List!19045 List!19045 List!19045) Unit!32831)

(assert (=> b!1730701 (= lt!663839 (lemmaSamePrefixThenSameSuffix!752 lt!663847 suffix!1421 lt!663847 lt!663849 lt!663819))))

(declare-fun getSuffix!802 (List!19045 List!19045) List!19045)

(assert (=> b!1730701 (= lt!663849 (getSuffix!802 lt!663819 lt!663847))))

(declare-fun lt!663832 () Regex!4695)

(assert (=> b!1730701 (matchR!2169 lt!663832 lt!663824)))

(declare-fun lt!663851 () Unit!32831)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!116 (LexerInterface!2996 List!19046 List!19045 Token!6300 Rule!6534 List!19045) Unit!32831)

(assert (=> b!1730701 (= lt!663851 (lemmaMaxPrefixThenMatchesRulesRegex!116 thiss!24550 rules!3447 lt!663819 (_1!10729 lt!663836) (rule!5345 (_1!10729 lt!663836)) (_2!10729 lt!663836)))))

(declare-fun b!1730702 () Bool)

(declare-fun e!1107221 () Bool)

(declare-fun e!1107216 () Bool)

(assert (=> b!1730702 (= e!1107221 e!1107216)))

(declare-fun res!777249 () Bool)

(assert (=> b!1730702 (=> (not res!777249) (not e!1107216))))

(declare-fun lt!663844 () Rule!6534)

(declare-fun charsOf!2016 (Token!6300) BalanceConc!12566)

(assert (=> b!1730702 (= res!777249 (matchR!2169 (regex!3367 lt!663844) (list!7672 (charsOf!2016 (_1!10729 lt!663836)))))))

(declare-datatypes ((Option!3758 0))(
  ( (None!3757) (Some!3757 (v!25176 Rule!6534)) )
))
(declare-fun lt!663831 () Option!3758)

(declare-fun get!5659 (Option!3758) Rule!6534)

(assert (=> b!1730702 (= lt!663844 (get!5659 lt!663831))))

(declare-fun e!1107218 () Bool)

(declare-fun token!523 () Token!6300)

(declare-fun b!1730703 () Bool)

(declare-fun tp!493510 () Bool)

(assert (=> b!1730703 (= e!1107218 (and tp!493510 (inv!24535 (tag!3693 (rule!5345 token!523))) (inv!24540 (transformation!3367 (rule!5345 token!523))) e!1107213))))

(declare-fun b!1730704 () Bool)

(declare-fun res!777252 () Bool)

(assert (=> b!1730704 (=> (not res!777252) (not e!1107234))))

(declare-fun rulesInvariant!2665 (LexerInterface!2996 List!19046) Bool)

(assert (=> b!1730704 (= res!777252 (rulesInvariant!2665 thiss!24550 rules!3447))))

(declare-fun res!777257 () Bool)

(assert (=> start!170126 (=> (not res!777257) (not e!1107234))))

(get-info :version)

(assert (=> start!170126 (= res!777257 ((_ is Lexer!2994) thiss!24550))))

(assert (=> start!170126 e!1107234))

(declare-fun e!1107230 () Bool)

(assert (=> start!170126 e!1107230))

(assert (=> start!170126 e!1107220))

(assert (=> start!170126 true))

(declare-fun e!1107236 () Bool)

(declare-fun inv!24541 (Token!6300) Bool)

(assert (=> start!170126 (and (inv!24541 token!523) e!1107236)))

(assert (=> start!170126 e!1107235))

(declare-fun b!1730693 () Bool)

(declare-fun e!1107212 () Bool)

(assert (=> b!1730693 (= e!1107234 e!1107212)))

(declare-fun res!777250 () Bool)

(assert (=> b!1730693 (=> (not res!777250) (not e!1107212))))

(declare-datatypes ((Option!3759 0))(
  ( (None!3758) (Some!3758 (v!25177 tuple2!18654)) )
))
(declare-fun lt!663846 () Option!3759)

(declare-fun isDefined!3101 (Option!3759) Bool)

(assert (=> b!1730693 (= res!777250 (isDefined!3101 lt!663846))))

(declare-fun maxPrefix!1550 (LexerInterface!2996 List!19046 List!19045) Option!3759)

(assert (=> b!1730693 (= lt!663846 (maxPrefix!1550 thiss!24550 rules!3447 lt!663847))))

(declare-fun lt!663826 () BalanceConc!12566)

(assert (=> b!1730693 (= lt!663847 (list!7672 lt!663826))))

(assert (=> b!1730693 (= lt!663826 (charsOf!2016 token!523))))

(assert (=> b!1730705 (= e!1107210 (and tp!493514 tp!493513))))

(declare-fun b!1730706 () Bool)

(declare-fun e!1107215 () Bool)

(assert (=> b!1730706 (= e!1107214 e!1107215)))

(declare-fun res!777262 () Bool)

(assert (=> b!1730706 (=> res!777262 e!1107215)))

(declare-fun lt!663830 () List!19045)

(declare-fun isPrefix!1608 (List!19045 List!19045) Bool)

(assert (=> b!1730706 (= res!777262 (not (isPrefix!1608 lt!663830 lt!663819)))))

(declare-fun ++!5192 (List!19045 List!19045) List!19045)

(declare-fun head!3936 (List!19045) C!9564)

(assert (=> b!1730706 (isPrefix!1608 (++!5192 lt!663847 (Cons!18975 (head!3936 lt!663849) Nil!18975)) lt!663819)))

(declare-fun lt!663837 () Unit!32831)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!203 (List!19045 List!19045) Unit!32831)

(assert (=> b!1730706 (= lt!663837 (lemmaAddHeadSuffixToPrefixStillPrefix!203 lt!663847 lt!663819))))

(declare-fun b!1730707 () Bool)

(assert (=> b!1730707 (= e!1107212 e!1107229)))

(declare-fun res!777251 () Bool)

(assert (=> b!1730707 (=> (not res!777251) (not e!1107229))))

(assert (=> b!1730707 (= res!777251 (= (_1!10729 lt!663852) token!523))))

(declare-fun get!5660 (Option!3759) tuple2!18654)

(assert (=> b!1730707 (= lt!663852 (get!5660 lt!663846))))

(declare-fun b!1730708 () Bool)

(declare-fun res!777253 () Bool)

(assert (=> b!1730708 (=> (not res!777253) (not e!1107229))))

(assert (=> b!1730708 (= res!777253 (= (rule!5345 token!523) rule!422))))

(declare-fun b!1730709 () Bool)

(assert (=> b!1730709 (= e!1107215 true)))

(declare-fun lt!663817 () Int)

(declare-fun size!15075 (List!19045) Int)

(assert (=> b!1730709 (= lt!663817 (size!15075 lt!663830))))

(declare-fun b!1730710 () Bool)

(declare-fun e!1107226 () Bool)

(assert (=> b!1730710 (= e!1107232 e!1107226)))

(declare-fun res!777258 () Bool)

(assert (=> b!1730710 (=> res!777258 e!1107226)))

(declare-fun lt!663827 () Option!3759)

(declare-fun lt!663818 () Int)

(declare-fun lt!663845 () TokenValue!3457)

(assert (=> b!1730710 (= res!777258 (not (= lt!663827 (Some!3758 (tuple2!18655 (Token!6301 lt!663845 (rule!5345 (_1!10729 lt!663836)) lt!663818 lt!663824) (_2!10729 lt!663836))))))))

(declare-fun size!15076 (BalanceConc!12566) Int)

(assert (=> b!1730710 (= lt!663818 (size!15076 lt!663838))))

(declare-fun apply!5172 (TokenValueInjection!6574 BalanceConc!12566) TokenValue!3457)

(assert (=> b!1730710 (= lt!663845 (apply!5172 (transformation!3367 (rule!5345 (_1!10729 lt!663836))) lt!663838))))

(declare-fun lt!663835 () Unit!32831)

(declare-fun lemmaCharactersSize!439 (Token!6300) Unit!32831)

(assert (=> b!1730710 (= lt!663835 (lemmaCharactersSize!439 (_1!10729 lt!663836)))))

(declare-fun lt!663820 () Unit!32831)

(declare-fun lemmaEqSameImage!292 (TokenValueInjection!6574 BalanceConc!12566 BalanceConc!12566) Unit!32831)

(declare-fun seqFromList!2341 (List!19045) BalanceConc!12566)

(assert (=> b!1730710 (= lt!663820 (lemmaEqSameImage!292 (transformation!3367 (rule!5345 (_1!10729 lt!663836))) lt!663838 (seqFromList!2341 (originalCharacters!4181 (_1!10729 lt!663836)))))))

(declare-fun b!1730711 () Bool)

(declare-fun e!1107219 () Bool)

(assert (=> b!1730711 (= e!1107219 e!1107231)))

(declare-fun res!777263 () Bool)

(assert (=> b!1730711 (=> res!777263 e!1107231)))

(assert (=> b!1730711 (= res!777263 (not (isPrefix!1608 lt!663824 lt!663819)))))

(assert (=> b!1730711 (isPrefix!1608 lt!663824 (++!5192 lt!663824 (_2!10729 lt!663836)))))

(declare-fun lt!663850 () Unit!32831)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1118 (List!19045 List!19045) Unit!32831)

(assert (=> b!1730711 (= lt!663850 (lemmaConcatTwoListThenFirstIsPrefix!1118 lt!663824 (_2!10729 lt!663836)))))

(assert (=> b!1730711 (= lt!663824 (list!7672 lt!663838))))

(assert (=> b!1730711 (= lt!663838 (charsOf!2016 (_1!10729 lt!663836)))))

(assert (=> b!1730711 e!1107221))

(declare-fun res!777247 () Bool)

(assert (=> b!1730711 (=> (not res!777247) (not e!1107221))))

(declare-fun isDefined!3102 (Option!3758) Bool)

(assert (=> b!1730711 (= res!777247 (isDefined!3102 lt!663831))))

(declare-fun getRuleFromTag!417 (LexerInterface!2996 List!19046 String!21617) Option!3758)

(assert (=> b!1730711 (= lt!663831 (getRuleFromTag!417 thiss!24550 rules!3447 (tag!3693 (rule!5345 (_1!10729 lt!663836)))))))

(declare-fun lt!663825 () Unit!32831)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!417 (LexerInterface!2996 List!19046 List!19045 Token!6300) Unit!32831)

(assert (=> b!1730711 (= lt!663825 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!417 thiss!24550 rules!3447 lt!663819 (_1!10729 lt!663836)))))

(assert (=> b!1730711 (= lt!663836 (get!5660 lt!663827))))

(declare-fun lt!663834 () Unit!32831)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!520 (LexerInterface!2996 List!19046 List!19045 List!19045) Unit!32831)

(assert (=> b!1730711 (= lt!663834 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!520 thiss!24550 rules!3447 lt!663847 suffix!1421))))

(assert (=> b!1730711 (= lt!663827 (maxPrefix!1550 thiss!24550 rules!3447 lt!663819))))

(assert (=> b!1730711 (isPrefix!1608 lt!663847 lt!663819)))

(declare-fun lt!663843 () Unit!32831)

(assert (=> b!1730711 (= lt!663843 (lemmaConcatTwoListThenFirstIsPrefix!1118 lt!663847 suffix!1421))))

(assert (=> b!1730711 (= lt!663819 (++!5192 lt!663847 suffix!1421))))

(declare-fun b!1730712 () Bool)

(declare-fun tp_is_empty!7633 () Bool)

(declare-fun tp!493518 () Bool)

(assert (=> b!1730712 (= e!1107230 (and tp_is_empty!7633 tp!493518))))

(declare-fun b!1730713 () Bool)

(declare-fun res!777264 () Bool)

(assert (=> b!1730713 (=> (not res!777264) (not e!1107234))))

(declare-fun contains!3389 (List!19046 Rule!6534) Bool)

(assert (=> b!1730713 (= res!777264 (contains!3389 rules!3447 rule!422))))

(declare-fun b!1730714 () Bool)

(declare-fun res!777248 () Bool)

(assert (=> b!1730714 (=> res!777248 e!1107232)))

(assert (=> b!1730714 (= res!777248 (not (= lt!663838 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (value!105632 (_1!10729 lt!663836))))))))

(declare-fun b!1730715 () Bool)

(declare-fun e!1107223 () Bool)

(assert (=> b!1730715 (= e!1107226 e!1107223)))

(declare-fun res!777245 () Bool)

(assert (=> b!1730715 (=> res!777245 e!1107223)))

(declare-fun lt!663840 () List!19045)

(declare-fun lt!663842 () Option!3759)

(assert (=> b!1730715 (= res!777245 (or (not (= lt!663840 (_2!10729 lt!663836))) (not (= lt!663842 (Some!3758 (tuple2!18655 (_1!10729 lt!663836) lt!663840))))))))

(assert (=> b!1730715 (= (_2!10729 lt!663836) lt!663840)))

(declare-fun lt!663848 () Unit!32831)

(assert (=> b!1730715 (= lt!663848 (lemmaSamePrefixThenSameSuffix!752 lt!663824 (_2!10729 lt!663836) lt!663824 lt!663840 lt!663819))))

(assert (=> b!1730715 (= lt!663840 (getSuffix!802 lt!663819 lt!663824))))

(declare-fun lt!663828 () Int)

(declare-fun lt!663833 () TokenValue!3457)

(assert (=> b!1730715 (= lt!663842 (Some!3758 (tuple2!18655 (Token!6301 lt!663833 (rule!5345 (_1!10729 lt!663836)) lt!663828 lt!663824) (_2!10729 lt!663836))))))

(declare-fun maxPrefixOneRule!926 (LexerInterface!2996 Rule!6534 List!19045) Option!3759)

(assert (=> b!1730715 (= lt!663842 (maxPrefixOneRule!926 thiss!24550 (rule!5345 (_1!10729 lt!663836)) lt!663819))))

(assert (=> b!1730715 (= lt!663828 (size!15075 lt!663824))))

(assert (=> b!1730715 (= lt!663833 (apply!5172 (transformation!3367 (rule!5345 (_1!10729 lt!663836))) (seqFromList!2341 lt!663824)))))

(declare-fun lt!663829 () Unit!32831)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!325 (LexerInterface!2996 List!19046 List!19045 List!19045 List!19045 Rule!6534) Unit!32831)

(assert (=> b!1730715 (= lt!663829 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!325 thiss!24550 rules!3447 lt!663824 lt!663819 (_2!10729 lt!663836) (rule!5345 (_1!10729 lt!663836))))))

(declare-fun b!1730716 () Bool)

(declare-fun res!777255 () Bool)

(assert (=> b!1730716 (=> res!777255 e!1107231)))

(assert (=> b!1730716 (= res!777255 (not (matchR!2169 (regex!3367 (rule!5345 (_1!10729 lt!663836))) lt!663824)))))

(declare-fun b!1730717 () Bool)

(assert (=> b!1730717 (= e!1107223 e!1107228)))

(declare-fun res!777254 () Bool)

(assert (=> b!1730717 (=> res!777254 e!1107228)))

(assert (=> b!1730717 (= res!777254 (<= lt!663818 (size!15076 lt!663826)))))

(assert (=> b!1730717 (matchR!2169 lt!663832 lt!663847)))

(declare-fun lt!663822 () Unit!32831)

(assert (=> b!1730717 (= lt!663822 (lemmaMaxPrefixThenMatchesRulesRegex!116 thiss!24550 rules!3447 lt!663847 token!523 rule!422 Nil!18975))))

(declare-fun tp!493520 () Bool)

(declare-fun e!1107217 () Bool)

(declare-fun b!1730718 () Bool)

(assert (=> b!1730718 (= e!1107211 (and tp!493520 (inv!24535 (tag!3693 (h!24377 rules!3447))) (inv!24540 (transformation!3367 (h!24377 rules!3447))) e!1107217))))

(declare-fun b!1730719 () Bool)

(assert (=> b!1730719 (= e!1107225 e!1107219)))

(declare-fun res!777259 () Bool)

(assert (=> b!1730719 (=> res!777259 e!1107219)))

(declare-fun prefixMatch!580 (Regex!4695 List!19045) Bool)

(assert (=> b!1730719 (= res!777259 (prefixMatch!580 lt!663832 lt!663830))))

(assert (=> b!1730719 (= lt!663830 (++!5192 lt!663847 (Cons!18975 (head!3936 suffix!1421) Nil!18975)))))

(declare-fun rulesRegex!725 (LexerInterface!2996 List!19046) Regex!4695)

(assert (=> b!1730719 (= lt!663832 (rulesRegex!725 thiss!24550 rules!3447))))

(declare-fun b!1730720 () Bool)

(declare-fun res!777246 () Bool)

(assert (=> b!1730720 (=> res!777246 e!1107225)))

(assert (=> b!1730720 (= res!777246 (isEmpty!11938 suffix!1421))))

(assert (=> b!1730721 (= e!1107217 (and tp!493509 tp!493511))))

(declare-fun b!1730722 () Bool)

(declare-fun tp!493516 () Bool)

(declare-fun inv!21 (TokenValue!3457) Bool)

(assert (=> b!1730722 (= e!1107236 (and (inv!21 (value!105632 token!523)) e!1107218 tp!493516))))

(declare-fun b!1730723 () Bool)

(assert (=> b!1730723 (= e!1107216 (= (rule!5345 (_1!10729 lt!663836)) lt!663844))))

(assert (= (and start!170126 res!777257) b!1730695))

(assert (= (and b!1730695 res!777261) b!1730704))

(assert (= (and b!1730704 res!777252) b!1730713))

(assert (= (and b!1730713 res!777264) b!1730693))

(assert (= (and b!1730693 res!777250) b!1730707))

(assert (= (and b!1730707 res!777251) b!1730698))

(assert (= (and b!1730698 res!777256) b!1730708))

(assert (= (and b!1730708 res!777253) b!1730696))

(assert (= (and b!1730696 (not res!777260)) b!1730720))

(assert (= (and b!1730720 (not res!777246)) b!1730719))

(assert (= (and b!1730719 (not res!777259)) b!1730711))

(assert (= (and b!1730711 res!777247) b!1730702))

(assert (= (and b!1730702 res!777249) b!1730723))

(assert (= (and b!1730711 (not res!777263)) b!1730716))

(assert (= (and b!1730716 (not res!777255)) b!1730692))

(assert (= (and b!1730692 (not res!777244)) b!1730699))

(assert (= (and b!1730699 (not res!777266)) b!1730714))

(assert (= (and b!1730714 (not res!777248)) b!1730710))

(assert (= (and b!1730710 (not res!777258)) b!1730715))

(assert (= (and b!1730715 (not res!777245)) b!1730717))

(assert (= (and b!1730717 (not res!777254)) b!1730701))

(assert (= (and b!1730701 (not res!777265)) b!1730706))

(assert (= (and b!1730706 (not res!777262)) b!1730709))

(assert (= (and start!170126 ((_ is Cons!18975) suffix!1421)) b!1730712))

(assert (= b!1730700 b!1730705))

(assert (= start!170126 b!1730700))

(assert (= b!1730703 b!1730694))

(assert (= b!1730722 b!1730703))

(assert (= start!170126 b!1730722))

(assert (= b!1730718 b!1730721))

(assert (= b!1730697 b!1730718))

(assert (= (and start!170126 ((_ is Cons!18976) rules!3447)) b!1730697))

(declare-fun b_lambda!55207 () Bool)

(assert (=> (not b_lambda!55207) (not b!1730699)))

(declare-fun t!160650 () Bool)

(declare-fun tb!103041 () Bool)

(assert (=> (and b!1730721 (= (toChars!4733 (transformation!3367 (h!24377 rules!3447))) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160650) tb!103041))

(declare-fun b!1730739 () Bool)

(declare-fun tp!493523 () Bool)

(declare-fun e!1107248 () Bool)

(declare-fun inv!24542 (Conc!6311) Bool)

(assert (=> b!1730739 (= e!1107248 (and (inv!24542 (c!282777 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (dynLambda!8842 (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) lt!663838)))) tp!493523))))

(declare-fun result!123892 () Bool)

(declare-fun inv!24543 (BalanceConc!12566) Bool)

(assert (=> tb!103041 (= result!123892 (and (inv!24543 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (dynLambda!8842 (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) lt!663838))) e!1107248))))

(assert (= tb!103041 b!1730739))

(declare-fun m!2138763 () Bool)

(assert (=> b!1730739 m!2138763))

(declare-fun m!2138765 () Bool)

(assert (=> tb!103041 m!2138765))

(assert (=> b!1730699 t!160650))

(declare-fun b_and!127539 () Bool)

(assert (= b_and!127529 (and (=> t!160650 result!123892) b_and!127539)))

(declare-fun t!160652 () Bool)

(declare-fun tb!103043 () Bool)

(assert (=> (and b!1730694 (= (toChars!4733 (transformation!3367 (rule!5345 token!523))) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160652) tb!103043))

(declare-fun result!123896 () Bool)

(assert (= result!123896 result!123892))

(assert (=> b!1730699 t!160652))

(declare-fun b_and!127541 () Bool)

(assert (= b_and!127533 (and (=> t!160652 result!123896) b_and!127541)))

(declare-fun t!160654 () Bool)

(declare-fun tb!103045 () Bool)

(assert (=> (and b!1730705 (= (toChars!4733 (transformation!3367 rule!422)) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160654) tb!103045))

(declare-fun result!123898 () Bool)

(assert (= result!123898 result!123892))

(assert (=> b!1730699 t!160654))

(declare-fun b_and!127543 () Bool)

(assert (= b_and!127537 (and (=> t!160654 result!123898) b_and!127543)))

(declare-fun b_lambda!55209 () Bool)

(assert (=> (not b_lambda!55209) (not b!1730699)))

(declare-fun tb!103047 () Bool)

(declare-fun t!160656 () Bool)

(assert (=> (and b!1730721 (= (toValue!4874 (transformation!3367 (h!24377 rules!3447))) (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160656) tb!103047))

(declare-fun result!123900 () Bool)

(assert (=> tb!103047 (= result!123900 (inv!21 (dynLambda!8842 (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) lt!663838)))))

(declare-fun m!2138767 () Bool)

(assert (=> tb!103047 m!2138767))

(assert (=> b!1730699 t!160656))

(declare-fun b_and!127545 () Bool)

(assert (= b_and!127527 (and (=> t!160656 result!123900) b_and!127545)))

(declare-fun t!160658 () Bool)

(declare-fun tb!103049 () Bool)

(assert (=> (and b!1730694 (= (toValue!4874 (transformation!3367 (rule!5345 token!523))) (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160658) tb!103049))

(declare-fun result!123904 () Bool)

(assert (= result!123904 result!123900))

(assert (=> b!1730699 t!160658))

(declare-fun b_and!127547 () Bool)

(assert (= b_and!127531 (and (=> t!160658 result!123904) b_and!127547)))

(declare-fun tb!103051 () Bool)

(declare-fun t!160660 () Bool)

(assert (=> (and b!1730705 (= (toValue!4874 (transformation!3367 rule!422)) (toValue!4874 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160660) tb!103051))

(declare-fun result!123906 () Bool)

(assert (= result!123906 result!123900))

(assert (=> b!1730699 t!160660))

(declare-fun b_and!127549 () Bool)

(assert (= b_and!127535 (and (=> t!160660 result!123906) b_and!127549)))

(declare-fun b_lambda!55211 () Bool)

(assert (=> (not b_lambda!55211) (not b!1730714)))

(declare-fun tb!103053 () Bool)

(declare-fun t!160662 () Bool)

(assert (=> (and b!1730721 (= (toChars!4733 (transformation!3367 (h!24377 rules!3447))) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160662) tb!103053))

(declare-fun b!1730742 () Bool)

(declare-fun e!1107252 () Bool)

(declare-fun tp!493524 () Bool)

(assert (=> b!1730742 (= e!1107252 (and (inv!24542 (c!282777 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (value!105632 (_1!10729 lt!663836))))) tp!493524))))

(declare-fun result!123908 () Bool)

(assert (=> tb!103053 (= result!123908 (and (inv!24543 (dynLambda!8841 (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836)))) (value!105632 (_1!10729 lt!663836)))) e!1107252))))

(assert (= tb!103053 b!1730742))

(declare-fun m!2138769 () Bool)

(assert (=> b!1730742 m!2138769))

(declare-fun m!2138771 () Bool)

(assert (=> tb!103053 m!2138771))

(assert (=> b!1730714 t!160662))

(declare-fun b_and!127551 () Bool)

(assert (= b_and!127539 (and (=> t!160662 result!123908) b_and!127551)))

(declare-fun tb!103055 () Bool)

(declare-fun t!160664 () Bool)

(assert (=> (and b!1730694 (= (toChars!4733 (transformation!3367 (rule!5345 token!523))) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160664) tb!103055))

(declare-fun result!123910 () Bool)

(assert (= result!123910 result!123908))

(assert (=> b!1730714 t!160664))

(declare-fun b_and!127553 () Bool)

(assert (= b_and!127541 (and (=> t!160664 result!123910) b_and!127553)))

(declare-fun t!160666 () Bool)

(declare-fun tb!103057 () Bool)

(assert (=> (and b!1730705 (= (toChars!4733 (transformation!3367 rule!422)) (toChars!4733 (transformation!3367 (rule!5345 (_1!10729 lt!663836))))) t!160666) tb!103057))

(declare-fun result!123912 () Bool)

(assert (= result!123912 result!123908))

(assert (=> b!1730714 t!160666))

(declare-fun b_and!127555 () Bool)

(assert (= b_and!127543 (and (=> t!160666 result!123912) b_and!127555)))

(declare-fun m!2138773 () Bool)

(assert (=> b!1730719 m!2138773))

(declare-fun m!2138775 () Bool)

(assert (=> b!1730719 m!2138775))

(declare-fun m!2138777 () Bool)

(assert (=> b!1730719 m!2138777))

(declare-fun m!2138779 () Bool)

(assert (=> b!1730719 m!2138779))

(declare-fun m!2138781 () Bool)

(assert (=> b!1730718 m!2138781))

(declare-fun m!2138783 () Bool)

(assert (=> b!1730718 m!2138783))

(declare-fun m!2138785 () Bool)

(assert (=> b!1730711 m!2138785))

(declare-fun m!2138787 () Bool)

(assert (=> b!1730711 m!2138787))

(declare-fun m!2138789 () Bool)

(assert (=> b!1730711 m!2138789))

(declare-fun m!2138791 () Bool)

(assert (=> b!1730711 m!2138791))

(declare-fun m!2138793 () Bool)

(assert (=> b!1730711 m!2138793))

(declare-fun m!2138795 () Bool)

(assert (=> b!1730711 m!2138795))

(declare-fun m!2138797 () Bool)

(assert (=> b!1730711 m!2138797))

(declare-fun m!2138799 () Bool)

(assert (=> b!1730711 m!2138799))

(declare-fun m!2138801 () Bool)

(assert (=> b!1730711 m!2138801))

(declare-fun m!2138803 () Bool)

(assert (=> b!1730711 m!2138803))

(assert (=> b!1730711 m!2138787))

(declare-fun m!2138805 () Bool)

(assert (=> b!1730711 m!2138805))

(declare-fun m!2138807 () Bool)

(assert (=> b!1730711 m!2138807))

(declare-fun m!2138809 () Bool)

(assert (=> b!1730711 m!2138809))

(declare-fun m!2138811 () Bool)

(assert (=> b!1730711 m!2138811))

(declare-fun m!2138813 () Bool)

(assert (=> b!1730711 m!2138813))

(declare-fun m!2138815 () Bool)

(assert (=> b!1730713 m!2138815))

(declare-fun m!2138817 () Bool)

(assert (=> b!1730707 m!2138817))

(declare-fun m!2138819 () Bool)

(assert (=> b!1730709 m!2138819))

(declare-fun m!2138821 () Bool)

(assert (=> b!1730698 m!2138821))

(declare-fun m!2138823 () Bool)

(assert (=> b!1730717 m!2138823))

(declare-fun m!2138825 () Bool)

(assert (=> b!1730717 m!2138825))

(declare-fun m!2138827 () Bool)

(assert (=> b!1730717 m!2138827))

(declare-fun m!2138829 () Bool)

(assert (=> b!1730693 m!2138829))

(declare-fun m!2138831 () Bool)

(assert (=> b!1730693 m!2138831))

(declare-fun m!2138833 () Bool)

(assert (=> b!1730693 m!2138833))

(declare-fun m!2138835 () Bool)

(assert (=> b!1730693 m!2138835))

(declare-fun m!2138837 () Bool)

(assert (=> b!1730699 m!2138837))

(assert (=> b!1730699 m!2138837))

(declare-fun m!2138839 () Bool)

(assert (=> b!1730699 m!2138839))

(assert (=> b!1730699 m!2138839))

(declare-fun m!2138841 () Bool)

(assert (=> b!1730699 m!2138841))

(declare-fun m!2138843 () Bool)

(assert (=> b!1730699 m!2138843))

(assert (=> b!1730702 m!2138793))

(assert (=> b!1730702 m!2138793))

(declare-fun m!2138845 () Bool)

(assert (=> b!1730702 m!2138845))

(assert (=> b!1730702 m!2138845))

(declare-fun m!2138847 () Bool)

(assert (=> b!1730702 m!2138847))

(declare-fun m!2138849 () Bool)

(assert (=> b!1730702 m!2138849))

(declare-fun m!2138851 () Bool)

(assert (=> b!1730701 m!2138851))

(declare-fun m!2138853 () Bool)

(assert (=> b!1730701 m!2138853))

(declare-fun m!2138855 () Bool)

(assert (=> b!1730701 m!2138855))

(declare-fun m!2138857 () Bool)

(assert (=> b!1730701 m!2138857))

(declare-fun m!2138859 () Bool)

(assert (=> b!1730704 m!2138859))

(declare-fun m!2138861 () Bool)

(assert (=> b!1730700 m!2138861))

(declare-fun m!2138863 () Bool)

(assert (=> b!1730700 m!2138863))

(declare-fun m!2138865 () Bool)

(assert (=> b!1730692 m!2138865))

(declare-fun m!2138867 () Bool)

(assert (=> b!1730692 m!2138867))

(declare-fun m!2138869 () Bool)

(assert (=> b!1730696 m!2138869))

(declare-fun m!2138871 () Bool)

(assert (=> b!1730696 m!2138871))

(declare-fun m!2138873 () Bool)

(assert (=> b!1730696 m!2138873))

(declare-fun m!2138875 () Bool)

(assert (=> b!1730710 m!2138875))

(declare-fun m!2138877 () Bool)

(assert (=> b!1730710 m!2138877))

(declare-fun m!2138879 () Bool)

(assert (=> b!1730710 m!2138879))

(assert (=> b!1730710 m!2138877))

(declare-fun m!2138881 () Bool)

(assert (=> b!1730710 m!2138881))

(declare-fun m!2138883 () Bool)

(assert (=> b!1730710 m!2138883))

(declare-fun m!2138885 () Bool)

(assert (=> b!1730703 m!2138885))

(declare-fun m!2138887 () Bool)

(assert (=> b!1730703 m!2138887))

(declare-fun m!2138889 () Bool)

(assert (=> b!1730716 m!2138889))

(declare-fun m!2138891 () Bool)

(assert (=> b!1730715 m!2138891))

(declare-fun m!2138893 () Bool)

(assert (=> b!1730715 m!2138893))

(declare-fun m!2138895 () Bool)

(assert (=> b!1730715 m!2138895))

(declare-fun m!2138897 () Bool)

(assert (=> b!1730715 m!2138897))

(declare-fun m!2138899 () Bool)

(assert (=> b!1730715 m!2138899))

(declare-fun m!2138901 () Bool)

(assert (=> b!1730715 m!2138901))

(assert (=> b!1730715 m!2138901))

(declare-fun m!2138903 () Bool)

(assert (=> b!1730715 m!2138903))

(declare-fun m!2138905 () Bool)

(assert (=> b!1730714 m!2138905))

(declare-fun m!2138907 () Bool)

(assert (=> b!1730720 m!2138907))

(declare-fun m!2138909 () Bool)

(assert (=> start!170126 m!2138909))

(declare-fun m!2138911 () Bool)

(assert (=> b!1730722 m!2138911))

(declare-fun m!2138913 () Bool)

(assert (=> b!1730695 m!2138913))

(declare-fun m!2138915 () Bool)

(assert (=> b!1730706 m!2138915))

(declare-fun m!2138917 () Bool)

(assert (=> b!1730706 m!2138917))

(declare-fun m!2138919 () Bool)

(assert (=> b!1730706 m!2138919))

(declare-fun m!2138921 () Bool)

(assert (=> b!1730706 m!2138921))

(assert (=> b!1730706 m!2138917))

(declare-fun m!2138923 () Bool)

(assert (=> b!1730706 m!2138923))

(check-sat (not start!170126) (not b_lambda!55209) (not b!1730697) (not b!1730716) (not b!1730693) (not b!1730710) (not b!1730707) (not b!1730722) (not b!1730715) (not b!1730717) (not b!1730701) (not b!1730711) (not b!1730704) (not b_next!48041) (not b_next!48035) (not b_next!48037) (not b_next!48043) tp_is_empty!7633 b_and!127547 (not tb!103047) (not b_next!48039) (not b!1730700) b_and!127549 (not b!1730703) (not b_lambda!55207) (not tb!103041) (not b!1730739) (not b!1730696) (not b_lambda!55211) (not b!1730718) (not b!1730742) (not b!1730695) (not b!1730712) (not b!1730702) (not b!1730698) (not b!1730709) (not b!1730720) (not b!1730706) (not b!1730699) (not b!1730713) b_and!127551 (not b!1730719) (not b_next!48045) (not tb!103053) (not b!1730692) b_and!127555 b_and!127545 b_and!127553)
(check-sat (not b_next!48039) b_and!127549 b_and!127551 (not b_next!48045) b_and!127555 (not b_next!48041) (not b_next!48035) (not b_next!48037) (not b_next!48043) b_and!127547 b_and!127545 b_and!127553)
