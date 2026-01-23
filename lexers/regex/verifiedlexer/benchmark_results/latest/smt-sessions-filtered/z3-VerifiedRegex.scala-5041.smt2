; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255602 () Bool)

(assert start!255602)

(declare-fun b!2628069 () Bool)

(declare-fun b_free!73917 () Bool)

(declare-fun b_next!74621 () Bool)

(assert (=> b!2628069 (= b_free!73917 (not b_next!74621))))

(declare-fun tp!833187 () Bool)

(declare-fun b_and!192475 () Bool)

(assert (=> b!2628069 (= tp!833187 b_and!192475)))

(declare-fun b_free!73919 () Bool)

(declare-fun b_next!74623 () Bool)

(assert (=> b!2628069 (= b_free!73919 (not b_next!74623))))

(declare-fun tp!833194 () Bool)

(declare-fun b_and!192477 () Bool)

(assert (=> b!2628069 (= tp!833194 b_and!192477)))

(declare-fun b!2628068 () Bool)

(declare-fun b_free!73921 () Bool)

(declare-fun b_next!74625 () Bool)

(assert (=> b!2628068 (= b_free!73921 (not b_next!74625))))

(declare-fun tp!833191 () Bool)

(declare-fun b_and!192479 () Bool)

(assert (=> b!2628068 (= tp!833191 b_and!192479)))

(declare-fun b_free!73923 () Bool)

(declare-fun b_next!74627 () Bool)

(assert (=> b!2628068 (= b_free!73923 (not b_next!74627))))

(declare-fun tp!833190 () Bool)

(declare-fun b_and!192481 () Bool)

(assert (=> b!2628068 (= tp!833190 b_and!192481)))

(declare-fun bs!475649 () Bool)

(declare-fun b!2628067 () Bool)

(declare-fun b!2628050 () Bool)

(assert (= bs!475649 (and b!2628067 b!2628050)))

(declare-fun lambda!98430 () Int)

(declare-fun lambda!98429 () Int)

(assert (=> bs!475649 (not (= lambda!98430 lambda!98429))))

(declare-fun b!2628080 () Bool)

(declare-fun e!1657976 () Bool)

(assert (=> b!2628080 (= e!1657976 true)))

(declare-fun b!2628079 () Bool)

(declare-fun e!1657975 () Bool)

(assert (=> b!2628079 (= e!1657975 e!1657976)))

(declare-fun b!2628078 () Bool)

(declare-fun e!1657974 () Bool)

(assert (=> b!2628078 (= e!1657974 e!1657975)))

(assert (=> b!2628067 e!1657974))

(assert (= b!2628079 b!2628080))

(assert (= b!2628078 b!2628079))

(declare-datatypes ((List!30449 0))(
  ( (Nil!30349) (Cons!30349 (h!35769 (_ BitVec 16)) (t!216098 List!30449)) )
))
(declare-datatypes ((C!15652 0))(
  ( (C!15653 (val!9760 Int)) )
))
(declare-datatypes ((TokenValue!4825 0))(
  ( (FloatLiteralValue!9650 (text!34220 List!30449)) (TokenValueExt!4824 (__x!19483 Int)) (Broken!24125 (value!148764 List!30449)) (Object!4924) (End!4825) (Def!4825) (Underscore!4825) (Match!4825) (Else!4825) (Error!4825) (Case!4825) (If!4825) (Extends!4825) (Abstract!4825) (Class!4825) (Val!4825) (DelimiterValue!9650 (del!4885 List!30449)) (KeywordValue!4831 (value!148765 List!30449)) (CommentValue!9650 (value!148766 List!30449)) (WhitespaceValue!9650 (value!148767 List!30449)) (IndentationValue!4825 (value!148768 List!30449)) (String!34008) (Int32!4825) (Broken!24126 (value!148769 List!30449)) (Boolean!4826) (Unit!44394) (OperatorValue!4828 (op!4885 List!30449)) (IdentifierValue!9650 (value!148770 List!30449)) (IdentifierValue!9651 (value!148771 List!30449)) (WhitespaceValue!9651 (value!148772 List!30449)) (True!9650) (False!9650) (Broken!24127 (value!148773 List!30449)) (Broken!24128 (value!148774 List!30449)) (True!9651) (RightBrace!4825) (RightBracket!4825) (Colon!4825) (Null!4825) (Comma!4825) (LeftBracket!4825) (False!9651) (LeftBrace!4825) (ImaginaryLiteralValue!4825 (text!34221 List!30449)) (StringLiteralValue!14475 (value!148775 List!30449)) (EOFValue!4825 (value!148776 List!30449)) (IdentValue!4825 (value!148777 List!30449)) (DelimiterValue!9651 (value!148778 List!30449)) (DedentValue!4825 (value!148779 List!30449)) (NewLineValue!4825 (value!148780 List!30449)) (IntegerValue!14475 (value!148781 (_ BitVec 32)) (text!34222 List!30449)) (IntegerValue!14476 (value!148782 Int) (text!34223 List!30449)) (Times!4825) (Or!4825) (Equal!4825) (Minus!4825) (Broken!24129 (value!148783 List!30449)) (And!4825) (Div!4825) (LessEqual!4825) (Mod!4825) (Concat!12572) (Not!4825) (Plus!4825) (SpaceValue!4825 (value!148784 List!30449)) (IntegerValue!14477 (value!148785 Int) (text!34224 List!30449)) (StringLiteralValue!14476 (text!34225 List!30449)) (FloatLiteralValue!9651 (text!34226 List!30449)) (BytesLiteralValue!4825 (value!148786 List!30449)) (CommentValue!9651 (value!148787 List!30449)) (StringLiteralValue!14477 (value!148788 List!30449)) (ErrorTokenValue!4825 (msg!4886 List!30449)) )
))
(declare-datatypes ((List!30450 0))(
  ( (Nil!30350) (Cons!30350 (h!35770 C!15652) (t!216099 List!30450)) )
))
(declare-datatypes ((IArray!18901 0))(
  ( (IArray!18902 (innerList!9508 List!30450)) )
))
(declare-datatypes ((Conc!9448 0))(
  ( (Node!9448 (left!23401 Conc!9448) (right!23731 Conc!9448) (csize!19126 Int) (cheight!9659 Int)) (Leaf!14490 (xs!12448 IArray!18901) (csize!19127 Int)) (Empty!9448) )
))
(declare-datatypes ((BalanceConc!18510 0))(
  ( (BalanceConc!18511 (c!422760 Conc!9448)) )
))
(declare-datatypes ((TokenValueInjection!9090 0))(
  ( (TokenValueInjection!9091 (toValue!6517 Int) (toChars!6376 Int)) )
))
(declare-datatypes ((Regex!7747 0))(
  ( (ElementMatch!7747 (c!422761 C!15652)) (Concat!12573 (regOne!16006 Regex!7747) (regTwo!16006 Regex!7747)) (EmptyExpr!7747) (Star!7747 (reg!8076 Regex!7747)) (EmptyLang!7747) (Union!7747 (regOne!16007 Regex!7747) (regTwo!16007 Regex!7747)) )
))
(declare-datatypes ((String!34009 0))(
  ( (String!34010 (value!148789 String)) )
))
(declare-datatypes ((Rule!9006 0))(
  ( (Rule!9007 (regex!4603 Regex!7747) (tag!5097 String!34009) (isSeparator!4603 Bool) (transformation!4603 TokenValueInjection!9090)) )
))
(declare-datatypes ((List!30451 0))(
  ( (Nil!30351) (Cons!30351 (h!35771 Rule!9006) (t!216100 List!30451)) )
))
(declare-fun rules!1726 () List!30451)

(get-info :version)

(assert (= (and b!2628067 ((_ is Cons!30351) rules!1726)) b!2628078))

(declare-fun order!16319 () Int)

(declare-fun order!16321 () Int)

(declare-fun dynLambda!12951 (Int Int) Int)

(declare-fun dynLambda!12952 (Int Int) Int)

(assert (=> b!2628080 (< (dynLambda!12951 order!16319 (toValue!6517 (transformation!4603 (h!35771 rules!1726)))) (dynLambda!12952 order!16321 lambda!98430))))

(declare-fun order!16323 () Int)

(declare-fun dynLambda!12953 (Int Int) Int)

(assert (=> b!2628080 (< (dynLambda!12953 order!16323 (toChars!6376 (transformation!4603 (h!35771 rules!1726)))) (dynLambda!12952 order!16321 lambda!98430))))

(assert (=> b!2628067 true))

(declare-fun res!1106195 () Bool)

(declare-fun e!1657954 () Bool)

(assert (=> b!2628050 (=> (not res!1106195) (not e!1657954))))

(declare-datatypes ((Token!8676 0))(
  ( (Token!8677 (value!148790 TokenValue!4825) (rule!6985 Rule!9006) (size!23488 Int) (originalCharacters!5369 List!30450)) )
))
(declare-datatypes ((List!30452 0))(
  ( (Nil!30352) (Cons!30352 (h!35772 Token!8676) (t!216101 List!30452)) )
))
(declare-datatypes ((IArray!18903 0))(
  ( (IArray!18904 (innerList!9509 List!30452)) )
))
(declare-datatypes ((Conc!9449 0))(
  ( (Node!9449 (left!23402 Conc!9449) (right!23732 Conc!9449) (csize!19128 Int) (cheight!9660 Int)) (Leaf!14491 (xs!12449 IArray!18903) (csize!19129 Int)) (Empty!9449) )
))
(declare-datatypes ((BalanceConc!18512 0))(
  ( (BalanceConc!18513 (c!422762 Conc!9449)) )
))
(declare-fun v!6381 () BalanceConc!18512)

(declare-fun forall!6335 (BalanceConc!18512 Int) Bool)

(assert (=> b!2628050 (= res!1106195 (forall!6335 v!6381 lambda!98429))))

(declare-fun b!2628051 () Bool)

(declare-fun res!1106192 () Bool)

(assert (=> b!2628051 (=> (not res!1106192) (not e!1657954))))

(declare-datatypes ((LexerInterface!4200 0))(
  ( (LexerInterfaceExt!4197 (__x!19484 Int)) (Lexer!4198) )
))
(declare-fun thiss!14197 () LexerInterface!4200)

(declare-fun separatorToken!156 () Token!8676)

(declare-fun rulesProduceIndividualToken!1912 (LexerInterface!4200 List!30451 Token!8676) Bool)

(assert (=> b!2628051 (= res!1106192 (rulesProduceIndividualToken!1912 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2628052 () Bool)

(declare-fun res!1106198 () Bool)

(assert (=> b!2628052 (=> (not res!1106198) (not e!1657954))))

(declare-fun rulesProduceEachTokenIndividually!1020 (LexerInterface!4200 List!30451 BalanceConc!18512) Bool)

(assert (=> b!2628052 (= res!1106198 (rulesProduceEachTokenIndividually!1020 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2628053 () Bool)

(declare-fun res!1106200 () Bool)

(assert (=> b!2628053 (=> (not res!1106200) (not e!1657954))))

(declare-fun rulesInvariant!3700 (LexerInterface!4200 List!30451) Bool)

(assert (=> b!2628053 (= res!1106200 (rulesInvariant!3700 thiss!14197 rules!1726))))

(declare-fun b!2628054 () Bool)

(declare-fun res!1106201 () Bool)

(assert (=> b!2628054 (=> (not res!1106201) (not e!1657954))))

(assert (=> b!2628054 (= res!1106201 (isSeparator!4603 (rule!6985 separatorToken!156)))))

(declare-fun b!2628055 () Bool)

(declare-fun res!1106199 () Bool)

(assert (=> b!2628055 (=> (not res!1106199) (not e!1657954))))

(declare-fun sepAndNonSepRulesDisjointChars!1176 (List!30451 List!30451) Bool)

(assert (=> b!2628055 (= res!1106199 (sepAndNonSepRulesDisjointChars!1176 rules!1726 rules!1726))))

(declare-fun b!2628056 () Bool)

(declare-fun e!1657958 () Bool)

(assert (=> b!2628056 (= e!1657954 e!1657958)))

(declare-fun res!1106196 () Bool)

(assert (=> b!2628056 (=> (not res!1106196) (not e!1657958))))

(declare-fun from!862 () Int)

(declare-fun lt!924343 () Int)

(assert (=> b!2628056 (= res!1106196 (< from!862 lt!924343))))

(declare-fun lt!924335 () List!30452)

(declare-datatypes ((Unit!44395 0))(
  ( (Unit!44396) )
))
(declare-fun lt!924342 () Unit!44395)

(declare-fun lemmaContentSubsetPreservesForall!272 (List!30452 List!30452 Int) Unit!44395)

(declare-fun dropList!906 (BalanceConc!18512 Int) List!30452)

(assert (=> b!2628056 (= lt!924342 (lemmaContentSubsetPreservesForall!272 lt!924335 (dropList!906 v!6381 from!862) lambda!98429))))

(declare-fun list!11401 (BalanceConc!18512) List!30452)

(assert (=> b!2628056 (= lt!924335 (list!11401 v!6381))))

(declare-fun b!2628057 () Bool)

(declare-fun res!1106191 () Bool)

(assert (=> b!2628057 (=> (not res!1106191) (not e!1657954))))

(declare-fun isEmpty!17336 (List!30451) Bool)

(assert (=> b!2628057 (= res!1106191 (not (isEmpty!17336 rules!1726)))))

(declare-fun e!1657962 () Bool)

(declare-fun tp!833192 () Bool)

(declare-fun b!2628058 () Bool)

(declare-fun e!1657965 () Bool)

(declare-fun inv!21 (TokenValue!4825) Bool)

(assert (=> b!2628058 (= e!1657965 (and (inv!21 (value!148790 separatorToken!156)) e!1657962 tp!833192))))

(declare-fun b!2628059 () Bool)

(declare-fun e!1657955 () Bool)

(assert (=> b!2628059 (= e!1657955 (<= 0 from!862))))

(declare-fun lt!924334 () BalanceConc!18512)

(declare-fun print!1610 (LexerInterface!4200 BalanceConc!18512) BalanceConc!18510)

(declare-fun printTailRec!1099 (LexerInterface!4200 BalanceConc!18512 Int BalanceConc!18510) BalanceConc!18510)

(assert (=> b!2628059 (= (print!1610 thiss!14197 lt!924334) (printTailRec!1099 thiss!14197 lt!924334 0 (BalanceConc!18511 Empty!9448)))))

(declare-fun lt!924336 () Token!8676)

(declare-fun singletonSeq!2029 (Token!8676) BalanceConc!18512)

(assert (=> b!2628059 (= lt!924334 (singletonSeq!2029 lt!924336))))

(declare-fun res!1106194 () Bool)

(declare-fun e!1657953 () Bool)

(assert (=> start!255602 (=> (not res!1106194) (not e!1657953))))

(assert (=> start!255602 (= res!1106194 (and ((_ is Lexer!4198) thiss!14197) (>= from!862 0)))))

(assert (=> start!255602 e!1657953))

(assert (=> start!255602 true))

(declare-fun e!1657960 () Bool)

(assert (=> start!255602 e!1657960))

(declare-fun inv!41131 (Token!8676) Bool)

(assert (=> start!255602 (and (inv!41131 separatorToken!156) e!1657965)))

(declare-fun e!1657964 () Bool)

(declare-fun inv!41132 (BalanceConc!18512) Bool)

(assert (=> start!255602 (and (inv!41132 v!6381) e!1657964)))

(declare-fun b!2628060 () Bool)

(declare-fun e!1657959 () Bool)

(assert (=> b!2628060 (= e!1657958 (not e!1657959))))

(declare-fun res!1106193 () Bool)

(assert (=> b!2628060 (=> res!1106193 e!1657959)))

(declare-fun contains!5708 (BalanceConc!18512 Token!8676) Bool)

(assert (=> b!2628060 (= res!1106193 (not (contains!5708 v!6381 lt!924336)))))

(declare-fun apply!7188 (BalanceConc!18512 Int) Token!8676)

(assert (=> b!2628060 (= lt!924336 (apply!7188 v!6381 from!862))))

(declare-fun lt!924333 () List!30452)

(declare-fun tail!4240 (List!30452) List!30452)

(declare-fun drop!1599 (List!30452 Int) List!30452)

(assert (=> b!2628060 (= (tail!4240 lt!924333) (drop!1599 lt!924335 (+ 1 from!862)))))

(declare-fun lt!924339 () Unit!44395)

(declare-fun lemmaDropTail!788 (List!30452 Int) Unit!44395)

(assert (=> b!2628060 (= lt!924339 (lemmaDropTail!788 lt!924335 from!862))))

(declare-fun head!6002 (List!30452) Token!8676)

(declare-fun apply!7189 (List!30452 Int) Token!8676)

(assert (=> b!2628060 (= (head!6002 lt!924333) (apply!7189 lt!924335 from!862))))

(assert (=> b!2628060 (= lt!924333 (drop!1599 lt!924335 from!862))))

(declare-fun lt!924337 () Unit!44395)

(declare-fun lemmaDropApply!814 (List!30452 Int) Unit!44395)

(assert (=> b!2628060 (= lt!924337 (lemmaDropApply!814 lt!924335 from!862))))

(declare-fun b!2628061 () Bool)

(assert (=> b!2628061 (= e!1657953 e!1657954)))

(declare-fun res!1106189 () Bool)

(assert (=> b!2628061 (=> (not res!1106189) (not e!1657954))))

(assert (=> b!2628061 (= res!1106189 (<= from!862 lt!924343))))

(declare-fun size!23489 (BalanceConc!18512) Int)

(assert (=> b!2628061 (= lt!924343 (size!23489 v!6381))))

(declare-fun b!2628062 () Bool)

(declare-fun tp!833186 () Bool)

(declare-fun e!1657966 () Bool)

(declare-fun inv!41126 (String!34009) Bool)

(declare-fun inv!41133 (TokenValueInjection!9090) Bool)

(assert (=> b!2628062 (= e!1657962 (and tp!833186 (inv!41126 (tag!5097 (rule!6985 separatorToken!156))) (inv!41133 (transformation!4603 (rule!6985 separatorToken!156))) e!1657966))))

(declare-fun b!2628063 () Bool)

(declare-fun tp!833188 () Bool)

(declare-fun inv!41134 (Conc!9449) Bool)

(assert (=> b!2628063 (= e!1657964 (and (inv!41134 (c!422762 v!6381)) tp!833188))))

(declare-fun tp!833193 () Bool)

(declare-fun e!1657957 () Bool)

(declare-fun e!1657963 () Bool)

(declare-fun b!2628064 () Bool)

(assert (=> b!2628064 (= e!1657957 (and tp!833193 (inv!41126 (tag!5097 (h!35771 rules!1726))) (inv!41133 (transformation!4603 (h!35771 rules!1726))) e!1657963))))

(declare-fun b!2628065 () Bool)

(declare-fun res!1106197 () Bool)

(assert (=> b!2628065 (=> res!1106197 e!1657959)))

(declare-fun contains!5709 (List!30452 Token!8676) Bool)

(assert (=> b!2628065 (= res!1106197 (not (contains!5709 lt!924335 lt!924336)))))

(declare-fun b!2628066 () Bool)

(declare-fun tp!833189 () Bool)

(assert (=> b!2628066 (= e!1657960 (and e!1657957 tp!833189))))

(assert (=> b!2628067 (= e!1657959 e!1657955)))

(declare-fun res!1106190 () Bool)

(assert (=> b!2628067 (=> res!1106190 e!1657955)))

(declare-fun lt!924340 () Bool)

(declare-datatypes ((tuple2!29900 0))(
  ( (tuple2!29901 (_1!17492 Token!8676) (_2!17492 BalanceConc!18510)) )
))
(declare-datatypes ((Option!5994 0))(
  ( (None!5993) (Some!5993 (v!32380 tuple2!29900)) )
))
(declare-fun lt!924341 () Option!5994)

(assert (=> b!2628067 (= res!1106190 (or (and (not lt!924340) (= (_1!17492 (v!32380 lt!924341)) lt!924336)) (and (not lt!924340) (not (= (_1!17492 (v!32380 lt!924341)) lt!924336))) (not ((_ is None!5993) lt!924341))))))

(assert (=> b!2628067 (= lt!924340 (not ((_ is Some!5993) lt!924341)))))

(declare-fun maxPrefixZipperSequence!930 (LexerInterface!4200 List!30451 BalanceConc!18510) Option!5994)

(declare-fun ++!7389 (BalanceConc!18510 BalanceConc!18510) BalanceConc!18510)

(declare-fun charsOf!2894 (Token!8676) BalanceConc!18510)

(declare-fun printWithSeparatorTokenWhenNeededRec!478 (LexerInterface!4200 List!30451 BalanceConc!18512 Token!8676 Int) BalanceConc!18510)

(assert (=> b!2628067 (= lt!924341 (maxPrefixZipperSequence!930 thiss!14197 rules!1726 (++!7389 (charsOf!2894 lt!924336) (printWithSeparatorTokenWhenNeededRec!478 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!924338 () Unit!44395)

(declare-fun forallContained!959 (List!30452 Int Token!8676) Unit!44395)

(assert (=> b!2628067 (= lt!924338 (forallContained!959 lt!924335 lambda!98430 lt!924336))))

(assert (=> b!2628068 (= e!1657966 (and tp!833191 tp!833190))))

(assert (=> b!2628069 (= e!1657963 (and tp!833187 tp!833194))))

(assert (= (and start!255602 res!1106194) b!2628061))

(assert (= (and b!2628061 res!1106189) b!2628057))

(assert (= (and b!2628057 res!1106191) b!2628053))

(assert (= (and b!2628053 res!1106200) b!2628052))

(assert (= (and b!2628052 res!1106198) b!2628051))

(assert (= (and b!2628051 res!1106192) b!2628054))

(assert (= (and b!2628054 res!1106201) b!2628050))

(assert (= (and b!2628050 res!1106195) b!2628055))

(assert (= (and b!2628055 res!1106199) b!2628056))

(assert (= (and b!2628056 res!1106196) b!2628060))

(assert (= (and b!2628060 (not res!1106193)) b!2628065))

(assert (= (and b!2628065 (not res!1106197)) b!2628067))

(assert (= (and b!2628067 (not res!1106190)) b!2628059))

(assert (= b!2628064 b!2628069))

(assert (= b!2628066 b!2628064))

(assert (= (and start!255602 ((_ is Cons!30351) rules!1726)) b!2628066))

(assert (= b!2628062 b!2628068))

(assert (= b!2628058 b!2628062))

(assert (= start!255602 b!2628058))

(assert (= start!255602 b!2628063))

(declare-fun m!2971133 () Bool)

(assert (=> b!2628067 m!2971133))

(declare-fun m!2971135 () Bool)

(assert (=> b!2628067 m!2971135))

(declare-fun m!2971137 () Bool)

(assert (=> b!2628067 m!2971137))

(assert (=> b!2628067 m!2971135))

(assert (=> b!2628067 m!2971133))

(declare-fun m!2971139 () Bool)

(assert (=> b!2628067 m!2971139))

(assert (=> b!2628067 m!2971137))

(declare-fun m!2971141 () Bool)

(assert (=> b!2628067 m!2971141))

(declare-fun m!2971143 () Bool)

(assert (=> b!2628056 m!2971143))

(assert (=> b!2628056 m!2971143))

(declare-fun m!2971145 () Bool)

(assert (=> b!2628056 m!2971145))

(declare-fun m!2971147 () Bool)

(assert (=> b!2628056 m!2971147))

(declare-fun m!2971149 () Bool)

(assert (=> b!2628058 m!2971149))

(declare-fun m!2971151 () Bool)

(assert (=> b!2628060 m!2971151))

(declare-fun m!2971153 () Bool)

(assert (=> b!2628060 m!2971153))

(declare-fun m!2971155 () Bool)

(assert (=> b!2628060 m!2971155))

(declare-fun m!2971157 () Bool)

(assert (=> b!2628060 m!2971157))

(declare-fun m!2971159 () Bool)

(assert (=> b!2628060 m!2971159))

(declare-fun m!2971161 () Bool)

(assert (=> b!2628060 m!2971161))

(declare-fun m!2971163 () Bool)

(assert (=> b!2628060 m!2971163))

(declare-fun m!2971165 () Bool)

(assert (=> b!2628060 m!2971165))

(declare-fun m!2971167 () Bool)

(assert (=> b!2628060 m!2971167))

(declare-fun m!2971169 () Bool)

(assert (=> b!2628057 m!2971169))

(declare-fun m!2971171 () Bool)

(assert (=> b!2628061 m!2971171))

(declare-fun m!2971173 () Bool)

(assert (=> b!2628052 m!2971173))

(declare-fun m!2971175 () Bool)

(assert (=> b!2628053 m!2971175))

(declare-fun m!2971177 () Bool)

(assert (=> b!2628050 m!2971177))

(declare-fun m!2971179 () Bool)

(assert (=> b!2628051 m!2971179))

(declare-fun m!2971181 () Bool)

(assert (=> b!2628059 m!2971181))

(declare-fun m!2971183 () Bool)

(assert (=> b!2628059 m!2971183))

(declare-fun m!2971185 () Bool)

(assert (=> b!2628059 m!2971185))

(declare-fun m!2971187 () Bool)

(assert (=> b!2628064 m!2971187))

(declare-fun m!2971189 () Bool)

(assert (=> b!2628064 m!2971189))

(declare-fun m!2971191 () Bool)

(assert (=> start!255602 m!2971191))

(declare-fun m!2971193 () Bool)

(assert (=> start!255602 m!2971193))

(declare-fun m!2971195 () Bool)

(assert (=> b!2628055 m!2971195))

(declare-fun m!2971197 () Bool)

(assert (=> b!2628062 m!2971197))

(declare-fun m!2971199 () Bool)

(assert (=> b!2628062 m!2971199))

(declare-fun m!2971201 () Bool)

(assert (=> b!2628063 m!2971201))

(declare-fun m!2971203 () Bool)

(assert (=> b!2628065 m!2971203))

(check-sat (not b!2628063) (not b_next!74625) (not b!2628065) (not b!2628052) b_and!192477 (not b!2628053) (not b!2628067) (not b_next!74627) (not b!2628051) b_and!192475 (not b!2628055) (not b!2628050) b_and!192479 (not b!2628060) b_and!192481 (not b!2628059) (not b!2628066) (not b!2628058) (not b_next!74621) (not b!2628062) (not b!2628064) (not b_next!74623) (not start!255602) (not b!2628057) (not b!2628061) (not b!2628078) (not b!2628056))
(check-sat (not b_next!74625) b_and!192479 b_and!192481 b_and!192477 (not b_next!74621) (not b_next!74627) b_and!192475 (not b_next!74623))
