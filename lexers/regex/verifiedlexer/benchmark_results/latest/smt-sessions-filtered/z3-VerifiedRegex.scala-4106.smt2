; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220028 () Bool)

(assert start!220028)

(declare-fun b!2254726 () Bool)

(declare-fun b_free!66237 () Bool)

(declare-fun b_next!66941 () Bool)

(assert (=> b!2254726 (= b_free!66237 (not b_next!66941))))

(declare-fun tp!712582 () Bool)

(declare-fun b_and!176833 () Bool)

(assert (=> b!2254726 (= tp!712582 b_and!176833)))

(declare-fun b_free!66239 () Bool)

(declare-fun b_next!66943 () Bool)

(assert (=> b!2254726 (= b_free!66239 (not b_next!66943))))

(declare-fun tp!712572 () Bool)

(declare-fun b_and!176835 () Bool)

(assert (=> b!2254726 (= tp!712572 b_and!176835)))

(declare-fun b!2254729 () Bool)

(declare-fun b_free!66241 () Bool)

(declare-fun b_next!66945 () Bool)

(assert (=> b!2254729 (= b_free!66241 (not b_next!66945))))

(declare-fun tp!712580 () Bool)

(declare-fun b_and!176837 () Bool)

(assert (=> b!2254729 (= tp!712580 b_and!176837)))

(declare-fun b_free!66243 () Bool)

(declare-fun b_next!66947 () Bool)

(assert (=> b!2254729 (= b_free!66243 (not b_next!66947))))

(declare-fun tp!712585 () Bool)

(declare-fun b_and!176839 () Bool)

(assert (=> b!2254729 (= tp!712585 b_and!176839)))

(declare-fun b!2254712 () Bool)

(declare-fun b_free!66245 () Bool)

(declare-fun b_next!66949 () Bool)

(assert (=> b!2254712 (= b_free!66245 (not b_next!66949))))

(declare-fun tp!712577 () Bool)

(declare-fun b_and!176841 () Bool)

(assert (=> b!2254712 (= tp!712577 b_and!176841)))

(declare-fun b_free!66247 () Bool)

(declare-fun b_next!66951 () Bool)

(assert (=> b!2254712 (= b_free!66247 (not b_next!66951))))

(declare-fun tp!712576 () Bool)

(declare-fun b_and!176843 () Bool)

(assert (=> b!2254712 (= tp!712576 b_and!176843)))

(declare-fun b!2254722 () Bool)

(declare-fun b_free!66249 () Bool)

(declare-fun b_next!66953 () Bool)

(assert (=> b!2254722 (= b_free!66249 (not b_next!66953))))

(declare-fun tp!712578 () Bool)

(declare-fun b_and!176845 () Bool)

(assert (=> b!2254722 (= tp!712578 b_and!176845)))

(declare-fun b_free!66251 () Bool)

(declare-fun b_next!66955 () Bool)

(assert (=> b!2254722 (= b_free!66251 (not b_next!66955))))

(declare-fun tp!712579 () Bool)

(declare-fun b_and!176847 () Bool)

(assert (=> b!2254722 (= tp!712579 b_and!176847)))

(declare-datatypes ((List!26825 0))(
  ( (Nil!26731) (Cons!26731 (h!32132 (_ BitVec 16)) (t!201149 List!26825)) )
))
(declare-datatypes ((TokenValue!4405 0))(
  ( (FloatLiteralValue!8810 (text!31280 List!26825)) (TokenValueExt!4404 (__x!17870 Int)) (Broken!22025 (value!134719 List!26825)) (Object!4498) (End!4405) (Def!4405) (Underscore!4405) (Match!4405) (Else!4405) (Error!4405) (Case!4405) (If!4405) (Extends!4405) (Abstract!4405) (Class!4405) (Val!4405) (DelimiterValue!8810 (del!4465 List!26825)) (KeywordValue!4411 (value!134720 List!26825)) (CommentValue!8810 (value!134721 List!26825)) (WhitespaceValue!8810 (value!134722 List!26825)) (IndentationValue!4405 (value!134723 List!26825)) (String!29128) (Int32!4405) (Broken!22026 (value!134724 List!26825)) (Boolean!4406) (Unit!39655) (OperatorValue!4408 (op!4465 List!26825)) (IdentifierValue!8810 (value!134725 List!26825)) (IdentifierValue!8811 (value!134726 List!26825)) (WhitespaceValue!8811 (value!134727 List!26825)) (True!8810) (False!8810) (Broken!22027 (value!134728 List!26825)) (Broken!22028 (value!134729 List!26825)) (True!8811) (RightBrace!4405) (RightBracket!4405) (Colon!4405) (Null!4405) (Comma!4405) (LeftBracket!4405) (False!8811) (LeftBrace!4405) (ImaginaryLiteralValue!4405 (text!31281 List!26825)) (StringLiteralValue!13215 (value!134730 List!26825)) (EOFValue!4405 (value!134731 List!26825)) (IdentValue!4405 (value!134732 List!26825)) (DelimiterValue!8811 (value!134733 List!26825)) (DedentValue!4405 (value!134734 List!26825)) (NewLineValue!4405 (value!134735 List!26825)) (IntegerValue!13215 (value!134736 (_ BitVec 32)) (text!31282 List!26825)) (IntegerValue!13216 (value!134737 Int) (text!31283 List!26825)) (Times!4405) (Or!4405) (Equal!4405) (Minus!4405) (Broken!22029 (value!134738 List!26825)) (And!4405) (Div!4405) (LessEqual!4405) (Mod!4405) (Concat!10996) (Not!4405) (Plus!4405) (SpaceValue!4405 (value!134739 List!26825)) (IntegerValue!13217 (value!134740 Int) (text!31284 List!26825)) (StringLiteralValue!13216 (text!31285 List!26825)) (FloatLiteralValue!8811 (text!31286 List!26825)) (BytesLiteralValue!4405 (value!134741 List!26825)) (CommentValue!8811 (value!134742 List!26825)) (StringLiteralValue!13217 (value!134743 List!26825)) (ErrorTokenValue!4405 (msg!4466 List!26825)) )
))
(declare-datatypes ((C!13328 0))(
  ( (C!13329 (val!7712 Int)) )
))
(declare-datatypes ((List!26826 0))(
  ( (Nil!26732) (Cons!26732 (h!32133 C!13328) (t!201150 List!26826)) )
))
(declare-datatypes ((IArray!17273 0))(
  ( (IArray!17274 (innerList!8694 List!26826)) )
))
(declare-datatypes ((Conc!8634 0))(
  ( (Node!8634 (left!20304 Conc!8634) (right!20634 Conc!8634) (csize!17498 Int) (cheight!8845 Int)) (Leaf!12741 (xs!11576 IArray!17273) (csize!17499 Int)) (Empty!8634) )
))
(declare-datatypes ((BalanceConc!16996 0))(
  ( (BalanceConc!16997 (c!358436 Conc!8634)) )
))
(declare-datatypes ((Regex!6591 0))(
  ( (ElementMatch!6591 (c!358437 C!13328)) (Concat!10997 (regOne!13694 Regex!6591) (regTwo!13694 Regex!6591)) (EmptyExpr!6591) (Star!6591 (reg!6920 Regex!6591)) (EmptyLang!6591) (Union!6591 (regOne!13695 Regex!6591) (regTwo!13695 Regex!6591)) )
))
(declare-datatypes ((String!29129 0))(
  ( (String!29130 (value!134744 String)) )
))
(declare-datatypes ((TokenValueInjection!8350 0))(
  ( (TokenValueInjection!8351 (toValue!5985 Int) (toChars!5844 Int)) )
))
(declare-datatypes ((Rule!8286 0))(
  ( (Rule!8287 (regex!4243 Regex!6591) (tag!4733 String!29129) (isSeparator!4243 Bool) (transformation!4243 TokenValueInjection!8350)) )
))
(declare-datatypes ((Token!7964 0))(
  ( (Token!7965 (value!134745 TokenValue!4405) (rule!6547 Rule!8286) (size!20926 Int) (originalCharacters!5013 List!26826)) )
))
(declare-datatypes ((List!26827 0))(
  ( (Nil!26733) (Cons!26733 (h!32134 Token!7964) (t!201151 List!26827)) )
))
(declare-fun tokens!456 () List!26827)

(declare-fun e!1443113 () Bool)

(declare-fun tp!712581 () Bool)

(declare-fun b!2254704 () Bool)

(declare-fun e!1443116 () Bool)

(declare-fun inv!36264 (String!29129) Bool)

(declare-fun inv!36267 (TokenValueInjection!8350) Bool)

(assert (=> b!2254704 (= e!1443116 (and tp!712581 (inv!36264 (tag!4733 (rule!6547 (h!32134 tokens!456)))) (inv!36267 (transformation!4243 (rule!6547 (h!32134 tokens!456)))) e!1443113))))

(declare-fun b!2254705 () Bool)

(declare-fun e!1443119 () Bool)

(declare-fun e!1443101 () Bool)

(assert (=> b!2254705 (= e!1443119 e!1443101)))

(declare-fun res!963611 () Bool)

(assert (=> b!2254705 (=> res!963611 e!1443101)))

(declare-datatypes ((tuple2!26266 0))(
  ( (tuple2!26267 (_1!15643 Token!7964) (_2!15643 List!26826)) )
))
(declare-fun lt!838090 () tuple2!26266)

(assert (=> b!2254705 (= res!963611 (not (= (h!32134 tokens!456) (_1!15643 lt!838090))))))

(declare-datatypes ((Option!5219 0))(
  ( (None!5218) (Some!5218 (v!30242 tuple2!26266)) )
))
(declare-fun lt!838094 () Option!5219)

(declare-fun get!8072 (Option!5219) tuple2!26266)

(assert (=> b!2254705 (= lt!838090 (get!8072 lt!838094))))

(declare-datatypes ((LexerInterface!3840 0))(
  ( (LexerInterfaceExt!3837 (__x!17871 Int)) (Lexer!3838) )
))
(declare-fun thiss!16613 () LexerInterface!3840)

(declare-fun input!1722 () List!26826)

(declare-datatypes ((List!26828 0))(
  ( (Nil!26734) (Cons!26734 (h!32135 Rule!8286) (t!201152 List!26828)) )
))
(declare-fun rules!1750 () List!26828)

(declare-fun maxPrefix!2128 (LexerInterface!3840 List!26828 List!26826) Option!5219)

(assert (=> b!2254705 (= lt!838094 (maxPrefix!2128 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2254706 () Bool)

(declare-fun e!1443094 () Bool)

(declare-fun e!1443099 () Bool)

(assert (=> b!2254706 (= e!1443094 e!1443099)))

(declare-fun res!963608 () Bool)

(assert (=> b!2254706 (=> res!963608 e!1443099)))

(declare-fun lt!838083 () Int)

(declare-fun lt!838079 () Option!5219)

(declare-fun lt!838078 () Option!5219)

(declare-fun lt!838080 () Int)

(assert (=> b!2254706 (= res!963608 (or (not (= lt!838079 lt!838078)) (<= lt!838080 lt!838083) (not (= lt!838094 lt!838078))))))

(declare-fun lt!838093 () Token!7964)

(declare-fun lt!838075 () List!26826)

(assert (=> b!2254706 (= lt!838078 (Some!5218 (tuple2!26267 lt!838093 lt!838075)))))

(declare-fun isPrefix!2233 (List!26826 List!26826) Bool)

(assert (=> b!2254706 (isPrefix!2233 input!1722 input!1722)))

(declare-datatypes ((Unit!39656 0))(
  ( (Unit!39657) )
))
(declare-fun lt!838082 () Unit!39656)

(declare-fun lemmaIsPrefixRefl!1439 (List!26826 List!26826) Unit!39656)

(assert (=> b!2254706 (= lt!838082 (lemmaIsPrefixRefl!1439 input!1722 input!1722))))

(declare-fun lt!838084 () Unit!39656)

(declare-fun r!2363 () Rule!8286)

(declare-fun lt!838086 () BalanceConc!16996)

(declare-fun lemmaSemiInverse!1008 (TokenValueInjection!8350 BalanceConc!16996) Unit!39656)

(assert (=> b!2254706 (= lt!838084 (lemmaSemiInverse!1008 (transformation!4243 r!2363) lt!838086))))

(declare-fun b!2254707 () Bool)

(declare-fun res!963612 () Bool)

(declare-fun e!1443091 () Bool)

(assert (=> b!2254707 (=> (not res!963612) (not e!1443091))))

(declare-fun otherP!12 () List!26826)

(assert (=> b!2254707 (= res!963612 (isPrefix!2233 otherP!12 input!1722))))

(declare-fun b!2254708 () Bool)

(declare-fun e!1443092 () Bool)

(assert (=> b!2254708 (= e!1443091 (not e!1443092))))

(declare-fun res!963617 () Bool)

(assert (=> b!2254708 (=> res!963617 e!1443092)))

(declare-fun e!1443109 () Bool)

(assert (=> b!2254708 (= res!963617 e!1443109)))

(declare-fun res!963616 () Bool)

(assert (=> b!2254708 (=> (not res!963616) (not e!1443109))))

(declare-fun lt!838088 () Bool)

(assert (=> b!2254708 (= res!963616 (not lt!838088))))

(declare-fun ruleValid!1335 (LexerInterface!3840 Rule!8286) Bool)

(assert (=> b!2254708 (ruleValid!1335 thiss!16613 r!2363)))

(declare-fun lt!838085 () Unit!39656)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!742 (LexerInterface!3840 Rule!8286 List!26828) Unit!39656)

(assert (=> b!2254708 (= lt!838085 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!742 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2254709 () Bool)

(declare-fun e!1443112 () Bool)

(declare-fun tp_is_empty!10403 () Bool)

(declare-fun tp!712588 () Bool)

(assert (=> b!2254709 (= e!1443112 (and tp_is_empty!10403 tp!712588))))

(declare-fun b!2254710 () Bool)

(assert (=> b!2254710 (= e!1443092 e!1443119)))

(declare-fun res!963623 () Bool)

(assert (=> b!2254710 (=> res!963623 e!1443119)))

(declare-fun otherR!12 () Rule!8286)

(declare-fun getIndex!264 (List!26828 Rule!8286) Int)

(assert (=> b!2254710 (= res!963623 (<= (getIndex!264 rules!1750 r!2363) (getIndex!264 rules!1750 otherR!12)))))

(assert (=> b!2254710 (ruleValid!1335 thiss!16613 otherR!12)))

(declare-fun lt!838076 () Unit!39656)

(assert (=> b!2254710 (= lt!838076 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!742 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2254711 () Bool)

(declare-fun res!963624 () Bool)

(assert (=> b!2254711 (=> (not res!963624) (not e!1443091))))

(declare-fun e!1443096 () Bool)

(assert (=> b!2254711 (= res!963624 e!1443096)))

(declare-fun res!963625 () Bool)

(assert (=> b!2254711 (=> res!963625 e!1443096)))

(assert (=> b!2254711 (= res!963625 lt!838088)))

(declare-fun e!1443097 () Bool)

(assert (=> b!2254712 (= e!1443097 (and tp!712577 tp!712576))))

(declare-fun b!2254713 () Bool)

(declare-fun e!1443105 () Bool)

(assert (=> b!2254713 (= e!1443105 e!1443091)))

(declare-fun res!963619 () Bool)

(assert (=> b!2254713 (=> (not res!963619) (not e!1443091))))

(declare-fun e!1443114 () Bool)

(assert (=> b!2254713 (= res!963619 e!1443114)))

(declare-fun res!963609 () Bool)

(assert (=> b!2254713 (=> res!963609 e!1443114)))

(assert (=> b!2254713 (= res!963609 lt!838088)))

(declare-fun isEmpty!15087 (List!26827) Bool)

(assert (=> b!2254713 (= lt!838088 (isEmpty!15087 tokens!456))))

(declare-fun b!2254714 () Bool)

(declare-fun head!4814 (List!26827) Token!7964)

(assert (=> b!2254714 (= e!1443096 (= (rule!6547 (head!4814 tokens!456)) r!2363))))

(declare-fun b!2254715 () Bool)

(declare-fun e!1443121 () Bool)

(assert (=> b!2254715 (= e!1443121 e!1443105)))

(declare-fun res!963626 () Bool)

(assert (=> b!2254715 (=> (not res!963626) (not e!1443105))))

(declare-fun suffix!886 () List!26826)

(declare-datatypes ((IArray!17275 0))(
  ( (IArray!17276 (innerList!8695 List!26827)) )
))
(declare-datatypes ((Conc!8635 0))(
  ( (Node!8635 (left!20305 Conc!8635) (right!20635 Conc!8635) (csize!17500 Int) (cheight!8846 Int)) (Leaf!12742 (xs!11577 IArray!17275) (csize!17501 Int)) (Empty!8635) )
))
(declare-datatypes ((BalanceConc!16998 0))(
  ( (BalanceConc!16999 (c!358438 Conc!8635)) )
))
(declare-datatypes ((tuple2!26268 0))(
  ( (tuple2!26269 (_1!15644 BalanceConc!16998) (_2!15644 BalanceConc!16996)) )
))
(declare-fun lt!838089 () tuple2!26268)

(declare-datatypes ((tuple2!26270 0))(
  ( (tuple2!26271 (_1!15645 List!26827) (_2!15645 List!26826)) )
))
(declare-fun list!10277 (BalanceConc!16998) List!26827)

(declare-fun list!10278 (BalanceConc!16996) List!26826)

(assert (=> b!2254715 (= res!963626 (= (tuple2!26271 (list!10277 (_1!15644 lt!838089)) (list!10278 (_2!15644 lt!838089))) (tuple2!26271 tokens!456 suffix!886)))))

(declare-fun lex!1679 (LexerInterface!3840 List!26828 BalanceConc!16996) tuple2!26268)

(declare-fun seqFromList!2947 (List!26826) BalanceConc!16996)

(assert (=> b!2254715 (= lt!838089 (lex!1679 thiss!16613 rules!1750 (seqFromList!2947 input!1722)))))

(declare-fun b!2254716 () Bool)

(declare-fun e!1443117 () Bool)

(declare-fun tp!712589 () Bool)

(assert (=> b!2254716 (= e!1443117 (and tp!712589 (inv!36264 (tag!4733 (h!32135 rules!1750))) (inv!36267 (transformation!4243 (h!32135 rules!1750))) e!1443097))))

(declare-fun b!2254717 () Bool)

(declare-fun e!1443093 () Bool)

(assert (=> b!2254717 (= e!1443101 e!1443093)))

(declare-fun res!963610 () Bool)

(assert (=> b!2254717 (=> res!963610 e!1443093)))

(assert (=> b!2254717 (= res!963610 (= lt!838080 lt!838083))))

(declare-fun lt!838087 () List!26826)

(declare-fun size!20927 (List!26826) Int)

(assert (=> b!2254717 (= lt!838083 (size!20927 lt!838087))))

(assert (=> b!2254717 (= lt!838080 (size!20927 otherP!12))))

(assert (=> b!2254717 (= (_2!15643 lt!838090) lt!838075)))

(declare-fun lt!838077 () Unit!39656)

(declare-fun lemmaSamePrefixThenSameSuffix!988 (List!26826 List!26826 List!26826 List!26826 List!26826) Unit!39656)

(assert (=> b!2254717 (= lt!838077 (lemmaSamePrefixThenSameSuffix!988 lt!838087 (_2!15643 lt!838090) lt!838087 lt!838075 input!1722))))

(declare-fun getSuffix!1068 (List!26826 List!26826) List!26826)

(assert (=> b!2254717 (= lt!838075 (getSuffix!1068 input!1722 lt!838087))))

(declare-fun ++!6515 (List!26826 List!26826) List!26826)

(assert (=> b!2254717 (isPrefix!2233 lt!838087 (++!6515 lt!838087 (_2!15643 lt!838090)))))

(declare-fun lt!838092 () Unit!39656)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1478 (List!26826 List!26826) Unit!39656)

(assert (=> b!2254717 (= lt!838092 (lemmaConcatTwoListThenFirstIsPrefix!1478 lt!838087 (_2!15643 lt!838090)))))

(declare-fun charsOf!2631 (Token!7964) BalanceConc!16996)

(assert (=> b!2254717 (= lt!838087 (list!10278 (charsOf!2631 (h!32134 tokens!456))))))

(declare-fun e!1443110 () Bool)

(declare-fun tp!712575 () Bool)

(declare-fun b!2254719 () Bool)

(declare-fun e!1443115 () Bool)

(assert (=> b!2254719 (= e!1443110 (and tp!712575 (inv!36264 (tag!4733 r!2363)) (inv!36267 (transformation!4243 r!2363)) e!1443115))))

(declare-fun b!2254720 () Bool)

(declare-fun e!1443120 () Bool)

(declare-fun tp!712573 () Bool)

(assert (=> b!2254720 (= e!1443120 (and tp_is_empty!10403 tp!712573))))

(declare-fun tp!712587 () Bool)

(declare-fun b!2254721 () Bool)

(declare-fun e!1443107 () Bool)

(declare-fun inv!21 (TokenValue!4405) Bool)

(assert (=> b!2254721 (= e!1443107 (and (inv!21 (value!134745 (h!32134 tokens!456))) e!1443116 tp!712587))))

(declare-fun e!1443103 () Bool)

(assert (=> b!2254722 (= e!1443103 (and tp!712578 tp!712579))))

(declare-fun b!2254723 () Bool)

(declare-fun matchR!2852 (Regex!6591 List!26826) Bool)

(assert (=> b!2254723 (= e!1443109 (not (matchR!2852 (regex!4243 r!2363) (list!10278 (charsOf!2631 (head!4814 tokens!456))))))))

(declare-fun b!2254724 () Bool)

(declare-fun e!1443118 () Bool)

(declare-fun tp!712584 () Bool)

(assert (=> b!2254724 (= e!1443118 (and e!1443117 tp!712584))))

(declare-fun b!2254725 () Bool)

(declare-fun res!963627 () Bool)

(assert (=> b!2254725 (=> (not res!963627) (not e!1443121))))

(declare-fun contains!4595 (List!26828 Rule!8286) Bool)

(assert (=> b!2254725 (= res!963627 (contains!4595 rules!1750 r!2363))))

(assert (=> b!2254726 (= e!1443115 (and tp!712582 tp!712572))))

(declare-fun b!2254727 () Bool)

(declare-fun res!963620 () Bool)

(assert (=> b!2254727 (=> (not res!963620) (not e!1443121))))

(declare-fun isEmpty!15088 (List!26828) Bool)

(assert (=> b!2254727 (= res!963620 (not (isEmpty!15088 rules!1750)))))

(declare-fun b!2254728 () Bool)

(declare-fun e!1443102 () Bool)

(declare-fun tp!712583 () Bool)

(assert (=> b!2254728 (= e!1443102 (and tp_is_empty!10403 tp!712583))))

(assert (=> b!2254729 (= e!1443113 (and tp!712580 tp!712585))))

(declare-fun b!2254730 () Bool)

(declare-fun res!963607 () Bool)

(assert (=> b!2254730 (=> (not res!963607) (not e!1443091))))

(assert (=> b!2254730 (= res!963607 (not (= r!2363 otherR!12)))))

(declare-fun b!2254731 () Bool)

(declare-fun res!963614 () Bool)

(assert (=> b!2254731 (=> (not res!963614) (not e!1443121))))

(assert (=> b!2254731 (= res!963614 (contains!4595 rules!1750 otherR!12))))

(declare-fun b!2254732 () Bool)

(declare-fun res!963615 () Bool)

(assert (=> b!2254732 (=> res!963615 e!1443094)))

(assert (=> b!2254732 (= res!963615 (not (matchR!2852 (regex!4243 r!2363) lt!838087)))))

(declare-fun b!2254718 () Bool)

(assert (=> b!2254718 (= e!1443093 e!1443094)))

(declare-fun res!963622 () Bool)

(assert (=> b!2254718 (=> res!963622 e!1443094)))

(assert (=> b!2254718 (= res!963622 (not (isPrefix!2233 lt!838087 input!1722)))))

(assert (=> b!2254718 (= lt!838079 (Some!5218 (tuple2!26267 lt!838093 (_2!15643 lt!838090))))))

(declare-fun maxPrefixOneRule!1320 (LexerInterface!3840 Rule!8286 List!26826) Option!5219)

(assert (=> b!2254718 (= lt!838079 (maxPrefixOneRule!1320 thiss!16613 r!2363 input!1722))))

(declare-fun apply!6563 (TokenValueInjection!8350 BalanceConc!16996) TokenValue!4405)

(assert (=> b!2254718 (= lt!838093 (Token!7965 (apply!6563 (transformation!4243 r!2363) lt!838086) r!2363 lt!838083 lt!838087))))

(assert (=> b!2254718 (= lt!838086 (seqFromList!2947 lt!838087))))

(declare-fun lt!838091 () Unit!39656)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!561 (LexerInterface!3840 List!26828 List!26826 List!26826 List!26826 Rule!8286) Unit!39656)

(assert (=> b!2254718 (= lt!838091 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!561 thiss!16613 rules!1750 lt!838087 input!1722 (_2!15643 lt!838090) r!2363))))

(declare-fun res!963621 () Bool)

(assert (=> start!220028 (=> (not res!963621) (not e!1443121))))

(get-info :version)

(assert (=> start!220028 (= res!963621 ((_ is Lexer!3838) thiss!16613))))

(assert (=> start!220028 e!1443121))

(assert (=> start!220028 true))

(assert (=> start!220028 e!1443102))

(declare-fun e!1443095 () Bool)

(assert (=> start!220028 e!1443095))

(assert (=> start!220028 e!1443120))

(assert (=> start!220028 e!1443112))

(assert (=> start!220028 e!1443118))

(assert (=> start!220028 e!1443110))

(declare-fun e!1443104 () Bool)

(assert (=> start!220028 e!1443104))

(declare-fun b!2254733 () Bool)

(declare-fun res!963613 () Bool)

(assert (=> b!2254733 (=> (not res!963613) (not e!1443121))))

(declare-fun rulesInvariant!3342 (LexerInterface!3840 List!26828) Bool)

(assert (=> b!2254733 (= res!963613 (rulesInvariant!3342 thiss!16613 rules!1750))))

(declare-fun b!2254734 () Bool)

(declare-fun tp!712574 () Bool)

(declare-fun inv!36268 (Token!7964) Bool)

(assert (=> b!2254734 (= e!1443104 (and (inv!36268 (h!32134 tokens!456)) e!1443107 tp!712574))))

(declare-fun tp!712586 () Bool)

(declare-fun b!2254735 () Bool)

(assert (=> b!2254735 (= e!1443095 (and tp!712586 (inv!36264 (tag!4733 otherR!12)) (inv!36267 (transformation!4243 otherR!12)) e!1443103))))

(declare-fun b!2254736 () Bool)

(declare-fun size!20928 (BalanceConc!16996) Int)

(assert (=> b!2254736 (= e!1443114 (<= (size!20928 (charsOf!2631 (head!4814 tokens!456))) (size!20927 otherP!12)))))

(declare-fun b!2254737 () Bool)

(declare-fun res!963618 () Bool)

(assert (=> b!2254737 (=> res!963618 e!1443119)))

(assert (=> b!2254737 (= res!963618 ((_ is Nil!26733) tokens!456))))

(declare-fun b!2254738 () Bool)

(assert (=> b!2254738 (= e!1443099 true)))

(assert (=> b!2254738 (not (matchR!2852 (regex!4243 otherR!12) otherP!12))))

(declare-fun lt!838081 () Unit!39656)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!270 (LexerInterface!3840 List!26828 Rule!8286 List!26826 List!26826 List!26826 Rule!8286) Unit!39656)

(assert (=> b!2254738 (= lt!838081 (lemmaMaxPrefixOutputsMaxPrefix!270 thiss!16613 rules!1750 r!2363 lt!838087 input!1722 otherP!12 otherR!12))))

(assert (= (and start!220028 res!963621) b!2254727))

(assert (= (and b!2254727 res!963620) b!2254733))

(assert (= (and b!2254733 res!963613) b!2254725))

(assert (= (and b!2254725 res!963627) b!2254731))

(assert (= (and b!2254731 res!963614) b!2254715))

(assert (= (and b!2254715 res!963626) b!2254713))

(assert (= (and b!2254713 (not res!963609)) b!2254736))

(assert (= (and b!2254713 res!963619) b!2254711))

(assert (= (and b!2254711 (not res!963625)) b!2254714))

(assert (= (and b!2254711 res!963624) b!2254707))

(assert (= (and b!2254707 res!963612) b!2254730))

(assert (= (and b!2254730 res!963607) b!2254708))

(assert (= (and b!2254708 res!963616) b!2254723))

(assert (= (and b!2254708 (not res!963617)) b!2254710))

(assert (= (and b!2254710 (not res!963623)) b!2254737))

(assert (= (and b!2254737 (not res!963618)) b!2254705))

(assert (= (and b!2254705 (not res!963611)) b!2254717))

(assert (= (and b!2254717 (not res!963610)) b!2254718))

(assert (= (and b!2254718 (not res!963622)) b!2254732))

(assert (= (and b!2254732 (not res!963615)) b!2254706))

(assert (= (and b!2254706 (not res!963608)) b!2254738))

(assert (= (and start!220028 ((_ is Cons!26732) input!1722)) b!2254728))

(assert (= b!2254735 b!2254722))

(assert (= start!220028 b!2254735))

(assert (= (and start!220028 ((_ is Cons!26732) suffix!886)) b!2254720))

(assert (= (and start!220028 ((_ is Cons!26732) otherP!12)) b!2254709))

(assert (= b!2254716 b!2254712))

(assert (= b!2254724 b!2254716))

(assert (= (and start!220028 ((_ is Cons!26734) rules!1750)) b!2254724))

(assert (= b!2254719 b!2254726))

(assert (= start!220028 b!2254719))

(assert (= b!2254704 b!2254729))

(assert (= b!2254721 b!2254704))

(assert (= b!2254734 b!2254721))

(assert (= (and start!220028 ((_ is Cons!26733) tokens!456)) b!2254734))

(declare-fun m!2685269 () Bool)

(assert (=> b!2254713 m!2685269))

(declare-fun m!2685271 () Bool)

(assert (=> b!2254734 m!2685271))

(declare-fun m!2685273 () Bool)

(assert (=> b!2254732 m!2685273))

(declare-fun m!2685275 () Bool)

(assert (=> b!2254719 m!2685275))

(declare-fun m!2685277 () Bool)

(assert (=> b!2254719 m!2685277))

(declare-fun m!2685279 () Bool)

(assert (=> b!2254735 m!2685279))

(declare-fun m!2685281 () Bool)

(assert (=> b!2254735 m!2685281))

(declare-fun m!2685283 () Bool)

(assert (=> b!2254718 m!2685283))

(declare-fun m!2685285 () Bool)

(assert (=> b!2254718 m!2685285))

(declare-fun m!2685287 () Bool)

(assert (=> b!2254718 m!2685287))

(declare-fun m!2685289 () Bool)

(assert (=> b!2254718 m!2685289))

(declare-fun m!2685291 () Bool)

(assert (=> b!2254718 m!2685291))

(declare-fun m!2685293 () Bool)

(assert (=> b!2254716 m!2685293))

(declare-fun m!2685295 () Bool)

(assert (=> b!2254716 m!2685295))

(declare-fun m!2685297 () Bool)

(assert (=> b!2254723 m!2685297))

(assert (=> b!2254723 m!2685297))

(declare-fun m!2685299 () Bool)

(assert (=> b!2254723 m!2685299))

(assert (=> b!2254723 m!2685299))

(declare-fun m!2685301 () Bool)

(assert (=> b!2254723 m!2685301))

(assert (=> b!2254723 m!2685301))

(declare-fun m!2685303 () Bool)

(assert (=> b!2254723 m!2685303))

(declare-fun m!2685305 () Bool)

(assert (=> b!2254707 m!2685305))

(assert (=> b!2254714 m!2685297))

(declare-fun m!2685307 () Bool)

(assert (=> b!2254727 m!2685307))

(declare-fun m!2685309 () Bool)

(assert (=> b!2254704 m!2685309))

(declare-fun m!2685311 () Bool)

(assert (=> b!2254704 m!2685311))

(assert (=> b!2254736 m!2685297))

(assert (=> b!2254736 m!2685297))

(assert (=> b!2254736 m!2685299))

(assert (=> b!2254736 m!2685299))

(declare-fun m!2685313 () Bool)

(assert (=> b!2254736 m!2685313))

(declare-fun m!2685315 () Bool)

(assert (=> b!2254736 m!2685315))

(declare-fun m!2685317 () Bool)

(assert (=> b!2254708 m!2685317))

(declare-fun m!2685319 () Bool)

(assert (=> b!2254708 m!2685319))

(declare-fun m!2685321 () Bool)

(assert (=> b!2254733 m!2685321))

(declare-fun m!2685323 () Bool)

(assert (=> b!2254731 m!2685323))

(declare-fun m!2685325 () Bool)

(assert (=> b!2254705 m!2685325))

(declare-fun m!2685327 () Bool)

(assert (=> b!2254705 m!2685327))

(declare-fun m!2685329 () Bool)

(assert (=> b!2254717 m!2685329))

(declare-fun m!2685331 () Bool)

(assert (=> b!2254717 m!2685331))

(declare-fun m!2685333 () Bool)

(assert (=> b!2254717 m!2685333))

(declare-fun m!2685335 () Bool)

(assert (=> b!2254717 m!2685335))

(declare-fun m!2685337 () Bool)

(assert (=> b!2254717 m!2685337))

(declare-fun m!2685339 () Bool)

(assert (=> b!2254717 m!2685339))

(assert (=> b!2254717 m!2685333))

(assert (=> b!2254717 m!2685337))

(declare-fun m!2685341 () Bool)

(assert (=> b!2254717 m!2685341))

(declare-fun m!2685343 () Bool)

(assert (=> b!2254717 m!2685343))

(assert (=> b!2254717 m!2685315))

(declare-fun m!2685345 () Bool)

(assert (=> b!2254710 m!2685345))

(declare-fun m!2685347 () Bool)

(assert (=> b!2254710 m!2685347))

(declare-fun m!2685349 () Bool)

(assert (=> b!2254710 m!2685349))

(declare-fun m!2685351 () Bool)

(assert (=> b!2254710 m!2685351))

(declare-fun m!2685353 () Bool)

(assert (=> b!2254715 m!2685353))

(declare-fun m!2685355 () Bool)

(assert (=> b!2254715 m!2685355))

(declare-fun m!2685357 () Bool)

(assert (=> b!2254715 m!2685357))

(assert (=> b!2254715 m!2685357))

(declare-fun m!2685359 () Bool)

(assert (=> b!2254715 m!2685359))

(declare-fun m!2685361 () Bool)

(assert (=> b!2254738 m!2685361))

(declare-fun m!2685363 () Bool)

(assert (=> b!2254738 m!2685363))

(declare-fun m!2685365 () Bool)

(assert (=> b!2254721 m!2685365))

(declare-fun m!2685367 () Bool)

(assert (=> b!2254725 m!2685367))

(declare-fun m!2685369 () Bool)

(assert (=> b!2254706 m!2685369))

(declare-fun m!2685371 () Bool)

(assert (=> b!2254706 m!2685371))

(declare-fun m!2685373 () Bool)

(assert (=> b!2254706 m!2685373))

(check-sat (not b_next!66953) (not b!2254721) b_and!176839 (not b!2254706) (not b!2254734) (not b!2254720) b_and!176835 b_and!176843 tp_is_empty!10403 (not b!2254718) (not b!2254732) (not b!2254704) (not b_next!66941) b_and!176841 (not b_next!66943) (not b!2254713) (not b!2254715) b_and!176833 (not b!2254733) b_and!176837 (not b!2254705) (not b!2254724) (not b!2254731) (not b!2254728) (not b!2254707) b_and!176845 (not b_next!66949) (not b!2254708) (not b!2254714) (not b!2254738) (not b_next!66955) (not b_next!66945) (not b!2254709) (not b!2254710) (not b!2254716) (not b!2254723) (not b!2254719) b_and!176847 (not b!2254736) (not b!2254727) (not b!2254725) (not b_next!66951) (not b!2254717) (not b!2254735) (not b_next!66947))
(check-sat (not b_next!66943) (not b_next!66953) b_and!176833 b_and!176839 b_and!176837 b_and!176845 (not b_next!66949) (not b_next!66955) (not b_next!66945) b_and!176835 b_and!176843 b_and!176847 (not b_next!66941) b_and!176841 (not b_next!66951) (not b_next!66947))
