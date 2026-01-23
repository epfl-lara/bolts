; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152878 () Bool)

(assert start!152878)

(declare-fun b!1616140 () Bool)

(declare-fun b_free!43559 () Bool)

(declare-fun b_next!44263 () Bool)

(assert (=> b!1616140 (= b_free!43559 (not b_next!44263))))

(declare-fun tp!471176 () Bool)

(declare-fun b_and!114613 () Bool)

(assert (=> b!1616140 (= tp!471176 b_and!114613)))

(declare-fun b_free!43561 () Bool)

(declare-fun b_next!44265 () Bool)

(assert (=> b!1616140 (= b_free!43561 (not b_next!44265))))

(declare-fun tp!471172 () Bool)

(declare-fun b_and!114615 () Bool)

(assert (=> b!1616140 (= tp!471172 b_and!114615)))

(declare-fun b!1616148 () Bool)

(declare-fun b_free!43563 () Bool)

(declare-fun b_next!44267 () Bool)

(assert (=> b!1616148 (= b_free!43563 (not b_next!44267))))

(declare-fun tp!471177 () Bool)

(declare-fun b_and!114617 () Bool)

(assert (=> b!1616148 (= tp!471177 b_and!114617)))

(declare-fun b_free!43565 () Bool)

(declare-fun b_next!44269 () Bool)

(assert (=> b!1616148 (= b_free!43565 (not b_next!44269))))

(declare-fun tp!471174 () Bool)

(declare-fun b_and!114619 () Bool)

(assert (=> b!1616148 (= tp!471174 b_and!114619)))

(declare-fun e!1036680 () Bool)

(declare-fun e!1036682 () Bool)

(declare-datatypes ((List!17771 0))(
  ( (Nil!17701) (Cons!17701 (h!23102 (_ BitVec 16)) (t!148286 List!17771)) )
))
(declare-datatypes ((TokenValue!3209 0))(
  ( (FloatLiteralValue!6418 (text!22908 List!17771)) (TokenValueExt!3208 (__x!11720 Int)) (Broken!16045 (value!98538 List!17771)) (Object!3278) (End!3209) (Def!3209) (Underscore!3209) (Match!3209) (Else!3209) (Error!3209) (Case!3209) (If!3209) (Extends!3209) (Abstract!3209) (Class!3209) (Val!3209) (DelimiterValue!6418 (del!3269 List!17771)) (KeywordValue!3215 (value!98539 List!17771)) (CommentValue!6418 (value!98540 List!17771)) (WhitespaceValue!6418 (value!98541 List!17771)) (IndentationValue!3209 (value!98542 List!17771)) (String!20376) (Int32!3209) (Broken!16046 (value!98543 List!17771)) (Boolean!3210) (Unit!28464) (OperatorValue!3212 (op!3269 List!17771)) (IdentifierValue!6418 (value!98544 List!17771)) (IdentifierValue!6419 (value!98545 List!17771)) (WhitespaceValue!6419 (value!98546 List!17771)) (True!6418) (False!6418) (Broken!16047 (value!98547 List!17771)) (Broken!16048 (value!98548 List!17771)) (True!6419) (RightBrace!3209) (RightBracket!3209) (Colon!3209) (Null!3209) (Comma!3209) (LeftBracket!3209) (False!6419) (LeftBrace!3209) (ImaginaryLiteralValue!3209 (text!22909 List!17771)) (StringLiteralValue!9627 (value!98549 List!17771)) (EOFValue!3209 (value!98550 List!17771)) (IdentValue!3209 (value!98551 List!17771)) (DelimiterValue!6419 (value!98552 List!17771)) (DedentValue!3209 (value!98553 List!17771)) (NewLineValue!3209 (value!98554 List!17771)) (IntegerValue!9627 (value!98555 (_ BitVec 32)) (text!22910 List!17771)) (IntegerValue!9628 (value!98556 Int) (text!22911 List!17771)) (Times!3209) (Or!3209) (Equal!3209) (Minus!3209) (Broken!16049 (value!98557 List!17771)) (And!3209) (Div!3209) (LessEqual!3209) (Mod!3209) (Concat!7656) (Not!3209) (Plus!3209) (SpaceValue!3209 (value!98558 List!17771)) (IntegerValue!9629 (value!98559 Int) (text!22912 List!17771)) (StringLiteralValue!9628 (text!22913 List!17771)) (FloatLiteralValue!6419 (text!22914 List!17771)) (BytesLiteralValue!3209 (value!98560 List!17771)) (CommentValue!6419 (value!98561 List!17771)) (StringLiteralValue!9629 (value!98562 List!17771)) (ErrorTokenValue!3209 (msg!3270 List!17771)) )
))
(declare-datatypes ((C!9068 0))(
  ( (C!9069 (val!5130 Int)) )
))
(declare-datatypes ((List!17772 0))(
  ( (Nil!17702) (Cons!17702 (h!23103 C!9068) (t!148287 List!17772)) )
))
(declare-datatypes ((IArray!11777 0))(
  ( (IArray!11778 (innerList!5946 List!17772)) )
))
(declare-datatypes ((Conc!5886 0))(
  ( (Node!5886 (left!14251 Conc!5886) (right!14581 Conc!5886) (csize!12002 Int) (cheight!6097 Int)) (Leaf!8666 (xs!8714 IArray!11777) (csize!12003 Int)) (Empty!5886) )
))
(declare-datatypes ((BalanceConc!11716 0))(
  ( (BalanceConc!11717 (c!263121 Conc!5886)) )
))
(declare-datatypes ((Regex!4447 0))(
  ( (ElementMatch!4447 (c!263122 C!9068)) (Concat!7657 (regOne!9406 Regex!4447) (regTwo!9406 Regex!4447)) (EmptyExpr!4447) (Star!4447 (reg!4776 Regex!4447)) (EmptyLang!4447) (Union!4447 (regOne!9407 Regex!4447) (regTwo!9407 Regex!4447)) )
))
(declare-datatypes ((String!20377 0))(
  ( (String!20378 (value!98563 String)) )
))
(declare-datatypes ((TokenValueInjection!6078 0))(
  ( (TokenValueInjection!6079 (toValue!4542 Int) (toChars!4401 Int)) )
))
(declare-datatypes ((Rule!6038 0))(
  ( (Rule!6039 (regex!3119 Regex!4447) (tag!3395 String!20377) (isSeparator!3119 Bool) (transformation!3119 TokenValueInjection!6078)) )
))
(declare-datatypes ((Token!5804 0))(
  ( (Token!5805 (value!98564 TokenValue!3209) (rule!4939 Rule!6038) (size!14194 Int) (originalCharacters!3933 List!17772)) )
))
(declare-datatypes ((List!17773 0))(
  ( (Nil!17703) (Cons!17703 (h!23104 Token!5804) (t!148288 List!17773)) )
))
(declare-fun tokens!457 () List!17773)

(declare-fun b!1616125 () Bool)

(declare-fun tp!471171 () Bool)

(declare-fun inv!23096 (String!20377) Bool)

(declare-fun inv!23099 (TokenValueInjection!6078) Bool)

(assert (=> b!1616125 (= e!1036682 (and tp!471171 (inv!23096 (tag!3395 (rule!4939 (h!23104 tokens!457)))) (inv!23099 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) e!1036680))))

(declare-fun b!1616126 () Bool)

(declare-fun e!1036673 () Bool)

(declare-fun e!1036684 () Bool)

(assert (=> b!1616126 (= e!1036673 e!1036684)))

(declare-fun res!721422 () Bool)

(assert (=> b!1616126 (=> res!721422 e!1036684)))

(declare-fun lt!579269 () List!17773)

(declare-fun lt!579271 () List!17773)

(declare-fun lt!579265 () List!17773)

(assert (=> b!1616126 (= res!721422 (or (not (= lt!579265 lt!579271)) (not (= lt!579271 lt!579269))))))

(declare-datatypes ((IArray!11779 0))(
  ( (IArray!11780 (innerList!5947 List!17773)) )
))
(declare-datatypes ((Conc!5887 0))(
  ( (Node!5887 (left!14252 Conc!5887) (right!14582 Conc!5887) (csize!12004 Int) (cheight!6098 Int)) (Leaf!8667 (xs!8715 IArray!11779) (csize!12005 Int)) (Empty!5887) )
))
(declare-datatypes ((BalanceConc!11718 0))(
  ( (BalanceConc!11719 (c!263123 Conc!5887)) )
))
(declare-fun lt!579280 () BalanceConc!11718)

(declare-fun list!6923 (BalanceConc!11718) List!17773)

(assert (=> b!1616126 (= lt!579271 (list!6923 lt!579280))))

(assert (=> b!1616126 (= lt!579265 lt!579269)))

(declare-fun prepend!631 (BalanceConc!11718 Token!5804) BalanceConc!11718)

(declare-fun seqFromList!1987 (List!17773) BalanceConc!11718)

(assert (=> b!1616126 (= lt!579269 (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))))))

(declare-datatypes ((Unit!28465 0))(
  ( (Unit!28466) )
))
(declare-fun lt!579281 () Unit!28465)

(declare-datatypes ((tuple2!17234 0))(
  ( (tuple2!17235 (_1!10019 BalanceConc!11718) (_2!10019 BalanceConc!11716)) )
))
(declare-fun lt!579277 () tuple2!17234)

(declare-fun seqFromListBHdTlConstructive!196 (Token!5804 List!17773 BalanceConc!11718) Unit!28465)

(assert (=> b!1616126 (= lt!579281 (seqFromListBHdTlConstructive!196 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)) (_1!10019 lt!579277)))))

(declare-fun b!1616127 () Bool)

(declare-fun e!1036672 () Bool)

(declare-datatypes ((tuple2!17236 0))(
  ( (tuple2!17237 (_1!10020 Token!5804) (_2!10020 List!17772)) )
))
(declare-fun lt!579273 () tuple2!17236)

(declare-fun isEmpty!10713 (List!17772) Bool)

(assert (=> b!1616127 (= e!1036672 (isEmpty!10713 (_2!10020 lt!579273)))))

(declare-fun b!1616128 () Bool)

(declare-fun res!721418 () Bool)

(declare-fun e!1036688 () Bool)

(assert (=> b!1616128 (=> (not res!721418) (not e!1036688))))

(declare-datatypes ((List!17774 0))(
  ( (Nil!17704) (Cons!17704 (h!23105 Rule!6038) (t!148289 List!17774)) )
))
(declare-fun rules!1846 () List!17774)

(declare-fun isEmpty!10714 (List!17774) Bool)

(assert (=> b!1616128 (= res!721418 (not (isEmpty!10714 rules!1846)))))

(declare-fun b!1616129 () Bool)

(declare-fun res!721407 () Bool)

(declare-fun e!1036669 () Bool)

(assert (=> b!1616129 (=> (not res!721407) (not e!1036669))))

(declare-fun lt!579264 () List!17772)

(declare-fun lt!579259 () List!17772)

(declare-fun head!3362 (List!17772) C!9068)

(assert (=> b!1616129 (= res!721407 (= lt!579264 (Cons!17702 (head!3362 lt!579259) Nil!17702)))))

(declare-fun b!1616130 () Bool)

(declare-fun e!1036686 () Bool)

(declare-fun e!1036676 () Bool)

(assert (=> b!1616130 (= e!1036686 e!1036676)))

(declare-fun res!721408 () Bool)

(assert (=> b!1616130 (=> res!721408 e!1036676)))

(declare-fun lt!579263 () Regex!4447)

(declare-fun lt!579270 () BalanceConc!11716)

(declare-fun lt!579279 () BalanceConc!11716)

(declare-fun prefixMatchZipperSequence!493 (Regex!4447 BalanceConc!11716) Bool)

(declare-fun ++!4679 (BalanceConc!11716 BalanceConc!11716) BalanceConc!11716)

(assert (=> b!1616130 (= res!721408 (prefixMatchZipperSequence!493 lt!579263 (++!4679 lt!579279 lt!579270)))))

(declare-fun singletonSeq!1516 (C!9068) BalanceConc!11716)

(declare-fun apply!4458 (BalanceConc!11716 Int) C!9068)

(declare-fun charsOf!1768 (Token!5804) BalanceConc!11716)

(assert (=> b!1616130 (= lt!579270 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))

(declare-datatypes ((LexerInterface!2748 0))(
  ( (LexerInterfaceExt!2745 (__x!11721 Int)) (Lexer!2746) )
))
(declare-fun thiss!17113 () LexerInterface!2748)

(declare-fun rulesRegex!509 (LexerInterface!2748 List!17774) Regex!4447)

(assert (=> b!1616130 (= lt!579263 (rulesRegex!509 thiss!17113 rules!1846))))

(declare-fun tp!471178 () Bool)

(declare-fun e!1036675 () Bool)

(declare-fun e!1036677 () Bool)

(declare-fun b!1616131 () Bool)

(assert (=> b!1616131 (= e!1036675 (and tp!471178 (inv!23096 (tag!3395 (h!23105 rules!1846))) (inv!23099 (transformation!3119 (h!23105 rules!1846))) e!1036677))))

(declare-fun tp!471170 () Bool)

(declare-fun e!1036687 () Bool)

(declare-fun b!1616132 () Bool)

(declare-fun inv!21 (TokenValue!3209) Bool)

(assert (=> b!1616132 (= e!1036687 (and (inv!21 (value!98564 (h!23104 tokens!457))) e!1036682 tp!471170))))

(declare-fun res!721420 () Bool)

(assert (=> start!152878 (=> (not res!721420) (not e!1036688))))

(get-info :version)

(assert (=> start!152878 (= res!721420 ((_ is Lexer!2746) thiss!17113))))

(assert (=> start!152878 e!1036688))

(assert (=> start!152878 true))

(declare-fun e!1036668 () Bool)

(assert (=> start!152878 e!1036668))

(declare-fun e!1036671 () Bool)

(assert (=> start!152878 e!1036671))

(declare-fun b!1616133 () Bool)

(declare-fun res!721415 () Bool)

(assert (=> b!1616133 (=> (not res!721415) (not e!1036688))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!441 (LexerInterface!2748 List!17773 List!17774) Bool)

(assert (=> b!1616133 (= res!721415 (tokensListTwoByTwoPredicateSeparableList!441 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1616134 () Bool)

(declare-fun res!721424 () Bool)

(assert (=> b!1616134 (=> (not res!721424) (not e!1036688))))

(declare-fun rulesInvariant!2417 (LexerInterface!2748 List!17774) Bool)

(assert (=> b!1616134 (= res!721424 (rulesInvariant!2417 thiss!17113 rules!1846))))

(declare-fun b!1616135 () Bool)

(declare-fun res!721417 () Bool)

(assert (=> b!1616135 (=> res!721417 e!1036684)))

(declare-fun separableTokensPredicate!690 (LexerInterface!2748 Token!5804 Token!5804 List!17774) Bool)

(assert (=> b!1616135 (= res!721417 (not (separableTokensPredicate!690 thiss!17113 (h!23104 tokens!457) (h!23104 (t!148288 tokens!457)) rules!1846)))))

(declare-fun b!1616136 () Bool)

(declare-fun res!721412 () Bool)

(declare-fun e!1036679 () Bool)

(assert (=> b!1616136 (=> res!721412 e!1036679)))

(declare-fun rulesProduceIndividualToken!1400 (LexerInterface!2748 List!17774 Token!5804) Bool)

(assert (=> b!1616136 (= res!721412 (not (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457))))))

(declare-fun b!1616137 () Bool)

(declare-fun res!721405 () Bool)

(assert (=> b!1616137 (=> (not res!721405) (not e!1036688))))

(assert (=> b!1616137 (= res!721405 (and (not ((_ is Nil!17703) tokens!457)) (not ((_ is Nil!17703) (t!148288 tokens!457)))))))

(declare-fun b!1616138 () Bool)

(assert (=> b!1616138 (= e!1036684 e!1036679)))

(declare-fun res!721413 () Bool)

(assert (=> b!1616138 (=> res!721413 e!1036679)))

(declare-fun lt!579282 () List!17772)

(declare-fun lt!579266 () List!17772)

(declare-fun lt!579274 () List!17772)

(assert (=> b!1616138 (= res!721413 (or (not (= lt!579266 lt!579282)) (not (= lt!579282 lt!579274)) (not (= lt!579266 lt!579274))))))

(declare-fun printList!863 (LexerInterface!2748 List!17773) List!17772)

(assert (=> b!1616138 (= lt!579282 (printList!863 thiss!17113 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))

(declare-fun lt!579268 () BalanceConc!11716)

(declare-fun list!6924 (BalanceConc!11716) List!17772)

(assert (=> b!1616138 (= lt!579266 (list!6924 lt!579268))))

(declare-fun lt!579267 () BalanceConc!11718)

(declare-fun printTailRec!801 (LexerInterface!2748 BalanceConc!11718 Int BalanceConc!11716) BalanceConc!11716)

(assert (=> b!1616138 (= lt!579268 (printTailRec!801 thiss!17113 lt!579267 0 (BalanceConc!11717 Empty!5886)))))

(declare-fun print!1279 (LexerInterface!2748 BalanceConc!11718) BalanceConc!11716)

(assert (=> b!1616138 (= lt!579268 (print!1279 thiss!17113 lt!579267))))

(declare-fun singletonSeq!1517 (Token!5804) BalanceConc!11718)

(assert (=> b!1616138 (= lt!579267 (singletonSeq!1517 (h!23104 tokens!457)))))

(declare-fun lt!579276 () List!17772)

(declare-datatypes ((Option!3247 0))(
  ( (None!3246) (Some!3246 (v!24235 tuple2!17236)) )
))
(declare-fun lt!579284 () Option!3247)

(declare-fun maxPrefix!1312 (LexerInterface!2748 List!17774 List!17772) Option!3247)

(assert (=> b!1616138 (= lt!579284 (maxPrefix!1312 thiss!17113 rules!1846 lt!579276))))

(declare-fun b!1616139 () Bool)

(declare-fun lt!579260 () BalanceConc!11716)

(declare-fun head!3363 (BalanceConc!11716) C!9068)

(assert (=> b!1616139 (= e!1036669 (= lt!579264 (Cons!17702 (head!3363 lt!579260) Nil!17702)))))

(assert (=> b!1616140 (= e!1036677 (and tp!471176 tp!471172))))

(declare-fun b!1616141 () Bool)

(declare-fun e!1036685 () Bool)

(declare-fun validRegex!1764 (Regex!4447) Bool)

(assert (=> b!1616141 (= e!1036685 (validRegex!1764 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))

(assert (=> b!1616141 e!1036672))

(declare-fun res!721421 () Bool)

(assert (=> b!1616141 (=> (not res!721421) (not e!1036672))))

(assert (=> b!1616141 (= res!721421 (= (_1!10020 lt!579273) (h!23104 tokens!457)))))

(declare-fun lt!579262 () Option!3247)

(declare-fun get!5079 (Option!3247) tuple2!17236)

(assert (=> b!1616141 (= lt!579273 (get!5079 lt!579262))))

(declare-fun isDefined!2614 (Option!3247) Bool)

(assert (=> b!1616141 (isDefined!2614 lt!579262)))

(assert (=> b!1616141 (= lt!579262 (maxPrefix!1312 thiss!17113 rules!1846 lt!579274))))

(assert (=> b!1616141 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1616142 () Bool)

(declare-fun e!1036674 () Bool)

(assert (=> b!1616142 (= e!1036676 e!1036674)))

(declare-fun res!721419 () Bool)

(assert (=> b!1616142 (=> res!721419 e!1036674)))

(declare-fun prefixMatch!382 (Regex!4447 List!17772) Bool)

(declare-fun ++!4680 (List!17772 List!17772) List!17772)

(assert (=> b!1616142 (= res!721419 (prefixMatch!382 lt!579263 (++!4680 lt!579274 lt!579264)))))

(assert (=> b!1616142 (= lt!579264 (list!6924 lt!579270))))

(declare-fun b!1616143 () Bool)

(declare-fun tp!471175 () Bool)

(assert (=> b!1616143 (= e!1036668 (and e!1036675 tp!471175))))

(declare-fun b!1616144 () Bool)

(declare-fun e!1036681 () Bool)

(assert (=> b!1616144 (= e!1036681 (not e!1036673))))

(declare-fun res!721411 () Bool)

(assert (=> b!1616144 (=> res!721411 e!1036673)))

(assert (=> b!1616144 (= res!721411 (not (= lt!579265 (t!148288 tokens!457))))))

(assert (=> b!1616144 (= lt!579265 (list!6923 (_1!10019 lt!579277)))))

(declare-fun lt!579261 () Unit!28465)

(declare-fun theoremInvertabilityWhenTokenListSeparable!193 (LexerInterface!2748 List!17774 List!17773) Unit!28465)

(assert (=> b!1616144 (= lt!579261 (theoremInvertabilityWhenTokenListSeparable!193 thiss!17113 rules!1846 (t!148288 tokens!457)))))

(declare-fun lt!579275 () List!17772)

(declare-fun isPrefix!1379 (List!17772 List!17772) Bool)

(assert (=> b!1616144 (isPrefix!1379 lt!579274 lt!579275)))

(declare-fun lt!579278 () Unit!28465)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!904 (List!17772 List!17772) Unit!28465)

(assert (=> b!1616144 (= lt!579278 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579274 lt!579259))))

(declare-fun b!1616145 () Bool)

(assert (=> b!1616145 (= e!1036679 e!1036686)))

(declare-fun res!721416 () Bool)

(assert (=> b!1616145 (=> res!721416 e!1036686)))

(assert (=> b!1616145 (= res!721416 (not (isDefined!2614 lt!579284)))))

(declare-fun lt!579272 () Unit!28465)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 (LexerInterface!2748 List!17774 List!17772 List!17772) Unit!28465)

(assert (=> b!1616145 (= lt!579272 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 lt!579274 lt!579259))))

(declare-fun b!1616146 () Bool)

(assert (=> b!1616146 (= e!1036688 e!1036681)))

(declare-fun res!721404 () Bool)

(assert (=> b!1616146 (=> (not res!721404) (not e!1036681))))

(assert (=> b!1616146 (= res!721404 (= lt!579276 lt!579275))))

(assert (=> b!1616146 (= lt!579275 (++!4680 lt!579274 lt!579259))))

(declare-fun lt!579283 () BalanceConc!11716)

(assert (=> b!1616146 (= lt!579276 (list!6924 lt!579283))))

(assert (=> b!1616146 (= lt!579259 (list!6924 lt!579260))))

(assert (=> b!1616146 (= lt!579274 (list!6924 lt!579279))))

(assert (=> b!1616146 (= lt!579279 (charsOf!1768 (h!23104 tokens!457)))))

(declare-fun lex!1232 (LexerInterface!2748 List!17774 BalanceConc!11716) tuple2!17234)

(assert (=> b!1616146 (= lt!579277 (lex!1232 thiss!17113 rules!1846 lt!579260))))

(assert (=> b!1616146 (= lt!579260 (print!1279 thiss!17113 lt!579280))))

(assert (=> b!1616146 (= lt!579280 (seqFromList!1987 (t!148288 tokens!457)))))

(assert (=> b!1616146 (= lt!579283 (print!1279 thiss!17113 (seqFromList!1987 tokens!457)))))

(declare-fun b!1616147 () Bool)

(declare-fun res!721409 () Bool)

(assert (=> b!1616147 (=> res!721409 e!1036679)))

(declare-fun isEmpty!10715 (BalanceConc!11718) Bool)

(declare-fun seqFromList!1988 (List!17772) BalanceConc!11716)

(assert (=> b!1616147 (= res!721409 (isEmpty!10715 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)))))))

(assert (=> b!1616148 (= e!1036680 (and tp!471177 tp!471174))))

(declare-fun b!1616149 () Bool)

(declare-fun res!721410 () Bool)

(assert (=> b!1616149 (=> (not res!721410) (not e!1036688))))

(declare-fun rulesProduceEachTokenIndividuallyList!950 (LexerInterface!2748 List!17774 List!17773) Bool)

(assert (=> b!1616149 (= res!721410 (rulesProduceEachTokenIndividuallyList!950 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!471173 () Bool)

(declare-fun b!1616150 () Bool)

(declare-fun inv!23100 (Token!5804) Bool)

(assert (=> b!1616150 (= e!1036671 (and (inv!23100 (h!23104 tokens!457)) e!1036687 tp!471173))))

(declare-fun b!1616151 () Bool)

(assert (=> b!1616151 (= e!1036674 e!1036685)))

(declare-fun res!721423 () Bool)

(assert (=> b!1616151 (=> res!721423 e!1036685)))

(declare-datatypes ((tuple2!17238 0))(
  ( (tuple2!17239 (_1!10021 Token!5804) (_2!10021 BalanceConc!11716)) )
))
(declare-datatypes ((Option!3248 0))(
  ( (None!3247) (Some!3247 (v!24236 tuple2!17238)) )
))
(declare-fun isDefined!2615 (Option!3248) Bool)

(declare-fun maxPrefixZipperSequence!643 (LexerInterface!2748 List!17774 BalanceConc!11716) Option!3248)

(assert (=> b!1616151 (= res!721423 (not (isDefined!2615 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(assert (=> b!1616151 e!1036669))

(declare-fun res!721414 () Bool)

(assert (=> b!1616151 (=> (not res!721414) (not e!1036669))))

(assert (=> b!1616151 (= res!721414 (= lt!579274 (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1616152 () Bool)

(declare-fun res!721406 () Bool)

(assert (=> b!1616152 (=> (not res!721406) (not e!1036669))))

(assert (=> b!1616152 (= res!721406 (= lt!579264 (Cons!17702 (head!3362 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))) Nil!17702)))))

(assert (= (and start!152878 res!721420) b!1616128))

(assert (= (and b!1616128 res!721418) b!1616134))

(assert (= (and b!1616134 res!721424) b!1616149))

(assert (= (and b!1616149 res!721410) b!1616133))

(assert (= (and b!1616133 res!721415) b!1616137))

(assert (= (and b!1616137 res!721405) b!1616146))

(assert (= (and b!1616146 res!721404) b!1616144))

(assert (= (and b!1616144 (not res!721411)) b!1616126))

(assert (= (and b!1616126 (not res!721422)) b!1616135))

(assert (= (and b!1616135 (not res!721417)) b!1616138))

(assert (= (and b!1616138 (not res!721413)) b!1616136))

(assert (= (and b!1616136 (not res!721412)) b!1616147))

(assert (= (and b!1616147 (not res!721409)) b!1616145))

(assert (= (and b!1616145 (not res!721416)) b!1616130))

(assert (= (and b!1616130 (not res!721408)) b!1616142))

(assert (= (and b!1616142 (not res!721419)) b!1616151))

(assert (= (and b!1616151 res!721414) b!1616152))

(assert (= (and b!1616152 res!721406) b!1616129))

(assert (= (and b!1616129 res!721407) b!1616139))

(assert (= (and b!1616151 (not res!721423)) b!1616141))

(assert (= (and b!1616141 res!721421) b!1616127))

(assert (= b!1616131 b!1616140))

(assert (= b!1616143 b!1616131))

(assert (= (and start!152878 ((_ is Cons!17704) rules!1846)) b!1616143))

(assert (= b!1616125 b!1616148))

(assert (= b!1616132 b!1616125))

(assert (= b!1616150 b!1616132))

(assert (= (and start!152878 ((_ is Cons!17703) tokens!457)) b!1616150))

(declare-fun m!1936437 () Bool)

(assert (=> b!1616125 m!1936437))

(declare-fun m!1936439 () Bool)

(assert (=> b!1616125 m!1936439))

(declare-fun m!1936441 () Bool)

(assert (=> b!1616151 m!1936441))

(assert (=> b!1616151 m!1936441))

(declare-fun m!1936443 () Bool)

(assert (=> b!1616151 m!1936443))

(assert (=> b!1616151 m!1936443))

(declare-fun m!1936445 () Bool)

(assert (=> b!1616151 m!1936445))

(declare-fun m!1936447 () Bool)

(assert (=> b!1616149 m!1936447))

(declare-fun m!1936449 () Bool)

(assert (=> b!1616150 m!1936449))

(declare-fun m!1936451 () Bool)

(assert (=> b!1616134 m!1936451))

(declare-fun m!1936453 () Bool)

(assert (=> b!1616145 m!1936453))

(declare-fun m!1936455 () Bool)

(assert (=> b!1616145 m!1936455))

(declare-fun m!1936457 () Bool)

(assert (=> b!1616135 m!1936457))

(declare-fun m!1936459 () Bool)

(assert (=> b!1616136 m!1936459))

(declare-fun m!1936461 () Bool)

(assert (=> b!1616146 m!1936461))

(declare-fun m!1936463 () Bool)

(assert (=> b!1616146 m!1936463))

(declare-fun m!1936465 () Bool)

(assert (=> b!1616146 m!1936465))

(declare-fun m!1936467 () Bool)

(assert (=> b!1616146 m!1936467))

(declare-fun m!1936469 () Bool)

(assert (=> b!1616146 m!1936469))

(declare-fun m!1936471 () Bool)

(assert (=> b!1616146 m!1936471))

(declare-fun m!1936473 () Bool)

(assert (=> b!1616146 m!1936473))

(declare-fun m!1936475 () Bool)

(assert (=> b!1616146 m!1936475))

(declare-fun m!1936477 () Bool)

(assert (=> b!1616146 m!1936477))

(declare-fun m!1936479 () Bool)

(assert (=> b!1616146 m!1936479))

(assert (=> b!1616146 m!1936469))

(declare-fun m!1936481 () Bool)

(assert (=> b!1616130 m!1936481))

(declare-fun m!1936483 () Bool)

(assert (=> b!1616130 m!1936483))

(declare-fun m!1936485 () Bool)

(assert (=> b!1616130 m!1936485))

(declare-fun m!1936487 () Bool)

(assert (=> b!1616130 m!1936487))

(assert (=> b!1616130 m!1936487))

(declare-fun m!1936489 () Bool)

(assert (=> b!1616130 m!1936489))

(declare-fun m!1936491 () Bool)

(assert (=> b!1616130 m!1936491))

(assert (=> b!1616130 m!1936483))

(assert (=> b!1616130 m!1936491))

(declare-fun m!1936493 () Bool)

(assert (=> b!1616142 m!1936493))

(assert (=> b!1616142 m!1936493))

(declare-fun m!1936495 () Bool)

(assert (=> b!1616142 m!1936495))

(declare-fun m!1936497 () Bool)

(assert (=> b!1616142 m!1936497))

(declare-fun m!1936499 () Bool)

(assert (=> b!1616144 m!1936499))

(declare-fun m!1936501 () Bool)

(assert (=> b!1616144 m!1936501))

(declare-fun m!1936503 () Bool)

(assert (=> b!1616144 m!1936503))

(declare-fun m!1936505 () Bool)

(assert (=> b!1616144 m!1936505))

(declare-fun m!1936507 () Bool)

(assert (=> b!1616131 m!1936507))

(declare-fun m!1936509 () Bool)

(assert (=> b!1616131 m!1936509))

(declare-fun m!1936511 () Bool)

(assert (=> b!1616138 m!1936511))

(declare-fun m!1936513 () Bool)

(assert (=> b!1616138 m!1936513))

(declare-fun m!1936515 () Bool)

(assert (=> b!1616138 m!1936515))

(declare-fun m!1936517 () Bool)

(assert (=> b!1616138 m!1936517))

(declare-fun m!1936519 () Bool)

(assert (=> b!1616138 m!1936519))

(declare-fun m!1936521 () Bool)

(assert (=> b!1616138 m!1936521))

(declare-fun m!1936523 () Bool)

(assert (=> b!1616132 m!1936523))

(declare-fun m!1936525 () Bool)

(assert (=> b!1616129 m!1936525))

(declare-fun m!1936527 () Bool)

(assert (=> b!1616147 m!1936527))

(assert (=> b!1616147 m!1936527))

(declare-fun m!1936529 () Bool)

(assert (=> b!1616147 m!1936529))

(declare-fun m!1936531 () Bool)

(assert (=> b!1616147 m!1936531))

(declare-fun m!1936533 () Bool)

(assert (=> b!1616128 m!1936533))

(declare-fun m!1936535 () Bool)

(assert (=> b!1616141 m!1936535))

(declare-fun m!1936537 () Bool)

(assert (=> b!1616141 m!1936537))

(declare-fun m!1936539 () Bool)

(assert (=> b!1616141 m!1936539))

(declare-fun m!1936541 () Bool)

(assert (=> b!1616141 m!1936541))

(declare-fun m!1936543 () Bool)

(assert (=> b!1616141 m!1936543))

(declare-fun m!1936545 () Bool)

(assert (=> b!1616141 m!1936545))

(assert (=> b!1616141 m!1936535))

(declare-fun m!1936547 () Bool)

(assert (=> b!1616152 m!1936547))

(declare-fun m!1936549 () Bool)

(assert (=> b!1616133 m!1936549))

(declare-fun m!1936551 () Bool)

(assert (=> b!1616139 m!1936551))

(declare-fun m!1936553 () Bool)

(assert (=> b!1616127 m!1936553))

(declare-fun m!1936555 () Bool)

(assert (=> b!1616126 m!1936555))

(declare-fun m!1936557 () Bool)

(assert (=> b!1616126 m!1936557))

(declare-fun m!1936559 () Bool)

(assert (=> b!1616126 m!1936559))

(declare-fun m!1936561 () Bool)

(assert (=> b!1616126 m!1936561))

(declare-fun m!1936563 () Bool)

(assert (=> b!1616126 m!1936563))

(assert (=> b!1616126 m!1936555))

(assert (=> b!1616126 m!1936561))

(check-sat b_and!114617 (not b!1616142) b_and!114619 (not b!1616129) (not b!1616141) b_and!114615 (not b!1616144) (not b!1616131) (not b!1616127) (not b!1616151) (not b!1616139) (not b!1616145) (not b!1616146) (not b!1616125) (not b!1616147) (not b_next!44263) (not b!1616126) (not b!1616136) (not b_next!44265) (not b_next!44269) (not b!1616149) b_and!114613 (not b!1616130) (not b!1616143) (not b!1616134) (not b!1616132) (not b!1616138) (not b!1616135) (not b!1616152) (not b_next!44267) (not b!1616128) (not b!1616133) (not b!1616150))
(check-sat b_and!114617 (not b_next!44263) b_and!114619 b_and!114613 b_and!114615 (not b_next!44267) (not b_next!44265) (not b_next!44269))
(get-model)

(declare-fun d!486184 () Bool)

(declare-fun isEmpty!10719 (Option!3247) Bool)

(assert (=> d!486184 (= (isDefined!2614 lt!579262) (not (isEmpty!10719 lt!579262)))))

(declare-fun bs!394113 () Bool)

(assert (= bs!394113 d!486184))

(declare-fun m!1936613 () Bool)

(assert (=> bs!394113 m!1936613))

(assert (=> b!1616141 d!486184))

(declare-fun d!486188 () Bool)

(assert (=> d!486188 (= (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457)))) (not (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun bs!394114 () Bool)

(assert (= bs!394114 d!486188))

(assert (=> bs!394114 m!1936535))

(declare-fun m!1936615 () Bool)

(assert (=> bs!394114 m!1936615))

(assert (=> b!1616141 d!486188))

(declare-fun bm!104841 () Bool)

(declare-fun call!104846 () Bool)

(declare-fun call!104847 () Bool)

(assert (=> bm!104841 (= call!104846 call!104847)))

(declare-fun b!1616207 () Bool)

(declare-fun res!721470 () Bool)

(declare-fun e!1036719 () Bool)

(assert (=> b!1616207 (=> res!721470 e!1036719)))

(assert (=> b!1616207 (= res!721470 (not ((_ is Concat!7657) (regex!3119 (rule!4939 (h!23104 tokens!457))))))))

(declare-fun e!1036720 () Bool)

(assert (=> b!1616207 (= e!1036720 e!1036719)))

(declare-fun b!1616208 () Bool)

(declare-fun e!1036718 () Bool)

(declare-fun call!104848 () Bool)

(assert (=> b!1616208 (= e!1036718 call!104848)))

(declare-fun b!1616209 () Bool)

(declare-fun e!1036724 () Bool)

(assert (=> b!1616209 (= e!1036724 call!104847)))

(declare-fun bm!104842 () Bool)

(declare-fun c!263135 () Bool)

(assert (=> bm!104842 (= call!104848 (validRegex!1764 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))

(declare-fun b!1616210 () Bool)

(declare-fun e!1036721 () Bool)

(declare-fun e!1036722 () Bool)

(assert (=> b!1616210 (= e!1036721 e!1036722)))

(declare-fun c!263134 () Bool)

(assert (=> b!1616210 (= c!263134 ((_ is Star!4447) (regex!3119 (rule!4939 (h!23104 tokens!457)))))))

(declare-fun d!486190 () Bool)

(declare-fun res!721469 () Bool)

(assert (=> d!486190 (=> res!721469 e!1036721)))

(assert (=> d!486190 (= res!721469 ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (h!23104 tokens!457)))))))

(assert (=> d!486190 (= (validRegex!1764 (regex!3119 (rule!4939 (h!23104 tokens!457)))) e!1036721)))

(declare-fun b!1616211 () Bool)

(assert (=> b!1616211 (= e!1036722 e!1036724)))

(declare-fun res!721468 () Bool)

(declare-fun nullable!1302 (Regex!4447) Bool)

(assert (=> b!1616211 (= res!721468 (not (nullable!1302 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))

(assert (=> b!1616211 (=> (not res!721468) (not e!1036724))))

(declare-fun b!1616212 () Bool)

(declare-fun e!1036723 () Bool)

(assert (=> b!1616212 (= e!1036723 call!104846)))

(declare-fun b!1616213 () Bool)

(assert (=> b!1616213 (= e!1036722 e!1036720)))

(assert (=> b!1616213 (= c!263135 ((_ is Union!4447) (regex!3119 (rule!4939 (h!23104 tokens!457)))))))

(declare-fun b!1616214 () Bool)

(declare-fun res!721471 () Bool)

(assert (=> b!1616214 (=> (not res!721471) (not e!1036723))))

(assert (=> b!1616214 (= res!721471 call!104848)))

(assert (=> b!1616214 (= e!1036720 e!1036723)))

(declare-fun bm!104843 () Bool)

(assert (=> bm!104843 (= call!104847 (validRegex!1764 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))

(declare-fun b!1616215 () Bool)

(assert (=> b!1616215 (= e!1036719 e!1036718)))

(declare-fun res!721472 () Bool)

(assert (=> b!1616215 (=> (not res!721472) (not e!1036718))))

(assert (=> b!1616215 (= res!721472 call!104846)))

(assert (= (and d!486190 (not res!721469)) b!1616210))

(assert (= (and b!1616210 c!263134) b!1616211))

(assert (= (and b!1616210 (not c!263134)) b!1616213))

(assert (= (and b!1616211 res!721468) b!1616209))

(assert (= (and b!1616213 c!263135) b!1616214))

(assert (= (and b!1616213 (not c!263135)) b!1616207))

(assert (= (and b!1616214 res!721471) b!1616212))

(assert (= (and b!1616207 (not res!721470)) b!1616215))

(assert (= (and b!1616215 res!721472) b!1616208))

(assert (= (or b!1616212 b!1616215) bm!104841))

(assert (= (or b!1616214 b!1616208) bm!104842))

(assert (= (or b!1616209 bm!104841) bm!104843))

(declare-fun m!1936623 () Bool)

(assert (=> bm!104842 m!1936623))

(declare-fun m!1936625 () Bool)

(assert (=> b!1616211 m!1936625))

(declare-fun m!1936627 () Bool)

(assert (=> bm!104843 m!1936627))

(assert (=> b!1616141 d!486190))

(declare-fun d!486194 () Bool)

(assert (=> d!486194 (= (get!5079 lt!579262) (v!24235 lt!579262))))

(assert (=> b!1616141 d!486194))

(declare-fun b!1616246 () Bool)

(declare-fun res!721498 () Bool)

(declare-fun e!1036740 () Bool)

(assert (=> b!1616246 (=> (not res!721498) (not e!1036740))))

(declare-fun lt!579341 () Option!3247)

(declare-fun size!14197 (List!17772) Int)

(assert (=> b!1616246 (= res!721498 (< (size!14197 (_2!10020 (get!5079 lt!579341))) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1616247 () Bool)

(declare-fun e!1036741 () Bool)

(assert (=> b!1616247 (= e!1036741 e!1036740)))

(declare-fun res!721494 () Bool)

(assert (=> b!1616247 (=> (not res!721494) (not e!1036740))))

(assert (=> b!1616247 (= res!721494 (isDefined!2614 lt!579341))))

(declare-fun b!1616248 () Bool)

(declare-fun e!1036742 () Option!3247)

(declare-fun lt!579340 () Option!3247)

(declare-fun lt!579339 () Option!3247)

(assert (=> b!1616248 (= e!1036742 (ite (and ((_ is None!3246) lt!579340) ((_ is None!3246) lt!579339)) None!3246 (ite ((_ is None!3246) lt!579339) lt!579340 (ite ((_ is None!3246) lt!579340) lt!579339 (ite (>= (size!14194 (_1!10020 (v!24235 lt!579340))) (size!14194 (_1!10020 (v!24235 lt!579339)))) lt!579340 lt!579339)))))))

(declare-fun call!104851 () Option!3247)

(assert (=> b!1616248 (= lt!579340 call!104851)))

(assert (=> b!1616248 (= lt!579339 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1616249 () Bool)

(declare-fun res!721497 () Bool)

(assert (=> b!1616249 (=> (not res!721497) (not e!1036740))))

(assert (=> b!1616249 (= res!721497 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))) (_2!10020 (get!5079 lt!579341))) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1616250 () Bool)

(declare-fun res!721499 () Bool)

(assert (=> b!1616250 (=> (not res!721499) (not e!1036740))))

(declare-fun apply!4462 (TokenValueInjection!6078 BalanceConc!11716) TokenValue!3209)

(assert (=> b!1616250 (= res!721499 (= (value!98564 (_1!10020 (get!5079 lt!579341))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun b!1616251 () Bool)

(declare-fun res!721493 () Bool)

(assert (=> b!1616251 (=> (not res!721493) (not e!1036740))))

(assert (=> b!1616251 (= res!721493 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!579341)))))))

(declare-fun b!1616252 () Bool)

(declare-fun contains!3094 (List!17774 Rule!6038) Bool)

(assert (=> b!1616252 (= e!1036740 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579341)))))))

(declare-fun bm!104846 () Bool)

(declare-fun maxPrefixOneRule!761 (LexerInterface!2748 Rule!6038 List!17772) Option!3247)

(assert (=> bm!104846 (= call!104851 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun d!486196 () Bool)

(assert (=> d!486196 e!1036741))

(declare-fun res!721495 () Bool)

(assert (=> d!486196 (=> res!721495 e!1036741)))

(assert (=> d!486196 (= res!721495 (isEmpty!10719 lt!579341))))

(assert (=> d!486196 (= lt!579341 e!1036742)))

(declare-fun c!263141 () Bool)

(assert (=> d!486196 (= c!263141 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!579338 () Unit!28465)

(declare-fun lt!579337 () Unit!28465)

(assert (=> d!486196 (= lt!579338 lt!579337)))

(assert (=> d!486196 (isPrefix!1379 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!946 (List!17772 List!17772) Unit!28465)

(assert (=> d!486196 (= lt!579337 (lemmaIsPrefixRefl!946 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun rulesValidInductive!958 (LexerInterface!2748 List!17774) Bool)

(assert (=> d!486196 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486196 (= (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457))) lt!579341)))

(declare-fun b!1616253 () Bool)

(declare-fun res!721496 () Bool)

(assert (=> b!1616253 (=> (not res!721496) (not e!1036740))))

(declare-fun matchR!1946 (Regex!4447 List!17772) Bool)

(assert (=> b!1616253 (= res!721496 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun b!1616254 () Bool)

(assert (=> b!1616254 (= e!1036742 call!104851)))

(assert (= (and d!486196 c!263141) b!1616254))

(assert (= (and d!486196 (not c!263141)) b!1616248))

(assert (= (or b!1616254 b!1616248) bm!104846))

(assert (= (and d!486196 (not res!721495)) b!1616247))

(assert (= (and b!1616247 res!721494) b!1616251))

(assert (= (and b!1616251 res!721493) b!1616246))

(assert (= (and b!1616246 res!721498) b!1616249))

(assert (= (and b!1616249 res!721497) b!1616250))

(assert (= (and b!1616250 res!721499) b!1616253))

(assert (= (and b!1616253 res!721496) b!1616252))

(declare-fun m!1936669 () Bool)

(assert (=> d!486196 m!1936669))

(declare-fun m!1936671 () Bool)

(assert (=> d!486196 m!1936671))

(declare-fun m!1936673 () Bool)

(assert (=> d!486196 m!1936673))

(declare-fun m!1936675 () Bool)

(assert (=> d!486196 m!1936675))

(declare-fun m!1936677 () Bool)

(assert (=> b!1616247 m!1936677))

(declare-fun m!1936679 () Bool)

(assert (=> b!1616250 m!1936679))

(declare-fun m!1936681 () Bool)

(assert (=> b!1616250 m!1936681))

(assert (=> b!1616250 m!1936681))

(declare-fun m!1936683 () Bool)

(assert (=> b!1616250 m!1936683))

(assert (=> b!1616249 m!1936679))

(declare-fun m!1936685 () Bool)

(assert (=> b!1616249 m!1936685))

(assert (=> b!1616249 m!1936685))

(declare-fun m!1936687 () Bool)

(assert (=> b!1616249 m!1936687))

(assert (=> b!1616249 m!1936687))

(declare-fun m!1936689 () Bool)

(assert (=> b!1616249 m!1936689))

(declare-fun m!1936691 () Bool)

(assert (=> b!1616248 m!1936691))

(assert (=> b!1616252 m!1936679))

(declare-fun m!1936693 () Bool)

(assert (=> b!1616252 m!1936693))

(assert (=> b!1616253 m!1936679))

(assert (=> b!1616253 m!1936685))

(assert (=> b!1616253 m!1936685))

(assert (=> b!1616253 m!1936687))

(assert (=> b!1616253 m!1936687))

(declare-fun m!1936695 () Bool)

(assert (=> b!1616253 m!1936695))

(declare-fun m!1936697 () Bool)

(assert (=> bm!104846 m!1936697))

(assert (=> b!1616251 m!1936679))

(assert (=> b!1616251 m!1936685))

(assert (=> b!1616251 m!1936685))

(assert (=> b!1616251 m!1936687))

(assert (=> b!1616246 m!1936679))

(declare-fun m!1936699 () Bool)

(assert (=> b!1616246 m!1936699))

(declare-fun m!1936701 () Bool)

(assert (=> b!1616246 m!1936701))

(assert (=> b!1616141 d!486196))

(declare-fun b!1616255 () Bool)

(declare-fun res!721505 () Bool)

(declare-fun e!1036743 () Bool)

(assert (=> b!1616255 (=> (not res!721505) (not e!1036743))))

(declare-fun lt!579346 () Option!3247)

(assert (=> b!1616255 (= res!721505 (< (size!14197 (_2!10020 (get!5079 lt!579346))) (size!14197 lt!579274)))))

(declare-fun b!1616256 () Bool)

(declare-fun e!1036744 () Bool)

(assert (=> b!1616256 (= e!1036744 e!1036743)))

(declare-fun res!721501 () Bool)

(assert (=> b!1616256 (=> (not res!721501) (not e!1036743))))

(assert (=> b!1616256 (= res!721501 (isDefined!2614 lt!579346))))

(declare-fun b!1616257 () Bool)

(declare-fun e!1036745 () Option!3247)

(declare-fun lt!579345 () Option!3247)

(declare-fun lt!579344 () Option!3247)

(assert (=> b!1616257 (= e!1036745 (ite (and ((_ is None!3246) lt!579345) ((_ is None!3246) lt!579344)) None!3246 (ite ((_ is None!3246) lt!579344) lt!579345 (ite ((_ is None!3246) lt!579345) lt!579344 (ite (>= (size!14194 (_1!10020 (v!24235 lt!579345))) (size!14194 (_1!10020 (v!24235 lt!579344)))) lt!579345 lt!579344)))))))

(declare-fun call!104852 () Option!3247)

(assert (=> b!1616257 (= lt!579345 call!104852)))

(assert (=> b!1616257 (= lt!579344 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) lt!579274))))

(declare-fun b!1616258 () Bool)

(declare-fun res!721504 () Bool)

(assert (=> b!1616258 (=> (not res!721504) (not e!1036743))))

(assert (=> b!1616258 (= res!721504 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))) (_2!10020 (get!5079 lt!579346))) lt!579274))))

(declare-fun b!1616259 () Bool)

(declare-fun res!721506 () Bool)

(assert (=> b!1616259 (=> (not res!721506) (not e!1036743))))

(assert (=> b!1616259 (= res!721506 (= (value!98564 (_1!10020 (get!5079 lt!579346))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun b!1616260 () Bool)

(declare-fun res!721500 () Bool)

(assert (=> b!1616260 (=> (not res!721500) (not e!1036743))))

(assert (=> b!1616260 (= res!721500 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!579346)))))))

(declare-fun b!1616261 () Bool)

(assert (=> b!1616261 (= e!1036743 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579346)))))))

(declare-fun bm!104847 () Bool)

(assert (=> bm!104847 (= call!104852 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) lt!579274))))

(declare-fun d!486206 () Bool)

(assert (=> d!486206 e!1036744))

(declare-fun res!721502 () Bool)

(assert (=> d!486206 (=> res!721502 e!1036744)))

(assert (=> d!486206 (= res!721502 (isEmpty!10719 lt!579346))))

(assert (=> d!486206 (= lt!579346 e!1036745)))

(declare-fun c!263142 () Bool)

(assert (=> d!486206 (= c!263142 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!579343 () Unit!28465)

(declare-fun lt!579342 () Unit!28465)

(assert (=> d!486206 (= lt!579343 lt!579342)))

(assert (=> d!486206 (isPrefix!1379 lt!579274 lt!579274)))

(assert (=> d!486206 (= lt!579342 (lemmaIsPrefixRefl!946 lt!579274 lt!579274))))

(assert (=> d!486206 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486206 (= (maxPrefix!1312 thiss!17113 rules!1846 lt!579274) lt!579346)))

(declare-fun b!1616262 () Bool)

(declare-fun res!721503 () Bool)

(assert (=> b!1616262 (=> (not res!721503) (not e!1036743))))

(assert (=> b!1616262 (= res!721503 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun b!1616263 () Bool)

(assert (=> b!1616263 (= e!1036745 call!104852)))

(assert (= (and d!486206 c!263142) b!1616263))

(assert (= (and d!486206 (not c!263142)) b!1616257))

(assert (= (or b!1616263 b!1616257) bm!104847))

(assert (= (and d!486206 (not res!721502)) b!1616256))

(assert (= (and b!1616256 res!721501) b!1616260))

(assert (= (and b!1616260 res!721500) b!1616255))

(assert (= (and b!1616255 res!721505) b!1616258))

(assert (= (and b!1616258 res!721504) b!1616259))

(assert (= (and b!1616259 res!721506) b!1616262))

(assert (= (and b!1616262 res!721503) b!1616261))

(declare-fun m!1936703 () Bool)

(assert (=> d!486206 m!1936703))

(declare-fun m!1936705 () Bool)

(assert (=> d!486206 m!1936705))

(declare-fun m!1936707 () Bool)

(assert (=> d!486206 m!1936707))

(assert (=> d!486206 m!1936675))

(declare-fun m!1936709 () Bool)

(assert (=> b!1616256 m!1936709))

(declare-fun m!1936711 () Bool)

(assert (=> b!1616259 m!1936711))

(declare-fun m!1936713 () Bool)

(assert (=> b!1616259 m!1936713))

(assert (=> b!1616259 m!1936713))

(declare-fun m!1936715 () Bool)

(assert (=> b!1616259 m!1936715))

(assert (=> b!1616258 m!1936711))

(declare-fun m!1936717 () Bool)

(assert (=> b!1616258 m!1936717))

(assert (=> b!1616258 m!1936717))

(declare-fun m!1936719 () Bool)

(assert (=> b!1616258 m!1936719))

(assert (=> b!1616258 m!1936719))

(declare-fun m!1936721 () Bool)

(assert (=> b!1616258 m!1936721))

(declare-fun m!1936723 () Bool)

(assert (=> b!1616257 m!1936723))

(assert (=> b!1616261 m!1936711))

(declare-fun m!1936725 () Bool)

(assert (=> b!1616261 m!1936725))

(assert (=> b!1616262 m!1936711))

(assert (=> b!1616262 m!1936717))

(assert (=> b!1616262 m!1936717))

(assert (=> b!1616262 m!1936719))

(assert (=> b!1616262 m!1936719))

(declare-fun m!1936727 () Bool)

(assert (=> b!1616262 m!1936727))

(declare-fun m!1936729 () Bool)

(assert (=> bm!104847 m!1936729))

(assert (=> b!1616260 m!1936711))

(assert (=> b!1616260 m!1936717))

(assert (=> b!1616260 m!1936717))

(assert (=> b!1616260 m!1936719))

(assert (=> b!1616255 m!1936711))

(declare-fun m!1936731 () Bool)

(assert (=> b!1616255 m!1936731))

(declare-fun m!1936733 () Bool)

(assert (=> b!1616255 m!1936733))

(assert (=> b!1616141 d!486206))

(declare-fun d!486208 () Bool)

(declare-fun c!263145 () Bool)

(assert (=> d!486208 (= c!263145 (isEmpty!10713 (++!4680 lt!579274 lt!579264)))))

(declare-fun e!1036752 () Bool)

(assert (=> d!486208 (= (prefixMatch!382 lt!579263 (++!4680 lt!579274 lt!579264)) e!1036752)))

(declare-fun b!1616274 () Bool)

(declare-fun lostCause!423 (Regex!4447) Bool)

(assert (=> b!1616274 (= e!1036752 (not (lostCause!423 lt!579263)))))

(declare-fun b!1616275 () Bool)

(declare-fun derivativeStep!1067 (Regex!4447 C!9068) Regex!4447)

(declare-fun tail!2332 (List!17772) List!17772)

(assert (=> b!1616275 (= e!1036752 (prefixMatch!382 (derivativeStep!1067 lt!579263 (head!3362 (++!4680 lt!579274 lt!579264))) (tail!2332 (++!4680 lt!579274 lt!579264))))))

(assert (= (and d!486208 c!263145) b!1616274))

(assert (= (and d!486208 (not c!263145)) b!1616275))

(assert (=> d!486208 m!1936493))

(declare-fun m!1936735 () Bool)

(assert (=> d!486208 m!1936735))

(declare-fun m!1936737 () Bool)

(assert (=> b!1616274 m!1936737))

(assert (=> b!1616275 m!1936493))

(declare-fun m!1936739 () Bool)

(assert (=> b!1616275 m!1936739))

(assert (=> b!1616275 m!1936739))

(declare-fun m!1936741 () Bool)

(assert (=> b!1616275 m!1936741))

(assert (=> b!1616275 m!1936493))

(declare-fun m!1936743 () Bool)

(assert (=> b!1616275 m!1936743))

(assert (=> b!1616275 m!1936741))

(assert (=> b!1616275 m!1936743))

(declare-fun m!1936745 () Bool)

(assert (=> b!1616275 m!1936745))

(assert (=> b!1616142 d!486208))

(declare-fun d!486210 () Bool)

(declare-fun e!1036764 () Bool)

(assert (=> d!486210 e!1036764))

(declare-fun res!721524 () Bool)

(assert (=> d!486210 (=> (not res!721524) (not e!1036764))))

(declare-fun lt!579355 () List!17772)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2450 (List!17772) (InoxSet C!9068))

(assert (=> d!486210 (= res!721524 (= (content!2450 lt!579355) ((_ map or) (content!2450 lt!579274) (content!2450 lt!579264))))))

(declare-fun e!1036763 () List!17772)

(assert (=> d!486210 (= lt!579355 e!1036763)))

(declare-fun c!263148 () Bool)

(assert (=> d!486210 (= c!263148 ((_ is Nil!17702) lt!579274))))

(assert (=> d!486210 (= (++!4680 lt!579274 lt!579264) lt!579355)))

(declare-fun b!1616291 () Bool)

(assert (=> b!1616291 (= e!1036763 lt!579264)))

(declare-fun b!1616294 () Bool)

(assert (=> b!1616294 (= e!1036764 (or (not (= lt!579264 Nil!17702)) (= lt!579355 lt!579274)))))

(declare-fun b!1616292 () Bool)

(assert (=> b!1616292 (= e!1036763 (Cons!17702 (h!23103 lt!579274) (++!4680 (t!148287 lt!579274) lt!579264)))))

(declare-fun b!1616293 () Bool)

(declare-fun res!721525 () Bool)

(assert (=> b!1616293 (=> (not res!721525) (not e!1036764))))

(assert (=> b!1616293 (= res!721525 (= (size!14197 lt!579355) (+ (size!14197 lt!579274) (size!14197 lt!579264))))))

(assert (= (and d!486210 c!263148) b!1616291))

(assert (= (and d!486210 (not c!263148)) b!1616292))

(assert (= (and d!486210 res!721524) b!1616293))

(assert (= (and b!1616293 res!721525) b!1616294))

(declare-fun m!1936773 () Bool)

(assert (=> d!486210 m!1936773))

(declare-fun m!1936775 () Bool)

(assert (=> d!486210 m!1936775))

(declare-fun m!1936777 () Bool)

(assert (=> d!486210 m!1936777))

(declare-fun m!1936779 () Bool)

(assert (=> b!1616292 m!1936779))

(declare-fun m!1936781 () Bool)

(assert (=> b!1616293 m!1936781))

(assert (=> b!1616293 m!1936733))

(declare-fun m!1936783 () Bool)

(assert (=> b!1616293 m!1936783))

(assert (=> b!1616142 d!486210))

(declare-fun d!486222 () Bool)

(declare-fun list!6927 (Conc!5886) List!17772)

(assert (=> d!486222 (= (list!6924 lt!579270) (list!6927 (c!263121 lt!579270)))))

(declare-fun bs!394117 () Bool)

(assert (= bs!394117 d!486222))

(declare-fun m!1936785 () Bool)

(assert (=> bs!394117 m!1936785))

(assert (=> b!1616142 d!486222))

(declare-fun d!486224 () Bool)

(declare-fun list!6928 (Conc!5887) List!17773)

(assert (=> d!486224 (= (list!6923 (_1!10019 lt!579277)) (list!6928 (c!263123 (_1!10019 lt!579277))))))

(declare-fun bs!394118 () Bool)

(assert (= bs!394118 d!486224))

(declare-fun m!1936787 () Bool)

(assert (=> bs!394118 m!1936787))

(assert (=> b!1616144 d!486224))

(declare-fun d!486226 () Bool)

(declare-fun e!1036823 () Bool)

(assert (=> d!486226 e!1036823))

(declare-fun res!721584 () Bool)

(assert (=> d!486226 (=> (not res!721584) (not e!1036823))))

(assert (=> d!486226 (= res!721584 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))))) (t!148288 tokens!457)))))

(declare-fun lt!579446 () Unit!28465)

(declare-fun e!1036824 () Unit!28465)

(assert (=> d!486226 (= lt!579446 e!1036824)))

(declare-fun c!263163 () Bool)

(assert (=> d!486226 (= c!263163 (or ((_ is Nil!17703) (t!148288 tokens!457)) ((_ is Nil!17703) (t!148288 (t!148288 tokens!457)))))))

(assert (=> d!486226 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486226 (= (theoremInvertabilityWhenTokenListSeparable!193 thiss!17113 rules!1846 (t!148288 tokens!457)) lt!579446)))

(declare-fun b!1616384 () Bool)

(declare-fun Unit!28481 () Unit!28465)

(assert (=> b!1616384 (= e!1036824 Unit!28481)))

(declare-fun b!1616385 () Bool)

(declare-fun Unit!28482 () Unit!28465)

(assert (=> b!1616385 (= e!1036824 Unit!28482)))

(declare-fun lt!579448 () BalanceConc!11716)

(assert (=> b!1616385 (= lt!579448 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))

(declare-fun lt!579459 () BalanceConc!11716)

(assert (=> b!1616385 (= lt!579459 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!579470 () tuple2!17234)

(assert (=> b!1616385 (= lt!579470 (lex!1232 thiss!17113 rules!1846 lt!579459))))

(declare-fun lt!579458 () List!17772)

(assert (=> b!1616385 (= lt!579458 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!579466 () List!17772)

(assert (=> b!1616385 (= lt!579466 (list!6924 lt!579459))))

(declare-fun lt!579464 () Unit!28465)

(assert (=> b!1616385 (= lt!579464 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579458 lt!579466))))

(assert (=> b!1616385 (isPrefix!1379 lt!579458 (++!4680 lt!579458 lt!579466))))

(declare-fun lt!579449 () Unit!28465)

(assert (=> b!1616385 (= lt!579449 lt!579464)))

(declare-fun lt!579465 () Unit!28465)

(assert (=> b!1616385 (= lt!579465 (theoremInvertabilityWhenTokenListSeparable!193 thiss!17113 rules!1846 (t!148288 (t!148288 tokens!457))))))

(declare-fun lt!579445 () Unit!28465)

(assert (=> b!1616385 (= lt!579445 (seqFromListBHdTlConstructive!196 (h!23104 (t!148288 (t!148288 tokens!457))) (t!148288 (t!148288 (t!148288 tokens!457))) (_1!10019 lt!579470)))))

(assert (=> b!1616385 (= (list!6923 (_1!10019 lt!579470)) (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!579453 () Unit!28465)

(assert (=> b!1616385 (= lt!579453 lt!579445)))

(declare-fun lt!579451 () Option!3247)

(assert (=> b!1616385 (= lt!579451 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 lt!579448)))))

(assert (=> b!1616385 (= (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457)))) (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) 0 (BalanceConc!11717 Empty!5886)))))

(declare-fun lt!579462 () Unit!28465)

(declare-fun Unit!28483 () Unit!28465)

(assert (=> b!1616385 (= lt!579462 Unit!28483)))

(declare-fun lt!579452 () Unit!28465)

(assert (=> b!1616385 (= lt!579452 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(assert (=> b!1616385 (= (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))

(declare-fun lt!579469 () Unit!28465)

(declare-fun Unit!28484 () Unit!28465)

(assert (=> b!1616385 (= lt!579469 Unit!28484)))

(assert (=> b!1616385 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0))) (Cons!17702 (head!3362 (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457))))) Nil!17702))))

(declare-fun lt!579461 () Unit!28465)

(declare-fun Unit!28485 () Unit!28465)

(assert (=> b!1616385 (= lt!579461 Unit!28485)))

(assert (=> b!1616385 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0))) (Cons!17702 (head!3362 (list!6924 lt!579459)) Nil!17702))))

(declare-fun lt!579454 () Unit!28465)

(declare-fun Unit!28486 () Unit!28465)

(assert (=> b!1616385 (= lt!579454 Unit!28486)))

(assert (=> b!1616385 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0))) (Cons!17702 (head!3363 lt!579459) Nil!17702))))

(declare-fun lt!579455 () Unit!28465)

(declare-fun Unit!28487 () Unit!28465)

(assert (=> b!1616385 (= lt!579455 Unit!28487)))

(assert (=> b!1616385 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!579463 () Unit!28465)

(declare-fun Unit!28488 () Unit!28465)

(assert (=> b!1616385 (= lt!579463 Unit!28488)))

(assert (=> b!1616385 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!579456 () Unit!28465)

(declare-fun Unit!28489 () Unit!28465)

(assert (=> b!1616385 (= lt!579456 Unit!28489)))

(declare-fun lt!579460 () Unit!28465)

(declare-fun Unit!28490 () Unit!28465)

(assert (=> b!1616385 (= lt!579460 Unit!28490)))

(assert (=> b!1616385 (= (_1!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))) (h!23104 (t!148288 tokens!457)))))

(declare-fun lt!579467 () Unit!28465)

(declare-fun Unit!28491 () Unit!28465)

(assert (=> b!1616385 (= lt!579467 Unit!28491)))

(assert (=> b!1616385 (isEmpty!10713 (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun lt!579447 () Unit!28465)

(declare-fun Unit!28492 () Unit!28465)

(assert (=> b!1616385 (= lt!579447 Unit!28492)))

(assert (=> b!1616385 (matchR!1946 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!579450 () Unit!28465)

(declare-fun Unit!28493 () Unit!28465)

(assert (=> b!1616385 (= lt!579450 Unit!28493)))

(assert (=> b!1616385 (= (rule!4939 (h!23104 (t!148288 tokens!457))) (rule!4939 (h!23104 (t!148288 tokens!457))))))

(declare-fun lt!579468 () Unit!28465)

(declare-fun Unit!28494 () Unit!28465)

(assert (=> b!1616385 (= lt!579468 Unit!28494)))

(declare-fun lt!579457 () Unit!28465)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!96 (LexerInterface!2748 List!17774 Token!5804 Rule!6038 List!17772) Unit!28465)

(assert (=> b!1616385 (= lt!579457 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!96 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457)) (rule!4939 (h!23104 (t!148288 tokens!457))) (list!6924 lt!579459)))))

(declare-fun b!1616386 () Bool)

(declare-fun isEmpty!10720 (BalanceConc!11716) Bool)

(assert (=> b!1616386 (= e!1036823 (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))))))))

(assert (= (and d!486226 c!263163) b!1616384))

(assert (= (and d!486226 (not c!263163)) b!1616385))

(assert (= (and d!486226 res!721584) b!1616386))

(declare-fun m!1936925 () Bool)

(assert (=> d!486226 m!1936925))

(declare-fun m!1936927 () Bool)

(assert (=> d!486226 m!1936927))

(assert (=> d!486226 m!1936467))

(assert (=> d!486226 m!1936925))

(assert (=> d!486226 m!1936533))

(declare-fun m!1936929 () Bool)

(assert (=> d!486226 m!1936929))

(assert (=> d!486226 m!1936467))

(declare-fun m!1936931 () Bool)

(assert (=> b!1616385 m!1936931))

(declare-fun m!1936933 () Bool)

(assert (=> b!1616385 m!1936933))

(declare-fun m!1936935 () Bool)

(assert (=> b!1616385 m!1936935))

(declare-fun m!1936937 () Bool)

(assert (=> b!1616385 m!1936937))

(declare-fun m!1936939 () Bool)

(assert (=> b!1616385 m!1936939))

(declare-fun m!1936941 () Bool)

(assert (=> b!1616385 m!1936941))

(declare-fun m!1936943 () Bool)

(assert (=> b!1616385 m!1936943))

(declare-fun m!1936945 () Bool)

(assert (=> b!1616385 m!1936945))

(declare-fun m!1936947 () Bool)

(assert (=> b!1616385 m!1936947))

(declare-fun m!1936949 () Bool)

(assert (=> b!1616385 m!1936949))

(assert (=> b!1616385 m!1936467))

(assert (=> b!1616385 m!1936925))

(declare-fun m!1936951 () Bool)

(assert (=> b!1616385 m!1936951))

(declare-fun m!1936953 () Bool)

(assert (=> b!1616385 m!1936953))

(declare-fun m!1936955 () Bool)

(assert (=> b!1616385 m!1936955))

(declare-fun m!1936957 () Bool)

(assert (=> b!1616385 m!1936957))

(assert (=> b!1616385 m!1936931))

(declare-fun m!1936959 () Bool)

(assert (=> b!1616385 m!1936959))

(assert (=> b!1616385 m!1936939))

(declare-fun m!1936961 () Bool)

(assert (=> b!1616385 m!1936961))

(assert (=> b!1616385 m!1936555))

(declare-fun m!1936963 () Bool)

(assert (=> b!1616385 m!1936963))

(declare-fun m!1936965 () Bool)

(assert (=> b!1616385 m!1936965))

(declare-fun m!1936967 () Bool)

(assert (=> b!1616385 m!1936967))

(assert (=> b!1616385 m!1936931))

(declare-fun m!1936969 () Bool)

(assert (=> b!1616385 m!1936969))

(assert (=> b!1616385 m!1936555))

(declare-fun m!1936971 () Bool)

(assert (=> b!1616385 m!1936971))

(assert (=> b!1616385 m!1936965))

(assert (=> b!1616385 m!1936945))

(assert (=> b!1616385 m!1936945))

(declare-fun m!1936973 () Bool)

(assert (=> b!1616385 m!1936973))

(declare-fun m!1936975 () Bool)

(assert (=> b!1616385 m!1936975))

(assert (=> b!1616385 m!1936467))

(assert (=> b!1616385 m!1936939))

(declare-fun m!1936977 () Bool)

(assert (=> b!1616385 m!1936977))

(declare-fun m!1936979 () Bool)

(assert (=> b!1616385 m!1936979))

(assert (=> b!1616385 m!1936491))

(declare-fun m!1936981 () Bool)

(assert (=> b!1616385 m!1936981))

(declare-fun m!1936983 () Bool)

(assert (=> b!1616385 m!1936983))

(declare-fun m!1936985 () Bool)

(assert (=> b!1616385 m!1936985))

(assert (=> b!1616385 m!1936965))

(assert (=> b!1616385 m!1936939))

(declare-fun m!1936987 () Bool)

(assert (=> b!1616385 m!1936987))

(assert (=> b!1616385 m!1936979))

(declare-fun m!1936989 () Bool)

(assert (=> b!1616385 m!1936989))

(assert (=> b!1616385 m!1936969))

(assert (=> b!1616385 m!1936951))

(assert (=> b!1616385 m!1936491))

(assert (=> b!1616385 m!1936965))

(declare-fun m!1936991 () Bool)

(assert (=> b!1616385 m!1936991))

(assert (=> b!1616385 m!1936981))

(declare-fun m!1936993 () Bool)

(assert (=> b!1616385 m!1936993))

(declare-fun m!1936995 () Bool)

(assert (=> b!1616385 m!1936995))

(assert (=> b!1616385 m!1936949))

(assert (=> b!1616385 m!1936935))

(assert (=> b!1616385 m!1936953))

(declare-fun m!1936997 () Bool)

(assert (=> b!1616385 m!1936997))

(assert (=> b!1616385 m!1936955))

(assert (=> b!1616386 m!1936467))

(assert (=> b!1616386 m!1936467))

(assert (=> b!1616386 m!1936925))

(assert (=> b!1616386 m!1936925))

(assert (=> b!1616386 m!1936927))

(declare-fun m!1936999 () Bool)

(assert (=> b!1616386 m!1936999))

(assert (=> b!1616144 d!486226))

(declare-fun d!486258 () Bool)

(declare-fun e!1036831 () Bool)

(assert (=> d!486258 e!1036831))

(declare-fun res!721595 () Bool)

(assert (=> d!486258 (=> res!721595 e!1036831)))

(declare-fun lt!579473 () Bool)

(assert (=> d!486258 (= res!721595 (not lt!579473))))

(declare-fun e!1036832 () Bool)

(assert (=> d!486258 (= lt!579473 e!1036832)))

(declare-fun res!721596 () Bool)

(assert (=> d!486258 (=> res!721596 e!1036832)))

(assert (=> d!486258 (= res!721596 ((_ is Nil!17702) lt!579274))))

(assert (=> d!486258 (= (isPrefix!1379 lt!579274 lt!579275) lt!579473)))

(declare-fun b!1616396 () Bool)

(declare-fun res!721594 () Bool)

(declare-fun e!1036833 () Bool)

(assert (=> b!1616396 (=> (not res!721594) (not e!1036833))))

(assert (=> b!1616396 (= res!721594 (= (head!3362 lt!579274) (head!3362 lt!579275)))))

(declare-fun b!1616395 () Bool)

(assert (=> b!1616395 (= e!1036832 e!1036833)))

(declare-fun res!721593 () Bool)

(assert (=> b!1616395 (=> (not res!721593) (not e!1036833))))

(assert (=> b!1616395 (= res!721593 (not ((_ is Nil!17702) lt!579275)))))

(declare-fun b!1616398 () Bool)

(assert (=> b!1616398 (= e!1036831 (>= (size!14197 lt!579275) (size!14197 lt!579274)))))

(declare-fun b!1616397 () Bool)

(assert (=> b!1616397 (= e!1036833 (isPrefix!1379 (tail!2332 lt!579274) (tail!2332 lt!579275)))))

(assert (= (and d!486258 (not res!721596)) b!1616395))

(assert (= (and b!1616395 res!721593) b!1616396))

(assert (= (and b!1616396 res!721594) b!1616397))

(assert (= (and d!486258 (not res!721595)) b!1616398))

(declare-fun m!1937001 () Bool)

(assert (=> b!1616396 m!1937001))

(declare-fun m!1937003 () Bool)

(assert (=> b!1616396 m!1937003))

(declare-fun m!1937005 () Bool)

(assert (=> b!1616398 m!1937005))

(assert (=> b!1616398 m!1936733))

(declare-fun m!1937007 () Bool)

(assert (=> b!1616397 m!1937007))

(declare-fun m!1937009 () Bool)

(assert (=> b!1616397 m!1937009))

(assert (=> b!1616397 m!1937007))

(assert (=> b!1616397 m!1937009))

(declare-fun m!1937011 () Bool)

(assert (=> b!1616397 m!1937011))

(assert (=> b!1616144 d!486258))

(declare-fun d!486260 () Bool)

(assert (=> d!486260 (isPrefix!1379 lt!579274 (++!4680 lt!579274 lt!579259))))

(declare-fun lt!579476 () Unit!28465)

(declare-fun choose!9721 (List!17772 List!17772) Unit!28465)

(assert (=> d!486260 (= lt!579476 (choose!9721 lt!579274 lt!579259))))

(assert (=> d!486260 (= (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579274 lt!579259) lt!579476)))

(declare-fun bs!394127 () Bool)

(assert (= bs!394127 d!486260))

(assert (=> bs!394127 m!1936461))

(assert (=> bs!394127 m!1936461))

(declare-fun m!1937013 () Bool)

(assert (=> bs!394127 m!1937013))

(declare-fun m!1937015 () Bool)

(assert (=> bs!394127 m!1937015))

(assert (=> b!1616144 d!486260))

(declare-fun d!486262 () Bool)

(declare-fun lt!579559 () Bool)

(declare-fun e!1036845 () Bool)

(assert (=> d!486262 (= lt!579559 e!1036845)))

(declare-fun res!721607 () Bool)

(assert (=> d!486262 (=> (not res!721607) (not e!1036845))))

(assert (=> d!486262 (= res!721607 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))) (list!6923 (singletonSeq!1517 (h!23104 tokens!457)))))))

(declare-fun e!1036844 () Bool)

(assert (=> d!486262 (= lt!579559 e!1036844)))

(declare-fun res!721608 () Bool)

(assert (=> d!486262 (=> (not res!721608) (not e!1036844))))

(declare-fun lt!579560 () tuple2!17234)

(declare-fun size!14198 (BalanceConc!11718) Int)

(assert (=> d!486262 (= res!721608 (= (size!14198 (_1!10019 lt!579560)) 1))))

(assert (=> d!486262 (= lt!579560 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))))

(assert (=> d!486262 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486262 (= (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457)) lt!579559)))

(declare-fun b!1616414 () Bool)

(declare-fun res!721606 () Bool)

(assert (=> b!1616414 (=> (not res!721606) (not e!1036844))))

(declare-fun apply!4463 (BalanceConc!11718 Int) Token!5804)

(assert (=> b!1616414 (= res!721606 (= (apply!4463 (_1!10019 lt!579560) 0) (h!23104 tokens!457)))))

(declare-fun b!1616415 () Bool)

(assert (=> b!1616415 (= e!1036844 (isEmpty!10720 (_2!10019 lt!579560)))))

(declare-fun b!1616416 () Bool)

(assert (=> b!1616416 (= e!1036845 (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))))))

(assert (= (and d!486262 res!721608) b!1616414))

(assert (= (and b!1616414 res!721606) b!1616415))

(assert (= (and d!486262 res!721607) b!1616416))

(declare-fun m!1937093 () Bool)

(assert (=> d!486262 m!1937093))

(declare-fun m!1937095 () Bool)

(assert (=> d!486262 m!1937095))

(declare-fun m!1937097 () Bool)

(assert (=> d!486262 m!1937097))

(assert (=> d!486262 m!1936519))

(declare-fun m!1937099 () Bool)

(assert (=> d!486262 m!1937099))

(declare-fun m!1937101 () Bool)

(assert (=> d!486262 m!1937101))

(assert (=> d!486262 m!1936519))

(assert (=> d!486262 m!1936519))

(assert (=> d!486262 m!1937093))

(assert (=> d!486262 m!1936533))

(declare-fun m!1937103 () Bool)

(assert (=> b!1616414 m!1937103))

(declare-fun m!1937105 () Bool)

(assert (=> b!1616415 m!1937105))

(assert (=> b!1616416 m!1936519))

(assert (=> b!1616416 m!1936519))

(assert (=> b!1616416 m!1937093))

(assert (=> b!1616416 m!1937093))

(assert (=> b!1616416 m!1937095))

(declare-fun m!1937107 () Bool)

(assert (=> b!1616416 m!1937107))

(assert (=> b!1616136 d!486262))

(declare-fun d!486266 () Bool)

(assert (=> d!486266 (= (separableTokensPredicate!690 thiss!17113 (h!23104 tokens!457) (h!23104 (t!148288 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!493 (rulesRegex!509 thiss!17113 rules!1846) (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))))))

(declare-fun bs!394129 () Bool)

(assert (= bs!394129 d!486266))

(assert (=> bs!394129 m!1936483))

(assert (=> bs!394129 m!1936485))

(assert (=> bs!394129 m!1936491))

(assert (=> bs!394129 m!1936483))

(assert (=> bs!394129 m!1936481))

(declare-fun m!1937125 () Bool)

(assert (=> bs!394129 m!1937125))

(declare-fun m!1937127 () Bool)

(assert (=> bs!394129 m!1937127))

(assert (=> bs!394129 m!1936481))

(assert (=> bs!394129 m!1936463))

(assert (=> bs!394129 m!1936485))

(assert (=> bs!394129 m!1937125))

(assert (=> bs!394129 m!1936463))

(assert (=> bs!394129 m!1936491))

(assert (=> b!1616135 d!486266))

(declare-fun d!486272 () Bool)

(declare-fun lt!579569 () C!9068)

(assert (=> d!486272 (= lt!579569 (head!3362 (list!6924 lt!579260)))))

(declare-fun head!3365 (Conc!5886) C!9068)

(assert (=> d!486272 (= lt!579569 (head!3365 (c!263121 lt!579260)))))

(assert (=> d!486272 (not (isEmpty!10720 lt!579260))))

(assert (=> d!486272 (= (head!3363 lt!579260) lt!579569)))

(declare-fun bs!394130 () Bool)

(assert (= bs!394130 d!486272))

(assert (=> bs!394130 m!1936479))

(assert (=> bs!394130 m!1936479))

(declare-fun m!1937129 () Bool)

(assert (=> bs!394130 m!1937129))

(declare-fun m!1937131 () Bool)

(assert (=> bs!394130 m!1937131))

(declare-fun m!1937133 () Bool)

(assert (=> bs!394130 m!1937133))

(assert (=> b!1616139 d!486272))

(declare-fun d!486274 () Bool)

(declare-fun lt!579572 () BalanceConc!11716)

(assert (=> d!486274 (= (list!6924 lt!579572) (printList!863 thiss!17113 (list!6923 lt!579267)))))

(assert (=> d!486274 (= lt!579572 (printTailRec!801 thiss!17113 lt!579267 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486274 (= (print!1279 thiss!17113 lt!579267) lt!579572)))

(declare-fun bs!394131 () Bool)

(assert (= bs!394131 d!486274))

(declare-fun m!1937135 () Bool)

(assert (=> bs!394131 m!1937135))

(declare-fun m!1937137 () Bool)

(assert (=> bs!394131 m!1937137))

(assert (=> bs!394131 m!1937137))

(declare-fun m!1937139 () Bool)

(assert (=> bs!394131 m!1937139))

(assert (=> bs!394131 m!1936511))

(assert (=> b!1616138 d!486274))

(declare-fun b!1616429 () Bool)

(declare-fun res!721626 () Bool)

(declare-fun e!1036855 () Bool)

(assert (=> b!1616429 (=> (not res!721626) (not e!1036855))))

(declare-fun lt!579577 () Option!3247)

(assert (=> b!1616429 (= res!721626 (< (size!14197 (_2!10020 (get!5079 lt!579577))) (size!14197 lt!579276)))))

(declare-fun b!1616430 () Bool)

(declare-fun e!1036856 () Bool)

(assert (=> b!1616430 (= e!1036856 e!1036855)))

(declare-fun res!721622 () Bool)

(assert (=> b!1616430 (=> (not res!721622) (not e!1036855))))

(assert (=> b!1616430 (= res!721622 (isDefined!2614 lt!579577))))

(declare-fun b!1616431 () Bool)

(declare-fun e!1036857 () Option!3247)

(declare-fun lt!579576 () Option!3247)

(declare-fun lt!579575 () Option!3247)

(assert (=> b!1616431 (= e!1036857 (ite (and ((_ is None!3246) lt!579576) ((_ is None!3246) lt!579575)) None!3246 (ite ((_ is None!3246) lt!579575) lt!579576 (ite ((_ is None!3246) lt!579576) lt!579575 (ite (>= (size!14194 (_1!10020 (v!24235 lt!579576))) (size!14194 (_1!10020 (v!24235 lt!579575)))) lt!579576 lt!579575)))))))

(declare-fun call!104867 () Option!3247)

(assert (=> b!1616431 (= lt!579576 call!104867)))

(assert (=> b!1616431 (= lt!579575 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) lt!579276))))

(declare-fun b!1616432 () Bool)

(declare-fun res!721625 () Bool)

(assert (=> b!1616432 (=> (not res!721625) (not e!1036855))))

(assert (=> b!1616432 (= res!721625 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))) (_2!10020 (get!5079 lt!579577))) lt!579276))))

(declare-fun b!1616433 () Bool)

(declare-fun res!721627 () Bool)

(assert (=> b!1616433 (=> (not res!721627) (not e!1036855))))

(assert (=> b!1616433 (= res!721627 (= (value!98564 (_1!10020 (get!5079 lt!579577))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun b!1616434 () Bool)

(declare-fun res!721621 () Bool)

(assert (=> b!1616434 (=> (not res!721621) (not e!1036855))))

(assert (=> b!1616434 (= res!721621 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!579577)))))))

(declare-fun b!1616435 () Bool)

(assert (=> b!1616435 (= e!1036855 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579577)))))))

(declare-fun bm!104862 () Bool)

(assert (=> bm!104862 (= call!104867 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) lt!579276))))

(declare-fun d!486276 () Bool)

(assert (=> d!486276 e!1036856))

(declare-fun res!721623 () Bool)

(assert (=> d!486276 (=> res!721623 e!1036856)))

(assert (=> d!486276 (= res!721623 (isEmpty!10719 lt!579577))))

(assert (=> d!486276 (= lt!579577 e!1036857)))

(declare-fun c!263167 () Bool)

(assert (=> d!486276 (= c!263167 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!579574 () Unit!28465)

(declare-fun lt!579573 () Unit!28465)

(assert (=> d!486276 (= lt!579574 lt!579573)))

(assert (=> d!486276 (isPrefix!1379 lt!579276 lt!579276)))

(assert (=> d!486276 (= lt!579573 (lemmaIsPrefixRefl!946 lt!579276 lt!579276))))

(assert (=> d!486276 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486276 (= (maxPrefix!1312 thiss!17113 rules!1846 lt!579276) lt!579577)))

(declare-fun b!1616436 () Bool)

(declare-fun res!721624 () Bool)

(assert (=> b!1616436 (=> (not res!721624) (not e!1036855))))

(assert (=> b!1616436 (= res!721624 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun b!1616437 () Bool)

(assert (=> b!1616437 (= e!1036857 call!104867)))

(assert (= (and d!486276 c!263167) b!1616437))

(assert (= (and d!486276 (not c!263167)) b!1616431))

(assert (= (or b!1616437 b!1616431) bm!104862))

(assert (= (and d!486276 (not res!721623)) b!1616430))

(assert (= (and b!1616430 res!721622) b!1616434))

(assert (= (and b!1616434 res!721621) b!1616429))

(assert (= (and b!1616429 res!721626) b!1616432))

(assert (= (and b!1616432 res!721625) b!1616433))

(assert (= (and b!1616433 res!721627) b!1616436))

(assert (= (and b!1616436 res!721624) b!1616435))

(declare-fun m!1937141 () Bool)

(assert (=> d!486276 m!1937141))

(declare-fun m!1937143 () Bool)

(assert (=> d!486276 m!1937143))

(declare-fun m!1937145 () Bool)

(assert (=> d!486276 m!1937145))

(assert (=> d!486276 m!1936675))

(declare-fun m!1937147 () Bool)

(assert (=> b!1616430 m!1937147))

(declare-fun m!1937149 () Bool)

(assert (=> b!1616433 m!1937149))

(declare-fun m!1937151 () Bool)

(assert (=> b!1616433 m!1937151))

(assert (=> b!1616433 m!1937151))

(declare-fun m!1937153 () Bool)

(assert (=> b!1616433 m!1937153))

(assert (=> b!1616432 m!1937149))

(declare-fun m!1937155 () Bool)

(assert (=> b!1616432 m!1937155))

(assert (=> b!1616432 m!1937155))

(declare-fun m!1937157 () Bool)

(assert (=> b!1616432 m!1937157))

(assert (=> b!1616432 m!1937157))

(declare-fun m!1937159 () Bool)

(assert (=> b!1616432 m!1937159))

(declare-fun m!1937161 () Bool)

(assert (=> b!1616431 m!1937161))

(assert (=> b!1616435 m!1937149))

(declare-fun m!1937163 () Bool)

(assert (=> b!1616435 m!1937163))

(assert (=> b!1616436 m!1937149))

(assert (=> b!1616436 m!1937155))

(assert (=> b!1616436 m!1937155))

(assert (=> b!1616436 m!1937157))

(assert (=> b!1616436 m!1937157))

(declare-fun m!1937165 () Bool)

(assert (=> b!1616436 m!1937165))

(declare-fun m!1937167 () Bool)

(assert (=> bm!104862 m!1937167))

(assert (=> b!1616434 m!1937149))

(assert (=> b!1616434 m!1937155))

(assert (=> b!1616434 m!1937155))

(assert (=> b!1616434 m!1937157))

(assert (=> b!1616429 m!1937149))

(declare-fun m!1937169 () Bool)

(assert (=> b!1616429 m!1937169))

(declare-fun m!1937171 () Bool)

(assert (=> b!1616429 m!1937171))

(assert (=> b!1616138 d!486276))

(declare-fun d!486278 () Bool)

(assert (=> d!486278 (= (list!6924 lt!579268) (list!6927 (c!263121 lt!579268)))))

(declare-fun bs!394132 () Bool)

(assert (= bs!394132 d!486278))

(declare-fun m!1937173 () Bool)

(assert (=> bs!394132 m!1937173))

(assert (=> b!1616138 d!486278))

(declare-fun d!486280 () Bool)

(declare-fun lt!579595 () BalanceConc!11716)

(declare-fun printListTailRec!341 (LexerInterface!2748 List!17773 List!17772) List!17772)

(declare-fun dropList!578 (BalanceConc!11718 Int) List!17773)

(assert (=> d!486280 (= (list!6924 lt!579595) (printListTailRec!341 thiss!17113 (dropList!578 lt!579267 0) (list!6924 (BalanceConc!11717 Empty!5886))))))

(declare-fun e!1036862 () BalanceConc!11716)

(assert (=> d!486280 (= lt!579595 e!1036862)))

(declare-fun c!263170 () Bool)

(assert (=> d!486280 (= c!263170 (>= 0 (size!14198 lt!579267)))))

(declare-fun e!1036863 () Bool)

(assert (=> d!486280 e!1036863))

(declare-fun res!721630 () Bool)

(assert (=> d!486280 (=> (not res!721630) (not e!1036863))))

(assert (=> d!486280 (= res!721630 (>= 0 0))))

(assert (=> d!486280 (= (printTailRec!801 thiss!17113 lt!579267 0 (BalanceConc!11717 Empty!5886)) lt!579595)))

(declare-fun b!1616444 () Bool)

(assert (=> b!1616444 (= e!1036863 (<= 0 (size!14198 lt!579267)))))

(declare-fun b!1616445 () Bool)

(assert (=> b!1616445 (= e!1036862 (BalanceConc!11717 Empty!5886))))

(declare-fun b!1616446 () Bool)

(assert (=> b!1616446 (= e!1036862 (printTailRec!801 thiss!17113 lt!579267 (+ 0 1) (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0)))))))

(declare-fun lt!579596 () List!17773)

(assert (=> b!1616446 (= lt!579596 (list!6923 lt!579267))))

(declare-fun lt!579594 () Unit!28465)

(declare-fun lemmaDropApply!548 (List!17773 Int) Unit!28465)

(assert (=> b!1616446 (= lt!579594 (lemmaDropApply!548 lt!579596 0))))

(declare-fun head!3366 (List!17773) Token!5804)

(declare-fun drop!856 (List!17773 Int) List!17773)

(declare-fun apply!4464 (List!17773 Int) Token!5804)

(assert (=> b!1616446 (= (head!3366 (drop!856 lt!579596 0)) (apply!4464 lt!579596 0))))

(declare-fun lt!579592 () Unit!28465)

(assert (=> b!1616446 (= lt!579592 lt!579594)))

(declare-fun lt!579598 () List!17773)

(assert (=> b!1616446 (= lt!579598 (list!6923 lt!579267))))

(declare-fun lt!579597 () Unit!28465)

(declare-fun lemmaDropTail!528 (List!17773 Int) Unit!28465)

(assert (=> b!1616446 (= lt!579597 (lemmaDropTail!528 lt!579598 0))))

(declare-fun tail!2334 (List!17773) List!17773)

(assert (=> b!1616446 (= (tail!2334 (drop!856 lt!579598 0)) (drop!856 lt!579598 (+ 0 1)))))

(declare-fun lt!579593 () Unit!28465)

(assert (=> b!1616446 (= lt!579593 lt!579597)))

(assert (= (and d!486280 res!721630) b!1616444))

(assert (= (and d!486280 c!263170) b!1616445))

(assert (= (and d!486280 (not c!263170)) b!1616446))

(declare-fun m!1937175 () Bool)

(assert (=> d!486280 m!1937175))

(declare-fun m!1937177 () Bool)

(assert (=> d!486280 m!1937177))

(declare-fun m!1937179 () Bool)

(assert (=> d!486280 m!1937179))

(declare-fun m!1937181 () Bool)

(assert (=> d!486280 m!1937181))

(assert (=> d!486280 m!1937177))

(assert (=> d!486280 m!1937179))

(declare-fun m!1937183 () Bool)

(assert (=> d!486280 m!1937183))

(assert (=> b!1616444 m!1937183))

(declare-fun m!1937185 () Bool)

(assert (=> b!1616446 m!1937185))

(declare-fun m!1937187 () Bool)

(assert (=> b!1616446 m!1937187))

(declare-fun m!1937189 () Bool)

(assert (=> b!1616446 m!1937189))

(assert (=> b!1616446 m!1937137))

(assert (=> b!1616446 m!1937189))

(declare-fun m!1937191 () Bool)

(assert (=> b!1616446 m!1937191))

(declare-fun m!1937193 () Bool)

(assert (=> b!1616446 m!1937193))

(declare-fun m!1937195 () Bool)

(assert (=> b!1616446 m!1937195))

(assert (=> b!1616446 m!1937187))

(declare-fun m!1937197 () Bool)

(assert (=> b!1616446 m!1937197))

(declare-fun m!1937199 () Bool)

(assert (=> b!1616446 m!1937199))

(declare-fun m!1937201 () Bool)

(assert (=> b!1616446 m!1937201))

(declare-fun m!1937203 () Bool)

(assert (=> b!1616446 m!1937203))

(assert (=> b!1616446 m!1937193))

(assert (=> b!1616446 m!1937185))

(assert (=> b!1616446 m!1937201))

(declare-fun m!1937205 () Bool)

(assert (=> b!1616446 m!1937205))

(declare-fun m!1937207 () Bool)

(assert (=> b!1616446 m!1937207))

(assert (=> b!1616138 d!486280))

(declare-fun d!486282 () Bool)

(declare-fun c!263173 () Bool)

(assert (=> d!486282 (= c!263173 ((_ is Cons!17703) (Cons!17703 (h!23104 tokens!457) Nil!17703)))))

(declare-fun e!1036866 () List!17772)

(assert (=> d!486282 (= (printList!863 thiss!17113 (Cons!17703 (h!23104 tokens!457) Nil!17703)) e!1036866)))

(declare-fun b!1616451 () Bool)

(assert (=> b!1616451 (= e!1036866 (++!4680 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))) (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))))

(declare-fun b!1616452 () Bool)

(assert (=> b!1616452 (= e!1036866 Nil!17702)))

(assert (= (and d!486282 c!263173) b!1616451))

(assert (= (and d!486282 (not c!263173)) b!1616452))

(declare-fun m!1937209 () Bool)

(assert (=> b!1616451 m!1937209))

(assert (=> b!1616451 m!1937209))

(declare-fun m!1937211 () Bool)

(assert (=> b!1616451 m!1937211))

(declare-fun m!1937213 () Bool)

(assert (=> b!1616451 m!1937213))

(assert (=> b!1616451 m!1937211))

(assert (=> b!1616451 m!1937213))

(declare-fun m!1937215 () Bool)

(assert (=> b!1616451 m!1937215))

(assert (=> b!1616138 d!486282))

(declare-fun d!486284 () Bool)

(declare-fun e!1036869 () Bool)

(assert (=> d!486284 e!1036869))

(declare-fun res!721633 () Bool)

(assert (=> d!486284 (=> (not res!721633) (not e!1036869))))

(declare-fun lt!579601 () BalanceConc!11718)

(assert (=> d!486284 (= res!721633 (= (list!6923 lt!579601) (Cons!17703 (h!23104 tokens!457) Nil!17703)))))

(declare-fun singleton!641 (Token!5804) BalanceConc!11718)

(assert (=> d!486284 (= lt!579601 (singleton!641 (h!23104 tokens!457)))))

(assert (=> d!486284 (= (singletonSeq!1517 (h!23104 tokens!457)) lt!579601)))

(declare-fun b!1616455 () Bool)

(declare-fun isBalanced!1761 (Conc!5887) Bool)

(assert (=> b!1616455 (= e!1036869 (isBalanced!1761 (c!263123 lt!579601)))))

(assert (= (and d!486284 res!721633) b!1616455))

(declare-fun m!1937217 () Bool)

(assert (=> d!486284 m!1937217))

(declare-fun m!1937219 () Bool)

(assert (=> d!486284 m!1937219))

(declare-fun m!1937221 () Bool)

(assert (=> b!1616455 m!1937221))

(assert (=> b!1616138 d!486284))

(declare-fun d!486286 () Bool)

(assert (=> d!486286 (= (head!3362 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))) (h!23103 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(assert (=> b!1616152 d!486286))

(declare-fun d!486288 () Bool)

(assert (=> d!486288 (= (inv!23096 (tag!3395 (h!23105 rules!1846))) (= (mod (str.len (value!98563 (tag!3395 (h!23105 rules!1846)))) 2) 0))))

(assert (=> b!1616131 d!486288))

(declare-fun d!486290 () Bool)

(declare-fun res!721636 () Bool)

(declare-fun e!1036872 () Bool)

(assert (=> d!486290 (=> (not res!721636) (not e!1036872))))

(declare-fun semiInverseModEq!1186 (Int Int) Bool)

(assert (=> d!486290 (= res!721636 (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (h!23105 rules!1846)))))))

(assert (=> d!486290 (= (inv!23099 (transformation!3119 (h!23105 rules!1846))) e!1036872)))

(declare-fun b!1616458 () Bool)

(declare-fun equivClasses!1127 (Int Int) Bool)

(assert (=> b!1616458 (= e!1036872 (equivClasses!1127 (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (h!23105 rules!1846)))))))

(assert (= (and d!486290 res!721636) b!1616458))

(declare-fun m!1937223 () Bool)

(assert (=> d!486290 m!1937223))

(declare-fun m!1937225 () Bool)

(assert (=> b!1616458 m!1937225))

(assert (=> b!1616131 d!486290))

(declare-fun d!486292 () Bool)

(assert (=> d!486292 (= (head!3362 lt!579259) (h!23103 lt!579259))))

(assert (=> b!1616129 d!486292))

(declare-fun d!486294 () Bool)

(declare-fun isEmpty!10723 (Option!3248) Bool)

(assert (=> d!486294 (= (isDefined!2615 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))) (not (isEmpty!10723 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(declare-fun bs!394133 () Bool)

(assert (= bs!394133 d!486294))

(assert (=> bs!394133 m!1936443))

(declare-fun m!1937227 () Bool)

(assert (=> bs!394133 m!1937227))

(assert (=> b!1616151 d!486294))

(declare-fun d!486296 () Bool)

(declare-fun e!1036894 () Bool)

(assert (=> d!486296 e!1036894))

(declare-fun res!721653 () Bool)

(assert (=> d!486296 (=> (not res!721653) (not e!1036894))))

(declare-fun lt!579622 () Option!3248)

(declare-fun maxPrefixZipper!292 (LexerInterface!2748 List!17774 List!17772) Option!3247)

(assert (=> d!486296 (= res!721653 (= (isDefined!2615 lt!579622) (isDefined!2614 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))))

(declare-fun e!1036891 () Option!3248)

(assert (=> d!486296 (= lt!579622 e!1036891)))

(declare-fun c!263176 () Bool)

(assert (=> d!486296 (= c!263176 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!579623 () Unit!28465)

(declare-fun lt!579620 () Unit!28465)

(assert (=> d!486296 (= lt!579623 lt!579620)))

(declare-fun lt!579621 () List!17772)

(declare-fun lt!579624 () List!17772)

(assert (=> d!486296 (isPrefix!1379 lt!579621 lt!579624)))

(assert (=> d!486296 (= lt!579620 (lemmaIsPrefixRefl!946 lt!579621 lt!579624))))

(assert (=> d!486296 (= lt!579624 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!486296 (= lt!579621 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!486296 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486296 (= (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) lt!579622)))

(declare-fun e!1036890 () Bool)

(declare-fun b!1616479 () Bool)

(declare-fun get!5082 (Option!3248) tuple2!17238)

(assert (=> b!1616479 (= e!1036890 (= (list!6924 (_2!10021 (get!5082 lt!579622))) (_2!10020 (get!5079 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun bm!104865 () Bool)

(declare-fun call!104870 () Option!3248)

(declare-fun maxPrefixOneRuleZipperSequence!302 (LexerInterface!2748 Rule!6038 BalanceConc!11716) Option!3248)

(assert (=> bm!104865 (= call!104870 (maxPrefixOneRuleZipperSequence!302 thiss!17113 (h!23105 rules!1846) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1616480 () Bool)

(declare-fun e!1036892 () Bool)

(assert (=> b!1616480 (= e!1036892 e!1036890)))

(declare-fun res!721656 () Bool)

(assert (=> b!1616480 (=> (not res!721656) (not e!1036890))))

(assert (=> b!1616480 (= res!721656 (= (_1!10021 (get!5082 lt!579622)) (_1!10020 (get!5079 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1616481 () Bool)

(declare-fun e!1036889 () Bool)

(assert (=> b!1616481 (= e!1036894 e!1036889)))

(declare-fun res!721655 () Bool)

(assert (=> b!1616481 (=> res!721655 e!1036889)))

(assert (=> b!1616481 (= res!721655 (not (isDefined!2615 lt!579622)))))

(declare-fun e!1036893 () Bool)

(declare-fun b!1616482 () Bool)

(assert (=> b!1616482 (= e!1036893 (= (list!6924 (_2!10021 (get!5082 lt!579622))) (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1616483 () Bool)

(declare-fun res!721657 () Bool)

(assert (=> b!1616483 (=> (not res!721657) (not e!1036894))))

(assert (=> b!1616483 (= res!721657 e!1036892)))

(declare-fun res!721658 () Bool)

(assert (=> b!1616483 (=> res!721658 e!1036892)))

(assert (=> b!1616483 (= res!721658 (not (isDefined!2615 lt!579622)))))

(declare-fun b!1616484 () Bool)

(declare-fun lt!579618 () Option!3248)

(declare-fun lt!579619 () Option!3248)

(assert (=> b!1616484 (= e!1036891 (ite (and ((_ is None!3247) lt!579618) ((_ is None!3247) lt!579619)) None!3247 (ite ((_ is None!3247) lt!579619) lt!579618 (ite ((_ is None!3247) lt!579618) lt!579619 (ite (>= (size!14194 (_1!10021 (v!24236 lt!579618))) (size!14194 (_1!10021 (v!24236 lt!579619)))) lt!579618 lt!579619)))))))

(assert (=> b!1616484 (= lt!579618 call!104870)))

(assert (=> b!1616484 (= lt!579619 (maxPrefixZipperSequence!643 thiss!17113 (t!148289 rules!1846) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1616485 () Bool)

(assert (=> b!1616485 (= e!1036889 e!1036893)))

(declare-fun res!721654 () Bool)

(assert (=> b!1616485 (=> (not res!721654) (not e!1036893))))

(assert (=> b!1616485 (= res!721654 (= (_1!10021 (get!5082 lt!579622)) (_1!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1616486 () Bool)

(assert (=> b!1616486 (= e!1036891 call!104870)))

(assert (= (and d!486296 c!263176) b!1616486))

(assert (= (and d!486296 (not c!263176)) b!1616484))

(assert (= (or b!1616486 b!1616484) bm!104865))

(assert (= (and d!486296 res!721653) b!1616483))

(assert (= (and b!1616483 (not res!721658)) b!1616480))

(assert (= (and b!1616480 res!721656) b!1616479))

(assert (= (and b!1616483 res!721657) b!1616481))

(assert (= (and b!1616481 (not res!721655)) b!1616485))

(assert (= (and b!1616485 res!721654) b!1616482))

(assert (=> b!1616484 m!1936441))

(declare-fun m!1937229 () Bool)

(assert (=> b!1616484 m!1937229))

(declare-fun m!1937231 () Bool)

(assert (=> b!1616483 m!1937231))

(declare-fun m!1937233 () Bool)

(assert (=> b!1616480 m!1937233))

(assert (=> b!1616480 m!1936441))

(declare-fun m!1937235 () Bool)

(assert (=> b!1616480 m!1937235))

(assert (=> b!1616480 m!1937235))

(declare-fun m!1937237 () Bool)

(assert (=> b!1616480 m!1937237))

(assert (=> b!1616480 m!1937237))

(declare-fun m!1937239 () Bool)

(assert (=> b!1616480 m!1937239))

(assert (=> b!1616485 m!1937233))

(assert (=> b!1616485 m!1936441))

(assert (=> b!1616485 m!1937235))

(assert (=> b!1616485 m!1937235))

(declare-fun m!1937241 () Bool)

(assert (=> b!1616485 m!1937241))

(assert (=> b!1616485 m!1937241))

(declare-fun m!1937243 () Bool)

(assert (=> b!1616485 m!1937243))

(assert (=> b!1616479 m!1937237))

(assert (=> b!1616479 m!1937239))

(assert (=> b!1616479 m!1937233))

(declare-fun m!1937245 () Bool)

(assert (=> b!1616479 m!1937245))

(assert (=> b!1616479 m!1937235))

(assert (=> b!1616479 m!1937237))

(assert (=> b!1616479 m!1936441))

(assert (=> b!1616479 m!1937235))

(assert (=> d!486296 m!1937231))

(declare-fun m!1937247 () Bool)

(assert (=> d!486296 m!1937247))

(assert (=> d!486296 m!1937235))

(assert (=> d!486296 m!1937237))

(assert (=> d!486296 m!1936675))

(declare-fun m!1937249 () Bool)

(assert (=> d!486296 m!1937249))

(assert (=> d!486296 m!1937237))

(declare-fun m!1937251 () Bool)

(assert (=> d!486296 m!1937251))

(assert (=> d!486296 m!1936441))

(assert (=> d!486296 m!1937235))

(assert (=> bm!104865 m!1936441))

(declare-fun m!1937253 () Bool)

(assert (=> bm!104865 m!1937253))

(assert (=> b!1616482 m!1937233))

(assert (=> b!1616482 m!1937245))

(assert (=> b!1616482 m!1937235))

(assert (=> b!1616482 m!1937241))

(assert (=> b!1616482 m!1937241))

(assert (=> b!1616482 m!1937243))

(assert (=> b!1616482 m!1936441))

(assert (=> b!1616482 m!1937235))

(assert (=> b!1616481 m!1937231))

(assert (=> b!1616151 d!486296))

(declare-fun d!486298 () Bool)

(declare-fun fromListB!866 (List!17772) BalanceConc!11716)

(assert (=> d!486298 (= (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))) (fromListB!866 (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun bs!394134 () Bool)

(assert (= bs!394134 d!486298))

(declare-fun m!1937255 () Bool)

(assert (=> bs!394134 m!1937255))

(assert (=> b!1616151 d!486298))

(declare-fun d!486300 () Bool)

(declare-fun e!1036897 () Bool)

(assert (=> d!486300 e!1036897))

(declare-fun res!721661 () Bool)

(assert (=> d!486300 (=> (not res!721661) (not e!1036897))))

(declare-fun lt!579627 () BalanceConc!11716)

(assert (=> d!486300 (= res!721661 (= (list!6924 lt!579627) (Cons!17702 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0) Nil!17702)))))

(declare-fun singleton!642 (C!9068) BalanceConc!11716)

(assert (=> d!486300 (= lt!579627 (singleton!642 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))

(assert (=> d!486300 (= (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)) lt!579627)))

(declare-fun b!1616489 () Bool)

(declare-fun isBalanced!1762 (Conc!5886) Bool)

(assert (=> b!1616489 (= e!1036897 (isBalanced!1762 (c!263121 lt!579627)))))

(assert (= (and d!486300 res!721661) b!1616489))

(declare-fun m!1937257 () Bool)

(assert (=> d!486300 m!1937257))

(assert (=> d!486300 m!1936483))

(declare-fun m!1937259 () Bool)

(assert (=> d!486300 m!1937259))

(declare-fun m!1937261 () Bool)

(assert (=> b!1616489 m!1937261))

(assert (=> b!1616130 d!486300))

(declare-fun d!486302 () Bool)

(declare-fun lt!579657 () Bool)

(assert (=> d!486302 (= lt!579657 (prefixMatch!382 lt!579263 (list!6924 (++!4679 lt!579279 lt!579270))))))

(declare-datatypes ((List!17778 0))(
  ( (Nil!17708) (Cons!17708 (h!23109 Regex!4447) (t!148335 List!17778)) )
))
(declare-datatypes ((Context!1706 0))(
  ( (Context!1707 (exprs!1353 List!17778)) )
))
(declare-fun prefixMatchZipperSequence!495 ((InoxSet Context!1706) BalanceConc!11716 Int) Bool)

(declare-fun focus!159 (Regex!4447) (InoxSet Context!1706))

(assert (=> d!486302 (= lt!579657 (prefixMatchZipperSequence!495 (focus!159 lt!579263) (++!4679 lt!579279 lt!579270) 0))))

(declare-fun lt!579651 () Unit!28465)

(declare-fun lt!579648 () Unit!28465)

(assert (=> d!486302 (= lt!579651 lt!579648)))

(declare-fun lt!579655 () List!17772)

(declare-fun lt!579652 () (InoxSet Context!1706))

(declare-fun prefixMatchZipper!138 ((InoxSet Context!1706) List!17772) Bool)

(assert (=> d!486302 (= (prefixMatch!382 lt!579263 lt!579655) (prefixMatchZipper!138 lt!579652 lt!579655))))

(declare-datatypes ((List!17779 0))(
  ( (Nil!17709) (Cons!17709 (h!23110 Context!1706) (t!148336 List!17779)) )
))
(declare-fun lt!579649 () List!17779)

(declare-fun prefixMatchZipperRegexEquiv!138 ((InoxSet Context!1706) List!17779 Regex!4447 List!17772) Unit!28465)

(assert (=> d!486302 (= lt!579648 (prefixMatchZipperRegexEquiv!138 lt!579652 lt!579649 lt!579263 lt!579655))))

(assert (=> d!486302 (= lt!579655 (list!6924 (++!4679 lt!579279 lt!579270)))))

(declare-fun toList!899 ((InoxSet Context!1706)) List!17779)

(assert (=> d!486302 (= lt!579649 (toList!899 (focus!159 lt!579263)))))

(assert (=> d!486302 (= lt!579652 (focus!159 lt!579263))))

(declare-fun lt!579653 () Unit!28465)

(declare-fun lt!579654 () Unit!28465)

(assert (=> d!486302 (= lt!579653 lt!579654)))

(declare-fun lt!579656 () Int)

(declare-fun lt!579650 () (InoxSet Context!1706))

(declare-fun dropList!580 (BalanceConc!11716 Int) List!17772)

(assert (=> d!486302 (= (prefixMatchZipper!138 lt!579650 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656)) (prefixMatchZipperSequence!495 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!138 ((InoxSet Context!1706) BalanceConc!11716 Int) Unit!28465)

(assert (=> d!486302 (= lt!579654 (lemmaprefixMatchZipperSequenceEquivalent!138 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656))))

(assert (=> d!486302 (= lt!579656 0)))

(assert (=> d!486302 (= lt!579650 (focus!159 lt!579263))))

(assert (=> d!486302 (validRegex!1764 lt!579263)))

(assert (=> d!486302 (= (prefixMatchZipperSequence!493 lt!579263 (++!4679 lt!579279 lt!579270)) lt!579657)))

(declare-fun bs!394135 () Bool)

(assert (= bs!394135 d!486302))

(declare-fun m!1937263 () Bool)

(assert (=> bs!394135 m!1937263))

(declare-fun m!1937265 () Bool)

(assert (=> bs!394135 m!1937265))

(declare-fun m!1937267 () Bool)

(assert (=> bs!394135 m!1937267))

(assert (=> bs!394135 m!1936487))

(declare-fun m!1937269 () Bool)

(assert (=> bs!394135 m!1937269))

(assert (=> bs!394135 m!1936487))

(declare-fun m!1937271 () Bool)

(assert (=> bs!394135 m!1937271))

(declare-fun m!1937273 () Bool)

(assert (=> bs!394135 m!1937273))

(declare-fun m!1937275 () Bool)

(assert (=> bs!394135 m!1937275))

(declare-fun m!1937277 () Bool)

(assert (=> bs!394135 m!1937277))

(assert (=> bs!394135 m!1936487))

(assert (=> bs!394135 m!1937265))

(assert (=> bs!394135 m!1937273))

(assert (=> bs!394135 m!1936487))

(declare-fun m!1937279 () Bool)

(assert (=> bs!394135 m!1937279))

(declare-fun m!1937281 () Bool)

(assert (=> bs!394135 m!1937281))

(declare-fun m!1937283 () Bool)

(assert (=> bs!394135 m!1937283))

(declare-fun m!1937285 () Bool)

(assert (=> bs!394135 m!1937285))

(assert (=> bs!394135 m!1936487))

(assert (=> bs!394135 m!1937275))

(assert (=> bs!394135 m!1937273))

(declare-fun m!1937287 () Bool)

(assert (=> bs!394135 m!1937287))

(assert (=> b!1616130 d!486302))

(declare-fun b!1616498 () Bool)

(declare-fun res!721673 () Bool)

(declare-fun e!1036900 () Bool)

(assert (=> b!1616498 (=> (not res!721673) (not e!1036900))))

(declare-fun ++!4682 (Conc!5886 Conc!5886) Conc!5886)

(assert (=> b!1616498 (= res!721673 (isBalanced!1762 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))))

(declare-fun lt!579660 () BalanceConc!11716)

(declare-fun b!1616501 () Bool)

(assert (=> b!1616501 (= e!1036900 (= (list!6924 lt!579660) (++!4680 (list!6924 lt!579279) (list!6924 lt!579270))))))

(declare-fun b!1616499 () Bool)

(declare-fun res!721671 () Bool)

(assert (=> b!1616499 (=> (not res!721671) (not e!1036900))))

(declare-fun height!889 (Conc!5886) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1616499 (= res!721671 (<= (height!889 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) (+ (max!0 (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270))) 1)))))

(declare-fun d!486304 () Bool)

(assert (=> d!486304 e!1036900))

(declare-fun res!721672 () Bool)

(assert (=> d!486304 (=> (not res!721672) (not e!1036900))))

(declare-fun appendAssocInst!421 (Conc!5886 Conc!5886) Bool)

(assert (=> d!486304 (= res!721672 (appendAssocInst!421 (c!263121 lt!579279) (c!263121 lt!579270)))))

(assert (=> d!486304 (= lt!579660 (BalanceConc!11717 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))))

(assert (=> d!486304 (= (++!4679 lt!579279 lt!579270) lt!579660)))

(declare-fun b!1616500 () Bool)

(declare-fun res!721670 () Bool)

(assert (=> b!1616500 (=> (not res!721670) (not e!1036900))))

(assert (=> b!1616500 (= res!721670 (>= (height!889 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) (max!0 (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270)))))))

(assert (= (and d!486304 res!721672) b!1616498))

(assert (= (and b!1616498 res!721673) b!1616499))

(assert (= (and b!1616499 res!721671) b!1616500))

(assert (= (and b!1616500 res!721670) b!1616501))

(declare-fun m!1937289 () Bool)

(assert (=> b!1616498 m!1937289))

(assert (=> b!1616498 m!1937289))

(declare-fun m!1937291 () Bool)

(assert (=> b!1616498 m!1937291))

(assert (=> b!1616500 m!1937289))

(declare-fun m!1937293 () Bool)

(assert (=> b!1616500 m!1937293))

(assert (=> b!1616500 m!1937289))

(declare-fun m!1937295 () Bool)

(assert (=> b!1616500 m!1937295))

(declare-fun m!1937297 () Bool)

(assert (=> b!1616500 m!1937297))

(assert (=> b!1616500 m!1937297))

(assert (=> b!1616500 m!1937295))

(declare-fun m!1937299 () Bool)

(assert (=> b!1616500 m!1937299))

(declare-fun m!1937301 () Bool)

(assert (=> b!1616501 m!1937301))

(assert (=> b!1616501 m!1936475))

(assert (=> b!1616501 m!1936497))

(assert (=> b!1616501 m!1936475))

(assert (=> b!1616501 m!1936497))

(declare-fun m!1937303 () Bool)

(assert (=> b!1616501 m!1937303))

(declare-fun m!1937305 () Bool)

(assert (=> d!486304 m!1937305))

(assert (=> d!486304 m!1937289))

(assert (=> b!1616499 m!1937289))

(assert (=> b!1616499 m!1937293))

(assert (=> b!1616499 m!1937289))

(assert (=> b!1616499 m!1937295))

(assert (=> b!1616499 m!1937297))

(assert (=> b!1616499 m!1937297))

(assert (=> b!1616499 m!1937295))

(assert (=> b!1616499 m!1937299))

(assert (=> b!1616130 d!486304))

(declare-fun d!486306 () Bool)

(declare-fun lt!579663 () C!9068)

(declare-fun apply!4467 (List!17772 Int) C!9068)

(assert (=> d!486306 (= lt!579663 (apply!4467 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) 0))))

(declare-fun apply!4468 (Conc!5886 Int) C!9068)

(assert (=> d!486306 (= lt!579663 (apply!4468 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) 0))))

(declare-fun e!1036903 () Bool)

(assert (=> d!486306 e!1036903))

(declare-fun res!721676 () Bool)

(assert (=> d!486306 (=> (not res!721676) (not e!1036903))))

(assert (=> d!486306 (= res!721676 (<= 0 0))))

(assert (=> d!486306 (= (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0) lt!579663)))

(declare-fun b!1616504 () Bool)

(declare-fun size!14200 (BalanceConc!11716) Int)

(assert (=> b!1616504 (= e!1036903 (< 0 (size!14200 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(assert (= (and d!486306 res!721676) b!1616504))

(assert (=> d!486306 m!1936491))

(assert (=> d!486306 m!1936965))

(assert (=> d!486306 m!1936965))

(declare-fun m!1937307 () Bool)

(assert (=> d!486306 m!1937307))

(declare-fun m!1937309 () Bool)

(assert (=> d!486306 m!1937309))

(assert (=> b!1616504 m!1936491))

(declare-fun m!1937311 () Bool)

(assert (=> b!1616504 m!1937311))

(assert (=> b!1616130 d!486306))

(declare-fun d!486308 () Bool)

(declare-fun lt!579666 () Unit!28465)

(declare-fun lemma!225 (List!17774 LexerInterface!2748 List!17774) Unit!28465)

(assert (=> d!486308 (= lt!579666 (lemma!225 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67101 () Int)

(declare-fun generalisedUnion!233 (List!17778) Regex!4447)

(declare-fun map!3664 (List!17774 Int) List!17778)

(assert (=> d!486308 (= (rulesRegex!509 thiss!17113 rules!1846) (generalisedUnion!233 (map!3664 rules!1846 lambda!67101)))))

(declare-fun bs!394136 () Bool)

(assert (= bs!394136 d!486308))

(declare-fun m!1937313 () Bool)

(assert (=> bs!394136 m!1937313))

(declare-fun m!1937315 () Bool)

(assert (=> bs!394136 m!1937315))

(assert (=> bs!394136 m!1937315))

(declare-fun m!1937317 () Bool)

(assert (=> bs!394136 m!1937317))

(assert (=> b!1616130 d!486308))

(declare-fun d!486310 () Bool)

(declare-fun lt!579669 () BalanceConc!11716)

(assert (=> d!486310 (= (list!6924 lt!579669) (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))

(declare-fun dynLambda!7890 (Int TokenValue!3209) BalanceConc!11716)

(assert (=> d!486310 (= lt!579669 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486310 (= (charsOf!1768 (h!23104 (t!148288 tokens!457))) lt!579669)))

(declare-fun b_lambda!50967 () Bool)

(assert (=> (not b_lambda!50967) (not d!486310)))

(declare-fun t!148302 () Bool)

(declare-fun tb!92827 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148302) tb!92827))

(declare-fun b!1616509 () Bool)

(declare-fun e!1036906 () Bool)

(declare-fun tp!471184 () Bool)

(declare-fun inv!23103 (Conc!5886) Bool)

(assert (=> b!1616509 (= e!1036906 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))) tp!471184))))

(declare-fun result!111900 () Bool)

(declare-fun inv!23104 (BalanceConc!11716) Bool)

(assert (=> tb!92827 (= result!111900 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))) e!1036906))))

(assert (= tb!92827 b!1616509))

(declare-fun m!1937319 () Bool)

(assert (=> b!1616509 m!1937319))

(declare-fun m!1937321 () Bool)

(assert (=> tb!92827 m!1937321))

(assert (=> d!486310 t!148302))

(declare-fun b_and!114625 () Bool)

(assert (= b_and!114615 (and (=> t!148302 result!111900) b_and!114625)))

(declare-fun t!148304 () Bool)

(declare-fun tb!92829 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148304) tb!92829))

(declare-fun result!111904 () Bool)

(assert (= result!111904 result!111900))

(assert (=> d!486310 t!148304))

(declare-fun b_and!114627 () Bool)

(assert (= b_and!114619 (and (=> t!148304 result!111904) b_and!114627)))

(declare-fun m!1937323 () Bool)

(assert (=> d!486310 m!1937323))

(declare-fun m!1937325 () Bool)

(assert (=> d!486310 m!1937325))

(assert (=> b!1616130 d!486310))

(declare-fun d!486312 () Bool)

(declare-fun res!721682 () Bool)

(declare-fun e!1036911 () Bool)

(assert (=> d!486312 (=> res!721682 e!1036911)))

(assert (=> d!486312 (= res!721682 (or (not ((_ is Cons!17703) tokens!457)) (not ((_ is Cons!17703) (t!148288 tokens!457)))))))

(assert (=> d!486312 (= (tokensListTwoByTwoPredicateSeparableList!441 thiss!17113 tokens!457 rules!1846) e!1036911)))

(declare-fun b!1616514 () Bool)

(declare-fun e!1036912 () Bool)

(assert (=> b!1616514 (= e!1036911 e!1036912)))

(declare-fun res!721681 () Bool)

(assert (=> b!1616514 (=> (not res!721681) (not e!1036912))))

(assert (=> b!1616514 (= res!721681 (separableTokensPredicate!690 thiss!17113 (h!23104 tokens!457) (h!23104 (t!148288 tokens!457)) rules!1846))))

(declare-fun lt!579689 () Unit!28465)

(declare-fun Unit!28497 () Unit!28465)

(assert (=> b!1616514 (= lt!579689 Unit!28497)))

(assert (=> b!1616514 (> (size!14200 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) 0)))

(declare-fun lt!579684 () Unit!28465)

(declare-fun Unit!28498 () Unit!28465)

(assert (=> b!1616514 (= lt!579684 Unit!28498)))

(assert (=> b!1616514 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457)))))

(declare-fun lt!579686 () Unit!28465)

(declare-fun Unit!28499 () Unit!28465)

(assert (=> b!1616514 (= lt!579686 Unit!28499)))

(assert (=> b!1616514 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457))))

(declare-fun lt!579687 () Unit!28465)

(declare-fun lt!579688 () Unit!28465)

(assert (=> b!1616514 (= lt!579687 lt!579688)))

(assert (=> b!1616514 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 (LexerInterface!2748 List!17774 List!17773 Token!5804) Unit!28465)

(assert (=> b!1616514 (= lt!579688 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 tokens!457 (h!23104 (t!148288 tokens!457))))))

(declare-fun lt!579685 () Unit!28465)

(declare-fun lt!579690 () Unit!28465)

(assert (=> b!1616514 (= lt!579685 lt!579690)))

(assert (=> b!1616514 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457))))

(assert (=> b!1616514 (= lt!579690 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 tokens!457 (h!23104 tokens!457)))))

(declare-fun b!1616515 () Bool)

(assert (=> b!1616515 (= e!1036912 (tokensListTwoByTwoPredicateSeparableList!441 thiss!17113 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))) rules!1846))))

(assert (= (and d!486312 (not res!721682)) b!1616514))

(assert (= (and b!1616514 res!721681) b!1616515))

(assert (=> b!1616514 m!1936491))

(assert (=> b!1616514 m!1936457))

(declare-fun m!1937327 () Bool)

(assert (=> b!1616514 m!1937327))

(assert (=> b!1616514 m!1936459))

(declare-fun m!1937329 () Bool)

(assert (=> b!1616514 m!1937329))

(assert (=> b!1616514 m!1936491))

(assert (=> b!1616514 m!1937311))

(declare-fun m!1937331 () Bool)

(assert (=> b!1616514 m!1937331))

(declare-fun m!1937333 () Bool)

(assert (=> b!1616515 m!1937333))

(assert (=> b!1616133 d!486312))

(declare-fun d!486314 () Bool)

(declare-fun res!721685 () Bool)

(declare-fun e!1036915 () Bool)

(assert (=> d!486314 (=> (not res!721685) (not e!1036915))))

(declare-fun rulesValid!1114 (LexerInterface!2748 List!17774) Bool)

(assert (=> d!486314 (= res!721685 (rulesValid!1114 thiss!17113 rules!1846))))

(assert (=> d!486314 (= (rulesInvariant!2417 thiss!17113 rules!1846) e!1036915)))

(declare-fun b!1616518 () Bool)

(declare-datatypes ((List!17780 0))(
  ( (Nil!17710) (Cons!17710 (h!23111 String!20377) (t!148337 List!17780)) )
))
(declare-fun noDuplicateTag!1114 (LexerInterface!2748 List!17774 List!17780) Bool)

(assert (=> b!1616518 (= e!1036915 (noDuplicateTag!1114 thiss!17113 rules!1846 Nil!17710))))

(assert (= (and d!486314 res!721685) b!1616518))

(declare-fun m!1937335 () Bool)

(assert (=> d!486314 m!1937335))

(declare-fun m!1937337 () Bool)

(assert (=> b!1616518 m!1937337))

(assert (=> b!1616134 d!486314))

(declare-fun b!1616529 () Bool)

(declare-fun e!1036922 () Bool)

(declare-fun inv!17 (TokenValue!3209) Bool)

(assert (=> b!1616529 (= e!1036922 (inv!17 (value!98564 (h!23104 tokens!457))))))

(declare-fun b!1616530 () Bool)

(declare-fun e!1036924 () Bool)

(declare-fun inv!15 (TokenValue!3209) Bool)

(assert (=> b!1616530 (= e!1036924 (inv!15 (value!98564 (h!23104 tokens!457))))))

(declare-fun b!1616531 () Bool)

(declare-fun e!1036923 () Bool)

(assert (=> b!1616531 (= e!1036923 e!1036922)))

(declare-fun c!263184 () Bool)

(assert (=> b!1616531 (= c!263184 ((_ is IntegerValue!9628) (value!98564 (h!23104 tokens!457))))))

(declare-fun b!1616532 () Bool)

(declare-fun inv!16 (TokenValue!3209) Bool)

(assert (=> b!1616532 (= e!1036923 (inv!16 (value!98564 (h!23104 tokens!457))))))

(declare-fun d!486316 () Bool)

(declare-fun c!263185 () Bool)

(assert (=> d!486316 (= c!263185 ((_ is IntegerValue!9627) (value!98564 (h!23104 tokens!457))))))

(assert (=> d!486316 (= (inv!21 (value!98564 (h!23104 tokens!457))) e!1036923)))

(declare-fun b!1616533 () Bool)

(declare-fun res!721688 () Bool)

(assert (=> b!1616533 (=> res!721688 e!1036924)))

(assert (=> b!1616533 (= res!721688 (not ((_ is IntegerValue!9629) (value!98564 (h!23104 tokens!457)))))))

(assert (=> b!1616533 (= e!1036922 e!1036924)))

(assert (= (and d!486316 c!263185) b!1616532))

(assert (= (and d!486316 (not c!263185)) b!1616531))

(assert (= (and b!1616531 c!263184) b!1616529))

(assert (= (and b!1616531 (not c!263184)) b!1616533))

(assert (= (and b!1616533 (not res!721688)) b!1616530))

(declare-fun m!1937339 () Bool)

(assert (=> b!1616529 m!1937339))

(declare-fun m!1937341 () Bool)

(assert (=> b!1616530 m!1937341))

(declare-fun m!1937343 () Bool)

(assert (=> b!1616532 m!1937343))

(assert (=> b!1616132 d!486316))

(declare-fun d!486318 () Bool)

(assert (=> d!486318 (= (inv!23096 (tag!3395 (rule!4939 (h!23104 tokens!457)))) (= (mod (str.len (value!98563 (tag!3395 (rule!4939 (h!23104 tokens!457))))) 2) 0))))

(assert (=> b!1616125 d!486318))

(declare-fun d!486320 () Bool)

(declare-fun res!721689 () Bool)

(declare-fun e!1036925 () Bool)

(assert (=> d!486320 (=> (not res!721689) (not e!1036925))))

(assert (=> d!486320 (= res!721689 (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))))))

(assert (=> d!486320 (= (inv!23099 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) e!1036925)))

(declare-fun b!1616534 () Bool)

(assert (=> b!1616534 (= e!1036925 (equivClasses!1127 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))))))

(assert (= (and d!486320 res!721689) b!1616534))

(declare-fun m!1937345 () Bool)

(assert (=> d!486320 m!1937345))

(declare-fun m!1937347 () Bool)

(assert (=> b!1616534 m!1937347))

(assert (=> b!1616125 d!486320))

(declare-fun d!486322 () Bool)

(declare-fun lt!579693 () Bool)

(declare-fun isEmpty!10724 (List!17773) Bool)

(assert (=> d!486322 (= lt!579693 (isEmpty!10724 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(declare-fun isEmpty!10725 (Conc!5887) Bool)

(assert (=> d!486322 (= lt!579693 (isEmpty!10725 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(assert (=> d!486322 (= (isEmpty!10715 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)))) lt!579693)))

(declare-fun bs!394137 () Bool)

(assert (= bs!394137 d!486322))

(declare-fun m!1937349 () Bool)

(assert (=> bs!394137 m!1937349))

(assert (=> bs!394137 m!1937349))

(declare-fun m!1937351 () Bool)

(assert (=> bs!394137 m!1937351))

(declare-fun m!1937353 () Bool)

(assert (=> bs!394137 m!1937353))

(assert (=> b!1616147 d!486322))

(declare-fun b!1616561 () Bool)

(declare-fun e!1036944 () Bool)

(declare-fun lt!579697 () tuple2!17234)

(assert (=> b!1616561 (= e!1036944 (not (isEmpty!10715 (_1!10019 lt!579697))))))

(declare-fun b!1616562 () Bool)

(declare-fun e!1036945 () Bool)

(assert (=> b!1616562 (= e!1036945 e!1036944)))

(declare-fun res!721698 () Bool)

(assert (=> b!1616562 (= res!721698 (< (size!14200 (_2!10019 lt!579697)) (size!14200 (seqFromList!1988 lt!579274))))))

(assert (=> b!1616562 (=> (not res!721698) (not e!1036944))))

(declare-fun e!1036943 () Bool)

(declare-fun b!1616563 () Bool)

(declare-datatypes ((tuple2!17242 0))(
  ( (tuple2!17243 (_1!10023 List!17773) (_2!10023 List!17772)) )
))
(declare-fun lexList!815 (LexerInterface!2748 List!17774 List!17772) tuple2!17242)

(assert (=> b!1616563 (= e!1036943 (= (list!6924 (_2!10019 lt!579697)) (_2!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 lt!579274))))))))

(declare-fun b!1616564 () Bool)

(declare-fun res!721699 () Bool)

(assert (=> b!1616564 (=> (not res!721699) (not e!1036943))))

(assert (=> b!1616564 (= res!721699 (= (list!6923 (_1!10019 lt!579697)) (_1!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 lt!579274))))))))

(declare-fun b!1616560 () Bool)

(assert (=> b!1616560 (= e!1036945 (= (_2!10019 lt!579697) (seqFromList!1988 lt!579274)))))

(declare-fun d!486324 () Bool)

(assert (=> d!486324 e!1036943))

(declare-fun res!721700 () Bool)

(assert (=> d!486324 (=> (not res!721700) (not e!1036943))))

(assert (=> d!486324 (= res!721700 e!1036945)))

(declare-fun c!263188 () Bool)

(assert (=> d!486324 (= c!263188 (> (size!14198 (_1!10019 lt!579697)) 0))))

(declare-fun lexTailRecV2!538 (LexerInterface!2748 List!17774 BalanceConc!11716 BalanceConc!11716 BalanceConc!11716 BalanceConc!11718) tuple2!17234)

(assert (=> d!486324 (= lt!579697 (lexTailRecV2!538 thiss!17113 rules!1846 (seqFromList!1988 lt!579274) (BalanceConc!11717 Empty!5886) (seqFromList!1988 lt!579274) (BalanceConc!11719 Empty!5887)))))

(assert (=> d!486324 (= (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)) lt!579697)))

(assert (= (and d!486324 c!263188) b!1616562))

(assert (= (and d!486324 (not c!263188)) b!1616560))

(assert (= (and b!1616562 res!721698) b!1616561))

(assert (= (and d!486324 res!721700) b!1616564))

(assert (= (and b!1616564 res!721699) b!1616563))

(declare-fun m!1937361 () Bool)

(assert (=> b!1616564 m!1937361))

(assert (=> b!1616564 m!1936527))

(declare-fun m!1937363 () Bool)

(assert (=> b!1616564 m!1937363))

(assert (=> b!1616564 m!1937363))

(declare-fun m!1937365 () Bool)

(assert (=> b!1616564 m!1937365))

(declare-fun m!1937367 () Bool)

(assert (=> b!1616561 m!1937367))

(declare-fun m!1937369 () Bool)

(assert (=> b!1616563 m!1937369))

(assert (=> b!1616563 m!1936527))

(assert (=> b!1616563 m!1937363))

(assert (=> b!1616563 m!1937363))

(assert (=> b!1616563 m!1937365))

(declare-fun m!1937371 () Bool)

(assert (=> b!1616562 m!1937371))

(assert (=> b!1616562 m!1936527))

(declare-fun m!1937373 () Bool)

(assert (=> b!1616562 m!1937373))

(declare-fun m!1937375 () Bool)

(assert (=> d!486324 m!1937375))

(assert (=> d!486324 m!1936527))

(assert (=> d!486324 m!1936527))

(declare-fun m!1937377 () Bool)

(assert (=> d!486324 m!1937377))

(assert (=> b!1616147 d!486324))

(declare-fun d!486332 () Bool)

(assert (=> d!486332 (= (seqFromList!1988 lt!579274) (fromListB!866 lt!579274))))

(declare-fun bs!394139 () Bool)

(assert (= bs!394139 d!486332))

(declare-fun m!1937379 () Bool)

(assert (=> bs!394139 m!1937379))

(assert (=> b!1616147 d!486332))

(declare-fun d!486334 () Bool)

(declare-fun e!1036948 () Bool)

(assert (=> d!486334 e!1036948))

(declare-fun res!721703 () Bool)

(assert (=> d!486334 (=> (not res!721703) (not e!1036948))))

(declare-fun prepend!633 (Conc!5887 Token!5804) Conc!5887)

(assert (=> d!486334 (= res!721703 (isBalanced!1761 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!579700 () BalanceConc!11718)

(assert (=> d!486334 (= lt!579700 (BalanceConc!11719 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486334 (= (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))) lt!579700)))

(declare-fun b!1616567 () Bool)

(assert (=> b!1616567 (= e!1036948 (= (list!6923 lt!579700) (Cons!17703 (h!23104 (t!148288 tokens!457)) (list!6923 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))))))))

(assert (= (and d!486334 res!721703) b!1616567))

(declare-fun m!1937381 () Bool)

(assert (=> d!486334 m!1937381))

(assert (=> d!486334 m!1937381))

(declare-fun m!1937383 () Bool)

(assert (=> d!486334 m!1937383))

(declare-fun m!1937385 () Bool)

(assert (=> b!1616567 m!1937385))

(assert (=> b!1616567 m!1936555))

(declare-fun m!1937387 () Bool)

(assert (=> b!1616567 m!1937387))

(assert (=> b!1616126 d!486334))

(declare-fun d!486336 () Bool)

(assert (=> d!486336 (= (list!6923 (_1!10019 lt!579277)) (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!579703 () Unit!28465)

(declare-fun choose!9722 (Token!5804 List!17773 BalanceConc!11718) Unit!28465)

(assert (=> d!486336 (= lt!579703 (choose!9722 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)) (_1!10019 lt!579277)))))

(declare-fun $colon$colon!313 (List!17773 Token!5804) List!17773)

(assert (=> d!486336 (= (list!6923 (_1!10019 lt!579277)) (list!6923 (seqFromList!1987 ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!486336 (= (seqFromListBHdTlConstructive!196 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)) (_1!10019 lt!579277)) lt!579703)))

(declare-fun bs!394140 () Bool)

(assert (= bs!394140 d!486336))

(assert (=> bs!394140 m!1936561))

(assert (=> bs!394140 m!1936563))

(assert (=> bs!394140 m!1936555))

(assert (=> bs!394140 m!1936555))

(assert (=> bs!394140 m!1936561))

(declare-fun m!1937389 () Bool)

(assert (=> bs!394140 m!1937389))

(declare-fun m!1937391 () Bool)

(assert (=> bs!394140 m!1937391))

(declare-fun m!1937393 () Bool)

(assert (=> bs!394140 m!1937393))

(declare-fun m!1937395 () Bool)

(assert (=> bs!394140 m!1937395))

(assert (=> bs!394140 m!1937395))

(assert (=> bs!394140 m!1937391))

(assert (=> bs!394140 m!1936499))

(assert (=> b!1616126 d!486336))

(declare-fun d!486338 () Bool)

(assert (=> d!486338 (= (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))) (list!6928 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))))))))

(declare-fun bs!394141 () Bool)

(assert (= bs!394141 d!486338))

(declare-fun m!1937397 () Bool)

(assert (=> bs!394141 m!1937397))

(assert (=> b!1616126 d!486338))

(declare-fun d!486340 () Bool)

(assert (=> d!486340 (= (list!6923 lt!579280) (list!6928 (c!263123 lt!579280)))))

(declare-fun bs!394142 () Bool)

(assert (= bs!394142 d!486340))

(declare-fun m!1937399 () Bool)

(assert (=> bs!394142 m!1937399))

(assert (=> b!1616126 d!486340))

(declare-fun d!486342 () Bool)

(declare-fun fromListB!867 (List!17773) BalanceConc!11718)

(assert (=> d!486342 (= (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (fromListB!867 (t!148288 (t!148288 tokens!457))))))

(declare-fun bs!394143 () Bool)

(assert (= bs!394143 d!486342))

(declare-fun m!1937401 () Bool)

(assert (=> bs!394143 m!1937401))

(assert (=> b!1616126 d!486342))

(declare-fun d!486344 () Bool)

(assert (=> d!486344 (= (isDefined!2614 lt!579284) (not (isEmpty!10719 lt!579284)))))

(declare-fun bs!394144 () Bool)

(assert (= bs!394144 d!486344))

(declare-fun m!1937403 () Bool)

(assert (=> bs!394144 m!1937403))

(assert (=> b!1616145 d!486344))

(declare-fun d!486346 () Bool)

(assert (=> d!486346 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259)))))

(declare-fun lt!579800 () Unit!28465)

(declare-fun e!1036972 () Unit!28465)

(assert (=> d!486346 (= lt!579800 e!1036972)))

(declare-fun c!263198 () Bool)

(assert (=> d!486346 (= c!263198 (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259))))))

(declare-fun lt!579799 () Unit!28465)

(declare-fun lt!579808 () Unit!28465)

(assert (=> d!486346 (= lt!579799 lt!579808)))

(declare-fun e!1036971 () Bool)

(assert (=> d!486346 e!1036971))

(declare-fun res!721726 () Bool)

(assert (=> d!486346 (=> (not res!721726) (not e!1036971))))

(declare-fun lt!579806 () Token!5804)

(declare-datatypes ((Option!3250 0))(
  ( (None!3249) (Some!3249 (v!24244 Rule!6038)) )
))
(declare-fun isDefined!2617 (Option!3250) Bool)

(declare-fun getRuleFromTag!270 (LexerInterface!2748 List!17774 String!20377) Option!3250)

(assert (=> d!486346 (= res!721726 (isDefined!2617 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!270 (LexerInterface!2748 List!17774 List!17772 Token!5804) Unit!28465)

(assert (=> d!486346 (= lt!579808 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!270 thiss!17113 rules!1846 lt!579274 lt!579806))))

(declare-fun lt!579814 () Unit!28465)

(declare-fun lt!579805 () Unit!28465)

(assert (=> d!486346 (= lt!579814 lt!579805)))

(declare-fun lt!579798 () List!17772)

(assert (=> d!486346 (isPrefix!1379 lt!579798 (++!4680 lt!579274 lt!579259))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!156 (List!17772 List!17772 List!17772) Unit!28465)

(assert (=> d!486346 (= lt!579805 (lemmaPrefixStaysPrefixWhenAddingToSuffix!156 lt!579798 lt!579274 lt!579259))))

(assert (=> d!486346 (= lt!579798 (list!6924 (charsOf!1768 lt!579806)))))

(declare-fun lt!579810 () Unit!28465)

(declare-fun lt!579812 () Unit!28465)

(assert (=> d!486346 (= lt!579810 lt!579812)))

(declare-fun lt!579803 () List!17772)

(declare-fun lt!579802 () List!17772)

(assert (=> d!486346 (isPrefix!1379 lt!579803 (++!4680 lt!579803 lt!579802))))

(assert (=> d!486346 (= lt!579812 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579803 lt!579802))))

(assert (=> d!486346 (= lt!579802 (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 lt!579274))))))

(assert (=> d!486346 (= lt!579803 (list!6924 (charsOf!1768 lt!579806)))))

(assert (=> d!486346 (= lt!579806 (head!3366 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(assert (=> d!486346 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486346 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 lt!579274 lt!579259) lt!579800)))

(declare-fun b!1616609 () Bool)

(declare-fun Unit!28503 () Unit!28465)

(assert (=> b!1616609 (= e!1036972 Unit!28503)))

(declare-fun b!1616606 () Bool)

(declare-fun res!721727 () Bool)

(assert (=> b!1616606 (=> (not res!721727) (not e!1036971))))

(declare-fun get!5083 (Option!3250) Rule!6038)

(assert (=> b!1616606 (= res!721727 (matchR!1946 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))) (list!6924 (charsOf!1768 lt!579806))))))

(declare-fun b!1616607 () Bool)

(assert (=> b!1616607 (= e!1036971 (= (rule!4939 lt!579806) (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))

(declare-fun b!1616608 () Bool)

(declare-fun Unit!28504 () Unit!28465)

(assert (=> b!1616608 (= e!1036972 Unit!28504)))

(declare-fun lt!579801 () List!17772)

(assert (=> b!1616608 (= lt!579801 (++!4680 lt!579274 lt!579259))))

(declare-fun lt!579804 () Unit!28465)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!164 (LexerInterface!2748 Rule!6038 List!17774 List!17772) Unit!28465)

(assert (=> b!1616608 (= lt!579804 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!164 thiss!17113 (rule!4939 lt!579806) rules!1846 lt!579801))))

(assert (=> b!1616608 (isEmpty!10719 (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!579806) lt!579801))))

(declare-fun lt!579807 () Unit!28465)

(assert (=> b!1616608 (= lt!579807 lt!579804)))

(declare-fun lt!579813 () List!17772)

(assert (=> b!1616608 (= lt!579813 (list!6924 (charsOf!1768 lt!579806)))))

(declare-fun lt!579811 () Unit!28465)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!160 (LexerInterface!2748 Rule!6038 List!17772 List!17772) Unit!28465)

(assert (=> b!1616608 (= lt!579811 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!160 thiss!17113 (rule!4939 lt!579806) lt!579813 (++!4680 lt!579274 lt!579259)))))

(assert (=> b!1616608 (not (matchR!1946 (regex!3119 (rule!4939 lt!579806)) lt!579813))))

(declare-fun lt!579809 () Unit!28465)

(assert (=> b!1616608 (= lt!579809 lt!579811)))

(assert (=> b!1616608 false))

(assert (= (and d!486346 res!721726) b!1616606))

(assert (= (and b!1616606 res!721727) b!1616607))

(assert (= (and d!486346 c!263198) b!1616608))

(assert (= (and d!486346 (not c!263198)) b!1616609))

(declare-fun m!1937481 () Bool)

(assert (=> d!486346 m!1937481))

(declare-fun m!1937483 () Bool)

(assert (=> d!486346 m!1937483))

(assert (=> d!486346 m!1936539))

(declare-fun m!1937485 () Bool)

(assert (=> d!486346 m!1937485))

(declare-fun m!1937487 () Bool)

(assert (=> d!486346 m!1937487))

(declare-fun m!1937489 () Bool)

(assert (=> d!486346 m!1937489))

(declare-fun m!1937491 () Bool)

(assert (=> d!486346 m!1937491))

(declare-fun m!1937493 () Bool)

(assert (=> d!486346 m!1937493))

(assert (=> d!486346 m!1936527))

(assert (=> d!486346 m!1937349))

(assert (=> d!486346 m!1936461))

(declare-fun m!1937495 () Bool)

(assert (=> d!486346 m!1937495))

(declare-fun m!1937497 () Bool)

(assert (=> d!486346 m!1937497))

(declare-fun m!1937499 () Bool)

(assert (=> d!486346 m!1937499))

(assert (=> d!486346 m!1936527))

(assert (=> d!486346 m!1936529))

(assert (=> d!486346 m!1936533))

(assert (=> d!486346 m!1936461))

(assert (=> d!486346 m!1937487))

(assert (=> d!486346 m!1937349))

(declare-fun m!1937501 () Bool)

(assert (=> d!486346 m!1937501))

(declare-fun m!1937503 () Bool)

(assert (=> d!486346 m!1937503))

(assert (=> d!486346 m!1937491))

(assert (=> d!486346 m!1937503))

(declare-fun m!1937505 () Bool)

(assert (=> d!486346 m!1937505))

(assert (=> d!486346 m!1937487))

(declare-fun m!1937507 () Bool)

(assert (=> d!486346 m!1937507))

(assert (=> d!486346 m!1936461))

(assert (=> d!486346 m!1937499))

(declare-fun m!1937509 () Bool)

(assert (=> d!486346 m!1937509))

(assert (=> d!486346 m!1936539))

(assert (=> b!1616606 m!1937509))

(declare-fun m!1937511 () Bool)

(assert (=> b!1616606 m!1937511))

(assert (=> b!1616606 m!1937503))

(assert (=> b!1616606 m!1937499))

(assert (=> b!1616606 m!1937499))

(assert (=> b!1616606 m!1937509))

(assert (=> b!1616606 m!1937503))

(declare-fun m!1937513 () Bool)

(assert (=> b!1616606 m!1937513))

(assert (=> b!1616607 m!1937503))

(assert (=> b!1616607 m!1937503))

(assert (=> b!1616607 m!1937513))

(declare-fun m!1937515 () Bool)

(assert (=> b!1616608 m!1937515))

(declare-fun m!1937517 () Bool)

(assert (=> b!1616608 m!1937517))

(assert (=> b!1616608 m!1936461))

(declare-fun m!1937519 () Bool)

(assert (=> b!1616608 m!1937519))

(assert (=> b!1616608 m!1937517))

(declare-fun m!1937521 () Bool)

(assert (=> b!1616608 m!1937521))

(assert (=> b!1616608 m!1936461))

(assert (=> b!1616608 m!1937499))

(declare-fun m!1937523 () Bool)

(assert (=> b!1616608 m!1937523))

(assert (=> b!1616608 m!1937499))

(assert (=> b!1616608 m!1937509))

(assert (=> b!1616145 d!486346))

(declare-fun d!486358 () Bool)

(declare-fun lt!579815 () BalanceConc!11716)

(assert (=> d!486358 (= (list!6924 lt!579815) (printList!863 thiss!17113 (list!6923 (seqFromList!1987 tokens!457))))))

(assert (=> d!486358 (= lt!579815 (printTailRec!801 thiss!17113 (seqFromList!1987 tokens!457) 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486358 (= (print!1279 thiss!17113 (seqFromList!1987 tokens!457)) lt!579815)))

(declare-fun bs!394147 () Bool)

(assert (= bs!394147 d!486358))

(declare-fun m!1937525 () Bool)

(assert (=> bs!394147 m!1937525))

(assert (=> bs!394147 m!1936469))

(declare-fun m!1937527 () Bool)

(assert (=> bs!394147 m!1937527))

(assert (=> bs!394147 m!1937527))

(declare-fun m!1937529 () Bool)

(assert (=> bs!394147 m!1937529))

(assert (=> bs!394147 m!1936469))

(declare-fun m!1937531 () Bool)

(assert (=> bs!394147 m!1937531))

(assert (=> b!1616146 d!486358))

(declare-fun d!486360 () Bool)

(declare-fun lt!579816 () BalanceConc!11716)

(assert (=> d!486360 (= (list!6924 lt!579816) (printList!863 thiss!17113 (list!6923 lt!579280)))))

(assert (=> d!486360 (= lt!579816 (printTailRec!801 thiss!17113 lt!579280 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486360 (= (print!1279 thiss!17113 lt!579280) lt!579816)))

(declare-fun bs!394148 () Bool)

(assert (= bs!394148 d!486360))

(declare-fun m!1937533 () Bool)

(assert (=> bs!394148 m!1937533))

(assert (=> bs!394148 m!1936559))

(assert (=> bs!394148 m!1936559))

(declare-fun m!1937535 () Bool)

(assert (=> bs!394148 m!1937535))

(declare-fun m!1937537 () Bool)

(assert (=> bs!394148 m!1937537))

(assert (=> b!1616146 d!486360))

(declare-fun d!486362 () Bool)

(assert (=> d!486362 (= (list!6924 lt!579260) (list!6927 (c!263121 lt!579260)))))

(declare-fun bs!394149 () Bool)

(assert (= bs!394149 d!486362))

(declare-fun m!1937539 () Bool)

(assert (=> bs!394149 m!1937539))

(assert (=> b!1616146 d!486362))

(declare-fun d!486364 () Bool)

(assert (=> d!486364 (= (list!6924 lt!579279) (list!6927 (c!263121 lt!579279)))))

(declare-fun bs!394150 () Bool)

(assert (= bs!394150 d!486364))

(declare-fun m!1937541 () Bool)

(assert (=> bs!394150 m!1937541))

(assert (=> b!1616146 d!486364))

(declare-fun d!486366 () Bool)

(assert (=> d!486366 (= (list!6924 lt!579283) (list!6927 (c!263121 lt!579283)))))

(declare-fun bs!394151 () Bool)

(assert (= bs!394151 d!486366))

(declare-fun m!1937543 () Bool)

(assert (=> bs!394151 m!1937543))

(assert (=> b!1616146 d!486366))

(declare-fun d!486368 () Bool)

(assert (=> d!486368 (= (seqFromList!1987 tokens!457) (fromListB!867 tokens!457))))

(declare-fun bs!394152 () Bool)

(assert (= bs!394152 d!486368))

(declare-fun m!1937545 () Bool)

(assert (=> bs!394152 m!1937545))

(assert (=> b!1616146 d!486368))

(declare-fun d!486370 () Bool)

(declare-fun lt!579817 () BalanceConc!11716)

(assert (=> d!486370 (= (list!6924 lt!579817) (originalCharacters!3933 (h!23104 tokens!457)))))

(assert (=> d!486370 (= lt!579817 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))

(assert (=> d!486370 (= (charsOf!1768 (h!23104 tokens!457)) lt!579817)))

(declare-fun b_lambda!50969 () Bool)

(assert (=> (not b_lambda!50969) (not d!486370)))

(declare-fun t!148307 () Bool)

(declare-fun tb!92831 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148307) tb!92831))

(declare-fun b!1616610 () Bool)

(declare-fun e!1036973 () Bool)

(declare-fun tp!471185 () Bool)

(assert (=> b!1616610 (= e!1036973 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))) tp!471185))))

(declare-fun result!111906 () Bool)

(assert (=> tb!92831 (= result!111906 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))) e!1036973))))

(assert (= tb!92831 b!1616610))

(declare-fun m!1937547 () Bool)

(assert (=> b!1616610 m!1937547))

(declare-fun m!1937549 () Bool)

(assert (=> tb!92831 m!1937549))

(assert (=> d!486370 t!148307))

(declare-fun b_and!114629 () Bool)

(assert (= b_and!114625 (and (=> t!148307 result!111906) b_and!114629)))

(declare-fun t!148309 () Bool)

(declare-fun tb!92833 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148309) tb!92833))

(declare-fun result!111908 () Bool)

(assert (= result!111908 result!111906))

(assert (=> d!486370 t!148309))

(declare-fun b_and!114631 () Bool)

(assert (= b_and!114627 (and (=> t!148309 result!111908) b_and!114631)))

(declare-fun m!1937551 () Bool)

(assert (=> d!486370 m!1937551))

(declare-fun m!1937553 () Bool)

(assert (=> d!486370 m!1937553))

(assert (=> b!1616146 d!486370))

(declare-fun d!486372 () Bool)

(assert (=> d!486372 (= (seqFromList!1987 (t!148288 tokens!457)) (fromListB!867 (t!148288 tokens!457)))))

(declare-fun bs!394153 () Bool)

(assert (= bs!394153 d!486372))

(declare-fun m!1937555 () Bool)

(assert (=> bs!394153 m!1937555))

(assert (=> b!1616146 d!486372))

(declare-fun d!486374 () Bool)

(declare-fun e!1036975 () Bool)

(assert (=> d!486374 e!1036975))

(declare-fun res!721728 () Bool)

(assert (=> d!486374 (=> (not res!721728) (not e!1036975))))

(declare-fun lt!579818 () List!17772)

(assert (=> d!486374 (= res!721728 (= (content!2450 lt!579818) ((_ map or) (content!2450 lt!579274) (content!2450 lt!579259))))))

(declare-fun e!1036974 () List!17772)

(assert (=> d!486374 (= lt!579818 e!1036974)))

(declare-fun c!263202 () Bool)

(assert (=> d!486374 (= c!263202 ((_ is Nil!17702) lt!579274))))

(assert (=> d!486374 (= (++!4680 lt!579274 lt!579259) lt!579818)))

(declare-fun b!1616611 () Bool)

(assert (=> b!1616611 (= e!1036974 lt!579259)))

(declare-fun b!1616614 () Bool)

(assert (=> b!1616614 (= e!1036975 (or (not (= lt!579259 Nil!17702)) (= lt!579818 lt!579274)))))

(declare-fun b!1616612 () Bool)

(assert (=> b!1616612 (= e!1036974 (Cons!17702 (h!23103 lt!579274) (++!4680 (t!148287 lt!579274) lt!579259)))))

(declare-fun b!1616613 () Bool)

(declare-fun res!721729 () Bool)

(assert (=> b!1616613 (=> (not res!721729) (not e!1036975))))

(assert (=> b!1616613 (= res!721729 (= (size!14197 lt!579818) (+ (size!14197 lt!579274) (size!14197 lt!579259))))))

(assert (= (and d!486374 c!263202) b!1616611))

(assert (= (and d!486374 (not c!263202)) b!1616612))

(assert (= (and d!486374 res!721728) b!1616613))

(assert (= (and b!1616613 res!721729) b!1616614))

(declare-fun m!1937557 () Bool)

(assert (=> d!486374 m!1937557))

(assert (=> d!486374 m!1936775))

(declare-fun m!1937559 () Bool)

(assert (=> d!486374 m!1937559))

(declare-fun m!1937561 () Bool)

(assert (=> b!1616612 m!1937561))

(declare-fun m!1937563 () Bool)

(assert (=> b!1616613 m!1937563))

(assert (=> b!1616613 m!1936733))

(declare-fun m!1937565 () Bool)

(assert (=> b!1616613 m!1937565))

(assert (=> b!1616146 d!486374))

(declare-fun b!1616616 () Bool)

(declare-fun e!1036977 () Bool)

(declare-fun lt!579819 () tuple2!17234)

(assert (=> b!1616616 (= e!1036977 (not (isEmpty!10715 (_1!10019 lt!579819))))))

(declare-fun b!1616617 () Bool)

(declare-fun e!1036978 () Bool)

(assert (=> b!1616617 (= e!1036978 e!1036977)))

(declare-fun res!721730 () Bool)

(assert (=> b!1616617 (= res!721730 (< (size!14200 (_2!10019 lt!579819)) (size!14200 lt!579260)))))

(assert (=> b!1616617 (=> (not res!721730) (not e!1036977))))

(declare-fun e!1036976 () Bool)

(declare-fun b!1616618 () Bool)

(assert (=> b!1616618 (= e!1036976 (= (list!6924 (_2!10019 lt!579819)) (_2!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 lt!579260)))))))

(declare-fun b!1616619 () Bool)

(declare-fun res!721731 () Bool)

(assert (=> b!1616619 (=> (not res!721731) (not e!1036976))))

(assert (=> b!1616619 (= res!721731 (= (list!6923 (_1!10019 lt!579819)) (_1!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 lt!579260)))))))

(declare-fun b!1616615 () Bool)

(assert (=> b!1616615 (= e!1036978 (= (_2!10019 lt!579819) lt!579260))))

(declare-fun d!486376 () Bool)

(assert (=> d!486376 e!1036976))

(declare-fun res!721732 () Bool)

(assert (=> d!486376 (=> (not res!721732) (not e!1036976))))

(assert (=> d!486376 (= res!721732 e!1036978)))

(declare-fun c!263203 () Bool)

(assert (=> d!486376 (= c!263203 (> (size!14198 (_1!10019 lt!579819)) 0))))

(assert (=> d!486376 (= lt!579819 (lexTailRecV2!538 thiss!17113 rules!1846 lt!579260 (BalanceConc!11717 Empty!5886) lt!579260 (BalanceConc!11719 Empty!5887)))))

(assert (=> d!486376 (= (lex!1232 thiss!17113 rules!1846 lt!579260) lt!579819)))

(assert (= (and d!486376 c!263203) b!1616617))

(assert (= (and d!486376 (not c!263203)) b!1616615))

(assert (= (and b!1616617 res!721730) b!1616616))

(assert (= (and d!486376 res!721732) b!1616619))

(assert (= (and b!1616619 res!721731) b!1616618))

(declare-fun m!1937567 () Bool)

(assert (=> b!1616619 m!1937567))

(assert (=> b!1616619 m!1936479))

(assert (=> b!1616619 m!1936479))

(declare-fun m!1937569 () Bool)

(assert (=> b!1616619 m!1937569))

(declare-fun m!1937571 () Bool)

(assert (=> b!1616616 m!1937571))

(declare-fun m!1937573 () Bool)

(assert (=> b!1616618 m!1937573))

(assert (=> b!1616618 m!1936479))

(assert (=> b!1616618 m!1936479))

(assert (=> b!1616618 m!1937569))

(declare-fun m!1937575 () Bool)

(assert (=> b!1616617 m!1937575))

(declare-fun m!1937577 () Bool)

(assert (=> b!1616617 m!1937577))

(declare-fun m!1937579 () Bool)

(assert (=> d!486376 m!1937579))

(declare-fun m!1937581 () Bool)

(assert (=> d!486376 m!1937581))

(assert (=> b!1616146 d!486376))

(declare-fun b!1616748 () Bool)

(declare-fun e!1037066 () Bool)

(assert (=> b!1616748 (= e!1037066 true)))

(declare-fun b!1616747 () Bool)

(declare-fun e!1037065 () Bool)

(assert (=> b!1616747 (= e!1037065 e!1037066)))

(declare-fun b!1616746 () Bool)

(declare-fun e!1037064 () Bool)

(assert (=> b!1616746 (= e!1037064 e!1037065)))

(declare-fun d!486378 () Bool)

(assert (=> d!486378 e!1037064))

(assert (= b!1616747 b!1616748))

(assert (= b!1616746 b!1616747))

(assert (= (and d!486378 ((_ is Cons!17704) rules!1846)) b!1616746))

(declare-fun order!10487 () Int)

(declare-fun order!10489 () Int)

(declare-fun lambda!67110 () Int)

(declare-fun dynLambda!7891 (Int Int) Int)

(declare-fun dynLambda!7892 (Int Int) Int)

(assert (=> b!1616748 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7892 order!10489 lambda!67110))))

(declare-fun order!10491 () Int)

(declare-fun dynLambda!7893 (Int Int) Int)

(assert (=> b!1616748 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7892 order!10489 lambda!67110))))

(assert (=> d!486378 true))

(declare-fun lt!579896 () Bool)

(declare-fun forall!4062 (List!17773 Int) Bool)

(assert (=> d!486378 (= lt!579896 (forall!4062 tokens!457 lambda!67110))))

(declare-fun e!1037056 () Bool)

(assert (=> d!486378 (= lt!579896 e!1037056)))

(declare-fun res!721773 () Bool)

(assert (=> d!486378 (=> res!721773 e!1037056)))

(assert (=> d!486378 (= res!721773 (not ((_ is Cons!17703) tokens!457)))))

(assert (=> d!486378 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486378 (= (rulesProduceEachTokenIndividuallyList!950 thiss!17113 rules!1846 tokens!457) lt!579896)))

(declare-fun b!1616736 () Bool)

(declare-fun e!1037057 () Bool)

(assert (=> b!1616736 (= e!1037056 e!1037057)))

(declare-fun res!721772 () Bool)

(assert (=> b!1616736 (=> (not res!721772) (not e!1037057))))

(assert (=> b!1616736 (= res!721772 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457)))))

(declare-fun b!1616737 () Bool)

(assert (=> b!1616737 (= e!1037057 (rulesProduceEachTokenIndividuallyList!950 thiss!17113 rules!1846 (t!148288 tokens!457)))))

(assert (= (and d!486378 (not res!721773)) b!1616736))

(assert (= (and b!1616736 res!721772) b!1616737))

(declare-fun m!1937761 () Bool)

(assert (=> d!486378 m!1937761))

(assert (=> d!486378 m!1936533))

(assert (=> b!1616736 m!1936459))

(declare-fun m!1937763 () Bool)

(assert (=> b!1616737 m!1937763))

(assert (=> b!1616149 d!486378))

(declare-fun d!486428 () Bool)

(assert (=> d!486428 (= (isEmpty!10714 rules!1846) ((_ is Nil!17704) rules!1846))))

(assert (=> b!1616128 d!486428))

(declare-fun d!486430 () Bool)

(declare-fun res!721778 () Bool)

(declare-fun e!1037069 () Bool)

(assert (=> d!486430 (=> (not res!721778) (not e!1037069))))

(assert (=> d!486430 (= res!721778 (not (isEmpty!10713 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!486430 (= (inv!23100 (h!23104 tokens!457)) e!1037069)))

(declare-fun b!1616755 () Bool)

(declare-fun res!721779 () Bool)

(assert (=> b!1616755 (=> (not res!721779) (not e!1037069))))

(assert (=> b!1616755 (= res!721779 (= (originalCharacters!3933 (h!23104 tokens!457)) (list!6924 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(declare-fun b!1616756 () Bool)

(assert (=> b!1616756 (= e!1037069 (= (size!14194 (h!23104 tokens!457)) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (= (and d!486430 res!721778) b!1616755))

(assert (= (and b!1616755 res!721779) b!1616756))

(declare-fun b_lambda!50981 () Bool)

(assert (=> (not b_lambda!50981) (not b!1616755)))

(assert (=> b!1616755 t!148307))

(declare-fun b_and!114649 () Bool)

(assert (= b_and!114629 (and (=> t!148307 result!111906) b_and!114649)))

(assert (=> b!1616755 t!148309))

(declare-fun b_and!114651 () Bool)

(assert (= b_and!114631 (and (=> t!148309 result!111908) b_and!114651)))

(declare-fun m!1937765 () Bool)

(assert (=> d!486430 m!1937765))

(assert (=> b!1616755 m!1937553))

(assert (=> b!1616755 m!1937553))

(declare-fun m!1937767 () Bool)

(assert (=> b!1616755 m!1937767))

(assert (=> b!1616756 m!1936701))

(assert (=> b!1616150 d!486430))

(declare-fun d!486432 () Bool)

(assert (=> d!486432 (= (isEmpty!10713 (_2!10020 lt!579273)) ((_ is Nil!17702) (_2!10020 lt!579273)))))

(assert (=> b!1616127 d!486432))

(declare-fun b!1616769 () Bool)

(declare-fun e!1037072 () Bool)

(declare-fun tp!471248 () Bool)

(assert (=> b!1616769 (= e!1037072 tp!471248)))

(declare-fun b!1616770 () Bool)

(declare-fun tp!471250 () Bool)

(declare-fun tp!471251 () Bool)

(assert (=> b!1616770 (= e!1037072 (and tp!471250 tp!471251))))

(declare-fun b!1616768 () Bool)

(declare-fun tp!471247 () Bool)

(declare-fun tp!471249 () Bool)

(assert (=> b!1616768 (= e!1037072 (and tp!471247 tp!471249))))

(declare-fun b!1616767 () Bool)

(declare-fun tp_is_empty!7253 () Bool)

(assert (=> b!1616767 (= e!1037072 tp_is_empty!7253)))

(assert (=> b!1616125 (= tp!471171 e!1037072)))

(assert (= (and b!1616125 ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (h!23104 tokens!457))))) b!1616767))

(assert (= (and b!1616125 ((_ is Concat!7657) (regex!3119 (rule!4939 (h!23104 tokens!457))))) b!1616768))

(assert (= (and b!1616125 ((_ is Star!4447) (regex!3119 (rule!4939 (h!23104 tokens!457))))) b!1616769))

(assert (= (and b!1616125 ((_ is Union!4447) (regex!3119 (rule!4939 (h!23104 tokens!457))))) b!1616770))

(declare-fun b!1616773 () Bool)

(declare-fun e!1037073 () Bool)

(declare-fun tp!471253 () Bool)

(assert (=> b!1616773 (= e!1037073 tp!471253)))

(declare-fun b!1616774 () Bool)

(declare-fun tp!471255 () Bool)

(declare-fun tp!471256 () Bool)

(assert (=> b!1616774 (= e!1037073 (and tp!471255 tp!471256))))

(declare-fun b!1616772 () Bool)

(declare-fun tp!471252 () Bool)

(declare-fun tp!471254 () Bool)

(assert (=> b!1616772 (= e!1037073 (and tp!471252 tp!471254))))

(declare-fun b!1616771 () Bool)

(assert (=> b!1616771 (= e!1037073 tp_is_empty!7253)))

(assert (=> b!1616131 (= tp!471178 e!1037073)))

(assert (= (and b!1616131 ((_ is ElementMatch!4447) (regex!3119 (h!23105 rules!1846)))) b!1616771))

(assert (= (and b!1616131 ((_ is Concat!7657) (regex!3119 (h!23105 rules!1846)))) b!1616772))

(assert (= (and b!1616131 ((_ is Star!4447) (regex!3119 (h!23105 rules!1846)))) b!1616773))

(assert (= (and b!1616131 ((_ is Union!4447) (regex!3119 (h!23105 rules!1846)))) b!1616774))

(declare-fun b!1616788 () Bool)

(declare-fun b_free!43575 () Bool)

(declare-fun b_next!44279 () Bool)

(assert (=> b!1616788 (= b_free!43575 (not b_next!44279))))

(declare-fun tp!471271 () Bool)

(declare-fun b_and!114653 () Bool)

(assert (=> b!1616788 (= tp!471271 b_and!114653)))

(declare-fun b_free!43577 () Bool)

(declare-fun b_next!44281 () Bool)

(assert (=> b!1616788 (= b_free!43577 (not b_next!44281))))

(declare-fun t!148326 () Bool)

(declare-fun tb!92847 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148326) tb!92847))

(declare-fun result!111934 () Bool)

(assert (= result!111934 result!111900))

(assert (=> d!486310 t!148326))

(declare-fun t!148328 () Bool)

(declare-fun tb!92849 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148328) tb!92849))

(declare-fun result!111936 () Bool)

(assert (= result!111936 result!111906))

(assert (=> d!486370 t!148328))

(assert (=> b!1616755 t!148328))

(declare-fun tp!471268 () Bool)

(declare-fun b_and!114655 () Bool)

(assert (=> b!1616788 (= tp!471268 (and (=> t!148326 result!111934) (=> t!148328 result!111936) b_and!114655))))

(declare-fun e!1037086 () Bool)

(assert (=> b!1616788 (= e!1037086 (and tp!471271 tp!471268))))

(declare-fun e!1037087 () Bool)

(assert (=> b!1616150 (= tp!471173 e!1037087)))

(declare-fun e!1037088 () Bool)

(declare-fun tp!471270 () Bool)

(declare-fun e!1037090 () Bool)

(declare-fun b!1616786 () Bool)

(assert (=> b!1616786 (= e!1037090 (and (inv!21 (value!98564 (h!23104 (t!148288 tokens!457)))) e!1037088 tp!471270))))

(declare-fun tp!471269 () Bool)

(declare-fun b!1616785 () Bool)

(assert (=> b!1616785 (= e!1037087 (and (inv!23100 (h!23104 (t!148288 tokens!457))) e!1037090 tp!471269))))

(declare-fun b!1616787 () Bool)

(declare-fun tp!471267 () Bool)

(assert (=> b!1616787 (= e!1037088 (and tp!471267 (inv!23096 (tag!3395 (rule!4939 (h!23104 (t!148288 tokens!457))))) (inv!23099 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) e!1037086))))

(assert (= b!1616787 b!1616788))

(assert (= b!1616786 b!1616787))

(assert (= b!1616785 b!1616786))

(assert (= (and b!1616150 ((_ is Cons!17703) (t!148288 tokens!457))) b!1616785))

(declare-fun m!1937769 () Bool)

(assert (=> b!1616786 m!1937769))

(declare-fun m!1937771 () Bool)

(assert (=> b!1616785 m!1937771))

(declare-fun m!1937773 () Bool)

(assert (=> b!1616787 m!1937773))

(declare-fun m!1937775 () Bool)

(assert (=> b!1616787 m!1937775))

(declare-fun b!1616793 () Bool)

(declare-fun e!1037094 () Bool)

(declare-fun tp!471274 () Bool)

(assert (=> b!1616793 (= e!1037094 (and tp_is_empty!7253 tp!471274))))

(assert (=> b!1616132 (= tp!471170 e!1037094)))

(assert (= (and b!1616132 ((_ is Cons!17702) (originalCharacters!3933 (h!23104 tokens!457)))) b!1616793))

(declare-fun b!1616804 () Bool)

(declare-fun b_free!43579 () Bool)

(declare-fun b_next!44283 () Bool)

(assert (=> b!1616804 (= b_free!43579 (not b_next!44283))))

(declare-fun tp!471286 () Bool)

(declare-fun b_and!114657 () Bool)

(assert (=> b!1616804 (= tp!471286 b_and!114657)))

(declare-fun b_free!43581 () Bool)

(declare-fun b_next!44285 () Bool)

(assert (=> b!1616804 (= b_free!43581 (not b_next!44285))))

(declare-fun t!148330 () Bool)

(declare-fun tb!92851 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148330) tb!92851))

(declare-fun result!111942 () Bool)

(assert (= result!111942 result!111900))

(assert (=> d!486310 t!148330))

(declare-fun t!148332 () Bool)

(declare-fun tb!92853 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148332) tb!92853))

(declare-fun result!111944 () Bool)

(assert (= result!111944 result!111906))

(assert (=> d!486370 t!148332))

(assert (=> b!1616755 t!148332))

(declare-fun tp!471283 () Bool)

(declare-fun b_and!114659 () Bool)

(assert (=> b!1616804 (= tp!471283 (and (=> t!148330 result!111942) (=> t!148332 result!111944) b_and!114659))))

(declare-fun e!1037103 () Bool)

(assert (=> b!1616804 (= e!1037103 (and tp!471286 tp!471283))))

(declare-fun e!1037104 () Bool)

(declare-fun tp!471284 () Bool)

(declare-fun b!1616803 () Bool)

(assert (=> b!1616803 (= e!1037104 (and tp!471284 (inv!23096 (tag!3395 (h!23105 (t!148289 rules!1846)))) (inv!23099 (transformation!3119 (h!23105 (t!148289 rules!1846)))) e!1037103))))

(declare-fun b!1616802 () Bool)

(declare-fun e!1037106 () Bool)

(declare-fun tp!471285 () Bool)

(assert (=> b!1616802 (= e!1037106 (and e!1037104 tp!471285))))

(assert (=> b!1616143 (= tp!471175 e!1037106)))

(assert (= b!1616803 b!1616804))

(assert (= b!1616802 b!1616803))

(assert (= (and b!1616143 ((_ is Cons!17704) (t!148289 rules!1846))) b!1616802))

(declare-fun m!1937777 () Bool)

(assert (=> b!1616803 m!1937777))

(declare-fun m!1937779 () Bool)

(assert (=> b!1616803 m!1937779))

(declare-fun b_lambda!50983 () Bool)

(assert (= b_lambda!50967 (or (and b!1616140 b_free!43561 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1616148 b_free!43565 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1616788 b_free!43577) (and b!1616804 b_free!43581 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) b_lambda!50983)))

(declare-fun b_lambda!50985 () Bool)

(assert (= b_lambda!50969 (or (and b!1616140 b_free!43561 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) (and b!1616148 b_free!43565) (and b!1616788 b_free!43577 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) (and b!1616804 b_free!43581 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) b_lambda!50985)))

(declare-fun b_lambda!50987 () Bool)

(assert (= b_lambda!50981 (or (and b!1616140 b_free!43561 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) (and b!1616148 b_free!43565) (and b!1616788 b_free!43577 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) (and b!1616804 b_free!43581 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) b_lambda!50987)))

(check-sat b_and!114649 (not b!1616515) (not d!486284) (not d!486226) (not b!1616618) (not b!1616773) (not d!486332) (not b!1616434) (not b!1616431) (not d!486304) (not d!486272) (not d!486370) (not d!486344) (not b!1616257) (not b!1616616) (not d!486340) (not bm!104843) (not b!1616398) (not bm!104847) (not d!486222) (not d!486338) (not b!1616249) (not d!486290) (not d!486364) (not b!1616501) (not d!486210) (not b!1616458) (not b!1616248) (not b!1616534) (not b!1616514) b_and!114655 b_and!114617 (not b!1616485) (not b!1616484) (not b!1616451) (not b!1616247) (not d!486430) (not b!1616446) (not b!1616444) (not b!1616292) (not b_next!44281) (not d!486300) (not b!1616211) (not b!1616246) (not d!486322) (not b!1616262) (not b!1616787) (not b!1616612) (not b_next!44263) tp_is_empty!7253 (not b!1616250) (not b!1616480) (not d!486276) (not b!1616436) (not d!486294) (not b!1616482) (not d!486378) (not b!1616607) (not b!1616479) (not b!1616252) (not d!486366) (not d!486196) (not b_next!44283) b_and!114657 (not b!1616386) (not d!486374) (not d!486358) (not b!1616499) (not d!486324) (not d!486188) (not d!486336) (not d!486362) (not b!1616396) (not bm!104842) (not b!1616258) (not b!1616259) (not b!1616489) (not b!1616293) (not b!1616500) (not b_next!44279) (not d!486368) (not b!1616416) (not bm!104846) (not b!1616429) (not b!1616802) (not d!486302) (not d!486376) (not d!486266) (not b_next!44265) (not b_next!44269) (not b!1616532) (not b!1616774) (not bm!104865) (not b!1616251) (not d!486346) (not b!1616562) (not d!486372) (not d!486298) (not d!486306) (not b!1616606) (not b!1616518) b_and!114651 (not b!1616617) b_and!114613 (not b!1616608) (not d!486280) (not b!1616564) (not b!1616255) (not b!1616610) (not b!1616619) (not b_lambda!50987) (not b!1616785) (not b!1616770) (not b!1616755) (not b!1616433) (not b!1616432) (not b!1616504) (not b!1616435) (not tb!92827) b_and!114653 (not d!486260) (not b!1616274) (not d!486296) (not b!1616414) (not tb!92831) (not b!1616736) (not b!1616415) (not b_next!44285) (not b!1616563) (not d!486208) (not b!1616613) (not b!1616793) (not b!1616769) (not b!1616768) (not b!1616786) (not d!486278) (not b!1616756) (not b_lambda!50983) (not d!486360) (not b!1616567) (not b!1616430) (not b!1616561) (not b!1616397) b_and!114659 (not b!1616275) (not b!1616481) (not b!1616530) (not b!1616529) (not b!1616385) (not b!1616483) (not b!1616260) (not d!486184) (not b_next!44267) (not d!486320) (not b!1616256) (not b!1616737) (not d!486206) (not bm!104862) (not b!1616772) (not d!486224) (not b!1616455) (not d!486262) (not b!1616253) (not d!486308) (not d!486342) (not b!1616498) (not d!486314) (not b_lambda!50985) (not d!486334) (not d!486310) (not b!1616803) (not b!1616509) (not b!1616746) (not d!486274) (not b!1616261))
(check-sat b_and!114649 (not b_next!44281) (not b_next!44263) (not b_next!44279) b_and!114653 (not b_next!44285) b_and!114659 (not b_next!44267) b_and!114655 b_and!114617 (not b_next!44283) b_and!114657 (not b_next!44265) (not b_next!44269) b_and!114651 b_and!114613)
(get-model)

(declare-fun d!486544 () Bool)

(declare-fun lt!579997 () Bool)

(declare-fun content!2454 (List!17774) (InoxSet Rule!6038))

(assert (=> d!486544 (= lt!579997 (select (content!2454 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579346)))))))

(declare-fun e!1037252 () Bool)

(assert (=> d!486544 (= lt!579997 e!1037252)))

(declare-fun res!721879 () Bool)

(assert (=> d!486544 (=> (not res!721879) (not e!1037252))))

(assert (=> d!486544 (= res!721879 ((_ is Cons!17704) rules!1846))))

(assert (=> d!486544 (= (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579346)))) lt!579997)))

(declare-fun b!1617046 () Bool)

(declare-fun e!1037251 () Bool)

(assert (=> b!1617046 (= e!1037252 e!1037251)))

(declare-fun res!721880 () Bool)

(assert (=> b!1617046 (=> res!721880 e!1037251)))

(assert (=> b!1617046 (= res!721880 (= (h!23105 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579346)))))))

(declare-fun b!1617047 () Bool)

(assert (=> b!1617047 (= e!1037251 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579346)))))))

(assert (= (and d!486544 res!721879) b!1617046))

(assert (= (and b!1617046 (not res!721880)) b!1617047))

(declare-fun m!1938171 () Bool)

(assert (=> d!486544 m!1938171))

(declare-fun m!1938173 () Bool)

(assert (=> d!486544 m!1938173))

(declare-fun m!1938175 () Bool)

(assert (=> b!1617047 m!1938175))

(assert (=> b!1616261 d!486544))

(declare-fun d!486556 () Bool)

(assert (=> d!486556 (= (get!5079 lt!579346) (v!24235 lt!579346))))

(assert (=> b!1616261 d!486556))

(declare-fun lt!580005 () Bool)

(declare-fun d!486558 () Bool)

(assert (=> d!486558 (= lt!580005 (isEmpty!10713 (list!6924 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))))

(declare-fun isEmpty!10727 (Conc!5886) Bool)

(assert (=> d!486558 (= lt!580005 (isEmpty!10727 (c!263121 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))))

(assert (=> d!486558 (= (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))))) lt!580005)))

(declare-fun bs!394185 () Bool)

(assert (= bs!394185 d!486558))

(declare-fun m!1938195 () Bool)

(assert (=> bs!394185 m!1938195))

(assert (=> bs!394185 m!1938195))

(declare-fun m!1938199 () Bool)

(assert (=> bs!394185 m!1938199))

(declare-fun m!1938203 () Bool)

(assert (=> bs!394185 m!1938203))

(assert (=> b!1616386 d!486558))

(declare-fun b!1617058 () Bool)

(declare-fun e!1037257 () Bool)

(declare-fun lt!580006 () tuple2!17234)

(assert (=> b!1617058 (= e!1037257 (not (isEmpty!10715 (_1!10019 lt!580006))))))

(declare-fun b!1617059 () Bool)

(declare-fun e!1037258 () Bool)

(assert (=> b!1617059 (= e!1037258 e!1037257)))

(declare-fun res!721888 () Bool)

(assert (=> b!1617059 (= res!721888 (< (size!14200 (_2!10019 lt!580006)) (size!14200 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))

(assert (=> b!1617059 (=> (not res!721888) (not e!1037257))))

(declare-fun e!1037256 () Bool)

(declare-fun b!1617060 () Bool)

(assert (=> b!1617060 (= e!1037256 (= (list!6924 (_2!10019 lt!580006)) (_2!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))))

(declare-fun b!1617061 () Bool)

(declare-fun res!721889 () Bool)

(assert (=> b!1617061 (=> (not res!721889) (not e!1037256))))

(assert (=> b!1617061 (= res!721889 (= (list!6923 (_1!10019 lt!580006)) (_1!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))))

(declare-fun b!1617057 () Bool)

(assert (=> b!1617057 (= e!1037258 (= (_2!10019 lt!580006) (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))))))

(declare-fun d!486560 () Bool)

(assert (=> d!486560 e!1037256))

(declare-fun res!721890 () Bool)

(assert (=> d!486560 (=> (not res!721890) (not e!1037256))))

(assert (=> d!486560 (= res!721890 e!1037258)))

(declare-fun c!263298 () Bool)

(assert (=> d!486560 (= c!263298 (> (size!14198 (_1!10019 lt!580006)) 0))))

(assert (=> d!486560 (= lt!580006 (lexTailRecV2!538 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))) (BalanceConc!11717 Empty!5886) (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))) (BalanceConc!11719 Empty!5887)))))

(assert (=> d!486560 (= (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))) lt!580006)))

(assert (= (and d!486560 c!263298) b!1617059))

(assert (= (and d!486560 (not c!263298)) b!1617057))

(assert (= (and b!1617059 res!721888) b!1617058))

(assert (= (and d!486560 res!721890) b!1617061))

(assert (= (and b!1617061 res!721889) b!1617060))

(declare-fun m!1938217 () Bool)

(assert (=> b!1617061 m!1938217))

(assert (=> b!1617061 m!1936925))

(declare-fun m!1938219 () Bool)

(assert (=> b!1617061 m!1938219))

(assert (=> b!1617061 m!1938219))

(declare-fun m!1938221 () Bool)

(assert (=> b!1617061 m!1938221))

(declare-fun m!1938223 () Bool)

(assert (=> b!1617058 m!1938223))

(declare-fun m!1938225 () Bool)

(assert (=> b!1617060 m!1938225))

(assert (=> b!1617060 m!1936925))

(assert (=> b!1617060 m!1938219))

(assert (=> b!1617060 m!1938219))

(assert (=> b!1617060 m!1938221))

(declare-fun m!1938227 () Bool)

(assert (=> b!1617059 m!1938227))

(assert (=> b!1617059 m!1936925))

(declare-fun m!1938229 () Bool)

(assert (=> b!1617059 m!1938229))

(declare-fun m!1938231 () Bool)

(assert (=> d!486560 m!1938231))

(assert (=> d!486560 m!1936925))

(assert (=> d!486560 m!1936925))

(declare-fun m!1938233 () Bool)

(assert (=> d!486560 m!1938233))

(assert (=> b!1616386 d!486560))

(declare-fun d!486568 () Bool)

(declare-fun lt!580008 () BalanceConc!11716)

(assert (=> d!486568 (= (list!6924 lt!580008) (printList!863 thiss!17113 (list!6923 (seqFromList!1987 (t!148288 tokens!457)))))))

(assert (=> d!486568 (= lt!580008 (printTailRec!801 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)) 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486568 (= (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))) lt!580008)))

(declare-fun bs!394187 () Bool)

(assert (= bs!394187 d!486568))

(declare-fun m!1938235 () Bool)

(assert (=> bs!394187 m!1938235))

(assert (=> bs!394187 m!1936467))

(declare-fun m!1938237 () Bool)

(assert (=> bs!394187 m!1938237))

(assert (=> bs!394187 m!1938237))

(declare-fun m!1938239 () Bool)

(assert (=> bs!394187 m!1938239))

(assert (=> bs!394187 m!1936467))

(declare-fun m!1938241 () Bool)

(assert (=> bs!394187 m!1938241))

(assert (=> b!1616386 d!486568))

(assert (=> b!1616386 d!486372))

(declare-fun d!486570 () Bool)

(declare-fun lt!580009 () Bool)

(assert (=> d!486570 (= lt!580009 (select (content!2454 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579341)))))))

(declare-fun e!1037260 () Bool)

(assert (=> d!486570 (= lt!580009 e!1037260)))

(declare-fun res!721891 () Bool)

(assert (=> d!486570 (=> (not res!721891) (not e!1037260))))

(assert (=> d!486570 (= res!721891 ((_ is Cons!17704) rules!1846))))

(assert (=> d!486570 (= (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579341)))) lt!580009)))

(declare-fun b!1617062 () Bool)

(declare-fun e!1037259 () Bool)

(assert (=> b!1617062 (= e!1037260 e!1037259)))

(declare-fun res!721892 () Bool)

(assert (=> b!1617062 (=> res!721892 e!1037259)))

(assert (=> b!1617062 (= res!721892 (= (h!23105 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579341)))))))

(declare-fun b!1617063 () Bool)

(assert (=> b!1617063 (= e!1037259 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579341)))))))

(assert (= (and d!486570 res!721891) b!1617062))

(assert (= (and b!1617062 (not res!721892)) b!1617063))

(assert (=> d!486570 m!1938171))

(declare-fun m!1938243 () Bool)

(assert (=> d!486570 m!1938243))

(declare-fun m!1938245 () Bool)

(assert (=> b!1617063 m!1938245))

(assert (=> b!1616252 d!486570))

(declare-fun d!486572 () Bool)

(assert (=> d!486572 (= (get!5079 lt!579341) (v!24235 lt!579341))))

(assert (=> b!1616252 d!486572))

(declare-fun lt!580010 () Bool)

(declare-fun d!486574 () Bool)

(assert (=> d!486574 (= lt!580010 (isEmpty!10713 (list!6924 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))))

(assert (=> d!486574 (= lt!580010 (isEmpty!10727 (c!263121 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))))

(assert (=> d!486574 (= (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))) lt!580010)))

(declare-fun bs!394188 () Bool)

(assert (= bs!394188 d!486574))

(declare-fun m!1938247 () Bool)

(assert (=> bs!394188 m!1938247))

(assert (=> bs!394188 m!1938247))

(declare-fun m!1938249 () Bool)

(assert (=> bs!394188 m!1938249))

(declare-fun m!1938251 () Bool)

(assert (=> bs!394188 m!1938251))

(assert (=> b!1616416 d!486574))

(declare-fun b!1617065 () Bool)

(declare-fun e!1037262 () Bool)

(declare-fun lt!580011 () tuple2!17234)

(assert (=> b!1617065 (= e!1037262 (not (isEmpty!10715 (_1!10019 lt!580011))))))

(declare-fun b!1617066 () Bool)

(declare-fun e!1037263 () Bool)

(assert (=> b!1617066 (= e!1037263 e!1037262)))

(declare-fun res!721893 () Bool)

(assert (=> b!1617066 (= res!721893 (< (size!14200 (_2!10019 lt!580011)) (size!14200 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))

(assert (=> b!1617066 (=> (not res!721893) (not e!1037262))))

(declare-fun b!1617067 () Bool)

(declare-fun e!1037261 () Bool)

(assert (=> b!1617067 (= e!1037261 (= (list!6924 (_2!10019 lt!580011)) (_2!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))))

(declare-fun b!1617068 () Bool)

(declare-fun res!721894 () Bool)

(assert (=> b!1617068 (=> (not res!721894) (not e!1037261))))

(assert (=> b!1617068 (= res!721894 (= (list!6923 (_1!10019 lt!580011)) (_1!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))))

(declare-fun b!1617064 () Bool)

(assert (=> b!1617064 (= e!1037263 (= (_2!10019 lt!580011) (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))))

(declare-fun d!486576 () Bool)

(assert (=> d!486576 e!1037261))

(declare-fun res!721895 () Bool)

(assert (=> d!486576 (=> (not res!721895) (not e!1037261))))

(assert (=> d!486576 (= res!721895 e!1037263)))

(declare-fun c!263299 () Bool)

(assert (=> d!486576 (= c!263299 (> (size!14198 (_1!10019 lt!580011)) 0))))

(assert (=> d!486576 (= lt!580011 (lexTailRecV2!538 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))) (BalanceConc!11717 Empty!5886) (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))) (BalanceConc!11719 Empty!5887)))))

(assert (=> d!486576 (= (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))) lt!580011)))

(assert (= (and d!486576 c!263299) b!1617066))

(assert (= (and d!486576 (not c!263299)) b!1617064))

(assert (= (and b!1617066 res!721893) b!1617065))

(assert (= (and d!486576 res!721895) b!1617068))

(assert (= (and b!1617068 res!721894) b!1617067))

(declare-fun m!1938253 () Bool)

(assert (=> b!1617068 m!1938253))

(assert (=> b!1617068 m!1937093))

(declare-fun m!1938255 () Bool)

(assert (=> b!1617068 m!1938255))

(assert (=> b!1617068 m!1938255))

(declare-fun m!1938257 () Bool)

(assert (=> b!1617068 m!1938257))

(declare-fun m!1938259 () Bool)

(assert (=> b!1617065 m!1938259))

(declare-fun m!1938261 () Bool)

(assert (=> b!1617067 m!1938261))

(assert (=> b!1617067 m!1937093))

(assert (=> b!1617067 m!1938255))

(assert (=> b!1617067 m!1938255))

(assert (=> b!1617067 m!1938257))

(declare-fun m!1938263 () Bool)

(assert (=> b!1617066 m!1938263))

(assert (=> b!1617066 m!1937093))

(declare-fun m!1938265 () Bool)

(assert (=> b!1617066 m!1938265))

(declare-fun m!1938267 () Bool)

(assert (=> d!486576 m!1938267))

(assert (=> d!486576 m!1937093))

(assert (=> d!486576 m!1937093))

(declare-fun m!1938269 () Bool)

(assert (=> d!486576 m!1938269))

(assert (=> b!1616416 d!486576))

(declare-fun d!486578 () Bool)

(declare-fun lt!580012 () BalanceConc!11716)

(assert (=> d!486578 (= (list!6924 lt!580012) (printList!863 thiss!17113 (list!6923 (singletonSeq!1517 (h!23104 tokens!457)))))))

(assert (=> d!486578 (= lt!580012 (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)) 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486578 (= (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))) lt!580012)))

(declare-fun bs!394189 () Bool)

(assert (= bs!394189 d!486578))

(declare-fun m!1938271 () Bool)

(assert (=> bs!394189 m!1938271))

(assert (=> bs!394189 m!1936519))

(assert (=> bs!394189 m!1937099))

(assert (=> bs!394189 m!1937099))

(declare-fun m!1938273 () Bool)

(assert (=> bs!394189 m!1938273))

(assert (=> bs!394189 m!1936519))

(declare-fun m!1938275 () Bool)

(assert (=> bs!394189 m!1938275))

(assert (=> b!1616416 d!486578))

(assert (=> b!1616416 d!486284))

(declare-fun d!486580 () Bool)

(declare-fun res!721900 () Bool)

(declare-fun e!1037268 () Bool)

(assert (=> d!486580 (=> res!721900 e!1037268)))

(assert (=> d!486580 (= res!721900 ((_ is Nil!17704) rules!1846))))

(assert (=> d!486580 (= (noDuplicateTag!1114 thiss!17113 rules!1846 Nil!17710) e!1037268)))

(declare-fun b!1617073 () Bool)

(declare-fun e!1037269 () Bool)

(assert (=> b!1617073 (= e!1037268 e!1037269)))

(declare-fun res!721901 () Bool)

(assert (=> b!1617073 (=> (not res!721901) (not e!1037269))))

(declare-fun contains!3097 (List!17780 String!20377) Bool)

(assert (=> b!1617073 (= res!721901 (not (contains!3097 Nil!17710 (tag!3395 (h!23105 rules!1846)))))))

(declare-fun b!1617074 () Bool)

(assert (=> b!1617074 (= e!1037269 (noDuplicateTag!1114 thiss!17113 (t!148289 rules!1846) (Cons!17710 (tag!3395 (h!23105 rules!1846)) Nil!17710)))))

(assert (= (and d!486580 (not res!721900)) b!1617073))

(assert (= (and b!1617073 res!721901) b!1617074))

(declare-fun m!1938277 () Bool)

(assert (=> b!1617073 m!1938277))

(declare-fun m!1938279 () Bool)

(assert (=> b!1617074 m!1938279))

(assert (=> b!1616518 d!486580))

(declare-fun d!486582 () Bool)

(declare-fun c!263308 () Bool)

(assert (=> d!486582 (= c!263308 ((_ is Empty!5886) (c!263121 lt!579268)))))

(declare-fun e!1037282 () List!17772)

(assert (=> d!486582 (= (list!6927 (c!263121 lt!579268)) e!1037282)))

(declare-fun b!1617095 () Bool)

(assert (=> b!1617095 (= e!1037282 Nil!17702)))

(declare-fun b!1617096 () Bool)

(declare-fun e!1037283 () List!17772)

(assert (=> b!1617096 (= e!1037282 e!1037283)))

(declare-fun c!263309 () Bool)

(assert (=> b!1617096 (= c!263309 ((_ is Leaf!8666) (c!263121 lt!579268)))))

(declare-fun b!1617098 () Bool)

(assert (=> b!1617098 (= e!1037283 (++!4680 (list!6927 (left!14251 (c!263121 lt!579268))) (list!6927 (right!14581 (c!263121 lt!579268)))))))

(declare-fun b!1617097 () Bool)

(declare-fun list!6929 (IArray!11777) List!17772)

(assert (=> b!1617097 (= e!1037283 (list!6929 (xs!8714 (c!263121 lt!579268))))))

(assert (= (and d!486582 c!263308) b!1617095))

(assert (= (and d!486582 (not c!263308)) b!1617096))

(assert (= (and b!1617096 c!263309) b!1617097))

(assert (= (and b!1617096 (not c!263309)) b!1617098))

(declare-fun m!1938281 () Bool)

(assert (=> b!1617098 m!1938281))

(declare-fun m!1938283 () Bool)

(assert (=> b!1617098 m!1938283))

(assert (=> b!1617098 m!1938281))

(assert (=> b!1617098 m!1938283))

(declare-fun m!1938285 () Bool)

(assert (=> b!1617098 m!1938285))

(declare-fun m!1938287 () Bool)

(assert (=> b!1617097 m!1938287))

(assert (=> d!486278 d!486582))

(declare-fun d!486584 () Bool)

(declare-fun lt!580029 () Int)

(assert (=> d!486584 (>= lt!580029 0)))

(declare-fun e!1037293 () Int)

(assert (=> d!486584 (= lt!580029 e!1037293)))

(declare-fun c!263315 () Bool)

(assert (=> d!486584 (= c!263315 ((_ is Nil!17702) (_2!10020 (get!5079 lt!579577))))))

(assert (=> d!486584 (= (size!14197 (_2!10020 (get!5079 lt!579577))) lt!580029)))

(declare-fun b!1617118 () Bool)

(assert (=> b!1617118 (= e!1037293 0)))

(declare-fun b!1617119 () Bool)

(assert (=> b!1617119 (= e!1037293 (+ 1 (size!14197 (t!148287 (_2!10020 (get!5079 lt!579577))))))))

(assert (= (and d!486584 c!263315) b!1617118))

(assert (= (and d!486584 (not c!263315)) b!1617119))

(declare-fun m!1938301 () Bool)

(assert (=> b!1617119 m!1938301))

(assert (=> b!1616429 d!486584))

(declare-fun d!486588 () Bool)

(assert (=> d!486588 (= (get!5079 lt!579577) (v!24235 lt!579577))))

(assert (=> b!1616429 d!486588))

(declare-fun d!486590 () Bool)

(declare-fun lt!580030 () Int)

(assert (=> d!486590 (>= lt!580030 0)))

(declare-fun e!1037294 () Int)

(assert (=> d!486590 (= lt!580030 e!1037294)))

(declare-fun c!263316 () Bool)

(assert (=> d!486590 (= c!263316 ((_ is Nil!17702) lt!579276))))

(assert (=> d!486590 (= (size!14197 lt!579276) lt!580030)))

(declare-fun b!1617120 () Bool)

(assert (=> b!1617120 (= e!1037294 0)))

(declare-fun b!1617121 () Bool)

(assert (=> b!1617121 (= e!1037294 (+ 1 (size!14197 (t!148287 lt!579276))))))

(assert (= (and d!486590 c!263316) b!1617120))

(assert (= (and d!486590 (not c!263316)) b!1617121))

(declare-fun m!1938303 () Bool)

(assert (=> b!1617121 m!1938303))

(assert (=> b!1616429 d!486590))

(declare-fun d!486592 () Bool)

(assert (=> d!486592 (= (list!6924 (_2!10021 (get!5082 lt!579622))) (list!6927 (c!263121 (_2!10021 (get!5082 lt!579622)))))))

(declare-fun bs!394190 () Bool)

(assert (= bs!394190 d!486592))

(declare-fun m!1938305 () Bool)

(assert (=> bs!394190 m!1938305))

(assert (=> b!1616482 d!486592))

(declare-fun d!486594 () Bool)

(assert (=> d!486594 (= (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))) (v!24235 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(assert (=> b!1616482 d!486594))

(declare-fun d!486596 () Bool)

(assert (=> d!486596 (= (get!5082 lt!579622) (v!24236 lt!579622))))

(assert (=> b!1616482 d!486596))

(declare-fun d!486598 () Bool)

(assert (=> d!486598 (= (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) (list!6927 (c!263121 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun bs!394191 () Bool)

(assert (= bs!394191 d!486598))

(declare-fun m!1938315 () Bool)

(assert (=> bs!394191 m!1938315))

(assert (=> b!1616482 d!486598))

(declare-fun b!1617122 () Bool)

(declare-fun res!721920 () Bool)

(declare-fun e!1037295 () Bool)

(assert (=> b!1617122 (=> (not res!721920) (not e!1037295))))

(declare-fun lt!580035 () Option!3247)

(assert (=> b!1617122 (= res!721920 (< (size!14197 (_2!10020 (get!5079 lt!580035))) (size!14197 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(declare-fun b!1617123 () Bool)

(declare-fun e!1037296 () Bool)

(assert (=> b!1617123 (= e!1037296 e!1037295)))

(declare-fun res!721916 () Bool)

(assert (=> b!1617123 (=> (not res!721916) (not e!1037295))))

(assert (=> b!1617123 (= res!721916 (isDefined!2614 lt!580035))))

(declare-fun b!1617124 () Bool)

(declare-fun e!1037297 () Option!3247)

(declare-fun lt!580034 () Option!3247)

(declare-fun lt!580033 () Option!3247)

(assert (=> b!1617124 (= e!1037297 (ite (and ((_ is None!3246) lt!580034) ((_ is None!3246) lt!580033)) None!3246 (ite ((_ is None!3246) lt!580033) lt!580034 (ite ((_ is None!3246) lt!580034) lt!580033 (ite (>= (size!14194 (_1!10020 (v!24235 lt!580034))) (size!14194 (_1!10020 (v!24235 lt!580033)))) lt!580034 lt!580033)))))))

(declare-fun call!104932 () Option!3247)

(assert (=> b!1617124 (= lt!580034 call!104932)))

(assert (=> b!1617124 (= lt!580033 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun b!1617125 () Bool)

(declare-fun res!721919 () Bool)

(assert (=> b!1617125 (=> (not res!721919) (not e!1037295))))

(assert (=> b!1617125 (= res!721919 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580035)))) (_2!10020 (get!5079 lt!580035))) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun b!1617126 () Bool)

(declare-fun res!721921 () Bool)

(assert (=> b!1617126 (=> (not res!721921) (not e!1037295))))

(assert (=> b!1617126 (= res!721921 (= (value!98564 (_1!10020 (get!5079 lt!580035))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580035)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580035)))))))))

(declare-fun b!1617127 () Bool)

(declare-fun res!721915 () Bool)

(assert (=> b!1617127 (=> (not res!721915) (not e!1037295))))

(assert (=> b!1617127 (= res!721915 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580035)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!580035)))))))

(declare-fun b!1617128 () Bool)

(assert (=> b!1617128 (= e!1037295 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!580035)))))))

(declare-fun bm!104927 () Bool)

(assert (=> bm!104927 (= call!104932 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun d!486600 () Bool)

(assert (=> d!486600 e!1037296))

(declare-fun res!721917 () Bool)

(assert (=> d!486600 (=> res!721917 e!1037296)))

(assert (=> d!486600 (= res!721917 (isEmpty!10719 lt!580035))))

(assert (=> d!486600 (= lt!580035 e!1037297)))

(declare-fun c!263317 () Bool)

(assert (=> d!486600 (= c!263317 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!580032 () Unit!28465)

(declare-fun lt!580031 () Unit!28465)

(assert (=> d!486600 (= lt!580032 lt!580031)))

(assert (=> d!486600 (isPrefix!1379 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!486600 (= lt!580031 (lemmaIsPrefixRefl!946 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(assert (=> d!486600 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486600 (= (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))) lt!580035)))

(declare-fun b!1617129 () Bool)

(declare-fun res!721918 () Bool)

(assert (=> b!1617129 (=> (not res!721918) (not e!1037295))))

(assert (=> b!1617129 (= res!721918 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!580035)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580035))))))))

(declare-fun b!1617130 () Bool)

(assert (=> b!1617130 (= e!1037297 call!104932)))

(assert (= (and d!486600 c!263317) b!1617130))

(assert (= (and d!486600 (not c!263317)) b!1617124))

(assert (= (or b!1617130 b!1617124) bm!104927))

(assert (= (and d!486600 (not res!721917)) b!1617123))

(assert (= (and b!1617123 res!721916) b!1617127))

(assert (= (and b!1617127 res!721915) b!1617122))

(assert (= (and b!1617122 res!721920) b!1617125))

(assert (= (and b!1617125 res!721919) b!1617126))

(assert (= (and b!1617126 res!721921) b!1617129))

(assert (= (and b!1617129 res!721918) b!1617128))

(declare-fun m!1938347 () Bool)

(assert (=> d!486600 m!1938347))

(assert (=> d!486600 m!1937235))

(assert (=> d!486600 m!1937235))

(declare-fun m!1938351 () Bool)

(assert (=> d!486600 m!1938351))

(assert (=> d!486600 m!1937235))

(assert (=> d!486600 m!1937235))

(declare-fun m!1938357 () Bool)

(assert (=> d!486600 m!1938357))

(assert (=> d!486600 m!1936675))

(declare-fun m!1938361 () Bool)

(assert (=> b!1617123 m!1938361))

(declare-fun m!1938363 () Bool)

(assert (=> b!1617126 m!1938363))

(declare-fun m!1938367 () Bool)

(assert (=> b!1617126 m!1938367))

(assert (=> b!1617126 m!1938367))

(declare-fun m!1938371 () Bool)

(assert (=> b!1617126 m!1938371))

(assert (=> b!1617125 m!1938363))

(declare-fun m!1938373 () Bool)

(assert (=> b!1617125 m!1938373))

(assert (=> b!1617125 m!1938373))

(declare-fun m!1938375 () Bool)

(assert (=> b!1617125 m!1938375))

(assert (=> b!1617125 m!1938375))

(declare-fun m!1938381 () Bool)

(assert (=> b!1617125 m!1938381))

(assert (=> b!1617124 m!1937235))

(declare-fun m!1938387 () Bool)

(assert (=> b!1617124 m!1938387))

(assert (=> b!1617128 m!1938363))

(declare-fun m!1938389 () Bool)

(assert (=> b!1617128 m!1938389))

(assert (=> b!1617129 m!1938363))

(assert (=> b!1617129 m!1938373))

(assert (=> b!1617129 m!1938373))

(assert (=> b!1617129 m!1938375))

(assert (=> b!1617129 m!1938375))

(declare-fun m!1938391 () Bool)

(assert (=> b!1617129 m!1938391))

(assert (=> bm!104927 m!1937235))

(declare-fun m!1938393 () Bool)

(assert (=> bm!104927 m!1938393))

(assert (=> b!1617127 m!1938363))

(assert (=> b!1617127 m!1938373))

(assert (=> b!1617127 m!1938373))

(assert (=> b!1617127 m!1938375))

(assert (=> b!1617122 m!1938363))

(declare-fun m!1938395 () Bool)

(assert (=> b!1617122 m!1938395))

(assert (=> b!1617122 m!1937235))

(declare-fun m!1938397 () Bool)

(assert (=> b!1617122 m!1938397))

(assert (=> b!1616482 d!486600))

(declare-fun b!1617136 () Bool)

(declare-fun res!721930 () Bool)

(declare-fun e!1037301 () Bool)

(assert (=> b!1617136 (=> (not res!721930) (not e!1037301))))

(declare-fun lt!580043 () Option!3247)

(assert (=> b!1617136 (= res!721930 (< (size!14197 (_2!10020 (get!5079 lt!580043))) (size!14197 lt!579274)))))

(declare-fun b!1617137 () Bool)

(declare-fun e!1037302 () Bool)

(assert (=> b!1617137 (= e!1037302 e!1037301)))

(declare-fun res!721926 () Bool)

(assert (=> b!1617137 (=> (not res!721926) (not e!1037301))))

(assert (=> b!1617137 (= res!721926 (isDefined!2614 lt!580043))))

(declare-fun b!1617138 () Bool)

(declare-fun e!1037303 () Option!3247)

(declare-fun lt!580042 () Option!3247)

(declare-fun lt!580041 () Option!3247)

(assert (=> b!1617138 (= e!1037303 (ite (and ((_ is None!3246) lt!580042) ((_ is None!3246) lt!580041)) None!3246 (ite ((_ is None!3246) lt!580041) lt!580042 (ite ((_ is None!3246) lt!580042) lt!580041 (ite (>= (size!14194 (_1!10020 (v!24235 lt!580042))) (size!14194 (_1!10020 (v!24235 lt!580041)))) lt!580042 lt!580041)))))))

(declare-fun call!104933 () Option!3247)

(assert (=> b!1617138 (= lt!580042 call!104933)))

(assert (=> b!1617138 (= lt!580041 (maxPrefix!1312 thiss!17113 (t!148289 (t!148289 rules!1846)) lt!579274))))

(declare-fun b!1617139 () Bool)

(declare-fun res!721929 () Bool)

(assert (=> b!1617139 (=> (not res!721929) (not e!1037301))))

(assert (=> b!1617139 (= res!721929 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580043)))) (_2!10020 (get!5079 lt!580043))) lt!579274))))

(declare-fun b!1617140 () Bool)

(declare-fun res!721931 () Bool)

(assert (=> b!1617140 (=> (not res!721931) (not e!1037301))))

(assert (=> b!1617140 (= res!721931 (= (value!98564 (_1!10020 (get!5079 lt!580043))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580043)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580043)))))))))

(declare-fun b!1617141 () Bool)

(declare-fun res!721925 () Bool)

(assert (=> b!1617141 (=> (not res!721925) (not e!1037301))))

(assert (=> b!1617141 (= res!721925 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580043)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!580043)))))))

(declare-fun b!1617142 () Bool)

(assert (=> b!1617142 (= e!1037301 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!580043)))))))

(declare-fun bm!104928 () Bool)

(assert (=> bm!104928 (= call!104933 (maxPrefixOneRule!761 thiss!17113 (h!23105 (t!148289 rules!1846)) lt!579274))))

(declare-fun d!486610 () Bool)

(assert (=> d!486610 e!1037302))

(declare-fun res!721927 () Bool)

(assert (=> d!486610 (=> res!721927 e!1037302)))

(assert (=> d!486610 (= res!721927 (isEmpty!10719 lt!580043))))

(assert (=> d!486610 (= lt!580043 e!1037303)))

(declare-fun c!263319 () Bool)

(assert (=> d!486610 (= c!263319 (and ((_ is Cons!17704) (t!148289 rules!1846)) ((_ is Nil!17704) (t!148289 (t!148289 rules!1846)))))))

(declare-fun lt!580040 () Unit!28465)

(declare-fun lt!580039 () Unit!28465)

(assert (=> d!486610 (= lt!580040 lt!580039)))

(assert (=> d!486610 (isPrefix!1379 lt!579274 lt!579274)))

(assert (=> d!486610 (= lt!580039 (lemmaIsPrefixRefl!946 lt!579274 lt!579274))))

(assert (=> d!486610 (rulesValidInductive!958 thiss!17113 (t!148289 rules!1846))))

(assert (=> d!486610 (= (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) lt!579274) lt!580043)))

(declare-fun b!1617143 () Bool)

(declare-fun res!721928 () Bool)

(assert (=> b!1617143 (=> (not res!721928) (not e!1037301))))

(assert (=> b!1617143 (= res!721928 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!580043)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580043))))))))

(declare-fun b!1617144 () Bool)

(assert (=> b!1617144 (= e!1037303 call!104933)))

(assert (= (and d!486610 c!263319) b!1617144))

(assert (= (and d!486610 (not c!263319)) b!1617138))

(assert (= (or b!1617144 b!1617138) bm!104928))

(assert (= (and d!486610 (not res!721927)) b!1617137))

(assert (= (and b!1617137 res!721926) b!1617141))

(assert (= (and b!1617141 res!721925) b!1617136))

(assert (= (and b!1617136 res!721930) b!1617139))

(assert (= (and b!1617139 res!721929) b!1617140))

(assert (= (and b!1617140 res!721931) b!1617143))

(assert (= (and b!1617143 res!721928) b!1617142))

(declare-fun m!1938399 () Bool)

(assert (=> d!486610 m!1938399))

(assert (=> d!486610 m!1936705))

(assert (=> d!486610 m!1936707))

(declare-fun m!1938401 () Bool)

(assert (=> d!486610 m!1938401))

(declare-fun m!1938403 () Bool)

(assert (=> b!1617137 m!1938403))

(declare-fun m!1938405 () Bool)

(assert (=> b!1617140 m!1938405))

(declare-fun m!1938407 () Bool)

(assert (=> b!1617140 m!1938407))

(assert (=> b!1617140 m!1938407))

(declare-fun m!1938409 () Bool)

(assert (=> b!1617140 m!1938409))

(assert (=> b!1617139 m!1938405))

(declare-fun m!1938411 () Bool)

(assert (=> b!1617139 m!1938411))

(assert (=> b!1617139 m!1938411))

(declare-fun m!1938413 () Bool)

(assert (=> b!1617139 m!1938413))

(assert (=> b!1617139 m!1938413))

(declare-fun m!1938415 () Bool)

(assert (=> b!1617139 m!1938415))

(declare-fun m!1938417 () Bool)

(assert (=> b!1617138 m!1938417))

(assert (=> b!1617142 m!1938405))

(declare-fun m!1938419 () Bool)

(assert (=> b!1617142 m!1938419))

(assert (=> b!1617143 m!1938405))

(assert (=> b!1617143 m!1938411))

(assert (=> b!1617143 m!1938411))

(assert (=> b!1617143 m!1938413))

(assert (=> b!1617143 m!1938413))

(declare-fun m!1938421 () Bool)

(assert (=> b!1617143 m!1938421))

(declare-fun m!1938423 () Bool)

(assert (=> bm!104928 m!1938423))

(assert (=> b!1617141 m!1938405))

(assert (=> b!1617141 m!1938411))

(assert (=> b!1617141 m!1938411))

(assert (=> b!1617141 m!1938413))

(assert (=> b!1617136 m!1938405))

(declare-fun m!1938425 () Bool)

(assert (=> b!1617136 m!1938425))

(assert (=> b!1617136 m!1936733))

(assert (=> b!1616257 d!486610))

(declare-fun d!486612 () Bool)

(declare-fun charsToBigInt!1 (List!17771) Int)

(assert (=> d!486612 (= (inv!17 (value!98564 (h!23104 tokens!457))) (= (charsToBigInt!1 (text!22911 (value!98564 (h!23104 tokens!457)))) (value!98556 (value!98564 (h!23104 tokens!457)))))))

(declare-fun bs!394194 () Bool)

(assert (= bs!394194 d!486612))

(declare-fun m!1938427 () Bool)

(assert (=> bs!394194 m!1938427))

(assert (=> b!1616529 d!486612))

(declare-fun b!1617155 () Bool)

(declare-fun e!1037309 () List!17773)

(declare-fun list!6930 (IArray!11779) List!17773)

(assert (=> b!1617155 (= e!1037309 (list!6930 (xs!8715 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1617153 () Bool)

(declare-fun e!1037308 () List!17773)

(assert (=> b!1617153 (= e!1037308 Nil!17703)))

(declare-fun b!1617156 () Bool)

(declare-fun ++!4683 (List!17773 List!17773) List!17773)

(assert (=> b!1617156 (= e!1037309 (++!4683 (list!6928 (left!14252 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))))) (list!6928 (right!14582 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))))))))))

(declare-fun d!486614 () Bool)

(declare-fun c!263324 () Bool)

(assert (=> d!486614 (= c!263324 ((_ is Empty!5887) (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!486614 (= (list!6928 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))))) e!1037308)))

(declare-fun b!1617154 () Bool)

(assert (=> b!1617154 (= e!1037308 e!1037309)))

(declare-fun c!263325 () Bool)

(assert (=> b!1617154 (= c!263325 ((_ is Leaf!8667) (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457))))))))

(assert (= (and d!486614 c!263324) b!1617153))

(assert (= (and d!486614 (not c!263324)) b!1617154))

(assert (= (and b!1617154 c!263325) b!1617155))

(assert (= (and b!1617154 (not c!263325)) b!1617156))

(declare-fun m!1938429 () Bool)

(assert (=> b!1617155 m!1938429))

(declare-fun m!1938431 () Bool)

(assert (=> b!1617156 m!1938431))

(declare-fun m!1938433 () Bool)

(assert (=> b!1617156 m!1938433))

(assert (=> b!1617156 m!1938431))

(assert (=> b!1617156 m!1938433))

(declare-fun m!1938435 () Bool)

(assert (=> b!1617156 m!1938435))

(assert (=> d!486338 d!486614))

(declare-fun b!1617157 () Bool)

(declare-fun res!721937 () Bool)

(declare-fun e!1037310 () Bool)

(assert (=> b!1617157 (=> (not res!721937) (not e!1037310))))

(declare-fun lt!580048 () Option!3247)

(assert (=> b!1617157 (= res!721937 (< (size!14197 (_2!10020 (get!5079 lt!580048))) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1617158 () Bool)

(declare-fun e!1037311 () Bool)

(assert (=> b!1617158 (= e!1037311 e!1037310)))

(declare-fun res!721933 () Bool)

(assert (=> b!1617158 (=> (not res!721933) (not e!1037310))))

(assert (=> b!1617158 (= res!721933 (isDefined!2614 lt!580048))))

(declare-fun b!1617159 () Bool)

(declare-fun e!1037312 () Option!3247)

(declare-fun lt!580047 () Option!3247)

(declare-fun lt!580046 () Option!3247)

(assert (=> b!1617159 (= e!1037312 (ite (and ((_ is None!3246) lt!580047) ((_ is None!3246) lt!580046)) None!3246 (ite ((_ is None!3246) lt!580046) lt!580047 (ite ((_ is None!3246) lt!580047) lt!580046 (ite (>= (size!14194 (_1!10020 (v!24235 lt!580047))) (size!14194 (_1!10020 (v!24235 lt!580046)))) lt!580047 lt!580046)))))))

(declare-fun call!104934 () Option!3247)

(assert (=> b!1617159 (= lt!580047 call!104934)))

(assert (=> b!1617159 (= lt!580046 (maxPrefix!1312 thiss!17113 (t!148289 (t!148289 rules!1846)) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1617160 () Bool)

(declare-fun res!721936 () Bool)

(assert (=> b!1617160 (=> (not res!721936) (not e!1037310))))

(assert (=> b!1617160 (= res!721936 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580048)))) (_2!10020 (get!5079 lt!580048))) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1617161 () Bool)

(declare-fun res!721938 () Bool)

(assert (=> b!1617161 (=> (not res!721938) (not e!1037310))))

(assert (=> b!1617161 (= res!721938 (= (value!98564 (_1!10020 (get!5079 lt!580048))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580048)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580048)))))))))

(declare-fun b!1617162 () Bool)

(declare-fun res!721932 () Bool)

(assert (=> b!1617162 (=> (not res!721932) (not e!1037310))))

(assert (=> b!1617162 (= res!721932 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580048)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!580048)))))))

(declare-fun b!1617163 () Bool)

(assert (=> b!1617163 (= e!1037310 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!580048)))))))

(declare-fun bm!104929 () Bool)

(assert (=> bm!104929 (= call!104934 (maxPrefixOneRule!761 thiss!17113 (h!23105 (t!148289 rules!1846)) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun d!486616 () Bool)

(assert (=> d!486616 e!1037311))

(declare-fun res!721934 () Bool)

(assert (=> d!486616 (=> res!721934 e!1037311)))

(assert (=> d!486616 (= res!721934 (isEmpty!10719 lt!580048))))

(assert (=> d!486616 (= lt!580048 e!1037312)))

(declare-fun c!263326 () Bool)

(assert (=> d!486616 (= c!263326 (and ((_ is Cons!17704) (t!148289 rules!1846)) ((_ is Nil!17704) (t!148289 (t!148289 rules!1846)))))))

(declare-fun lt!580045 () Unit!28465)

(declare-fun lt!580044 () Unit!28465)

(assert (=> d!486616 (= lt!580045 lt!580044)))

(assert (=> d!486616 (isPrefix!1379 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457)))))

(assert (=> d!486616 (= lt!580044 (lemmaIsPrefixRefl!946 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!486616 (rulesValidInductive!958 thiss!17113 (t!148289 rules!1846))))

(assert (=> d!486616 (= (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (originalCharacters!3933 (h!23104 tokens!457))) lt!580048)))

(declare-fun b!1617164 () Bool)

(declare-fun res!721935 () Bool)

(assert (=> b!1617164 (=> (not res!721935) (not e!1037310))))

(assert (=> b!1617164 (= res!721935 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!580048)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580048))))))))

(declare-fun b!1617165 () Bool)

(assert (=> b!1617165 (= e!1037312 call!104934)))

(assert (= (and d!486616 c!263326) b!1617165))

(assert (= (and d!486616 (not c!263326)) b!1617159))

(assert (= (or b!1617165 b!1617159) bm!104929))

(assert (= (and d!486616 (not res!721934)) b!1617158))

(assert (= (and b!1617158 res!721933) b!1617162))

(assert (= (and b!1617162 res!721932) b!1617157))

(assert (= (and b!1617157 res!721937) b!1617160))

(assert (= (and b!1617160 res!721936) b!1617161))

(assert (= (and b!1617161 res!721938) b!1617164))

(assert (= (and b!1617164 res!721935) b!1617163))

(declare-fun m!1938437 () Bool)

(assert (=> d!486616 m!1938437))

(assert (=> d!486616 m!1936671))

(assert (=> d!486616 m!1936673))

(assert (=> d!486616 m!1938401))

(declare-fun m!1938439 () Bool)

(assert (=> b!1617158 m!1938439))

(declare-fun m!1938441 () Bool)

(assert (=> b!1617161 m!1938441))

(declare-fun m!1938443 () Bool)

(assert (=> b!1617161 m!1938443))

(assert (=> b!1617161 m!1938443))

(declare-fun m!1938445 () Bool)

(assert (=> b!1617161 m!1938445))

(assert (=> b!1617160 m!1938441))

(declare-fun m!1938447 () Bool)

(assert (=> b!1617160 m!1938447))

(assert (=> b!1617160 m!1938447))

(declare-fun m!1938449 () Bool)

(assert (=> b!1617160 m!1938449))

(assert (=> b!1617160 m!1938449))

(declare-fun m!1938451 () Bool)

(assert (=> b!1617160 m!1938451))

(declare-fun m!1938453 () Bool)

(assert (=> b!1617159 m!1938453))

(assert (=> b!1617163 m!1938441))

(declare-fun m!1938455 () Bool)

(assert (=> b!1617163 m!1938455))

(assert (=> b!1617164 m!1938441))

(assert (=> b!1617164 m!1938447))

(assert (=> b!1617164 m!1938447))

(assert (=> b!1617164 m!1938449))

(assert (=> b!1617164 m!1938449))

(declare-fun m!1938457 () Bool)

(assert (=> b!1617164 m!1938457))

(declare-fun m!1938459 () Bool)

(assert (=> bm!104929 m!1938459))

(assert (=> b!1617162 m!1938441))

(assert (=> b!1617162 m!1938447))

(assert (=> b!1617162 m!1938447))

(assert (=> b!1617162 m!1938449))

(assert (=> b!1617157 m!1938441))

(declare-fun m!1938461 () Bool)

(assert (=> b!1617157 m!1938461))

(assert (=> b!1617157 m!1936701))

(assert (=> b!1616248 d!486616))

(declare-fun d!486618 () Bool)

(declare-fun e!1037314 () Bool)

(assert (=> d!486618 e!1037314))

(declare-fun res!721939 () Bool)

(assert (=> d!486618 (=> (not res!721939) (not e!1037314))))

(declare-fun lt!580049 () List!17772)

(assert (=> d!486618 (= res!721939 (= (content!2450 lt!580049) ((_ map or) (content!2450 (t!148287 lt!579274)) (content!2450 lt!579264))))))

(declare-fun e!1037313 () List!17772)

(assert (=> d!486618 (= lt!580049 e!1037313)))

(declare-fun c!263327 () Bool)

(assert (=> d!486618 (= c!263327 ((_ is Nil!17702) (t!148287 lt!579274)))))

(assert (=> d!486618 (= (++!4680 (t!148287 lt!579274) lt!579264) lt!580049)))

(declare-fun b!1617166 () Bool)

(assert (=> b!1617166 (= e!1037313 lt!579264)))

(declare-fun b!1617169 () Bool)

(assert (=> b!1617169 (= e!1037314 (or (not (= lt!579264 Nil!17702)) (= lt!580049 (t!148287 lt!579274))))))

(declare-fun b!1617167 () Bool)

(assert (=> b!1617167 (= e!1037313 (Cons!17702 (h!23103 (t!148287 lt!579274)) (++!4680 (t!148287 (t!148287 lt!579274)) lt!579264)))))

(declare-fun b!1617168 () Bool)

(declare-fun res!721940 () Bool)

(assert (=> b!1617168 (=> (not res!721940) (not e!1037314))))

(assert (=> b!1617168 (= res!721940 (= (size!14197 lt!580049) (+ (size!14197 (t!148287 lt!579274)) (size!14197 lt!579264))))))

(assert (= (and d!486618 c!263327) b!1617166))

(assert (= (and d!486618 (not c!263327)) b!1617167))

(assert (= (and d!486618 res!721939) b!1617168))

(assert (= (and b!1617168 res!721940) b!1617169))

(declare-fun m!1938463 () Bool)

(assert (=> d!486618 m!1938463))

(declare-fun m!1938465 () Bool)

(assert (=> d!486618 m!1938465))

(assert (=> d!486618 m!1936777))

(declare-fun m!1938467 () Bool)

(assert (=> b!1617167 m!1938467))

(declare-fun m!1938469 () Bool)

(assert (=> b!1617168 m!1938469))

(declare-fun m!1938471 () Bool)

(assert (=> b!1617168 m!1938471))

(assert (=> b!1617168 m!1936783))

(assert (=> b!1616292 d!486618))

(declare-fun d!486620 () Bool)

(assert (=> d!486620 (= (isEmpty!10719 lt!579346) (not ((_ is Some!3246) lt!579346)))))

(assert (=> d!486206 d!486620))

(declare-fun d!486622 () Bool)

(declare-fun e!1037315 () Bool)

(assert (=> d!486622 e!1037315))

(declare-fun res!721943 () Bool)

(assert (=> d!486622 (=> res!721943 e!1037315)))

(declare-fun lt!580050 () Bool)

(assert (=> d!486622 (= res!721943 (not lt!580050))))

(declare-fun e!1037316 () Bool)

(assert (=> d!486622 (= lt!580050 e!1037316)))

(declare-fun res!721944 () Bool)

(assert (=> d!486622 (=> res!721944 e!1037316)))

(assert (=> d!486622 (= res!721944 ((_ is Nil!17702) lt!579274))))

(assert (=> d!486622 (= (isPrefix!1379 lt!579274 lt!579274) lt!580050)))

(declare-fun b!1617171 () Bool)

(declare-fun res!721942 () Bool)

(declare-fun e!1037317 () Bool)

(assert (=> b!1617171 (=> (not res!721942) (not e!1037317))))

(assert (=> b!1617171 (= res!721942 (= (head!3362 lt!579274) (head!3362 lt!579274)))))

(declare-fun b!1617170 () Bool)

(assert (=> b!1617170 (= e!1037316 e!1037317)))

(declare-fun res!721941 () Bool)

(assert (=> b!1617170 (=> (not res!721941) (not e!1037317))))

(assert (=> b!1617170 (= res!721941 (not ((_ is Nil!17702) lt!579274)))))

(declare-fun b!1617173 () Bool)

(assert (=> b!1617173 (= e!1037315 (>= (size!14197 lt!579274) (size!14197 lt!579274)))))

(declare-fun b!1617172 () Bool)

(assert (=> b!1617172 (= e!1037317 (isPrefix!1379 (tail!2332 lt!579274) (tail!2332 lt!579274)))))

(assert (= (and d!486622 (not res!721944)) b!1617170))

(assert (= (and b!1617170 res!721941) b!1617171))

(assert (= (and b!1617171 res!721942) b!1617172))

(assert (= (and d!486622 (not res!721943)) b!1617173))

(assert (=> b!1617171 m!1937001))

(assert (=> b!1617171 m!1937001))

(assert (=> b!1617173 m!1936733))

(assert (=> b!1617173 m!1936733))

(assert (=> b!1617172 m!1937007))

(assert (=> b!1617172 m!1937007))

(assert (=> b!1617172 m!1937007))

(assert (=> b!1617172 m!1937007))

(declare-fun m!1938473 () Bool)

(assert (=> b!1617172 m!1938473))

(assert (=> d!486206 d!486622))

(declare-fun d!486624 () Bool)

(assert (=> d!486624 (isPrefix!1379 lt!579274 lt!579274)))

(declare-fun lt!580053 () Unit!28465)

(declare-fun choose!9729 (List!17772 List!17772) Unit!28465)

(assert (=> d!486624 (= lt!580053 (choose!9729 lt!579274 lt!579274))))

(assert (=> d!486624 (= (lemmaIsPrefixRefl!946 lt!579274 lt!579274) lt!580053)))

(declare-fun bs!394195 () Bool)

(assert (= bs!394195 d!486624))

(assert (=> bs!394195 m!1936705))

(declare-fun m!1938475 () Bool)

(assert (=> bs!394195 m!1938475))

(assert (=> d!486206 d!486624))

(declare-fun d!486626 () Bool)

(assert (=> d!486626 true))

(declare-fun lt!580056 () Bool)

(declare-fun lambda!67116 () Int)

(declare-fun forall!4064 (List!17774 Int) Bool)

(assert (=> d!486626 (= lt!580056 (forall!4064 rules!1846 lambda!67116))))

(declare-fun e!1037322 () Bool)

(assert (=> d!486626 (= lt!580056 e!1037322)))

(declare-fun res!721950 () Bool)

(assert (=> d!486626 (=> res!721950 e!1037322)))

(assert (=> d!486626 (= res!721950 (not ((_ is Cons!17704) rules!1846)))))

(assert (=> d!486626 (= (rulesValidInductive!958 thiss!17113 rules!1846) lt!580056)))

(declare-fun b!1617178 () Bool)

(declare-fun e!1037323 () Bool)

(assert (=> b!1617178 (= e!1037322 e!1037323)))

(declare-fun res!721949 () Bool)

(assert (=> b!1617178 (=> (not res!721949) (not e!1037323))))

(declare-fun ruleValid!730 (LexerInterface!2748 Rule!6038) Bool)

(assert (=> b!1617178 (= res!721949 (ruleValid!730 thiss!17113 (h!23105 rules!1846)))))

(declare-fun b!1617179 () Bool)

(assert (=> b!1617179 (= e!1037323 (rulesValidInductive!958 thiss!17113 (t!148289 rules!1846)))))

(assert (= (and d!486626 (not res!721950)) b!1617178))

(assert (= (and b!1617178 res!721949) b!1617179))

(declare-fun m!1938477 () Bool)

(assert (=> d!486626 m!1938477))

(declare-fun m!1938479 () Bool)

(assert (=> b!1617178 m!1938479))

(assert (=> b!1617179 m!1938401))

(assert (=> d!486206 d!486626))

(declare-fun d!486628 () Bool)

(declare-fun lt!580057 () Int)

(assert (=> d!486628 (>= lt!580057 0)))

(declare-fun e!1037324 () Int)

(assert (=> d!486628 (= lt!580057 e!1037324)))

(declare-fun c!263328 () Bool)

(assert (=> d!486628 (= c!263328 ((_ is Nil!17702) lt!579275))))

(assert (=> d!486628 (= (size!14197 lt!579275) lt!580057)))

(declare-fun b!1617182 () Bool)

(assert (=> b!1617182 (= e!1037324 0)))

(declare-fun b!1617183 () Bool)

(assert (=> b!1617183 (= e!1037324 (+ 1 (size!14197 (t!148287 lt!579275))))))

(assert (= (and d!486628 c!263328) b!1617182))

(assert (= (and d!486628 (not c!263328)) b!1617183))

(declare-fun m!1938481 () Bool)

(assert (=> b!1617183 m!1938481))

(assert (=> b!1616398 d!486628))

(declare-fun d!486630 () Bool)

(declare-fun lt!580058 () Int)

(assert (=> d!486630 (>= lt!580058 0)))

(declare-fun e!1037325 () Int)

(assert (=> d!486630 (= lt!580058 e!1037325)))

(declare-fun c!263329 () Bool)

(assert (=> d!486630 (= c!263329 ((_ is Nil!17702) lt!579274))))

(assert (=> d!486630 (= (size!14197 lt!579274) lt!580058)))

(declare-fun b!1617184 () Bool)

(assert (=> b!1617184 (= e!1037325 0)))

(declare-fun b!1617185 () Bool)

(assert (=> b!1617185 (= e!1037325 (+ 1 (size!14197 (t!148287 lt!579274))))))

(assert (= (and d!486630 c!263329) b!1617184))

(assert (= (and d!486630 (not c!263329)) b!1617185))

(assert (=> b!1617185 m!1938471))

(assert (=> b!1616398 d!486630))

(declare-fun d!486632 () Bool)

(assert (=> d!486632 (= (list!6923 lt!579700) (list!6928 (c!263123 lt!579700)))))

(declare-fun bs!394196 () Bool)

(assert (= bs!394196 d!486632))

(declare-fun m!1938483 () Bool)

(assert (=> bs!394196 m!1938483))

(assert (=> b!1616567 d!486632))

(declare-fun d!486634 () Bool)

(assert (=> d!486634 (= (list!6923 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (list!6928 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))))

(declare-fun bs!394197 () Bool)

(assert (= bs!394197 d!486634))

(declare-fun m!1938485 () Bool)

(assert (=> bs!394197 m!1938485))

(assert (=> b!1616567 d!486634))

(declare-fun d!486636 () Bool)

(assert (=> d!486636 (= (list!6923 (_1!10019 lt!579697)) (list!6928 (c!263123 (_1!10019 lt!579697))))))

(declare-fun bs!394198 () Bool)

(assert (= bs!394198 d!486636))

(declare-fun m!1938487 () Bool)

(assert (=> bs!394198 m!1938487))

(assert (=> b!1616564 d!486636))

(declare-fun b!1617196 () Bool)

(declare-fun e!1037333 () Bool)

(declare-fun lt!580065 () tuple2!17242)

(assert (=> b!1617196 (= e!1037333 (= (_2!10023 lt!580065) (list!6924 (seqFromList!1988 lt!579274))))))

(declare-fun b!1617197 () Bool)

(declare-fun e!1037332 () Bool)

(assert (=> b!1617197 (= e!1037333 e!1037332)))

(declare-fun res!721953 () Bool)

(assert (=> b!1617197 (= res!721953 (< (size!14197 (_2!10023 lt!580065)) (size!14197 (list!6924 (seqFromList!1988 lt!579274)))))))

(assert (=> b!1617197 (=> (not res!721953) (not e!1037332))))

(declare-fun b!1617198 () Bool)

(assert (=> b!1617198 (= e!1037332 (not (isEmpty!10724 (_1!10023 lt!580065))))))

(declare-fun d!486638 () Bool)

(assert (=> d!486638 e!1037333))

(declare-fun c!263334 () Bool)

(declare-fun size!14204 (List!17773) Int)

(assert (=> d!486638 (= c!263334 (> (size!14204 (_1!10023 lt!580065)) 0))))

(declare-fun e!1037334 () tuple2!17242)

(assert (=> d!486638 (= lt!580065 e!1037334)))

(declare-fun c!263335 () Bool)

(declare-fun lt!580067 () Option!3247)

(assert (=> d!486638 (= c!263335 ((_ is Some!3246) lt!580067))))

(assert (=> d!486638 (= lt!580067 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 lt!579274))))))

(assert (=> d!486638 (= (lexList!815 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 lt!579274))) lt!580065)))

(declare-fun b!1617199 () Bool)

(declare-fun lt!580066 () tuple2!17242)

(assert (=> b!1617199 (= e!1037334 (tuple2!17243 (Cons!17703 (_1!10020 (v!24235 lt!580067)) (_1!10023 lt!580066)) (_2!10023 lt!580066)))))

(assert (=> b!1617199 (= lt!580066 (lexList!815 thiss!17113 rules!1846 (_2!10020 (v!24235 lt!580067))))))

(declare-fun b!1617200 () Bool)

(assert (=> b!1617200 (= e!1037334 (tuple2!17243 Nil!17703 (list!6924 (seqFromList!1988 lt!579274))))))

(assert (= (and d!486638 c!263335) b!1617199))

(assert (= (and d!486638 (not c!263335)) b!1617200))

(assert (= (and d!486638 c!263334) b!1617197))

(assert (= (and d!486638 (not c!263334)) b!1617196))

(assert (= (and b!1617197 res!721953) b!1617198))

(declare-fun m!1938489 () Bool)

(assert (=> b!1617197 m!1938489))

(assert (=> b!1617197 m!1937363))

(declare-fun m!1938491 () Bool)

(assert (=> b!1617197 m!1938491))

(declare-fun m!1938493 () Bool)

(assert (=> b!1617198 m!1938493))

(declare-fun m!1938495 () Bool)

(assert (=> d!486638 m!1938495))

(assert (=> d!486638 m!1937363))

(declare-fun m!1938497 () Bool)

(assert (=> d!486638 m!1938497))

(declare-fun m!1938499 () Bool)

(assert (=> b!1617199 m!1938499))

(assert (=> b!1616564 d!486638))

(declare-fun d!486640 () Bool)

(assert (=> d!486640 (= (list!6924 (seqFromList!1988 lt!579274)) (list!6927 (c!263121 (seqFromList!1988 lt!579274))))))

(declare-fun bs!394199 () Bool)

(assert (= bs!394199 d!486640))

(declare-fun m!1938501 () Bool)

(assert (=> bs!394199 m!1938501))

(assert (=> b!1616564 d!486640))

(declare-fun d!486642 () Bool)

(declare-fun lostCauseFct!158 (Regex!4447) Bool)

(assert (=> d!486642 (= (lostCause!423 lt!579263) (lostCauseFct!158 lt!579263))))

(declare-fun bs!394200 () Bool)

(assert (= bs!394200 d!486642))

(declare-fun m!1938503 () Bool)

(assert (=> bs!394200 m!1938503))

(assert (=> b!1616274 d!486642))

(assert (=> b!1616479 d!486592))

(declare-fun d!486644 () Bool)

(declare-fun lt!580117 () Option!3247)

(assert (=> d!486644 (= lt!580117 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun e!1037368 () Option!3247)

(assert (=> d!486644 (= lt!580117 e!1037368)))

(declare-fun c!263341 () Bool)

(assert (=> d!486644 (= c!263341 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!580116 () Unit!28465)

(declare-fun lt!580118 () Unit!28465)

(assert (=> d!486644 (= lt!580116 lt!580118)))

(assert (=> d!486644 (isPrefix!1379 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!486644 (= lt!580118 (lemmaIsPrefixRefl!946 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(assert (=> d!486644 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486644 (= (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))) lt!580117)))

(declare-fun call!104937 () Option!3247)

(declare-fun bm!104932 () Bool)

(declare-fun maxPrefixOneRuleZipper!105 (LexerInterface!2748 Rule!6038 List!17772) Option!3247)

(assert (=> bm!104932 (= call!104937 (maxPrefixOneRuleZipper!105 thiss!17113 (h!23105 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(declare-fun b!1617242 () Bool)

(assert (=> b!1617242 (= e!1037368 call!104937)))

(declare-fun b!1617243 () Bool)

(declare-fun lt!580119 () Option!3247)

(declare-fun lt!580115 () Option!3247)

(assert (=> b!1617243 (= e!1037368 (ite (and ((_ is None!3246) lt!580119) ((_ is None!3246) lt!580115)) None!3246 (ite ((_ is None!3246) lt!580115) lt!580119 (ite ((_ is None!3246) lt!580119) lt!580115 (ite (>= (size!14194 (_1!10020 (v!24235 lt!580119))) (size!14194 (_1!10020 (v!24235 lt!580115)))) lt!580119 lt!580115)))))))

(assert (=> b!1617243 (= lt!580119 call!104937)))

(assert (=> b!1617243 (= lt!580115 (maxPrefixZipper!292 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))

(assert (= (and d!486644 c!263341) b!1617242))

(assert (= (and d!486644 (not c!263341)) b!1617243))

(assert (= (or b!1617242 b!1617243) bm!104932))

(assert (=> d!486644 m!1937235))

(assert (=> d!486644 m!1937241))

(assert (=> d!486644 m!1937235))

(assert (=> d!486644 m!1937235))

(assert (=> d!486644 m!1938351))

(assert (=> d!486644 m!1937235))

(assert (=> d!486644 m!1937235))

(assert (=> d!486644 m!1938357))

(assert (=> d!486644 m!1936675))

(assert (=> bm!104932 m!1937235))

(declare-fun m!1938561 () Bool)

(assert (=> bm!104932 m!1938561))

(assert (=> b!1617243 m!1937235))

(declare-fun m!1938563 () Bool)

(assert (=> b!1617243 m!1938563))

(assert (=> b!1616479 d!486644))

(declare-fun d!486662 () Bool)

(assert (=> d!486662 (= (get!5079 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))) (v!24235 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(assert (=> b!1616479 d!486662))

(assert (=> b!1616479 d!486598))

(assert (=> b!1616479 d!486596))

(declare-fun b!1617262 () Bool)

(declare-fun e!1037392 () Bool)

(declare-fun e!1037389 () Bool)

(assert (=> b!1617262 (= e!1037392 e!1037389)))

(declare-fun res!721999 () Bool)

(assert (=> b!1617262 (=> (not res!721999) (not e!1037389))))

(declare-fun appendAssoc!105 (List!17772 List!17772 List!17772) Bool)

(assert (=> b!1617262 (= res!721999 (appendAssoc!105 (list!6927 (left!14251 (right!14581 (c!263121 lt!579279)))) (list!6927 (right!14581 (right!14581 (c!263121 lt!579279)))) (list!6927 (c!263121 lt!579270))))))

(declare-fun b!1617263 () Bool)

(declare-fun e!1037393 () Bool)

(declare-fun e!1037388 () Bool)

(assert (=> b!1617263 (= e!1037393 e!1037388)))

(declare-fun res!722002 () Bool)

(assert (=> b!1617263 (=> res!722002 e!1037388)))

(assert (=> b!1617263 (= res!722002 (not ((_ is Node!5886) (left!14251 (c!263121 lt!579270)))))))

(declare-fun b!1617264 () Bool)

(declare-fun e!1037390 () Bool)

(assert (=> b!1617264 (= e!1037390 (appendAssoc!105 (++!4680 (list!6927 (c!263121 lt!579279)) (list!6927 (left!14251 (left!14251 (c!263121 lt!579270))))) (list!6927 (right!14581 (left!14251 (c!263121 lt!579270)))) (list!6927 (right!14581 (c!263121 lt!579270)))))))

(declare-fun b!1617265 () Bool)

(declare-fun e!1037387 () Bool)

(assert (=> b!1617265 (= e!1037387 e!1037392)))

(declare-fun res!722000 () Bool)

(assert (=> b!1617265 (=> res!722000 e!1037392)))

(assert (=> b!1617265 (= res!722000 (not ((_ is Node!5886) (right!14581 (c!263121 lt!579279)))))))

(declare-fun b!1617266 () Bool)

(declare-fun e!1037391 () Bool)

(assert (=> b!1617266 (= e!1037391 e!1037393)))

(declare-fun res!721995 () Bool)

(assert (=> b!1617266 (=> (not res!721995) (not e!1037393))))

(assert (=> b!1617266 (= res!721995 (appendAssoc!105 (list!6927 (c!263121 lt!579279)) (list!6927 (left!14251 (c!263121 lt!579270))) (list!6927 (right!14581 (c!263121 lt!579270)))))))

(declare-fun b!1617267 () Bool)

(declare-fun e!1037395 () Bool)

(assert (=> b!1617267 (= e!1037395 e!1037391)))

(declare-fun res!722003 () Bool)

(assert (=> b!1617267 (=> res!722003 e!1037391)))

(assert (=> b!1617267 (= res!722003 (not ((_ is Node!5886) (c!263121 lt!579270))))))

(declare-fun b!1617268 () Bool)

(assert (=> b!1617268 (= e!1037389 (appendAssoc!105 (list!6927 (left!14251 (c!263121 lt!579279))) (list!6927 (left!14251 (right!14581 (c!263121 lt!579279)))) (++!4680 (list!6927 (right!14581 (right!14581 (c!263121 lt!579279)))) (list!6927 (c!263121 lt!579270)))))))

(declare-fun b!1617269 () Bool)

(assert (=> b!1617269 (= e!1037388 e!1037390)))

(declare-fun res!721998 () Bool)

(assert (=> b!1617269 (=> (not res!721998) (not e!1037390))))

(assert (=> b!1617269 (= res!721998 (appendAssoc!105 (list!6927 (c!263121 lt!579279)) (list!6927 (left!14251 (left!14251 (c!263121 lt!579270)))) (list!6927 (right!14581 (left!14251 (c!263121 lt!579270))))))))

(declare-fun d!486666 () Bool)

(assert (=> d!486666 e!1037395))

(declare-fun res!721997 () Bool)

(assert (=> d!486666 (=> (not res!721997) (not e!1037395))))

(declare-fun e!1037394 () Bool)

(assert (=> d!486666 (= res!721997 e!1037394)))

(declare-fun res!721996 () Bool)

(assert (=> d!486666 (=> res!721996 e!1037394)))

(assert (=> d!486666 (= res!721996 (not ((_ is Node!5886) (c!263121 lt!579279))))))

(assert (=> d!486666 (= (appendAssocInst!421 (c!263121 lt!579279) (c!263121 lt!579270)) true)))

(declare-fun b!1617270 () Bool)

(assert (=> b!1617270 (= e!1037394 e!1037387)))

(declare-fun res!722001 () Bool)

(assert (=> b!1617270 (=> (not res!722001) (not e!1037387))))

(assert (=> b!1617270 (= res!722001 (appendAssoc!105 (list!6927 (left!14251 (c!263121 lt!579279))) (list!6927 (right!14581 (c!263121 lt!579279))) (list!6927 (c!263121 lt!579270))))))

(assert (= (and d!486666 (not res!721996)) b!1617270))

(assert (= (and b!1617270 res!722001) b!1617265))

(assert (= (and b!1617265 (not res!722000)) b!1617262))

(assert (= (and b!1617262 res!721999) b!1617268))

(assert (= (and d!486666 res!721997) b!1617267))

(assert (= (and b!1617267 (not res!722003)) b!1617266))

(assert (= (and b!1617266 res!721995) b!1617263))

(assert (= (and b!1617263 (not res!722002)) b!1617269))

(assert (= (and b!1617269 res!721998) b!1617264))

(declare-fun m!1938567 () Bool)

(assert (=> b!1617262 m!1938567))

(declare-fun m!1938569 () Bool)

(assert (=> b!1617262 m!1938569))

(assert (=> b!1617262 m!1936785))

(assert (=> b!1617262 m!1938567))

(assert (=> b!1617262 m!1938569))

(assert (=> b!1617262 m!1936785))

(declare-fun m!1938571 () Bool)

(assert (=> b!1617262 m!1938571))

(declare-fun m!1938573 () Bool)

(assert (=> b!1617270 m!1938573))

(declare-fun m!1938575 () Bool)

(assert (=> b!1617270 m!1938575))

(assert (=> b!1617270 m!1936785))

(assert (=> b!1617270 m!1938573))

(assert (=> b!1617270 m!1938575))

(assert (=> b!1617270 m!1936785))

(declare-fun m!1938577 () Bool)

(assert (=> b!1617270 m!1938577))

(declare-fun m!1938579 () Bool)

(assert (=> b!1617264 m!1938579))

(declare-fun m!1938581 () Bool)

(assert (=> b!1617264 m!1938581))

(declare-fun m!1938583 () Bool)

(assert (=> b!1617264 m!1938583))

(declare-fun m!1938585 () Bool)

(assert (=> b!1617264 m!1938585))

(assert (=> b!1617264 m!1937541))

(declare-fun m!1938587 () Bool)

(assert (=> b!1617264 m!1938587))

(assert (=> b!1617264 m!1938581))

(assert (=> b!1617264 m!1938583))

(assert (=> b!1617264 m!1937541))

(assert (=> b!1617264 m!1938587))

(assert (=> b!1617264 m!1938579))

(assert (=> b!1617268 m!1938573))

(assert (=> b!1617268 m!1938567))

(assert (=> b!1617268 m!1936785))

(assert (=> b!1617268 m!1938569))

(assert (=> b!1617268 m!1938573))

(assert (=> b!1617268 m!1938567))

(declare-fun m!1938589 () Bool)

(assert (=> b!1617268 m!1938589))

(declare-fun m!1938591 () Bool)

(assert (=> b!1617268 m!1938591))

(assert (=> b!1617268 m!1938569))

(assert (=> b!1617268 m!1936785))

(assert (=> b!1617268 m!1938589))

(assert (=> b!1617266 m!1937541))

(declare-fun m!1938593 () Bool)

(assert (=> b!1617266 m!1938593))

(assert (=> b!1617266 m!1938583))

(assert (=> b!1617266 m!1937541))

(assert (=> b!1617266 m!1938593))

(assert (=> b!1617266 m!1938583))

(declare-fun m!1938595 () Bool)

(assert (=> b!1617266 m!1938595))

(assert (=> b!1617269 m!1937541))

(assert (=> b!1617269 m!1938587))

(assert (=> b!1617269 m!1938581))

(assert (=> b!1617269 m!1937541))

(assert (=> b!1617269 m!1938587))

(assert (=> b!1617269 m!1938581))

(declare-fun m!1938597 () Bool)

(assert (=> b!1617269 m!1938597))

(assert (=> d!486304 d!486666))

(declare-fun bm!104968 () Bool)

(declare-fun call!104980 () Conc!5886)

(declare-fun call!104977 () Conc!5886)

(assert (=> bm!104968 (= call!104980 call!104977)))

(declare-fun bm!104969 () Bool)

(declare-fun call!104987 () Conc!5886)

(declare-fun call!104983 () Conc!5886)

(assert (=> bm!104969 (= call!104987 call!104983)))

(declare-fun b!1617361 () Bool)

(declare-fun e!1037449 () Conc!5886)

(declare-fun e!1037450 () Conc!5886)

(assert (=> b!1617361 (= e!1037449 e!1037450)))

(declare-fun c!263381 () Bool)

(declare-fun lt!580150 () Int)

(assert (=> b!1617361 (= c!263381 (< lt!580150 (- 1)))))

(declare-fun c!263379 () Bool)

(declare-fun call!104979 () Conc!5886)

(declare-fun call!104984 () Conc!5886)

(declare-fun lt!580149 () Conc!5886)

(declare-fun c!263378 () Bool)

(declare-fun c!263377 () Bool)

(declare-fun lt!580152 () Conc!5886)

(declare-fun call!104976 () Conc!5886)

(declare-fun bm!104970 () Bool)

(declare-fun <>!138 (Conc!5886 Conc!5886) Conc!5886)

(assert (=> bm!104970 (= call!104979 (<>!138 (ite c!263379 (c!263121 lt!579279) (ite c!263381 (ite c!263377 (left!14251 (c!263121 lt!579279)) call!104984) (ite c!263378 call!104976 lt!580152))) (ite c!263379 (c!263121 lt!579270) (ite c!263381 (ite c!263377 call!104984 lt!580149) (ite c!263378 (right!14581 (c!263121 lt!579270)) call!104976)))))))

(declare-fun bm!104971 () Bool)

(assert (=> bm!104971 (= call!104977 call!104979)))

(declare-fun b!1617362 () Bool)

(declare-fun e!1037448 () Conc!5886)

(assert (=> b!1617362 (= e!1037448 call!104987)))

(declare-fun d!486668 () Bool)

(declare-fun e!1037442 () Bool)

(assert (=> d!486668 e!1037442))

(declare-fun res!722023 () Bool)

(assert (=> d!486668 (=> (not res!722023) (not e!1037442))))

(assert (=> d!486668 (= res!722023 (appendAssocInst!421 (c!263121 lt!579279) (c!263121 lt!579270)))))

(declare-fun lt!580151 () Conc!5886)

(declare-fun e!1037444 () Conc!5886)

(assert (=> d!486668 (= lt!580151 e!1037444)))

(declare-fun c!263384 () Bool)

(assert (=> d!486668 (= c!263384 (= (c!263121 lt!579279) Empty!5886))))

(declare-fun e!1037451 () Bool)

(assert (=> d!486668 e!1037451))

(declare-fun res!722025 () Bool)

(assert (=> d!486668 (=> (not res!722025) (not e!1037451))))

(assert (=> d!486668 (= res!722025 (isBalanced!1762 (c!263121 lt!579279)))))

(assert (=> d!486668 (= (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)) lt!580151)))

(declare-fun b!1617363 () Bool)

(declare-fun res!722027 () Bool)

(assert (=> b!1617363 (=> (not res!722027) (not e!1037442))))

(assert (=> b!1617363 (= res!722027 (>= (height!889 lt!580151) (max!0 (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270)))))))

(declare-fun bm!104972 () Bool)

(declare-fun call!104973 () Conc!5886)

(assert (=> bm!104972 (= call!104973 call!104977)))

(declare-fun b!1617364 () Bool)

(declare-fun e!1037445 () Conc!5886)

(assert (=> b!1617364 (= e!1037444 e!1037445)))

(declare-fun c!263380 () Bool)

(assert (=> b!1617364 (= c!263380 (= (c!263121 lt!579270) Empty!5886))))

(declare-fun c!263382 () Bool)

(declare-fun c!263383 () Bool)

(declare-fun bm!104973 () Bool)

(declare-fun call!104978 () Conc!5886)

(assert (=> bm!104973 (= call!104978 (++!4682 (ite c!263381 (ite c!263382 (right!14581 (c!263121 lt!579279)) (right!14581 (right!14581 (c!263121 lt!579279)))) (c!263121 lt!579279)) (ite c!263381 (c!263121 lt!579270) (ite c!263383 (left!14251 (c!263121 lt!579270)) (left!14251 (left!14251 (c!263121 lt!579270)))))))))

(declare-fun b!1617365 () Bool)

(declare-fun e!1037443 () Conc!5886)

(assert (=> b!1617365 (= e!1037443 call!104973)))

(declare-fun call!104985 () Int)

(declare-fun bm!104974 () Bool)

(assert (=> bm!104974 (= call!104985 (height!889 (ite c!263381 (c!263121 lt!579279) (c!263121 lt!579270))))))

(declare-fun b!1617366 () Bool)

(declare-fun e!1037446 () Conc!5886)

(assert (=> b!1617366 (= e!1037446 call!104980)))

(declare-fun b!1617367 () Bool)

(declare-fun call!104975 () Int)

(declare-fun call!104981 () Int)

(assert (=> b!1617367 (= c!263382 (>= call!104975 call!104981))))

(assert (=> b!1617367 (= e!1037450 e!1037448)))

(declare-fun b!1617368 () Bool)

(declare-fun res!722024 () Bool)

(assert (=> b!1617368 (=> (not res!722024) (not e!1037442))))

(assert (=> b!1617368 (= res!722024 (isBalanced!1762 lt!580151))))

(declare-fun b!1617369 () Bool)

(assert (=> b!1617369 (= e!1037448 e!1037443)))

(declare-fun call!104986 () Conc!5886)

(assert (=> b!1617369 (= lt!580149 call!104986)))

(declare-fun call!104988 () Int)

(assert (=> b!1617369 (= c!263377 (= call!104988 (- call!104985 3)))))

(declare-fun bm!104975 () Bool)

(assert (=> bm!104975 (= call!104988 (height!889 (ite c!263381 lt!580149 (left!14251 (c!263121 lt!579270)))))))

(declare-fun b!1617370 () Bool)

(assert (=> b!1617370 (= e!1037451 (isBalanced!1762 (c!263121 lt!579270)))))

(declare-fun b!1617371 () Bool)

(assert (=> b!1617371 (= e!1037443 call!104973)))

(declare-fun bm!104976 () Bool)

(declare-fun call!104974 () Conc!5886)

(assert (=> bm!104976 (= call!104974 call!104983)))

(declare-fun b!1617372 () Bool)

(assert (=> b!1617372 (= e!1037444 (c!263121 lt!579270))))

(declare-fun bm!104977 () Bool)

(assert (=> bm!104977 (= call!104986 call!104978)))

(declare-fun b!1617373 () Bool)

(assert (=> b!1617373 (= c!263379 (and (<= (- 1) lt!580150) (<= lt!580150 1)))))

(assert (=> b!1617373 (= lt!580150 (- (height!889 (c!263121 lt!579270)) (height!889 (c!263121 lt!579279))))))

(assert (=> b!1617373 (= e!1037445 e!1037449)))

(declare-fun b!1617374 () Bool)

(declare-fun e!1037447 () Conc!5886)

(assert (=> b!1617374 (= e!1037447 e!1037446)))

(declare-fun call!104982 () Conc!5886)

(assert (=> b!1617374 (= lt!580152 call!104982)))

(assert (=> b!1617374 (= c!263378 (= call!104981 (- call!104985 3)))))

(declare-fun b!1617375 () Bool)

(assert (=> b!1617375 (= e!1037447 call!104974)))

(declare-fun bm!104978 () Bool)

(assert (=> bm!104978 (= call!104982 call!104978)))

(declare-fun b!1617376 () Bool)

(assert (=> b!1617376 (= e!1037449 call!104979)))

(declare-fun bm!104979 () Bool)

(assert (=> bm!104979 (= call!104983 (<>!138 (ite c!263381 (ite c!263382 (left!14251 (c!263121 lt!579279)) (ite c!263377 (left!14251 (right!14581 (c!263121 lt!579279))) (left!14251 (c!263121 lt!579279)))) (ite c!263383 call!104982 (ite c!263378 lt!580152 (right!14581 (left!14251 (c!263121 lt!579270)))))) (ite c!263381 (ite c!263382 call!104986 (ite c!263377 lt!580149 (left!14251 (right!14581 (c!263121 lt!579279))))) (ite c!263383 (right!14581 (c!263121 lt!579270)) (ite c!263378 (right!14581 (left!14251 (c!263121 lt!579270))) (right!14581 (c!263121 lt!579270)))))))))

(declare-fun bm!104980 () Bool)

(assert (=> bm!104980 (= call!104976 call!104974)))

(declare-fun b!1617377 () Bool)

(assert (=> b!1617377 (= e!1037446 call!104980)))

(declare-fun b!1617378 () Bool)

(assert (=> b!1617378 (= e!1037445 (c!263121 lt!579279))))

(declare-fun bm!104981 () Bool)

(assert (=> bm!104981 (= call!104984 call!104987)))

(declare-fun b!1617379 () Bool)

(declare-fun res!722026 () Bool)

(assert (=> b!1617379 (=> (not res!722026) (not e!1037442))))

(assert (=> b!1617379 (= res!722026 (<= (height!889 lt!580151) (+ (max!0 (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270))) 1)))))

(declare-fun bm!104982 () Bool)

(assert (=> bm!104982 (= call!104975 (height!889 (ite c!263381 (left!14251 (c!263121 lt!579279)) (right!14581 (c!263121 lt!579270)))))))

(declare-fun bm!104983 () Bool)

(assert (=> bm!104983 (= call!104981 (height!889 (ite c!263381 (right!14581 (c!263121 lt!579279)) lt!580152)))))

(declare-fun b!1617380 () Bool)

(assert (=> b!1617380 (= c!263383 (>= call!104975 call!104988))))

(assert (=> b!1617380 (= e!1037450 e!1037447)))

(declare-fun b!1617381 () Bool)

(assert (=> b!1617381 (= e!1037442 (= (list!6927 lt!580151) (++!4680 (list!6927 (c!263121 lt!579279)) (list!6927 (c!263121 lt!579270)))))))

(assert (= (and d!486668 res!722025) b!1617370))

(assert (= (and d!486668 c!263384) b!1617372))

(assert (= (and d!486668 (not c!263384)) b!1617364))

(assert (= (and b!1617364 c!263380) b!1617378))

(assert (= (and b!1617364 (not c!263380)) b!1617373))

(assert (= (and b!1617373 c!263379) b!1617376))

(assert (= (and b!1617373 (not c!263379)) b!1617361))

(assert (= (and b!1617361 c!263381) b!1617367))

(assert (= (and b!1617361 (not c!263381)) b!1617380))

(assert (= (and b!1617367 c!263382) b!1617362))

(assert (= (and b!1617367 (not c!263382)) b!1617369))

(assert (= (and b!1617369 c!263377) b!1617365))

(assert (= (and b!1617369 (not c!263377)) b!1617371))

(assert (= (or b!1617365 b!1617371) bm!104981))

(assert (= (or b!1617365 b!1617371) bm!104972))

(assert (= (or b!1617362 b!1617369) bm!104977))

(assert (= (or b!1617362 bm!104981) bm!104969))

(assert (= (and b!1617380 c!263383) b!1617375))

(assert (= (and b!1617380 (not c!263383)) b!1617374))

(assert (= (and b!1617374 c!263378) b!1617377))

(assert (= (and b!1617374 (not c!263378)) b!1617366))

(assert (= (or b!1617377 b!1617366) bm!104980))

(assert (= (or b!1617377 b!1617366) bm!104968))

(assert (= (or b!1617375 b!1617374) bm!104978))

(assert (= (or b!1617375 bm!104980) bm!104976))

(assert (= (or bm!104972 bm!104968) bm!104971))

(assert (= (or b!1617367 b!1617380) bm!104982))

(assert (= (or bm!104969 bm!104976) bm!104979))

(assert (= (or bm!104977 bm!104978) bm!104973))

(assert (= (or b!1617369 b!1617374) bm!104974))

(assert (= (or b!1617367 b!1617374) bm!104983))

(assert (= (or b!1617369 b!1617380) bm!104975))

(assert (= (or b!1617376 bm!104971) bm!104970))

(assert (= (and d!486668 res!722023) b!1617368))

(assert (= (and b!1617368 res!722024) b!1617379))

(assert (= (and b!1617379 res!722026) b!1617363))

(assert (= (and b!1617363 res!722027) b!1617381))

(declare-fun m!1938687 () Bool)

(assert (=> bm!104979 m!1938687))

(assert (=> d!486668 m!1937305))

(declare-fun m!1938689 () Bool)

(assert (=> d!486668 m!1938689))

(assert (=> b!1617373 m!1937295))

(assert (=> b!1617373 m!1937297))

(declare-fun m!1938691 () Bool)

(assert (=> b!1617368 m!1938691))

(declare-fun m!1938693 () Bool)

(assert (=> b!1617381 m!1938693))

(assert (=> b!1617381 m!1937541))

(assert (=> b!1617381 m!1936785))

(assert (=> b!1617381 m!1937541))

(assert (=> b!1617381 m!1936785))

(declare-fun m!1938695 () Bool)

(assert (=> b!1617381 m!1938695))

(declare-fun m!1938697 () Bool)

(assert (=> bm!104983 m!1938697))

(declare-fun m!1938699 () Bool)

(assert (=> b!1617379 m!1938699))

(assert (=> b!1617379 m!1937297))

(assert (=> b!1617379 m!1937295))

(assert (=> b!1617379 m!1937297))

(assert (=> b!1617379 m!1937295))

(assert (=> b!1617379 m!1937299))

(declare-fun m!1938701 () Bool)

(assert (=> bm!104970 m!1938701))

(assert (=> b!1617363 m!1938699))

(assert (=> b!1617363 m!1937297))

(assert (=> b!1617363 m!1937295))

(assert (=> b!1617363 m!1937297))

(assert (=> b!1617363 m!1937295))

(assert (=> b!1617363 m!1937299))

(declare-fun m!1938703 () Bool)

(assert (=> bm!104974 m!1938703))

(declare-fun m!1938705 () Bool)

(assert (=> bm!104982 m!1938705))

(declare-fun m!1938707 () Bool)

(assert (=> bm!104973 m!1938707))

(declare-fun m!1938709 () Bool)

(assert (=> bm!104975 m!1938709))

(declare-fun m!1938711 () Bool)

(assert (=> b!1617370 m!1938711))

(assert (=> d!486304 d!486668))

(declare-fun d!486704 () Bool)

(assert (=> d!486704 true))

(declare-fun lambda!67127 () Int)

(declare-fun order!10495 () Int)

(declare-fun dynLambda!7895 (Int Int) Int)

(assert (=> d!486704 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (dynLambda!7895 order!10495 lambda!67127))))

(declare-fun Forall2!512 (Int) Bool)

(assert (=> d!486704 (= (equivClasses!1127 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (Forall2!512 lambda!67127))))

(declare-fun bs!394211 () Bool)

(assert (= bs!394211 d!486704))

(declare-fun m!1938747 () Bool)

(assert (=> bs!394211 m!1938747))

(assert (=> b!1616534 d!486704))

(declare-fun d!486712 () Bool)

(declare-fun lt!580159 () Bool)

(assert (=> d!486712 (= lt!580159 (isEmpty!10724 (list!6923 (_1!10019 lt!579819))))))

(assert (=> d!486712 (= lt!580159 (isEmpty!10725 (c!263123 (_1!10019 lt!579819))))))

(assert (=> d!486712 (= (isEmpty!10715 (_1!10019 lt!579819)) lt!580159)))

(declare-fun bs!394212 () Bool)

(assert (= bs!394212 d!486712))

(assert (=> bs!394212 m!1937567))

(assert (=> bs!394212 m!1937567))

(declare-fun m!1938755 () Bool)

(assert (=> bs!394212 m!1938755))

(declare-fun m!1938757 () Bool)

(assert (=> bs!394212 m!1938757))

(assert (=> b!1616616 d!486712))

(declare-fun b!1617422 () Bool)

(declare-fun res!722051 () Bool)

(declare-fun e!1037469 () Bool)

(assert (=> b!1617422 (=> (not res!722051) (not e!1037469))))

(declare-fun height!890 (Conc!5887) Int)

(assert (=> b!1617422 (= res!722051 (<= (- (height!890 (left!14252 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))) (height!890 (right!14582 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))))) 1))))

(declare-fun b!1617423 () Bool)

(declare-fun res!722052 () Bool)

(assert (=> b!1617423 (=> (not res!722052) (not e!1037469))))

(assert (=> b!1617423 (= res!722052 (isBalanced!1761 (right!14582 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617424 () Bool)

(declare-fun e!1037470 () Bool)

(assert (=> b!1617424 (= e!1037470 e!1037469)))

(declare-fun res!722056 () Bool)

(assert (=> b!1617424 (=> (not res!722056) (not e!1037469))))

(assert (=> b!1617424 (= res!722056 (<= (- 1) (- (height!890 (left!14252 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))) (height!890 (right!14582 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))))))))

(declare-fun b!1617425 () Bool)

(declare-fun res!722053 () Bool)

(assert (=> b!1617425 (=> (not res!722053) (not e!1037469))))

(assert (=> b!1617425 (= res!722053 (isBalanced!1761 (left!14252 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617426 () Bool)

(assert (=> b!1617426 (= e!1037469 (not (isEmpty!10725 (right!14582 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))))))))

(declare-fun d!486718 () Bool)

(declare-fun res!722055 () Bool)

(assert (=> d!486718 (=> res!722055 e!1037470)))

(assert (=> d!486718 (= res!722055 (not ((_ is Node!5887) (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!486718 (= (isBalanced!1761 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))) e!1037470)))

(declare-fun b!1617427 () Bool)

(declare-fun res!722054 () Bool)

(assert (=> b!1617427 (=> (not res!722054) (not e!1037469))))

(assert (=> b!1617427 (= res!722054 (not (isEmpty!10725 (left!14252 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)))))))))

(assert (= (and d!486718 (not res!722055)) b!1617424))

(assert (= (and b!1617424 res!722056) b!1617422))

(assert (= (and b!1617422 res!722051) b!1617425))

(assert (= (and b!1617425 res!722053) b!1617423))

(assert (= (and b!1617423 res!722052) b!1617427))

(assert (= (and b!1617427 res!722054) b!1617426))

(declare-fun m!1938785 () Bool)

(assert (=> b!1617422 m!1938785))

(declare-fun m!1938787 () Bool)

(assert (=> b!1617422 m!1938787))

(declare-fun m!1938789 () Bool)

(assert (=> b!1617426 m!1938789))

(assert (=> b!1617424 m!1938785))

(assert (=> b!1617424 m!1938787))

(declare-fun m!1938791 () Bool)

(assert (=> b!1617425 m!1938791))

(declare-fun m!1938793 () Bool)

(assert (=> b!1617423 m!1938793))

(declare-fun m!1938795 () Bool)

(assert (=> b!1617427 m!1938795))

(assert (=> d!486334 d!486718))

(declare-fun d!486730 () Bool)

(declare-fun e!1037473 () Bool)

(assert (=> d!486730 e!1037473))

(declare-fun res!722059 () Bool)

(assert (=> d!486730 (=> (not res!722059) (not e!1037473))))

(declare-fun lt!580165 () Conc!5887)

(assert (=> d!486730 (= res!722059 (isBalanced!1761 lt!580165))))

(declare-fun ++!4685 (Conc!5887 Conc!5887) Conc!5887)

(declare-fun fill!95 (Int Token!5804) IArray!11779)

(assert (=> d!486730 (= lt!580165 (++!4685 (Leaf!8667 (fill!95 1 (h!23104 (t!148288 tokens!457))) 1) (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))))

(assert (=> d!486730 (isBalanced!1761 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))))))

(assert (=> d!486730 (= (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457))) lt!580165)))

(declare-fun b!1617430 () Bool)

(assert (=> b!1617430 (= e!1037473 (= (list!6928 lt!580165) (Cons!17703 (h!23104 (t!148288 tokens!457)) (list!6928 (c!263123 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))))))

(assert (= (and d!486730 res!722059) b!1617430))

(declare-fun m!1938797 () Bool)

(assert (=> d!486730 m!1938797))

(declare-fun m!1938799 () Bool)

(assert (=> d!486730 m!1938799))

(declare-fun m!1938801 () Bool)

(assert (=> d!486730 m!1938801))

(declare-fun m!1938803 () Bool)

(assert (=> d!486730 m!1938803))

(declare-fun m!1938805 () Bool)

(assert (=> b!1617430 m!1938805))

(assert (=> b!1617430 m!1938485))

(assert (=> d!486334 d!486730))

(declare-fun d!486732 () Bool)

(declare-fun lt!580166 () BalanceConc!11716)

(assert (=> d!486732 (= (list!6924 lt!580166) (originalCharacters!3933 (apply!4463 lt!579267 0)))))

(assert (=> d!486732 (= lt!580166 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0)))) (value!98564 (apply!4463 lt!579267 0))))))

(assert (=> d!486732 (= (charsOf!1768 (apply!4463 lt!579267 0)) lt!580166)))

(declare-fun b_lambda!50995 () Bool)

(assert (=> (not b_lambda!50995) (not d!486732)))

(declare-fun t!148374 () Bool)

(declare-fun tb!92879 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148374) tb!92879))

(declare-fun b!1617431 () Bool)

(declare-fun e!1037474 () Bool)

(declare-fun tp!471290 () Bool)

(assert (=> b!1617431 (= e!1037474 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0)))) (value!98564 (apply!4463 lt!579267 0))))) tp!471290))))

(declare-fun result!111970 () Bool)

(assert (=> tb!92879 (= result!111970 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0)))) (value!98564 (apply!4463 lt!579267 0)))) e!1037474))))

(assert (= tb!92879 b!1617431))

(declare-fun m!1938807 () Bool)

(assert (=> b!1617431 m!1938807))

(declare-fun m!1938809 () Bool)

(assert (=> tb!92879 m!1938809))

(assert (=> d!486732 t!148374))

(declare-fun b_and!114685 () Bool)

(assert (= b_and!114649 (and (=> t!148374 result!111970) b_and!114685)))

(declare-fun t!148376 () Bool)

(declare-fun tb!92881 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148376) tb!92881))

(declare-fun result!111972 () Bool)

(assert (= result!111972 result!111970))

(assert (=> d!486732 t!148376))

(declare-fun b_and!114687 () Bool)

(assert (= b_and!114651 (and (=> t!148376 result!111972) b_and!114687)))

(declare-fun t!148378 () Bool)

(declare-fun tb!92883 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148378) tb!92883))

(declare-fun result!111974 () Bool)

(assert (= result!111974 result!111970))

(assert (=> d!486732 t!148378))

(declare-fun b_and!114689 () Bool)

(assert (= b_and!114655 (and (=> t!148378 result!111974) b_and!114689)))

(declare-fun t!148380 () Bool)

(declare-fun tb!92885 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148380) tb!92885))

(declare-fun result!111976 () Bool)

(assert (= result!111976 result!111970))

(assert (=> d!486732 t!148380))

(declare-fun b_and!114691 () Bool)

(assert (= b_and!114659 (and (=> t!148380 result!111976) b_and!114691)))

(declare-fun m!1938811 () Bool)

(assert (=> d!486732 m!1938811))

(declare-fun m!1938813 () Bool)

(assert (=> d!486732 m!1938813))

(assert (=> b!1616446 d!486732))

(declare-fun d!486734 () Bool)

(assert (=> d!486734 (= (head!3366 (drop!856 lt!579596 0)) (apply!4464 lt!579596 0))))

(declare-fun lt!580169 () Unit!28465)

(declare-fun choose!9731 (List!17773 Int) Unit!28465)

(assert (=> d!486734 (= lt!580169 (choose!9731 lt!579596 0))))

(declare-fun e!1037477 () Bool)

(assert (=> d!486734 e!1037477))

(declare-fun res!722062 () Bool)

(assert (=> d!486734 (=> (not res!722062) (not e!1037477))))

(assert (=> d!486734 (= res!722062 (>= 0 0))))

(assert (=> d!486734 (= (lemmaDropApply!548 lt!579596 0) lt!580169)))

(declare-fun b!1617434 () Bool)

(assert (=> b!1617434 (= e!1037477 (< 0 (size!14204 lt!579596)))))

(assert (= (and d!486734 res!722062) b!1617434))

(assert (=> d!486734 m!1937189))

(assert (=> d!486734 m!1937189))

(assert (=> d!486734 m!1937191))

(assert (=> d!486734 m!1937195))

(declare-fun m!1938815 () Bool)

(assert (=> d!486734 m!1938815))

(declare-fun m!1938817 () Bool)

(assert (=> b!1617434 m!1938817))

(assert (=> b!1616446 d!486734))

(declare-fun b!1617453 () Bool)

(declare-fun e!1037489 () Int)

(declare-fun call!104992 () Int)

(assert (=> b!1617453 (= e!1037489 (- call!104992 (+ 0 1)))))

(declare-fun b!1617454 () Bool)

(declare-fun e!1037492 () List!17773)

(assert (=> b!1617454 (= e!1037492 lt!579598)))

(declare-fun b!1617455 () Bool)

(declare-fun e!1037490 () Int)

(assert (=> b!1617455 (= e!1037490 e!1037489)))

(declare-fun c!263400 () Bool)

(assert (=> b!1617455 (= c!263400 (>= (+ 0 1) call!104992))))

(declare-fun b!1617456 () Bool)

(declare-fun e!1037491 () Bool)

(declare-fun lt!580172 () List!17773)

(assert (=> b!1617456 (= e!1037491 (= (size!14204 lt!580172) e!1037490))))

(declare-fun c!263401 () Bool)

(assert (=> b!1617456 (= c!263401 (<= (+ 0 1) 0))))

(declare-fun b!1617458 () Bool)

(assert (=> b!1617458 (= e!1037492 (drop!856 (t!148288 lt!579598) (- (+ 0 1) 1)))))

(declare-fun b!1617459 () Bool)

(assert (=> b!1617459 (= e!1037490 call!104992)))

(declare-fun b!1617460 () Bool)

(declare-fun e!1037488 () List!17773)

(assert (=> b!1617460 (= e!1037488 e!1037492)))

(declare-fun c!263402 () Bool)

(assert (=> b!1617460 (= c!263402 (<= (+ 0 1) 0))))

(declare-fun b!1617461 () Bool)

(assert (=> b!1617461 (= e!1037489 0)))

(declare-fun bm!104987 () Bool)

(assert (=> bm!104987 (= call!104992 (size!14204 lt!579598))))

(declare-fun b!1617457 () Bool)

(assert (=> b!1617457 (= e!1037488 Nil!17703)))

(declare-fun d!486736 () Bool)

(assert (=> d!486736 e!1037491))

(declare-fun res!722065 () Bool)

(assert (=> d!486736 (=> (not res!722065) (not e!1037491))))

(declare-fun content!2456 (List!17773) (InoxSet Token!5804))

(assert (=> d!486736 (= res!722065 (= ((_ map implies) (content!2456 lt!580172) (content!2456 lt!579598)) ((as const (InoxSet Token!5804)) true)))))

(assert (=> d!486736 (= lt!580172 e!1037488)))

(declare-fun c!263403 () Bool)

(assert (=> d!486736 (= c!263403 ((_ is Nil!17703) lt!579598))))

(assert (=> d!486736 (= (drop!856 lt!579598 (+ 0 1)) lt!580172)))

(assert (= (and d!486736 c!263403) b!1617457))

(assert (= (and d!486736 (not c!263403)) b!1617460))

(assert (= (and b!1617460 c!263402) b!1617454))

(assert (= (and b!1617460 (not c!263402)) b!1617458))

(assert (= (and d!486736 res!722065) b!1617456))

(assert (= (and b!1617456 c!263401) b!1617459))

(assert (= (and b!1617456 (not c!263401)) b!1617455))

(assert (= (and b!1617455 c!263400) b!1617461))

(assert (= (and b!1617455 (not c!263400)) b!1617453))

(assert (= (or b!1617459 b!1617455 b!1617453) bm!104987))

(declare-fun m!1938819 () Bool)

(assert (=> b!1617456 m!1938819))

(declare-fun m!1938821 () Bool)

(assert (=> b!1617458 m!1938821))

(declare-fun m!1938823 () Bool)

(assert (=> bm!104987 m!1938823))

(declare-fun m!1938825 () Bool)

(assert (=> d!486736 m!1938825))

(declare-fun m!1938827 () Bool)

(assert (=> d!486736 m!1938827))

(assert (=> b!1616446 d!486736))

(declare-fun d!486738 () Bool)

(declare-fun lt!580175 () Token!5804)

(assert (=> d!486738 (= lt!580175 (apply!4464 (list!6923 lt!579267) 0))))

(declare-fun apply!4471 (Conc!5887 Int) Token!5804)

(assert (=> d!486738 (= lt!580175 (apply!4471 (c!263123 lt!579267) 0))))

(declare-fun e!1037495 () Bool)

(assert (=> d!486738 e!1037495))

(declare-fun res!722068 () Bool)

(assert (=> d!486738 (=> (not res!722068) (not e!1037495))))

(assert (=> d!486738 (= res!722068 (<= 0 0))))

(assert (=> d!486738 (= (apply!4463 lt!579267 0) lt!580175)))

(declare-fun b!1617464 () Bool)

(assert (=> b!1617464 (= e!1037495 (< 0 (size!14198 lt!579267)))))

(assert (= (and d!486738 res!722068) b!1617464))

(assert (=> d!486738 m!1937137))

(assert (=> d!486738 m!1937137))

(declare-fun m!1938829 () Bool)

(assert (=> d!486738 m!1938829))

(declare-fun m!1938831 () Bool)

(assert (=> d!486738 m!1938831))

(assert (=> b!1617464 m!1937183))

(assert (=> b!1616446 d!486738))

(declare-fun b!1617465 () Bool)

(declare-fun e!1037497 () Int)

(declare-fun call!104993 () Int)

(assert (=> b!1617465 (= e!1037497 (- call!104993 0))))

(declare-fun b!1617466 () Bool)

(declare-fun e!1037500 () List!17773)

(assert (=> b!1617466 (= e!1037500 lt!579598)))

(declare-fun b!1617467 () Bool)

(declare-fun e!1037498 () Int)

(assert (=> b!1617467 (= e!1037498 e!1037497)))

(declare-fun c!263404 () Bool)

(assert (=> b!1617467 (= c!263404 (>= 0 call!104993))))

(declare-fun b!1617468 () Bool)

(declare-fun e!1037499 () Bool)

(declare-fun lt!580176 () List!17773)

(assert (=> b!1617468 (= e!1037499 (= (size!14204 lt!580176) e!1037498))))

(declare-fun c!263405 () Bool)

(assert (=> b!1617468 (= c!263405 (<= 0 0))))

(declare-fun b!1617470 () Bool)

(assert (=> b!1617470 (= e!1037500 (drop!856 (t!148288 lt!579598) (- 0 1)))))

(declare-fun b!1617471 () Bool)

(assert (=> b!1617471 (= e!1037498 call!104993)))

(declare-fun b!1617472 () Bool)

(declare-fun e!1037496 () List!17773)

(assert (=> b!1617472 (= e!1037496 e!1037500)))

(declare-fun c!263406 () Bool)

(assert (=> b!1617472 (= c!263406 (<= 0 0))))

(declare-fun b!1617473 () Bool)

(assert (=> b!1617473 (= e!1037497 0)))

(declare-fun bm!104988 () Bool)

(assert (=> bm!104988 (= call!104993 (size!14204 lt!579598))))

(declare-fun b!1617469 () Bool)

(assert (=> b!1617469 (= e!1037496 Nil!17703)))

(declare-fun d!486740 () Bool)

(assert (=> d!486740 e!1037499))

(declare-fun res!722069 () Bool)

(assert (=> d!486740 (=> (not res!722069) (not e!1037499))))

(assert (=> d!486740 (= res!722069 (= ((_ map implies) (content!2456 lt!580176) (content!2456 lt!579598)) ((as const (InoxSet Token!5804)) true)))))

(assert (=> d!486740 (= lt!580176 e!1037496)))

(declare-fun c!263407 () Bool)

(assert (=> d!486740 (= c!263407 ((_ is Nil!17703) lt!579598))))

(assert (=> d!486740 (= (drop!856 lt!579598 0) lt!580176)))

(assert (= (and d!486740 c!263407) b!1617469))

(assert (= (and d!486740 (not c!263407)) b!1617472))

(assert (= (and b!1617472 c!263406) b!1617466))

(assert (= (and b!1617472 (not c!263406)) b!1617470))

(assert (= (and d!486740 res!722069) b!1617468))

(assert (= (and b!1617468 c!263405) b!1617471))

(assert (= (and b!1617468 (not c!263405)) b!1617467))

(assert (= (and b!1617467 c!263404) b!1617473))

(assert (= (and b!1617467 (not c!263404)) b!1617465))

(assert (= (or b!1617471 b!1617467 b!1617465) bm!104988))

(declare-fun m!1938833 () Bool)

(assert (=> b!1617468 m!1938833))

(declare-fun m!1938835 () Bool)

(assert (=> b!1617470 m!1938835))

(assert (=> bm!104988 m!1938823))

(declare-fun m!1938837 () Bool)

(assert (=> d!486740 m!1938837))

(assert (=> d!486740 m!1938827))

(assert (=> b!1616446 d!486740))

(declare-fun d!486742 () Bool)

(assert (=> d!486742 (= (head!3366 (drop!856 lt!579596 0)) (h!23104 (drop!856 lt!579596 0)))))

(assert (=> b!1616446 d!486742))

(declare-fun d!486744 () Bool)

(assert (=> d!486744 (= (list!6923 lt!579267) (list!6928 (c!263123 lt!579267)))))

(declare-fun bs!394215 () Bool)

(assert (= bs!394215 d!486744))

(declare-fun m!1938839 () Bool)

(assert (=> bs!394215 m!1938839))

(assert (=> b!1616446 d!486744))

(declare-fun d!486746 () Bool)

(declare-fun lt!580180 () BalanceConc!11716)

(assert (=> d!486746 (= (list!6924 lt!580180) (printListTailRec!341 thiss!17113 (dropList!578 lt!579267 (+ 0 1)) (list!6924 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0))))))))

(declare-fun e!1037501 () BalanceConc!11716)

(assert (=> d!486746 (= lt!580180 e!1037501)))

(declare-fun c!263408 () Bool)

(assert (=> d!486746 (= c!263408 (>= (+ 0 1) (size!14198 lt!579267)))))

(declare-fun e!1037502 () Bool)

(assert (=> d!486746 e!1037502))

(declare-fun res!722070 () Bool)

(assert (=> d!486746 (=> (not res!722070) (not e!1037502))))

(assert (=> d!486746 (= res!722070 (>= (+ 0 1) 0))))

(assert (=> d!486746 (= (printTailRec!801 thiss!17113 lt!579267 (+ 0 1) (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0)))) lt!580180)))

(declare-fun b!1617474 () Bool)

(assert (=> b!1617474 (= e!1037502 (<= (+ 0 1) (size!14198 lt!579267)))))

(declare-fun b!1617475 () Bool)

(assert (=> b!1617475 (= e!1037501 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0))))))

(declare-fun b!1617476 () Bool)

(assert (=> b!1617476 (= e!1037501 (printTailRec!801 thiss!17113 lt!579267 (+ 0 1 1) (++!4679 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0))) (charsOf!1768 (apply!4463 lt!579267 (+ 0 1))))))))

(declare-fun lt!580181 () List!17773)

(assert (=> b!1617476 (= lt!580181 (list!6923 lt!579267))))

(declare-fun lt!580179 () Unit!28465)

(assert (=> b!1617476 (= lt!580179 (lemmaDropApply!548 lt!580181 (+ 0 1)))))

(assert (=> b!1617476 (= (head!3366 (drop!856 lt!580181 (+ 0 1))) (apply!4464 lt!580181 (+ 0 1)))))

(declare-fun lt!580177 () Unit!28465)

(assert (=> b!1617476 (= lt!580177 lt!580179)))

(declare-fun lt!580183 () List!17773)

(assert (=> b!1617476 (= lt!580183 (list!6923 lt!579267))))

(declare-fun lt!580182 () Unit!28465)

(assert (=> b!1617476 (= lt!580182 (lemmaDropTail!528 lt!580183 (+ 0 1)))))

(assert (=> b!1617476 (= (tail!2334 (drop!856 lt!580183 (+ 0 1))) (drop!856 lt!580183 (+ 0 1 1)))))

(declare-fun lt!580178 () Unit!28465)

(assert (=> b!1617476 (= lt!580178 lt!580182)))

(assert (= (and d!486746 res!722070) b!1617474))

(assert (= (and d!486746 c!263408) b!1617475))

(assert (= (and d!486746 (not c!263408)) b!1617476))

(declare-fun m!1938841 () Bool)

(assert (=> d!486746 m!1938841))

(declare-fun m!1938843 () Bool)

(assert (=> d!486746 m!1938843))

(declare-fun m!1938845 () Bool)

(assert (=> d!486746 m!1938845))

(declare-fun m!1938847 () Bool)

(assert (=> d!486746 m!1938847))

(assert (=> d!486746 m!1938843))

(assert (=> d!486746 m!1937187))

(assert (=> d!486746 m!1938845))

(assert (=> d!486746 m!1937183))

(assert (=> b!1617474 m!1937183))

(assert (=> b!1617476 m!1937187))

(declare-fun m!1938849 () Bool)

(assert (=> b!1617476 m!1938849))

(declare-fun m!1938851 () Bool)

(assert (=> b!1617476 m!1938851))

(declare-fun m!1938853 () Bool)

(assert (=> b!1617476 m!1938853))

(assert (=> b!1617476 m!1937137))

(assert (=> b!1617476 m!1938853))

(declare-fun m!1938855 () Bool)

(assert (=> b!1617476 m!1938855))

(declare-fun m!1938857 () Bool)

(assert (=> b!1617476 m!1938857))

(declare-fun m!1938859 () Bool)

(assert (=> b!1617476 m!1938859))

(assert (=> b!1617476 m!1938851))

(declare-fun m!1938861 () Bool)

(assert (=> b!1617476 m!1938861))

(declare-fun m!1938863 () Bool)

(assert (=> b!1617476 m!1938863))

(declare-fun m!1938865 () Bool)

(assert (=> b!1617476 m!1938865))

(declare-fun m!1938867 () Bool)

(assert (=> b!1617476 m!1938867))

(assert (=> b!1617476 m!1938857))

(assert (=> b!1617476 m!1938849))

(assert (=> b!1617476 m!1938865))

(declare-fun m!1938869 () Bool)

(assert (=> b!1617476 m!1938869))

(declare-fun m!1938871 () Bool)

(assert (=> b!1617476 m!1938871))

(assert (=> b!1616446 d!486746))

(declare-fun d!486748 () Bool)

(assert (=> d!486748 (= (tail!2334 (drop!856 lt!579598 0)) (t!148288 (drop!856 lt!579598 0)))))

(assert (=> b!1616446 d!486748))

(declare-fun d!486750 () Bool)

(assert (=> d!486750 (= (tail!2334 (drop!856 lt!579598 0)) (drop!856 lt!579598 (+ 0 1)))))

(declare-fun lt!580186 () Unit!28465)

(declare-fun choose!9732 (List!17773 Int) Unit!28465)

(assert (=> d!486750 (= lt!580186 (choose!9732 lt!579598 0))))

(declare-fun e!1037505 () Bool)

(assert (=> d!486750 e!1037505))

(declare-fun res!722073 () Bool)

(assert (=> d!486750 (=> (not res!722073) (not e!1037505))))

(assert (=> d!486750 (= res!722073 (>= 0 0))))

(assert (=> d!486750 (= (lemmaDropTail!528 lt!579598 0) lt!580186)))

(declare-fun b!1617479 () Bool)

(assert (=> b!1617479 (= e!1037505 (< 0 (size!14204 lt!579598)))))

(assert (= (and d!486750 res!722073) b!1617479))

(assert (=> d!486750 m!1937201))

(assert (=> d!486750 m!1937201))

(assert (=> d!486750 m!1937205))

(assert (=> d!486750 m!1937199))

(declare-fun m!1938873 () Bool)

(assert (=> d!486750 m!1938873))

(assert (=> b!1617479 m!1938823))

(assert (=> b!1616446 d!486750))

(declare-fun d!486752 () Bool)

(declare-fun lt!580189 () Token!5804)

(declare-fun contains!3098 (List!17773 Token!5804) Bool)

(assert (=> d!486752 (contains!3098 lt!579596 lt!580189)))

(declare-fun e!1037511 () Token!5804)

(assert (=> d!486752 (= lt!580189 e!1037511)))

(declare-fun c!263411 () Bool)

(assert (=> d!486752 (= c!263411 (= 0 0))))

(declare-fun e!1037510 () Bool)

(assert (=> d!486752 e!1037510))

(declare-fun res!722076 () Bool)

(assert (=> d!486752 (=> (not res!722076) (not e!1037510))))

(assert (=> d!486752 (= res!722076 (<= 0 0))))

(assert (=> d!486752 (= (apply!4464 lt!579596 0) lt!580189)))

(declare-fun b!1617486 () Bool)

(assert (=> b!1617486 (= e!1037510 (< 0 (size!14204 lt!579596)))))

(declare-fun b!1617487 () Bool)

(assert (=> b!1617487 (= e!1037511 (head!3366 lt!579596))))

(declare-fun b!1617488 () Bool)

(assert (=> b!1617488 (= e!1037511 (apply!4464 (tail!2334 lt!579596) (- 0 1)))))

(assert (= (and d!486752 res!722076) b!1617486))

(assert (= (and d!486752 c!263411) b!1617487))

(assert (= (and d!486752 (not c!263411)) b!1617488))

(declare-fun m!1938875 () Bool)

(assert (=> d!486752 m!1938875))

(assert (=> b!1617486 m!1938817))

(declare-fun m!1938877 () Bool)

(assert (=> b!1617487 m!1938877))

(declare-fun m!1938879 () Bool)

(assert (=> b!1617488 m!1938879))

(assert (=> b!1617488 m!1938879))

(declare-fun m!1938881 () Bool)

(assert (=> b!1617488 m!1938881))

(assert (=> b!1616446 d!486752))

(declare-fun b!1617489 () Bool)

(declare-fun e!1037513 () Int)

(declare-fun call!104994 () Int)

(assert (=> b!1617489 (= e!1037513 (- call!104994 0))))

(declare-fun b!1617490 () Bool)

(declare-fun e!1037516 () List!17773)

(assert (=> b!1617490 (= e!1037516 lt!579596)))

(declare-fun b!1617491 () Bool)

(declare-fun e!1037514 () Int)

(assert (=> b!1617491 (= e!1037514 e!1037513)))

(declare-fun c!263412 () Bool)

(assert (=> b!1617491 (= c!263412 (>= 0 call!104994))))

(declare-fun b!1617492 () Bool)

(declare-fun e!1037515 () Bool)

(declare-fun lt!580190 () List!17773)

(assert (=> b!1617492 (= e!1037515 (= (size!14204 lt!580190) e!1037514))))

(declare-fun c!263413 () Bool)

(assert (=> b!1617492 (= c!263413 (<= 0 0))))

(declare-fun b!1617494 () Bool)

(assert (=> b!1617494 (= e!1037516 (drop!856 (t!148288 lt!579596) (- 0 1)))))

(declare-fun b!1617495 () Bool)

(assert (=> b!1617495 (= e!1037514 call!104994)))

(declare-fun b!1617496 () Bool)

(declare-fun e!1037512 () List!17773)

(assert (=> b!1617496 (= e!1037512 e!1037516)))

(declare-fun c!263414 () Bool)

(assert (=> b!1617496 (= c!263414 (<= 0 0))))

(declare-fun b!1617497 () Bool)

(assert (=> b!1617497 (= e!1037513 0)))

(declare-fun bm!104989 () Bool)

(assert (=> bm!104989 (= call!104994 (size!14204 lt!579596))))

(declare-fun b!1617493 () Bool)

(assert (=> b!1617493 (= e!1037512 Nil!17703)))

(declare-fun d!486754 () Bool)

(assert (=> d!486754 e!1037515))

(declare-fun res!722077 () Bool)

(assert (=> d!486754 (=> (not res!722077) (not e!1037515))))

(assert (=> d!486754 (= res!722077 (= ((_ map implies) (content!2456 lt!580190) (content!2456 lt!579596)) ((as const (InoxSet Token!5804)) true)))))

(assert (=> d!486754 (= lt!580190 e!1037512)))

(declare-fun c!263415 () Bool)

(assert (=> d!486754 (= c!263415 ((_ is Nil!17703) lt!579596))))

(assert (=> d!486754 (= (drop!856 lt!579596 0) lt!580190)))

(assert (= (and d!486754 c!263415) b!1617493))

(assert (= (and d!486754 (not c!263415)) b!1617496))

(assert (= (and b!1617496 c!263414) b!1617490))

(assert (= (and b!1617496 (not c!263414)) b!1617494))

(assert (= (and d!486754 res!722077) b!1617492))

(assert (= (and b!1617492 c!263413) b!1617495))

(assert (= (and b!1617492 (not c!263413)) b!1617491))

(assert (= (and b!1617491 c!263412) b!1617497))

(assert (= (and b!1617491 (not c!263412)) b!1617489))

(assert (= (or b!1617495 b!1617491 b!1617489) bm!104989))

(declare-fun m!1938883 () Bool)

(assert (=> b!1617492 m!1938883))

(declare-fun m!1938885 () Bool)

(assert (=> b!1617494 m!1938885))

(assert (=> bm!104989 m!1938817))

(declare-fun m!1938887 () Bool)

(assert (=> d!486754 m!1938887))

(declare-fun m!1938889 () Bool)

(assert (=> d!486754 m!1938889))

(assert (=> b!1616446 d!486754))

(declare-fun b!1617498 () Bool)

(declare-fun res!722081 () Bool)

(declare-fun e!1037517 () Bool)

(assert (=> b!1617498 (=> (not res!722081) (not e!1037517))))

(assert (=> b!1617498 (= res!722081 (isBalanced!1762 (++!4682 (c!263121 (BalanceConc!11717 Empty!5886)) (c!263121 (charsOf!1768 (apply!4463 lt!579267 0))))))))

(declare-fun b!1617501 () Bool)

(declare-fun lt!580191 () BalanceConc!11716)

(assert (=> b!1617501 (= e!1037517 (= (list!6924 lt!580191) (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (list!6924 (charsOf!1768 (apply!4463 lt!579267 0))))))))

(declare-fun b!1617499 () Bool)

(declare-fun res!722079 () Bool)

(assert (=> b!1617499 (=> (not res!722079) (not e!1037517))))

(assert (=> b!1617499 (= res!722079 (<= (height!889 (++!4682 (c!263121 (BalanceConc!11717 Empty!5886)) (c!263121 (charsOf!1768 (apply!4463 lt!579267 0))))) (+ (max!0 (height!889 (c!263121 (BalanceConc!11717 Empty!5886))) (height!889 (c!263121 (charsOf!1768 (apply!4463 lt!579267 0))))) 1)))))

(declare-fun d!486756 () Bool)

(assert (=> d!486756 e!1037517))

(declare-fun res!722080 () Bool)

(assert (=> d!486756 (=> (not res!722080) (not e!1037517))))

(assert (=> d!486756 (= res!722080 (appendAssocInst!421 (c!263121 (BalanceConc!11717 Empty!5886)) (c!263121 (charsOf!1768 (apply!4463 lt!579267 0)))))))

(assert (=> d!486756 (= lt!580191 (BalanceConc!11717 (++!4682 (c!263121 (BalanceConc!11717 Empty!5886)) (c!263121 (charsOf!1768 (apply!4463 lt!579267 0))))))))

(assert (=> d!486756 (= (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579267 0))) lt!580191)))

(declare-fun b!1617500 () Bool)

(declare-fun res!722078 () Bool)

(assert (=> b!1617500 (=> (not res!722078) (not e!1037517))))

(assert (=> b!1617500 (= res!722078 (>= (height!889 (++!4682 (c!263121 (BalanceConc!11717 Empty!5886)) (c!263121 (charsOf!1768 (apply!4463 lt!579267 0))))) (max!0 (height!889 (c!263121 (BalanceConc!11717 Empty!5886))) (height!889 (c!263121 (charsOf!1768 (apply!4463 lt!579267 0)))))))))

(assert (= (and d!486756 res!722080) b!1617498))

(assert (= (and b!1617498 res!722081) b!1617499))

(assert (= (and b!1617499 res!722079) b!1617500))

(assert (= (and b!1617500 res!722078) b!1617501))

(declare-fun m!1938891 () Bool)

(assert (=> b!1617498 m!1938891))

(assert (=> b!1617498 m!1938891))

(declare-fun m!1938893 () Bool)

(assert (=> b!1617498 m!1938893))

(assert (=> b!1617500 m!1938891))

(declare-fun m!1938895 () Bool)

(assert (=> b!1617500 m!1938895))

(assert (=> b!1617500 m!1938891))

(declare-fun m!1938897 () Bool)

(assert (=> b!1617500 m!1938897))

(declare-fun m!1938899 () Bool)

(assert (=> b!1617500 m!1938899))

(assert (=> b!1617500 m!1938899))

(assert (=> b!1617500 m!1938897))

(declare-fun m!1938901 () Bool)

(assert (=> b!1617500 m!1938901))

(declare-fun m!1938903 () Bool)

(assert (=> b!1617501 m!1938903))

(assert (=> b!1617501 m!1937179))

(assert (=> b!1617501 m!1937185))

(declare-fun m!1938905 () Bool)

(assert (=> b!1617501 m!1938905))

(assert (=> b!1617501 m!1937179))

(assert (=> b!1617501 m!1938905))

(declare-fun m!1938907 () Bool)

(assert (=> b!1617501 m!1938907))

(declare-fun m!1938909 () Bool)

(assert (=> d!486756 m!1938909))

(assert (=> d!486756 m!1938891))

(assert (=> b!1617499 m!1938891))

(assert (=> b!1617499 m!1938895))

(assert (=> b!1617499 m!1938891))

(assert (=> b!1617499 m!1938897))

(assert (=> b!1617499 m!1938899))

(assert (=> b!1617499 m!1938899))

(assert (=> b!1617499 m!1938897))

(assert (=> b!1617499 m!1938901))

(assert (=> b!1616446 d!486756))

(declare-fun d!486758 () Bool)

(assert (=> d!486758 (= (list!6924 (++!4679 lt!579279 lt!579270)) (list!6927 (c!263121 (++!4679 lt!579279 lt!579270))))))

(declare-fun bs!394216 () Bool)

(assert (= bs!394216 d!486758))

(declare-fun m!1938911 () Bool)

(assert (=> bs!394216 m!1938911))

(assert (=> d!486302 d!486758))

(declare-fun d!486760 () Bool)

(assert (=> d!486760 (= (prefixMatch!382 lt!579263 lt!579655) (prefixMatchZipper!138 lt!579652 lt!579655))))

(declare-fun lt!580194 () Unit!28465)

(declare-fun choose!9733 ((InoxSet Context!1706) List!17779 Regex!4447 List!17772) Unit!28465)

(assert (=> d!486760 (= lt!580194 (choose!9733 lt!579652 lt!579649 lt!579263 lt!579655))))

(assert (=> d!486760 (validRegex!1764 lt!579263)))

(assert (=> d!486760 (= (prefixMatchZipperRegexEquiv!138 lt!579652 lt!579649 lt!579263 lt!579655) lt!580194)))

(declare-fun bs!394217 () Bool)

(assert (= bs!394217 d!486760))

(assert (=> bs!394217 m!1937281))

(assert (=> bs!394217 m!1937285))

(declare-fun m!1938913 () Bool)

(assert (=> bs!394217 m!1938913))

(assert (=> bs!394217 m!1937263))

(assert (=> d!486302 d!486760))

(declare-fun d!486762 () Bool)

(declare-fun e!1037520 () Bool)

(assert (=> d!486762 e!1037520))

(declare-fun res!722084 () Bool)

(assert (=> d!486762 (=> (not res!722084) (not e!1037520))))

(declare-fun lt!580197 () List!17779)

(declare-fun noDuplicate!250 (List!17779) Bool)

(assert (=> d!486762 (= res!722084 (noDuplicate!250 lt!580197))))

(declare-fun choose!9734 ((InoxSet Context!1706)) List!17779)

(assert (=> d!486762 (= lt!580197 (choose!9734 (focus!159 lt!579263)))))

(assert (=> d!486762 (= (toList!899 (focus!159 lt!579263)) lt!580197)))

(declare-fun b!1617504 () Bool)

(declare-fun content!2457 (List!17779) (InoxSet Context!1706))

(assert (=> b!1617504 (= e!1037520 (= (content!2457 lt!580197) (focus!159 lt!579263)))))

(assert (= (and d!486762 res!722084) b!1617504))

(declare-fun m!1938915 () Bool)

(assert (=> d!486762 m!1938915))

(assert (=> d!486762 m!1937273))

(declare-fun m!1938917 () Bool)

(assert (=> d!486762 m!1938917))

(declare-fun m!1938919 () Bool)

(assert (=> b!1617504 m!1938919))

(assert (=> d!486302 d!486762))

(declare-fun c!263418 () Bool)

(declare-fun d!486764 () Bool)

(assert (=> d!486764 (= c!263418 (isEmpty!10713 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656)))))

(declare-fun e!1037523 () Bool)

(assert (=> d!486764 (= (prefixMatchZipper!138 lt!579650 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656)) e!1037523)))

(declare-fun b!1617509 () Bool)

(declare-fun lostCauseZipper!31 ((InoxSet Context!1706)) Bool)

(assert (=> b!1617509 (= e!1037523 (not (lostCauseZipper!31 lt!579650)))))

(declare-fun b!1617510 () Bool)

(declare-fun derivationStepZipper!55 ((InoxSet Context!1706) C!9068) (InoxSet Context!1706))

(assert (=> b!1617510 (= e!1037523 (prefixMatchZipper!138 (derivationStepZipper!55 lt!579650 (head!3362 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656))) (tail!2332 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656))))))

(assert (= (and d!486764 c!263418) b!1617509))

(assert (= (and d!486764 (not c!263418)) b!1617510))

(assert (=> d!486764 m!1937265))

(declare-fun m!1938921 () Bool)

(assert (=> d!486764 m!1938921))

(declare-fun m!1938923 () Bool)

(assert (=> b!1617509 m!1938923))

(assert (=> b!1617510 m!1937265))

(declare-fun m!1938925 () Bool)

(assert (=> b!1617510 m!1938925))

(assert (=> b!1617510 m!1938925))

(declare-fun m!1938927 () Bool)

(assert (=> b!1617510 m!1938927))

(assert (=> b!1617510 m!1937265))

(declare-fun m!1938929 () Bool)

(assert (=> b!1617510 m!1938929))

(assert (=> b!1617510 m!1938927))

(assert (=> b!1617510 m!1938929))

(declare-fun m!1938931 () Bool)

(assert (=> b!1617510 m!1938931))

(assert (=> d!486302 d!486764))

(declare-fun c!263421 () Bool)

(declare-fun d!486766 () Bool)

(assert (=> d!486766 (= c!263421 (= lt!579656 (size!14200 (++!4679 lt!579279 lt!579270))))))

(declare-fun e!1037526 () Bool)

(assert (=> d!486766 (= (prefixMatchZipperSequence!495 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656) e!1037526)))

(declare-fun b!1617515 () Bool)

(assert (=> b!1617515 (= e!1037526 (not (lostCauseZipper!31 lt!579650)))))

(declare-fun b!1617516 () Bool)

(assert (=> b!1617516 (= e!1037526 (prefixMatchZipperSequence!495 (derivationStepZipper!55 lt!579650 (apply!4458 (++!4679 lt!579279 lt!579270) lt!579656)) (++!4679 lt!579279 lt!579270) (+ lt!579656 1)))))

(assert (= (and d!486766 c!263421) b!1617515))

(assert (= (and d!486766 (not c!263421)) b!1617516))

(assert (=> d!486766 m!1936487))

(declare-fun m!1938933 () Bool)

(assert (=> d!486766 m!1938933))

(assert (=> b!1617515 m!1938923))

(assert (=> b!1617516 m!1936487))

(declare-fun m!1938935 () Bool)

(assert (=> b!1617516 m!1938935))

(assert (=> b!1617516 m!1938935))

(declare-fun m!1938937 () Bool)

(assert (=> b!1617516 m!1938937))

(assert (=> b!1617516 m!1938937))

(assert (=> b!1617516 m!1936487))

(declare-fun m!1938939 () Bool)

(assert (=> b!1617516 m!1938939))

(assert (=> d!486302 d!486766))

(declare-fun d!486768 () Bool)

(declare-fun e!1037529 () Bool)

(assert (=> d!486768 e!1037529))

(declare-fun res!722088 () Bool)

(assert (=> d!486768 (=> (not res!722088) (not e!1037529))))

(assert (=> d!486768 (= res!722088 (validRegex!1764 lt!579263))))

(assert (=> d!486768 (= (focus!159 lt!579263) (store ((as const (Array Context!1706 Bool)) false) (Context!1707 (Cons!17708 lt!579263 Nil!17708)) true))))

(declare-fun b!1617519 () Bool)

(declare-fun unfocusZipper!31 (List!17779) Regex!4447)

(assert (=> b!1617519 (= e!1037529 (= (unfocusZipper!31 (toList!899 (store ((as const (Array Context!1706 Bool)) false) (Context!1707 (Cons!17708 lt!579263 Nil!17708)) true))) lt!579263))))

(assert (= (and d!486768 res!722088) b!1617519))

(assert (=> d!486768 m!1937263))

(declare-fun m!1938941 () Bool)

(assert (=> d!486768 m!1938941))

(assert (=> b!1617519 m!1938941))

(assert (=> b!1617519 m!1938941))

(declare-fun m!1938943 () Bool)

(assert (=> b!1617519 m!1938943))

(assert (=> b!1617519 m!1938943))

(declare-fun m!1938945 () Bool)

(assert (=> b!1617519 m!1938945))

(assert (=> d!486302 d!486768))

(declare-fun d!486770 () Bool)

(assert (=> d!486770 (= (prefixMatchZipper!138 lt!579650 (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656)) (prefixMatchZipperSequence!495 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656))))

(declare-fun lt!580200 () Unit!28465)

(declare-fun choose!9735 ((InoxSet Context!1706) BalanceConc!11716 Int) Unit!28465)

(assert (=> d!486770 (= lt!580200 (choose!9735 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656))))

(declare-fun e!1037532 () Bool)

(assert (=> d!486770 e!1037532))

(declare-fun res!722091 () Bool)

(assert (=> d!486770 (=> (not res!722091) (not e!1037532))))

(assert (=> d!486770 (= res!722091 (>= lt!579656 0))))

(assert (=> d!486770 (= (lemmaprefixMatchZipperSequenceEquivalent!138 lt!579650 (++!4679 lt!579279 lt!579270) lt!579656) lt!580200)))

(declare-fun b!1617522 () Bool)

(assert (=> b!1617522 (= e!1037532 (<= lt!579656 (size!14200 (++!4679 lt!579279 lt!579270))))))

(assert (= (and d!486770 res!722091) b!1617522))

(assert (=> d!486770 m!1936487))

(assert (=> d!486770 m!1937265))

(assert (=> d!486770 m!1937265))

(assert (=> d!486770 m!1937267))

(assert (=> d!486770 m!1936487))

(assert (=> d!486770 m!1937271))

(assert (=> d!486770 m!1936487))

(declare-fun m!1938947 () Bool)

(assert (=> d!486770 m!1938947))

(assert (=> b!1617522 m!1936487))

(assert (=> b!1617522 m!1938933))

(assert (=> d!486302 d!486770))

(declare-fun d!486772 () Bool)

(declare-fun c!263422 () Bool)

(assert (=> d!486772 (= c!263422 (= 0 (size!14200 (++!4679 lt!579279 lt!579270))))))

(declare-fun e!1037533 () Bool)

(assert (=> d!486772 (= (prefixMatchZipperSequence!495 (focus!159 lt!579263) (++!4679 lt!579279 lt!579270) 0) e!1037533)))

(declare-fun b!1617523 () Bool)

(assert (=> b!1617523 (= e!1037533 (not (lostCauseZipper!31 (focus!159 lt!579263))))))

(declare-fun b!1617524 () Bool)

(assert (=> b!1617524 (= e!1037533 (prefixMatchZipperSequence!495 (derivationStepZipper!55 (focus!159 lt!579263) (apply!4458 (++!4679 lt!579279 lt!579270) 0)) (++!4679 lt!579279 lt!579270) (+ 0 1)))))

(assert (= (and d!486772 c!263422) b!1617523))

(assert (= (and d!486772 (not c!263422)) b!1617524))

(assert (=> d!486772 m!1936487))

(assert (=> d!486772 m!1938933))

(assert (=> b!1617523 m!1937273))

(declare-fun m!1938949 () Bool)

(assert (=> b!1617523 m!1938949))

(assert (=> b!1617524 m!1936487))

(declare-fun m!1938951 () Bool)

(assert (=> b!1617524 m!1938951))

(assert (=> b!1617524 m!1937273))

(assert (=> b!1617524 m!1938951))

(declare-fun m!1938953 () Bool)

(assert (=> b!1617524 m!1938953))

(assert (=> b!1617524 m!1938953))

(assert (=> b!1617524 m!1936487))

(declare-fun m!1938955 () Bool)

(assert (=> b!1617524 m!1938955))

(assert (=> d!486302 d!486772))

(declare-fun d!486774 () Bool)

(declare-fun drop!858 (List!17772 Int) List!17772)

(assert (=> d!486774 (= (dropList!580 (++!4679 lt!579279 lt!579270) lt!579656) (drop!858 (list!6927 (c!263121 (++!4679 lt!579279 lt!579270))) lt!579656))))

(declare-fun bs!394218 () Bool)

(assert (= bs!394218 d!486774))

(assert (=> bs!394218 m!1938911))

(assert (=> bs!394218 m!1938911))

(declare-fun m!1938957 () Bool)

(assert (=> bs!394218 m!1938957))

(assert (=> d!486302 d!486774))

(declare-fun d!486776 () Bool)

(declare-fun c!263423 () Bool)

(assert (=> d!486776 (= c!263423 (isEmpty!10713 (list!6924 (++!4679 lt!579279 lt!579270))))))

(declare-fun e!1037534 () Bool)

(assert (=> d!486776 (= (prefixMatch!382 lt!579263 (list!6924 (++!4679 lt!579279 lt!579270))) e!1037534)))

(declare-fun b!1617525 () Bool)

(assert (=> b!1617525 (= e!1037534 (not (lostCause!423 lt!579263)))))

(declare-fun b!1617526 () Bool)

(assert (=> b!1617526 (= e!1037534 (prefixMatch!382 (derivativeStep!1067 lt!579263 (head!3362 (list!6924 (++!4679 lt!579279 lt!579270)))) (tail!2332 (list!6924 (++!4679 lt!579279 lt!579270)))))))

(assert (= (and d!486776 c!263423) b!1617525))

(assert (= (and d!486776 (not c!263423)) b!1617526))

(assert (=> d!486776 m!1937275))

(declare-fun m!1938959 () Bool)

(assert (=> d!486776 m!1938959))

(assert (=> b!1617525 m!1936737))

(assert (=> b!1617526 m!1937275))

(declare-fun m!1938961 () Bool)

(assert (=> b!1617526 m!1938961))

(assert (=> b!1617526 m!1938961))

(declare-fun m!1938963 () Bool)

(assert (=> b!1617526 m!1938963))

(assert (=> b!1617526 m!1937275))

(declare-fun m!1938965 () Bool)

(assert (=> b!1617526 m!1938965))

(assert (=> b!1617526 m!1938963))

(assert (=> b!1617526 m!1938965))

(declare-fun m!1938967 () Bool)

(assert (=> b!1617526 m!1938967))

(assert (=> d!486302 d!486776))

(declare-fun d!486778 () Bool)

(declare-fun c!263424 () Bool)

(assert (=> d!486778 (= c!263424 (isEmpty!10713 lt!579655))))

(declare-fun e!1037535 () Bool)

(assert (=> d!486778 (= (prefixMatchZipper!138 lt!579652 lt!579655) e!1037535)))

(declare-fun b!1617527 () Bool)

(assert (=> b!1617527 (= e!1037535 (not (lostCauseZipper!31 lt!579652)))))

(declare-fun b!1617528 () Bool)

(assert (=> b!1617528 (= e!1037535 (prefixMatchZipper!138 (derivationStepZipper!55 lt!579652 (head!3362 lt!579655)) (tail!2332 lt!579655)))))

(assert (= (and d!486778 c!263424) b!1617527))

(assert (= (and d!486778 (not c!263424)) b!1617528))

(declare-fun m!1938969 () Bool)

(assert (=> d!486778 m!1938969))

(declare-fun m!1938971 () Bool)

(assert (=> b!1617527 m!1938971))

(declare-fun m!1938973 () Bool)

(assert (=> b!1617528 m!1938973))

(assert (=> b!1617528 m!1938973))

(declare-fun m!1938975 () Bool)

(assert (=> b!1617528 m!1938975))

(declare-fun m!1938977 () Bool)

(assert (=> b!1617528 m!1938977))

(assert (=> b!1617528 m!1938975))

(assert (=> b!1617528 m!1938977))

(declare-fun m!1938979 () Bool)

(assert (=> b!1617528 m!1938979))

(assert (=> d!486302 d!486778))

(declare-fun bm!104990 () Bool)

(declare-fun call!104995 () Bool)

(declare-fun call!104996 () Bool)

(assert (=> bm!104990 (= call!104995 call!104996)))

(declare-fun b!1617529 () Bool)

(declare-fun res!722094 () Bool)

(declare-fun e!1037537 () Bool)

(assert (=> b!1617529 (=> res!722094 e!1037537)))

(assert (=> b!1617529 (= res!722094 (not ((_ is Concat!7657) lt!579263)))))

(declare-fun e!1037538 () Bool)

(assert (=> b!1617529 (= e!1037538 e!1037537)))

(declare-fun b!1617530 () Bool)

(declare-fun e!1037536 () Bool)

(declare-fun call!104997 () Bool)

(assert (=> b!1617530 (= e!1037536 call!104997)))

(declare-fun b!1617531 () Bool)

(declare-fun e!1037542 () Bool)

(assert (=> b!1617531 (= e!1037542 call!104996)))

(declare-fun bm!104991 () Bool)

(declare-fun c!263426 () Bool)

(assert (=> bm!104991 (= call!104997 (validRegex!1764 (ite c!263426 (regOne!9407 lt!579263) (regTwo!9406 lt!579263))))))

(declare-fun b!1617532 () Bool)

(declare-fun e!1037539 () Bool)

(declare-fun e!1037540 () Bool)

(assert (=> b!1617532 (= e!1037539 e!1037540)))

(declare-fun c!263425 () Bool)

(assert (=> b!1617532 (= c!263425 ((_ is Star!4447) lt!579263))))

(declare-fun d!486780 () Bool)

(declare-fun res!722093 () Bool)

(assert (=> d!486780 (=> res!722093 e!1037539)))

(assert (=> d!486780 (= res!722093 ((_ is ElementMatch!4447) lt!579263))))

(assert (=> d!486780 (= (validRegex!1764 lt!579263) e!1037539)))

(declare-fun b!1617533 () Bool)

(assert (=> b!1617533 (= e!1037540 e!1037542)))

(declare-fun res!722092 () Bool)

(assert (=> b!1617533 (= res!722092 (not (nullable!1302 (reg!4776 lt!579263))))))

(assert (=> b!1617533 (=> (not res!722092) (not e!1037542))))

(declare-fun b!1617534 () Bool)

(declare-fun e!1037541 () Bool)

(assert (=> b!1617534 (= e!1037541 call!104995)))

(declare-fun b!1617535 () Bool)

(assert (=> b!1617535 (= e!1037540 e!1037538)))

(assert (=> b!1617535 (= c!263426 ((_ is Union!4447) lt!579263))))

(declare-fun b!1617536 () Bool)

(declare-fun res!722095 () Bool)

(assert (=> b!1617536 (=> (not res!722095) (not e!1037541))))

(assert (=> b!1617536 (= res!722095 call!104997)))

(assert (=> b!1617536 (= e!1037538 e!1037541)))

(declare-fun bm!104992 () Bool)

(assert (=> bm!104992 (= call!104996 (validRegex!1764 (ite c!263425 (reg!4776 lt!579263) (ite c!263426 (regTwo!9407 lt!579263) (regOne!9406 lt!579263)))))))

(declare-fun b!1617537 () Bool)

(assert (=> b!1617537 (= e!1037537 e!1037536)))

(declare-fun res!722096 () Bool)

(assert (=> b!1617537 (=> (not res!722096) (not e!1037536))))

(assert (=> b!1617537 (= res!722096 call!104995)))

(assert (= (and d!486780 (not res!722093)) b!1617532))

(assert (= (and b!1617532 c!263425) b!1617533))

(assert (= (and b!1617532 (not c!263425)) b!1617535))

(assert (= (and b!1617533 res!722092) b!1617531))

(assert (= (and b!1617535 c!263426) b!1617536))

(assert (= (and b!1617535 (not c!263426)) b!1617529))

(assert (= (and b!1617536 res!722095) b!1617534))

(assert (= (and b!1617529 (not res!722094)) b!1617537))

(assert (= (and b!1617537 res!722096) b!1617530))

(assert (= (or b!1617534 b!1617537) bm!104990))

(assert (= (or b!1617536 b!1617530) bm!104991))

(assert (= (or b!1617531 bm!104990) bm!104992))

(declare-fun m!1938981 () Bool)

(assert (=> bm!104991 m!1938981))

(declare-fun m!1938983 () Bool)

(assert (=> b!1617533 m!1938983))

(declare-fun m!1938985 () Bool)

(assert (=> bm!104992 m!1938985))

(assert (=> d!486302 d!486780))

(declare-fun d!486782 () Bool)

(declare-fun c!263427 () Bool)

(assert (=> d!486782 (= c!263427 (isEmpty!10713 lt!579655))))

(declare-fun e!1037543 () Bool)

(assert (=> d!486782 (= (prefixMatch!382 lt!579263 lt!579655) e!1037543)))

(declare-fun b!1617538 () Bool)

(assert (=> b!1617538 (= e!1037543 (not (lostCause!423 lt!579263)))))

(declare-fun b!1617539 () Bool)

(assert (=> b!1617539 (= e!1037543 (prefixMatch!382 (derivativeStep!1067 lt!579263 (head!3362 lt!579655)) (tail!2332 lt!579655)))))

(assert (= (and d!486782 c!263427) b!1617538))

(assert (= (and d!486782 (not c!263427)) b!1617539))

(assert (=> d!486782 m!1938969))

(assert (=> b!1617538 m!1936737))

(assert (=> b!1617539 m!1938973))

(assert (=> b!1617539 m!1938973))

(declare-fun m!1938987 () Bool)

(assert (=> b!1617539 m!1938987))

(assert (=> b!1617539 m!1938977))

(assert (=> b!1617539 m!1938987))

(assert (=> b!1617539 m!1938977))

(declare-fun m!1938989 () Bool)

(assert (=> b!1617539 m!1938989))

(assert (=> d!486302 d!486782))

(declare-fun d!486784 () Bool)

(assert (=> d!486784 (= (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))) (isBalanced!1762 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(declare-fun bs!394219 () Bool)

(assert (= bs!394219 d!486784))

(declare-fun m!1938991 () Bool)

(assert (=> bs!394219 m!1938991))

(assert (=> tb!92831 d!486784))

(declare-fun b!1617552 () Bool)

(declare-fun e!1037549 () Bool)

(declare-fun e!1037548 () Bool)

(assert (=> b!1617552 (= e!1037549 e!1037548)))

(declare-fun res!722111 () Bool)

(assert (=> b!1617552 (=> (not res!722111) (not e!1037548))))

(assert (=> b!1617552 (= res!722111 (<= (- 1) (- (height!889 (left!14251 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))) (height!889 (right!14581 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))))))))

(declare-fun b!1617553 () Bool)

(declare-fun res!722110 () Bool)

(assert (=> b!1617553 (=> (not res!722110) (not e!1037548))))

(assert (=> b!1617553 (= res!722110 (isBalanced!1762 (left!14251 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))))))

(declare-fun b!1617554 () Bool)

(assert (=> b!1617554 (= e!1037548 (not (isEmpty!10727 (right!14581 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))))))

(declare-fun b!1617555 () Bool)

(declare-fun res!722113 () Bool)

(assert (=> b!1617555 (=> (not res!722113) (not e!1037548))))

(assert (=> b!1617555 (= res!722113 (not (isEmpty!10727 (left!14251 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))))))

(declare-fun b!1617556 () Bool)

(declare-fun res!722112 () Bool)

(assert (=> b!1617556 (=> (not res!722112) (not e!1037548))))

(assert (=> b!1617556 (= res!722112 (<= (- (height!889 (left!14251 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))) (height!889 (right!14581 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))) 1))))

(declare-fun d!486786 () Bool)

(declare-fun res!722109 () Bool)

(assert (=> d!486786 (=> res!722109 e!1037549)))

(assert (=> d!486786 (= res!722109 (not ((_ is Node!5886) (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))))))

(assert (=> d!486786 (= (isBalanced!1762 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) e!1037549)))

(declare-fun b!1617557 () Bool)

(declare-fun res!722114 () Bool)

(assert (=> b!1617557 (=> (not res!722114) (not e!1037548))))

(assert (=> b!1617557 (= res!722114 (isBalanced!1762 (right!14581 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270)))))))

(assert (= (and d!486786 (not res!722109)) b!1617552))

(assert (= (and b!1617552 res!722111) b!1617556))

(assert (= (and b!1617556 res!722112) b!1617553))

(assert (= (and b!1617553 res!722110) b!1617557))

(assert (= (and b!1617557 res!722114) b!1617555))

(assert (= (and b!1617555 res!722113) b!1617554))

(declare-fun m!1938993 () Bool)

(assert (=> b!1617557 m!1938993))

(declare-fun m!1938995 () Bool)

(assert (=> b!1617555 m!1938995))

(declare-fun m!1938997 () Bool)

(assert (=> b!1617553 m!1938997))

(declare-fun m!1938999 () Bool)

(assert (=> b!1617552 m!1938999))

(declare-fun m!1939001 () Bool)

(assert (=> b!1617552 m!1939001))

(assert (=> b!1617556 m!1938999))

(assert (=> b!1617556 m!1939001))

(declare-fun m!1939003 () Bool)

(assert (=> b!1617554 m!1939003))

(assert (=> b!1616498 d!486786))

(assert (=> b!1616498 d!486668))

(declare-fun d!486788 () Bool)

(declare-fun c!263428 () Bool)

(assert (=> d!486788 (= c!263428 ((_ is Empty!5886) (c!263121 lt!579260)))))

(declare-fun e!1037550 () List!17772)

(assert (=> d!486788 (= (list!6927 (c!263121 lt!579260)) e!1037550)))

(declare-fun b!1617558 () Bool)

(assert (=> b!1617558 (= e!1037550 Nil!17702)))

(declare-fun b!1617559 () Bool)

(declare-fun e!1037551 () List!17772)

(assert (=> b!1617559 (= e!1037550 e!1037551)))

(declare-fun c!263429 () Bool)

(assert (=> b!1617559 (= c!263429 ((_ is Leaf!8666) (c!263121 lt!579260)))))

(declare-fun b!1617561 () Bool)

(assert (=> b!1617561 (= e!1037551 (++!4680 (list!6927 (left!14251 (c!263121 lt!579260))) (list!6927 (right!14581 (c!263121 lt!579260)))))))

(declare-fun b!1617560 () Bool)

(assert (=> b!1617560 (= e!1037551 (list!6929 (xs!8714 (c!263121 lt!579260))))))

(assert (= (and d!486788 c!263428) b!1617558))

(assert (= (and d!486788 (not c!263428)) b!1617559))

(assert (= (and b!1617559 c!263429) b!1617560))

(assert (= (and b!1617559 (not c!263429)) b!1617561))

(declare-fun m!1939005 () Bool)

(assert (=> b!1617561 m!1939005))

(declare-fun m!1939007 () Bool)

(assert (=> b!1617561 m!1939007))

(assert (=> b!1617561 m!1939005))

(assert (=> b!1617561 m!1939007))

(declare-fun m!1939009 () Bool)

(assert (=> b!1617561 m!1939009))

(declare-fun m!1939011 () Bool)

(assert (=> b!1617560 m!1939011))

(assert (=> d!486362 d!486788))

(declare-fun b!1617562 () Bool)

(declare-fun e!1037553 () Bool)

(declare-fun e!1037552 () Bool)

(assert (=> b!1617562 (= e!1037553 e!1037552)))

(declare-fun res!722117 () Bool)

(assert (=> b!1617562 (=> (not res!722117) (not e!1037552))))

(assert (=> b!1617562 (= res!722117 (<= (- 1) (- (height!889 (left!14251 (c!263121 lt!579627))) (height!889 (right!14581 (c!263121 lt!579627))))))))

(declare-fun b!1617563 () Bool)

(declare-fun res!722116 () Bool)

(assert (=> b!1617563 (=> (not res!722116) (not e!1037552))))

(assert (=> b!1617563 (= res!722116 (isBalanced!1762 (left!14251 (c!263121 lt!579627))))))

(declare-fun b!1617564 () Bool)

(assert (=> b!1617564 (= e!1037552 (not (isEmpty!10727 (right!14581 (c!263121 lt!579627)))))))

(declare-fun b!1617565 () Bool)

(declare-fun res!722119 () Bool)

(assert (=> b!1617565 (=> (not res!722119) (not e!1037552))))

(assert (=> b!1617565 (= res!722119 (not (isEmpty!10727 (left!14251 (c!263121 lt!579627)))))))

(declare-fun b!1617566 () Bool)

(declare-fun res!722118 () Bool)

(assert (=> b!1617566 (=> (not res!722118) (not e!1037552))))

(assert (=> b!1617566 (= res!722118 (<= (- (height!889 (left!14251 (c!263121 lt!579627))) (height!889 (right!14581 (c!263121 lt!579627)))) 1))))

(declare-fun d!486790 () Bool)

(declare-fun res!722115 () Bool)

(assert (=> d!486790 (=> res!722115 e!1037553)))

(assert (=> d!486790 (= res!722115 (not ((_ is Node!5886) (c!263121 lt!579627))))))

(assert (=> d!486790 (= (isBalanced!1762 (c!263121 lt!579627)) e!1037553)))

(declare-fun b!1617567 () Bool)

(declare-fun res!722120 () Bool)

(assert (=> b!1617567 (=> (not res!722120) (not e!1037552))))

(assert (=> b!1617567 (= res!722120 (isBalanced!1762 (right!14581 (c!263121 lt!579627))))))

(assert (= (and d!486790 (not res!722115)) b!1617562))

(assert (= (and b!1617562 res!722117) b!1617566))

(assert (= (and b!1617566 res!722118) b!1617563))

(assert (= (and b!1617563 res!722116) b!1617567))

(assert (= (and b!1617567 res!722120) b!1617565))

(assert (= (and b!1617565 res!722119) b!1617564))

(declare-fun m!1939013 () Bool)

(assert (=> b!1617567 m!1939013))

(declare-fun m!1939015 () Bool)

(assert (=> b!1617565 m!1939015))

(declare-fun m!1939017 () Bool)

(assert (=> b!1617563 m!1939017))

(declare-fun m!1939019 () Bool)

(assert (=> b!1617562 m!1939019))

(declare-fun m!1939021 () Bool)

(assert (=> b!1617562 m!1939021))

(assert (=> b!1617566 m!1939019))

(assert (=> b!1617566 m!1939021))

(declare-fun m!1939023 () Bool)

(assert (=> b!1617564 m!1939023))

(assert (=> b!1616489 d!486790))

(declare-fun d!486792 () Bool)

(assert (=> d!486792 (= (list!6924 lt!579817) (list!6927 (c!263121 lt!579817)))))

(declare-fun bs!394220 () Bool)

(assert (= bs!394220 d!486792))

(declare-fun m!1939025 () Bool)

(assert (=> bs!394220 m!1939025))

(assert (=> d!486370 d!486792))

(declare-fun d!486794 () Bool)

(assert (=> d!486794 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))) (list!6927 (c!263121 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun bs!394221 () Bool)

(assert (= bs!394221 d!486794))

(declare-fun m!1939027 () Bool)

(assert (=> bs!394221 m!1939027))

(assert (=> b!1616434 d!486794))

(declare-fun d!486796 () Bool)

(declare-fun lt!580201 () BalanceConc!11716)

(assert (=> d!486796 (= (list!6924 lt!580201) (originalCharacters!3933 (_1!10020 (get!5079 lt!579577))))))

(assert (=> d!486796 (= lt!580201 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))) (value!98564 (_1!10020 (get!5079 lt!579577)))))))

(assert (=> d!486796 (= (charsOf!1768 (_1!10020 (get!5079 lt!579577))) lt!580201)))

(declare-fun b_lambda!50997 () Bool)

(assert (=> (not b_lambda!50997) (not d!486796)))

(declare-fun t!148383 () Bool)

(declare-fun tb!92887 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148383) tb!92887))

(declare-fun b!1617568 () Bool)

(declare-fun e!1037554 () Bool)

(declare-fun tp!471291 () Bool)

(assert (=> b!1617568 (= e!1037554 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))) (value!98564 (_1!10020 (get!5079 lt!579577)))))) tp!471291))))

(declare-fun result!111978 () Bool)

(assert (=> tb!92887 (= result!111978 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))) (value!98564 (_1!10020 (get!5079 lt!579577))))) e!1037554))))

(assert (= tb!92887 b!1617568))

(declare-fun m!1939029 () Bool)

(assert (=> b!1617568 m!1939029))

(declare-fun m!1939031 () Bool)

(assert (=> tb!92887 m!1939031))

(assert (=> d!486796 t!148383))

(declare-fun b_and!114693 () Bool)

(assert (= b_and!114685 (and (=> t!148383 result!111978) b_and!114693)))

(declare-fun t!148385 () Bool)

(declare-fun tb!92889 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148385) tb!92889))

(declare-fun result!111980 () Bool)

(assert (= result!111980 result!111978))

(assert (=> d!486796 t!148385))

(declare-fun b_and!114695 () Bool)

(assert (= b_and!114687 (and (=> t!148385 result!111980) b_and!114695)))

(declare-fun t!148387 () Bool)

(declare-fun tb!92891 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148387) tb!92891))

(declare-fun result!111982 () Bool)

(assert (= result!111982 result!111978))

(assert (=> d!486796 t!148387))

(declare-fun b_and!114697 () Bool)

(assert (= b_and!114689 (and (=> t!148387 result!111982) b_and!114697)))

(declare-fun t!148389 () Bool)

(declare-fun tb!92893 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148389) tb!92893))

(declare-fun result!111984 () Bool)

(assert (= result!111984 result!111978))

(assert (=> d!486796 t!148389))

(declare-fun b_and!114699 () Bool)

(assert (= b_and!114691 (and (=> t!148389 result!111984) b_and!114699)))

(declare-fun m!1939033 () Bool)

(assert (=> d!486796 m!1939033))

(declare-fun m!1939035 () Bool)

(assert (=> d!486796 m!1939035))

(assert (=> b!1616434 d!486796))

(assert (=> b!1616434 d!486588))

(declare-fun d!486798 () Bool)

(declare-fun lt!580216 () List!17772)

(assert (=> d!486798 (= lt!580216 (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (printList!863 thiss!17113 (dropList!578 lt!579267 0))))))

(declare-fun e!1037557 () List!17772)

(assert (=> d!486798 (= lt!580216 e!1037557)))

(declare-fun c!263432 () Bool)

(assert (=> d!486798 (= c!263432 ((_ is Cons!17703) (dropList!578 lt!579267 0)))))

(assert (=> d!486798 (= (printListTailRec!341 thiss!17113 (dropList!578 lt!579267 0) (list!6924 (BalanceConc!11717 Empty!5886))) lt!580216)))

(declare-fun b!1617573 () Bool)

(assert (=> b!1617573 (= e!1037557 (printListTailRec!341 thiss!17113 (t!148288 (dropList!578 lt!579267 0)) (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (list!6924 (charsOf!1768 (h!23104 (dropList!578 lt!579267 0)))))))))

(declare-fun lt!580214 () List!17772)

(assert (=> b!1617573 (= lt!580214 (list!6924 (charsOf!1768 (h!23104 (dropList!578 lt!579267 0)))))))

(declare-fun lt!580212 () List!17772)

(assert (=> b!1617573 (= lt!580212 (printList!863 thiss!17113 (t!148288 (dropList!578 lt!579267 0))))))

(declare-fun lt!580215 () Unit!28465)

(declare-fun lemmaConcatAssociativity!1002 (List!17772 List!17772 List!17772) Unit!28465)

(assert (=> b!1617573 (= lt!580215 (lemmaConcatAssociativity!1002 (list!6924 (BalanceConc!11717 Empty!5886)) lt!580214 lt!580212))))

(assert (=> b!1617573 (= (++!4680 (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) lt!580214) lt!580212) (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (++!4680 lt!580214 lt!580212)))))

(declare-fun lt!580213 () Unit!28465)

(assert (=> b!1617573 (= lt!580213 lt!580215)))

(declare-fun b!1617574 () Bool)

(assert (=> b!1617574 (= e!1037557 (list!6924 (BalanceConc!11717 Empty!5886)))))

(assert (= (and d!486798 c!263432) b!1617573))

(assert (= (and d!486798 (not c!263432)) b!1617574))

(assert (=> d!486798 m!1937177))

(declare-fun m!1939037 () Bool)

(assert (=> d!486798 m!1939037))

(assert (=> d!486798 m!1937179))

(assert (=> d!486798 m!1939037))

(declare-fun m!1939039 () Bool)

(assert (=> d!486798 m!1939039))

(declare-fun m!1939041 () Bool)

(assert (=> b!1617573 m!1939041))

(declare-fun m!1939043 () Bool)

(assert (=> b!1617573 m!1939043))

(assert (=> b!1617573 m!1937179))

(declare-fun m!1939045 () Bool)

(assert (=> b!1617573 m!1939045))

(declare-fun m!1939047 () Bool)

(assert (=> b!1617573 m!1939047))

(declare-fun m!1939049 () Bool)

(assert (=> b!1617573 m!1939049))

(assert (=> b!1617573 m!1939045))

(declare-fun m!1939051 () Bool)

(assert (=> b!1617573 m!1939051))

(assert (=> b!1617573 m!1937179))

(declare-fun m!1939053 () Bool)

(assert (=> b!1617573 m!1939053))

(assert (=> b!1617573 m!1939051))

(declare-fun m!1939055 () Bool)

(assert (=> b!1617573 m!1939055))

(assert (=> b!1617573 m!1939053))

(declare-fun m!1939057 () Bool)

(assert (=> b!1617573 m!1939057))

(assert (=> b!1617573 m!1937179))

(assert (=> b!1617573 m!1939055))

(assert (=> b!1617573 m!1939041))

(assert (=> b!1617573 m!1937179))

(declare-fun m!1939059 () Bool)

(assert (=> b!1617573 m!1939059))

(assert (=> d!486280 d!486798))

(declare-fun d!486800 () Bool)

(declare-fun lt!580219 () Int)

(assert (=> d!486800 (= lt!580219 (size!14204 (list!6923 lt!579267)))))

(declare-fun size!14205 (Conc!5887) Int)

(assert (=> d!486800 (= lt!580219 (size!14205 (c!263123 lt!579267)))))

(assert (=> d!486800 (= (size!14198 lt!579267) lt!580219)))

(declare-fun bs!394222 () Bool)

(assert (= bs!394222 d!486800))

(assert (=> bs!394222 m!1937137))

(assert (=> bs!394222 m!1937137))

(declare-fun m!1939061 () Bool)

(assert (=> bs!394222 m!1939061))

(declare-fun m!1939063 () Bool)

(assert (=> bs!394222 m!1939063))

(assert (=> d!486280 d!486800))

(declare-fun d!486802 () Bool)

(assert (=> d!486802 (= (list!6924 (BalanceConc!11717 Empty!5886)) (list!6927 (c!263121 (BalanceConc!11717 Empty!5886))))))

(declare-fun bs!394223 () Bool)

(assert (= bs!394223 d!486802))

(declare-fun m!1939065 () Bool)

(assert (=> bs!394223 m!1939065))

(assert (=> d!486280 d!486802))

(declare-fun d!486804 () Bool)

(assert (=> d!486804 (= (list!6924 lt!579595) (list!6927 (c!263121 lt!579595)))))

(declare-fun bs!394224 () Bool)

(assert (= bs!394224 d!486804))

(declare-fun m!1939067 () Bool)

(assert (=> bs!394224 m!1939067))

(assert (=> d!486280 d!486804))

(declare-fun d!486806 () Bool)

(assert (=> d!486806 (= (dropList!578 lt!579267 0) (drop!856 (list!6928 (c!263123 lt!579267)) 0))))

(declare-fun bs!394225 () Bool)

(assert (= bs!394225 d!486806))

(assert (=> bs!394225 m!1938839))

(assert (=> bs!394225 m!1938839))

(declare-fun m!1939069 () Bool)

(assert (=> bs!394225 m!1939069))

(assert (=> d!486280 d!486806))

(assert (=> b!1616736 d!486262))

(declare-fun b!1617575 () Bool)

(declare-fun e!1037558 () Bool)

(assert (=> b!1617575 (= e!1037558 (inv!17 (value!98564 (h!23104 (t!148288 tokens!457)))))))

(declare-fun b!1617576 () Bool)

(declare-fun e!1037560 () Bool)

(assert (=> b!1617576 (= e!1037560 (inv!15 (value!98564 (h!23104 (t!148288 tokens!457)))))))

(declare-fun b!1617577 () Bool)

(declare-fun e!1037559 () Bool)

(assert (=> b!1617577 (= e!1037559 e!1037558)))

(declare-fun c!263433 () Bool)

(assert (=> b!1617577 (= c!263433 ((_ is IntegerValue!9628) (value!98564 (h!23104 (t!148288 tokens!457)))))))

(declare-fun b!1617578 () Bool)

(assert (=> b!1617578 (= e!1037559 (inv!16 (value!98564 (h!23104 (t!148288 tokens!457)))))))

(declare-fun d!486808 () Bool)

(declare-fun c!263434 () Bool)

(assert (=> d!486808 (= c!263434 ((_ is IntegerValue!9627) (value!98564 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486808 (= (inv!21 (value!98564 (h!23104 (t!148288 tokens!457)))) e!1037559)))

(declare-fun b!1617579 () Bool)

(declare-fun res!722121 () Bool)

(assert (=> b!1617579 (=> res!722121 e!1037560)))

(assert (=> b!1617579 (= res!722121 (not ((_ is IntegerValue!9629) (value!98564 (h!23104 (t!148288 tokens!457))))))))

(assert (=> b!1617579 (= e!1037558 e!1037560)))

(assert (= (and d!486808 c!263434) b!1617578))

(assert (= (and d!486808 (not c!263434)) b!1617577))

(assert (= (and b!1617577 c!263433) b!1617575))

(assert (= (and b!1617577 (not c!263433)) b!1617579))

(assert (= (and b!1617579 (not res!722121)) b!1617576))

(declare-fun m!1939071 () Bool)

(assert (=> b!1617575 m!1939071))

(declare-fun m!1939073 () Bool)

(assert (=> b!1617576 m!1939073))

(declare-fun m!1939075 () Bool)

(assert (=> b!1617578 m!1939075))

(assert (=> b!1616786 d!486808))

(declare-fun d!486810 () Bool)

(assert (=> d!486810 (= (list!6924 lt!579572) (list!6927 (c!263121 lt!579572)))))

(declare-fun bs!394226 () Bool)

(assert (= bs!394226 d!486810))

(declare-fun m!1939077 () Bool)

(assert (=> bs!394226 m!1939077))

(assert (=> d!486274 d!486810))

(declare-fun d!486812 () Bool)

(declare-fun c!263435 () Bool)

(assert (=> d!486812 (= c!263435 ((_ is Cons!17703) (list!6923 lt!579267)))))

(declare-fun e!1037561 () List!17772)

(assert (=> d!486812 (= (printList!863 thiss!17113 (list!6923 lt!579267)) e!1037561)))

(declare-fun b!1617580 () Bool)

(assert (=> b!1617580 (= e!1037561 (++!4680 (list!6924 (charsOf!1768 (h!23104 (list!6923 lt!579267)))) (printList!863 thiss!17113 (t!148288 (list!6923 lt!579267)))))))

(declare-fun b!1617581 () Bool)

(assert (=> b!1617581 (= e!1037561 Nil!17702)))

(assert (= (and d!486812 c!263435) b!1617580))

(assert (= (and d!486812 (not c!263435)) b!1617581))

(declare-fun m!1939079 () Bool)

(assert (=> b!1617580 m!1939079))

(assert (=> b!1617580 m!1939079))

(declare-fun m!1939081 () Bool)

(assert (=> b!1617580 m!1939081))

(declare-fun m!1939083 () Bool)

(assert (=> b!1617580 m!1939083))

(assert (=> b!1617580 m!1939081))

(assert (=> b!1617580 m!1939083))

(declare-fun m!1939085 () Bool)

(assert (=> b!1617580 m!1939085))

(assert (=> d!486274 d!486812))

(assert (=> d!486274 d!486744))

(assert (=> d!486274 d!486280))

(declare-fun d!486814 () Bool)

(assert (=> d!486814 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))) (list!6927 (c!263121 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun bs!394227 () Bool)

(assert (= bs!394227 d!486814))

(declare-fun m!1939087 () Bool)

(assert (=> bs!394227 m!1939087))

(assert (=> b!1616251 d!486814))

(declare-fun d!486816 () Bool)

(declare-fun lt!580220 () BalanceConc!11716)

(assert (=> d!486816 (= (list!6924 lt!580220) (originalCharacters!3933 (_1!10020 (get!5079 lt!579341))))))

(assert (=> d!486816 (= lt!580220 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))) (value!98564 (_1!10020 (get!5079 lt!579341)))))))

(assert (=> d!486816 (= (charsOf!1768 (_1!10020 (get!5079 lt!579341))) lt!580220)))

(declare-fun b_lambda!50999 () Bool)

(assert (=> (not b_lambda!50999) (not d!486816)))

(declare-fun tb!92895 () Bool)

(declare-fun t!148391 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148391) tb!92895))

(declare-fun b!1617582 () Bool)

(declare-fun e!1037562 () Bool)

(declare-fun tp!471292 () Bool)

(assert (=> b!1617582 (= e!1037562 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))) (value!98564 (_1!10020 (get!5079 lt!579341)))))) tp!471292))))

(declare-fun result!111986 () Bool)

(assert (=> tb!92895 (= result!111986 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))) (value!98564 (_1!10020 (get!5079 lt!579341))))) e!1037562))))

(assert (= tb!92895 b!1617582))

(declare-fun m!1939089 () Bool)

(assert (=> b!1617582 m!1939089))

(declare-fun m!1939091 () Bool)

(assert (=> tb!92895 m!1939091))

(assert (=> d!486816 t!148391))

(declare-fun b_and!114701 () Bool)

(assert (= b_and!114693 (and (=> t!148391 result!111986) b_and!114701)))

(declare-fun tb!92897 () Bool)

(declare-fun t!148393 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148393) tb!92897))

(declare-fun result!111988 () Bool)

(assert (= result!111988 result!111986))

(assert (=> d!486816 t!148393))

(declare-fun b_and!114703 () Bool)

(assert (= b_and!114695 (and (=> t!148393 result!111988) b_and!114703)))

(declare-fun t!148395 () Bool)

(declare-fun tb!92899 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148395) tb!92899))

(declare-fun result!111990 () Bool)

(assert (= result!111990 result!111986))

(assert (=> d!486816 t!148395))

(declare-fun b_and!114705 () Bool)

(assert (= b_and!114697 (and (=> t!148395 result!111990) b_and!114705)))

(declare-fun tb!92901 () Bool)

(declare-fun t!148397 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148397) tb!92901))

(declare-fun result!111992 () Bool)

(assert (= result!111992 result!111986))

(assert (=> d!486816 t!148397))

(declare-fun b_and!114707 () Bool)

(assert (= b_and!114699 (and (=> t!148397 result!111992) b_and!114707)))

(declare-fun m!1939093 () Bool)

(assert (=> d!486816 m!1939093))

(declare-fun m!1939095 () Bool)

(assert (=> d!486816 m!1939095))

(assert (=> b!1616251 d!486816))

(assert (=> b!1616251 d!486572))

(declare-fun b!1617585 () Bool)

(declare-fun e!1037564 () List!17773)

(assert (=> b!1617585 (= e!1037564 (list!6930 (xs!8715 (c!263123 (_1!10019 lt!579277)))))))

(declare-fun b!1617583 () Bool)

(declare-fun e!1037563 () List!17773)

(assert (=> b!1617583 (= e!1037563 Nil!17703)))

(declare-fun b!1617586 () Bool)

(assert (=> b!1617586 (= e!1037564 (++!4683 (list!6928 (left!14252 (c!263123 (_1!10019 lt!579277)))) (list!6928 (right!14582 (c!263123 (_1!10019 lt!579277))))))))

(declare-fun d!486818 () Bool)

(declare-fun c!263436 () Bool)

(assert (=> d!486818 (= c!263436 ((_ is Empty!5887) (c!263123 (_1!10019 lt!579277))))))

(assert (=> d!486818 (= (list!6928 (c!263123 (_1!10019 lt!579277))) e!1037563)))

(declare-fun b!1617584 () Bool)

(assert (=> b!1617584 (= e!1037563 e!1037564)))

(declare-fun c!263437 () Bool)

(assert (=> b!1617584 (= c!263437 ((_ is Leaf!8667) (c!263123 (_1!10019 lt!579277))))))

(assert (= (and d!486818 c!263436) b!1617583))

(assert (= (and d!486818 (not c!263436)) b!1617584))

(assert (= (and b!1617584 c!263437) b!1617585))

(assert (= (and b!1617584 (not c!263437)) b!1617586))

(declare-fun m!1939097 () Bool)

(assert (=> b!1617585 m!1939097))

(declare-fun m!1939099 () Bool)

(assert (=> b!1617586 m!1939099))

(declare-fun m!1939101 () Bool)

(assert (=> b!1617586 m!1939101))

(assert (=> b!1617586 m!1939099))

(assert (=> b!1617586 m!1939101))

(declare-fun m!1939103 () Bool)

(assert (=> b!1617586 m!1939103))

(assert (=> d!486224 d!486818))

(declare-fun d!486820 () Bool)

(assert (=> d!486820 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))) (list!6927 (c!263121 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun bs!394228 () Bool)

(assert (= bs!394228 d!486820))

(declare-fun m!1939105 () Bool)

(assert (=> bs!394228 m!1939105))

(assert (=> b!1616260 d!486820))

(declare-fun d!486822 () Bool)

(declare-fun lt!580221 () BalanceConc!11716)

(assert (=> d!486822 (= (list!6924 lt!580221) (originalCharacters!3933 (_1!10020 (get!5079 lt!579346))))))

(assert (=> d!486822 (= lt!580221 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))) (value!98564 (_1!10020 (get!5079 lt!579346)))))))

(assert (=> d!486822 (= (charsOf!1768 (_1!10020 (get!5079 lt!579346))) lt!580221)))

(declare-fun b_lambda!51001 () Bool)

(assert (=> (not b_lambda!51001) (not d!486822)))

(declare-fun tb!92903 () Bool)

(declare-fun t!148399 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148399) tb!92903))

(declare-fun b!1617587 () Bool)

(declare-fun e!1037565 () Bool)

(declare-fun tp!471293 () Bool)

(assert (=> b!1617587 (= e!1037565 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))) (value!98564 (_1!10020 (get!5079 lt!579346)))))) tp!471293))))

(declare-fun result!111994 () Bool)

(assert (=> tb!92903 (= result!111994 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))) (value!98564 (_1!10020 (get!5079 lt!579346))))) e!1037565))))

(assert (= tb!92903 b!1617587))

(declare-fun m!1939107 () Bool)

(assert (=> b!1617587 m!1939107))

(declare-fun m!1939109 () Bool)

(assert (=> tb!92903 m!1939109))

(assert (=> d!486822 t!148399))

(declare-fun b_and!114709 () Bool)

(assert (= b_and!114701 (and (=> t!148399 result!111994) b_and!114709)))

(declare-fun t!148401 () Bool)

(declare-fun tb!92905 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148401) tb!92905))

(declare-fun result!111996 () Bool)

(assert (= result!111996 result!111994))

(assert (=> d!486822 t!148401))

(declare-fun b_and!114711 () Bool)

(assert (= b_and!114703 (and (=> t!148401 result!111996) b_and!114711)))

(declare-fun t!148403 () Bool)

(declare-fun tb!92907 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148403) tb!92907))

(declare-fun result!111998 () Bool)

(assert (= result!111998 result!111994))

(assert (=> d!486822 t!148403))

(declare-fun b_and!114713 () Bool)

(assert (= b_and!114705 (and (=> t!148403 result!111998) b_and!114713)))

(declare-fun tb!92909 () Bool)

(declare-fun t!148405 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148405) tb!92909))

(declare-fun result!112000 () Bool)

(assert (= result!112000 result!111994))

(assert (=> d!486822 t!148405))

(declare-fun b_and!114715 () Bool)

(assert (= b_and!114707 (and (=> t!148405 result!112000) b_and!114715)))

(declare-fun m!1939111 () Bool)

(assert (=> d!486822 m!1939111))

(declare-fun m!1939113 () Bool)

(assert (=> d!486822 m!1939113))

(assert (=> b!1616260 d!486822))

(assert (=> b!1616260 d!486556))

(declare-fun d!486824 () Bool)

(declare-fun e!1037568 () Bool)

(assert (=> d!486824 e!1037568))

(declare-fun res!722124 () Bool)

(assert (=> d!486824 (=> (not res!722124) (not e!1037568))))

(declare-fun lt!580236 () BalanceConc!11718)

(assert (=> d!486824 (= res!722124 (= (list!6923 lt!580236) tokens!457))))

(declare-fun fromList!381 (List!17773) Conc!5887)

(assert (=> d!486824 (= lt!580236 (BalanceConc!11719 (fromList!381 tokens!457)))))

(assert (=> d!486824 (= (fromListB!867 tokens!457) lt!580236)))

(declare-fun b!1617592 () Bool)

(assert (=> b!1617592 (= e!1037568 (isBalanced!1761 (fromList!381 tokens!457)))))

(assert (= (and d!486824 res!722124) b!1617592))

(declare-fun m!1939115 () Bool)

(assert (=> d!486824 m!1939115))

(declare-fun m!1939117 () Bool)

(assert (=> d!486824 m!1939117))

(assert (=> b!1617592 m!1939117))

(assert (=> b!1617592 m!1939117))

(declare-fun m!1939119 () Bool)

(assert (=> b!1617592 m!1939119))

(assert (=> d!486368 d!486824))

(declare-fun d!486826 () Bool)

(declare-fun lt!580239 () Bool)

(assert (=> d!486826 (= lt!580239 (isEmpty!10713 (list!6924 (_2!10019 lt!579560))))))

(assert (=> d!486826 (= lt!580239 (isEmpty!10727 (c!263121 (_2!10019 lt!579560))))))

(assert (=> d!486826 (= (isEmpty!10720 (_2!10019 lt!579560)) lt!580239)))

(declare-fun bs!394229 () Bool)

(assert (= bs!394229 d!486826))

(declare-fun m!1939121 () Bool)

(assert (=> bs!394229 m!1939121))

(assert (=> bs!394229 m!1939121))

(declare-fun m!1939123 () Bool)

(assert (=> bs!394229 m!1939123))

(declare-fun m!1939125 () Bool)

(assert (=> bs!394229 m!1939125))

(assert (=> b!1616415 d!486826))

(declare-fun b!1617693 () Bool)

(declare-fun res!722162 () Bool)

(declare-fun e!1037627 () Bool)

(assert (=> b!1617693 (=> (not res!722162) (not e!1037627))))

(declare-fun lt!580358 () Option!3247)

(assert (=> b!1617693 (= res!722162 (= (rule!4939 (_1!10020 (get!5079 lt!580358))) (rule!4939 lt!579806)))))

(declare-fun b!1617694 () Bool)

(declare-fun res!722164 () Bool)

(assert (=> b!1617694 (=> (not res!722164) (not e!1037627))))

(assert (=> b!1617694 (= res!722164 (< (size!14197 (_2!10020 (get!5079 lt!580358))) (size!14197 lt!579801)))))

(declare-fun d!486828 () Bool)

(declare-fun e!1037624 () Bool)

(assert (=> d!486828 e!1037624))

(declare-fun res!722161 () Bool)

(assert (=> d!486828 (=> res!722161 e!1037624)))

(assert (=> d!486828 (= res!722161 (isEmpty!10719 lt!580358))))

(declare-fun e!1037625 () Option!3247)

(assert (=> d!486828 (= lt!580358 e!1037625)))

(declare-fun c!263472 () Bool)

(declare-datatypes ((tuple2!17248 0))(
  ( (tuple2!17249 (_1!10026 List!17772) (_2!10026 List!17772)) )
))
(declare-fun lt!580357 () tuple2!17248)

(assert (=> d!486828 (= c!263472 (isEmpty!10713 (_1!10026 lt!580357)))))

(declare-fun findLongestMatch!285 (Regex!4447 List!17772) tuple2!17248)

(assert (=> d!486828 (= lt!580357 (findLongestMatch!285 (regex!3119 (rule!4939 lt!579806)) lt!579801))))

(assert (=> d!486828 (ruleValid!730 thiss!17113 (rule!4939 lt!579806))))

(assert (=> d!486828 (= (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!579806) lt!579801) lt!580358)))

(declare-fun b!1617695 () Bool)

(assert (=> b!1617695 (= e!1037624 e!1037627)))

(declare-fun res!722165 () Bool)

(assert (=> b!1617695 (=> (not res!722165) (not e!1037627))))

(assert (=> b!1617695 (= res!722165 (matchR!1946 (regex!3119 (rule!4939 lt!579806)) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580358))))))))

(declare-fun b!1617696 () Bool)

(declare-fun res!722166 () Bool)

(assert (=> b!1617696 (=> (not res!722166) (not e!1037627))))

(assert (=> b!1617696 (= res!722166 (= (value!98564 (_1!10020 (get!5079 lt!580358))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580358)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580358)))))))))

(declare-fun b!1617697 () Bool)

(assert (=> b!1617697 (= e!1037625 None!3246)))

(declare-fun b!1617698 () Bool)

(assert (=> b!1617698 (= e!1037625 (Some!3246 (tuple2!17237 (Token!5805 (apply!4462 (transformation!3119 (rule!4939 lt!579806)) (seqFromList!1988 (_1!10026 lt!580357))) (rule!4939 lt!579806) (size!14200 (seqFromList!1988 (_1!10026 lt!580357))) (_1!10026 lt!580357)) (_2!10026 lt!580357))))))

(declare-fun lt!580359 () Unit!28465)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!343 (Regex!4447 List!17772) Unit!28465)

(assert (=> b!1617698 (= lt!580359 (longestMatchIsAcceptedByMatchOrIsEmpty!343 (regex!3119 (rule!4939 lt!579806)) lt!579801))))

(declare-fun res!722167 () Bool)

(declare-fun findLongestMatchInner!359 (Regex!4447 List!17772 Int List!17772 List!17772 Int) tuple2!17248)

(assert (=> b!1617698 (= res!722167 (isEmpty!10713 (_1!10026 (findLongestMatchInner!359 (regex!3119 (rule!4939 lt!579806)) Nil!17702 (size!14197 Nil!17702) lt!579801 lt!579801 (size!14197 lt!579801)))))))

(declare-fun e!1037626 () Bool)

(assert (=> b!1617698 (=> res!722167 e!1037626)))

(assert (=> b!1617698 e!1037626))

(declare-fun lt!580360 () Unit!28465)

(assert (=> b!1617698 (= lt!580360 lt!580359)))

(declare-fun lt!580356 () Unit!28465)

(declare-fun lemmaSemiInverse!391 (TokenValueInjection!6078 BalanceConc!11716) Unit!28465)

(assert (=> b!1617698 (= lt!580356 (lemmaSemiInverse!391 (transformation!3119 (rule!4939 lt!579806)) (seqFromList!1988 (_1!10026 lt!580357))))))

(declare-fun b!1617699 () Bool)

(declare-fun res!722163 () Bool)

(assert (=> b!1617699 (=> (not res!722163) (not e!1037627))))

(assert (=> b!1617699 (= res!722163 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580358)))) (_2!10020 (get!5079 lt!580358))) lt!579801))))

(declare-fun b!1617700 () Bool)

(assert (=> b!1617700 (= e!1037626 (matchR!1946 (regex!3119 (rule!4939 lt!579806)) (_1!10026 (findLongestMatchInner!359 (regex!3119 (rule!4939 lt!579806)) Nil!17702 (size!14197 Nil!17702) lt!579801 lt!579801 (size!14197 lt!579801)))))))

(declare-fun b!1617701 () Bool)

(assert (=> b!1617701 (= e!1037627 (= (size!14194 (_1!10020 (get!5079 lt!580358))) (size!14197 (originalCharacters!3933 (_1!10020 (get!5079 lt!580358))))))))

(assert (= (and d!486828 c!263472) b!1617697))

(assert (= (and d!486828 (not c!263472)) b!1617698))

(assert (= (and b!1617698 (not res!722167)) b!1617700))

(assert (= (and d!486828 (not res!722161)) b!1617695))

(assert (= (and b!1617695 res!722165) b!1617699))

(assert (= (and b!1617699 res!722163) b!1617694))

(assert (= (and b!1617694 res!722164) b!1617693))

(assert (= (and b!1617693 res!722162) b!1617696))

(assert (= (and b!1617696 res!722166) b!1617701))

(declare-fun m!1939315 () Bool)

(assert (=> b!1617693 m!1939315))

(assert (=> b!1617699 m!1939315))

(declare-fun m!1939317 () Bool)

(assert (=> b!1617699 m!1939317))

(assert (=> b!1617699 m!1939317))

(declare-fun m!1939319 () Bool)

(assert (=> b!1617699 m!1939319))

(assert (=> b!1617699 m!1939319))

(declare-fun m!1939321 () Bool)

(assert (=> b!1617699 m!1939321))

(declare-fun m!1939323 () Bool)

(assert (=> b!1617698 m!1939323))

(declare-fun m!1939325 () Bool)

(assert (=> b!1617698 m!1939325))

(assert (=> b!1617698 m!1939325))

(declare-fun m!1939327 () Bool)

(assert (=> b!1617698 m!1939327))

(declare-fun m!1939329 () Bool)

(assert (=> b!1617698 m!1939329))

(declare-fun m!1939331 () Bool)

(assert (=> b!1617698 m!1939331))

(assert (=> b!1617698 m!1939331))

(assert (=> b!1617698 m!1939329))

(declare-fun m!1939333 () Bool)

(assert (=> b!1617698 m!1939333))

(assert (=> b!1617698 m!1939325))

(declare-fun m!1939335 () Bool)

(assert (=> b!1617698 m!1939335))

(assert (=> b!1617698 m!1939325))

(declare-fun m!1939337 () Bool)

(assert (=> b!1617698 m!1939337))

(declare-fun m!1939339 () Bool)

(assert (=> b!1617698 m!1939339))

(assert (=> b!1617701 m!1939315))

(declare-fun m!1939341 () Bool)

(assert (=> b!1617701 m!1939341))

(declare-fun m!1939343 () Bool)

(assert (=> d!486828 m!1939343))

(declare-fun m!1939345 () Bool)

(assert (=> d!486828 m!1939345))

(declare-fun m!1939347 () Bool)

(assert (=> d!486828 m!1939347))

(declare-fun m!1939349 () Bool)

(assert (=> d!486828 m!1939349))

(assert (=> b!1617696 m!1939315))

(declare-fun m!1939351 () Bool)

(assert (=> b!1617696 m!1939351))

(assert (=> b!1617696 m!1939351))

(declare-fun m!1939353 () Bool)

(assert (=> b!1617696 m!1939353))

(assert (=> b!1617700 m!1939331))

(assert (=> b!1617700 m!1939329))

(assert (=> b!1617700 m!1939331))

(assert (=> b!1617700 m!1939329))

(assert (=> b!1617700 m!1939333))

(declare-fun m!1939355 () Bool)

(assert (=> b!1617700 m!1939355))

(assert (=> b!1617694 m!1939315))

(declare-fun m!1939357 () Bool)

(assert (=> b!1617694 m!1939357))

(assert (=> b!1617694 m!1939329))

(assert (=> b!1617695 m!1939315))

(assert (=> b!1617695 m!1939317))

(assert (=> b!1617695 m!1939317))

(assert (=> b!1617695 m!1939319))

(assert (=> b!1617695 m!1939319))

(declare-fun m!1939359 () Bool)

(assert (=> b!1617695 m!1939359))

(assert (=> b!1616608 d!486828))

(declare-fun d!486870 () Bool)

(declare-fun lt!580362 () BalanceConc!11716)

(assert (=> d!486870 (= (list!6924 lt!580362) (originalCharacters!3933 lt!579806))))

(assert (=> d!486870 (= lt!580362 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 lt!579806))) (value!98564 lt!579806)))))

(assert (=> d!486870 (= (charsOf!1768 lt!579806) lt!580362)))

(declare-fun b_lambda!51005 () Bool)

(assert (=> (not b_lambda!51005) (not d!486870)))

(declare-fun tb!92919 () Bool)

(declare-fun t!148415 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148415) tb!92919))

(declare-fun b!1617709 () Bool)

(declare-fun e!1037633 () Bool)

(declare-fun tp!471294 () Bool)

(assert (=> b!1617709 (= e!1037633 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 lt!579806))) (value!98564 lt!579806)))) tp!471294))))

(declare-fun result!112012 () Bool)

(assert (=> tb!92919 (= result!112012 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 lt!579806))) (value!98564 lt!579806))) e!1037633))))

(assert (= tb!92919 b!1617709))

(declare-fun m!1939361 () Bool)

(assert (=> b!1617709 m!1939361))

(declare-fun m!1939363 () Bool)

(assert (=> tb!92919 m!1939363))

(assert (=> d!486870 t!148415))

(declare-fun b_and!114725 () Bool)

(assert (= b_and!114709 (and (=> t!148415 result!112012) b_and!114725)))

(declare-fun t!148417 () Bool)

(declare-fun tb!92921 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148417) tb!92921))

(declare-fun result!112014 () Bool)

(assert (= result!112014 result!112012))

(assert (=> d!486870 t!148417))

(declare-fun b_and!114727 () Bool)

(assert (= b_and!114711 (and (=> t!148417 result!112014) b_and!114727)))

(declare-fun tb!92923 () Bool)

(declare-fun t!148419 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148419) tb!92923))

(declare-fun result!112016 () Bool)

(assert (= result!112016 result!112012))

(assert (=> d!486870 t!148419))

(declare-fun b_and!114729 () Bool)

(assert (= b_and!114713 (and (=> t!148419 result!112016) b_and!114729)))

(declare-fun tb!92925 () Bool)

(declare-fun t!148421 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148421) tb!92925))

(declare-fun result!112018 () Bool)

(assert (= result!112018 result!112012))

(assert (=> d!486870 t!148421))

(declare-fun b_and!114731 () Bool)

(assert (= b_and!114715 (and (=> t!148421 result!112018) b_and!114731)))

(declare-fun m!1939369 () Bool)

(assert (=> d!486870 m!1939369))

(declare-fun m!1939371 () Bool)

(assert (=> d!486870 m!1939371))

(assert (=> b!1616608 d!486870))

(assert (=> b!1616608 d!486374))

(declare-fun d!486874 () Bool)

(assert (=> d!486874 (not (matchR!1946 (regex!3119 (rule!4939 lt!579806)) lt!579813))))

(declare-fun lt!580367 () Unit!28465)

(declare-fun choose!9736 (LexerInterface!2748 Rule!6038 List!17772 List!17772) Unit!28465)

(assert (=> d!486874 (= lt!580367 (choose!9736 thiss!17113 (rule!4939 lt!579806) lt!579813 (++!4680 lt!579274 lt!579259)))))

(assert (=> d!486874 (isPrefix!1379 lt!579813 (++!4680 lt!579274 lt!579259))))

(assert (=> d!486874 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!160 thiss!17113 (rule!4939 lt!579806) lt!579813 (++!4680 lt!579274 lt!579259)) lt!580367)))

(declare-fun bs!394239 () Bool)

(assert (= bs!394239 d!486874))

(assert (=> bs!394239 m!1937523))

(assert (=> bs!394239 m!1936461))

(declare-fun m!1939397 () Bool)

(assert (=> bs!394239 m!1939397))

(assert (=> bs!394239 m!1936461))

(declare-fun m!1939399 () Bool)

(assert (=> bs!394239 m!1939399))

(assert (=> b!1616608 d!486874))

(declare-fun d!486882 () Bool)

(assert (=> d!486882 (= (isEmpty!10719 (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!579806) lt!579801)) (not ((_ is Some!3246) (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!579806) lt!579801))))))

(assert (=> b!1616608 d!486882))

(declare-fun d!486884 () Bool)

(assert (=> d!486884 (isEmpty!10719 (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!579806) lt!579801))))

(declare-fun lt!580370 () Unit!28465)

(declare-fun choose!9737 (LexerInterface!2748 Rule!6038 List!17774 List!17772) Unit!28465)

(assert (=> d!486884 (= lt!580370 (choose!9737 thiss!17113 (rule!4939 lt!579806) rules!1846 lt!579801))))

(assert (=> d!486884 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486884 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!164 thiss!17113 (rule!4939 lt!579806) rules!1846 lt!579801) lt!580370)))

(declare-fun bs!394240 () Bool)

(assert (= bs!394240 d!486884))

(assert (=> bs!394240 m!1937517))

(assert (=> bs!394240 m!1937517))

(assert (=> bs!394240 m!1937521))

(declare-fun m!1939401 () Bool)

(assert (=> bs!394240 m!1939401))

(assert (=> bs!394240 m!1936533))

(assert (=> b!1616608 d!486884))

(declare-fun d!486886 () Bool)

(assert (=> d!486886 (= (list!6924 (charsOf!1768 lt!579806)) (list!6927 (c!263121 (charsOf!1768 lt!579806))))))

(declare-fun bs!394241 () Bool)

(assert (= bs!394241 d!486886))

(declare-fun m!1939403 () Bool)

(assert (=> bs!394241 m!1939403))

(assert (=> b!1616608 d!486886))

(declare-fun b!1617745 () Bool)

(declare-fun e!1037657 () Bool)

(declare-fun e!1037659 () Bool)

(assert (=> b!1617745 (= e!1037657 e!1037659)))

(declare-fun res!722196 () Bool)

(assert (=> b!1617745 (=> res!722196 e!1037659)))

(declare-fun call!105013 () Bool)

(assert (=> b!1617745 (= res!722196 call!105013)))

(declare-fun b!1617746 () Bool)

(declare-fun e!1037656 () Bool)

(assert (=> b!1617746 (= e!1037656 e!1037657)))

(declare-fun res!722198 () Bool)

(assert (=> b!1617746 (=> (not res!722198) (not e!1037657))))

(declare-fun lt!580373 () Bool)

(assert (=> b!1617746 (= res!722198 (not lt!580373))))

(declare-fun d!486888 () Bool)

(declare-fun e!1037654 () Bool)

(assert (=> d!486888 e!1037654))

(declare-fun c!263483 () Bool)

(assert (=> d!486888 (= c!263483 ((_ is EmptyExpr!4447) (regex!3119 (rule!4939 lt!579806))))))

(declare-fun e!1037658 () Bool)

(assert (=> d!486888 (= lt!580373 e!1037658)))

(declare-fun c!263484 () Bool)

(assert (=> d!486888 (= c!263484 (isEmpty!10713 lt!579813))))

(assert (=> d!486888 (validRegex!1764 (regex!3119 (rule!4939 lt!579806)))))

(assert (=> d!486888 (= (matchR!1946 (regex!3119 (rule!4939 lt!579806)) lt!579813) lt!580373)))

(declare-fun bm!105008 () Bool)

(assert (=> bm!105008 (= call!105013 (isEmpty!10713 lt!579813))))

(declare-fun b!1617747 () Bool)

(assert (=> b!1617747 (= e!1037658 (nullable!1302 (regex!3119 (rule!4939 lt!579806))))))

(declare-fun b!1617748 () Bool)

(declare-fun e!1037653 () Bool)

(assert (=> b!1617748 (= e!1037653 (= (head!3362 lt!579813) (c!263122 (regex!3119 (rule!4939 lt!579806)))))))

(declare-fun b!1617749 () Bool)

(assert (=> b!1617749 (= e!1037654 (= lt!580373 call!105013))))

(declare-fun b!1617750 () Bool)

(assert (=> b!1617750 (= e!1037659 (not (= (head!3362 lt!579813) (c!263122 (regex!3119 (rule!4939 lt!579806))))))))

(declare-fun b!1617751 () Bool)

(declare-fun e!1037655 () Bool)

(assert (=> b!1617751 (= e!1037655 (not lt!580373))))

(declare-fun b!1617752 () Bool)

(assert (=> b!1617752 (= e!1037658 (matchR!1946 (derivativeStep!1067 (regex!3119 (rule!4939 lt!579806)) (head!3362 lt!579813)) (tail!2332 lt!579813)))))

(declare-fun b!1617753 () Bool)

(declare-fun res!722192 () Bool)

(assert (=> b!1617753 (=> (not res!722192) (not e!1037653))))

(assert (=> b!1617753 (= res!722192 (not call!105013))))

(declare-fun b!1617754 () Bool)

(declare-fun res!722195 () Bool)

(assert (=> b!1617754 (=> res!722195 e!1037659)))

(assert (=> b!1617754 (= res!722195 (not (isEmpty!10713 (tail!2332 lt!579813))))))

(declare-fun b!1617755 () Bool)

(declare-fun res!722193 () Bool)

(assert (=> b!1617755 (=> res!722193 e!1037656)))

(assert (=> b!1617755 (= res!722193 (not ((_ is ElementMatch!4447) (regex!3119 (rule!4939 lt!579806)))))))

(assert (=> b!1617755 (= e!1037655 e!1037656)))

(declare-fun b!1617756 () Bool)

(declare-fun res!722199 () Bool)

(assert (=> b!1617756 (=> (not res!722199) (not e!1037653))))

(assert (=> b!1617756 (= res!722199 (isEmpty!10713 (tail!2332 lt!579813)))))

(declare-fun b!1617757 () Bool)

(assert (=> b!1617757 (= e!1037654 e!1037655)))

(declare-fun c!263482 () Bool)

(assert (=> b!1617757 (= c!263482 ((_ is EmptyLang!4447) (regex!3119 (rule!4939 lt!579806))))))

(declare-fun b!1617758 () Bool)

(declare-fun res!722194 () Bool)

(assert (=> b!1617758 (=> res!722194 e!1037656)))

(assert (=> b!1617758 (= res!722194 e!1037653)))

(declare-fun res!722197 () Bool)

(assert (=> b!1617758 (=> (not res!722197) (not e!1037653))))

(assert (=> b!1617758 (= res!722197 lt!580373)))

(assert (= (and d!486888 c!263484) b!1617747))

(assert (= (and d!486888 (not c!263484)) b!1617752))

(assert (= (and d!486888 c!263483) b!1617749))

(assert (= (and d!486888 (not c!263483)) b!1617757))

(assert (= (and b!1617757 c!263482) b!1617751))

(assert (= (and b!1617757 (not c!263482)) b!1617755))

(assert (= (and b!1617755 (not res!722193)) b!1617758))

(assert (= (and b!1617758 res!722197) b!1617753))

(assert (= (and b!1617753 res!722192) b!1617756))

(assert (= (and b!1617756 res!722199) b!1617748))

(assert (= (and b!1617758 (not res!722194)) b!1617746))

(assert (= (and b!1617746 res!722198) b!1617745))

(assert (= (and b!1617745 (not res!722196)) b!1617754))

(assert (= (and b!1617754 (not res!722195)) b!1617750))

(assert (= (or b!1617749 b!1617745 b!1617753) bm!105008))

(declare-fun m!1939405 () Bool)

(assert (=> b!1617752 m!1939405))

(assert (=> b!1617752 m!1939405))

(declare-fun m!1939407 () Bool)

(assert (=> b!1617752 m!1939407))

(declare-fun m!1939409 () Bool)

(assert (=> b!1617752 m!1939409))

(assert (=> b!1617752 m!1939407))

(assert (=> b!1617752 m!1939409))

(declare-fun m!1939411 () Bool)

(assert (=> b!1617752 m!1939411))

(declare-fun m!1939413 () Bool)

(assert (=> d!486888 m!1939413))

(declare-fun m!1939415 () Bool)

(assert (=> d!486888 m!1939415))

(assert (=> b!1617754 m!1939409))

(assert (=> b!1617754 m!1939409))

(declare-fun m!1939417 () Bool)

(assert (=> b!1617754 m!1939417))

(assert (=> bm!105008 m!1939413))

(assert (=> b!1617756 m!1939409))

(assert (=> b!1617756 m!1939409))

(assert (=> b!1617756 m!1939417))

(assert (=> b!1617750 m!1939405))

(declare-fun m!1939419 () Bool)

(assert (=> b!1617747 m!1939419))

(assert (=> b!1617748 m!1939405))

(assert (=> b!1616608 d!486888))

(declare-fun b!1617759 () Bool)

(declare-fun res!722201 () Bool)

(declare-fun e!1037663 () Bool)

(assert (=> b!1617759 (=> (not res!722201) (not e!1037663))))

(declare-fun lt!580376 () Option!3247)

(assert (=> b!1617759 (= res!722201 (= (rule!4939 (_1!10020 (get!5079 lt!580376))) (h!23105 rules!1846)))))

(declare-fun b!1617760 () Bool)

(declare-fun res!722203 () Bool)

(assert (=> b!1617760 (=> (not res!722203) (not e!1037663))))

(assert (=> b!1617760 (= res!722203 (< (size!14197 (_2!10020 (get!5079 lt!580376))) (size!14197 lt!579276)))))

(declare-fun d!486890 () Bool)

(declare-fun e!1037660 () Bool)

(assert (=> d!486890 e!1037660))

(declare-fun res!722200 () Bool)

(assert (=> d!486890 (=> res!722200 e!1037660)))

(assert (=> d!486890 (= res!722200 (isEmpty!10719 lt!580376))))

(declare-fun e!1037661 () Option!3247)

(assert (=> d!486890 (= lt!580376 e!1037661)))

(declare-fun c!263485 () Bool)

(declare-fun lt!580375 () tuple2!17248)

(assert (=> d!486890 (= c!263485 (isEmpty!10713 (_1!10026 lt!580375)))))

(assert (=> d!486890 (= lt!580375 (findLongestMatch!285 (regex!3119 (h!23105 rules!1846)) lt!579276))))

(assert (=> d!486890 (ruleValid!730 thiss!17113 (h!23105 rules!1846))))

(assert (=> d!486890 (= (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) lt!579276) lt!580376)))

(declare-fun b!1617761 () Bool)

(assert (=> b!1617761 (= e!1037660 e!1037663)))

(declare-fun res!722204 () Bool)

(assert (=> b!1617761 (=> (not res!722204) (not e!1037663))))

(assert (=> b!1617761 (= res!722204 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580376))))))))

(declare-fun b!1617762 () Bool)

(declare-fun res!722205 () Bool)

(assert (=> b!1617762 (=> (not res!722205) (not e!1037663))))

(assert (=> b!1617762 (= res!722205 (= (value!98564 (_1!10020 (get!5079 lt!580376))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580376)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580376)))))))))

(declare-fun b!1617763 () Bool)

(assert (=> b!1617763 (= e!1037661 None!3246)))

(declare-fun b!1617764 () Bool)

(assert (=> b!1617764 (= e!1037661 (Some!3246 (tuple2!17237 (Token!5805 (apply!4462 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!580375))) (h!23105 rules!1846) (size!14200 (seqFromList!1988 (_1!10026 lt!580375))) (_1!10026 lt!580375)) (_2!10026 lt!580375))))))

(declare-fun lt!580377 () Unit!28465)

(assert (=> b!1617764 (= lt!580377 (longestMatchIsAcceptedByMatchOrIsEmpty!343 (regex!3119 (h!23105 rules!1846)) lt!579276))))

(declare-fun res!722206 () Bool)

(assert (=> b!1617764 (= res!722206 (isEmpty!10713 (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!579276 lt!579276 (size!14197 lt!579276)))))))

(declare-fun e!1037662 () Bool)

(assert (=> b!1617764 (=> res!722206 e!1037662)))

(assert (=> b!1617764 e!1037662))

(declare-fun lt!580378 () Unit!28465)

(assert (=> b!1617764 (= lt!580378 lt!580377)))

(declare-fun lt!580374 () Unit!28465)

(assert (=> b!1617764 (= lt!580374 (lemmaSemiInverse!391 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!580375))))))

(declare-fun b!1617765 () Bool)

(declare-fun res!722202 () Bool)

(assert (=> b!1617765 (=> (not res!722202) (not e!1037663))))

(assert (=> b!1617765 (= res!722202 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580376)))) (_2!10020 (get!5079 lt!580376))) lt!579276))))

(declare-fun b!1617766 () Bool)

(assert (=> b!1617766 (= e!1037662 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!579276 lt!579276 (size!14197 lt!579276)))))))

(declare-fun b!1617767 () Bool)

(assert (=> b!1617767 (= e!1037663 (= (size!14194 (_1!10020 (get!5079 lt!580376))) (size!14197 (originalCharacters!3933 (_1!10020 (get!5079 lt!580376))))))))

(assert (= (and d!486890 c!263485) b!1617763))

(assert (= (and d!486890 (not c!263485)) b!1617764))

(assert (= (and b!1617764 (not res!722206)) b!1617766))

(assert (= (and d!486890 (not res!722200)) b!1617761))

(assert (= (and b!1617761 res!722204) b!1617765))

(assert (= (and b!1617765 res!722202) b!1617760))

(assert (= (and b!1617760 res!722203) b!1617759))

(assert (= (and b!1617759 res!722201) b!1617762))

(assert (= (and b!1617762 res!722205) b!1617767))

(declare-fun m!1939421 () Bool)

(assert (=> b!1617759 m!1939421))

(assert (=> b!1617765 m!1939421))

(declare-fun m!1939423 () Bool)

(assert (=> b!1617765 m!1939423))

(assert (=> b!1617765 m!1939423))

(declare-fun m!1939425 () Bool)

(assert (=> b!1617765 m!1939425))

(assert (=> b!1617765 m!1939425))

(declare-fun m!1939427 () Bool)

(assert (=> b!1617765 m!1939427))

(declare-fun m!1939429 () Bool)

(assert (=> b!1617764 m!1939429))

(declare-fun m!1939431 () Bool)

(assert (=> b!1617764 m!1939431))

(assert (=> b!1617764 m!1939431))

(declare-fun m!1939433 () Bool)

(assert (=> b!1617764 m!1939433))

(assert (=> b!1617764 m!1937171))

(assert (=> b!1617764 m!1939331))

(assert (=> b!1617764 m!1939331))

(assert (=> b!1617764 m!1937171))

(declare-fun m!1939435 () Bool)

(assert (=> b!1617764 m!1939435))

(assert (=> b!1617764 m!1939431))

(declare-fun m!1939437 () Bool)

(assert (=> b!1617764 m!1939437))

(assert (=> b!1617764 m!1939431))

(declare-fun m!1939439 () Bool)

(assert (=> b!1617764 m!1939439))

(declare-fun m!1939441 () Bool)

(assert (=> b!1617764 m!1939441))

(assert (=> b!1617767 m!1939421))

(declare-fun m!1939443 () Bool)

(assert (=> b!1617767 m!1939443))

(declare-fun m!1939445 () Bool)

(assert (=> d!486890 m!1939445))

(declare-fun m!1939447 () Bool)

(assert (=> d!486890 m!1939447))

(declare-fun m!1939449 () Bool)

(assert (=> d!486890 m!1939449))

(assert (=> d!486890 m!1938479))

(assert (=> b!1617762 m!1939421))

(declare-fun m!1939451 () Bool)

(assert (=> b!1617762 m!1939451))

(assert (=> b!1617762 m!1939451))

(declare-fun m!1939453 () Bool)

(assert (=> b!1617762 m!1939453))

(assert (=> b!1617766 m!1939331))

(assert (=> b!1617766 m!1937171))

(assert (=> b!1617766 m!1939331))

(assert (=> b!1617766 m!1937171))

(assert (=> b!1617766 m!1939435))

(declare-fun m!1939455 () Bool)

(assert (=> b!1617766 m!1939455))

(assert (=> b!1617760 m!1939421))

(declare-fun m!1939457 () Bool)

(assert (=> b!1617760 m!1939457))

(assert (=> b!1617760 m!1937171))

(assert (=> b!1617761 m!1939421))

(assert (=> b!1617761 m!1939423))

(assert (=> b!1617761 m!1939423))

(assert (=> b!1617761 m!1939425))

(assert (=> b!1617761 m!1939425))

(declare-fun m!1939459 () Bool)

(assert (=> b!1617761 m!1939459))

(assert (=> bm!104862 d!486890))

(declare-fun d!486892 () Bool)

(declare-fun lt!580379 () Int)

(assert (=> d!486892 (= lt!580379 (size!14204 (list!6923 (_1!10019 lt!579819))))))

(assert (=> d!486892 (= lt!580379 (size!14205 (c!263123 (_1!10019 lt!579819))))))

(assert (=> d!486892 (= (size!14198 (_1!10019 lt!579819)) lt!580379)))

(declare-fun bs!394242 () Bool)

(assert (= bs!394242 d!486892))

(assert (=> bs!394242 m!1937567))

(assert (=> bs!394242 m!1937567))

(declare-fun m!1939461 () Bool)

(assert (=> bs!394242 m!1939461))

(declare-fun m!1939463 () Bool)

(assert (=> bs!394242 m!1939463))

(assert (=> d!486376 d!486892))

(declare-fun d!486894 () Bool)

(declare-fun e!1037674 () Bool)

(assert (=> d!486894 e!1037674))

(declare-fun res!722209 () Bool)

(assert (=> d!486894 (=> (not res!722209) (not e!1037674))))

(declare-fun lt!580450 () tuple2!17234)

(declare-fun lexRec!363 (LexerInterface!2748 List!17774 BalanceConc!11716) tuple2!17234)

(assert (=> d!486894 (= res!722209 (= (list!6923 (_1!10019 lt!580450)) (list!6923 (_1!10019 (lexRec!363 thiss!17113 rules!1846 lt!579260)))))))

(declare-fun e!1037675 () tuple2!17234)

(assert (=> d!486894 (= lt!580450 e!1037675)))

(declare-fun c!263493 () Bool)

(declare-fun lt!580469 () Option!3248)

(assert (=> d!486894 (= c!263493 ((_ is Some!3247) lt!580469))))

(declare-fun maxPrefixZipperSequenceV2!258 (LexerInterface!2748 List!17774 BalanceConc!11716 BalanceConc!11716) Option!3248)

(assert (=> d!486894 (= lt!580469 (maxPrefixZipperSequenceV2!258 thiss!17113 rules!1846 lt!579260 lt!579260))))

(declare-fun lt!580457 () Unit!28465)

(declare-fun lt!580465 () Unit!28465)

(assert (=> d!486894 (= lt!580457 lt!580465)))

(declare-fun lt!580461 () List!17772)

(declare-fun lt!580460 () List!17772)

(declare-fun isSuffix!409 (List!17772 List!17772) Bool)

(assert (=> d!486894 (isSuffix!409 lt!580461 (++!4680 lt!580460 lt!580461))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!310 (List!17772 List!17772) Unit!28465)

(assert (=> d!486894 (= lt!580465 (lemmaConcatTwoListThenFSndIsSuffix!310 lt!580460 lt!580461))))

(assert (=> d!486894 (= lt!580461 (list!6924 lt!579260))))

(assert (=> d!486894 (= lt!580460 (list!6924 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486894 (= (lexTailRecV2!538 thiss!17113 rules!1846 lt!579260 (BalanceConc!11717 Empty!5886) lt!579260 (BalanceConc!11719 Empty!5887)) lt!580450)))

(declare-fun lt!580477 () BalanceConc!11716)

(declare-fun b!1617782 () Bool)

(declare-fun append!546 (BalanceConc!11718 Token!5804) BalanceConc!11718)

(assert (=> b!1617782 (= e!1037675 (lexTailRecV2!538 thiss!17113 rules!1846 lt!579260 lt!580477 (_2!10021 (v!24236 lt!580469)) (append!546 (BalanceConc!11719 Empty!5887) (_1!10021 (v!24236 lt!580469)))))))

(declare-fun lt!580459 () tuple2!17234)

(assert (=> b!1617782 (= lt!580459 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!580469))))))

(declare-fun lt!580475 () List!17772)

(assert (=> b!1617782 (= lt!580475 (list!6924 (BalanceConc!11717 Empty!5886)))))

(declare-fun lt!580479 () List!17772)

(assert (=> b!1617782 (= lt!580479 (list!6924 (charsOf!1768 (_1!10021 (v!24236 lt!580469)))))))

(declare-fun lt!580473 () List!17772)

(assert (=> b!1617782 (= lt!580473 (list!6924 (_2!10021 (v!24236 lt!580469))))))

(declare-fun lt!580452 () Unit!28465)

(assert (=> b!1617782 (= lt!580452 (lemmaConcatAssociativity!1002 lt!580475 lt!580479 lt!580473))))

(assert (=> b!1617782 (= (++!4680 (++!4680 lt!580475 lt!580479) lt!580473) (++!4680 lt!580475 (++!4680 lt!580479 lt!580473)))))

(declare-fun lt!580476 () Unit!28465)

(assert (=> b!1617782 (= lt!580476 lt!580452)))

(declare-fun lt!580464 () Option!3248)

(assert (=> b!1617782 (= lt!580464 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 lt!579260))))

(declare-fun c!263494 () Bool)

(assert (=> b!1617782 (= c!263494 ((_ is Some!3247) lt!580464))))

(declare-fun e!1037673 () tuple2!17234)

(assert (=> b!1617782 (= (lexRec!363 thiss!17113 rules!1846 lt!579260) e!1037673)))

(declare-fun lt!580458 () Unit!28465)

(declare-fun Unit!28520 () Unit!28465)

(assert (=> b!1617782 (= lt!580458 Unit!28520)))

(declare-fun lt!580468 () List!17773)

(assert (=> b!1617782 (= lt!580468 (list!6923 (BalanceConc!11719 Empty!5887)))))

(declare-fun lt!580449 () List!17773)

(assert (=> b!1617782 (= lt!580449 (Cons!17703 (_1!10021 (v!24236 lt!580469)) Nil!17703))))

(declare-fun lt!580454 () List!17773)

(assert (=> b!1617782 (= lt!580454 (list!6923 (_1!10019 lt!580459)))))

(declare-fun lt!580478 () Unit!28465)

(declare-fun lemmaConcatAssociativity!1003 (List!17773 List!17773 List!17773) Unit!28465)

(assert (=> b!1617782 (= lt!580478 (lemmaConcatAssociativity!1003 lt!580468 lt!580449 lt!580454))))

(assert (=> b!1617782 (= (++!4683 (++!4683 lt!580468 lt!580449) lt!580454) (++!4683 lt!580468 (++!4683 lt!580449 lt!580454)))))

(declare-fun lt!580467 () Unit!28465)

(assert (=> b!1617782 (= lt!580467 lt!580478)))

(declare-fun lt!580481 () List!17772)

(assert (=> b!1617782 (= lt!580481 (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (list!6924 (charsOf!1768 (_1!10021 (v!24236 lt!580469))))))))

(declare-fun lt!580453 () List!17772)

(assert (=> b!1617782 (= lt!580453 (list!6924 (_2!10021 (v!24236 lt!580469))))))

(declare-fun lt!580448 () List!17773)

(assert (=> b!1617782 (= lt!580448 (list!6923 (append!546 (BalanceConc!11719 Empty!5887) (_1!10021 (v!24236 lt!580469)))))))

(declare-fun lt!580462 () Unit!28465)

(declare-fun lemmaLexThenLexPrefix!251 (LexerInterface!2748 List!17774 List!17772 List!17772 List!17773 List!17773 List!17772) Unit!28465)

(assert (=> b!1617782 (= lt!580462 (lemmaLexThenLexPrefix!251 thiss!17113 rules!1846 lt!580481 lt!580453 lt!580448 (list!6923 (_1!10019 lt!580459)) (list!6924 (_2!10019 lt!580459))))))

(assert (=> b!1617782 (= (lexList!815 thiss!17113 rules!1846 lt!580481) (tuple2!17243 lt!580448 Nil!17702))))

(declare-fun lt!580463 () Unit!28465)

(assert (=> b!1617782 (= lt!580463 lt!580462)))

(declare-fun lt!580466 () BalanceConc!11716)

(assert (=> b!1617782 (= lt!580466 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!580469)))))))

(declare-fun lt!580451 () Option!3248)

(assert (=> b!1617782 (= lt!580451 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 lt!580466))))

(declare-fun c!263492 () Bool)

(assert (=> b!1617782 (= c!263492 ((_ is Some!3247) lt!580451))))

(declare-fun e!1037672 () tuple2!17234)

(assert (=> b!1617782 (= (lexRec!363 thiss!17113 rules!1846 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!580469))))) e!1037672)))

(declare-fun lt!580471 () Unit!28465)

(declare-fun Unit!28521 () Unit!28465)

(assert (=> b!1617782 (= lt!580471 Unit!28521)))

(assert (=> b!1617782 (= lt!580477 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!580469)))))))

(declare-fun lt!580474 () List!17772)

(assert (=> b!1617782 (= lt!580474 (list!6924 lt!580477))))

(declare-fun lt!580456 () List!17772)

(assert (=> b!1617782 (= lt!580456 (list!6924 (_2!10021 (v!24236 lt!580469))))))

(declare-fun lt!580470 () Unit!28465)

(assert (=> b!1617782 (= lt!580470 (lemmaConcatTwoListThenFSndIsSuffix!310 lt!580474 lt!580456))))

(assert (=> b!1617782 (isSuffix!409 lt!580456 (++!4680 lt!580474 lt!580456))))

(declare-fun lt!580455 () Unit!28465)

(assert (=> b!1617782 (= lt!580455 lt!580470)))

(declare-fun b!1617783 () Bool)

(declare-fun lt!580480 () tuple2!17234)

(assert (=> b!1617783 (= lt!580480 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!580451))))))

(assert (=> b!1617783 (= e!1037672 (tuple2!17235 (prepend!631 (_1!10019 lt!580480) (_1!10021 (v!24236 lt!580451))) (_2!10019 lt!580480)))))

(declare-fun b!1617784 () Bool)

(assert (=> b!1617784 (= e!1037674 (= (list!6924 (_2!10019 lt!580450)) (list!6924 (_2!10019 (lexRec!363 thiss!17113 rules!1846 lt!579260)))))))

(declare-fun b!1617785 () Bool)

(declare-fun lt!580472 () tuple2!17234)

(assert (=> b!1617785 (= lt!580472 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!580464))))))

(assert (=> b!1617785 (= e!1037673 (tuple2!17235 (prepend!631 (_1!10019 lt!580472) (_1!10021 (v!24236 lt!580464))) (_2!10019 lt!580472)))))

(declare-fun b!1617786 () Bool)

(assert (=> b!1617786 (= e!1037673 (tuple2!17235 (BalanceConc!11719 Empty!5887) lt!579260))))

(declare-fun b!1617787 () Bool)

(assert (=> b!1617787 (= e!1037672 (tuple2!17235 (BalanceConc!11719 Empty!5887) lt!580466))))

(declare-fun b!1617788 () Bool)

(assert (=> b!1617788 (= e!1037675 (tuple2!17235 (BalanceConc!11719 Empty!5887) lt!579260))))

(assert (= (and d!486894 c!263493) b!1617782))

(assert (= (and d!486894 (not c!263493)) b!1617788))

(assert (= (and b!1617782 c!263494) b!1617785))

(assert (= (and b!1617782 (not c!263494)) b!1617786))

(assert (= (and b!1617782 c!263492) b!1617783))

(assert (= (and b!1617782 (not c!263492)) b!1617787))

(assert (= (and d!486894 res!722209) b!1617784))

(declare-fun m!1939465 () Bool)

(assert (=> d!486894 m!1939465))

(declare-fun m!1939467 () Bool)

(assert (=> d!486894 m!1939467))

(assert (=> d!486894 m!1939465))

(declare-fun m!1939469 () Bool)

(assert (=> d!486894 m!1939469))

(assert (=> d!486894 m!1937179))

(declare-fun m!1939471 () Bool)

(assert (=> d!486894 m!1939471))

(declare-fun m!1939473 () Bool)

(assert (=> d!486894 m!1939473))

(declare-fun m!1939475 () Bool)

(assert (=> d!486894 m!1939475))

(assert (=> d!486894 m!1936479))

(declare-fun m!1939477 () Bool)

(assert (=> d!486894 m!1939477))

(declare-fun m!1939479 () Bool)

(assert (=> b!1617784 m!1939479))

(assert (=> b!1617784 m!1939477))

(declare-fun m!1939481 () Bool)

(assert (=> b!1617784 m!1939481))

(declare-fun m!1939483 () Bool)

(assert (=> b!1617783 m!1939483))

(declare-fun m!1939485 () Bool)

(assert (=> b!1617783 m!1939485))

(declare-fun m!1939487 () Bool)

(assert (=> b!1617785 m!1939487))

(declare-fun m!1939489 () Bool)

(assert (=> b!1617785 m!1939489))

(declare-fun m!1939491 () Bool)

(assert (=> b!1617782 m!1939491))

(assert (=> b!1617782 m!1939477))

(declare-fun m!1939493 () Bool)

(assert (=> b!1617782 m!1939493))

(declare-fun m!1939495 () Bool)

(assert (=> b!1617782 m!1939495))

(declare-fun m!1939497 () Bool)

(assert (=> b!1617782 m!1939497))

(declare-fun m!1939499 () Bool)

(assert (=> b!1617782 m!1939499))

(declare-fun m!1939501 () Bool)

(assert (=> b!1617782 m!1939501))

(declare-fun m!1939503 () Bool)

(assert (=> b!1617782 m!1939503))

(declare-fun m!1939505 () Bool)

(assert (=> b!1617782 m!1939505))

(declare-fun m!1939507 () Bool)

(assert (=> b!1617782 m!1939507))

(declare-fun m!1939509 () Bool)

(assert (=> b!1617782 m!1939509))

(declare-fun m!1939511 () Bool)

(assert (=> b!1617782 m!1939511))

(declare-fun m!1939513 () Bool)

(assert (=> b!1617782 m!1939513))

(declare-fun m!1939515 () Bool)

(assert (=> b!1617782 m!1939515))

(declare-fun m!1939517 () Bool)

(assert (=> b!1617782 m!1939517))

(declare-fun m!1939519 () Bool)

(assert (=> b!1617782 m!1939519))

(declare-fun m!1939521 () Bool)

(assert (=> b!1617782 m!1939521))

(declare-fun m!1939523 () Bool)

(assert (=> b!1617782 m!1939523))

(assert (=> b!1617782 m!1939521))

(declare-fun m!1939525 () Bool)

(assert (=> b!1617782 m!1939525))

(declare-fun m!1939527 () Bool)

(assert (=> b!1617782 m!1939527))

(declare-fun m!1939529 () Bool)

(assert (=> b!1617782 m!1939529))

(declare-fun m!1939531 () Bool)

(assert (=> b!1617782 m!1939531))

(assert (=> b!1617782 m!1939521))

(declare-fun m!1939533 () Bool)

(assert (=> b!1617782 m!1939533))

(assert (=> b!1617782 m!1939505))

(assert (=> b!1617782 m!1939531))

(declare-fun m!1939535 () Bool)

(assert (=> b!1617782 m!1939535))

(declare-fun m!1939537 () Bool)

(assert (=> b!1617782 m!1939537))

(assert (=> b!1617782 m!1939495))

(assert (=> b!1617782 m!1937179))

(assert (=> b!1617782 m!1939527))

(assert (=> b!1617782 m!1939501))

(declare-fun m!1939539 () Bool)

(assert (=> b!1617782 m!1939539))

(assert (=> b!1617782 m!1937179))

(declare-fun m!1939541 () Bool)

(assert (=> b!1617782 m!1939541))

(declare-fun m!1939543 () Bool)

(assert (=> b!1617782 m!1939543))

(declare-fun m!1939545 () Bool)

(assert (=> b!1617782 m!1939545))

(assert (=> b!1617782 m!1939517))

(assert (=> b!1617782 m!1939515))

(declare-fun m!1939547 () Bool)

(assert (=> b!1617782 m!1939547))

(assert (=> b!1617782 m!1939545))

(assert (=> b!1617782 m!1939541))

(declare-fun m!1939549 () Bool)

(assert (=> b!1617782 m!1939549))

(declare-fun m!1939551 () Bool)

(assert (=> b!1617782 m!1939551))

(assert (=> b!1617782 m!1939545))

(assert (=> b!1617782 m!1939549))

(assert (=> d!486376 d!486894))

(declare-fun d!486896 () Bool)

(assert (=> d!486896 true))

(declare-fun order!10497 () Int)

(declare-fun lambda!67130 () Int)

(declare-fun dynLambda!7897 (Int Int) Int)

(assert (=> d!486896 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7897 order!10497 lambda!67130))))

(assert (=> d!486896 true))

(assert (=> d!486896 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7897 order!10497 lambda!67130))))

(declare-fun Forall!641 (Int) Bool)

(assert (=> d!486896 (= (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (Forall!641 lambda!67130))))

(declare-fun bs!394243 () Bool)

(assert (= bs!394243 d!486896))

(declare-fun m!1939553 () Bool)

(assert (=> bs!394243 m!1939553))

(assert (=> d!486290 d!486896))

(declare-fun bm!105009 () Bool)

(declare-fun call!105014 () Bool)

(declare-fun call!105015 () Bool)

(assert (=> bm!105009 (= call!105014 call!105015)))

(declare-fun b!1617793 () Bool)

(declare-fun res!722212 () Bool)

(declare-fun e!1037677 () Bool)

(assert (=> b!1617793 (=> res!722212 e!1037677)))

(assert (=> b!1617793 (= res!722212 (not ((_ is Concat!7657) (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))

(declare-fun e!1037678 () Bool)

(assert (=> b!1617793 (= e!1037678 e!1037677)))

(declare-fun b!1617794 () Bool)

(declare-fun e!1037676 () Bool)

(declare-fun call!105016 () Bool)

(assert (=> b!1617794 (= e!1037676 call!105016)))

(declare-fun b!1617795 () Bool)

(declare-fun e!1037682 () Bool)

(assert (=> b!1617795 (= e!1037682 call!105015)))

(declare-fun bm!105010 () Bool)

(declare-fun c!263496 () Bool)

(assert (=> bm!105010 (= call!105016 (validRegex!1764 (ite c!263496 (regOne!9407 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) (regTwo!9406 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))))

(declare-fun b!1617796 () Bool)

(declare-fun e!1037679 () Bool)

(declare-fun e!1037680 () Bool)

(assert (=> b!1617796 (= e!1037679 e!1037680)))

(declare-fun c!263495 () Bool)

(assert (=> b!1617796 (= c!263495 ((_ is Star!4447) (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))

(declare-fun d!486898 () Bool)

(declare-fun res!722211 () Bool)

(assert (=> d!486898 (=> res!722211 e!1037679)))

(assert (=> d!486898 (= res!722211 ((_ is ElementMatch!4447) (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))

(assert (=> d!486898 (= (validRegex!1764 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) e!1037679)))

(declare-fun b!1617797 () Bool)

(assert (=> b!1617797 (= e!1037680 e!1037682)))

(declare-fun res!722210 () Bool)

(assert (=> b!1617797 (= res!722210 (not (nullable!1302 (reg!4776 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))))

(assert (=> b!1617797 (=> (not res!722210) (not e!1037682))))

(declare-fun b!1617798 () Bool)

(declare-fun e!1037681 () Bool)

(assert (=> b!1617798 (= e!1037681 call!105014)))

(declare-fun b!1617799 () Bool)

(assert (=> b!1617799 (= e!1037680 e!1037678)))

(assert (=> b!1617799 (= c!263496 ((_ is Union!4447) (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))

(declare-fun b!1617800 () Bool)

(declare-fun res!722213 () Bool)

(assert (=> b!1617800 (=> (not res!722213) (not e!1037681))))

(assert (=> b!1617800 (= res!722213 call!105016)))

(assert (=> b!1617800 (= e!1037678 e!1037681)))

(declare-fun bm!105011 () Bool)

(assert (=> bm!105011 (= call!105015 (validRegex!1764 (ite c!263495 (reg!4776 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) (ite c!263496 (regTwo!9407 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) (regOne!9406 (ite c!263135 (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))))

(declare-fun b!1617801 () Bool)

(assert (=> b!1617801 (= e!1037677 e!1037676)))

(declare-fun res!722214 () Bool)

(assert (=> b!1617801 (=> (not res!722214) (not e!1037676))))

(assert (=> b!1617801 (= res!722214 call!105014)))

(assert (= (and d!486898 (not res!722211)) b!1617796))

(assert (= (and b!1617796 c!263495) b!1617797))

(assert (= (and b!1617796 (not c!263495)) b!1617799))

(assert (= (and b!1617797 res!722210) b!1617795))

(assert (= (and b!1617799 c!263496) b!1617800))

(assert (= (and b!1617799 (not c!263496)) b!1617793))

(assert (= (and b!1617800 res!722213) b!1617798))

(assert (= (and b!1617793 (not res!722212)) b!1617801))

(assert (= (and b!1617801 res!722214) b!1617794))

(assert (= (or b!1617798 b!1617801) bm!105009))

(assert (= (or b!1617800 b!1617794) bm!105010))

(assert (= (or b!1617795 bm!105009) bm!105011))

(declare-fun m!1939555 () Bool)

(assert (=> bm!105010 m!1939555))

(declare-fun m!1939557 () Bool)

(assert (=> b!1617797 m!1939557))

(declare-fun m!1939559 () Bool)

(assert (=> bm!105011 m!1939559))

(assert (=> bm!104842 d!486898))

(declare-fun d!486900 () Bool)

(declare-fun res!722219 () Bool)

(declare-fun e!1037687 () Bool)

(assert (=> d!486900 (=> res!722219 e!1037687)))

(assert (=> d!486900 (= res!722219 ((_ is Nil!17703) tokens!457))))

(assert (=> d!486900 (= (forall!4062 tokens!457 lambda!67110) e!1037687)))

(declare-fun b!1617806 () Bool)

(declare-fun e!1037688 () Bool)

(assert (=> b!1617806 (= e!1037687 e!1037688)))

(declare-fun res!722220 () Bool)

(assert (=> b!1617806 (=> (not res!722220) (not e!1037688))))

(declare-fun dynLambda!7898 (Int Token!5804) Bool)

(assert (=> b!1617806 (= res!722220 (dynLambda!7898 lambda!67110 (h!23104 tokens!457)))))

(declare-fun b!1617807 () Bool)

(assert (=> b!1617807 (= e!1037688 (forall!4062 (t!148288 tokens!457) lambda!67110))))

(assert (= (and d!486900 (not res!722219)) b!1617806))

(assert (= (and b!1617806 res!722220) b!1617807))

(declare-fun b_lambda!51007 () Bool)

(assert (=> (not b_lambda!51007) (not b!1617806)))

(declare-fun m!1939561 () Bool)

(assert (=> b!1617806 m!1939561))

(declare-fun m!1939563 () Bool)

(assert (=> b!1617807 m!1939563))

(assert (=> d!486378 d!486900))

(assert (=> d!486378 d!486428))

(declare-fun d!486902 () Bool)

(assert (=> d!486902 (= (isDefined!2614 lt!579341) (not (isEmpty!10719 lt!579341)))))

(declare-fun bs!394244 () Bool)

(assert (= bs!394244 d!486902))

(assert (=> bs!394244 m!1936669))

(assert (=> b!1616247 d!486902))

(declare-fun d!486904 () Bool)

(declare-fun lt!580482 () Int)

(assert (=> d!486904 (= lt!580482 (size!14204 (list!6923 (_1!10019 lt!579560))))))

(assert (=> d!486904 (= lt!580482 (size!14205 (c!263123 (_1!10019 lt!579560))))))

(assert (=> d!486904 (= (size!14198 (_1!10019 lt!579560)) lt!580482)))

(declare-fun bs!394245 () Bool)

(assert (= bs!394245 d!486904))

(declare-fun m!1939565 () Bool)

(assert (=> bs!394245 m!1939565))

(assert (=> bs!394245 m!1939565))

(declare-fun m!1939567 () Bool)

(assert (=> bs!394245 m!1939567))

(declare-fun m!1939569 () Bool)

(assert (=> bs!394245 m!1939569))

(assert (=> d!486262 d!486904))

(assert (=> d!486262 d!486578))

(assert (=> d!486262 d!486428))

(assert (=> d!486262 d!486576))

(declare-fun d!486906 () Bool)

(assert (=> d!486906 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457)))))) (list!6928 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 tokens!457))))))))))

(declare-fun bs!394246 () Bool)

(assert (= bs!394246 d!486906))

(declare-fun m!1939571 () Bool)

(assert (=> bs!394246 m!1939571))

(assert (=> d!486262 d!486906))

(declare-fun d!486908 () Bool)

(assert (=> d!486908 (= (list!6923 (singletonSeq!1517 (h!23104 tokens!457))) (list!6928 (c!263123 (singletonSeq!1517 (h!23104 tokens!457)))))))

(declare-fun bs!394247 () Bool)

(assert (= bs!394247 d!486908))

(declare-fun m!1939573 () Bool)

(assert (=> bs!394247 m!1939573))

(assert (=> d!486262 d!486908))

(assert (=> d!486262 d!486284))

(declare-fun d!486910 () Bool)

(assert (=> d!486910 (= (list!6923 (_1!10019 lt!579819)) (list!6928 (c!263123 (_1!10019 lt!579819))))))

(declare-fun bs!394248 () Bool)

(assert (= bs!394248 d!486910))

(declare-fun m!1939575 () Bool)

(assert (=> bs!394248 m!1939575))

(assert (=> b!1616619 d!486910))

(declare-fun b!1617808 () Bool)

(declare-fun e!1037690 () Bool)

(declare-fun lt!580483 () tuple2!17242)

(assert (=> b!1617808 (= e!1037690 (= (_2!10023 lt!580483) (list!6924 lt!579260)))))

(declare-fun b!1617809 () Bool)

(declare-fun e!1037689 () Bool)

(assert (=> b!1617809 (= e!1037690 e!1037689)))

(declare-fun res!722221 () Bool)

(assert (=> b!1617809 (= res!722221 (< (size!14197 (_2!10023 lt!580483)) (size!14197 (list!6924 lt!579260))))))

(assert (=> b!1617809 (=> (not res!722221) (not e!1037689))))

(declare-fun b!1617810 () Bool)

(assert (=> b!1617810 (= e!1037689 (not (isEmpty!10724 (_1!10023 lt!580483))))))

(declare-fun d!486912 () Bool)

(assert (=> d!486912 e!1037690))

(declare-fun c!263497 () Bool)

(assert (=> d!486912 (= c!263497 (> (size!14204 (_1!10023 lt!580483)) 0))))

(declare-fun e!1037691 () tuple2!17242)

(assert (=> d!486912 (= lt!580483 e!1037691)))

(declare-fun c!263498 () Bool)

(declare-fun lt!580485 () Option!3247)

(assert (=> d!486912 (= c!263498 ((_ is Some!3246) lt!580485))))

(assert (=> d!486912 (= lt!580485 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 lt!579260)))))

(assert (=> d!486912 (= (lexList!815 thiss!17113 rules!1846 (list!6924 lt!579260)) lt!580483)))

(declare-fun b!1617811 () Bool)

(declare-fun lt!580484 () tuple2!17242)

(assert (=> b!1617811 (= e!1037691 (tuple2!17243 (Cons!17703 (_1!10020 (v!24235 lt!580485)) (_1!10023 lt!580484)) (_2!10023 lt!580484)))))

(assert (=> b!1617811 (= lt!580484 (lexList!815 thiss!17113 rules!1846 (_2!10020 (v!24235 lt!580485))))))

(declare-fun b!1617812 () Bool)

(assert (=> b!1617812 (= e!1037691 (tuple2!17243 Nil!17703 (list!6924 lt!579260)))))

(assert (= (and d!486912 c!263498) b!1617811))

(assert (= (and d!486912 (not c!263498)) b!1617812))

(assert (= (and d!486912 c!263497) b!1617809))

(assert (= (and d!486912 (not c!263497)) b!1617808))

(assert (= (and b!1617809 res!722221) b!1617810))

(declare-fun m!1939577 () Bool)

(assert (=> b!1617809 m!1939577))

(assert (=> b!1617809 m!1936479))

(declare-fun m!1939579 () Bool)

(assert (=> b!1617809 m!1939579))

(declare-fun m!1939581 () Bool)

(assert (=> b!1617810 m!1939581))

(declare-fun m!1939583 () Bool)

(assert (=> d!486912 m!1939583))

(assert (=> d!486912 m!1936479))

(declare-fun m!1939585 () Bool)

(assert (=> d!486912 m!1939585))

(declare-fun m!1939587 () Bool)

(assert (=> b!1617811 m!1939587))

(assert (=> b!1616619 d!486912))

(assert (=> b!1616619 d!486362))

(declare-fun d!486914 () Bool)

(assert (=> d!486914 (= (isDefined!2614 lt!579346) (not (isEmpty!10719 lt!579346)))))

(declare-fun bs!394249 () Bool)

(assert (= bs!394249 d!486914))

(assert (=> bs!394249 m!1936703))

(assert (=> b!1616256 d!486914))

(declare-fun d!486916 () Bool)

(assert (=> d!486916 (= (list!6924 lt!579816) (list!6927 (c!263121 lt!579816)))))

(declare-fun bs!394250 () Bool)

(assert (= bs!394250 d!486916))

(declare-fun m!1939589 () Bool)

(assert (=> bs!394250 m!1939589))

(assert (=> d!486360 d!486916))

(declare-fun d!486918 () Bool)

(declare-fun c!263499 () Bool)

(assert (=> d!486918 (= c!263499 ((_ is Cons!17703) (list!6923 lt!579280)))))

(declare-fun e!1037692 () List!17772)

(assert (=> d!486918 (= (printList!863 thiss!17113 (list!6923 lt!579280)) e!1037692)))

(declare-fun b!1617813 () Bool)

(assert (=> b!1617813 (= e!1037692 (++!4680 (list!6924 (charsOf!1768 (h!23104 (list!6923 lt!579280)))) (printList!863 thiss!17113 (t!148288 (list!6923 lt!579280)))))))

(declare-fun b!1617814 () Bool)

(assert (=> b!1617814 (= e!1037692 Nil!17702)))

(assert (= (and d!486918 c!263499) b!1617813))

(assert (= (and d!486918 (not c!263499)) b!1617814))

(declare-fun m!1939591 () Bool)

(assert (=> b!1617813 m!1939591))

(assert (=> b!1617813 m!1939591))

(declare-fun m!1939593 () Bool)

(assert (=> b!1617813 m!1939593))

(declare-fun m!1939595 () Bool)

(assert (=> b!1617813 m!1939595))

(assert (=> b!1617813 m!1939593))

(assert (=> b!1617813 m!1939595))

(declare-fun m!1939597 () Bool)

(assert (=> b!1617813 m!1939597))

(assert (=> d!486360 d!486918))

(assert (=> d!486360 d!486340))

(declare-fun d!486920 () Bool)

(declare-fun lt!580489 () BalanceConc!11716)

(assert (=> d!486920 (= (list!6924 lt!580489) (printListTailRec!341 thiss!17113 (dropList!578 lt!579280 0) (list!6924 (BalanceConc!11717 Empty!5886))))))

(declare-fun e!1037693 () BalanceConc!11716)

(assert (=> d!486920 (= lt!580489 e!1037693)))

(declare-fun c!263500 () Bool)

(assert (=> d!486920 (= c!263500 (>= 0 (size!14198 lt!579280)))))

(declare-fun e!1037694 () Bool)

(assert (=> d!486920 e!1037694))

(declare-fun res!722222 () Bool)

(assert (=> d!486920 (=> (not res!722222) (not e!1037694))))

(assert (=> d!486920 (= res!722222 (>= 0 0))))

(assert (=> d!486920 (= (printTailRec!801 thiss!17113 lt!579280 0 (BalanceConc!11717 Empty!5886)) lt!580489)))

(declare-fun b!1617815 () Bool)

(assert (=> b!1617815 (= e!1037694 (<= 0 (size!14198 lt!579280)))))

(declare-fun b!1617816 () Bool)

(assert (=> b!1617816 (= e!1037693 (BalanceConc!11717 Empty!5886))))

(declare-fun b!1617817 () Bool)

(assert (=> b!1617817 (= e!1037693 (printTailRec!801 thiss!17113 lt!579280 (+ 0 1) (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 lt!579280 0)))))))

(declare-fun lt!580490 () List!17773)

(assert (=> b!1617817 (= lt!580490 (list!6923 lt!579280))))

(declare-fun lt!580488 () Unit!28465)

(assert (=> b!1617817 (= lt!580488 (lemmaDropApply!548 lt!580490 0))))

(assert (=> b!1617817 (= (head!3366 (drop!856 lt!580490 0)) (apply!4464 lt!580490 0))))

(declare-fun lt!580486 () Unit!28465)

(assert (=> b!1617817 (= lt!580486 lt!580488)))

(declare-fun lt!580492 () List!17773)

(assert (=> b!1617817 (= lt!580492 (list!6923 lt!579280))))

(declare-fun lt!580491 () Unit!28465)

(assert (=> b!1617817 (= lt!580491 (lemmaDropTail!528 lt!580492 0))))

(assert (=> b!1617817 (= (tail!2334 (drop!856 lt!580492 0)) (drop!856 lt!580492 (+ 0 1)))))

(declare-fun lt!580487 () Unit!28465)

(assert (=> b!1617817 (= lt!580487 lt!580491)))

(assert (= (and d!486920 res!722222) b!1617815))

(assert (= (and d!486920 c!263500) b!1617816))

(assert (= (and d!486920 (not c!263500)) b!1617817))

(declare-fun m!1939599 () Bool)

(assert (=> d!486920 m!1939599))

(declare-fun m!1939601 () Bool)

(assert (=> d!486920 m!1939601))

(assert (=> d!486920 m!1937179))

(declare-fun m!1939603 () Bool)

(assert (=> d!486920 m!1939603))

(assert (=> d!486920 m!1939601))

(assert (=> d!486920 m!1937179))

(declare-fun m!1939605 () Bool)

(assert (=> d!486920 m!1939605))

(assert (=> b!1617815 m!1939605))

(declare-fun m!1939607 () Bool)

(assert (=> b!1617817 m!1939607))

(declare-fun m!1939609 () Bool)

(assert (=> b!1617817 m!1939609))

(declare-fun m!1939611 () Bool)

(assert (=> b!1617817 m!1939611))

(assert (=> b!1617817 m!1936559))

(assert (=> b!1617817 m!1939611))

(declare-fun m!1939613 () Bool)

(assert (=> b!1617817 m!1939613))

(declare-fun m!1939615 () Bool)

(assert (=> b!1617817 m!1939615))

(declare-fun m!1939617 () Bool)

(assert (=> b!1617817 m!1939617))

(assert (=> b!1617817 m!1939609))

(declare-fun m!1939619 () Bool)

(assert (=> b!1617817 m!1939619))

(declare-fun m!1939621 () Bool)

(assert (=> b!1617817 m!1939621))

(declare-fun m!1939623 () Bool)

(assert (=> b!1617817 m!1939623))

(declare-fun m!1939625 () Bool)

(assert (=> b!1617817 m!1939625))

(assert (=> b!1617817 m!1939615))

(assert (=> b!1617817 m!1939607))

(assert (=> b!1617817 m!1939623))

(declare-fun m!1939627 () Bool)

(assert (=> b!1617817 m!1939627))

(declare-fun m!1939629 () Bool)

(assert (=> b!1617817 m!1939629))

(assert (=> d!486360 d!486920))

(assert (=> b!1616485 d!486596))

(assert (=> b!1616485 d!486594))

(assert (=> b!1616485 d!486600))

(assert (=> b!1616485 d!486598))

(declare-fun d!486922 () Bool)

(declare-fun charsToInt!0 (List!17771) (_ BitVec 32))

(assert (=> d!486922 (= (inv!16 (value!98564 (h!23104 tokens!457))) (= (charsToInt!0 (text!22910 (value!98564 (h!23104 tokens!457)))) (value!98555 (value!98564 (h!23104 tokens!457)))))))

(declare-fun bs!394251 () Bool)

(assert (= bs!394251 d!486922))

(declare-fun m!1939631 () Bool)

(assert (=> bs!394251 m!1939631))

(assert (=> b!1616532 d!486922))

(declare-fun d!486924 () Bool)

(assert (=> d!486924 (= (list!6924 lt!579459) (list!6927 (c!263121 lt!579459)))))

(declare-fun bs!394252 () Bool)

(assert (= bs!394252 d!486924))

(declare-fun m!1939633 () Bool)

(assert (=> bs!394252 m!1939633))

(assert (=> b!1616385 d!486924))

(declare-fun d!486926 () Bool)

(declare-fun e!1037695 () Bool)

(assert (=> d!486926 e!1037695))

(declare-fun res!722223 () Bool)

(assert (=> d!486926 (=> (not res!722223) (not e!1037695))))

(assert (=> d!486926 (= res!722223 (isBalanced!1761 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457))))) (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!580493 () BalanceConc!11718)

(assert (=> d!486926 (= lt!580493 (BalanceConc!11719 (prepend!633 (c!263123 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457))))) (h!23104 (t!148288 (t!148288 tokens!457))))))))

(assert (=> d!486926 (= (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (t!148288 tokens!457)))) lt!580493)))

(declare-fun b!1617818 () Bool)

(assert (=> b!1617818 (= e!1037695 (= (list!6923 lt!580493) (Cons!17703 (h!23104 (t!148288 (t!148288 tokens!457))) (list!6923 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457))))))))))

(assert (= (and d!486926 res!722223) b!1617818))

(declare-fun m!1939635 () Bool)

(assert (=> d!486926 m!1939635))

(assert (=> d!486926 m!1939635))

(declare-fun m!1939637 () Bool)

(assert (=> d!486926 m!1939637))

(declare-fun m!1939639 () Bool)

(assert (=> b!1617818 m!1939639))

(assert (=> b!1617818 m!1936949))

(declare-fun m!1939641 () Bool)

(assert (=> b!1617818 m!1939641))

(assert (=> b!1616385 d!486926))

(assert (=> b!1616385 d!486342))

(declare-fun d!486928 () Bool)

(assert (=> d!486928 (= (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6927 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun bs!394253 () Bool)

(assert (= bs!394253 d!486928))

(declare-fun m!1939643 () Bool)

(assert (=> bs!394253 m!1939643))

(assert (=> b!1616385 d!486928))

(declare-fun d!486930 () Bool)

(assert (=> d!486930 (= (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (fromListB!867 (t!148288 (t!148288 (t!148288 tokens!457)))))))

(declare-fun bs!394254 () Bool)

(assert (= bs!394254 d!486930))

(declare-fun m!1939645 () Bool)

(assert (=> bs!394254 m!1939645))

(assert (=> b!1616385 d!486930))

(declare-fun d!486932 () Bool)

(declare-fun lt!580494 () C!9068)

(assert (=> d!486932 (= lt!580494 (apply!4467 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))) 0))))

(assert (=> d!486932 (= lt!580494 (apply!4468 (c!263121 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))) 0))))

(declare-fun e!1037696 () Bool)

(assert (=> d!486932 e!1037696))

(declare-fun res!722224 () Bool)

(assert (=> d!486932 (=> (not res!722224) (not e!1037696))))

(assert (=> d!486932 (= res!722224 (<= 0 0))))

(assert (=> d!486932 (= (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0) lt!580494)))

(declare-fun b!1617819 () Bool)

(assert (=> b!1617819 (= e!1037696 (< 0 (size!14200 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))))))))

(assert (= (and d!486932 res!722224) b!1617819))

(assert (=> d!486932 m!1936969))

(declare-fun m!1939647 () Bool)

(assert (=> d!486932 m!1939647))

(assert (=> d!486932 m!1939647))

(declare-fun m!1939649 () Bool)

(assert (=> d!486932 m!1939649))

(declare-fun m!1939651 () Bool)

(assert (=> d!486932 m!1939651))

(assert (=> b!1617819 m!1936969))

(declare-fun m!1939653 () Bool)

(assert (=> b!1617819 m!1939653))

(assert (=> b!1616385 d!486932))

(declare-fun b!1617820 () Bool)

(declare-fun res!722230 () Bool)

(declare-fun e!1037697 () Bool)

(assert (=> b!1617820 (=> (not res!722230) (not e!1037697))))

(declare-fun lt!580499 () Option!3247)

(assert (=> b!1617820 (= res!722230 (< (size!14197 (_2!10020 (get!5079 lt!580499))) (size!14197 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617821 () Bool)

(declare-fun e!1037698 () Bool)

(assert (=> b!1617821 (= e!1037698 e!1037697)))

(declare-fun res!722226 () Bool)

(assert (=> b!1617821 (=> (not res!722226) (not e!1037697))))

(assert (=> b!1617821 (= res!722226 (isDefined!2614 lt!580499))))

(declare-fun b!1617822 () Bool)

(declare-fun e!1037699 () Option!3247)

(declare-fun lt!580498 () Option!3247)

(declare-fun lt!580497 () Option!3247)

(assert (=> b!1617822 (= e!1037699 (ite (and ((_ is None!3246) lt!580498) ((_ is None!3246) lt!580497)) None!3246 (ite ((_ is None!3246) lt!580497) lt!580498 (ite ((_ is None!3246) lt!580498) lt!580497 (ite (>= (size!14194 (_1!10020 (v!24235 lt!580498))) (size!14194 (_1!10020 (v!24235 lt!580497)))) lt!580498 lt!580497)))))))

(declare-fun call!105017 () Option!3247)

(assert (=> b!1617822 (= lt!580498 call!105017)))

(assert (=> b!1617822 (= lt!580497 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(declare-fun b!1617823 () Bool)

(declare-fun res!722229 () Bool)

(assert (=> b!1617823 (=> (not res!722229) (not e!1037697))))

(assert (=> b!1617823 (= res!722229 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580499)))) (_2!10020 (get!5079 lt!580499))) (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(declare-fun b!1617824 () Bool)

(declare-fun res!722231 () Bool)

(assert (=> b!1617824 (=> (not res!722231) (not e!1037697))))

(assert (=> b!1617824 (= res!722231 (= (value!98564 (_1!10020 (get!5079 lt!580499))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!580499)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!580499)))))))))

(declare-fun b!1617825 () Bool)

(declare-fun res!722225 () Bool)

(assert (=> b!1617825 (=> (not res!722225) (not e!1037697))))

(assert (=> b!1617825 (= res!722225 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580499)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!580499)))))))

(declare-fun b!1617826 () Bool)

(assert (=> b!1617826 (= e!1037697 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!580499)))))))

(declare-fun bm!105012 () Bool)

(assert (=> bm!105012 (= call!105017 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(declare-fun d!486934 () Bool)

(assert (=> d!486934 e!1037698))

(declare-fun res!722227 () Bool)

(assert (=> d!486934 (=> res!722227 e!1037698)))

(assert (=> d!486934 (= res!722227 (isEmpty!10719 lt!580499))))

(assert (=> d!486934 (= lt!580499 e!1037699)))

(declare-fun c!263501 () Bool)

(assert (=> d!486934 (= c!263501 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!580496 () Unit!28465)

(declare-fun lt!580495 () Unit!28465)

(assert (=> d!486934 (= lt!580496 lt!580495)))

(assert (=> d!486934 (isPrefix!1379 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))) (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))

(assert (=> d!486934 (= lt!580495 (lemmaIsPrefixRefl!946 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))) (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486934 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!486934 (= (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))) lt!580499)))

(declare-fun b!1617827 () Bool)

(declare-fun res!722228 () Bool)

(assert (=> b!1617827 (=> (not res!722228) (not e!1037697))))

(assert (=> b!1617827 (= res!722228 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!580499)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!580499))))))))

(declare-fun b!1617828 () Bool)

(assert (=> b!1617828 (= e!1037699 call!105017)))

(assert (= (and d!486934 c!263501) b!1617828))

(assert (= (and d!486934 (not c!263501)) b!1617822))

(assert (= (or b!1617828 b!1617822) bm!105012))

(assert (= (and d!486934 (not res!722227)) b!1617821))

(assert (= (and b!1617821 res!722226) b!1617825))

(assert (= (and b!1617825 res!722225) b!1617820))

(assert (= (and b!1617820 res!722230) b!1617823))

(assert (= (and b!1617823 res!722229) b!1617824))

(assert (= (and b!1617824 res!722231) b!1617827))

(assert (= (and b!1617827 res!722228) b!1617826))

(declare-fun m!1939655 () Bool)

(assert (=> d!486934 m!1939655))

(declare-fun m!1939657 () Bool)

(assert (=> d!486934 m!1939657))

(declare-fun m!1939659 () Bool)

(assert (=> d!486934 m!1939659))

(assert (=> d!486934 m!1936675))

(declare-fun m!1939661 () Bool)

(assert (=> b!1617821 m!1939661))

(declare-fun m!1939663 () Bool)

(assert (=> b!1617824 m!1939663))

(declare-fun m!1939665 () Bool)

(assert (=> b!1617824 m!1939665))

(assert (=> b!1617824 m!1939665))

(declare-fun m!1939667 () Bool)

(assert (=> b!1617824 m!1939667))

(assert (=> b!1617823 m!1939663))

(declare-fun m!1939669 () Bool)

(assert (=> b!1617823 m!1939669))

(assert (=> b!1617823 m!1939669))

(declare-fun m!1939671 () Bool)

(assert (=> b!1617823 m!1939671))

(assert (=> b!1617823 m!1939671))

(declare-fun m!1939673 () Bool)

(assert (=> b!1617823 m!1939673))

(declare-fun m!1939675 () Bool)

(assert (=> b!1617822 m!1939675))

(assert (=> b!1617826 m!1939663))

(declare-fun m!1939677 () Bool)

(assert (=> b!1617826 m!1939677))

(assert (=> b!1617827 m!1939663))

(assert (=> b!1617827 m!1939669))

(assert (=> b!1617827 m!1939669))

(assert (=> b!1617827 m!1939671))

(assert (=> b!1617827 m!1939671))

(declare-fun m!1939679 () Bool)

(assert (=> b!1617827 m!1939679))

(declare-fun m!1939681 () Bool)

(assert (=> bm!105012 m!1939681))

(assert (=> b!1617825 m!1939663))

(assert (=> b!1617825 m!1939669))

(assert (=> b!1617825 m!1939669))

(assert (=> b!1617825 m!1939671))

(assert (=> b!1617820 m!1939663))

(declare-fun m!1939683 () Bool)

(assert (=> b!1617820 m!1939683))

(declare-fun m!1939685 () Bool)

(assert (=> b!1617820 m!1939685))

(assert (=> b!1616385 d!486934))

(assert (=> b!1616385 d!486310))

(declare-fun d!486936 () Bool)

(assert (=> d!486936 (= (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) (v!24235 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(assert (=> b!1616385 d!486936))

(assert (=> b!1616385 d!486372))

(declare-fun d!486938 () Bool)

(assert (=> d!486938 (= (list!6923 (_1!10019 lt!579470)) (list!6928 (c!263123 (_1!10019 lt!579470))))))

(declare-fun bs!394255 () Bool)

(assert (= bs!394255 d!486938))

(declare-fun m!1939687 () Bool)

(assert (=> bs!394255 m!1939687))

(assert (=> b!1616385 d!486938))

(declare-fun d!486940 () Bool)

(assert (=> d!486940 (isPrefix!1379 lt!579458 (++!4680 lt!579458 lt!579466))))

(declare-fun lt!580500 () Unit!28465)

(assert (=> d!486940 (= lt!580500 (choose!9721 lt!579458 lt!579466))))

(assert (=> d!486940 (= (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579458 lt!579466) lt!580500)))

(declare-fun bs!394256 () Bool)

(assert (= bs!394256 d!486940))

(assert (=> bs!394256 m!1936981))

(assert (=> bs!394256 m!1936981))

(assert (=> bs!394256 m!1936993))

(declare-fun m!1939689 () Bool)

(assert (=> bs!394256 m!1939689))

(assert (=> b!1616385 d!486940))

(declare-fun d!486942 () Bool)

(assert (=> d!486942 (= (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))) (not (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun bs!394257 () Bool)

(assert (= bs!394257 d!486942))

(assert (=> bs!394257 m!1936979))

(declare-fun m!1939691 () Bool)

(assert (=> bs!394257 m!1939691))

(assert (=> b!1616385 d!486942))

(declare-fun d!486944 () Bool)

(declare-fun e!1037700 () Bool)

(assert (=> d!486944 e!1037700))

(declare-fun res!722234 () Bool)

(assert (=> d!486944 (=> res!722234 e!1037700)))

(declare-fun lt!580501 () Bool)

(assert (=> d!486944 (= res!722234 (not lt!580501))))

(declare-fun e!1037701 () Bool)

(assert (=> d!486944 (= lt!580501 e!1037701)))

(declare-fun res!722235 () Bool)

(assert (=> d!486944 (=> res!722235 e!1037701)))

(assert (=> d!486944 (= res!722235 ((_ is Nil!17702) lt!579458))))

(assert (=> d!486944 (= (isPrefix!1379 lt!579458 (++!4680 lt!579458 lt!579466)) lt!580501)))

(declare-fun b!1617830 () Bool)

(declare-fun res!722233 () Bool)

(declare-fun e!1037702 () Bool)

(assert (=> b!1617830 (=> (not res!722233) (not e!1037702))))

(assert (=> b!1617830 (= res!722233 (= (head!3362 lt!579458) (head!3362 (++!4680 lt!579458 lt!579466))))))

(declare-fun b!1617829 () Bool)

(assert (=> b!1617829 (= e!1037701 e!1037702)))

(declare-fun res!722232 () Bool)

(assert (=> b!1617829 (=> (not res!722232) (not e!1037702))))

(assert (=> b!1617829 (= res!722232 (not ((_ is Nil!17702) (++!4680 lt!579458 lt!579466))))))

(declare-fun b!1617832 () Bool)

(assert (=> b!1617832 (= e!1037700 (>= (size!14197 (++!4680 lt!579458 lt!579466)) (size!14197 lt!579458)))))

(declare-fun b!1617831 () Bool)

(assert (=> b!1617831 (= e!1037702 (isPrefix!1379 (tail!2332 lt!579458) (tail!2332 (++!4680 lt!579458 lt!579466))))))

(assert (= (and d!486944 (not res!722235)) b!1617829))

(assert (= (and b!1617829 res!722232) b!1617830))

(assert (= (and b!1617830 res!722233) b!1617831))

(assert (= (and d!486944 (not res!722234)) b!1617832))

(declare-fun m!1939693 () Bool)

(assert (=> b!1617830 m!1939693))

(assert (=> b!1617830 m!1936981))

(declare-fun m!1939695 () Bool)

(assert (=> b!1617830 m!1939695))

(assert (=> b!1617832 m!1936981))

(declare-fun m!1939697 () Bool)

(assert (=> b!1617832 m!1939697))

(declare-fun m!1939699 () Bool)

(assert (=> b!1617832 m!1939699))

(declare-fun m!1939701 () Bool)

(assert (=> b!1617831 m!1939701))

(assert (=> b!1617831 m!1936981))

(declare-fun m!1939703 () Bool)

(assert (=> b!1617831 m!1939703))

(assert (=> b!1617831 m!1939701))

(assert (=> b!1617831 m!1939703))

(declare-fun m!1939705 () Bool)

(assert (=> b!1617831 m!1939705))

(assert (=> b!1616385 d!486944))

(declare-fun b!1617833 () Bool)

(declare-fun e!1037707 () Bool)

(declare-fun e!1037709 () Bool)

(assert (=> b!1617833 (= e!1037707 e!1037709)))

(declare-fun res!722240 () Bool)

(assert (=> b!1617833 (=> res!722240 e!1037709)))

(declare-fun call!105018 () Bool)

(assert (=> b!1617833 (= res!722240 call!105018)))

(declare-fun b!1617834 () Bool)

(declare-fun e!1037706 () Bool)

(assert (=> b!1617834 (= e!1037706 e!1037707)))

(declare-fun res!722242 () Bool)

(assert (=> b!1617834 (=> (not res!722242) (not e!1037707))))

(declare-fun lt!580502 () Bool)

(assert (=> b!1617834 (= res!722242 (not lt!580502))))

(declare-fun d!486946 () Bool)

(declare-fun e!1037704 () Bool)

(assert (=> d!486946 e!1037704))

(declare-fun c!263503 () Bool)

(assert (=> d!486946 (= c!263503 ((_ is EmptyExpr!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun e!1037708 () Bool)

(assert (=> d!486946 (= lt!580502 e!1037708)))

(declare-fun c!263504 () Bool)

(assert (=> d!486946 (= c!263504 (isEmpty!10713 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!486946 (validRegex!1764 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486946 (= (matchR!1946 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) lt!580502)))

(declare-fun bm!105013 () Bool)

(assert (=> bm!105013 (= call!105018 (isEmpty!10713 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617835 () Bool)

(assert (=> b!1617835 (= e!1037708 (nullable!1302 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617836 () Bool)

(declare-fun e!1037703 () Bool)

(assert (=> b!1617836 (= e!1037703 (= (head!3362 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) (c!263122 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1617837 () Bool)

(assert (=> b!1617837 (= e!1037704 (= lt!580502 call!105018))))

(declare-fun b!1617838 () Bool)

(assert (=> b!1617838 (= e!1037709 (not (= (head!3362 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) (c!263122 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun b!1617839 () Bool)

(declare-fun e!1037705 () Bool)

(assert (=> b!1617839 (= e!1037705 (not lt!580502))))

(declare-fun b!1617840 () Bool)

(assert (=> b!1617840 (= e!1037708 (matchR!1946 (derivativeStep!1067 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))) (head!3362 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) (tail!2332 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1617841 () Bool)

(declare-fun res!722236 () Bool)

(assert (=> b!1617841 (=> (not res!722236) (not e!1037703))))

(assert (=> b!1617841 (= res!722236 (not call!105018))))

(declare-fun b!1617842 () Bool)

(declare-fun res!722239 () Bool)

(assert (=> b!1617842 (=> res!722239 e!1037709)))

(assert (=> b!1617842 (= res!722239 (not (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun b!1617843 () Bool)

(declare-fun res!722237 () Bool)

(assert (=> b!1617843 (=> res!722237 e!1037706)))

(assert (=> b!1617843 (= res!722237 (not ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))))

(assert (=> b!1617843 (= e!1037705 e!1037706)))

(declare-fun b!1617844 () Bool)

(declare-fun res!722243 () Bool)

(assert (=> b!1617844 (=> (not res!722243) (not e!1037703))))

(assert (=> b!1617844 (= res!722243 (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1617845 () Bool)

(assert (=> b!1617845 (= e!1037704 e!1037705)))

(declare-fun c!263502 () Bool)

(assert (=> b!1617845 (= c!263502 ((_ is EmptyLang!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1617846 () Bool)

(declare-fun res!722238 () Bool)

(assert (=> b!1617846 (=> res!722238 e!1037706)))

(assert (=> b!1617846 (= res!722238 e!1037703)))

(declare-fun res!722241 () Bool)

(assert (=> b!1617846 (=> (not res!722241) (not e!1037703))))

(assert (=> b!1617846 (= res!722241 lt!580502)))

(assert (= (and d!486946 c!263504) b!1617835))

(assert (= (and d!486946 (not c!263504)) b!1617840))

(assert (= (and d!486946 c!263503) b!1617837))

(assert (= (and d!486946 (not c!263503)) b!1617845))

(assert (= (and b!1617845 c!263502) b!1617839))

(assert (= (and b!1617845 (not c!263502)) b!1617843))

(assert (= (and b!1617843 (not res!722237)) b!1617846))

(assert (= (and b!1617846 res!722241) b!1617841))

(assert (= (and b!1617841 res!722236) b!1617844))

(assert (= (and b!1617844 res!722243) b!1617836))

(assert (= (and b!1617846 (not res!722238)) b!1617834))

(assert (= (and b!1617834 res!722242) b!1617833))

(assert (= (and b!1617833 (not res!722240)) b!1617842))

(assert (= (and b!1617842 (not res!722239)) b!1617838))

(assert (= (or b!1617837 b!1617833 b!1617841) bm!105013))

(assert (=> b!1617840 m!1936965))

(declare-fun m!1939707 () Bool)

(assert (=> b!1617840 m!1939707))

(assert (=> b!1617840 m!1939707))

(declare-fun m!1939709 () Bool)

(assert (=> b!1617840 m!1939709))

(assert (=> b!1617840 m!1936965))

(declare-fun m!1939711 () Bool)

(assert (=> b!1617840 m!1939711))

(assert (=> b!1617840 m!1939709))

(assert (=> b!1617840 m!1939711))

(declare-fun m!1939713 () Bool)

(assert (=> b!1617840 m!1939713))

(assert (=> d!486946 m!1936965))

(declare-fun m!1939715 () Bool)

(assert (=> d!486946 m!1939715))

(declare-fun m!1939717 () Bool)

(assert (=> d!486946 m!1939717))

(assert (=> b!1617842 m!1936965))

(assert (=> b!1617842 m!1939711))

(assert (=> b!1617842 m!1939711))

(declare-fun m!1939719 () Bool)

(assert (=> b!1617842 m!1939719))

(assert (=> bm!105013 m!1936965))

(assert (=> bm!105013 m!1939715))

(assert (=> b!1617844 m!1936965))

(assert (=> b!1617844 m!1939711))

(assert (=> b!1617844 m!1939711))

(assert (=> b!1617844 m!1939719))

(assert (=> b!1617838 m!1936965))

(assert (=> b!1617838 m!1939707))

(declare-fun m!1939721 () Bool)

(assert (=> b!1617835 m!1939721))

(assert (=> b!1617836 m!1936965))

(assert (=> b!1617836 m!1939707))

(assert (=> b!1616385 d!486946))

(declare-fun d!486948 () Bool)

(assert (=> d!486948 (= (list!6924 lt!579448) (list!6927 (c!263121 lt!579448)))))

(declare-fun bs!394258 () Bool)

(assert (= bs!394258 d!486948))

(declare-fun m!1939723 () Bool)

(assert (=> bs!394258 m!1939723))

(assert (=> b!1616385 d!486948))

(declare-fun d!486950 () Bool)

(assert (=> d!486950 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0))) (list!6927 (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0)))))))

(declare-fun bs!394259 () Bool)

(assert (= bs!394259 d!486950))

(declare-fun m!1939725 () Bool)

(assert (=> bs!394259 m!1939725))

(assert (=> b!1616385 d!486950))

(declare-fun d!486952 () Bool)

(assert (=> d!486952 (= (isEmpty!10713 (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))) ((_ is Nil!17702) (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))))

(assert (=> b!1616385 d!486952))

(declare-fun d!486954 () Bool)

(declare-fun e!1037711 () Bool)

(assert (=> d!486954 e!1037711))

(declare-fun res!722244 () Bool)

(assert (=> d!486954 (=> (not res!722244) (not e!1037711))))

(declare-fun lt!580503 () List!17772)

(assert (=> d!486954 (= res!722244 (= (content!2450 lt!580503) ((_ map or) (content!2450 lt!579458) (content!2450 lt!579466))))))

(declare-fun e!1037710 () List!17772)

(assert (=> d!486954 (= lt!580503 e!1037710)))

(declare-fun c!263505 () Bool)

(assert (=> d!486954 (= c!263505 ((_ is Nil!17702) lt!579458))))

(assert (=> d!486954 (= (++!4680 lt!579458 lt!579466) lt!580503)))

(declare-fun b!1617847 () Bool)

(assert (=> b!1617847 (= e!1037710 lt!579466)))

(declare-fun b!1617850 () Bool)

(assert (=> b!1617850 (= e!1037711 (or (not (= lt!579466 Nil!17702)) (= lt!580503 lt!579458)))))

(declare-fun b!1617848 () Bool)

(assert (=> b!1617848 (= e!1037710 (Cons!17702 (h!23103 lt!579458) (++!4680 (t!148287 lt!579458) lt!579466)))))

(declare-fun b!1617849 () Bool)

(declare-fun res!722245 () Bool)

(assert (=> b!1617849 (=> (not res!722245) (not e!1037711))))

(assert (=> b!1617849 (= res!722245 (= (size!14197 lt!580503) (+ (size!14197 lt!579458) (size!14197 lt!579466))))))

(assert (= (and d!486954 c!263505) b!1617847))

(assert (= (and d!486954 (not c!263505)) b!1617848))

(assert (= (and d!486954 res!722244) b!1617849))

(assert (= (and b!1617849 res!722245) b!1617850))

(declare-fun m!1939727 () Bool)

(assert (=> d!486954 m!1939727))

(declare-fun m!1939729 () Bool)

(assert (=> d!486954 m!1939729))

(declare-fun m!1939731 () Bool)

(assert (=> d!486954 m!1939731))

(declare-fun m!1939733 () Bool)

(assert (=> b!1617848 m!1939733))

(declare-fun m!1939735 () Bool)

(assert (=> b!1617849 m!1939735))

(assert (=> b!1617849 m!1939699))

(declare-fun m!1939737 () Bool)

(assert (=> b!1617849 m!1939737))

(assert (=> b!1616385 d!486954))

(declare-fun d!486956 () Bool)

(declare-fun lt!580504 () BalanceConc!11716)

(assert (=> d!486956 (= (list!6924 lt!580504) (printList!863 thiss!17113 (list!6923 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))))

(assert (=> d!486956 (= lt!580504 (printTailRec!801 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!486956 (= (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))) lt!580504)))

(declare-fun bs!394260 () Bool)

(assert (= bs!394260 d!486956))

(declare-fun m!1939739 () Bool)

(assert (=> bs!394260 m!1939739))

(assert (=> bs!394260 m!1936555))

(assert (=> bs!394260 m!1937387))

(assert (=> bs!394260 m!1937387))

(declare-fun m!1939741 () Bool)

(assert (=> bs!394260 m!1939741))

(assert (=> bs!394260 m!1936555))

(declare-fun m!1939743 () Bool)

(assert (=> bs!394260 m!1939743))

(assert (=> b!1616385 d!486956))

(declare-fun d!486958 () Bool)

(declare-fun e!1037712 () Bool)

(assert (=> d!486958 e!1037712))

(declare-fun res!722246 () Bool)

(assert (=> d!486958 (=> (not res!722246) (not e!1037712))))

(declare-fun lt!580505 () BalanceConc!11718)

(assert (=> d!486958 (= res!722246 (= (list!6923 lt!580505) (Cons!17703 (h!23104 (t!148288 tokens!457)) Nil!17703)))))

(assert (=> d!486958 (= lt!580505 (singleton!641 (h!23104 (t!148288 tokens!457))))))

(assert (=> d!486958 (= (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) lt!580505)))

(declare-fun b!1617851 () Bool)

(assert (=> b!1617851 (= e!1037712 (isBalanced!1761 (c!263123 lt!580505)))))

(assert (= (and d!486958 res!722246) b!1617851))

(declare-fun m!1939745 () Bool)

(assert (=> d!486958 m!1939745))

(declare-fun m!1939747 () Bool)

(assert (=> d!486958 m!1939747))

(declare-fun m!1939749 () Bool)

(assert (=> b!1617851 m!1939749))

(assert (=> b!1616385 d!486958))

(declare-fun d!486960 () Bool)

(assert (=> d!486960 (= (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459))) (Some!3246 (tuple2!17237 (h!23104 (t!148288 tokens!457)) (list!6924 lt!579459))))))

(declare-fun lt!581081 () Unit!28465)

(declare-fun Unit!28526 () Unit!28465)

(assert (=> d!486960 (= lt!581081 Unit!28526)))

(declare-fun lt!581117 () Unit!28465)

(declare-fun e!1037942 () Unit!28465)

(assert (=> d!486960 (= lt!581117 e!1037942)))

(declare-fun c!263598 () Bool)

(declare-fun lt!581056 () Token!5804)

(assert (=> d!486960 (= c!263598 (not (= (rule!4939 lt!581056) (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581087 () Unit!28465)

(declare-fun lt!581088 () Unit!28465)

(assert (=> d!486960 (= lt!581087 lt!581088)))

(declare-fun lt!581080 () List!17772)

(assert (=> d!486960 (= (list!6924 lt!579459) lt!581080)))

(declare-fun lt!581119 () List!17772)

(declare-fun lemmaSamePrefixThenSameSuffix!650 (List!17772 List!17772 List!17772 List!17772 List!17772) Unit!28465)

(assert (=> d!486960 (= lt!581088 (lemmaSamePrefixThenSameSuffix!650 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) lt!581080 lt!581119))))

(declare-fun lt!581092 () Unit!28465)

(declare-fun lt!581072 () Unit!28465)

(assert (=> d!486960 (= lt!581092 lt!581072)))

(declare-fun lt!581066 () List!17772)

(declare-fun lt!581079 () List!17772)

(assert (=> d!486960 (= lt!581066 lt!581079)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!152 (List!17772 List!17772 List!17772) Unit!28465)

(assert (=> d!486960 (= lt!581072 (lemmaIsPrefixSameLengthThenSameList!152 lt!581066 lt!581079 lt!581119))))

(assert (=> d!486960 (= lt!581079 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486960 (= lt!581066 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581086 () Unit!28465)

(declare-fun e!1037948 () Unit!28465)

(assert (=> d!486960 (= lt!581086 e!1037948)))

(declare-fun c!263599 () Bool)

(assert (=> d!486960 (= c!263599 (< (size!14200 (charsOf!1768 lt!581056)) (size!14200 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581096 () Unit!28465)

(declare-fun e!1037947 () Unit!28465)

(assert (=> d!486960 (= lt!581096 e!1037947)))

(declare-fun c!263602 () Bool)

(assert (=> d!486960 (= c!263602 (> (size!14200 (charsOf!1768 lt!581056)) (size!14200 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581094 () Unit!28465)

(declare-fun lt!581108 () Unit!28465)

(assert (=> d!486960 (= lt!581094 lt!581108)))

(assert (=> d!486960 (matchR!1946 (rulesRegex!509 thiss!17113 rules!1846) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!28 (LexerInterface!2748 List!17774 List!17772 Token!5804 Rule!6038 List!17772) Unit!28465)

(assert (=> d!486960 (= lt!581108 (lemmaMaxPrefixThenMatchesRulesRegex!28 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (h!23104 (t!148288 tokens!457)) (rule!4939 (h!23104 (t!148288 tokens!457))) Nil!17702))))

(declare-fun lt!581063 () Unit!28465)

(declare-fun lt!581120 () Unit!28465)

(assert (=> d!486960 (= lt!581063 lt!581120)))

(declare-fun lt!581090 () List!17772)

(assert (=> d!486960 (= lt!581080 lt!581090)))

(declare-fun lt!581054 () List!17772)

(declare-fun lt!581089 () List!17772)

(assert (=> d!486960 (= lt!581120 (lemmaSamePrefixThenSameSuffix!650 lt!581054 lt!581080 lt!581089 lt!581090 lt!581119))))

(declare-fun getSuffix!698 (List!17772 List!17772) List!17772)

(assert (=> d!486960 (= lt!581090 (getSuffix!698 lt!581119 (list!6924 (charsOf!1768 lt!581056))))))

(assert (=> d!486960 (= lt!581089 (list!6924 (charsOf!1768 lt!581056)))))

(assert (=> d!486960 (= lt!581054 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581091 () Unit!28465)

(declare-fun lt!581109 () Unit!28465)

(assert (=> d!486960 (= lt!581091 lt!581109)))

(declare-fun lt!581118 () List!17772)

(assert (=> d!486960 (= (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!581056) lt!581119) (Some!3246 (tuple2!17237 (Token!5805 (apply!4462 (transformation!3119 (rule!4939 lt!581056)) (seqFromList!1988 lt!581118)) (rule!4939 lt!581056) (size!14197 lt!581118) lt!581118) lt!581080)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!218 (LexerInterface!2748 List!17774 List!17772 List!17772 List!17772 Rule!6038) Unit!28465)

(assert (=> d!486960 (= lt!581109 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!218 thiss!17113 rules!1846 lt!581118 lt!581119 lt!581080 (rule!4939 lt!581056)))))

(assert (=> d!486960 (= lt!581118 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581068 () Unit!28465)

(declare-fun lemmaCharactersSize!324 (Token!5804) Unit!28465)

(assert (=> d!486960 (= lt!581068 (lemmaCharactersSize!324 lt!581056))))

(declare-fun lt!581055 () Unit!28465)

(declare-fun lemmaEqSameImage!177 (TokenValueInjection!6078 BalanceConc!11716 BalanceConc!11716) Unit!28465)

(assert (=> d!486960 (= lt!581055 (lemmaEqSameImage!177 (transformation!3119 (rule!4939 lt!581056)) (charsOf!1768 lt!581056) (seqFromList!1988 (originalCharacters!3933 lt!581056))))))

(declare-fun lt!581083 () Unit!28465)

(assert (=> d!486960 (= lt!581083 (lemmaSemiInverse!391 (transformation!3119 (rule!4939 lt!581056)) (charsOf!1768 lt!581056)))))

(declare-fun lt!581099 () Unit!28465)

(declare-fun lemmaInv!457 (TokenValueInjection!6078) Unit!28465)

(assert (=> d!486960 (= lt!581099 (lemmaInv!457 (transformation!3119 (rule!4939 lt!581056))))))

(declare-fun lt!581107 () Unit!28465)

(declare-fun lt!581112 () Unit!28465)

(assert (=> d!486960 (= lt!581107 lt!581112)))

(declare-fun lt!581110 () List!17772)

(assert (=> d!486960 (isPrefix!1379 lt!581110 (++!4680 lt!581110 lt!581080))))

(assert (=> d!486960 (= lt!581112 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!581110 lt!581080))))

(assert (=> d!486960 (= lt!581110 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581115 () Unit!28465)

(declare-fun lt!581059 () Unit!28465)

(assert (=> d!486960 (= lt!581115 lt!581059)))

(declare-fun e!1037946 () Bool)

(assert (=> d!486960 e!1037946))

(declare-fun res!722466 () Bool)

(assert (=> d!486960 (=> (not res!722466) (not e!1037946))))

(assert (=> d!486960 (= res!722466 (isDefined!2617 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581056)))))))

(assert (=> d!486960 (= lt!581059 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!270 thiss!17113 rules!1846 lt!581119 lt!581056))))

(declare-fun lt!581069 () Option!3247)

(assert (=> d!486960 (= lt!581080 (_2!10020 (get!5079 lt!581069)))))

(assert (=> d!486960 (= lt!581056 (_1!10020 (get!5079 lt!581069)))))

(declare-fun lt!581070 () Unit!28465)

(assert (=> d!486960 (= lt!581070 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(assert (=> d!486960 (= lt!581069 (maxPrefix!1312 thiss!17113 rules!1846 lt!581119))))

(declare-fun lt!581121 () Unit!28465)

(declare-fun lt!581053 () Unit!28465)

(assert (=> d!486960 (= lt!581121 lt!581053)))

(declare-fun lt!581101 () List!17772)

(assert (=> d!486960 (isPrefix!1379 lt!581101 (++!4680 lt!581101 (list!6924 lt!579459)))))

(assert (=> d!486960 (= lt!581053 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!581101 (list!6924 lt!579459)))))

(assert (=> d!486960 (= lt!581101 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!486960 (= lt!581119 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(assert (=> d!486960 (not (isEmpty!10714 rules!1846))))

(assert (=> d!486960 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!96 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457)) (rule!4939 (h!23104 (t!148288 tokens!457))) (list!6924 lt!579459)) lt!581081)))

(declare-fun b!1618263 () Bool)

(declare-fun e!1037943 () Unit!28465)

(declare-fun Unit!28539 () Unit!28465)

(assert (=> b!1618263 (= e!1037943 Unit!28539)))

(declare-fun b!1618264 () Bool)

(declare-fun Unit!28540 () Unit!28465)

(assert (=> b!1618264 (= e!1037947 Unit!28540)))

(declare-fun lt!581095 () Unit!28465)

(assert (=> b!1618264 (= lt!581095 (lemmaMaxPrefixThenMatchesRulesRegex!28 thiss!17113 rules!1846 lt!581119 lt!581056 (rule!4939 lt!581056) lt!581080))))

(assert (=> b!1618264 (matchR!1946 (rulesRegex!509 thiss!17113 rules!1846) (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581084 () Unit!28465)

(assert (=> b!1618264 (= lt!581084 lt!581095)))

(declare-fun lt!581097 () List!17772)

(assert (=> b!1618264 (= lt!581097 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581051 () List!17772)

(assert (=> b!1618264 (= lt!581051 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581075 () List!17772)

(assert (=> b!1618264 (= lt!581075 (getSuffix!698 lt!581119 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581071 () Unit!28465)

(assert (=> b!1618264 (= lt!581071 (lemmaSamePrefixThenSameSuffix!650 lt!581097 (list!6924 lt!579459) lt!581051 lt!581075 lt!581119))))

(assert (=> b!1618264 (= (list!6924 lt!579459) lt!581075)))

(declare-fun lt!581114 () Unit!28465)

(assert (=> b!1618264 (= lt!581114 lt!581071)))

(declare-fun lt!581077 () List!17772)

(assert (=> b!1618264 (= lt!581077 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581064 () Unit!28465)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!141 (List!17772 List!17772) Unit!28465)

(assert (=> b!1618264 (= lt!581064 (lemmaAddHeadSuffixToPrefixStillPrefix!141 lt!581077 lt!581119))))

(assert (=> b!1618264 (isPrefix!1379 (++!4680 lt!581077 (Cons!17702 (head!3362 (getSuffix!698 lt!581119 lt!581077)) Nil!17702)) lt!581119)))

(declare-fun lt!581073 () Unit!28465)

(assert (=> b!1618264 (= lt!581073 lt!581064)))

(declare-fun lt!581067 () List!17772)

(assert (=> b!1618264 (= lt!581067 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581082 () List!17772)

(assert (=> b!1618264 (= lt!581082 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (Cons!17702 (head!3362 (list!6924 lt!579459)) Nil!17702)))))

(declare-fun lt!581074 () Unit!28465)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!28 (List!17772 List!17772 List!17772) Unit!28465)

(assert (=> b!1618264 (= lt!581074 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!28 lt!581067 lt!581082 lt!581119))))

(assert (=> b!1618264 (isPrefix!1379 lt!581082 lt!581067)))

(declare-fun lt!581061 () Unit!28465)

(assert (=> b!1618264 (= lt!581061 lt!581074)))

(declare-fun lt!581057 () Regex!4447)

(assert (=> b!1618264 (= lt!581057 (rulesRegex!509 thiss!17113 rules!1846))))

(declare-fun lt!581102 () List!17772)

(assert (=> b!1618264 (= lt!581102 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (Cons!17702 (head!3362 (list!6924 lt!579459)) Nil!17702)))))

(declare-fun lt!581103 () List!17772)

(assert (=> b!1618264 (= lt!581103 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581058 () Unit!28465)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!29 (Regex!4447 List!17772 List!17772) Unit!28465)

(assert (=> b!1618264 (= lt!581058 (lemmaNotPrefixMatchThenCannotMatchLonger!29 lt!581057 lt!581102 lt!581103))))

(assert (=> b!1618264 (not (matchR!1946 lt!581057 lt!581103))))

(declare-fun lt!581106 () Unit!28465)

(assert (=> b!1618264 (= lt!581106 lt!581058)))

(assert (=> b!1618264 false))

(declare-fun b!1618265 () Bool)

(assert (=> b!1618265 false))

(declare-fun lt!581085 () Unit!28465)

(declare-fun lt!581060 () Unit!28465)

(assert (=> b!1618265 (= lt!581085 lt!581060)))

(declare-fun lt!581113 () List!17772)

(assert (=> b!1618265 (not (matchR!1946 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))) lt!581113))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!68 (LexerInterface!2748 List!17774 Rule!6038 List!17772 List!17772 Rule!6038) Unit!28465)

(assert (=> b!1618265 (= lt!581060 (lemmaMaxPrefNoSmallerRuleMatches!68 thiss!17113 rules!1846 (rule!4939 lt!581056) lt!581113 lt!581119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))

(assert (=> b!1618265 (= lt!581113 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun Unit!28541 () Unit!28465)

(assert (=> b!1618265 (= e!1037943 Unit!28541)))

(declare-fun b!1618266 () Bool)

(declare-fun res!722465 () Bool)

(assert (=> b!1618266 (=> (not res!722465) (not e!1037946))))

(assert (=> b!1618266 (= res!722465 (matchR!1946 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581056))))) (list!6924 (charsOf!1768 lt!581056))))))

(declare-fun b!1618267 () Bool)

(declare-fun Unit!28542 () Unit!28465)

(assert (=> b!1618267 (= e!1037942 Unit!28542)))

(declare-fun b!1618268 () Bool)

(declare-fun Unit!28543 () Unit!28465)

(assert (=> b!1618268 (= e!1037948 Unit!28543)))

(declare-fun lt!581078 () List!17772)

(assert (=> b!1618268 (= lt!581078 (list!6924 (charsOf!1768 lt!581056)))))

(declare-fun lt!581052 () List!17772)

(assert (=> b!1618268 (= lt!581052 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581105 () Unit!28465)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!118 (LexerInterface!2748 List!17774 Rule!6038 List!17772 List!17772 List!17772 Rule!6038) Unit!28465)

(assert (=> b!1618268 (= lt!581105 (lemmaMaxPrefixOutputsMaxPrefix!118 thiss!17113 rules!1846 (rule!4939 lt!581056) lt!581078 lt!581119 lt!581052 (rule!4939 (h!23104 (t!148288 tokens!457)))))))

(assert (=> b!1618268 (not (matchR!1946 (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))) lt!581052))))

(declare-fun lt!581116 () Unit!28465)

(assert (=> b!1618268 (= lt!581116 lt!581105)))

(assert (=> b!1618268 false))

(declare-fun b!1618269 () Bool)

(declare-fun Unit!28544 () Unit!28465)

(assert (=> b!1618269 (= e!1037942 Unit!28544)))

(declare-fun c!263603 () Bool)

(declare-fun getIndex!96 (List!17774 Rule!6038) Int)

(assert (=> b!1618269 (= c!263603 (< (getIndex!96 rules!1846 (rule!4939 (h!23104 (t!148288 tokens!457)))) (getIndex!96 rules!1846 (rule!4939 lt!581056))))))

(declare-fun lt!581076 () Unit!28465)

(assert (=> b!1618269 (= lt!581076 e!1037943)))

(declare-fun c!263600 () Bool)

(assert (=> b!1618269 (= c!263600 (< (getIndex!96 rules!1846 (rule!4939 lt!581056)) (getIndex!96 rules!1846 (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581111 () Unit!28465)

(declare-fun e!1037945 () Unit!28465)

(assert (=> b!1618269 (= lt!581111 e!1037945)))

(declare-fun c!263601 () Bool)

(assert (=> b!1618269 (= c!263601 (= (getIndex!96 rules!1846 (rule!4939 lt!581056)) (getIndex!96 rules!1846 (rule!4939 (h!23104 (t!148288 tokens!457))))))))

(declare-fun lt!581100 () Unit!28465)

(declare-fun e!1037944 () Unit!28465)

(assert (=> b!1618269 (= lt!581100 e!1037944)))

(assert (=> b!1618269 false))

(declare-fun b!1618270 () Bool)

(declare-fun Unit!28545 () Unit!28465)

(assert (=> b!1618270 (= e!1037947 Unit!28545)))

(declare-fun b!1618271 () Bool)

(declare-fun Unit!28546 () Unit!28465)

(assert (=> b!1618271 (= e!1037944 Unit!28546)))

(declare-fun b!1618272 () Bool)

(declare-fun Unit!28547 () Unit!28465)

(assert (=> b!1618272 (= e!1037945 Unit!28547)))

(declare-fun b!1618273 () Bool)

(assert (=> b!1618273 false))

(declare-fun lt!581065 () Unit!28465)

(declare-fun lt!581062 () Unit!28465)

(assert (=> b!1618273 (= lt!581065 lt!581062)))

(declare-fun lt!581104 () List!17772)

(assert (=> b!1618273 (not (matchR!1946 (regex!3119 (rule!4939 lt!581056)) lt!581104))))

(assert (=> b!1618273 (= lt!581062 (lemmaMaxPrefNoSmallerRuleMatches!68 thiss!17113 rules!1846 (rule!4939 (h!23104 (t!148288 tokens!457))) lt!581104 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (rule!4939 lt!581056)))))

(assert (=> b!1618273 (= lt!581104 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(declare-fun Unit!28548 () Unit!28465)

(assert (=> b!1618273 (= e!1037945 Unit!28548)))

(declare-fun b!1618274 () Bool)

(assert (=> b!1618274 (= e!1037946 (= (rule!4939 lt!581056) (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581056))))))))

(declare-fun b!1618275 () Bool)

(declare-fun Unit!28549 () Unit!28465)

(assert (=> b!1618275 (= e!1037948 Unit!28549)))

(declare-fun b!1618276 () Bool)

(assert (=> b!1618276 false))

(declare-fun lt!581093 () Unit!28465)

(declare-fun lt!581098 () Unit!28465)

(assert (=> b!1618276 (= lt!581093 lt!581098)))

(assert (=> b!1618276 (= (rule!4939 lt!581056) (rule!4939 (h!23104 (t!148288 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!44 (List!17774 Rule!6038 Rule!6038) Unit!28465)

(assert (=> b!1618276 (= lt!581098 (lemmaSameIndexThenSameElement!44 rules!1846 (rule!4939 lt!581056) (rule!4939 (h!23104 (t!148288 tokens!457)))))))

(declare-fun Unit!28550 () Unit!28465)

(assert (=> b!1618276 (= e!1037944 Unit!28550)))

(assert (= (and d!486960 res!722466) b!1618266))

(assert (= (and b!1618266 res!722465) b!1618274))

(assert (= (and d!486960 c!263602) b!1618264))

(assert (= (and d!486960 (not c!263602)) b!1618270))

(assert (= (and d!486960 c!263599) b!1618268))

(assert (= (and d!486960 (not c!263599)) b!1618275))

(assert (= (and d!486960 c!263598) b!1618269))

(assert (= (and d!486960 (not c!263598)) b!1618267))

(assert (= (and b!1618269 c!263603) b!1618265))

(assert (= (and b!1618269 (not c!263603)) b!1618263))

(assert (= (and b!1618269 c!263600) b!1618273))

(assert (= (and b!1618269 (not c!263600)) b!1618272))

(assert (= (and b!1618269 c!263601) b!1618276))

(assert (= (and b!1618269 (not c!263601)) b!1618271))

(declare-fun m!1940775 () Bool)

(assert (=> b!1618266 m!1940775))

(declare-fun m!1940779 () Bool)

(assert (=> b!1618266 m!1940779))

(declare-fun m!1940781 () Bool)

(assert (=> b!1618266 m!1940781))

(declare-fun m!1940783 () Bool)

(assert (=> b!1618266 m!1940783))

(declare-fun m!1940785 () Bool)

(assert (=> b!1618266 m!1940785))

(assert (=> b!1618266 m!1940775))

(assert (=> b!1618266 m!1940785))

(assert (=> b!1618266 m!1940781))

(assert (=> b!1618274 m!1940781))

(assert (=> b!1618274 m!1940781))

(assert (=> b!1618274 m!1940783))

(assert (=> b!1618268 m!1936491))

(assert (=> b!1618268 m!1940785))

(assert (=> b!1618268 m!1940775))

(assert (=> b!1618268 m!1940785))

(declare-fun m!1940789 () Bool)

(assert (=> b!1618268 m!1940789))

(declare-fun m!1940793 () Bool)

(assert (=> b!1618268 m!1940793))

(assert (=> b!1618268 m!1936491))

(assert (=> b!1618268 m!1936965))

(declare-fun m!1940795 () Bool)

(assert (=> b!1618276 m!1940795))

(declare-fun m!1940797 () Bool)

(assert (=> b!1618269 m!1940797))

(declare-fun m!1940799 () Bool)

(assert (=> b!1618269 m!1940799))

(declare-fun m!1940801 () Bool)

(assert (=> b!1618273 m!1940801))

(assert (=> b!1618273 m!1936491))

(assert (=> b!1618273 m!1936491))

(assert (=> b!1618273 m!1936965))

(assert (=> b!1618273 m!1936965))

(declare-fun m!1940803 () Bool)

(assert (=> b!1618273 m!1940803))

(declare-fun m!1940809 () Bool)

(assert (=> b!1618264 m!1940809))

(declare-fun m!1940813 () Bool)

(assert (=> b!1618264 m!1940813))

(assert (=> b!1618264 m!1936491))

(declare-fun m!1940817 () Bool)

(assert (=> b!1618264 m!1940817))

(declare-fun m!1940819 () Bool)

(assert (=> b!1618264 m!1940819))

(declare-fun m!1940821 () Bool)

(assert (=> b!1618264 m!1940821))

(assert (=> b!1618264 m!1936939))

(declare-fun m!1940823 () Bool)

(assert (=> b!1618264 m!1940823))

(assert (=> b!1618264 m!1936939))

(assert (=> b!1618264 m!1936941))

(declare-fun m!1940825 () Bool)

(assert (=> b!1618264 m!1940825))

(assert (=> b!1618264 m!1936965))

(declare-fun m!1940827 () Bool)

(assert (=> b!1618264 m!1940827))

(assert (=> b!1618264 m!1940785))

(assert (=> b!1618264 m!1940775))

(assert (=> b!1618264 m!1936491))

(assert (=> b!1618264 m!1936965))

(assert (=> b!1618264 m!1936965))

(declare-fun m!1940829 () Bool)

(assert (=> b!1618264 m!1940829))

(assert (=> b!1618264 m!1940785))

(assert (=> b!1618264 m!1940809))

(assert (=> b!1618264 m!1940821))

(declare-fun m!1940831 () Bool)

(assert (=> b!1618264 m!1940831))

(assert (=> b!1618264 m!1936481))

(declare-fun m!1940833 () Bool)

(assert (=> b!1618264 m!1940833))

(declare-fun m!1940835 () Bool)

(assert (=> b!1618264 m!1940835))

(declare-fun m!1940837 () Bool)

(assert (=> b!1618264 m!1940837))

(assert (=> b!1618264 m!1936481))

(assert (=> b!1618264 m!1940775))

(declare-fun m!1940839 () Bool)

(assert (=> b!1618264 m!1940839))

(assert (=> d!486960 m!1940785))

(declare-fun m!1940841 () Bool)

(assert (=> d!486960 m!1940841))

(declare-fun m!1940843 () Bool)

(assert (=> d!486960 m!1940843))

(declare-fun m!1940845 () Bool)

(assert (=> d!486960 m!1940845))

(declare-fun m!1940847 () Bool)

(assert (=> d!486960 m!1940847))

(declare-fun m!1940849 () Bool)

(assert (=> d!486960 m!1940849))

(declare-fun m!1940851 () Bool)

(assert (=> d!486960 m!1940851))

(declare-fun m!1940853 () Bool)

(assert (=> d!486960 m!1940853))

(assert (=> d!486960 m!1940785))

(assert (=> d!486960 m!1940775))

(assert (=> d!486960 m!1940775))

(declare-fun m!1940855 () Bool)

(assert (=> d!486960 m!1940855))

(assert (=> d!486960 m!1940785))

(declare-fun m!1940857 () Bool)

(assert (=> d!486960 m!1940857))

(assert (=> d!486960 m!1936965))

(declare-fun m!1940859 () Bool)

(assert (=> d!486960 m!1940859))

(assert (=> d!486960 m!1940785))

(assert (=> d!486960 m!1940841))

(declare-fun m!1940861 () Bool)

(assert (=> d!486960 m!1940861))

(declare-fun m!1940863 () Bool)

(assert (=> d!486960 m!1940863))

(declare-fun m!1940865 () Bool)

(assert (=> d!486960 m!1940865))

(assert (=> d!486960 m!1940781))

(declare-fun m!1940867 () Bool)

(assert (=> d!486960 m!1940867))

(assert (=> d!486960 m!1936533))

(assert (=> d!486960 m!1936491))

(assert (=> d!486960 m!1936965))

(assert (=> d!486960 m!1936939))

(declare-fun m!1940869 () Bool)

(assert (=> d!486960 m!1940869))

(assert (=> d!486960 m!1936965))

(assert (=> d!486960 m!1936939))

(assert (=> d!486960 m!1936987))

(assert (=> d!486960 m!1940845))

(declare-fun m!1940871 () Bool)

(assert (=> d!486960 m!1940871))

(assert (=> d!486960 m!1936481))

(assert (=> d!486960 m!1936965))

(declare-fun m!1940873 () Bool)

(assert (=> d!486960 m!1940873))

(assert (=> d!486960 m!1936939))

(declare-fun m!1940875 () Bool)

(assert (=> d!486960 m!1940875))

(assert (=> d!486960 m!1940869))

(declare-fun m!1940877 () Bool)

(assert (=> d!486960 m!1940877))

(declare-fun m!1940879 () Bool)

(assert (=> d!486960 m!1940879))

(assert (=> d!486960 m!1936939))

(assert (=> d!486960 m!1940847))

(assert (=> d!486960 m!1936491))

(assert (=> d!486960 m!1936965))

(assert (=> d!486960 m!1940781))

(declare-fun m!1940881 () Bool)

(assert (=> d!486960 m!1940881))

(declare-fun m!1940883 () Bool)

(assert (=> d!486960 m!1940883))

(assert (=> d!486960 m!1936965))

(assert (=> d!486960 m!1936939))

(assert (=> d!486960 m!1936965))

(declare-fun m!1940885 () Bool)

(assert (=> d!486960 m!1940885))

(declare-fun m!1940887 () Bool)

(assert (=> d!486960 m!1940887))

(assert (=> d!486960 m!1940785))

(declare-fun m!1940889 () Bool)

(assert (=> d!486960 m!1940889))

(assert (=> d!486960 m!1936491))

(assert (=> d!486960 m!1937311))

(assert (=> d!486960 m!1936481))

(declare-fun m!1940895 () Bool)

(assert (=> d!486960 m!1940895))

(declare-fun m!1940897 () Bool)

(assert (=> d!486960 m!1940897))

(assert (=> d!486960 m!1940863))

(declare-fun m!1940903 () Bool)

(assert (=> d!486960 m!1940903))

(declare-fun m!1940907 () Bool)

(assert (=> d!486960 m!1940907))

(declare-fun m!1940909 () Bool)

(assert (=> b!1618265 m!1940909))

(declare-fun m!1940913 () Bool)

(assert (=> b!1618265 m!1940913))

(assert (=> b!1618265 m!1940785))

(assert (=> b!1618265 m!1940785))

(assert (=> b!1618265 m!1940775))

(assert (=> b!1616385 d!486960))

(declare-fun d!487172 () Bool)

(assert (=> d!487172 (= (head!3362 (list!6924 lt!579459)) (h!23103 (list!6924 lt!579459)))))

(assert (=> b!1616385 d!487172))

(declare-fun d!487174 () Bool)

(declare-fun lt!581132 () BalanceConc!11716)

(assert (=> d!487174 (= (list!6924 lt!581132) (printList!863 thiss!17113 (list!6923 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487174 (= lt!581132 (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) 0 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!487174 (= (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457)))) lt!581132)))

(declare-fun bs!394301 () Bool)

(assert (= bs!394301 d!487174))

(declare-fun m!1940923 () Bool)

(assert (=> bs!394301 m!1940923))

(assert (=> bs!394301 m!1936931))

(declare-fun m!1940925 () Bool)

(assert (=> bs!394301 m!1940925))

(assert (=> bs!394301 m!1940925))

(declare-fun m!1940927 () Bool)

(assert (=> bs!394301 m!1940927))

(assert (=> bs!394301 m!1936931))

(assert (=> bs!394301 m!1936933))

(assert (=> b!1616385 d!487174))

(declare-fun d!487178 () Bool)

(assert (=> d!487178 (= (list!6923 (_1!10019 lt!579470)) (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581134 () Unit!28465)

(assert (=> d!487178 (= lt!581134 (choose!9722 (h!23104 (t!148288 (t!148288 tokens!457))) (t!148288 (t!148288 (t!148288 tokens!457))) (_1!10019 lt!579470)))))

(assert (=> d!487178 (= (list!6923 (_1!10019 lt!579470)) (list!6923 (seqFromList!1987 ($colon$colon!313 (t!148288 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 (t!148288 tokens!457)))))))))

(assert (=> d!487178 (= (seqFromListBHdTlConstructive!196 (h!23104 (t!148288 (t!148288 tokens!457))) (t!148288 (t!148288 (t!148288 tokens!457))) (_1!10019 lt!579470)) lt!581134)))

(declare-fun bs!394302 () Bool)

(assert (= bs!394302 d!487178))

(assert (=> bs!394302 m!1936935))

(assert (=> bs!394302 m!1936937))

(assert (=> bs!394302 m!1936949))

(assert (=> bs!394302 m!1936949))

(assert (=> bs!394302 m!1936935))

(declare-fun m!1940933 () Bool)

(assert (=> bs!394302 m!1940933))

(declare-fun m!1940935 () Bool)

(assert (=> bs!394302 m!1940935))

(declare-fun m!1940937 () Bool)

(assert (=> bs!394302 m!1940937))

(declare-fun m!1940939 () Bool)

(assert (=> bs!394302 m!1940939))

(assert (=> bs!394302 m!1940939))

(assert (=> bs!394302 m!1940935))

(assert (=> bs!394302 m!1936975))

(assert (=> b!1616385 d!487178))

(declare-fun d!487182 () Bool)

(declare-fun lt!581135 () BalanceConc!11716)

(assert (=> d!487182 (= (list!6924 lt!581135) (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457)))))))

(assert (=> d!487182 (= lt!581135 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (value!98564 (h!23104 (t!148288 (t!148288 tokens!457))))))))

(assert (=> d!487182 (= (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) lt!581135)))

(declare-fun b_lambda!51023 () Bool)

(assert (=> (not b_lambda!51023) (not d!487182)))

(declare-fun t!148465 () Bool)

(declare-fun tb!92967 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148465) tb!92967))

(declare-fun b!1618296 () Bool)

(declare-fun e!1037961 () Bool)

(declare-fun tp!471298 () Bool)

(assert (=> b!1618296 (= e!1037961 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (value!98564 (h!23104 (t!148288 (t!148288 tokens!457))))))) tp!471298))))

(declare-fun result!112060 () Bool)

(assert (=> tb!92967 (= result!112060 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (value!98564 (h!23104 (t!148288 (t!148288 tokens!457)))))) e!1037961))))

(assert (= tb!92967 b!1618296))

(declare-fun m!1940943 () Bool)

(assert (=> b!1618296 m!1940943))

(declare-fun m!1940945 () Bool)

(assert (=> tb!92967 m!1940945))

(assert (=> d!487182 t!148465))

(declare-fun b_and!114781 () Bool)

(assert (= b_and!114725 (and (=> t!148465 result!112060) b_and!114781)))

(declare-fun t!148467 () Bool)

(declare-fun tb!92969 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148467) tb!92969))

(declare-fun result!112062 () Bool)

(assert (= result!112062 result!112060))

(assert (=> d!487182 t!148467))

(declare-fun b_and!114783 () Bool)

(assert (= b_and!114727 (and (=> t!148467 result!112062) b_and!114783)))

(declare-fun t!148469 () Bool)

(declare-fun tb!92971 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148469) tb!92971))

(declare-fun result!112064 () Bool)

(assert (= result!112064 result!112060))

(assert (=> d!487182 t!148469))

(declare-fun b_and!114785 () Bool)

(assert (= b_and!114729 (and (=> t!148469 result!112064) b_and!114785)))

(declare-fun tb!92973 () Bool)

(declare-fun t!148471 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148471) tb!92973))

(declare-fun result!112066 () Bool)

(assert (= result!112066 result!112060))

(assert (=> d!487182 t!148471))

(declare-fun b_and!114787 () Bool)

(assert (= b_and!114731 (and (=> t!148471 result!112066) b_and!114787)))

(declare-fun m!1940947 () Bool)

(assert (=> d!487182 m!1940947))

(declare-fun m!1940949 () Bool)

(assert (=> d!487182 m!1940949))

(assert (=> b!1616385 d!487182))

(declare-fun b!1618297 () Bool)

(declare-fun res!722479 () Bool)

(declare-fun e!1037962 () Bool)

(assert (=> b!1618297 (=> (not res!722479) (not e!1037962))))

(declare-fun lt!581140 () Option!3247)

(assert (=> b!1618297 (= res!722479 (< (size!14197 (_2!10020 (get!5079 lt!581140))) (size!14197 (list!6924 lt!579448))))))

(declare-fun b!1618298 () Bool)

(declare-fun e!1037963 () Bool)

(assert (=> b!1618298 (= e!1037963 e!1037962)))

(declare-fun res!722475 () Bool)

(assert (=> b!1618298 (=> (not res!722475) (not e!1037962))))

(assert (=> b!1618298 (= res!722475 (isDefined!2614 lt!581140))))

(declare-fun b!1618299 () Bool)

(declare-fun e!1037964 () Option!3247)

(declare-fun lt!581139 () Option!3247)

(declare-fun lt!581138 () Option!3247)

(assert (=> b!1618299 (= e!1037964 (ite (and ((_ is None!3246) lt!581139) ((_ is None!3246) lt!581138)) None!3246 (ite ((_ is None!3246) lt!581138) lt!581139 (ite ((_ is None!3246) lt!581139) lt!581138 (ite (>= (size!14194 (_1!10020 (v!24235 lt!581139))) (size!14194 (_1!10020 (v!24235 lt!581138)))) lt!581139 lt!581138)))))))

(declare-fun call!105033 () Option!3247)

(assert (=> b!1618299 (= lt!581139 call!105033)))

(assert (=> b!1618299 (= lt!581138 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (list!6924 lt!579448)))))

(declare-fun b!1618300 () Bool)

(declare-fun res!722478 () Bool)

(assert (=> b!1618300 (=> (not res!722478) (not e!1037962))))

(assert (=> b!1618300 (= res!722478 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581140)))) (_2!10020 (get!5079 lt!581140))) (list!6924 lt!579448)))))

(declare-fun b!1618301 () Bool)

(declare-fun res!722480 () Bool)

(assert (=> b!1618301 (=> (not res!722480) (not e!1037962))))

(assert (=> b!1618301 (= res!722480 (= (value!98564 (_1!10020 (get!5079 lt!581140))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581140)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581140)))))))))

(declare-fun b!1618302 () Bool)

(declare-fun res!722474 () Bool)

(assert (=> b!1618302 (=> (not res!722474) (not e!1037962))))

(assert (=> b!1618302 (= res!722474 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581140)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!581140)))))))

(declare-fun b!1618303 () Bool)

(assert (=> b!1618303 (= e!1037962 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!581140)))))))

(declare-fun bm!105028 () Bool)

(assert (=> bm!105028 (= call!105033 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 lt!579448)))))

(declare-fun d!487186 () Bool)

(assert (=> d!487186 e!1037963))

(declare-fun res!722476 () Bool)

(assert (=> d!487186 (=> res!722476 e!1037963)))

(assert (=> d!487186 (= res!722476 (isEmpty!10719 lt!581140))))

(assert (=> d!487186 (= lt!581140 e!1037964)))

(declare-fun c!263610 () Bool)

(assert (=> d!487186 (= c!263610 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!581137 () Unit!28465)

(declare-fun lt!581136 () Unit!28465)

(assert (=> d!487186 (= lt!581137 lt!581136)))

(assert (=> d!487186 (isPrefix!1379 (list!6924 lt!579448) (list!6924 lt!579448))))

(assert (=> d!487186 (= lt!581136 (lemmaIsPrefixRefl!946 (list!6924 lt!579448) (list!6924 lt!579448)))))

(assert (=> d!487186 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!487186 (= (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 lt!579448)) lt!581140)))

(declare-fun b!1618304 () Bool)

(declare-fun res!722477 () Bool)

(assert (=> b!1618304 (=> (not res!722477) (not e!1037962))))

(assert (=> b!1618304 (= res!722477 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!581140)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581140))))))))

(declare-fun b!1618305 () Bool)

(assert (=> b!1618305 (= e!1037964 call!105033)))

(assert (= (and d!487186 c!263610) b!1618305))

(assert (= (and d!487186 (not c!263610)) b!1618299))

(assert (= (or b!1618305 b!1618299) bm!105028))

(assert (= (and d!487186 (not res!722476)) b!1618298))

(assert (= (and b!1618298 res!722475) b!1618302))

(assert (= (and b!1618302 res!722474) b!1618297))

(assert (= (and b!1618297 res!722479) b!1618300))

(assert (= (and b!1618300 res!722478) b!1618301))

(assert (= (and b!1618301 res!722480) b!1618304))

(assert (= (and b!1618304 res!722477) b!1618303))

(declare-fun m!1940951 () Bool)

(assert (=> d!487186 m!1940951))

(assert (=> d!487186 m!1936955))

(assert (=> d!487186 m!1936955))

(declare-fun m!1940953 () Bool)

(assert (=> d!487186 m!1940953))

(assert (=> d!487186 m!1936955))

(assert (=> d!487186 m!1936955))

(declare-fun m!1940955 () Bool)

(assert (=> d!487186 m!1940955))

(assert (=> d!487186 m!1936675))

(declare-fun m!1940957 () Bool)

(assert (=> b!1618298 m!1940957))

(declare-fun m!1940959 () Bool)

(assert (=> b!1618301 m!1940959))

(declare-fun m!1940961 () Bool)

(assert (=> b!1618301 m!1940961))

(assert (=> b!1618301 m!1940961))

(declare-fun m!1940963 () Bool)

(assert (=> b!1618301 m!1940963))

(assert (=> b!1618300 m!1940959))

(declare-fun m!1940965 () Bool)

(assert (=> b!1618300 m!1940965))

(assert (=> b!1618300 m!1940965))

(declare-fun m!1940967 () Bool)

(assert (=> b!1618300 m!1940967))

(assert (=> b!1618300 m!1940967))

(declare-fun m!1940969 () Bool)

(assert (=> b!1618300 m!1940969))

(assert (=> b!1618299 m!1936955))

(declare-fun m!1940971 () Bool)

(assert (=> b!1618299 m!1940971))

(assert (=> b!1618303 m!1940959))

(declare-fun m!1940973 () Bool)

(assert (=> b!1618303 m!1940973))

(assert (=> b!1618304 m!1940959))

(assert (=> b!1618304 m!1940965))

(assert (=> b!1618304 m!1940965))

(assert (=> b!1618304 m!1940967))

(assert (=> b!1618304 m!1940967))

(declare-fun m!1940975 () Bool)

(assert (=> b!1618304 m!1940975))

(assert (=> bm!105028 m!1936955))

(declare-fun m!1940977 () Bool)

(assert (=> bm!105028 m!1940977))

(assert (=> b!1618302 m!1940959))

(assert (=> b!1618302 m!1940965))

(assert (=> b!1618302 m!1940965))

(assert (=> b!1618302 m!1940967))

(assert (=> b!1618297 m!1940959))

(declare-fun m!1940979 () Bool)

(assert (=> b!1618297 m!1940979))

(assert (=> b!1618297 m!1936955))

(declare-fun m!1940981 () Bool)

(assert (=> b!1618297 m!1940981))

(assert (=> b!1616385 d!487186))

(declare-fun d!487188 () Bool)

(assert (=> d!487188 (= (head!3362 (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457))))) (h!23103 (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457))))))))

(assert (=> b!1616385 d!487188))

(declare-fun d!487190 () Bool)

(assert (=> d!487190 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459))))))

(declare-fun lt!581147 () Unit!28465)

(declare-fun e!1037968 () Unit!28465)

(assert (=> d!487190 (= lt!581147 e!1037968)))

(declare-fun c!263613 () Bool)

(assert (=> d!487190 (= c!263613 (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))))

(declare-fun lt!581146 () Unit!28465)

(declare-fun lt!581155 () Unit!28465)

(assert (=> d!487190 (= lt!581146 lt!581155)))

(declare-fun e!1037967 () Bool)

(assert (=> d!487190 e!1037967))

(declare-fun res!722481 () Bool)

(assert (=> d!487190 (=> (not res!722481) (not e!1037967))))

(declare-fun lt!581153 () Token!5804)

(assert (=> d!487190 (= res!722481 (isDefined!2617 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581153)))))))

(assert (=> d!487190 (= lt!581155 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!270 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) lt!581153))))

(declare-fun lt!581161 () Unit!28465)

(declare-fun lt!581152 () Unit!28465)

(assert (=> d!487190 (= lt!581161 lt!581152)))

(declare-fun lt!581145 () List!17772)

(assert (=> d!487190 (isPrefix!1379 lt!581145 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(assert (=> d!487190 (= lt!581152 (lemmaPrefixStaysPrefixWhenAddingToSuffix!156 lt!581145 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(assert (=> d!487190 (= lt!581145 (list!6924 (charsOf!1768 lt!581153)))))

(declare-fun lt!581157 () Unit!28465)

(declare-fun lt!581159 () Unit!28465)

(assert (=> d!487190 (= lt!581157 lt!581159)))

(declare-fun lt!581150 () List!17772)

(declare-fun lt!581149 () List!17772)

(assert (=> d!487190 (isPrefix!1379 lt!581150 (++!4680 lt!581150 lt!581149))))

(assert (=> d!487190 (= lt!581159 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!581150 lt!581149))))

(assert (=> d!487190 (= lt!581149 (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(assert (=> d!487190 (= lt!581150 (list!6924 (charsOf!1768 lt!581153)))))

(assert (=> d!487190 (= lt!581153 (head!3366 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))))

(assert (=> d!487190 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487190 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)) lt!581147)))

(declare-fun b!1618313 () Bool)

(declare-fun Unit!28551 () Unit!28465)

(assert (=> b!1618313 (= e!1037968 Unit!28551)))

(declare-fun b!1618310 () Bool)

(declare-fun res!722482 () Bool)

(assert (=> b!1618310 (=> (not res!722482) (not e!1037967))))

(assert (=> b!1618310 (= res!722482 (matchR!1946 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581153))))) (list!6924 (charsOf!1768 lt!581153))))))

(declare-fun b!1618311 () Bool)

(assert (=> b!1618311 (= e!1037967 (= (rule!4939 lt!581153) (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!581153))))))))

(declare-fun b!1618312 () Bool)

(declare-fun Unit!28552 () Unit!28465)

(assert (=> b!1618312 (= e!1037968 Unit!28552)))

(declare-fun lt!581148 () List!17772)

(assert (=> b!1618312 (= lt!581148 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459)))))

(declare-fun lt!581151 () Unit!28465)

(assert (=> b!1618312 (= lt!581151 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!164 thiss!17113 (rule!4939 lt!581153) rules!1846 lt!581148))))

(assert (=> b!1618312 (isEmpty!10719 (maxPrefixOneRule!761 thiss!17113 (rule!4939 lt!581153) lt!581148))))

(declare-fun lt!581154 () Unit!28465)

(assert (=> b!1618312 (= lt!581154 lt!581151)))

(declare-fun lt!581160 () List!17772)

(assert (=> b!1618312 (= lt!581160 (list!6924 (charsOf!1768 lt!581153)))))

(declare-fun lt!581158 () Unit!28465)

(assert (=> b!1618312 (= lt!581158 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!160 thiss!17113 (rule!4939 lt!581153) lt!581160 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 lt!579459))))))

(assert (=> b!1618312 (not (matchR!1946 (regex!3119 (rule!4939 lt!581153)) lt!581160))))

(declare-fun lt!581156 () Unit!28465)

(assert (=> b!1618312 (= lt!581156 lt!581158)))

(assert (=> b!1618312 false))

(assert (= (and d!487190 res!722481) b!1618310))

(assert (= (and b!1618310 res!722482) b!1618311))

(assert (= (and d!487190 c!263613) b!1618312))

(assert (= (and d!487190 (not c!263613)) b!1618313))

(assert (=> d!487190 m!1936965))

(declare-fun m!1940985 () Bool)

(assert (=> d!487190 m!1940985))

(declare-fun m!1940989 () Bool)

(assert (=> d!487190 m!1940989))

(assert (=> d!487190 m!1936945))

(assert (=> d!487190 m!1936973))

(assert (=> d!487190 m!1940877))

(declare-fun m!1940993 () Bool)

(assert (=> d!487190 m!1940993))

(declare-fun m!1940995 () Bool)

(assert (=> d!487190 m!1940995))

(declare-fun m!1940997 () Bool)

(assert (=> d!487190 m!1940997))

(assert (=> d!487190 m!1936965))

(declare-fun m!1940999 () Bool)

(assert (=> d!487190 m!1940999))

(declare-fun m!1941001 () Bool)

(assert (=> d!487190 m!1941001))

(assert (=> d!487190 m!1940869))

(declare-fun m!1941003 () Bool)

(assert (=> d!487190 m!1941003))

(assert (=> d!487190 m!1936965))

(assert (=> d!487190 m!1936939))

(declare-fun m!1941005 () Bool)

(assert (=> d!487190 m!1941005))

(declare-fun m!1941007 () Bool)

(assert (=> d!487190 m!1941007))

(assert (=> d!487190 m!1940999))

(declare-fun m!1941009 () Bool)

(assert (=> d!487190 m!1941009))

(assert (=> d!487190 m!1936533))

(assert (=> d!487190 m!1940869))

(assert (=> d!487190 m!1940877))

(assert (=> d!487190 m!1941001))

(declare-fun m!1941011 () Bool)

(assert (=> d!487190 m!1941011))

(declare-fun m!1941013 () Bool)

(assert (=> d!487190 m!1941013))

(assert (=> d!487190 m!1940995))

(assert (=> d!487190 m!1941013))

(declare-fun m!1941015 () Bool)

(assert (=> d!487190 m!1941015))

(assert (=> d!487190 m!1940877))

(declare-fun m!1941017 () Bool)

(assert (=> d!487190 m!1941017))

(assert (=> d!487190 m!1936965))

(assert (=> d!487190 m!1936939))

(assert (=> d!487190 m!1940869))

(assert (=> d!487190 m!1941007))

(declare-fun m!1941019 () Bool)

(assert (=> d!487190 m!1941019))

(assert (=> d!487190 m!1936965))

(assert (=> d!487190 m!1936945))

(assert (=> b!1618310 m!1941019))

(declare-fun m!1941021 () Bool)

(assert (=> b!1618310 m!1941021))

(assert (=> b!1618310 m!1941013))

(assert (=> b!1618310 m!1941007))

(assert (=> b!1618310 m!1941007))

(assert (=> b!1618310 m!1941019))

(assert (=> b!1618310 m!1941013))

(declare-fun m!1941023 () Bool)

(assert (=> b!1618310 m!1941023))

(assert (=> b!1618311 m!1941013))

(assert (=> b!1618311 m!1941013))

(assert (=> b!1618311 m!1941023))

(declare-fun m!1941025 () Bool)

(assert (=> b!1618312 m!1941025))

(declare-fun m!1941027 () Bool)

(assert (=> b!1618312 m!1941027))

(assert (=> b!1618312 m!1940869))

(declare-fun m!1941029 () Bool)

(assert (=> b!1618312 m!1941029))

(assert (=> b!1618312 m!1941027))

(declare-fun m!1941031 () Bool)

(assert (=> b!1618312 m!1941031))

(assert (=> b!1618312 m!1936965))

(assert (=> b!1618312 m!1936939))

(assert (=> b!1618312 m!1940869))

(assert (=> b!1618312 m!1941007))

(declare-fun m!1941033 () Bool)

(assert (=> b!1618312 m!1941033))

(assert (=> b!1618312 m!1941007))

(assert (=> b!1618312 m!1941019))

(assert (=> b!1616385 d!487190))

(declare-fun b!1618317 () Bool)

(declare-fun e!1037971 () Bool)

(declare-fun lt!581164 () tuple2!17234)

(assert (=> b!1618317 (= e!1037971 (not (isEmpty!10715 (_1!10019 lt!581164))))))

(declare-fun b!1618318 () Bool)

(declare-fun e!1037972 () Bool)

(assert (=> b!1618318 (= e!1037972 e!1037971)))

(declare-fun res!722483 () Bool)

(assert (=> b!1618318 (= res!722483 (< (size!14200 (_2!10019 lt!581164)) (size!14200 lt!579459)))))

(assert (=> b!1618318 (=> (not res!722483) (not e!1037971))))

(declare-fun e!1037970 () Bool)

(declare-fun b!1618319 () Bool)

(assert (=> b!1618319 (= e!1037970 (= (list!6924 (_2!10019 lt!581164)) (_2!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 lt!579459)))))))

(declare-fun b!1618320 () Bool)

(declare-fun res!722484 () Bool)

(assert (=> b!1618320 (=> (not res!722484) (not e!1037970))))

(assert (=> b!1618320 (= res!722484 (= (list!6923 (_1!10019 lt!581164)) (_1!10023 (lexList!815 thiss!17113 rules!1846 (list!6924 lt!579459)))))))

(declare-fun b!1618316 () Bool)

(assert (=> b!1618316 (= e!1037972 (= (_2!10019 lt!581164) lt!579459))))

(declare-fun d!487194 () Bool)

(assert (=> d!487194 e!1037970))

(declare-fun res!722485 () Bool)

(assert (=> d!487194 (=> (not res!722485) (not e!1037970))))

(assert (=> d!487194 (= res!722485 e!1037972)))

(declare-fun c!263615 () Bool)

(assert (=> d!487194 (= c!263615 (> (size!14198 (_1!10019 lt!581164)) 0))))

(assert (=> d!487194 (= lt!581164 (lexTailRecV2!538 thiss!17113 rules!1846 lt!579459 (BalanceConc!11717 Empty!5886) lt!579459 (BalanceConc!11719 Empty!5887)))))

(assert (=> d!487194 (= (lex!1232 thiss!17113 rules!1846 lt!579459) lt!581164)))

(assert (= (and d!487194 c!263615) b!1618318))

(assert (= (and d!487194 (not c!263615)) b!1618316))

(assert (= (and b!1618318 res!722483) b!1618317))

(assert (= (and d!487194 res!722485) b!1618320))

(assert (= (and b!1618320 res!722484) b!1618319))

(declare-fun m!1941035 () Bool)

(assert (=> b!1618320 m!1941035))

(assert (=> b!1618320 m!1936939))

(assert (=> b!1618320 m!1936939))

(declare-fun m!1941037 () Bool)

(assert (=> b!1618320 m!1941037))

(declare-fun m!1941039 () Bool)

(assert (=> b!1618317 m!1941039))

(declare-fun m!1941041 () Bool)

(assert (=> b!1618319 m!1941041))

(assert (=> b!1618319 m!1936939))

(assert (=> b!1618319 m!1936939))

(assert (=> b!1618319 m!1941037))

(declare-fun m!1941043 () Bool)

(assert (=> b!1618318 m!1941043))

(declare-fun m!1941045 () Bool)

(assert (=> b!1618318 m!1941045))

(declare-fun m!1941047 () Bool)

(assert (=> d!487194 m!1941047))

(declare-fun m!1941049 () Bool)

(assert (=> d!487194 m!1941049))

(assert (=> b!1616385 d!487194))

(declare-fun b!1618321 () Bool)

(declare-fun res!722491 () Bool)

(declare-fun e!1037973 () Bool)

(assert (=> b!1618321 (=> (not res!722491) (not e!1037973))))

(declare-fun lt!581169 () Option!3247)

(assert (=> b!1618321 (= res!722491 (< (size!14197 (_2!10020 (get!5079 lt!581169))) (size!14197 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1618322 () Bool)

(declare-fun e!1037974 () Bool)

(assert (=> b!1618322 (= e!1037974 e!1037973)))

(declare-fun res!722487 () Bool)

(assert (=> b!1618322 (=> (not res!722487) (not e!1037973))))

(assert (=> b!1618322 (= res!722487 (isDefined!2614 lt!581169))))

(declare-fun b!1618323 () Bool)

(declare-fun e!1037975 () Option!3247)

(declare-fun lt!581168 () Option!3247)

(declare-fun lt!581167 () Option!3247)

(assert (=> b!1618323 (= e!1037975 (ite (and ((_ is None!3246) lt!581168) ((_ is None!3246) lt!581167)) None!3246 (ite ((_ is None!3246) lt!581167) lt!581168 (ite ((_ is None!3246) lt!581168) lt!581167 (ite (>= (size!14194 (_1!10020 (v!24235 lt!581168))) (size!14194 (_1!10020 (v!24235 lt!581167)))) lt!581168 lt!581167)))))))

(declare-fun call!105034 () Option!3247)

(assert (=> b!1618323 (= lt!581168 call!105034)))

(assert (=> b!1618323 (= lt!581167 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1618324 () Bool)

(declare-fun res!722490 () Bool)

(assert (=> b!1618324 (=> (not res!722490) (not e!1037973))))

(assert (=> b!1618324 (= res!722490 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581169)))) (_2!10020 (get!5079 lt!581169))) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1618325 () Bool)

(declare-fun res!722492 () Bool)

(assert (=> b!1618325 (=> (not res!722492) (not e!1037973))))

(assert (=> b!1618325 (= res!722492 (= (value!98564 (_1!10020 (get!5079 lt!581169))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581169)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581169)))))))))

(declare-fun b!1618326 () Bool)

(declare-fun res!722486 () Bool)

(assert (=> b!1618326 (=> (not res!722486) (not e!1037973))))

(assert (=> b!1618326 (= res!722486 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581169)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!581169)))))))

(declare-fun b!1618327 () Bool)

(assert (=> b!1618327 (= e!1037973 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!581169)))))))

(declare-fun bm!105029 () Bool)

(assert (=> bm!105029 (= call!105034 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun d!487196 () Bool)

(assert (=> d!487196 e!1037974))

(declare-fun res!722488 () Bool)

(assert (=> d!487196 (=> res!722488 e!1037974)))

(assert (=> d!487196 (= res!722488 (isEmpty!10719 lt!581169))))

(assert (=> d!487196 (= lt!581169 e!1037975)))

(declare-fun c!263616 () Bool)

(assert (=> d!487196 (= c!263616 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!581166 () Unit!28465)

(declare-fun lt!581165 () Unit!28465)

(assert (=> d!487196 (= lt!581166 lt!581165)))

(assert (=> d!487196 (isPrefix!1379 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!487196 (= lt!581165 (lemmaIsPrefixRefl!946 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487196 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!487196 (= (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) lt!581169)))

(declare-fun b!1618328 () Bool)

(declare-fun res!722489 () Bool)

(assert (=> b!1618328 (=> (not res!722489) (not e!1037973))))

(assert (=> b!1618328 (= res!722489 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!581169)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581169))))))))

(declare-fun b!1618329 () Bool)

(assert (=> b!1618329 (= e!1037975 call!105034)))

(assert (= (and d!487196 c!263616) b!1618329))

(assert (= (and d!487196 (not c!263616)) b!1618323))

(assert (= (or b!1618329 b!1618323) bm!105029))

(assert (= (and d!487196 (not res!722488)) b!1618322))

(assert (= (and b!1618322 res!722487) b!1618326))

(assert (= (and b!1618326 res!722486) b!1618321))

(assert (= (and b!1618321 res!722491) b!1618324))

(assert (= (and b!1618324 res!722490) b!1618325))

(assert (= (and b!1618325 res!722492) b!1618328))

(assert (= (and b!1618328 res!722489) b!1618327))

(declare-fun m!1941051 () Bool)

(assert (=> d!487196 m!1941051))

(assert (=> d!487196 m!1936965))

(assert (=> d!487196 m!1936965))

(declare-fun m!1941053 () Bool)

(assert (=> d!487196 m!1941053))

(assert (=> d!487196 m!1936965))

(assert (=> d!487196 m!1936965))

(declare-fun m!1941055 () Bool)

(assert (=> d!487196 m!1941055))

(assert (=> d!487196 m!1936675))

(declare-fun m!1941057 () Bool)

(assert (=> b!1618322 m!1941057))

(declare-fun m!1941059 () Bool)

(assert (=> b!1618325 m!1941059))

(declare-fun m!1941061 () Bool)

(assert (=> b!1618325 m!1941061))

(assert (=> b!1618325 m!1941061))

(declare-fun m!1941063 () Bool)

(assert (=> b!1618325 m!1941063))

(assert (=> b!1618324 m!1941059))

(declare-fun m!1941065 () Bool)

(assert (=> b!1618324 m!1941065))

(assert (=> b!1618324 m!1941065))

(declare-fun m!1941067 () Bool)

(assert (=> b!1618324 m!1941067))

(assert (=> b!1618324 m!1941067))

(declare-fun m!1941069 () Bool)

(assert (=> b!1618324 m!1941069))

(assert (=> b!1618323 m!1936965))

(declare-fun m!1941071 () Bool)

(assert (=> b!1618323 m!1941071))

(assert (=> b!1618327 m!1941059))

(declare-fun m!1941073 () Bool)

(assert (=> b!1618327 m!1941073))

(assert (=> b!1618328 m!1941059))

(assert (=> b!1618328 m!1941065))

(assert (=> b!1618328 m!1941065))

(assert (=> b!1618328 m!1941067))

(assert (=> b!1618328 m!1941067))

(declare-fun m!1941075 () Bool)

(assert (=> b!1618328 m!1941075))

(assert (=> bm!105029 m!1936965))

(declare-fun m!1941077 () Bool)

(assert (=> bm!105029 m!1941077))

(assert (=> b!1618326 m!1941059))

(assert (=> b!1618326 m!1941065))

(assert (=> b!1618326 m!1941065))

(assert (=> b!1618326 m!1941067))

(assert (=> b!1618321 m!1941059))

(declare-fun m!1941079 () Bool)

(assert (=> b!1618321 m!1941079))

(assert (=> b!1618321 m!1936965))

(declare-fun m!1941081 () Bool)

(assert (=> b!1618321 m!1941081))

(assert (=> b!1616385 d!487196))

(declare-fun d!487198 () Bool)

(assert (=> d!487198 (= (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) (not (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun bs!394307 () Bool)

(assert (= bs!394307 d!487198))

(assert (=> bs!394307 m!1936945))

(declare-fun m!1941083 () Bool)

(assert (=> bs!394307 m!1941083))

(assert (=> b!1616385 d!487198))

(declare-fun d!487200 () Bool)

(declare-fun e!1037988 () Bool)

(assert (=> d!487200 e!1037988))

(declare-fun res!722497 () Bool)

(assert (=> d!487200 (=> (not res!722497) (not e!1037988))))

(assert (=> d!487200 (= res!722497 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))) (t!148288 (t!148288 tokens!457))))))

(declare-fun lt!581173 () Unit!28465)

(declare-fun e!1037989 () Unit!28465)

(assert (=> d!487200 (= lt!581173 e!1037989)))

(declare-fun c!263625 () Bool)

(assert (=> d!487200 (= c!263625 (or ((_ is Nil!17703) (t!148288 (t!148288 tokens!457))) ((_ is Nil!17703) (t!148288 (t!148288 (t!148288 tokens!457))))))))

(assert (=> d!487200 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487200 (= (theoremInvertabilityWhenTokenListSeparable!193 thiss!17113 rules!1846 (t!148288 (t!148288 tokens!457))) lt!581173)))

(declare-fun b!1618350 () Bool)

(declare-fun Unit!28553 () Unit!28465)

(assert (=> b!1618350 (= e!1037989 Unit!28553)))

(declare-fun b!1618351 () Bool)

(declare-fun Unit!28554 () Unit!28465)

(assert (=> b!1618351 (= e!1037989 Unit!28554)))

(declare-fun lt!581175 () BalanceConc!11716)

(assert (=> b!1618351 (= lt!581175 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!581186 () BalanceConc!11716)

(assert (=> b!1618351 (= lt!581186 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581197 () tuple2!17234)

(assert (=> b!1618351 (= lt!581197 (lex!1232 thiss!17113 rules!1846 lt!581186))))

(declare-fun lt!581185 () List!17772)

(assert (=> b!1618351 (= lt!581185 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581193 () List!17772)

(assert (=> b!1618351 (= lt!581193 (list!6924 lt!581186))))

(declare-fun lt!581191 () Unit!28465)

(assert (=> b!1618351 (= lt!581191 (lemmaConcatTwoListThenFirstIsPrefix!904 lt!581185 lt!581193))))

(assert (=> b!1618351 (isPrefix!1379 lt!581185 (++!4680 lt!581185 lt!581193))))

(declare-fun lt!581176 () Unit!28465)

(assert (=> b!1618351 (= lt!581176 lt!581191)))

(declare-fun lt!581192 () Unit!28465)

(assert (=> b!1618351 (= lt!581192 (theoremInvertabilityWhenTokenListSeparable!193 thiss!17113 rules!1846 (t!148288 (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!581172 () Unit!28465)

(assert (=> b!1618351 (= lt!581172 (seqFromListBHdTlConstructive!196 (h!23104 (t!148288 (t!148288 (t!148288 tokens!457)))) (t!148288 (t!148288 (t!148288 (t!148288 tokens!457)))) (_1!10019 lt!581197)))))

(assert (=> b!1618351 (= (list!6923 (_1!10019 lt!581197)) (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 (t!148288 tokens!457))))) (h!23104 (t!148288 (t!148288 (t!148288 tokens!457)))))))))

(declare-fun lt!581180 () Unit!28465)

(assert (=> b!1618351 (= lt!581180 lt!581172)))

(declare-fun lt!581178 () Option!3247)

(assert (=> b!1618351 (= lt!581178 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 lt!581175)))))

(assert (=> b!1618351 (= (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 (t!148288 tokens!457))))) (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 (t!148288 tokens!457)))) 0 (BalanceConc!11717 Empty!5886)))))

(declare-fun lt!581189 () Unit!28465)

(declare-fun Unit!28555 () Unit!28465)

(assert (=> b!1618351 (= lt!581189 Unit!28555)))

(declare-fun lt!581179 () Unit!28465)

(assert (=> b!1618351 (= lt!581179 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!322 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))) (list!6924 lt!581186)))))

(assert (=> b!1618351 (= (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))) (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!581196 () Unit!28465)

(declare-fun Unit!28556 () Unit!28465)

(assert (=> b!1618351 (= lt!581196 Unit!28556)))

(assert (=> b!1618351 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 (t!148288 tokens!457))))) 0))) (Cons!17702 (head!3362 (originalCharacters!3933 (h!23104 (t!148288 (t!148288 (t!148288 tokens!457)))))) Nil!17702))))

(declare-fun lt!581188 () Unit!28465)

(declare-fun Unit!28557 () Unit!28465)

(assert (=> b!1618351 (= lt!581188 Unit!28557)))

(assert (=> b!1618351 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 (t!148288 tokens!457))))) 0))) (Cons!17702 (head!3362 (list!6924 lt!581186)) Nil!17702))))

(declare-fun lt!581181 () Unit!28465)

(declare-fun Unit!28558 () Unit!28465)

(assert (=> b!1618351 (= lt!581181 Unit!28558)))

(assert (=> b!1618351 (= (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 (t!148288 tokens!457))))) 0))) (Cons!17702 (head!3363 lt!581186) Nil!17702))))

(declare-fun lt!581182 () Unit!28465)

(declare-fun Unit!28559 () Unit!28465)

(assert (=> b!1618351 (= lt!581182 Unit!28559)))

(assert (=> b!1618351 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581190 () Unit!28465)

(declare-fun Unit!28560 () Unit!28465)

(assert (=> b!1618351 (= lt!581190 Unit!28560)))

(assert (=> b!1618351 (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))))))))

(declare-fun lt!581183 () Unit!28465)

(declare-fun Unit!28561 () Unit!28465)

(assert (=> b!1618351 (= lt!581183 Unit!28561)))

(declare-fun lt!581187 () Unit!28465)

(declare-fun Unit!28562 () Unit!28465)

(assert (=> b!1618351 (= lt!581187 Unit!28562)))

(assert (=> b!1618351 (= (_1!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))))))) (h!23104 (t!148288 (t!148288 tokens!457))))))

(declare-fun lt!581194 () Unit!28465)

(declare-fun Unit!28563 () Unit!28465)

(assert (=> b!1618351 (= lt!581194 Unit!28563)))

(assert (=> b!1618351 (isEmpty!10713 (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))))))))))

(declare-fun lt!581174 () Unit!28465)

(declare-fun Unit!28564 () Unit!28465)

(assert (=> b!1618351 (= lt!581174 Unit!28564)))

(assert (=> b!1618351 (matchR!1946 (regex!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))) (list!6924 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581177 () Unit!28465)

(declare-fun Unit!28565 () Unit!28465)

(assert (=> b!1618351 (= lt!581177 Unit!28565)))

(assert (=> b!1618351 (= (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))) (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!581195 () Unit!28465)

(declare-fun Unit!28566 () Unit!28465)

(assert (=> b!1618351 (= lt!581195 Unit!28566)))

(declare-fun lt!581184 () Unit!28465)

(assert (=> b!1618351 (= lt!581184 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!96 thiss!17113 rules!1846 (h!23104 (t!148288 (t!148288 tokens!457))) (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))) (list!6924 lt!581186)))))

(declare-fun b!1618352 () Bool)

(assert (=> b!1618352 (= e!1037988 (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 (t!148288 tokens!457))))))))))

(assert (= (and d!487200 c!263625) b!1618350))

(assert (= (and d!487200 (not c!263625)) b!1618351))

(assert (= (and d!487200 res!722497) b!1618352))

(assert (=> d!487200 m!1936963))

(declare-fun m!1941085 () Bool)

(assert (=> d!487200 m!1941085))

(assert (=> d!487200 m!1936555))

(assert (=> d!487200 m!1936963))

(assert (=> d!487200 m!1936533))

(declare-fun m!1941087 () Bool)

(assert (=> d!487200 m!1941087))

(assert (=> d!487200 m!1936555))

(declare-fun m!1941089 () Bool)

(assert (=> b!1618351 m!1941089))

(declare-fun m!1941091 () Bool)

(assert (=> b!1618351 m!1941091))

(declare-fun m!1941093 () Bool)

(assert (=> b!1618351 m!1941093))

(declare-fun m!1941095 () Bool)

(assert (=> b!1618351 m!1941095))

(declare-fun m!1941097 () Bool)

(assert (=> b!1618351 m!1941097))

(declare-fun m!1941099 () Bool)

(assert (=> b!1618351 m!1941099))

(declare-fun m!1941101 () Bool)

(assert (=> b!1618351 m!1941101))

(declare-fun m!1941103 () Bool)

(assert (=> b!1618351 m!1941103))

(declare-fun m!1941105 () Bool)

(assert (=> b!1618351 m!1941105))

(declare-fun m!1941107 () Bool)

(assert (=> b!1618351 m!1941107))

(assert (=> b!1618351 m!1936555))

(assert (=> b!1618351 m!1936963))

(declare-fun m!1941109 () Bool)

(assert (=> b!1618351 m!1941109))

(declare-fun m!1941111 () Bool)

(assert (=> b!1618351 m!1941111))

(declare-fun m!1941113 () Bool)

(assert (=> b!1618351 m!1941113))

(declare-fun m!1941115 () Bool)

(assert (=> b!1618351 m!1941115))

(assert (=> b!1618351 m!1941089))

(declare-fun m!1941117 () Bool)

(assert (=> b!1618351 m!1941117))

(assert (=> b!1618351 m!1941097))

(declare-fun m!1941121 () Bool)

(assert (=> b!1618351 m!1941121))

(assert (=> b!1618351 m!1936949))

(declare-fun m!1941127 () Bool)

(assert (=> b!1618351 m!1941127))

(assert (=> b!1618351 m!1939647))

(declare-fun m!1941137 () Bool)

(assert (=> b!1618351 m!1941137))

(assert (=> b!1618351 m!1941089))

(declare-fun m!1941141 () Bool)

(assert (=> b!1618351 m!1941141))

(assert (=> b!1618351 m!1936949))

(declare-fun m!1941145 () Bool)

(assert (=> b!1618351 m!1941145))

(assert (=> b!1618351 m!1939647))

(assert (=> b!1618351 m!1941103))

(assert (=> b!1618351 m!1941103))

(declare-fun m!1941149 () Bool)

(assert (=> b!1618351 m!1941149))

(declare-fun m!1941151 () Bool)

(assert (=> b!1618351 m!1941151))

(assert (=> b!1618351 m!1936555))

(assert (=> b!1618351 m!1941097))

(declare-fun m!1941153 () Bool)

(assert (=> b!1618351 m!1941153))

(declare-fun m!1941155 () Bool)

(assert (=> b!1618351 m!1941155))

(assert (=> b!1618351 m!1936969))

(declare-fun m!1941157 () Bool)

(assert (=> b!1618351 m!1941157))

(declare-fun m!1941159 () Bool)

(assert (=> b!1618351 m!1941159))

(declare-fun m!1941161 () Bool)

(assert (=> b!1618351 m!1941161))

(assert (=> b!1618351 m!1939647))

(assert (=> b!1618351 m!1941097))

(declare-fun m!1941163 () Bool)

(assert (=> b!1618351 m!1941163))

(assert (=> b!1618351 m!1941155))

(declare-fun m!1941165 () Bool)

(assert (=> b!1618351 m!1941165))

(assert (=> b!1618351 m!1941141))

(assert (=> b!1618351 m!1941109))

(assert (=> b!1618351 m!1936969))

(assert (=> b!1618351 m!1939647))

(declare-fun m!1941167 () Bool)

(assert (=> b!1618351 m!1941167))

(assert (=> b!1618351 m!1941157))

(declare-fun m!1941169 () Bool)

(assert (=> b!1618351 m!1941169))

(declare-fun m!1941171 () Bool)

(assert (=> b!1618351 m!1941171))

(assert (=> b!1618351 m!1941107))

(assert (=> b!1618351 m!1941093))

(assert (=> b!1618351 m!1941111))

(declare-fun m!1941173 () Bool)

(assert (=> b!1618351 m!1941173))

(assert (=> b!1618351 m!1941113))

(assert (=> b!1618352 m!1936555))

(assert (=> b!1618352 m!1936555))

(assert (=> b!1618352 m!1936963))

(assert (=> b!1618352 m!1936963))

(assert (=> b!1618352 m!1941085))

(declare-fun m!1941175 () Bool)

(assert (=> b!1618352 m!1941175))

(assert (=> b!1616385 d!487200))

(declare-fun d!487204 () Bool)

(declare-fun lt!581204 () BalanceConc!11716)

(assert (=> d!487204 (= (list!6924 lt!581204) (printListTailRec!341 thiss!17113 (dropList!578 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) 0) (list!6924 (BalanceConc!11717 Empty!5886))))))

(declare-fun e!1037996 () BalanceConc!11716)

(assert (=> d!487204 (= lt!581204 e!1037996)))

(declare-fun c!263631 () Bool)

(assert (=> d!487204 (= c!263631 (>= 0 (size!14198 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))

(declare-fun e!1037999 () Bool)

(assert (=> d!487204 e!1037999))

(declare-fun res!722500 () Bool)

(assert (=> d!487204 (=> (not res!722500) (not e!1037999))))

(assert (=> d!487204 (= res!722500 (>= 0 0))))

(assert (=> d!487204 (= (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) 0 (BalanceConc!11717 Empty!5886)) lt!581204)))

(declare-fun b!1618367 () Bool)

(assert (=> b!1618367 (= e!1037999 (<= 0 (size!14198 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1618368 () Bool)

(assert (=> b!1618368 (= e!1037996 (BalanceConc!11717 Empty!5886))))

(declare-fun b!1618369 () Bool)

(assert (=> b!1618369 (= e!1037996 (printTailRec!801 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) (+ 0 1) (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))) 0)))))))

(declare-fun lt!581205 () List!17773)

(assert (=> b!1618369 (= lt!581205 (list!6923 (singletonSeq!1517 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581203 () Unit!28465)

(assert (=> b!1618369 (= lt!581203 (lemmaDropApply!548 lt!581205 0))))

(assert (=> b!1618369 (= (head!3366 (drop!856 lt!581205 0)) (apply!4464 lt!581205 0))))

(declare-fun lt!581201 () Unit!28465)

(assert (=> b!1618369 (= lt!581201 lt!581203)))

(declare-fun lt!581207 () List!17773)

(assert (=> b!1618369 (= lt!581207 (list!6923 (singletonSeq!1517 (h!23104 (t!148288 tokens!457)))))))

(declare-fun lt!581206 () Unit!28465)

(assert (=> b!1618369 (= lt!581206 (lemmaDropTail!528 lt!581207 0))))

(assert (=> b!1618369 (= (tail!2334 (drop!856 lt!581207 0)) (drop!856 lt!581207 (+ 0 1)))))

(declare-fun lt!581202 () Unit!28465)

(assert (=> b!1618369 (= lt!581202 lt!581206)))

(assert (= (and d!487204 res!722500) b!1618367))

(assert (= (and d!487204 c!263631) b!1618368))

(assert (= (and d!487204 (not c!263631)) b!1618369))

(declare-fun m!1941177 () Bool)

(assert (=> d!487204 m!1941177))

(declare-fun m!1941179 () Bool)

(assert (=> d!487204 m!1941179))

(assert (=> d!487204 m!1937179))

(declare-fun m!1941181 () Bool)

(assert (=> d!487204 m!1941181))

(assert (=> d!487204 m!1936931))

(assert (=> d!487204 m!1941179))

(assert (=> d!487204 m!1937179))

(assert (=> d!487204 m!1936931))

(declare-fun m!1941183 () Bool)

(assert (=> d!487204 m!1941183))

(assert (=> b!1618367 m!1936931))

(assert (=> b!1618367 m!1941183))

(declare-fun m!1941185 () Bool)

(assert (=> b!1618369 m!1941185))

(declare-fun m!1941187 () Bool)

(assert (=> b!1618369 m!1941187))

(declare-fun m!1941189 () Bool)

(assert (=> b!1618369 m!1941189))

(assert (=> b!1618369 m!1936931))

(assert (=> b!1618369 m!1940925))

(assert (=> b!1618369 m!1941189))

(declare-fun m!1941191 () Bool)

(assert (=> b!1618369 m!1941191))

(assert (=> b!1618369 m!1936931))

(declare-fun m!1941193 () Bool)

(assert (=> b!1618369 m!1941193))

(declare-fun m!1941195 () Bool)

(assert (=> b!1618369 m!1941195))

(assert (=> b!1618369 m!1936931))

(assert (=> b!1618369 m!1941187))

(declare-fun m!1941197 () Bool)

(assert (=> b!1618369 m!1941197))

(declare-fun m!1941199 () Bool)

(assert (=> b!1618369 m!1941199))

(declare-fun m!1941201 () Bool)

(assert (=> b!1618369 m!1941201))

(declare-fun m!1941203 () Bool)

(assert (=> b!1618369 m!1941203))

(assert (=> b!1618369 m!1941193))

(assert (=> b!1618369 m!1941185))

(assert (=> b!1618369 m!1941201))

(declare-fun m!1941205 () Bool)

(assert (=> b!1618369 m!1941205))

(declare-fun m!1941207 () Bool)

(assert (=> b!1618369 m!1941207))

(assert (=> b!1616385 d!487204))

(assert (=> b!1616385 d!486568))

(declare-fun d!487206 () Bool)

(declare-fun lt!581209 () C!9068)

(assert (=> d!487206 (= lt!581209 (head!3362 (list!6924 lt!579459)))))

(assert (=> d!487206 (= lt!581209 (head!3365 (c!263121 lt!579459)))))

(assert (=> d!487206 (not (isEmpty!10720 lt!579459))))

(assert (=> d!487206 (= (head!3363 lt!579459) lt!581209)))

(declare-fun bs!394309 () Bool)

(assert (= bs!394309 d!487206))

(assert (=> bs!394309 m!1936939))

(assert (=> bs!394309 m!1936939))

(assert (=> bs!394309 m!1936941))

(declare-fun m!1941217 () Bool)

(assert (=> bs!394309 m!1941217))

(declare-fun m!1941221 () Bool)

(assert (=> bs!394309 m!1941221))

(assert (=> b!1616385 d!487206))

(declare-fun d!487208 () Bool)

(assert (=> d!487208 (= (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (t!148288 tokens!457))))) (list!6928 (c!263123 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (t!148288 tokens!457)))))))))

(declare-fun bs!394310 () Bool)

(assert (= bs!394310 d!487208))

(declare-fun m!1941223 () Bool)

(assert (=> bs!394310 m!1941223))

(assert (=> b!1616385 d!487208))

(declare-fun d!487212 () Bool)

(declare-fun e!1038004 () Bool)

(assert (=> d!487212 e!1038004))

(declare-fun res!722505 () Bool)

(assert (=> d!487212 (=> (not res!722505) (not e!1038004))))

(declare-fun lt!581211 () BalanceConc!11716)

(assert (=> d!487212 (= res!722505 (= (list!6924 lt!581211) (Cons!17702 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0) Nil!17702)))))

(assert (=> d!487212 (= lt!581211 (singleton!642 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0)))))

(assert (=> d!487212 (= (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 (t!148288 tokens!457)))) 0)) lt!581211)))

(declare-fun b!1618376 () Bool)

(assert (=> b!1618376 (= e!1038004 (isBalanced!1762 (c!263121 lt!581211)))))

(assert (= (and d!487212 res!722505) b!1618376))

(declare-fun m!1941225 () Bool)

(assert (=> d!487212 m!1941225))

(assert (=> d!487212 m!1936951))

(declare-fun m!1941231 () Bool)

(assert (=> d!487212 m!1941231))

(declare-fun m!1941233 () Bool)

(assert (=> b!1618376 m!1941233))

(assert (=> b!1616385 d!487212))

(declare-fun d!487214 () Bool)

(assert (=> d!487214 (= (inv!23096 (tag!3395 (h!23105 (t!148289 rules!1846)))) (= (mod (str.len (value!98563 (tag!3395 (h!23105 (t!148289 rules!1846))))) 2) 0))))

(assert (=> b!1616803 d!487214))

(declare-fun d!487218 () Bool)

(declare-fun res!722506 () Bool)

(declare-fun e!1038005 () Bool)

(assert (=> d!487218 (=> (not res!722506) (not e!1038005))))

(assert (=> d!487218 (= res!722506 (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846))))))))

(assert (=> d!487218 (= (inv!23099 (transformation!3119 (h!23105 (t!148289 rules!1846)))) e!1038005)))

(declare-fun b!1618377 () Bool)

(assert (=> b!1618377 (= e!1038005 (equivClasses!1127 (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846))))))))

(assert (= (and d!487218 res!722506) b!1618377))

(declare-fun m!1941239 () Bool)

(assert (=> d!487218 m!1941239))

(declare-fun m!1941241 () Bool)

(assert (=> b!1618377 m!1941241))

(assert (=> b!1616803 d!487218))

(declare-fun d!487220 () Bool)

(assert (=> d!487220 (= (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457)))) (not ((_ is Some!3246) (maxPrefix!1312 thiss!17113 rules!1846 (originalCharacters!3933 (h!23104 tokens!457))))))))

(assert (=> d!486188 d!487220))

(declare-fun d!487222 () Bool)

(declare-fun c!263635 () Bool)

(assert (=> d!487222 (= c!263635 ((_ is Empty!5886) (c!263121 lt!579270)))))

(declare-fun e!1038009 () List!17772)

(assert (=> d!487222 (= (list!6927 (c!263121 lt!579270)) e!1038009)))

(declare-fun b!1618387 () Bool)

(assert (=> b!1618387 (= e!1038009 Nil!17702)))

(declare-fun b!1618388 () Bool)

(declare-fun e!1038010 () List!17772)

(assert (=> b!1618388 (= e!1038009 e!1038010)))

(declare-fun c!263636 () Bool)

(assert (=> b!1618388 (= c!263636 ((_ is Leaf!8666) (c!263121 lt!579270)))))

(declare-fun b!1618390 () Bool)

(assert (=> b!1618390 (= e!1038010 (++!4680 (list!6927 (left!14251 (c!263121 lt!579270))) (list!6927 (right!14581 (c!263121 lt!579270)))))))

(declare-fun b!1618389 () Bool)

(assert (=> b!1618389 (= e!1038010 (list!6929 (xs!8714 (c!263121 lt!579270))))))

(assert (= (and d!487222 c!263635) b!1618387))

(assert (= (and d!487222 (not c!263635)) b!1618388))

(assert (= (and b!1618388 c!263636) b!1618389))

(assert (= (and b!1618388 (not c!263636)) b!1618390))

(assert (=> b!1618390 m!1938593))

(assert (=> b!1618390 m!1938583))

(assert (=> b!1618390 m!1938593))

(assert (=> b!1618390 m!1938583))

(declare-fun m!1941243 () Bool)

(assert (=> b!1618390 m!1941243))

(declare-fun m!1941245 () Bool)

(assert (=> b!1618389 m!1941245))

(assert (=> d!486222 d!487222))

(declare-fun d!487224 () Bool)

(assert (=> d!487224 (= (list!6923 lt!579601) (list!6928 (c!263123 lt!579601)))))

(declare-fun bs!394311 () Bool)

(assert (= bs!394311 d!487224))

(declare-fun m!1941247 () Bool)

(assert (=> bs!394311 m!1941247))

(assert (=> d!486284 d!487224))

(declare-fun d!487226 () Bool)

(declare-fun e!1038013 () Bool)

(assert (=> d!487226 e!1038013))

(declare-fun res!722516 () Bool)

(assert (=> d!487226 (=> (not res!722516) (not e!1038013))))

(declare-fun lt!581219 () BalanceConc!11718)

(assert (=> d!487226 (= res!722516 (= (list!6923 lt!581219) (Cons!17703 (h!23104 tokens!457) Nil!17703)))))

(declare-fun choose!9738 (Token!5804) BalanceConc!11718)

(assert (=> d!487226 (= lt!581219 (choose!9738 (h!23104 tokens!457)))))

(assert (=> d!487226 (= (singleton!641 (h!23104 tokens!457)) lt!581219)))

(declare-fun b!1618393 () Bool)

(assert (=> b!1618393 (= e!1038013 (isBalanced!1761 (c!263123 lt!581219)))))

(assert (= (and d!487226 res!722516) b!1618393))

(declare-fun m!1941279 () Bool)

(assert (=> d!487226 m!1941279))

(declare-fun m!1941281 () Bool)

(assert (=> d!487226 m!1941281))

(declare-fun m!1941283 () Bool)

(assert (=> b!1618393 m!1941283))

(assert (=> d!486284 d!487226))

(declare-fun d!487230 () Bool)

(assert (=> d!487230 (= (isDefined!2615 lt!579622) (not (isEmpty!10723 lt!579622)))))

(declare-fun bs!394312 () Bool)

(assert (= bs!394312 d!487230))

(declare-fun m!1941285 () Bool)

(assert (=> bs!394312 m!1941285))

(assert (=> b!1616481 d!487230))

(declare-fun d!487232 () Bool)

(assert (=> d!487232 (= (list!6924 lt!579815) (list!6927 (c!263121 lt!579815)))))

(declare-fun bs!394313 () Bool)

(assert (= bs!394313 d!487232))

(declare-fun m!1941287 () Bool)

(assert (=> bs!394313 m!1941287))

(assert (=> d!486358 d!487232))

(declare-fun d!487234 () Bool)

(declare-fun c!263637 () Bool)

(assert (=> d!487234 (= c!263637 ((_ is Cons!17703) (list!6923 (seqFromList!1987 tokens!457))))))

(declare-fun e!1038014 () List!17772)

(assert (=> d!487234 (= (printList!863 thiss!17113 (list!6923 (seqFromList!1987 tokens!457))) e!1038014)))

(declare-fun b!1618394 () Bool)

(assert (=> b!1618394 (= e!1038014 (++!4680 (list!6924 (charsOf!1768 (h!23104 (list!6923 (seqFromList!1987 tokens!457))))) (printList!863 thiss!17113 (t!148288 (list!6923 (seqFromList!1987 tokens!457))))))))

(declare-fun b!1618395 () Bool)

(assert (=> b!1618395 (= e!1038014 Nil!17702)))

(assert (= (and d!487234 c!263637) b!1618394))

(assert (= (and d!487234 (not c!263637)) b!1618395))

(declare-fun m!1941293 () Bool)

(assert (=> b!1618394 m!1941293))

(assert (=> b!1618394 m!1941293))

(declare-fun m!1941295 () Bool)

(assert (=> b!1618394 m!1941295))

(declare-fun m!1941297 () Bool)

(assert (=> b!1618394 m!1941297))

(assert (=> b!1618394 m!1941295))

(assert (=> b!1618394 m!1941297))

(declare-fun m!1941299 () Bool)

(assert (=> b!1618394 m!1941299))

(assert (=> d!486358 d!487234))

(declare-fun d!487238 () Bool)

(assert (=> d!487238 (= (list!6923 (seqFromList!1987 tokens!457)) (list!6928 (c!263123 (seqFromList!1987 tokens!457))))))

(declare-fun bs!394315 () Bool)

(assert (= bs!394315 d!487238))

(declare-fun m!1941301 () Bool)

(assert (=> bs!394315 m!1941301))

(assert (=> d!486358 d!487238))

(declare-fun d!487240 () Bool)

(declare-fun lt!581227 () BalanceConc!11716)

(assert (=> d!487240 (= (list!6924 lt!581227) (printListTailRec!341 thiss!17113 (dropList!578 (seqFromList!1987 tokens!457) 0) (list!6924 (BalanceConc!11717 Empty!5886))))))

(declare-fun e!1038017 () BalanceConc!11716)

(assert (=> d!487240 (= lt!581227 e!1038017)))

(declare-fun c!263639 () Bool)

(assert (=> d!487240 (= c!263639 (>= 0 (size!14198 (seqFromList!1987 tokens!457))))))

(declare-fun e!1038018 () Bool)

(assert (=> d!487240 e!1038018))

(declare-fun res!722519 () Bool)

(assert (=> d!487240 (=> (not res!722519) (not e!1038018))))

(assert (=> d!487240 (= res!722519 (>= 0 0))))

(assert (=> d!487240 (= (printTailRec!801 thiss!17113 (seqFromList!1987 tokens!457) 0 (BalanceConc!11717 Empty!5886)) lt!581227)))

(declare-fun b!1618400 () Bool)

(assert (=> b!1618400 (= e!1038018 (<= 0 (size!14198 (seqFromList!1987 tokens!457))))))

(declare-fun b!1618401 () Bool)

(assert (=> b!1618401 (= e!1038017 (BalanceConc!11717 Empty!5886))))

(declare-fun b!1618402 () Bool)

(assert (=> b!1618402 (= e!1038017 (printTailRec!801 thiss!17113 (seqFromList!1987 tokens!457) (+ 0 1) (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (apply!4463 (seqFromList!1987 tokens!457) 0)))))))

(declare-fun lt!581228 () List!17773)

(assert (=> b!1618402 (= lt!581228 (list!6923 (seqFromList!1987 tokens!457)))))

(declare-fun lt!581226 () Unit!28465)

(assert (=> b!1618402 (= lt!581226 (lemmaDropApply!548 lt!581228 0))))

(assert (=> b!1618402 (= (head!3366 (drop!856 lt!581228 0)) (apply!4464 lt!581228 0))))

(declare-fun lt!581224 () Unit!28465)

(assert (=> b!1618402 (= lt!581224 lt!581226)))

(declare-fun lt!581230 () List!17773)

(assert (=> b!1618402 (= lt!581230 (list!6923 (seqFromList!1987 tokens!457)))))

(declare-fun lt!581229 () Unit!28465)

(assert (=> b!1618402 (= lt!581229 (lemmaDropTail!528 lt!581230 0))))

(assert (=> b!1618402 (= (tail!2334 (drop!856 lt!581230 0)) (drop!856 lt!581230 (+ 0 1)))))

(declare-fun lt!581225 () Unit!28465)

(assert (=> b!1618402 (= lt!581225 lt!581229)))

(assert (= (and d!487240 res!722519) b!1618400))

(assert (= (and d!487240 c!263639) b!1618401))

(assert (= (and d!487240 (not c!263639)) b!1618402))

(declare-fun m!1941319 () Bool)

(assert (=> d!487240 m!1941319))

(declare-fun m!1941321 () Bool)

(assert (=> d!487240 m!1941321))

(assert (=> d!487240 m!1937179))

(declare-fun m!1941323 () Bool)

(assert (=> d!487240 m!1941323))

(assert (=> d!487240 m!1936469))

(assert (=> d!487240 m!1941321))

(assert (=> d!487240 m!1937179))

(assert (=> d!487240 m!1936469))

(declare-fun m!1941325 () Bool)

(assert (=> d!487240 m!1941325))

(assert (=> b!1618400 m!1936469))

(assert (=> b!1618400 m!1941325))

(declare-fun m!1941327 () Bool)

(assert (=> b!1618402 m!1941327))

(declare-fun m!1941329 () Bool)

(assert (=> b!1618402 m!1941329))

(declare-fun m!1941331 () Bool)

(assert (=> b!1618402 m!1941331))

(assert (=> b!1618402 m!1936469))

(assert (=> b!1618402 m!1937527))

(assert (=> b!1618402 m!1941331))

(declare-fun m!1941335 () Bool)

(assert (=> b!1618402 m!1941335))

(assert (=> b!1618402 m!1936469))

(declare-fun m!1941337 () Bool)

(assert (=> b!1618402 m!1941337))

(declare-fun m!1941339 () Bool)

(assert (=> b!1618402 m!1941339))

(assert (=> b!1618402 m!1936469))

(assert (=> b!1618402 m!1941329))

(declare-fun m!1941341 () Bool)

(assert (=> b!1618402 m!1941341))

(declare-fun m!1941343 () Bool)

(assert (=> b!1618402 m!1941343))

(declare-fun m!1941345 () Bool)

(assert (=> b!1618402 m!1941345))

(declare-fun m!1941347 () Bool)

(assert (=> b!1618402 m!1941347))

(assert (=> b!1618402 m!1941337))

(assert (=> b!1618402 m!1941327))

(assert (=> b!1618402 m!1941345))

(declare-fun m!1941349 () Bool)

(assert (=> b!1618402 m!1941349))

(declare-fun m!1941351 () Bool)

(assert (=> b!1618402 m!1941351))

(assert (=> d!486358 d!487240))

(assert (=> b!1616433 d!486588))

(declare-fun d!487256 () Bool)

(declare-fun dynLambda!7899 (Int BalanceConc!11716) TokenValue!3209)

(assert (=> d!487256 (= (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577))))) (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun b_lambda!51027 () Bool)

(assert (=> (not b_lambda!51027) (not d!487256)))

(declare-fun tb!92975 () Bool)

(declare-fun t!148474 () Bool)

(assert (=> (and b!1616140 (= (toValue!4542 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148474) tb!92975))

(declare-fun result!112068 () Bool)

(assert (=> tb!92975 (= result!112068 (inv!21 (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun m!1941353 () Bool)

(assert (=> tb!92975 m!1941353))

(assert (=> d!487256 t!148474))

(declare-fun b_and!114789 () Bool)

(assert (= b_and!114613 (and (=> t!148474 result!112068) b_and!114789)))

(declare-fun t!148476 () Bool)

(declare-fun tb!92977 () Bool)

(assert (=> (and b!1616148 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148476) tb!92977))

(declare-fun result!112072 () Bool)

(assert (= result!112072 result!112068))

(assert (=> d!487256 t!148476))

(declare-fun b_and!114791 () Bool)

(assert (= b_and!114617 (and (=> t!148476 result!112072) b_and!114791)))

(declare-fun tb!92979 () Bool)

(declare-fun t!148478 () Bool)

(assert (=> (and b!1616788 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148478) tb!92979))

(declare-fun result!112074 () Bool)

(assert (= result!112074 result!112068))

(assert (=> d!487256 t!148478))

(declare-fun b_and!114793 () Bool)

(assert (= b_and!114653 (and (=> t!148478 result!112074) b_and!114793)))

(declare-fun t!148480 () Bool)

(declare-fun tb!92981 () Bool)

(assert (=> (and b!1616804 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148480) tb!92981))

(declare-fun result!112076 () Bool)

(assert (= result!112076 result!112068))

(assert (=> d!487256 t!148480))

(declare-fun b_and!114795 () Bool)

(assert (= b_and!114657 (and (=> t!148480 result!112076) b_and!114795)))

(assert (=> d!487256 m!1937151))

(declare-fun m!1941355 () Bool)

(assert (=> d!487256 m!1941355))

(assert (=> b!1616433 d!487256))

(declare-fun d!487258 () Bool)

(assert (=> d!487258 (= (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577)))) (fromListB!866 (originalCharacters!3933 (_1!10020 (get!5079 lt!579577)))))))

(declare-fun bs!394319 () Bool)

(assert (= bs!394319 d!487258))

(declare-fun m!1941357 () Bool)

(assert (=> bs!394319 m!1941357))

(assert (=> b!1616433 d!487258))

(declare-fun d!487260 () Bool)

(assert (=> d!487260 (= (list!6924 lt!579660) (list!6927 (c!263121 lt!579660)))))

(declare-fun bs!394320 () Bool)

(assert (= bs!394320 d!487260))

(declare-fun m!1941359 () Bool)

(assert (=> bs!394320 m!1941359))

(assert (=> b!1616501 d!487260))

(declare-fun d!487262 () Bool)

(declare-fun e!1038023 () Bool)

(assert (=> d!487262 e!1038023))

(declare-fun res!722520 () Bool)

(assert (=> d!487262 (=> (not res!722520) (not e!1038023))))

(declare-fun lt!581232 () List!17772)

(assert (=> d!487262 (= res!722520 (= (content!2450 lt!581232) ((_ map or) (content!2450 (list!6924 lt!579279)) (content!2450 (list!6924 lt!579270)))))))

(declare-fun e!1038022 () List!17772)

(assert (=> d!487262 (= lt!581232 e!1038022)))

(declare-fun c!263640 () Bool)

(assert (=> d!487262 (= c!263640 ((_ is Nil!17702) (list!6924 lt!579279)))))

(assert (=> d!487262 (= (++!4680 (list!6924 lt!579279) (list!6924 lt!579270)) lt!581232)))

(declare-fun b!1618405 () Bool)

(assert (=> b!1618405 (= e!1038022 (list!6924 lt!579270))))

(declare-fun b!1618408 () Bool)

(assert (=> b!1618408 (= e!1038023 (or (not (= (list!6924 lt!579270) Nil!17702)) (= lt!581232 (list!6924 lt!579279))))))

(declare-fun b!1618406 () Bool)

(assert (=> b!1618406 (= e!1038022 (Cons!17702 (h!23103 (list!6924 lt!579279)) (++!4680 (t!148287 (list!6924 lt!579279)) (list!6924 lt!579270))))))

(declare-fun b!1618407 () Bool)

(declare-fun res!722521 () Bool)

(assert (=> b!1618407 (=> (not res!722521) (not e!1038023))))

(assert (=> b!1618407 (= res!722521 (= (size!14197 lt!581232) (+ (size!14197 (list!6924 lt!579279)) (size!14197 (list!6924 lt!579270)))))))

(assert (= (and d!487262 c!263640) b!1618405))

(assert (= (and d!487262 (not c!263640)) b!1618406))

(assert (= (and d!487262 res!722520) b!1618407))

(assert (= (and b!1618407 res!722521) b!1618408))

(declare-fun m!1941361 () Bool)

(assert (=> d!487262 m!1941361))

(assert (=> d!487262 m!1936475))

(declare-fun m!1941363 () Bool)

(assert (=> d!487262 m!1941363))

(assert (=> d!487262 m!1936497))

(declare-fun m!1941365 () Bool)

(assert (=> d!487262 m!1941365))

(assert (=> b!1618406 m!1936497))

(declare-fun m!1941367 () Bool)

(assert (=> b!1618406 m!1941367))

(declare-fun m!1941369 () Bool)

(assert (=> b!1618407 m!1941369))

(assert (=> b!1618407 m!1936475))

(declare-fun m!1941371 () Bool)

(assert (=> b!1618407 m!1941371))

(assert (=> b!1618407 m!1936497))

(declare-fun m!1941373 () Bool)

(assert (=> b!1618407 m!1941373))

(assert (=> b!1616501 d!487262))

(assert (=> b!1616501 d!486364))

(assert (=> b!1616501 d!486222))

(declare-fun d!487264 () Bool)

(declare-fun res!722522 () Bool)

(declare-fun e!1038024 () Bool)

(assert (=> d!487264 (=> (not res!722522) (not e!1038024))))

(assert (=> d!487264 (= res!722522 (not (isEmpty!10713 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487264 (= (inv!23100 (h!23104 (t!148288 tokens!457))) e!1038024)))

(declare-fun b!1618409 () Bool)

(declare-fun res!722523 () Bool)

(assert (=> b!1618409 (=> (not res!722523) (not e!1038024))))

(assert (=> b!1618409 (= res!722523 (= (originalCharacters!3933 (h!23104 (t!148288 tokens!457))) (list!6924 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1618410 () Bool)

(assert (=> b!1618410 (= e!1038024 (= (size!14194 (h!23104 (t!148288 tokens!457))) (size!14197 (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))))))

(assert (= (and d!487264 res!722522) b!1618409))

(assert (= (and b!1618409 res!722523) b!1618410))

(declare-fun b_lambda!51029 () Bool)

(assert (=> (not b_lambda!51029) (not b!1618409)))

(assert (=> b!1618409 t!148302))

(declare-fun b_and!114797 () Bool)

(assert (= b_and!114781 (and (=> t!148302 result!111900) b_and!114797)))

(assert (=> b!1618409 t!148304))

(declare-fun b_and!114799 () Bool)

(assert (= b_and!114783 (and (=> t!148304 result!111904) b_and!114799)))

(assert (=> b!1618409 t!148326))

(declare-fun b_and!114801 () Bool)

(assert (= b_and!114785 (and (=> t!148326 result!111934) b_and!114801)))

(assert (=> b!1618409 t!148330))

(declare-fun b_and!114803 () Bool)

(assert (= b_and!114787 (and (=> t!148330 result!111942) b_and!114803)))

(declare-fun m!1941375 () Bool)

(assert (=> d!487264 m!1941375))

(assert (=> b!1618409 m!1937325))

(assert (=> b!1618409 m!1937325))

(declare-fun m!1941377 () Bool)

(assert (=> b!1618409 m!1941377))

(assert (=> b!1618410 m!1939685))

(assert (=> b!1616785 d!487264))

(declare-fun d!487266 () Bool)

(declare-fun e!1038025 () Bool)

(assert (=> d!487266 e!1038025))

(declare-fun res!722526 () Bool)

(assert (=> d!487266 (=> res!722526 e!1038025)))

(declare-fun lt!581233 () Bool)

(assert (=> d!487266 (= res!722526 (not lt!581233))))

(declare-fun e!1038026 () Bool)

(assert (=> d!487266 (= lt!581233 e!1038026)))

(declare-fun res!722527 () Bool)

(assert (=> d!487266 (=> res!722527 e!1038026)))

(assert (=> d!487266 (= res!722527 ((_ is Nil!17702) (tail!2332 lt!579274)))))

(assert (=> d!487266 (= (isPrefix!1379 (tail!2332 lt!579274) (tail!2332 lt!579275)) lt!581233)))

(declare-fun b!1618412 () Bool)

(declare-fun res!722525 () Bool)

(declare-fun e!1038027 () Bool)

(assert (=> b!1618412 (=> (not res!722525) (not e!1038027))))

(assert (=> b!1618412 (= res!722525 (= (head!3362 (tail!2332 lt!579274)) (head!3362 (tail!2332 lt!579275))))))

(declare-fun b!1618411 () Bool)

(assert (=> b!1618411 (= e!1038026 e!1038027)))

(declare-fun res!722524 () Bool)

(assert (=> b!1618411 (=> (not res!722524) (not e!1038027))))

(assert (=> b!1618411 (= res!722524 (not ((_ is Nil!17702) (tail!2332 lt!579275))))))

(declare-fun b!1618414 () Bool)

(assert (=> b!1618414 (= e!1038025 (>= (size!14197 (tail!2332 lt!579275)) (size!14197 (tail!2332 lt!579274))))))

(declare-fun b!1618413 () Bool)

(assert (=> b!1618413 (= e!1038027 (isPrefix!1379 (tail!2332 (tail!2332 lt!579274)) (tail!2332 (tail!2332 lt!579275))))))

(assert (= (and d!487266 (not res!722527)) b!1618411))

(assert (= (and b!1618411 res!722524) b!1618412))

(assert (= (and b!1618412 res!722525) b!1618413))

(assert (= (and d!487266 (not res!722526)) b!1618414))

(assert (=> b!1618412 m!1937007))

(declare-fun m!1941379 () Bool)

(assert (=> b!1618412 m!1941379))

(assert (=> b!1618412 m!1937009))

(declare-fun m!1941381 () Bool)

(assert (=> b!1618412 m!1941381))

(assert (=> b!1618414 m!1937009))

(declare-fun m!1941383 () Bool)

(assert (=> b!1618414 m!1941383))

(assert (=> b!1618414 m!1937007))

(declare-fun m!1941385 () Bool)

(assert (=> b!1618414 m!1941385))

(assert (=> b!1618413 m!1937007))

(declare-fun m!1941387 () Bool)

(assert (=> b!1618413 m!1941387))

(assert (=> b!1618413 m!1937009))

(declare-fun m!1941389 () Bool)

(assert (=> b!1618413 m!1941389))

(assert (=> b!1618413 m!1941387))

(assert (=> b!1618413 m!1941389))

(declare-fun m!1941391 () Bool)

(assert (=> b!1618413 m!1941391))

(assert (=> b!1616397 d!487266))

(declare-fun d!487268 () Bool)

(assert (=> d!487268 (= (tail!2332 lt!579274) (t!148287 lt!579274))))

(assert (=> b!1616397 d!487268))

(declare-fun d!487270 () Bool)

(assert (=> d!487270 (= (tail!2332 lt!579275) (t!148287 lt!579275))))

(assert (=> b!1616397 d!487270))

(declare-fun d!487272 () Bool)

(assert (=> d!487272 (= (list!6924 (_2!10019 lt!579697)) (list!6927 (c!263121 (_2!10019 lt!579697))))))

(declare-fun bs!394321 () Bool)

(assert (= bs!394321 d!487272))

(declare-fun m!1941393 () Bool)

(assert (=> bs!394321 m!1941393))

(assert (=> b!1616563 d!487272))

(assert (=> b!1616563 d!486638))

(assert (=> b!1616563 d!486640))

(declare-fun bs!394322 () Bool)

(declare-fun d!487274 () Bool)

(assert (= bs!394322 (and d!487274 d!486626)))

(declare-fun lambda!67150 () Int)

(assert (=> bs!394322 (= lambda!67150 lambda!67116)))

(assert (=> d!487274 true))

(declare-fun lt!581239 () Bool)

(assert (=> d!487274 (= lt!581239 (rulesValidInductive!958 thiss!17113 rules!1846))))

(assert (=> d!487274 (= lt!581239 (forall!4064 rules!1846 lambda!67150))))

(assert (=> d!487274 (= (rulesValid!1114 thiss!17113 rules!1846) lt!581239)))

(declare-fun bs!394323 () Bool)

(assert (= bs!394323 d!487274))

(assert (=> bs!394323 m!1936675))

(declare-fun m!1941397 () Bool)

(assert (=> bs!394323 m!1941397))

(assert (=> d!486314 d!487274))

(declare-fun d!487278 () Bool)

(declare-fun e!1038041 () Bool)

(assert (=> d!487278 e!1038041))

(declare-fun res!722542 () Bool)

(assert (=> d!487278 (=> (not res!722542) (not e!1038041))))

(declare-fun lt!581244 () BalanceConc!11716)

(assert (=> d!487278 (= res!722542 (= (list!6924 lt!581244) lt!579274))))

(declare-fun fromList!382 (List!17772) Conc!5886)

(assert (=> d!487278 (= lt!581244 (BalanceConc!11717 (fromList!382 lt!579274)))))

(assert (=> d!487278 (= (fromListB!866 lt!579274) lt!581244)))

(declare-fun b!1618432 () Bool)

(assert (=> b!1618432 (= e!1038041 (isBalanced!1762 (fromList!382 lt!579274)))))

(assert (= (and d!487278 res!722542) b!1618432))

(declare-fun m!1941415 () Bool)

(assert (=> d!487278 m!1941415))

(declare-fun m!1941417 () Bool)

(assert (=> d!487278 m!1941417))

(assert (=> b!1618432 m!1941417))

(assert (=> b!1618432 m!1941417))

(declare-fun m!1941419 () Bool)

(assert (=> b!1618432 m!1941419))

(assert (=> d!486332 d!487278))

(assert (=> b!1616250 d!486572))

(declare-fun d!487284 () Bool)

(assert (=> d!487284 (= (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341))))) (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun b_lambda!51031 () Bool)

(assert (=> (not b_lambda!51031) (not d!487284)))

(declare-fun tb!92983 () Bool)

(declare-fun t!148482 () Bool)

(assert (=> (and b!1616140 (= (toValue!4542 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148482) tb!92983))

(declare-fun result!112078 () Bool)

(assert (=> tb!92983 (= result!112078 (inv!21 (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun m!1941421 () Bool)

(assert (=> tb!92983 m!1941421))

(assert (=> d!487284 t!148482))

(declare-fun b_and!114805 () Bool)

(assert (= b_and!114789 (and (=> t!148482 result!112078) b_and!114805)))

(declare-fun tb!92985 () Bool)

(declare-fun t!148484 () Bool)

(assert (=> (and b!1616148 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148484) tb!92985))

(declare-fun result!112080 () Bool)

(assert (= result!112080 result!112078))

(assert (=> d!487284 t!148484))

(declare-fun b_and!114807 () Bool)

(assert (= b_and!114791 (and (=> t!148484 result!112080) b_and!114807)))

(declare-fun tb!92987 () Bool)

(declare-fun t!148486 () Bool)

(assert (=> (and b!1616788 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148486) tb!92987))

(declare-fun result!112082 () Bool)

(assert (= result!112082 result!112078))

(assert (=> d!487284 t!148486))

(declare-fun b_and!114809 () Bool)

(assert (= b_and!114793 (and (=> t!148486 result!112082) b_and!114809)))

(declare-fun tb!92989 () Bool)

(declare-fun t!148489 () Bool)

(assert (=> (and b!1616804 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148489) tb!92989))

(declare-fun result!112084 () Bool)

(assert (= result!112084 result!112078))

(assert (=> d!487284 t!148489))

(declare-fun b_and!114811 () Bool)

(assert (= b_and!114795 (and (=> t!148489 result!112084) b_and!114811)))

(assert (=> d!487284 m!1936681))

(declare-fun m!1941423 () Bool)

(assert (=> d!487284 m!1941423))

(assert (=> b!1616250 d!487284))

(declare-fun d!487286 () Bool)

(assert (=> d!487286 (= (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341)))) (fromListB!866 (originalCharacters!3933 (_1!10020 (get!5079 lt!579341)))))))

(declare-fun bs!394325 () Bool)

(assert (= bs!394325 d!487286))

(declare-fun m!1941425 () Bool)

(assert (=> bs!394325 m!1941425))

(assert (=> b!1616250 d!487286))

(declare-fun d!487288 () Bool)

(declare-fun lt!581245 () Token!5804)

(assert (=> d!487288 (= lt!581245 (apply!4464 (list!6923 (_1!10019 lt!579560)) 0))))

(assert (=> d!487288 (= lt!581245 (apply!4471 (c!263123 (_1!10019 lt!579560)) 0))))

(declare-fun e!1038047 () Bool)

(assert (=> d!487288 e!1038047))

(declare-fun res!722555 () Bool)

(assert (=> d!487288 (=> (not res!722555) (not e!1038047))))

(assert (=> d!487288 (= res!722555 (<= 0 0))))

(assert (=> d!487288 (= (apply!4463 (_1!10019 lt!579560) 0) lt!581245)))

(declare-fun b!1618445 () Bool)

(assert (=> b!1618445 (= e!1038047 (< 0 (size!14198 (_1!10019 lt!579560))))))

(assert (= (and d!487288 res!722555) b!1618445))

(assert (=> d!487288 m!1939565))

(assert (=> d!487288 m!1939565))

(declare-fun m!1941427 () Bool)

(assert (=> d!487288 m!1941427))

(declare-fun m!1941429 () Bool)

(assert (=> d!487288 m!1941429))

(assert (=> b!1618445 m!1937097))

(assert (=> b!1616414 d!487288))

(declare-fun d!487290 () Bool)

(assert (=> d!487290 (= (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))) (v!24244 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))

(assert (=> b!1616607 d!487290))

(declare-fun b!1618487 () Bool)

(declare-fun e!1038073 () Bool)

(declare-fun lt!581268 () Option!3250)

(assert (=> b!1618487 (= e!1038073 (= (tag!3395 (get!5083 lt!581268)) (tag!3395 (rule!4939 lt!579806))))))

(declare-fun d!487292 () Bool)

(declare-fun e!1038072 () Bool)

(assert (=> d!487292 e!1038072))

(declare-fun res!722576 () Bool)

(assert (=> d!487292 (=> res!722576 e!1038072)))

(declare-fun isEmpty!10729 (Option!3250) Bool)

(assert (=> d!487292 (= res!722576 (isEmpty!10729 lt!581268))))

(declare-fun e!1038071 () Option!3250)

(assert (=> d!487292 (= lt!581268 e!1038071)))

(declare-fun c!263654 () Bool)

(assert (=> d!487292 (= c!263654 (and ((_ is Cons!17704) rules!1846) (= (tag!3395 (h!23105 rules!1846)) (tag!3395 (rule!4939 lt!579806)))))))

(assert (=> d!487292 (rulesInvariant!2417 thiss!17113 rules!1846)))

(assert (=> d!487292 (= (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))) lt!581268)))

(declare-fun b!1618488 () Bool)

(declare-fun lt!581269 () Unit!28465)

(declare-fun lt!581267 () Unit!28465)

(assert (=> b!1618488 (= lt!581269 lt!581267)))

(assert (=> b!1618488 (rulesInvariant!2417 thiss!17113 (t!148289 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!100 (LexerInterface!2748 Rule!6038 List!17774) Unit!28465)

(assert (=> b!1618488 (= lt!581267 (lemmaInvariantOnRulesThenOnTail!100 thiss!17113 (h!23105 rules!1846) (t!148289 rules!1846)))))

(declare-fun e!1038070 () Option!3250)

(assert (=> b!1618488 (= e!1038070 (getRuleFromTag!270 thiss!17113 (t!148289 rules!1846) (tag!3395 (rule!4939 lt!579806))))))

(declare-fun b!1618489 () Bool)

(assert (=> b!1618489 (= e!1038070 None!3249)))

(declare-fun b!1618490 () Bool)

(assert (=> b!1618490 (= e!1038072 e!1038073)))

(declare-fun res!722575 () Bool)

(assert (=> b!1618490 (=> (not res!722575) (not e!1038073))))

(assert (=> b!1618490 (= res!722575 (contains!3094 rules!1846 (get!5083 lt!581268)))))

(declare-fun b!1618491 () Bool)

(assert (=> b!1618491 (= e!1038071 e!1038070)))

(declare-fun c!263653 () Bool)

(assert (=> b!1618491 (= c!263653 (and ((_ is Cons!17704) rules!1846) (not (= (tag!3395 (h!23105 rules!1846)) (tag!3395 (rule!4939 lt!579806))))))))

(declare-fun b!1618492 () Bool)

(assert (=> b!1618492 (= e!1038071 (Some!3249 (h!23105 rules!1846)))))

(assert (= (and d!487292 c!263654) b!1618492))

(assert (= (and d!487292 (not c!263654)) b!1618491))

(assert (= (and b!1618491 c!263653) b!1618488))

(assert (= (and b!1618491 (not c!263653)) b!1618489))

(assert (= (and d!487292 (not res!722576)) b!1618490))

(assert (= (and b!1618490 res!722575) b!1618487))

(declare-fun m!1941539 () Bool)

(assert (=> b!1618487 m!1941539))

(declare-fun m!1941541 () Bool)

(assert (=> d!487292 m!1941541))

(assert (=> d!487292 m!1936451))

(declare-fun m!1941543 () Bool)

(assert (=> b!1618488 m!1941543))

(declare-fun m!1941545 () Bool)

(assert (=> b!1618488 m!1941545))

(declare-fun m!1941547 () Bool)

(assert (=> b!1618488 m!1941547))

(assert (=> b!1618490 m!1941539))

(assert (=> b!1618490 m!1941539))

(declare-fun m!1941549 () Bool)

(assert (=> b!1618490 m!1941549))

(assert (=> b!1616607 d!487292))

(declare-fun d!487318 () Bool)

(declare-fun lt!581272 () Int)

(assert (=> d!487318 (= lt!581272 (size!14197 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun size!14206 (Conc!5886) Int)

(assert (=> d!487318 (= lt!581272 (size!14206 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487318 (= (size!14200 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) lt!581272)))

(declare-fun bs!394329 () Bool)

(assert (= bs!394329 d!487318))

(assert (=> bs!394329 m!1936491))

(assert (=> bs!394329 m!1936965))

(assert (=> bs!394329 m!1936965))

(assert (=> bs!394329 m!1941081))

(declare-fun m!1941551 () Bool)

(assert (=> bs!394329 m!1941551))

(assert (=> b!1616504 d!487318))

(declare-fun d!487320 () Bool)

(assert (=> d!487320 (= (isEmpty!10723 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))) (not ((_ is Some!3247) (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(assert (=> d!486294 d!487320))

(declare-fun d!487322 () Bool)

(declare-fun c!263657 () Bool)

(assert (=> d!487322 (= c!263657 ((_ is Nil!17702) lt!579818))))

(declare-fun e!1038076 () (InoxSet C!9068))

(assert (=> d!487322 (= (content!2450 lt!579818) e!1038076)))

(declare-fun b!1618497 () Bool)

(assert (=> b!1618497 (= e!1038076 ((as const (Array C!9068 Bool)) false))))

(declare-fun b!1618498 () Bool)

(assert (=> b!1618498 (= e!1038076 ((_ map or) (store ((as const (Array C!9068 Bool)) false) (h!23103 lt!579818) true) (content!2450 (t!148287 lt!579818))))))

(assert (= (and d!487322 c!263657) b!1618497))

(assert (= (and d!487322 (not c!263657)) b!1618498))

(declare-fun m!1941553 () Bool)

(assert (=> b!1618498 m!1941553))

(declare-fun m!1941555 () Bool)

(assert (=> b!1618498 m!1941555))

(assert (=> d!486374 d!487322))

(declare-fun d!487324 () Bool)

(declare-fun c!263658 () Bool)

(assert (=> d!487324 (= c!263658 ((_ is Nil!17702) lt!579274))))

(declare-fun e!1038077 () (InoxSet C!9068))

(assert (=> d!487324 (= (content!2450 lt!579274) e!1038077)))

(declare-fun b!1618499 () Bool)

(assert (=> b!1618499 (= e!1038077 ((as const (Array C!9068 Bool)) false))))

(declare-fun b!1618500 () Bool)

(assert (=> b!1618500 (= e!1038077 ((_ map or) (store ((as const (Array C!9068 Bool)) false) (h!23103 lt!579274) true) (content!2450 (t!148287 lt!579274))))))

(assert (= (and d!487324 c!263658) b!1618499))

(assert (= (and d!487324 (not c!263658)) b!1618500))

(declare-fun m!1941557 () Bool)

(assert (=> b!1618500 m!1941557))

(assert (=> b!1618500 m!1938465))

(assert (=> d!486374 d!487324))

(declare-fun d!487326 () Bool)

(declare-fun c!263659 () Bool)

(assert (=> d!487326 (= c!263659 ((_ is Nil!17702) lt!579259))))

(declare-fun e!1038078 () (InoxSet C!9068))

(assert (=> d!487326 (= (content!2450 lt!579259) e!1038078)))

(declare-fun b!1618501 () Bool)

(assert (=> b!1618501 (= e!1038078 ((as const (Array C!9068 Bool)) false))))

(declare-fun b!1618502 () Bool)

(assert (=> b!1618502 (= e!1038078 ((_ map or) (store ((as const (Array C!9068 Bool)) false) (h!23103 lt!579259) true) (content!2450 (t!148287 lt!579259))))))

(assert (= (and d!487326 c!263659) b!1618501))

(assert (= (and d!487326 (not c!263659)) b!1618502))

(declare-fun m!1941559 () Bool)

(assert (=> b!1618502 m!1941559))

(declare-fun m!1941561 () Bool)

(assert (=> b!1618502 m!1941561))

(assert (=> d!486374 d!487326))

(declare-fun d!487328 () Bool)

(declare-fun lt!581273 () Int)

(assert (=> d!487328 (>= lt!581273 0)))

(declare-fun e!1038079 () Int)

(assert (=> d!487328 (= lt!581273 e!1038079)))

(declare-fun c!263660 () Bool)

(assert (=> d!487328 (= c!263660 ((_ is Nil!17702) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!487328 (= (size!14197 (originalCharacters!3933 (h!23104 tokens!457))) lt!581273)))

(declare-fun b!1618503 () Bool)

(assert (=> b!1618503 (= e!1038079 0)))

(declare-fun b!1618504 () Bool)

(assert (=> b!1618504 (= e!1038079 (+ 1 (size!14197 (t!148287 (originalCharacters!3933 (h!23104 tokens!457))))))))

(assert (= (and d!487328 c!263660) b!1618503))

(assert (= (and d!487328 (not c!263660)) b!1618504))

(declare-fun m!1941563 () Bool)

(assert (=> b!1618504 m!1941563))

(assert (=> b!1616756 d!487328))

(declare-fun d!487330 () Bool)

(declare-fun e!1038080 () Bool)

(assert (=> d!487330 e!1038080))

(declare-fun res!722579 () Bool)

(assert (=> d!487330 (=> res!722579 e!1038080)))

(declare-fun lt!581274 () Bool)

(assert (=> d!487330 (= res!722579 (not lt!581274))))

(declare-fun e!1038081 () Bool)

(assert (=> d!487330 (= lt!581274 e!1038081)))

(declare-fun res!722580 () Bool)

(assert (=> d!487330 (=> res!722580 e!1038081)))

(assert (=> d!487330 (= res!722580 ((_ is Nil!17702) lt!579274))))

(assert (=> d!487330 (= (isPrefix!1379 lt!579274 (++!4680 lt!579274 lt!579259)) lt!581274)))

(declare-fun b!1618506 () Bool)

(declare-fun res!722578 () Bool)

(declare-fun e!1038082 () Bool)

(assert (=> b!1618506 (=> (not res!722578) (not e!1038082))))

(assert (=> b!1618506 (= res!722578 (= (head!3362 lt!579274) (head!3362 (++!4680 lt!579274 lt!579259))))))

(declare-fun b!1618505 () Bool)

(assert (=> b!1618505 (= e!1038081 e!1038082)))

(declare-fun res!722577 () Bool)

(assert (=> b!1618505 (=> (not res!722577) (not e!1038082))))

(assert (=> b!1618505 (= res!722577 (not ((_ is Nil!17702) (++!4680 lt!579274 lt!579259))))))

(declare-fun b!1618508 () Bool)

(assert (=> b!1618508 (= e!1038080 (>= (size!14197 (++!4680 lt!579274 lt!579259)) (size!14197 lt!579274)))))

(declare-fun b!1618507 () Bool)

(assert (=> b!1618507 (= e!1038082 (isPrefix!1379 (tail!2332 lt!579274) (tail!2332 (++!4680 lt!579274 lt!579259))))))

(assert (= (and d!487330 (not res!722580)) b!1618505))

(assert (= (and b!1618505 res!722577) b!1618506))

(assert (= (and b!1618506 res!722578) b!1618507))

(assert (= (and d!487330 (not res!722579)) b!1618508))

(assert (=> b!1618506 m!1937001))

(assert (=> b!1618506 m!1936461))

(declare-fun m!1941565 () Bool)

(assert (=> b!1618506 m!1941565))

(assert (=> b!1618508 m!1936461))

(declare-fun m!1941567 () Bool)

(assert (=> b!1618508 m!1941567))

(assert (=> b!1618508 m!1936733))

(assert (=> b!1618507 m!1937007))

(assert (=> b!1618507 m!1936461))

(declare-fun m!1941569 () Bool)

(assert (=> b!1618507 m!1941569))

(assert (=> b!1618507 m!1937007))

(assert (=> b!1618507 m!1941569))

(declare-fun m!1941571 () Bool)

(assert (=> b!1618507 m!1941571))

(assert (=> d!486260 d!487330))

(assert (=> d!486260 d!486374))

(declare-fun d!487332 () Bool)

(assert (=> d!487332 (isPrefix!1379 lt!579274 (++!4680 lt!579274 lt!579259))))

(assert (=> d!487332 true))

(declare-fun _$46!1085 () Unit!28465)

(assert (=> d!487332 (= (choose!9721 lt!579274 lt!579259) _$46!1085)))

(declare-fun bs!394330 () Bool)

(assert (= bs!394330 d!487332))

(assert (=> bs!394330 m!1936461))

(assert (=> bs!394330 m!1936461))

(assert (=> bs!394330 m!1937013))

(assert (=> d!486260 d!487332))

(declare-fun d!487334 () Bool)

(assert (=> d!487334 (= (list!6924 (_2!10019 lt!579819)) (list!6927 (c!263121 (_2!10019 lt!579819))))))

(declare-fun bs!394331 () Bool)

(assert (= bs!394331 d!487334))

(declare-fun m!1941573 () Bool)

(assert (=> bs!394331 m!1941573))

(assert (=> b!1616618 d!487334))

(assert (=> b!1616618 d!486912))

(assert (=> b!1616618 d!486362))

(declare-fun d!487336 () Bool)

(declare-fun lt!581275 () Int)

(assert (=> d!487336 (>= lt!581275 0)))

(declare-fun e!1038083 () Int)

(assert (=> d!487336 (= lt!581275 e!1038083)))

(declare-fun c!263661 () Bool)

(assert (=> d!487336 (= c!263661 ((_ is Nil!17702) (_2!10020 (get!5079 lt!579346))))))

(assert (=> d!487336 (= (size!14197 (_2!10020 (get!5079 lt!579346))) lt!581275)))

(declare-fun b!1618509 () Bool)

(assert (=> b!1618509 (= e!1038083 0)))

(declare-fun b!1618510 () Bool)

(assert (=> b!1618510 (= e!1038083 (+ 1 (size!14197 (t!148287 (_2!10020 (get!5079 lt!579346))))))))

(assert (= (and d!487336 c!263661) b!1618509))

(assert (= (and d!487336 (not c!263661)) b!1618510))

(declare-fun m!1941575 () Bool)

(assert (=> b!1618510 m!1941575))

(assert (=> b!1616255 d!487336))

(assert (=> b!1616255 d!486556))

(assert (=> b!1616255 d!486630))

(declare-fun d!487338 () Bool)

(assert (=> d!487338 (= (head!3362 (list!6924 lt!579260)) (h!23103 (list!6924 lt!579260)))))

(assert (=> d!486272 d!487338))

(assert (=> d!486272 d!486362))

(declare-fun d!487340 () Bool)

(declare-fun lt!581278 () C!9068)

(assert (=> d!487340 (= lt!581278 (head!3362 (list!6927 (c!263121 lt!579260))))))

(declare-fun e!1038086 () C!9068)

(assert (=> d!487340 (= lt!581278 e!1038086)))

(declare-fun c!263664 () Bool)

(assert (=> d!487340 (= c!263664 ((_ is Leaf!8666) (c!263121 lt!579260)))))

(assert (=> d!487340 (isBalanced!1762 (c!263121 lt!579260))))

(assert (=> d!487340 (= (head!3365 (c!263121 lt!579260)) lt!581278)))

(declare-fun b!1618515 () Bool)

(declare-fun apply!4472 (IArray!11777 Int) C!9068)

(assert (=> b!1618515 (= e!1038086 (apply!4472 (xs!8714 (c!263121 lt!579260)) 0))))

(declare-fun b!1618516 () Bool)

(assert (=> b!1618516 (= e!1038086 (head!3365 (left!14251 (c!263121 lt!579260))))))

(assert (= (and d!487340 c!263664) b!1618515))

(assert (= (and d!487340 (not c!263664)) b!1618516))

(assert (=> d!487340 m!1937539))

(assert (=> d!487340 m!1937539))

(declare-fun m!1941577 () Bool)

(assert (=> d!487340 m!1941577))

(declare-fun m!1941579 () Bool)

(assert (=> d!487340 m!1941579))

(declare-fun m!1941581 () Bool)

(assert (=> b!1618515 m!1941581))

(declare-fun m!1941583 () Bool)

(assert (=> b!1618516 m!1941583))

(assert (=> d!486272 d!487340))

(declare-fun d!487342 () Bool)

(declare-fun lt!581279 () Bool)

(assert (=> d!487342 (= lt!581279 (isEmpty!10713 (list!6924 lt!579260)))))

(assert (=> d!487342 (= lt!581279 (isEmpty!10727 (c!263121 lt!579260)))))

(assert (=> d!487342 (= (isEmpty!10720 lt!579260) lt!581279)))

(declare-fun bs!394332 () Bool)

(assert (= bs!394332 d!487342))

(assert (=> bs!394332 m!1936479))

(assert (=> bs!394332 m!1936479))

(declare-fun m!1941585 () Bool)

(assert (=> bs!394332 m!1941585))

(declare-fun m!1941587 () Bool)

(assert (=> bs!394332 m!1941587))

(assert (=> d!486272 d!487342))

(declare-fun bs!394333 () Bool)

(declare-fun d!487344 () Bool)

(assert (= bs!394333 (and d!487344 d!486704)))

(declare-fun lambda!67152 () Int)

(assert (=> bs!394333 (= (= (toValue!4542 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (= lambda!67152 lambda!67127))))

(assert (=> d!487344 true))

(assert (=> d!487344 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7895 order!10495 lambda!67152))))

(assert (=> d!487344 (= (equivClasses!1127 (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (Forall2!512 lambda!67152))))

(declare-fun bs!394334 () Bool)

(assert (= bs!394334 d!487344))

(declare-fun m!1941589 () Bool)

(assert (=> bs!394334 m!1941589))

(assert (=> b!1616458 d!487344))

(declare-fun d!487346 () Bool)

(declare-fun e!1038092 () Bool)

(assert (=> d!487346 e!1038092))

(declare-fun res!722581 () Bool)

(assert (=> d!487346 (=> (not res!722581) (not e!1038092))))

(declare-fun lt!581284 () Option!3248)

(assert (=> d!487346 (= res!722581 (= (isDefined!2615 lt!581284) (isDefined!2614 (maxPrefixZipper!292 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))))

(declare-fun e!1038089 () Option!3248)

(assert (=> d!487346 (= lt!581284 e!1038089)))

(declare-fun c!263665 () Bool)

(assert (=> d!487346 (= c!263665 (and ((_ is Cons!17704) (t!148289 rules!1846)) ((_ is Nil!17704) (t!148289 (t!148289 rules!1846)))))))

(declare-fun lt!581285 () Unit!28465)

(declare-fun lt!581282 () Unit!28465)

(assert (=> d!487346 (= lt!581285 lt!581282)))

(declare-fun lt!581283 () List!17772)

(declare-fun lt!581286 () List!17772)

(assert (=> d!487346 (isPrefix!1379 lt!581283 lt!581286)))

(assert (=> d!487346 (= lt!581282 (lemmaIsPrefixRefl!946 lt!581283 lt!581286))))

(assert (=> d!487346 (= lt!581286 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!487346 (= lt!581283 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!487346 (rulesValidInductive!958 thiss!17113 (t!148289 rules!1846))))

(assert (=> d!487346 (= (maxPrefixZipperSequence!643 thiss!17113 (t!148289 rules!1846) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) lt!581284)))

(declare-fun b!1618517 () Bool)

(declare-fun e!1038088 () Bool)

(assert (=> b!1618517 (= e!1038088 (= (list!6924 (_2!10021 (get!5082 lt!581284))) (_2!10020 (get!5079 (maxPrefixZipper!292 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun bm!105031 () Bool)

(declare-fun call!105036 () Option!3248)

(assert (=> bm!105031 (= call!105036 (maxPrefixOneRuleZipperSequence!302 thiss!17113 (h!23105 (t!148289 rules!1846)) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1618518 () Bool)

(declare-fun e!1038090 () Bool)

(assert (=> b!1618518 (= e!1038090 e!1038088)))

(declare-fun res!722584 () Bool)

(assert (=> b!1618518 (=> (not res!722584) (not e!1038088))))

(assert (=> b!1618518 (= res!722584 (= (_1!10021 (get!5082 lt!581284)) (_1!10020 (get!5079 (maxPrefixZipper!292 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1618519 () Bool)

(declare-fun e!1038087 () Bool)

(assert (=> b!1618519 (= e!1038092 e!1038087)))

(declare-fun res!722583 () Bool)

(assert (=> b!1618519 (=> res!722583 e!1038087)))

(assert (=> b!1618519 (= res!722583 (not (isDefined!2615 lt!581284)))))

(declare-fun e!1038091 () Bool)

(declare-fun b!1618520 () Bool)

(assert (=> b!1618520 (= e!1038091 (= (list!6924 (_2!10021 (get!5082 lt!581284))) (_2!10020 (get!5079 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1618521 () Bool)

(declare-fun res!722585 () Bool)

(assert (=> b!1618521 (=> (not res!722585) (not e!1038092))))

(assert (=> b!1618521 (= res!722585 e!1038090)))

(declare-fun res!722586 () Bool)

(assert (=> b!1618521 (=> res!722586 e!1038090)))

(assert (=> b!1618521 (= res!722586 (not (isDefined!2615 lt!581284)))))

(declare-fun b!1618522 () Bool)

(declare-fun lt!581280 () Option!3248)

(declare-fun lt!581281 () Option!3248)

(assert (=> b!1618522 (= e!1038089 (ite (and ((_ is None!3247) lt!581280) ((_ is None!3247) lt!581281)) None!3247 (ite ((_ is None!3247) lt!581281) lt!581280 (ite ((_ is None!3247) lt!581280) lt!581281 (ite (>= (size!14194 (_1!10021 (v!24236 lt!581280))) (size!14194 (_1!10021 (v!24236 lt!581281)))) lt!581280 lt!581281)))))))

(assert (=> b!1618522 (= lt!581280 call!105036)))

(assert (=> b!1618522 (= lt!581281 (maxPrefixZipperSequence!643 thiss!17113 (t!148289 (t!148289 rules!1846)) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1618523 () Bool)

(assert (=> b!1618523 (= e!1038087 e!1038091)))

(declare-fun res!722582 () Bool)

(assert (=> b!1618523 (=> (not res!722582) (not e!1038091))))

(assert (=> b!1618523 (= res!722582 (= (_1!10021 (get!5082 lt!581284)) (_1!10020 (get!5079 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1618524 () Bool)

(assert (=> b!1618524 (= e!1038089 call!105036)))

(assert (= (and d!487346 c!263665) b!1618524))

(assert (= (and d!487346 (not c!263665)) b!1618522))

(assert (= (or b!1618524 b!1618522) bm!105031))

(assert (= (and d!487346 res!722581) b!1618521))

(assert (= (and b!1618521 (not res!722586)) b!1618518))

(assert (= (and b!1618518 res!722584) b!1618517))

(assert (= (and b!1618521 res!722585) b!1618519))

(assert (= (and b!1618519 (not res!722583)) b!1618523))

(assert (= (and b!1618523 res!722582) b!1618520))

(assert (=> b!1618522 m!1936441))

(declare-fun m!1941591 () Bool)

(assert (=> b!1618522 m!1941591))

(declare-fun m!1941593 () Bool)

(assert (=> b!1618521 m!1941593))

(declare-fun m!1941595 () Bool)

(assert (=> b!1618518 m!1941595))

(assert (=> b!1618518 m!1936441))

(assert (=> b!1618518 m!1937235))

(assert (=> b!1618518 m!1937235))

(assert (=> b!1618518 m!1938563))

(assert (=> b!1618518 m!1938563))

(declare-fun m!1941597 () Bool)

(assert (=> b!1618518 m!1941597))

(assert (=> b!1618523 m!1941595))

(assert (=> b!1618523 m!1936441))

(assert (=> b!1618523 m!1937235))

(assert (=> b!1618523 m!1937235))

(assert (=> b!1618523 m!1938387))

(assert (=> b!1618523 m!1938387))

(declare-fun m!1941599 () Bool)

(assert (=> b!1618523 m!1941599))

(assert (=> b!1618517 m!1938563))

(assert (=> b!1618517 m!1941597))

(assert (=> b!1618517 m!1941595))

(declare-fun m!1941601 () Bool)

(assert (=> b!1618517 m!1941601))

(assert (=> b!1618517 m!1937235))

(assert (=> b!1618517 m!1938563))

(assert (=> b!1618517 m!1936441))

(assert (=> b!1618517 m!1937235))

(assert (=> d!487346 m!1941593))

(declare-fun m!1941603 () Bool)

(assert (=> d!487346 m!1941603))

(assert (=> d!487346 m!1937235))

(assert (=> d!487346 m!1938563))

(assert (=> d!487346 m!1938401))

(declare-fun m!1941605 () Bool)

(assert (=> d!487346 m!1941605))

(assert (=> d!487346 m!1938563))

(declare-fun m!1941607 () Bool)

(assert (=> d!487346 m!1941607))

(assert (=> d!487346 m!1936441))

(assert (=> d!487346 m!1937235))

(assert (=> bm!105031 m!1936441))

(declare-fun m!1941609 () Bool)

(assert (=> bm!105031 m!1941609))

(assert (=> b!1618520 m!1941595))

(assert (=> b!1618520 m!1941601))

(assert (=> b!1618520 m!1937235))

(assert (=> b!1618520 m!1938387))

(assert (=> b!1618520 m!1938387))

(assert (=> b!1618520 m!1941599))

(assert (=> b!1618520 m!1936441))

(assert (=> b!1618520 m!1937235))

(assert (=> b!1618519 m!1941593))

(assert (=> b!1616484 d!487346))

(declare-fun d!487348 () Bool)

(declare-fun c!263666 () Bool)

(assert (=> d!487348 (= c!263666 ((_ is Empty!5886) (c!263121 lt!579283)))))

(declare-fun e!1038093 () List!17772)

(assert (=> d!487348 (= (list!6927 (c!263121 lt!579283)) e!1038093)))

(declare-fun b!1618525 () Bool)

(assert (=> b!1618525 (= e!1038093 Nil!17702)))

(declare-fun b!1618526 () Bool)

(declare-fun e!1038094 () List!17772)

(assert (=> b!1618526 (= e!1038093 e!1038094)))

(declare-fun c!263667 () Bool)

(assert (=> b!1618526 (= c!263667 ((_ is Leaf!8666) (c!263121 lt!579283)))))

(declare-fun b!1618528 () Bool)

(assert (=> b!1618528 (= e!1038094 (++!4680 (list!6927 (left!14251 (c!263121 lt!579283))) (list!6927 (right!14581 (c!263121 lt!579283)))))))

(declare-fun b!1618527 () Bool)

(assert (=> b!1618527 (= e!1038094 (list!6929 (xs!8714 (c!263121 lt!579283))))))

(assert (= (and d!487348 c!263666) b!1618525))

(assert (= (and d!487348 (not c!263666)) b!1618526))

(assert (= (and b!1618526 c!263667) b!1618527))

(assert (= (and b!1618526 (not c!263667)) b!1618528))

(declare-fun m!1941611 () Bool)

(assert (=> b!1618528 m!1941611))

(declare-fun m!1941613 () Bool)

(assert (=> b!1618528 m!1941613))

(assert (=> b!1618528 m!1941611))

(assert (=> b!1618528 m!1941613))

(declare-fun m!1941615 () Bool)

(assert (=> b!1618528 m!1941615))

(declare-fun m!1941617 () Bool)

(assert (=> b!1618527 m!1941617))

(assert (=> d!486366 d!487348))

(declare-fun d!487350 () Bool)

(assert (=> d!487350 (= (isEmpty!10719 lt!579341) (not ((_ is Some!3246) lt!579341)))))

(assert (=> d!486196 d!487350))

(declare-fun d!487352 () Bool)

(declare-fun e!1038095 () Bool)

(assert (=> d!487352 e!1038095))

(declare-fun res!722589 () Bool)

(assert (=> d!487352 (=> res!722589 e!1038095)))

(declare-fun lt!581287 () Bool)

(assert (=> d!487352 (= res!722589 (not lt!581287))))

(declare-fun e!1038096 () Bool)

(assert (=> d!487352 (= lt!581287 e!1038096)))

(declare-fun res!722590 () Bool)

(assert (=> d!487352 (=> res!722590 e!1038096)))

(assert (=> d!487352 (= res!722590 ((_ is Nil!17702) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!487352 (= (isPrefix!1379 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457))) lt!581287)))

(declare-fun b!1618530 () Bool)

(declare-fun res!722588 () Bool)

(declare-fun e!1038097 () Bool)

(assert (=> b!1618530 (=> (not res!722588) (not e!1038097))))

(assert (=> b!1618530 (= res!722588 (= (head!3362 (originalCharacters!3933 (h!23104 tokens!457))) (head!3362 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1618529 () Bool)

(assert (=> b!1618529 (= e!1038096 e!1038097)))

(declare-fun res!722587 () Bool)

(assert (=> b!1618529 (=> (not res!722587) (not e!1038097))))

(assert (=> b!1618529 (= res!722587 (not ((_ is Nil!17702) (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1618532 () Bool)

(assert (=> b!1618532 (= e!1038095 (>= (size!14197 (originalCharacters!3933 (h!23104 tokens!457))) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun b!1618531 () Bool)

(assert (=> b!1618531 (= e!1038097 (isPrefix!1379 (tail!2332 (originalCharacters!3933 (h!23104 tokens!457))) (tail!2332 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (= (and d!487352 (not res!722590)) b!1618529))

(assert (= (and b!1618529 res!722587) b!1618530))

(assert (= (and b!1618530 res!722588) b!1618531))

(assert (= (and d!487352 (not res!722589)) b!1618532))

(declare-fun m!1941619 () Bool)

(assert (=> b!1618530 m!1941619))

(assert (=> b!1618530 m!1941619))

(assert (=> b!1618532 m!1936701))

(assert (=> b!1618532 m!1936701))

(declare-fun m!1941621 () Bool)

(assert (=> b!1618531 m!1941621))

(assert (=> b!1618531 m!1941621))

(assert (=> b!1618531 m!1941621))

(assert (=> b!1618531 m!1941621))

(declare-fun m!1941623 () Bool)

(assert (=> b!1618531 m!1941623))

(assert (=> d!486196 d!487352))

(declare-fun d!487354 () Bool)

(assert (=> d!487354 (isPrefix!1379 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457)))))

(declare-fun lt!581288 () Unit!28465)

(assert (=> d!487354 (= lt!581288 (choose!9729 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!487354 (= (lemmaIsPrefixRefl!946 (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457))) lt!581288)))

(declare-fun bs!394335 () Bool)

(assert (= bs!394335 d!487354))

(assert (=> bs!394335 m!1936671))

(declare-fun m!1941625 () Bool)

(assert (=> bs!394335 m!1941625))

(assert (=> d!486196 d!487354))

(assert (=> d!486196 d!486626))

(declare-fun d!487356 () Bool)

(declare-fun lt!581289 () Int)

(assert (=> d!487356 (>= lt!581289 0)))

(declare-fun e!1038098 () Int)

(assert (=> d!487356 (= lt!581289 e!1038098)))

(declare-fun c!263668 () Bool)

(assert (=> d!487356 (= c!263668 ((_ is Nil!17702) (_2!10020 (get!5079 lt!579341))))))

(assert (=> d!487356 (= (size!14197 (_2!10020 (get!5079 lt!579341))) lt!581289)))

(declare-fun b!1618533 () Bool)

(assert (=> b!1618533 (= e!1038098 0)))

(declare-fun b!1618534 () Bool)

(assert (=> b!1618534 (= e!1038098 (+ 1 (size!14197 (t!148287 (_2!10020 (get!5079 lt!579341))))))))

(assert (= (and d!487356 c!263668) b!1618533))

(assert (= (and d!487356 (not c!263668)) b!1618534))

(declare-fun m!1941627 () Bool)

(assert (=> b!1618534 m!1941627))

(assert (=> b!1616246 d!487356))

(assert (=> b!1616246 d!486572))

(assert (=> b!1616246 d!487328))

(declare-fun d!487358 () Bool)

(assert (=> d!487358 (= (isEmpty!10724 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))) ((_ is Nil!17703) (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(assert (=> d!486322 d!487358))

(declare-fun d!487360 () Bool)

(assert (=> d!487360 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)))) (list!6928 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(declare-fun bs!394336 () Bool)

(assert (= bs!394336 d!487360))

(declare-fun m!1941629 () Bool)

(assert (=> bs!394336 m!1941629))

(assert (=> d!486322 d!487360))

(declare-fun lt!581292 () Bool)

(declare-fun d!487362 () Bool)

(assert (=> d!487362 (= lt!581292 (isEmpty!10724 (list!6928 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)))))))))

(assert (=> d!487362 (= lt!581292 (= (size!14205 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))) 0))))

(assert (=> d!487362 (= (isEmpty!10725 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))) lt!581292)))

(declare-fun bs!394337 () Bool)

(assert (= bs!394337 d!487362))

(assert (=> bs!394337 m!1941629))

(assert (=> bs!394337 m!1941629))

(declare-fun m!1941631 () Bool)

(assert (=> bs!394337 m!1941631))

(declare-fun m!1941633 () Bool)

(assert (=> bs!394337 m!1941633))

(assert (=> d!486322 d!487362))

(declare-fun d!487364 () Bool)

(declare-fun res!722592 () Bool)

(declare-fun e!1038099 () Bool)

(assert (=> d!487364 (=> res!722592 e!1038099)))

(assert (=> d!487364 (= res!722592 (or (not ((_ is Cons!17703) (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))) (not ((_ is Cons!17703) (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))))))

(assert (=> d!487364 (= (tokensListTwoByTwoPredicateSeparableList!441 thiss!17113 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))) rules!1846) e!1038099)))

(declare-fun b!1618535 () Bool)

(declare-fun e!1038100 () Bool)

(assert (=> b!1618535 (= e!1038099 e!1038100)))

(declare-fun res!722591 () Bool)

(assert (=> b!1618535 (=> (not res!722591) (not e!1038100))))

(assert (=> b!1618535 (= res!722591 (separableTokensPredicate!690 thiss!17113 (h!23104 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)))) (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))) rules!1846))))

(declare-fun lt!581298 () Unit!28465)

(declare-fun Unit!28569 () Unit!28465)

(assert (=> b!1618535 (= lt!581298 Unit!28569)))

(assert (=> b!1618535 (> (size!14200 (charsOf!1768 (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))) 0)))

(declare-fun lt!581293 () Unit!28465)

(declare-fun Unit!28570 () Unit!28465)

(assert (=> b!1618535 (= lt!581293 Unit!28570)))

(assert (=> b!1618535 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))))

(declare-fun lt!581295 () Unit!28465)

(declare-fun Unit!28571 () Unit!28465)

(assert (=> b!1618535 (= lt!581295 Unit!28571)))

(assert (=> b!1618535 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)))))))

(declare-fun lt!581296 () Unit!28465)

(declare-fun lt!581297 () Unit!28465)

(assert (=> b!1618535 (= lt!581296 lt!581297)))

(assert (=> b!1618535 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))))

(assert (=> b!1618535 (= lt!581297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)))))))))

(declare-fun lt!581294 () Unit!28465)

(declare-fun lt!581299 () Unit!28465)

(assert (=> b!1618535 (= lt!581294 lt!581299)))

(assert (=> b!1618535 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)))))))

(assert (=> b!1618535 (= lt!581299 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))) (h!23104 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))))

(declare-fun b!1618536 () Bool)

(assert (=> b!1618536 (= e!1038100 (tokensListTwoByTwoPredicateSeparableList!441 thiss!17113 (Cons!17703 (h!23104 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))) (t!148288 (t!148288 (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)))))) rules!1846))))

(assert (= (and d!487364 (not res!722592)) b!1618535))

(assert (= (and b!1618535 res!722591) b!1618536))

(declare-fun m!1941635 () Bool)

(assert (=> b!1618535 m!1941635))

(declare-fun m!1941637 () Bool)

(assert (=> b!1618535 m!1941637))

(declare-fun m!1941639 () Bool)

(assert (=> b!1618535 m!1941639))

(declare-fun m!1941641 () Bool)

(assert (=> b!1618535 m!1941641))

(declare-fun m!1941643 () Bool)

(assert (=> b!1618535 m!1941643))

(assert (=> b!1618535 m!1941635))

(declare-fun m!1941645 () Bool)

(assert (=> b!1618535 m!1941645))

(declare-fun m!1941647 () Bool)

(assert (=> b!1618535 m!1941647))

(declare-fun m!1941649 () Bool)

(assert (=> b!1618536 m!1941649))

(assert (=> b!1616515 d!487364))

(assert (=> d!486346 d!486870))

(declare-fun d!487366 () Bool)

(assert (=> d!487366 (= (isDefined!2617 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))) (not (isEmpty!10729 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))

(declare-fun bs!394338 () Bool)

(assert (= bs!394338 d!487366))

(assert (=> bs!394338 m!1937503))

(declare-fun m!1941651 () Bool)

(assert (=> bs!394338 m!1941651))

(assert (=> d!486346 d!487366))

(declare-fun d!487368 () Bool)

(assert (=> d!487368 (isPrefix!1379 lt!579798 (++!4680 lt!579274 lt!579259))))

(declare-fun lt!581302 () Unit!28465)

(declare-fun choose!9739 (List!17772 List!17772 List!17772) Unit!28465)

(assert (=> d!487368 (= lt!581302 (choose!9739 lt!579798 lt!579274 lt!579259))))

(assert (=> d!487368 (isPrefix!1379 lt!579798 lt!579274)))

(assert (=> d!487368 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!156 lt!579798 lt!579274 lt!579259) lt!581302)))

(declare-fun bs!394339 () Bool)

(assert (= bs!394339 d!487368))

(assert (=> bs!394339 m!1936461))

(assert (=> bs!394339 m!1936461))

(assert (=> bs!394339 m!1937495))

(declare-fun m!1941653 () Bool)

(assert (=> bs!394339 m!1941653))

(declare-fun m!1941655 () Bool)

(assert (=> bs!394339 m!1941655))

(assert (=> d!486346 d!487368))

(assert (=> d!486346 d!487360))

(assert (=> d!486346 d!486374))

(assert (=> d!486346 d!486324))

(assert (=> d!486346 d!487292))

(assert (=> d!486346 d!486332))

(declare-fun d!487370 () Bool)

(assert (=> d!487370 (= (get!5079 (maxPrefix!1312 thiss!17113 rules!1846 lt!579274)) (v!24235 (maxPrefix!1312 thiss!17113 rules!1846 lt!579274)))))

(assert (=> d!486346 d!487370))

(declare-fun d!487372 () Bool)

(declare-fun e!1038101 () Bool)

(assert (=> d!487372 e!1038101))

(declare-fun res!722595 () Bool)

(assert (=> d!487372 (=> res!722595 e!1038101)))

(declare-fun lt!581303 () Bool)

(assert (=> d!487372 (= res!722595 (not lt!581303))))

(declare-fun e!1038102 () Bool)

(assert (=> d!487372 (= lt!581303 e!1038102)))

(declare-fun res!722596 () Bool)

(assert (=> d!487372 (=> res!722596 e!1038102)))

(assert (=> d!487372 (= res!722596 ((_ is Nil!17702) lt!579798))))

(assert (=> d!487372 (= (isPrefix!1379 lt!579798 (++!4680 lt!579274 lt!579259)) lt!581303)))

(declare-fun b!1618538 () Bool)

(declare-fun res!722594 () Bool)

(declare-fun e!1038103 () Bool)

(assert (=> b!1618538 (=> (not res!722594) (not e!1038103))))

(assert (=> b!1618538 (= res!722594 (= (head!3362 lt!579798) (head!3362 (++!4680 lt!579274 lt!579259))))))

(declare-fun b!1618537 () Bool)

(assert (=> b!1618537 (= e!1038102 e!1038103)))

(declare-fun res!722593 () Bool)

(assert (=> b!1618537 (=> (not res!722593) (not e!1038103))))

(assert (=> b!1618537 (= res!722593 (not ((_ is Nil!17702) (++!4680 lt!579274 lt!579259))))))

(declare-fun b!1618540 () Bool)

(assert (=> b!1618540 (= e!1038101 (>= (size!14197 (++!4680 lt!579274 lt!579259)) (size!14197 lt!579798)))))

(declare-fun b!1618539 () Bool)

(assert (=> b!1618539 (= e!1038103 (isPrefix!1379 (tail!2332 lt!579798) (tail!2332 (++!4680 lt!579274 lt!579259))))))

(assert (= (and d!487372 (not res!722596)) b!1618537))

(assert (= (and b!1618537 res!722593) b!1618538))

(assert (= (and b!1618538 res!722594) b!1618539))

(assert (= (and d!487372 (not res!722595)) b!1618540))

(declare-fun m!1941657 () Bool)

(assert (=> b!1618538 m!1941657))

(assert (=> b!1618538 m!1936461))

(assert (=> b!1618538 m!1941565))

(assert (=> b!1618540 m!1936461))

(assert (=> b!1618540 m!1941567))

(declare-fun m!1941659 () Bool)

(assert (=> b!1618540 m!1941659))

(declare-fun m!1941661 () Bool)

(assert (=> b!1618539 m!1941661))

(assert (=> b!1618539 m!1936461))

(assert (=> b!1618539 m!1941569))

(assert (=> b!1618539 m!1941661))

(assert (=> b!1618539 m!1941569))

(declare-fun m!1941663 () Bool)

(assert (=> b!1618539 m!1941663))

(assert (=> d!486346 d!487372))

(declare-fun d!487374 () Bool)

(declare-fun e!1038106 () Bool)

(assert (=> d!487374 e!1038106))

(declare-fun res!722601 () Bool)

(assert (=> d!487374 (=> (not res!722601) (not e!1038106))))

(assert (=> d!487374 (= res!722601 (isDefined!2617 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))

(declare-fun lt!581306 () Unit!28465)

(declare-fun choose!9740 (LexerInterface!2748 List!17774 List!17772 Token!5804) Unit!28465)

(assert (=> d!487374 (= lt!581306 (choose!9740 thiss!17113 rules!1846 lt!579274 lt!579806))))

(assert (=> d!487374 (rulesInvariant!2417 thiss!17113 rules!1846)))

(assert (=> d!487374 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!270 thiss!17113 rules!1846 lt!579274 lt!579806) lt!581306)))

(declare-fun b!1618545 () Bool)

(declare-fun res!722602 () Bool)

(assert (=> b!1618545 (=> (not res!722602) (not e!1038106))))

(assert (=> b!1618545 (= res!722602 (matchR!1946 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))) (list!6924 (charsOf!1768 lt!579806))))))

(declare-fun b!1618546 () Bool)

(assert (=> b!1618546 (= e!1038106 (= (rule!4939 lt!579806) (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))

(assert (= (and d!487374 res!722601) b!1618545))

(assert (= (and b!1618545 res!722602) b!1618546))

(assert (=> d!487374 m!1937503))

(assert (=> d!487374 m!1937503))

(assert (=> d!487374 m!1937505))

(declare-fun m!1941665 () Bool)

(assert (=> d!487374 m!1941665))

(assert (=> d!487374 m!1936451))

(assert (=> b!1618545 m!1937509))

(assert (=> b!1618545 m!1937511))

(assert (=> b!1618545 m!1937503))

(assert (=> b!1618545 m!1937499))

(assert (=> b!1618545 m!1937499))

(assert (=> b!1618545 m!1937509))

(assert (=> b!1618545 m!1937503))

(assert (=> b!1618545 m!1937513))

(assert (=> b!1618546 m!1937503))

(assert (=> b!1618546 m!1937503))

(assert (=> b!1618546 m!1937513))

(assert (=> d!486346 d!487374))

(declare-fun d!487376 () Bool)

(assert (=> d!487376 (isPrefix!1379 lt!579803 (++!4680 lt!579803 lt!579802))))

(declare-fun lt!581307 () Unit!28465)

(assert (=> d!487376 (= lt!581307 (choose!9721 lt!579803 lt!579802))))

(assert (=> d!487376 (= (lemmaConcatTwoListThenFirstIsPrefix!904 lt!579803 lt!579802) lt!581307)))

(declare-fun bs!394340 () Bool)

(assert (= bs!394340 d!487376))

(assert (=> bs!394340 m!1937491))

(assert (=> bs!394340 m!1937491))

(assert (=> bs!394340 m!1937493))

(declare-fun m!1941667 () Bool)

(assert (=> bs!394340 m!1941667))

(assert (=> d!486346 d!487376))

(declare-fun d!487378 () Bool)

(assert (=> d!487378 (= (isDefined!2614 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259))) (not (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259)))))))

(declare-fun bs!394341 () Bool)

(assert (= bs!394341 d!487378))

(assert (=> bs!394341 m!1937487))

(assert (=> bs!394341 m!1937507))

(assert (=> d!486346 d!487378))

(declare-fun d!487380 () Bool)

(declare-fun e!1038108 () Bool)

(assert (=> d!487380 e!1038108))

(declare-fun res!722603 () Bool)

(assert (=> d!487380 (=> (not res!722603) (not e!1038108))))

(declare-fun lt!581308 () List!17772)

(assert (=> d!487380 (= res!722603 (= (content!2450 lt!581308) ((_ map or) (content!2450 lt!579803) (content!2450 lt!579802))))))

(declare-fun e!1038107 () List!17772)

(assert (=> d!487380 (= lt!581308 e!1038107)))

(declare-fun c!263669 () Bool)

(assert (=> d!487380 (= c!263669 ((_ is Nil!17702) lt!579803))))

(assert (=> d!487380 (= (++!4680 lt!579803 lt!579802) lt!581308)))

(declare-fun b!1618547 () Bool)

(assert (=> b!1618547 (= e!1038107 lt!579802)))

(declare-fun b!1618550 () Bool)

(assert (=> b!1618550 (= e!1038108 (or (not (= lt!579802 Nil!17702)) (= lt!581308 lt!579803)))))

(declare-fun b!1618548 () Bool)

(assert (=> b!1618548 (= e!1038107 (Cons!17702 (h!23103 lt!579803) (++!4680 (t!148287 lt!579803) lt!579802)))))

(declare-fun b!1618549 () Bool)

(declare-fun res!722604 () Bool)

(assert (=> b!1618549 (=> (not res!722604) (not e!1038108))))

(assert (=> b!1618549 (= res!722604 (= (size!14197 lt!581308) (+ (size!14197 lt!579803) (size!14197 lt!579802))))))

(assert (= (and d!487380 c!263669) b!1618547))

(assert (= (and d!487380 (not c!263669)) b!1618548))

(assert (= (and d!487380 res!722603) b!1618549))

(assert (= (and b!1618549 res!722604) b!1618550))

(declare-fun m!1941669 () Bool)

(assert (=> d!487380 m!1941669))

(declare-fun m!1941671 () Bool)

(assert (=> d!487380 m!1941671))

(declare-fun m!1941673 () Bool)

(assert (=> d!487380 m!1941673))

(declare-fun m!1941675 () Bool)

(assert (=> b!1618548 m!1941675))

(declare-fun m!1941677 () Bool)

(assert (=> b!1618549 m!1941677))

(declare-fun m!1941679 () Bool)

(assert (=> b!1618549 m!1941679))

(declare-fun m!1941681 () Bool)

(assert (=> b!1618549 m!1941681))

(assert (=> d!486346 d!487380))

(assert (=> d!486346 d!486206))

(declare-fun d!487382 () Bool)

(assert (=> d!487382 (= (head!3366 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))) (h!23104 (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(assert (=> d!486346 d!487382))

(assert (=> d!486346 d!486886))

(declare-fun d!487384 () Bool)

(assert (=> d!487384 (= (isEmpty!10719 (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259))) (not ((_ is Some!3246) (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259)))))))

(assert (=> d!486346 d!487384))

(assert (=> d!486346 d!486428))

(declare-fun b!1618551 () Bool)

(declare-fun res!722610 () Bool)

(declare-fun e!1038109 () Bool)

(assert (=> b!1618551 (=> (not res!722610) (not e!1038109))))

(declare-fun lt!581313 () Option!3247)

(assert (=> b!1618551 (= res!722610 (< (size!14197 (_2!10020 (get!5079 lt!581313))) (size!14197 (++!4680 lt!579274 lt!579259))))))

(declare-fun b!1618552 () Bool)

(declare-fun e!1038110 () Bool)

(assert (=> b!1618552 (= e!1038110 e!1038109)))

(declare-fun res!722606 () Bool)

(assert (=> b!1618552 (=> (not res!722606) (not e!1038109))))

(assert (=> b!1618552 (= res!722606 (isDefined!2614 lt!581313))))

(declare-fun b!1618553 () Bool)

(declare-fun e!1038111 () Option!3247)

(declare-fun lt!581312 () Option!3247)

(declare-fun lt!581311 () Option!3247)

(assert (=> b!1618553 (= e!1038111 (ite (and ((_ is None!3246) lt!581312) ((_ is None!3246) lt!581311)) None!3246 (ite ((_ is None!3246) lt!581311) lt!581312 (ite ((_ is None!3246) lt!581312) lt!581311 (ite (>= (size!14194 (_1!10020 (v!24235 lt!581312))) (size!14194 (_1!10020 (v!24235 lt!581311)))) lt!581312 lt!581311)))))))

(declare-fun call!105037 () Option!3247)

(assert (=> b!1618553 (= lt!581312 call!105037)))

(assert (=> b!1618553 (= lt!581311 (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) (++!4680 lt!579274 lt!579259)))))

(declare-fun b!1618554 () Bool)

(declare-fun res!722609 () Bool)

(assert (=> b!1618554 (=> (not res!722609) (not e!1038109))))

(assert (=> b!1618554 (= res!722609 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581313)))) (_2!10020 (get!5079 lt!581313))) (++!4680 lt!579274 lt!579259)))))

(declare-fun b!1618555 () Bool)

(declare-fun res!722611 () Bool)

(assert (=> b!1618555 (=> (not res!722611) (not e!1038109))))

(assert (=> b!1618555 (= res!722611 (= (value!98564 (_1!10020 (get!5079 lt!581313))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581313)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581313)))))))))

(declare-fun b!1618556 () Bool)

(declare-fun res!722605 () Bool)

(assert (=> b!1618556 (=> (not res!722605) (not e!1038109))))

(assert (=> b!1618556 (= res!722605 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581313)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!581313)))))))

(declare-fun b!1618557 () Bool)

(assert (=> b!1618557 (= e!1038109 (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!581313)))))))

(declare-fun bm!105032 () Bool)

(assert (=> bm!105032 (= call!105037 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (++!4680 lt!579274 lt!579259)))))

(declare-fun d!487386 () Bool)

(assert (=> d!487386 e!1038110))

(declare-fun res!722607 () Bool)

(assert (=> d!487386 (=> res!722607 e!1038110)))

(assert (=> d!487386 (= res!722607 (isEmpty!10719 lt!581313))))

(assert (=> d!487386 (= lt!581313 e!1038111)))

(declare-fun c!263670 () Bool)

(assert (=> d!487386 (= c!263670 (and ((_ is Cons!17704) rules!1846) ((_ is Nil!17704) (t!148289 rules!1846))))))

(declare-fun lt!581310 () Unit!28465)

(declare-fun lt!581309 () Unit!28465)

(assert (=> d!487386 (= lt!581310 lt!581309)))

(assert (=> d!487386 (isPrefix!1379 (++!4680 lt!579274 lt!579259) (++!4680 lt!579274 lt!579259))))

(assert (=> d!487386 (= lt!581309 (lemmaIsPrefixRefl!946 (++!4680 lt!579274 lt!579259) (++!4680 lt!579274 lt!579259)))))

(assert (=> d!487386 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!487386 (= (maxPrefix!1312 thiss!17113 rules!1846 (++!4680 lt!579274 lt!579259)) lt!581313)))

(declare-fun b!1618558 () Bool)

(declare-fun res!722608 () Bool)

(assert (=> b!1618558 (=> (not res!722608) (not e!1038109))))

(assert (=> b!1618558 (= res!722608 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!581313)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581313))))))))

(declare-fun b!1618559 () Bool)

(assert (=> b!1618559 (= e!1038111 call!105037)))

(assert (= (and d!487386 c!263670) b!1618559))

(assert (= (and d!487386 (not c!263670)) b!1618553))

(assert (= (or b!1618559 b!1618553) bm!105032))

(assert (= (and d!487386 (not res!722607)) b!1618552))

(assert (= (and b!1618552 res!722606) b!1618556))

(assert (= (and b!1618556 res!722605) b!1618551))

(assert (= (and b!1618551 res!722610) b!1618554))

(assert (= (and b!1618554 res!722609) b!1618555))

(assert (= (and b!1618555 res!722611) b!1618558))

(assert (= (and b!1618558 res!722608) b!1618557))

(declare-fun m!1941683 () Bool)

(assert (=> d!487386 m!1941683))

(assert (=> d!487386 m!1936461))

(assert (=> d!487386 m!1936461))

(declare-fun m!1941685 () Bool)

(assert (=> d!487386 m!1941685))

(assert (=> d!487386 m!1936461))

(assert (=> d!487386 m!1936461))

(declare-fun m!1941687 () Bool)

(assert (=> d!487386 m!1941687))

(assert (=> d!487386 m!1936675))

(declare-fun m!1941689 () Bool)

(assert (=> b!1618552 m!1941689))

(declare-fun m!1941691 () Bool)

(assert (=> b!1618555 m!1941691))

(declare-fun m!1941693 () Bool)

(assert (=> b!1618555 m!1941693))

(assert (=> b!1618555 m!1941693))

(declare-fun m!1941695 () Bool)

(assert (=> b!1618555 m!1941695))

(assert (=> b!1618554 m!1941691))

(declare-fun m!1941697 () Bool)

(assert (=> b!1618554 m!1941697))

(assert (=> b!1618554 m!1941697))

(declare-fun m!1941699 () Bool)

(assert (=> b!1618554 m!1941699))

(assert (=> b!1618554 m!1941699))

(declare-fun m!1941701 () Bool)

(assert (=> b!1618554 m!1941701))

(assert (=> b!1618553 m!1936461))

(declare-fun m!1941703 () Bool)

(assert (=> b!1618553 m!1941703))

(assert (=> b!1618557 m!1941691))

(declare-fun m!1941705 () Bool)

(assert (=> b!1618557 m!1941705))

(assert (=> b!1618558 m!1941691))

(assert (=> b!1618558 m!1941697))

(assert (=> b!1618558 m!1941697))

(assert (=> b!1618558 m!1941699))

(assert (=> b!1618558 m!1941699))

(declare-fun m!1941707 () Bool)

(assert (=> b!1618558 m!1941707))

(assert (=> bm!105032 m!1936461))

(declare-fun m!1941709 () Bool)

(assert (=> bm!105032 m!1941709))

(assert (=> b!1618556 m!1941691))

(assert (=> b!1618556 m!1941697))

(assert (=> b!1618556 m!1941697))

(assert (=> b!1618556 m!1941699))

(assert (=> b!1618551 m!1941691))

(declare-fun m!1941711 () Bool)

(assert (=> b!1618551 m!1941711))

(assert (=> b!1618551 m!1936461))

(assert (=> b!1618551 m!1941567))

(assert (=> d!486346 d!487386))

(declare-fun d!487388 () Bool)

(declare-fun e!1038112 () Bool)

(assert (=> d!487388 e!1038112))

(declare-fun res!722614 () Bool)

(assert (=> d!487388 (=> res!722614 e!1038112)))

(declare-fun lt!581314 () Bool)

(assert (=> d!487388 (= res!722614 (not lt!581314))))

(declare-fun e!1038113 () Bool)

(assert (=> d!487388 (= lt!581314 e!1038113)))

(declare-fun res!722615 () Bool)

(assert (=> d!487388 (=> res!722615 e!1038113)))

(assert (=> d!487388 (= res!722615 ((_ is Nil!17702) lt!579803))))

(assert (=> d!487388 (= (isPrefix!1379 lt!579803 (++!4680 lt!579803 lt!579802)) lt!581314)))

(declare-fun b!1618561 () Bool)

(declare-fun res!722613 () Bool)

(declare-fun e!1038114 () Bool)

(assert (=> b!1618561 (=> (not res!722613) (not e!1038114))))

(assert (=> b!1618561 (= res!722613 (= (head!3362 lt!579803) (head!3362 (++!4680 lt!579803 lt!579802))))))

(declare-fun b!1618560 () Bool)

(assert (=> b!1618560 (= e!1038113 e!1038114)))

(declare-fun res!722612 () Bool)

(assert (=> b!1618560 (=> (not res!722612) (not e!1038114))))

(assert (=> b!1618560 (= res!722612 (not ((_ is Nil!17702) (++!4680 lt!579803 lt!579802))))))

(declare-fun b!1618563 () Bool)

(assert (=> b!1618563 (= e!1038112 (>= (size!14197 (++!4680 lt!579803 lt!579802)) (size!14197 lt!579803)))))

(declare-fun b!1618562 () Bool)

(assert (=> b!1618562 (= e!1038114 (isPrefix!1379 (tail!2332 lt!579803) (tail!2332 (++!4680 lt!579803 lt!579802))))))

(assert (= (and d!487388 (not res!722615)) b!1618560))

(assert (= (and b!1618560 res!722612) b!1618561))

(assert (= (and b!1618561 res!722613) b!1618562))

(assert (= (and d!487388 (not res!722614)) b!1618563))

(declare-fun m!1941713 () Bool)

(assert (=> b!1618561 m!1941713))

(assert (=> b!1618561 m!1937491))

(declare-fun m!1941715 () Bool)

(assert (=> b!1618561 m!1941715))

(assert (=> b!1618563 m!1937491))

(declare-fun m!1941717 () Bool)

(assert (=> b!1618563 m!1941717))

(assert (=> b!1618563 m!1941679))

(declare-fun m!1941719 () Bool)

(assert (=> b!1618562 m!1941719))

(assert (=> b!1618562 m!1937491))

(declare-fun m!1941721 () Bool)

(assert (=> b!1618562 m!1941721))

(assert (=> b!1618562 m!1941719))

(assert (=> b!1618562 m!1941721))

(declare-fun m!1941723 () Bool)

(assert (=> b!1618562 m!1941723))

(assert (=> d!486346 d!487388))

(assert (=> b!1616259 d!486556))

(declare-fun d!487390 () Bool)

(assert (=> d!487390 (= (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346))))) (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun b_lambda!51033 () Bool)

(assert (=> (not b_lambda!51033) (not d!487390)))

(declare-fun tb!92991 () Bool)

(declare-fun t!148493 () Bool)

(assert (=> (and b!1616140 (= (toValue!4542 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148493) tb!92991))

(declare-fun result!112086 () Bool)

(assert (=> tb!92991 (= result!112086 (inv!21 (dynLambda!7899 (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun m!1941725 () Bool)

(assert (=> tb!92991 m!1941725))

(assert (=> d!487390 t!148493))

(declare-fun b_and!114813 () Bool)

(assert (= b_and!114805 (and (=> t!148493 result!112086) b_and!114813)))

(declare-fun t!148495 () Bool)

(declare-fun tb!92993 () Bool)

(assert (=> (and b!1616148 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148495) tb!92993))

(declare-fun result!112088 () Bool)

(assert (= result!112088 result!112086))

(assert (=> d!487390 t!148495))

(declare-fun b_and!114815 () Bool)

(assert (= b_and!114807 (and (=> t!148495 result!112088) b_and!114815)))

(declare-fun t!148497 () Bool)

(declare-fun tb!92995 () Bool)

(assert (=> (and b!1616788 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148497) tb!92995))

(declare-fun result!112090 () Bool)

(assert (= result!112090 result!112086))

(assert (=> d!487390 t!148497))

(declare-fun b_and!114817 () Bool)

(assert (= b_and!114809 (and (=> t!148497 result!112090) b_and!114817)))

(declare-fun t!148499 () Bool)

(declare-fun tb!92997 () Bool)

(assert (=> (and b!1616804 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148499) tb!92997))

(declare-fun result!112092 () Bool)

(assert (= result!112092 result!112086))

(assert (=> d!487390 t!148499))

(declare-fun b_and!114819 () Bool)

(assert (= b_and!114811 (and (=> t!148499 result!112092) b_and!114819)))

(assert (=> d!487390 m!1936713))

(declare-fun m!1941727 () Bool)

(assert (=> d!487390 m!1941727))

(assert (=> b!1616259 d!487390))

(declare-fun d!487392 () Bool)

(assert (=> d!487392 (= (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346)))) (fromListB!866 (originalCharacters!3933 (_1!10020 (get!5079 lt!579346)))))))

(declare-fun bs!394342 () Bool)

(assert (= bs!394342 d!487392))

(declare-fun m!1941729 () Bool)

(assert (=> bs!394342 m!1941729))

(assert (=> b!1616259 d!487392))

(assert (=> d!486336 d!486338))

(assert (=> d!486336 d!486342))

(declare-fun d!487394 () Bool)

(assert (=> d!487394 (= ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457))) (Cons!17703 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457))))))

(assert (=> d!486336 d!487394))

(declare-fun d!487396 () Bool)

(assert (=> d!487396 (= (seqFromList!1987 ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457)))) (fromListB!867 ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457)))))))

(declare-fun bs!394343 () Bool)

(assert (= bs!394343 d!487396))

(assert (=> bs!394343 m!1937395))

(declare-fun m!1941731 () Bool)

(assert (=> bs!394343 m!1941731))

(assert (=> d!486336 d!487396))

(assert (=> d!486336 d!486334))

(declare-fun d!487398 () Bool)

(assert (=> d!487398 (= (list!6923 (_1!10019 lt!579277)) (list!6923 (prepend!631 (seqFromList!1987 (t!148288 (t!148288 tokens!457))) (h!23104 (t!148288 tokens!457)))))))

(assert (=> d!487398 true))

(declare-fun _$1!10022 () Unit!28465)

(assert (=> d!487398 (= (choose!9722 (h!23104 (t!148288 tokens!457)) (t!148288 (t!148288 tokens!457)) (_1!10019 lt!579277)) _$1!10022)))

(declare-fun bs!394344 () Bool)

(assert (= bs!394344 d!487398))

(assert (=> bs!394344 m!1936499))

(assert (=> bs!394344 m!1936555))

(assert (=> bs!394344 m!1936555))

(assert (=> bs!394344 m!1936561))

(assert (=> bs!394344 m!1936561))

(assert (=> bs!394344 m!1936563))

(assert (=> d!486336 d!487398))

(assert (=> d!486336 d!486224))

(declare-fun d!487400 () Bool)

(assert (=> d!487400 (= (list!6923 (seqFromList!1987 ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457))))) (list!6928 (c!263123 (seqFromList!1987 ($colon$colon!313 (t!148288 (t!148288 tokens!457)) (h!23104 (t!148288 tokens!457)))))))))

(declare-fun bs!394345 () Bool)

(assert (= bs!394345 d!487400))

(declare-fun m!1941733 () Bool)

(assert (=> bs!394345 m!1941733))

(assert (=> d!486336 d!487400))

(declare-fun b!1618564 () Bool)

(declare-fun e!1038120 () Bool)

(declare-fun e!1038122 () Bool)

(assert (=> b!1618564 (= e!1038120 e!1038122)))

(declare-fun res!722620 () Bool)

(assert (=> b!1618564 (=> res!722620 e!1038122)))

(declare-fun call!105038 () Bool)

(assert (=> b!1618564 (= res!722620 call!105038)))

(declare-fun b!1618565 () Bool)

(declare-fun e!1038119 () Bool)

(assert (=> b!1618565 (= e!1038119 e!1038120)))

(declare-fun res!722622 () Bool)

(assert (=> b!1618565 (=> (not res!722622) (not e!1038120))))

(declare-fun lt!581315 () Bool)

(assert (=> b!1618565 (= res!722622 (not lt!581315))))

(declare-fun d!487402 () Bool)

(declare-fun e!1038117 () Bool)

(assert (=> d!487402 e!1038117))

(declare-fun c!263672 () Bool)

(assert (=> d!487402 (= c!263672 ((_ is EmptyExpr!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun e!1038121 () Bool)

(assert (=> d!487402 (= lt!581315 e!1038121)))

(declare-fun c!263673 () Bool)

(assert (=> d!487402 (= c!263673 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))

(assert (=> d!487402 (validRegex!1764 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))))

(assert (=> d!487402 (= (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) lt!581315)))

(declare-fun bm!105033 () Bool)

(assert (=> bm!105033 (= call!105038 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun b!1618566 () Bool)

(assert (=> b!1618566 (= e!1038121 (nullable!1302 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun b!1618567 () Bool)

(declare-fun e!1038116 () Bool)

(assert (=> b!1618567 (= e!1038116 (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun b!1618568 () Bool)

(assert (=> b!1618568 (= e!1038117 (= lt!581315 call!105038))))

(declare-fun b!1618569 () Bool)

(assert (=> b!1618569 (= e!1038122 (not (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))))))))

(declare-fun b!1618570 () Bool)

(declare-fun e!1038118 () Bool)

(assert (=> b!1618570 (= e!1038118 (not lt!581315))))

(declare-fun b!1618571 () Bool)

(assert (=> b!1618571 (= e!1038121 (matchR!1946 (derivativeStep!1067 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))) (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))))) (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun b!1618572 () Bool)

(declare-fun res!722616 () Bool)

(assert (=> b!1618572 (=> (not res!722616) (not e!1038116))))

(assert (=> b!1618572 (= res!722616 (not call!105038))))

(declare-fun b!1618573 () Bool)

(declare-fun res!722619 () Bool)

(assert (=> b!1618573 (=> res!722619 e!1038122)))

(assert (=> b!1618573 (= res!722619 (not (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))))

(declare-fun b!1618574 () Bool)

(declare-fun res!722617 () Bool)

(assert (=> b!1618574 (=> res!722617 e!1038119)))

(assert (=> b!1618574 (= res!722617 (not ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))))))

(assert (=> b!1618574 (= e!1038118 e!1038119)))

(declare-fun b!1618575 () Bool)

(declare-fun res!722623 () Bool)

(assert (=> b!1618575 (=> (not res!722623) (not e!1038116))))

(assert (=> b!1618575 (= res!722623 (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun b!1618576 () Bool)

(assert (=> b!1618576 (= e!1038117 e!1038118)))

(declare-fun c!263671 () Bool)

(assert (=> b!1618576 (= c!263671 ((_ is EmptyLang!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579577))))))))

(declare-fun b!1618577 () Bool)

(declare-fun res!722618 () Bool)

(assert (=> b!1618577 (=> res!722618 e!1038119)))

(assert (=> b!1618577 (= res!722618 e!1038116)))

(declare-fun res!722621 () Bool)

(assert (=> b!1618577 (=> (not res!722621) (not e!1038116))))

(assert (=> b!1618577 (= res!722621 lt!581315)))

(assert (= (and d!487402 c!263673) b!1618566))

(assert (= (and d!487402 (not c!263673)) b!1618571))

(assert (= (and d!487402 c!263672) b!1618568))

(assert (= (and d!487402 (not c!263672)) b!1618576))

(assert (= (and b!1618576 c!263671) b!1618570))

(assert (= (and b!1618576 (not c!263671)) b!1618574))

(assert (= (and b!1618574 (not res!722617)) b!1618577))

(assert (= (and b!1618577 res!722621) b!1618572))

(assert (= (and b!1618572 res!722616) b!1618575))

(assert (= (and b!1618575 res!722623) b!1618567))

(assert (= (and b!1618577 (not res!722618)) b!1618565))

(assert (= (and b!1618565 res!722622) b!1618564))

(assert (= (and b!1618564 (not res!722620)) b!1618573))

(assert (= (and b!1618573 (not res!722619)) b!1618569))

(assert (= (or b!1618568 b!1618564 b!1618572) bm!105033))

(assert (=> b!1618571 m!1937157))

(declare-fun m!1941735 () Bool)

(assert (=> b!1618571 m!1941735))

(assert (=> b!1618571 m!1941735))

(declare-fun m!1941737 () Bool)

(assert (=> b!1618571 m!1941737))

(assert (=> b!1618571 m!1937157))

(declare-fun m!1941739 () Bool)

(assert (=> b!1618571 m!1941739))

(assert (=> b!1618571 m!1941737))

(assert (=> b!1618571 m!1941739))

(declare-fun m!1941741 () Bool)

(assert (=> b!1618571 m!1941741))

(assert (=> d!487402 m!1937157))

(declare-fun m!1941743 () Bool)

(assert (=> d!487402 m!1941743))

(declare-fun m!1941745 () Bool)

(assert (=> d!487402 m!1941745))

(assert (=> b!1618573 m!1937157))

(assert (=> b!1618573 m!1941739))

(assert (=> b!1618573 m!1941739))

(declare-fun m!1941747 () Bool)

(assert (=> b!1618573 m!1941747))

(assert (=> bm!105033 m!1937157))

(assert (=> bm!105033 m!1941743))

(assert (=> b!1618575 m!1937157))

(assert (=> b!1618575 m!1941739))

(assert (=> b!1618575 m!1941739))

(assert (=> b!1618575 m!1941747))

(assert (=> b!1618569 m!1937157))

(assert (=> b!1618569 m!1941735))

(declare-fun m!1941749 () Bool)

(assert (=> b!1618566 m!1941749))

(assert (=> b!1618567 m!1937157))

(assert (=> b!1618567 m!1941735))

(assert (=> b!1616436 d!487402))

(assert (=> b!1616436 d!486588))

(assert (=> b!1616436 d!486794))

(assert (=> b!1616436 d!486796))

(declare-fun d!487404 () Bool)

(assert (=> d!487404 (= (isEmpty!10719 lt!579262) (not ((_ is Some!3246) lt!579262)))))

(assert (=> d!486184 d!487404))

(declare-fun d!487406 () Bool)

(declare-fun lt!581316 () Int)

(assert (=> d!487406 (>= lt!581316 0)))

(declare-fun e!1038123 () Int)

(assert (=> d!487406 (= lt!581316 e!1038123)))

(declare-fun c!263674 () Bool)

(assert (=> d!487406 (= c!263674 ((_ is Nil!17702) lt!579818))))

(assert (=> d!487406 (= (size!14197 lt!579818) lt!581316)))

(declare-fun b!1618578 () Bool)

(assert (=> b!1618578 (= e!1038123 0)))

(declare-fun b!1618579 () Bool)

(assert (=> b!1618579 (= e!1038123 (+ 1 (size!14197 (t!148287 lt!579818))))))

(assert (= (and d!487406 c!263674) b!1618578))

(assert (= (and d!487406 (not c!263674)) b!1618579))

(declare-fun m!1941751 () Bool)

(assert (=> b!1618579 m!1941751))

(assert (=> b!1616613 d!487406))

(assert (=> b!1616613 d!486630))

(declare-fun d!487408 () Bool)

(declare-fun lt!581317 () Int)

(assert (=> d!487408 (>= lt!581317 0)))

(declare-fun e!1038124 () Int)

(assert (=> d!487408 (= lt!581317 e!1038124)))

(declare-fun c!263675 () Bool)

(assert (=> d!487408 (= c!263675 ((_ is Nil!17702) lt!579259))))

(assert (=> d!487408 (= (size!14197 lt!579259) lt!581317)))

(declare-fun b!1618580 () Bool)

(assert (=> b!1618580 (= e!1038124 0)))

(declare-fun b!1618581 () Bool)

(assert (=> b!1618581 (= e!1038124 (+ 1 (size!14197 (t!148287 lt!579259))))))

(assert (= (and d!487408 c!263675) b!1618580))

(assert (= (and d!487408 (not c!263675)) b!1618581))

(declare-fun m!1941753 () Bool)

(assert (=> b!1618581 m!1941753))

(assert (=> b!1616613 d!487408))

(assert (=> b!1616480 d!486596))

(assert (=> b!1616480 d!486662))

(assert (=> b!1616480 d!486644))

(assert (=> b!1616480 d!486598))

(declare-fun d!487410 () Bool)

(assert (=> d!487410 (= (list!6924 lt!579627) (list!6927 (c!263121 lt!579627)))))

(declare-fun bs!394346 () Bool)

(assert (= bs!394346 d!487410))

(declare-fun m!1941755 () Bool)

(assert (=> bs!394346 m!1941755))

(assert (=> d!486300 d!487410))

(declare-fun d!487412 () Bool)

(declare-fun e!1038127 () Bool)

(assert (=> d!487412 e!1038127))

(declare-fun res!722626 () Bool)

(assert (=> d!487412 (=> (not res!722626) (not e!1038127))))

(declare-fun lt!581320 () BalanceConc!11716)

(assert (=> d!487412 (= res!722626 (= (list!6924 lt!581320) (Cons!17702 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0) Nil!17702)))))

(declare-fun choose!9741 (C!9068) BalanceConc!11716)

(assert (=> d!487412 (= lt!581320 (choose!9741 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))

(assert (=> d!487412 (= (singleton!642 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)) lt!581320)))

(declare-fun b!1618584 () Bool)

(assert (=> b!1618584 (= e!1038127 (isBalanced!1762 (c!263121 lt!581320)))))

(assert (= (and d!487412 res!722626) b!1618584))

(declare-fun m!1941757 () Bool)

(assert (=> d!487412 m!1941757))

(assert (=> d!487412 m!1936483))

(declare-fun m!1941759 () Bool)

(assert (=> d!487412 m!1941759))

(declare-fun m!1941761 () Bool)

(assert (=> b!1618584 m!1941761))

(assert (=> d!486300 d!487412))

(assert (=> b!1616444 d!486800))

(declare-fun d!487414 () Bool)

(assert (=> d!487414 (= (isEmpty!10713 (++!4680 lt!579274 lt!579264)) ((_ is Nil!17702) (++!4680 lt!579274 lt!579264)))))

(assert (=> d!486208 d!487414))

(declare-fun d!487416 () Bool)

(declare-fun lt!581321 () Int)

(assert (=> d!487416 (= lt!581321 (size!14204 (list!6923 (_1!10019 lt!579697))))))

(assert (=> d!487416 (= lt!581321 (size!14205 (c!263123 (_1!10019 lt!579697))))))

(assert (=> d!487416 (= (size!14198 (_1!10019 lt!579697)) lt!581321)))

(declare-fun bs!394347 () Bool)

(assert (= bs!394347 d!487416))

(assert (=> bs!394347 m!1937361))

(assert (=> bs!394347 m!1937361))

(declare-fun m!1941763 () Bool)

(assert (=> bs!394347 m!1941763))

(declare-fun m!1941765 () Bool)

(assert (=> bs!394347 m!1941765))

(assert (=> d!486324 d!487416))

(declare-fun d!487418 () Bool)

(declare-fun e!1038130 () Bool)

(assert (=> d!487418 e!1038130))

(declare-fun res!722627 () Bool)

(assert (=> d!487418 (=> (not res!722627) (not e!1038130))))

(declare-fun lt!581324 () tuple2!17234)

(assert (=> d!487418 (= res!722627 (= (list!6923 (_1!10019 lt!581324)) (list!6923 (_1!10019 (lexRec!363 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(declare-fun e!1038131 () tuple2!17234)

(assert (=> d!487418 (= lt!581324 e!1038131)))

(declare-fun c!263677 () Bool)

(declare-fun lt!581343 () Option!3248)

(assert (=> d!487418 (= c!263677 ((_ is Some!3247) lt!581343))))

(assert (=> d!487418 (= lt!581343 (maxPrefixZipperSequenceV2!258 thiss!17113 rules!1846 (seqFromList!1988 lt!579274) (seqFromList!1988 lt!579274)))))

(declare-fun lt!581331 () Unit!28465)

(declare-fun lt!581339 () Unit!28465)

(assert (=> d!487418 (= lt!581331 lt!581339)))

(declare-fun lt!581335 () List!17772)

(declare-fun lt!581334 () List!17772)

(assert (=> d!487418 (isSuffix!409 lt!581335 (++!4680 lt!581334 lt!581335))))

(assert (=> d!487418 (= lt!581339 (lemmaConcatTwoListThenFSndIsSuffix!310 lt!581334 lt!581335))))

(assert (=> d!487418 (= lt!581335 (list!6924 (seqFromList!1988 lt!579274)))))

(assert (=> d!487418 (= lt!581334 (list!6924 (BalanceConc!11717 Empty!5886)))))

(assert (=> d!487418 (= (lexTailRecV2!538 thiss!17113 rules!1846 (seqFromList!1988 lt!579274) (BalanceConc!11717 Empty!5886) (seqFromList!1988 lt!579274) (BalanceConc!11719 Empty!5887)) lt!581324)))

(declare-fun lt!581351 () BalanceConc!11716)

(declare-fun b!1618585 () Bool)

(assert (=> b!1618585 (= e!1038131 (lexTailRecV2!538 thiss!17113 rules!1846 (seqFromList!1988 lt!579274) lt!581351 (_2!10021 (v!24236 lt!581343)) (append!546 (BalanceConc!11719 Empty!5887) (_1!10021 (v!24236 lt!581343)))))))

(declare-fun lt!581333 () tuple2!17234)

(assert (=> b!1618585 (= lt!581333 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!581343))))))

(declare-fun lt!581349 () List!17772)

(assert (=> b!1618585 (= lt!581349 (list!6924 (BalanceConc!11717 Empty!5886)))))

(declare-fun lt!581353 () List!17772)

(assert (=> b!1618585 (= lt!581353 (list!6924 (charsOf!1768 (_1!10021 (v!24236 lt!581343)))))))

(declare-fun lt!581347 () List!17772)

(assert (=> b!1618585 (= lt!581347 (list!6924 (_2!10021 (v!24236 lt!581343))))))

(declare-fun lt!581326 () Unit!28465)

(assert (=> b!1618585 (= lt!581326 (lemmaConcatAssociativity!1002 lt!581349 lt!581353 lt!581347))))

(assert (=> b!1618585 (= (++!4680 (++!4680 lt!581349 lt!581353) lt!581347) (++!4680 lt!581349 (++!4680 lt!581353 lt!581347)))))

(declare-fun lt!581350 () Unit!28465)

(assert (=> b!1618585 (= lt!581350 lt!581326)))

(declare-fun lt!581338 () Option!3248)

(assert (=> b!1618585 (= lt!581338 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)))))

(declare-fun c!263678 () Bool)

(assert (=> b!1618585 (= c!263678 ((_ is Some!3247) lt!581338))))

(declare-fun e!1038129 () tuple2!17234)

(assert (=> b!1618585 (= (lexRec!363 thiss!17113 rules!1846 (seqFromList!1988 lt!579274)) e!1038129)))

(declare-fun lt!581332 () Unit!28465)

(declare-fun Unit!28575 () Unit!28465)

(assert (=> b!1618585 (= lt!581332 Unit!28575)))

(declare-fun lt!581342 () List!17773)

(assert (=> b!1618585 (= lt!581342 (list!6923 (BalanceConc!11719 Empty!5887)))))

(declare-fun lt!581323 () List!17773)

(assert (=> b!1618585 (= lt!581323 (Cons!17703 (_1!10021 (v!24236 lt!581343)) Nil!17703))))

(declare-fun lt!581328 () List!17773)

(assert (=> b!1618585 (= lt!581328 (list!6923 (_1!10019 lt!581333)))))

(declare-fun lt!581352 () Unit!28465)

(assert (=> b!1618585 (= lt!581352 (lemmaConcatAssociativity!1003 lt!581342 lt!581323 lt!581328))))

(assert (=> b!1618585 (= (++!4683 (++!4683 lt!581342 lt!581323) lt!581328) (++!4683 lt!581342 (++!4683 lt!581323 lt!581328)))))

(declare-fun lt!581341 () Unit!28465)

(assert (=> b!1618585 (= lt!581341 lt!581352)))

(declare-fun lt!581355 () List!17772)

(assert (=> b!1618585 (= lt!581355 (++!4680 (list!6924 (BalanceConc!11717 Empty!5886)) (list!6924 (charsOf!1768 (_1!10021 (v!24236 lt!581343))))))))

(declare-fun lt!581327 () List!17772)

(assert (=> b!1618585 (= lt!581327 (list!6924 (_2!10021 (v!24236 lt!581343))))))

(declare-fun lt!581322 () List!17773)

(assert (=> b!1618585 (= lt!581322 (list!6923 (append!546 (BalanceConc!11719 Empty!5887) (_1!10021 (v!24236 lt!581343)))))))

(declare-fun lt!581336 () Unit!28465)

(assert (=> b!1618585 (= lt!581336 (lemmaLexThenLexPrefix!251 thiss!17113 rules!1846 lt!581355 lt!581327 lt!581322 (list!6923 (_1!10019 lt!581333)) (list!6924 (_2!10019 lt!581333))))))

(assert (=> b!1618585 (= (lexList!815 thiss!17113 rules!1846 lt!581355) (tuple2!17243 lt!581322 Nil!17702))))

(declare-fun lt!581337 () Unit!28465)

(assert (=> b!1618585 (= lt!581337 lt!581336)))

(declare-fun lt!581340 () BalanceConc!11716)

(assert (=> b!1618585 (= lt!581340 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!581343)))))))

(declare-fun lt!581325 () Option!3248)

(assert (=> b!1618585 (= lt!581325 (maxPrefixZipperSequence!643 thiss!17113 rules!1846 lt!581340))))

(declare-fun c!263676 () Bool)

(assert (=> b!1618585 (= c!263676 ((_ is Some!3247) lt!581325))))

(declare-fun e!1038128 () tuple2!17234)

(assert (=> b!1618585 (= (lexRec!363 thiss!17113 rules!1846 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!581343))))) e!1038128)))

(declare-fun lt!581345 () Unit!28465)

(declare-fun Unit!28576 () Unit!28465)

(assert (=> b!1618585 (= lt!581345 Unit!28576)))

(assert (=> b!1618585 (= lt!581351 (++!4679 (BalanceConc!11717 Empty!5886) (charsOf!1768 (_1!10021 (v!24236 lt!581343)))))))

(declare-fun lt!581348 () List!17772)

(assert (=> b!1618585 (= lt!581348 (list!6924 lt!581351))))

(declare-fun lt!581330 () List!17772)

(assert (=> b!1618585 (= lt!581330 (list!6924 (_2!10021 (v!24236 lt!581343))))))

(declare-fun lt!581344 () Unit!28465)

(assert (=> b!1618585 (= lt!581344 (lemmaConcatTwoListThenFSndIsSuffix!310 lt!581348 lt!581330))))

(assert (=> b!1618585 (isSuffix!409 lt!581330 (++!4680 lt!581348 lt!581330))))

(declare-fun lt!581329 () Unit!28465)

(assert (=> b!1618585 (= lt!581329 lt!581344)))

(declare-fun lt!581354 () tuple2!17234)

(declare-fun b!1618586 () Bool)

(assert (=> b!1618586 (= lt!581354 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!581325))))))

(assert (=> b!1618586 (= e!1038128 (tuple2!17235 (prepend!631 (_1!10019 lt!581354) (_1!10021 (v!24236 lt!581325))) (_2!10019 lt!581354)))))

(declare-fun b!1618587 () Bool)

(assert (=> b!1618587 (= e!1038130 (= (list!6924 (_2!10019 lt!581324)) (list!6924 (_2!10019 (lexRec!363 thiss!17113 rules!1846 (seqFromList!1988 lt!579274))))))))

(declare-fun b!1618588 () Bool)

(declare-fun lt!581346 () tuple2!17234)

(assert (=> b!1618588 (= lt!581346 (lexRec!363 thiss!17113 rules!1846 (_2!10021 (v!24236 lt!581338))))))

(assert (=> b!1618588 (= e!1038129 (tuple2!17235 (prepend!631 (_1!10019 lt!581346) (_1!10021 (v!24236 lt!581338))) (_2!10019 lt!581346)))))

(declare-fun b!1618589 () Bool)

(assert (=> b!1618589 (= e!1038129 (tuple2!17235 (BalanceConc!11719 Empty!5887) (seqFromList!1988 lt!579274)))))

(declare-fun b!1618590 () Bool)

(assert (=> b!1618590 (= e!1038128 (tuple2!17235 (BalanceConc!11719 Empty!5887) lt!581340))))

(declare-fun b!1618591 () Bool)

(assert (=> b!1618591 (= e!1038131 (tuple2!17235 (BalanceConc!11719 Empty!5887) (seqFromList!1988 lt!579274)))))

(assert (= (and d!487418 c!263677) b!1618585))

(assert (= (and d!487418 (not c!263677)) b!1618591))

(assert (= (and b!1618585 c!263678) b!1618588))

(assert (= (and b!1618585 (not c!263678)) b!1618589))

(assert (= (and b!1618585 c!263676) b!1618586))

(assert (= (and b!1618585 (not c!263676)) b!1618590))

(assert (= (and d!487418 res!722627) b!1618587))

(declare-fun m!1941767 () Bool)

(assert (=> d!487418 m!1941767))

(declare-fun m!1941769 () Bool)

(assert (=> d!487418 m!1941769))

(assert (=> d!487418 m!1941767))

(declare-fun m!1941771 () Bool)

(assert (=> d!487418 m!1941771))

(assert (=> d!487418 m!1937179))

(declare-fun m!1941773 () Bool)

(assert (=> d!487418 m!1941773))

(declare-fun m!1941775 () Bool)

(assert (=> d!487418 m!1941775))

(assert (=> d!487418 m!1936527))

(assert (=> d!487418 m!1936527))

(declare-fun m!1941777 () Bool)

(assert (=> d!487418 m!1941777))

(assert (=> d!487418 m!1936527))

(assert (=> d!487418 m!1937363))

(assert (=> d!487418 m!1936527))

(declare-fun m!1941779 () Bool)

(assert (=> d!487418 m!1941779))

(declare-fun m!1941781 () Bool)

(assert (=> b!1618587 m!1941781))

(assert (=> b!1618587 m!1936527))

(assert (=> b!1618587 m!1941779))

(declare-fun m!1941783 () Bool)

(assert (=> b!1618587 m!1941783))

(declare-fun m!1941785 () Bool)

(assert (=> b!1618586 m!1941785))

(declare-fun m!1941787 () Bool)

(assert (=> b!1618586 m!1941787))

(declare-fun m!1941789 () Bool)

(assert (=> b!1618588 m!1941789))

(declare-fun m!1941791 () Bool)

(assert (=> b!1618588 m!1941791))

(declare-fun m!1941793 () Bool)

(assert (=> b!1618585 m!1941793))

(assert (=> b!1618585 m!1936527))

(assert (=> b!1618585 m!1941779))

(assert (=> b!1618585 m!1936527))

(declare-fun m!1941795 () Bool)

(assert (=> b!1618585 m!1941795))

(declare-fun m!1941797 () Bool)

(assert (=> b!1618585 m!1941797))

(declare-fun m!1941799 () Bool)

(assert (=> b!1618585 m!1941799))

(declare-fun m!1941801 () Bool)

(assert (=> b!1618585 m!1941801))

(declare-fun m!1941803 () Bool)

(assert (=> b!1618585 m!1941803))

(declare-fun m!1941805 () Bool)

(assert (=> b!1618585 m!1941805))

(declare-fun m!1941807 () Bool)

(assert (=> b!1618585 m!1941807))

(declare-fun m!1941809 () Bool)

(assert (=> b!1618585 m!1941809))

(declare-fun m!1941811 () Bool)

(assert (=> b!1618585 m!1941811))

(assert (=> b!1618585 m!1939511))

(declare-fun m!1941813 () Bool)

(assert (=> b!1618585 m!1941813))

(declare-fun m!1941815 () Bool)

(assert (=> b!1618585 m!1941815))

(declare-fun m!1941817 () Bool)

(assert (=> b!1618585 m!1941817))

(declare-fun m!1941819 () Bool)

(assert (=> b!1618585 m!1941819))

(declare-fun m!1941821 () Bool)

(assert (=> b!1618585 m!1941821))

(declare-fun m!1941823 () Bool)

(assert (=> b!1618585 m!1941823))

(assert (=> b!1618585 m!1936527))

(assert (=> b!1618585 m!1941821))

(declare-fun m!1941825 () Bool)

(assert (=> b!1618585 m!1941825))

(declare-fun m!1941827 () Bool)

(assert (=> b!1618585 m!1941827))

(declare-fun m!1941829 () Bool)

(assert (=> b!1618585 m!1941829))

(declare-fun m!1941831 () Bool)

(assert (=> b!1618585 m!1941831))

(assert (=> b!1618585 m!1941821))

(declare-fun m!1941833 () Bool)

(assert (=> b!1618585 m!1941833))

(assert (=> b!1618585 m!1941807))

(assert (=> b!1618585 m!1941831))

(declare-fun m!1941835 () Bool)

(assert (=> b!1618585 m!1941835))

(declare-fun m!1941837 () Bool)

(assert (=> b!1618585 m!1941837))

(assert (=> b!1618585 m!1941797))

(assert (=> b!1618585 m!1937179))

(assert (=> b!1618585 m!1941827))

(assert (=> b!1618585 m!1941803))

(declare-fun m!1941839 () Bool)

(assert (=> b!1618585 m!1941839))

(assert (=> b!1618585 m!1937179))

(declare-fun m!1941841 () Bool)

(assert (=> b!1618585 m!1941841))

(declare-fun m!1941843 () Bool)

(assert (=> b!1618585 m!1941843))

(declare-fun m!1941845 () Bool)

(assert (=> b!1618585 m!1941845))

(assert (=> b!1618585 m!1941817))

(assert (=> b!1618585 m!1941815))

(declare-fun m!1941847 () Bool)

(assert (=> b!1618585 m!1941847))

(assert (=> b!1618585 m!1941845))

(assert (=> b!1618585 m!1941841))

(declare-fun m!1941849 () Bool)

(assert (=> b!1618585 m!1941849))

(declare-fun m!1941851 () Bool)

(assert (=> b!1618585 m!1941851))

(assert (=> b!1618585 m!1941845))

(assert (=> b!1618585 m!1941849))

(assert (=> d!486324 d!487418))

(declare-fun d!487420 () Bool)

(declare-fun e!1038132 () Bool)

(assert (=> d!487420 e!1038132))

(declare-fun res!722628 () Bool)

(assert (=> d!487420 (=> (not res!722628) (not e!1038132))))

(declare-fun lt!581356 () BalanceConc!11716)

(assert (=> d!487420 (= res!722628 (= (list!6924 lt!581356) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!487420 (= lt!581356 (BalanceConc!11717 (fromList!382 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!487420 (= (fromListB!866 (originalCharacters!3933 (h!23104 tokens!457))) lt!581356)))

(declare-fun b!1618592 () Bool)

(assert (=> b!1618592 (= e!1038132 (isBalanced!1762 (fromList!382 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (= (and d!487420 res!722628) b!1618592))

(declare-fun m!1941853 () Bool)

(assert (=> d!487420 m!1941853))

(declare-fun m!1941855 () Bool)

(assert (=> d!487420 m!1941855))

(assert (=> b!1618592 m!1941855))

(assert (=> b!1618592 m!1941855))

(declare-fun m!1941857 () Bool)

(assert (=> b!1618592 m!1941857))

(assert (=> d!486298 d!487420))

(declare-fun d!487422 () Bool)

(assert (=> d!487422 (= (isEmpty!10713 (originalCharacters!3933 (h!23104 tokens!457))) ((_ is Nil!17702) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!486430 d!487422))

(declare-fun d!487424 () Bool)

(assert (=> d!487424 (= (height!889 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) (ite ((_ is Empty!5886) (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) 0 (ite ((_ is Leaf!8666) (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))) 1 (cheight!6097 (++!4682 (c!263121 lt!579279) (c!263121 lt!579270))))))))

(assert (=> b!1616500 d!487424))

(declare-fun d!487426 () Bool)

(assert (=> d!487426 (= (height!889 (c!263121 lt!579270)) (ite ((_ is Empty!5886) (c!263121 lt!579270)) 0 (ite ((_ is Leaf!8666) (c!263121 lt!579270)) 1 (cheight!6097 (c!263121 lt!579270)))))))

(assert (=> b!1616500 d!487426))

(declare-fun d!487428 () Bool)

(assert (=> d!487428 (= (max!0 (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270))) (ite (< (height!889 (c!263121 lt!579279)) (height!889 (c!263121 lt!579270))) (height!889 (c!263121 lt!579270)) (height!889 (c!263121 lt!579279))))))

(assert (=> b!1616500 d!487428))

(declare-fun d!487430 () Bool)

(assert (=> d!487430 (= (height!889 (c!263121 lt!579279)) (ite ((_ is Empty!5886) (c!263121 lt!579279)) 0 (ite ((_ is Leaf!8666) (c!263121 lt!579279)) 1 (cheight!6097 (c!263121 lt!579279)))))))

(assert (=> b!1616500 d!487430))

(assert (=> b!1616500 d!486668))

(declare-fun d!487432 () Bool)

(declare-fun c!263679 () Bool)

(assert (=> d!487432 (= c!263679 ((_ is Nil!17702) lt!579355))))

(declare-fun e!1038133 () (InoxSet C!9068))

(assert (=> d!487432 (= (content!2450 lt!579355) e!1038133)))

(declare-fun b!1618593 () Bool)

(assert (=> b!1618593 (= e!1038133 ((as const (Array C!9068 Bool)) false))))

(declare-fun b!1618594 () Bool)

(assert (=> b!1618594 (= e!1038133 ((_ map or) (store ((as const (Array C!9068 Bool)) false) (h!23103 lt!579355) true) (content!2450 (t!148287 lt!579355))))))

(assert (= (and d!487432 c!263679) b!1618593))

(assert (= (and d!487432 (not c!263679)) b!1618594))

(declare-fun m!1941859 () Bool)

(assert (=> b!1618594 m!1941859))

(declare-fun m!1941861 () Bool)

(assert (=> b!1618594 m!1941861))

(assert (=> d!486210 d!487432))

(assert (=> d!486210 d!487324))

(declare-fun d!487434 () Bool)

(declare-fun c!263680 () Bool)

(assert (=> d!487434 (= c!263680 ((_ is Nil!17702) lt!579264))))

(declare-fun e!1038134 () (InoxSet C!9068))

(assert (=> d!487434 (= (content!2450 lt!579264) e!1038134)))

(declare-fun b!1618595 () Bool)

(assert (=> b!1618595 (= e!1038134 ((as const (Array C!9068 Bool)) false))))

(declare-fun b!1618596 () Bool)

(assert (=> b!1618596 (= e!1038134 ((_ map or) (store ((as const (Array C!9068 Bool)) false) (h!23103 lt!579264) true) (content!2450 (t!148287 lt!579264))))))

(assert (= (and d!487434 c!263680) b!1618595))

(assert (= (and d!487434 (not c!263680)) b!1618596))

(declare-fun m!1941863 () Bool)

(assert (=> b!1618596 m!1941863))

(declare-fun m!1941865 () Bool)

(assert (=> b!1618596 m!1941865))

(assert (=> d!486210 d!487434))

(declare-fun d!487436 () Bool)

(declare-fun e!1038136 () Bool)

(assert (=> d!487436 e!1038136))

(declare-fun res!722629 () Bool)

(assert (=> d!487436 (=> (not res!722629) (not e!1038136))))

(declare-fun lt!581357 () List!17772)

(assert (=> d!487436 (= res!722629 (= (content!2450 lt!581357) ((_ map or) (content!2450 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (content!2450 (_2!10020 (get!5079 lt!579577))))))))

(declare-fun e!1038135 () List!17772)

(assert (=> d!487436 (= lt!581357 e!1038135)))

(declare-fun c!263681 () Bool)

(assert (=> d!487436 (= c!263681 ((_ is Nil!17702) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))))))

(assert (=> d!487436 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))) (_2!10020 (get!5079 lt!579577))) lt!581357)))

(declare-fun b!1618597 () Bool)

(assert (=> b!1618597 (= e!1038135 (_2!10020 (get!5079 lt!579577)))))

(declare-fun b!1618600 () Bool)

(assert (=> b!1618600 (= e!1038136 (or (not (= (_2!10020 (get!5079 lt!579577)) Nil!17702)) (= lt!581357 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577)))))))))

(declare-fun b!1618598 () Bool)

(assert (=> b!1618598 (= e!1038135 (Cons!17702 (h!23103 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (++!4680 (t!148287 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (_2!10020 (get!5079 lt!579577)))))))

(declare-fun b!1618599 () Bool)

(declare-fun res!722630 () Bool)

(assert (=> b!1618599 (=> (not res!722630) (not e!1038136))))

(assert (=> b!1618599 (= res!722630 (= (size!14197 lt!581357) (+ (size!14197 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579577))))) (size!14197 (_2!10020 (get!5079 lt!579577))))))))

(assert (= (and d!487436 c!263681) b!1618597))

(assert (= (and d!487436 (not c!263681)) b!1618598))

(assert (= (and d!487436 res!722629) b!1618599))

(assert (= (and b!1618599 res!722630) b!1618600))

(declare-fun m!1941867 () Bool)

(assert (=> d!487436 m!1941867))

(assert (=> d!487436 m!1937157))

(declare-fun m!1941869 () Bool)

(assert (=> d!487436 m!1941869))

(declare-fun m!1941871 () Bool)

(assert (=> d!487436 m!1941871))

(declare-fun m!1941873 () Bool)

(assert (=> b!1618598 m!1941873))

(declare-fun m!1941875 () Bool)

(assert (=> b!1618599 m!1941875))

(assert (=> b!1618599 m!1937157))

(declare-fun m!1941877 () Bool)

(assert (=> b!1618599 m!1941877))

(assert (=> b!1618599 m!1937169))

(assert (=> b!1616432 d!487436))

(assert (=> b!1616432 d!486794))

(assert (=> b!1616432 d!486796))

(assert (=> b!1616432 d!486588))

(declare-fun d!487438 () Bool)

(declare-fun lt!581360 () C!9068)

(declare-fun contains!3100 (List!17772 C!9068) Bool)

(assert (=> d!487438 (contains!3100 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) lt!581360)))

(declare-fun e!1038142 () C!9068)

(assert (=> d!487438 (= lt!581360 e!1038142)))

(declare-fun c!263684 () Bool)

(assert (=> d!487438 (= c!263684 (= 0 0))))

(declare-fun e!1038141 () Bool)

(assert (=> d!487438 e!1038141))

(declare-fun res!722633 () Bool)

(assert (=> d!487438 (=> (not res!722633) (not e!1038141))))

(assert (=> d!487438 (= res!722633 (<= 0 0))))

(assert (=> d!487438 (= (apply!4467 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) 0) lt!581360)))

(declare-fun b!1618607 () Bool)

(assert (=> b!1618607 (= e!1038141 (< 0 (size!14197 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1618608 () Bool)

(assert (=> b!1618608 (= e!1038142 (head!3362 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(declare-fun b!1618609 () Bool)

(assert (=> b!1618609 (= e!1038142 (apply!4467 (tail!2332 (list!6924 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) (- 0 1)))))

(assert (= (and d!487438 res!722633) b!1618607))

(assert (= (and d!487438 c!263684) b!1618608))

(assert (= (and d!487438 (not c!263684)) b!1618609))

(assert (=> d!487438 m!1936965))

(declare-fun m!1941879 () Bool)

(assert (=> d!487438 m!1941879))

(assert (=> b!1618607 m!1936965))

(assert (=> b!1618607 m!1941081))

(assert (=> b!1618608 m!1936965))

(assert (=> b!1618608 m!1939707))

(assert (=> b!1618609 m!1936965))

(assert (=> b!1618609 m!1939711))

(assert (=> b!1618609 m!1939711))

(declare-fun m!1941881 () Bool)

(assert (=> b!1618609 m!1941881))

(assert (=> d!486306 d!487438))

(assert (=> d!486306 d!486928))

(declare-fun bm!105036 () Bool)

(declare-fun c!263693 () Bool)

(declare-fun c!263692 () Bool)

(assert (=> bm!105036 (= c!263693 c!263692)))

(declare-fun e!1038154 () Int)

(declare-fun call!105041 () C!9068)

(assert (=> bm!105036 (= call!105041 (apply!4468 (ite c!263692 (left!14251 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) (right!14581 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) e!1038154))))

(declare-fun b!1618627 () Bool)

(declare-fun e!1038156 () C!9068)

(assert (=> b!1618627 (= e!1038156 call!105041)))

(declare-fun b!1618629 () Bool)

(declare-fun e!1038155 () Bool)

(assert (=> b!1618629 (= e!1038155 (< 0 (size!14206 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1618630 () Bool)

(declare-fun e!1038153 () C!9068)

(assert (=> b!1618630 (= e!1038153 e!1038156)))

(declare-fun lt!581372 () Bool)

(declare-fun appendIndex!209 (List!17772 List!17772 Int) Bool)

(assert (=> b!1618630 (= lt!581372 (appendIndex!209 (list!6927 (left!14251 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) (list!6927 (right!14581 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))))) 0))))

(assert (=> b!1618630 (= c!263692 (< 0 (size!14206 (left!14251 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun b!1618631 () Bool)

(assert (=> b!1618631 (= e!1038154 0)))

(declare-fun d!487440 () Bool)

(declare-fun lt!581371 () C!9068)

(assert (=> d!487440 (= lt!581371 (apply!4467 (list!6927 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) 0))))

(assert (=> d!487440 (= lt!581371 e!1038153)))

(declare-fun c!263691 () Bool)

(assert (=> d!487440 (= c!263691 ((_ is Leaf!8666) (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487440 e!1038155))

(declare-fun res!722639 () Bool)

(assert (=> d!487440 (=> (not res!722639) (not e!1038155))))

(assert (=> d!487440 (= res!722639 (<= 0 0))))

(assert (=> d!487440 (= (apply!4468 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457)))) 0) lt!581371)))

(declare-fun b!1618628 () Bool)

(assert (=> b!1618628 (= e!1038153 (apply!4472 (xs!8714 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))) 0))))

(declare-fun b!1618632 () Bool)

(assert (=> b!1618632 (= e!1038154 (- 0 (size!14206 (left!14251 (c!263121 (charsOf!1768 (h!23104 (t!148288 tokens!457))))))))))

(declare-fun b!1618633 () Bool)

(assert (=> b!1618633 (= e!1038156 call!105041)))

(assert (= (and d!487440 res!722639) b!1618629))

(assert (= (and d!487440 c!263691) b!1618628))

(assert (= (and d!487440 (not c!263691)) b!1618630))

(assert (= (and b!1618630 c!263692) b!1618633))

(assert (= (and b!1618630 (not c!263692)) b!1618627))

(assert (= (or b!1618633 b!1618627) bm!105036))

(assert (= (and bm!105036 c!263693) b!1618631))

(assert (= (and bm!105036 (not c!263693)) b!1618632))

(declare-fun m!1941899 () Bool)

(assert (=> b!1618630 m!1941899))

(declare-fun m!1941901 () Bool)

(assert (=> b!1618630 m!1941901))

(assert (=> b!1618630 m!1941899))

(assert (=> b!1618630 m!1941901))

(declare-fun m!1941903 () Bool)

(assert (=> b!1618630 m!1941903))

(declare-fun m!1941905 () Bool)

(assert (=> b!1618630 m!1941905))

(assert (=> b!1618632 m!1941905))

(declare-fun m!1941907 () Bool)

(assert (=> b!1618628 m!1941907))

(assert (=> b!1618629 m!1941551))

(declare-fun m!1941909 () Bool)

(assert (=> bm!105036 m!1941909))

(assert (=> d!487440 m!1939643))

(assert (=> d!487440 m!1939643))

(declare-fun m!1941911 () Bool)

(assert (=> d!487440 m!1941911))

(assert (=> d!486306 d!487440))

(assert (=> d!486226 d!486428))

(assert (=> d!486226 d!486560))

(assert (=> d!486226 d!486568))

(assert (=> d!486226 d!486372))

(declare-fun d!487448 () Bool)

(assert (=> d!487448 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457)))))) (list!6928 (c!263123 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (seqFromList!1987 (t!148288 tokens!457))))))))))

(declare-fun bs!394350 () Bool)

(assert (= bs!394350 d!487448))

(declare-fun m!1941913 () Bool)

(assert (=> bs!394350 m!1941913))

(assert (=> d!486226 d!487448))

(declare-fun d!487450 () Bool)

(declare-fun lt!581373 () Int)

(assert (=> d!487450 (= lt!581373 (size!14197 (list!6924 (_2!10019 lt!579697))))))

(assert (=> d!487450 (= lt!581373 (size!14206 (c!263121 (_2!10019 lt!579697))))))

(assert (=> d!487450 (= (size!14200 (_2!10019 lt!579697)) lt!581373)))

(declare-fun bs!394351 () Bool)

(assert (= bs!394351 d!487450))

(assert (=> bs!394351 m!1937369))

(assert (=> bs!394351 m!1937369))

(declare-fun m!1941915 () Bool)

(assert (=> bs!394351 m!1941915))

(declare-fun m!1941917 () Bool)

(assert (=> bs!394351 m!1941917))

(assert (=> b!1616562 d!487450))

(declare-fun d!487452 () Bool)

(declare-fun lt!581374 () Int)

(assert (=> d!487452 (= lt!581374 (size!14197 (list!6924 (seqFromList!1988 lt!579274))))))

(assert (=> d!487452 (= lt!581374 (size!14206 (c!263121 (seqFromList!1988 lt!579274))))))

(assert (=> d!487452 (= (size!14200 (seqFromList!1988 lt!579274)) lt!581374)))

(declare-fun bs!394352 () Bool)

(assert (= bs!394352 d!487452))

(assert (=> bs!394352 m!1936527))

(assert (=> bs!394352 m!1937363))

(assert (=> bs!394352 m!1937363))

(assert (=> bs!394352 m!1938491))

(declare-fun m!1941919 () Bool)

(assert (=> bs!394352 m!1941919))

(assert (=> b!1616562 d!487452))

(declare-fun d!487454 () Bool)

(assert (=> d!487454 (= (head!3362 lt!579274) (h!23103 lt!579274))))

(assert (=> b!1616396 d!487454))

(declare-fun d!487456 () Bool)

(assert (=> d!487456 (= (head!3362 lt!579275) (h!23103 lt!579275))))

(assert (=> b!1616396 d!487456))

(declare-fun bm!105037 () Bool)

(declare-fun call!105042 () Bool)

(declare-fun call!105043 () Bool)

(assert (=> bm!105037 (= call!105042 call!105043)))

(declare-fun b!1618634 () Bool)

(declare-fun res!722642 () Bool)

(declare-fun e!1038158 () Bool)

(assert (=> b!1618634 (=> res!722642 e!1038158)))

(assert (=> b!1618634 (= res!722642 (not ((_ is Concat!7657) (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))))

(declare-fun e!1038159 () Bool)

(assert (=> b!1618634 (= e!1038159 e!1038158)))

(declare-fun b!1618635 () Bool)

(declare-fun e!1038157 () Bool)

(declare-fun call!105044 () Bool)

(assert (=> b!1618635 (= e!1038157 call!105044)))

(declare-fun b!1618636 () Bool)

(declare-fun e!1038163 () Bool)

(assert (=> b!1618636 (= e!1038163 call!105043)))

(declare-fun c!263695 () Bool)

(declare-fun bm!105038 () Bool)

(assert (=> bm!105038 (= call!105044 (validRegex!1764 (ite c!263695 (regOne!9407 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))) (regTwo!9406 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))))

(declare-fun b!1618637 () Bool)

(declare-fun e!1038160 () Bool)

(declare-fun e!1038161 () Bool)

(assert (=> b!1618637 (= e!1038160 e!1038161)))

(declare-fun c!263694 () Bool)

(assert (=> b!1618637 (= c!263694 ((_ is Star!4447) (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))

(declare-fun d!487458 () Bool)

(declare-fun res!722641 () Bool)

(assert (=> d!487458 (=> res!722641 e!1038160)))

(assert (=> d!487458 (= res!722641 ((_ is ElementMatch!4447) (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))

(assert (=> d!487458 (= (validRegex!1764 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))) e!1038160)))

(declare-fun b!1618638 () Bool)

(assert (=> b!1618638 (= e!1038161 e!1038163)))

(declare-fun res!722640 () Bool)

(assert (=> b!1618638 (= res!722640 (not (nullable!1302 (reg!4776 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))))

(assert (=> b!1618638 (=> (not res!722640) (not e!1038163))))

(declare-fun b!1618639 () Bool)

(declare-fun e!1038162 () Bool)

(assert (=> b!1618639 (= e!1038162 call!105042)))

(declare-fun b!1618640 () Bool)

(assert (=> b!1618640 (= e!1038161 e!1038159)))

(assert (=> b!1618640 (= c!263695 ((_ is Union!4447) (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))))

(declare-fun b!1618641 () Bool)

(declare-fun res!722643 () Bool)

(assert (=> b!1618641 (=> (not res!722643) (not e!1038162))))

(assert (=> b!1618641 (= res!722643 call!105044)))

(assert (=> b!1618641 (= e!1038159 e!1038162)))

(declare-fun bm!105039 () Bool)

(assert (=> bm!105039 (= call!105043 (validRegex!1764 (ite c!263694 (reg!4776 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))) (ite c!263695 (regTwo!9407 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457))))))) (regOne!9406 (ite c!263134 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (ite c!263135 (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))))))))))

(declare-fun b!1618642 () Bool)

(assert (=> b!1618642 (= e!1038158 e!1038157)))

(declare-fun res!722644 () Bool)

(assert (=> b!1618642 (=> (not res!722644) (not e!1038157))))

(assert (=> b!1618642 (= res!722644 call!105042)))

(assert (= (and d!487458 (not res!722641)) b!1618637))

(assert (= (and b!1618637 c!263694) b!1618638))

(assert (= (and b!1618637 (not c!263694)) b!1618640))

(assert (= (and b!1618638 res!722640) b!1618636))

(assert (= (and b!1618640 c!263695) b!1618641))

(assert (= (and b!1618640 (not c!263695)) b!1618634))

(assert (= (and b!1618641 res!722643) b!1618639))

(assert (= (and b!1618634 (not res!722642)) b!1618642))

(assert (= (and b!1618642 res!722644) b!1618635))

(assert (= (or b!1618639 b!1618642) bm!105037))

(assert (= (or b!1618641 b!1618635) bm!105038))

(assert (= (or b!1618636 bm!105037) bm!105039))

(declare-fun m!1941921 () Bool)

(assert (=> bm!105038 m!1941921))

(declare-fun m!1941923 () Bool)

(assert (=> b!1618638 m!1941923))

(declare-fun m!1941925 () Bool)

(assert (=> bm!105039 m!1941925))

(assert (=> bm!104843 d!487458))

(declare-fun b!1618643 () Bool)

(declare-fun e!1038168 () Bool)

(declare-fun e!1038170 () Bool)

(assert (=> b!1618643 (= e!1038168 e!1038170)))

(declare-fun res!722649 () Bool)

(assert (=> b!1618643 (=> res!722649 e!1038170)))

(declare-fun call!105045 () Bool)

(assert (=> b!1618643 (= res!722649 call!105045)))

(declare-fun b!1618644 () Bool)

(declare-fun e!1038167 () Bool)

(assert (=> b!1618644 (= e!1038167 e!1038168)))

(declare-fun res!722651 () Bool)

(assert (=> b!1618644 (=> (not res!722651) (not e!1038168))))

(declare-fun lt!581377 () Bool)

(assert (=> b!1618644 (= res!722651 (not lt!581377))))

(declare-fun d!487460 () Bool)

(declare-fun e!1038165 () Bool)

(assert (=> d!487460 e!1038165))

(declare-fun c!263697 () Bool)

(assert (=> d!487460 (= c!263697 ((_ is EmptyExpr!4447) (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))))

(declare-fun e!1038169 () Bool)

(assert (=> d!487460 (= lt!581377 e!1038169)))

(declare-fun c!263698 () Bool)

(assert (=> d!487460 (= c!263698 (isEmpty!10713 (list!6924 (charsOf!1768 lt!579806))))))

(assert (=> d!487460 (validRegex!1764 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))

(assert (=> d!487460 (= (matchR!1946 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))) (list!6924 (charsOf!1768 lt!579806))) lt!581377)))

(declare-fun bm!105040 () Bool)

(assert (=> bm!105040 (= call!105045 (isEmpty!10713 (list!6924 (charsOf!1768 lt!579806))))))

(declare-fun b!1618645 () Bool)

(assert (=> b!1618645 (= e!1038169 (nullable!1302 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))))

(declare-fun b!1618646 () Bool)

(declare-fun e!1038164 () Bool)

(assert (=> b!1618646 (= e!1038164 (= (head!3362 (list!6924 (charsOf!1768 lt!579806))) (c!263122 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))))

(declare-fun b!1618647 () Bool)

(assert (=> b!1618647 (= e!1038165 (= lt!581377 call!105045))))

(declare-fun b!1618648 () Bool)

(assert (=> b!1618648 (= e!1038170 (not (= (head!3362 (list!6924 (charsOf!1768 lt!579806))) (c!263122 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))))))

(declare-fun b!1618649 () Bool)

(declare-fun e!1038166 () Bool)

(assert (=> b!1618649 (= e!1038166 (not lt!581377))))

(declare-fun b!1618650 () Bool)

(assert (=> b!1618650 (= e!1038169 (matchR!1946 (derivativeStep!1067 (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))) (head!3362 (list!6924 (charsOf!1768 lt!579806)))) (tail!2332 (list!6924 (charsOf!1768 lt!579806)))))))

(declare-fun b!1618651 () Bool)

(declare-fun res!722645 () Bool)

(assert (=> b!1618651 (=> (not res!722645) (not e!1038164))))

(assert (=> b!1618651 (= res!722645 (not call!105045))))

(declare-fun b!1618652 () Bool)

(declare-fun res!722648 () Bool)

(assert (=> b!1618652 (=> res!722648 e!1038170)))

(assert (=> b!1618652 (= res!722648 (not (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 lt!579806))))))))

(declare-fun b!1618653 () Bool)

(declare-fun res!722646 () Bool)

(assert (=> b!1618653 (=> res!722646 e!1038167)))

(assert (=> b!1618653 (= res!722646 (not ((_ is ElementMatch!4447) (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806))))))))))

(assert (=> b!1618653 (= e!1038166 e!1038167)))

(declare-fun b!1618654 () Bool)

(declare-fun res!722652 () Bool)

(assert (=> b!1618654 (=> (not res!722652) (not e!1038164))))

(assert (=> b!1618654 (= res!722652 (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 lt!579806)))))))

(declare-fun b!1618655 () Bool)

(assert (=> b!1618655 (= e!1038165 e!1038166)))

(declare-fun c!263696 () Bool)

(assert (=> b!1618655 (= c!263696 ((_ is EmptyLang!4447) (regex!3119 (get!5083 (getRuleFromTag!270 thiss!17113 rules!1846 (tag!3395 (rule!4939 lt!579806)))))))))

(declare-fun b!1618656 () Bool)

(declare-fun res!722647 () Bool)

(assert (=> b!1618656 (=> res!722647 e!1038167)))

(assert (=> b!1618656 (= res!722647 e!1038164)))

(declare-fun res!722650 () Bool)

(assert (=> b!1618656 (=> (not res!722650) (not e!1038164))))

(assert (=> b!1618656 (= res!722650 lt!581377)))

(assert (= (and d!487460 c!263698) b!1618645))

(assert (= (and d!487460 (not c!263698)) b!1618650))

(assert (= (and d!487460 c!263697) b!1618647))

(assert (= (and d!487460 (not c!263697)) b!1618655))

(assert (= (and b!1618655 c!263696) b!1618649))

(assert (= (and b!1618655 (not c!263696)) b!1618653))

(assert (= (and b!1618653 (not res!722646)) b!1618656))

(assert (= (and b!1618656 res!722650) b!1618651))

(assert (= (and b!1618651 res!722645) b!1618654))

(assert (= (and b!1618654 res!722652) b!1618646))

(assert (= (and b!1618656 (not res!722647)) b!1618644))

(assert (= (and b!1618644 res!722651) b!1618643))

(assert (= (and b!1618643 (not res!722649)) b!1618652))

(assert (= (and b!1618652 (not res!722648)) b!1618648))

(assert (= (or b!1618647 b!1618643 b!1618651) bm!105040))

(assert (=> b!1618650 m!1937509))

(declare-fun m!1941929 () Bool)

(assert (=> b!1618650 m!1941929))

(assert (=> b!1618650 m!1941929))

(declare-fun m!1941931 () Bool)

(assert (=> b!1618650 m!1941931))

(assert (=> b!1618650 m!1937509))

(declare-fun m!1941933 () Bool)

(assert (=> b!1618650 m!1941933))

(assert (=> b!1618650 m!1941931))

(assert (=> b!1618650 m!1941933))

(declare-fun m!1941935 () Bool)

(assert (=> b!1618650 m!1941935))

(assert (=> d!487460 m!1937509))

(declare-fun m!1941937 () Bool)

(assert (=> d!487460 m!1941937))

(declare-fun m!1941939 () Bool)

(assert (=> d!487460 m!1941939))

(assert (=> b!1618652 m!1937509))

(assert (=> b!1618652 m!1941933))

(assert (=> b!1618652 m!1941933))

(declare-fun m!1941941 () Bool)

(assert (=> b!1618652 m!1941941))

(assert (=> bm!105040 m!1937509))

(assert (=> bm!105040 m!1941937))

(assert (=> b!1618654 m!1937509))

(assert (=> b!1618654 m!1941933))

(assert (=> b!1618654 m!1941933))

(assert (=> b!1618654 m!1941941))

(assert (=> b!1618648 m!1937509))

(assert (=> b!1618648 m!1941929))

(declare-fun m!1941943 () Bool)

(assert (=> b!1618645 m!1941943))

(assert (=> b!1618646 m!1937509))

(assert (=> b!1618646 m!1941929))

(assert (=> b!1616606 d!487460))

(assert (=> b!1616606 d!486886))

(assert (=> b!1616606 d!486870))

(assert (=> b!1616606 d!487292))

(assert (=> b!1616606 d!487290))

(declare-fun b!1618666 () Bool)

(declare-fun e!1038179 () Bool)

(declare-fun e!1038181 () Bool)

(assert (=> b!1618666 (= e!1038179 e!1038181)))

(declare-fun res!722664 () Bool)

(assert (=> b!1618666 (=> res!722664 e!1038181)))

(declare-fun call!105046 () Bool)

(assert (=> b!1618666 (= res!722664 call!105046)))

(declare-fun b!1618667 () Bool)

(declare-fun e!1038178 () Bool)

(assert (=> b!1618667 (= e!1038178 e!1038179)))

(declare-fun res!722666 () Bool)

(assert (=> b!1618667 (=> (not res!722666) (not e!1038179))))

(declare-fun lt!581384 () Bool)

(assert (=> b!1618667 (= res!722666 (not lt!581384))))

(declare-fun d!487464 () Bool)

(declare-fun e!1038176 () Bool)

(assert (=> d!487464 e!1038176))

(declare-fun c!263701 () Bool)

(assert (=> d!487464 (= c!263701 ((_ is EmptyExpr!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun e!1038180 () Bool)

(assert (=> d!487464 (= lt!581384 e!1038180)))

(declare-fun c!263702 () Bool)

(assert (=> d!487464 (= c!263702 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))

(assert (=> d!487464 (validRegex!1764 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))))

(assert (=> d!487464 (= (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) lt!581384)))

(declare-fun bm!105041 () Bool)

(assert (=> bm!105041 (= call!105046 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun b!1618668 () Bool)

(assert (=> b!1618668 (= e!1038180 (nullable!1302 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun b!1618669 () Bool)

(declare-fun e!1038175 () Bool)

(assert (=> b!1618669 (= e!1038175 (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun b!1618670 () Bool)

(assert (=> b!1618670 (= e!1038176 (= lt!581384 call!105046))))

(declare-fun b!1618671 () Bool)

(assert (=> b!1618671 (= e!1038181 (not (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))))))))

(declare-fun b!1618672 () Bool)

(declare-fun e!1038177 () Bool)

(assert (=> b!1618672 (= e!1038177 (not lt!581384))))

(declare-fun b!1618673 () Bool)

(assert (=> b!1618673 (= e!1038180 (matchR!1946 (derivativeStep!1067 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))) (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))))) (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun b!1618674 () Bool)

(declare-fun res!722660 () Bool)

(assert (=> b!1618674 (=> (not res!722660) (not e!1038175))))

(assert (=> b!1618674 (= res!722660 (not call!105046))))

(declare-fun b!1618675 () Bool)

(declare-fun res!722663 () Bool)

(assert (=> b!1618675 (=> res!722663 e!1038181)))

(assert (=> b!1618675 (= res!722663 (not (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))))

(declare-fun b!1618676 () Bool)

(declare-fun res!722661 () Bool)

(assert (=> b!1618676 (=> res!722661 e!1038178)))

(assert (=> b!1618676 (= res!722661 (not ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))))))

(assert (=> b!1618676 (= e!1038177 e!1038178)))

(declare-fun b!1618677 () Bool)

(declare-fun res!722667 () Bool)

(assert (=> b!1618677 (=> (not res!722667) (not e!1038175))))

(assert (=> b!1618677 (= res!722667 (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun b!1618678 () Bool)

(assert (=> b!1618678 (= e!1038176 e!1038177)))

(declare-fun c!263700 () Bool)

(assert (=> b!1618678 (= c!263700 ((_ is EmptyLang!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579346))))))))

(declare-fun b!1618679 () Bool)

(declare-fun res!722662 () Bool)

(assert (=> b!1618679 (=> res!722662 e!1038178)))

(assert (=> b!1618679 (= res!722662 e!1038175)))

(declare-fun res!722665 () Bool)

(assert (=> b!1618679 (=> (not res!722665) (not e!1038175))))

(assert (=> b!1618679 (= res!722665 lt!581384)))

(assert (= (and d!487464 c!263702) b!1618668))

(assert (= (and d!487464 (not c!263702)) b!1618673))

(assert (= (and d!487464 c!263701) b!1618670))

(assert (= (and d!487464 (not c!263701)) b!1618678))

(assert (= (and b!1618678 c!263700) b!1618672))

(assert (= (and b!1618678 (not c!263700)) b!1618676))

(assert (= (and b!1618676 (not res!722661)) b!1618679))

(assert (= (and b!1618679 res!722665) b!1618674))

(assert (= (and b!1618674 res!722660) b!1618677))

(assert (= (and b!1618677 res!722667) b!1618669))

(assert (= (and b!1618679 (not res!722662)) b!1618667))

(assert (= (and b!1618667 res!722666) b!1618666))

(assert (= (and b!1618666 (not res!722664)) b!1618675))

(assert (= (and b!1618675 (not res!722663)) b!1618671))

(assert (= (or b!1618670 b!1618666 b!1618674) bm!105041))

(assert (=> b!1618673 m!1936719))

(declare-fun m!1941945 () Bool)

(assert (=> b!1618673 m!1941945))

(assert (=> b!1618673 m!1941945))

(declare-fun m!1941949 () Bool)

(assert (=> b!1618673 m!1941949))

(assert (=> b!1618673 m!1936719))

(declare-fun m!1941953 () Bool)

(assert (=> b!1618673 m!1941953))

(assert (=> b!1618673 m!1941949))

(assert (=> b!1618673 m!1941953))

(declare-fun m!1941957 () Bool)

(assert (=> b!1618673 m!1941957))

(assert (=> d!487464 m!1936719))

(declare-fun m!1941961 () Bool)

(assert (=> d!487464 m!1941961))

(declare-fun m!1941965 () Bool)

(assert (=> d!487464 m!1941965))

(assert (=> b!1618675 m!1936719))

(assert (=> b!1618675 m!1941953))

(assert (=> b!1618675 m!1941953))

(declare-fun m!1941969 () Bool)

(assert (=> b!1618675 m!1941969))

(assert (=> bm!105041 m!1936719))

(assert (=> bm!105041 m!1941961))

(assert (=> b!1618677 m!1936719))

(assert (=> b!1618677 m!1941953))

(assert (=> b!1618677 m!1941953))

(assert (=> b!1618677 m!1941969))

(assert (=> b!1618671 m!1936719))

(assert (=> b!1618671 m!1941945))

(declare-fun m!1941977 () Bool)

(assert (=> b!1618668 m!1941977))

(assert (=> b!1618669 m!1936719))

(assert (=> b!1618669 m!1941945))

(assert (=> b!1616262 d!487464))

(assert (=> b!1616262 d!486556))

(assert (=> b!1616262 d!486820))

(assert (=> b!1616262 d!486822))

(declare-fun b!1618682 () Bool)

(declare-fun e!1038183 () List!17773)

(assert (=> b!1618682 (= e!1038183 (list!6930 (xs!8715 (c!263123 lt!579280))))))

(declare-fun b!1618680 () Bool)

(declare-fun e!1038182 () List!17773)

(assert (=> b!1618680 (= e!1038182 Nil!17703)))

(declare-fun b!1618683 () Bool)

(assert (=> b!1618683 (= e!1038183 (++!4683 (list!6928 (left!14252 (c!263123 lt!579280))) (list!6928 (right!14582 (c!263123 lt!579280)))))))

(declare-fun d!487466 () Bool)

(declare-fun c!263703 () Bool)

(assert (=> d!487466 (= c!263703 ((_ is Empty!5887) (c!263123 lt!579280)))))

(assert (=> d!487466 (= (list!6928 (c!263123 lt!579280)) e!1038182)))

(declare-fun b!1618681 () Bool)

(assert (=> b!1618681 (= e!1038182 e!1038183)))

(declare-fun c!263704 () Bool)

(assert (=> b!1618681 (= c!263704 ((_ is Leaf!8667) (c!263123 lt!579280)))))

(assert (= (and d!487466 c!263703) b!1618680))

(assert (= (and d!487466 (not c!263703)) b!1618681))

(assert (= (and b!1618681 c!263704) b!1618682))

(assert (= (and b!1618681 (not c!263704)) b!1618683))

(declare-fun m!1942001 () Bool)

(assert (=> b!1618682 m!1942001))

(declare-fun m!1942003 () Bool)

(assert (=> b!1618683 m!1942003))

(declare-fun m!1942007 () Bool)

(assert (=> b!1618683 m!1942007))

(assert (=> b!1618683 m!1942003))

(assert (=> b!1618683 m!1942007))

(declare-fun m!1942009 () Bool)

(assert (=> b!1618683 m!1942009))

(assert (=> d!486340 d!487466))

(declare-fun b!1618684 () Bool)

(declare-fun e!1038188 () Bool)

(declare-fun e!1038190 () Bool)

(assert (=> b!1618684 (= e!1038188 e!1038190)))

(declare-fun res!722672 () Bool)

(assert (=> b!1618684 (=> res!722672 e!1038190)))

(declare-fun call!105047 () Bool)

(assert (=> b!1618684 (= res!722672 call!105047)))

(declare-fun b!1618685 () Bool)

(declare-fun e!1038187 () Bool)

(assert (=> b!1618685 (= e!1038187 e!1038188)))

(declare-fun res!722674 () Bool)

(assert (=> b!1618685 (=> (not res!722674) (not e!1038188))))

(declare-fun lt!581385 () Bool)

(assert (=> b!1618685 (= res!722674 (not lt!581385))))

(declare-fun d!487468 () Bool)

(declare-fun e!1038185 () Bool)

(assert (=> d!487468 e!1038185))

(declare-fun c!263706 () Bool)

(assert (=> d!487468 (= c!263706 ((_ is EmptyExpr!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun e!1038189 () Bool)

(assert (=> d!487468 (= lt!581385 e!1038189)))

(declare-fun c!263707 () Bool)

(assert (=> d!487468 (= c!263707 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))

(assert (=> d!487468 (validRegex!1764 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))))

(assert (=> d!487468 (= (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) lt!581385)))

(declare-fun bm!105042 () Bool)

(assert (=> bm!105042 (= call!105047 (isEmpty!10713 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun b!1618686 () Bool)

(assert (=> b!1618686 (= e!1038189 (nullable!1302 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun b!1618687 () Bool)

(declare-fun e!1038184 () Bool)

(assert (=> b!1618687 (= e!1038184 (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun b!1618688 () Bool)

(assert (=> b!1618688 (= e!1038185 (= lt!581385 call!105047))))

(declare-fun b!1618689 () Bool)

(assert (=> b!1618689 (= e!1038190 (not (= (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (c!263122 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))))))))

(declare-fun b!1618690 () Bool)

(declare-fun e!1038186 () Bool)

(assert (=> b!1618690 (= e!1038186 (not lt!581385))))

(declare-fun b!1618691 () Bool)

(assert (=> b!1618691 (= e!1038189 (matchR!1946 (derivativeStep!1067 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))) (head!3362 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))))) (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun b!1618692 () Bool)

(declare-fun res!722668 () Bool)

(assert (=> b!1618692 (=> (not res!722668) (not e!1038184))))

(assert (=> b!1618692 (= res!722668 (not call!105047))))

(declare-fun b!1618693 () Bool)

(declare-fun res!722671 () Bool)

(assert (=> b!1618693 (=> res!722671 e!1038190)))

(assert (=> b!1618693 (= res!722671 (not (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))))

(declare-fun b!1618694 () Bool)

(declare-fun res!722669 () Bool)

(assert (=> b!1618694 (=> res!722669 e!1038187)))

(assert (=> b!1618694 (= res!722669 (not ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))))))

(assert (=> b!1618694 (= e!1038186 e!1038187)))

(declare-fun b!1618695 () Bool)

(declare-fun res!722675 () Bool)

(assert (=> b!1618695 (=> (not res!722675) (not e!1038184))))

(assert (=> b!1618695 (= res!722675 (isEmpty!10713 (tail!2332 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun b!1618696 () Bool)

(assert (=> b!1618696 (= e!1038185 e!1038186)))

(declare-fun c!263705 () Bool)

(assert (=> b!1618696 (= c!263705 ((_ is EmptyLang!4447) (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!579341))))))))

(declare-fun b!1618697 () Bool)

(declare-fun res!722670 () Bool)

(assert (=> b!1618697 (=> res!722670 e!1038187)))

(assert (=> b!1618697 (= res!722670 e!1038184)))

(declare-fun res!722673 () Bool)

(assert (=> b!1618697 (=> (not res!722673) (not e!1038184))))

(assert (=> b!1618697 (= res!722673 lt!581385)))

(assert (= (and d!487468 c!263707) b!1618686))

(assert (= (and d!487468 (not c!263707)) b!1618691))

(assert (= (and d!487468 c!263706) b!1618688))

(assert (= (and d!487468 (not c!263706)) b!1618696))

(assert (= (and b!1618696 c!263705) b!1618690))

(assert (= (and b!1618696 (not c!263705)) b!1618694))

(assert (= (and b!1618694 (not res!722669)) b!1618697))

(assert (= (and b!1618697 res!722673) b!1618692))

(assert (= (and b!1618692 res!722668) b!1618695))

(assert (= (and b!1618695 res!722675) b!1618687))

(assert (= (and b!1618697 (not res!722670)) b!1618685))

(assert (= (and b!1618685 res!722674) b!1618684))

(assert (= (and b!1618684 (not res!722672)) b!1618693))

(assert (= (and b!1618693 (not res!722671)) b!1618689))

(assert (= (or b!1618688 b!1618684 b!1618692) bm!105042))

(assert (=> b!1618691 m!1936687))

(declare-fun m!1942013 () Bool)

(assert (=> b!1618691 m!1942013))

(assert (=> b!1618691 m!1942013))

(declare-fun m!1942015 () Bool)

(assert (=> b!1618691 m!1942015))

(assert (=> b!1618691 m!1936687))

(declare-fun m!1942017 () Bool)

(assert (=> b!1618691 m!1942017))

(assert (=> b!1618691 m!1942015))

(assert (=> b!1618691 m!1942017))

(declare-fun m!1942019 () Bool)

(assert (=> b!1618691 m!1942019))

(assert (=> d!487468 m!1936687))

(declare-fun m!1942021 () Bool)

(assert (=> d!487468 m!1942021))

(declare-fun m!1942023 () Bool)

(assert (=> d!487468 m!1942023))

(assert (=> b!1618693 m!1936687))

(assert (=> b!1618693 m!1942017))

(assert (=> b!1618693 m!1942017))

(declare-fun m!1942025 () Bool)

(assert (=> b!1618693 m!1942025))

(assert (=> bm!105042 m!1936687))

(assert (=> bm!105042 m!1942021))

(assert (=> b!1618695 m!1936687))

(assert (=> b!1618695 m!1942017))

(assert (=> b!1618695 m!1942017))

(assert (=> b!1618695 m!1942025))

(assert (=> b!1618689 m!1936687))

(assert (=> b!1618689 m!1942013))

(declare-fun m!1942027 () Bool)

(assert (=> b!1618686 m!1942027))

(assert (=> b!1618687 m!1936687))

(assert (=> b!1618687 m!1942013))

(assert (=> b!1616253 d!487468))

(assert (=> b!1616253 d!486572))

(assert (=> b!1616253 d!486814))

(assert (=> b!1616253 d!486816))

(declare-fun d!487472 () Bool)

(declare-fun e!1038192 () Bool)

(assert (=> d!487472 e!1038192))

(declare-fun res!722676 () Bool)

(assert (=> d!487472 (=> (not res!722676) (not e!1038192))))

(declare-fun lt!581386 () List!17772)

(assert (=> d!487472 (= res!722676 (= (content!2450 lt!581386) ((_ map or) (content!2450 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (content!2450 (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))))))

(declare-fun e!1038191 () List!17772)

(assert (=> d!487472 (= lt!581386 e!1038191)))

(declare-fun c!263708 () Bool)

(assert (=> d!487472 (= c!263708 ((_ is Nil!17702) (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))))

(assert (=> d!487472 (= (++!4680 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))) (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703)))) lt!581386)))

(declare-fun b!1618698 () Bool)

(assert (=> b!1618698 (= e!1038191 (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))

(declare-fun b!1618701 () Bool)

(assert (=> b!1618701 (= e!1038192 (or (not (= (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))) Nil!17702)) (= lt!581386 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))))))

(declare-fun b!1618699 () Bool)

(assert (=> b!1618699 (= e!1038191 (Cons!17702 (h!23103 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (++!4680 (t!148287 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))))

(declare-fun b!1618700 () Bool)

(declare-fun res!722677 () Bool)

(assert (=> b!1618700 (=> (not res!722677) (not e!1038192))))

(assert (=> b!1618700 (= res!722677 (= (size!14197 lt!581386) (+ (size!14197 (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (size!14197 (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))))))

(assert (= (and d!487472 c!263708) b!1618698))

(assert (= (and d!487472 (not c!263708)) b!1618699))

(assert (= (and d!487472 res!722676) b!1618700))

(assert (= (and b!1618700 res!722677) b!1618701))

(declare-fun m!1942029 () Bool)

(assert (=> d!487472 m!1942029))

(assert (=> d!487472 m!1937211))

(declare-fun m!1942031 () Bool)

(assert (=> d!487472 m!1942031))

(assert (=> d!487472 m!1937213))

(declare-fun m!1942033 () Bool)

(assert (=> d!487472 m!1942033))

(assert (=> b!1618699 m!1937213))

(declare-fun m!1942035 () Bool)

(assert (=> b!1618699 m!1942035))

(declare-fun m!1942037 () Bool)

(assert (=> b!1618700 m!1942037))

(assert (=> b!1618700 m!1937211))

(declare-fun m!1942039 () Bool)

(assert (=> b!1618700 m!1942039))

(assert (=> b!1618700 m!1937213))

(declare-fun m!1942041 () Bool)

(assert (=> b!1618700 m!1942041))

(assert (=> b!1616451 d!487472))

(declare-fun d!487474 () Bool)

(assert (=> d!487474 (= (list!6924 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))) (list!6927 (c!263121 (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))))

(declare-fun bs!394354 () Bool)

(assert (= bs!394354 d!487474))

(declare-fun m!1942043 () Bool)

(assert (=> bs!394354 m!1942043))

(assert (=> b!1616451 d!487474))

(declare-fun d!487476 () Bool)

(declare-fun lt!581389 () BalanceConc!11716)

(assert (=> d!487476 (= (list!6924 lt!581389) (originalCharacters!3933 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))

(assert (=> d!487476 (= lt!581389 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (value!98564 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))))

(assert (=> d!487476 (= (charsOf!1768 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))) lt!581389)))

(declare-fun b_lambda!51035 () Bool)

(assert (=> (not b_lambda!51035) (not d!487476)))

(declare-fun tb!92999 () Bool)

(declare-fun t!148506 () Bool)

(assert (=> (and b!1616140 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148506) tb!92999))

(declare-fun b!1618702 () Bool)

(declare-fun e!1038193 () Bool)

(declare-fun tp!471299 () Bool)

(assert (=> b!1618702 (= e!1038193 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (value!98564 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) tp!471299))))

(declare-fun result!112094 () Bool)

(assert (=> tb!92999 (= result!112094 (and (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (value!98564 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) e!1038193))))

(assert (= tb!92999 b!1618702))

(declare-fun m!1942049 () Bool)

(assert (=> b!1618702 m!1942049))

(declare-fun m!1942051 () Bool)

(assert (=> tb!92999 m!1942051))

(assert (=> d!487476 t!148506))

(declare-fun b_and!114821 () Bool)

(assert (= b_and!114797 (and (=> t!148506 result!112094) b_and!114821)))

(declare-fun t!148508 () Bool)

(declare-fun tb!93001 () Bool)

(assert (=> (and b!1616148 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148508) tb!93001))

(declare-fun result!112096 () Bool)

(assert (= result!112096 result!112094))

(assert (=> d!487476 t!148508))

(declare-fun b_and!114823 () Bool)

(assert (= b_and!114799 (and (=> t!148508 result!112096) b_and!114823)))

(declare-fun t!148510 () Bool)

(declare-fun tb!93003 () Bool)

(assert (=> (and b!1616788 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148510) tb!93003))

(declare-fun result!112098 () Bool)

(assert (= result!112098 result!112094))

(assert (=> d!487476 t!148510))

(declare-fun b_and!114825 () Bool)

(assert (= b_and!114801 (and (=> t!148510 result!112098) b_and!114825)))

(declare-fun tb!93005 () Bool)

(declare-fun t!148512 () Bool)

(assert (=> (and b!1616804 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148512) tb!93005))

(declare-fun result!112100 () Bool)

(assert (= result!112100 result!112094))

(assert (=> d!487476 t!148512))

(declare-fun b_and!114827 () Bool)

(assert (= b_and!114803 (and (=> t!148512 result!112100) b_and!114827)))

(declare-fun m!1942053 () Bool)

(assert (=> d!487476 m!1942053))

(declare-fun m!1942055 () Bool)

(assert (=> d!487476 m!1942055))

(assert (=> b!1616451 d!487476))

(declare-fun d!487482 () Bool)

(declare-fun c!263712 () Bool)

(assert (=> d!487482 (= c!263712 ((_ is Cons!17703) (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))

(declare-fun e!1038201 () List!17772)

(assert (=> d!487482 (= (printList!863 thiss!17113 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))) e!1038201)))

(declare-fun b!1618717 () Bool)

(assert (=> b!1618717 (= e!1038201 (++!4680 (list!6924 (charsOf!1768 (h!23104 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))))) (printList!863 thiss!17113 (t!148288 (t!148288 (Cons!17703 (h!23104 tokens!457) Nil!17703))))))))

(declare-fun b!1618718 () Bool)

(assert (=> b!1618718 (= e!1038201 Nil!17702)))

(assert (= (and d!487482 c!263712) b!1618717))

(assert (= (and d!487482 (not c!263712)) b!1618718))

(declare-fun m!1942057 () Bool)

(assert (=> b!1618717 m!1942057))

(assert (=> b!1618717 m!1942057))

(declare-fun m!1942059 () Bool)

(assert (=> b!1618717 m!1942059))

(declare-fun m!1942061 () Bool)

(assert (=> b!1618717 m!1942061))

(assert (=> b!1618717 m!1942059))

(assert (=> b!1618717 m!1942061))

(declare-fun m!1942063 () Bool)

(assert (=> b!1618717 m!1942063))

(assert (=> b!1616451 d!487482))

(declare-fun d!487484 () Bool)

(assert (=> d!487484 (= (list!6924 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))) (list!6927 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(declare-fun bs!394356 () Bool)

(assert (= bs!394356 d!487484))

(declare-fun m!1942071 () Bool)

(assert (=> bs!394356 m!1942071))

(assert (=> b!1616755 d!487484))

(declare-fun d!487486 () Bool)

(assert (=> d!487486 (= (isDefined!2614 lt!579577) (not (isEmpty!10719 lt!579577)))))

(declare-fun bs!394357 () Bool)

(assert (= bs!394357 d!487486))

(assert (=> bs!394357 m!1937141))

(assert (=> b!1616430 d!487486))

(declare-fun d!487488 () Bool)

(assert (=> d!487488 (= (inv!23104 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))) (isBalanced!1762 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun bs!394358 () Bool)

(assert (= bs!394358 d!487488))

(declare-fun m!1942083 () Bool)

(assert (=> bs!394358 m!1942083))

(assert (=> tb!92827 d!487488))

(assert (=> b!1616483 d!487230))

(declare-fun b!1618719 () Bool)

(declare-fun res!722687 () Bool)

(declare-fun e!1038205 () Bool)

(assert (=> b!1618719 (=> (not res!722687) (not e!1038205))))

(declare-fun lt!581394 () Option!3247)

(assert (=> b!1618719 (= res!722687 (= (rule!4939 (_1!10020 (get!5079 lt!581394))) (h!23105 rules!1846)))))

(declare-fun b!1618720 () Bool)

(declare-fun res!722689 () Bool)

(assert (=> b!1618720 (=> (not res!722689) (not e!1038205))))

(assert (=> b!1618720 (= res!722689 (< (size!14197 (_2!10020 (get!5079 lt!581394))) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun d!487492 () Bool)

(declare-fun e!1038202 () Bool)

(assert (=> d!487492 e!1038202))

(declare-fun res!722686 () Bool)

(assert (=> d!487492 (=> res!722686 e!1038202)))

(assert (=> d!487492 (= res!722686 (isEmpty!10719 lt!581394))))

(declare-fun e!1038203 () Option!3247)

(assert (=> d!487492 (= lt!581394 e!1038203)))

(declare-fun c!263713 () Bool)

(declare-fun lt!581393 () tuple2!17248)

(assert (=> d!487492 (= c!263713 (isEmpty!10713 (_1!10026 lt!581393)))))

(assert (=> d!487492 (= lt!581393 (findLongestMatch!285 (regex!3119 (h!23105 rules!1846)) (originalCharacters!3933 (h!23104 tokens!457))))))

(assert (=> d!487492 (ruleValid!730 thiss!17113 (h!23105 rules!1846))))

(assert (=> d!487492 (= (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (originalCharacters!3933 (h!23104 tokens!457))) lt!581394)))

(declare-fun b!1618721 () Bool)

(assert (=> b!1618721 (= e!1038202 e!1038205)))

(declare-fun res!722690 () Bool)

(assert (=> b!1618721 (=> (not res!722690) (not e!1038205))))

(assert (=> b!1618721 (= res!722690 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581394))))))))

(declare-fun b!1618722 () Bool)

(declare-fun res!722691 () Bool)

(assert (=> b!1618722 (=> (not res!722691) (not e!1038205))))

(assert (=> b!1618722 (= res!722691 (= (value!98564 (_1!10020 (get!5079 lt!581394))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581394)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581394)))))))))

(declare-fun b!1618723 () Bool)

(assert (=> b!1618723 (= e!1038203 None!3246)))

(declare-fun b!1618724 () Bool)

(assert (=> b!1618724 (= e!1038203 (Some!3246 (tuple2!17237 (Token!5805 (apply!4462 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!581393))) (h!23105 rules!1846) (size!14200 (seqFromList!1988 (_1!10026 lt!581393))) (_1!10026 lt!581393)) (_2!10026 lt!581393))))))

(declare-fun lt!581395 () Unit!28465)

(assert (=> b!1618724 (= lt!581395 (longestMatchIsAcceptedByMatchOrIsEmpty!343 (regex!3119 (h!23105 rules!1846)) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun res!722692 () Bool)

(assert (=> b!1618724 (= res!722692 (isEmpty!10713 (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457)) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(declare-fun e!1038204 () Bool)

(assert (=> b!1618724 (=> res!722692 e!1038204)))

(assert (=> b!1618724 e!1038204))

(declare-fun lt!581396 () Unit!28465)

(assert (=> b!1618724 (= lt!581396 lt!581395)))

(declare-fun lt!581392 () Unit!28465)

(assert (=> b!1618724 (= lt!581392 (lemmaSemiInverse!391 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!581393))))))

(declare-fun b!1618725 () Bool)

(declare-fun res!722688 () Bool)

(assert (=> b!1618725 (=> (not res!722688) (not e!1038205))))

(assert (=> b!1618725 (= res!722688 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581394)))) (_2!10020 (get!5079 lt!581394))) (originalCharacters!3933 (h!23104 tokens!457))))))

(declare-fun b!1618726 () Bool)

(assert (=> b!1618726 (= e!1038204 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) (originalCharacters!3933 (h!23104 tokens!457)) (originalCharacters!3933 (h!23104 tokens!457)) (size!14197 (originalCharacters!3933 (h!23104 tokens!457)))))))))

(declare-fun b!1618727 () Bool)

(assert (=> b!1618727 (= e!1038205 (= (size!14194 (_1!10020 (get!5079 lt!581394))) (size!14197 (originalCharacters!3933 (_1!10020 (get!5079 lt!581394))))))))

(assert (= (and d!487492 c!263713) b!1618723))

(assert (= (and d!487492 (not c!263713)) b!1618724))

(assert (= (and b!1618724 (not res!722692)) b!1618726))

(assert (= (and d!487492 (not res!722686)) b!1618721))

(assert (= (and b!1618721 res!722690) b!1618725))

(assert (= (and b!1618725 res!722688) b!1618720))

(assert (= (and b!1618720 res!722689) b!1618719))

(assert (= (and b!1618719 res!722687) b!1618722))

(assert (= (and b!1618722 res!722691) b!1618727))

(declare-fun m!1942105 () Bool)

(assert (=> b!1618719 m!1942105))

(assert (=> b!1618725 m!1942105))

(declare-fun m!1942109 () Bool)

(assert (=> b!1618725 m!1942109))

(assert (=> b!1618725 m!1942109))

(declare-fun m!1942111 () Bool)

(assert (=> b!1618725 m!1942111))

(assert (=> b!1618725 m!1942111))

(declare-fun m!1942113 () Bool)

(assert (=> b!1618725 m!1942113))

(declare-fun m!1942115 () Bool)

(assert (=> b!1618724 m!1942115))

(declare-fun m!1942117 () Bool)

(assert (=> b!1618724 m!1942117))

(assert (=> b!1618724 m!1942117))

(declare-fun m!1942119 () Bool)

(assert (=> b!1618724 m!1942119))

(assert (=> b!1618724 m!1936701))

(assert (=> b!1618724 m!1939331))

(assert (=> b!1618724 m!1939331))

(assert (=> b!1618724 m!1936701))

(declare-fun m!1942121 () Bool)

(assert (=> b!1618724 m!1942121))

(assert (=> b!1618724 m!1942117))

(declare-fun m!1942123 () Bool)

(assert (=> b!1618724 m!1942123))

(assert (=> b!1618724 m!1942117))

(declare-fun m!1942125 () Bool)

(assert (=> b!1618724 m!1942125))

(declare-fun m!1942127 () Bool)

(assert (=> b!1618724 m!1942127))

(assert (=> b!1618727 m!1942105))

(declare-fun m!1942129 () Bool)

(assert (=> b!1618727 m!1942129))

(declare-fun m!1942131 () Bool)

(assert (=> d!487492 m!1942131))

(declare-fun m!1942133 () Bool)

(assert (=> d!487492 m!1942133))

(declare-fun m!1942135 () Bool)

(assert (=> d!487492 m!1942135))

(assert (=> d!487492 m!1938479))

(assert (=> b!1618722 m!1942105))

(declare-fun m!1942137 () Bool)

(assert (=> b!1618722 m!1942137))

(assert (=> b!1618722 m!1942137))

(declare-fun m!1942139 () Bool)

(assert (=> b!1618722 m!1942139))

(assert (=> b!1618726 m!1939331))

(assert (=> b!1618726 m!1936701))

(assert (=> b!1618726 m!1939331))

(assert (=> b!1618726 m!1936701))

(assert (=> b!1618726 m!1942121))

(declare-fun m!1942141 () Bool)

(assert (=> b!1618726 m!1942141))

(assert (=> b!1618720 m!1942105))

(declare-fun m!1942143 () Bool)

(assert (=> b!1618720 m!1942143))

(assert (=> b!1618720 m!1936701))

(assert (=> b!1618721 m!1942105))

(assert (=> b!1618721 m!1942109))

(assert (=> b!1618721 m!1942109))

(assert (=> b!1618721 m!1942111))

(assert (=> b!1618721 m!1942111))

(declare-fun m!1942145 () Bool)

(assert (=> b!1618721 m!1942145))

(assert (=> bm!104846 d!487492))

(declare-fun d!487504 () Bool)

(declare-fun e!1038218 () Bool)

(assert (=> d!487504 e!1038218))

(declare-fun res!722700 () Bool)

(assert (=> d!487504 (=> (not res!722700) (not e!1038218))))

(declare-fun lt!581398 () List!17772)

(assert (=> d!487504 (= res!722700 (= (content!2450 lt!581398) ((_ map or) (content!2450 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (content!2450 (_2!10020 (get!5079 lt!579346))))))))

(declare-fun e!1038217 () List!17772)

(assert (=> d!487504 (= lt!581398 e!1038217)))

(declare-fun c!263718 () Bool)

(assert (=> d!487504 (= c!263718 ((_ is Nil!17702) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))))))

(assert (=> d!487504 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))) (_2!10020 (get!5079 lt!579346))) lt!581398)))

(declare-fun b!1618743 () Bool)

(assert (=> b!1618743 (= e!1038217 (_2!10020 (get!5079 lt!579346)))))

(declare-fun b!1618746 () Bool)

(assert (=> b!1618746 (= e!1038218 (or (not (= (_2!10020 (get!5079 lt!579346)) Nil!17702)) (= lt!581398 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346)))))))))

(declare-fun b!1618744 () Bool)

(assert (=> b!1618744 (= e!1038217 (Cons!17702 (h!23103 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (++!4680 (t!148287 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (_2!10020 (get!5079 lt!579346)))))))

(declare-fun b!1618745 () Bool)

(declare-fun res!722701 () Bool)

(assert (=> b!1618745 (=> (not res!722701) (not e!1038218))))

(assert (=> b!1618745 (= res!722701 (= (size!14197 lt!581398) (+ (size!14197 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579346))))) (size!14197 (_2!10020 (get!5079 lt!579346))))))))

(assert (= (and d!487504 c!263718) b!1618743))

(assert (= (and d!487504 (not c!263718)) b!1618744))

(assert (= (and d!487504 res!722700) b!1618745))

(assert (= (and b!1618745 res!722701) b!1618746))

(declare-fun m!1942147 () Bool)

(assert (=> d!487504 m!1942147))

(assert (=> d!487504 m!1936719))

(declare-fun m!1942149 () Bool)

(assert (=> d!487504 m!1942149))

(declare-fun m!1942151 () Bool)

(assert (=> d!487504 m!1942151))

(declare-fun m!1942153 () Bool)

(assert (=> b!1618744 m!1942153))

(declare-fun m!1942155 () Bool)

(assert (=> b!1618745 m!1942155))

(assert (=> b!1618745 m!1936719))

(declare-fun m!1942157 () Bool)

(assert (=> b!1618745 m!1942157))

(assert (=> b!1618745 m!1936731))

(assert (=> b!1616258 d!487504))

(assert (=> b!1616258 d!486820))

(assert (=> b!1616258 d!486822))

(assert (=> b!1616258 d!486556))

(declare-fun d!487506 () Bool)

(declare-fun charsToBigInt!0 (List!17771 Int) Int)

(assert (=> d!487506 (= (inv!15 (value!98564 (h!23104 tokens!457))) (= (charsToBigInt!0 (text!22912 (value!98564 (h!23104 tokens!457))) 0) (value!98559 (value!98564 (h!23104 tokens!457)))))))

(declare-fun bs!394362 () Bool)

(assert (= bs!394362 d!487506))

(declare-fun m!1942171 () Bool)

(assert (=> bs!394362 m!1942171))

(assert (=> b!1616530 d!487506))

(declare-fun d!487516 () Bool)

(declare-fun c!263721 () Bool)

(assert (=> d!487516 (= c!263721 ((_ is Node!5886) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(declare-fun e!1038230 () Bool)

(assert (=> d!487516 (= (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))) e!1038230)))

(declare-fun b!1618764 () Bool)

(declare-fun inv!23107 (Conc!5886) Bool)

(assert (=> b!1618764 (= e!1038230 (inv!23107 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(declare-fun b!1618765 () Bool)

(declare-fun e!1038231 () Bool)

(assert (=> b!1618765 (= e!1038230 e!1038231)))

(declare-fun res!722715 () Bool)

(assert (=> b!1618765 (= res!722715 (not ((_ is Leaf!8666) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))))))

(assert (=> b!1618765 (=> res!722715 e!1038231)))

(declare-fun b!1618766 () Bool)

(declare-fun inv!23108 (Conc!5886) Bool)

(assert (=> b!1618766 (= e!1038231 (inv!23108 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))))))

(assert (= (and d!487516 c!263721) b!1618764))

(assert (= (and d!487516 (not c!263721)) b!1618765))

(assert (= (and b!1618765 (not res!722715)) b!1618766))

(declare-fun m!1942187 () Bool)

(assert (=> b!1618764 m!1942187))

(declare-fun m!1942189 () Bool)

(assert (=> b!1618766 m!1942189))

(assert (=> b!1616610 d!487516))

(declare-fun d!487524 () Bool)

(declare-fun c!263722 () Bool)

(assert (=> d!487524 (= c!263722 ((_ is Node!5886) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun e!1038232 () Bool)

(assert (=> d!487524 (= (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))) e!1038232)))

(declare-fun b!1618767 () Bool)

(assert (=> b!1618767 (= e!1038232 (inv!23107 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))))

(declare-fun b!1618768 () Bool)

(declare-fun e!1038233 () Bool)

(assert (=> b!1618768 (= e!1038232 e!1038233)))

(declare-fun res!722716 () Bool)

(assert (=> b!1618768 (= res!722716 (not ((_ is Leaf!8666) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))))))

(assert (=> b!1618768 (=> res!722716 e!1038233)))

(declare-fun b!1618769 () Bool)

(assert (=> b!1618769 (= e!1038233 (inv!23108 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))))))

(assert (= (and d!487524 c!263722) b!1618767))

(assert (= (and d!487524 (not c!263722)) b!1618768))

(assert (= (and b!1618768 (not res!722716)) b!1618769))

(declare-fun m!1942191 () Bool)

(assert (=> b!1618767 m!1942191))

(declare-fun m!1942193 () Bool)

(assert (=> b!1618769 m!1942193))

(assert (=> b!1616509 d!487524))

(declare-fun d!487526 () Bool)

(declare-fun e!1038234 () Bool)

(assert (=> d!487526 e!1038234))

(declare-fun res!722717 () Bool)

(assert (=> d!487526 (=> (not res!722717) (not e!1038234))))

(declare-fun lt!581403 () BalanceConc!11718)

(assert (=> d!487526 (= res!722717 (= (list!6923 lt!581403) (t!148288 tokens!457)))))

(assert (=> d!487526 (= lt!581403 (BalanceConc!11719 (fromList!381 (t!148288 tokens!457))))))

(assert (=> d!487526 (= (fromListB!867 (t!148288 tokens!457)) lt!581403)))

(declare-fun b!1618770 () Bool)

(assert (=> b!1618770 (= e!1038234 (isBalanced!1761 (fromList!381 (t!148288 tokens!457))))))

(assert (= (and d!487526 res!722717) b!1618770))

(declare-fun m!1942195 () Bool)

(assert (=> d!487526 m!1942195))

(declare-fun m!1942197 () Bool)

(assert (=> d!487526 m!1942197))

(assert (=> b!1618770 m!1942197))

(assert (=> b!1618770 m!1942197))

(declare-fun m!1942199 () Bool)

(assert (=> b!1618770 m!1942199))

(assert (=> d!486372 d!487526))

(declare-fun d!487528 () Bool)

(declare-fun e!1038236 () Bool)

(assert (=> d!487528 e!1038236))

(declare-fun res!722718 () Bool)

(assert (=> d!487528 (=> (not res!722718) (not e!1038236))))

(declare-fun lt!581404 () List!17772)

(assert (=> d!487528 (= res!722718 (= (content!2450 lt!581404) ((_ map or) (content!2450 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (content!2450 (_2!10020 (get!5079 lt!579341))))))))

(declare-fun e!1038235 () List!17772)

(assert (=> d!487528 (= lt!581404 e!1038235)))

(declare-fun c!263723 () Bool)

(assert (=> d!487528 (= c!263723 ((_ is Nil!17702) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))))))

(assert (=> d!487528 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))) (_2!10020 (get!5079 lt!579341))) lt!581404)))

(declare-fun b!1618771 () Bool)

(assert (=> b!1618771 (= e!1038235 (_2!10020 (get!5079 lt!579341)))))

(declare-fun b!1618774 () Bool)

(assert (=> b!1618774 (= e!1038236 (or (not (= (_2!10020 (get!5079 lt!579341)) Nil!17702)) (= lt!581404 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341)))))))))

(declare-fun b!1618772 () Bool)

(assert (=> b!1618772 (= e!1038235 (Cons!17702 (h!23103 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (++!4680 (t!148287 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (_2!10020 (get!5079 lt!579341)))))))

(declare-fun b!1618773 () Bool)

(declare-fun res!722719 () Bool)

(assert (=> b!1618773 (=> (not res!722719) (not e!1038236))))

(assert (=> b!1618773 (= res!722719 (= (size!14197 lt!581404) (+ (size!14197 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!579341))))) (size!14197 (_2!10020 (get!5079 lt!579341))))))))

(assert (= (and d!487528 c!263723) b!1618771))

(assert (= (and d!487528 (not c!263723)) b!1618772))

(assert (= (and d!487528 res!722718) b!1618773))

(assert (= (and b!1618773 res!722719) b!1618774))

(declare-fun m!1942201 () Bool)

(assert (=> d!487528 m!1942201))

(assert (=> d!487528 m!1936687))

(declare-fun m!1942203 () Bool)

(assert (=> d!487528 m!1942203))

(declare-fun m!1942205 () Bool)

(assert (=> d!487528 m!1942205))

(declare-fun m!1942207 () Bool)

(assert (=> b!1618772 m!1942207))

(declare-fun m!1942209 () Bool)

(assert (=> b!1618773 m!1942209))

(assert (=> b!1618773 m!1936687))

(declare-fun m!1942211 () Bool)

(assert (=> b!1618773 m!1942211))

(assert (=> b!1618773 m!1936699))

(assert (=> b!1616249 d!487528))

(assert (=> b!1616249 d!486814))

(assert (=> b!1616249 d!486816))

(assert (=> b!1616249 d!486572))

(declare-fun d!487530 () Bool)

(declare-fun lt!581405 () Int)

(assert (=> d!487530 (>= lt!581405 0)))

(declare-fun e!1038237 () Int)

(assert (=> d!487530 (= lt!581405 e!1038237)))

(declare-fun c!263724 () Bool)

(assert (=> d!487530 (= c!263724 ((_ is Nil!17702) lt!579355))))

(assert (=> d!487530 (= (size!14197 lt!579355) lt!581405)))

(declare-fun b!1618775 () Bool)

(assert (=> b!1618775 (= e!1038237 0)))

(declare-fun b!1618776 () Bool)

(assert (=> b!1618776 (= e!1038237 (+ 1 (size!14197 (t!148287 lt!579355))))))

(assert (= (and d!487530 c!263724) b!1618775))

(assert (= (and d!487530 (not c!263724)) b!1618776))

(declare-fun m!1942213 () Bool)

(assert (=> b!1618776 m!1942213))

(assert (=> b!1616293 d!487530))

(assert (=> b!1616293 d!486630))

(declare-fun d!487532 () Bool)

(declare-fun lt!581406 () Int)

(assert (=> d!487532 (>= lt!581406 0)))

(declare-fun e!1038238 () Int)

(assert (=> d!487532 (= lt!581406 e!1038238)))

(declare-fun c!263725 () Bool)

(assert (=> d!487532 (= c!263725 ((_ is Nil!17702) lt!579264))))

(assert (=> d!487532 (= (size!14197 lt!579264) lt!581406)))

(declare-fun b!1618777 () Bool)

(assert (=> b!1618777 (= e!1038238 0)))

(declare-fun b!1618778 () Bool)

(assert (=> b!1618778 (= e!1038238 (+ 1 (size!14197 (t!148287 lt!579264))))))

(assert (= (and d!487532 c!263725) b!1618777))

(assert (= (and d!487532 (not c!263725)) b!1618778))

(declare-fun m!1942215 () Bool)

(assert (=> b!1618778 m!1942215))

(assert (=> b!1616293 d!487532))

(assert (=> b!1616514 d!486262))

(assert (=> b!1616514 d!486266))

(assert (=> b!1616514 d!487318))

(declare-fun d!487534 () Bool)

(assert (=> d!487534 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457))))

(declare-fun lt!581420 () Unit!28465)

(declare-fun choose!9746 (LexerInterface!2748 List!17774 List!17773 Token!5804) Unit!28465)

(assert (=> d!487534 (= lt!581420 (choose!9746 thiss!17113 rules!1846 tokens!457 (h!23104 tokens!457)))))

(assert (=> d!487534 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487534 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 tokens!457 (h!23104 tokens!457)) lt!581420)))

(declare-fun bs!394374 () Bool)

(assert (= bs!394374 d!487534))

(assert (=> bs!394374 m!1936459))

(declare-fun m!1942309 () Bool)

(assert (=> bs!394374 m!1942309))

(assert (=> bs!394374 m!1936533))

(assert (=> b!1616514 d!487534))

(assert (=> b!1616514 d!486310))

(declare-fun d!487576 () Bool)

(declare-fun lt!581421 () Bool)

(declare-fun e!1038289 () Bool)

(assert (=> d!487576 (= lt!581421 e!1038289)))

(declare-fun res!722730 () Bool)

(assert (=> d!487576 (=> (not res!722730) (not e!1038289))))

(assert (=> d!487576 (= res!722730 (= (list!6923 (_1!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))) (list!6923 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))

(declare-fun e!1038288 () Bool)

(assert (=> d!487576 (= lt!581421 e!1038288)))

(declare-fun res!722731 () Bool)

(assert (=> d!487576 (=> (not res!722731) (not e!1038288))))

(declare-fun lt!581422 () tuple2!17234)

(assert (=> d!487576 (= res!722731 (= (size!14198 (_1!10019 lt!581422)) 1))))

(assert (=> d!487576 (= lt!581422 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))

(assert (=> d!487576 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487576 (= (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457))) lt!581421)))

(declare-fun b!1618875 () Bool)

(declare-fun res!722729 () Bool)

(assert (=> b!1618875 (=> (not res!722729) (not e!1038288))))

(assert (=> b!1618875 (= res!722729 (= (apply!4463 (_1!10019 lt!581422) 0) (h!23104 (t!148288 tokens!457))))))

(declare-fun b!1618876 () Bool)

(assert (=> b!1618876 (= e!1038288 (isEmpty!10720 (_2!10019 lt!581422)))))

(declare-fun b!1618877 () Bool)

(assert (=> b!1618877 (= e!1038289 (isEmpty!10720 (_2!10019 (lex!1232 thiss!17113 rules!1846 (print!1279 thiss!17113 (singletonSeq!1517 (h!23104 (t!148288 tokens!457))))))))))

(assert (= (and d!487576 res!722731) b!1618875))

(assert (= (and b!1618875 res!722729) b!1618876))

(assert (= (and d!487576 res!722730) b!1618877))

(assert (=> d!487576 m!1936959))

(declare-fun m!1942311 () Bool)

(assert (=> d!487576 m!1942311))

(declare-fun m!1942313 () Bool)

(assert (=> d!487576 m!1942313))

(assert (=> d!487576 m!1936931))

(assert (=> d!487576 m!1940925))

(declare-fun m!1942315 () Bool)

(assert (=> d!487576 m!1942315))

(assert (=> d!487576 m!1936931))

(assert (=> d!487576 m!1936931))

(assert (=> d!487576 m!1936959))

(assert (=> d!487576 m!1936533))

(declare-fun m!1942317 () Bool)

(assert (=> b!1618875 m!1942317))

(declare-fun m!1942319 () Bool)

(assert (=> b!1618876 m!1942319))

(assert (=> b!1618877 m!1936931))

(assert (=> b!1618877 m!1936931))

(assert (=> b!1618877 m!1936959))

(assert (=> b!1618877 m!1936959))

(assert (=> b!1618877 m!1942311))

(declare-fun m!1942321 () Bool)

(assert (=> b!1618877 m!1942321))

(assert (=> b!1616514 d!487576))

(declare-fun d!487578 () Bool)

(assert (=> d!487578 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457)))))

(declare-fun lt!581423 () Unit!28465)

(assert (=> d!487578 (= lt!581423 (choose!9746 thiss!17113 rules!1846 tokens!457 (h!23104 (t!148288 tokens!457))))))

(assert (=> d!487578 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487578 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!550 thiss!17113 rules!1846 tokens!457 (h!23104 (t!148288 tokens!457))) lt!581423)))

(declare-fun bs!394375 () Bool)

(assert (= bs!394375 d!487578))

(assert (=> bs!394375 m!1937327))

(declare-fun m!1942323 () Bool)

(assert (=> bs!394375 m!1942323))

(assert (=> bs!394375 m!1936533))

(assert (=> b!1616514 d!487578))

(declare-fun d!487580 () Bool)

(declare-fun nullableFct!309 (Regex!4447) Bool)

(assert (=> d!487580 (= (nullable!1302 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457))))) (nullableFct!309 (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457))))))))

(declare-fun bs!394376 () Bool)

(assert (= bs!394376 d!487580))

(declare-fun m!1942325 () Bool)

(assert (=> bs!394376 m!1942325))

(assert (=> b!1616211 d!487580))

(assert (=> d!486266 d!486300))

(declare-fun d!487582 () Bool)

(declare-fun lt!581433 () Bool)

(assert (=> d!487582 (= lt!581433 (prefixMatch!382 (rulesRegex!509 thiss!17113 rules!1846) (list!6924 (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))))))

(assert (=> d!487582 (= lt!581433 (prefixMatchZipperSequence!495 (focus!159 (rulesRegex!509 thiss!17113 rules!1846)) (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))) 0))))

(declare-fun lt!581427 () Unit!28465)

(declare-fun lt!581424 () Unit!28465)

(assert (=> d!487582 (= lt!581427 lt!581424)))

(declare-fun lt!581431 () List!17772)

(declare-fun lt!581428 () (InoxSet Context!1706))

(assert (=> d!487582 (= (prefixMatch!382 (rulesRegex!509 thiss!17113 rules!1846) lt!581431) (prefixMatchZipper!138 lt!581428 lt!581431))))

(declare-fun lt!581425 () List!17779)

(assert (=> d!487582 (= lt!581424 (prefixMatchZipperRegexEquiv!138 lt!581428 lt!581425 (rulesRegex!509 thiss!17113 rules!1846) lt!581431))))

(assert (=> d!487582 (= lt!581431 (list!6924 (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))))

(assert (=> d!487582 (= lt!581425 (toList!899 (focus!159 (rulesRegex!509 thiss!17113 rules!1846))))))

(assert (=> d!487582 (= lt!581428 (focus!159 (rulesRegex!509 thiss!17113 rules!1846)))))

(declare-fun lt!581429 () Unit!28465)

(declare-fun lt!581430 () Unit!28465)

(assert (=> d!487582 (= lt!581429 lt!581430)))

(declare-fun lt!581426 () (InoxSet Context!1706))

(declare-fun lt!581432 () Int)

(assert (=> d!487582 (= (prefixMatchZipper!138 lt!581426 (dropList!580 (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))) lt!581432)) (prefixMatchZipperSequence!495 lt!581426 (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))) lt!581432))))

(assert (=> d!487582 (= lt!581430 (lemmaprefixMatchZipperSequenceEquivalent!138 lt!581426 (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))) lt!581432))))

(assert (=> d!487582 (= lt!581432 0)))

(assert (=> d!487582 (= lt!581426 (focus!159 (rulesRegex!509 thiss!17113 rules!1846)))))

(assert (=> d!487582 (validRegex!1764 (rulesRegex!509 thiss!17113 rules!1846))))

(assert (=> d!487582 (= (prefixMatchZipperSequence!493 (rulesRegex!509 thiss!17113 rules!1846) (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))) lt!581433)))

(declare-fun bs!394377 () Bool)

(assert (= bs!394377 d!487582))

(assert (=> bs!394377 m!1936481))

(declare-fun m!1942327 () Bool)

(assert (=> bs!394377 m!1942327))

(declare-fun m!1942329 () Bool)

(assert (=> bs!394377 m!1942329))

(declare-fun m!1942331 () Bool)

(assert (=> bs!394377 m!1942331))

(assert (=> bs!394377 m!1937125))

(declare-fun m!1942333 () Bool)

(assert (=> bs!394377 m!1942333))

(assert (=> bs!394377 m!1937125))

(declare-fun m!1942335 () Bool)

(assert (=> bs!394377 m!1942335))

(assert (=> bs!394377 m!1936481))

(declare-fun m!1942337 () Bool)

(assert (=> bs!394377 m!1942337))

(assert (=> bs!394377 m!1936481))

(declare-fun m!1942339 () Bool)

(assert (=> bs!394377 m!1942339))

(declare-fun m!1942341 () Bool)

(assert (=> bs!394377 m!1942341))

(assert (=> bs!394377 m!1937125))

(assert (=> bs!394377 m!1942329))

(assert (=> bs!394377 m!1942337))

(assert (=> bs!394377 m!1937125))

(declare-fun m!1942343 () Bool)

(assert (=> bs!394377 m!1942343))

(assert (=> bs!394377 m!1936481))

(declare-fun m!1942345 () Bool)

(assert (=> bs!394377 m!1942345))

(assert (=> bs!394377 m!1936481))

(declare-fun m!1942347 () Bool)

(assert (=> bs!394377 m!1942347))

(declare-fun m!1942349 () Bool)

(assert (=> bs!394377 m!1942349))

(assert (=> bs!394377 m!1937125))

(assert (=> bs!394377 m!1942339))

(assert (=> bs!394377 m!1942337))

(declare-fun m!1942351 () Bool)

(assert (=> bs!394377 m!1942351))

(assert (=> d!486266 d!487582))

(declare-fun b!1618878 () Bool)

(declare-fun res!722735 () Bool)

(declare-fun e!1038290 () Bool)

(assert (=> b!1618878 (=> (not res!722735) (not e!1038290))))

(assert (=> b!1618878 (= res!722735 (isBalanced!1762 (++!4682 (c!263121 (charsOf!1768 (h!23104 tokens!457))) (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))))))

(declare-fun b!1618881 () Bool)

(declare-fun lt!581434 () BalanceConc!11716)

(assert (=> b!1618881 (= e!1038290 (= (list!6924 lt!581434) (++!4680 (list!6924 (charsOf!1768 (h!23104 tokens!457))) (list!6924 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))))))

(declare-fun b!1618879 () Bool)

(declare-fun res!722733 () Bool)

(assert (=> b!1618879 (=> (not res!722733) (not e!1038290))))

(assert (=> b!1618879 (= res!722733 (<= (height!889 (++!4682 (c!263121 (charsOf!1768 (h!23104 tokens!457))) (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))) (+ (max!0 (height!889 (c!263121 (charsOf!1768 (h!23104 tokens!457)))) (height!889 (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))) 1)))))

(declare-fun d!487584 () Bool)

(assert (=> d!487584 e!1038290))

(declare-fun res!722734 () Bool)

(assert (=> d!487584 (=> (not res!722734) (not e!1038290))))

(assert (=> d!487584 (= res!722734 (appendAssocInst!421 (c!263121 (charsOf!1768 (h!23104 tokens!457))) (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))))

(assert (=> d!487584 (= lt!581434 (BalanceConc!11717 (++!4682 (c!263121 (charsOf!1768 (h!23104 tokens!457))) (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))))))

(assert (=> d!487584 (= (++!4679 (charsOf!1768 (h!23104 tokens!457)) (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))) lt!581434)))

(declare-fun b!1618880 () Bool)

(declare-fun res!722732 () Bool)

(assert (=> b!1618880 (=> (not res!722732) (not e!1038290))))

(assert (=> b!1618880 (= res!722732 (>= (height!889 (++!4682 (c!263121 (charsOf!1768 (h!23104 tokens!457))) (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0))))) (max!0 (height!889 (c!263121 (charsOf!1768 (h!23104 tokens!457)))) (height!889 (c!263121 (singletonSeq!1516 (apply!4458 (charsOf!1768 (h!23104 (t!148288 tokens!457))) 0)))))))))

(assert (= (and d!487584 res!722734) b!1618878))

(assert (= (and b!1618878 res!722735) b!1618879))

(assert (= (and b!1618879 res!722733) b!1618880))

(assert (= (and b!1618880 res!722732) b!1618881))

(declare-fun m!1942353 () Bool)

(assert (=> b!1618878 m!1942353))

(assert (=> b!1618878 m!1942353))

(declare-fun m!1942355 () Bool)

(assert (=> b!1618878 m!1942355))

(assert (=> b!1618880 m!1942353))

(declare-fun m!1942357 () Bool)

(assert (=> b!1618880 m!1942357))

(assert (=> b!1618880 m!1942353))

(declare-fun m!1942359 () Bool)

(assert (=> b!1618880 m!1942359))

(declare-fun m!1942361 () Bool)

(assert (=> b!1618880 m!1942361))

(assert (=> b!1618880 m!1942361))

(assert (=> b!1618880 m!1942359))

(declare-fun m!1942363 () Bool)

(assert (=> b!1618880 m!1942363))

(declare-fun m!1942365 () Bool)

(assert (=> b!1618881 m!1942365))

(assert (=> b!1618881 m!1936463))

(declare-fun m!1942367 () Bool)

(assert (=> b!1618881 m!1942367))

(assert (=> b!1618881 m!1936485))

(declare-fun m!1942369 () Bool)

(assert (=> b!1618881 m!1942369))

(assert (=> b!1618881 m!1942367))

(assert (=> b!1618881 m!1942369))

(declare-fun m!1942371 () Bool)

(assert (=> b!1618881 m!1942371))

(declare-fun m!1942373 () Bool)

(assert (=> d!487584 m!1942373))

(assert (=> d!487584 m!1942353))

(assert (=> b!1618879 m!1942353))

(assert (=> b!1618879 m!1942357))

(assert (=> b!1618879 m!1942353))

(assert (=> b!1618879 m!1942359))

(assert (=> b!1618879 m!1942361))

(assert (=> b!1618879 m!1942361))

(assert (=> b!1618879 m!1942359))

(assert (=> b!1618879 m!1942363))

(assert (=> d!486266 d!487584))

(assert (=> d!486266 d!486370))

(assert (=> d!486266 d!486306))

(assert (=> d!486266 d!486308))

(assert (=> d!486266 d!486310))

(declare-fun bs!394378 () Bool)

(declare-fun d!487586 () Bool)

(assert (= bs!394378 (and d!487586 d!486896)))

(declare-fun lambda!67153 () Int)

(assert (=> bs!394378 (= (and (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (h!23105 rules!1846)))) (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (h!23105 rules!1846))))) (= lambda!67153 lambda!67130))))

(assert (=> d!487586 true))

(assert (=> d!487586 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (dynLambda!7897 order!10497 lambda!67153))))

(assert (=> d!487586 true))

(assert (=> d!487586 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (dynLambda!7897 order!10497 lambda!67153))))

(assert (=> d!487586 (= (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (Forall!641 lambda!67153))))

(declare-fun bs!394379 () Bool)

(assert (= bs!394379 d!487586))

(declare-fun m!1942375 () Bool)

(assert (=> bs!394379 m!1942375))

(assert (=> d!486320 d!487586))

(declare-fun d!487588 () Bool)

(assert (=> d!487588 (= (inv!23096 (tag!3395 (rule!4939 (h!23104 (t!148288 tokens!457))))) (= (mod (str.len (value!98563 (tag!3395 (rule!4939 (h!23104 (t!148288 tokens!457)))))) 2) 0))))

(assert (=> b!1616787 d!487588))

(declare-fun d!487590 () Bool)

(declare-fun res!722736 () Bool)

(declare-fun e!1038291 () Bool)

(assert (=> d!487590 (=> (not res!722736) (not e!1038291))))

(assert (=> d!487590 (= res!722736 (semiInverseModEq!1186 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))))

(assert (=> d!487590 (= (inv!23099 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) e!1038291)))

(declare-fun b!1618882 () Bool)

(assert (=> b!1618882 (= e!1038291 (equivClasses!1127 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))))))

(assert (= (and d!487590 res!722736) b!1618882))

(declare-fun m!1942377 () Bool)

(assert (=> d!487590 m!1942377))

(declare-fun m!1942379 () Bool)

(assert (=> b!1618882 m!1942379))

(assert (=> b!1616787 d!487590))

(declare-fun d!487592 () Bool)

(assert (=> d!487592 (= (isDefined!2614 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))) (not (isEmpty!10719 (maxPrefixZipper!292 thiss!17113 rules!1846 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))))

(declare-fun bs!394380 () Bool)

(assert (= bs!394380 d!487592))

(assert (=> bs!394380 m!1937237))

(declare-fun m!1942381 () Bool)

(assert (=> bs!394380 m!1942381))

(assert (=> d!486296 d!487592))

(assert (=> d!486296 d!487230))

(assert (=> d!486296 d!486644))

(declare-fun d!487594 () Bool)

(assert (=> d!487594 (isPrefix!1379 lt!579621 lt!579624)))

(declare-fun lt!581435 () Unit!28465)

(assert (=> d!487594 (= lt!581435 (choose!9729 lt!579621 lt!579624))))

(assert (=> d!487594 (= (lemmaIsPrefixRefl!946 lt!579621 lt!579624) lt!581435)))

(declare-fun bs!394381 () Bool)

(assert (= bs!394381 d!487594))

(assert (=> bs!394381 m!1937247))

(declare-fun m!1942383 () Bool)

(assert (=> bs!394381 m!1942383))

(assert (=> d!486296 d!487594))

(assert (=> d!486296 d!486598))

(declare-fun d!487596 () Bool)

(declare-fun e!1038292 () Bool)

(assert (=> d!487596 e!1038292))

(declare-fun res!722739 () Bool)

(assert (=> d!487596 (=> res!722739 e!1038292)))

(declare-fun lt!581436 () Bool)

(assert (=> d!487596 (= res!722739 (not lt!581436))))

(declare-fun e!1038293 () Bool)

(assert (=> d!487596 (= lt!581436 e!1038293)))

(declare-fun res!722740 () Bool)

(assert (=> d!487596 (=> res!722740 e!1038293)))

(assert (=> d!487596 (= res!722740 ((_ is Nil!17702) lt!579621))))

(assert (=> d!487596 (= (isPrefix!1379 lt!579621 lt!579624) lt!581436)))

(declare-fun b!1618884 () Bool)

(declare-fun res!722738 () Bool)

(declare-fun e!1038294 () Bool)

(assert (=> b!1618884 (=> (not res!722738) (not e!1038294))))

(assert (=> b!1618884 (= res!722738 (= (head!3362 lt!579621) (head!3362 lt!579624)))))

(declare-fun b!1618883 () Bool)

(assert (=> b!1618883 (= e!1038293 e!1038294)))

(declare-fun res!722737 () Bool)

(assert (=> b!1618883 (=> (not res!722737) (not e!1038294))))

(assert (=> b!1618883 (= res!722737 (not ((_ is Nil!17702) lt!579624)))))

(declare-fun b!1618886 () Bool)

(assert (=> b!1618886 (= e!1038292 (>= (size!14197 lt!579624) (size!14197 lt!579621)))))

(declare-fun b!1618885 () Bool)

(assert (=> b!1618885 (= e!1038294 (isPrefix!1379 (tail!2332 lt!579621) (tail!2332 lt!579624)))))

(assert (= (and d!487596 (not res!722740)) b!1618883))

(assert (= (and b!1618883 res!722737) b!1618884))

(assert (= (and b!1618884 res!722738) b!1618885))

(assert (= (and d!487596 (not res!722739)) b!1618886))

(declare-fun m!1942385 () Bool)

(assert (=> b!1618884 m!1942385))

(declare-fun m!1942387 () Bool)

(assert (=> b!1618884 m!1942387))

(declare-fun m!1942389 () Bool)

(assert (=> b!1618886 m!1942389))

(declare-fun m!1942391 () Bool)

(assert (=> b!1618886 m!1942391))

(declare-fun m!1942393 () Bool)

(assert (=> b!1618885 m!1942393))

(declare-fun m!1942395 () Bool)

(assert (=> b!1618885 m!1942395))

(assert (=> b!1618885 m!1942393))

(assert (=> b!1618885 m!1942395))

(declare-fun m!1942397 () Bool)

(assert (=> b!1618885 m!1942397))

(assert (=> d!486296 d!487596))

(assert (=> d!486296 d!486626))

(declare-fun d!487598 () Bool)

(declare-fun e!1038296 () Bool)

(assert (=> d!487598 e!1038296))

(declare-fun res!722741 () Bool)

(assert (=> d!487598 (=> (not res!722741) (not e!1038296))))

(declare-fun lt!581437 () List!17772)

(assert (=> d!487598 (= res!722741 (= (content!2450 lt!581437) ((_ map or) (content!2450 (t!148287 lt!579274)) (content!2450 lt!579259))))))

(declare-fun e!1038295 () List!17772)

(assert (=> d!487598 (= lt!581437 e!1038295)))

(declare-fun c!263732 () Bool)

(assert (=> d!487598 (= c!263732 ((_ is Nil!17702) (t!148287 lt!579274)))))

(assert (=> d!487598 (= (++!4680 (t!148287 lt!579274) lt!579259) lt!581437)))

(declare-fun b!1618887 () Bool)

(assert (=> b!1618887 (= e!1038295 lt!579259)))

(declare-fun b!1618890 () Bool)

(assert (=> b!1618890 (= e!1038296 (or (not (= lt!579259 Nil!17702)) (= lt!581437 (t!148287 lt!579274))))))

(declare-fun b!1618888 () Bool)

(assert (=> b!1618888 (= e!1038295 (Cons!17702 (h!23103 (t!148287 lt!579274)) (++!4680 (t!148287 (t!148287 lt!579274)) lt!579259)))))

(declare-fun b!1618889 () Bool)

(declare-fun res!722742 () Bool)

(assert (=> b!1618889 (=> (not res!722742) (not e!1038296))))

(assert (=> b!1618889 (= res!722742 (= (size!14197 lt!581437) (+ (size!14197 (t!148287 lt!579274)) (size!14197 lt!579259))))))

(assert (= (and d!487598 c!263732) b!1618887))

(assert (= (and d!487598 (not c!263732)) b!1618888))

(assert (= (and d!487598 res!722741) b!1618889))

(assert (= (and b!1618889 res!722742) b!1618890))

(declare-fun m!1942399 () Bool)

(assert (=> d!487598 m!1942399))

(assert (=> d!487598 m!1938465))

(assert (=> d!487598 m!1937559))

(declare-fun m!1942401 () Bool)

(assert (=> b!1618888 m!1942401))

(declare-fun m!1942403 () Bool)

(assert (=> b!1618889 m!1942403))

(assert (=> b!1618889 m!1938471))

(assert (=> b!1618889 m!1937565))

(assert (=> b!1616612 d!487598))

(declare-fun bs!394382 () Bool)

(declare-fun b!1618907 () Bool)

(assert (= bs!394382 (and b!1618907 d!486896)))

(declare-fun lambda!67158 () Int)

(assert (=> bs!394382 (= lambda!67158 lambda!67130)))

(declare-fun bs!394383 () Bool)

(assert (= bs!394383 (and b!1618907 d!487586)))

(assert (=> bs!394383 (= (and (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) (= (toValue!4542 (transformation!3119 (h!23105 rules!1846))) (toValue!4542 (transformation!3119 (rule!4939 (h!23104 tokens!457)))))) (= lambda!67158 lambda!67153))))

(declare-fun b!1618916 () Bool)

(declare-fun e!1038317 () Bool)

(assert (=> b!1618916 (= e!1038317 true)))

(declare-fun b!1618915 () Bool)

(declare-fun e!1038316 () Bool)

(assert (=> b!1618915 (= e!1038316 e!1038317)))

(assert (=> b!1618907 e!1038316))

(assert (= b!1618915 b!1618916))

(assert (= b!1618907 b!1618915))

(assert (=> b!1618916 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7897 order!10497 lambda!67158))))

(assert (=> b!1618916 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7897 order!10497 lambda!67158))))

(declare-fun lt!581461 () Option!3248)

(declare-fun e!1038307 () Bool)

(declare-fun b!1618903 () Bool)

(assert (=> b!1618903 (= e!1038307 (= (list!6924 (_2!10021 (get!5082 lt!581461))) (_2!10020 (get!5079 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(declare-fun b!1618904 () Bool)

(declare-fun e!1038308 () Bool)

(declare-fun e!1038311 () Bool)

(assert (=> b!1618904 (= e!1038308 e!1038311)))

(declare-fun res!722754 () Bool)

(assert (=> b!1618904 (=> res!722754 e!1038311)))

(assert (=> b!1618904 (= res!722754 (not (isDefined!2615 lt!581461)))))

(declare-fun b!1618905 () Bool)

(declare-fun e!1038310 () Option!3248)

(assert (=> b!1618905 (= e!1038310 None!3247)))

(declare-fun d!487600 () Bool)

(assert (=> d!487600 e!1038308))

(declare-fun res!722752 () Bool)

(assert (=> d!487600 (=> (not res!722752) (not e!1038308))))

(assert (=> d!487600 (= res!722752 (= (isDefined!2615 lt!581461) (isDefined!2614 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457))))))))))

(assert (=> d!487600 (= lt!581461 e!1038310)))

(declare-fun c!263735 () Bool)

(declare-datatypes ((tuple2!17250 0))(
  ( (tuple2!17251 (_1!10027 BalanceConc!11716) (_2!10027 BalanceConc!11716)) )
))
(declare-fun lt!581459 () tuple2!17250)

(assert (=> d!487600 (= c!263735 (isEmpty!10720 (_1!10027 lt!581459)))))

(declare-fun findLongestMatchWithZipperSequence!117 (Regex!4447 BalanceConc!11716) tuple2!17250)

(assert (=> d!487600 (= lt!581459 (findLongestMatchWithZipperSequence!117 (regex!3119 (h!23105 rules!1846)) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(assert (=> d!487600 (ruleValid!730 thiss!17113 (h!23105 rules!1846))))

(assert (=> d!487600 (= (maxPrefixOneRuleZipperSequence!302 thiss!17113 (h!23105 rules!1846) (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))) lt!581461)))

(declare-fun b!1618906 () Bool)

(assert (=> b!1618906 (= e!1038311 e!1038307)))

(declare-fun res!722751 () Bool)

(assert (=> b!1618906 (=> (not res!722751) (not e!1038307))))

(assert (=> b!1618906 (= res!722751 (= (_1!10021 (get!5082 lt!581461)) (_1!10020 (get!5079 (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))))))

(assert (=> b!1618907 (= e!1038310 (Some!3247 (tuple2!17239 (Token!5805 (apply!4462 (transformation!3119 (h!23105 rules!1846)) (_1!10027 lt!581459)) (h!23105 rules!1846) (size!14200 (_1!10027 lt!581459)) (list!6924 (_1!10027 lt!581459))) (_2!10027 lt!581459))))))

(declare-fun lt!581467 () List!17772)

(assert (=> b!1618907 (= lt!581467 (list!6924 (seqFromList!1988 (originalCharacters!3933 (h!23104 tokens!457)))))))

(declare-fun lt!581462 () Unit!28465)

(assert (=> b!1618907 (= lt!581462 (longestMatchIsAcceptedByMatchOrIsEmpty!343 (regex!3119 (h!23105 rules!1846)) lt!581467))))

(declare-fun res!722753 () Bool)

(assert (=> b!1618907 (= res!722753 (isEmpty!10713 (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!581467 lt!581467 (size!14197 lt!581467)))))))

(declare-fun e!1038309 () Bool)

(assert (=> b!1618907 (=> res!722753 e!1038309)))

(assert (=> b!1618907 e!1038309))

(declare-fun lt!581466 () Unit!28465)

(assert (=> b!1618907 (= lt!581466 lt!581462)))

(declare-fun lt!581464 () Unit!28465)

(assert (=> b!1618907 (= lt!581464 (lemmaInv!457 (transformation!3119 (h!23105 rules!1846))))))

(declare-fun lt!581460 () Unit!28465)

(declare-fun ForallOf!232 (Int BalanceConc!11716) Unit!28465)

(assert (=> b!1618907 (= lt!581460 (ForallOf!232 lambda!67158 (_1!10027 lt!581459)))))

(declare-fun lt!581458 () Unit!28465)

(assert (=> b!1618907 (= lt!581458 (ForallOf!232 lambda!67158 (seqFromList!1988 (list!6924 (_1!10027 lt!581459)))))))

(declare-fun lt!581465 () Option!3248)

(assert (=> b!1618907 (= lt!581465 (Some!3247 (tuple2!17239 (Token!5805 (apply!4462 (transformation!3119 (h!23105 rules!1846)) (_1!10027 lt!581459)) (h!23105 rules!1846) (size!14200 (_1!10027 lt!581459)) (list!6924 (_1!10027 lt!581459))) (_2!10027 lt!581459))))))

(declare-fun lt!581463 () Unit!28465)

(assert (=> b!1618907 (= lt!581463 (lemmaEqSameImage!177 (transformation!3119 (h!23105 rules!1846)) (_1!10027 lt!581459) (seqFromList!1988 (list!6924 (_1!10027 lt!581459)))))))

(declare-fun b!1618908 () Bool)

(assert (=> b!1618908 (= e!1038309 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!581467 lt!581467 (size!14197 lt!581467)))))))

(assert (= (and d!487600 c!263735) b!1618905))

(assert (= (and d!487600 (not c!263735)) b!1618907))

(assert (= (and b!1618907 (not res!722753)) b!1618908))

(assert (= (and d!487600 res!722752) b!1618904))

(assert (= (and b!1618904 (not res!722754)) b!1618906))

(assert (= (and b!1618906 res!722751) b!1618903))

(assert (=> d!487600 m!1938393))

(declare-fun m!1942405 () Bool)

(assert (=> d!487600 m!1942405))

(assert (=> d!487600 m!1938479))

(declare-fun m!1942407 () Bool)

(assert (=> d!487600 m!1942407))

(assert (=> d!487600 m!1936441))

(assert (=> d!487600 m!1937235))

(assert (=> d!487600 m!1936441))

(declare-fun m!1942409 () Bool)

(assert (=> d!487600 m!1942409))

(assert (=> d!487600 m!1937235))

(assert (=> d!487600 m!1938393))

(declare-fun m!1942411 () Bool)

(assert (=> d!487600 m!1942411))

(declare-fun m!1942413 () Bool)

(assert (=> b!1618907 m!1942413))

(declare-fun m!1942415 () Bool)

(assert (=> b!1618907 m!1942415))

(assert (=> b!1618907 m!1939331))

(declare-fun m!1942417 () Bool)

(assert (=> b!1618907 m!1942417))

(declare-fun m!1942419 () Bool)

(assert (=> b!1618907 m!1942419))

(declare-fun m!1942421 () Bool)

(assert (=> b!1618907 m!1942421))

(declare-fun m!1942423 () Bool)

(assert (=> b!1618907 m!1942423))

(declare-fun m!1942425 () Bool)

(assert (=> b!1618907 m!1942425))

(declare-fun m!1942427 () Bool)

(assert (=> b!1618907 m!1942427))

(assert (=> b!1618907 m!1942419))

(declare-fun m!1942429 () Bool)

(assert (=> b!1618907 m!1942429))

(declare-fun m!1942431 () Bool)

(assert (=> b!1618907 m!1942431))

(assert (=> b!1618907 m!1939331))

(assert (=> b!1618907 m!1942415))

(declare-fun m!1942433 () Bool)

(assert (=> b!1618907 m!1942433))

(assert (=> b!1618907 m!1942417))

(assert (=> b!1618907 m!1936441))

(assert (=> b!1618907 m!1937235))

(assert (=> b!1618907 m!1942419))

(declare-fun m!1942435 () Bool)

(assert (=> b!1618907 m!1942435))

(declare-fun m!1942437 () Bool)

(assert (=> b!1618906 m!1942437))

(assert (=> b!1618906 m!1936441))

(assert (=> b!1618906 m!1937235))

(assert (=> b!1618906 m!1937235))

(assert (=> b!1618906 m!1938393))

(assert (=> b!1618906 m!1938393))

(declare-fun m!1942439 () Bool)

(assert (=> b!1618906 m!1942439))

(assert (=> b!1618908 m!1939331))

(assert (=> b!1618908 m!1942415))

(assert (=> b!1618908 m!1939331))

(assert (=> b!1618908 m!1942415))

(assert (=> b!1618908 m!1942433))

(declare-fun m!1942441 () Bool)

(assert (=> b!1618908 m!1942441))

(assert (=> b!1618903 m!1942437))

(assert (=> b!1618903 m!1937235))

(assert (=> b!1618903 m!1938393))

(declare-fun m!1942443 () Bool)

(assert (=> b!1618903 m!1942443))

(assert (=> b!1618903 m!1936441))

(assert (=> b!1618903 m!1937235))

(assert (=> b!1618903 m!1938393))

(assert (=> b!1618903 m!1942439))

(assert (=> b!1618904 m!1942411))

(assert (=> bm!104865 d!487600))

(declare-fun d!487602 () Bool)

(declare-fun c!263736 () Bool)

(assert (=> d!487602 (= c!263736 ((_ is Empty!5886) (c!263121 lt!579279)))))

(declare-fun e!1038318 () List!17772)

(assert (=> d!487602 (= (list!6927 (c!263121 lt!579279)) e!1038318)))

(declare-fun b!1618917 () Bool)

(assert (=> b!1618917 (= e!1038318 Nil!17702)))

(declare-fun b!1618918 () Bool)

(declare-fun e!1038319 () List!17772)

(assert (=> b!1618918 (= e!1038318 e!1038319)))

(declare-fun c!263737 () Bool)

(assert (=> b!1618918 (= c!263737 ((_ is Leaf!8666) (c!263121 lt!579279)))))

(declare-fun b!1618920 () Bool)

(assert (=> b!1618920 (= e!1038319 (++!4680 (list!6927 (left!14251 (c!263121 lt!579279))) (list!6927 (right!14581 (c!263121 lt!579279)))))))

(declare-fun b!1618919 () Bool)

(assert (=> b!1618919 (= e!1038319 (list!6929 (xs!8714 (c!263121 lt!579279))))))

(assert (= (and d!487602 c!263736) b!1618917))

(assert (= (and d!487602 (not c!263736)) b!1618918))

(assert (= (and b!1618918 c!263737) b!1618919))

(assert (= (and b!1618918 (not c!263737)) b!1618920))

(assert (=> b!1618920 m!1938573))

(assert (=> b!1618920 m!1938575))

(assert (=> b!1618920 m!1938573))

(assert (=> b!1618920 m!1938575))

(declare-fun m!1942445 () Bool)

(assert (=> b!1618920 m!1942445))

(declare-fun m!1942447 () Bool)

(assert (=> b!1618919 m!1942447))

(assert (=> d!486364 d!487602))

(declare-fun d!487604 () Bool)

(declare-fun c!263738 () Bool)

(assert (=> d!487604 (= c!263738 (isEmpty!10713 (tail!2332 (++!4680 lt!579274 lt!579264))))))

(declare-fun e!1038320 () Bool)

(assert (=> d!487604 (= (prefixMatch!382 (derivativeStep!1067 lt!579263 (head!3362 (++!4680 lt!579274 lt!579264))) (tail!2332 (++!4680 lt!579274 lt!579264))) e!1038320)))

(declare-fun b!1618921 () Bool)

(assert (=> b!1618921 (= e!1038320 (not (lostCause!423 (derivativeStep!1067 lt!579263 (head!3362 (++!4680 lt!579274 lt!579264))))))))

(declare-fun b!1618922 () Bool)

(assert (=> b!1618922 (= e!1038320 (prefixMatch!382 (derivativeStep!1067 (derivativeStep!1067 lt!579263 (head!3362 (++!4680 lt!579274 lt!579264))) (head!3362 (tail!2332 (++!4680 lt!579274 lt!579264)))) (tail!2332 (tail!2332 (++!4680 lt!579274 lt!579264)))))))

(assert (= (and d!487604 c!263738) b!1618921))

(assert (= (and d!487604 (not c!263738)) b!1618922))

(assert (=> d!487604 m!1936743))

(declare-fun m!1942449 () Bool)

(assert (=> d!487604 m!1942449))

(assert (=> b!1618921 m!1936741))

(declare-fun m!1942451 () Bool)

(assert (=> b!1618921 m!1942451))

(assert (=> b!1618922 m!1936743))

(declare-fun m!1942453 () Bool)

(assert (=> b!1618922 m!1942453))

(assert (=> b!1618922 m!1936741))

(assert (=> b!1618922 m!1942453))

(declare-fun m!1942455 () Bool)

(assert (=> b!1618922 m!1942455))

(assert (=> b!1618922 m!1936743))

(declare-fun m!1942457 () Bool)

(assert (=> b!1618922 m!1942457))

(assert (=> b!1618922 m!1942455))

(assert (=> b!1618922 m!1942457))

(declare-fun m!1942459 () Bool)

(assert (=> b!1618922 m!1942459))

(assert (=> b!1616275 d!487604))

(declare-fun b!1618943 () Bool)

(declare-fun e!1038332 () Regex!4447)

(declare-fun e!1038333 () Regex!4447)

(assert (=> b!1618943 (= e!1038332 e!1038333)))

(declare-fun c!263750 () Bool)

(assert (=> b!1618943 (= c!263750 ((_ is ElementMatch!4447) lt!579263))))

(declare-fun b!1618944 () Bool)

(assert (=> b!1618944 (= e!1038332 EmptyLang!4447)))

(declare-fun bm!105055 () Bool)

(declare-fun call!105061 () Regex!4447)

(declare-fun call!105060 () Regex!4447)

(assert (=> bm!105055 (= call!105061 call!105060)))

(declare-fun b!1618945 () Bool)

(declare-fun e!1038334 () Regex!4447)

(declare-fun e!1038335 () Regex!4447)

(assert (=> b!1618945 (= e!1038334 e!1038335)))

(declare-fun c!263752 () Bool)

(assert (=> b!1618945 (= c!263752 ((_ is Star!4447) lt!579263))))

(declare-fun bm!105056 () Bool)

(declare-fun call!105063 () Regex!4447)

(assert (=> bm!105056 (= call!105063 call!105061)))

(declare-fun b!1618946 () Bool)

(declare-fun call!105062 () Regex!4447)

(assert (=> b!1618946 (= e!1038334 (Union!4447 call!105060 call!105062))))

(declare-fun c!263751 () Bool)

(declare-fun bm!105057 () Bool)

(assert (=> bm!105057 (= call!105062 (derivativeStep!1067 (ite c!263751 (regTwo!9407 lt!579263) (regOne!9406 lt!579263)) (head!3362 (++!4680 lt!579274 lt!579264))))))

(declare-fun b!1618947 () Bool)

(assert (=> b!1618947 (= c!263751 ((_ is Union!4447) lt!579263))))

(assert (=> b!1618947 (= e!1038333 e!1038334)))

(declare-fun b!1618948 () Bool)

(declare-fun e!1038331 () Regex!4447)

(assert (=> b!1618948 (= e!1038331 (Union!4447 (Concat!7657 call!105062 (regTwo!9406 lt!579263)) call!105063))))

(declare-fun d!487606 () Bool)

(declare-fun lt!581470 () Regex!4447)

(assert (=> d!487606 (validRegex!1764 lt!581470)))

(assert (=> d!487606 (= lt!581470 e!1038332)))

(declare-fun c!263749 () Bool)

(assert (=> d!487606 (= c!263749 (or ((_ is EmptyExpr!4447) lt!579263) ((_ is EmptyLang!4447) lt!579263)))))

(assert (=> d!487606 (validRegex!1764 lt!579263)))

(assert (=> d!487606 (= (derivativeStep!1067 lt!579263 (head!3362 (++!4680 lt!579274 lt!579264))) lt!581470)))

(declare-fun b!1618949 () Bool)

(assert (=> b!1618949 (= e!1038335 (Concat!7657 call!105061 lt!579263))))

(declare-fun bm!105058 () Bool)

(declare-fun c!263753 () Bool)

(assert (=> bm!105058 (= call!105060 (derivativeStep!1067 (ite c!263751 (regOne!9407 lt!579263) (ite c!263752 (reg!4776 lt!579263) (ite c!263753 (regTwo!9406 lt!579263) (regOne!9406 lt!579263)))) (head!3362 (++!4680 lt!579274 lt!579264))))))

(declare-fun b!1618950 () Bool)

(assert (=> b!1618950 (= c!263753 (nullable!1302 (regOne!9406 lt!579263)))))

(assert (=> b!1618950 (= e!1038335 e!1038331)))

(declare-fun b!1618951 () Bool)

(assert (=> b!1618951 (= e!1038331 (Union!4447 (Concat!7657 call!105063 (regTwo!9406 lt!579263)) EmptyLang!4447))))

(declare-fun b!1618952 () Bool)

(assert (=> b!1618952 (= e!1038333 (ite (= (head!3362 (++!4680 lt!579274 lt!579264)) (c!263122 lt!579263)) EmptyExpr!4447 EmptyLang!4447))))

(assert (= (and d!487606 c!263749) b!1618944))

(assert (= (and d!487606 (not c!263749)) b!1618943))

(assert (= (and b!1618943 c!263750) b!1618952))

(assert (= (and b!1618943 (not c!263750)) b!1618947))

(assert (= (and b!1618947 c!263751) b!1618946))

(assert (= (and b!1618947 (not c!263751)) b!1618945))

(assert (= (and b!1618945 c!263752) b!1618949))

(assert (= (and b!1618945 (not c!263752)) b!1618950))

(assert (= (and b!1618950 c!263753) b!1618948))

(assert (= (and b!1618950 (not c!263753)) b!1618951))

(assert (= (or b!1618948 b!1618951) bm!105056))

(assert (= (or b!1618949 bm!105056) bm!105055))

(assert (= (or b!1618946 bm!105055) bm!105058))

(assert (= (or b!1618946 b!1618948) bm!105057))

(assert (=> bm!105057 m!1936739))

(declare-fun m!1942461 () Bool)

(assert (=> bm!105057 m!1942461))

(declare-fun m!1942463 () Bool)

(assert (=> d!487606 m!1942463))

(assert (=> d!487606 m!1937263))

(assert (=> bm!105058 m!1936739))

(declare-fun m!1942465 () Bool)

(assert (=> bm!105058 m!1942465))

(declare-fun m!1942467 () Bool)

(assert (=> b!1618950 m!1942467))

(assert (=> b!1616275 d!487606))

(declare-fun d!487608 () Bool)

(assert (=> d!487608 (= (head!3362 (++!4680 lt!579274 lt!579264)) (h!23103 (++!4680 lt!579274 lt!579264)))))

(assert (=> b!1616275 d!487608))

(declare-fun d!487610 () Bool)

(assert (=> d!487610 (= (tail!2332 (++!4680 lt!579274 lt!579264)) (t!148287 (++!4680 lt!579274 lt!579264)))))

(assert (=> b!1616275 d!487610))

(declare-fun d!487612 () Bool)

(assert (=> d!487612 (= (list!6924 lt!579669) (list!6927 (c!263121 lt!579669)))))

(declare-fun bs!394384 () Bool)

(assert (= bs!394384 d!487612))

(declare-fun m!1942469 () Bool)

(assert (=> bs!394384 m!1942469))

(assert (=> d!486310 d!487612))

(declare-fun d!487614 () Bool)

(assert (=> d!487614 (= (isEmpty!10719 lt!579284) (not ((_ is Some!3246) lt!579284)))))

(assert (=> d!486344 d!487614))

(declare-fun b!1618953 () Bool)

(declare-fun res!722756 () Bool)

(declare-fun e!1038339 () Bool)

(assert (=> b!1618953 (=> (not res!722756) (not e!1038339))))

(declare-fun lt!581473 () Option!3247)

(assert (=> b!1618953 (= res!722756 (= (rule!4939 (_1!10020 (get!5079 lt!581473))) (h!23105 rules!1846)))))

(declare-fun b!1618954 () Bool)

(declare-fun res!722758 () Bool)

(assert (=> b!1618954 (=> (not res!722758) (not e!1038339))))

(assert (=> b!1618954 (= res!722758 (< (size!14197 (_2!10020 (get!5079 lt!581473))) (size!14197 lt!579274)))))

(declare-fun d!487616 () Bool)

(declare-fun e!1038336 () Bool)

(assert (=> d!487616 e!1038336))

(declare-fun res!722755 () Bool)

(assert (=> d!487616 (=> res!722755 e!1038336)))

(assert (=> d!487616 (= res!722755 (isEmpty!10719 lt!581473))))

(declare-fun e!1038337 () Option!3247)

(assert (=> d!487616 (= lt!581473 e!1038337)))

(declare-fun c!263754 () Bool)

(declare-fun lt!581472 () tuple2!17248)

(assert (=> d!487616 (= c!263754 (isEmpty!10713 (_1!10026 lt!581472)))))

(assert (=> d!487616 (= lt!581472 (findLongestMatch!285 (regex!3119 (h!23105 rules!1846)) lt!579274))))

(assert (=> d!487616 (ruleValid!730 thiss!17113 (h!23105 rules!1846))))

(assert (=> d!487616 (= (maxPrefixOneRule!761 thiss!17113 (h!23105 rules!1846) lt!579274) lt!581473)))

(declare-fun b!1618955 () Bool)

(assert (=> b!1618955 (= e!1038336 e!1038339)))

(declare-fun res!722759 () Bool)

(assert (=> b!1618955 (=> (not res!722759) (not e!1038339))))

(assert (=> b!1618955 (= res!722759 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581473))))))))

(declare-fun b!1618956 () Bool)

(declare-fun res!722760 () Bool)

(assert (=> b!1618956 (=> (not res!722760) (not e!1038339))))

(assert (=> b!1618956 (= res!722760 (= (value!98564 (_1!10020 (get!5079 lt!581473))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581473)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581473)))))))))

(declare-fun b!1618957 () Bool)

(assert (=> b!1618957 (= e!1038337 None!3246)))

(declare-fun b!1618958 () Bool)

(assert (=> b!1618958 (= e!1038337 (Some!3246 (tuple2!17237 (Token!5805 (apply!4462 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!581472))) (h!23105 rules!1846) (size!14200 (seqFromList!1988 (_1!10026 lt!581472))) (_1!10026 lt!581472)) (_2!10026 lt!581472))))))

(declare-fun lt!581474 () Unit!28465)

(assert (=> b!1618958 (= lt!581474 (longestMatchIsAcceptedByMatchOrIsEmpty!343 (regex!3119 (h!23105 rules!1846)) lt!579274))))

(declare-fun res!722761 () Bool)

(assert (=> b!1618958 (= res!722761 (isEmpty!10713 (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!579274 lt!579274 (size!14197 lt!579274)))))))

(declare-fun e!1038338 () Bool)

(assert (=> b!1618958 (=> res!722761 e!1038338)))

(assert (=> b!1618958 e!1038338))

(declare-fun lt!581475 () Unit!28465)

(assert (=> b!1618958 (= lt!581475 lt!581474)))

(declare-fun lt!581471 () Unit!28465)

(assert (=> b!1618958 (= lt!581471 (lemmaSemiInverse!391 (transformation!3119 (h!23105 rules!1846)) (seqFromList!1988 (_1!10026 lt!581472))))))

(declare-fun b!1618959 () Bool)

(declare-fun res!722757 () Bool)

(assert (=> b!1618959 (=> (not res!722757) (not e!1038339))))

(assert (=> b!1618959 (= res!722757 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581473)))) (_2!10020 (get!5079 lt!581473))) lt!579274))))

(declare-fun b!1618960 () Bool)

(assert (=> b!1618960 (= e!1038338 (matchR!1946 (regex!3119 (h!23105 rules!1846)) (_1!10026 (findLongestMatchInner!359 (regex!3119 (h!23105 rules!1846)) Nil!17702 (size!14197 Nil!17702) lt!579274 lt!579274 (size!14197 lt!579274)))))))

(declare-fun b!1618961 () Bool)

(assert (=> b!1618961 (= e!1038339 (= (size!14194 (_1!10020 (get!5079 lt!581473))) (size!14197 (originalCharacters!3933 (_1!10020 (get!5079 lt!581473))))))))

(assert (= (and d!487616 c!263754) b!1618957))

(assert (= (and d!487616 (not c!263754)) b!1618958))

(assert (= (and b!1618958 (not res!722761)) b!1618960))

(assert (= (and d!487616 (not res!722755)) b!1618955))

(assert (= (and b!1618955 res!722759) b!1618959))

(assert (= (and b!1618959 res!722757) b!1618954))

(assert (= (and b!1618954 res!722758) b!1618953))

(assert (= (and b!1618953 res!722756) b!1618956))

(assert (= (and b!1618956 res!722760) b!1618961))

(declare-fun m!1942471 () Bool)

(assert (=> b!1618953 m!1942471))

(assert (=> b!1618959 m!1942471))

(declare-fun m!1942473 () Bool)

(assert (=> b!1618959 m!1942473))

(assert (=> b!1618959 m!1942473))

(declare-fun m!1942475 () Bool)

(assert (=> b!1618959 m!1942475))

(assert (=> b!1618959 m!1942475))

(declare-fun m!1942477 () Bool)

(assert (=> b!1618959 m!1942477))

(declare-fun m!1942479 () Bool)

(assert (=> b!1618958 m!1942479))

(declare-fun m!1942481 () Bool)

(assert (=> b!1618958 m!1942481))

(assert (=> b!1618958 m!1942481))

(declare-fun m!1942483 () Bool)

(assert (=> b!1618958 m!1942483))

(assert (=> b!1618958 m!1936733))

(assert (=> b!1618958 m!1939331))

(assert (=> b!1618958 m!1939331))

(assert (=> b!1618958 m!1936733))

(declare-fun m!1942485 () Bool)

(assert (=> b!1618958 m!1942485))

(assert (=> b!1618958 m!1942481))

(declare-fun m!1942487 () Bool)

(assert (=> b!1618958 m!1942487))

(assert (=> b!1618958 m!1942481))

(declare-fun m!1942489 () Bool)

(assert (=> b!1618958 m!1942489))

(declare-fun m!1942491 () Bool)

(assert (=> b!1618958 m!1942491))

(assert (=> b!1618961 m!1942471))

(declare-fun m!1942493 () Bool)

(assert (=> b!1618961 m!1942493))

(declare-fun m!1942495 () Bool)

(assert (=> d!487616 m!1942495))

(declare-fun m!1942497 () Bool)

(assert (=> d!487616 m!1942497))

(declare-fun m!1942499 () Bool)

(assert (=> d!487616 m!1942499))

(assert (=> d!487616 m!1938479))

(assert (=> b!1618956 m!1942471))

(declare-fun m!1942501 () Bool)

(assert (=> b!1618956 m!1942501))

(assert (=> b!1618956 m!1942501))

(declare-fun m!1942503 () Bool)

(assert (=> b!1618956 m!1942503))

(assert (=> b!1618960 m!1939331))

(assert (=> b!1618960 m!1936733))

(assert (=> b!1618960 m!1939331))

(assert (=> b!1618960 m!1936733))

(assert (=> b!1618960 m!1942485))

(declare-fun m!1942505 () Bool)

(assert (=> b!1618960 m!1942505))

(assert (=> b!1618954 m!1942471))

(declare-fun m!1942507 () Bool)

(assert (=> b!1618954 m!1942507))

(assert (=> b!1618954 m!1936733))

(assert (=> b!1618955 m!1942471))

(assert (=> b!1618955 m!1942473))

(assert (=> b!1618955 m!1942473))

(assert (=> b!1618955 m!1942475))

(assert (=> b!1618955 m!1942475))

(declare-fun m!1942509 () Bool)

(assert (=> b!1618955 m!1942509))

(assert (=> bm!104847 d!487616))

(declare-fun d!487618 () Bool)

(declare-fun lt!581476 () Int)

(assert (=> d!487618 (= lt!581476 (size!14197 (list!6924 (_2!10019 lt!579819))))))

(assert (=> d!487618 (= lt!581476 (size!14206 (c!263121 (_2!10019 lt!579819))))))

(assert (=> d!487618 (= (size!14200 (_2!10019 lt!579819)) lt!581476)))

(declare-fun bs!394385 () Bool)

(assert (= bs!394385 d!487618))

(assert (=> bs!394385 m!1937573))

(assert (=> bs!394385 m!1937573))

(declare-fun m!1942511 () Bool)

(assert (=> bs!394385 m!1942511))

(declare-fun m!1942513 () Bool)

(assert (=> bs!394385 m!1942513))

(assert (=> b!1616617 d!487618))

(declare-fun d!487620 () Bool)

(declare-fun lt!581477 () Int)

(assert (=> d!487620 (= lt!581477 (size!14197 (list!6924 lt!579260)))))

(assert (=> d!487620 (= lt!581477 (size!14206 (c!263121 lt!579260)))))

(assert (=> d!487620 (= (size!14200 lt!579260) lt!581477)))

(declare-fun bs!394386 () Bool)

(assert (= bs!394386 d!487620))

(assert (=> bs!394386 m!1936479))

(assert (=> bs!394386 m!1936479))

(assert (=> bs!394386 m!1939579))

(declare-fun m!1942515 () Bool)

(assert (=> bs!394386 m!1942515))

(assert (=> b!1616617 d!487620))

(declare-fun b!1618962 () Bool)

(declare-fun res!722767 () Bool)

(declare-fun e!1038340 () Bool)

(assert (=> b!1618962 (=> (not res!722767) (not e!1038340))))

(declare-fun lt!581482 () Option!3247)

(assert (=> b!1618962 (= res!722767 (< (size!14197 (_2!10020 (get!5079 lt!581482))) (size!14197 lt!579276)))))

(declare-fun b!1618963 () Bool)

(declare-fun e!1038341 () Bool)

(assert (=> b!1618963 (= e!1038341 e!1038340)))

(declare-fun res!722763 () Bool)

(assert (=> b!1618963 (=> (not res!722763) (not e!1038340))))

(assert (=> b!1618963 (= res!722763 (isDefined!2614 lt!581482))))

(declare-fun b!1618964 () Bool)

(declare-fun e!1038342 () Option!3247)

(declare-fun lt!581481 () Option!3247)

(declare-fun lt!581480 () Option!3247)

(assert (=> b!1618964 (= e!1038342 (ite (and ((_ is None!3246) lt!581481) ((_ is None!3246) lt!581480)) None!3246 (ite ((_ is None!3246) lt!581480) lt!581481 (ite ((_ is None!3246) lt!581481) lt!581480 (ite (>= (size!14194 (_1!10020 (v!24235 lt!581481))) (size!14194 (_1!10020 (v!24235 lt!581480)))) lt!581481 lt!581480)))))))

(declare-fun call!105064 () Option!3247)

(assert (=> b!1618964 (= lt!581481 call!105064)))

(assert (=> b!1618964 (= lt!581480 (maxPrefix!1312 thiss!17113 (t!148289 (t!148289 rules!1846)) lt!579276))))

(declare-fun b!1618965 () Bool)

(declare-fun res!722766 () Bool)

(assert (=> b!1618965 (=> (not res!722766) (not e!1038340))))

(assert (=> b!1618965 (= res!722766 (= (++!4680 (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581482)))) (_2!10020 (get!5079 lt!581482))) lt!579276))))

(declare-fun b!1618966 () Bool)

(declare-fun res!722768 () Bool)

(assert (=> b!1618966 (=> (not res!722768) (not e!1038340))))

(assert (=> b!1618966 (= res!722768 (= (value!98564 (_1!10020 (get!5079 lt!581482))) (apply!4462 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!581482)))) (seqFromList!1988 (originalCharacters!3933 (_1!10020 (get!5079 lt!581482)))))))))

(declare-fun b!1618967 () Bool)

(declare-fun res!722762 () Bool)

(assert (=> b!1618967 (=> (not res!722762) (not e!1038340))))

(assert (=> b!1618967 (= res!722762 (= (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581482)))) (originalCharacters!3933 (_1!10020 (get!5079 lt!581482)))))))

(declare-fun b!1618968 () Bool)

(assert (=> b!1618968 (= e!1038340 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!581482)))))))

(declare-fun bm!105059 () Bool)

(assert (=> bm!105059 (= call!105064 (maxPrefixOneRule!761 thiss!17113 (h!23105 (t!148289 rules!1846)) lt!579276))))

(declare-fun d!487622 () Bool)

(assert (=> d!487622 e!1038341))

(declare-fun res!722764 () Bool)

(assert (=> d!487622 (=> res!722764 e!1038341)))

(assert (=> d!487622 (= res!722764 (isEmpty!10719 lt!581482))))

(assert (=> d!487622 (= lt!581482 e!1038342)))

(declare-fun c!263755 () Bool)

(assert (=> d!487622 (= c!263755 (and ((_ is Cons!17704) (t!148289 rules!1846)) ((_ is Nil!17704) (t!148289 (t!148289 rules!1846)))))))

(declare-fun lt!581479 () Unit!28465)

(declare-fun lt!581478 () Unit!28465)

(assert (=> d!487622 (= lt!581479 lt!581478)))

(assert (=> d!487622 (isPrefix!1379 lt!579276 lt!579276)))

(assert (=> d!487622 (= lt!581478 (lemmaIsPrefixRefl!946 lt!579276 lt!579276))))

(assert (=> d!487622 (rulesValidInductive!958 thiss!17113 (t!148289 rules!1846))))

(assert (=> d!487622 (= (maxPrefix!1312 thiss!17113 (t!148289 rules!1846) lt!579276) lt!581482)))

(declare-fun b!1618969 () Bool)

(declare-fun res!722765 () Bool)

(assert (=> b!1618969 (=> (not res!722765) (not e!1038340))))

(assert (=> b!1618969 (= res!722765 (matchR!1946 (regex!3119 (rule!4939 (_1!10020 (get!5079 lt!581482)))) (list!6924 (charsOf!1768 (_1!10020 (get!5079 lt!581482))))))))

(declare-fun b!1618970 () Bool)

(assert (=> b!1618970 (= e!1038342 call!105064)))

(assert (= (and d!487622 c!263755) b!1618970))

(assert (= (and d!487622 (not c!263755)) b!1618964))

(assert (= (or b!1618970 b!1618964) bm!105059))

(assert (= (and d!487622 (not res!722764)) b!1618963))

(assert (= (and b!1618963 res!722763) b!1618967))

(assert (= (and b!1618967 res!722762) b!1618962))

(assert (= (and b!1618962 res!722767) b!1618965))

(assert (= (and b!1618965 res!722766) b!1618966))

(assert (= (and b!1618966 res!722768) b!1618969))

(assert (= (and b!1618969 res!722765) b!1618968))

(declare-fun m!1942517 () Bool)

(assert (=> d!487622 m!1942517))

(assert (=> d!487622 m!1937143))

(assert (=> d!487622 m!1937145))

(assert (=> d!487622 m!1938401))

(declare-fun m!1942519 () Bool)

(assert (=> b!1618963 m!1942519))

(declare-fun m!1942521 () Bool)

(assert (=> b!1618966 m!1942521))

(declare-fun m!1942523 () Bool)

(assert (=> b!1618966 m!1942523))

(assert (=> b!1618966 m!1942523))

(declare-fun m!1942525 () Bool)

(assert (=> b!1618966 m!1942525))

(assert (=> b!1618965 m!1942521))

(declare-fun m!1942527 () Bool)

(assert (=> b!1618965 m!1942527))

(assert (=> b!1618965 m!1942527))

(declare-fun m!1942529 () Bool)

(assert (=> b!1618965 m!1942529))

(assert (=> b!1618965 m!1942529))

(declare-fun m!1942531 () Bool)

(assert (=> b!1618965 m!1942531))

(declare-fun m!1942533 () Bool)

(assert (=> b!1618964 m!1942533))

(assert (=> b!1618968 m!1942521))

(declare-fun m!1942535 () Bool)

(assert (=> b!1618968 m!1942535))

(assert (=> b!1618969 m!1942521))

(assert (=> b!1618969 m!1942527))

(assert (=> b!1618969 m!1942527))

(assert (=> b!1618969 m!1942529))

(assert (=> b!1618969 m!1942529))

(declare-fun m!1942537 () Bool)

(assert (=> b!1618969 m!1942537))

(declare-fun m!1942539 () Bool)

(assert (=> bm!105059 m!1942539))

(assert (=> b!1618967 m!1942521))

(assert (=> b!1618967 m!1942527))

(assert (=> b!1618967 m!1942527))

(assert (=> b!1618967 m!1942529))

(assert (=> b!1618962 m!1942521))

(declare-fun m!1942541 () Bool)

(assert (=> b!1618962 m!1942541))

(assert (=> b!1618962 m!1937171))

(assert (=> b!1616431 d!487622))

(declare-fun d!487624 () Bool)

(assert (=> d!487624 (= (isEmpty!10719 lt!579577) (not ((_ is Some!3246) lt!579577)))))

(assert (=> d!486276 d!487624))

(declare-fun d!487626 () Bool)

(declare-fun e!1038343 () Bool)

(assert (=> d!487626 e!1038343))

(declare-fun res!722771 () Bool)

(assert (=> d!487626 (=> res!722771 e!1038343)))

(declare-fun lt!581483 () Bool)

(assert (=> d!487626 (= res!722771 (not lt!581483))))

(declare-fun e!1038344 () Bool)

(assert (=> d!487626 (= lt!581483 e!1038344)))

(declare-fun res!722772 () Bool)

(assert (=> d!487626 (=> res!722772 e!1038344)))

(assert (=> d!487626 (= res!722772 ((_ is Nil!17702) lt!579276))))

(assert (=> d!487626 (= (isPrefix!1379 lt!579276 lt!579276) lt!581483)))

(declare-fun b!1618972 () Bool)

(declare-fun res!722770 () Bool)

(declare-fun e!1038345 () Bool)

(assert (=> b!1618972 (=> (not res!722770) (not e!1038345))))

(assert (=> b!1618972 (= res!722770 (= (head!3362 lt!579276) (head!3362 lt!579276)))))

(declare-fun b!1618971 () Bool)

(assert (=> b!1618971 (= e!1038344 e!1038345)))

(declare-fun res!722769 () Bool)

(assert (=> b!1618971 (=> (not res!722769) (not e!1038345))))

(assert (=> b!1618971 (= res!722769 (not ((_ is Nil!17702) lt!579276)))))

(declare-fun b!1618974 () Bool)

(assert (=> b!1618974 (= e!1038343 (>= (size!14197 lt!579276) (size!14197 lt!579276)))))

(declare-fun b!1618973 () Bool)

(assert (=> b!1618973 (= e!1038345 (isPrefix!1379 (tail!2332 lt!579276) (tail!2332 lt!579276)))))

(assert (= (and d!487626 (not res!722772)) b!1618971))

(assert (= (and b!1618971 res!722769) b!1618972))

(assert (= (and b!1618972 res!722770) b!1618973))

(assert (= (and d!487626 (not res!722771)) b!1618974))

(declare-fun m!1942543 () Bool)

(assert (=> b!1618972 m!1942543))

(assert (=> b!1618972 m!1942543))

(assert (=> b!1618974 m!1937171))

(assert (=> b!1618974 m!1937171))

(declare-fun m!1942545 () Bool)

(assert (=> b!1618973 m!1942545))

(assert (=> b!1618973 m!1942545))

(assert (=> b!1618973 m!1942545))

(assert (=> b!1618973 m!1942545))

(declare-fun m!1942547 () Bool)

(assert (=> b!1618973 m!1942547))

(assert (=> d!486276 d!487626))

(declare-fun d!487628 () Bool)

(assert (=> d!487628 (isPrefix!1379 lt!579276 lt!579276)))

(declare-fun lt!581484 () Unit!28465)

(assert (=> d!487628 (= lt!581484 (choose!9729 lt!579276 lt!579276))))

(assert (=> d!487628 (= (lemmaIsPrefixRefl!946 lt!579276 lt!579276) lt!581484)))

(declare-fun bs!394387 () Bool)

(assert (= bs!394387 d!487628))

(assert (=> bs!394387 m!1937143))

(declare-fun m!1942549 () Bool)

(assert (=> bs!394387 m!1942549))

(assert (=> d!486276 d!487628))

(assert (=> d!486276 d!486626))

(assert (=> b!1616499 d!487424))

(assert (=> b!1616499 d!487426))

(assert (=> b!1616499 d!487428))

(assert (=> b!1616499 d!487430))

(assert (=> b!1616499 d!486668))

(declare-fun b!1618975 () Bool)

(declare-fun res!722773 () Bool)

(declare-fun e!1038346 () Bool)

(assert (=> b!1618975 (=> (not res!722773) (not e!1038346))))

(assert (=> b!1618975 (= res!722773 (<= (- (height!890 (left!14252 (c!263123 lt!579601))) (height!890 (right!14582 (c!263123 lt!579601)))) 1))))

(declare-fun b!1618976 () Bool)

(declare-fun res!722774 () Bool)

(assert (=> b!1618976 (=> (not res!722774) (not e!1038346))))

(assert (=> b!1618976 (= res!722774 (isBalanced!1761 (right!14582 (c!263123 lt!579601))))))

(declare-fun b!1618977 () Bool)

(declare-fun e!1038347 () Bool)

(assert (=> b!1618977 (= e!1038347 e!1038346)))

(declare-fun res!722778 () Bool)

(assert (=> b!1618977 (=> (not res!722778) (not e!1038346))))

(assert (=> b!1618977 (= res!722778 (<= (- 1) (- (height!890 (left!14252 (c!263123 lt!579601))) (height!890 (right!14582 (c!263123 lt!579601))))))))

(declare-fun b!1618978 () Bool)

(declare-fun res!722775 () Bool)

(assert (=> b!1618978 (=> (not res!722775) (not e!1038346))))

(assert (=> b!1618978 (= res!722775 (isBalanced!1761 (left!14252 (c!263123 lt!579601))))))

(declare-fun b!1618979 () Bool)

(assert (=> b!1618979 (= e!1038346 (not (isEmpty!10725 (right!14582 (c!263123 lt!579601)))))))

(declare-fun d!487630 () Bool)

(declare-fun res!722777 () Bool)

(assert (=> d!487630 (=> res!722777 e!1038347)))

(assert (=> d!487630 (= res!722777 (not ((_ is Node!5887) (c!263123 lt!579601))))))

(assert (=> d!487630 (= (isBalanced!1761 (c!263123 lt!579601)) e!1038347)))

(declare-fun b!1618980 () Bool)

(declare-fun res!722776 () Bool)

(assert (=> b!1618980 (=> (not res!722776) (not e!1038346))))

(assert (=> b!1618980 (= res!722776 (not (isEmpty!10725 (left!14252 (c!263123 lt!579601)))))))

(assert (= (and d!487630 (not res!722777)) b!1618977))

(assert (= (and b!1618977 res!722778) b!1618975))

(assert (= (and b!1618975 res!722773) b!1618978))

(assert (= (and b!1618978 res!722775) b!1618976))

(assert (= (and b!1618976 res!722774) b!1618980))

(assert (= (and b!1618980 res!722776) b!1618979))

(declare-fun m!1942551 () Bool)

(assert (=> b!1618975 m!1942551))

(declare-fun m!1942553 () Bool)

(assert (=> b!1618975 m!1942553))

(declare-fun m!1942555 () Bool)

(assert (=> b!1618979 m!1942555))

(assert (=> b!1618977 m!1942551))

(assert (=> b!1618977 m!1942553))

(declare-fun m!1942557 () Bool)

(assert (=> b!1618978 m!1942557))

(declare-fun m!1942559 () Bool)

(assert (=> b!1618976 m!1942559))

(declare-fun m!1942561 () Bool)

(assert (=> b!1618980 m!1942561))

(assert (=> b!1616455 d!487630))

(declare-fun d!487632 () Bool)

(declare-fun e!1038348 () Bool)

(assert (=> d!487632 e!1038348))

(declare-fun res!722779 () Bool)

(assert (=> d!487632 (=> (not res!722779) (not e!1038348))))

(declare-fun lt!581485 () BalanceConc!11718)

(assert (=> d!487632 (= res!722779 (= (list!6923 lt!581485) (t!148288 (t!148288 tokens!457))))))

(assert (=> d!487632 (= lt!581485 (BalanceConc!11719 (fromList!381 (t!148288 (t!148288 tokens!457)))))))

(assert (=> d!487632 (= (fromListB!867 (t!148288 (t!148288 tokens!457))) lt!581485)))

(declare-fun b!1618981 () Bool)

(assert (=> b!1618981 (= e!1038348 (isBalanced!1761 (fromList!381 (t!148288 (t!148288 tokens!457)))))))

(assert (= (and d!487632 res!722779) b!1618981))

(declare-fun m!1942563 () Bool)

(assert (=> d!487632 m!1942563))

(declare-fun m!1942565 () Bool)

(assert (=> d!487632 m!1942565))

(assert (=> b!1618981 m!1942565))

(assert (=> b!1618981 m!1942565))

(declare-fun m!1942567 () Bool)

(assert (=> b!1618981 m!1942567))

(assert (=> d!486342 d!487632))

(declare-fun d!487634 () Bool)

(declare-fun lt!581486 () Bool)

(assert (=> d!487634 (= lt!581486 (isEmpty!10724 (list!6923 (_1!10019 lt!579697))))))

(assert (=> d!487634 (= lt!581486 (isEmpty!10725 (c!263123 (_1!10019 lt!579697))))))

(assert (=> d!487634 (= (isEmpty!10715 (_1!10019 lt!579697)) lt!581486)))

(declare-fun bs!394388 () Bool)

(assert (= bs!394388 d!487634))

(assert (=> bs!394388 m!1937361))

(assert (=> bs!394388 m!1937361))

(declare-fun m!1942569 () Bool)

(assert (=> bs!394388 m!1942569))

(declare-fun m!1942571 () Bool)

(assert (=> bs!394388 m!1942571))

(assert (=> b!1616561 d!487634))

(declare-fun d!487636 () Bool)

(declare-fun lt!581487 () Bool)

(assert (=> d!487636 (= lt!581487 (select (content!2454 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579577)))))))

(declare-fun e!1038350 () Bool)

(assert (=> d!487636 (= lt!581487 e!1038350)))

(declare-fun res!722780 () Bool)

(assert (=> d!487636 (=> (not res!722780) (not e!1038350))))

(assert (=> d!487636 (= res!722780 ((_ is Cons!17704) rules!1846))))

(assert (=> d!487636 (= (contains!3094 rules!1846 (rule!4939 (_1!10020 (get!5079 lt!579577)))) lt!581487)))

(declare-fun b!1618982 () Bool)

(declare-fun e!1038349 () Bool)

(assert (=> b!1618982 (= e!1038350 e!1038349)))

(declare-fun res!722781 () Bool)

(assert (=> b!1618982 (=> res!722781 e!1038349)))

(assert (=> b!1618982 (= res!722781 (= (h!23105 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579577)))))))

(declare-fun b!1618983 () Bool)

(assert (=> b!1618983 (= e!1038349 (contains!3094 (t!148289 rules!1846) (rule!4939 (_1!10020 (get!5079 lt!579577)))))))

(assert (= (and d!487636 res!722780) b!1618982))

(assert (= (and b!1618982 (not res!722781)) b!1618983))

(assert (=> d!487636 m!1938171))

(declare-fun m!1942573 () Bool)

(assert (=> d!487636 m!1942573))

(declare-fun m!1942575 () Bool)

(assert (=> b!1618983 m!1942575))

(assert (=> b!1616435 d!487636))

(assert (=> b!1616435 d!486588))

(declare-fun bs!394389 () Bool)

(declare-fun d!487638 () Bool)

(assert (= bs!394389 (and d!487638 d!486378)))

(declare-fun lambda!67159 () Int)

(assert (=> bs!394389 (= lambda!67159 lambda!67110)))

(declare-fun b!1618988 () Bool)

(declare-fun e!1038355 () Bool)

(assert (=> b!1618988 (= e!1038355 true)))

(declare-fun b!1618987 () Bool)

(declare-fun e!1038354 () Bool)

(assert (=> b!1618987 (= e!1038354 e!1038355)))

(declare-fun b!1618986 () Bool)

(declare-fun e!1038353 () Bool)

(assert (=> b!1618986 (= e!1038353 e!1038354)))

(assert (=> d!487638 e!1038353))

(assert (= b!1618987 b!1618988))

(assert (= b!1618986 b!1618987))

(assert (= (and d!487638 ((_ is Cons!17704) rules!1846)) b!1618986))

(assert (=> b!1618988 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7892 order!10489 lambda!67159))))

(assert (=> b!1618988 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (h!23105 rules!1846)))) (dynLambda!7892 order!10489 lambda!67159))))

(assert (=> d!487638 true))

(declare-fun lt!581488 () Bool)

(assert (=> d!487638 (= lt!581488 (forall!4062 (t!148288 tokens!457) lambda!67159))))

(declare-fun e!1038351 () Bool)

(assert (=> d!487638 (= lt!581488 e!1038351)))

(declare-fun res!722783 () Bool)

(assert (=> d!487638 (=> res!722783 e!1038351)))

(assert (=> d!487638 (= res!722783 (not ((_ is Cons!17703) (t!148288 tokens!457))))))

(assert (=> d!487638 (not (isEmpty!10714 rules!1846))))

(assert (=> d!487638 (= (rulesProduceEachTokenIndividuallyList!950 thiss!17113 rules!1846 (t!148288 tokens!457)) lt!581488)))

(declare-fun b!1618984 () Bool)

(declare-fun e!1038352 () Bool)

(assert (=> b!1618984 (= e!1038351 e!1038352)))

(declare-fun res!722782 () Bool)

(assert (=> b!1618984 (=> (not res!722782) (not e!1038352))))

(assert (=> b!1618984 (= res!722782 (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 (t!148288 tokens!457))))))

(declare-fun b!1618985 () Bool)

(assert (=> b!1618985 (= e!1038352 (rulesProduceEachTokenIndividuallyList!950 thiss!17113 rules!1846 (t!148288 (t!148288 tokens!457))))))

(assert (= (and d!487638 (not res!722783)) b!1618984))

(assert (= (and b!1618984 res!722782) b!1618985))

(declare-fun m!1942577 () Bool)

(assert (=> d!487638 m!1942577))

(assert (=> d!487638 m!1936533))

(assert (=> b!1618984 m!1937327))

(declare-fun m!1942579 () Bool)

(assert (=> b!1618985 m!1942579))

(assert (=> b!1616737 d!487638))

(declare-fun bs!394390 () Bool)

(declare-fun d!487640 () Bool)

(assert (= bs!394390 (and d!487640 d!486308)))

(declare-fun lambda!67164 () Int)

(assert (=> bs!394390 (= lambda!67164 lambda!67101)))

(declare-fun lambda!67165 () Int)

(declare-fun forall!4066 (List!17778 Int) Bool)

(assert (=> d!487640 (forall!4066 (map!3664 rules!1846 lambda!67164) lambda!67165)))

(declare-fun lt!581493 () Unit!28465)

(declare-fun e!1038358 () Unit!28465)

(assert (=> d!487640 (= lt!581493 e!1038358)))

(declare-fun c!263758 () Bool)

(assert (=> d!487640 (= c!263758 ((_ is Nil!17704) rules!1846))))

(assert (=> d!487640 (rulesValidInductive!958 thiss!17113 rules!1846)))

(assert (=> d!487640 (= (lemma!225 rules!1846 thiss!17113 rules!1846) lt!581493)))

(declare-fun b!1618993 () Bool)

(declare-fun Unit!28579 () Unit!28465)

(assert (=> b!1618993 (= e!1038358 Unit!28579)))

(declare-fun b!1618994 () Bool)

(declare-fun Unit!28580 () Unit!28465)

(assert (=> b!1618994 (= e!1038358 Unit!28580)))

(declare-fun lt!581494 () Unit!28465)

(assert (=> b!1618994 (= lt!581494 (lemma!225 rules!1846 thiss!17113 (t!148289 rules!1846)))))

(assert (= (and d!487640 c!263758) b!1618993))

(assert (= (and d!487640 (not c!263758)) b!1618994))

(declare-fun m!1942581 () Bool)

(assert (=> d!487640 m!1942581))

(assert (=> d!487640 m!1942581))

(declare-fun m!1942583 () Bool)

(assert (=> d!487640 m!1942583))

(assert (=> d!487640 m!1936675))

(declare-fun m!1942585 () Bool)

(assert (=> b!1618994 m!1942585))

(assert (=> d!486308 d!487640))

(declare-fun bs!394391 () Bool)

(declare-fun d!487642 () Bool)

(assert (= bs!394391 (and d!487642 d!487640)))

(declare-fun lambda!67168 () Int)

(assert (=> bs!394391 (= lambda!67168 lambda!67165)))

(declare-fun b!1619015 () Bool)

(declare-fun e!1038373 () Bool)

(declare-fun isEmpty!10731 (List!17778) Bool)

(assert (=> b!1619015 (= e!1038373 (isEmpty!10731 (t!148335 (map!3664 rules!1846 lambda!67101))))))

(declare-fun e!1038371 () Bool)

(assert (=> d!487642 e!1038371))

(declare-fun res!722789 () Bool)

(assert (=> d!487642 (=> (not res!722789) (not e!1038371))))

(declare-fun lt!581497 () Regex!4447)

(assert (=> d!487642 (= res!722789 (validRegex!1764 lt!581497))))

(declare-fun e!1038376 () Regex!4447)

(assert (=> d!487642 (= lt!581497 e!1038376)))

(declare-fun c!263767 () Bool)

(assert (=> d!487642 (= c!263767 e!1038373)))

(declare-fun res!722788 () Bool)

(assert (=> d!487642 (=> (not res!722788) (not e!1038373))))

(assert (=> d!487642 (= res!722788 ((_ is Cons!17708) (map!3664 rules!1846 lambda!67101)))))

(assert (=> d!487642 (forall!4066 (map!3664 rules!1846 lambda!67101) lambda!67168)))

(assert (=> d!487642 (= (generalisedUnion!233 (map!3664 rules!1846 lambda!67101)) lt!581497)))

(declare-fun b!1619016 () Bool)

(declare-fun e!1038375 () Bool)

(declare-fun isEmptyLang!71 (Regex!4447) Bool)

(assert (=> b!1619016 (= e!1038375 (isEmptyLang!71 lt!581497))))

(declare-fun b!1619017 () Bool)

(declare-fun e!1038372 () Bool)

(assert (=> b!1619017 (= e!1038375 e!1038372)))

(declare-fun c!263770 () Bool)

(declare-fun tail!2336 (List!17778) List!17778)

(assert (=> b!1619017 (= c!263770 (isEmpty!10731 (tail!2336 (map!3664 rules!1846 lambda!67101))))))

(declare-fun b!1619018 () Bool)

(declare-fun e!1038374 () Regex!4447)

(assert (=> b!1619018 (= e!1038374 EmptyLang!4447)))

(declare-fun b!1619019 () Bool)

(declare-fun head!3369 (List!17778) Regex!4447)

(assert (=> b!1619019 (= e!1038372 (= lt!581497 (head!3369 (map!3664 rules!1846 lambda!67101))))))

(declare-fun b!1619020 () Bool)

(assert (=> b!1619020 (= e!1038374 (Union!4447 (h!23109 (map!3664 rules!1846 lambda!67101)) (generalisedUnion!233 (t!148335 (map!3664 rules!1846 lambda!67101)))))))

(declare-fun b!1619021 () Bool)

(assert (=> b!1619021 (= e!1038376 (h!23109 (map!3664 rules!1846 lambda!67101)))))

(declare-fun b!1619022 () Bool)

(assert (=> b!1619022 (= e!1038376 e!1038374)))

(declare-fun c!263769 () Bool)

(assert (=> b!1619022 (= c!263769 ((_ is Cons!17708) (map!3664 rules!1846 lambda!67101)))))

(declare-fun b!1619023 () Bool)

(declare-fun isUnion!71 (Regex!4447) Bool)

(assert (=> b!1619023 (= e!1038372 (isUnion!71 lt!581497))))

(declare-fun b!1619024 () Bool)

(assert (=> b!1619024 (= e!1038371 e!1038375)))

(declare-fun c!263768 () Bool)

(assert (=> b!1619024 (= c!263768 (isEmpty!10731 (map!3664 rules!1846 lambda!67101)))))

(assert (= (and d!487642 res!722788) b!1619015))

(assert (= (and d!487642 c!263767) b!1619021))

(assert (= (and d!487642 (not c!263767)) b!1619022))

(assert (= (and b!1619022 c!263769) b!1619020))

(assert (= (and b!1619022 (not c!263769)) b!1619018))

(assert (= (and d!487642 res!722789) b!1619024))

(assert (= (and b!1619024 c!263768) b!1619016))

(assert (= (and b!1619024 (not c!263768)) b!1619017))

(assert (= (and b!1619017 c!263770) b!1619019))

(assert (= (and b!1619017 (not c!263770)) b!1619023))

(assert (=> b!1619017 m!1937315))

(declare-fun m!1942587 () Bool)

(assert (=> b!1619017 m!1942587))

(assert (=> b!1619017 m!1942587))

(declare-fun m!1942589 () Bool)

(assert (=> b!1619017 m!1942589))

(assert (=> b!1619024 m!1937315))

(declare-fun m!1942591 () Bool)

(assert (=> b!1619024 m!1942591))

(declare-fun m!1942593 () Bool)

(assert (=> d!487642 m!1942593))

(assert (=> d!487642 m!1937315))

(declare-fun m!1942595 () Bool)

(assert (=> d!487642 m!1942595))

(assert (=> b!1619019 m!1937315))

(declare-fun m!1942597 () Bool)

(assert (=> b!1619019 m!1942597))

(declare-fun m!1942599 () Bool)

(assert (=> b!1619023 m!1942599))

(declare-fun m!1942601 () Bool)

(assert (=> b!1619020 m!1942601))

(declare-fun m!1942603 () Bool)

(assert (=> b!1619016 m!1942603))

(declare-fun m!1942605 () Bool)

(assert (=> b!1619015 m!1942605))

(assert (=> d!486308 d!487642))

(declare-fun d!487644 () Bool)

(declare-fun lt!581500 () List!17778)

(declare-fun size!14209 (List!17778) Int)

(declare-fun size!14210 (List!17774) Int)

(assert (=> d!487644 (= (size!14209 lt!581500) (size!14210 rules!1846))))

(declare-fun e!1038379 () List!17778)

(assert (=> d!487644 (= lt!581500 e!1038379)))

(declare-fun c!263773 () Bool)

(assert (=> d!487644 (= c!263773 ((_ is Nil!17704) rules!1846))))

(assert (=> d!487644 (= (map!3664 rules!1846 lambda!67101) lt!581500)))

(declare-fun b!1619029 () Bool)

(assert (=> b!1619029 (= e!1038379 Nil!17708)))

(declare-fun b!1619030 () Bool)

(declare-fun $colon$colon!315 (List!17778 Regex!4447) List!17778)

(declare-fun dynLambda!7903 (Int Rule!6038) Regex!4447)

(assert (=> b!1619030 (= e!1038379 ($colon$colon!315 (map!3664 (t!148289 rules!1846) lambda!67101) (dynLambda!7903 lambda!67101 (h!23105 rules!1846))))))

(assert (= (and d!487644 c!263773) b!1619029))

(assert (= (and d!487644 (not c!263773)) b!1619030))

(declare-fun b_lambda!51047 () Bool)

(assert (=> (not b_lambda!51047) (not b!1619030)))

(declare-fun m!1942607 () Bool)

(assert (=> d!487644 m!1942607))

(declare-fun m!1942609 () Bool)

(assert (=> d!487644 m!1942609))

(declare-fun m!1942611 () Bool)

(assert (=> b!1619030 m!1942611))

(declare-fun m!1942613 () Bool)

(assert (=> b!1619030 m!1942613))

(assert (=> b!1619030 m!1942611))

(assert (=> b!1619030 m!1942613))

(declare-fun m!1942615 () Bool)

(assert (=> b!1619030 m!1942615))

(assert (=> d!486308 d!487644))

(declare-fun b!1619033 () Bool)

(declare-fun b_free!43591 () Bool)

(declare-fun b_next!44295 () Bool)

(assert (=> b!1619033 (= b_free!43591 (not b_next!44295))))

(declare-fun t!148573 () Bool)

(declare-fun tb!93063 () Bool)

(assert (=> (and b!1619033 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148573) tb!93063))

(declare-fun result!112160 () Bool)

(assert (= result!112160 result!112068))

(assert (=> d!487256 t!148573))

(declare-fun t!148575 () Bool)

(declare-fun tb!93065 () Bool)

(assert (=> (and b!1619033 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148575) tb!93065))

(declare-fun result!112162 () Bool)

(assert (= result!112162 result!112078))

(assert (=> d!487284 t!148575))

(declare-fun t!148577 () Bool)

(declare-fun tb!93067 () Bool)

(assert (=> (and b!1619033 (= (toValue!4542 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148577) tb!93067))

(declare-fun result!112164 () Bool)

(assert (= result!112164 result!112086))

(assert (=> d!487390 t!148577))

(declare-fun tp!471387 () Bool)

(declare-fun b_and!114845 () Bool)

(assert (=> b!1619033 (= tp!471387 (and (=> t!148573 result!112160) (=> t!148575 result!112162) (=> t!148577 result!112164) b_and!114845))))

(declare-fun b_free!43593 () Bool)

(declare-fun b_next!44297 () Bool)

(assert (=> b!1619033 (= b_free!43593 (not b_next!44297))))

(declare-fun t!148579 () Bool)

(declare-fun tb!93069 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148579) tb!93069))

(declare-fun result!112166 () Bool)

(assert (= result!112166 result!111970))

(assert (=> d!486732 t!148579))

(declare-fun t!148581 () Bool)

(declare-fun tb!93071 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148581) tb!93071))

(declare-fun result!112168 () Bool)

(assert (= result!112168 result!112012))

(assert (=> d!486870 t!148581))

(declare-fun t!148583 () Bool)

(declare-fun tb!93073 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148583) tb!93073))

(declare-fun result!112170 () Bool)

(assert (= result!112170 result!111906))

(assert (=> b!1616755 t!148583))

(declare-fun t!148585 () Bool)

(declare-fun tb!93075 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148585) tb!93075))

(declare-fun result!112172 () Bool)

(assert (= result!112172 result!111978))

(assert (=> d!486796 t!148585))

(declare-fun tb!93077 () Bool)

(declare-fun t!148587 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148587) tb!93077))

(declare-fun result!112174 () Bool)

(assert (= result!112174 result!111986))

(assert (=> d!486816 t!148587))

(declare-fun tb!93079 () Bool)

(declare-fun t!148589 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148589) tb!93079))

(declare-fun result!112176 () Bool)

(assert (= result!112176 result!111994))

(assert (=> d!486822 t!148589))

(declare-fun t!148591 () Bool)

(declare-fun tb!93081 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148591) tb!93081))

(declare-fun result!112178 () Bool)

(assert (= result!112178 result!111900))

(assert (=> b!1618409 t!148591))

(assert (=> d!486310 t!148591))

(assert (=> d!486370 t!148583))

(declare-fun t!148593 () Bool)

(declare-fun tb!93083 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148593) tb!93083))

(declare-fun result!112180 () Bool)

(assert (= result!112180 result!112060))

(assert (=> d!487182 t!148593))

(declare-fun tb!93085 () Bool)

(declare-fun t!148595 () Bool)

(assert (=> (and b!1619033 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148595) tb!93085))

(declare-fun result!112182 () Bool)

(assert (= result!112182 result!112094))

(assert (=> d!487476 t!148595))

(declare-fun tp!471384 () Bool)

(declare-fun b_and!114847 () Bool)

(assert (=> b!1619033 (= tp!471384 (and (=> t!148579 result!112166) (=> t!148589 result!112176) (=> t!148595 result!112182) (=> t!148583 result!112170) (=> t!148591 result!112178) (=> t!148587 result!112174) (=> t!148581 result!112168) (=> t!148585 result!112172) (=> t!148593 result!112180) b_and!114847))))

(declare-fun e!1038380 () Bool)

(assert (=> b!1619033 (= e!1038380 (and tp!471387 tp!471384))))

(declare-fun e!1038381 () Bool)

(declare-fun b!1619032 () Bool)

(declare-fun tp!471385 () Bool)

(assert (=> b!1619032 (= e!1038381 (and tp!471385 (inv!23096 (tag!3395 (h!23105 (t!148289 (t!148289 rules!1846))))) (inv!23099 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) e!1038380))))

(declare-fun b!1619031 () Bool)

(declare-fun e!1038383 () Bool)

(declare-fun tp!471386 () Bool)

(assert (=> b!1619031 (= e!1038383 (and e!1038381 tp!471386))))

(assert (=> b!1616802 (= tp!471285 e!1038383)))

(assert (= b!1619032 b!1619033))

(assert (= b!1619031 b!1619032))

(assert (= (and b!1616802 ((_ is Cons!17704) (t!148289 (t!148289 rules!1846)))) b!1619031))

(declare-fun m!1942617 () Bool)

(assert (=> b!1619032 m!1942617))

(declare-fun m!1942619 () Bool)

(assert (=> b!1619032 m!1942619))

(declare-fun b!1619036 () Bool)

(declare-fun e!1038384 () Bool)

(declare-fun tp!471389 () Bool)

(assert (=> b!1619036 (= e!1038384 tp!471389)))

(declare-fun b!1619037 () Bool)

(declare-fun tp!471391 () Bool)

(declare-fun tp!471392 () Bool)

(assert (=> b!1619037 (= e!1038384 (and tp!471391 tp!471392))))

(declare-fun b!1619035 () Bool)

(declare-fun tp!471388 () Bool)

(declare-fun tp!471390 () Bool)

(assert (=> b!1619035 (= e!1038384 (and tp!471388 tp!471390))))

(declare-fun b!1619034 () Bool)

(assert (=> b!1619034 (= e!1038384 tp_is_empty!7253)))

(assert (=> b!1616787 (= tp!471267 e!1038384)))

(assert (= (and b!1616787 ((_ is ElementMatch!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) b!1619034))

(assert (= (and b!1616787 ((_ is Concat!7657) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) b!1619035))

(assert (= (and b!1616787 ((_ is Star!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) b!1619036))

(assert (= (and b!1616787 ((_ is Union!4447) (regex!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) b!1619037))

(declare-fun b!1619040 () Bool)

(declare-fun e!1038385 () Bool)

(declare-fun tp!471394 () Bool)

(assert (=> b!1619040 (= e!1038385 tp!471394)))

(declare-fun b!1619041 () Bool)

(declare-fun tp!471396 () Bool)

(declare-fun tp!471397 () Bool)

(assert (=> b!1619041 (= e!1038385 (and tp!471396 tp!471397))))

(declare-fun b!1619039 () Bool)

(declare-fun tp!471393 () Bool)

(declare-fun tp!471395 () Bool)

(assert (=> b!1619039 (= e!1038385 (and tp!471393 tp!471395))))

(declare-fun b!1619038 () Bool)

(assert (=> b!1619038 (= e!1038385 tp_is_empty!7253)))

(assert (=> b!1616803 (= tp!471284 e!1038385)))

(assert (= (and b!1616803 ((_ is ElementMatch!4447) (regex!3119 (h!23105 (t!148289 rules!1846))))) b!1619038))

(assert (= (and b!1616803 ((_ is Concat!7657) (regex!3119 (h!23105 (t!148289 rules!1846))))) b!1619039))

(assert (= (and b!1616803 ((_ is Star!4447) (regex!3119 (h!23105 (t!148289 rules!1846))))) b!1619040))

(assert (= (and b!1616803 ((_ is Union!4447) (regex!3119 (h!23105 (t!148289 rules!1846))))) b!1619041))

(declare-fun b!1619044 () Bool)

(declare-fun e!1038386 () Bool)

(declare-fun tp!471399 () Bool)

(assert (=> b!1619044 (= e!1038386 tp!471399)))

(declare-fun b!1619045 () Bool)

(declare-fun tp!471401 () Bool)

(declare-fun tp!471402 () Bool)

(assert (=> b!1619045 (= e!1038386 (and tp!471401 tp!471402))))

(declare-fun b!1619043 () Bool)

(declare-fun tp!471398 () Bool)

(declare-fun tp!471400 () Bool)

(assert (=> b!1619043 (= e!1038386 (and tp!471398 tp!471400))))

(declare-fun b!1619042 () Bool)

(assert (=> b!1619042 (= e!1038386 tp_is_empty!7253)))

(assert (=> b!1616772 (= tp!471252 e!1038386)))

(assert (= (and b!1616772 ((_ is ElementMatch!4447) (regOne!9406 (regex!3119 (h!23105 rules!1846))))) b!1619042))

(assert (= (and b!1616772 ((_ is Concat!7657) (regOne!9406 (regex!3119 (h!23105 rules!1846))))) b!1619043))

(assert (= (and b!1616772 ((_ is Star!4447) (regOne!9406 (regex!3119 (h!23105 rules!1846))))) b!1619044))

(assert (= (and b!1616772 ((_ is Union!4447) (regOne!9406 (regex!3119 (h!23105 rules!1846))))) b!1619045))

(declare-fun b!1619048 () Bool)

(declare-fun e!1038387 () Bool)

(declare-fun tp!471404 () Bool)

(assert (=> b!1619048 (= e!1038387 tp!471404)))

(declare-fun b!1619049 () Bool)

(declare-fun tp!471406 () Bool)

(declare-fun tp!471407 () Bool)

(assert (=> b!1619049 (= e!1038387 (and tp!471406 tp!471407))))

(declare-fun b!1619047 () Bool)

(declare-fun tp!471403 () Bool)

(declare-fun tp!471405 () Bool)

(assert (=> b!1619047 (= e!1038387 (and tp!471403 tp!471405))))

(declare-fun b!1619046 () Bool)

(assert (=> b!1619046 (= e!1038387 tp_is_empty!7253)))

(assert (=> b!1616772 (= tp!471254 e!1038387)))

(assert (= (and b!1616772 ((_ is ElementMatch!4447) (regTwo!9406 (regex!3119 (h!23105 rules!1846))))) b!1619046))

(assert (= (and b!1616772 ((_ is Concat!7657) (regTwo!9406 (regex!3119 (h!23105 rules!1846))))) b!1619047))

(assert (= (and b!1616772 ((_ is Star!4447) (regTwo!9406 (regex!3119 (h!23105 rules!1846))))) b!1619048))

(assert (= (and b!1616772 ((_ is Union!4447) (regTwo!9406 (regex!3119 (h!23105 rules!1846))))) b!1619049))

(declare-fun b!1619052 () Bool)

(declare-fun e!1038388 () Bool)

(declare-fun tp!471409 () Bool)

(assert (=> b!1619052 (= e!1038388 tp!471409)))

(declare-fun b!1619053 () Bool)

(declare-fun tp!471411 () Bool)

(declare-fun tp!471412 () Bool)

(assert (=> b!1619053 (= e!1038388 (and tp!471411 tp!471412))))

(declare-fun b!1619051 () Bool)

(declare-fun tp!471408 () Bool)

(declare-fun tp!471410 () Bool)

(assert (=> b!1619051 (= e!1038388 (and tp!471408 tp!471410))))

(declare-fun b!1619050 () Bool)

(assert (=> b!1619050 (= e!1038388 tp_is_empty!7253)))

(assert (=> b!1616768 (= tp!471247 e!1038388)))

(assert (= (and b!1616768 ((_ is ElementMatch!4447) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619050))

(assert (= (and b!1616768 ((_ is Concat!7657) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619051))

(assert (= (and b!1616768 ((_ is Star!4447) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619052))

(assert (= (and b!1616768 ((_ is Union!4447) (regOne!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619053))

(declare-fun b!1619056 () Bool)

(declare-fun e!1038389 () Bool)

(declare-fun tp!471414 () Bool)

(assert (=> b!1619056 (= e!1038389 tp!471414)))

(declare-fun b!1619057 () Bool)

(declare-fun tp!471416 () Bool)

(declare-fun tp!471417 () Bool)

(assert (=> b!1619057 (= e!1038389 (and tp!471416 tp!471417))))

(declare-fun b!1619055 () Bool)

(declare-fun tp!471413 () Bool)

(declare-fun tp!471415 () Bool)

(assert (=> b!1619055 (= e!1038389 (and tp!471413 tp!471415))))

(declare-fun b!1619054 () Bool)

(assert (=> b!1619054 (= e!1038389 tp_is_empty!7253)))

(assert (=> b!1616768 (= tp!471249 e!1038389)))

(assert (= (and b!1616768 ((_ is ElementMatch!4447) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619054))

(assert (= (and b!1616768 ((_ is Concat!7657) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619055))

(assert (= (and b!1616768 ((_ is Star!4447) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619056))

(assert (= (and b!1616768 ((_ is Union!4447) (regTwo!9406 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619057))

(declare-fun b!1619060 () Bool)

(declare-fun e!1038390 () Bool)

(declare-fun tp!471419 () Bool)

(assert (=> b!1619060 (= e!1038390 tp!471419)))

(declare-fun b!1619061 () Bool)

(declare-fun tp!471421 () Bool)

(declare-fun tp!471422 () Bool)

(assert (=> b!1619061 (= e!1038390 (and tp!471421 tp!471422))))

(declare-fun b!1619059 () Bool)

(declare-fun tp!471418 () Bool)

(declare-fun tp!471420 () Bool)

(assert (=> b!1619059 (= e!1038390 (and tp!471418 tp!471420))))

(declare-fun b!1619058 () Bool)

(assert (=> b!1619058 (= e!1038390 tp_is_empty!7253)))

(assert (=> b!1616773 (= tp!471253 e!1038390)))

(assert (= (and b!1616773 ((_ is ElementMatch!4447) (reg!4776 (regex!3119 (h!23105 rules!1846))))) b!1619058))

(assert (= (and b!1616773 ((_ is Concat!7657) (reg!4776 (regex!3119 (h!23105 rules!1846))))) b!1619059))

(assert (= (and b!1616773 ((_ is Star!4447) (reg!4776 (regex!3119 (h!23105 rules!1846))))) b!1619060))

(assert (= (and b!1616773 ((_ is Union!4447) (reg!4776 (regex!3119 (h!23105 rules!1846))))) b!1619061))

(declare-fun b!1619064 () Bool)

(declare-fun e!1038391 () Bool)

(declare-fun tp!471424 () Bool)

(assert (=> b!1619064 (= e!1038391 tp!471424)))

(declare-fun b!1619065 () Bool)

(declare-fun tp!471426 () Bool)

(declare-fun tp!471427 () Bool)

(assert (=> b!1619065 (= e!1038391 (and tp!471426 tp!471427))))

(declare-fun b!1619063 () Bool)

(declare-fun tp!471423 () Bool)

(declare-fun tp!471425 () Bool)

(assert (=> b!1619063 (= e!1038391 (and tp!471423 tp!471425))))

(declare-fun b!1619062 () Bool)

(assert (=> b!1619062 (= e!1038391 tp_is_empty!7253)))

(assert (=> b!1616769 (= tp!471248 e!1038391)))

(assert (= (and b!1616769 ((_ is ElementMatch!4447) (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619062))

(assert (= (and b!1616769 ((_ is Concat!7657) (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619063))

(assert (= (and b!1616769 ((_ is Star!4447) (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619064))

(assert (= (and b!1616769 ((_ is Union!4447) (reg!4776 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619065))

(declare-fun b!1619068 () Bool)

(declare-fun e!1038392 () Bool)

(declare-fun tp!471429 () Bool)

(assert (=> b!1619068 (= e!1038392 tp!471429)))

(declare-fun b!1619069 () Bool)

(declare-fun tp!471431 () Bool)

(declare-fun tp!471432 () Bool)

(assert (=> b!1619069 (= e!1038392 (and tp!471431 tp!471432))))

(declare-fun b!1619067 () Bool)

(declare-fun tp!471428 () Bool)

(declare-fun tp!471430 () Bool)

(assert (=> b!1619067 (= e!1038392 (and tp!471428 tp!471430))))

(declare-fun b!1619066 () Bool)

(assert (=> b!1619066 (= e!1038392 tp_is_empty!7253)))

(assert (=> b!1616774 (= tp!471255 e!1038392)))

(assert (= (and b!1616774 ((_ is ElementMatch!4447) (regOne!9407 (regex!3119 (h!23105 rules!1846))))) b!1619066))

(assert (= (and b!1616774 ((_ is Concat!7657) (regOne!9407 (regex!3119 (h!23105 rules!1846))))) b!1619067))

(assert (= (and b!1616774 ((_ is Star!4447) (regOne!9407 (regex!3119 (h!23105 rules!1846))))) b!1619068))

(assert (= (and b!1616774 ((_ is Union!4447) (regOne!9407 (regex!3119 (h!23105 rules!1846))))) b!1619069))

(declare-fun b!1619072 () Bool)

(declare-fun e!1038393 () Bool)

(declare-fun tp!471434 () Bool)

(assert (=> b!1619072 (= e!1038393 tp!471434)))

(declare-fun b!1619073 () Bool)

(declare-fun tp!471436 () Bool)

(declare-fun tp!471437 () Bool)

(assert (=> b!1619073 (= e!1038393 (and tp!471436 tp!471437))))

(declare-fun b!1619071 () Bool)

(declare-fun tp!471433 () Bool)

(declare-fun tp!471435 () Bool)

(assert (=> b!1619071 (= e!1038393 (and tp!471433 tp!471435))))

(declare-fun b!1619070 () Bool)

(assert (=> b!1619070 (= e!1038393 tp_is_empty!7253)))

(assert (=> b!1616774 (= tp!471256 e!1038393)))

(assert (= (and b!1616774 ((_ is ElementMatch!4447) (regTwo!9407 (regex!3119 (h!23105 rules!1846))))) b!1619070))

(assert (= (and b!1616774 ((_ is Concat!7657) (regTwo!9407 (regex!3119 (h!23105 rules!1846))))) b!1619071))

(assert (= (and b!1616774 ((_ is Star!4447) (regTwo!9407 (regex!3119 (h!23105 rules!1846))))) b!1619072))

(assert (= (and b!1616774 ((_ is Union!4447) (regTwo!9407 (regex!3119 (h!23105 rules!1846))))) b!1619073))

(declare-fun b!1619076 () Bool)

(declare-fun e!1038394 () Bool)

(declare-fun tp!471439 () Bool)

(assert (=> b!1619076 (= e!1038394 tp!471439)))

(declare-fun b!1619077 () Bool)

(declare-fun tp!471441 () Bool)

(declare-fun tp!471442 () Bool)

(assert (=> b!1619077 (= e!1038394 (and tp!471441 tp!471442))))

(declare-fun b!1619075 () Bool)

(declare-fun tp!471438 () Bool)

(declare-fun tp!471440 () Bool)

(assert (=> b!1619075 (= e!1038394 (and tp!471438 tp!471440))))

(declare-fun b!1619074 () Bool)

(assert (=> b!1619074 (= e!1038394 tp_is_empty!7253)))

(assert (=> b!1616770 (= tp!471250 e!1038394)))

(assert (= (and b!1616770 ((_ is ElementMatch!4447) (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619074))

(assert (= (and b!1616770 ((_ is Concat!7657) (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619075))

(assert (= (and b!1616770 ((_ is Star!4447) (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619076))

(assert (= (and b!1616770 ((_ is Union!4447) (regOne!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619077))

(declare-fun b!1619080 () Bool)

(declare-fun e!1038395 () Bool)

(declare-fun tp!471444 () Bool)

(assert (=> b!1619080 (= e!1038395 tp!471444)))

(declare-fun b!1619081 () Bool)

(declare-fun tp!471446 () Bool)

(declare-fun tp!471447 () Bool)

(assert (=> b!1619081 (= e!1038395 (and tp!471446 tp!471447))))

(declare-fun b!1619079 () Bool)

(declare-fun tp!471443 () Bool)

(declare-fun tp!471445 () Bool)

(assert (=> b!1619079 (= e!1038395 (and tp!471443 tp!471445))))

(declare-fun b!1619078 () Bool)

(assert (=> b!1619078 (= e!1038395 tp_is_empty!7253)))

(assert (=> b!1616770 (= tp!471251 e!1038395)))

(assert (= (and b!1616770 ((_ is ElementMatch!4447) (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619078))

(assert (= (and b!1616770 ((_ is Concat!7657) (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619079))

(assert (= (and b!1616770 ((_ is Star!4447) (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619080))

(assert (= (and b!1616770 ((_ is Union!4447) (regTwo!9407 (regex!3119 (rule!4939 (h!23104 tokens!457)))))) b!1619081))

(declare-fun b!1619082 () Bool)

(declare-fun e!1038396 () Bool)

(declare-fun tp!471448 () Bool)

(assert (=> b!1619082 (= e!1038396 (and tp_is_empty!7253 tp!471448))))

(assert (=> b!1616793 (= tp!471274 e!1038396)))

(assert (= (and b!1616793 ((_ is Cons!17702) (t!148287 (originalCharacters!3933 (h!23104 tokens!457))))) b!1619082))

(declare-fun b!1619085 () Bool)

(declare-fun e!1038399 () Bool)

(assert (=> b!1619085 (= e!1038399 true)))

(declare-fun b!1619084 () Bool)

(declare-fun e!1038398 () Bool)

(assert (=> b!1619084 (= e!1038398 e!1038399)))

(declare-fun b!1619083 () Bool)

(declare-fun e!1038397 () Bool)

(assert (=> b!1619083 (= e!1038397 e!1038398)))

(assert (=> b!1616746 e!1038397))

(assert (= b!1619084 b!1619085))

(assert (= b!1619083 b!1619084))

(assert (= (and b!1616746 ((_ is Cons!17704) (t!148289 rules!1846))) b!1619083))

(assert (=> b!1619085 (< (dynLambda!7891 order!10487 (toValue!4542 (transformation!3119 (h!23105 (t!148289 rules!1846))))) (dynLambda!7892 order!10489 lambda!67110))))

(assert (=> b!1619085 (< (dynLambda!7893 order!10491 (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846))))) (dynLambda!7892 order!10489 lambda!67110))))

(declare-fun b!1619089 () Bool)

(declare-fun b_free!43595 () Bool)

(declare-fun b_next!44299 () Bool)

(assert (=> b!1619089 (= b_free!43595 (not b_next!44299))))

(declare-fun t!148597 () Bool)

(declare-fun tb!93087 () Bool)

(assert (=> (and b!1619089 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148597) tb!93087))

(declare-fun result!112184 () Bool)

(assert (= result!112184 result!112068))

(assert (=> d!487256 t!148597))

(declare-fun t!148599 () Bool)

(declare-fun tb!93089 () Bool)

(assert (=> (and b!1619089 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148599) tb!93089))

(declare-fun result!112186 () Bool)

(assert (= result!112186 result!112078))

(assert (=> d!487284 t!148599))

(declare-fun tb!93091 () Bool)

(declare-fun t!148601 () Bool)

(assert (=> (and b!1619089 (= (toValue!4542 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toValue!4542 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148601) tb!93091))

(declare-fun result!112188 () Bool)

(assert (= result!112188 result!112086))

(assert (=> d!487390 t!148601))

(declare-fun tp!471453 () Bool)

(declare-fun b_and!114849 () Bool)

(assert (=> b!1619089 (= tp!471453 (and (=> t!148597 result!112184) (=> t!148599 result!112186) (=> t!148601 result!112188) b_and!114849))))

(declare-fun b_free!43597 () Bool)

(declare-fun b_next!44301 () Bool)

(assert (=> b!1619089 (= b_free!43597 (not b_next!44301))))

(declare-fun tb!93093 () Bool)

(declare-fun t!148603 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (apply!4463 lt!579267 0))))) t!148603) tb!93093))

(declare-fun result!112190 () Bool)

(assert (= result!112190 result!111970))

(assert (=> d!486732 t!148603))

(declare-fun t!148605 () Bool)

(declare-fun tb!93095 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 lt!579806)))) t!148605) tb!93095))

(declare-fun result!112192 () Bool)

(assert (= result!112192 result!112012))

(assert (=> d!486870 t!148605))

(declare-fun t!148607 () Bool)

(declare-fun tb!93097 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457))))) t!148607) tb!93097))

(declare-fun result!112194 () Bool)

(assert (= result!112194 result!111906))

(assert (=> b!1616755 t!148607))

(declare-fun tb!93099 () Bool)

(declare-fun t!148609 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579577)))))) t!148609) tb!93099))

(declare-fun result!112196 () Bool)

(assert (= result!112196 result!111978))

(assert (=> d!486796 t!148609))

(declare-fun t!148611 () Bool)

(declare-fun tb!93101 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579341)))))) t!148611) tb!93101))

(declare-fun result!112198 () Bool)

(assert (= result!112198 result!111986))

(assert (=> d!486816 t!148611))

(declare-fun t!148613 () Bool)

(declare-fun tb!93103 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (_1!10020 (get!5079 lt!579346)))))) t!148613) tb!93103))

(declare-fun result!112200 () Bool)

(assert (= result!112200 result!111994))

(assert (=> d!486822 t!148613))

(declare-fun t!148615 () Bool)

(declare-fun tb!93105 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457)))))) t!148615) tb!93105))

(declare-fun result!112202 () Bool)

(assert (= result!112202 result!111900))

(assert (=> b!1618409 t!148615))

(assert (=> d!486310 t!148615))

(assert (=> d!486370 t!148607))

(declare-fun t!148617 () Bool)

(declare-fun tb!93107 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457))))))) t!148617) tb!93107))

(declare-fun result!112204 () Bool)

(assert (= result!112204 result!112060))

(assert (=> d!487182 t!148617))

(declare-fun t!148619 () Bool)

(declare-fun tb!93109 () Bool)

(assert (=> (and b!1619089 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (Cons!17703 (h!23104 tokens!457) Nil!17703)))))) t!148619) tb!93109))

(declare-fun result!112206 () Bool)

(assert (= result!112206 result!112094))

(assert (=> d!487476 t!148619))

(declare-fun b_and!114851 () Bool)

(declare-fun tp!471450 () Bool)

(assert (=> b!1619089 (= tp!471450 (and (=> t!148617 result!112204) (=> t!148603 result!112190) (=> t!148609 result!112196) (=> t!148615 result!112202) (=> t!148605 result!112192) (=> t!148607 result!112194) (=> t!148611 result!112198) (=> t!148613 result!112200) (=> t!148619 result!112206) b_and!114851))))

(declare-fun e!1038400 () Bool)

(assert (=> b!1619089 (= e!1038400 (and tp!471453 tp!471450))))

(declare-fun e!1038401 () Bool)

(assert (=> b!1616785 (= tp!471269 e!1038401)))

(declare-fun e!1038404 () Bool)

(declare-fun e!1038402 () Bool)

(declare-fun tp!471452 () Bool)

(declare-fun b!1619087 () Bool)

(assert (=> b!1619087 (= e!1038404 (and (inv!21 (value!98564 (h!23104 (t!148288 (t!148288 tokens!457))))) e!1038402 tp!471452))))

(declare-fun b!1619086 () Bool)

(declare-fun tp!471451 () Bool)

(assert (=> b!1619086 (= e!1038401 (and (inv!23100 (h!23104 (t!148288 (t!148288 tokens!457)))) e!1038404 tp!471451))))

(declare-fun b!1619088 () Bool)

(declare-fun tp!471449 () Bool)

(assert (=> b!1619088 (= e!1038402 (and tp!471449 (inv!23096 (tag!3395 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (inv!23099 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) e!1038400))))

(assert (= b!1619088 b!1619089))

(assert (= b!1619087 b!1619088))

(assert (= b!1619086 b!1619087))

(assert (= (and b!1616785 ((_ is Cons!17703) (t!148288 (t!148288 tokens!457)))) b!1619086))

(declare-fun m!1942621 () Bool)

(assert (=> b!1619087 m!1942621))

(declare-fun m!1942623 () Bool)

(assert (=> b!1619086 m!1942623))

(declare-fun m!1942625 () Bool)

(assert (=> b!1619088 m!1942625))

(declare-fun m!1942627 () Bool)

(assert (=> b!1619088 m!1942627))

(declare-fun b!1619098 () Bool)

(declare-fun e!1038410 () Bool)

(declare-fun tp!471460 () Bool)

(declare-fun tp!471461 () Bool)

(assert (=> b!1619098 (= e!1038410 (and (inv!23103 (left!14251 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))) tp!471460 (inv!23103 (right!14581 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))) tp!471461))))

(declare-fun b!1619100 () Bool)

(declare-fun e!1038411 () Bool)

(declare-fun tp!471462 () Bool)

(assert (=> b!1619100 (= e!1038411 tp!471462)))

(declare-fun b!1619099 () Bool)

(declare-fun inv!23110 (IArray!11777) Bool)

(assert (=> b!1619099 (= e!1038410 (and (inv!23110 (xs!8714 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))) e!1038411))))

(assert (=> b!1616610 (= tp!471185 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457))))) e!1038410))))

(assert (= (and b!1616610 ((_ is Node!5886) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))) b!1619098))

(assert (= b!1619099 b!1619100))

(assert (= (and b!1616610 ((_ is Leaf!8666) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (value!98564 (h!23104 tokens!457)))))) b!1619099))

(declare-fun m!1942629 () Bool)

(assert (=> b!1619098 m!1942629))

(declare-fun m!1942631 () Bool)

(assert (=> b!1619098 m!1942631))

(declare-fun m!1942633 () Bool)

(assert (=> b!1619099 m!1942633))

(assert (=> b!1616610 m!1937547))

(declare-fun b!1619101 () Bool)

(declare-fun tp!471464 () Bool)

(declare-fun tp!471463 () Bool)

(declare-fun e!1038412 () Bool)

(assert (=> b!1619101 (= e!1038412 (and (inv!23103 (left!14251 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))) tp!471463 (inv!23103 (right!14581 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))) tp!471464))))

(declare-fun b!1619103 () Bool)

(declare-fun e!1038413 () Bool)

(declare-fun tp!471465 () Bool)

(assert (=> b!1619103 (= e!1038413 tp!471465)))

(declare-fun b!1619102 () Bool)

(assert (=> b!1619102 (= e!1038412 (and (inv!23110 (xs!8714 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))) e!1038413))))

(assert (=> b!1616509 (= tp!471184 (and (inv!23103 (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457)))))) e!1038412))))

(assert (= (and b!1616509 ((_ is Node!5886) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))) b!1619101))

(assert (= b!1619102 b!1619103))

(assert (= (and b!1616509 ((_ is Leaf!8666) (c!263121 (dynLambda!7890 (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (value!98564 (h!23104 (t!148288 tokens!457))))))) b!1619102))

(declare-fun m!1942635 () Bool)

(assert (=> b!1619101 m!1942635))

(declare-fun m!1942637 () Bool)

(assert (=> b!1619101 m!1942637))

(declare-fun m!1942639 () Bool)

(assert (=> b!1619102 m!1942639))

(assert (=> b!1616509 m!1937319))

(declare-fun b!1619104 () Bool)

(declare-fun e!1038414 () Bool)

(declare-fun tp!471466 () Bool)

(assert (=> b!1619104 (= e!1038414 (and tp_is_empty!7253 tp!471466))))

(assert (=> b!1616786 (= tp!471270 e!1038414)))

(assert (= (and b!1616786 ((_ is Cons!17702) (originalCharacters!3933 (h!23104 (t!148288 tokens!457))))) b!1619104))

(declare-fun b_lambda!51049 () Bool)

(assert (= b_lambda!51023 (or (and b!1616788 b_free!43577 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))) (and b!1619089 b_free!43597) (and b!1616140 b_free!43561 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))) (and b!1616148 b_free!43565 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))) (and b!1616804 b_free!43581 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))) (and b!1619033 b_free!43593 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))))) b_lambda!51049)))

(declare-fun b_lambda!51051 () Bool)

(assert (= b_lambda!51007 (or d!486378 b_lambda!51051)))

(declare-fun bs!394392 () Bool)

(declare-fun d!487646 () Bool)

(assert (= bs!394392 (and d!487646 d!486378)))

(assert (=> bs!394392 (= (dynLambda!7898 lambda!67110 (h!23104 tokens!457)) (rulesProduceIndividualToken!1400 thiss!17113 rules!1846 (h!23104 tokens!457)))))

(assert (=> bs!394392 m!1936459))

(assert (=> b!1617806 d!487646))

(declare-fun b_lambda!51053 () Bool)

(assert (= b_lambda!51029 (or (and b!1616788 b_free!43577) (and b!1619033 b_free!43593 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 (t!148289 rules!1846))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1616140 b_free!43561 (= (toChars!4401 (transformation!3119 (h!23105 rules!1846))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1616804 b_free!43581 (= (toChars!4401 (transformation!3119 (h!23105 (t!148289 rules!1846)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1616148 b_free!43565 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 tokens!457)))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) (and b!1619089 b_free!43597 (= (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 (t!148288 tokens!457)))))) (toChars!4401 (transformation!3119 (rule!4939 (h!23104 (t!148288 tokens!457))))))) b_lambda!51053)))

(declare-fun b_lambda!51055 () Bool)

(assert (= b_lambda!51047 (or d!486308 b_lambda!51055)))

(declare-fun bs!394393 () Bool)

(declare-fun d!487648 () Bool)

(assert (= bs!394393 (and d!487648 d!486308)))

(assert (=> bs!394393 (= (dynLambda!7903 lambda!67101 (h!23105 rules!1846)) (regex!3119 (h!23105 rules!1846)))))

(assert (=> b!1619030 d!487648))

(check-sat (not bm!104974) (not b!1617533) (not b!1617164) (not d!487334) (not b!1618528) (not b!1618523) b_and!114817 (not b_lambda!50995) (not b!1618410) (not d!486734) (not b!1618534) (not b!1618675) (not b!1618906) (not b!1617137) (not b!1619073) (not b!1617528) (not d!487200) (not b!1619037) (not b!1618556) (not b!1618877) (not b!1617185) (not b!1617694) (not b!1618302) (not d!486570) (not b!1618540) (not b!1619035) (not b!1617519) (not b!1617500) (not bm!105032) (not b!1617097) (not b!1617158) (not d!487452) (not b_lambda!51027) (not b!1619077) (not d!487398) (not b!1618520) (not b!1619039) (not d!486626) (not b!1618351) (not b!1617124) (not d!487420) (not b!1618608) (not d!487474) (not d!486784) (not d!486772) (not d!486904) (not b!1617427) (not b!1619024) (not b!1618298) (not b!1618596) (not bm!104983) (not b!1618402) (not d!486740) (not tb!92919) (not d!486560) (not bm!105040) (not b!1618538) (not d!487272) (not d!486950) (not bm!105028) (not b!1617701) (not bm!104979) (not b!1617363) (not b!1617456) (not b!1617178) (not b!1617825) (not b!1617468) (not b!1618962) (not b!1617426) (not b_lambda!51053) (not d!486920) (not d!487448) (not b!1617063) (not d!487492) (not bm!104932) (not bm!104987) (not d!487238) (not b!1618535) (not b!1619103) (not b!1617504) (not b!1617585) (not d!486638) (not b!1618377) (not b!1619071) (not d!486888) (not d!486886) (not b!1618964) (not d!487506) (not b!1617752) (not d!486612) (not d!487258) (not b!1617785) (not d!486940) (not b!1619064) (not d!487526) (not d!487318) (not b!1618689) (not bm!104989) (not b!1618369) (not d!487438) (not d!486640) (not b!1617564) (not d!486890) (not b!1617423) (not b!1618504) (not b!1619098) (not d!486908) (not b!1618573) (not d!486744) (not b!1619068) (not d!486800) (not b!1617748) (not b!1618682) (not d!486870) (not b!1618878) (not b!1618772) (not b!1618561) (not tb!92975) (not d!486756) (not d!486956) (not d!487232) (not b!1618968) (not b!1617782) (not b!1618881) (not b!1619069) (not d!486750) (not b!1619044) (not d!486958) (not b!1617162) (not b!1618324) (not d!487590) (not b!1619067) (not d!487460) (not d!486746) (not b!1617479) (not b!1618719) (not b!1617510) (not b!1618506) (not b!1618882) (not b!1617700) (not b!1617810) (not b_lambda!51001) (not b!1618409) (not b!1617157) (not b!1617764) (not b!1617760) (not d!487594) (not b!1618273) (not b!1618638) (not d!486826) (not b!1618567) (not b!1617121) (not d!486544) (not bm!105038) (not d!487642) (not d!487212) (not bm!104970) (not bm!105033) (not b!1617851) (not b!1618628) (not b!1617168) (not b!1618769) (not b!1617820) (not d!486752) (not b!1619082) (not d!487260) (not b!1618530) (not b!1617582) (not b!1618965) (not b!1618888) (not d!486764) b_and!114827 (not d!486938) (not b!1619045) (not bm!104988) (not d!487240) (not b!1618766) (not d!486766) (not d!487412) (not d!487464) (not b!1617754) (not b!1617488) (not b!1618702) (not d!487354) (not b!1617163) (not b!1618445) (not b!1617487) (not b!1617696) (not d!486930) (not b!1618607) (not b!1618521) (not d!487628) (not b!1617199) (not b!1617474) (not b!1617578) (not b!1619015) (not b!1618414) (not b!1618646) (not b!1618683) (not b!1618966) (not b!1618502) (not b!1618967) (not d!487598) (not b_next!44281) (not b!1618581) (not b!1618700) (not d!487644) (not b!1618407) (not b_lambda!51033) (not b!1617125) (not b_next!44297) (not b_lambda!50999) (not b!1618319) (not b!1617140) (not b!1617141) (not b!1617434) (not b!1618367) (not b!1617824) (not d!486732) (not b!1617823) (not bm!105011) (not b!1618903) (not b!1619055) (not b!1619043) tp_is_empty!7253 (not b!1618311) (not b!1617464) (not b!1619080) (not b!1618776) (not d!486934) (not d!487612) (not b!1617243) (not b!1617821) (not b!1619031) (not b!1618487) (not d!486778) (not b_next!44263) (not d!486568) (not d!486814) b_and!114845 (not d!486820) b_and!114851 (not bm!104927) (not b!1617538) (not tb!92879) (not b!1618553) (not d!487400) (not b!1619032) (not b!1617797) (not b!1618327) (not b!1619023) (not b!1618508) (not b!1617819) (not b!1618536) (not d!486894) (not b!1619086) (not b!1618986) (not b!1618300) (not b!1617815) (not b!1618394) (not b!1617179) (not b!1618323) (not b!1617067) (not d!487476) (not b!1618744) (not b!1619019) (not b!1617832) (not b!1617129) (not d!486616) (not b!1618629) (not bm!104929) (not b!1617155) (not b!1618321) (not b!1618393) (not bm!104992) (not d!486928) (not d!487410) (not b_next!44283) (not b!1618950) (not d!487416) (not b!1617767) (not b!1617747) (not d!487620) (not d!486816) (not b!1619051) (not d!486806) (not b!1618885) (not d!487640) (not b!1617098) (not b!1618376) (not b!1618412) (not b!1618551) (not b!1618592) (not b!1618400) (not b!1618955) (not d!487262) (not b!1617499) (not d!486618) (not b!1617061) (not b!1617060) (not d!487378) (not b!1618518) (not b!1617368) (not b!1618773) (not d!487182) (not b!1617073) (not b!1617807) (not bm!104991) (not b!1619017) (not b!1617836) (not b!1619030) (not b!1617379) (not b!1618515) (not b!1617173) (not b!1618325) (not b_next!44279) (not d!486896) (not d!486798) (not d!487616) (not b!1617065) (not bm!104928) (not b!1618517) (not b!1617699) (not d!486776) (not b!1617838) (not b!1618268) (not b!1618908) (not d!486762) (not b!1618669) (not d!487436) (not bm!105029) (not b!1618390) (not b!1617476) (not b!1618721) (not b!1618609) (not b!1619101) (not b!1618994) (not b!1618588) (not b!1618695) (not b_next!44269) (not b_next!44265) (not d!486954) (not b!1617826) b_and!114849 (not b!1617381) (not b!1617167) (not b!1617817) (not b!1617058) (not b!1618686) (not b!1617527) (not b!1617762) (not b!1618691) (not d!487392) (not b!1617425) (not b!1617573) (not d!486792) (not b!1617424) (not d!486912) (not b!1619063) (not b!1617524) (not d!486902) (not d!487592) (not b!1617809) (not b!1617486) (not d!487488) (not d!487580) b_and!114823 (not b!1619104) (not b!1617561) (not bm!105013) (not d!486770) (not d!486636) (not b!1617139) (not b!1618673) (not b!1617458) (not b!1617126) (not d!486736) (not d!487274) (not b!1617587) (not b!1617059) (not b!1619102) (not d!486906) (not d!486822) (not bm!104982) (not d!486946) (not b!1618961) (not b!1618265) (not b!1617138) (not b!1617575) (not b!1618699) (not bm!105042) (not b!1618648) (not b!1619081) (not b!1619100) (not b!1617563) (not d!487340) (not d!486598) (not b!1618312) (not b!1618652) (not b_lambda!51051) (not d!487632) (not b!1618879) (not d!487230) (not d!487178) (not b!1618920) (not b!1618522) (not b!1618983) (not b!1618650) (not b!1617556) (not d!486578) (not d!486916) (not d!487206) (not b!1618579) (not bm!105059) (not b!1617835) (not d!487638) (not b!1618954) (not d!486730) (not b!1617840) (not tb!92967) (not b!1617370) (not b!1618693) (not b!1617266) (not b!1617842) (not b_lambda!51005) (not d!486926) (not b!1617516) (not d!487528) (not d!487342) (not b!1617269) (not b!1618886) (not b!1619099) (not b!1618654) (not b!1618598) (not b_lambda!50987) (not d!487332) (not d!487368) (not b!1617562) (not b!1617580) (not b!1617759) (not b!1617586) (not d!487600) (not b!1616610) (not b!1618500) (not tb!92903) (not b!1618276) (not b!1618531) (not d!487472) (not b!1618299) (not b!1617509) (not bm!105012) (not b!1619076) (not b!1617522) (not d!487586) (not d!486910) (not bm!105031) (not d!487190) (not b!1617709) (not b!1618953) b_and!114815 (not b!1617373) (not b!1617526) (not b!1617784) (not d!487618) (not d!486892) (not b!1618519) (not d!487226) (not d!486782) (not b!1617156) (not b!1617161) (not d!486794) (not b!1617576) b_and!114847 (not d!486810) (not bm!105036) (not b!1618558) (not d!486922) (not b!1617560) (not b!1617430) (not b!1619059) (not b!1618668) (not b!1619087) (not b!1618586) (not d!486634) (not b!1618594) (not b!1617567) (not b!1618318) (not b!1618266) (not tb!92991) (not bm!105057) (not b!1618527) (not b!1617756) (not b!1617160) (not b_lambda!51049) (not b!1618724) (not b!1617698) (not d!487468) (not d!486960) (not d!487606) (not b!1617515) (not b!1618546) (not d!486774) (not b!1617494) (not b!1617270) (not b!1619061) (not b!1618875) (not b!1618960) (not b!1617813) (not b!1617128) (not b!1618413) (not b!1618889) (not d!487386) (not d!487534) (not b!1617122) (not d!487288) (not b_next!44285) (not d!487362) (not b!1618301) (not b!1617565) (not bm!104973) (not b!1618563) (not b!1617136) (not d!487582) (not d!486942) (not d!486574) b_and!114821 (not d!487208) (not d!487622) (not b!1619075) (not b!1618981) (not bm!105039) (not b!1617066) (not b!1619048) (not b!1618599) (not b!1618645) (not b!1617695) (not b!1618510) (not d!486828) (not d!487204) (not b!1618722) (not b!1619020) (not b!1618975) (not b!1617844) (not d!487584) (not b!1617197) (not b!1617765) (not b!1617127) (not b!1618317) (not d!487402) (not d!487634) (not b!1618326) (not b!1617761) (not bm!105008) (not b_next!44295) (not b!1618963) (not b!1618972) (not b!1618720) (not b!1618304) (not b!1617539) (not b!1617159) (not b!1618585) (not d!487576) (not b!1618976) (not b!1618884) (not b_lambda!50983) (not d!487418) (not b!1617498) (not d!486760) (not b!1618507) (not b_next!44299) (not d!486592) (not d!487366) (not b!1619049) (not b!1618584) (not d!486754) (not b!1618767) (not b!1618632) (not tb!92887) (not b!1617268) (not b!1618490) (not d!487194) (not b!1617172) b_and!114819 (not d!487198) (not b!1617830) (not d!487264) (not d!486948) (not d!486824) (not b!1619079) (not d!487440) (not b!1618974) (not b!1617849) (not b!1617783) (not d!487636) (not b!1617422) (not d!486738) (not d!487486) (not b!1618557) (not d!487218) (not b!1619060) (not b!1618984) (not b!1617264) (not d!486624) (not d!486758) (not d!487360) (not b!1618880) (not b!1617831) (not b!1618488) (not b!1618978) (not b!1618389) (not b!1617523) (not b!1618726) (not b!1618555) (not b!1618516) (not b!1618980) (not d!486576) (not b!1617693) (not b!1618921) (not b!1618973) (not b!1618548) (not d!486644) (not b_lambda!50997) (not b!1618876) (not b!1618310) (not b!1618328) (not bs!394392) (not b!1617262) b_and!114825 (not d!486914) (not d!487174) (not b!1619047) (not b!1618959) (not b!1618406) (not b_next!44301) (not d!486610) (not b_lambda!51055) (not d!487376) (not d!486704) (not b!1619072) (not b!1618745) (not b!1617592) (not b!1618269) (not b_lambda!51031) (not b!1618778) (not b!1619041) (not b!1617557) (not d!487604) (not b!1619065) (not b!1618979) (not b!1618264) (not tb!92999) (not b!1617553) (not b!1618630) (not b!1618274) (not b!1617119) (not d!487380) (not b!1618587) (not d!486768) (not b!1618575) (not b!1619052) (not bm!104975) (not b!1618562) (not b!1619088) (not b!1617198) (not b!1618687) (not b!1617183) (not b!1617566) (not b_next!44267) (not b!1619016) (not b!1618907) (not b!1618770) (not b!1617431) (not b!1619056) (not d!486924) (not b!1618969) (not bm!105041) (not d!487186) (not b!1618297) (not b!1618432) (not b!1618919) (not b!1617848) (not b!1617142) (not d!486932) (not d!486884) (not b!1619040) b_and!114813 (not b!1618677) (not tb!92895) (not b!1617525) (not b!1618727) (not b!1618725) (not b!1618977) (not b!1617552) (not b!1618352) (not b!1618985) (not b!1619053) (not b_lambda!51035) (not d!486642) (not b!1618532) (not b!1618764) (not d!486712) (not bm!105058) (not d!487504) (not b!1617555) (not b!1618296) (not b!1617827) (not d!486796) (not d!487286) (not b!1618671) (not d!487196) (not b!1617047) (not d!487374) (not b!1618571) (not b!1618904) (not tb!92983) (not b!1618958) (not b!1617123) (not b!1617554) (not b!1618554) (not b!1618322) (not b!1618320) (not d!486668) (not b!1618717) (not d!487224) (not b!1619036) (not d!487484) (not b!1617501) (not d!486600) (not b!1617822) (not bm!105010) (not b!1618303) (not b!1618498) (not b_lambda!50985) (not b!1617068) (not b!1618545) (not d!486802) (not b!1617811) (not d!486874) (not b!1619083) (not d!487292) (not b!1618956) (not d!487346) (not d!486804) (not d!487344) (not b!1616509) (not b!1618566) (not b!1617492) (not d!486632) (not b!1617171) (not d!487450) (not b!1618569) (not b!1619057) (not b!1617568) (not d!487396) (not b!1617750) (not b!1618552) (not d!487578) (not b!1617470) (not d!487278) (not b!1617143) (not b!1617074) (not b!1617818) (not b!1618549) (not b!1618922) (not b!1617766) (not b!1618539) (not d!486558))
(check-sat b_and!114817 b_and!114827 (not b_next!44283) (not b_next!44279) b_and!114823 (not b_next!44285) b_and!114821 (not b_next!44295) (not b_next!44267) b_and!114813 (not b_next!44281) (not b_next!44297) (not b_next!44263) b_and!114845 b_and!114851 b_and!114849 (not b_next!44265) (not b_next!44269) b_and!114815 b_and!114847 (not b_next!44299) b_and!114819 (not b_next!44301) b_and!114825)
