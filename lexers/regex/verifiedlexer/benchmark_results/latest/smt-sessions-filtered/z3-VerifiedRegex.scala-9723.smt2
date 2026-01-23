; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508240 () Bool)

(assert start!508240)

(declare-fun b!4862549 () Bool)

(declare-fun b_free!130571 () Bool)

(declare-fun b_next!131361 () Bool)

(assert (=> b!4862549 (= b_free!130571 (not b_next!131361))))

(declare-fun tp!1368301 () Bool)

(declare-fun b_and!342423 () Bool)

(assert (=> b!4862549 (= tp!1368301 b_and!342423)))

(declare-fun b_free!130573 () Bool)

(declare-fun b_next!131363 () Bool)

(assert (=> b!4862549 (= b_free!130573 (not b_next!131363))))

(declare-fun tp!1368303 () Bool)

(declare-fun b_and!342425 () Bool)

(assert (=> b!4862549 (= tp!1368303 b_and!342425)))

(declare-fun b!4862540 () Bool)

(declare-fun res!2075833 () Bool)

(declare-fun e!3040270 () Bool)

(assert (=> b!4862540 (=> (not res!2075833) (not e!3040270))))

(declare-datatypes ((LexerInterface!7618 0))(
  ( (LexerInterfaceExt!7615 (__x!33965 Int)) (Lexer!7616) )
))
(declare-fun thiss!11777 () LexerInterface!7618)

(declare-datatypes ((List!56036 0))(
  ( (Nil!55912) (Cons!55912 (h!62360 (_ BitVec 16)) (t!363660 List!56036)) )
))
(declare-datatypes ((TokenValue!8336 0))(
  ( (FloatLiteralValue!16672 (text!58797 List!56036)) (TokenValueExt!8335 (__x!33966 Int)) (Broken!41680 (value!257859 List!56036)) (Object!8459) (End!8336) (Def!8336) (Underscore!8336) (Match!8336) (Else!8336) (Error!8336) (Case!8336) (If!8336) (Extends!8336) (Abstract!8336) (Class!8336) (Val!8336) (DelimiterValue!16672 (del!8396 List!56036)) (KeywordValue!8342 (value!257860 List!56036)) (CommentValue!16672 (value!257861 List!56036)) (WhitespaceValue!16672 (value!257862 List!56036)) (IndentationValue!8336 (value!257863 List!56036)) (String!63097) (Int32!8336) (Broken!41681 (value!257864 List!56036)) (Boolean!8337) (Unit!145919) (OperatorValue!8339 (op!8396 List!56036)) (IdentifierValue!16672 (value!257865 List!56036)) (IdentifierValue!16673 (value!257866 List!56036)) (WhitespaceValue!16673 (value!257867 List!56036)) (True!16672) (False!16672) (Broken!41682 (value!257868 List!56036)) (Broken!41683 (value!257869 List!56036)) (True!16673) (RightBrace!8336) (RightBracket!8336) (Colon!8336) (Null!8336) (Comma!8336) (LeftBracket!8336) (False!16673) (LeftBrace!8336) (ImaginaryLiteralValue!8336 (text!58798 List!56036)) (StringLiteralValue!25008 (value!257870 List!56036)) (EOFValue!8336 (value!257871 List!56036)) (IdentValue!8336 (value!257872 List!56036)) (DelimiterValue!16673 (value!257873 List!56036)) (DedentValue!8336 (value!257874 List!56036)) (NewLineValue!8336 (value!257875 List!56036)) (IntegerValue!25008 (value!257876 (_ BitVec 32)) (text!58799 List!56036)) (IntegerValue!25009 (value!257877 Int) (text!58800 List!56036)) (Times!8336) (Or!8336) (Equal!8336) (Minus!8336) (Broken!41684 (value!257878 List!56036)) (And!8336) (Div!8336) (LessEqual!8336) (Mod!8336) (Concat!21437) (Not!8336) (Plus!8336) (SpaceValue!8336 (value!257879 List!56036)) (IntegerValue!25010 (value!257880 Int) (text!58801 List!56036)) (StringLiteralValue!25009 (text!58802 List!56036)) (FloatLiteralValue!16673 (text!58803 List!56036)) (BytesLiteralValue!8336 (value!257881 List!56036)) (CommentValue!16673 (value!257882 List!56036)) (StringLiteralValue!25010 (value!257883 List!56036)) (ErrorTokenValue!8336 (msg!8397 List!56036)) )
))
(declare-datatypes ((C!26400 0))(
  ( (C!26401 (val!22522 Int)) )
))
(declare-datatypes ((List!56037 0))(
  ( (Nil!55913) (Cons!55913 (h!62361 C!26400) (t!363661 List!56037)) )
))
(declare-datatypes ((IArray!29187 0))(
  ( (IArray!29188 (innerList!14651 List!56037)) )
))
(declare-datatypes ((Conc!14563 0))(
  ( (Node!14563 (left!40608 Conc!14563) (right!40938 Conc!14563) (csize!29356 Int) (cheight!14774 Int)) (Leaf!24287 (xs!17869 IArray!29187) (csize!29357 Int)) (Empty!14563) )
))
(declare-datatypes ((BalanceConc!28568 0))(
  ( (BalanceConc!28569 (c!826974 Conc!14563)) )
))
(declare-datatypes ((TokenValueInjection!15980 0))(
  ( (TokenValueInjection!15981 (toValue!10881 Int) (toChars!10740 Int)) )
))
(declare-datatypes ((String!63098 0))(
  ( (String!63099 (value!257884 String)) )
))
(declare-datatypes ((Regex!13101 0))(
  ( (ElementMatch!13101 (c!826975 C!26400)) (Concat!21438 (regOne!26714 Regex!13101) (regTwo!26714 Regex!13101)) (EmptyExpr!13101) (Star!13101 (reg!13430 Regex!13101)) (EmptyLang!13101) (Union!13101 (regOne!26715 Regex!13101) (regTwo!26715 Regex!13101)) )
))
(declare-datatypes ((Rule!15852 0))(
  ( (Rule!15853 (regex!8026 Regex!13101) (tag!8890 String!63098) (isSeparator!8026 Bool) (transformation!8026 TokenValueInjection!15980)) )
))
(declare-datatypes ((List!56038 0))(
  ( (Nil!55914) (Cons!55914 (h!62362 Rule!15852) (t!363662 List!56038)) )
))
(declare-fun rules!1248 () List!56038)

(declare-fun rulesInvariant!6716 (LexerInterface!7618 List!56038) Bool)

(assert (=> b!4862540 (= res!2075833 (rulesInvariant!6716 thiss!11777 rules!1248))))

(declare-fun b!4862541 () Bool)

(declare-fun e!3040272 () Bool)

(declare-fun input!661 () BalanceConc!28568)

(declare-fun tp!1368299 () Bool)

(declare-fun inv!71807 (Conc!14563) Bool)

(assert (=> b!4862541 (= e!3040272 (and (inv!71807 (c!826974 input!661)) tp!1368299))))

(declare-fun b!4862542 () Bool)

(declare-fun e!3040274 () Bool)

(assert (=> b!4862542 (= e!3040270 e!3040274)))

(declare-fun res!2075836 () Bool)

(assert (=> b!4862542 (=> (not res!2075836) (not e!3040274))))

(declare-fun lt!1992697 () List!56037)

(declare-fun totalInput!332 () BalanceConc!28568)

(declare-fun isSuffix!1055 (List!56037 List!56037) Bool)

(declare-fun list!17460 (BalanceConc!28568) List!56037)

(assert (=> b!4862542 (= res!2075836 (isSuffix!1055 lt!1992697 (list!17460 totalInput!332)))))

(assert (=> b!4862542 (= lt!1992697 (list!17460 input!661))))

(declare-fun b!4862543 () Bool)

(declare-fun e!3040271 () Bool)

(declare-fun e!3040275 () Bool)

(declare-fun tp!1368298 () Bool)

(assert (=> b!4862543 (= e!3040271 (and e!3040275 tp!1368298))))

(declare-fun b!4862544 () Bool)

(declare-fun e!3040267 () Bool)

(declare-datatypes ((Token!14640 0))(
  ( (Token!14641 (value!257885 TokenValue!8336) (rule!11144 Rule!15852) (size!36832 Int) (originalCharacters!8351 List!56037)) )
))
(declare-datatypes ((tuple2!59738 0))(
  ( (tuple2!59739 (_1!33172 Token!14640) (_2!33172 BalanceConc!28568)) )
))
(declare-datatypes ((Option!13771 0))(
  ( (None!13770) (Some!13770 (v!49672 tuple2!59738)) )
))
(declare-fun lt!1992698 () Option!13771)

(declare-fun ++!12171 (List!56037 List!56037) List!56037)

(declare-fun charsOf!5333 (Token!14640) BalanceConc!28568)

(assert (=> b!4862544 (= e!3040267 (not (= (++!12171 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))) (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1992697)))))

(declare-datatypes ((List!56039 0))(
  ( (Nil!55915) (Cons!55915 (h!62363 Token!14640) (t!363663 List!56039)) )
))
(declare-datatypes ((IArray!29189 0))(
  ( (IArray!29190 (innerList!14652 List!56039)) )
))
(declare-datatypes ((Conc!14564 0))(
  ( (Node!14564 (left!40609 Conc!14564) (right!40939 Conc!14564) (csize!29358 Int) (cheight!14775 Int)) (Leaf!24288 (xs!17870 IArray!29189) (csize!29359 Int)) (Empty!14564) )
))
(declare-datatypes ((BalanceConc!28570 0))(
  ( (BalanceConc!28571 (c!826976 Conc!14564)) )
))
(declare-datatypes ((tuple2!59740 0))(
  ( (tuple2!59741 (_1!33173 BalanceConc!28570) (_2!33173 BalanceConc!28568)) )
))
(declare-fun lt!1992696 () tuple2!59740)

(declare-fun lexRec!843 (LexerInterface!7618 List!56038 BalanceConc!28568) tuple2!59740)

(assert (=> b!4862544 (= lt!1992696 (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992698))))))

(declare-fun b!4862545 () Bool)

(assert (=> b!4862545 (= e!3040274 e!3040267)))

(declare-fun res!2075834 () Bool)

(assert (=> b!4862545 (=> (not res!2075834) (not e!3040267))))

(get-info :version)

(assert (=> b!4862545 (= res!2075834 ((_ is Some!13770) lt!1992698))))

(declare-fun maxPrefixZipperSequenceV2!625 (LexerInterface!7618 List!56038 BalanceConc!28568 BalanceConc!28568) Option!13771)

(assert (=> b!4862545 (= lt!1992698 (maxPrefixZipperSequenceV2!625 thiss!11777 rules!1248 input!661 totalInput!332))))

(declare-fun b!4862546 () Bool)

(declare-fun e!3040273 () Bool)

(declare-fun tp!1368300 () Bool)

(assert (=> b!4862546 (= e!3040273 (and (inv!71807 (c!826974 totalInput!332)) tp!1368300))))

(declare-fun e!3040269 () Bool)

(declare-fun b!4862547 () Bool)

(declare-fun tp!1368302 () Bool)

(declare-fun inv!71803 (String!63098) Bool)

(declare-fun inv!71808 (TokenValueInjection!15980) Bool)

(assert (=> b!4862547 (= e!3040275 (and tp!1368302 (inv!71803 (tag!8890 (h!62362 rules!1248))) (inv!71808 (transformation!8026 (h!62362 rules!1248))) e!3040269))))

(declare-fun b!4862548 () Bool)

(declare-fun res!2075835 () Bool)

(assert (=> b!4862548 (=> (not res!2075835) (not e!3040270))))

(declare-fun isEmpty!29891 (List!56038) Bool)

(assert (=> b!4862548 (= res!2075835 (not (isEmpty!29891 rules!1248)))))

(assert (=> b!4862549 (= e!3040269 (and tp!1368301 tp!1368303))))

(declare-fun res!2075837 () Bool)

(assert (=> start!508240 (=> (not res!2075837) (not e!3040270))))

(assert (=> start!508240 (= res!2075837 ((_ is Lexer!7616) thiss!11777))))

(assert (=> start!508240 e!3040270))

(assert (=> start!508240 true))

(assert (=> start!508240 e!3040271))

(declare-fun inv!71809 (BalanceConc!28568) Bool)

(assert (=> start!508240 (and (inv!71809 totalInput!332) e!3040273)))

(assert (=> start!508240 (and (inv!71809 input!661) e!3040272)))

(assert (= (and start!508240 res!2075837) b!4862548))

(assert (= (and b!4862548 res!2075835) b!4862540))

(assert (= (and b!4862540 res!2075833) b!4862542))

(assert (= (and b!4862542 res!2075836) b!4862545))

(assert (= (and b!4862545 res!2075834) b!4862544))

(assert (= b!4862547 b!4862549))

(assert (= b!4862543 b!4862547))

(assert (= (and start!508240 ((_ is Cons!55914) rules!1248)) b!4862543))

(assert (= start!508240 b!4862546))

(assert (= start!508240 b!4862541))

(declare-fun m!5860098 () Bool)

(assert (=> b!4862541 m!5860098))

(declare-fun m!5860100 () Bool)

(assert (=> b!4862540 m!5860100))

(declare-fun m!5860102 () Bool)

(assert (=> start!508240 m!5860102))

(declare-fun m!5860104 () Bool)

(assert (=> start!508240 m!5860104))

(declare-fun m!5860106 () Bool)

(assert (=> b!4862546 m!5860106))

(declare-fun m!5860108 () Bool)

(assert (=> b!4862544 m!5860108))

(declare-fun m!5860110 () Bool)

(assert (=> b!4862544 m!5860110))

(declare-fun m!5860112 () Bool)

(assert (=> b!4862544 m!5860112))

(declare-fun m!5860114 () Bool)

(assert (=> b!4862544 m!5860114))

(assert (=> b!4862544 m!5860110))

(assert (=> b!4862544 m!5860112))

(assert (=> b!4862544 m!5860108))

(declare-fun m!5860116 () Bool)

(assert (=> b!4862544 m!5860116))

(declare-fun m!5860118 () Bool)

(assert (=> b!4862545 m!5860118))

(declare-fun m!5860120 () Bool)

(assert (=> b!4862548 m!5860120))

(declare-fun m!5860122 () Bool)

(assert (=> b!4862547 m!5860122))

(declare-fun m!5860124 () Bool)

(assert (=> b!4862547 m!5860124))

(declare-fun m!5860126 () Bool)

(assert (=> b!4862542 m!5860126))

(assert (=> b!4862542 m!5860126))

(declare-fun m!5860128 () Bool)

(assert (=> b!4862542 m!5860128))

(declare-fun m!5860130 () Bool)

(assert (=> b!4862542 m!5860130))

(check-sat (not b!4862541) (not b_next!131363) b_and!342423 (not b!4862546) (not b!4862545) (not b_next!131361) (not b!4862548) (not b!4862547) (not b!4862543) (not b!4862542) (not start!508240) b_and!342425 (not b!4862540) (not b!4862544))
(check-sat b_and!342425 b_and!342423 (not b_next!131361) (not b_next!131363))
(get-model)

(declare-fun d!1560530 () Bool)

(declare-fun list!17462 (Conc!14563) List!56037)

(assert (=> d!1560530 (= (list!17460 (_2!33172 (v!49672 lt!1992698))) (list!17462 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun bs!1174007 () Bool)

(assert (= bs!1174007 d!1560530))

(declare-fun m!5860132 () Bool)

(assert (=> bs!1174007 m!5860132))

(assert (=> b!4862544 d!1560530))

(declare-fun b!4862626 () Bool)

(declare-fun e!3040329 () Bool)

(declare-fun lt!1992737 () tuple2!59740)

(assert (=> b!4862626 (= e!3040329 (= (list!17460 (_2!33173 lt!1992737)) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun d!1560532 () Bool)

(declare-fun e!3040330 () Bool)

(assert (=> d!1560532 e!3040330))

(declare-fun res!2075886 () Bool)

(assert (=> d!1560532 (=> (not res!2075886) (not e!3040330))))

(assert (=> d!1560532 (= res!2075886 e!3040329)))

(declare-fun c!826993 () Bool)

(declare-fun size!36836 (BalanceConc!28570) Int)

(assert (=> d!1560532 (= c!826993 (> (size!36836 (_1!33173 lt!1992737)) 0))))

(declare-fun e!3040328 () tuple2!59740)

(assert (=> d!1560532 (= lt!1992737 e!3040328)))

(declare-fun c!826994 () Bool)

(declare-fun lt!1992736 () Option!13771)

(assert (=> d!1560532 (= c!826994 ((_ is Some!13770) lt!1992736))))

(declare-fun maxPrefixZipperSequence!1221 (LexerInterface!7618 List!56038 BalanceConc!28568) Option!13771)

(assert (=> d!1560532 (= lt!1992736 (maxPrefixZipperSequence!1221 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1560532 (= (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992698))) lt!1992737)))

(declare-fun b!4862627 () Bool)

(declare-datatypes ((tuple2!59746 0))(
  ( (tuple2!59747 (_1!33176 List!56039) (_2!33176 List!56037)) )
))
(declare-fun lexList!2099 (LexerInterface!7618 List!56038 List!56037) tuple2!59746)

(assert (=> b!4862627 (= e!3040330 (= (list!17460 (_2!33173 lt!1992737)) (_2!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4862628 () Bool)

(declare-fun e!3040331 () Bool)

(assert (=> b!4862628 (= e!3040329 e!3040331)))

(declare-fun res!2075885 () Bool)

(declare-fun size!36837 (BalanceConc!28568) Int)

(assert (=> b!4862628 (= res!2075885 (< (size!36837 (_2!33173 lt!1992737)) (size!36837 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> b!4862628 (=> (not res!2075885) (not e!3040331))))

(declare-fun b!4862629 () Bool)

(assert (=> b!4862629 (= e!3040328 (tuple2!59741 (BalanceConc!28571 Empty!14564) (_2!33172 (v!49672 lt!1992698))))))

(declare-fun b!4862630 () Bool)

(declare-fun lt!1992735 () tuple2!59740)

(declare-fun prepend!1388 (BalanceConc!28570 Token!14640) BalanceConc!28570)

(assert (=> b!4862630 (= e!3040328 (tuple2!59741 (prepend!1388 (_1!33173 lt!1992735) (_1!33172 (v!49672 lt!1992736))) (_2!33173 lt!1992735)))))

(assert (=> b!4862630 (= lt!1992735 (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992736))))))

(declare-fun b!4862631 () Bool)

(declare-fun isEmpty!29893 (BalanceConc!28570) Bool)

(assert (=> b!4862631 (= e!3040331 (not (isEmpty!29893 (_1!33173 lt!1992737))))))

(declare-fun b!4862632 () Bool)

(declare-fun res!2075887 () Bool)

(assert (=> b!4862632 (=> (not res!2075887) (not e!3040330))))

(declare-fun list!17464 (BalanceConc!28570) List!56039)

(assert (=> b!4862632 (= res!2075887 (= (list!17464 (_1!33173 lt!1992737)) (_1!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1560532 c!826994) b!4862630))

(assert (= (and d!1560532 (not c!826994)) b!4862629))

(assert (= (and d!1560532 c!826993) b!4862628))

(assert (= (and d!1560532 (not c!826993)) b!4862626))

(assert (= (and b!4862628 res!2075885) b!4862631))

(assert (= (and d!1560532 res!2075886) b!4862632))

(assert (= (and b!4862632 res!2075887) b!4862627))

(declare-fun m!5860214 () Bool)

(assert (=> b!4862628 m!5860214))

(declare-fun m!5860216 () Bool)

(assert (=> b!4862628 m!5860216))

(declare-fun m!5860218 () Bool)

(assert (=> d!1560532 m!5860218))

(declare-fun m!5860220 () Bool)

(assert (=> d!1560532 m!5860220))

(declare-fun m!5860222 () Bool)

(assert (=> b!4862627 m!5860222))

(assert (=> b!4862627 m!5860108))

(assert (=> b!4862627 m!5860108))

(declare-fun m!5860224 () Bool)

(assert (=> b!4862627 m!5860224))

(declare-fun m!5860226 () Bool)

(assert (=> b!4862630 m!5860226))

(declare-fun m!5860228 () Bool)

(assert (=> b!4862630 m!5860228))

(assert (=> b!4862626 m!5860222))

(assert (=> b!4862626 m!5860108))

(declare-fun m!5860230 () Bool)

(assert (=> b!4862631 m!5860230))

(declare-fun m!5860232 () Bool)

(assert (=> b!4862632 m!5860232))

(assert (=> b!4862632 m!5860108))

(assert (=> b!4862632 m!5860108))

(assert (=> b!4862632 m!5860224))

(assert (=> b!4862544 d!1560532))

(declare-fun d!1560566 () Bool)

(declare-fun lt!1992740 () BalanceConc!28568)

(assert (=> d!1560566 (= (list!17460 lt!1992740) (originalCharacters!8351 (_1!33172 (v!49672 lt!1992698))))))

(declare-fun dynLambda!22418 (Int TokenValue!8336) BalanceConc!28568)

(assert (=> d!1560566 (= lt!1992740 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560566 (= (charsOf!5333 (_1!33172 (v!49672 lt!1992698))) lt!1992740)))

(declare-fun b_lambda!193403 () Bool)

(assert (=> (not b_lambda!193403) (not d!1560566)))

(declare-fun t!363667 () Bool)

(declare-fun tb!257581 () Bool)

(assert (=> (and b!4862549 (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698)))))) t!363667) tb!257581))

(declare-fun b!4862637 () Bool)

(declare-fun e!3040334 () Bool)

(declare-fun tp!1368309 () Bool)

(assert (=> b!4862637 (= e!3040334 (and (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) tp!1368309))))

(declare-fun result!320654 () Bool)

(assert (=> tb!257581 (= result!320654 (and (inv!71809 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))) e!3040334))))

(assert (= tb!257581 b!4862637))

(declare-fun m!5860234 () Bool)

(assert (=> b!4862637 m!5860234))

(declare-fun m!5860236 () Bool)

(assert (=> tb!257581 m!5860236))

(assert (=> d!1560566 t!363667))

(declare-fun b_and!342429 () Bool)

(assert (= b_and!342425 (and (=> t!363667 result!320654) b_and!342429)))

(declare-fun m!5860238 () Bool)

(assert (=> d!1560566 m!5860238))

(declare-fun m!5860240 () Bool)

(assert (=> d!1560566 m!5860240))

(assert (=> b!4862544 d!1560566))

(declare-fun d!1560568 () Bool)

(assert (=> d!1560568 (= (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))) (list!17462 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(declare-fun bs!1174013 () Bool)

(assert (= bs!1174013 d!1560568))

(declare-fun m!5860242 () Bool)

(assert (=> bs!1174013 m!5860242))

(assert (=> b!4862544 d!1560568))

(declare-fun d!1560570 () Bool)

(declare-fun e!3040340 () Bool)

(assert (=> d!1560570 e!3040340))

(declare-fun res!2075893 () Bool)

(assert (=> d!1560570 (=> (not res!2075893) (not e!3040340))))

(declare-fun lt!1992743 () List!56037)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9960 (List!56037) (InoxSet C!26400))

(assert (=> d!1560570 (= res!2075893 (= (content!9960 lt!1992743) ((_ map or) (content!9960 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) (content!9960 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun e!3040339 () List!56037)

(assert (=> d!1560570 (= lt!1992743 e!3040339)))

(declare-fun c!826997 () Bool)

(assert (=> d!1560570 (= c!826997 ((_ is Nil!55913) (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1560570 (= (++!12171 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))) (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1992743)))

(declare-fun b!4862648 () Bool)

(declare-fun res!2075892 () Bool)

(assert (=> b!4862648 (=> (not res!2075892) (not e!3040340))))

(declare-fun size!36838 (List!56037) Int)

(assert (=> b!4862648 (= res!2075892 (= (size!36838 lt!1992743) (+ (size!36838 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4862647 () Bool)

(assert (=> b!4862647 (= e!3040339 (Cons!55913 (h!62361 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) (++!12171 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4862649 () Bool)

(assert (=> b!4862649 (= e!3040340 (or (not (= (list!17460 (_2!33172 (v!49672 lt!1992698))) Nil!55913)) (= lt!1992743 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4862646 () Bool)

(assert (=> b!4862646 (= e!3040339 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (= (and d!1560570 c!826997) b!4862646))

(assert (= (and d!1560570 (not c!826997)) b!4862647))

(assert (= (and d!1560570 res!2075893) b!4862648))

(assert (= (and b!4862648 res!2075892) b!4862649))

(declare-fun m!5860244 () Bool)

(assert (=> d!1560570 m!5860244))

(assert (=> d!1560570 m!5860112))

(declare-fun m!5860246 () Bool)

(assert (=> d!1560570 m!5860246))

(assert (=> d!1560570 m!5860108))

(declare-fun m!5860248 () Bool)

(assert (=> d!1560570 m!5860248))

(declare-fun m!5860250 () Bool)

(assert (=> b!4862648 m!5860250))

(assert (=> b!4862648 m!5860112))

(declare-fun m!5860252 () Bool)

(assert (=> b!4862648 m!5860252))

(assert (=> b!4862648 m!5860108))

(declare-fun m!5860254 () Bool)

(assert (=> b!4862648 m!5860254))

(assert (=> b!4862647 m!5860108))

(declare-fun m!5860256 () Bool)

(assert (=> b!4862647 m!5860256))

(assert (=> b!4862544 d!1560570))

(declare-fun d!1560572 () Bool)

(declare-fun isBalanced!3946 (Conc!14563) Bool)

(assert (=> d!1560572 (= (inv!71809 totalInput!332) (isBalanced!3946 (c!826974 totalInput!332)))))

(declare-fun bs!1174014 () Bool)

(assert (= bs!1174014 d!1560572))

(declare-fun m!5860258 () Bool)

(assert (=> bs!1174014 m!5860258))

(assert (=> start!508240 d!1560572))

(declare-fun d!1560574 () Bool)

(assert (=> d!1560574 (= (inv!71809 input!661) (isBalanced!3946 (c!826974 input!661)))))

(declare-fun bs!1174015 () Bool)

(assert (= bs!1174015 d!1560574))

(declare-fun m!5860260 () Bool)

(assert (=> bs!1174015 m!5860260))

(assert (=> start!508240 d!1560574))

(declare-fun d!1560576 () Bool)

(declare-fun c!827000 () Bool)

(assert (=> d!1560576 (= c!827000 ((_ is Node!14563) (c!826974 totalInput!332)))))

(declare-fun e!3040345 () Bool)

(assert (=> d!1560576 (= (inv!71807 (c!826974 totalInput!332)) e!3040345)))

(declare-fun b!4862656 () Bool)

(declare-fun inv!71813 (Conc!14563) Bool)

(assert (=> b!4862656 (= e!3040345 (inv!71813 (c!826974 totalInput!332)))))

(declare-fun b!4862657 () Bool)

(declare-fun e!3040346 () Bool)

(assert (=> b!4862657 (= e!3040345 e!3040346)))

(declare-fun res!2075896 () Bool)

(assert (=> b!4862657 (= res!2075896 (not ((_ is Leaf!24287) (c!826974 totalInput!332))))))

(assert (=> b!4862657 (=> res!2075896 e!3040346)))

(declare-fun b!4862658 () Bool)

(declare-fun inv!71814 (Conc!14563) Bool)

(assert (=> b!4862658 (= e!3040346 (inv!71814 (c!826974 totalInput!332)))))

(assert (= (and d!1560576 c!827000) b!4862656))

(assert (= (and d!1560576 (not c!827000)) b!4862657))

(assert (= (and b!4862657 (not res!2075896)) b!4862658))

(declare-fun m!5860262 () Bool)

(assert (=> b!4862656 m!5860262))

(declare-fun m!5860264 () Bool)

(assert (=> b!4862658 m!5860264))

(assert (=> b!4862546 d!1560576))

(declare-fun b!4862735 () Bool)

(declare-fun e!3040397 () Option!13771)

(declare-fun call!337800 () Option!13771)

(assert (=> b!4862735 (= e!3040397 call!337800)))

(declare-fun b!4862736 () Bool)

(declare-fun res!2075923 () Bool)

(declare-fun e!3040398 () Bool)

(assert (=> b!4862736 (=> (not res!2075923) (not e!3040398))))

(declare-fun e!3040395 () Bool)

(assert (=> b!4862736 (= res!2075923 e!3040395)))

(declare-fun res!2075919 () Bool)

(assert (=> b!4862736 (=> res!2075919 e!3040395)))

(declare-fun lt!1992770 () Option!13771)

(declare-fun isDefined!10840 (Option!13771) Bool)

(assert (=> b!4862736 (= res!2075919 (not (isDefined!10840 lt!1992770)))))

(declare-fun b!4862737 () Bool)

(declare-fun e!3040396 () Bool)

(declare-fun e!3040394 () Bool)

(assert (=> b!4862737 (= e!3040396 e!3040394)))

(declare-fun res!2075918 () Bool)

(assert (=> b!4862737 (=> (not res!2075918) (not e!3040394))))

(declare-fun get!19216 (Option!13771) tuple2!59738)

(declare-datatypes ((tuple2!59748 0))(
  ( (tuple2!59749 (_1!33177 Token!14640) (_2!33177 List!56037)) )
))
(declare-datatypes ((Option!13773 0))(
  ( (None!13772) (Some!13772 (v!49674 tuple2!59748)) )
))
(declare-fun get!19217 (Option!13773) tuple2!59748)

(declare-fun maxPrefix!4545 (LexerInterface!7618 List!56038 List!56037) Option!13773)

(assert (=> b!4862737 (= res!2075918 (= (_1!33172 (get!19216 lt!1992770)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661))))))))

(declare-fun b!4862738 () Bool)

(assert (=> b!4862738 (= e!3040394 (= (list!17460 (_2!33172 (get!19216 lt!1992770))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661))))))))

(declare-fun b!4862739 () Bool)

(assert (=> b!4862739 (= e!3040398 e!3040396)))

(declare-fun res!2075922 () Bool)

(assert (=> b!4862739 (=> res!2075922 e!3040396)))

(assert (=> b!4862739 (= res!2075922 (not (isDefined!10840 lt!1992770)))))

(declare-fun e!3040399 () Bool)

(declare-fun b!4862740 () Bool)

(declare-fun maxPrefixZipper!559 (LexerInterface!7618 List!56038 List!56037) Option!13773)

(assert (=> b!4862740 (= e!3040399 (= (list!17460 (_2!33172 (get!19216 lt!1992770))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))))))))

(declare-fun d!1560578 () Bool)

(assert (=> d!1560578 e!3040398))

(declare-fun res!2075921 () Bool)

(assert (=> d!1560578 (=> (not res!2075921) (not e!3040398))))

(declare-fun isDefined!10841 (Option!13773) Bool)

(assert (=> d!1560578 (= res!2075921 (= (isDefined!10840 lt!1992770) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661)))))))

(assert (=> d!1560578 (= lt!1992770 e!3040397)))

(declare-fun c!827009 () Bool)

(assert (=> d!1560578 (= c!827009 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-datatypes ((Unit!145922 0))(
  ( (Unit!145923) )
))
(declare-fun lt!1992769 () Unit!145922)

(declare-fun lt!1992768 () Unit!145922)

(assert (=> d!1560578 (= lt!1992769 lt!1992768)))

(declare-fun lt!1992773 () List!56037)

(declare-fun lt!1992772 () List!56037)

(declare-fun isPrefix!4762 (List!56037 List!56037) Bool)

(assert (=> d!1560578 (isPrefix!4762 lt!1992773 lt!1992772)))

(declare-fun lemmaIsPrefixRefl!3159 (List!56037 List!56037) Unit!145922)

(assert (=> d!1560578 (= lt!1992768 (lemmaIsPrefixRefl!3159 lt!1992773 lt!1992772))))

(assert (=> d!1560578 (= lt!1992772 (list!17460 input!661))))

(assert (=> d!1560578 (= lt!1992773 (list!17460 input!661))))

(declare-fun rulesValidInductive!3015 (LexerInterface!7618 List!56038) Bool)

(assert (=> d!1560578 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560578 (= (maxPrefixZipperSequenceV2!625 thiss!11777 rules!1248 input!661 totalInput!332) lt!1992770)))

(declare-fun b!4862741 () Bool)

(declare-fun lt!1992771 () Option!13771)

(declare-fun lt!1992767 () Option!13771)

(assert (=> b!4862741 (= e!3040397 (ite (and ((_ is None!13770) lt!1992771) ((_ is None!13770) lt!1992767)) None!13770 (ite ((_ is None!13770) lt!1992767) lt!1992771 (ite ((_ is None!13770) lt!1992771) lt!1992767 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1992771))) (size!36832 (_1!33172 (v!49672 lt!1992767)))) lt!1992771 lt!1992767)))))))

(assert (=> b!4862741 (= lt!1992771 call!337800)))

(assert (=> b!4862741 (= lt!1992767 (maxPrefixZipperSequenceV2!625 thiss!11777 (t!363662 rules!1248) input!661 totalInput!332))))

(declare-fun bm!337795 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!254 (LexerInterface!7618 Rule!15852 BalanceConc!28568 BalanceConc!28568) Option!13771)

(assert (=> bm!337795 (= call!337800 (maxPrefixOneRuleZipperSequenceV2!254 thiss!11777 (h!62362 rules!1248) input!661 totalInput!332))))

(declare-fun b!4862742 () Bool)

(assert (=> b!4862742 (= e!3040395 e!3040399)))

(declare-fun res!2075920 () Bool)

(assert (=> b!4862742 (=> (not res!2075920) (not e!3040399))))

(assert (=> b!4862742 (= res!2075920 (= (_1!33172 (get!19216 lt!1992770)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))))))))

(assert (= (and d!1560578 c!827009) b!4862735))

(assert (= (and d!1560578 (not c!827009)) b!4862741))

(assert (= (or b!4862735 b!4862741) bm!337795))

(assert (= (and d!1560578 res!2075921) b!4862736))

(assert (= (and b!4862736 (not res!2075919)) b!4862742))

(assert (= (and b!4862742 res!2075920) b!4862740))

(assert (= (and b!4862736 res!2075923) b!4862739))

(assert (= (and b!4862739 (not res!2075922)) b!4862737))

(assert (= (and b!4862737 res!2075918) b!4862738))

(assert (=> b!4862740 m!5860130))

(declare-fun m!5860304 () Bool)

(assert (=> b!4862740 m!5860304))

(assert (=> b!4862740 m!5860130))

(declare-fun m!5860306 () Bool)

(assert (=> b!4862740 m!5860306))

(declare-fun m!5860308 () Bool)

(assert (=> b!4862740 m!5860308))

(assert (=> b!4862740 m!5860304))

(declare-fun m!5860310 () Bool)

(assert (=> b!4862740 m!5860310))

(declare-fun m!5860312 () Bool)

(assert (=> b!4862741 m!5860312))

(assert (=> b!4862737 m!5860306))

(assert (=> b!4862737 m!5860130))

(assert (=> b!4862737 m!5860130))

(declare-fun m!5860314 () Bool)

(assert (=> b!4862737 m!5860314))

(assert (=> b!4862737 m!5860314))

(declare-fun m!5860316 () Bool)

(assert (=> b!4862737 m!5860316))

(assert (=> b!4862738 m!5860308))

(assert (=> b!4862738 m!5860314))

(assert (=> b!4862738 m!5860316))

(assert (=> b!4862738 m!5860130))

(assert (=> b!4862738 m!5860130))

(assert (=> b!4862738 m!5860314))

(assert (=> b!4862738 m!5860306))

(declare-fun m!5860318 () Bool)

(assert (=> bm!337795 m!5860318))

(declare-fun m!5860320 () Bool)

(assert (=> b!4862736 m!5860320))

(assert (=> b!4862742 m!5860306))

(assert (=> b!4862742 m!5860130))

(assert (=> b!4862742 m!5860130))

(assert (=> b!4862742 m!5860304))

(assert (=> b!4862742 m!5860304))

(assert (=> b!4862742 m!5860310))

(assert (=> b!4862739 m!5860320))

(declare-fun m!5860322 () Bool)

(assert (=> d!1560578 m!5860322))

(declare-fun m!5860324 () Bool)

(assert (=> d!1560578 m!5860324))

(assert (=> d!1560578 m!5860304))

(declare-fun m!5860326 () Bool)

(assert (=> d!1560578 m!5860326))

(assert (=> d!1560578 m!5860130))

(assert (=> d!1560578 m!5860304))

(assert (=> d!1560578 m!5860130))

(assert (=> d!1560578 m!5860320))

(declare-fun m!5860328 () Bool)

(assert (=> d!1560578 m!5860328))

(assert (=> b!4862545 d!1560578))

(declare-fun d!1560582 () Bool)

(declare-fun res!2075926 () Bool)

(declare-fun e!3040402 () Bool)

(assert (=> d!1560582 (=> (not res!2075926) (not e!3040402))))

(declare-fun rulesValid!3116 (LexerInterface!7618 List!56038) Bool)

(assert (=> d!1560582 (= res!2075926 (rulesValid!3116 thiss!11777 rules!1248))))

(assert (=> d!1560582 (= (rulesInvariant!6716 thiss!11777 rules!1248) e!3040402)))

(declare-fun b!4862745 () Bool)

(declare-datatypes ((List!56041 0))(
  ( (Nil!55917) (Cons!55917 (h!62365 String!63098) (t!363673 List!56041)) )
))
(declare-fun noDuplicateTag!3277 (LexerInterface!7618 List!56038 List!56041) Bool)

(assert (=> b!4862745 (= e!3040402 (noDuplicateTag!3277 thiss!11777 rules!1248 Nil!55917))))

(assert (= (and d!1560582 res!2075926) b!4862745))

(declare-fun m!5860330 () Bool)

(assert (=> d!1560582 m!5860330))

(declare-fun m!5860332 () Bool)

(assert (=> b!4862745 m!5860332))

(assert (=> b!4862540 d!1560582))

(declare-fun d!1560584 () Bool)

(assert (=> d!1560584 (= (inv!71803 (tag!8890 (h!62362 rules!1248))) (= (mod (str.len (value!257884 (tag!8890 (h!62362 rules!1248)))) 2) 0))))

(assert (=> b!4862547 d!1560584))

(declare-fun d!1560586 () Bool)

(declare-fun res!2075929 () Bool)

(declare-fun e!3040405 () Bool)

(assert (=> d!1560586 (=> (not res!2075929) (not e!3040405))))

(declare-fun semiInverseModEq!3540 (Int Int) Bool)

(assert (=> d!1560586 (= res!2075929 (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))))))

(assert (=> d!1560586 (= (inv!71808 (transformation!8026 (h!62362 rules!1248))) e!3040405)))

(declare-fun b!4862748 () Bool)

(declare-fun equivClasses!3419 (Int Int) Bool)

(assert (=> b!4862748 (= e!3040405 (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))))))

(assert (= (and d!1560586 res!2075929) b!4862748))

(declare-fun m!5860334 () Bool)

(assert (=> d!1560586 m!5860334))

(declare-fun m!5860336 () Bool)

(assert (=> b!4862748 m!5860336))

(assert (=> b!4862547 d!1560586))

(declare-fun d!1560588 () Bool)

(declare-fun e!3040408 () Bool)

(assert (=> d!1560588 e!3040408))

(declare-fun res!2075932 () Bool)

(assert (=> d!1560588 (=> res!2075932 e!3040408)))

(declare-fun lt!1992776 () Bool)

(assert (=> d!1560588 (= res!2075932 (not lt!1992776))))

(declare-fun drop!2196 (List!56037 Int) List!56037)

(assert (=> d!1560588 (= lt!1992776 (= lt!1992697 (drop!2196 (list!17460 totalInput!332) (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)))))))

(assert (=> d!1560588 (= (isSuffix!1055 lt!1992697 (list!17460 totalInput!332)) lt!1992776)))

(declare-fun b!4862751 () Bool)

(assert (=> b!4862751 (= e!3040408 (>= (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)))))

(assert (= (and d!1560588 (not res!2075932)) b!4862751))

(assert (=> d!1560588 m!5860126))

(declare-fun m!5860338 () Bool)

(assert (=> d!1560588 m!5860338))

(declare-fun m!5860340 () Bool)

(assert (=> d!1560588 m!5860340))

(assert (=> d!1560588 m!5860126))

(declare-fun m!5860342 () Bool)

(assert (=> d!1560588 m!5860342))

(assert (=> b!4862751 m!5860126))

(assert (=> b!4862751 m!5860338))

(assert (=> b!4862751 m!5860340))

(assert (=> b!4862542 d!1560588))

(declare-fun d!1560590 () Bool)

(assert (=> d!1560590 (= (list!17460 totalInput!332) (list!17462 (c!826974 totalInput!332)))))

(declare-fun bs!1174017 () Bool)

(assert (= bs!1174017 d!1560590))

(declare-fun m!5860344 () Bool)

(assert (=> bs!1174017 m!5860344))

(assert (=> b!4862542 d!1560590))

(declare-fun d!1560592 () Bool)

(assert (=> d!1560592 (= (list!17460 input!661) (list!17462 (c!826974 input!661)))))

(declare-fun bs!1174018 () Bool)

(assert (= bs!1174018 d!1560592))

(declare-fun m!5860346 () Bool)

(assert (=> bs!1174018 m!5860346))

(assert (=> b!4862542 d!1560592))

(declare-fun d!1560594 () Bool)

(declare-fun c!827010 () Bool)

(assert (=> d!1560594 (= c!827010 ((_ is Node!14563) (c!826974 input!661)))))

(declare-fun e!3040409 () Bool)

(assert (=> d!1560594 (= (inv!71807 (c!826974 input!661)) e!3040409)))

(declare-fun b!4862752 () Bool)

(assert (=> b!4862752 (= e!3040409 (inv!71813 (c!826974 input!661)))))

(declare-fun b!4862753 () Bool)

(declare-fun e!3040410 () Bool)

(assert (=> b!4862753 (= e!3040409 e!3040410)))

(declare-fun res!2075933 () Bool)

(assert (=> b!4862753 (= res!2075933 (not ((_ is Leaf!24287) (c!826974 input!661))))))

(assert (=> b!4862753 (=> res!2075933 e!3040410)))

(declare-fun b!4862754 () Bool)

(assert (=> b!4862754 (= e!3040410 (inv!71814 (c!826974 input!661)))))

(assert (= (and d!1560594 c!827010) b!4862752))

(assert (= (and d!1560594 (not c!827010)) b!4862753))

(assert (= (and b!4862753 (not res!2075933)) b!4862754))

(declare-fun m!5860348 () Bool)

(assert (=> b!4862752 m!5860348))

(declare-fun m!5860350 () Bool)

(assert (=> b!4862754 m!5860350))

(assert (=> b!4862541 d!1560594))

(declare-fun d!1560596 () Bool)

(assert (=> d!1560596 (= (isEmpty!29891 rules!1248) ((_ is Nil!55914) rules!1248))))

(assert (=> b!4862548 d!1560596))

(declare-fun tp!1368355 () Bool)

(declare-fun e!3040416 () Bool)

(declare-fun b!4862763 () Bool)

(declare-fun tp!1368356 () Bool)

(assert (=> b!4862763 (= e!3040416 (and (inv!71807 (left!40608 (c!826974 totalInput!332))) tp!1368356 (inv!71807 (right!40938 (c!826974 totalInput!332))) tp!1368355))))

(declare-fun b!4862765 () Bool)

(declare-fun e!3040415 () Bool)

(declare-fun tp!1368357 () Bool)

(assert (=> b!4862765 (= e!3040415 tp!1368357)))

(declare-fun b!4862764 () Bool)

(declare-fun inv!71815 (IArray!29187) Bool)

(assert (=> b!4862764 (= e!3040416 (and (inv!71815 (xs!17869 (c!826974 totalInput!332))) e!3040415))))

(assert (=> b!4862546 (= tp!1368300 (and (inv!71807 (c!826974 totalInput!332)) e!3040416))))

(assert (= (and b!4862546 ((_ is Node!14563) (c!826974 totalInput!332))) b!4862763))

(assert (= b!4862764 b!4862765))

(assert (= (and b!4862546 ((_ is Leaf!24287) (c!826974 totalInput!332))) b!4862764))

(declare-fun m!5860352 () Bool)

(assert (=> b!4862763 m!5860352))

(declare-fun m!5860354 () Bool)

(assert (=> b!4862763 m!5860354))

(declare-fun m!5860356 () Bool)

(assert (=> b!4862764 m!5860356))

(assert (=> b!4862546 m!5860106))

(declare-fun b!4862776 () Bool)

(declare-fun e!3040419 () Bool)

(declare-fun tp_is_empty!35651 () Bool)

(assert (=> b!4862776 (= e!3040419 tp_is_empty!35651)))

(declare-fun b!4862779 () Bool)

(declare-fun tp!1368372 () Bool)

(declare-fun tp!1368370 () Bool)

(assert (=> b!4862779 (= e!3040419 (and tp!1368372 tp!1368370))))

(declare-fun b!4862778 () Bool)

(declare-fun tp!1368371 () Bool)

(assert (=> b!4862778 (= e!3040419 tp!1368371)))

(declare-fun b!4862777 () Bool)

(declare-fun tp!1368368 () Bool)

(declare-fun tp!1368369 () Bool)

(assert (=> b!4862777 (= e!3040419 (and tp!1368368 tp!1368369))))

(assert (=> b!4862547 (= tp!1368302 e!3040419)))

(assert (= (and b!4862547 ((_ is ElementMatch!13101) (regex!8026 (h!62362 rules!1248)))) b!4862776))

(assert (= (and b!4862547 ((_ is Concat!21438) (regex!8026 (h!62362 rules!1248)))) b!4862777))

(assert (= (and b!4862547 ((_ is Star!13101) (regex!8026 (h!62362 rules!1248)))) b!4862778))

(assert (= (and b!4862547 ((_ is Union!13101) (regex!8026 (h!62362 rules!1248)))) b!4862779))

(declare-fun e!3040421 () Bool)

(declare-fun tp!1368374 () Bool)

(declare-fun tp!1368373 () Bool)

(declare-fun b!4862780 () Bool)

(assert (=> b!4862780 (= e!3040421 (and (inv!71807 (left!40608 (c!826974 input!661))) tp!1368374 (inv!71807 (right!40938 (c!826974 input!661))) tp!1368373))))

(declare-fun b!4862782 () Bool)

(declare-fun e!3040420 () Bool)

(declare-fun tp!1368375 () Bool)

(assert (=> b!4862782 (= e!3040420 tp!1368375)))

(declare-fun b!4862781 () Bool)

(assert (=> b!4862781 (= e!3040421 (and (inv!71815 (xs!17869 (c!826974 input!661))) e!3040420))))

(assert (=> b!4862541 (= tp!1368299 (and (inv!71807 (c!826974 input!661)) e!3040421))))

(assert (= (and b!4862541 ((_ is Node!14563) (c!826974 input!661))) b!4862780))

(assert (= b!4862781 b!4862782))

(assert (= (and b!4862541 ((_ is Leaf!24287) (c!826974 input!661))) b!4862781))

(declare-fun m!5860358 () Bool)

(assert (=> b!4862780 m!5860358))

(declare-fun m!5860360 () Bool)

(assert (=> b!4862780 m!5860360))

(declare-fun m!5860362 () Bool)

(assert (=> b!4862781 m!5860362))

(assert (=> b!4862541 m!5860098))

(declare-fun b!4862793 () Bool)

(declare-fun b_free!130579 () Bool)

(declare-fun b_next!131369 () Bool)

(assert (=> b!4862793 (= b_free!130579 (not b_next!131369))))

(declare-fun tp!1368387 () Bool)

(declare-fun b_and!342435 () Bool)

(assert (=> b!4862793 (= tp!1368387 b_and!342435)))

(declare-fun b_free!130581 () Bool)

(declare-fun b_next!131371 () Bool)

(assert (=> b!4862793 (= b_free!130581 (not b_next!131371))))

(declare-fun t!363672 () Bool)

(declare-fun tb!257585 () Bool)

(assert (=> (and b!4862793 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698)))))) t!363672) tb!257585))

(declare-fun result!320672 () Bool)

(assert (= result!320672 result!320654))

(assert (=> d!1560566 t!363672))

(declare-fun b_and!342437 () Bool)

(declare-fun tp!1368384 () Bool)

(assert (=> b!4862793 (= tp!1368384 (and (=> t!363672 result!320672) b_and!342437))))

(declare-fun e!3040433 () Bool)

(assert (=> b!4862793 (= e!3040433 (and tp!1368387 tp!1368384))))

(declare-fun e!3040432 () Bool)

(declare-fun b!4862792 () Bool)

(declare-fun tp!1368385 () Bool)

(assert (=> b!4862792 (= e!3040432 (and tp!1368385 (inv!71803 (tag!8890 (h!62362 (t!363662 rules!1248)))) (inv!71808 (transformation!8026 (h!62362 (t!363662 rules!1248)))) e!3040433))))

(declare-fun b!4862791 () Bool)

(declare-fun e!3040430 () Bool)

(declare-fun tp!1368386 () Bool)

(assert (=> b!4862791 (= e!3040430 (and e!3040432 tp!1368386))))

(assert (=> b!4862543 (= tp!1368298 e!3040430)))

(assert (= b!4862792 b!4862793))

(assert (= b!4862791 b!4862792))

(assert (= (and b!4862543 ((_ is Cons!55914) (t!363662 rules!1248))) b!4862791))

(declare-fun m!5860364 () Bool)

(assert (=> b!4862792 m!5860364))

(declare-fun m!5860366 () Bool)

(assert (=> b!4862792 m!5860366))

(check-sat (not b!4862541) (not b!4862630) (not b!4862779) (not b!4862754) (not b!4862632) (not b!4862780) (not d!1560568) (not b!4862778) (not d!1560588) (not b!4862765) (not b!4862648) (not b!4862631) (not d!1560566) (not b!4862739) (not b!4862752) (not b!4862658) (not b_next!131363) (not b!4862740) (not b!4862627) (not b!4862626) (not b!4862737) (not b!4862745) (not b!4862777) (not b!4862782) (not d!1560574) (not b_next!131369) (not b!4862764) b_and!342429 b_and!342435 (not tb!257581) (not d!1560582) (not b!4862742) b_and!342423 (not b!4862637) (not b!4862628) b_and!342437 (not b!4862751) (not d!1560532) (not b!4862738) (not b!4862656) (not b!4862748) (not b!4862546) (not b!4862781) tp_is_empty!35651 (not b_next!131371) (not d!1560578) (not d!1560530) (not b!4862741) (not bm!337795) (not b!4862736) (not b!4862792) (not b!4862791) (not b!4862763) (not d!1560572) (not d!1560586) (not b_lambda!193403) (not b!4862647) (not d!1560590) (not d!1560570) (not d!1560592) (not b_next!131361))
(check-sat (not b_next!131363) b_and!342435 b_and!342423 b_and!342437 (not b_next!131371) (not b_next!131361) (not b_next!131369) b_and!342429)
(get-model)

(declare-fun d!1560598 () Bool)

(assert (=> d!1560598 (= (list!17460 (_2!33172 (get!19216 lt!1992770))) (list!17462 (c!826974 (_2!33172 (get!19216 lt!1992770)))))))

(declare-fun bs!1174019 () Bool)

(assert (= bs!1174019 d!1560598))

(declare-fun m!5860368 () Bool)

(assert (=> bs!1174019 m!5860368))

(assert (=> b!4862738 d!1560598))

(declare-fun d!1560600 () Bool)

(assert (=> d!1560600 (= (get!19216 lt!1992770) (v!49672 lt!1992770))))

(assert (=> b!4862738 d!1560600))

(assert (=> b!4862738 d!1560592))

(declare-fun b!4862812 () Bool)

(declare-fun res!2075961 () Bool)

(declare-fun e!3040441 () Bool)

(assert (=> b!4862812 (=> (not res!2075961) (not e!3040441))))

(declare-fun lt!1992791 () Option!13773)

(declare-fun matchR!6487 (Regex!13101 List!56037) Bool)

(assert (=> b!4862812 (= res!2075961 (matchR!6487 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun d!1560602 () Bool)

(declare-fun e!3040442 () Bool)

(assert (=> d!1560602 e!3040442))

(declare-fun res!2075959 () Bool)

(assert (=> d!1560602 (=> res!2075959 e!3040442)))

(declare-fun isEmpty!29894 (Option!13773) Bool)

(assert (=> d!1560602 (= res!2075959 (isEmpty!29894 lt!1992791))))

(declare-fun e!3040440 () Option!13773)

(assert (=> d!1560602 (= lt!1992791 e!3040440)))

(declare-fun c!827013 () Bool)

(assert (=> d!1560602 (= c!827013 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1992789 () Unit!145922)

(declare-fun lt!1992788 () Unit!145922)

(assert (=> d!1560602 (= lt!1992789 lt!1992788)))

(assert (=> d!1560602 (isPrefix!4762 (list!17460 input!661) (list!17460 input!661))))

(assert (=> d!1560602 (= lt!1992788 (lemmaIsPrefixRefl!3159 (list!17460 input!661) (list!17460 input!661)))))

(assert (=> d!1560602 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560602 (= (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661)) lt!1992791)))

(declare-fun b!4862813 () Bool)

(declare-fun res!2075955 () Bool)

(assert (=> b!4862813 (=> (not res!2075955) (not e!3040441))))

(assert (=> b!4862813 (= res!2075955 (= (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))) (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791)))))))

(declare-fun b!4862814 () Bool)

(declare-fun res!2075956 () Bool)

(assert (=> b!4862814 (=> (not res!2075956) (not e!3040441))))

(assert (=> b!4862814 (= res!2075956 (= (++!12171 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))) (_2!33177 (get!19217 lt!1992791))) (list!17460 input!661)))))

(declare-fun b!4862815 () Bool)

(declare-fun contains!19383 (List!56038 Rule!15852) Bool)

(assert (=> b!4862815 (= e!3040441 (contains!19383 rules!1248 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))

(declare-fun b!4862816 () Bool)

(declare-fun call!337803 () Option!13773)

(assert (=> b!4862816 (= e!3040440 call!337803)))

(declare-fun b!4862817 () Bool)

(declare-fun res!2075957 () Bool)

(assert (=> b!4862817 (=> (not res!2075957) (not e!3040441))))

(declare-fun apply!13497 (TokenValueInjection!15980 BalanceConc!28568) TokenValue!8336)

(declare-fun seqFromList!5893 (List!56037) BalanceConc!28568)

(assert (=> b!4862817 (= res!2075957 (= (value!257885 (_1!33177 (get!19217 lt!1992791))) (apply!13497 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun bm!337798 () Bool)

(declare-fun maxPrefixOneRule!3486 (LexerInterface!7618 Rule!15852 List!56037) Option!13773)

(assert (=> bm!337798 (= call!337803 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)))))

(declare-fun b!4862818 () Bool)

(declare-fun lt!1992787 () Option!13773)

(declare-fun lt!1992790 () Option!13773)

(assert (=> b!4862818 (= e!3040440 (ite (and ((_ is None!13772) lt!1992787) ((_ is None!13772) lt!1992790)) None!13772 (ite ((_ is None!13772) lt!1992790) lt!1992787 (ite ((_ is None!13772) lt!1992787) lt!1992790 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1992787))) (size!36832 (_1!33177 (v!49674 lt!1992790)))) lt!1992787 lt!1992790)))))))

(assert (=> b!4862818 (= lt!1992787 call!337803)))

(assert (=> b!4862818 (= lt!1992790 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)))))

(declare-fun b!4862819 () Bool)

(assert (=> b!4862819 (= e!3040442 e!3040441)))

(declare-fun res!2075958 () Bool)

(assert (=> b!4862819 (=> (not res!2075958) (not e!3040441))))

(assert (=> b!4862819 (= res!2075958 (isDefined!10841 lt!1992791))))

(declare-fun b!4862820 () Bool)

(declare-fun res!2075960 () Bool)

(assert (=> b!4862820 (=> (not res!2075960) (not e!3040441))))

(assert (=> b!4862820 (= res!2075960 (< (size!36838 (_2!33177 (get!19217 lt!1992791))) (size!36838 (list!17460 input!661))))))

(assert (= (and d!1560602 c!827013) b!4862816))

(assert (= (and d!1560602 (not c!827013)) b!4862818))

(assert (= (or b!4862816 b!4862818) bm!337798))

(assert (= (and d!1560602 (not res!2075959)) b!4862819))

(assert (= (and b!4862819 res!2075958) b!4862813))

(assert (= (and b!4862813 res!2075955) b!4862820))

(assert (= (and b!4862820 res!2075960) b!4862814))

(assert (= (and b!4862814 res!2075956) b!4862817))

(assert (= (and b!4862817 res!2075957) b!4862812))

(assert (= (and b!4862812 res!2075961) b!4862815))

(declare-fun m!5860370 () Bool)

(assert (=> b!4862812 m!5860370))

(declare-fun m!5860372 () Bool)

(assert (=> b!4862812 m!5860372))

(assert (=> b!4862812 m!5860372))

(declare-fun m!5860374 () Bool)

(assert (=> b!4862812 m!5860374))

(assert (=> b!4862812 m!5860374))

(declare-fun m!5860376 () Bool)

(assert (=> b!4862812 m!5860376))

(assert (=> b!4862815 m!5860370))

(declare-fun m!5860378 () Bool)

(assert (=> b!4862815 m!5860378))

(assert (=> b!4862817 m!5860370))

(declare-fun m!5860380 () Bool)

(assert (=> b!4862817 m!5860380))

(assert (=> b!4862817 m!5860380))

(declare-fun m!5860382 () Bool)

(assert (=> b!4862817 m!5860382))

(assert (=> b!4862813 m!5860370))

(assert (=> b!4862813 m!5860372))

(assert (=> b!4862813 m!5860372))

(assert (=> b!4862813 m!5860374))

(declare-fun m!5860384 () Bool)

(assert (=> b!4862819 m!5860384))

(assert (=> b!4862820 m!5860370))

(declare-fun m!5860386 () Bool)

(assert (=> b!4862820 m!5860386))

(assert (=> b!4862820 m!5860130))

(declare-fun m!5860388 () Bool)

(assert (=> b!4862820 m!5860388))

(declare-fun m!5860390 () Bool)

(assert (=> d!1560602 m!5860390))

(assert (=> d!1560602 m!5860130))

(assert (=> d!1560602 m!5860130))

(declare-fun m!5860392 () Bool)

(assert (=> d!1560602 m!5860392))

(assert (=> d!1560602 m!5860130))

(assert (=> d!1560602 m!5860130))

(declare-fun m!5860394 () Bool)

(assert (=> d!1560602 m!5860394))

(assert (=> d!1560602 m!5860322))

(assert (=> b!4862818 m!5860130))

(declare-fun m!5860396 () Bool)

(assert (=> b!4862818 m!5860396))

(assert (=> bm!337798 m!5860130))

(declare-fun m!5860398 () Bool)

(assert (=> bm!337798 m!5860398))

(assert (=> b!4862814 m!5860370))

(assert (=> b!4862814 m!5860372))

(assert (=> b!4862814 m!5860372))

(assert (=> b!4862814 m!5860374))

(assert (=> b!4862814 m!5860374))

(declare-fun m!5860400 () Bool)

(assert (=> b!4862814 m!5860400))

(assert (=> b!4862738 d!1560602))

(declare-fun d!1560606 () Bool)

(assert (=> d!1560606 (= (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661))) (v!49674 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661))))))

(assert (=> b!4862738 d!1560606))

(declare-fun d!1560608 () Bool)

(declare-fun isEmpty!29895 (Option!13771) Bool)

(assert (=> d!1560608 (= (isDefined!10840 lt!1992770) (not (isEmpty!29895 lt!1992770)))))

(declare-fun bs!1174020 () Bool)

(assert (= bs!1174020 d!1560608))

(declare-fun m!5860402 () Bool)

(assert (=> bs!1174020 m!5860402))

(assert (=> b!4862739 d!1560608))

(declare-fun d!1560610 () Bool)

(assert (=> d!1560610 (= (list!17460 (_2!33173 lt!1992737)) (list!17462 (c!826974 (_2!33173 lt!1992737))))))

(declare-fun bs!1174021 () Bool)

(assert (= bs!1174021 d!1560610))

(declare-fun m!5860404 () Bool)

(assert (=> bs!1174021 m!5860404))

(assert (=> b!4862626 d!1560610))

(assert (=> b!4862626 d!1560530))

(declare-fun d!1560612 () Bool)

(declare-fun e!3040444 () Bool)

(assert (=> d!1560612 e!3040444))

(declare-fun res!2075963 () Bool)

(assert (=> d!1560612 (=> (not res!2075963) (not e!3040444))))

(declare-fun lt!1992792 () List!56037)

(assert (=> d!1560612 (= res!2075963 (= (content!9960 lt!1992792) ((_ map or) (content!9960 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (content!9960 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun e!3040443 () List!56037)

(assert (=> d!1560612 (= lt!1992792 e!3040443)))

(declare-fun c!827014 () Bool)

(assert (=> d!1560612 (= c!827014 ((_ is Nil!55913) (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1560612 (= (++!12171 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1992792)))

(declare-fun b!4862823 () Bool)

(declare-fun res!2075962 () Bool)

(assert (=> b!4862823 (=> (not res!2075962) (not e!3040444))))

(assert (=> b!4862823 (= res!2075962 (= (size!36838 lt!1992792) (+ (size!36838 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4862822 () Bool)

(assert (=> b!4862822 (= e!3040443 (Cons!55913 (h!62361 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (++!12171 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4862824 () Bool)

(assert (=> b!4862824 (= e!3040444 (or (not (= (list!17460 (_2!33172 (v!49672 lt!1992698))) Nil!55913)) (= lt!1992792 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4862821 () Bool)

(assert (=> b!4862821 (= e!3040443 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (= (and d!1560612 c!827014) b!4862821))

(assert (= (and d!1560612 (not c!827014)) b!4862822))

(assert (= (and d!1560612 res!2075963) b!4862823))

(assert (= (and b!4862823 res!2075962) b!4862824))

(declare-fun m!5860406 () Bool)

(assert (=> d!1560612 m!5860406))

(declare-fun m!5860408 () Bool)

(assert (=> d!1560612 m!5860408))

(assert (=> d!1560612 m!5860108))

(assert (=> d!1560612 m!5860248))

(declare-fun m!5860410 () Bool)

(assert (=> b!4862823 m!5860410))

(declare-fun m!5860412 () Bool)

(assert (=> b!4862823 m!5860412))

(assert (=> b!4862823 m!5860108))

(assert (=> b!4862823 m!5860254))

(assert (=> b!4862822 m!5860108))

(declare-fun m!5860414 () Bool)

(assert (=> b!4862822 m!5860414))

(assert (=> b!4862647 d!1560612))

(assert (=> b!4862740 d!1560598))

(declare-fun lt!1992807 () Option!13773)

(declare-fun d!1560614 () Bool)

(assert (=> d!1560614 (= lt!1992807 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 input!661)))))

(declare-fun e!3040447 () Option!13773)

(assert (=> d!1560614 (= lt!1992807 e!3040447)))

(declare-fun c!827017 () Bool)

(assert (=> d!1560614 (= c!827017 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1992806 () Unit!145922)

(declare-fun lt!1992803 () Unit!145922)

(assert (=> d!1560614 (= lt!1992806 lt!1992803)))

(assert (=> d!1560614 (isPrefix!4762 (list!17460 input!661) (list!17460 input!661))))

(assert (=> d!1560614 (= lt!1992803 (lemmaIsPrefixRefl!3159 (list!17460 input!661) (list!17460 input!661)))))

(assert (=> d!1560614 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560614 (= (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661)) lt!1992807)))

(declare-fun bm!337801 () Bool)

(declare-fun call!337806 () Option!13773)

(declare-fun maxPrefixOneRuleZipper!221 (LexerInterface!7618 Rule!15852 List!56037) Option!13773)

(assert (=> bm!337801 (= call!337806 (maxPrefixOneRuleZipper!221 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)))))

(declare-fun b!4862829 () Bool)

(assert (=> b!4862829 (= e!3040447 call!337806)))

(declare-fun b!4862830 () Bool)

(declare-fun lt!1992805 () Option!13773)

(declare-fun lt!1992804 () Option!13773)

(assert (=> b!4862830 (= e!3040447 (ite (and ((_ is None!13772) lt!1992805) ((_ is None!13772) lt!1992804)) None!13772 (ite ((_ is None!13772) lt!1992804) lt!1992805 (ite ((_ is None!13772) lt!1992805) lt!1992804 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1992805))) (size!36832 (_1!33177 (v!49674 lt!1992804)))) lt!1992805 lt!1992804)))))))

(assert (=> b!4862830 (= lt!1992805 call!337806)))

(assert (=> b!4862830 (= lt!1992804 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)))))

(assert (= (and d!1560614 c!827017) b!4862829))

(assert (= (and d!1560614 (not c!827017)) b!4862830))

(assert (= (or b!4862829 b!4862830) bm!337801))

(assert (=> d!1560614 m!5860130))

(assert (=> d!1560614 m!5860314))

(assert (=> d!1560614 m!5860130))

(assert (=> d!1560614 m!5860130))

(assert (=> d!1560614 m!5860392))

(assert (=> d!1560614 m!5860130))

(assert (=> d!1560614 m!5860130))

(assert (=> d!1560614 m!5860394))

(assert (=> d!1560614 m!5860322))

(assert (=> bm!337801 m!5860130))

(declare-fun m!5860416 () Bool)

(assert (=> bm!337801 m!5860416))

(assert (=> b!4862830 m!5860130))

(declare-fun m!5860418 () Bool)

(assert (=> b!4862830 m!5860418))

(assert (=> b!4862740 d!1560614))

(assert (=> b!4862740 d!1560600))

(assert (=> b!4862740 d!1560592))

(declare-fun d!1560616 () Bool)

(assert (=> d!1560616 (= (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))) (v!49674 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))))))

(assert (=> b!4862740 d!1560616))

(declare-fun b!4862843 () Bool)

(declare-fun res!2075977 () Bool)

(declare-fun e!3040453 () Bool)

(assert (=> b!4862843 (=> (not res!2075977) (not e!3040453))))

(declare-fun height!1918 (Conc!14563) Int)

(assert (=> b!4862843 (= res!2075977 (<= (- (height!1918 (left!40608 (c!826974 totalInput!332))) (height!1918 (right!40938 (c!826974 totalInput!332)))) 1))))

(declare-fun b!4862844 () Bool)

(declare-fun res!2075978 () Bool)

(assert (=> b!4862844 (=> (not res!2075978) (not e!3040453))))

(assert (=> b!4862844 (= res!2075978 (isBalanced!3946 (right!40938 (c!826974 totalInput!332))))))

(declare-fun d!1560618 () Bool)

(declare-fun res!2075979 () Bool)

(declare-fun e!3040452 () Bool)

(assert (=> d!1560618 (=> res!2075979 e!3040452)))

(assert (=> d!1560618 (= res!2075979 (not ((_ is Node!14563) (c!826974 totalInput!332))))))

(assert (=> d!1560618 (= (isBalanced!3946 (c!826974 totalInput!332)) e!3040452)))

(declare-fun b!4862845 () Bool)

(declare-fun isEmpty!29897 (Conc!14563) Bool)

(assert (=> b!4862845 (= e!3040453 (not (isEmpty!29897 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun b!4862846 () Bool)

(assert (=> b!4862846 (= e!3040452 e!3040453)))

(declare-fun res!2075976 () Bool)

(assert (=> b!4862846 (=> (not res!2075976) (not e!3040453))))

(assert (=> b!4862846 (= res!2075976 (<= (- 1) (- (height!1918 (left!40608 (c!826974 totalInput!332))) (height!1918 (right!40938 (c!826974 totalInput!332))))))))

(declare-fun b!4862847 () Bool)

(declare-fun res!2075981 () Bool)

(assert (=> b!4862847 (=> (not res!2075981) (not e!3040453))))

(assert (=> b!4862847 (= res!2075981 (not (isEmpty!29897 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun b!4862848 () Bool)

(declare-fun res!2075980 () Bool)

(assert (=> b!4862848 (=> (not res!2075980) (not e!3040453))))

(assert (=> b!4862848 (= res!2075980 (isBalanced!3946 (left!40608 (c!826974 totalInput!332))))))

(assert (= (and d!1560618 (not res!2075979)) b!4862846))

(assert (= (and b!4862846 res!2075976) b!4862843))

(assert (= (and b!4862843 res!2075977) b!4862848))

(assert (= (and b!4862848 res!2075980) b!4862844))

(assert (= (and b!4862844 res!2075978) b!4862847))

(assert (= (and b!4862847 res!2075981) b!4862845))

(declare-fun m!5860420 () Bool)

(assert (=> b!4862846 m!5860420))

(declare-fun m!5860422 () Bool)

(assert (=> b!4862846 m!5860422))

(declare-fun m!5860424 () Bool)

(assert (=> b!4862847 m!5860424))

(assert (=> b!4862843 m!5860420))

(assert (=> b!4862843 m!5860422))

(declare-fun m!5860426 () Bool)

(assert (=> b!4862848 m!5860426))

(declare-fun m!5860428 () Bool)

(assert (=> b!4862845 m!5860428))

(declare-fun m!5860430 () Bool)

(assert (=> b!4862844 m!5860430))

(assert (=> d!1560572 d!1560618))

(assert (=> b!4862736 d!1560608))

(assert (=> b!4862737 d!1560600))

(assert (=> b!4862737 d!1560606))

(assert (=> b!4862737 d!1560602))

(assert (=> b!4862737 d!1560592))

(declare-fun d!1560620 () Bool)

(assert (=> d!1560620 (= (inv!71809 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))) (isBalanced!3946 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun bs!1174022 () Bool)

(assert (= bs!1174022 d!1560620))

(declare-fun m!5860432 () Bool)

(assert (=> bs!1174022 m!5860432))

(assert (=> tb!257581 d!1560620))

(declare-fun d!1560622 () Bool)

(assert (=> d!1560622 (= (isDefined!10841 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))) (not (isEmpty!29894 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661)))))))

(declare-fun bs!1174023 () Bool)

(assert (= bs!1174023 d!1560622))

(assert (=> bs!1174023 m!5860304))

(declare-fun m!5860434 () Bool)

(assert (=> bs!1174023 m!5860434))

(assert (=> d!1560578 d!1560622))

(assert (=> d!1560578 d!1560614))

(declare-fun d!1560624 () Bool)

(declare-fun e!3040462 () Bool)

(assert (=> d!1560624 e!3040462))

(declare-fun res!2075991 () Bool)

(assert (=> d!1560624 (=> res!2075991 e!3040462)))

(declare-fun lt!1992810 () Bool)

(assert (=> d!1560624 (= res!2075991 (not lt!1992810))))

(declare-fun e!3040461 () Bool)

(assert (=> d!1560624 (= lt!1992810 e!3040461)))

(declare-fun res!2075993 () Bool)

(assert (=> d!1560624 (=> res!2075993 e!3040461)))

(assert (=> d!1560624 (= res!2075993 ((_ is Nil!55913) lt!1992773))))

(assert (=> d!1560624 (= (isPrefix!4762 lt!1992773 lt!1992772) lt!1992810)))

(declare-fun b!4862860 () Bool)

(assert (=> b!4862860 (= e!3040462 (>= (size!36838 lt!1992772) (size!36838 lt!1992773)))))

(declare-fun b!4862857 () Bool)

(declare-fun e!3040460 () Bool)

(assert (=> b!4862857 (= e!3040461 e!3040460)))

(declare-fun res!2075992 () Bool)

(assert (=> b!4862857 (=> (not res!2075992) (not e!3040460))))

(assert (=> b!4862857 (= res!2075992 (not ((_ is Nil!55913) lt!1992772)))))

(declare-fun b!4862859 () Bool)

(declare-fun tail!9555 (List!56037) List!56037)

(assert (=> b!4862859 (= e!3040460 (isPrefix!4762 (tail!9555 lt!1992773) (tail!9555 lt!1992772)))))

(declare-fun b!4862858 () Bool)

(declare-fun res!2075990 () Bool)

(assert (=> b!4862858 (=> (not res!2075990) (not e!3040460))))

(declare-fun head!10409 (List!56037) C!26400)

(assert (=> b!4862858 (= res!2075990 (= (head!10409 lt!1992773) (head!10409 lt!1992772)))))

(assert (= (and d!1560624 (not res!2075993)) b!4862857))

(assert (= (and b!4862857 res!2075992) b!4862858))

(assert (= (and b!4862858 res!2075990) b!4862859))

(assert (= (and d!1560624 (not res!2075991)) b!4862860))

(declare-fun m!5860436 () Bool)

(assert (=> b!4862860 m!5860436))

(declare-fun m!5860438 () Bool)

(assert (=> b!4862860 m!5860438))

(declare-fun m!5860440 () Bool)

(assert (=> b!4862859 m!5860440))

(declare-fun m!5860442 () Bool)

(assert (=> b!4862859 m!5860442))

(assert (=> b!4862859 m!5860440))

(assert (=> b!4862859 m!5860442))

(declare-fun m!5860444 () Bool)

(assert (=> b!4862859 m!5860444))

(declare-fun m!5860446 () Bool)

(assert (=> b!4862858 m!5860446))

(declare-fun m!5860448 () Bool)

(assert (=> b!4862858 m!5860448))

(assert (=> d!1560578 d!1560624))

(declare-fun d!1560626 () Bool)

(assert (=> d!1560626 true))

(declare-fun lt!1992841 () Bool)

(declare-fun lambda!243315 () Int)

(declare-fun forall!13043 (List!56038 Int) Bool)

(assert (=> d!1560626 (= lt!1992841 (forall!13043 rules!1248 lambda!243315))))

(declare-fun e!3040490 () Bool)

(assert (=> d!1560626 (= lt!1992841 e!3040490)))

(declare-fun res!2076004 () Bool)

(assert (=> d!1560626 (=> res!2076004 e!3040490)))

(assert (=> d!1560626 (= res!2076004 (not ((_ is Cons!55914) rules!1248)))))

(assert (=> d!1560626 (= (rulesValidInductive!3015 thiss!11777 rules!1248) lt!1992841)))

(declare-fun b!4862908 () Bool)

(declare-fun e!3040491 () Bool)

(assert (=> b!4862908 (= e!3040490 e!3040491)))

(declare-fun res!2076003 () Bool)

(assert (=> b!4862908 (=> (not res!2076003) (not e!3040491))))

(declare-fun ruleValid!3625 (LexerInterface!7618 Rule!15852) Bool)

(assert (=> b!4862908 (= res!2076003 (ruleValid!3625 thiss!11777 (h!62362 rules!1248)))))

(declare-fun b!4862909 () Bool)

(assert (=> b!4862909 (= e!3040491 (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248)))))

(assert (= (and d!1560626 (not res!2076004)) b!4862908))

(assert (= (and b!4862908 res!2076003) b!4862909))

(declare-fun m!5860494 () Bool)

(assert (=> d!1560626 m!5860494))

(declare-fun m!5860496 () Bool)

(assert (=> b!4862908 m!5860496))

(declare-fun m!5860498 () Bool)

(assert (=> b!4862909 m!5860498))

(assert (=> d!1560578 d!1560626))

(declare-fun d!1560656 () Bool)

(assert (=> d!1560656 (isPrefix!4762 lt!1992773 lt!1992772)))

(declare-fun lt!1992844 () Unit!145922)

(declare-fun choose!35570 (List!56037 List!56037) Unit!145922)

(assert (=> d!1560656 (= lt!1992844 (choose!35570 lt!1992773 lt!1992772))))

(assert (=> d!1560656 (= (lemmaIsPrefixRefl!3159 lt!1992773 lt!1992772) lt!1992844)))

(declare-fun bs!1174029 () Bool)

(assert (= bs!1174029 d!1560656))

(assert (=> bs!1174029 m!5860328))

(declare-fun m!5860500 () Bool)

(assert (=> bs!1174029 m!5860500))

(assert (=> d!1560578 d!1560656))

(assert (=> d!1560578 d!1560608))

(assert (=> d!1560578 d!1560592))

(declare-fun b!4862920 () Bool)

(declare-fun e!3040496 () List!56037)

(assert (=> b!4862920 (= e!3040496 Nil!55913)))

(declare-fun b!4862921 () Bool)

(declare-fun e!3040497 () List!56037)

(assert (=> b!4862921 (= e!3040496 e!3040497)))

(declare-fun c!827041 () Bool)

(assert (=> b!4862921 (= c!827041 ((_ is Leaf!24287) (c!826974 input!661)))))

(declare-fun b!4862923 () Bool)

(assert (=> b!4862923 (= e!3040497 (++!12171 (list!17462 (left!40608 (c!826974 input!661))) (list!17462 (right!40938 (c!826974 input!661)))))))

(declare-fun d!1560658 () Bool)

(declare-fun c!827040 () Bool)

(assert (=> d!1560658 (= c!827040 ((_ is Empty!14563) (c!826974 input!661)))))

(assert (=> d!1560658 (= (list!17462 (c!826974 input!661)) e!3040496)))

(declare-fun b!4862922 () Bool)

(declare-fun list!17466 (IArray!29187) List!56037)

(assert (=> b!4862922 (= e!3040497 (list!17466 (xs!17869 (c!826974 input!661))))))

(assert (= (and d!1560658 c!827040) b!4862920))

(assert (= (and d!1560658 (not c!827040)) b!4862921))

(assert (= (and b!4862921 c!827041) b!4862922))

(assert (= (and b!4862921 (not c!827041)) b!4862923))

(declare-fun m!5860502 () Bool)

(assert (=> b!4862923 m!5860502))

(declare-fun m!5860504 () Bool)

(assert (=> b!4862923 m!5860504))

(assert (=> b!4862923 m!5860502))

(assert (=> b!4862923 m!5860504))

(declare-fun m!5860506 () Bool)

(assert (=> b!4862923 m!5860506))

(declare-fun m!5860508 () Bool)

(assert (=> b!4862922 m!5860508))

(assert (=> d!1560592 d!1560658))

(declare-fun d!1560660 () Bool)

(declare-fun c!827042 () Bool)

(assert (=> d!1560660 (= c!827042 ((_ is Node!14563) (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun e!3040498 () Bool)

(assert (=> d!1560660 (= (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) e!3040498)))

(declare-fun b!4862924 () Bool)

(assert (=> b!4862924 (= e!3040498 (inv!71813 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4862925 () Bool)

(declare-fun e!3040499 () Bool)

(assert (=> b!4862925 (= e!3040498 e!3040499)))

(declare-fun res!2076005 () Bool)

(assert (=> b!4862925 (= res!2076005 (not ((_ is Leaf!24287) (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (=> b!4862925 (=> res!2076005 e!3040499)))

(declare-fun b!4862926 () Bool)

(assert (=> b!4862926 (= e!3040499 (inv!71814 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1560660 c!827042) b!4862924))

(assert (= (and d!1560660 (not c!827042)) b!4862925))

(assert (= (and b!4862925 (not res!2076005)) b!4862926))

(declare-fun m!5860510 () Bool)

(assert (=> b!4862924 m!5860510))

(declare-fun m!5860512 () Bool)

(assert (=> b!4862926 m!5860512))

(assert (=> b!4862637 d!1560660))

(declare-fun d!1560662 () Bool)

(assert (=> d!1560662 (= (inv!71815 (xs!17869 (c!826974 input!661))) (<= (size!36838 (innerList!14651 (xs!17869 (c!826974 input!661)))) 2147483647))))

(declare-fun bs!1174030 () Bool)

(assert (= bs!1174030 d!1560662))

(declare-fun m!5860514 () Bool)

(assert (=> bs!1174030 m!5860514))

(assert (=> b!4862781 d!1560662))

(declare-fun d!1560664 () Bool)

(declare-fun lt!1992847 () Int)

(declare-fun size!36840 (List!56039) Int)

(assert (=> d!1560664 (= lt!1992847 (size!36840 (list!17464 (_1!33173 lt!1992737))))))

(declare-fun size!36841 (Conc!14564) Int)

(assert (=> d!1560664 (= lt!1992847 (size!36841 (c!826976 (_1!33173 lt!1992737))))))

(assert (=> d!1560664 (= (size!36836 (_1!33173 lt!1992737)) lt!1992847)))

(declare-fun bs!1174031 () Bool)

(assert (= bs!1174031 d!1560664))

(assert (=> bs!1174031 m!5860232))

(assert (=> bs!1174031 m!5860232))

(declare-fun m!5860516 () Bool)

(assert (=> bs!1174031 m!5860516))

(declare-fun m!5860518 () Bool)

(assert (=> bs!1174031 m!5860518))

(assert (=> d!1560532 d!1560664))

(declare-fun b!4862989 () Bool)

(declare-fun e!3040544 () Bool)

(declare-fun e!3040546 () Bool)

(assert (=> b!4862989 (= e!3040544 e!3040546)))

(declare-fun res!2076040 () Bool)

(assert (=> b!4862989 (=> (not res!2076040) (not e!3040546))))

(declare-fun lt!1992897 () Option!13771)

(assert (=> b!4862989 (= res!2076040 (= (_1!33172 (get!19216 lt!1992897)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4862990 () Bool)

(declare-fun res!2076036 () Bool)

(declare-fun e!3040545 () Bool)

(assert (=> b!4862990 (=> (not res!2076036) (not e!3040545))))

(declare-fun e!3040543 () Bool)

(assert (=> b!4862990 (= res!2076036 e!3040543)))

(declare-fun res!2076039 () Bool)

(assert (=> b!4862990 (=> res!2076039 e!3040543)))

(assert (=> b!4862990 (= res!2076039 (not (isDefined!10840 lt!1992897)))))

(declare-fun b!4862991 () Bool)

(declare-fun e!3040542 () Option!13771)

(declare-fun call!337812 () Option!13771)

(assert (=> b!4862991 (= e!3040542 call!337812)))

(declare-fun bm!337807 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!573 (LexerInterface!7618 Rule!15852 BalanceConc!28568) Option!13771)

(assert (=> bm!337807 (= call!337812 (maxPrefixOneRuleZipperSequence!573 thiss!11777 (h!62362 rules!1248) (_2!33172 (v!49672 lt!1992698))))))

(declare-fun b!4862992 () Bool)

(declare-fun lt!1992896 () Option!13771)

(declare-fun lt!1992900 () Option!13771)

(assert (=> b!4862992 (= e!3040542 (ite (and ((_ is None!13770) lt!1992896) ((_ is None!13770) lt!1992900)) None!13770 (ite ((_ is None!13770) lt!1992900) lt!1992896 (ite ((_ is None!13770) lt!1992896) lt!1992900 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1992896))) (size!36832 (_1!33172 (v!49672 lt!1992900)))) lt!1992896 lt!1992900)))))))

(assert (=> b!4862992 (= lt!1992896 call!337812)))

(assert (=> b!4862992 (= lt!1992900 (maxPrefixZipperSequence!1221 thiss!11777 (t!363662 rules!1248) (_2!33172 (v!49672 lt!1992698))))))

(declare-fun d!1560666 () Bool)

(assert (=> d!1560666 e!3040545))

(declare-fun res!2076041 () Bool)

(assert (=> d!1560666 (=> (not res!2076041) (not e!3040545))))

(assert (=> d!1560666 (= res!2076041 (= (isDefined!10840 lt!1992897) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1560666 (= lt!1992897 e!3040542)))

(declare-fun c!827054 () Bool)

(assert (=> d!1560666 (= c!827054 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1992899 () Unit!145922)

(declare-fun lt!1992898 () Unit!145922)

(assert (=> d!1560666 (= lt!1992899 lt!1992898)))

(declare-fun lt!1992895 () List!56037)

(declare-fun lt!1992901 () List!56037)

(assert (=> d!1560666 (isPrefix!4762 lt!1992895 lt!1992901)))

(assert (=> d!1560666 (= lt!1992898 (lemmaIsPrefixRefl!3159 lt!1992895 lt!1992901))))

(assert (=> d!1560666 (= lt!1992901 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1560666 (= lt!1992895 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1560666 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560666 (= (maxPrefixZipperSequence!1221 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992698))) lt!1992897)))

(declare-fun b!4862993 () Bool)

(assert (=> b!4862993 (= e!3040546 (= (list!17460 (_2!33172 (get!19216 lt!1992897))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4862994 () Bool)

(declare-fun e!3040547 () Bool)

(assert (=> b!4862994 (= e!3040543 e!3040547)))

(declare-fun res!2076038 () Bool)

(assert (=> b!4862994 (=> (not res!2076038) (not e!3040547))))

(assert (=> b!4862994 (= res!2076038 (= (_1!33172 (get!19216 lt!1992897)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4862995 () Bool)

(assert (=> b!4862995 (= e!3040547 (= (list!17460 (_2!33172 (get!19216 lt!1992897))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4862996 () Bool)

(assert (=> b!4862996 (= e!3040545 e!3040544)))

(declare-fun res!2076037 () Bool)

(assert (=> b!4862996 (=> res!2076037 e!3040544)))

(assert (=> b!4862996 (= res!2076037 (not (isDefined!10840 lt!1992897)))))

(assert (= (and d!1560666 c!827054) b!4862991))

(assert (= (and d!1560666 (not c!827054)) b!4862992))

(assert (= (or b!4862991 b!4862992) bm!337807))

(assert (= (and d!1560666 res!2076041) b!4862990))

(assert (= (and b!4862990 (not res!2076039)) b!4862994))

(assert (= (and b!4862994 res!2076038) b!4862995))

(assert (= (and b!4862990 res!2076036) b!4862996))

(assert (= (and b!4862996 (not res!2076037)) b!4862989))

(assert (= (and b!4862989 res!2076040) b!4862993))

(declare-fun m!5860582 () Bool)

(assert (=> b!4862990 m!5860582))

(declare-fun m!5860584 () Bool)

(assert (=> b!4862989 m!5860584))

(assert (=> b!4862989 m!5860108))

(assert (=> b!4862989 m!5860108))

(declare-fun m!5860586 () Bool)

(assert (=> b!4862989 m!5860586))

(assert (=> b!4862989 m!5860586))

(declare-fun m!5860588 () Bool)

(assert (=> b!4862989 m!5860588))

(assert (=> b!4862993 m!5860584))

(assert (=> b!4862993 m!5860586))

(assert (=> b!4862993 m!5860588))

(declare-fun m!5860590 () Bool)

(assert (=> b!4862993 m!5860590))

(assert (=> b!4862993 m!5860108))

(assert (=> b!4862993 m!5860586))

(assert (=> b!4862993 m!5860108))

(declare-fun m!5860592 () Bool)

(assert (=> bm!337807 m!5860592))

(assert (=> d!1560666 m!5860582))

(declare-fun m!5860594 () Bool)

(assert (=> d!1560666 m!5860594))

(declare-fun m!5860596 () Bool)

(assert (=> d!1560666 m!5860596))

(assert (=> d!1560666 m!5860108))

(declare-fun m!5860598 () Bool)

(assert (=> d!1560666 m!5860598))

(assert (=> d!1560666 m!5860322))

(declare-fun m!5860600 () Bool)

(assert (=> d!1560666 m!5860600))

(assert (=> d!1560666 m!5860108))

(assert (=> d!1560666 m!5860594))

(assert (=> b!4862996 m!5860582))

(declare-fun m!5860602 () Bool)

(assert (=> b!4862992 m!5860602))

(assert (=> b!4862995 m!5860584))

(assert (=> b!4862995 m!5860590))

(assert (=> b!4862995 m!5860594))

(declare-fun m!5860604 () Bool)

(assert (=> b!4862995 m!5860604))

(assert (=> b!4862995 m!5860108))

(assert (=> b!4862995 m!5860108))

(assert (=> b!4862995 m!5860594))

(assert (=> b!4862994 m!5860584))

(assert (=> b!4862994 m!5860108))

(assert (=> b!4862994 m!5860108))

(assert (=> b!4862994 m!5860594))

(assert (=> b!4862994 m!5860594))

(assert (=> b!4862994 m!5860604))

(assert (=> d!1560532 d!1560666))

(declare-fun d!1560680 () Bool)

(assert (=> d!1560680 (= (inv!71803 (tag!8890 (h!62362 (t!363662 rules!1248)))) (= (mod (str.len (value!257884 (tag!8890 (h!62362 (t!363662 rules!1248))))) 2) 0))))

(assert (=> b!4862792 d!1560680))

(declare-fun d!1560682 () Bool)

(declare-fun res!2076042 () Bool)

(declare-fun e!3040548 () Bool)

(assert (=> d!1560682 (=> (not res!2076042) (not e!3040548))))

(assert (=> d!1560682 (= res!2076042 (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))))))

(assert (=> d!1560682 (= (inv!71808 (transformation!8026 (h!62362 (t!363662 rules!1248)))) e!3040548)))

(declare-fun b!4862997 () Bool)

(assert (=> b!4862997 (= e!3040548 (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))))))

(assert (= (and d!1560682 res!2076042) b!4862997))

(declare-fun m!5860606 () Bool)

(assert (=> d!1560682 m!5860606))

(declare-fun m!5860608 () Bool)

(assert (=> b!4862997 m!5860608))

(assert (=> b!4862792 d!1560682))

(declare-fun d!1560684 () Bool)

(declare-fun res!2076047 () Bool)

(declare-fun e!3040551 () Bool)

(assert (=> d!1560684 (=> (not res!2076047) (not e!3040551))))

(assert (=> d!1560684 (= res!2076047 (<= (size!36838 (list!17466 (xs!17869 (c!826974 totalInput!332)))) 512))))

(assert (=> d!1560684 (= (inv!71814 (c!826974 totalInput!332)) e!3040551)))

(declare-fun b!4863002 () Bool)

(declare-fun res!2076048 () Bool)

(assert (=> b!4863002 (=> (not res!2076048) (not e!3040551))))

(assert (=> b!4863002 (= res!2076048 (= (csize!29357 (c!826974 totalInput!332)) (size!36838 (list!17466 (xs!17869 (c!826974 totalInput!332))))))))

(declare-fun b!4863003 () Bool)

(assert (=> b!4863003 (= e!3040551 (and (> (csize!29357 (c!826974 totalInput!332)) 0) (<= (csize!29357 (c!826974 totalInput!332)) 512)))))

(assert (= (and d!1560684 res!2076047) b!4863002))

(assert (= (and b!4863002 res!2076048) b!4863003))

(declare-fun m!5860610 () Bool)

(assert (=> d!1560684 m!5860610))

(assert (=> d!1560684 m!5860610))

(declare-fun m!5860612 () Bool)

(assert (=> d!1560684 m!5860612))

(assert (=> b!4863002 m!5860610))

(assert (=> b!4863002 m!5860610))

(assert (=> b!4863002 m!5860612))

(assert (=> b!4862658 d!1560684))

(declare-fun d!1560686 () Bool)

(declare-fun c!827055 () Bool)

(assert (=> d!1560686 (= c!827055 ((_ is Node!14563) (left!40608 (c!826974 input!661))))))

(declare-fun e!3040552 () Bool)

(assert (=> d!1560686 (= (inv!71807 (left!40608 (c!826974 input!661))) e!3040552)))

(declare-fun b!4863004 () Bool)

(assert (=> b!4863004 (= e!3040552 (inv!71813 (left!40608 (c!826974 input!661))))))

(declare-fun b!4863005 () Bool)

(declare-fun e!3040553 () Bool)

(assert (=> b!4863005 (= e!3040552 e!3040553)))

(declare-fun res!2076049 () Bool)

(assert (=> b!4863005 (= res!2076049 (not ((_ is Leaf!24287) (left!40608 (c!826974 input!661)))))))

(assert (=> b!4863005 (=> res!2076049 e!3040553)))

(declare-fun b!4863006 () Bool)

(assert (=> b!4863006 (= e!3040553 (inv!71814 (left!40608 (c!826974 input!661))))))

(assert (= (and d!1560686 c!827055) b!4863004))

(assert (= (and d!1560686 (not c!827055)) b!4863005))

(assert (= (and b!4863005 (not res!2076049)) b!4863006))

(declare-fun m!5860614 () Bool)

(assert (=> b!4863004 m!5860614))

(declare-fun m!5860616 () Bool)

(assert (=> b!4863006 m!5860616))

(assert (=> b!4862780 d!1560686))

(declare-fun d!1560688 () Bool)

(declare-fun c!827056 () Bool)

(assert (=> d!1560688 (= c!827056 ((_ is Node!14563) (right!40938 (c!826974 input!661))))))

(declare-fun e!3040554 () Bool)

(assert (=> d!1560688 (= (inv!71807 (right!40938 (c!826974 input!661))) e!3040554)))

(declare-fun b!4863007 () Bool)

(assert (=> b!4863007 (= e!3040554 (inv!71813 (right!40938 (c!826974 input!661))))))

(declare-fun b!4863008 () Bool)

(declare-fun e!3040555 () Bool)

(assert (=> b!4863008 (= e!3040554 e!3040555)))

(declare-fun res!2076050 () Bool)

(assert (=> b!4863008 (= res!2076050 (not ((_ is Leaf!24287) (right!40938 (c!826974 input!661)))))))

(assert (=> b!4863008 (=> res!2076050 e!3040555)))

(declare-fun b!4863009 () Bool)

(assert (=> b!4863009 (= e!3040555 (inv!71814 (right!40938 (c!826974 input!661))))))

(assert (= (and d!1560688 c!827056) b!4863007))

(assert (= (and d!1560688 (not c!827056)) b!4863008))

(assert (= (and b!4863008 (not res!2076050)) b!4863009))

(declare-fun m!5860618 () Bool)

(assert (=> b!4863007 m!5860618))

(declare-fun m!5860620 () Bool)

(assert (=> b!4863009 m!5860620))

(assert (=> b!4862780 d!1560688))

(declare-fun b!4863010 () Bool)

(declare-fun e!3040556 () List!56037)

(assert (=> b!4863010 (= e!3040556 Nil!55913)))

(declare-fun b!4863011 () Bool)

(declare-fun e!3040557 () List!56037)

(assert (=> b!4863011 (= e!3040556 e!3040557)))

(declare-fun c!827058 () Bool)

(assert (=> b!4863011 (= c!827058 ((_ is Leaf!24287) (c!826974 totalInput!332)))))

(declare-fun b!4863013 () Bool)

(assert (=> b!4863013 (= e!3040557 (++!12171 (list!17462 (left!40608 (c!826974 totalInput!332))) (list!17462 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun d!1560690 () Bool)

(declare-fun c!827057 () Bool)

(assert (=> d!1560690 (= c!827057 ((_ is Empty!14563) (c!826974 totalInput!332)))))

(assert (=> d!1560690 (= (list!17462 (c!826974 totalInput!332)) e!3040556)))

(declare-fun b!4863012 () Bool)

(assert (=> b!4863012 (= e!3040557 (list!17466 (xs!17869 (c!826974 totalInput!332))))))

(assert (= (and d!1560690 c!827057) b!4863010))

(assert (= (and d!1560690 (not c!827057)) b!4863011))

(assert (= (and b!4863011 c!827058) b!4863012))

(assert (= (and b!4863011 (not c!827058)) b!4863013))

(declare-fun m!5860622 () Bool)

(assert (=> b!4863013 m!5860622))

(declare-fun m!5860624 () Bool)

(assert (=> b!4863013 m!5860624))

(assert (=> b!4863013 m!5860622))

(assert (=> b!4863013 m!5860624))

(declare-fun m!5860626 () Bool)

(assert (=> b!4863013 m!5860626))

(assert (=> b!4863012 m!5860610))

(assert (=> d!1560590 d!1560690))

(declare-fun d!1560692 () Bool)

(assert (=> d!1560692 true))

(declare-fun order!25173 () Int)

(declare-fun lambda!243326 () Int)

(declare-fun order!25171 () Int)

(declare-fun dynLambda!22423 (Int Int) Int)

(declare-fun dynLambda!22424 (Int Int) Int)

(assert (=> d!1560692 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243326))))

(assert (=> d!1560692 true))

(declare-fun order!25175 () Int)

(declare-fun dynLambda!22425 (Int Int) Int)

(assert (=> d!1560692 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243326))))

(declare-fun Forall!1668 (Int) Bool)

(assert (=> d!1560692 (= (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (Forall!1668 lambda!243326))))

(declare-fun bs!1174034 () Bool)

(assert (= bs!1174034 d!1560692))

(declare-fun m!5860628 () Bool)

(assert (=> bs!1174034 m!5860628))

(assert (=> d!1560586 d!1560692))

(declare-fun bs!1174035 () Bool)

(declare-fun d!1560694 () Bool)

(assert (= bs!1174035 (and d!1560694 d!1560626)))

(declare-fun lambda!243329 () Int)

(assert (=> bs!1174035 (= lambda!243329 lambda!243315)))

(assert (=> d!1560694 true))

(declare-fun lt!1992904 () Bool)

(assert (=> d!1560694 (= lt!1992904 (rulesValidInductive!3015 thiss!11777 rules!1248))))

(assert (=> d!1560694 (= lt!1992904 (forall!13043 rules!1248 lambda!243329))))

(assert (=> d!1560694 (= (rulesValid!3116 thiss!11777 rules!1248) lt!1992904)))

(declare-fun bs!1174036 () Bool)

(assert (= bs!1174036 d!1560694))

(assert (=> bs!1174036 m!5860322))

(declare-fun m!5860630 () Bool)

(assert (=> bs!1174036 m!5860630))

(assert (=> d!1560582 d!1560694))

(declare-fun d!1560696 () Bool)

(declare-fun res!2076051 () Bool)

(declare-fun e!3040558 () Bool)

(assert (=> d!1560696 (=> (not res!2076051) (not e!3040558))))

(assert (=> d!1560696 (= res!2076051 (<= (size!36838 (list!17466 (xs!17869 (c!826974 input!661)))) 512))))

(assert (=> d!1560696 (= (inv!71814 (c!826974 input!661)) e!3040558)))

(declare-fun b!4863018 () Bool)

(declare-fun res!2076052 () Bool)

(assert (=> b!4863018 (=> (not res!2076052) (not e!3040558))))

(assert (=> b!4863018 (= res!2076052 (= (csize!29357 (c!826974 input!661)) (size!36838 (list!17466 (xs!17869 (c!826974 input!661))))))))

(declare-fun b!4863019 () Bool)

(assert (=> b!4863019 (= e!3040558 (and (> (csize!29357 (c!826974 input!661)) 0) (<= (csize!29357 (c!826974 input!661)) 512)))))

(assert (= (and d!1560696 res!2076051) b!4863018))

(assert (= (and b!4863018 res!2076052) b!4863019))

(assert (=> d!1560696 m!5860508))

(assert (=> d!1560696 m!5860508))

(declare-fun m!5860632 () Bool)

(assert (=> d!1560696 m!5860632))

(assert (=> b!4863018 m!5860508))

(assert (=> b!4863018 m!5860508))

(assert (=> b!4863018 m!5860632))

(assert (=> b!4862754 d!1560696))

(assert (=> b!4862546 d!1560576))

(declare-fun b!4863042 () Bool)

(declare-fun e!3040574 () Int)

(declare-fun call!337815 () Int)

(assert (=> b!4863042 (= e!3040574 call!337815)))

(declare-fun b!4863043 () Bool)

(declare-fun e!3040573 () List!56037)

(assert (=> b!4863043 (= e!3040573 Nil!55913)))

(declare-fun b!4863044 () Bool)

(declare-fun e!3040571 () List!56037)

(assert (=> b!4863044 (= e!3040571 (list!17460 totalInput!332))))

(declare-fun b!4863045 () Bool)

(declare-fun e!3040572 () Int)

(assert (=> b!4863045 (= e!3040574 e!3040572)))

(declare-fun c!827069 () Bool)

(assert (=> b!4863045 (= c!827069 (>= (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) call!337815))))

(declare-fun d!1560698 () Bool)

(declare-fun e!3040575 () Bool)

(assert (=> d!1560698 e!3040575))

(declare-fun res!2076055 () Bool)

(assert (=> d!1560698 (=> (not res!2076055) (not e!3040575))))

(declare-fun lt!1992917 () List!56037)

(assert (=> d!1560698 (= res!2076055 (= ((_ map implies) (content!9960 lt!1992917) (content!9960 (list!17460 totalInput!332))) ((as const (InoxSet C!26400)) true)))))

(assert (=> d!1560698 (= lt!1992917 e!3040573)))

(declare-fun c!827071 () Bool)

(assert (=> d!1560698 (= c!827071 ((_ is Nil!55913) (list!17460 totalInput!332)))))

(assert (=> d!1560698 (= (drop!2196 (list!17460 totalInput!332) (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697))) lt!1992917)))

(declare-fun b!4863046 () Bool)

(assert (=> b!4863046 (= e!3040572 (- call!337815 (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697))))))

(declare-fun b!4863047 () Bool)

(assert (=> b!4863047 (= e!3040572 0)))

(declare-fun bm!337810 () Bool)

(assert (=> bm!337810 (= call!337815 (size!36838 (list!17460 totalInput!332)))))

(declare-fun b!4863048 () Bool)

(assert (=> b!4863048 (= e!3040575 (= (size!36838 lt!1992917) e!3040574))))

(declare-fun c!827072 () Bool)

(assert (=> b!4863048 (= c!827072 (<= (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 0))))

(declare-fun b!4863049 () Bool)

(assert (=> b!4863049 (= e!3040573 e!3040571)))

(declare-fun c!827070 () Bool)

(assert (=> b!4863049 (= c!827070 (<= (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 0))))

(declare-fun b!4863050 () Bool)

(assert (=> b!4863050 (= e!3040571 (drop!2196 (t!363661 (list!17460 totalInput!332)) (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1)))))

(assert (= (and d!1560698 c!827071) b!4863043))

(assert (= (and d!1560698 (not c!827071)) b!4863049))

(assert (= (and b!4863049 c!827070) b!4863044))

(assert (= (and b!4863049 (not c!827070)) b!4863050))

(assert (= (and d!1560698 res!2076055) b!4863048))

(assert (= (and b!4863048 c!827072) b!4863042))

(assert (= (and b!4863048 (not c!827072)) b!4863045))

(assert (= (and b!4863045 c!827069) b!4863047))

(assert (= (and b!4863045 (not c!827069)) b!4863046))

(assert (= (or b!4863042 b!4863045 b!4863046) bm!337810))

(declare-fun m!5860634 () Bool)

(assert (=> d!1560698 m!5860634))

(assert (=> d!1560698 m!5860126))

(declare-fun m!5860636 () Bool)

(assert (=> d!1560698 m!5860636))

(assert (=> bm!337810 m!5860126))

(assert (=> bm!337810 m!5860338))

(declare-fun m!5860638 () Bool)

(assert (=> b!4863048 m!5860638))

(declare-fun m!5860640 () Bool)

(assert (=> b!4863050 m!5860640))

(assert (=> d!1560588 d!1560698))

(declare-fun d!1560700 () Bool)

(declare-fun lt!1992920 () Int)

(assert (=> d!1560700 (>= lt!1992920 0)))

(declare-fun e!3040582 () Int)

(assert (=> d!1560700 (= lt!1992920 e!3040582)))

(declare-fun c!827075 () Bool)

(assert (=> d!1560700 (= c!827075 ((_ is Nil!55913) (list!17460 totalInput!332)))))

(assert (=> d!1560700 (= (size!36838 (list!17460 totalInput!332)) lt!1992920)))

(declare-fun b!4863069 () Bool)

(assert (=> b!4863069 (= e!3040582 0)))

(declare-fun b!4863070 () Bool)

(assert (=> b!4863070 (= e!3040582 (+ 1 (size!36838 (t!363661 (list!17460 totalInput!332)))))))

(assert (= (and d!1560700 c!827075) b!4863069))

(assert (= (and d!1560700 (not c!827075)) b!4863070))

(declare-fun m!5860642 () Bool)

(assert (=> b!4863070 m!5860642))

(assert (=> d!1560588 d!1560700))

(declare-fun d!1560702 () Bool)

(declare-fun lt!1992921 () Int)

(assert (=> d!1560702 (>= lt!1992921 0)))

(declare-fun e!3040583 () Int)

(assert (=> d!1560702 (= lt!1992921 e!3040583)))

(declare-fun c!827076 () Bool)

(assert (=> d!1560702 (= c!827076 ((_ is Nil!55913) lt!1992697))))

(assert (=> d!1560702 (= (size!36838 lt!1992697) lt!1992921)))

(declare-fun b!4863071 () Bool)

(assert (=> b!4863071 (= e!3040583 0)))

(declare-fun b!4863072 () Bool)

(assert (=> b!4863072 (= e!3040583 (+ 1 (size!36838 (t!363661 lt!1992697))))))

(assert (= (and d!1560702 c!827076) b!4863071))

(assert (= (and d!1560702 (not c!827076)) b!4863072))

(declare-fun m!5860644 () Bool)

(assert (=> b!4863072 m!5860644))

(assert (=> d!1560588 d!1560702))

(declare-fun d!1560704 () Bool)

(declare-fun res!2076083 () Bool)

(declare-fun e!3040589 () Bool)

(assert (=> d!1560704 (=> (not res!2076083) (not e!3040589))))

(declare-fun size!36842 (Conc!14563) Int)

(assert (=> d!1560704 (= res!2076083 (= (csize!29356 (c!826974 totalInput!332)) (+ (size!36842 (left!40608 (c!826974 totalInput!332))) (size!36842 (right!40938 (c!826974 totalInput!332))))))))

(assert (=> d!1560704 (= (inv!71813 (c!826974 totalInput!332)) e!3040589)))

(declare-fun b!4863088 () Bool)

(declare-fun res!2076084 () Bool)

(assert (=> b!4863088 (=> (not res!2076084) (not e!3040589))))

(assert (=> b!4863088 (= res!2076084 (and (not (= (left!40608 (c!826974 totalInput!332)) Empty!14563)) (not (= (right!40938 (c!826974 totalInput!332)) Empty!14563))))))

(declare-fun b!4863089 () Bool)

(declare-fun res!2076085 () Bool)

(assert (=> b!4863089 (=> (not res!2076085) (not e!3040589))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4863089 (= res!2076085 (= (cheight!14774 (c!826974 totalInput!332)) (+ (max!0 (height!1918 (left!40608 (c!826974 totalInput!332))) (height!1918 (right!40938 (c!826974 totalInput!332)))) 1)))))

(declare-fun b!4863090 () Bool)

(assert (=> b!4863090 (= e!3040589 (<= 0 (cheight!14774 (c!826974 totalInput!332))))))

(assert (= (and d!1560704 res!2076083) b!4863088))

(assert (= (and b!4863088 res!2076084) b!4863089))

(assert (= (and b!4863089 res!2076085) b!4863090))

(declare-fun m!5860646 () Bool)

(assert (=> d!1560704 m!5860646))

(declare-fun m!5860648 () Bool)

(assert (=> d!1560704 m!5860648))

(assert (=> b!4863089 m!5860420))

(assert (=> b!4863089 m!5860422))

(assert (=> b!4863089 m!5860420))

(assert (=> b!4863089 m!5860422))

(declare-fun m!5860650 () Bool)

(assert (=> b!4863089 m!5860650))

(assert (=> b!4862656 d!1560704))

(declare-fun d!1560706 () Bool)

(declare-fun c!827080 () Bool)

(assert (=> d!1560706 (= c!827080 ((_ is Nil!55913) lt!1992743))))

(declare-fun e!3040592 () (InoxSet C!26400))

(assert (=> d!1560706 (= (content!9960 lt!1992743) e!3040592)))

(declare-fun b!4863095 () Bool)

(assert (=> b!4863095 (= e!3040592 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863096 () Bool)

(assert (=> b!4863096 (= e!3040592 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 lt!1992743) true) (content!9960 (t!363661 lt!1992743))))))

(assert (= (and d!1560706 c!827080) b!4863095))

(assert (= (and d!1560706 (not c!827080)) b!4863096))

(declare-fun m!5860678 () Bool)

(assert (=> b!4863096 m!5860678))

(declare-fun m!5860680 () Bool)

(assert (=> b!4863096 m!5860680))

(assert (=> d!1560570 d!1560706))

(declare-fun d!1560708 () Bool)

(declare-fun c!827081 () Bool)

(assert (=> d!1560708 (= c!827081 ((_ is Nil!55913) (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(declare-fun e!3040593 () (InoxSet C!26400))

(assert (=> d!1560708 (= (content!9960 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) e!3040593)))

(declare-fun b!4863097 () Bool)

(assert (=> b!4863097 (= e!3040593 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863098 () Bool)

(assert (=> b!4863098 (= e!3040593 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) true) (content!9960 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1560708 c!827081) b!4863097))

(assert (= (and d!1560708 (not c!827081)) b!4863098))

(declare-fun m!5860682 () Bool)

(assert (=> b!4863098 m!5860682))

(assert (=> b!4863098 m!5860408))

(assert (=> d!1560570 d!1560708))

(declare-fun d!1560712 () Bool)

(declare-fun c!827082 () Bool)

(assert (=> d!1560712 (= c!827082 ((_ is Nil!55913) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun e!3040594 () (InoxSet C!26400))

(assert (=> d!1560712 (= (content!9960 (list!17460 (_2!33172 (v!49672 lt!1992698)))) e!3040594)))

(declare-fun b!4863099 () Bool)

(assert (=> b!4863099 (= e!3040594 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863100 () Bool)

(assert (=> b!4863100 (= e!3040594 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (list!17460 (_2!33172 (v!49672 lt!1992698)))) true) (content!9960 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1560712 c!827082) b!4863099))

(assert (= (and d!1560712 (not c!827082)) b!4863100))

(declare-fun m!5860684 () Bool)

(assert (=> b!4863100 m!5860684))

(declare-fun m!5860686 () Bool)

(assert (=> b!4863100 m!5860686))

(assert (=> d!1560570 d!1560712))

(declare-fun d!1560714 () Bool)

(assert (=> d!1560714 (= (list!17460 lt!1992740) (list!17462 (c!826974 lt!1992740)))))

(declare-fun bs!1174037 () Bool)

(assert (= bs!1174037 d!1560714))

(declare-fun m!5860688 () Bool)

(assert (=> bs!1174037 m!5860688))

(assert (=> d!1560566 d!1560714))

(assert (=> b!4862541 d!1560594))

(declare-fun b!4863101 () Bool)

(declare-fun e!3040595 () List!56037)

(assert (=> b!4863101 (= e!3040595 Nil!55913)))

(declare-fun b!4863102 () Bool)

(declare-fun e!3040596 () List!56037)

(assert (=> b!4863102 (= e!3040595 e!3040596)))

(declare-fun c!827084 () Bool)

(assert (=> b!4863102 (= c!827084 ((_ is Leaf!24287) (c!826974 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863104 () Bool)

(assert (=> b!4863104 (= e!3040596 (++!12171 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))) (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun d!1560716 () Bool)

(declare-fun c!827083 () Bool)

(assert (=> d!1560716 (= c!827083 ((_ is Empty!14563) (c!826974 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560716 (= (list!17462 (c!826974 (_2!33172 (v!49672 lt!1992698)))) e!3040595)))

(declare-fun b!4863103 () Bool)

(assert (=> b!4863103 (= e!3040596 (list!17466 (xs!17869 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (= (and d!1560716 c!827083) b!4863101))

(assert (= (and d!1560716 (not c!827083)) b!4863102))

(assert (= (and b!4863102 c!827084) b!4863103))

(assert (= (and b!4863102 (not c!827084)) b!4863104))

(declare-fun m!5860692 () Bool)

(assert (=> b!4863104 m!5860692))

(declare-fun m!5860694 () Bool)

(assert (=> b!4863104 m!5860694))

(assert (=> b!4863104 m!5860692))

(assert (=> b!4863104 m!5860694))

(declare-fun m!5860696 () Bool)

(assert (=> b!4863104 m!5860696))

(declare-fun m!5860698 () Bool)

(assert (=> b!4863103 m!5860698))

(assert (=> d!1560530 d!1560716))

(declare-fun d!1560720 () Bool)

(declare-fun list!17468 (Conc!14564) List!56039)

(assert (=> d!1560720 (= (list!17464 (_1!33173 lt!1992737)) (list!17468 (c!826976 (_1!33173 lt!1992737))))))

(declare-fun bs!1174039 () Bool)

(assert (= bs!1174039 d!1560720))

(declare-fun m!5860700 () Bool)

(assert (=> bs!1174039 m!5860700))

(assert (=> b!4862632 d!1560720))

(declare-fun b!4863146 () Bool)

(declare-fun e!3040621 () Bool)

(declare-fun lt!1992953 () tuple2!59746)

(declare-fun isEmpty!29903 (List!56039) Bool)

(assert (=> b!4863146 (= e!3040621 (not (isEmpty!29903 (_1!33176 lt!1992953))))))

(declare-fun b!4863147 () Bool)

(declare-fun e!3040622 () Bool)

(assert (=> b!4863147 (= e!3040622 e!3040621)))

(declare-fun res!2076109 () Bool)

(assert (=> b!4863147 (= res!2076109 (< (size!36838 (_2!33176 lt!1992953)) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> b!4863147 (=> (not res!2076109) (not e!3040621))))

(declare-fun d!1560722 () Bool)

(assert (=> d!1560722 e!3040622))

(declare-fun c!827095 () Bool)

(assert (=> d!1560722 (= c!827095 (> (size!36840 (_1!33176 lt!1992953)) 0))))

(declare-fun e!3040623 () tuple2!59746)

(assert (=> d!1560722 (= lt!1992953 e!3040623)))

(declare-fun c!827096 () Bool)

(declare-fun lt!1992954 () Option!13773)

(assert (=> d!1560722 (= c!827096 ((_ is Some!13772) lt!1992954))))

(assert (=> d!1560722 (= lt!1992954 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560722 (= (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1992953)))

(declare-fun b!4863148 () Bool)

(declare-fun lt!1992955 () tuple2!59746)

(assert (=> b!4863148 (= e!3040623 (tuple2!59747 (Cons!55915 (_1!33177 (v!49674 lt!1992954)) (_1!33176 lt!1992955)) (_2!33176 lt!1992955)))))

(assert (=> b!4863148 (= lt!1992955 (lexList!2099 thiss!11777 rules!1248 (_2!33177 (v!49674 lt!1992954))))))

(declare-fun b!4863149 () Bool)

(assert (=> b!4863149 (= e!3040623 (tuple2!59747 Nil!55915 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863150 () Bool)

(assert (=> b!4863150 (= e!3040622 (= (_2!33176 lt!1992953) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (= (and d!1560722 c!827096) b!4863148))

(assert (= (and d!1560722 (not c!827096)) b!4863149))

(assert (= (and d!1560722 c!827095) b!4863147))

(assert (= (and d!1560722 (not c!827095)) b!4863150))

(assert (= (and b!4863147 res!2076109) b!4863146))

(declare-fun m!5860778 () Bool)

(assert (=> b!4863146 m!5860778))

(declare-fun m!5860780 () Bool)

(assert (=> b!4863147 m!5860780))

(assert (=> b!4863147 m!5860108))

(assert (=> b!4863147 m!5860254))

(declare-fun m!5860786 () Bool)

(assert (=> d!1560722 m!5860786))

(assert (=> d!1560722 m!5860108))

(assert (=> d!1560722 m!5860586))

(declare-fun m!5860788 () Bool)

(assert (=> b!4863148 m!5860788))

(assert (=> b!4862632 d!1560722))

(assert (=> b!4862632 d!1560530))

(declare-fun d!1560738 () Bool)

(declare-fun res!2076110 () Bool)

(declare-fun e!3040624 () Bool)

(assert (=> d!1560738 (=> (not res!2076110) (not e!3040624))))

(assert (=> d!1560738 (= res!2076110 (= (csize!29356 (c!826974 input!661)) (+ (size!36842 (left!40608 (c!826974 input!661))) (size!36842 (right!40938 (c!826974 input!661))))))))

(assert (=> d!1560738 (= (inv!71813 (c!826974 input!661)) e!3040624)))

(declare-fun b!4863151 () Bool)

(declare-fun res!2076111 () Bool)

(assert (=> b!4863151 (=> (not res!2076111) (not e!3040624))))

(assert (=> b!4863151 (= res!2076111 (and (not (= (left!40608 (c!826974 input!661)) Empty!14563)) (not (= (right!40938 (c!826974 input!661)) Empty!14563))))))

(declare-fun b!4863152 () Bool)

(declare-fun res!2076112 () Bool)

(assert (=> b!4863152 (=> (not res!2076112) (not e!3040624))))

(assert (=> b!4863152 (= res!2076112 (= (cheight!14774 (c!826974 input!661)) (+ (max!0 (height!1918 (left!40608 (c!826974 input!661))) (height!1918 (right!40938 (c!826974 input!661)))) 1)))))

(declare-fun b!4863153 () Bool)

(assert (=> b!4863153 (= e!3040624 (<= 0 (cheight!14774 (c!826974 input!661))))))

(assert (= (and d!1560738 res!2076110) b!4863151))

(assert (= (and b!4863151 res!2076111) b!4863152))

(assert (= (and b!4863152 res!2076112) b!4863153))

(declare-fun m!5860790 () Bool)

(assert (=> d!1560738 m!5860790))

(declare-fun m!5860792 () Bool)

(assert (=> d!1560738 m!5860792))

(declare-fun m!5860794 () Bool)

(assert (=> b!4863152 m!5860794))

(declare-fun m!5860796 () Bool)

(assert (=> b!4863152 m!5860796))

(assert (=> b!4863152 m!5860794))

(assert (=> b!4863152 m!5860796))

(declare-fun m!5860798 () Bool)

(assert (=> b!4863152 m!5860798))

(assert (=> b!4862752 d!1560738))

(declare-fun d!1560742 () Bool)

(declare-fun c!827097 () Bool)

(assert (=> d!1560742 (= c!827097 ((_ is Node!14563) (left!40608 (c!826974 totalInput!332))))))

(declare-fun e!3040625 () Bool)

(assert (=> d!1560742 (= (inv!71807 (left!40608 (c!826974 totalInput!332))) e!3040625)))

(declare-fun b!4863154 () Bool)

(assert (=> b!4863154 (= e!3040625 (inv!71813 (left!40608 (c!826974 totalInput!332))))))

(declare-fun b!4863155 () Bool)

(declare-fun e!3040626 () Bool)

(assert (=> b!4863155 (= e!3040625 e!3040626)))

(declare-fun res!2076113 () Bool)

(assert (=> b!4863155 (= res!2076113 (not ((_ is Leaf!24287) (left!40608 (c!826974 totalInput!332)))))))

(assert (=> b!4863155 (=> res!2076113 e!3040626)))

(declare-fun b!4863156 () Bool)

(assert (=> b!4863156 (= e!3040626 (inv!71814 (left!40608 (c!826974 totalInput!332))))))

(assert (= (and d!1560742 c!827097) b!4863154))

(assert (= (and d!1560742 (not c!827097)) b!4863155))

(assert (= (and b!4863155 (not res!2076113)) b!4863156))

(declare-fun m!5860800 () Bool)

(assert (=> b!4863154 m!5860800))

(declare-fun m!5860802 () Bool)

(assert (=> b!4863156 m!5860802))

(assert (=> b!4862763 d!1560742))

(declare-fun d!1560744 () Bool)

(declare-fun c!827098 () Bool)

(assert (=> d!1560744 (= c!827098 ((_ is Node!14563) (right!40938 (c!826974 totalInput!332))))))

(declare-fun e!3040627 () Bool)

(assert (=> d!1560744 (= (inv!71807 (right!40938 (c!826974 totalInput!332))) e!3040627)))

(declare-fun b!4863157 () Bool)

(assert (=> b!4863157 (= e!3040627 (inv!71813 (right!40938 (c!826974 totalInput!332))))))

(declare-fun b!4863158 () Bool)

(declare-fun e!3040628 () Bool)

(assert (=> b!4863158 (= e!3040627 e!3040628)))

(declare-fun res!2076114 () Bool)

(assert (=> b!4863158 (= res!2076114 (not ((_ is Leaf!24287) (right!40938 (c!826974 totalInput!332)))))))

(assert (=> b!4863158 (=> res!2076114 e!3040628)))

(declare-fun b!4863159 () Bool)

(assert (=> b!4863159 (= e!3040628 (inv!71814 (right!40938 (c!826974 totalInput!332))))))

(assert (= (and d!1560744 c!827098) b!4863157))

(assert (= (and d!1560744 (not c!827098)) b!4863158))

(assert (= (and b!4863158 (not res!2076114)) b!4863159))

(declare-fun m!5860804 () Bool)

(assert (=> b!4863157 m!5860804))

(declare-fun m!5860806 () Bool)

(assert (=> b!4863159 m!5860806))

(assert (=> b!4862763 d!1560744))

(declare-fun b!4863160 () Bool)

(declare-fun res!2076116 () Bool)

(declare-fun e!3040630 () Bool)

(assert (=> b!4863160 (=> (not res!2076116) (not e!3040630))))

(assert (=> b!4863160 (= res!2076116 (<= (- (height!1918 (left!40608 (c!826974 input!661))) (height!1918 (right!40938 (c!826974 input!661)))) 1))))

(declare-fun b!4863161 () Bool)

(declare-fun res!2076117 () Bool)

(assert (=> b!4863161 (=> (not res!2076117) (not e!3040630))))

(assert (=> b!4863161 (= res!2076117 (isBalanced!3946 (right!40938 (c!826974 input!661))))))

(declare-fun d!1560746 () Bool)

(declare-fun res!2076118 () Bool)

(declare-fun e!3040629 () Bool)

(assert (=> d!1560746 (=> res!2076118 e!3040629)))

(assert (=> d!1560746 (= res!2076118 (not ((_ is Node!14563) (c!826974 input!661))))))

(assert (=> d!1560746 (= (isBalanced!3946 (c!826974 input!661)) e!3040629)))

(declare-fun b!4863162 () Bool)

(assert (=> b!4863162 (= e!3040630 (not (isEmpty!29897 (right!40938 (c!826974 input!661)))))))

(declare-fun b!4863163 () Bool)

(assert (=> b!4863163 (= e!3040629 e!3040630)))

(declare-fun res!2076115 () Bool)

(assert (=> b!4863163 (=> (not res!2076115) (not e!3040630))))

(assert (=> b!4863163 (= res!2076115 (<= (- 1) (- (height!1918 (left!40608 (c!826974 input!661))) (height!1918 (right!40938 (c!826974 input!661))))))))

(declare-fun b!4863164 () Bool)

(declare-fun res!2076120 () Bool)

(assert (=> b!4863164 (=> (not res!2076120) (not e!3040630))))

(assert (=> b!4863164 (= res!2076120 (not (isEmpty!29897 (left!40608 (c!826974 input!661)))))))

(declare-fun b!4863165 () Bool)

(declare-fun res!2076119 () Bool)

(assert (=> b!4863165 (=> (not res!2076119) (not e!3040630))))

(assert (=> b!4863165 (= res!2076119 (isBalanced!3946 (left!40608 (c!826974 input!661))))))

(assert (= (and d!1560746 (not res!2076118)) b!4863163))

(assert (= (and b!4863163 res!2076115) b!4863160))

(assert (= (and b!4863160 res!2076116) b!4863165))

(assert (= (and b!4863165 res!2076119) b!4863161))

(assert (= (and b!4863161 res!2076117) b!4863164))

(assert (= (and b!4863164 res!2076120) b!4863162))

(assert (=> b!4863163 m!5860794))

(assert (=> b!4863163 m!5860796))

(declare-fun m!5860808 () Bool)

(assert (=> b!4863164 m!5860808))

(assert (=> b!4863160 m!5860794))

(assert (=> b!4863160 m!5860796))

(declare-fun m!5860810 () Bool)

(assert (=> b!4863165 m!5860810))

(declare-fun m!5860812 () Bool)

(assert (=> b!4863162 m!5860812))

(declare-fun m!5860814 () Bool)

(assert (=> b!4863161 m!5860814))

(assert (=> d!1560574 d!1560746))

(declare-fun d!1560748 () Bool)

(declare-fun e!3040643 () Bool)

(assert (=> d!1560748 e!3040643))

(declare-fun res!2076143 () Bool)

(assert (=> d!1560748 (=> (not res!2076143) (not e!3040643))))

(declare-fun isBalanced!3948 (Conc!14564) Bool)

(declare-fun prepend!1390 (Conc!14564 Token!14640) Conc!14564)

(assert (=> d!1560748 (= res!2076143 (isBalanced!3948 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))))))

(declare-fun lt!1992958 () BalanceConc!28570)

(assert (=> d!1560748 (= lt!1992958 (BalanceConc!28571 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))))))

(assert (=> d!1560748 (= (prepend!1388 (_1!33173 lt!1992735) (_1!33172 (v!49672 lt!1992736))) lt!1992958)))

(declare-fun b!4863192 () Bool)

(assert (=> b!4863192 (= e!3040643 (= (list!17464 lt!1992958) (Cons!55915 (_1!33172 (v!49672 lt!1992736)) (list!17464 (_1!33173 lt!1992735)))))))

(assert (= (and d!1560748 res!2076143) b!4863192))

(declare-fun m!5860836 () Bool)

(assert (=> d!1560748 m!5860836))

(assert (=> d!1560748 m!5860836))

(declare-fun m!5860838 () Bool)

(assert (=> d!1560748 m!5860838))

(declare-fun m!5860840 () Bool)

(assert (=> b!4863192 m!5860840))

(declare-fun m!5860842 () Bool)

(assert (=> b!4863192 m!5860842))

(assert (=> b!4862630 d!1560748))

(declare-fun b!4863193 () Bool)

(declare-fun e!3040645 () Bool)

(declare-fun lt!1992961 () tuple2!59740)

(assert (=> b!4863193 (= e!3040645 (= (list!17460 (_2!33173 lt!1992961)) (list!17460 (_2!33172 (v!49672 lt!1992736)))))))

(declare-fun d!1560756 () Bool)

(declare-fun e!3040646 () Bool)

(assert (=> d!1560756 e!3040646))

(declare-fun res!2076145 () Bool)

(assert (=> d!1560756 (=> (not res!2076145) (not e!3040646))))

(assert (=> d!1560756 (= res!2076145 e!3040645)))

(declare-fun c!827102 () Bool)

(assert (=> d!1560756 (= c!827102 (> (size!36836 (_1!33173 lt!1992961)) 0))))

(declare-fun e!3040644 () tuple2!59740)

(assert (=> d!1560756 (= lt!1992961 e!3040644)))

(declare-fun c!827103 () Bool)

(declare-fun lt!1992960 () Option!13771)

(assert (=> d!1560756 (= c!827103 ((_ is Some!13770) lt!1992960))))

(assert (=> d!1560756 (= lt!1992960 (maxPrefixZipperSequence!1221 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992736))))))

(assert (=> d!1560756 (= (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992736))) lt!1992961)))

(declare-fun b!4863194 () Bool)

(assert (=> b!4863194 (= e!3040646 (= (list!17460 (_2!33173 lt!1992961)) (_2!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))))

(declare-fun b!4863195 () Bool)

(declare-fun e!3040647 () Bool)

(assert (=> b!4863195 (= e!3040645 e!3040647)))

(declare-fun res!2076144 () Bool)

(assert (=> b!4863195 (= res!2076144 (< (size!36837 (_2!33173 lt!1992961)) (size!36837 (_2!33172 (v!49672 lt!1992736)))))))

(assert (=> b!4863195 (=> (not res!2076144) (not e!3040647))))

(declare-fun b!4863196 () Bool)

(assert (=> b!4863196 (= e!3040644 (tuple2!59741 (BalanceConc!28571 Empty!14564) (_2!33172 (v!49672 lt!1992736))))))

(declare-fun b!4863197 () Bool)

(declare-fun lt!1992959 () tuple2!59740)

(assert (=> b!4863197 (= e!3040644 (tuple2!59741 (prepend!1388 (_1!33173 lt!1992959) (_1!33172 (v!49672 lt!1992960))) (_2!33173 lt!1992959)))))

(assert (=> b!4863197 (= lt!1992959 (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992960))))))

(declare-fun b!4863198 () Bool)

(assert (=> b!4863198 (= e!3040647 (not (isEmpty!29893 (_1!33173 lt!1992961))))))

(declare-fun b!4863199 () Bool)

(declare-fun res!2076146 () Bool)

(assert (=> b!4863199 (=> (not res!2076146) (not e!3040646))))

(assert (=> b!4863199 (= res!2076146 (= (list!17464 (_1!33173 lt!1992961)) (_1!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))))

(assert (= (and d!1560756 c!827103) b!4863197))

(assert (= (and d!1560756 (not c!827103)) b!4863196))

(assert (= (and d!1560756 c!827102) b!4863195))

(assert (= (and d!1560756 (not c!827102)) b!4863193))

(assert (= (and b!4863195 res!2076144) b!4863198))

(assert (= (and d!1560756 res!2076145) b!4863199))

(assert (= (and b!4863199 res!2076146) b!4863194))

(declare-fun m!5860844 () Bool)

(assert (=> b!4863195 m!5860844))

(declare-fun m!5860846 () Bool)

(assert (=> b!4863195 m!5860846))

(declare-fun m!5860848 () Bool)

(assert (=> d!1560756 m!5860848))

(declare-fun m!5860850 () Bool)

(assert (=> d!1560756 m!5860850))

(declare-fun m!5860852 () Bool)

(assert (=> b!4863194 m!5860852))

(declare-fun m!5860854 () Bool)

(assert (=> b!4863194 m!5860854))

(assert (=> b!4863194 m!5860854))

(declare-fun m!5860856 () Bool)

(assert (=> b!4863194 m!5860856))

(declare-fun m!5860858 () Bool)

(assert (=> b!4863197 m!5860858))

(declare-fun m!5860860 () Bool)

(assert (=> b!4863197 m!5860860))

(assert (=> b!4863193 m!5860852))

(assert (=> b!4863193 m!5860854))

(declare-fun m!5860862 () Bool)

(assert (=> b!4863198 m!5860862))

(declare-fun m!5860864 () Bool)

(assert (=> b!4863199 m!5860864))

(assert (=> b!4863199 m!5860854))

(assert (=> b!4863199 m!5860854))

(assert (=> b!4863199 m!5860856))

(assert (=> b!4862630 d!1560756))

(declare-fun d!1560758 () Bool)

(assert (=> d!1560758 true))

(declare-fun order!25177 () Int)

(declare-fun lambda!243332 () Int)

(declare-fun dynLambda!22426 (Int Int) Int)

(assert (=> d!1560758 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22426 order!25177 lambda!243332))))

(declare-fun Forall2!1249 (Int) Bool)

(assert (=> d!1560758 (= (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (Forall2!1249 lambda!243332))))

(declare-fun bs!1174045 () Bool)

(assert (= bs!1174045 d!1560758))

(declare-fun m!5860876 () Bool)

(assert (=> bs!1174045 m!5860876))

(assert (=> b!4862748 d!1560758))

(declare-fun b!4863210 () Bool)

(declare-fun e!3040656 () List!56037)

(assert (=> b!4863210 (= e!3040656 Nil!55913)))

(declare-fun b!4863211 () Bool)

(declare-fun e!3040657 () List!56037)

(assert (=> b!4863211 (= e!3040656 e!3040657)))

(declare-fun c!827105 () Bool)

(assert (=> b!4863211 (= c!827105 ((_ is Leaf!24287) (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4863213 () Bool)

(assert (=> b!4863213 (= e!3040657 (++!12171 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun d!1560766 () Bool)

(declare-fun c!827104 () Bool)

(assert (=> d!1560766 (= c!827104 ((_ is Empty!14563) (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1560766 (= (list!17462 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) e!3040656)))

(declare-fun b!4863212 () Bool)

(assert (=> b!4863212 (= e!3040657 (list!17466 (xs!17869 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1560766 c!827104) b!4863210))

(assert (= (and d!1560766 (not c!827104)) b!4863211))

(assert (= (and b!4863211 c!827105) b!4863212))

(assert (= (and b!4863211 (not c!827105)) b!4863213))

(declare-fun m!5860878 () Bool)

(assert (=> b!4863213 m!5860878))

(declare-fun m!5860880 () Bool)

(assert (=> b!4863213 m!5860880))

(assert (=> b!4863213 m!5860878))

(assert (=> b!4863213 m!5860880))

(declare-fun m!5860882 () Bool)

(assert (=> b!4863213 m!5860882))

(declare-fun m!5860884 () Bool)

(assert (=> b!4863212 m!5860884))

(assert (=> d!1560568 d!1560766))

(declare-fun d!1560768 () Bool)

(declare-fun lt!1992967 () Bool)

(assert (=> d!1560768 (= lt!1992967 (isEmpty!29903 (list!17464 (_1!33173 lt!1992737))))))

(declare-fun isEmpty!29904 (Conc!14564) Bool)

(assert (=> d!1560768 (= lt!1992967 (isEmpty!29904 (c!826976 (_1!33173 lt!1992737))))))

(assert (=> d!1560768 (= (isEmpty!29893 (_1!33173 lt!1992737)) lt!1992967)))

(declare-fun bs!1174046 () Bool)

(assert (= bs!1174046 d!1560768))

(assert (=> bs!1174046 m!5860232))

(assert (=> bs!1174046 m!5860232))

(declare-fun m!5860886 () Bool)

(assert (=> bs!1174046 m!5860886))

(declare-fun m!5860888 () Bool)

(assert (=> bs!1174046 m!5860888))

(assert (=> b!4862631 d!1560768))

(declare-fun d!1560770 () Bool)

(assert (=> d!1560770 (= (inv!71815 (xs!17869 (c!826974 totalInput!332))) (<= (size!36838 (innerList!14651 (xs!17869 (c!826974 totalInput!332)))) 2147483647))))

(declare-fun bs!1174047 () Bool)

(assert (= bs!1174047 d!1560770))

(declare-fun m!5860890 () Bool)

(assert (=> bs!1174047 m!5860890))

(assert (=> b!4862764 d!1560770))

(assert (=> b!4862751 d!1560700))

(assert (=> b!4862751 d!1560702))

(assert (=> b!4862627 d!1560610))

(assert (=> b!4862627 d!1560722))

(assert (=> b!4862627 d!1560530))

(declare-fun b!4863214 () Bool)

(declare-fun e!3040661 () Option!13771)

(declare-fun call!337820 () Option!13771)

(assert (=> b!4863214 (= e!3040661 call!337820)))

(declare-fun b!4863215 () Bool)

(declare-fun res!2076160 () Bool)

(declare-fun e!3040662 () Bool)

(assert (=> b!4863215 (=> (not res!2076160) (not e!3040662))))

(declare-fun e!3040659 () Bool)

(assert (=> b!4863215 (= res!2076160 e!3040659)))

(declare-fun res!2076156 () Bool)

(assert (=> b!4863215 (=> res!2076156 e!3040659)))

(declare-fun lt!1992971 () Option!13771)

(assert (=> b!4863215 (= res!2076156 (not (isDefined!10840 lt!1992971)))))

(declare-fun b!4863216 () Bool)

(declare-fun e!3040660 () Bool)

(declare-fun e!3040658 () Bool)

(assert (=> b!4863216 (= e!3040660 e!3040658)))

(declare-fun res!2076155 () Bool)

(assert (=> b!4863216 (=> (not res!2076155) (not e!3040658))))

(assert (=> b!4863216 (= res!2076155 (= (_1!33172 (get!19216 lt!1992971)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))))

(declare-fun b!4863217 () Bool)

(assert (=> b!4863217 (= e!3040658 (= (list!17460 (_2!33172 (get!19216 lt!1992971))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))))

(declare-fun b!4863218 () Bool)

(assert (=> b!4863218 (= e!3040662 e!3040660)))

(declare-fun res!2076159 () Bool)

(assert (=> b!4863218 (=> res!2076159 e!3040660)))

(assert (=> b!4863218 (= res!2076159 (not (isDefined!10840 lt!1992971)))))

(declare-fun e!3040663 () Bool)

(declare-fun b!4863219 () Bool)

(assert (=> b!4863219 (= e!3040663 (= (list!17460 (_2!33172 (get!19216 lt!1992971))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))))

(declare-fun d!1560772 () Bool)

(assert (=> d!1560772 e!3040662))

(declare-fun res!2076158 () Bool)

(assert (=> d!1560772 (=> (not res!2076158) (not e!3040662))))

(assert (=> d!1560772 (= res!2076158 (= (isDefined!10840 lt!1992971) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)))))))

(assert (=> d!1560772 (= lt!1992971 e!3040661)))

(declare-fun c!827106 () Bool)

(assert (=> d!1560772 (= c!827106 (and ((_ is Cons!55914) (t!363662 rules!1248)) ((_ is Nil!55914) (t!363662 (t!363662 rules!1248)))))))

(declare-fun lt!1992970 () Unit!145922)

(declare-fun lt!1992969 () Unit!145922)

(assert (=> d!1560772 (= lt!1992970 lt!1992969)))

(declare-fun lt!1992974 () List!56037)

(declare-fun lt!1992973 () List!56037)

(assert (=> d!1560772 (isPrefix!4762 lt!1992974 lt!1992973)))

(assert (=> d!1560772 (= lt!1992969 (lemmaIsPrefixRefl!3159 lt!1992974 lt!1992973))))

(assert (=> d!1560772 (= lt!1992973 (list!17460 input!661))))

(assert (=> d!1560772 (= lt!1992974 (list!17460 input!661))))

(assert (=> d!1560772 (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248))))

(assert (=> d!1560772 (= (maxPrefixZipperSequenceV2!625 thiss!11777 (t!363662 rules!1248) input!661 totalInput!332) lt!1992971)))

(declare-fun b!4863220 () Bool)

(declare-fun lt!1992972 () Option!13771)

(declare-fun lt!1992968 () Option!13771)

(assert (=> b!4863220 (= e!3040661 (ite (and ((_ is None!13770) lt!1992972) ((_ is None!13770) lt!1992968)) None!13770 (ite ((_ is None!13770) lt!1992968) lt!1992972 (ite ((_ is None!13770) lt!1992972) lt!1992968 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1992972))) (size!36832 (_1!33172 (v!49672 lt!1992968)))) lt!1992972 lt!1992968)))))))

(assert (=> b!4863220 (= lt!1992972 call!337820)))

(assert (=> b!4863220 (= lt!1992968 (maxPrefixZipperSequenceV2!625 thiss!11777 (t!363662 (t!363662 rules!1248)) input!661 totalInput!332))))

(declare-fun bm!337815 () Bool)

(assert (=> bm!337815 (= call!337820 (maxPrefixOneRuleZipperSequenceV2!254 thiss!11777 (h!62362 (t!363662 rules!1248)) input!661 totalInput!332))))

(declare-fun b!4863221 () Bool)

(assert (=> b!4863221 (= e!3040659 e!3040663)))

(declare-fun res!2076157 () Bool)

(assert (=> b!4863221 (=> (not res!2076157) (not e!3040663))))

(assert (=> b!4863221 (= res!2076157 (= (_1!33172 (get!19216 lt!1992971)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))))

(assert (= (and d!1560772 c!827106) b!4863214))

(assert (= (and d!1560772 (not c!827106)) b!4863220))

(assert (= (or b!4863214 b!4863220) bm!337815))

(assert (= (and d!1560772 res!2076158) b!4863215))

(assert (= (and b!4863215 (not res!2076156)) b!4863221))

(assert (= (and b!4863221 res!2076157) b!4863219))

(assert (= (and b!4863215 res!2076160) b!4863218))

(assert (= (and b!4863218 (not res!2076159)) b!4863216))

(assert (= (and b!4863216 res!2076155) b!4863217))

(assert (=> b!4863219 m!5860130))

(assert (=> b!4863219 m!5860418))

(assert (=> b!4863219 m!5860130))

(declare-fun m!5860892 () Bool)

(assert (=> b!4863219 m!5860892))

(declare-fun m!5860894 () Bool)

(assert (=> b!4863219 m!5860894))

(assert (=> b!4863219 m!5860418))

(declare-fun m!5860896 () Bool)

(assert (=> b!4863219 m!5860896))

(declare-fun m!5860898 () Bool)

(assert (=> b!4863220 m!5860898))

(assert (=> b!4863216 m!5860892))

(assert (=> b!4863216 m!5860130))

(assert (=> b!4863216 m!5860130))

(assert (=> b!4863216 m!5860396))

(assert (=> b!4863216 m!5860396))

(declare-fun m!5860900 () Bool)

(assert (=> b!4863216 m!5860900))

(assert (=> b!4863217 m!5860894))

(assert (=> b!4863217 m!5860396))

(assert (=> b!4863217 m!5860900))

(assert (=> b!4863217 m!5860130))

(assert (=> b!4863217 m!5860130))

(assert (=> b!4863217 m!5860396))

(assert (=> b!4863217 m!5860892))

(declare-fun m!5860902 () Bool)

(assert (=> bm!337815 m!5860902))

(declare-fun m!5860904 () Bool)

(assert (=> b!4863215 m!5860904))

(assert (=> b!4863221 m!5860892))

(assert (=> b!4863221 m!5860130))

(assert (=> b!4863221 m!5860130))

(assert (=> b!4863221 m!5860418))

(assert (=> b!4863221 m!5860418))

(assert (=> b!4863221 m!5860896))

(assert (=> b!4863218 m!5860904))

(assert (=> d!1560772 m!5860498))

(declare-fun m!5860906 () Bool)

(assert (=> d!1560772 m!5860906))

(assert (=> d!1560772 m!5860418))

(declare-fun m!5860908 () Bool)

(assert (=> d!1560772 m!5860908))

(assert (=> d!1560772 m!5860130))

(assert (=> d!1560772 m!5860418))

(assert (=> d!1560772 m!5860130))

(assert (=> d!1560772 m!5860904))

(declare-fun m!5860910 () Bool)

(assert (=> d!1560772 m!5860910))

(assert (=> b!4862741 d!1560772))

(declare-fun d!1560774 () Bool)

(declare-fun lt!1992975 () Int)

(assert (=> d!1560774 (>= lt!1992975 0)))

(declare-fun e!3040664 () Int)

(assert (=> d!1560774 (= lt!1992975 e!3040664)))

(declare-fun c!827107 () Bool)

(assert (=> d!1560774 (= c!827107 ((_ is Nil!55913) lt!1992743))))

(assert (=> d!1560774 (= (size!36838 lt!1992743) lt!1992975)))

(declare-fun b!4863222 () Bool)

(assert (=> b!4863222 (= e!3040664 0)))

(declare-fun b!4863223 () Bool)

(assert (=> b!4863223 (= e!3040664 (+ 1 (size!36838 (t!363661 lt!1992743))))))

(assert (= (and d!1560774 c!827107) b!4863222))

(assert (= (and d!1560774 (not c!827107)) b!4863223))

(declare-fun m!5860912 () Bool)

(assert (=> b!4863223 m!5860912))

(assert (=> b!4862648 d!1560774))

(declare-fun d!1560776 () Bool)

(declare-fun lt!1992976 () Int)

(assert (=> d!1560776 (>= lt!1992976 0)))

(declare-fun e!3040665 () Int)

(assert (=> d!1560776 (= lt!1992976 e!3040665)))

(declare-fun c!827108 () Bool)

(assert (=> d!1560776 (= c!827108 ((_ is Nil!55913) (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1560776 (= (size!36838 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))) lt!1992976)))

(declare-fun b!4863224 () Bool)

(assert (=> b!4863224 (= e!3040665 0)))

(declare-fun b!4863225 () Bool)

(assert (=> b!4863225 (= e!3040665 (+ 1 (size!36838 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1560776 c!827108) b!4863224))

(assert (= (and d!1560776 (not c!827108)) b!4863225))

(assert (=> b!4863225 m!5860412))

(assert (=> b!4862648 d!1560776))

(declare-fun d!1560778 () Bool)

(declare-fun lt!1992977 () Int)

(assert (=> d!1560778 (>= lt!1992977 0)))

(declare-fun e!3040666 () Int)

(assert (=> d!1560778 (= lt!1992977 e!3040666)))

(declare-fun c!827109 () Bool)

(assert (=> d!1560778 (= c!827109 ((_ is Nil!55913) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560778 (= (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1992977)))

(declare-fun b!4863226 () Bool)

(assert (=> b!4863226 (= e!3040666 0)))

(declare-fun b!4863227 () Bool)

(assert (=> b!4863227 (= e!3040666 (+ 1 (size!36838 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1560778 c!827109) b!4863226))

(assert (= (and d!1560778 (not c!827109)) b!4863227))

(declare-fun m!5860914 () Bool)

(assert (=> b!4863227 m!5860914))

(assert (=> b!4862648 d!1560778))

(declare-fun d!1560780 () Bool)

(declare-fun res!2076165 () Bool)

(declare-fun e!3040671 () Bool)

(assert (=> d!1560780 (=> res!2076165 e!3040671)))

(assert (=> d!1560780 (= res!2076165 ((_ is Nil!55914) rules!1248))))

(assert (=> d!1560780 (= (noDuplicateTag!3277 thiss!11777 rules!1248 Nil!55917) e!3040671)))

(declare-fun b!4863232 () Bool)

(declare-fun e!3040672 () Bool)

(assert (=> b!4863232 (= e!3040671 e!3040672)))

(declare-fun res!2076166 () Bool)

(assert (=> b!4863232 (=> (not res!2076166) (not e!3040672))))

(declare-fun contains!19385 (List!56041 String!63098) Bool)

(assert (=> b!4863232 (= res!2076166 (not (contains!19385 Nil!55917 (tag!8890 (h!62362 rules!1248)))))))

(declare-fun b!4863233 () Bool)

(assert (=> b!4863233 (= e!3040672 (noDuplicateTag!3277 thiss!11777 (t!363662 rules!1248) (Cons!55917 (tag!8890 (h!62362 rules!1248)) Nil!55917)))))

(assert (= (and d!1560780 (not res!2076165)) b!4863232))

(assert (= (and b!4863232 res!2076166) b!4863233))

(declare-fun m!5860916 () Bool)

(assert (=> b!4863232 m!5860916))

(declare-fun m!5860918 () Bool)

(assert (=> b!4863233 m!5860918))

(assert (=> b!4862745 d!1560780))

(declare-fun bs!1174054 () Bool)

(declare-fun b!4863324 () Bool)

(assert (= bs!1174054 (and b!4863324 d!1560692)))

(declare-fun lambda!243343 () Int)

(assert (=> bs!1174054 (= lambda!243343 lambda!243326)))

(declare-fun b!4863343 () Bool)

(declare-fun e!3040745 () Bool)

(assert (=> b!4863343 (= e!3040745 true)))

(declare-fun b!4863342 () Bool)

(declare-fun e!3040744 () Bool)

(assert (=> b!4863342 (= e!3040744 e!3040745)))

(assert (=> b!4863324 e!3040744))

(assert (= b!4863342 b!4863343))

(assert (= b!4863324 b!4863342))

(assert (=> b!4863343 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243343))))

(assert (=> b!4863343 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243343))))

(declare-fun b!4863323 () Bool)

(declare-fun e!3040734 () Bool)

(declare-fun lt!1993041 () List!56037)

(declare-datatypes ((tuple2!59754 0))(
  ( (tuple2!59755 (_1!33180 List!56037) (_2!33180 List!56037)) )
))
(declare-fun findLongestMatchInner!1717 (Regex!13101 List!56037 Int List!56037 List!56037 Int) tuple2!59754)

(assert (=> b!4863323 (= e!3040734 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(declare-fun e!3040735 () Option!13771)

(declare-datatypes ((tuple2!59756 0))(
  ( (tuple2!59757 (_1!33181 BalanceConc!28568) (_2!33181 BalanceConc!28568)) )
))
(declare-fun lt!1993034 () tuple2!59756)

(assert (=> b!4863324 (= e!3040735 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993034)) (h!62362 rules!1248) (size!36837 (_1!33181 lt!1993034)) (list!17460 (_1!33181 lt!1993034))) (_2!33181 lt!1993034))))))

(assert (=> b!4863324 (= lt!1993041 (list!17460 input!661))))

(declare-fun lt!1993037 () Unit!145922)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1680 (Regex!13101 List!56037) Unit!145922)

(assert (=> b!4863324 (= lt!1993037 (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 rules!1248)) lt!1993041))))

(declare-fun res!2076227 () Bool)

(declare-fun isEmpty!29906 (List!56037) Bool)

(assert (=> b!4863324 (= res!2076227 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(assert (=> b!4863324 (=> res!2076227 e!3040734)))

(assert (=> b!4863324 e!3040734))

(declare-fun lt!1993038 () Unit!145922)

(assert (=> b!4863324 (= lt!1993038 lt!1993037)))

(declare-fun lt!1993032 () Unit!145922)

(declare-fun lemmaInv!1200 (TokenValueInjection!15980) Unit!145922)

(assert (=> b!4863324 (= lt!1993032 (lemmaInv!1200 (transformation!8026 (h!62362 rules!1248))))))

(declare-fun lt!1993040 () Unit!145922)

(declare-fun ForallOf!1097 (Int BalanceConc!28568) Unit!145922)

(assert (=> b!4863324 (= lt!1993040 (ForallOf!1097 lambda!243343 (_1!33181 lt!1993034)))))

(declare-fun lt!1993035 () Unit!145922)

(assert (=> b!4863324 (= lt!1993035 (ForallOf!1097 lambda!243343 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(declare-fun lt!1993039 () Option!13771)

(assert (=> b!4863324 (= lt!1993039 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993034)) (h!62362 rules!1248) (size!36837 (_1!33181 lt!1993034)) (list!17460 (_1!33181 lt!1993034))) (_2!33181 lt!1993034))))))

(declare-fun lt!1993033 () Unit!145922)

(declare-fun lemmaEqSameImage!1054 (TokenValueInjection!15980 BalanceConc!28568 BalanceConc!28568) Unit!145922)

(assert (=> b!4863324 (= lt!1993033 (lemmaEqSameImage!1054 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993034) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(declare-fun b!4863325 () Bool)

(assert (=> b!4863325 (= e!3040735 None!13770)))

(declare-fun b!4863326 () Bool)

(declare-fun e!3040732 () Bool)

(declare-fun e!3040731 () Bool)

(assert (=> b!4863326 (= e!3040732 e!3040731)))

(declare-fun res!2076228 () Bool)

(assert (=> b!4863326 (=> res!2076228 e!3040731)))

(declare-fun lt!1993036 () Option!13771)

(assert (=> b!4863326 (= res!2076228 (not (isDefined!10840 lt!1993036)))))

(declare-fun d!1560782 () Bool)

(assert (=> d!1560782 e!3040732))

(declare-fun res!2076229 () Bool)

(assert (=> d!1560782 (=> (not res!2076229) (not e!3040732))))

(assert (=> d!1560782 (= res!2076229 (= (isDefined!10840 lt!1993036) (isDefined!10841 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)))))))

(assert (=> d!1560782 (= lt!1993036 e!3040735)))

(declare-fun c!827123 () Bool)

(declare-fun isEmpty!29907 (BalanceConc!28568) Bool)

(assert (=> d!1560782 (= c!827123 (isEmpty!29907 (_1!33181 lt!1993034)))))

(declare-fun findLongestMatchWithZipperSequenceV2!130 (Regex!13101 BalanceConc!28568 BalanceConc!28568) tuple2!59756)

(assert (=> d!1560782 (= lt!1993034 (findLongestMatchWithZipperSequenceV2!130 (regex!8026 (h!62362 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1560782 (ruleValid!3625 thiss!11777 (h!62362 rules!1248))))

(assert (=> d!1560782 (= (maxPrefixOneRuleZipperSequenceV2!254 thiss!11777 (h!62362 rules!1248) input!661 totalInput!332) lt!1993036)))

(declare-fun b!4863327 () Bool)

(declare-fun e!3040733 () Bool)

(assert (=> b!4863327 (= e!3040733 (= (list!17460 (_2!33172 (get!19216 lt!1993036))) (_2!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661))))))))

(declare-fun b!4863328 () Bool)

(assert (=> b!4863328 (= e!3040731 e!3040733)))

(declare-fun res!2076226 () Bool)

(assert (=> b!4863328 (=> (not res!2076226) (not e!3040733))))

(assert (=> b!4863328 (= res!2076226 (= (_1!33172 (get!19216 lt!1993036)) (_1!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661))))))))

(assert (= (and d!1560782 c!827123) b!4863325))

(assert (= (and d!1560782 (not c!827123)) b!4863324))

(assert (= (and b!4863324 (not res!2076227)) b!4863323))

(assert (= (and d!1560782 res!2076229) b!4863326))

(assert (= (and b!4863326 (not res!2076228)) b!4863328))

(assert (= (and b!4863328 res!2076226) b!4863327))

(declare-fun m!5861020 () Bool)

(assert (=> b!4863328 m!5861020))

(assert (=> b!4863328 m!5860130))

(assert (=> b!4863328 m!5860130))

(assert (=> b!4863328 m!5860398))

(assert (=> b!4863328 m!5860398))

(declare-fun m!5861022 () Bool)

(assert (=> b!4863328 m!5861022))

(assert (=> b!4863327 m!5860398))

(assert (=> b!4863327 m!5861022))

(assert (=> b!4863327 m!5860130))

(assert (=> b!4863327 m!5861020))

(assert (=> b!4863327 m!5860130))

(assert (=> b!4863327 m!5860398))

(declare-fun m!5861024 () Bool)

(assert (=> b!4863327 m!5861024))

(declare-fun m!5861026 () Bool)

(assert (=> b!4863323 m!5861026))

(declare-fun m!5861028 () Bool)

(assert (=> b!4863323 m!5861028))

(assert (=> b!4863323 m!5861026))

(assert (=> b!4863323 m!5861028))

(declare-fun m!5861030 () Bool)

(assert (=> b!4863323 m!5861030))

(declare-fun m!5861032 () Bool)

(assert (=> b!4863323 m!5861032))

(declare-fun m!5861034 () Bool)

(assert (=> d!1560782 m!5861034))

(assert (=> d!1560782 m!5860398))

(declare-fun m!5861036 () Bool)

(assert (=> d!1560782 m!5861036))

(assert (=> d!1560782 m!5860496))

(assert (=> d!1560782 m!5860130))

(declare-fun m!5861038 () Bool)

(assert (=> d!1560782 m!5861038))

(declare-fun m!5861040 () Bool)

(assert (=> d!1560782 m!5861040))

(assert (=> d!1560782 m!5860130))

(assert (=> d!1560782 m!5860398))

(assert (=> b!4863326 m!5861034))

(declare-fun m!5861042 () Bool)

(assert (=> b!4863324 m!5861042))

(declare-fun m!5861044 () Bool)

(assert (=> b!4863324 m!5861044))

(assert (=> b!4863324 m!5861044))

(declare-fun m!5861046 () Bool)

(assert (=> b!4863324 m!5861046))

(assert (=> b!4863324 m!5861026))

(assert (=> b!4863324 m!5860130))

(declare-fun m!5861048 () Bool)

(assert (=> b!4863324 m!5861048))

(declare-fun m!5861050 () Bool)

(assert (=> b!4863324 m!5861050))

(declare-fun m!5861052 () Bool)

(assert (=> b!4863324 m!5861052))

(declare-fun m!5861054 () Bool)

(assert (=> b!4863324 m!5861054))

(assert (=> b!4863324 m!5861028))

(declare-fun m!5861056 () Bool)

(assert (=> b!4863324 m!5861056))

(assert (=> b!4863324 m!5861042))

(assert (=> b!4863324 m!5861026))

(assert (=> b!4863324 m!5861028))

(assert (=> b!4863324 m!5861030))

(assert (=> b!4863324 m!5861044))

(declare-fun m!5861058 () Bool)

(assert (=> b!4863324 m!5861058))

(declare-fun m!5861060 () Bool)

(assert (=> b!4863324 m!5861060))

(assert (=> bm!337795 d!1560782))

(assert (=> b!4862742 d!1560600))

(assert (=> b!4862742 d!1560616))

(assert (=> b!4862742 d!1560614))

(assert (=> b!4862742 d!1560592))

(declare-fun d!1560822 () Bool)

(declare-fun lt!1993047 () Int)

(assert (=> d!1560822 (= lt!1993047 (size!36838 (list!17460 (_2!33173 lt!1992737))))))

(assert (=> d!1560822 (= lt!1993047 (size!36842 (c!826974 (_2!33173 lt!1992737))))))

(assert (=> d!1560822 (= (size!36837 (_2!33173 lt!1992737)) lt!1993047)))

(declare-fun bs!1174055 () Bool)

(assert (= bs!1174055 d!1560822))

(assert (=> bs!1174055 m!5860222))

(assert (=> bs!1174055 m!5860222))

(declare-fun m!5861062 () Bool)

(assert (=> bs!1174055 m!5861062))

(declare-fun m!5861064 () Bool)

(assert (=> bs!1174055 m!5861064))

(assert (=> b!4862628 d!1560822))

(declare-fun d!1560824 () Bool)

(declare-fun lt!1993048 () Int)

(assert (=> d!1560824 (= lt!1993048 (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560824 (= lt!1993048 (size!36842 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560824 (= (size!36837 (_2!33172 (v!49672 lt!1992698))) lt!1993048)))

(declare-fun bs!1174056 () Bool)

(assert (= bs!1174056 d!1560824))

(assert (=> bs!1174056 m!5860108))

(assert (=> bs!1174056 m!5860108))

(assert (=> bs!1174056 m!5860254))

(declare-fun m!5861072 () Bool)

(assert (=> bs!1174056 m!5861072))

(assert (=> b!4862628 d!1560824))

(declare-fun tp!1368388 () Bool)

(declare-fun b!4863371 () Bool)

(declare-fun tp!1368389 () Bool)

(declare-fun e!3040762 () Bool)

(assert (=> b!4863371 (= e!3040762 (and (inv!71807 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) tp!1368389 (inv!71807 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) tp!1368388))))

(declare-fun b!4863373 () Bool)

(declare-fun e!3040761 () Bool)

(declare-fun tp!1368390 () Bool)

(assert (=> b!4863373 (= e!3040761 tp!1368390)))

(declare-fun b!4863372 () Bool)

(assert (=> b!4863372 (= e!3040762 (and (inv!71815 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) e!3040761))))

(assert (=> b!4862637 (= tp!1368309 (and (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) e!3040762))))

(assert (= (and b!4862637 ((_ is Node!14563) (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) b!4863371))

(assert (= b!4863372 b!4863373))

(assert (= (and b!4862637 ((_ is Leaf!24287) (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) b!4863372))

(declare-fun m!5861080 () Bool)

(assert (=> b!4863371 m!5861080))

(declare-fun m!5861082 () Bool)

(assert (=> b!4863371 m!5861082))

(declare-fun m!5861084 () Bool)

(assert (=> b!4863372 m!5861084))

(assert (=> b!4862637 m!5860234))

(declare-fun b!4863379 () Bool)

(declare-fun tp!1368391 () Bool)

(declare-fun tp!1368392 () Bool)

(declare-fun e!3040767 () Bool)

(assert (=> b!4863379 (= e!3040767 (and (inv!71807 (left!40608 (left!40608 (c!826974 totalInput!332)))) tp!1368392 (inv!71807 (right!40938 (left!40608 (c!826974 totalInput!332)))) tp!1368391))))

(declare-fun b!4863381 () Bool)

(declare-fun e!3040766 () Bool)

(declare-fun tp!1368393 () Bool)

(assert (=> b!4863381 (= e!3040766 tp!1368393)))

(declare-fun b!4863380 () Bool)

(assert (=> b!4863380 (= e!3040767 (and (inv!71815 (xs!17869 (left!40608 (c!826974 totalInput!332)))) e!3040766))))

(assert (=> b!4862763 (= tp!1368356 (and (inv!71807 (left!40608 (c!826974 totalInput!332))) e!3040767))))

(assert (= (and b!4862763 ((_ is Node!14563) (left!40608 (c!826974 totalInput!332)))) b!4863379))

(assert (= b!4863380 b!4863381))

(assert (= (and b!4862763 ((_ is Leaf!24287) (left!40608 (c!826974 totalInput!332)))) b!4863380))

(declare-fun m!5861086 () Bool)

(assert (=> b!4863379 m!5861086))

(declare-fun m!5861088 () Bool)

(assert (=> b!4863379 m!5861088))

(declare-fun m!5861090 () Bool)

(assert (=> b!4863380 m!5861090))

(assert (=> b!4862763 m!5860352))

(declare-fun tp!1368396 () Bool)

(declare-fun tp!1368397 () Bool)

(declare-fun b!4863382 () Bool)

(declare-fun e!3040769 () Bool)

(assert (=> b!4863382 (= e!3040769 (and (inv!71807 (left!40608 (right!40938 (c!826974 totalInput!332)))) tp!1368397 (inv!71807 (right!40938 (right!40938 (c!826974 totalInput!332)))) tp!1368396))))

(declare-fun b!4863384 () Bool)

(declare-fun e!3040768 () Bool)

(declare-fun tp!1368398 () Bool)

(assert (=> b!4863384 (= e!3040768 tp!1368398)))

(declare-fun b!4863383 () Bool)

(assert (=> b!4863383 (= e!3040769 (and (inv!71815 (xs!17869 (right!40938 (c!826974 totalInput!332)))) e!3040768))))

(assert (=> b!4862763 (= tp!1368355 (and (inv!71807 (right!40938 (c!826974 totalInput!332))) e!3040769))))

(assert (= (and b!4862763 ((_ is Node!14563) (right!40938 (c!826974 totalInput!332)))) b!4863382))

(assert (= b!4863383 b!4863384))

(assert (= (and b!4862763 ((_ is Leaf!24287) (right!40938 (c!826974 totalInput!332)))) b!4863383))

(declare-fun m!5861092 () Bool)

(assert (=> b!4863382 m!5861092))

(declare-fun m!5861094 () Bool)

(assert (=> b!4863382 m!5861094))

(declare-fun m!5861096 () Bool)

(assert (=> b!4863383 m!5861096))

(assert (=> b!4862763 m!5860354))

(declare-fun b!4863397 () Bool)

(declare-fun e!3040776 () Bool)

(declare-fun tp!1368410 () Bool)

(assert (=> b!4863397 (= e!3040776 (and tp_is_empty!35651 tp!1368410))))

(assert (=> b!4862782 (= tp!1368375 e!3040776)))

(assert (= (and b!4862782 ((_ is Cons!55913) (innerList!14651 (xs!17869 (c!826974 input!661))))) b!4863397))

(declare-fun b!4863398 () Bool)

(declare-fun e!3040777 () Bool)

(assert (=> b!4863398 (= e!3040777 tp_is_empty!35651)))

(declare-fun b!4863401 () Bool)

(declare-fun tp!1368415 () Bool)

(declare-fun tp!1368413 () Bool)

(assert (=> b!4863401 (= e!3040777 (and tp!1368415 tp!1368413))))

(declare-fun b!4863400 () Bool)

(declare-fun tp!1368414 () Bool)

(assert (=> b!4863400 (= e!3040777 tp!1368414)))

(declare-fun b!4863399 () Bool)

(declare-fun tp!1368411 () Bool)

(declare-fun tp!1368412 () Bool)

(assert (=> b!4863399 (= e!3040777 (and tp!1368411 tp!1368412))))

(assert (=> b!4862777 (= tp!1368368 e!3040777)))

(assert (= (and b!4862777 ((_ is ElementMatch!13101) (regOne!26714 (regex!8026 (h!62362 rules!1248))))) b!4863398))

(assert (= (and b!4862777 ((_ is Concat!21438) (regOne!26714 (regex!8026 (h!62362 rules!1248))))) b!4863399))

(assert (= (and b!4862777 ((_ is Star!13101) (regOne!26714 (regex!8026 (h!62362 rules!1248))))) b!4863400))

(assert (= (and b!4862777 ((_ is Union!13101) (regOne!26714 (regex!8026 (h!62362 rules!1248))))) b!4863401))

(declare-fun b!4863406 () Bool)

(declare-fun e!3040779 () Bool)

(assert (=> b!4863406 (= e!3040779 tp_is_empty!35651)))

(declare-fun b!4863409 () Bool)

(declare-fun tp!1368425 () Bool)

(declare-fun tp!1368423 () Bool)

(assert (=> b!4863409 (= e!3040779 (and tp!1368425 tp!1368423))))

(declare-fun b!4863408 () Bool)

(declare-fun tp!1368424 () Bool)

(assert (=> b!4863408 (= e!3040779 tp!1368424)))

(declare-fun b!4863407 () Bool)

(declare-fun tp!1368421 () Bool)

(declare-fun tp!1368422 () Bool)

(assert (=> b!4863407 (= e!3040779 (and tp!1368421 tp!1368422))))

(assert (=> b!4862777 (= tp!1368369 e!3040779)))

(assert (= (and b!4862777 ((_ is ElementMatch!13101) (regTwo!26714 (regex!8026 (h!62362 rules!1248))))) b!4863406))

(assert (= (and b!4862777 ((_ is Concat!21438) (regTwo!26714 (regex!8026 (h!62362 rules!1248))))) b!4863407))

(assert (= (and b!4862777 ((_ is Star!13101) (regTwo!26714 (regex!8026 (h!62362 rules!1248))))) b!4863408))

(assert (= (and b!4862777 ((_ is Union!13101) (regTwo!26714 (regex!8026 (h!62362 rules!1248))))) b!4863409))

(declare-fun b!4863416 () Bool)

(declare-fun b_free!130583 () Bool)

(declare-fun b_next!131373 () Bool)

(assert (=> b!4863416 (= b_free!130583 (not b_next!131373))))

(declare-fun tp!1368434 () Bool)

(declare-fun b_and!342439 () Bool)

(assert (=> b!4863416 (= tp!1368434 b_and!342439)))

(declare-fun b_free!130585 () Bool)

(declare-fun b_next!131375 () Bool)

(assert (=> b!4863416 (= b_free!130585 (not b_next!131375))))

(declare-fun t!363679 () Bool)

(declare-fun tb!257587 () Bool)

(assert (=> (and b!4863416 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698)))))) t!363679) tb!257587))

(declare-fun result!320678 () Bool)

(assert (= result!320678 result!320654))

(assert (=> d!1560566 t!363679))

(declare-fun b_and!342441 () Bool)

(declare-fun tp!1368431 () Bool)

(assert (=> b!4863416 (= tp!1368431 (and (=> t!363679 result!320678) b_and!342441))))

(declare-fun e!3040784 () Bool)

(assert (=> b!4863416 (= e!3040784 (and tp!1368434 tp!1368431))))

(declare-fun b!4863415 () Bool)

(declare-fun e!3040783 () Bool)

(declare-fun tp!1368432 () Bool)

(assert (=> b!4863415 (= e!3040783 (and tp!1368432 (inv!71803 (tag!8890 (h!62362 (t!363662 (t!363662 rules!1248))))) (inv!71808 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) e!3040784))))

(declare-fun b!4863414 () Bool)

(declare-fun e!3040781 () Bool)

(declare-fun tp!1368433 () Bool)

(assert (=> b!4863414 (= e!3040781 (and e!3040783 tp!1368433))))

(assert (=> b!4862791 (= tp!1368386 e!3040781)))

(assert (= b!4863415 b!4863416))

(assert (= b!4863414 b!4863415))

(assert (= (and b!4862791 ((_ is Cons!55914) (t!363662 (t!363662 rules!1248)))) b!4863414))

(declare-fun m!5861104 () Bool)

(assert (=> b!4863415 m!5861104))

(declare-fun m!5861106 () Bool)

(assert (=> b!4863415 m!5861106))

(declare-fun b!4863421 () Bool)

(declare-fun e!3040790 () Bool)

(declare-fun tp!1368440 () Bool)

(assert (=> b!4863421 (= e!3040790 (and tp_is_empty!35651 tp!1368440))))

(assert (=> b!4862765 (= tp!1368357 e!3040790)))

(assert (= (and b!4862765 ((_ is Cons!55913) (innerList!14651 (xs!17869 (c!826974 totalInput!332))))) b!4863421))

(declare-fun b!4863422 () Bool)

(declare-fun e!3040791 () Bool)

(assert (=> b!4863422 (= e!3040791 tp_is_empty!35651)))

(declare-fun b!4863425 () Bool)

(declare-fun tp!1368445 () Bool)

(declare-fun tp!1368443 () Bool)

(assert (=> b!4863425 (= e!3040791 (and tp!1368445 tp!1368443))))

(declare-fun b!4863424 () Bool)

(declare-fun tp!1368444 () Bool)

(assert (=> b!4863424 (= e!3040791 tp!1368444)))

(declare-fun b!4863423 () Bool)

(declare-fun tp!1368441 () Bool)

(declare-fun tp!1368442 () Bool)

(assert (=> b!4863423 (= e!3040791 (and tp!1368441 tp!1368442))))

(assert (=> b!4862792 (= tp!1368385 e!3040791)))

(assert (= (and b!4862792 ((_ is ElementMatch!13101) (regex!8026 (h!62362 (t!363662 rules!1248))))) b!4863422))

(assert (= (and b!4862792 ((_ is Concat!21438) (regex!8026 (h!62362 (t!363662 rules!1248))))) b!4863423))

(assert (= (and b!4862792 ((_ is Star!13101) (regex!8026 (h!62362 (t!363662 rules!1248))))) b!4863424))

(assert (= (and b!4862792 ((_ is Union!13101) (regex!8026 (h!62362 (t!363662 rules!1248))))) b!4863425))

(declare-fun b!4863430 () Bool)

(declare-fun e!3040793 () Bool)

(assert (=> b!4863430 (= e!3040793 tp_is_empty!35651)))

(declare-fun b!4863433 () Bool)

(declare-fun tp!1368455 () Bool)

(declare-fun tp!1368453 () Bool)

(assert (=> b!4863433 (= e!3040793 (and tp!1368455 tp!1368453))))

(declare-fun b!4863432 () Bool)

(declare-fun tp!1368454 () Bool)

(assert (=> b!4863432 (= e!3040793 tp!1368454)))

(declare-fun b!4863431 () Bool)

(declare-fun tp!1368451 () Bool)

(declare-fun tp!1368452 () Bool)

(assert (=> b!4863431 (= e!3040793 (and tp!1368451 tp!1368452))))

(assert (=> b!4862778 (= tp!1368371 e!3040793)))

(assert (= (and b!4862778 ((_ is ElementMatch!13101) (reg!13430 (regex!8026 (h!62362 rules!1248))))) b!4863430))

(assert (= (and b!4862778 ((_ is Concat!21438) (reg!13430 (regex!8026 (h!62362 rules!1248))))) b!4863431))

(assert (= (and b!4862778 ((_ is Star!13101) (reg!13430 (regex!8026 (h!62362 rules!1248))))) b!4863432))

(assert (= (and b!4862778 ((_ is Union!13101) (reg!13430 (regex!8026 (h!62362 rules!1248))))) b!4863433))

(declare-fun b!4863437 () Bool)

(declare-fun e!3040796 () Bool)

(assert (=> b!4863437 (= e!3040796 tp_is_empty!35651)))

(declare-fun b!4863440 () Bool)

(declare-fun tp!1368463 () Bool)

(declare-fun tp!1368461 () Bool)

(assert (=> b!4863440 (= e!3040796 (and tp!1368463 tp!1368461))))

(declare-fun b!4863439 () Bool)

(declare-fun tp!1368462 () Bool)

(assert (=> b!4863439 (= e!3040796 tp!1368462)))

(declare-fun b!4863438 () Bool)

(declare-fun tp!1368459 () Bool)

(declare-fun tp!1368460 () Bool)

(assert (=> b!4863438 (= e!3040796 (and tp!1368459 tp!1368460))))

(assert (=> b!4862779 (= tp!1368372 e!3040796)))

(assert (= (and b!4862779 ((_ is ElementMatch!13101) (regOne!26715 (regex!8026 (h!62362 rules!1248))))) b!4863437))

(assert (= (and b!4862779 ((_ is Concat!21438) (regOne!26715 (regex!8026 (h!62362 rules!1248))))) b!4863438))

(assert (= (and b!4862779 ((_ is Star!13101) (regOne!26715 (regex!8026 (h!62362 rules!1248))))) b!4863439))

(assert (= (and b!4862779 ((_ is Union!13101) (regOne!26715 (regex!8026 (h!62362 rules!1248))))) b!4863440))

(declare-fun b!4863441 () Bool)

(declare-fun e!3040797 () Bool)

(assert (=> b!4863441 (= e!3040797 tp_is_empty!35651)))

(declare-fun b!4863444 () Bool)

(declare-fun tp!1368468 () Bool)

(declare-fun tp!1368466 () Bool)

(assert (=> b!4863444 (= e!3040797 (and tp!1368468 tp!1368466))))

(declare-fun b!4863443 () Bool)

(declare-fun tp!1368467 () Bool)

(assert (=> b!4863443 (= e!3040797 tp!1368467)))

(declare-fun b!4863442 () Bool)

(declare-fun tp!1368464 () Bool)

(declare-fun tp!1368465 () Bool)

(assert (=> b!4863442 (= e!3040797 (and tp!1368464 tp!1368465))))

(assert (=> b!4862779 (= tp!1368370 e!3040797)))

(assert (= (and b!4862779 ((_ is ElementMatch!13101) (regTwo!26715 (regex!8026 (h!62362 rules!1248))))) b!4863441))

(assert (= (and b!4862779 ((_ is Concat!21438) (regTwo!26715 (regex!8026 (h!62362 rules!1248))))) b!4863442))

(assert (= (and b!4862779 ((_ is Star!13101) (regTwo!26715 (regex!8026 (h!62362 rules!1248))))) b!4863443))

(assert (= (and b!4862779 ((_ is Union!13101) (regTwo!26715 (regex!8026 (h!62362 rules!1248))))) b!4863444))

(declare-fun b!4863448 () Bool)

(declare-fun tp!1368473 () Bool)

(declare-fun tp!1368472 () Bool)

(declare-fun e!3040801 () Bool)

(assert (=> b!4863448 (= e!3040801 (and (inv!71807 (left!40608 (left!40608 (c!826974 input!661)))) tp!1368473 (inv!71807 (right!40938 (left!40608 (c!826974 input!661)))) tp!1368472))))

(declare-fun b!4863450 () Bool)

(declare-fun e!3040800 () Bool)

(declare-fun tp!1368474 () Bool)

(assert (=> b!4863450 (= e!3040800 tp!1368474)))

(declare-fun b!4863449 () Bool)

(assert (=> b!4863449 (= e!3040801 (and (inv!71815 (xs!17869 (left!40608 (c!826974 input!661)))) e!3040800))))

(assert (=> b!4862780 (= tp!1368374 (and (inv!71807 (left!40608 (c!826974 input!661))) e!3040801))))

(assert (= (and b!4862780 ((_ is Node!14563) (left!40608 (c!826974 input!661)))) b!4863448))

(assert (= b!4863449 b!4863450))

(assert (= (and b!4862780 ((_ is Leaf!24287) (left!40608 (c!826974 input!661)))) b!4863449))

(declare-fun m!5861124 () Bool)

(assert (=> b!4863448 m!5861124))

(declare-fun m!5861126 () Bool)

(assert (=> b!4863448 m!5861126))

(declare-fun m!5861128 () Bool)

(assert (=> b!4863449 m!5861128))

(assert (=> b!4862780 m!5860358))

(declare-fun tp!1368480 () Bool)

(declare-fun e!3040804 () Bool)

(declare-fun b!4863455 () Bool)

(declare-fun tp!1368481 () Bool)

(assert (=> b!4863455 (= e!3040804 (and (inv!71807 (left!40608 (right!40938 (c!826974 input!661)))) tp!1368481 (inv!71807 (right!40938 (right!40938 (c!826974 input!661)))) tp!1368480))))

(declare-fun b!4863457 () Bool)

(declare-fun e!3040803 () Bool)

(declare-fun tp!1368482 () Bool)

(assert (=> b!4863457 (= e!3040803 tp!1368482)))

(declare-fun b!4863456 () Bool)

(assert (=> b!4863456 (= e!3040804 (and (inv!71815 (xs!17869 (right!40938 (c!826974 input!661)))) e!3040803))))

(assert (=> b!4862780 (= tp!1368373 (and (inv!71807 (right!40938 (c!826974 input!661))) e!3040804))))

(assert (= (and b!4862780 ((_ is Node!14563) (right!40938 (c!826974 input!661)))) b!4863455))

(assert (= b!4863456 b!4863457))

(assert (= (and b!4862780 ((_ is Leaf!24287) (right!40938 (c!826974 input!661)))) b!4863456))

(declare-fun m!5861130 () Bool)

(assert (=> b!4863455 m!5861130))

(declare-fun m!5861132 () Bool)

(assert (=> b!4863455 m!5861132))

(declare-fun m!5861134 () Bool)

(assert (=> b!4863456 m!5861134))

(assert (=> b!4862780 m!5860360))

(declare-fun b_lambda!193405 () Bool)

(assert (= b_lambda!193403 (or (and b!4862549 b_free!130573 (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))))) (and b!4862793 b_free!130581 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))))) (and b!4863416 b_free!130585 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))))) b_lambda!193405)))

(check-sat (not b!4863193) (not b!4862924) (not b!4863146) (not d!1560694) (not b!4863225) (not b_next!131375) (not bm!337807) (not b!4862844) (not d!1560598) (not b!4863002) (not b!4863409) (not d!1560756) (not b!4863383) (not d!1560720) (not b!4863327) (not b!4863164) (not b!4863424) (not b!4863433) (not b!4863450) (not b!4863100) (not d!1560770) (not d!1560664) (not b!4863215) (not b_next!131363) (not d!1560698) (not b!4862858) (not b!4862819) (not b!4863443) (not d!1560610) (not b!4863432) (not b!4863438) (not d!1560692) (not d!1560612) (not b!4862859) (not d!1560666) (not b!4863423) (not b!4863449) (not b!4862818) (not b!4863218) (not d!1560620) (not b!4863414) (not d!1560608) (not b!4862815) (not b!4863455) (not b!4863199) (not b!4863399) (not b!4863379) (not b_next!131369) (not b!4863448) (not b!4863194) (not b!4862830) b_and!342429 (not d!1560682) (not d!1560722) (not b!4862909) (not b!4863096) (not b!4863415) (not bm!337815) (not b!4863217) (not b!4862990) (not b!4863048) (not b!4863221) (not b!4863442) (not b!4863147) (not b!4862994) b_and!342435 (not b!4863216) (not b!4862996) (not b!4863197) (not b!4862845) (not b!4863162) (not d!1560824) (not b!4863007) (not b!4863104) (not bm!337810) b_and!342423 (not b!4862637) (not b!4863152) (not d!1560768) (not b!4863050) (not b!4863324) (not b!4863227) (not b!4862847) (not b!4862995) (not b!4863192) (not b!4863198) (not b!4862846) (not b!4863220) (not b!4862848) (not b!4863456) (not b!4863070) (not b!4863326) (not b!4862820) b_and!342437 (not b!4863098) (not b!4863439) (not b!4863444) (not b!4863212) (not d!1560626) (not b!4863372) (not b!4863219) (not b!4863384) (not b!4863382) b_and!342439 (not b!4863159) (not b!4862813) (not b!4863154) (not b!4863323) (not b!4863006) (not b!4863195) (not d!1560704) b_and!342441 (not d!1560772) (not b!4862780) (not d!1560822) (not d!1560758) (not bm!337798) (not b!4863012) (not b!4863408) (not d!1560622) (not b!4863148) (not b!4863401) (not b_lambda!193405) (not b!4863156) (not d!1560662) (not b!4862814) (not b!4862926) (not b!4863161) (not b!4863457) (not b!4863160) (not b!4863018) (not d!1560656) (not d!1560696) (not b!4862993) (not b!4862922) (not b!4863440) tp_is_empty!35651 (not d!1560748) (not b!4863103) (not b!4862992) (not b!4862989) (not b!4863397) (not b_next!131371) (not b!4863232) (not b!4863013) (not b!4862812) (not b!4863157) (not b!4862923) (not b!4863072) (not b!4862843) (not b!4863431) (not b!4862997) (not d!1560738) (not b!4863004) (not d!1560614) (not b!4863213) (not d!1560714) (not d!1560602) (not d!1560782) (not b!4863163) (not b!4863407) (not b!4862817) (not b!4863400) (not b!4863165) (not b!4862860) (not b!4863421) (not b!4862763) (not b!4862823) (not bm!337801) (not b!4862822) (not b!4863373) (not b!4863233) (not b!4863381) (not b!4863425) (not b!4862908) (not b!4863328) (not b_next!131361) (not b!4863089) (not b!4863009) (not b!4863371) (not b!4863223) (not b!4863380) (not b_next!131373) (not d!1560684))
(check-sat (not b_next!131375) (not b_next!131363) b_and!342435 b_and!342423 b_and!342437 b_and!342439 b_and!342441 (not b_next!131371) (not b_next!131361) (not b_next!131373) (not b_next!131369) b_and!342429)
(get-model)

(declare-fun d!1560830 () Bool)

(assert (=> d!1560830 (= (inv!71815 (xs!17869 (right!40938 (c!826974 input!661)))) (<= (size!36838 (innerList!14651 (xs!17869 (right!40938 (c!826974 input!661))))) 2147483647))))

(declare-fun bs!1174057 () Bool)

(assert (= bs!1174057 d!1560830))

(declare-fun m!5861148 () Bool)

(assert (=> bs!1174057 m!5861148))

(assert (=> b!4863456 d!1560830))

(assert (=> bm!337810 d!1560700))

(declare-fun d!1560832 () Bool)

(declare-fun res!2076252 () Bool)

(declare-fun e!3040814 () Bool)

(assert (=> d!1560832 (=> res!2076252 e!3040814)))

(assert (=> d!1560832 (= res!2076252 ((_ is Nil!55914) rules!1248))))

(assert (=> d!1560832 (= (forall!13043 rules!1248 lambda!243315) e!3040814)))

(declare-fun b!4863472 () Bool)

(declare-fun e!3040815 () Bool)

(assert (=> b!4863472 (= e!3040814 e!3040815)))

(declare-fun res!2076253 () Bool)

(assert (=> b!4863472 (=> (not res!2076253) (not e!3040815))))

(declare-fun dynLambda!22427 (Int Rule!15852) Bool)

(assert (=> b!4863472 (= res!2076253 (dynLambda!22427 lambda!243315 (h!62362 rules!1248)))))

(declare-fun b!4863473 () Bool)

(assert (=> b!4863473 (= e!3040815 (forall!13043 (t!363662 rules!1248) lambda!243315))))

(assert (= (and d!1560832 (not res!2076252)) b!4863472))

(assert (= (and b!4863472 res!2076253) b!4863473))

(declare-fun b_lambda!193409 () Bool)

(assert (=> (not b_lambda!193409) (not b!4863472)))

(declare-fun m!5861150 () Bool)

(assert (=> b!4863472 m!5861150))

(declare-fun m!5861152 () Bool)

(assert (=> b!4863473 m!5861152))

(assert (=> d!1560626 d!1560832))

(declare-fun d!1560834 () Bool)

(assert (=> d!1560834 (= (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))) (list!17462 (c!826974 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun bs!1174058 () Bool)

(assert (= bs!1174058 d!1560834))

(declare-fun m!5861154 () Bool)

(assert (=> bs!1174058 m!5861154))

(assert (=> b!4862813 d!1560834))

(declare-fun d!1560836 () Bool)

(declare-fun lt!1993049 () BalanceConc!28568)

(assert (=> d!1560836 (= (list!17460 lt!1993049) (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791))))))

(assert (=> d!1560836 (= lt!1993049 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))) (value!257885 (_1!33177 (get!19217 lt!1992791)))))))

(assert (=> d!1560836 (= (charsOf!5333 (_1!33177 (get!19217 lt!1992791))) lt!1993049)))

(declare-fun b_lambda!193411 () Bool)

(assert (=> (not b_lambda!193411) (not d!1560836)))

(declare-fun t!363683 () Bool)

(declare-fun tb!257591 () Bool)

(assert (=> (and b!4862549 (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363683) tb!257591))

(declare-fun b!4863474 () Bool)

(declare-fun e!3040816 () Bool)

(declare-fun tp!1368494 () Bool)

(assert (=> b!4863474 (= e!3040816 (and (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))) (value!257885 (_1!33177 (get!19217 lt!1992791)))))) tp!1368494))))

(declare-fun result!320682 () Bool)

(assert (=> tb!257591 (= result!320682 (and (inv!71809 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))) (value!257885 (_1!33177 (get!19217 lt!1992791))))) e!3040816))))

(assert (= tb!257591 b!4863474))

(declare-fun m!5861156 () Bool)

(assert (=> b!4863474 m!5861156))

(declare-fun m!5861158 () Bool)

(assert (=> tb!257591 m!5861158))

(assert (=> d!1560836 t!363683))

(declare-fun b_and!342447 () Bool)

(assert (= b_and!342429 (and (=> t!363683 result!320682) b_and!342447)))

(declare-fun t!363685 () Bool)

(declare-fun tb!257593 () Bool)

(assert (=> (and b!4862793 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363685) tb!257593))

(declare-fun result!320684 () Bool)

(assert (= result!320684 result!320682))

(assert (=> d!1560836 t!363685))

(declare-fun b_and!342449 () Bool)

(assert (= b_and!342437 (and (=> t!363685 result!320684) b_and!342449)))

(declare-fun t!363687 () Bool)

(declare-fun tb!257595 () Bool)

(assert (=> (and b!4863416 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363687) tb!257595))

(declare-fun result!320686 () Bool)

(assert (= result!320686 result!320682))

(assert (=> d!1560836 t!363687))

(declare-fun b_and!342451 () Bool)

(assert (= b_and!342441 (and (=> t!363687 result!320686) b_and!342451)))

(declare-fun m!5861160 () Bool)

(assert (=> d!1560836 m!5861160))

(declare-fun m!5861162 () Bool)

(assert (=> d!1560836 m!5861162))

(assert (=> b!4862813 d!1560836))

(declare-fun d!1560838 () Bool)

(assert (=> d!1560838 (= (get!19217 lt!1992791) (v!49674 lt!1992791))))

(assert (=> b!4862813 d!1560838))

(declare-fun d!1560840 () Bool)

(assert (=> d!1560840 (= (inv!71815 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) (<= (size!36838 (innerList!14651 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) 2147483647))))

(declare-fun bs!1174059 () Bool)

(assert (= bs!1174059 d!1560840))

(declare-fun m!5861164 () Bool)

(assert (=> bs!1174059 m!5861164))

(assert (=> b!4863372 d!1560840))

(declare-fun d!1560842 () Bool)

(assert (=> d!1560842 (= (height!1918 (left!40608 (c!826974 totalInput!332))) (ite ((_ is Empty!14563) (left!40608 (c!826974 totalInput!332))) 0 (ite ((_ is Leaf!24287) (left!40608 (c!826974 totalInput!332))) 1 (cheight!14774 (left!40608 (c!826974 totalInput!332))))))))

(assert (=> b!4862843 d!1560842))

(declare-fun d!1560844 () Bool)

(assert (=> d!1560844 (= (height!1918 (right!40938 (c!826974 totalInput!332))) (ite ((_ is Empty!14563) (right!40938 (c!826974 totalInput!332))) 0 (ite ((_ is Leaf!24287) (right!40938 (c!826974 totalInput!332))) 1 (cheight!14774 (right!40938 (c!826974 totalInput!332))))))))

(assert (=> b!4862843 d!1560844))

(declare-fun d!1560846 () Bool)

(assert (=> d!1560846 (= (isEmpty!29894 lt!1992791) (not ((_ is Some!13772) lt!1992791)))))

(assert (=> d!1560602 d!1560846))

(declare-fun d!1560848 () Bool)

(declare-fun e!3040819 () Bool)

(assert (=> d!1560848 e!3040819))

(declare-fun res!2076255 () Bool)

(assert (=> d!1560848 (=> res!2076255 e!3040819)))

(declare-fun lt!1993050 () Bool)

(assert (=> d!1560848 (= res!2076255 (not lt!1993050))))

(declare-fun e!3040818 () Bool)

(assert (=> d!1560848 (= lt!1993050 e!3040818)))

(declare-fun res!2076257 () Bool)

(assert (=> d!1560848 (=> res!2076257 e!3040818)))

(assert (=> d!1560848 (= res!2076257 ((_ is Nil!55913) (list!17460 input!661)))))

(assert (=> d!1560848 (= (isPrefix!4762 (list!17460 input!661) (list!17460 input!661)) lt!1993050)))

(declare-fun b!4863478 () Bool)

(assert (=> b!4863478 (= e!3040819 (>= (size!36838 (list!17460 input!661)) (size!36838 (list!17460 input!661))))))

(declare-fun b!4863475 () Bool)

(declare-fun e!3040817 () Bool)

(assert (=> b!4863475 (= e!3040818 e!3040817)))

(declare-fun res!2076256 () Bool)

(assert (=> b!4863475 (=> (not res!2076256) (not e!3040817))))

(assert (=> b!4863475 (= res!2076256 (not ((_ is Nil!55913) (list!17460 input!661))))))

(declare-fun b!4863477 () Bool)

(assert (=> b!4863477 (= e!3040817 (isPrefix!4762 (tail!9555 (list!17460 input!661)) (tail!9555 (list!17460 input!661))))))

(declare-fun b!4863476 () Bool)

(declare-fun res!2076254 () Bool)

(assert (=> b!4863476 (=> (not res!2076254) (not e!3040817))))

(assert (=> b!4863476 (= res!2076254 (= (head!10409 (list!17460 input!661)) (head!10409 (list!17460 input!661))))))

(assert (= (and d!1560848 (not res!2076257)) b!4863475))

(assert (= (and b!4863475 res!2076256) b!4863476))

(assert (= (and b!4863476 res!2076254) b!4863477))

(assert (= (and d!1560848 (not res!2076255)) b!4863478))

(assert (=> b!4863478 m!5860130))

(assert (=> b!4863478 m!5860388))

(assert (=> b!4863478 m!5860130))

(assert (=> b!4863478 m!5860388))

(assert (=> b!4863477 m!5860130))

(declare-fun m!5861166 () Bool)

(assert (=> b!4863477 m!5861166))

(assert (=> b!4863477 m!5860130))

(assert (=> b!4863477 m!5861166))

(assert (=> b!4863477 m!5861166))

(assert (=> b!4863477 m!5861166))

(declare-fun m!5861168 () Bool)

(assert (=> b!4863477 m!5861168))

(assert (=> b!4863476 m!5860130))

(declare-fun m!5861170 () Bool)

(assert (=> b!4863476 m!5861170))

(assert (=> b!4863476 m!5860130))

(assert (=> b!4863476 m!5861170))

(assert (=> d!1560602 d!1560848))

(declare-fun d!1560850 () Bool)

(assert (=> d!1560850 (isPrefix!4762 (list!17460 input!661) (list!17460 input!661))))

(declare-fun lt!1993051 () Unit!145922)

(assert (=> d!1560850 (= lt!1993051 (choose!35570 (list!17460 input!661) (list!17460 input!661)))))

(assert (=> d!1560850 (= (lemmaIsPrefixRefl!3159 (list!17460 input!661) (list!17460 input!661)) lt!1993051)))

(declare-fun bs!1174060 () Bool)

(assert (= bs!1174060 d!1560850))

(assert (=> bs!1174060 m!5860130))

(assert (=> bs!1174060 m!5860130))

(assert (=> bs!1174060 m!5860392))

(assert (=> bs!1174060 m!5860130))

(assert (=> bs!1174060 m!5860130))

(declare-fun m!5861172 () Bool)

(assert (=> bs!1174060 m!5861172))

(assert (=> d!1560602 d!1560850))

(assert (=> d!1560602 d!1560626))

(assert (=> d!1560824 d!1560778))

(assert (=> d!1560824 d!1560530))

(declare-fun d!1560852 () Bool)

(declare-fun lt!1993054 () Int)

(assert (=> d!1560852 (= lt!1993054 (size!36838 (list!17462 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1560852 (= lt!1993054 (ite ((_ is Empty!14563) (c!826974 (_2!33172 (v!49672 lt!1992698)))) 0 (ite ((_ is Leaf!24287) (c!826974 (_2!33172 (v!49672 lt!1992698)))) (csize!29357 (c!826974 (_2!33172 (v!49672 lt!1992698)))) (csize!29356 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1560852 (= (size!36842 (c!826974 (_2!33172 (v!49672 lt!1992698)))) lt!1993054)))

(declare-fun bs!1174061 () Bool)

(assert (= bs!1174061 d!1560852))

(assert (=> bs!1174061 m!5860132))

(assert (=> bs!1174061 m!5860132))

(declare-fun m!5861174 () Bool)

(assert (=> bs!1174061 m!5861174))

(assert (=> d!1560824 d!1560852))

(declare-fun b!4863479 () Bool)

(declare-fun res!2076259 () Bool)

(declare-fun e!3040821 () Bool)

(assert (=> b!4863479 (=> (not res!2076259) (not e!3040821))))

(assert (=> b!4863479 (= res!2076259 (<= (- (height!1918 (left!40608 (right!40938 (c!826974 input!661)))) (height!1918 (right!40938 (right!40938 (c!826974 input!661))))) 1))))

(declare-fun b!4863480 () Bool)

(declare-fun res!2076260 () Bool)

(assert (=> b!4863480 (=> (not res!2076260) (not e!3040821))))

(assert (=> b!4863480 (= res!2076260 (isBalanced!3946 (right!40938 (right!40938 (c!826974 input!661)))))))

(declare-fun d!1560854 () Bool)

(declare-fun res!2076261 () Bool)

(declare-fun e!3040820 () Bool)

(assert (=> d!1560854 (=> res!2076261 e!3040820)))

(assert (=> d!1560854 (= res!2076261 (not ((_ is Node!14563) (right!40938 (c!826974 input!661)))))))

(assert (=> d!1560854 (= (isBalanced!3946 (right!40938 (c!826974 input!661))) e!3040820)))

(declare-fun b!4863481 () Bool)

(assert (=> b!4863481 (= e!3040821 (not (isEmpty!29897 (right!40938 (right!40938 (c!826974 input!661))))))))

(declare-fun b!4863482 () Bool)

(assert (=> b!4863482 (= e!3040820 e!3040821)))

(declare-fun res!2076258 () Bool)

(assert (=> b!4863482 (=> (not res!2076258) (not e!3040821))))

(assert (=> b!4863482 (= res!2076258 (<= (- 1) (- (height!1918 (left!40608 (right!40938 (c!826974 input!661)))) (height!1918 (right!40938 (right!40938 (c!826974 input!661)))))))))

(declare-fun b!4863483 () Bool)

(declare-fun res!2076263 () Bool)

(assert (=> b!4863483 (=> (not res!2076263) (not e!3040821))))

(assert (=> b!4863483 (= res!2076263 (not (isEmpty!29897 (left!40608 (right!40938 (c!826974 input!661))))))))

(declare-fun b!4863484 () Bool)

(declare-fun res!2076262 () Bool)

(assert (=> b!4863484 (=> (not res!2076262) (not e!3040821))))

(assert (=> b!4863484 (= res!2076262 (isBalanced!3946 (left!40608 (right!40938 (c!826974 input!661)))))))

(assert (= (and d!1560854 (not res!2076261)) b!4863482))

(assert (= (and b!4863482 res!2076258) b!4863479))

(assert (= (and b!4863479 res!2076259) b!4863484))

(assert (= (and b!4863484 res!2076262) b!4863480))

(assert (= (and b!4863480 res!2076260) b!4863483))

(assert (= (and b!4863483 res!2076263) b!4863481))

(declare-fun m!5861176 () Bool)

(assert (=> b!4863482 m!5861176))

(declare-fun m!5861178 () Bool)

(assert (=> b!4863482 m!5861178))

(declare-fun m!5861180 () Bool)

(assert (=> b!4863483 m!5861180))

(assert (=> b!4863479 m!5861176))

(assert (=> b!4863479 m!5861178))

(declare-fun m!5861182 () Bool)

(assert (=> b!4863484 m!5861182))

(declare-fun m!5861184 () Bool)

(assert (=> b!4863481 m!5861184))

(declare-fun m!5861186 () Bool)

(assert (=> b!4863480 m!5861186))

(assert (=> b!4863161 d!1560854))

(declare-fun d!1560856 () Bool)

(declare-fun lt!1993055 () Int)

(assert (=> d!1560856 (>= lt!1993055 0)))

(declare-fun e!3040822 () Int)

(assert (=> d!1560856 (= lt!1993055 e!3040822)))

(declare-fun c!827139 () Bool)

(assert (=> d!1560856 (= c!827139 ((_ is Nil!55913) (t!363661 lt!1992697)))))

(assert (=> d!1560856 (= (size!36838 (t!363661 lt!1992697)) lt!1993055)))

(declare-fun b!4863485 () Bool)

(assert (=> b!4863485 (= e!3040822 0)))

(declare-fun b!4863486 () Bool)

(assert (=> b!4863486 (= e!3040822 (+ 1 (size!36838 (t!363661 (t!363661 lt!1992697)))))))

(assert (= (and d!1560856 c!827139) b!4863485))

(assert (= (and d!1560856 (not c!827139)) b!4863486))

(declare-fun m!5861188 () Bool)

(assert (=> b!4863486 m!5861188))

(assert (=> b!4863072 d!1560856))

(declare-fun d!1560858 () Bool)

(declare-fun res!2076264 () Bool)

(declare-fun e!3040823 () Bool)

(assert (=> d!1560858 (=> (not res!2076264) (not e!3040823))))

(assert (=> d!1560858 (= res!2076264 (<= (size!36838 (list!17466 (xs!17869 (left!40608 (c!826974 input!661))))) 512))))

(assert (=> d!1560858 (= (inv!71814 (left!40608 (c!826974 input!661))) e!3040823)))

(declare-fun b!4863487 () Bool)

(declare-fun res!2076265 () Bool)

(assert (=> b!4863487 (=> (not res!2076265) (not e!3040823))))

(assert (=> b!4863487 (= res!2076265 (= (csize!29357 (left!40608 (c!826974 input!661))) (size!36838 (list!17466 (xs!17869 (left!40608 (c!826974 input!661)))))))))

(declare-fun b!4863488 () Bool)

(assert (=> b!4863488 (= e!3040823 (and (> (csize!29357 (left!40608 (c!826974 input!661))) 0) (<= (csize!29357 (left!40608 (c!826974 input!661))) 512)))))

(assert (= (and d!1560858 res!2076264) b!4863487))

(assert (= (and b!4863487 res!2076265) b!4863488))

(declare-fun m!5861190 () Bool)

(assert (=> d!1560858 m!5861190))

(assert (=> d!1560858 m!5861190))

(declare-fun m!5861192 () Bool)

(assert (=> d!1560858 m!5861192))

(assert (=> b!4863487 m!5861190))

(assert (=> b!4863487 m!5861190))

(assert (=> b!4863487 m!5861192))

(assert (=> b!4863006 d!1560858))

(declare-fun d!1560860 () Bool)

(assert (=> d!1560860 (= (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))) (v!49674 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))

(assert (=> b!4863217 d!1560860))

(declare-fun d!1560862 () Bool)

(assert (=> d!1560862 (= (list!17460 (_2!33172 (get!19216 lt!1992971))) (list!17462 (c!826974 (_2!33172 (get!19216 lt!1992971)))))))

(declare-fun bs!1174062 () Bool)

(assert (= bs!1174062 d!1560862))

(declare-fun m!5861194 () Bool)

(assert (=> bs!1174062 m!5861194))

(assert (=> b!4863217 d!1560862))

(declare-fun d!1560864 () Bool)

(assert (=> d!1560864 (= (get!19216 lt!1992971) (v!49672 lt!1992971))))

(assert (=> b!4863217 d!1560864))

(assert (=> b!4863217 d!1560592))

(declare-fun b!4863489 () Bool)

(declare-fun res!2076272 () Bool)

(declare-fun e!3040825 () Bool)

(assert (=> b!4863489 (=> (not res!2076272) (not e!3040825))))

(declare-fun lt!1993060 () Option!13773)

(assert (=> b!4863489 (= res!2076272 (matchR!6487 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1993060)))) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993060))))))))

(declare-fun d!1560866 () Bool)

(declare-fun e!3040826 () Bool)

(assert (=> d!1560866 e!3040826))

(declare-fun res!2076270 () Bool)

(assert (=> d!1560866 (=> res!2076270 e!3040826)))

(assert (=> d!1560866 (= res!2076270 (isEmpty!29894 lt!1993060))))

(declare-fun e!3040824 () Option!13773)

(assert (=> d!1560866 (= lt!1993060 e!3040824)))

(declare-fun c!827140 () Bool)

(assert (=> d!1560866 (= c!827140 (and ((_ is Cons!55914) (t!363662 rules!1248)) ((_ is Nil!55914) (t!363662 (t!363662 rules!1248)))))))

(declare-fun lt!1993058 () Unit!145922)

(declare-fun lt!1993057 () Unit!145922)

(assert (=> d!1560866 (= lt!1993058 lt!1993057)))

(assert (=> d!1560866 (isPrefix!4762 (list!17460 input!661) (list!17460 input!661))))

(assert (=> d!1560866 (= lt!1993057 (lemmaIsPrefixRefl!3159 (list!17460 input!661) (list!17460 input!661)))))

(assert (=> d!1560866 (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248))))

(assert (=> d!1560866 (= (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)) lt!1993060)))

(declare-fun b!4863490 () Bool)

(declare-fun res!2076266 () Bool)

(assert (=> b!4863490 (=> (not res!2076266) (not e!3040825))))

(assert (=> b!4863490 (= res!2076266 (= (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993060)))) (originalCharacters!8351 (_1!33177 (get!19217 lt!1993060)))))))

(declare-fun b!4863491 () Bool)

(declare-fun res!2076267 () Bool)

(assert (=> b!4863491 (=> (not res!2076267) (not e!3040825))))

(assert (=> b!4863491 (= res!2076267 (= (++!12171 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993060)))) (_2!33177 (get!19217 lt!1993060))) (list!17460 input!661)))))

(declare-fun b!4863492 () Bool)

(assert (=> b!4863492 (= e!3040825 (contains!19383 (t!363662 rules!1248) (rule!11144 (_1!33177 (get!19217 lt!1993060)))))))

(declare-fun b!4863493 () Bool)

(declare-fun call!337827 () Option!13773)

(assert (=> b!4863493 (= e!3040824 call!337827)))

(declare-fun b!4863494 () Bool)

(declare-fun res!2076268 () Bool)

(assert (=> b!4863494 (=> (not res!2076268) (not e!3040825))))

(assert (=> b!4863494 (= res!2076268 (= (value!257885 (_1!33177 (get!19217 lt!1993060))) (apply!13497 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1993060)))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1993060)))))))))

(declare-fun bm!337822 () Bool)

(assert (=> bm!337822 (= call!337827 (maxPrefixOneRule!3486 thiss!11777 (h!62362 (t!363662 rules!1248)) (list!17460 input!661)))))

(declare-fun b!4863495 () Bool)

(declare-fun lt!1993056 () Option!13773)

(declare-fun lt!1993059 () Option!13773)

(assert (=> b!4863495 (= e!3040824 (ite (and ((_ is None!13772) lt!1993056) ((_ is None!13772) lt!1993059)) None!13772 (ite ((_ is None!13772) lt!1993059) lt!1993056 (ite ((_ is None!13772) lt!1993056) lt!1993059 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1993056))) (size!36832 (_1!33177 (v!49674 lt!1993059)))) lt!1993056 lt!1993059)))))))

(assert (=> b!4863495 (= lt!1993056 call!337827)))

(assert (=> b!4863495 (= lt!1993059 (maxPrefix!4545 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661)))))

(declare-fun b!4863496 () Bool)

(assert (=> b!4863496 (= e!3040826 e!3040825)))

(declare-fun res!2076269 () Bool)

(assert (=> b!4863496 (=> (not res!2076269) (not e!3040825))))

(assert (=> b!4863496 (= res!2076269 (isDefined!10841 lt!1993060))))

(declare-fun b!4863497 () Bool)

(declare-fun res!2076271 () Bool)

(assert (=> b!4863497 (=> (not res!2076271) (not e!3040825))))

(assert (=> b!4863497 (= res!2076271 (< (size!36838 (_2!33177 (get!19217 lt!1993060))) (size!36838 (list!17460 input!661))))))

(assert (= (and d!1560866 c!827140) b!4863493))

(assert (= (and d!1560866 (not c!827140)) b!4863495))

(assert (= (or b!4863493 b!4863495) bm!337822))

(assert (= (and d!1560866 (not res!2076270)) b!4863496))

(assert (= (and b!4863496 res!2076269) b!4863490))

(assert (= (and b!4863490 res!2076266) b!4863497))

(assert (= (and b!4863497 res!2076271) b!4863491))

(assert (= (and b!4863491 res!2076267) b!4863494))

(assert (= (and b!4863494 res!2076268) b!4863489))

(assert (= (and b!4863489 res!2076272) b!4863492))

(declare-fun m!5861196 () Bool)

(assert (=> b!4863489 m!5861196))

(declare-fun m!5861198 () Bool)

(assert (=> b!4863489 m!5861198))

(assert (=> b!4863489 m!5861198))

(declare-fun m!5861200 () Bool)

(assert (=> b!4863489 m!5861200))

(assert (=> b!4863489 m!5861200))

(declare-fun m!5861202 () Bool)

(assert (=> b!4863489 m!5861202))

(assert (=> b!4863492 m!5861196))

(declare-fun m!5861204 () Bool)

(assert (=> b!4863492 m!5861204))

(assert (=> b!4863494 m!5861196))

(declare-fun m!5861206 () Bool)

(assert (=> b!4863494 m!5861206))

(assert (=> b!4863494 m!5861206))

(declare-fun m!5861208 () Bool)

(assert (=> b!4863494 m!5861208))

(assert (=> b!4863490 m!5861196))

(assert (=> b!4863490 m!5861198))

(assert (=> b!4863490 m!5861198))

(assert (=> b!4863490 m!5861200))

(declare-fun m!5861210 () Bool)

(assert (=> b!4863496 m!5861210))

(assert (=> b!4863497 m!5861196))

(declare-fun m!5861212 () Bool)

(assert (=> b!4863497 m!5861212))

(assert (=> b!4863497 m!5860130))

(assert (=> b!4863497 m!5860388))

(declare-fun m!5861214 () Bool)

(assert (=> d!1560866 m!5861214))

(assert (=> d!1560866 m!5860130))

(assert (=> d!1560866 m!5860130))

(assert (=> d!1560866 m!5860392))

(assert (=> d!1560866 m!5860130))

(assert (=> d!1560866 m!5860130))

(assert (=> d!1560866 m!5860394))

(assert (=> d!1560866 m!5860498))

(assert (=> b!4863495 m!5860130))

(declare-fun m!5861216 () Bool)

(assert (=> b!4863495 m!5861216))

(assert (=> bm!337822 m!5860130))

(declare-fun m!5861218 () Bool)

(assert (=> bm!337822 m!5861218))

(assert (=> b!4863491 m!5861196))

(assert (=> b!4863491 m!5861198))

(assert (=> b!4863491 m!5861198))

(assert (=> b!4863491 m!5861200))

(assert (=> b!4863491 m!5861200))

(declare-fun m!5861220 () Bool)

(assert (=> b!4863491 m!5861220))

(assert (=> b!4863217 d!1560866))

(declare-fun b!4863498 () Bool)

(declare-fun res!2076274 () Bool)

(declare-fun e!3040828 () Bool)

(assert (=> b!4863498 (=> (not res!2076274) (not e!3040828))))

(assert (=> b!4863498 (= res!2076274 (<= (- (height!1918 (left!40608 (left!40608 (c!826974 input!661)))) (height!1918 (right!40938 (left!40608 (c!826974 input!661))))) 1))))

(declare-fun b!4863499 () Bool)

(declare-fun res!2076275 () Bool)

(assert (=> b!4863499 (=> (not res!2076275) (not e!3040828))))

(assert (=> b!4863499 (= res!2076275 (isBalanced!3946 (right!40938 (left!40608 (c!826974 input!661)))))))

(declare-fun d!1560868 () Bool)

(declare-fun res!2076276 () Bool)

(declare-fun e!3040827 () Bool)

(assert (=> d!1560868 (=> res!2076276 e!3040827)))

(assert (=> d!1560868 (= res!2076276 (not ((_ is Node!14563) (left!40608 (c!826974 input!661)))))))

(assert (=> d!1560868 (= (isBalanced!3946 (left!40608 (c!826974 input!661))) e!3040827)))

(declare-fun b!4863500 () Bool)

(assert (=> b!4863500 (= e!3040828 (not (isEmpty!29897 (right!40938 (left!40608 (c!826974 input!661))))))))

(declare-fun b!4863501 () Bool)

(assert (=> b!4863501 (= e!3040827 e!3040828)))

(declare-fun res!2076273 () Bool)

(assert (=> b!4863501 (=> (not res!2076273) (not e!3040828))))

(assert (=> b!4863501 (= res!2076273 (<= (- 1) (- (height!1918 (left!40608 (left!40608 (c!826974 input!661)))) (height!1918 (right!40938 (left!40608 (c!826974 input!661)))))))))

(declare-fun b!4863502 () Bool)

(declare-fun res!2076278 () Bool)

(assert (=> b!4863502 (=> (not res!2076278) (not e!3040828))))

(assert (=> b!4863502 (= res!2076278 (not (isEmpty!29897 (left!40608 (left!40608 (c!826974 input!661))))))))

(declare-fun b!4863503 () Bool)

(declare-fun res!2076277 () Bool)

(assert (=> b!4863503 (=> (not res!2076277) (not e!3040828))))

(assert (=> b!4863503 (= res!2076277 (isBalanced!3946 (left!40608 (left!40608 (c!826974 input!661)))))))

(assert (= (and d!1560868 (not res!2076276)) b!4863501))

(assert (= (and b!4863501 res!2076273) b!4863498))

(assert (= (and b!4863498 res!2076274) b!4863503))

(assert (= (and b!4863503 res!2076277) b!4863499))

(assert (= (and b!4863499 res!2076275) b!4863502))

(assert (= (and b!4863502 res!2076278) b!4863500))

(declare-fun m!5861222 () Bool)

(assert (=> b!4863501 m!5861222))

(declare-fun m!5861224 () Bool)

(assert (=> b!4863501 m!5861224))

(declare-fun m!5861226 () Bool)

(assert (=> b!4863502 m!5861226))

(assert (=> b!4863498 m!5861222))

(assert (=> b!4863498 m!5861224))

(declare-fun m!5861228 () Bool)

(assert (=> b!4863503 m!5861228))

(declare-fun m!5861230 () Bool)

(assert (=> b!4863500 m!5861230))

(declare-fun m!5861232 () Bool)

(assert (=> b!4863499 m!5861232))

(assert (=> b!4863165 d!1560868))

(declare-fun d!1560870 () Bool)

(declare-fun lt!1993061 () Int)

(assert (=> d!1560870 (= lt!1993061 (size!36838 (list!17462 (left!40608 (c!826974 totalInput!332)))))))

(assert (=> d!1560870 (= lt!1993061 (ite ((_ is Empty!14563) (left!40608 (c!826974 totalInput!332))) 0 (ite ((_ is Leaf!24287) (left!40608 (c!826974 totalInput!332))) (csize!29357 (left!40608 (c!826974 totalInput!332))) (csize!29356 (left!40608 (c!826974 totalInput!332))))))))

(assert (=> d!1560870 (= (size!36842 (left!40608 (c!826974 totalInput!332))) lt!1993061)))

(declare-fun bs!1174063 () Bool)

(assert (= bs!1174063 d!1560870))

(assert (=> bs!1174063 m!5860622))

(assert (=> bs!1174063 m!5860622))

(declare-fun m!5861234 () Bool)

(assert (=> bs!1174063 m!5861234))

(assert (=> d!1560704 d!1560870))

(declare-fun d!1560872 () Bool)

(declare-fun lt!1993062 () Int)

(assert (=> d!1560872 (= lt!1993062 (size!36838 (list!17462 (right!40938 (c!826974 totalInput!332)))))))

(assert (=> d!1560872 (= lt!1993062 (ite ((_ is Empty!14563) (right!40938 (c!826974 totalInput!332))) 0 (ite ((_ is Leaf!24287) (right!40938 (c!826974 totalInput!332))) (csize!29357 (right!40938 (c!826974 totalInput!332))) (csize!29356 (right!40938 (c!826974 totalInput!332))))))))

(assert (=> d!1560872 (= (size!36842 (right!40938 (c!826974 totalInput!332))) lt!1993062)))

(declare-fun bs!1174064 () Bool)

(assert (= bs!1174064 d!1560872))

(assert (=> bs!1174064 m!5860624))

(assert (=> bs!1174064 m!5860624))

(declare-fun m!5861236 () Bool)

(assert (=> bs!1174064 m!5861236))

(assert (=> d!1560704 d!1560872))

(declare-fun b!4863504 () Bool)

(declare-fun e!3040829 () List!56037)

(assert (=> b!4863504 (= e!3040829 Nil!55913)))

(declare-fun b!4863505 () Bool)

(declare-fun e!3040830 () List!56037)

(assert (=> b!4863505 (= e!3040829 e!3040830)))

(declare-fun c!827142 () Bool)

(assert (=> b!4863505 (= c!827142 ((_ is Leaf!24287) (c!826974 (_2!33173 lt!1992737))))))

(declare-fun b!4863507 () Bool)

(assert (=> b!4863507 (= e!3040830 (++!12171 (list!17462 (left!40608 (c!826974 (_2!33173 lt!1992737)))) (list!17462 (right!40938 (c!826974 (_2!33173 lt!1992737))))))))

(declare-fun d!1560874 () Bool)

(declare-fun c!827141 () Bool)

(assert (=> d!1560874 (= c!827141 ((_ is Empty!14563) (c!826974 (_2!33173 lt!1992737))))))

(assert (=> d!1560874 (= (list!17462 (c!826974 (_2!33173 lt!1992737))) e!3040829)))

(declare-fun b!4863506 () Bool)

(assert (=> b!4863506 (= e!3040830 (list!17466 (xs!17869 (c!826974 (_2!33173 lt!1992737)))))))

(assert (= (and d!1560874 c!827141) b!4863504))

(assert (= (and d!1560874 (not c!827141)) b!4863505))

(assert (= (and b!4863505 c!827142) b!4863506))

(assert (= (and b!4863505 (not c!827142)) b!4863507))

(declare-fun m!5861238 () Bool)

(assert (=> b!4863507 m!5861238))

(declare-fun m!5861240 () Bool)

(assert (=> b!4863507 m!5861240))

(assert (=> b!4863507 m!5861238))

(assert (=> b!4863507 m!5861240))

(declare-fun m!5861242 () Bool)

(assert (=> b!4863507 m!5861242))

(declare-fun m!5861244 () Bool)

(assert (=> b!4863506 m!5861244))

(assert (=> d!1560610 d!1560874))

(declare-fun bs!1174065 () Bool)

(declare-fun b!4863509 () Bool)

(assert (= bs!1174065 (and b!4863509 d!1560692)))

(declare-fun lambda!243344 () Int)

(assert (=> bs!1174065 (= (and (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (= lambda!243344 lambda!243326))))

(declare-fun bs!1174066 () Bool)

(assert (= bs!1174066 (and b!4863509 b!4863324)))

(assert (=> bs!1174066 (= (and (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (= lambda!243344 lambda!243343))))

(declare-fun b!4863515 () Bool)

(declare-fun e!3040837 () Bool)

(assert (=> b!4863515 (= e!3040837 true)))

(declare-fun b!4863514 () Bool)

(declare-fun e!3040836 () Bool)

(assert (=> b!4863514 (= e!3040836 e!3040837)))

(assert (=> b!4863509 e!3040836))

(assert (= b!4863514 b!4863515))

(assert (= b!4863509 b!4863514))

(assert (=> b!4863515 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (dynLambda!22424 order!25173 lambda!243344))))

(assert (=> b!4863515 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (dynLambda!22424 order!25173 lambda!243344))))

(declare-fun b!4863508 () Bool)

(declare-fun e!3040834 () Bool)

(declare-fun lt!1993072 () List!56037)

(assert (=> b!4863508 (= e!3040834 (matchR!6487 (regex!8026 (h!62362 (t!363662 rules!1248))) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 (t!363662 rules!1248))) Nil!55913 (size!36838 Nil!55913) lt!1993072 lt!1993072 (size!36838 lt!1993072)))))))

(declare-fun e!3040835 () Option!13771)

(declare-fun lt!1993065 () tuple2!59756)

(assert (=> b!4863509 (= e!3040835 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 (t!363662 rules!1248))) (_1!33181 lt!1993065)) (h!62362 (t!363662 rules!1248)) (size!36837 (_1!33181 lt!1993065)) (list!17460 (_1!33181 lt!1993065))) (_2!33181 lt!1993065))))))

(assert (=> b!4863509 (= lt!1993072 (list!17460 input!661))))

(declare-fun lt!1993068 () Unit!145922)

(assert (=> b!4863509 (= lt!1993068 (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 (t!363662 rules!1248))) lt!1993072))))

(declare-fun res!2076280 () Bool)

(assert (=> b!4863509 (= res!2076280 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 (t!363662 rules!1248))) Nil!55913 (size!36838 Nil!55913) lt!1993072 lt!1993072 (size!36838 lt!1993072)))))))

(assert (=> b!4863509 (=> res!2076280 e!3040834)))

(assert (=> b!4863509 e!3040834))

(declare-fun lt!1993069 () Unit!145922)

(assert (=> b!4863509 (= lt!1993069 lt!1993068)))

(declare-fun lt!1993063 () Unit!145922)

(assert (=> b!4863509 (= lt!1993063 (lemmaInv!1200 (transformation!8026 (h!62362 (t!363662 rules!1248)))))))

(declare-fun lt!1993071 () Unit!145922)

(assert (=> b!4863509 (= lt!1993071 (ForallOf!1097 lambda!243344 (_1!33181 lt!1993065)))))

(declare-fun lt!1993066 () Unit!145922)

(assert (=> b!4863509 (= lt!1993066 (ForallOf!1097 lambda!243344 (seqFromList!5893 (list!17460 (_1!33181 lt!1993065)))))))

(declare-fun lt!1993070 () Option!13771)

(assert (=> b!4863509 (= lt!1993070 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 (t!363662 rules!1248))) (_1!33181 lt!1993065)) (h!62362 (t!363662 rules!1248)) (size!36837 (_1!33181 lt!1993065)) (list!17460 (_1!33181 lt!1993065))) (_2!33181 lt!1993065))))))

(declare-fun lt!1993064 () Unit!145922)

(assert (=> b!4863509 (= lt!1993064 (lemmaEqSameImage!1054 (transformation!8026 (h!62362 (t!363662 rules!1248))) (_1!33181 lt!1993065) (seqFromList!5893 (list!17460 (_1!33181 lt!1993065)))))))

(declare-fun b!4863510 () Bool)

(assert (=> b!4863510 (= e!3040835 None!13770)))

(declare-fun b!4863511 () Bool)

(declare-fun e!3040832 () Bool)

(declare-fun e!3040831 () Bool)

(assert (=> b!4863511 (= e!3040832 e!3040831)))

(declare-fun res!2076281 () Bool)

(assert (=> b!4863511 (=> res!2076281 e!3040831)))

(declare-fun lt!1993067 () Option!13771)

(assert (=> b!4863511 (= res!2076281 (not (isDefined!10840 lt!1993067)))))

(declare-fun d!1560876 () Bool)

(assert (=> d!1560876 e!3040832))

(declare-fun res!2076282 () Bool)

(assert (=> d!1560876 (=> (not res!2076282) (not e!3040832))))

(assert (=> d!1560876 (= res!2076282 (= (isDefined!10840 lt!1993067) (isDefined!10841 (maxPrefixOneRule!3486 thiss!11777 (h!62362 (t!363662 rules!1248)) (list!17460 input!661)))))))

(assert (=> d!1560876 (= lt!1993067 e!3040835)))

(declare-fun c!827143 () Bool)

(assert (=> d!1560876 (= c!827143 (isEmpty!29907 (_1!33181 lt!1993065)))))

(assert (=> d!1560876 (= lt!1993065 (findLongestMatchWithZipperSequenceV2!130 (regex!8026 (h!62362 (t!363662 rules!1248))) input!661 totalInput!332))))

(assert (=> d!1560876 (ruleValid!3625 thiss!11777 (h!62362 (t!363662 rules!1248)))))

(assert (=> d!1560876 (= (maxPrefixOneRuleZipperSequenceV2!254 thiss!11777 (h!62362 (t!363662 rules!1248)) input!661 totalInput!332) lt!1993067)))

(declare-fun e!3040833 () Bool)

(declare-fun b!4863512 () Bool)

(assert (=> b!4863512 (= e!3040833 (= (list!17460 (_2!33172 (get!19216 lt!1993067))) (_2!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 (t!363662 rules!1248)) (list!17460 input!661))))))))

(declare-fun b!4863513 () Bool)

(assert (=> b!4863513 (= e!3040831 e!3040833)))

(declare-fun res!2076279 () Bool)

(assert (=> b!4863513 (=> (not res!2076279) (not e!3040833))))

(assert (=> b!4863513 (= res!2076279 (= (_1!33172 (get!19216 lt!1993067)) (_1!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 (t!363662 rules!1248)) (list!17460 input!661))))))))

(assert (= (and d!1560876 c!827143) b!4863510))

(assert (= (and d!1560876 (not c!827143)) b!4863509))

(assert (= (and b!4863509 (not res!2076280)) b!4863508))

(assert (= (and d!1560876 res!2076282) b!4863511))

(assert (= (and b!4863511 (not res!2076281)) b!4863513))

(assert (= (and b!4863513 res!2076279) b!4863512))

(declare-fun m!5861246 () Bool)

(assert (=> b!4863513 m!5861246))

(assert (=> b!4863513 m!5860130))

(assert (=> b!4863513 m!5860130))

(assert (=> b!4863513 m!5861218))

(assert (=> b!4863513 m!5861218))

(declare-fun m!5861248 () Bool)

(assert (=> b!4863513 m!5861248))

(assert (=> b!4863512 m!5861218))

(assert (=> b!4863512 m!5861248))

(assert (=> b!4863512 m!5860130))

(assert (=> b!4863512 m!5861246))

(assert (=> b!4863512 m!5860130))

(assert (=> b!4863512 m!5861218))

(declare-fun m!5861250 () Bool)

(assert (=> b!4863512 m!5861250))

(assert (=> b!4863508 m!5861026))

(declare-fun m!5861252 () Bool)

(assert (=> b!4863508 m!5861252))

(assert (=> b!4863508 m!5861026))

(assert (=> b!4863508 m!5861252))

(declare-fun m!5861254 () Bool)

(assert (=> b!4863508 m!5861254))

(declare-fun m!5861256 () Bool)

(assert (=> b!4863508 m!5861256))

(declare-fun m!5861258 () Bool)

(assert (=> d!1560876 m!5861258))

(assert (=> d!1560876 m!5861218))

(declare-fun m!5861260 () Bool)

(assert (=> d!1560876 m!5861260))

(declare-fun m!5861262 () Bool)

(assert (=> d!1560876 m!5861262))

(assert (=> d!1560876 m!5860130))

(declare-fun m!5861264 () Bool)

(assert (=> d!1560876 m!5861264))

(declare-fun m!5861266 () Bool)

(assert (=> d!1560876 m!5861266))

(assert (=> d!1560876 m!5860130))

(assert (=> d!1560876 m!5861218))

(assert (=> b!4863511 m!5861258))

(declare-fun m!5861268 () Bool)

(assert (=> b!4863509 m!5861268))

(declare-fun m!5861270 () Bool)

(assert (=> b!4863509 m!5861270))

(assert (=> b!4863509 m!5861270))

(declare-fun m!5861272 () Bool)

(assert (=> b!4863509 m!5861272))

(assert (=> b!4863509 m!5861026))

(assert (=> b!4863509 m!5860130))

(declare-fun m!5861274 () Bool)

(assert (=> b!4863509 m!5861274))

(declare-fun m!5861276 () Bool)

(assert (=> b!4863509 m!5861276))

(declare-fun m!5861278 () Bool)

(assert (=> b!4863509 m!5861278))

(declare-fun m!5861280 () Bool)

(assert (=> b!4863509 m!5861280))

(assert (=> b!4863509 m!5861252))

(declare-fun m!5861282 () Bool)

(assert (=> b!4863509 m!5861282))

(assert (=> b!4863509 m!5861268))

(assert (=> b!4863509 m!5861026))

(assert (=> b!4863509 m!5861252))

(assert (=> b!4863509 m!5861254))

(assert (=> b!4863509 m!5861270))

(declare-fun m!5861284 () Bool)

(assert (=> b!4863509 m!5861284))

(declare-fun m!5861286 () Bool)

(assert (=> b!4863509 m!5861286))

(assert (=> bm!337815 d!1560876))

(declare-fun d!1560878 () Bool)

(declare-fun res!2076287 () Bool)

(declare-fun e!3040840 () Bool)

(assert (=> d!1560878 (=> (not res!2076287) (not e!3040840))))

(declare-fun validRegex!5863 (Regex!13101) Bool)

(assert (=> d!1560878 (= res!2076287 (validRegex!5863 (regex!8026 (h!62362 rules!1248))))))

(assert (=> d!1560878 (= (ruleValid!3625 thiss!11777 (h!62362 rules!1248)) e!3040840)))

(declare-fun b!4863520 () Bool)

(declare-fun res!2076288 () Bool)

(assert (=> b!4863520 (=> (not res!2076288) (not e!3040840))))

(declare-fun nullable!4536 (Regex!13101) Bool)

(assert (=> b!4863520 (= res!2076288 (not (nullable!4536 (regex!8026 (h!62362 rules!1248)))))))

(declare-fun b!4863521 () Bool)

(assert (=> b!4863521 (= e!3040840 (not (= (tag!8890 (h!62362 rules!1248)) (String!63099 ""))))))

(assert (= (and d!1560878 res!2076287) b!4863520))

(assert (= (and b!4863520 res!2076288) b!4863521))

(declare-fun m!5861288 () Bool)

(assert (=> d!1560878 m!5861288))

(declare-fun m!5861290 () Bool)

(assert (=> b!4863520 m!5861290))

(assert (=> b!4862908 d!1560878))

(declare-fun d!1560880 () Bool)

(assert (=> d!1560880 (= (get!19216 lt!1992897) (v!49672 lt!1992897))))

(assert (=> b!4862993 d!1560880))

(declare-fun d!1560882 () Bool)

(assert (=> d!1560882 (= (list!17460 (_2!33172 (get!19216 lt!1992897))) (list!17462 (c!826974 (_2!33172 (get!19216 lt!1992897)))))))

(declare-fun bs!1174067 () Bool)

(assert (= bs!1174067 d!1560882))

(declare-fun m!5861292 () Bool)

(assert (=> bs!1174067 m!5861292))

(assert (=> b!4862993 d!1560882))

(declare-fun d!1560884 () Bool)

(assert (=> d!1560884 (= (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))) (v!49674 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> b!4862993 d!1560884))

(assert (=> b!4862993 d!1560530))

(declare-fun b!4863522 () Bool)

(declare-fun res!2076295 () Bool)

(declare-fun e!3040842 () Bool)

(assert (=> b!4863522 (=> (not res!2076295) (not e!3040842))))

(declare-fun lt!1993077 () Option!13773)

(assert (=> b!4863522 (= res!2076295 (matchR!6487 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1993077)))) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993077))))))))

(declare-fun d!1560886 () Bool)

(declare-fun e!3040843 () Bool)

(assert (=> d!1560886 e!3040843))

(declare-fun res!2076293 () Bool)

(assert (=> d!1560886 (=> res!2076293 e!3040843)))

(assert (=> d!1560886 (= res!2076293 (isEmpty!29894 lt!1993077))))

(declare-fun e!3040841 () Option!13773)

(assert (=> d!1560886 (= lt!1993077 e!3040841)))

(declare-fun c!827144 () Bool)

(assert (=> d!1560886 (= c!827144 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1993075 () Unit!145922)

(declare-fun lt!1993074 () Unit!145922)

(assert (=> d!1560886 (= lt!1993075 lt!1993074)))

(assert (=> d!1560886 (isPrefix!4762 (list!17460 (_2!33172 (v!49672 lt!1992698))) (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1560886 (= lt!1993074 (lemmaIsPrefixRefl!3159 (list!17460 (_2!33172 (v!49672 lt!1992698))) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1560886 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560886 (= (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1993077)))

(declare-fun b!4863523 () Bool)

(declare-fun res!2076289 () Bool)

(assert (=> b!4863523 (=> (not res!2076289) (not e!3040842))))

(assert (=> b!4863523 (= res!2076289 (= (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993077)))) (originalCharacters!8351 (_1!33177 (get!19217 lt!1993077)))))))

(declare-fun b!4863524 () Bool)

(declare-fun res!2076290 () Bool)

(assert (=> b!4863524 (=> (not res!2076290) (not e!3040842))))

(assert (=> b!4863524 (= res!2076290 (= (++!12171 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993077)))) (_2!33177 (get!19217 lt!1993077))) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863525 () Bool)

(assert (=> b!4863525 (= e!3040842 (contains!19383 rules!1248 (rule!11144 (_1!33177 (get!19217 lt!1993077)))))))

(declare-fun b!4863526 () Bool)

(declare-fun call!337828 () Option!13773)

(assert (=> b!4863526 (= e!3040841 call!337828)))

(declare-fun b!4863527 () Bool)

(declare-fun res!2076291 () Bool)

(assert (=> b!4863527 (=> (not res!2076291) (not e!3040842))))

(assert (=> b!4863527 (= res!2076291 (= (value!257885 (_1!33177 (get!19217 lt!1993077))) (apply!13497 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1993077)))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1993077)))))))))

(declare-fun bm!337823 () Bool)

(assert (=> bm!337823 (= call!337828 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863528 () Bool)

(declare-fun lt!1993073 () Option!13773)

(declare-fun lt!1993076 () Option!13773)

(assert (=> b!4863528 (= e!3040841 (ite (and ((_ is None!13772) lt!1993073) ((_ is None!13772) lt!1993076)) None!13772 (ite ((_ is None!13772) lt!1993076) lt!1993073 (ite ((_ is None!13772) lt!1993073) lt!1993076 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1993073))) (size!36832 (_1!33177 (v!49674 lt!1993076)))) lt!1993073 lt!1993076)))))))

(assert (=> b!4863528 (= lt!1993073 call!337828)))

(assert (=> b!4863528 (= lt!1993076 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863529 () Bool)

(assert (=> b!4863529 (= e!3040843 e!3040842)))

(declare-fun res!2076292 () Bool)

(assert (=> b!4863529 (=> (not res!2076292) (not e!3040842))))

(assert (=> b!4863529 (= res!2076292 (isDefined!10841 lt!1993077))))

(declare-fun b!4863530 () Bool)

(declare-fun res!2076294 () Bool)

(assert (=> b!4863530 (=> (not res!2076294) (not e!3040842))))

(assert (=> b!4863530 (= res!2076294 (< (size!36838 (_2!33177 (get!19217 lt!1993077))) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(assert (= (and d!1560886 c!827144) b!4863526))

(assert (= (and d!1560886 (not c!827144)) b!4863528))

(assert (= (or b!4863526 b!4863528) bm!337823))

(assert (= (and d!1560886 (not res!2076293)) b!4863529))

(assert (= (and b!4863529 res!2076292) b!4863523))

(assert (= (and b!4863523 res!2076289) b!4863530))

(assert (= (and b!4863530 res!2076294) b!4863524))

(assert (= (and b!4863524 res!2076290) b!4863527))

(assert (= (and b!4863527 res!2076291) b!4863522))

(assert (= (and b!4863522 res!2076295) b!4863525))

(declare-fun m!5861294 () Bool)

(assert (=> b!4863522 m!5861294))

(declare-fun m!5861296 () Bool)

(assert (=> b!4863522 m!5861296))

(assert (=> b!4863522 m!5861296))

(declare-fun m!5861298 () Bool)

(assert (=> b!4863522 m!5861298))

(assert (=> b!4863522 m!5861298))

(declare-fun m!5861300 () Bool)

(assert (=> b!4863522 m!5861300))

(assert (=> b!4863525 m!5861294))

(declare-fun m!5861302 () Bool)

(assert (=> b!4863525 m!5861302))

(assert (=> b!4863527 m!5861294))

(declare-fun m!5861304 () Bool)

(assert (=> b!4863527 m!5861304))

(assert (=> b!4863527 m!5861304))

(declare-fun m!5861306 () Bool)

(assert (=> b!4863527 m!5861306))

(assert (=> b!4863523 m!5861294))

(assert (=> b!4863523 m!5861296))

(assert (=> b!4863523 m!5861296))

(assert (=> b!4863523 m!5861298))

(declare-fun m!5861308 () Bool)

(assert (=> b!4863529 m!5861308))

(assert (=> b!4863530 m!5861294))

(declare-fun m!5861310 () Bool)

(assert (=> b!4863530 m!5861310))

(assert (=> b!4863530 m!5860108))

(assert (=> b!4863530 m!5860254))

(declare-fun m!5861312 () Bool)

(assert (=> d!1560886 m!5861312))

(assert (=> d!1560886 m!5860108))

(assert (=> d!1560886 m!5860108))

(declare-fun m!5861314 () Bool)

(assert (=> d!1560886 m!5861314))

(assert (=> d!1560886 m!5860108))

(assert (=> d!1560886 m!5860108))

(declare-fun m!5861316 () Bool)

(assert (=> d!1560886 m!5861316))

(assert (=> d!1560886 m!5860322))

(assert (=> b!4863528 m!5860108))

(declare-fun m!5861318 () Bool)

(assert (=> b!4863528 m!5861318))

(assert (=> bm!337823 m!5860108))

(declare-fun m!5861320 () Bool)

(assert (=> bm!337823 m!5861320))

(assert (=> b!4863524 m!5861294))

(assert (=> b!4863524 m!5861296))

(assert (=> b!4863524 m!5861296))

(assert (=> b!4863524 m!5861298))

(assert (=> b!4863524 m!5861298))

(declare-fun m!5861322 () Bool)

(assert (=> b!4863524 m!5861322))

(assert (=> b!4862993 d!1560886))

(declare-fun lt!1993082 () Option!13773)

(declare-fun d!1560888 () Bool)

(assert (=> d!1560888 (= lt!1993082 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)))))

(declare-fun e!3040844 () Option!13773)

(assert (=> d!1560888 (= lt!1993082 e!3040844)))

(declare-fun c!827145 () Bool)

(assert (=> d!1560888 (= c!827145 (and ((_ is Cons!55914) (t!363662 rules!1248)) ((_ is Nil!55914) (t!363662 (t!363662 rules!1248)))))))

(declare-fun lt!1993081 () Unit!145922)

(declare-fun lt!1993078 () Unit!145922)

(assert (=> d!1560888 (= lt!1993081 lt!1993078)))

(assert (=> d!1560888 (isPrefix!4762 (list!17460 input!661) (list!17460 input!661))))

(assert (=> d!1560888 (= lt!1993078 (lemmaIsPrefixRefl!3159 (list!17460 input!661) (list!17460 input!661)))))

(assert (=> d!1560888 (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248))))

(assert (=> d!1560888 (= (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)) lt!1993082)))

(declare-fun bm!337824 () Bool)

(declare-fun call!337829 () Option!13773)

(assert (=> bm!337824 (= call!337829 (maxPrefixOneRuleZipper!221 thiss!11777 (h!62362 (t!363662 rules!1248)) (list!17460 input!661)))))

(declare-fun b!4863531 () Bool)

(assert (=> b!4863531 (= e!3040844 call!337829)))

(declare-fun b!4863532 () Bool)

(declare-fun lt!1993080 () Option!13773)

(declare-fun lt!1993079 () Option!13773)

(assert (=> b!4863532 (= e!3040844 (ite (and ((_ is None!13772) lt!1993080) ((_ is None!13772) lt!1993079)) None!13772 (ite ((_ is None!13772) lt!1993079) lt!1993080 (ite ((_ is None!13772) lt!1993080) lt!1993079 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1993080))) (size!36832 (_1!33177 (v!49674 lt!1993079)))) lt!1993080 lt!1993079)))))))

(assert (=> b!4863532 (= lt!1993080 call!337829)))

(assert (=> b!4863532 (= lt!1993079 (maxPrefixZipper!559 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661)))))

(assert (= (and d!1560888 c!827145) b!4863531))

(assert (= (and d!1560888 (not c!827145)) b!4863532))

(assert (= (or b!4863531 b!4863532) bm!337824))

(assert (=> d!1560888 m!5860130))

(assert (=> d!1560888 m!5860396))

(assert (=> d!1560888 m!5860130))

(assert (=> d!1560888 m!5860130))

(assert (=> d!1560888 m!5860392))

(assert (=> d!1560888 m!5860130))

(assert (=> d!1560888 m!5860130))

(assert (=> d!1560888 m!5860394))

(assert (=> d!1560888 m!5860498))

(assert (=> bm!337824 m!5860130))

(declare-fun m!5861324 () Bool)

(assert (=> bm!337824 m!5861324))

(assert (=> b!4863532 m!5860130))

(declare-fun m!5861326 () Bool)

(assert (=> b!4863532 m!5861326))

(assert (=> d!1560772 d!1560888))

(declare-fun d!1560890 () Bool)

(assert (=> d!1560890 (isPrefix!4762 lt!1992974 lt!1992973)))

(declare-fun lt!1993083 () Unit!145922)

(assert (=> d!1560890 (= lt!1993083 (choose!35570 lt!1992974 lt!1992973))))

(assert (=> d!1560890 (= (lemmaIsPrefixRefl!3159 lt!1992974 lt!1992973) lt!1993083)))

(declare-fun bs!1174068 () Bool)

(assert (= bs!1174068 d!1560890))

(assert (=> bs!1174068 m!5860910))

(declare-fun m!5861328 () Bool)

(assert (=> bs!1174068 m!5861328))

(assert (=> d!1560772 d!1560890))

(declare-fun d!1560892 () Bool)

(assert (=> d!1560892 (= (isDefined!10841 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))) (not (isEmpty!29894 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661)))))))

(declare-fun bs!1174069 () Bool)

(assert (= bs!1174069 d!1560892))

(assert (=> bs!1174069 m!5860418))

(declare-fun m!5861330 () Bool)

(assert (=> bs!1174069 m!5861330))

(assert (=> d!1560772 d!1560892))

(declare-fun bs!1174070 () Bool)

(declare-fun d!1560894 () Bool)

(assert (= bs!1174070 (and d!1560894 d!1560626)))

(declare-fun lambda!243345 () Int)

(assert (=> bs!1174070 (= lambda!243345 lambda!243315)))

(declare-fun bs!1174071 () Bool)

(assert (= bs!1174071 (and d!1560894 d!1560694)))

(assert (=> bs!1174071 (= lambda!243345 lambda!243329)))

(assert (=> d!1560894 true))

(declare-fun lt!1993084 () Bool)

(assert (=> d!1560894 (= lt!1993084 (forall!13043 (t!363662 rules!1248) lambda!243345))))

(declare-fun e!3040845 () Bool)

(assert (=> d!1560894 (= lt!1993084 e!3040845)))

(declare-fun res!2076297 () Bool)

(assert (=> d!1560894 (=> res!2076297 e!3040845)))

(assert (=> d!1560894 (= res!2076297 (not ((_ is Cons!55914) (t!363662 rules!1248))))))

(assert (=> d!1560894 (= (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248)) lt!1993084)))

(declare-fun b!4863533 () Bool)

(declare-fun e!3040846 () Bool)

(assert (=> b!4863533 (= e!3040845 e!3040846)))

(declare-fun res!2076296 () Bool)

(assert (=> b!4863533 (=> (not res!2076296) (not e!3040846))))

(assert (=> b!4863533 (= res!2076296 (ruleValid!3625 thiss!11777 (h!62362 (t!363662 rules!1248))))))

(declare-fun b!4863534 () Bool)

(assert (=> b!4863534 (= e!3040846 (rulesValidInductive!3015 thiss!11777 (t!363662 (t!363662 rules!1248))))))

(assert (= (and d!1560894 (not res!2076297)) b!4863533))

(assert (= (and b!4863533 res!2076296) b!4863534))

(declare-fun m!5861332 () Bool)

(assert (=> d!1560894 m!5861332))

(assert (=> b!4863533 m!5861262))

(declare-fun m!5861334 () Bool)

(assert (=> b!4863534 m!5861334))

(assert (=> d!1560772 d!1560894))

(declare-fun d!1560896 () Bool)

(declare-fun e!3040849 () Bool)

(assert (=> d!1560896 e!3040849))

(declare-fun res!2076299 () Bool)

(assert (=> d!1560896 (=> res!2076299 e!3040849)))

(declare-fun lt!1993085 () Bool)

(assert (=> d!1560896 (= res!2076299 (not lt!1993085))))

(declare-fun e!3040848 () Bool)

(assert (=> d!1560896 (= lt!1993085 e!3040848)))

(declare-fun res!2076301 () Bool)

(assert (=> d!1560896 (=> res!2076301 e!3040848)))

(assert (=> d!1560896 (= res!2076301 ((_ is Nil!55913) lt!1992974))))

(assert (=> d!1560896 (= (isPrefix!4762 lt!1992974 lt!1992973) lt!1993085)))

(declare-fun b!4863538 () Bool)

(assert (=> b!4863538 (= e!3040849 (>= (size!36838 lt!1992973) (size!36838 lt!1992974)))))

(declare-fun b!4863535 () Bool)

(declare-fun e!3040847 () Bool)

(assert (=> b!4863535 (= e!3040848 e!3040847)))

(declare-fun res!2076300 () Bool)

(assert (=> b!4863535 (=> (not res!2076300) (not e!3040847))))

(assert (=> b!4863535 (= res!2076300 (not ((_ is Nil!55913) lt!1992973)))))

(declare-fun b!4863537 () Bool)

(assert (=> b!4863537 (= e!3040847 (isPrefix!4762 (tail!9555 lt!1992974) (tail!9555 lt!1992973)))))

(declare-fun b!4863536 () Bool)

(declare-fun res!2076298 () Bool)

(assert (=> b!4863536 (=> (not res!2076298) (not e!3040847))))

(assert (=> b!4863536 (= res!2076298 (= (head!10409 lt!1992974) (head!10409 lt!1992973)))))

(assert (= (and d!1560896 (not res!2076301)) b!4863535))

(assert (= (and b!4863535 res!2076300) b!4863536))

(assert (= (and b!4863536 res!2076298) b!4863537))

(assert (= (and d!1560896 (not res!2076299)) b!4863538))

(declare-fun m!5861336 () Bool)

(assert (=> b!4863538 m!5861336))

(declare-fun m!5861338 () Bool)

(assert (=> b!4863538 m!5861338))

(declare-fun m!5861340 () Bool)

(assert (=> b!4863537 m!5861340))

(declare-fun m!5861342 () Bool)

(assert (=> b!4863537 m!5861342))

(assert (=> b!4863537 m!5861340))

(assert (=> b!4863537 m!5861342))

(declare-fun m!5861344 () Bool)

(assert (=> b!4863537 m!5861344))

(declare-fun m!5861346 () Bool)

(assert (=> b!4863536 m!5861346))

(declare-fun m!5861348 () Bool)

(assert (=> b!4863536 m!5861348))

(assert (=> d!1560772 d!1560896))

(assert (=> d!1560772 d!1560592))

(declare-fun d!1560898 () Bool)

(assert (=> d!1560898 (= (isDefined!10840 lt!1992971) (not (isEmpty!29895 lt!1992971)))))

(declare-fun bs!1174072 () Bool)

(assert (= bs!1174072 d!1560898))

(declare-fun m!5861350 () Bool)

(assert (=> bs!1174072 m!5861350))

(assert (=> d!1560772 d!1560898))

(declare-fun d!1560900 () Bool)

(declare-fun e!3040850 () Bool)

(assert (=> d!1560900 e!3040850))

(declare-fun res!2076302 () Bool)

(assert (=> d!1560900 (=> (not res!2076302) (not e!3040850))))

(assert (=> d!1560900 (= res!2076302 (isBalanced!3948 (prepend!1390 (c!826976 (_1!33173 lt!1992959)) (_1!33172 (v!49672 lt!1992960)))))))

(declare-fun lt!1993086 () BalanceConc!28570)

(assert (=> d!1560900 (= lt!1993086 (BalanceConc!28571 (prepend!1390 (c!826976 (_1!33173 lt!1992959)) (_1!33172 (v!49672 lt!1992960)))))))

(assert (=> d!1560900 (= (prepend!1388 (_1!33173 lt!1992959) (_1!33172 (v!49672 lt!1992960))) lt!1993086)))

(declare-fun b!4863539 () Bool)

(assert (=> b!4863539 (= e!3040850 (= (list!17464 lt!1993086) (Cons!55915 (_1!33172 (v!49672 lt!1992960)) (list!17464 (_1!33173 lt!1992959)))))))

(assert (= (and d!1560900 res!2076302) b!4863539))

(declare-fun m!5861352 () Bool)

(assert (=> d!1560900 m!5861352))

(assert (=> d!1560900 m!5861352))

(declare-fun m!5861354 () Bool)

(assert (=> d!1560900 m!5861354))

(declare-fun m!5861356 () Bool)

(assert (=> b!4863539 m!5861356))

(declare-fun m!5861358 () Bool)

(assert (=> b!4863539 m!5861358))

(assert (=> b!4863197 d!1560900))

(declare-fun b!4863540 () Bool)

(declare-fun e!3040852 () Bool)

(declare-fun lt!1993089 () tuple2!59740)

(assert (=> b!4863540 (= e!3040852 (= (list!17460 (_2!33173 lt!1993089)) (list!17460 (_2!33172 (v!49672 lt!1992960)))))))

(declare-fun d!1560902 () Bool)

(declare-fun e!3040853 () Bool)

(assert (=> d!1560902 e!3040853))

(declare-fun res!2076304 () Bool)

(assert (=> d!1560902 (=> (not res!2076304) (not e!3040853))))

(assert (=> d!1560902 (= res!2076304 e!3040852)))

(declare-fun c!827146 () Bool)

(assert (=> d!1560902 (= c!827146 (> (size!36836 (_1!33173 lt!1993089)) 0))))

(declare-fun e!3040851 () tuple2!59740)

(assert (=> d!1560902 (= lt!1993089 e!3040851)))

(declare-fun c!827147 () Bool)

(declare-fun lt!1993088 () Option!13771)

(assert (=> d!1560902 (= c!827147 ((_ is Some!13770) lt!1993088))))

(assert (=> d!1560902 (= lt!1993088 (maxPrefixZipperSequence!1221 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992960))))))

(assert (=> d!1560902 (= (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992960))) lt!1993089)))

(declare-fun b!4863541 () Bool)

(assert (=> b!4863541 (= e!3040853 (= (list!17460 (_2!33173 lt!1993089)) (_2!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992960)))))))))

(declare-fun b!4863542 () Bool)

(declare-fun e!3040854 () Bool)

(assert (=> b!4863542 (= e!3040852 e!3040854)))

(declare-fun res!2076303 () Bool)

(assert (=> b!4863542 (= res!2076303 (< (size!36837 (_2!33173 lt!1993089)) (size!36837 (_2!33172 (v!49672 lt!1992960)))))))

(assert (=> b!4863542 (=> (not res!2076303) (not e!3040854))))

(declare-fun b!4863543 () Bool)

(assert (=> b!4863543 (= e!3040851 (tuple2!59741 (BalanceConc!28571 Empty!14564) (_2!33172 (v!49672 lt!1992960))))))

(declare-fun b!4863544 () Bool)

(declare-fun lt!1993087 () tuple2!59740)

(assert (=> b!4863544 (= e!3040851 (tuple2!59741 (prepend!1388 (_1!33173 lt!1993087) (_1!33172 (v!49672 lt!1993088))) (_2!33173 lt!1993087)))))

(assert (=> b!4863544 (= lt!1993087 (lexRec!843 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1993088))))))

(declare-fun b!4863545 () Bool)

(assert (=> b!4863545 (= e!3040854 (not (isEmpty!29893 (_1!33173 lt!1993089))))))

(declare-fun b!4863546 () Bool)

(declare-fun res!2076305 () Bool)

(assert (=> b!4863546 (=> (not res!2076305) (not e!3040853))))

(assert (=> b!4863546 (= res!2076305 (= (list!17464 (_1!33173 lt!1993089)) (_1!33176 (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992960)))))))))

(assert (= (and d!1560902 c!827147) b!4863544))

(assert (= (and d!1560902 (not c!827147)) b!4863543))

(assert (= (and d!1560902 c!827146) b!4863542))

(assert (= (and d!1560902 (not c!827146)) b!4863540))

(assert (= (and b!4863542 res!2076303) b!4863545))

(assert (= (and d!1560902 res!2076304) b!4863546))

(assert (= (and b!4863546 res!2076305) b!4863541))

(declare-fun m!5861360 () Bool)

(assert (=> b!4863542 m!5861360))

(declare-fun m!5861362 () Bool)

(assert (=> b!4863542 m!5861362))

(declare-fun m!5861364 () Bool)

(assert (=> d!1560902 m!5861364))

(declare-fun m!5861366 () Bool)

(assert (=> d!1560902 m!5861366))

(declare-fun m!5861368 () Bool)

(assert (=> b!4863541 m!5861368))

(declare-fun m!5861370 () Bool)

(assert (=> b!4863541 m!5861370))

(assert (=> b!4863541 m!5861370))

(declare-fun m!5861372 () Bool)

(assert (=> b!4863541 m!5861372))

(declare-fun m!5861374 () Bool)

(assert (=> b!4863544 m!5861374))

(declare-fun m!5861376 () Bool)

(assert (=> b!4863544 m!5861376))

(assert (=> b!4863540 m!5861368))

(assert (=> b!4863540 m!5861370))

(declare-fun m!5861378 () Bool)

(assert (=> b!4863545 m!5861378))

(declare-fun m!5861380 () Bool)

(assert (=> b!4863546 m!5861380))

(assert (=> b!4863546 m!5861370))

(assert (=> b!4863546 m!5861370))

(assert (=> b!4863546 m!5861372))

(assert (=> b!4863197 d!1560902))

(declare-fun d!1560904 () Bool)

(declare-fun lt!1993090 () Int)

(assert (=> d!1560904 (>= lt!1993090 0)))

(declare-fun e!3040855 () Int)

(assert (=> d!1560904 (= lt!1993090 e!3040855)))

(declare-fun c!827148 () Bool)

(assert (=> d!1560904 (= c!827148 ((_ is Nil!55913) Nil!55913))))

(assert (=> d!1560904 (= (size!36838 Nil!55913) lt!1993090)))

(declare-fun b!4863547 () Bool)

(assert (=> b!4863547 (= e!3040855 0)))

(declare-fun b!4863548 () Bool)

(assert (=> b!4863548 (= e!3040855 (+ 1 (size!36838 (t!363661 Nil!55913))))))

(assert (= (and d!1560904 c!827148) b!4863547))

(assert (= (and d!1560904 (not c!827148)) b!4863548))

(declare-fun m!5861382 () Bool)

(assert (=> b!4863548 m!5861382))

(assert (=> b!4863324 d!1560904))

(declare-fun bs!1174073 () Bool)

(declare-fun d!1560908 () Bool)

(assert (= bs!1174073 (and d!1560908 d!1560758)))

(declare-fun lambda!243348 () Int)

(assert (=> bs!1174073 (= lambda!243348 lambda!243332)))

(declare-fun b!4863561 () Bool)

(declare-fun e!3040862 () Bool)

(assert (=> b!4863561 (= e!3040862 true)))

(assert (=> d!1560908 e!3040862))

(assert (= d!1560908 b!4863561))

(assert (=> b!4863561 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22426 order!25177 lambda!243348))))

(assert (=> b!4863561 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22426 order!25177 lambda!243348))))

(declare-fun dynLambda!22428 (Int BalanceConc!28568) TokenValue!8336)

(assert (=> d!1560908 (= (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034)) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(declare-fun lt!1993093 () Unit!145922)

(declare-fun Forall2of!429 (Int BalanceConc!28568 BalanceConc!28568) Unit!145922)

(assert (=> d!1560908 (= lt!1993093 (Forall2of!429 lambda!243348 (_1!33181 lt!1993034) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(assert (=> d!1560908 (= (list!17460 (_1!33181 lt!1993034)) (list!17460 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(assert (=> d!1560908 (= (lemmaEqSameImage!1054 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993034) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))) lt!1993093)))

(declare-fun b_lambda!193413 () Bool)

(assert (=> (not b_lambda!193413) (not d!1560908)))

(declare-fun t!363691 () Bool)

(declare-fun tb!257597 () Bool)

(assert (=> (and b!4862549 (= (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363691) tb!257597))

(declare-fun result!320688 () Bool)

(declare-fun inv!21 (TokenValue!8336) Bool)

(assert (=> tb!257597 (= result!320688 (inv!21 (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034))))))

(declare-fun m!5861396 () Bool)

(assert (=> tb!257597 m!5861396))

(assert (=> d!1560908 t!363691))

(declare-fun b_and!342453 () Bool)

(assert (= b_and!342423 (and (=> t!363691 result!320688) b_and!342453)))

(declare-fun t!363693 () Bool)

(declare-fun tb!257599 () Bool)

(assert (=> (and b!4862793 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363693) tb!257599))

(declare-fun result!320692 () Bool)

(assert (= result!320692 result!320688))

(assert (=> d!1560908 t!363693))

(declare-fun b_and!342455 () Bool)

(assert (= b_and!342435 (and (=> t!363693 result!320692) b_and!342455)))

(declare-fun t!363695 () Bool)

(declare-fun tb!257601 () Bool)

(assert (=> (and b!4863416 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363695) tb!257601))

(declare-fun result!320694 () Bool)

(assert (= result!320694 result!320688))

(assert (=> d!1560908 t!363695))

(declare-fun b_and!342457 () Bool)

(assert (= b_and!342439 (and (=> t!363695 result!320694) b_and!342457)))

(declare-fun b_lambda!193415 () Bool)

(assert (=> (not b_lambda!193415) (not d!1560908)))

(declare-fun t!363697 () Bool)

(declare-fun tb!257603 () Bool)

(assert (=> (and b!4862549 (= (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363697) tb!257603))

(declare-fun result!320696 () Bool)

(assert (=> tb!257603 (= result!320696 (inv!21 (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034))))))))

(declare-fun m!5861398 () Bool)

(assert (=> tb!257603 m!5861398))

(assert (=> d!1560908 t!363697))

(declare-fun b_and!342459 () Bool)

(assert (= b_and!342453 (and (=> t!363697 result!320696) b_and!342459)))

(declare-fun t!363699 () Bool)

(declare-fun tb!257605 () Bool)

(assert (=> (and b!4862793 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363699) tb!257605))

(declare-fun result!320698 () Bool)

(assert (= result!320698 result!320696))

(assert (=> d!1560908 t!363699))

(declare-fun b_and!342461 () Bool)

(assert (= b_and!342455 (and (=> t!363699 result!320698) b_and!342461)))

(declare-fun t!363701 () Bool)

(declare-fun tb!257607 () Bool)

(assert (=> (and b!4863416 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363701) tb!257607))

(declare-fun result!320700 () Bool)

(assert (= result!320700 result!320696))

(assert (=> d!1560908 t!363701))

(declare-fun b_and!342463 () Bool)

(assert (= b_and!342457 (and (=> t!363701 result!320700) b_and!342463)))

(assert (=> d!1560908 m!5861042))

(assert (=> d!1560908 m!5861044))

(declare-fun m!5861400 () Bool)

(assert (=> d!1560908 m!5861400))

(assert (=> d!1560908 m!5861044))

(declare-fun m!5861402 () Bool)

(assert (=> d!1560908 m!5861402))

(declare-fun m!5861404 () Bool)

(assert (=> d!1560908 m!5861404))

(assert (=> d!1560908 m!5861044))

(declare-fun m!5861406 () Bool)

(assert (=> d!1560908 m!5861406))

(assert (=> b!4863324 d!1560908))

(declare-fun d!1560912 () Bool)

(declare-fun lt!1993094 () Int)

(assert (=> d!1560912 (>= lt!1993094 0)))

(declare-fun e!3040867 () Int)

(assert (=> d!1560912 (= lt!1993094 e!3040867)))

(declare-fun c!827149 () Bool)

(assert (=> d!1560912 (= c!827149 ((_ is Nil!55913) lt!1993041))))

(assert (=> d!1560912 (= (size!36838 lt!1993041) lt!1993094)))

(declare-fun b!4863564 () Bool)

(assert (=> b!4863564 (= e!3040867 0)))

(declare-fun b!4863565 () Bool)

(assert (=> b!4863565 (= e!3040867 (+ 1 (size!36838 (t!363661 lt!1993041))))))

(assert (= (and d!1560912 c!827149) b!4863564))

(assert (= (and d!1560912 (not c!827149)) b!4863565))

(declare-fun m!5861408 () Bool)

(assert (=> b!4863565 m!5861408))

(assert (=> b!4863324 d!1560912))

(declare-fun d!1560914 () Bool)

(declare-fun dynLambda!22429 (Int BalanceConc!28568) Bool)

(assert (=> d!1560914 (dynLambda!22429 lambda!243343 (_1!33181 lt!1993034))))

(declare-fun lt!1993097 () Unit!145922)

(declare-fun choose!35573 (Int BalanceConc!28568) Unit!145922)

(assert (=> d!1560914 (= lt!1993097 (choose!35573 lambda!243343 (_1!33181 lt!1993034)))))

(assert (=> d!1560914 (Forall!1668 lambda!243343)))

(assert (=> d!1560914 (= (ForallOf!1097 lambda!243343 (_1!33181 lt!1993034)) lt!1993097)))

(declare-fun b_lambda!193417 () Bool)

(assert (=> (not b_lambda!193417) (not d!1560914)))

(declare-fun bs!1174074 () Bool)

(assert (= bs!1174074 d!1560914))

(declare-fun m!5861410 () Bool)

(assert (=> bs!1174074 m!5861410))

(declare-fun m!5861412 () Bool)

(assert (=> bs!1174074 m!5861412))

(declare-fun m!5861414 () Bool)

(assert (=> bs!1174074 m!5861414))

(assert (=> b!4863324 d!1560914))

(declare-fun d!1560916 () Bool)

(assert (=> d!1560916 (= (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))) ((_ is Nil!55913) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(assert (=> b!4863324 d!1560916))

(declare-fun d!1560918 () Bool)

(assert (=> d!1560918 (= (apply!13497 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993034)) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034)))))

(declare-fun b_lambda!193419 () Bool)

(assert (=> (not b_lambda!193419) (not d!1560918)))

(assert (=> d!1560918 t!363691))

(declare-fun b_and!342465 () Bool)

(assert (= b_and!342459 (and (=> t!363691 result!320688) b_and!342465)))

(assert (=> d!1560918 t!363693))

(declare-fun b_and!342467 () Bool)

(assert (= b_and!342461 (and (=> t!363693 result!320692) b_and!342467)))

(assert (=> d!1560918 t!363695))

(declare-fun b_and!342469 () Bool)

(assert (= b_and!342463 (and (=> t!363695 result!320694) b_and!342469)))

(assert (=> d!1560918 m!5861404))

(assert (=> b!4863324 d!1560918))

(declare-fun d!1560920 () Bool)

(declare-fun lt!1993098 () Int)

(assert (=> d!1560920 (= lt!1993098 (size!36838 (list!17460 (_1!33181 lt!1993034))))))

(assert (=> d!1560920 (= lt!1993098 (size!36842 (c!826974 (_1!33181 lt!1993034))))))

(assert (=> d!1560920 (= (size!36837 (_1!33181 lt!1993034)) lt!1993098)))

(declare-fun bs!1174075 () Bool)

(assert (= bs!1174075 d!1560920))

(assert (=> bs!1174075 m!5861042))

(assert (=> bs!1174075 m!5861042))

(declare-fun m!5861416 () Bool)

(assert (=> bs!1174075 m!5861416))

(declare-fun m!5861418 () Bool)

(assert (=> bs!1174075 m!5861418))

(assert (=> b!4863324 d!1560920))

(assert (=> b!4863324 d!1560592))

(declare-fun d!1560922 () Bool)

(declare-fun e!3040870 () Bool)

(assert (=> d!1560922 e!3040870))

(declare-fun res!2076316 () Bool)

(assert (=> d!1560922 (=> res!2076316 e!3040870)))

(assert (=> d!1560922 (= res!2076316 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(declare-fun lt!1993101 () Unit!145922)

(declare-fun choose!35574 (Regex!13101 List!56037) Unit!145922)

(assert (=> d!1560922 (= lt!1993101 (choose!35574 (regex!8026 (h!62362 rules!1248)) lt!1993041))))

(assert (=> d!1560922 (validRegex!5863 (regex!8026 (h!62362 rules!1248)))))

(assert (=> d!1560922 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 rules!1248)) lt!1993041) lt!1993101)))

(declare-fun b!4863568 () Bool)

(assert (=> b!4863568 (= e!3040870 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(assert (= (and d!1560922 (not res!2076316)) b!4863568))

(assert (=> d!1560922 m!5861026))

(assert (=> d!1560922 m!5861028))

(assert (=> d!1560922 m!5861030))

(assert (=> d!1560922 m!5861028))

(assert (=> d!1560922 m!5861288))

(assert (=> d!1560922 m!5861056))

(assert (=> d!1560922 m!5861026))

(declare-fun m!5861420 () Bool)

(assert (=> d!1560922 m!5861420))

(assert (=> b!4863568 m!5861026))

(assert (=> b!4863568 m!5861028))

(assert (=> b!4863568 m!5861026))

(assert (=> b!4863568 m!5861028))

(assert (=> b!4863568 m!5861030))

(assert (=> b!4863568 m!5861032))

(assert (=> b!4863324 d!1560922))

(declare-fun d!1560924 () Bool)

(declare-fun e!3040873 () Bool)

(assert (=> d!1560924 e!3040873))

(declare-fun res!2076319 () Bool)

(assert (=> d!1560924 (=> (not res!2076319) (not e!3040873))))

(assert (=> d!1560924 (= res!2076319 (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))))))

(declare-fun Unit!145924 () Unit!145922)

(assert (=> d!1560924 (= (lemmaInv!1200 (transformation!8026 (h!62362 rules!1248))) Unit!145924)))

(declare-fun b!4863571 () Bool)

(assert (=> b!4863571 (= e!3040873 (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))))))

(assert (= (and d!1560924 res!2076319) b!4863571))

(assert (=> d!1560924 m!5860334))

(assert (=> b!4863571 m!5860336))

(assert (=> b!4863324 d!1560924))

(declare-fun b!4863633 () Bool)

(declare-fun e!3040907 () Unit!145922)

(declare-fun Unit!145925 () Unit!145922)

(assert (=> b!4863633 (= e!3040907 Unit!145925)))

(declare-fun b!4863634 () Bool)

(declare-fun e!3040909 () Bool)

(declare-fun lt!1993189 () tuple2!59754)

(assert (=> b!4863634 (= e!3040909 (>= (size!36838 (_1!33180 lt!1993189)) (size!36838 Nil!55913)))))

(declare-fun b!4863635 () Bool)

(declare-fun e!3040906 () tuple2!59754)

(assert (=> b!4863635 (= e!3040906 (tuple2!59755 Nil!55913 lt!1993041))))

(declare-fun b!4863636 () Bool)

(assert (=> b!4863636 (= e!3040906 (tuple2!59755 Nil!55913 Nil!55913))))

(declare-fun b!4863637 () Bool)

(declare-fun e!3040910 () tuple2!59754)

(declare-fun e!3040905 () tuple2!59754)

(assert (=> b!4863637 (= e!3040910 e!3040905)))

(declare-fun c!827165 () Bool)

(assert (=> b!4863637 (= c!827165 (= (size!36838 Nil!55913) (size!36838 lt!1993041)))))

(declare-fun d!1560926 () Bool)

(declare-fun e!3040908 () Bool)

(assert (=> d!1560926 e!3040908))

(declare-fun res!2076352 () Bool)

(assert (=> d!1560926 (=> (not res!2076352) (not e!3040908))))

(assert (=> d!1560926 (= res!2076352 (= (++!12171 (_1!33180 lt!1993189) (_2!33180 lt!1993189)) lt!1993041))))

(assert (=> d!1560926 (= lt!1993189 e!3040910)))

(declare-fun c!827168 () Bool)

(declare-fun lostCause!1068 (Regex!13101) Bool)

(assert (=> d!1560926 (= c!827168 (lostCause!1068 (regex!8026 (h!62362 rules!1248))))))

(declare-fun lt!1993190 () Unit!145922)

(declare-fun Unit!145926 () Unit!145922)

(assert (=> d!1560926 (= lt!1993190 Unit!145926)))

(declare-fun getSuffix!2869 (List!56037 List!56037) List!56037)

(assert (=> d!1560926 (= (getSuffix!2869 lt!1993041 Nil!55913) lt!1993041)))

(declare-fun lt!1993194 () Unit!145922)

(declare-fun lt!1993192 () Unit!145922)

(assert (=> d!1560926 (= lt!1993194 lt!1993192)))

(declare-fun lt!1993200 () List!56037)

(assert (=> d!1560926 (= lt!1993041 lt!1993200)))

(declare-fun lemmaSamePrefixThenSameSuffix!2285 (List!56037 List!56037 List!56037 List!56037 List!56037) Unit!145922)

(assert (=> d!1560926 (= lt!1993192 (lemmaSamePrefixThenSameSuffix!2285 Nil!55913 lt!1993041 Nil!55913 lt!1993200 lt!1993041))))

(assert (=> d!1560926 (= lt!1993200 (getSuffix!2869 lt!1993041 Nil!55913))))

(declare-fun lt!1993201 () Unit!145922)

(declare-fun lt!1993186 () Unit!145922)

(assert (=> d!1560926 (= lt!1993201 lt!1993186)))

(assert (=> d!1560926 (isPrefix!4762 Nil!55913 (++!12171 Nil!55913 lt!1993041))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3105 (List!56037 List!56037) Unit!145922)

(assert (=> d!1560926 (= lt!1993186 (lemmaConcatTwoListThenFirstIsPrefix!3105 Nil!55913 lt!1993041))))

(assert (=> d!1560926 (validRegex!5863 (regex!8026 (h!62362 rules!1248)))))

(assert (=> d!1560926 (= (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)) lt!1993189)))

(declare-fun b!4863638 () Bool)

(declare-fun Unit!145927 () Unit!145922)

(assert (=> b!4863638 (= e!3040907 Unit!145927)))

(declare-fun lt!1993198 () Unit!145922)

(declare-fun call!337847 () Unit!145922)

(assert (=> b!4863638 (= lt!1993198 call!337847)))

(declare-fun call!337852 () Bool)

(assert (=> b!4863638 call!337852))

(declare-fun lt!1993179 () Unit!145922)

(assert (=> b!4863638 (= lt!1993179 lt!1993198)))

(declare-fun lt!1993195 () Unit!145922)

(declare-fun call!337853 () Unit!145922)

(assert (=> b!4863638 (= lt!1993195 call!337853)))

(assert (=> b!4863638 (= lt!1993041 Nil!55913)))

(declare-fun lt!1993182 () Unit!145922)

(assert (=> b!4863638 (= lt!1993182 lt!1993195)))

(assert (=> b!4863638 false))

(declare-fun bm!337841 () Bool)

(declare-fun call!337848 () Bool)

(assert (=> bm!337841 (= call!337848 (nullable!4536 (regex!8026 (h!62362 rules!1248))))))

(declare-fun bm!337842 () Bool)

(declare-fun call!337850 () Regex!13101)

(declare-fun call!337849 () C!26400)

(declare-fun derivativeStep!3861 (Regex!13101 C!26400) Regex!13101)

(assert (=> bm!337842 (= call!337850 (derivativeStep!3861 (regex!8026 (h!62362 rules!1248)) call!337849))))

(declare-fun b!4863639 () Bool)

(declare-fun c!827170 () Bool)

(assert (=> b!4863639 (= c!827170 call!337848)))

(declare-fun lt!1993178 () Unit!145922)

(declare-fun lt!1993196 () Unit!145922)

(assert (=> b!4863639 (= lt!1993178 lt!1993196)))

(declare-fun lt!1993199 () C!26400)

(declare-fun lt!1993177 () List!56037)

(assert (=> b!4863639 (= (++!12171 (++!12171 Nil!55913 (Cons!55913 lt!1993199 Nil!55913)) lt!1993177) lt!1993041)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1312 (List!56037 C!26400 List!56037 List!56037) Unit!145922)

(assert (=> b!4863639 (= lt!1993196 (lemmaMoveElementToOtherListKeepsConcatEq!1312 Nil!55913 lt!1993199 lt!1993177 lt!1993041))))

(assert (=> b!4863639 (= lt!1993177 (tail!9555 lt!1993041))))

(assert (=> b!4863639 (= lt!1993199 (head!10409 lt!1993041))))

(declare-fun lt!1993180 () Unit!145922)

(declare-fun lt!1993176 () Unit!145922)

(assert (=> b!4863639 (= lt!1993180 lt!1993176)))

(assert (=> b!4863639 (isPrefix!4762 (++!12171 Nil!55913 (Cons!55913 (head!10409 (getSuffix!2869 lt!1993041 Nil!55913)) Nil!55913)) lt!1993041)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!694 (List!56037 List!56037) Unit!145922)

(assert (=> b!4863639 (= lt!1993176 (lemmaAddHeadSuffixToPrefixStillPrefix!694 Nil!55913 lt!1993041))))

(declare-fun lt!1993187 () Unit!145922)

(declare-fun lt!1993181 () Unit!145922)

(assert (=> b!4863639 (= lt!1993187 lt!1993181)))

(assert (=> b!4863639 (= lt!1993181 (lemmaAddHeadSuffixToPrefixStillPrefix!694 Nil!55913 lt!1993041))))

(declare-fun lt!1993203 () List!56037)

(assert (=> b!4863639 (= lt!1993203 (++!12171 Nil!55913 (Cons!55913 (head!10409 lt!1993041) Nil!55913)))))

(declare-fun lt!1993188 () Unit!145922)

(assert (=> b!4863639 (= lt!1993188 e!3040907)))

(declare-fun c!827167 () Bool)

(assert (=> b!4863639 (= c!827167 (= (size!36838 Nil!55913) (size!36838 lt!1993041)))))

(declare-fun lt!1993191 () Unit!145922)

(declare-fun lt!1993193 () Unit!145922)

(assert (=> b!4863639 (= lt!1993191 lt!1993193)))

(assert (=> b!4863639 (<= (size!36838 Nil!55913) (size!36838 lt!1993041))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!606 (List!56037 List!56037) Unit!145922)

(assert (=> b!4863639 (= lt!1993193 (lemmaIsPrefixThenSmallerEqSize!606 Nil!55913 lt!1993041))))

(declare-fun e!3040912 () tuple2!59754)

(assert (=> b!4863639 (= e!3040905 e!3040912)))

(declare-fun bm!337843 () Bool)

(assert (=> bm!337843 (= call!337852 (isPrefix!4762 lt!1993041 lt!1993041))))

(declare-fun bm!337844 () Bool)

(assert (=> bm!337844 (= call!337849 (head!10409 lt!1993041))))

(declare-fun b!4863640 () Bool)

(declare-fun e!3040911 () tuple2!59754)

(assert (=> b!4863640 (= e!3040911 (tuple2!59755 Nil!55913 lt!1993041))))

(declare-fun b!4863641 () Bool)

(assert (=> b!4863641 (= e!3040912 e!3040911)))

(declare-fun lt!1993183 () tuple2!59754)

(declare-fun call!337851 () tuple2!59754)

(assert (=> b!4863641 (= lt!1993183 call!337851)))

(declare-fun c!827169 () Bool)

(assert (=> b!4863641 (= c!827169 (isEmpty!29906 (_1!33180 lt!1993183)))))

(declare-fun b!4863642 () Bool)

(declare-fun c!827166 () Bool)

(assert (=> b!4863642 (= c!827166 call!337848)))

(declare-fun lt!1993197 () Unit!145922)

(declare-fun lt!1993184 () Unit!145922)

(assert (=> b!4863642 (= lt!1993197 lt!1993184)))

(assert (=> b!4863642 (= lt!1993041 Nil!55913)))

(assert (=> b!4863642 (= lt!1993184 call!337853)))

(declare-fun lt!1993202 () Unit!145922)

(declare-fun lt!1993185 () Unit!145922)

(assert (=> b!4863642 (= lt!1993202 lt!1993185)))

(assert (=> b!4863642 call!337852))

(assert (=> b!4863642 (= lt!1993185 call!337847)))

(assert (=> b!4863642 (= e!3040905 e!3040906)))

(declare-fun bm!337845 () Bool)

(assert (=> bm!337845 (= call!337847 (lemmaIsPrefixRefl!3159 lt!1993041 lt!1993041))))

(declare-fun bm!337846 () Bool)

(declare-fun call!337846 () List!56037)

(assert (=> bm!337846 (= call!337851 (findLongestMatchInner!1717 call!337850 lt!1993203 (+ (size!36838 Nil!55913) 1) call!337846 lt!1993041 (size!36838 lt!1993041)))))

(declare-fun b!4863643 () Bool)

(assert (=> b!4863643 (= e!3040912 call!337851)))

(declare-fun b!4863644 () Bool)

(assert (=> b!4863644 (= e!3040910 (tuple2!59755 Nil!55913 lt!1993041))))

(declare-fun bm!337847 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1040 (List!56037 List!56037 List!56037) Unit!145922)

(assert (=> bm!337847 (= call!337853 (lemmaIsPrefixSameLengthThenSameList!1040 lt!1993041 Nil!55913 lt!1993041))))

(declare-fun b!4863645 () Bool)

(assert (=> b!4863645 (= e!3040911 lt!1993183)))

(declare-fun bm!337848 () Bool)

(assert (=> bm!337848 (= call!337846 (tail!9555 lt!1993041))))

(declare-fun b!4863646 () Bool)

(assert (=> b!4863646 (= e!3040908 e!3040909)))

(declare-fun res!2076351 () Bool)

(assert (=> b!4863646 (=> res!2076351 e!3040909)))

(assert (=> b!4863646 (= res!2076351 (isEmpty!29906 (_1!33180 lt!1993189)))))

(assert (= (and d!1560926 c!827168) b!4863644))

(assert (= (and d!1560926 (not c!827168)) b!4863637))

(assert (= (and b!4863637 c!827165) b!4863642))

(assert (= (and b!4863637 (not c!827165)) b!4863639))

(assert (= (and b!4863642 c!827166) b!4863636))

(assert (= (and b!4863642 (not c!827166)) b!4863635))

(assert (= (and b!4863639 c!827167) b!4863638))

(assert (= (and b!4863639 (not c!827167)) b!4863633))

(assert (= (and b!4863639 c!827170) b!4863641))

(assert (= (and b!4863639 (not c!827170)) b!4863643))

(assert (= (and b!4863641 c!827169) b!4863640))

(assert (= (and b!4863641 (not c!827169)) b!4863645))

(assert (= (or b!4863641 b!4863643) bm!337848))

(assert (= (or b!4863641 b!4863643) bm!337844))

(assert (= (or b!4863641 b!4863643) bm!337842))

(assert (= (or b!4863641 b!4863643) bm!337846))

(assert (= (or b!4863642 b!4863638) bm!337845))

(assert (= (or b!4863642 b!4863638) bm!337847))

(assert (= (or b!4863642 b!4863639) bm!337841))

(assert (= (or b!4863642 b!4863638) bm!337843))

(assert (= (and d!1560926 res!2076352) b!4863646))

(assert (= (and b!4863646 (not res!2076351)) b!4863634))

(declare-fun m!5861480 () Bool)

(assert (=> b!4863634 m!5861480))

(assert (=> b!4863634 m!5861026))

(declare-fun m!5861482 () Bool)

(assert (=> bm!337848 m!5861482))

(declare-fun m!5861484 () Bool)

(assert (=> d!1560926 m!5861484))

(declare-fun m!5861486 () Bool)

(assert (=> d!1560926 m!5861486))

(declare-fun m!5861488 () Bool)

(assert (=> d!1560926 m!5861488))

(declare-fun m!5861490 () Bool)

(assert (=> d!1560926 m!5861490))

(assert (=> d!1560926 m!5861484))

(declare-fun m!5861492 () Bool)

(assert (=> d!1560926 m!5861492))

(assert (=> d!1560926 m!5861288))

(declare-fun m!5861494 () Bool)

(assert (=> d!1560926 m!5861494))

(declare-fun m!5861496 () Bool)

(assert (=> d!1560926 m!5861496))

(assert (=> bm!337846 m!5861028))

(declare-fun m!5861498 () Bool)

(assert (=> bm!337846 m!5861498))

(declare-fun m!5861502 () Bool)

(assert (=> bm!337847 m!5861502))

(declare-fun m!5861506 () Bool)

(assert (=> b!4863646 m!5861506))

(declare-fun m!5861508 () Bool)

(assert (=> bm!337842 m!5861508))

(declare-fun m!5861512 () Bool)

(assert (=> bm!337845 m!5861512))

(declare-fun m!5861514 () Bool)

(assert (=> b!4863641 m!5861514))

(assert (=> bm!337841 m!5861290))

(assert (=> b!4863639 m!5861490))

(declare-fun m!5861520 () Bool)

(assert (=> b!4863639 m!5861520))

(assert (=> b!4863639 m!5861028))

(declare-fun m!5861524 () Bool)

(assert (=> b!4863639 m!5861524))

(declare-fun m!5861526 () Bool)

(assert (=> b!4863639 m!5861526))

(assert (=> b!4863639 m!5861524))

(declare-fun m!5861530 () Bool)

(assert (=> b!4863639 m!5861530))

(declare-fun m!5861532 () Bool)

(assert (=> b!4863639 m!5861532))

(assert (=> b!4863639 m!5861490))

(assert (=> b!4863639 m!5861026))

(declare-fun m!5861534 () Bool)

(assert (=> b!4863639 m!5861534))

(declare-fun m!5861536 () Bool)

(assert (=> b!4863639 m!5861536))

(declare-fun m!5861538 () Bool)

(assert (=> b!4863639 m!5861538))

(assert (=> b!4863639 m!5861482))

(declare-fun m!5861540 () Bool)

(assert (=> b!4863639 m!5861540))

(assert (=> b!4863639 m!5861538))

(declare-fun m!5861542 () Bool)

(assert (=> b!4863639 m!5861542))

(declare-fun m!5861544 () Bool)

(assert (=> bm!337843 m!5861544))

(assert (=> bm!337844 m!5861536))

(assert (=> b!4863324 d!1560926))

(declare-fun d!1560942 () Bool)

(assert (=> d!1560942 (= (list!17460 (_1!33181 lt!1993034)) (list!17462 (c!826974 (_1!33181 lt!1993034))))))

(declare-fun bs!1174080 () Bool)

(assert (= bs!1174080 d!1560942))

(declare-fun m!5861546 () Bool)

(assert (=> bs!1174080 m!5861546))

(assert (=> b!4863324 d!1560942))

(declare-fun d!1560944 () Bool)

(declare-fun fromListB!2674 (List!56037) BalanceConc!28568)

(assert (=> d!1560944 (= (seqFromList!5893 (list!17460 (_1!33181 lt!1993034))) (fromListB!2674 (list!17460 (_1!33181 lt!1993034))))))

(declare-fun bs!1174081 () Bool)

(assert (= bs!1174081 d!1560944))

(assert (=> bs!1174081 m!5861042))

(declare-fun m!5861560 () Bool)

(assert (=> bs!1174081 m!5861560))

(assert (=> b!4863324 d!1560944))

(declare-fun d!1560952 () Bool)

(assert (=> d!1560952 (dynLambda!22429 lambda!243343 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034))))))

(declare-fun lt!1993211 () Unit!145922)

(assert (=> d!1560952 (= lt!1993211 (choose!35573 lambda!243343 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))))

(assert (=> d!1560952 (Forall!1668 lambda!243343)))

(assert (=> d!1560952 (= (ForallOf!1097 lambda!243343 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))) lt!1993211)))

(declare-fun b_lambda!193421 () Bool)

(assert (=> (not b_lambda!193421) (not d!1560952)))

(declare-fun bs!1174082 () Bool)

(assert (= bs!1174082 d!1560952))

(assert (=> bs!1174082 m!5861044))

(declare-fun m!5861562 () Bool)

(assert (=> bs!1174082 m!5861562))

(assert (=> bs!1174082 m!5861044))

(declare-fun m!5861564 () Bool)

(assert (=> bs!1174082 m!5861564))

(assert (=> bs!1174082 m!5861414))

(assert (=> b!4863324 d!1560952))

(declare-fun d!1560954 () Bool)

(declare-fun lt!1993212 () Int)

(assert (=> d!1560954 (= lt!1993212 (size!36840 (list!17464 (_1!33173 lt!1992961))))))

(assert (=> d!1560954 (= lt!1993212 (size!36841 (c!826976 (_1!33173 lt!1992961))))))

(assert (=> d!1560954 (= (size!36836 (_1!33173 lt!1992961)) lt!1993212)))

(declare-fun bs!1174083 () Bool)

(assert (= bs!1174083 d!1560954))

(assert (=> bs!1174083 m!5860864))

(assert (=> bs!1174083 m!5860864))

(declare-fun m!5861566 () Bool)

(assert (=> bs!1174083 m!5861566))

(declare-fun m!5861568 () Bool)

(assert (=> bs!1174083 m!5861568))

(assert (=> d!1560756 d!1560954))

(declare-fun b!4863656 () Bool)

(declare-fun e!3040921 () Bool)

(declare-fun e!3040923 () Bool)

(assert (=> b!4863656 (= e!3040921 e!3040923)))

(declare-fun res!2076362 () Bool)

(assert (=> b!4863656 (=> (not res!2076362) (not e!3040923))))

(declare-fun lt!1993215 () Option!13771)

(assert (=> b!4863656 (= res!2076362 (= (_1!33172 (get!19216 lt!1993215)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736))))))))))

(declare-fun b!4863657 () Bool)

(declare-fun res!2076358 () Bool)

(declare-fun e!3040922 () Bool)

(assert (=> b!4863657 (=> (not res!2076358) (not e!3040922))))

(declare-fun e!3040920 () Bool)

(assert (=> b!4863657 (= res!2076358 e!3040920)))

(declare-fun res!2076361 () Bool)

(assert (=> b!4863657 (=> res!2076361 e!3040920)))

(assert (=> b!4863657 (= res!2076361 (not (isDefined!10840 lt!1993215)))))

(declare-fun b!4863658 () Bool)

(declare-fun e!3040919 () Option!13771)

(declare-fun call!337854 () Option!13771)

(assert (=> b!4863658 (= e!3040919 call!337854)))

(declare-fun bm!337849 () Bool)

(assert (=> bm!337849 (= call!337854 (maxPrefixOneRuleZipperSequence!573 thiss!11777 (h!62362 rules!1248) (_2!33172 (v!49672 lt!1992736))))))

(declare-fun b!4863659 () Bool)

(declare-fun lt!1993214 () Option!13771)

(declare-fun lt!1993218 () Option!13771)

(assert (=> b!4863659 (= e!3040919 (ite (and ((_ is None!13770) lt!1993214) ((_ is None!13770) lt!1993218)) None!13770 (ite ((_ is None!13770) lt!1993218) lt!1993214 (ite ((_ is None!13770) lt!1993214) lt!1993218 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1993214))) (size!36832 (_1!33172 (v!49672 lt!1993218)))) lt!1993214 lt!1993218)))))))

(assert (=> b!4863659 (= lt!1993214 call!337854)))

(assert (=> b!4863659 (= lt!1993218 (maxPrefixZipperSequence!1221 thiss!11777 (t!363662 rules!1248) (_2!33172 (v!49672 lt!1992736))))))

(declare-fun d!1560956 () Bool)

(assert (=> d!1560956 e!3040922))

(declare-fun res!2076363 () Bool)

(assert (=> d!1560956 (=> (not res!2076363) (not e!3040922))))

(assert (=> d!1560956 (= res!2076363 (= (isDefined!10840 lt!1993215) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))))

(assert (=> d!1560956 (= lt!1993215 e!3040919)))

(declare-fun c!827173 () Bool)

(assert (=> d!1560956 (= c!827173 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1993217 () Unit!145922)

(declare-fun lt!1993216 () Unit!145922)

(assert (=> d!1560956 (= lt!1993217 lt!1993216)))

(declare-fun lt!1993213 () List!56037)

(declare-fun lt!1993219 () List!56037)

(assert (=> d!1560956 (isPrefix!4762 lt!1993213 lt!1993219)))

(assert (=> d!1560956 (= lt!1993216 (lemmaIsPrefixRefl!3159 lt!1993213 lt!1993219))))

(assert (=> d!1560956 (= lt!1993219 (list!17460 (_2!33172 (v!49672 lt!1992736))))))

(assert (=> d!1560956 (= lt!1993213 (list!17460 (_2!33172 (v!49672 lt!1992736))))))

(assert (=> d!1560956 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1560956 (= (maxPrefixZipperSequence!1221 thiss!11777 rules!1248 (_2!33172 (v!49672 lt!1992736))) lt!1993215)))

(declare-fun b!4863660 () Bool)

(assert (=> b!4863660 (= e!3040923 (= (list!17460 (_2!33172 (get!19216 lt!1993215))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736))))))))))

(declare-fun b!4863661 () Bool)

(declare-fun e!3040924 () Bool)

(assert (=> b!4863661 (= e!3040920 e!3040924)))

(declare-fun res!2076360 () Bool)

(assert (=> b!4863661 (=> (not res!2076360) (not e!3040924))))

(assert (=> b!4863661 (= res!2076360 (= (_1!33172 (get!19216 lt!1993215)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736))))))))))

(declare-fun b!4863662 () Bool)

(assert (=> b!4863662 (= e!3040924 (= (list!17460 (_2!33172 (get!19216 lt!1993215))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736))))))))))

(declare-fun b!4863663 () Bool)

(assert (=> b!4863663 (= e!3040922 e!3040921)))

(declare-fun res!2076359 () Bool)

(assert (=> b!4863663 (=> res!2076359 e!3040921)))

(assert (=> b!4863663 (= res!2076359 (not (isDefined!10840 lt!1993215)))))

(assert (= (and d!1560956 c!827173) b!4863658))

(assert (= (and d!1560956 (not c!827173)) b!4863659))

(assert (= (or b!4863658 b!4863659) bm!337849))

(assert (= (and d!1560956 res!2076363) b!4863657))

(assert (= (and b!4863657 (not res!2076361)) b!4863661))

(assert (= (and b!4863661 res!2076360) b!4863662))

(assert (= (and b!4863657 res!2076358) b!4863663))

(assert (= (and b!4863663 (not res!2076359)) b!4863656))

(assert (= (and b!4863656 res!2076362) b!4863660))

(declare-fun m!5861570 () Bool)

(assert (=> b!4863657 m!5861570))

(declare-fun m!5861572 () Bool)

(assert (=> b!4863656 m!5861572))

(assert (=> b!4863656 m!5860854))

(assert (=> b!4863656 m!5860854))

(declare-fun m!5861574 () Bool)

(assert (=> b!4863656 m!5861574))

(assert (=> b!4863656 m!5861574))

(declare-fun m!5861576 () Bool)

(assert (=> b!4863656 m!5861576))

(assert (=> b!4863660 m!5861572))

(assert (=> b!4863660 m!5861574))

(assert (=> b!4863660 m!5861576))

(declare-fun m!5861578 () Bool)

(assert (=> b!4863660 m!5861578))

(assert (=> b!4863660 m!5860854))

(assert (=> b!4863660 m!5861574))

(assert (=> b!4863660 m!5860854))

(declare-fun m!5861580 () Bool)

(assert (=> bm!337849 m!5861580))

(assert (=> d!1560956 m!5861570))

(declare-fun m!5861582 () Bool)

(assert (=> d!1560956 m!5861582))

(declare-fun m!5861584 () Bool)

(assert (=> d!1560956 m!5861584))

(assert (=> d!1560956 m!5860854))

(declare-fun m!5861586 () Bool)

(assert (=> d!1560956 m!5861586))

(assert (=> d!1560956 m!5860322))

(declare-fun m!5861588 () Bool)

(assert (=> d!1560956 m!5861588))

(assert (=> d!1560956 m!5860854))

(assert (=> d!1560956 m!5861582))

(assert (=> b!4863663 m!5861570))

(declare-fun m!5861590 () Bool)

(assert (=> b!4863659 m!5861590))

(assert (=> b!4863662 m!5861572))

(assert (=> b!4863662 m!5861578))

(assert (=> b!4863662 m!5861582))

(declare-fun m!5861592 () Bool)

(assert (=> b!4863662 m!5861592))

(assert (=> b!4863662 m!5860854))

(assert (=> b!4863662 m!5860854))

(assert (=> b!4863662 m!5861582))

(assert (=> b!4863661 m!5861572))

(assert (=> b!4863661 m!5860854))

(assert (=> b!4863661 m!5860854))

(assert (=> b!4863661 m!5861582))

(assert (=> b!4863661 m!5861582))

(assert (=> b!4863661 m!5861592))

(assert (=> d!1560756 d!1560956))

(declare-fun d!1560958 () Bool)

(assert (=> d!1560958 (= (get!19216 lt!1993036) (v!49672 lt!1993036))))

(assert (=> b!4863328 d!1560958))

(declare-fun d!1560960 () Bool)

(assert (=> d!1560960 (= (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661))) (v!49674 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661))))))

(assert (=> b!4863328 d!1560960))

(declare-fun b!4863724 () Bool)

(declare-fun e!3040954 () Bool)

(declare-fun e!3040955 () Bool)

(assert (=> b!4863724 (= e!3040954 e!3040955)))

(declare-fun res!2076402 () Bool)

(assert (=> b!4863724 (=> (not res!2076402) (not e!3040955))))

(declare-fun lt!1993235 () Option!13773)

(assert (=> b!4863724 (= res!2076402 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993235))))))))

(declare-fun b!4863725 () Bool)

(declare-fun res!2076405 () Bool)

(assert (=> b!4863725 (=> (not res!2076405) (not e!3040955))))

(assert (=> b!4863725 (= res!2076405 (< (size!36838 (_2!33177 (get!19217 lt!1993235))) (size!36838 (list!17460 input!661))))))

(declare-fun b!4863726 () Bool)

(declare-fun res!2076404 () Bool)

(assert (=> b!4863726 (=> (not res!2076404) (not e!3040955))))

(assert (=> b!4863726 (= res!2076404 (= (++!12171 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1993235)))) (_2!33177 (get!19217 lt!1993235))) (list!17460 input!661)))))

(declare-fun b!4863727 () Bool)

(declare-fun res!2076406 () Bool)

(assert (=> b!4863727 (=> (not res!2076406) (not e!3040955))))

(assert (=> b!4863727 (= res!2076406 (= (value!257885 (_1!33177 (get!19217 lt!1993235))) (apply!13497 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1993235)))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1993235)))))))))

(declare-fun b!4863728 () Bool)

(declare-fun res!2076403 () Bool)

(assert (=> b!4863728 (=> (not res!2076403) (not e!3040955))))

(assert (=> b!4863728 (= res!2076403 (= (rule!11144 (_1!33177 (get!19217 lt!1993235))) (h!62362 rules!1248)))))

(declare-fun b!4863729 () Bool)

(declare-fun e!3040956 () Option!13773)

(assert (=> b!4863729 (= e!3040956 None!13772)))

(declare-fun b!4863730 () Bool)

(assert (=> b!4863730 (= e!3040955 (= (size!36832 (_1!33177 (get!19217 lt!1993235))) (size!36838 (originalCharacters!8351 (_1!33177 (get!19217 lt!1993235))))))))

(declare-fun b!4863731 () Bool)

(declare-fun lt!1993237 () tuple2!59754)

(assert (=> b!4863731 (= e!3040956 (Some!13772 (tuple2!59749 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (seqFromList!5893 (_1!33180 lt!1993237))) (h!62362 rules!1248) (size!36837 (seqFromList!5893 (_1!33180 lt!1993237))) (_1!33180 lt!1993237)) (_2!33180 lt!1993237))))))

(declare-fun lt!1993236 () Unit!145922)

(assert (=> b!4863731 (= lt!1993236 (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 rules!1248)) (list!17460 input!661)))))

(declare-fun res!2076407 () Bool)

(assert (=> b!4863731 (= res!2076407 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) (list!17460 input!661) (list!17460 input!661) (size!36838 (list!17460 input!661))))))))

(declare-fun e!3040957 () Bool)

(assert (=> b!4863731 (=> res!2076407 e!3040957)))

(assert (=> b!4863731 e!3040957))

(declare-fun lt!1993234 () Unit!145922)

(assert (=> b!4863731 (= lt!1993234 lt!1993236)))

(declare-fun lt!1993233 () Unit!145922)

(declare-fun lemmaSemiInverse!2548 (TokenValueInjection!15980 BalanceConc!28568) Unit!145922)

(assert (=> b!4863731 (= lt!1993233 (lemmaSemiInverse!2548 (transformation!8026 (h!62362 rules!1248)) (seqFromList!5893 (_1!33180 lt!1993237))))))

(declare-fun b!4863732 () Bool)

(assert (=> b!4863732 (= e!3040957 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) (list!17460 input!661) (list!17460 input!661) (size!36838 (list!17460 input!661))))))))

(declare-fun d!1560962 () Bool)

(assert (=> d!1560962 e!3040954))

(declare-fun res!2076408 () Bool)

(assert (=> d!1560962 (=> res!2076408 e!3040954)))

(assert (=> d!1560962 (= res!2076408 (isEmpty!29894 lt!1993235))))

(assert (=> d!1560962 (= lt!1993235 e!3040956)))

(declare-fun c!827185 () Bool)

(assert (=> d!1560962 (= c!827185 (isEmpty!29906 (_1!33180 lt!1993237)))))

(declare-fun findLongestMatch!1631 (Regex!13101 List!56037) tuple2!59754)

(assert (=> d!1560962 (= lt!1993237 (findLongestMatch!1631 (regex!8026 (h!62362 rules!1248)) (list!17460 input!661)))))

(assert (=> d!1560962 (ruleValid!3625 thiss!11777 (h!62362 rules!1248))))

(assert (=> d!1560962 (= (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)) lt!1993235)))

(assert (= (and d!1560962 c!827185) b!4863729))

(assert (= (and d!1560962 (not c!827185)) b!4863731))

(assert (= (and b!4863731 (not res!2076407)) b!4863732))

(assert (= (and d!1560962 (not res!2076408)) b!4863724))

(assert (= (and b!4863724 res!2076402) b!4863726))

(assert (= (and b!4863726 res!2076404) b!4863725))

(assert (= (and b!4863725 res!2076405) b!4863728))

(assert (= (and b!4863728 res!2076403) b!4863727))

(assert (= (and b!4863727 res!2076406) b!4863730))

(declare-fun m!5861604 () Bool)

(assert (=> d!1560962 m!5861604))

(declare-fun m!5861606 () Bool)

(assert (=> d!1560962 m!5861606))

(assert (=> d!1560962 m!5860130))

(declare-fun m!5861608 () Bool)

(assert (=> d!1560962 m!5861608))

(assert (=> d!1560962 m!5860496))

(assert (=> b!4863732 m!5861026))

(assert (=> b!4863732 m!5860130))

(assert (=> b!4863732 m!5860388))

(assert (=> b!4863732 m!5861026))

(assert (=> b!4863732 m!5860130))

(assert (=> b!4863732 m!5860130))

(assert (=> b!4863732 m!5860388))

(declare-fun m!5861610 () Bool)

(assert (=> b!4863732 m!5861610))

(declare-fun m!5861612 () Bool)

(assert (=> b!4863732 m!5861612))

(declare-fun m!5861614 () Bool)

(assert (=> b!4863731 m!5861614))

(declare-fun m!5861616 () Bool)

(assert (=> b!4863731 m!5861616))

(assert (=> b!4863731 m!5861026))

(assert (=> b!4863731 m!5860130))

(declare-fun m!5861618 () Bool)

(assert (=> b!4863731 m!5861618))

(assert (=> b!4863731 m!5861614))

(declare-fun m!5861620 () Bool)

(assert (=> b!4863731 m!5861620))

(assert (=> b!4863731 m!5860130))

(assert (=> b!4863731 m!5860388))

(assert (=> b!4863731 m!5861026))

(assert (=> b!4863731 m!5860130))

(assert (=> b!4863731 m!5860130))

(assert (=> b!4863731 m!5860388))

(assert (=> b!4863731 m!5861610))

(assert (=> b!4863731 m!5861614))

(declare-fun m!5861622 () Bool)

(assert (=> b!4863731 m!5861622))

(assert (=> b!4863731 m!5861614))

(declare-fun m!5861624 () Bool)

(assert (=> b!4863731 m!5861624))

(declare-fun m!5861626 () Bool)

(assert (=> b!4863730 m!5861626))

(declare-fun m!5861628 () Bool)

(assert (=> b!4863730 m!5861628))

(assert (=> b!4863726 m!5861626))

(declare-fun m!5861630 () Bool)

(assert (=> b!4863726 m!5861630))

(assert (=> b!4863726 m!5861630))

(declare-fun m!5861632 () Bool)

(assert (=> b!4863726 m!5861632))

(assert (=> b!4863726 m!5861632))

(declare-fun m!5861634 () Bool)

(assert (=> b!4863726 m!5861634))

(assert (=> b!4863724 m!5861626))

(assert (=> b!4863724 m!5861630))

(assert (=> b!4863724 m!5861630))

(assert (=> b!4863724 m!5861632))

(assert (=> b!4863724 m!5861632))

(declare-fun m!5861636 () Bool)

(assert (=> b!4863724 m!5861636))

(assert (=> b!4863725 m!5861626))

(declare-fun m!5861638 () Bool)

(assert (=> b!4863725 m!5861638))

(assert (=> b!4863725 m!5860130))

(assert (=> b!4863725 m!5860388))

(assert (=> b!4863728 m!5861626))

(assert (=> b!4863727 m!5861626))

(declare-fun m!5861640 () Bool)

(assert (=> b!4863727 m!5861640))

(assert (=> b!4863727 m!5861640))

(declare-fun m!5861642 () Bool)

(assert (=> b!4863727 m!5861642))

(assert (=> b!4863328 d!1560962))

(assert (=> b!4863328 d!1560592))

(declare-fun d!1560966 () Bool)

(declare-fun e!3040959 () Bool)

(assert (=> d!1560966 e!3040959))

(declare-fun res!2076410 () Bool)

(assert (=> d!1560966 (=> (not res!2076410) (not e!3040959))))

(declare-fun lt!1993238 () List!56037)

(assert (=> d!1560966 (= res!2076410 (= (content!9960 lt!1993238) ((_ map or) (content!9960 (list!17462 (left!40608 (c!826974 input!661)))) (content!9960 (list!17462 (right!40938 (c!826974 input!661)))))))))

(declare-fun e!3040958 () List!56037)

(assert (=> d!1560966 (= lt!1993238 e!3040958)))

(declare-fun c!827186 () Bool)

(assert (=> d!1560966 (= c!827186 ((_ is Nil!55913) (list!17462 (left!40608 (c!826974 input!661)))))))

(assert (=> d!1560966 (= (++!12171 (list!17462 (left!40608 (c!826974 input!661))) (list!17462 (right!40938 (c!826974 input!661)))) lt!1993238)))

(declare-fun b!4863735 () Bool)

(declare-fun res!2076409 () Bool)

(assert (=> b!4863735 (=> (not res!2076409) (not e!3040959))))

(assert (=> b!4863735 (= res!2076409 (= (size!36838 lt!1993238) (+ (size!36838 (list!17462 (left!40608 (c!826974 input!661)))) (size!36838 (list!17462 (right!40938 (c!826974 input!661)))))))))

(declare-fun b!4863734 () Bool)

(assert (=> b!4863734 (= e!3040958 (Cons!55913 (h!62361 (list!17462 (left!40608 (c!826974 input!661)))) (++!12171 (t!363661 (list!17462 (left!40608 (c!826974 input!661)))) (list!17462 (right!40938 (c!826974 input!661))))))))

(declare-fun b!4863736 () Bool)

(assert (=> b!4863736 (= e!3040959 (or (not (= (list!17462 (right!40938 (c!826974 input!661))) Nil!55913)) (= lt!1993238 (list!17462 (left!40608 (c!826974 input!661))))))))

(declare-fun b!4863733 () Bool)

(assert (=> b!4863733 (= e!3040958 (list!17462 (right!40938 (c!826974 input!661))))))

(assert (= (and d!1560966 c!827186) b!4863733))

(assert (= (and d!1560966 (not c!827186)) b!4863734))

(assert (= (and d!1560966 res!2076410) b!4863735))

(assert (= (and b!4863735 res!2076409) b!4863736))

(declare-fun m!5861644 () Bool)

(assert (=> d!1560966 m!5861644))

(assert (=> d!1560966 m!5860502))

(declare-fun m!5861646 () Bool)

(assert (=> d!1560966 m!5861646))

(assert (=> d!1560966 m!5860504))

(declare-fun m!5861648 () Bool)

(assert (=> d!1560966 m!5861648))

(declare-fun m!5861650 () Bool)

(assert (=> b!4863735 m!5861650))

(assert (=> b!4863735 m!5860502))

(declare-fun m!5861652 () Bool)

(assert (=> b!4863735 m!5861652))

(assert (=> b!4863735 m!5860504))

(declare-fun m!5861654 () Bool)

(assert (=> b!4863735 m!5861654))

(assert (=> b!4863734 m!5860504))

(declare-fun m!5861656 () Bool)

(assert (=> b!4863734 m!5861656))

(assert (=> b!4862923 d!1560966))

(declare-fun b!4863737 () Bool)

(declare-fun e!3040960 () List!56037)

(assert (=> b!4863737 (= e!3040960 Nil!55913)))

(declare-fun b!4863738 () Bool)

(declare-fun e!3040961 () List!56037)

(assert (=> b!4863738 (= e!3040960 e!3040961)))

(declare-fun c!827188 () Bool)

(assert (=> b!4863738 (= c!827188 ((_ is Leaf!24287) (left!40608 (c!826974 input!661))))))

(declare-fun b!4863740 () Bool)

(assert (=> b!4863740 (= e!3040961 (++!12171 (list!17462 (left!40608 (left!40608 (c!826974 input!661)))) (list!17462 (right!40938 (left!40608 (c!826974 input!661))))))))

(declare-fun d!1560968 () Bool)

(declare-fun c!827187 () Bool)

(assert (=> d!1560968 (= c!827187 ((_ is Empty!14563) (left!40608 (c!826974 input!661))))))

(assert (=> d!1560968 (= (list!17462 (left!40608 (c!826974 input!661))) e!3040960)))

(declare-fun b!4863739 () Bool)

(assert (=> b!4863739 (= e!3040961 (list!17466 (xs!17869 (left!40608 (c!826974 input!661)))))))

(assert (= (and d!1560968 c!827187) b!4863737))

(assert (= (and d!1560968 (not c!827187)) b!4863738))

(assert (= (and b!4863738 c!827188) b!4863739))

(assert (= (and b!4863738 (not c!827188)) b!4863740))

(declare-fun m!5861658 () Bool)

(assert (=> b!4863740 m!5861658))

(declare-fun m!5861660 () Bool)

(assert (=> b!4863740 m!5861660))

(assert (=> b!4863740 m!5861658))

(assert (=> b!4863740 m!5861660))

(declare-fun m!5861662 () Bool)

(assert (=> b!4863740 m!5861662))

(assert (=> b!4863739 m!5861190))

(assert (=> b!4862923 d!1560968))

(declare-fun b!4863741 () Bool)

(declare-fun e!3040962 () List!56037)

(assert (=> b!4863741 (= e!3040962 Nil!55913)))

(declare-fun b!4863742 () Bool)

(declare-fun e!3040963 () List!56037)

(assert (=> b!4863742 (= e!3040962 e!3040963)))

(declare-fun c!827190 () Bool)

(assert (=> b!4863742 (= c!827190 ((_ is Leaf!24287) (right!40938 (c!826974 input!661))))))

(declare-fun b!4863744 () Bool)

(assert (=> b!4863744 (= e!3040963 (++!12171 (list!17462 (left!40608 (right!40938 (c!826974 input!661)))) (list!17462 (right!40938 (right!40938 (c!826974 input!661))))))))

(declare-fun d!1560970 () Bool)

(declare-fun c!827189 () Bool)

(assert (=> d!1560970 (= c!827189 ((_ is Empty!14563) (right!40938 (c!826974 input!661))))))

(assert (=> d!1560970 (= (list!17462 (right!40938 (c!826974 input!661))) e!3040962)))

(declare-fun b!4863743 () Bool)

(assert (=> b!4863743 (= e!3040963 (list!17466 (xs!17869 (right!40938 (c!826974 input!661)))))))

(assert (= (and d!1560970 c!827189) b!4863741))

(assert (= (and d!1560970 (not c!827189)) b!4863742))

(assert (= (and b!4863742 c!827190) b!4863743))

(assert (= (and b!4863742 (not c!827190)) b!4863744))

(declare-fun m!5861664 () Bool)

(assert (=> b!4863744 m!5861664))

(declare-fun m!5861666 () Bool)

(assert (=> b!4863744 m!5861666))

(assert (=> b!4863744 m!5861664))

(assert (=> b!4863744 m!5861666))

(declare-fun m!5861668 () Bool)

(assert (=> b!4863744 m!5861668))

(declare-fun m!5861670 () Bool)

(assert (=> b!4863743 m!5861670))

(assert (=> b!4862923 d!1560970))

(declare-fun d!1560972 () Bool)

(declare-fun res!2076411 () Bool)

(declare-fun e!3040964 () Bool)

(assert (=> d!1560972 (=> (not res!2076411) (not e!3040964))))

(assert (=> d!1560972 (= res!2076411 (<= (size!36838 (list!17466 (xs!17869 (right!40938 (c!826974 input!661))))) 512))))

(assert (=> d!1560972 (= (inv!71814 (right!40938 (c!826974 input!661))) e!3040964)))

(declare-fun b!4863745 () Bool)

(declare-fun res!2076412 () Bool)

(assert (=> b!4863745 (=> (not res!2076412) (not e!3040964))))

(assert (=> b!4863745 (= res!2076412 (= (csize!29357 (right!40938 (c!826974 input!661))) (size!36838 (list!17466 (xs!17869 (right!40938 (c!826974 input!661)))))))))

(declare-fun b!4863746 () Bool)

(assert (=> b!4863746 (= e!3040964 (and (> (csize!29357 (right!40938 (c!826974 input!661))) 0) (<= (csize!29357 (right!40938 (c!826974 input!661))) 512)))))

(assert (= (and d!1560972 res!2076411) b!4863745))

(assert (= (and b!4863745 res!2076412) b!4863746))

(assert (=> d!1560972 m!5861670))

(assert (=> d!1560972 m!5861670))

(declare-fun m!5861672 () Bool)

(assert (=> d!1560972 m!5861672))

(assert (=> b!4863745 m!5861670))

(assert (=> b!4863745 m!5861670))

(assert (=> b!4863745 m!5861672))

(assert (=> b!4863009 d!1560972))

(assert (=> b!4862763 d!1560742))

(assert (=> b!4862763 d!1560744))

(declare-fun d!1560974 () Bool)

(declare-fun res!2076413 () Bool)

(declare-fun e!3040965 () Bool)

(assert (=> d!1560974 (=> (not res!2076413) (not e!3040965))))

(assert (=> d!1560974 (= res!2076413 (<= (size!36838 (list!17466 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) 512))))

(assert (=> d!1560974 (= (inv!71814 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) e!3040965)))

(declare-fun b!4863747 () Bool)

(declare-fun res!2076414 () Bool)

(assert (=> b!4863747 (=> (not res!2076414) (not e!3040965))))

(assert (=> b!4863747 (= res!2076414 (= (csize!29357 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) (size!36838 (list!17466 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))))

(declare-fun b!4863748 () Bool)

(assert (=> b!4863748 (= e!3040965 (and (> (csize!29357 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) 0) (<= (csize!29357 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) 512)))))

(assert (= (and d!1560974 res!2076413) b!4863747))

(assert (= (and b!4863747 res!2076414) b!4863748))

(declare-fun m!5861674 () Bool)

(assert (=> d!1560974 m!5861674))

(assert (=> d!1560974 m!5861674))

(declare-fun m!5861676 () Bool)

(assert (=> d!1560974 m!5861676))

(assert (=> b!4863747 m!5861674))

(assert (=> b!4863747 m!5861674))

(assert (=> b!4863747 m!5861676))

(assert (=> b!4862926 d!1560974))

(declare-fun d!1560976 () Bool)

(assert (=> d!1560976 (= (isEmpty!29895 lt!1992770) (not ((_ is Some!13770) lt!1992770)))))

(assert (=> d!1560608 d!1560976))

(declare-fun d!1560978 () Bool)

(declare-fun e!3040967 () Bool)

(assert (=> d!1560978 e!3040967))

(declare-fun res!2076416 () Bool)

(assert (=> d!1560978 (=> (not res!2076416) (not e!3040967))))

(declare-fun lt!1993239 () List!56037)

(assert (=> d!1560978 (= res!2076416 (= (content!9960 lt!1993239) ((_ map or) (content!9960 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (content!9960 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun e!3040966 () List!56037)

(assert (=> d!1560978 (= lt!1993239 e!3040966)))

(declare-fun c!827191 () Bool)

(assert (=> d!1560978 (= c!827191 ((_ is Nil!55913) (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (=> d!1560978 (= (++!12171 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1993239)))

(declare-fun b!4863751 () Bool)

(declare-fun res!2076415 () Bool)

(assert (=> b!4863751 (=> (not res!2076415) (not e!3040967))))

(assert (=> b!4863751 (= res!2076415 (= (size!36838 lt!1993239) (+ (size!36838 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4863750 () Bool)

(assert (=> b!4863750 (= e!3040966 (Cons!55913 (h!62361 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (++!12171 (t!363661 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4863752 () Bool)

(assert (=> b!4863752 (= e!3040967 (or (not (= (list!17460 (_2!33172 (v!49672 lt!1992698))) Nil!55913)) (= lt!1993239 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4863749 () Bool)

(assert (=> b!4863749 (= e!3040966 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (= (and d!1560978 c!827191) b!4863749))

(assert (= (and d!1560978 (not c!827191)) b!4863750))

(assert (= (and d!1560978 res!2076416) b!4863751))

(assert (= (and b!4863751 res!2076415) b!4863752))

(declare-fun m!5861678 () Bool)

(assert (=> d!1560978 m!5861678))

(declare-fun m!5861680 () Bool)

(assert (=> d!1560978 m!5861680))

(assert (=> d!1560978 m!5860108))

(assert (=> d!1560978 m!5860248))

(declare-fun m!5861682 () Bool)

(assert (=> b!4863751 m!5861682))

(declare-fun m!5861684 () Bool)

(assert (=> b!4863751 m!5861684))

(assert (=> b!4863751 m!5860108))

(assert (=> b!4863751 m!5860254))

(assert (=> b!4863750 m!5860108))

(declare-fun m!5861686 () Bool)

(assert (=> b!4863750 m!5861686))

(assert (=> b!4862822 d!1560978))

(declare-fun d!1560980 () Bool)

(assert (=> d!1560980 (= (list!17460 (_2!33173 lt!1992961)) (list!17462 (c!826974 (_2!33173 lt!1992961))))))

(declare-fun bs!1174084 () Bool)

(assert (= bs!1174084 d!1560980))

(declare-fun m!5861688 () Bool)

(assert (=> bs!1174084 m!5861688))

(assert (=> b!4863193 d!1560980))

(declare-fun d!1560982 () Bool)

(assert (=> d!1560982 (= (list!17460 (_2!33172 (v!49672 lt!1992736))) (list!17462 (c!826974 (_2!33172 (v!49672 lt!1992736)))))))

(declare-fun bs!1174085 () Bool)

(assert (= bs!1174085 d!1560982))

(declare-fun m!5861690 () Bool)

(assert (=> bs!1174085 m!5861690))

(assert (=> b!4863193 d!1560982))

(assert (=> bm!337798 d!1560962))

(declare-fun d!1560984 () Bool)

(assert (=> d!1560984 (= (isDefined!10840 lt!1992897) (not (isEmpty!29895 lt!1992897)))))

(declare-fun bs!1174086 () Bool)

(assert (= bs!1174086 d!1560984))

(declare-fun m!5861692 () Bool)

(assert (=> bs!1174086 m!5861692))

(assert (=> b!4862990 d!1560984))

(declare-fun d!1560986 () Bool)

(declare-fun lt!1993240 () Int)

(assert (=> d!1560986 (>= lt!1993240 0)))

(declare-fun e!3040968 () Int)

(assert (=> d!1560986 (= lt!1993240 e!3040968)))

(declare-fun c!827192 () Bool)

(assert (=> d!1560986 (= c!827192 ((_ is Nil!55913) lt!1992772))))

(assert (=> d!1560986 (= (size!36838 lt!1992772) lt!1993240)))

(declare-fun b!4863753 () Bool)

(assert (=> b!4863753 (= e!3040968 0)))

(declare-fun b!4863754 () Bool)

(assert (=> b!4863754 (= e!3040968 (+ 1 (size!36838 (t!363661 lt!1992772))))))

(assert (= (and d!1560986 c!827192) b!4863753))

(assert (= (and d!1560986 (not c!827192)) b!4863754))

(declare-fun m!5861694 () Bool)

(assert (=> b!4863754 m!5861694))

(assert (=> b!4862860 d!1560986))

(declare-fun d!1560988 () Bool)

(declare-fun lt!1993241 () Int)

(assert (=> d!1560988 (>= lt!1993241 0)))

(declare-fun e!3040969 () Int)

(assert (=> d!1560988 (= lt!1993241 e!3040969)))

(declare-fun c!827193 () Bool)

(assert (=> d!1560988 (= c!827193 ((_ is Nil!55913) lt!1992773))))

(assert (=> d!1560988 (= (size!36838 lt!1992773) lt!1993241)))

(declare-fun b!4863755 () Bool)

(assert (=> b!4863755 (= e!3040969 0)))

(declare-fun b!4863756 () Bool)

(assert (=> b!4863756 (= e!3040969 (+ 1 (size!36838 (t!363661 lt!1992773))))))

(assert (= (and d!1560988 c!827193) b!4863755))

(assert (= (and d!1560988 (not c!827193)) b!4863756))

(declare-fun m!5861696 () Bool)

(assert (=> b!4863756 m!5861696))

(assert (=> b!4862860 d!1560988))

(declare-fun d!1560990 () Bool)

(declare-fun e!3040971 () Bool)

(assert (=> d!1560990 e!3040971))

(declare-fun res!2076418 () Bool)

(assert (=> d!1560990 (=> (not res!2076418) (not e!3040971))))

(declare-fun lt!1993242 () List!56037)

(assert (=> d!1560990 (= res!2076418 (= (content!9960 lt!1993242) ((_ map or) (content!9960 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (content!9960 (_2!33177 (get!19217 lt!1992791))))))))

(declare-fun e!3040970 () List!56037)

(assert (=> d!1560990 (= lt!1993242 e!3040970)))

(declare-fun c!827194 () Bool)

(assert (=> d!1560990 (= c!827194 ((_ is Nil!55913) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))

(assert (=> d!1560990 (= (++!12171 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))) (_2!33177 (get!19217 lt!1992791))) lt!1993242)))

(declare-fun b!4863759 () Bool)

(declare-fun res!2076417 () Bool)

(assert (=> b!4863759 (=> (not res!2076417) (not e!3040971))))

(assert (=> b!4863759 (= res!2076417 (= (size!36838 lt!1993242) (+ (size!36838 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (size!36838 (_2!33177 (get!19217 lt!1992791))))))))

(declare-fun b!4863758 () Bool)

(assert (=> b!4863758 (= e!3040970 (Cons!55913 (h!62361 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (++!12171 (t!363661 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (_2!33177 (get!19217 lt!1992791)))))))

(declare-fun b!4863760 () Bool)

(assert (=> b!4863760 (= e!3040971 (or (not (= (_2!33177 (get!19217 lt!1992791)) Nil!55913)) (= lt!1993242 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun b!4863757 () Bool)

(assert (=> b!4863757 (= e!3040970 (_2!33177 (get!19217 lt!1992791)))))

(assert (= (and d!1560990 c!827194) b!4863757))

(assert (= (and d!1560990 (not c!827194)) b!4863758))

(assert (= (and d!1560990 res!2076418) b!4863759))

(assert (= (and b!4863759 res!2076417) b!4863760))

(declare-fun m!5861698 () Bool)

(assert (=> d!1560990 m!5861698))

(assert (=> d!1560990 m!5860374))

(declare-fun m!5861700 () Bool)

(assert (=> d!1560990 m!5861700))

(declare-fun m!5861702 () Bool)

(assert (=> d!1560990 m!5861702))

(declare-fun m!5861704 () Bool)

(assert (=> b!4863759 m!5861704))

(assert (=> b!4863759 m!5860374))

(declare-fun m!5861706 () Bool)

(assert (=> b!4863759 m!5861706))

(assert (=> b!4863759 m!5860386))

(declare-fun m!5861708 () Bool)

(assert (=> b!4863758 m!5861708))

(assert (=> b!4862814 d!1560990))

(assert (=> b!4862814 d!1560834))

(assert (=> b!4862814 d!1560836))

(assert (=> b!4862814 d!1560838))

(declare-fun bs!1174087 () Bool)

(declare-fun d!1560992 () Bool)

(assert (= bs!1174087 (and d!1560992 d!1560758)))

(declare-fun lambda!243349 () Int)

(assert (=> bs!1174087 (= (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (= lambda!243349 lambda!243332))))

(declare-fun bs!1174088 () Bool)

(assert (= bs!1174088 (and d!1560992 d!1560908)))

(assert (=> bs!1174088 (= (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (= lambda!243349 lambda!243348))))

(assert (=> d!1560992 true))

(assert (=> d!1560992 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (dynLambda!22426 order!25177 lambda!243349))))

(assert (=> d!1560992 (= (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (Forall2!1249 lambda!243349))))

(declare-fun bs!1174089 () Bool)

(assert (= bs!1174089 d!1560992))

(declare-fun m!5861710 () Bool)

(assert (=> bs!1174089 m!5861710))

(assert (=> b!4862997 d!1560992))

(declare-fun d!1560994 () Bool)

(declare-fun lt!1993243 () Int)

(assert (=> d!1560994 (>= lt!1993243 0)))

(declare-fun e!3040972 () Int)

(assert (=> d!1560994 (= lt!1993243 e!3040972)))

(declare-fun c!827195 () Bool)

(assert (=> d!1560994 (= c!827195 ((_ is Nil!55913) (_2!33176 lt!1992953)))))

(assert (=> d!1560994 (= (size!36838 (_2!33176 lt!1992953)) lt!1993243)))

(declare-fun b!4863761 () Bool)

(assert (=> b!4863761 (= e!3040972 0)))

(declare-fun b!4863762 () Bool)

(assert (=> b!4863762 (= e!3040972 (+ 1 (size!36838 (t!363661 (_2!33176 lt!1992953)))))))

(assert (= (and d!1560994 c!827195) b!4863761))

(assert (= (and d!1560994 (not c!827195)) b!4863762))

(declare-fun m!5861712 () Bool)

(assert (=> b!4863762 m!5861712))

(assert (=> b!4863147 d!1560994))

(assert (=> b!4863147 d!1560778))

(declare-fun d!1560996 () Bool)

(declare-fun lt!1993244 () Int)

(assert (=> d!1560996 (>= lt!1993244 0)))

(declare-fun e!3040973 () Int)

(assert (=> d!1560996 (= lt!1993244 e!3040973)))

(declare-fun c!827196 () Bool)

(assert (=> d!1560996 (= c!827196 ((_ is Nil!55913) lt!1992917))))

(assert (=> d!1560996 (= (size!36838 lt!1992917) lt!1993244)))

(declare-fun b!4863763 () Bool)

(assert (=> b!4863763 (= e!3040973 0)))

(declare-fun b!4863764 () Bool)

(assert (=> b!4863764 (= e!3040973 (+ 1 (size!36838 (t!363661 lt!1992917))))))

(assert (= (and d!1560996 c!827196) b!4863763))

(assert (= (and d!1560996 (not c!827196)) b!4863764))

(declare-fun m!5861714 () Bool)

(assert (=> b!4863764 m!5861714))

(assert (=> b!4863048 d!1560996))

(declare-fun d!1560998 () Bool)

(declare-fun res!2076419 () Bool)

(declare-fun e!3040974 () Bool)

(assert (=> d!1560998 (=> (not res!2076419) (not e!3040974))))

(assert (=> d!1560998 (= res!2076419 (<= (size!36838 (list!17466 (xs!17869 (left!40608 (c!826974 totalInput!332))))) 512))))

(assert (=> d!1560998 (= (inv!71814 (left!40608 (c!826974 totalInput!332))) e!3040974)))

(declare-fun b!4863765 () Bool)

(declare-fun res!2076420 () Bool)

(assert (=> b!4863765 (=> (not res!2076420) (not e!3040974))))

(assert (=> b!4863765 (= res!2076420 (= (csize!29357 (left!40608 (c!826974 totalInput!332))) (size!36838 (list!17466 (xs!17869 (left!40608 (c!826974 totalInput!332)))))))))

(declare-fun b!4863766 () Bool)

(assert (=> b!4863766 (= e!3040974 (and (> (csize!29357 (left!40608 (c!826974 totalInput!332))) 0) (<= (csize!29357 (left!40608 (c!826974 totalInput!332))) 512)))))

(assert (= (and d!1560998 res!2076419) b!4863765))

(assert (= (and b!4863765 res!2076420) b!4863766))

(declare-fun m!5861716 () Bool)

(assert (=> d!1560998 m!5861716))

(assert (=> d!1560998 m!5861716))

(declare-fun m!5861718 () Bool)

(assert (=> d!1560998 m!5861718))

(assert (=> b!4863765 m!5861716))

(assert (=> b!4863765 m!5861716))

(assert (=> b!4863765 m!5861718))

(assert (=> b!4863156 d!1560998))

(declare-fun b!4863767 () Bool)

(declare-fun res!2076422 () Bool)

(declare-fun e!3040976 () Bool)

(assert (=> b!4863767 (=> (not res!2076422) (not e!3040976))))

(assert (=> b!4863767 (= res!2076422 (<= (- (height!1918 (left!40608 (left!40608 (c!826974 totalInput!332)))) (height!1918 (right!40938 (left!40608 (c!826974 totalInput!332))))) 1))))

(declare-fun b!4863768 () Bool)

(declare-fun res!2076423 () Bool)

(assert (=> b!4863768 (=> (not res!2076423) (not e!3040976))))

(assert (=> b!4863768 (= res!2076423 (isBalanced!3946 (right!40938 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun d!1561000 () Bool)

(declare-fun res!2076424 () Bool)

(declare-fun e!3040975 () Bool)

(assert (=> d!1561000 (=> res!2076424 e!3040975)))

(assert (=> d!1561000 (= res!2076424 (not ((_ is Node!14563) (left!40608 (c!826974 totalInput!332)))))))

(assert (=> d!1561000 (= (isBalanced!3946 (left!40608 (c!826974 totalInput!332))) e!3040975)))

(declare-fun b!4863769 () Bool)

(assert (=> b!4863769 (= e!3040976 (not (isEmpty!29897 (right!40938 (left!40608 (c!826974 totalInput!332))))))))

(declare-fun b!4863770 () Bool)

(assert (=> b!4863770 (= e!3040975 e!3040976)))

(declare-fun res!2076421 () Bool)

(assert (=> b!4863770 (=> (not res!2076421) (not e!3040976))))

(assert (=> b!4863770 (= res!2076421 (<= (- 1) (- (height!1918 (left!40608 (left!40608 (c!826974 totalInput!332)))) (height!1918 (right!40938 (left!40608 (c!826974 totalInput!332)))))))))

(declare-fun b!4863771 () Bool)

(declare-fun res!2076426 () Bool)

(assert (=> b!4863771 (=> (not res!2076426) (not e!3040976))))

(assert (=> b!4863771 (= res!2076426 (not (isEmpty!29897 (left!40608 (left!40608 (c!826974 totalInput!332))))))))

(declare-fun b!4863772 () Bool)

(declare-fun res!2076425 () Bool)

(assert (=> b!4863772 (=> (not res!2076425) (not e!3040976))))

(assert (=> b!4863772 (= res!2076425 (isBalanced!3946 (left!40608 (left!40608 (c!826974 totalInput!332)))))))

(assert (= (and d!1561000 (not res!2076424)) b!4863770))

(assert (= (and b!4863770 res!2076421) b!4863767))

(assert (= (and b!4863767 res!2076422) b!4863772))

(assert (= (and b!4863772 res!2076425) b!4863768))

(assert (= (and b!4863768 res!2076423) b!4863771))

(assert (= (and b!4863771 res!2076426) b!4863769))

(declare-fun m!5861720 () Bool)

(assert (=> b!4863770 m!5861720))

(declare-fun m!5861722 () Bool)

(assert (=> b!4863770 m!5861722))

(declare-fun m!5861724 () Bool)

(assert (=> b!4863771 m!5861724))

(assert (=> b!4863767 m!5861720))

(assert (=> b!4863767 m!5861722))

(declare-fun m!5861726 () Bool)

(assert (=> b!4863772 m!5861726))

(declare-fun m!5861728 () Bool)

(assert (=> b!4863769 m!5861728))

(declare-fun m!5861730 () Bool)

(assert (=> b!4863768 m!5861730))

(assert (=> b!4862848 d!1561000))

(declare-fun b!4863801 () Bool)

(declare-fun e!3040995 () Bool)

(declare-fun lt!1993247 () Bool)

(assert (=> b!4863801 (= e!3040995 (not lt!1993247))))

(declare-fun bm!337855 () Bool)

(declare-fun call!337860 () Bool)

(assert (=> bm!337855 (= call!337860 (isEmpty!29906 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun b!4863802 () Bool)

(declare-fun res!2076448 () Bool)

(declare-fun e!3040997 () Bool)

(assert (=> b!4863802 (=> (not res!2076448) (not e!3040997))))

(assert (=> b!4863802 (= res!2076448 (not call!337860))))

(declare-fun b!4863803 () Bool)

(declare-fun e!3040993 () Bool)

(assert (=> b!4863803 (= e!3040993 e!3040995)))

(declare-fun c!827205 () Bool)

(assert (=> b!4863803 (= c!827205 ((_ is EmptyLang!13101) (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun b!4863804 () Bool)

(assert (=> b!4863804 (= e!3040993 (= lt!1993247 call!337860))))

(declare-fun b!4863805 () Bool)

(declare-fun res!2076447 () Bool)

(declare-fun e!3040991 () Bool)

(assert (=> b!4863805 (=> res!2076447 e!3040991)))

(assert (=> b!4863805 (= res!2076447 (not (isEmpty!29906 (tail!9555 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))))

(declare-fun b!4863806 () Bool)

(declare-fun e!3040996 () Bool)

(assert (=> b!4863806 (= e!3040996 e!3040991)))

(declare-fun res!2076450 () Bool)

(assert (=> b!4863806 (=> res!2076450 e!3040991)))

(assert (=> b!4863806 (= res!2076450 call!337860)))

(declare-fun b!4863808 () Bool)

(assert (=> b!4863808 (= e!3040997 (= (head!10409 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (c!826975 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun b!4863809 () Bool)

(declare-fun e!3040992 () Bool)

(assert (=> b!4863809 (= e!3040992 e!3040996)))

(declare-fun res!2076449 () Bool)

(assert (=> b!4863809 (=> (not res!2076449) (not e!3040996))))

(assert (=> b!4863809 (= res!2076449 (not lt!1993247))))

(declare-fun b!4863810 () Bool)

(declare-fun res!2076446 () Bool)

(assert (=> b!4863810 (=> (not res!2076446) (not e!3040997))))

(assert (=> b!4863810 (= res!2076446 (isEmpty!29906 (tail!9555 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun b!4863811 () Bool)

(declare-fun e!3040994 () Bool)

(assert (=> b!4863811 (= e!3040994 (matchR!6487 (derivativeStep!3861 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) (head!10409 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))))) (tail!9555 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun b!4863812 () Bool)

(assert (=> b!4863812 (= e!3040991 (not (= (head!10409 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) (c!826975 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))))))))

(declare-fun b!4863813 () Bool)

(declare-fun res!2076445 () Bool)

(assert (=> b!4863813 (=> res!2076445 e!3040992)))

(assert (=> b!4863813 (= res!2076445 e!3040997)))

(declare-fun res!2076443 () Bool)

(assert (=> b!4863813 (=> (not res!2076443) (not e!3040997))))

(assert (=> b!4863813 (= res!2076443 lt!1993247)))

(declare-fun b!4863814 () Bool)

(assert (=> b!4863814 (= e!3040994 (nullable!4536 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun d!1561002 () Bool)

(assert (=> d!1561002 e!3040993))

(declare-fun c!827204 () Bool)

(assert (=> d!1561002 (= c!827204 ((_ is EmptyExpr!13101) (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))))))

(assert (=> d!1561002 (= lt!1993247 e!3040994)))

(declare-fun c!827203 () Bool)

(assert (=> d!1561002 (= c!827203 (isEmpty!29906 (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))))))

(assert (=> d!1561002 (validRegex!5863 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))

(assert (=> d!1561002 (= (matchR!6487 (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) (list!17460 (charsOf!5333 (_1!33177 (get!19217 lt!1992791))))) lt!1993247)))

(declare-fun b!4863807 () Bool)

(declare-fun res!2076444 () Bool)

(assert (=> b!4863807 (=> res!2076444 e!3040992)))

(assert (=> b!4863807 (= res!2076444 (not ((_ is ElementMatch!13101) (regex!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))))

(assert (=> b!4863807 (= e!3040995 e!3040992)))

(assert (= (and d!1561002 c!827203) b!4863814))

(assert (= (and d!1561002 (not c!827203)) b!4863811))

(assert (= (and d!1561002 c!827204) b!4863804))

(assert (= (and d!1561002 (not c!827204)) b!4863803))

(assert (= (and b!4863803 c!827205) b!4863801))

(assert (= (and b!4863803 (not c!827205)) b!4863807))

(assert (= (and b!4863807 (not res!2076444)) b!4863813))

(assert (= (and b!4863813 res!2076443) b!4863802))

(assert (= (and b!4863802 res!2076448) b!4863810))

(assert (= (and b!4863810 res!2076446) b!4863808))

(assert (= (and b!4863813 (not res!2076445)) b!4863809))

(assert (= (and b!4863809 res!2076449) b!4863806))

(assert (= (and b!4863806 (not res!2076450)) b!4863805))

(assert (= (and b!4863805 (not res!2076447)) b!4863812))

(assert (= (or b!4863804 b!4863802 b!4863806) bm!337855))

(assert (=> b!4863811 m!5860374))

(declare-fun m!5861732 () Bool)

(assert (=> b!4863811 m!5861732))

(assert (=> b!4863811 m!5861732))

(declare-fun m!5861734 () Bool)

(assert (=> b!4863811 m!5861734))

(assert (=> b!4863811 m!5860374))

(declare-fun m!5861736 () Bool)

(assert (=> b!4863811 m!5861736))

(assert (=> b!4863811 m!5861734))

(assert (=> b!4863811 m!5861736))

(declare-fun m!5861738 () Bool)

(assert (=> b!4863811 m!5861738))

(assert (=> b!4863808 m!5860374))

(assert (=> b!4863808 m!5861732))

(declare-fun m!5861740 () Bool)

(assert (=> b!4863814 m!5861740))

(assert (=> b!4863810 m!5860374))

(assert (=> b!4863810 m!5861736))

(assert (=> b!4863810 m!5861736))

(declare-fun m!5861742 () Bool)

(assert (=> b!4863810 m!5861742))

(assert (=> b!4863812 m!5860374))

(assert (=> b!4863812 m!5861732))

(assert (=> bm!337855 m!5860374))

(declare-fun m!5861744 () Bool)

(assert (=> bm!337855 m!5861744))

(assert (=> b!4863805 m!5860374))

(assert (=> b!4863805 m!5861736))

(assert (=> b!4863805 m!5861736))

(assert (=> b!4863805 m!5861742))

(assert (=> d!1561002 m!5860374))

(assert (=> d!1561002 m!5861744))

(declare-fun m!5861746 () Bool)

(assert (=> d!1561002 m!5861746))

(assert (=> b!4862812 d!1561002))

(assert (=> b!4862812 d!1560838))

(assert (=> b!4862812 d!1560834))

(assert (=> b!4862812 d!1560836))

(declare-fun d!1561004 () Bool)

(declare-fun c!827206 () Bool)

(assert (=> d!1561004 (= c!827206 ((_ is Node!14563) (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun e!3040998 () Bool)

(assert (=> d!1561004 (= (inv!71807 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) e!3040998)))

(declare-fun b!4863815 () Bool)

(assert (=> b!4863815 (= e!3040998 (inv!71813 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863816 () Bool)

(declare-fun e!3040999 () Bool)

(assert (=> b!4863816 (= e!3040998 e!3040999)))

(declare-fun res!2076451 () Bool)

(assert (=> b!4863816 (= res!2076451 (not ((_ is Leaf!24287) (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))))

(assert (=> b!4863816 (=> res!2076451 e!3040999)))

(declare-fun b!4863817 () Bool)

(assert (=> b!4863817 (= e!3040999 (inv!71814 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561004 c!827206) b!4863815))

(assert (= (and d!1561004 (not c!827206)) b!4863816))

(assert (= (and b!4863816 (not res!2076451)) b!4863817))

(declare-fun m!5861748 () Bool)

(assert (=> b!4863815 m!5861748))

(declare-fun m!5861750 () Bool)

(assert (=> b!4863817 m!5861750))

(assert (=> b!4863371 d!1561004))

(declare-fun d!1561006 () Bool)

(declare-fun c!827207 () Bool)

(assert (=> d!1561006 (= c!827207 ((_ is Node!14563) (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun e!3041000 () Bool)

(assert (=> d!1561006 (= (inv!71807 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) e!3041000)))

(declare-fun b!4863818 () Bool)

(assert (=> b!4863818 (= e!3041000 (inv!71813 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863819 () Bool)

(declare-fun e!3041001 () Bool)

(assert (=> b!4863819 (= e!3041000 e!3041001)))

(declare-fun res!2076452 () Bool)

(assert (=> b!4863819 (= res!2076452 (not ((_ is Leaf!24287) (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))))

(assert (=> b!4863819 (=> res!2076452 e!3041001)))

(declare-fun b!4863820 () Bool)

(assert (=> b!4863820 (= e!3041001 (inv!71814 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561006 c!827207) b!4863818))

(assert (= (and d!1561006 (not c!827207)) b!4863819))

(assert (= (and b!4863819 (not res!2076452)) b!4863820))

(declare-fun m!5861752 () Bool)

(assert (=> b!4863818 m!5861752))

(declare-fun m!5861754 () Bool)

(assert (=> b!4863820 m!5861754))

(assert (=> b!4863371 d!1561006))

(declare-fun d!1561008 () Bool)

(declare-fun c!827208 () Bool)

(assert (=> d!1561008 (= c!827208 ((_ is Node!14563) (left!40608 (right!40938 (c!826974 input!661)))))))

(declare-fun e!3041002 () Bool)

(assert (=> d!1561008 (= (inv!71807 (left!40608 (right!40938 (c!826974 input!661)))) e!3041002)))

(declare-fun b!4863821 () Bool)

(assert (=> b!4863821 (= e!3041002 (inv!71813 (left!40608 (right!40938 (c!826974 input!661)))))))

(declare-fun b!4863822 () Bool)

(declare-fun e!3041003 () Bool)

(assert (=> b!4863822 (= e!3041002 e!3041003)))

(declare-fun res!2076453 () Bool)

(assert (=> b!4863822 (= res!2076453 (not ((_ is Leaf!24287) (left!40608 (right!40938 (c!826974 input!661))))))))

(assert (=> b!4863822 (=> res!2076453 e!3041003)))

(declare-fun b!4863823 () Bool)

(assert (=> b!4863823 (= e!3041003 (inv!71814 (left!40608 (right!40938 (c!826974 input!661)))))))

(assert (= (and d!1561008 c!827208) b!4863821))

(assert (= (and d!1561008 (not c!827208)) b!4863822))

(assert (= (and b!4863822 (not res!2076453)) b!4863823))

(declare-fun m!5861756 () Bool)

(assert (=> b!4863821 m!5861756))

(declare-fun m!5861758 () Bool)

(assert (=> b!4863823 m!5861758))

(assert (=> b!4863455 d!1561008))

(declare-fun d!1561010 () Bool)

(declare-fun c!827209 () Bool)

(assert (=> d!1561010 (= c!827209 ((_ is Node!14563) (right!40938 (right!40938 (c!826974 input!661)))))))

(declare-fun e!3041004 () Bool)

(assert (=> d!1561010 (= (inv!71807 (right!40938 (right!40938 (c!826974 input!661)))) e!3041004)))

(declare-fun b!4863824 () Bool)

(assert (=> b!4863824 (= e!3041004 (inv!71813 (right!40938 (right!40938 (c!826974 input!661)))))))

(declare-fun b!4863825 () Bool)

(declare-fun e!3041005 () Bool)

(assert (=> b!4863825 (= e!3041004 e!3041005)))

(declare-fun res!2076454 () Bool)

(assert (=> b!4863825 (= res!2076454 (not ((_ is Leaf!24287) (right!40938 (right!40938 (c!826974 input!661))))))))

(assert (=> b!4863825 (=> res!2076454 e!3041005)))

(declare-fun b!4863826 () Bool)

(assert (=> b!4863826 (= e!3041005 (inv!71814 (right!40938 (right!40938 (c!826974 input!661)))))))

(assert (= (and d!1561010 c!827209) b!4863824))

(assert (= (and d!1561010 (not c!827209)) b!4863825))

(assert (= (and b!4863825 (not res!2076454)) b!4863826))

(declare-fun m!5861760 () Bool)

(assert (=> b!4863824 m!5861760))

(declare-fun m!5861762 () Bool)

(assert (=> b!4863826 m!5861762))

(assert (=> b!4863455 d!1561010))

(assert (=> b!4862846 d!1560842))

(assert (=> b!4862846 d!1560844))

(declare-fun b!4863827 () Bool)

(declare-fun e!3041006 () List!56037)

(assert (=> b!4863827 (= e!3041006 Nil!55913)))

(declare-fun b!4863828 () Bool)

(declare-fun e!3041007 () List!56037)

(assert (=> b!4863828 (= e!3041006 e!3041007)))

(declare-fun c!827211 () Bool)

(assert (=> b!4863828 (= c!827211 ((_ is Leaf!24287) (c!826974 lt!1992740)))))

(declare-fun b!4863830 () Bool)

(assert (=> b!4863830 (= e!3041007 (++!12171 (list!17462 (left!40608 (c!826974 lt!1992740))) (list!17462 (right!40938 (c!826974 lt!1992740)))))))

(declare-fun d!1561012 () Bool)

(declare-fun c!827210 () Bool)

(assert (=> d!1561012 (= c!827210 ((_ is Empty!14563) (c!826974 lt!1992740)))))

(assert (=> d!1561012 (= (list!17462 (c!826974 lt!1992740)) e!3041006)))

(declare-fun b!4863829 () Bool)

(assert (=> b!4863829 (= e!3041007 (list!17466 (xs!17869 (c!826974 lt!1992740))))))

(assert (= (and d!1561012 c!827210) b!4863827))

(assert (= (and d!1561012 (not c!827210)) b!4863828))

(assert (= (and b!4863828 c!827211) b!4863829))

(assert (= (and b!4863828 (not c!827211)) b!4863830))

(declare-fun m!5861764 () Bool)

(assert (=> b!4863830 m!5861764))

(declare-fun m!5861766 () Bool)

(assert (=> b!4863830 m!5861766))

(assert (=> b!4863830 m!5861764))

(assert (=> b!4863830 m!5861766))

(declare-fun m!5861768 () Bool)

(assert (=> b!4863830 m!5861768))

(declare-fun m!5861770 () Bool)

(assert (=> b!4863829 m!5861770))

(assert (=> d!1560714 d!1561012))

(declare-fun d!1561014 () Bool)

(assert (=> d!1561014 (= (isEmpty!29894 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661))) (not ((_ is Some!13772) (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 input!661)))))))

(assert (=> d!1560622 d!1561014))

(declare-fun d!1561016 () Bool)

(assert (=> d!1561016 (= (list!17464 lt!1992958) (list!17468 (c!826976 lt!1992958)))))

(declare-fun bs!1174090 () Bool)

(assert (= bs!1174090 d!1561016))

(declare-fun m!5861772 () Bool)

(assert (=> bs!1174090 m!5861772))

(assert (=> b!4863192 d!1561016))

(declare-fun d!1561018 () Bool)

(assert (=> d!1561018 (= (list!17464 (_1!33173 lt!1992735)) (list!17468 (c!826976 (_1!33173 lt!1992735))))))

(declare-fun bs!1174091 () Bool)

(assert (= bs!1174091 d!1561018))

(declare-fun m!5861774 () Bool)

(assert (=> bs!1174091 m!5861774))

(assert (=> b!4863192 d!1561018))

(declare-fun d!1561020 () Bool)

(declare-fun c!827212 () Bool)

(assert (=> d!1561020 (= c!827212 ((_ is Nil!55913) (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun e!3041008 () (InoxSet C!26400))

(assert (=> d!1561020 (= (content!9960 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) e!3041008)))

(declare-fun b!4863831 () Bool)

(assert (=> b!4863831 (= e!3041008 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863832 () Bool)

(assert (=> b!4863832 (= e!3041008 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) true) (content!9960 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(assert (= (and d!1561020 c!827212) b!4863831))

(assert (= (and d!1561020 (not c!827212)) b!4863832))

(declare-fun m!5861776 () Bool)

(assert (=> b!4863832 m!5861776))

(assert (=> b!4863832 m!5861680))

(assert (=> b!4863098 d!1561020))

(declare-fun d!1561022 () Bool)

(declare-fun lt!1993250 () Bool)

(declare-fun content!9961 (List!56041) (InoxSet String!63098))

(assert (=> d!1561022 (= lt!1993250 (select (content!9961 Nil!55917) (tag!8890 (h!62362 rules!1248))))))

(declare-fun e!3041014 () Bool)

(assert (=> d!1561022 (= lt!1993250 e!3041014)))

(declare-fun res!2076459 () Bool)

(assert (=> d!1561022 (=> (not res!2076459) (not e!3041014))))

(assert (=> d!1561022 (= res!2076459 ((_ is Cons!55917) Nil!55917))))

(assert (=> d!1561022 (= (contains!19385 Nil!55917 (tag!8890 (h!62362 rules!1248))) lt!1993250)))

(declare-fun b!4863837 () Bool)

(declare-fun e!3041013 () Bool)

(assert (=> b!4863837 (= e!3041014 e!3041013)))

(declare-fun res!2076460 () Bool)

(assert (=> b!4863837 (=> res!2076460 e!3041013)))

(assert (=> b!4863837 (= res!2076460 (= (h!62365 Nil!55917) (tag!8890 (h!62362 rules!1248))))))

(declare-fun b!4863838 () Bool)

(assert (=> b!4863838 (= e!3041013 (contains!19385 (t!363673 Nil!55917) (tag!8890 (h!62362 rules!1248))))))

(assert (= (and d!1561022 res!2076459) b!4863837))

(assert (= (and b!4863837 (not res!2076460)) b!4863838))

(declare-fun m!5861778 () Bool)

(assert (=> d!1561022 m!5861778))

(declare-fun m!5861780 () Bool)

(assert (=> d!1561022 m!5861780))

(declare-fun m!5861782 () Bool)

(assert (=> b!4863838 m!5861782))

(assert (=> b!4863232 d!1561022))

(declare-fun d!1561024 () Bool)

(assert (=> d!1561024 (= (height!1918 (left!40608 (c!826974 input!661))) (ite ((_ is Empty!14563) (left!40608 (c!826974 input!661))) 0 (ite ((_ is Leaf!24287) (left!40608 (c!826974 input!661))) 1 (cheight!14774 (left!40608 (c!826974 input!661))))))))

(assert (=> b!4863160 d!1561024))

(declare-fun d!1561026 () Bool)

(assert (=> d!1561026 (= (height!1918 (right!40938 (c!826974 input!661))) (ite ((_ is Empty!14563) (right!40938 (c!826974 input!661))) 0 (ite ((_ is Leaf!24287) (right!40938 (c!826974 input!661))) 1 (cheight!14774 (right!40938 (c!826974 input!661))))))))

(assert (=> b!4863160 d!1561026))

(assert (=> d!1560656 d!1560624))

(declare-fun d!1561028 () Bool)

(assert (=> d!1561028 (isPrefix!4762 lt!1992773 lt!1992772)))

(assert (=> d!1561028 true))

(declare-fun _$45!2114 () Unit!145922)

(assert (=> d!1561028 (= (choose!35570 lt!1992773 lt!1992772) _$45!2114)))

(declare-fun bs!1174092 () Bool)

(assert (= bs!1174092 d!1561028))

(assert (=> bs!1174092 m!5860328))

(assert (=> d!1560656 d!1561028))

(declare-fun d!1561030 () Bool)

(declare-fun res!2076461 () Bool)

(declare-fun e!3041015 () Bool)

(assert (=> d!1561030 (=> (not res!2076461) (not e!3041015))))

(assert (=> d!1561030 (= res!2076461 (= (csize!29356 (right!40938 (c!826974 totalInput!332))) (+ (size!36842 (left!40608 (right!40938 (c!826974 totalInput!332)))) (size!36842 (right!40938 (right!40938 (c!826974 totalInput!332)))))))))

(assert (=> d!1561030 (= (inv!71813 (right!40938 (c!826974 totalInput!332))) e!3041015)))

(declare-fun b!4863839 () Bool)

(declare-fun res!2076462 () Bool)

(assert (=> b!4863839 (=> (not res!2076462) (not e!3041015))))

(assert (=> b!4863839 (= res!2076462 (and (not (= (left!40608 (right!40938 (c!826974 totalInput!332))) Empty!14563)) (not (= (right!40938 (right!40938 (c!826974 totalInput!332))) Empty!14563))))))

(declare-fun b!4863840 () Bool)

(declare-fun res!2076463 () Bool)

(assert (=> b!4863840 (=> (not res!2076463) (not e!3041015))))

(assert (=> b!4863840 (= res!2076463 (= (cheight!14774 (right!40938 (c!826974 totalInput!332))) (+ (max!0 (height!1918 (left!40608 (right!40938 (c!826974 totalInput!332)))) (height!1918 (right!40938 (right!40938 (c!826974 totalInput!332))))) 1)))))

(declare-fun b!4863841 () Bool)

(assert (=> b!4863841 (= e!3041015 (<= 0 (cheight!14774 (right!40938 (c!826974 totalInput!332)))))))

(assert (= (and d!1561030 res!2076461) b!4863839))

(assert (= (and b!4863839 res!2076462) b!4863840))

(assert (= (and b!4863840 res!2076463) b!4863841))

(declare-fun m!5861784 () Bool)

(assert (=> d!1561030 m!5861784))

(declare-fun m!5861786 () Bool)

(assert (=> d!1561030 m!5861786))

(declare-fun m!5861788 () Bool)

(assert (=> b!4863840 m!5861788))

(declare-fun m!5861790 () Bool)

(assert (=> b!4863840 m!5861790))

(assert (=> b!4863840 m!5861788))

(assert (=> b!4863840 m!5861790))

(declare-fun m!5861792 () Bool)

(assert (=> b!4863840 m!5861792))

(assert (=> b!4863157 d!1561030))

(assert (=> b!4862996 d!1560984))

(declare-fun d!1561032 () Bool)

(declare-fun lt!1993253 () Bool)

(assert (=> d!1561032 (= lt!1993253 (isEmpty!29906 (list!17462 (left!40608 (c!826974 input!661)))))))

(assert (=> d!1561032 (= lt!1993253 (= (size!36842 (left!40608 (c!826974 input!661))) 0))))

(assert (=> d!1561032 (= (isEmpty!29897 (left!40608 (c!826974 input!661))) lt!1993253)))

(declare-fun bs!1174093 () Bool)

(assert (= bs!1174093 d!1561032))

(assert (=> bs!1174093 m!5860502))

(assert (=> bs!1174093 m!5860502))

(declare-fun m!5861794 () Bool)

(assert (=> bs!1174093 m!5861794))

(assert (=> bs!1174093 m!5860790))

(assert (=> b!4863164 d!1561032))

(declare-fun b!4863842 () Bool)

(declare-fun e!3041019 () Option!13771)

(declare-fun call!337861 () Option!13771)

(assert (=> b!4863842 (= e!3041019 call!337861)))

(declare-fun b!4863843 () Bool)

(declare-fun res!2076469 () Bool)

(declare-fun e!3041020 () Bool)

(assert (=> b!4863843 (=> (not res!2076469) (not e!3041020))))

(declare-fun e!3041017 () Bool)

(assert (=> b!4863843 (= res!2076469 e!3041017)))

(declare-fun res!2076465 () Bool)

(assert (=> b!4863843 (=> res!2076465 e!3041017)))

(declare-fun lt!1993257 () Option!13771)

(assert (=> b!4863843 (= res!2076465 (not (isDefined!10840 lt!1993257)))))

(declare-fun b!4863844 () Bool)

(declare-fun e!3041018 () Bool)

(declare-fun e!3041016 () Bool)

(assert (=> b!4863844 (= e!3041018 e!3041016)))

(declare-fun res!2076464 () Bool)

(assert (=> b!4863844 (=> (not res!2076464) (not e!3041016))))

(assert (=> b!4863844 (= res!2076464 (= (_1!33172 (get!19216 lt!1993257)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661))))))))

(declare-fun b!4863845 () Bool)

(assert (=> b!4863845 (= e!3041016 (= (list!17460 (_2!33172 (get!19216 lt!1993257))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661))))))))

(declare-fun b!4863846 () Bool)

(assert (=> b!4863846 (= e!3041020 e!3041018)))

(declare-fun res!2076468 () Bool)

(assert (=> b!4863846 (=> res!2076468 e!3041018)))

(assert (=> b!4863846 (= res!2076468 (not (isDefined!10840 lt!1993257)))))

(declare-fun e!3041021 () Bool)

(declare-fun b!4863847 () Bool)

(assert (=> b!4863847 (= e!3041021 (= (list!17460 (_2!33172 (get!19216 lt!1993257))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661))))))))

(declare-fun d!1561034 () Bool)

(assert (=> d!1561034 e!3041020))

(declare-fun res!2076467 () Bool)

(assert (=> d!1561034 (=> (not res!2076467) (not e!3041020))))

(assert (=> d!1561034 (= res!2076467 (= (isDefined!10840 lt!1993257) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661)))))))

(assert (=> d!1561034 (= lt!1993257 e!3041019)))

(declare-fun c!827213 () Bool)

(assert (=> d!1561034 (= c!827213 (and ((_ is Cons!55914) (t!363662 (t!363662 rules!1248))) ((_ is Nil!55914) (t!363662 (t!363662 (t!363662 rules!1248))))))))

(declare-fun lt!1993256 () Unit!145922)

(declare-fun lt!1993255 () Unit!145922)

(assert (=> d!1561034 (= lt!1993256 lt!1993255)))

(declare-fun lt!1993260 () List!56037)

(declare-fun lt!1993259 () List!56037)

(assert (=> d!1561034 (isPrefix!4762 lt!1993260 lt!1993259)))

(assert (=> d!1561034 (= lt!1993255 (lemmaIsPrefixRefl!3159 lt!1993260 lt!1993259))))

(assert (=> d!1561034 (= lt!1993259 (list!17460 input!661))))

(assert (=> d!1561034 (= lt!1993260 (list!17460 input!661))))

(assert (=> d!1561034 (rulesValidInductive!3015 thiss!11777 (t!363662 (t!363662 rules!1248)))))

(assert (=> d!1561034 (= (maxPrefixZipperSequenceV2!625 thiss!11777 (t!363662 (t!363662 rules!1248)) input!661 totalInput!332) lt!1993257)))

(declare-fun b!4863848 () Bool)

(declare-fun lt!1993258 () Option!13771)

(declare-fun lt!1993254 () Option!13771)

(assert (=> b!4863848 (= e!3041019 (ite (and ((_ is None!13770) lt!1993258) ((_ is None!13770) lt!1993254)) None!13770 (ite ((_ is None!13770) lt!1993254) lt!1993258 (ite ((_ is None!13770) lt!1993258) lt!1993254 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1993258))) (size!36832 (_1!33172 (v!49672 lt!1993254)))) lt!1993258 lt!1993254)))))))

(assert (=> b!4863848 (= lt!1993258 call!337861)))

(assert (=> b!4863848 (= lt!1993254 (maxPrefixZipperSequenceV2!625 thiss!11777 (t!363662 (t!363662 (t!363662 rules!1248))) input!661 totalInput!332))))

(declare-fun bm!337856 () Bool)

(assert (=> bm!337856 (= call!337861 (maxPrefixOneRuleZipperSequenceV2!254 thiss!11777 (h!62362 (t!363662 (t!363662 rules!1248))) input!661 totalInput!332))))

(declare-fun b!4863849 () Bool)

(assert (=> b!4863849 (= e!3041017 e!3041021)))

(declare-fun res!2076466 () Bool)

(assert (=> b!4863849 (=> (not res!2076466) (not e!3041021))))

(assert (=> b!4863849 (= res!2076466 (= (_1!33172 (get!19216 lt!1993257)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 (t!363662 rules!1248)) (list!17460 input!661))))))))

(assert (= (and d!1561034 c!827213) b!4863842))

(assert (= (and d!1561034 (not c!827213)) b!4863848))

(assert (= (or b!4863842 b!4863848) bm!337856))

(assert (= (and d!1561034 res!2076467) b!4863843))

(assert (= (and b!4863843 (not res!2076465)) b!4863849))

(assert (= (and b!4863849 res!2076466) b!4863847))

(assert (= (and b!4863843 res!2076469) b!4863846))

(assert (= (and b!4863846 (not res!2076468)) b!4863844))

(assert (= (and b!4863844 res!2076464) b!4863845))

(assert (=> b!4863847 m!5860130))

(assert (=> b!4863847 m!5861326))

(assert (=> b!4863847 m!5860130))

(declare-fun m!5861796 () Bool)

(assert (=> b!4863847 m!5861796))

(declare-fun m!5861798 () Bool)

(assert (=> b!4863847 m!5861798))

(assert (=> b!4863847 m!5861326))

(declare-fun m!5861800 () Bool)

(assert (=> b!4863847 m!5861800))

(declare-fun m!5861802 () Bool)

(assert (=> b!4863848 m!5861802))

(assert (=> b!4863844 m!5861796))

(assert (=> b!4863844 m!5860130))

(assert (=> b!4863844 m!5860130))

(assert (=> b!4863844 m!5861216))

(assert (=> b!4863844 m!5861216))

(declare-fun m!5861804 () Bool)

(assert (=> b!4863844 m!5861804))

(assert (=> b!4863845 m!5861798))

(assert (=> b!4863845 m!5861216))

(assert (=> b!4863845 m!5861804))

(assert (=> b!4863845 m!5860130))

(assert (=> b!4863845 m!5860130))

(assert (=> b!4863845 m!5861216))

(assert (=> b!4863845 m!5861796))

(declare-fun m!5861806 () Bool)

(assert (=> bm!337856 m!5861806))

(declare-fun m!5861808 () Bool)

(assert (=> b!4863843 m!5861808))

(assert (=> b!4863849 m!5861796))

(assert (=> b!4863849 m!5860130))

(assert (=> b!4863849 m!5860130))

(assert (=> b!4863849 m!5861326))

(assert (=> b!4863849 m!5861326))

(assert (=> b!4863849 m!5861800))

(assert (=> b!4863846 m!5861808))

(assert (=> d!1561034 m!5861334))

(declare-fun m!5861810 () Bool)

(assert (=> d!1561034 m!5861810))

(assert (=> d!1561034 m!5861326))

(declare-fun m!5861812 () Bool)

(assert (=> d!1561034 m!5861812))

(assert (=> d!1561034 m!5860130))

(assert (=> d!1561034 m!5861326))

(assert (=> d!1561034 m!5860130))

(assert (=> d!1561034 m!5861808))

(declare-fun m!5861814 () Bool)

(assert (=> d!1561034 m!5861814))

(assert (=> b!4863220 d!1561034))

(assert (=> d!1560694 d!1560626))

(declare-fun d!1561036 () Bool)

(declare-fun res!2076470 () Bool)

(declare-fun e!3041022 () Bool)

(assert (=> d!1561036 (=> res!2076470 e!3041022)))

(assert (=> d!1561036 (= res!2076470 ((_ is Nil!55914) rules!1248))))

(assert (=> d!1561036 (= (forall!13043 rules!1248 lambda!243329) e!3041022)))

(declare-fun b!4863850 () Bool)

(declare-fun e!3041023 () Bool)

(assert (=> b!4863850 (= e!3041022 e!3041023)))

(declare-fun res!2076471 () Bool)

(assert (=> b!4863850 (=> (not res!2076471) (not e!3041023))))

(assert (=> b!4863850 (= res!2076471 (dynLambda!22427 lambda!243329 (h!62362 rules!1248)))))

(declare-fun b!4863851 () Bool)

(assert (=> b!4863851 (= e!3041023 (forall!13043 (t!363662 rules!1248) lambda!243329))))

(assert (= (and d!1561036 (not res!2076470)) b!4863850))

(assert (= (and b!4863850 res!2076471) b!4863851))

(declare-fun b_lambda!193423 () Bool)

(assert (=> (not b_lambda!193423) (not b!4863850)))

(declare-fun m!5861816 () Bool)

(assert (=> b!4863850 m!5861816))

(declare-fun m!5861818 () Bool)

(assert (=> b!4863851 m!5861818))

(assert (=> d!1560694 d!1561036))

(declare-fun d!1561038 () Bool)

(assert (=> d!1561038 (= (isEmpty!29903 (list!17464 (_1!33173 lt!1992737))) ((_ is Nil!55915) (list!17464 (_1!33173 lt!1992737))))))

(assert (=> d!1560768 d!1561038))

(assert (=> d!1560768 d!1560720))

(declare-fun d!1561040 () Bool)

(declare-fun lt!1993263 () Bool)

(assert (=> d!1561040 (= lt!1993263 (isEmpty!29903 (list!17468 (c!826976 (_1!33173 lt!1992737)))))))

(assert (=> d!1561040 (= lt!1993263 (= (size!36841 (c!826976 (_1!33173 lt!1992737))) 0))))

(assert (=> d!1561040 (= (isEmpty!29904 (c!826976 (_1!33173 lt!1992737))) lt!1993263)))

(declare-fun bs!1174094 () Bool)

(assert (= bs!1174094 d!1561040))

(assert (=> bs!1174094 m!5860700))

(assert (=> bs!1174094 m!5860700))

(declare-fun m!5861820 () Bool)

(assert (=> bs!1174094 m!5861820))

(assert (=> bs!1174094 m!5860518))

(assert (=> d!1560768 d!1561040))

(declare-fun d!1561042 () Bool)

(assert (=> d!1561042 (= (list!17466 (xs!17869 (c!826974 input!661))) (innerList!14651 (xs!17869 (c!826974 input!661))))))

(assert (=> b!4862922 d!1561042))

(assert (=> b!4863216 d!1560864))

(assert (=> b!4863216 d!1560860))

(assert (=> b!4863216 d!1560866))

(assert (=> b!4863216 d!1560592))

(declare-fun d!1561044 () Bool)

(declare-fun lt!1993264 () Int)

(assert (=> d!1561044 (>= lt!1993264 0)))

(declare-fun e!3041024 () Int)

(assert (=> d!1561044 (= lt!1993264 e!3041024)))

(declare-fun c!827214 () Bool)

(assert (=> d!1561044 (= c!827214 ((_ is Nil!55913) (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561044 (= (size!36838 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) lt!1993264)))

(declare-fun b!4863852 () Bool)

(assert (=> b!4863852 (= e!3041024 0)))

(declare-fun b!4863853 () Bool)

(assert (=> b!4863853 (= e!3041024 (+ 1 (size!36838 (t!363661 (t!363661 (list!17460 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(assert (= (and d!1561044 c!827214) b!4863852))

(assert (= (and d!1561044 (not c!827214)) b!4863853))

(assert (=> b!4863853 m!5861684))

(assert (=> b!4863225 d!1561044))

(assert (=> b!4863327 d!1560962))

(assert (=> b!4863327 d!1560960))

(assert (=> b!4863327 d!1560958))

(declare-fun d!1561046 () Bool)

(assert (=> d!1561046 (= (list!17460 (_2!33172 (get!19216 lt!1993036))) (list!17462 (c!826974 (_2!33172 (get!19216 lt!1993036)))))))

(declare-fun bs!1174095 () Bool)

(assert (= bs!1174095 d!1561046))

(declare-fun m!5861822 () Bool)

(assert (=> bs!1174095 m!5861822))

(assert (=> b!4863327 d!1561046))

(assert (=> b!4863327 d!1560592))

(declare-fun d!1561048 () Bool)

(assert (=> d!1561048 (= (inv!71815 (xs!17869 (left!40608 (c!826974 input!661)))) (<= (size!36838 (innerList!14651 (xs!17869 (left!40608 (c!826974 input!661))))) 2147483647))))

(declare-fun bs!1174096 () Bool)

(assert (= bs!1174096 d!1561048))

(declare-fun m!5861824 () Bool)

(assert (=> bs!1174096 m!5861824))

(assert (=> b!4863449 d!1561048))

(declare-fun d!1561050 () Bool)

(assert (=> d!1561050 (= (inv!71815 (xs!17869 (left!40608 (c!826974 totalInput!332)))) (<= (size!36838 (innerList!14651 (xs!17869 (left!40608 (c!826974 totalInput!332))))) 2147483647))))

(declare-fun bs!1174097 () Bool)

(assert (= bs!1174097 d!1561050))

(declare-fun m!5861826 () Bool)

(assert (=> bs!1174097 m!5861826))

(assert (=> b!4863380 d!1561050))

(declare-fun d!1561052 () Bool)

(declare-fun lt!1993265 () Int)

(assert (=> d!1561052 (>= lt!1993265 0)))

(declare-fun e!3041025 () Int)

(assert (=> d!1561052 (= lt!1993265 e!3041025)))

(declare-fun c!827215 () Bool)

(assert (=> d!1561052 (= c!827215 ((_ is Nil!55913) (_2!33177 (get!19217 lt!1992791))))))

(assert (=> d!1561052 (= (size!36838 (_2!33177 (get!19217 lt!1992791))) lt!1993265)))

(declare-fun b!4863854 () Bool)

(assert (=> b!4863854 (= e!3041025 0)))

(declare-fun b!4863855 () Bool)

(assert (=> b!4863855 (= e!3041025 (+ 1 (size!36838 (t!363661 (_2!33177 (get!19217 lt!1992791))))))))

(assert (= (and d!1561052 c!827215) b!4863854))

(assert (= (and d!1561052 (not c!827215)) b!4863855))

(declare-fun m!5861828 () Bool)

(assert (=> b!4863855 m!5861828))

(assert (=> b!4862820 d!1561052))

(assert (=> b!4862820 d!1560838))

(declare-fun d!1561054 () Bool)

(declare-fun lt!1993266 () Int)

(assert (=> d!1561054 (>= lt!1993266 0)))

(declare-fun e!3041026 () Int)

(assert (=> d!1561054 (= lt!1993266 e!3041026)))

(declare-fun c!827216 () Bool)

(assert (=> d!1561054 (= c!827216 ((_ is Nil!55913) (list!17460 input!661)))))

(assert (=> d!1561054 (= (size!36838 (list!17460 input!661)) lt!1993266)))

(declare-fun b!4863856 () Bool)

(assert (=> b!4863856 (= e!3041026 0)))

(declare-fun b!4863857 () Bool)

(assert (=> b!4863857 (= e!3041026 (+ 1 (size!36838 (t!363661 (list!17460 input!661)))))))

(assert (= (and d!1561054 c!827216) b!4863856))

(assert (= (and d!1561054 (not c!827216)) b!4863857))

(declare-fun m!5861830 () Bool)

(assert (=> b!4863857 m!5861830))

(assert (=> b!4862820 d!1561054))

(declare-fun b!4863858 () Bool)

(declare-fun e!3041029 () Bool)

(declare-fun e!3041031 () Bool)

(assert (=> b!4863858 (= e!3041029 e!3041031)))

(declare-fun res!2076476 () Bool)

(assert (=> b!4863858 (=> (not res!2076476) (not e!3041031))))

(declare-fun lt!1993269 () Option!13771)

(assert (=> b!4863858 (= res!2076476 (= (_1!33172 (get!19216 lt!1993269)) (_1!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863859 () Bool)

(declare-fun res!2076472 () Bool)

(declare-fun e!3041030 () Bool)

(assert (=> b!4863859 (=> (not res!2076472) (not e!3041030))))

(declare-fun e!3041028 () Bool)

(assert (=> b!4863859 (= res!2076472 e!3041028)))

(declare-fun res!2076475 () Bool)

(assert (=> b!4863859 (=> res!2076475 e!3041028)))

(assert (=> b!4863859 (= res!2076475 (not (isDefined!10840 lt!1993269)))))

(declare-fun b!4863860 () Bool)

(declare-fun e!3041027 () Option!13771)

(declare-fun call!337862 () Option!13771)

(assert (=> b!4863860 (= e!3041027 call!337862)))

(declare-fun bm!337857 () Bool)

(assert (=> bm!337857 (= call!337862 (maxPrefixOneRuleZipperSequence!573 thiss!11777 (h!62362 (t!363662 rules!1248)) (_2!33172 (v!49672 lt!1992698))))))

(declare-fun b!4863861 () Bool)

(declare-fun lt!1993268 () Option!13771)

(declare-fun lt!1993272 () Option!13771)

(assert (=> b!4863861 (= e!3041027 (ite (and ((_ is None!13770) lt!1993268) ((_ is None!13770) lt!1993272)) None!13770 (ite ((_ is None!13770) lt!1993272) lt!1993268 (ite ((_ is None!13770) lt!1993268) lt!1993272 (ite (>= (size!36832 (_1!33172 (v!49672 lt!1993268))) (size!36832 (_1!33172 (v!49672 lt!1993272)))) lt!1993268 lt!1993272)))))))

(assert (=> b!4863861 (= lt!1993268 call!337862)))

(assert (=> b!4863861 (= lt!1993272 (maxPrefixZipperSequence!1221 thiss!11777 (t!363662 (t!363662 rules!1248)) (_2!33172 (v!49672 lt!1992698))))))

(declare-fun d!1561056 () Bool)

(assert (=> d!1561056 e!3041030))

(declare-fun res!2076477 () Bool)

(assert (=> d!1561056 (=> (not res!2076477) (not e!3041030))))

(assert (=> d!1561056 (= res!2076477 (= (isDefined!10840 lt!1993269) (isDefined!10841 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561056 (= lt!1993269 e!3041027)))

(declare-fun c!827217 () Bool)

(assert (=> d!1561056 (= c!827217 (and ((_ is Cons!55914) (t!363662 rules!1248)) ((_ is Nil!55914) (t!363662 (t!363662 rules!1248)))))))

(declare-fun lt!1993271 () Unit!145922)

(declare-fun lt!1993270 () Unit!145922)

(assert (=> d!1561056 (= lt!1993271 lt!1993270)))

(declare-fun lt!1993267 () List!56037)

(declare-fun lt!1993273 () List!56037)

(assert (=> d!1561056 (isPrefix!4762 lt!1993267 lt!1993273)))

(assert (=> d!1561056 (= lt!1993270 (lemmaIsPrefixRefl!3159 lt!1993267 lt!1993273))))

(assert (=> d!1561056 (= lt!1993273 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1561056 (= lt!1993267 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1561056 (rulesValidInductive!3015 thiss!11777 (t!363662 rules!1248))))

(assert (=> d!1561056 (= (maxPrefixZipperSequence!1221 thiss!11777 (t!363662 rules!1248) (_2!33172 (v!49672 lt!1992698))) lt!1993269)))

(declare-fun b!4863862 () Bool)

(assert (=> b!4863862 (= e!3041031 (= (list!17460 (_2!33172 (get!19216 lt!1993269))) (_2!33177 (get!19217 (maxPrefix!4545 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863863 () Bool)

(declare-fun e!3041032 () Bool)

(assert (=> b!4863863 (= e!3041028 e!3041032)))

(declare-fun res!2076474 () Bool)

(assert (=> b!4863863 (=> (not res!2076474) (not e!3041032))))

(assert (=> b!4863863 (= res!2076474 (= (_1!33172 (get!19216 lt!1993269)) (_1!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863864 () Bool)

(assert (=> b!4863864 (= e!3041032 (= (list!17460 (_2!33172 (get!19216 lt!1993269))) (_2!33177 (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863865 () Bool)

(assert (=> b!4863865 (= e!3041030 e!3041029)))

(declare-fun res!2076473 () Bool)

(assert (=> b!4863865 (=> res!2076473 e!3041029)))

(assert (=> b!4863865 (= res!2076473 (not (isDefined!10840 lt!1993269)))))

(assert (= (and d!1561056 c!827217) b!4863860))

(assert (= (and d!1561056 (not c!827217)) b!4863861))

(assert (= (or b!4863860 b!4863861) bm!337857))

(assert (= (and d!1561056 res!2076477) b!4863859))

(assert (= (and b!4863859 (not res!2076475)) b!4863863))

(assert (= (and b!4863863 res!2076474) b!4863864))

(assert (= (and b!4863859 res!2076472) b!4863865))

(assert (= (and b!4863865 (not res!2076473)) b!4863858))

(assert (= (and b!4863858 res!2076476) b!4863862))

(declare-fun m!5861832 () Bool)

(assert (=> b!4863859 m!5861832))

(declare-fun m!5861834 () Bool)

(assert (=> b!4863858 m!5861834))

(assert (=> b!4863858 m!5860108))

(assert (=> b!4863858 m!5860108))

(assert (=> b!4863858 m!5861318))

(assert (=> b!4863858 m!5861318))

(declare-fun m!5861836 () Bool)

(assert (=> b!4863858 m!5861836))

(assert (=> b!4863862 m!5861834))

(assert (=> b!4863862 m!5861318))

(assert (=> b!4863862 m!5861836))

(declare-fun m!5861838 () Bool)

(assert (=> b!4863862 m!5861838))

(assert (=> b!4863862 m!5860108))

(assert (=> b!4863862 m!5861318))

(assert (=> b!4863862 m!5860108))

(declare-fun m!5861840 () Bool)

(assert (=> bm!337857 m!5861840))

(assert (=> d!1561056 m!5861832))

(declare-fun m!5861842 () Bool)

(assert (=> d!1561056 m!5861842))

(declare-fun m!5861844 () Bool)

(assert (=> d!1561056 m!5861844))

(assert (=> d!1561056 m!5860108))

(declare-fun m!5861846 () Bool)

(assert (=> d!1561056 m!5861846))

(assert (=> d!1561056 m!5860498))

(declare-fun m!5861848 () Bool)

(assert (=> d!1561056 m!5861848))

(assert (=> d!1561056 m!5860108))

(assert (=> d!1561056 m!5861842))

(assert (=> b!4863865 m!5861832))

(declare-fun m!5861850 () Bool)

(assert (=> b!4863861 m!5861850))

(assert (=> b!4863864 m!5861834))

(assert (=> b!4863864 m!5861838))

(assert (=> b!4863864 m!5861842))

(declare-fun m!5861852 () Bool)

(assert (=> b!4863864 m!5861852))

(assert (=> b!4863864 m!5860108))

(assert (=> b!4863864 m!5860108))

(assert (=> b!4863864 m!5861842))

(assert (=> b!4863863 m!5861834))

(assert (=> b!4863863 m!5860108))

(assert (=> b!4863863 m!5860108))

(assert (=> b!4863863 m!5861842))

(assert (=> b!4863863 m!5861842))

(assert (=> b!4863863 m!5861852))

(assert (=> b!4862992 d!1561056))

(declare-fun d!1561058 () Bool)

(declare-fun e!3041034 () Bool)

(assert (=> d!1561058 e!3041034))

(declare-fun res!2076479 () Bool)

(assert (=> d!1561058 (=> (not res!2076479) (not e!3041034))))

(declare-fun lt!1993274 () List!56037)

(assert (=> d!1561058 (= res!2076479 (= (content!9960 lt!1993274) ((_ map or) (content!9960 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (content!9960 (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))))

(declare-fun e!3041033 () List!56037)

(assert (=> d!1561058 (= lt!1993274 e!3041033)))

(declare-fun c!827218 () Bool)

(assert (=> d!1561058 (= c!827218 ((_ is Nil!55913) (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561058 (= (++!12171 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))) (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) lt!1993274)))

(declare-fun b!4863868 () Bool)

(declare-fun res!2076478 () Bool)

(assert (=> b!4863868 (=> (not res!2076478) (not e!3041034))))

(assert (=> b!4863868 (= res!2076478 (= (size!36838 lt!1993274) (+ (size!36838 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (size!36838 (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4863867 () Bool)

(assert (=> b!4863867 (= e!3041033 (Cons!55913 (h!62361 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (++!12171 (t!363661 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863869 () Bool)

(assert (=> b!4863869 (= e!3041034 (or (not (= (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))) Nil!55913)) (= lt!1993274 (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4863866 () Bool)

(assert (=> b!4863866 (= e!3041033 (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (= (and d!1561058 c!827218) b!4863866))

(assert (= (and d!1561058 (not c!827218)) b!4863867))

(assert (= (and d!1561058 res!2076479) b!4863868))

(assert (= (and b!4863868 res!2076478) b!4863869))

(declare-fun m!5861854 () Bool)

(assert (=> d!1561058 m!5861854))

(assert (=> d!1561058 m!5860692))

(declare-fun m!5861856 () Bool)

(assert (=> d!1561058 m!5861856))

(assert (=> d!1561058 m!5860694))

(declare-fun m!5861858 () Bool)

(assert (=> d!1561058 m!5861858))

(declare-fun m!5861860 () Bool)

(assert (=> b!4863868 m!5861860))

(assert (=> b!4863868 m!5860692))

(declare-fun m!5861862 () Bool)

(assert (=> b!4863868 m!5861862))

(assert (=> b!4863868 m!5860694))

(declare-fun m!5861864 () Bool)

(assert (=> b!4863868 m!5861864))

(assert (=> b!4863867 m!5860694))

(declare-fun m!5861866 () Bool)

(assert (=> b!4863867 m!5861866))

(assert (=> b!4863104 d!1561058))

(declare-fun b!4863870 () Bool)

(declare-fun e!3041035 () List!56037)

(assert (=> b!4863870 (= e!3041035 Nil!55913)))

(declare-fun b!4863871 () Bool)

(declare-fun e!3041036 () List!56037)

(assert (=> b!4863871 (= e!3041035 e!3041036)))

(declare-fun c!827220 () Bool)

(assert (=> b!4863871 (= c!827220 ((_ is Leaf!24287) (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4863873 () Bool)

(assert (=> b!4863873 (= e!3041036 (++!12171 (list!17462 (left!40608 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (list!17462 (right!40938 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun d!1561060 () Bool)

(declare-fun c!827219 () Bool)

(assert (=> d!1561060 (= c!827219 ((_ is Empty!14563) (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1561060 (= (list!17462 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698))))) e!3041035)))

(declare-fun b!4863872 () Bool)

(assert (=> b!4863872 (= e!3041036 (list!17466 (xs!17869 (left!40608 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1561060 c!827219) b!4863870))

(assert (= (and d!1561060 (not c!827219)) b!4863871))

(assert (= (and b!4863871 c!827220) b!4863872))

(assert (= (and b!4863871 (not c!827220)) b!4863873))

(declare-fun m!5861868 () Bool)

(assert (=> b!4863873 m!5861868))

(declare-fun m!5861870 () Bool)

(assert (=> b!4863873 m!5861870))

(assert (=> b!4863873 m!5861868))

(assert (=> b!4863873 m!5861870))

(declare-fun m!5861872 () Bool)

(assert (=> b!4863873 m!5861872))

(declare-fun m!5861874 () Bool)

(assert (=> b!4863872 m!5861874))

(assert (=> b!4863104 d!1561060))

(declare-fun b!4863874 () Bool)

(declare-fun e!3041037 () List!56037)

(assert (=> b!4863874 (= e!3041037 Nil!55913)))

(declare-fun b!4863875 () Bool)

(declare-fun e!3041038 () List!56037)

(assert (=> b!4863875 (= e!3041037 e!3041038)))

(declare-fun c!827222 () Bool)

(assert (=> b!4863875 (= c!827222 ((_ is Leaf!24287) (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun b!4863877 () Bool)

(assert (=> b!4863877 (= e!3041038 (++!12171 (list!17462 (left!40608 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))) (list!17462 (right!40938 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun d!1561062 () Bool)

(declare-fun c!827221 () Bool)

(assert (=> d!1561062 (= c!827221 ((_ is Empty!14563) (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1561062 (= (list!17462 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698))))) e!3041037)))

(declare-fun b!4863876 () Bool)

(assert (=> b!4863876 (= e!3041038 (list!17466 (xs!17869 (right!40938 (c!826974 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1561062 c!827221) b!4863874))

(assert (= (and d!1561062 (not c!827221)) b!4863875))

(assert (= (and b!4863875 c!827222) b!4863876))

(assert (= (and b!4863875 (not c!827222)) b!4863877))

(declare-fun m!5861876 () Bool)

(assert (=> b!4863877 m!5861876))

(declare-fun m!5861878 () Bool)

(assert (=> b!4863877 m!5861878))

(assert (=> b!4863877 m!5861876))

(assert (=> b!4863877 m!5861878))

(declare-fun m!5861880 () Bool)

(assert (=> b!4863877 m!5861880))

(declare-fun m!5861882 () Bool)

(assert (=> b!4863876 m!5861882))

(assert (=> b!4863104 d!1561062))

(declare-fun d!1561064 () Bool)

(declare-fun lt!1993275 () Int)

(assert (=> d!1561064 (>= lt!1993275 0)))

(declare-fun e!3041039 () Int)

(assert (=> d!1561064 (= lt!1993275 e!3041039)))

(declare-fun c!827223 () Bool)

(assert (=> d!1561064 (= c!827223 ((_ is Nil!55913) (innerList!14651 (xs!17869 (c!826974 totalInput!332)))))))

(assert (=> d!1561064 (= (size!36838 (innerList!14651 (xs!17869 (c!826974 totalInput!332)))) lt!1993275)))

(declare-fun b!4863878 () Bool)

(assert (=> b!4863878 (= e!3041039 0)))

(declare-fun b!4863879 () Bool)

(assert (=> b!4863879 (= e!3041039 (+ 1 (size!36838 (t!363661 (innerList!14651 (xs!17869 (c!826974 totalInput!332)))))))))

(assert (= (and d!1561064 c!827223) b!4863878))

(assert (= (and d!1561064 (not c!827223)) b!4863879))

(declare-fun m!5861884 () Bool)

(assert (=> b!4863879 m!5861884))

(assert (=> d!1560770 d!1561064))

(declare-fun d!1561066 () Bool)

(declare-fun e!3041042 () Bool)

(assert (=> d!1561066 e!3041042))

(declare-fun res!2076481 () Bool)

(assert (=> d!1561066 (=> res!2076481 e!3041042)))

(declare-fun lt!1993276 () Bool)

(assert (=> d!1561066 (= res!2076481 (not lt!1993276))))

(declare-fun e!3041041 () Bool)

(assert (=> d!1561066 (= lt!1993276 e!3041041)))

(declare-fun res!2076483 () Bool)

(assert (=> d!1561066 (=> res!2076483 e!3041041)))

(assert (=> d!1561066 (= res!2076483 ((_ is Nil!55913) (tail!9555 lt!1992773)))))

(assert (=> d!1561066 (= (isPrefix!4762 (tail!9555 lt!1992773) (tail!9555 lt!1992772)) lt!1993276)))

(declare-fun b!4863883 () Bool)

(assert (=> b!4863883 (= e!3041042 (>= (size!36838 (tail!9555 lt!1992772)) (size!36838 (tail!9555 lt!1992773))))))

(declare-fun b!4863880 () Bool)

(declare-fun e!3041040 () Bool)

(assert (=> b!4863880 (= e!3041041 e!3041040)))

(declare-fun res!2076482 () Bool)

(assert (=> b!4863880 (=> (not res!2076482) (not e!3041040))))

(assert (=> b!4863880 (= res!2076482 (not ((_ is Nil!55913) (tail!9555 lt!1992772))))))

(declare-fun b!4863882 () Bool)

(assert (=> b!4863882 (= e!3041040 (isPrefix!4762 (tail!9555 (tail!9555 lt!1992773)) (tail!9555 (tail!9555 lt!1992772))))))

(declare-fun b!4863881 () Bool)

(declare-fun res!2076480 () Bool)

(assert (=> b!4863881 (=> (not res!2076480) (not e!3041040))))

(assert (=> b!4863881 (= res!2076480 (= (head!10409 (tail!9555 lt!1992773)) (head!10409 (tail!9555 lt!1992772))))))

(assert (= (and d!1561066 (not res!2076483)) b!4863880))

(assert (= (and b!4863880 res!2076482) b!4863881))

(assert (= (and b!4863881 res!2076480) b!4863882))

(assert (= (and d!1561066 (not res!2076481)) b!4863883))

(assert (=> b!4863883 m!5860442))

(declare-fun m!5861886 () Bool)

(assert (=> b!4863883 m!5861886))

(assert (=> b!4863883 m!5860440))

(declare-fun m!5861888 () Bool)

(assert (=> b!4863883 m!5861888))

(assert (=> b!4863882 m!5860440))

(declare-fun m!5861890 () Bool)

(assert (=> b!4863882 m!5861890))

(assert (=> b!4863882 m!5860442))

(declare-fun m!5861892 () Bool)

(assert (=> b!4863882 m!5861892))

(assert (=> b!4863882 m!5861890))

(assert (=> b!4863882 m!5861892))

(declare-fun m!5861894 () Bool)

(assert (=> b!4863882 m!5861894))

(assert (=> b!4863881 m!5860440))

(declare-fun m!5861896 () Bool)

(assert (=> b!4863881 m!5861896))

(assert (=> b!4863881 m!5860442))

(declare-fun m!5861898 () Bool)

(assert (=> b!4863881 m!5861898))

(assert (=> b!4862859 d!1561066))

(declare-fun d!1561068 () Bool)

(assert (=> d!1561068 (= (tail!9555 lt!1992773) (t!363661 lt!1992773))))

(assert (=> b!4862859 d!1561068))

(declare-fun d!1561070 () Bool)

(assert (=> d!1561070 (= (tail!9555 lt!1992772) (t!363661 lt!1992772))))

(assert (=> b!4862859 d!1561070))

(assert (=> b!4862817 d!1560838))

(declare-fun d!1561072 () Bool)

(assert (=> d!1561072 (= (apply!13497 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791))))) (dynLambda!22428 (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791))))))))

(declare-fun b_lambda!193425 () Bool)

(assert (=> (not b_lambda!193425) (not d!1561072)))

(declare-fun tb!257609 () Bool)

(declare-fun t!363705 () Bool)

(assert (=> (and b!4862549 (= (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363705) tb!257609))

(declare-fun result!320702 () Bool)

(assert (=> tb!257609 (= result!320702 (inv!21 (dynLambda!22428 (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791))))) (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791)))))))))

(declare-fun m!5861900 () Bool)

(assert (=> tb!257609 m!5861900))

(assert (=> d!1561072 t!363705))

(declare-fun b_and!342471 () Bool)

(assert (= b_and!342465 (and (=> t!363705 result!320702) b_and!342471)))

(declare-fun tb!257611 () Bool)

(declare-fun t!363707 () Bool)

(assert (=> (and b!4862793 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363707) tb!257611))

(declare-fun result!320704 () Bool)

(assert (= result!320704 result!320702))

(assert (=> d!1561072 t!363707))

(declare-fun b_and!342473 () Bool)

(assert (= b_and!342467 (and (=> t!363707 result!320704) b_and!342473)))

(declare-fun t!363709 () Bool)

(declare-fun tb!257613 () Bool)

(assert (=> (and b!4863416 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363709) tb!257613))

(declare-fun result!320706 () Bool)

(assert (= result!320706 result!320702))

(assert (=> d!1561072 t!363709))

(declare-fun b_and!342475 () Bool)

(assert (= b_and!342469 (and (=> t!363709 result!320706) b_and!342475)))

(assert (=> d!1561072 m!5860380))

(declare-fun m!5861902 () Bool)

(assert (=> d!1561072 m!5861902))

(assert (=> b!4862817 d!1561072))

(declare-fun d!1561074 () Bool)

(assert (=> d!1561074 (= (seqFromList!5893 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791)))) (fromListB!2674 (originalCharacters!8351 (_1!33177 (get!19217 lt!1992791)))))))

(declare-fun bs!1174098 () Bool)

(assert (= bs!1174098 d!1561074))

(declare-fun m!5861904 () Bool)

(assert (=> bs!1174098 m!5861904))

(assert (=> b!4862817 d!1561074))

(assert (=> b!4862989 d!1560880))

(assert (=> b!4862989 d!1560884))

(assert (=> b!4862989 d!1560886))

(assert (=> b!4862989 d!1560530))

(declare-fun d!1561076 () Bool)

(assert (=> d!1561076 (= (max!0 (height!1918 (left!40608 (c!826974 totalInput!332))) (height!1918 (right!40938 (c!826974 totalInput!332)))) (ite (< (height!1918 (left!40608 (c!826974 totalInput!332))) (height!1918 (right!40938 (c!826974 totalInput!332)))) (height!1918 (right!40938 (c!826974 totalInput!332))) (height!1918 (left!40608 (c!826974 totalInput!332)))))))

(assert (=> b!4863089 d!1561076))

(assert (=> b!4863089 d!1560842))

(assert (=> b!4863089 d!1560844))

(declare-fun d!1561078 () Bool)

(declare-fun res!2076484 () Bool)

(declare-fun e!3041044 () Bool)

(assert (=> d!1561078 (=> res!2076484 e!3041044)))

(assert (=> d!1561078 (= res!2076484 ((_ is Nil!55914) (t!363662 rules!1248)))))

(assert (=> d!1561078 (= (noDuplicateTag!3277 thiss!11777 (t!363662 rules!1248) (Cons!55917 (tag!8890 (h!62362 rules!1248)) Nil!55917)) e!3041044)))

(declare-fun b!4863884 () Bool)

(declare-fun e!3041045 () Bool)

(assert (=> b!4863884 (= e!3041044 e!3041045)))

(declare-fun res!2076485 () Bool)

(assert (=> b!4863884 (=> (not res!2076485) (not e!3041045))))

(assert (=> b!4863884 (= res!2076485 (not (contains!19385 (Cons!55917 (tag!8890 (h!62362 rules!1248)) Nil!55917) (tag!8890 (h!62362 (t!363662 rules!1248))))))))

(declare-fun b!4863885 () Bool)

(assert (=> b!4863885 (= e!3041045 (noDuplicateTag!3277 thiss!11777 (t!363662 (t!363662 rules!1248)) (Cons!55917 (tag!8890 (h!62362 (t!363662 rules!1248))) (Cons!55917 (tag!8890 (h!62362 rules!1248)) Nil!55917))))))

(assert (= (and d!1561078 (not res!2076484)) b!4863884))

(assert (= (and b!4863884 res!2076485) b!4863885))

(declare-fun m!5861906 () Bool)

(assert (=> b!4863884 m!5861906))

(declare-fun m!5861908 () Bool)

(assert (=> b!4863885 m!5861908))

(assert (=> b!4863233 d!1561078))

(declare-fun b!4863886 () Bool)

(declare-fun e!3041050 () Bool)

(declare-fun lt!1993277 () Bool)

(assert (=> b!4863886 (= e!3041050 (not lt!1993277))))

(declare-fun bm!337858 () Bool)

(declare-fun call!337863 () Bool)

(assert (=> bm!337858 (= call!337863 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(declare-fun b!4863887 () Bool)

(declare-fun res!2076491 () Bool)

(declare-fun e!3041052 () Bool)

(assert (=> b!4863887 (=> (not res!2076491) (not e!3041052))))

(assert (=> b!4863887 (= res!2076491 (not call!337863))))

(declare-fun b!4863888 () Bool)

(declare-fun e!3041048 () Bool)

(assert (=> b!4863888 (= e!3041048 e!3041050)))

(declare-fun c!827226 () Bool)

(assert (=> b!4863888 (= c!827226 ((_ is EmptyLang!13101) (regex!8026 (h!62362 rules!1248))))))

(declare-fun b!4863889 () Bool)

(assert (=> b!4863889 (= e!3041048 (= lt!1993277 call!337863))))

(declare-fun b!4863890 () Bool)

(declare-fun res!2076490 () Bool)

(declare-fun e!3041046 () Bool)

(assert (=> b!4863890 (=> res!2076490 e!3041046)))

(assert (=> b!4863890 (= res!2076490 (not (isEmpty!29906 (tail!9555 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))))

(declare-fun b!4863891 () Bool)

(declare-fun e!3041051 () Bool)

(assert (=> b!4863891 (= e!3041051 e!3041046)))

(declare-fun res!2076493 () Bool)

(assert (=> b!4863891 (=> res!2076493 e!3041046)))

(assert (=> b!4863891 (= res!2076493 call!337863)))

(declare-fun b!4863893 () Bool)

(assert (=> b!4863893 (= e!3041052 (= (head!10409 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))) (c!826975 (regex!8026 (h!62362 rules!1248)))))))

(declare-fun b!4863894 () Bool)

(declare-fun e!3041047 () Bool)

(assert (=> b!4863894 (= e!3041047 e!3041051)))

(declare-fun res!2076492 () Bool)

(assert (=> b!4863894 (=> (not res!2076492) (not e!3041051))))

(assert (=> b!4863894 (= res!2076492 (not lt!1993277))))

(declare-fun b!4863895 () Bool)

(declare-fun res!2076489 () Bool)

(assert (=> b!4863895 (=> (not res!2076489) (not e!3041052))))

(assert (=> b!4863895 (= res!2076489 (isEmpty!29906 (tail!9555 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041))))))))

(declare-fun b!4863896 () Bool)

(declare-fun e!3041049 () Bool)

(assert (=> b!4863896 (= e!3041049 (matchR!6487 (derivativeStep!3861 (regex!8026 (h!62362 rules!1248)) (head!10409 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041))))) (tail!9555 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041))))))))

(declare-fun b!4863897 () Bool)

(assert (=> b!4863897 (= e!3041046 (not (= (head!10409 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))) (c!826975 (regex!8026 (h!62362 rules!1248))))))))

(declare-fun b!4863898 () Bool)

(declare-fun res!2076488 () Bool)

(assert (=> b!4863898 (=> res!2076488 e!3041047)))

(assert (=> b!4863898 (= res!2076488 e!3041052)))

(declare-fun res!2076486 () Bool)

(assert (=> b!4863898 (=> (not res!2076486) (not e!3041052))))

(assert (=> b!4863898 (= res!2076486 lt!1993277)))

(declare-fun b!4863899 () Bool)

(assert (=> b!4863899 (= e!3041049 (nullable!4536 (regex!8026 (h!62362 rules!1248))))))

(declare-fun d!1561080 () Bool)

(assert (=> d!1561080 e!3041048))

(declare-fun c!827225 () Bool)

(assert (=> d!1561080 (= c!827225 ((_ is EmptyExpr!13101) (regex!8026 (h!62362 rules!1248))))))

(assert (=> d!1561080 (= lt!1993277 e!3041049)))

(declare-fun c!827224 () Bool)

(assert (=> d!1561080 (= c!827224 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))))))

(assert (=> d!1561080 (validRegex!5863 (regex!8026 (h!62362 rules!1248)))))

(assert (=> d!1561080 (= (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993041 lt!1993041 (size!36838 lt!1993041)))) lt!1993277)))

(declare-fun b!4863892 () Bool)

(declare-fun res!2076487 () Bool)

(assert (=> b!4863892 (=> res!2076487 e!3041047)))

(assert (=> b!4863892 (= res!2076487 (not ((_ is ElementMatch!13101) (regex!8026 (h!62362 rules!1248)))))))

(assert (=> b!4863892 (= e!3041050 e!3041047)))

(assert (= (and d!1561080 c!827224) b!4863899))

(assert (= (and d!1561080 (not c!827224)) b!4863896))

(assert (= (and d!1561080 c!827225) b!4863889))

(assert (= (and d!1561080 (not c!827225)) b!4863888))

(assert (= (and b!4863888 c!827226) b!4863886))

(assert (= (and b!4863888 (not c!827226)) b!4863892))

(assert (= (and b!4863892 (not res!2076487)) b!4863898))

(assert (= (and b!4863898 res!2076486) b!4863887))

(assert (= (and b!4863887 res!2076491) b!4863895))

(assert (= (and b!4863895 res!2076489) b!4863893))

(assert (= (and b!4863898 (not res!2076488)) b!4863894))

(assert (= (and b!4863894 res!2076492) b!4863891))

(assert (= (and b!4863891 (not res!2076493)) b!4863890))

(assert (= (and b!4863890 (not res!2076490)) b!4863897))

(assert (= (or b!4863889 b!4863887 b!4863891) bm!337858))

(declare-fun m!5861910 () Bool)

(assert (=> b!4863896 m!5861910))

(assert (=> b!4863896 m!5861910))

(declare-fun m!5861912 () Bool)

(assert (=> b!4863896 m!5861912))

(declare-fun m!5861914 () Bool)

(assert (=> b!4863896 m!5861914))

(assert (=> b!4863896 m!5861912))

(assert (=> b!4863896 m!5861914))

(declare-fun m!5861916 () Bool)

(assert (=> b!4863896 m!5861916))

(assert (=> b!4863893 m!5861910))

(assert (=> b!4863899 m!5861290))

(assert (=> b!4863895 m!5861914))

(assert (=> b!4863895 m!5861914))

(declare-fun m!5861918 () Bool)

(assert (=> b!4863895 m!5861918))

(assert (=> b!4863897 m!5861910))

(assert (=> bm!337858 m!5861056))

(assert (=> b!4863890 m!5861914))

(assert (=> b!4863890 m!5861914))

(assert (=> b!4863890 m!5861918))

(assert (=> d!1561080 m!5861056))

(assert (=> d!1561080 m!5861288))

(assert (=> b!4863323 d!1561080))

(assert (=> b!4863323 d!1560926))

(assert (=> b!4863323 d!1560904))

(assert (=> b!4863323 d!1560912))

(declare-fun d!1561082 () Bool)

(declare-fun c!827227 () Bool)

(assert (=> d!1561082 (= c!827227 ((_ is Nil!55913) (t!363661 lt!1992743)))))

(declare-fun e!3041053 () (InoxSet C!26400))

(assert (=> d!1561082 (= (content!9960 (t!363661 lt!1992743)) e!3041053)))

(declare-fun b!4863902 () Bool)

(assert (=> b!4863902 (= e!3041053 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863903 () Bool)

(assert (=> b!4863903 (= e!3041053 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (t!363661 lt!1992743)) true) (content!9960 (t!363661 (t!363661 lt!1992743)))))))

(assert (= (and d!1561082 c!827227) b!4863902))

(assert (= (and d!1561082 (not c!827227)) b!4863903))

(declare-fun m!5861920 () Bool)

(assert (=> b!4863903 m!5861920))

(declare-fun m!5861922 () Bool)

(assert (=> b!4863903 m!5861922))

(assert (=> b!4863096 d!1561082))

(declare-fun d!1561084 () Bool)

(declare-fun lt!1993293 () Bool)

(assert (=> d!1561084 (= lt!1993293 (isEmpty!29906 (list!17462 (left!40608 (c!826974 totalInput!332)))))))

(assert (=> d!1561084 (= lt!1993293 (= (size!36842 (left!40608 (c!826974 totalInput!332))) 0))))

(assert (=> d!1561084 (= (isEmpty!29897 (left!40608 (c!826974 totalInput!332))) lt!1993293)))

(declare-fun bs!1174099 () Bool)

(assert (= bs!1174099 d!1561084))

(assert (=> bs!1174099 m!5860622))

(assert (=> bs!1174099 m!5860622))

(declare-fun m!5861924 () Bool)

(assert (=> bs!1174099 m!5861924))

(assert (=> bs!1174099 m!5860646))

(assert (=> b!4862847 d!1561084))

(declare-fun d!1561086 () Bool)

(assert (=> d!1561086 (= (isEmpty!29903 (_1!33176 lt!1992953)) ((_ is Nil!55915) (_1!33176 lt!1992953)))))

(assert (=> b!4863146 d!1561086))

(declare-fun d!1561088 () Bool)

(assert (=> d!1561088 (= (max!0 (height!1918 (left!40608 (c!826974 input!661))) (height!1918 (right!40938 (c!826974 input!661)))) (ite (< (height!1918 (left!40608 (c!826974 input!661))) (height!1918 (right!40938 (c!826974 input!661)))) (height!1918 (right!40938 (c!826974 input!661))) (height!1918 (left!40608 (c!826974 input!661)))))))

(assert (=> b!4863152 d!1561088))

(assert (=> b!4863152 d!1561024))

(assert (=> b!4863152 d!1561026))

(declare-fun d!1561090 () Bool)

(declare-fun lt!1993305 () Int)

(assert (=> d!1561090 (>= lt!1993305 0)))

(declare-fun e!3041060 () Int)

(assert (=> d!1561090 (= lt!1993305 e!3041060)))

(declare-fun c!827234 () Bool)

(assert (=> d!1561090 (= c!827234 ((_ is Nil!55913) (t!363661 (list!17460 totalInput!332))))))

(assert (=> d!1561090 (= (size!36838 (t!363661 (list!17460 totalInput!332))) lt!1993305)))

(declare-fun b!4863914 () Bool)

(assert (=> b!4863914 (= e!3041060 0)))

(declare-fun b!4863915 () Bool)

(assert (=> b!4863915 (= e!3041060 (+ 1 (size!36838 (t!363661 (t!363661 (list!17460 totalInput!332))))))))

(assert (= (and d!1561090 c!827234) b!4863914))

(assert (= (and d!1561090 (not c!827234)) b!4863915))

(declare-fun m!5861926 () Bool)

(assert (=> b!4863915 m!5861926))

(assert (=> b!4863070 d!1561090))

(declare-fun d!1561092 () Bool)

(declare-fun lt!1993316 () Bool)

(assert (=> d!1561092 (= lt!1993316 (isEmpty!29906 (list!17462 (right!40938 (c!826974 totalInput!332)))))))

(assert (=> d!1561092 (= lt!1993316 (= (size!36842 (right!40938 (c!826974 totalInput!332))) 0))))

(assert (=> d!1561092 (= (isEmpty!29897 (right!40938 (c!826974 totalInput!332))) lt!1993316)))

(declare-fun bs!1174100 () Bool)

(assert (= bs!1174100 d!1561092))

(assert (=> bs!1174100 m!5860624))

(assert (=> bs!1174100 m!5860624))

(declare-fun m!5861928 () Bool)

(assert (=> bs!1174100 m!5861928))

(assert (=> bs!1174100 m!5860648))

(assert (=> b!4862845 d!1561092))

(declare-fun d!1561094 () Bool)

(declare-fun lt!1993317 () Int)

(assert (=> d!1561094 (>= lt!1993317 0)))

(declare-fun e!3041063 () Int)

(assert (=> d!1561094 (= lt!1993317 e!3041063)))

(declare-fun c!827237 () Bool)

(assert (=> d!1561094 (= c!827237 ((_ is Nil!55913) (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> d!1561094 (= (size!36838 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))) lt!1993317)))

(declare-fun b!4863920 () Bool)

(assert (=> b!4863920 (= e!3041063 0)))

(declare-fun b!4863921 () Bool)

(assert (=> b!4863921 (= e!3041063 (+ 1 (size!36838 (t!363661 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561094 c!827237) b!4863920))

(assert (= (and d!1561094 (not c!827237)) b!4863921))

(declare-fun m!5861930 () Bool)

(assert (=> b!4863921 m!5861930))

(assert (=> b!4863227 d!1561094))

(declare-fun d!1561096 () Bool)

(declare-fun c!827238 () Bool)

(assert (=> d!1561096 (= c!827238 ((_ is Nil!55913) lt!1992917))))

(declare-fun e!3041064 () (InoxSet C!26400))

(assert (=> d!1561096 (= (content!9960 lt!1992917) e!3041064)))

(declare-fun b!4863922 () Bool)

(assert (=> b!4863922 (= e!3041064 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863923 () Bool)

(assert (=> b!4863923 (= e!3041064 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 lt!1992917) true) (content!9960 (t!363661 lt!1992917))))))

(assert (= (and d!1561096 c!827238) b!4863922))

(assert (= (and d!1561096 (not c!827238)) b!4863923))

(declare-fun m!5861932 () Bool)

(assert (=> b!4863923 m!5861932))

(declare-fun m!5861934 () Bool)

(assert (=> b!4863923 m!5861934))

(assert (=> d!1560698 d!1561096))

(declare-fun d!1561098 () Bool)

(declare-fun c!827239 () Bool)

(assert (=> d!1561098 (= c!827239 ((_ is Nil!55913) (list!17460 totalInput!332)))))

(declare-fun e!3041065 () (InoxSet C!26400))

(assert (=> d!1561098 (= (content!9960 (list!17460 totalInput!332)) e!3041065)))

(declare-fun b!4863924 () Bool)

(assert (=> b!4863924 (= e!3041065 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4863925 () Bool)

(assert (=> b!4863925 (= e!3041065 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (list!17460 totalInput!332)) true) (content!9960 (t!363661 (list!17460 totalInput!332)))))))

(assert (= (and d!1561098 c!827239) b!4863924))

(assert (= (and d!1561098 (not c!827239)) b!4863925))

(declare-fun m!5861936 () Bool)

(assert (=> b!4863925 m!5861936))

(declare-fun m!5861938 () Bool)

(assert (=> b!4863925 m!5861938))

(assert (=> d!1560698 d!1561098))

(declare-fun d!1561100 () Bool)

(declare-fun lt!1993340 () Int)

(assert (=> d!1561100 (>= lt!1993340 0)))

(declare-fun e!3041072 () Int)

(assert (=> d!1561100 (= lt!1993340 e!3041072)))

(declare-fun c!827246 () Bool)

(assert (=> d!1561100 (= c!827246 ((_ is Nil!55915) (list!17464 (_1!33173 lt!1992737))))))

(assert (=> d!1561100 (= (size!36840 (list!17464 (_1!33173 lt!1992737))) lt!1993340)))

(declare-fun b!4863938 () Bool)

(assert (=> b!4863938 (= e!3041072 0)))

(declare-fun b!4863939 () Bool)

(assert (=> b!4863939 (= e!3041072 (+ 1 (size!36840 (t!363663 (list!17464 (_1!33173 lt!1992737))))))))

(assert (= (and d!1561100 c!827246) b!4863938))

(assert (= (and d!1561100 (not c!827246)) b!4863939))

(declare-fun m!5861940 () Bool)

(assert (=> b!4863939 m!5861940))

(assert (=> d!1560664 d!1561100))

(assert (=> d!1560664 d!1560720))

(declare-fun d!1561102 () Bool)

(declare-fun lt!1993343 () Int)

(assert (=> d!1561102 (= lt!1993343 (size!36840 (list!17468 (c!826976 (_1!33173 lt!1992737)))))))

(assert (=> d!1561102 (= lt!1993343 (ite ((_ is Empty!14564) (c!826976 (_1!33173 lt!1992737))) 0 (ite ((_ is Leaf!24288) (c!826976 (_1!33173 lt!1992737))) (csize!29359 (c!826976 (_1!33173 lt!1992737))) (csize!29358 (c!826976 (_1!33173 lt!1992737))))))))

(assert (=> d!1561102 (= (size!36841 (c!826976 (_1!33173 lt!1992737))) lt!1993343)))

(declare-fun bs!1174101 () Bool)

(assert (= bs!1174101 d!1561102))

(assert (=> bs!1174101 m!5860700))

(assert (=> bs!1174101 m!5860700))

(declare-fun m!5861942 () Bool)

(assert (=> bs!1174101 m!5861942))

(assert (=> d!1560664 d!1561102))

(assert (=> d!1560614 d!1560602))

(assert (=> d!1560614 d!1560848))

(assert (=> d!1560614 d!1560850))

(assert (=> d!1560614 d!1560626))

(declare-fun bs!1174102 () Bool)

(declare-fun d!1561104 () Bool)

(assert (= bs!1174102 (and d!1561104 d!1560692)))

(declare-fun lambda!243350 () Int)

(assert (=> bs!1174102 (= (and (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (= lambda!243350 lambda!243326))))

(declare-fun bs!1174103 () Bool)

(assert (= bs!1174103 (and d!1561104 b!4863324)))

(assert (=> bs!1174103 (= (and (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (= lambda!243350 lambda!243343))))

(declare-fun bs!1174104 () Bool)

(assert (= bs!1174104 (and d!1561104 b!4863509)))

(assert (=> bs!1174104 (= lambda!243350 lambda!243344)))

(assert (=> d!1561104 true))

(assert (=> d!1561104 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (dynLambda!22424 order!25173 lambda!243350))))

(assert (=> d!1561104 true))

(assert (=> d!1561104 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (dynLambda!22424 order!25173 lambda!243350))))

(assert (=> d!1561104 (= (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (Forall!1668 lambda!243350))))

(declare-fun bs!1174105 () Bool)

(assert (= bs!1174105 d!1561104))

(declare-fun m!5861944 () Bool)

(assert (=> bs!1174105 m!5861944))

(assert (=> d!1560682 d!1561104))

(declare-fun d!1561106 () Bool)

(declare-fun lt!1993344 () Int)

(assert (=> d!1561106 (= lt!1993344 (size!36838 (list!17462 (left!40608 (c!826974 input!661)))))))

(assert (=> d!1561106 (= lt!1993344 (ite ((_ is Empty!14563) (left!40608 (c!826974 input!661))) 0 (ite ((_ is Leaf!24287) (left!40608 (c!826974 input!661))) (csize!29357 (left!40608 (c!826974 input!661))) (csize!29356 (left!40608 (c!826974 input!661))))))))

(assert (=> d!1561106 (= (size!36842 (left!40608 (c!826974 input!661))) lt!1993344)))

(declare-fun bs!1174106 () Bool)

(assert (= bs!1174106 d!1561106))

(assert (=> bs!1174106 m!5860502))

(assert (=> bs!1174106 m!5860502))

(assert (=> bs!1174106 m!5861652))

(assert (=> d!1560738 d!1561106))

(declare-fun d!1561108 () Bool)

(declare-fun lt!1993345 () Int)

(assert (=> d!1561108 (= lt!1993345 (size!36838 (list!17462 (right!40938 (c!826974 input!661)))))))

(assert (=> d!1561108 (= lt!1993345 (ite ((_ is Empty!14563) (right!40938 (c!826974 input!661))) 0 (ite ((_ is Leaf!24287) (right!40938 (c!826974 input!661))) (csize!29357 (right!40938 (c!826974 input!661))) (csize!29356 (right!40938 (c!826974 input!661))))))))

(assert (=> d!1561108 (= (size!36842 (right!40938 (c!826974 input!661))) lt!1993345)))

(declare-fun bs!1174107 () Bool)

(assert (= bs!1174107 d!1561108))

(assert (=> bs!1174107 m!5860504))

(assert (=> bs!1174107 m!5860504))

(assert (=> bs!1174107 m!5861654))

(assert (=> d!1560738 d!1561108))

(declare-fun d!1561110 () Bool)

(declare-fun res!2076494 () Bool)

(declare-fun e!3041073 () Bool)

(assert (=> d!1561110 (=> (not res!2076494) (not e!3041073))))

(assert (=> d!1561110 (= res!2076494 (= (csize!29356 (left!40608 (c!826974 input!661))) (+ (size!36842 (left!40608 (left!40608 (c!826974 input!661)))) (size!36842 (right!40938 (left!40608 (c!826974 input!661)))))))))

(assert (=> d!1561110 (= (inv!71813 (left!40608 (c!826974 input!661))) e!3041073)))

(declare-fun b!4863940 () Bool)

(declare-fun res!2076495 () Bool)

(assert (=> b!4863940 (=> (not res!2076495) (not e!3041073))))

(assert (=> b!4863940 (= res!2076495 (and (not (= (left!40608 (left!40608 (c!826974 input!661))) Empty!14563)) (not (= (right!40938 (left!40608 (c!826974 input!661))) Empty!14563))))))

(declare-fun b!4863941 () Bool)

(declare-fun res!2076496 () Bool)

(assert (=> b!4863941 (=> (not res!2076496) (not e!3041073))))

(assert (=> b!4863941 (= res!2076496 (= (cheight!14774 (left!40608 (c!826974 input!661))) (+ (max!0 (height!1918 (left!40608 (left!40608 (c!826974 input!661)))) (height!1918 (right!40938 (left!40608 (c!826974 input!661))))) 1)))))

(declare-fun b!4863942 () Bool)

(assert (=> b!4863942 (= e!3041073 (<= 0 (cheight!14774 (left!40608 (c!826974 input!661)))))))

(assert (= (and d!1561110 res!2076494) b!4863940))

(assert (= (and b!4863940 res!2076495) b!4863941))

(assert (= (and b!4863941 res!2076496) b!4863942))

(declare-fun m!5861946 () Bool)

(assert (=> d!1561110 m!5861946))

(declare-fun m!5861948 () Bool)

(assert (=> d!1561110 m!5861948))

(assert (=> b!4863941 m!5861222))

(assert (=> b!4863941 m!5861224))

(assert (=> b!4863941 m!5861222))

(assert (=> b!4863941 m!5861224))

(declare-fun m!5861950 () Bool)

(assert (=> b!4863941 m!5861950))

(assert (=> b!4863004 d!1561110))

(assert (=> b!4863219 d!1560888))

(assert (=> b!4863219 d!1560862))

(assert (=> b!4863219 d!1560864))

(assert (=> b!4863219 d!1560592))

(declare-fun d!1561112 () Bool)

(assert (=> d!1561112 (= (get!19217 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))) (v!49674 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 input!661))))))

(assert (=> b!4863219 d!1561112))

(declare-fun b!4863947 () Bool)

(declare-fun res!2076502 () Bool)

(declare-fun e!3041079 () Bool)

(assert (=> b!4863947 (=> (not res!2076502) (not e!3041079))))

(assert (=> b!4863947 (= res!2076502 (<= (- (height!1918 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) (height!1918 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) 1))))

(declare-fun b!4863948 () Bool)

(declare-fun res!2076503 () Bool)

(assert (=> b!4863948 (=> (not res!2076503) (not e!3041079))))

(assert (=> b!4863948 (= res!2076503 (isBalanced!3946 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(declare-fun d!1561114 () Bool)

(declare-fun res!2076504 () Bool)

(declare-fun e!3041078 () Bool)

(assert (=> d!1561114 (=> res!2076504 e!3041078)))

(assert (=> d!1561114 (= res!2076504 (not ((_ is Node!14563) (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (=> d!1561114 (= (isBalanced!3946 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) e!3041078)))

(declare-fun b!4863949 () Bool)

(assert (=> b!4863949 (= e!3041079 (not (isEmpty!29897 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4863950 () Bool)

(assert (=> b!4863950 (= e!3041078 e!3041079)))

(declare-fun res!2076501 () Bool)

(assert (=> b!4863950 (=> (not res!2076501) (not e!3041079))))

(assert (=> b!4863950 (= res!2076501 (<= (- 1) (- (height!1918 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) (height!1918 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))))

(declare-fun b!4863951 () Bool)

(declare-fun res!2076506 () Bool)

(assert (=> b!4863951 (=> (not res!2076506) (not e!3041079))))

(assert (=> b!4863951 (= res!2076506 (not (isEmpty!29897 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4863952 () Bool)

(declare-fun res!2076505 () Bool)

(assert (=> b!4863952 (=> (not res!2076505) (not e!3041079))))

(assert (=> b!4863952 (= res!2076505 (isBalanced!3946 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561114 (not res!2076504)) b!4863950))

(assert (= (and b!4863950 res!2076501) b!4863947))

(assert (= (and b!4863947 res!2076502) b!4863952))

(assert (= (and b!4863952 res!2076505) b!4863948))

(assert (= (and b!4863948 res!2076503) b!4863951))

(assert (= (and b!4863951 res!2076506) b!4863949))

(declare-fun m!5861952 () Bool)

(assert (=> b!4863950 m!5861952))

(declare-fun m!5861954 () Bool)

(assert (=> b!4863950 m!5861954))

(declare-fun m!5861956 () Bool)

(assert (=> b!4863951 m!5861956))

(assert (=> b!4863947 m!5861952))

(assert (=> b!4863947 m!5861954))

(declare-fun m!5861958 () Bool)

(assert (=> b!4863952 m!5861958))

(declare-fun m!5861960 () Bool)

(assert (=> b!4863949 m!5861960))

(declare-fun m!5861962 () Bool)

(assert (=> b!4863948 m!5861962))

(assert (=> d!1560620 d!1561114))

(assert (=> b!4862995 d!1560530))

(assert (=> b!4862995 d!1560880))

(assert (=> b!4862995 d!1560882))

(declare-fun d!1561116 () Bool)

(assert (=> d!1561116 (= (get!19217 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))) (v!49674 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> b!4862995 d!1561116))

(declare-fun d!1561118 () Bool)

(declare-fun lt!1993350 () Option!13773)

(assert (=> d!1561118 (= lt!1993350 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun e!3041080 () Option!13773)

(assert (=> d!1561118 (= lt!1993350 e!3041080)))

(declare-fun c!827247 () Bool)

(assert (=> d!1561118 (= c!827247 (and ((_ is Cons!55914) rules!1248) ((_ is Nil!55914) (t!363662 rules!1248))))))

(declare-fun lt!1993349 () Unit!145922)

(declare-fun lt!1993346 () Unit!145922)

(assert (=> d!1561118 (= lt!1993349 lt!1993346)))

(assert (=> d!1561118 (isPrefix!4762 (list!17460 (_2!33172 (v!49672 lt!1992698))) (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1561118 (= lt!1993346 (lemmaIsPrefixRefl!3159 (list!17460 (_2!33172 (v!49672 lt!1992698))) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (=> d!1561118 (rulesValidInductive!3015 thiss!11777 rules!1248)))

(assert (=> d!1561118 (= (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))) lt!1993350)))

(declare-fun call!337880 () Option!13773)

(declare-fun bm!337875 () Bool)

(assert (=> bm!337875 (= call!337880 (maxPrefixOneRuleZipper!221 thiss!11777 (h!62362 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(declare-fun b!4863953 () Bool)

(assert (=> b!4863953 (= e!3041080 call!337880)))

(declare-fun b!4863954 () Bool)

(declare-fun lt!1993348 () Option!13773)

(declare-fun lt!1993347 () Option!13773)

(assert (=> b!4863954 (= e!3041080 (ite (and ((_ is None!13772) lt!1993348) ((_ is None!13772) lt!1993347)) None!13772 (ite ((_ is None!13772) lt!1993347) lt!1993348 (ite ((_ is None!13772) lt!1993348) lt!1993347 (ite (>= (size!36832 (_1!33177 (v!49674 lt!1993348))) (size!36832 (_1!33177 (v!49674 lt!1993347)))) lt!1993348 lt!1993347)))))))

(assert (=> b!4863954 (= lt!1993348 call!337880)))

(assert (=> b!4863954 (= lt!1993347 (maxPrefixZipper!559 thiss!11777 (t!363662 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))

(assert (= (and d!1561118 c!827247) b!4863953))

(assert (= (and d!1561118 (not c!827247)) b!4863954))

(assert (= (or b!4863953 b!4863954) bm!337875))

(assert (=> d!1561118 m!5860108))

(assert (=> d!1561118 m!5860586))

(assert (=> d!1561118 m!5860108))

(assert (=> d!1561118 m!5860108))

(assert (=> d!1561118 m!5861314))

(assert (=> d!1561118 m!5860108))

(assert (=> d!1561118 m!5860108))

(assert (=> d!1561118 m!5861316))

(assert (=> d!1561118 m!5860322))

(assert (=> bm!337875 m!5860108))

(declare-fun m!5861964 () Bool)

(assert (=> bm!337875 m!5861964))

(assert (=> b!4863954 m!5860108))

(assert (=> b!4863954 m!5861842))

(assert (=> b!4862995 d!1561118))

(assert (=> b!4862780 d!1560686))

(assert (=> b!4862780 d!1560688))

(assert (=> b!4863163 d!1561024))

(assert (=> b!4863163 d!1561026))

(declare-fun lt!1993461 () Option!13773)

(declare-fun d!1561120 () Bool)

(assert (=> d!1561120 (= lt!1993461 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)))))

(declare-fun e!3041184 () Option!13773)

(assert (=> d!1561120 (= lt!1993461 e!3041184)))

(declare-fun c!827303 () Bool)

(declare-fun lt!1993459 () tuple2!59754)

(assert (=> d!1561120 (= c!827303 (isEmpty!29906 (_1!33180 lt!1993459)))))

(declare-fun findLongestMatchWithZipper!65 (Regex!13101 List!56037) tuple2!59754)

(assert (=> d!1561120 (= lt!1993459 (findLongestMatchWithZipper!65 (regex!8026 (h!62362 rules!1248)) (list!17460 input!661)))))

(assert (=> d!1561120 (ruleValid!3625 thiss!11777 (h!62362 rules!1248))))

(assert (=> d!1561120 (= (maxPrefixOneRuleZipper!221 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)) lt!1993461)))

(declare-fun b!4864146 () Bool)

(assert (=> b!4864146 (= e!3041184 None!13772)))

(declare-fun b!4864147 () Bool)

(assert (=> b!4864147 (= e!3041184 (Some!13772 (tuple2!59749 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (seqFromList!5893 (_1!33180 lt!1993459))) (h!62362 rules!1248) (size!36838 (_1!33180 lt!1993459)) (_1!33180 lt!1993459)) (_2!33180 lt!1993459))))))

(declare-fun lt!1993464 () Unit!145922)

(assert (=> b!4864147 (= lt!1993464 (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 rules!1248)) (list!17460 input!661)))))

(declare-fun res!2076585 () Bool)

(assert (=> b!4864147 (= res!2076585 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) (list!17460 input!661) (list!17460 input!661) (size!36838 (list!17460 input!661))))))))

(declare-fun e!3041183 () Bool)

(assert (=> b!4864147 (=> res!2076585 e!3041183)))

(assert (=> b!4864147 e!3041183))

(declare-fun lt!1993460 () Unit!145922)

(assert (=> b!4864147 (= lt!1993460 lt!1993464)))

(declare-fun lt!1993463 () Unit!145922)

(assert (=> b!4864147 (= lt!1993463 (lemmaInv!1200 (transformation!8026 (h!62362 rules!1248))))))

(declare-fun lt!1993462 () Unit!145922)

(assert (=> b!4864147 (= lt!1993462 (lemmaSemiInverse!2548 (transformation!8026 (h!62362 rules!1248)) (seqFromList!5893 (_1!33180 lt!1993459))))))

(declare-fun b!4864148 () Bool)

(assert (=> b!4864148 (= e!3041183 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) (list!17460 input!661) (list!17460 input!661) (size!36838 (list!17460 input!661))))))))

(assert (= (and d!1561120 c!827303) b!4864146))

(assert (= (and d!1561120 (not c!827303)) b!4864147))

(assert (= (and b!4864147 (not res!2076585)) b!4864148))

(assert (=> d!1561120 m!5860130))

(assert (=> d!1561120 m!5860398))

(declare-fun m!5862388 () Bool)

(assert (=> d!1561120 m!5862388))

(assert (=> d!1561120 m!5860130))

(declare-fun m!5862390 () Bool)

(assert (=> d!1561120 m!5862390))

(assert (=> d!1561120 m!5860496))

(assert (=> b!4864147 m!5861026))

(assert (=> b!4864147 m!5860130))

(assert (=> b!4864147 m!5860130))

(assert (=> b!4864147 m!5860388))

(assert (=> b!4864147 m!5861610))

(assert (=> b!4864147 m!5860130))

(assert (=> b!4864147 m!5860388))

(assert (=> b!4864147 m!5861026))

(declare-fun m!5862392 () Bool)

(assert (=> b!4864147 m!5862392))

(declare-fun m!5862394 () Bool)

(assert (=> b!4864147 m!5862394))

(declare-fun m!5862396 () Bool)

(assert (=> b!4864147 m!5862396))

(assert (=> b!4864147 m!5860130))

(assert (=> b!4864147 m!5861618))

(assert (=> b!4864147 m!5861050))

(assert (=> b!4864147 m!5862392))

(assert (=> b!4864147 m!5862392))

(declare-fun m!5862398 () Bool)

(assert (=> b!4864147 m!5862398))

(assert (=> b!4864147 m!5861620))

(assert (=> b!4864148 m!5861026))

(assert (=> b!4864148 m!5860130))

(assert (=> b!4864148 m!5860388))

(assert (=> b!4864148 m!5861026))

(assert (=> b!4864148 m!5860130))

(assert (=> b!4864148 m!5860130))

(assert (=> b!4864148 m!5860388))

(assert (=> b!4864148 m!5861610))

(assert (=> b!4864148 m!5861612))

(assert (=> bm!337801 d!1561120))

(declare-fun b!4864149 () Bool)

(declare-fun e!3041185 () List!56037)

(assert (=> b!4864149 (= e!3041185 Nil!55913)))

(declare-fun b!4864150 () Bool)

(declare-fun e!3041186 () List!56037)

(assert (=> b!4864150 (= e!3041185 e!3041186)))

(declare-fun c!827305 () Bool)

(assert (=> b!4864150 (= c!827305 ((_ is Leaf!24287) (c!826974 (_2!33172 (get!19216 lt!1992770)))))))

(declare-fun b!4864152 () Bool)

(assert (=> b!4864152 (= e!3041186 (++!12171 (list!17462 (left!40608 (c!826974 (_2!33172 (get!19216 lt!1992770))))) (list!17462 (right!40938 (c!826974 (_2!33172 (get!19216 lt!1992770)))))))))

(declare-fun d!1561294 () Bool)

(declare-fun c!827304 () Bool)

(assert (=> d!1561294 (= c!827304 ((_ is Empty!14563) (c!826974 (_2!33172 (get!19216 lt!1992770)))))))

(assert (=> d!1561294 (= (list!17462 (c!826974 (_2!33172 (get!19216 lt!1992770)))) e!3041185)))

(declare-fun b!4864151 () Bool)

(assert (=> b!4864151 (= e!3041186 (list!17466 (xs!17869 (c!826974 (_2!33172 (get!19216 lt!1992770))))))))

(assert (= (and d!1561294 c!827304) b!4864149))

(assert (= (and d!1561294 (not c!827304)) b!4864150))

(assert (= (and b!4864150 c!827305) b!4864151))

(assert (= (and b!4864150 (not c!827305)) b!4864152))

(declare-fun m!5862402 () Bool)

(assert (=> b!4864152 m!5862402))

(declare-fun m!5862404 () Bool)

(assert (=> b!4864152 m!5862404))

(assert (=> b!4864152 m!5862402))

(assert (=> b!4864152 m!5862404))

(declare-fun m!5862410 () Bool)

(assert (=> b!4864152 m!5862410))

(declare-fun m!5862412 () Bool)

(assert (=> b!4864151 m!5862412))

(assert (=> d!1560598 d!1561294))

(assert (=> d!1560666 d!1560530))

(assert (=> d!1560666 d!1560626))

(declare-fun d!1561298 () Bool)

(declare-fun e!3041190 () Bool)

(assert (=> d!1561298 e!3041190))

(declare-fun res!2076590 () Bool)

(assert (=> d!1561298 (=> res!2076590 e!3041190)))

(declare-fun lt!1993465 () Bool)

(assert (=> d!1561298 (= res!2076590 (not lt!1993465))))

(declare-fun e!3041189 () Bool)

(assert (=> d!1561298 (= lt!1993465 e!3041189)))

(declare-fun res!2076592 () Bool)

(assert (=> d!1561298 (=> res!2076592 e!3041189)))

(assert (=> d!1561298 (= res!2076592 ((_ is Nil!55913) lt!1992895))))

(assert (=> d!1561298 (= (isPrefix!4762 lt!1992895 lt!1992901) lt!1993465)))

(declare-fun b!4864159 () Bool)

(assert (=> b!4864159 (= e!3041190 (>= (size!36838 lt!1992901) (size!36838 lt!1992895)))))

(declare-fun b!4864156 () Bool)

(declare-fun e!3041188 () Bool)

(assert (=> b!4864156 (= e!3041189 e!3041188)))

(declare-fun res!2076591 () Bool)

(assert (=> b!4864156 (=> (not res!2076591) (not e!3041188))))

(assert (=> b!4864156 (= res!2076591 (not ((_ is Nil!55913) lt!1992901)))))

(declare-fun b!4864158 () Bool)

(assert (=> b!4864158 (= e!3041188 (isPrefix!4762 (tail!9555 lt!1992895) (tail!9555 lt!1992901)))))

(declare-fun b!4864157 () Bool)

(declare-fun res!2076589 () Bool)

(assert (=> b!4864157 (=> (not res!2076589) (not e!3041188))))

(assert (=> b!4864157 (= res!2076589 (= (head!10409 lt!1992895) (head!10409 lt!1992901)))))

(assert (= (and d!1561298 (not res!2076592)) b!4864156))

(assert (= (and b!4864156 res!2076591) b!4864157))

(assert (= (and b!4864157 res!2076589) b!4864158))

(assert (= (and d!1561298 (not res!2076590)) b!4864159))

(declare-fun m!5862418 () Bool)

(assert (=> b!4864159 m!5862418))

(declare-fun m!5862420 () Bool)

(assert (=> b!4864159 m!5862420))

(declare-fun m!5862422 () Bool)

(assert (=> b!4864158 m!5862422))

(declare-fun m!5862424 () Bool)

(assert (=> b!4864158 m!5862424))

(assert (=> b!4864158 m!5862422))

(assert (=> b!4864158 m!5862424))

(declare-fun m!5862426 () Bool)

(assert (=> b!4864158 m!5862426))

(declare-fun m!5862428 () Bool)

(assert (=> b!4864157 m!5862428))

(declare-fun m!5862430 () Bool)

(assert (=> b!4864157 m!5862430))

(assert (=> d!1560666 d!1561298))

(declare-fun d!1561304 () Bool)

(assert (=> d!1561304 (isPrefix!4762 lt!1992895 lt!1992901)))

(declare-fun lt!1993467 () Unit!145922)

(assert (=> d!1561304 (= lt!1993467 (choose!35570 lt!1992895 lt!1992901))))

(assert (=> d!1561304 (= (lemmaIsPrefixRefl!3159 lt!1992895 lt!1992901) lt!1993467)))

(declare-fun bs!1174132 () Bool)

(assert (= bs!1174132 d!1561304))

(assert (=> bs!1174132 m!5860598))

(declare-fun m!5862432 () Bool)

(assert (=> bs!1174132 m!5862432))

(assert (=> d!1560666 d!1561304))

(assert (=> d!1560666 d!1561118))

(declare-fun d!1561306 () Bool)

(assert (=> d!1561306 (= (isDefined!10841 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698))))) (not (isEmpty!29894 (maxPrefixZipper!559 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(declare-fun bs!1174133 () Bool)

(assert (= bs!1174133 d!1561306))

(assert (=> bs!1174133 m!5860594))

(declare-fun m!5862434 () Bool)

(assert (=> bs!1174133 m!5862434))

(assert (=> d!1560666 d!1561306))

(assert (=> d!1560666 d!1560984))

(declare-fun d!1561308 () Bool)

(declare-fun c!827307 () Bool)

(assert (=> d!1561308 (= c!827307 ((_ is Nil!55913) (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))

(declare-fun e!3041192 () (InoxSet C!26400))

(assert (=> d!1561308 (= (content!9960 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))) e!3041192)))

(declare-fun b!4864162 () Bool)

(assert (=> b!4864162 (= e!3041192 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4864163 () Bool)

(assert (=> b!4864163 (= e!3041192 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))) true) (content!9960 (t!363661 (t!363661 (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561308 c!827307) b!4864162))

(assert (= (and d!1561308 (not c!827307)) b!4864163))

(declare-fun m!5862436 () Bool)

(assert (=> b!4864163 m!5862436))

(declare-fun m!5862438 () Bool)

(assert (=> b!4864163 m!5862438))

(assert (=> b!4863100 d!1561308))

(declare-fun d!1561310 () Bool)

(assert (=> d!1561310 (= (list!17464 (_1!33173 lt!1992961)) (list!17468 (c!826976 (_1!33173 lt!1992961))))))

(declare-fun bs!1174135 () Bool)

(assert (= bs!1174135 d!1561310))

(declare-fun m!5862440 () Bool)

(assert (=> bs!1174135 m!5862440))

(assert (=> b!4863199 d!1561310))

(declare-fun b!4864164 () Bool)

(declare-fun e!3041193 () Bool)

(declare-fun lt!1993468 () tuple2!59746)

(assert (=> b!4864164 (= e!3041193 (not (isEmpty!29903 (_1!33176 lt!1993468))))))

(declare-fun b!4864165 () Bool)

(declare-fun e!3041194 () Bool)

(assert (=> b!4864165 (= e!3041194 e!3041193)))

(declare-fun res!2076593 () Bool)

(assert (=> b!4864165 (= res!2076593 (< (size!36838 (_2!33176 lt!1993468)) (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992736))))))))

(assert (=> b!4864165 (=> (not res!2076593) (not e!3041193))))

(declare-fun d!1561314 () Bool)

(assert (=> d!1561314 e!3041194))

(declare-fun c!827308 () Bool)

(assert (=> d!1561314 (= c!827308 (> (size!36840 (_1!33176 lt!1993468)) 0))))

(declare-fun e!3041195 () tuple2!59746)

(assert (=> d!1561314 (= lt!1993468 e!3041195)))

(declare-fun c!827309 () Bool)

(declare-fun lt!1993469 () Option!13773)

(assert (=> d!1561314 (= c!827309 ((_ is Some!13772) lt!1993469))))

(assert (=> d!1561314 (= lt!1993469 (maxPrefix!4545 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))

(assert (=> d!1561314 (= (lexList!2099 thiss!11777 rules!1248 (list!17460 (_2!33172 (v!49672 lt!1992736)))) lt!1993468)))

(declare-fun b!4864166 () Bool)

(declare-fun lt!1993470 () tuple2!59746)

(assert (=> b!4864166 (= e!3041195 (tuple2!59747 (Cons!55915 (_1!33177 (v!49674 lt!1993469)) (_1!33176 lt!1993470)) (_2!33176 lt!1993470)))))

(assert (=> b!4864166 (= lt!1993470 (lexList!2099 thiss!11777 rules!1248 (_2!33177 (v!49674 lt!1993469))))))

(declare-fun b!4864167 () Bool)

(assert (=> b!4864167 (= e!3041195 (tuple2!59747 Nil!55915 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))

(declare-fun b!4864168 () Bool)

(assert (=> b!4864168 (= e!3041194 (= (_2!33176 lt!1993468) (list!17460 (_2!33172 (v!49672 lt!1992736)))))))

(assert (= (and d!1561314 c!827309) b!4864166))

(assert (= (and d!1561314 (not c!827309)) b!4864167))

(assert (= (and d!1561314 c!827308) b!4864165))

(assert (= (and d!1561314 (not c!827308)) b!4864168))

(assert (= (and b!4864165 res!2076593) b!4864164))

(declare-fun m!5862442 () Bool)

(assert (=> b!4864164 m!5862442))

(declare-fun m!5862444 () Bool)

(assert (=> b!4864165 m!5862444))

(assert (=> b!4864165 m!5860854))

(declare-fun m!5862448 () Bool)

(assert (=> b!4864165 m!5862448))

(declare-fun m!5862450 () Bool)

(assert (=> d!1561314 m!5862450))

(assert (=> d!1561314 m!5860854))

(assert (=> d!1561314 m!5861574))

(declare-fun m!5862454 () Bool)

(assert (=> b!4864166 m!5862454))

(assert (=> b!4863199 d!1561314))

(assert (=> b!4863199 d!1560982))

(declare-fun d!1561322 () Bool)

(assert (=> d!1561322 (= (isDefined!10840 lt!1993036) (not (isEmpty!29895 lt!1993036)))))

(declare-fun bs!1174138 () Bool)

(assert (= bs!1174138 d!1561322))

(declare-fun m!5862456 () Bool)

(assert (=> bs!1174138 m!5862456))

(assert (=> b!4863326 d!1561322))

(declare-fun d!1561324 () Bool)

(declare-fun lt!1993472 () Int)

(assert (=> d!1561324 (>= lt!1993472 0)))

(declare-fun e!3041196 () Int)

(assert (=> d!1561324 (= lt!1993472 e!3041196)))

(declare-fun c!827310 () Bool)

(assert (=> d!1561324 (= c!827310 ((_ is Nil!55913) (innerList!14651 (xs!17869 (c!826974 input!661)))))))

(assert (=> d!1561324 (= (size!36838 (innerList!14651 (xs!17869 (c!826974 input!661)))) lt!1993472)))

(declare-fun b!4864169 () Bool)

(assert (=> b!4864169 (= e!3041196 0)))

(declare-fun b!4864170 () Bool)

(assert (=> b!4864170 (= e!3041196 (+ 1 (size!36838 (t!363661 (innerList!14651 (xs!17869 (c!826974 input!661)))))))))

(assert (= (and d!1561324 c!827310) b!4864169))

(assert (= (and d!1561324 (not c!827310)) b!4864170))

(declare-fun m!5862460 () Bool)

(assert (=> b!4864170 m!5862460))

(assert (=> d!1560662 d!1561324))

(declare-fun d!1561328 () Bool)

(assert (=> d!1561328 (= (list!17466 (xs!17869 (c!826974 (_2!33172 (v!49672 lt!1992698))))) (innerList!14651 (xs!17869 (c!826974 (_2!33172 (v!49672 lt!1992698))))))))

(assert (=> b!4863103 d!1561328))

(declare-fun d!1561330 () Bool)

(declare-fun lt!1993473 () Int)

(assert (=> d!1561330 (>= lt!1993473 0)))

(declare-fun e!3041197 () Int)

(assert (=> d!1561330 (= lt!1993473 e!3041197)))

(declare-fun c!827311 () Bool)

(assert (=> d!1561330 (= c!827311 ((_ is Nil!55913) (list!17460 (_2!33173 lt!1992737))))))

(assert (=> d!1561330 (= (size!36838 (list!17460 (_2!33173 lt!1992737))) lt!1993473)))

(declare-fun b!4864171 () Bool)

(assert (=> b!4864171 (= e!3041197 0)))

(declare-fun b!4864172 () Bool)

(assert (=> b!4864172 (= e!3041197 (+ 1 (size!36838 (t!363661 (list!17460 (_2!33173 lt!1992737))))))))

(assert (= (and d!1561330 c!827311) b!4864171))

(assert (= (and d!1561330 (not c!827311)) b!4864172))

(declare-fun m!5862462 () Bool)

(assert (=> b!4864172 m!5862462))

(assert (=> d!1560822 d!1561330))

(assert (=> d!1560822 d!1560610))

(declare-fun d!1561332 () Bool)

(declare-fun lt!1993474 () Int)

(assert (=> d!1561332 (= lt!1993474 (size!36838 (list!17462 (c!826974 (_2!33173 lt!1992737)))))))

(assert (=> d!1561332 (= lt!1993474 (ite ((_ is Empty!14563) (c!826974 (_2!33173 lt!1992737))) 0 (ite ((_ is Leaf!24287) (c!826974 (_2!33173 lt!1992737))) (csize!29357 (c!826974 (_2!33173 lt!1992737))) (csize!29356 (c!826974 (_2!33173 lt!1992737))))))))

(assert (=> d!1561332 (= (size!36842 (c!826974 (_2!33173 lt!1992737))) lt!1993474)))

(declare-fun bs!1174140 () Bool)

(assert (= bs!1174140 d!1561332))

(assert (=> bs!1174140 m!5860404))

(assert (=> bs!1174140 m!5860404))

(declare-fun m!5862464 () Bool)

(assert (=> bs!1174140 m!5862464))

(assert (=> d!1560822 d!1561332))

(declare-fun d!1561334 () Bool)

(declare-fun res!2076594 () Bool)

(declare-fun e!3041198 () Bool)

(assert (=> d!1561334 (=> (not res!2076594) (not e!3041198))))

(assert (=> d!1561334 (= res!2076594 (= (csize!29356 (right!40938 (c!826974 input!661))) (+ (size!36842 (left!40608 (right!40938 (c!826974 input!661)))) (size!36842 (right!40938 (right!40938 (c!826974 input!661)))))))))

(assert (=> d!1561334 (= (inv!71813 (right!40938 (c!826974 input!661))) e!3041198)))

(declare-fun b!4864173 () Bool)

(declare-fun res!2076595 () Bool)

(assert (=> b!4864173 (=> (not res!2076595) (not e!3041198))))

(assert (=> b!4864173 (= res!2076595 (and (not (= (left!40608 (right!40938 (c!826974 input!661))) Empty!14563)) (not (= (right!40938 (right!40938 (c!826974 input!661))) Empty!14563))))))

(declare-fun b!4864174 () Bool)

(declare-fun res!2076596 () Bool)

(assert (=> b!4864174 (=> (not res!2076596) (not e!3041198))))

(assert (=> b!4864174 (= res!2076596 (= (cheight!14774 (right!40938 (c!826974 input!661))) (+ (max!0 (height!1918 (left!40608 (right!40938 (c!826974 input!661)))) (height!1918 (right!40938 (right!40938 (c!826974 input!661))))) 1)))))

(declare-fun b!4864175 () Bool)

(assert (=> b!4864175 (= e!3041198 (<= 0 (cheight!14774 (right!40938 (c!826974 input!661)))))))

(assert (= (and d!1561334 res!2076594) b!4864173))

(assert (= (and b!4864173 res!2076595) b!4864174))

(assert (= (and b!4864174 res!2076596) b!4864175))

(declare-fun m!5862466 () Bool)

(assert (=> d!1561334 m!5862466))

(declare-fun m!5862468 () Bool)

(assert (=> d!1561334 m!5862468))

(assert (=> b!4864174 m!5861176))

(assert (=> b!4864174 m!5861178))

(assert (=> b!4864174 m!5861176))

(assert (=> b!4864174 m!5861178))

(declare-fun m!5862470 () Bool)

(assert (=> b!4864174 m!5862470))

(assert (=> b!4863007 d!1561334))

(declare-fun d!1561336 () Bool)

(assert (=> d!1561336 (= (isDefined!10841 lt!1992791) (not (isEmpty!29894 lt!1992791)))))

(declare-fun bs!1174141 () Bool)

(assert (= bs!1174141 d!1561336))

(assert (=> bs!1174141 m!5860390))

(assert (=> b!4862819 d!1561336))

(declare-fun d!1561338 () Bool)

(declare-fun lt!1993475 () Int)

(assert (=> d!1561338 (>= lt!1993475 0)))

(declare-fun e!3041199 () Int)

(assert (=> d!1561338 (= lt!1993475 e!3041199)))

(declare-fun c!827312 () Bool)

(assert (=> d!1561338 (= c!827312 ((_ is Nil!55913) (list!17466 (xs!17869 (c!826974 totalInput!332)))))))

(assert (=> d!1561338 (= (size!36838 (list!17466 (xs!17869 (c!826974 totalInput!332)))) lt!1993475)))

(declare-fun b!4864176 () Bool)

(assert (=> b!4864176 (= e!3041199 0)))

(declare-fun b!4864177 () Bool)

(assert (=> b!4864177 (= e!3041199 (+ 1 (size!36838 (t!363661 (list!17466 (xs!17869 (c!826974 totalInput!332)))))))))

(assert (= (and d!1561338 c!827312) b!4864176))

(assert (= (and d!1561338 (not c!827312)) b!4864177))

(declare-fun m!5862472 () Bool)

(assert (=> b!4864177 m!5862472))

(assert (=> d!1560684 d!1561338))

(declare-fun d!1561340 () Bool)

(assert (=> d!1561340 (= (list!17466 (xs!17869 (c!826974 totalInput!332))) (innerList!14651 (xs!17869 (c!826974 totalInput!332))))))

(assert (=> d!1560684 d!1561340))

(declare-fun bs!1174142 () Bool)

(declare-fun b!4864195 () Bool)

(assert (= bs!1174142 (and b!4864195 d!1560692)))

(declare-fun lambda!243355 () Int)

(assert (=> bs!1174142 (= lambda!243355 lambda!243326)))

(declare-fun bs!1174143 () Bool)

(assert (= bs!1174143 (and b!4864195 b!4863324)))

(assert (=> bs!1174143 (= lambda!243355 lambda!243343)))

(declare-fun bs!1174144 () Bool)

(assert (= bs!1174144 (and b!4864195 b!4863509)))

(assert (=> bs!1174144 (= (and (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (= (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))))) (= lambda!243355 lambda!243344))))

(declare-fun bs!1174145 () Bool)

(assert (= bs!1174145 (and b!4864195 d!1561104)))

(assert (=> bs!1174145 (= (and (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248))))) (= (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))))) (= lambda!243355 lambda!243350))))

(declare-fun b!4864197 () Bool)

(declare-fun e!3041216 () Bool)

(assert (=> b!4864197 (= e!3041216 true)))

(declare-fun b!4864196 () Bool)

(declare-fun e!3041215 () Bool)

(assert (=> b!4864196 (= e!3041215 e!3041216)))

(assert (=> b!4864195 e!3041215))

(assert (= b!4864196 b!4864197))

(assert (= b!4864195 b!4864196))

(assert (=> b!4864197 (< (dynLambda!22425 order!25175 (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243355))))

(assert (=> b!4864197 (< (dynLambda!22423 order!25171 (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) (dynLambda!22424 order!25173 lambda!243355))))

(declare-fun lt!1993499 () Option!13771)

(declare-fun e!3041212 () Bool)

(declare-fun b!4864190 () Bool)

(assert (=> b!4864190 (= e!3041212 (= (list!17460 (_2!33172 (get!19216 lt!1993499))) (_2!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(declare-fun b!4864191 () Bool)

(declare-fun e!3041213 () Bool)

(declare-fun e!3041210 () Bool)

(assert (=> b!4864191 (= e!3041213 e!3041210)))

(declare-fun res!2076606 () Bool)

(assert (=> b!4864191 (=> res!2076606 e!3041210)))

(assert (=> b!4864191 (= res!2076606 (not (isDefined!10840 lt!1993499)))))

(declare-fun b!4864192 () Bool)

(declare-fun e!3041214 () Option!13771)

(assert (=> b!4864192 (= e!3041214 None!13770)))

(declare-fun d!1561342 () Bool)

(assert (=> d!1561342 e!3041213))

(declare-fun res!2076607 () Bool)

(assert (=> d!1561342 (=> (not res!2076607) (not e!3041213))))

(assert (=> d!1561342 (= res!2076607 (= (isDefined!10840 lt!1993499) (isDefined!10841 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561342 (= lt!1993499 e!3041214)))

(declare-fun c!827315 () Bool)

(declare-fun lt!1993502 () tuple2!59756)

(assert (=> d!1561342 (= c!827315 (isEmpty!29907 (_1!33181 lt!1993502)))))

(declare-fun findLongestMatchWithZipperSequence!233 (Regex!13101 BalanceConc!28568) tuple2!59756)

(assert (=> d!1561342 (= lt!1993502 (findLongestMatchWithZipperSequence!233 (regex!8026 (h!62362 rules!1248)) (_2!33172 (v!49672 lt!1992698))))))

(assert (=> d!1561342 (ruleValid!3625 thiss!11777 (h!62362 rules!1248))))

(assert (=> d!1561342 (= (maxPrefixOneRuleZipperSequence!573 thiss!11777 (h!62362 rules!1248) (_2!33172 (v!49672 lt!1992698))) lt!1993499)))

(declare-fun b!4864193 () Bool)

(declare-fun e!3041211 () Bool)

(declare-fun lt!1993505 () List!56037)

(assert (=> b!4864193 (= e!3041211 (matchR!6487 (regex!8026 (h!62362 rules!1248)) (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993505 lt!1993505 (size!36838 lt!1993505)))))))

(declare-fun b!4864194 () Bool)

(assert (=> b!4864194 (= e!3041210 e!3041212)))

(declare-fun res!2076605 () Bool)

(assert (=> b!4864194 (=> (not res!2076605) (not e!3041212))))

(assert (=> b!4864194 (= res!2076605 (= (_1!33172 (get!19216 lt!1993499)) (_1!33177 (get!19217 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 (_2!33172 (v!49672 lt!1992698))))))))))

(assert (=> b!4864195 (= e!3041214 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993502)) (h!62362 rules!1248) (size!36837 (_1!33181 lt!1993502)) (list!17460 (_1!33181 lt!1993502))) (_2!33181 lt!1993502))))))

(assert (=> b!4864195 (= lt!1993505 (list!17460 (_2!33172 (v!49672 lt!1992698))))))

(declare-fun lt!1993498 () Unit!145922)

(assert (=> b!4864195 (= lt!1993498 (longestMatchIsAcceptedByMatchOrIsEmpty!1680 (regex!8026 (h!62362 rules!1248)) lt!1993505))))

(declare-fun res!2076608 () Bool)

(assert (=> b!4864195 (= res!2076608 (isEmpty!29906 (_1!33180 (findLongestMatchInner!1717 (regex!8026 (h!62362 rules!1248)) Nil!55913 (size!36838 Nil!55913) lt!1993505 lt!1993505 (size!36838 lt!1993505)))))))

(assert (=> b!4864195 (=> res!2076608 e!3041211)))

(assert (=> b!4864195 e!3041211))

(declare-fun lt!1993503 () Unit!145922)

(assert (=> b!4864195 (= lt!1993503 lt!1993498)))

(declare-fun lt!1993497 () Unit!145922)

(assert (=> b!4864195 (= lt!1993497 (lemmaInv!1200 (transformation!8026 (h!62362 rules!1248))))))

(declare-fun lt!1993504 () Unit!145922)

(assert (=> b!4864195 (= lt!1993504 (ForallOf!1097 lambda!243355 (_1!33181 lt!1993502)))))

(declare-fun lt!1993500 () Unit!145922)

(assert (=> b!4864195 (= lt!1993500 (ForallOf!1097 lambda!243355 (seqFromList!5893 (list!17460 (_1!33181 lt!1993502)))))))

(declare-fun lt!1993501 () Option!13771)

(assert (=> b!4864195 (= lt!1993501 (Some!13770 (tuple2!59739 (Token!14641 (apply!13497 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993502)) (h!62362 rules!1248) (size!36837 (_1!33181 lt!1993502)) (list!17460 (_1!33181 lt!1993502))) (_2!33181 lt!1993502))))))

(declare-fun lt!1993496 () Unit!145922)

(assert (=> b!4864195 (= lt!1993496 (lemmaEqSameImage!1054 (transformation!8026 (h!62362 rules!1248)) (_1!33181 lt!1993502) (seqFromList!5893 (list!17460 (_1!33181 lt!1993502)))))))

(assert (= (and d!1561342 c!827315) b!4864192))

(assert (= (and d!1561342 (not c!827315)) b!4864195))

(assert (= (and b!4864195 (not res!2076608)) b!4864193))

(assert (= (and d!1561342 res!2076607) b!4864191))

(assert (= (and b!4864191 (not res!2076606)) b!4864194))

(assert (= (and b!4864194 res!2076605) b!4864190))

(declare-fun m!5862474 () Bool)

(assert (=> b!4864191 m!5862474))

(declare-fun m!5862476 () Bool)

(assert (=> b!4864194 m!5862476))

(assert (=> b!4864194 m!5860108))

(assert (=> b!4864194 m!5860108))

(assert (=> b!4864194 m!5861320))

(assert (=> b!4864194 m!5861320))

(declare-fun m!5862478 () Bool)

(assert (=> b!4864194 m!5862478))

(assert (=> b!4864190 m!5861320))

(assert (=> b!4864190 m!5862478))

(assert (=> b!4864190 m!5862476))

(assert (=> b!4864190 m!5860108))

(declare-fun m!5862480 () Bool)

(assert (=> b!4864190 m!5862480))

(assert (=> b!4864190 m!5860108))

(assert (=> b!4864190 m!5861320))

(assert (=> b!4864193 m!5861026))

(declare-fun m!5862482 () Bool)

(assert (=> b!4864193 m!5862482))

(assert (=> b!4864193 m!5861026))

(assert (=> b!4864193 m!5862482))

(declare-fun m!5862484 () Bool)

(assert (=> b!4864193 m!5862484))

(declare-fun m!5862486 () Bool)

(assert (=> b!4864193 m!5862486))

(declare-fun m!5862488 () Bool)

(assert (=> b!4864195 m!5862488))

(assert (=> b!4864195 m!5860108))

(assert (=> b!4864195 m!5861026))

(declare-fun m!5862490 () Bool)

(assert (=> b!4864195 m!5862490))

(assert (=> b!4864195 m!5862482))

(declare-fun m!5862492 () Bool)

(assert (=> b!4864195 m!5862492))

(declare-fun m!5862494 () Bool)

(assert (=> b!4864195 m!5862494))

(assert (=> b!4864195 m!5861026))

(assert (=> b!4864195 m!5862482))

(assert (=> b!4864195 m!5862484))

(declare-fun m!5862496 () Bool)

(assert (=> b!4864195 m!5862496))

(assert (=> b!4864195 m!5861050))

(declare-fun m!5862498 () Bool)

(assert (=> b!4864195 m!5862498))

(assert (=> b!4864195 m!5862492))

(declare-fun m!5862500 () Bool)

(assert (=> b!4864195 m!5862500))

(assert (=> b!4864195 m!5862494))

(declare-fun m!5862502 () Bool)

(assert (=> b!4864195 m!5862502))

(assert (=> b!4864195 m!5862494))

(declare-fun m!5862504 () Bool)

(assert (=> b!4864195 m!5862504))

(assert (=> d!1561342 m!5862474))

(declare-fun m!5862506 () Bool)

(assert (=> d!1561342 m!5862506))

(assert (=> d!1561342 m!5860108))

(assert (=> d!1561342 m!5861320))

(declare-fun m!5862508 () Bool)

(assert (=> d!1561342 m!5862508))

(assert (=> d!1561342 m!5860108))

(assert (=> d!1561342 m!5861320))

(assert (=> d!1561342 m!5860496))

(declare-fun m!5862510 () Bool)

(assert (=> d!1561342 m!5862510))

(assert (=> bm!337807 d!1561342))

(assert (=> b!4863215 d!1560898))

(declare-fun d!1561344 () Bool)

(declare-fun c!827316 () Bool)

(assert (=> d!1561344 (= c!827316 ((_ is Node!14563) (left!40608 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun e!3041217 () Bool)

(assert (=> d!1561344 (= (inv!71807 (left!40608 (left!40608 (c!826974 totalInput!332)))) e!3041217)))

(declare-fun b!4864198 () Bool)

(assert (=> b!4864198 (= e!3041217 (inv!71813 (left!40608 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun b!4864199 () Bool)

(declare-fun e!3041218 () Bool)

(assert (=> b!4864199 (= e!3041217 e!3041218)))

(declare-fun res!2076609 () Bool)

(assert (=> b!4864199 (= res!2076609 (not ((_ is Leaf!24287) (left!40608 (left!40608 (c!826974 totalInput!332))))))))

(assert (=> b!4864199 (=> res!2076609 e!3041218)))

(declare-fun b!4864200 () Bool)

(assert (=> b!4864200 (= e!3041218 (inv!71814 (left!40608 (left!40608 (c!826974 totalInput!332)))))))

(assert (= (and d!1561344 c!827316) b!4864198))

(assert (= (and d!1561344 (not c!827316)) b!4864199))

(assert (= (and b!4864199 (not res!2076609)) b!4864200))

(declare-fun m!5862512 () Bool)

(assert (=> b!4864198 m!5862512))

(declare-fun m!5862514 () Bool)

(assert (=> b!4864200 m!5862514))

(assert (=> b!4863379 d!1561344))

(declare-fun d!1561346 () Bool)

(declare-fun c!827317 () Bool)

(assert (=> d!1561346 (= c!827317 ((_ is Node!14563) (right!40938 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun e!3041219 () Bool)

(assert (=> d!1561346 (= (inv!71807 (right!40938 (left!40608 (c!826974 totalInput!332)))) e!3041219)))

(declare-fun b!4864201 () Bool)

(assert (=> b!4864201 (= e!3041219 (inv!71813 (right!40938 (left!40608 (c!826974 totalInput!332)))))))

(declare-fun b!4864202 () Bool)

(declare-fun e!3041220 () Bool)

(assert (=> b!4864202 (= e!3041219 e!3041220)))

(declare-fun res!2076610 () Bool)

(assert (=> b!4864202 (= res!2076610 (not ((_ is Leaf!24287) (right!40938 (left!40608 (c!826974 totalInput!332))))))))

(assert (=> b!4864202 (=> res!2076610 e!3041220)))

(declare-fun b!4864203 () Bool)

(assert (=> b!4864203 (= e!3041220 (inv!71814 (right!40938 (left!40608 (c!826974 totalInput!332)))))))

(assert (= (and d!1561346 c!827317) b!4864201))

(assert (= (and d!1561346 (not c!827317)) b!4864202))

(assert (= (and b!4864202 (not res!2076610)) b!4864203))

(declare-fun m!5862516 () Bool)

(assert (=> b!4864201 m!5862516))

(declare-fun m!5862518 () Bool)

(assert (=> b!4864203 m!5862518))

(assert (=> b!4863379 d!1561346))

(declare-fun d!1561348 () Bool)

(declare-fun c!827318 () Bool)

(assert (=> d!1561348 (= c!827318 ((_ is Node!14563) (left!40608 (left!40608 (c!826974 input!661)))))))

(declare-fun e!3041221 () Bool)

(assert (=> d!1561348 (= (inv!71807 (left!40608 (left!40608 (c!826974 input!661)))) e!3041221)))

(declare-fun b!4864204 () Bool)

(assert (=> b!4864204 (= e!3041221 (inv!71813 (left!40608 (left!40608 (c!826974 input!661)))))))

(declare-fun b!4864205 () Bool)

(declare-fun e!3041222 () Bool)

(assert (=> b!4864205 (= e!3041221 e!3041222)))

(declare-fun res!2076611 () Bool)

(assert (=> b!4864205 (= res!2076611 (not ((_ is Leaf!24287) (left!40608 (left!40608 (c!826974 input!661))))))))

(assert (=> b!4864205 (=> res!2076611 e!3041222)))

(declare-fun b!4864206 () Bool)

(assert (=> b!4864206 (= e!3041222 (inv!71814 (left!40608 (left!40608 (c!826974 input!661)))))))

(assert (= (and d!1561348 c!827318) b!4864204))

(assert (= (and d!1561348 (not c!827318)) b!4864205))

(assert (= (and b!4864205 (not res!2076611)) b!4864206))

(declare-fun m!5862520 () Bool)

(assert (=> b!4864204 m!5862520))

(declare-fun m!5862522 () Bool)

(assert (=> b!4864206 m!5862522))

(assert (=> b!4863448 d!1561348))

(declare-fun d!1561350 () Bool)

(declare-fun c!827319 () Bool)

(assert (=> d!1561350 (= c!827319 ((_ is Node!14563) (right!40938 (left!40608 (c!826974 input!661)))))))

(declare-fun e!3041223 () Bool)

(assert (=> d!1561350 (= (inv!71807 (right!40938 (left!40608 (c!826974 input!661)))) e!3041223)))

(declare-fun b!4864207 () Bool)

(assert (=> b!4864207 (= e!3041223 (inv!71813 (right!40938 (left!40608 (c!826974 input!661)))))))

(declare-fun b!4864208 () Bool)

(declare-fun e!3041224 () Bool)

(assert (=> b!4864208 (= e!3041223 e!3041224)))

(declare-fun res!2076612 () Bool)

(assert (=> b!4864208 (= res!2076612 (not ((_ is Leaf!24287) (right!40938 (left!40608 (c!826974 input!661))))))))

(assert (=> b!4864208 (=> res!2076612 e!3041224)))

(declare-fun b!4864209 () Bool)

(assert (=> b!4864209 (= e!3041224 (inv!71814 (right!40938 (left!40608 (c!826974 input!661)))))))

(assert (= (and d!1561350 c!827319) b!4864207))

(assert (= (and d!1561350 (not c!827319)) b!4864208))

(assert (= (and b!4864208 (not res!2076612)) b!4864209))

(declare-fun m!5862524 () Bool)

(assert (=> b!4864207 m!5862524))

(declare-fun m!5862526 () Bool)

(assert (=> b!4864209 m!5862526))

(assert (=> b!4863448 d!1561350))

(declare-fun d!1561352 () Bool)

(assert (=> d!1561352 (= (head!10409 lt!1992773) (h!62361 lt!1992773))))

(assert (=> b!4862858 d!1561352))

(declare-fun d!1561354 () Bool)

(assert (=> d!1561354 (= (head!10409 lt!1992772) (h!62361 lt!1992772))))

(assert (=> b!4862858 d!1561354))

(declare-fun d!1561356 () Bool)

(declare-fun res!2076613 () Bool)

(declare-fun e!3041225 () Bool)

(assert (=> d!1561356 (=> (not res!2076613) (not e!3041225))))

(assert (=> d!1561356 (= res!2076613 (= (csize!29356 (left!40608 (c!826974 totalInput!332))) (+ (size!36842 (left!40608 (left!40608 (c!826974 totalInput!332)))) (size!36842 (right!40938 (left!40608 (c!826974 totalInput!332)))))))))

(assert (=> d!1561356 (= (inv!71813 (left!40608 (c!826974 totalInput!332))) e!3041225)))

(declare-fun b!4864210 () Bool)

(declare-fun res!2076614 () Bool)

(assert (=> b!4864210 (=> (not res!2076614) (not e!3041225))))

(assert (=> b!4864210 (= res!2076614 (and (not (= (left!40608 (left!40608 (c!826974 totalInput!332))) Empty!14563)) (not (= (right!40938 (left!40608 (c!826974 totalInput!332))) Empty!14563))))))

(declare-fun b!4864211 () Bool)

(declare-fun res!2076615 () Bool)

(assert (=> b!4864211 (=> (not res!2076615) (not e!3041225))))

(assert (=> b!4864211 (= res!2076615 (= (cheight!14774 (left!40608 (c!826974 totalInput!332))) (+ (max!0 (height!1918 (left!40608 (left!40608 (c!826974 totalInput!332)))) (height!1918 (right!40938 (left!40608 (c!826974 totalInput!332))))) 1)))))

(declare-fun b!4864212 () Bool)

(assert (=> b!4864212 (= e!3041225 (<= 0 (cheight!14774 (left!40608 (c!826974 totalInput!332)))))))

(assert (= (and d!1561356 res!2076613) b!4864210))

(assert (= (and b!4864210 res!2076614) b!4864211))

(assert (= (and b!4864211 res!2076615) b!4864212))

(declare-fun m!5862528 () Bool)

(assert (=> d!1561356 m!5862528))

(declare-fun m!5862530 () Bool)

(assert (=> d!1561356 m!5862530))

(assert (=> b!4864211 m!5861720))

(assert (=> b!4864211 m!5861722))

(assert (=> b!4864211 m!5861720))

(assert (=> b!4864211 m!5861722))

(declare-fun m!5862532 () Bool)

(assert (=> b!4864211 m!5862532))

(assert (=> b!4863154 d!1561356))

(declare-fun d!1561358 () Bool)

(declare-fun lt!1993506 () Int)

(assert (=> d!1561358 (>= lt!1993506 0)))

(declare-fun e!3041226 () Int)

(assert (=> d!1561358 (= lt!1993506 e!3041226)))

(declare-fun c!827320 () Bool)

(assert (=> d!1561358 (= c!827320 ((_ is Nil!55913) (t!363661 lt!1992743)))))

(assert (=> d!1561358 (= (size!36838 (t!363661 lt!1992743)) lt!1993506)))

(declare-fun b!4864213 () Bool)

(assert (=> b!4864213 (= e!3041226 0)))

(declare-fun b!4864214 () Bool)

(assert (=> b!4864214 (= e!3041226 (+ 1 (size!36838 (t!363661 (t!363661 lt!1992743)))))))

(assert (= (and d!1561358 c!827320) b!4864213))

(assert (= (and d!1561358 (not c!827320)) b!4864214))

(declare-fun m!5862534 () Bool)

(assert (=> b!4864214 m!5862534))

(assert (=> b!4863223 d!1561358))

(declare-fun d!1561360 () Bool)

(declare-fun res!2076616 () Bool)

(declare-fun e!3041227 () Bool)

(assert (=> d!1561360 (=> (not res!2076616) (not e!3041227))))

(assert (=> d!1561360 (= res!2076616 (= (csize!29356 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) (+ (size!36842 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) (size!36842 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))))

(assert (=> d!1561360 (= (inv!71813 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) e!3041227)))

(declare-fun b!4864215 () Bool)

(declare-fun res!2076617 () Bool)

(assert (=> b!4864215 (=> (not res!2076617) (not e!3041227))))

(assert (=> b!4864215 (= res!2076617 (and (not (= (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) Empty!14563)) (not (= (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) Empty!14563))))))

(declare-fun b!4864216 () Bool)

(declare-fun res!2076618 () Bool)

(assert (=> b!4864216 (=> (not res!2076618) (not e!3041227))))

(assert (=> b!4864216 (= res!2076618 (= (cheight!14774 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))) (+ (max!0 (height!1918 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) (height!1918 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) 1)))))

(declare-fun b!4864217 () Bool)

(assert (=> b!4864217 (= e!3041227 (<= 0 (cheight!14774 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561360 res!2076616) b!4864215))

(assert (= (and b!4864215 res!2076617) b!4864216))

(assert (= (and b!4864216 res!2076618) b!4864217))

(declare-fun m!5862536 () Bool)

(assert (=> d!1561360 m!5862536))

(declare-fun m!5862538 () Bool)

(assert (=> d!1561360 m!5862538))

(assert (=> b!4864216 m!5861952))

(assert (=> b!4864216 m!5861954))

(assert (=> b!4864216 m!5861952))

(assert (=> b!4864216 m!5861954))

(declare-fun m!5862540 () Bool)

(assert (=> b!4864216 m!5862540))

(assert (=> b!4862924 d!1561360))

(assert (=> b!4863002 d!1561338))

(assert (=> b!4863002 d!1561340))

(declare-fun d!1561362 () Bool)

(declare-fun lt!1993507 () Int)

(assert (=> d!1561362 (= lt!1993507 (size!36838 (list!17460 (_2!33173 lt!1992961))))))

(assert (=> d!1561362 (= lt!1993507 (size!36842 (c!826974 (_2!33173 lt!1992961))))))

(assert (=> d!1561362 (= (size!36837 (_2!33173 lt!1992961)) lt!1993507)))

(declare-fun bs!1174146 () Bool)

(assert (= bs!1174146 d!1561362))

(assert (=> bs!1174146 m!5860852))

(assert (=> bs!1174146 m!5860852))

(declare-fun m!5862542 () Bool)

(assert (=> bs!1174146 m!5862542))

(declare-fun m!5862544 () Bool)

(assert (=> bs!1174146 m!5862544))

(assert (=> b!4863195 d!1561362))

(declare-fun d!1561364 () Bool)

(declare-fun lt!1993508 () Int)

(assert (=> d!1561364 (= lt!1993508 (size!36838 (list!17460 (_2!33172 (v!49672 lt!1992736)))))))

(assert (=> d!1561364 (= lt!1993508 (size!36842 (c!826974 (_2!33172 (v!49672 lt!1992736)))))))

(assert (=> d!1561364 (= (size!36837 (_2!33172 (v!49672 lt!1992736))) lt!1993508)))

(declare-fun bs!1174147 () Bool)

(assert (= bs!1174147 d!1561364))

(assert (=> bs!1174147 m!5860854))

(assert (=> bs!1174147 m!5860854))

(assert (=> bs!1174147 m!5862448))

(declare-fun m!5862546 () Bool)

(assert (=> bs!1174147 m!5862546))

(assert (=> b!4863195 d!1561364))

(declare-fun d!1561366 () Bool)

(assert (=> d!1561366 (= (inv!71815 (xs!17869 (right!40938 (c!826974 totalInput!332)))) (<= (size!36838 (innerList!14651 (xs!17869 (right!40938 (c!826974 totalInput!332))))) 2147483647))))

(declare-fun bs!1174148 () Bool)

(assert (= bs!1174148 d!1561366))

(declare-fun m!5862548 () Bool)

(assert (=> bs!1174148 m!5862548))

(assert (=> b!4863383 d!1561366))

(declare-fun b!4864220 () Bool)

(declare-fun e!3041231 () Int)

(declare-fun call!337895 () Int)

(assert (=> b!4864220 (= e!3041231 call!337895)))

(declare-fun b!4864221 () Bool)

(declare-fun e!3041230 () List!56037)

(assert (=> b!4864221 (= e!3041230 Nil!55913)))

(declare-fun b!4864222 () Bool)

(declare-fun e!3041228 () List!56037)

(assert (=> b!4864222 (= e!3041228 (t!363661 (list!17460 totalInput!332)))))

(declare-fun b!4864223 () Bool)

(declare-fun e!3041229 () Int)

(assert (=> b!4864223 (= e!3041231 e!3041229)))

(declare-fun c!827321 () Bool)

(assert (=> b!4864223 (= c!827321 (>= (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1) call!337895))))

(declare-fun d!1561368 () Bool)

(declare-fun e!3041232 () Bool)

(assert (=> d!1561368 e!3041232))

(declare-fun res!2076619 () Bool)

(assert (=> d!1561368 (=> (not res!2076619) (not e!3041232))))

(declare-fun lt!1993513 () List!56037)

(assert (=> d!1561368 (= res!2076619 (= ((_ map implies) (content!9960 lt!1993513) (content!9960 (t!363661 (list!17460 totalInput!332)))) ((as const (InoxSet C!26400)) true)))))

(assert (=> d!1561368 (= lt!1993513 e!3041230)))

(declare-fun c!827323 () Bool)

(assert (=> d!1561368 (= c!827323 ((_ is Nil!55913) (t!363661 (list!17460 totalInput!332))))))

(assert (=> d!1561368 (= (drop!2196 (t!363661 (list!17460 totalInput!332)) (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1)) lt!1993513)))

(declare-fun b!4864224 () Bool)

(assert (=> b!4864224 (= e!3041229 (- call!337895 (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1)))))

(declare-fun b!4864225 () Bool)

(assert (=> b!4864225 (= e!3041229 0)))

(declare-fun bm!337890 () Bool)

(assert (=> bm!337890 (= call!337895 (size!36838 (t!363661 (list!17460 totalInput!332))))))

(declare-fun b!4864226 () Bool)

(assert (=> b!4864226 (= e!3041232 (= (size!36838 lt!1993513) e!3041231))))

(declare-fun c!827324 () Bool)

(assert (=> b!4864226 (= c!827324 (<= (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1) 0))))

(declare-fun b!4864227 () Bool)

(assert (=> b!4864227 (= e!3041230 e!3041228)))

(declare-fun c!827322 () Bool)

(assert (=> b!4864227 (= c!827322 (<= (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1) 0))))

(declare-fun b!4864228 () Bool)

(assert (=> b!4864228 (= e!3041228 (drop!2196 (t!363661 (t!363661 (list!17460 totalInput!332))) (- (- (- (size!36838 (list!17460 totalInput!332)) (size!36838 lt!1992697)) 1) 1)))))

(assert (= (and d!1561368 c!827323) b!4864221))

(assert (= (and d!1561368 (not c!827323)) b!4864227))

(assert (= (and b!4864227 c!827322) b!4864222))

(assert (= (and b!4864227 (not c!827322)) b!4864228))

(assert (= (and d!1561368 res!2076619) b!4864226))

(assert (= (and b!4864226 c!827324) b!4864220))

(assert (= (and b!4864226 (not c!827324)) b!4864223))

(assert (= (and b!4864223 c!827321) b!4864225))

(assert (= (and b!4864223 (not c!827321)) b!4864224))

(assert (= (or b!4864220 b!4864223 b!4864224) bm!337890))

(declare-fun m!5862550 () Bool)

(assert (=> d!1561368 m!5862550))

(assert (=> d!1561368 m!5861938))

(assert (=> bm!337890 m!5860642))

(declare-fun m!5862552 () Bool)

(assert (=> b!4864226 m!5862552))

(declare-fun m!5862554 () Bool)

(assert (=> b!4864228 m!5862554))

(assert (=> b!4863050 d!1561368))

(declare-fun b!4864233 () Bool)

(declare-fun res!2076623 () Bool)

(declare-fun e!3041238 () Bool)

(assert (=> b!4864233 (=> (not res!2076623) (not e!3041238))))

(assert (=> b!4864233 (= res!2076623 (<= (- (height!1918 (left!40608 (right!40938 (c!826974 totalInput!332)))) (height!1918 (right!40938 (right!40938 (c!826974 totalInput!332))))) 1))))

(declare-fun b!4864234 () Bool)

(declare-fun res!2076624 () Bool)

(assert (=> b!4864234 (=> (not res!2076624) (not e!3041238))))

(assert (=> b!4864234 (= res!2076624 (isBalanced!3946 (right!40938 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun d!1561370 () Bool)

(declare-fun res!2076625 () Bool)

(declare-fun e!3041237 () Bool)

(assert (=> d!1561370 (=> res!2076625 e!3041237)))

(assert (=> d!1561370 (= res!2076625 (not ((_ is Node!14563) (right!40938 (c!826974 totalInput!332)))))))

(assert (=> d!1561370 (= (isBalanced!3946 (right!40938 (c!826974 totalInput!332))) e!3041237)))

(declare-fun b!4864235 () Bool)

(assert (=> b!4864235 (= e!3041238 (not (isEmpty!29897 (right!40938 (right!40938 (c!826974 totalInput!332))))))))

(declare-fun b!4864236 () Bool)

(assert (=> b!4864236 (= e!3041237 e!3041238)))

(declare-fun res!2076622 () Bool)

(assert (=> b!4864236 (=> (not res!2076622) (not e!3041238))))

(assert (=> b!4864236 (= res!2076622 (<= (- 1) (- (height!1918 (left!40608 (right!40938 (c!826974 totalInput!332)))) (height!1918 (right!40938 (right!40938 (c!826974 totalInput!332)))))))))

(declare-fun b!4864237 () Bool)

(declare-fun res!2076627 () Bool)

(assert (=> b!4864237 (=> (not res!2076627) (not e!3041238))))

(assert (=> b!4864237 (= res!2076627 (not (isEmpty!29897 (left!40608 (right!40938 (c!826974 totalInput!332))))))))

(declare-fun b!4864238 () Bool)

(declare-fun res!2076626 () Bool)

(assert (=> b!4864238 (=> (not res!2076626) (not e!3041238))))

(assert (=> b!4864238 (= res!2076626 (isBalanced!3946 (left!40608 (right!40938 (c!826974 totalInput!332)))))))

(assert (= (and d!1561370 (not res!2076625)) b!4864236))

(assert (= (and b!4864236 res!2076622) b!4864233))

(assert (= (and b!4864233 res!2076623) b!4864238))

(assert (= (and b!4864238 res!2076626) b!4864234))

(assert (= (and b!4864234 res!2076624) b!4864237))

(assert (= (and b!4864237 res!2076627) b!4864235))

(assert (=> b!4864236 m!5861788))

(assert (=> b!4864236 m!5861790))

(declare-fun m!5862556 () Bool)

(assert (=> b!4864237 m!5862556))

(assert (=> b!4864233 m!5861788))

(assert (=> b!4864233 m!5861790))

(declare-fun m!5862558 () Bool)

(assert (=> b!4864238 m!5862558))

(declare-fun m!5862560 () Bool)

(assert (=> b!4864235 m!5862560))

(declare-fun m!5862562 () Bool)

(assert (=> b!4864234 m!5862562))

(assert (=> b!4862844 d!1561370))

(declare-fun d!1561372 () Bool)

(assert (=> d!1561372 (= (inv!71803 (tag!8890 (h!62362 (t!363662 (t!363662 rules!1248))))) (= (mod (str.len (value!257884 (tag!8890 (h!62362 (t!363662 (t!363662 rules!1248)))))) 2) 0))))

(assert (=> b!4863415 d!1561372))

(declare-fun d!1561374 () Bool)

(declare-fun res!2076628 () Bool)

(declare-fun e!3041239 () Bool)

(assert (=> d!1561374 (=> (not res!2076628) (not e!3041239))))

(assert (=> d!1561374 (= res!2076628 (semiInverseModEq!3540 (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))))))

(assert (=> d!1561374 (= (inv!71808 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) e!3041239)))

(declare-fun b!4864239 () Bool)

(assert (=> b!4864239 (= e!3041239 (equivClasses!3419 (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))))))

(assert (= (and d!1561374 res!2076628) b!4864239))

(declare-fun m!5862564 () Bool)

(assert (=> d!1561374 m!5862564))

(declare-fun m!5862566 () Bool)

(assert (=> b!4864239 m!5862566))

(assert (=> b!4863415 d!1561374))

(declare-fun d!1561376 () Bool)

(declare-fun res!2076629 () Bool)

(declare-fun e!3041240 () Bool)

(assert (=> d!1561376 (=> (not res!2076629) (not e!3041240))))

(assert (=> d!1561376 (= res!2076629 (<= (size!36838 (list!17466 (xs!17869 (right!40938 (c!826974 totalInput!332))))) 512))))

(assert (=> d!1561376 (= (inv!71814 (right!40938 (c!826974 totalInput!332))) e!3041240)))

(declare-fun b!4864240 () Bool)

(declare-fun res!2076630 () Bool)

(assert (=> b!4864240 (=> (not res!2076630) (not e!3041240))))

(assert (=> b!4864240 (= res!2076630 (= (csize!29357 (right!40938 (c!826974 totalInput!332))) (size!36838 (list!17466 (xs!17869 (right!40938 (c!826974 totalInput!332)))))))))

(declare-fun b!4864241 () Bool)

(assert (=> b!4864241 (= e!3041240 (and (> (csize!29357 (right!40938 (c!826974 totalInput!332))) 0) (<= (csize!29357 (right!40938 (c!826974 totalInput!332))) 512)))))

(assert (= (and d!1561376 res!2076629) b!4864240))

(assert (= (and b!4864240 res!2076630) b!4864241))

(declare-fun m!5862568 () Bool)

(assert (=> d!1561376 m!5862568))

(assert (=> d!1561376 m!5862568))

(declare-fun m!5862570 () Bool)

(assert (=> d!1561376 m!5862570))

(assert (=> b!4864240 m!5862568))

(assert (=> b!4864240 m!5862568))

(assert (=> b!4864240 m!5862570))

(assert (=> b!4863159 d!1561376))

(assert (=> b!4863012 d!1561340))

(declare-fun d!1561378 () Bool)

(assert (=> d!1561378 (= (list!17466 (xs!17869 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (innerList!14651 (xs!17869 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (=> b!4863212 d!1561378))

(declare-fun d!1561380 () Bool)

(declare-fun c!827327 () Bool)

(assert (=> d!1561380 (= c!827327 ((_ is Nil!55913) lt!1992792))))

(declare-fun e!3041241 () (InoxSet C!26400))

(assert (=> d!1561380 (= (content!9960 lt!1992792) e!3041241)))

(declare-fun b!4864242 () Bool)

(assert (=> b!4864242 (= e!3041241 ((as const (Array C!26400 Bool)) false))))

(declare-fun b!4864243 () Bool)

(assert (=> b!4864243 (= e!3041241 ((_ map or) (store ((as const (Array C!26400 Bool)) false) (h!62361 lt!1992792) true) (content!9960 (t!363661 lt!1992792))))))

(assert (= (and d!1561380 c!827327) b!4864242))

(assert (= (and d!1561380 (not c!827327)) b!4864243))

(declare-fun m!5862572 () Bool)

(assert (=> b!4864243 m!5862572))

(declare-fun m!5862574 () Bool)

(assert (=> b!4864243 m!5862574))

(assert (=> d!1560612 d!1561380))

(assert (=> d!1560612 d!1561020))

(assert (=> d!1560612 d!1560712))

(assert (=> b!4862637 d!1560660))

(declare-fun d!1561382 () Bool)

(declare-fun lt!1993522 () Bool)

(assert (=> d!1561382 (= lt!1993522 (isEmpty!29906 (list!17462 (right!40938 (c!826974 input!661)))))))

(assert (=> d!1561382 (= lt!1993522 (= (size!36842 (right!40938 (c!826974 input!661))) 0))))

(assert (=> d!1561382 (= (isEmpty!29897 (right!40938 (c!826974 input!661))) lt!1993522)))

(declare-fun bs!1174149 () Bool)

(assert (= bs!1174149 d!1561382))

(assert (=> bs!1174149 m!5860504))

(assert (=> bs!1174149 m!5860504))

(declare-fun m!5862576 () Bool)

(assert (=> bs!1174149 m!5862576))

(assert (=> bs!1174149 m!5860792))

(assert (=> b!4863162 d!1561382))

(assert (=> b!4863218 d!1560898))

(assert (=> b!4863221 d!1560864))

(assert (=> b!4863221 d!1561112))

(assert (=> b!4863221 d!1560888))

(assert (=> b!4863221 d!1560592))

(declare-fun d!1561384 () Bool)

(declare-fun lt!1993523 () Int)

(assert (=> d!1561384 (>= lt!1993523 0)))

(declare-fun e!3041242 () Int)

(assert (=> d!1561384 (= lt!1993523 e!3041242)))

(declare-fun c!827328 () Bool)

(assert (=> d!1561384 (= c!827328 ((_ is Nil!55913) (list!17466 (xs!17869 (c!826974 input!661)))))))

(assert (=> d!1561384 (= (size!36838 (list!17466 (xs!17869 (c!826974 input!661)))) lt!1993523)))

(declare-fun b!4864244 () Bool)

(assert (=> b!4864244 (= e!3041242 0)))

(declare-fun b!4864245 () Bool)

(assert (=> b!4864245 (= e!3041242 (+ 1 (size!36838 (t!363661 (list!17466 (xs!17869 (c!826974 input!661)))))))))

(assert (= (and d!1561384 c!827328) b!4864244))

(assert (= (and d!1561384 (not c!827328)) b!4864245))

(declare-fun m!5862578 () Bool)

(assert (=> b!4864245 m!5862578))

(assert (=> b!4863018 d!1561384))

(assert (=> b!4863018 d!1561042))

(assert (=> b!4862830 d!1560888))

(assert (=> b!4862909 d!1560894))

(declare-fun d!1561386 () Bool)

(declare-fun choose!35576 (Int) Bool)

(assert (=> d!1561386 (= (Forall!1668 lambda!243326) (choose!35576 lambda!243326))))

(declare-fun bs!1174150 () Bool)

(assert (= bs!1174150 d!1561386))

(declare-fun m!5862580 () Bool)

(assert (=> bs!1174150 m!5862580))

(assert (=> d!1560692 d!1561386))

(assert (=> d!1560782 d!1560962))

(declare-fun d!1561388 () Bool)

(declare-fun lt!1993532 () Bool)

(assert (=> d!1561388 (= lt!1993532 (isEmpty!29906 (list!17460 (_1!33181 lt!1993034))))))

(assert (=> d!1561388 (= lt!1993532 (isEmpty!29897 (c!826974 (_1!33181 lt!1993034))))))

(assert (=> d!1561388 (= (isEmpty!29907 (_1!33181 lt!1993034)) lt!1993532)))

(declare-fun bs!1174151 () Bool)

(assert (= bs!1174151 d!1561388))

(assert (=> bs!1174151 m!5861042))

(assert (=> bs!1174151 m!5861042))

(declare-fun m!5862590 () Bool)

(assert (=> bs!1174151 m!5862590))

(declare-fun m!5862592 () Bool)

(assert (=> bs!1174151 m!5862592))

(assert (=> d!1560782 d!1561388))

(assert (=> d!1560782 d!1560592))

(declare-fun d!1561390 () Bool)

(declare-fun lt!1993543 () tuple2!59756)

(assert (=> d!1561390 (= (tuple2!59755 (list!17460 (_1!33181 lt!1993543)) (list!17460 (_2!33181 lt!1993543))) (findLongestMatch!1631 (regex!8026 (h!62362 rules!1248)) (list!17460 input!661)))))

(declare-fun choose!35577 (Regex!13101 BalanceConc!28568 BalanceConc!28568) tuple2!59756)

(assert (=> d!1561390 (= lt!1993543 (choose!35577 (regex!8026 (h!62362 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1561390 (validRegex!5863 (regex!8026 (h!62362 rules!1248)))))

(assert (=> d!1561390 (= (findLongestMatchWithZipperSequenceV2!130 (regex!8026 (h!62362 rules!1248)) input!661 totalInput!332) lt!1993543)))

(declare-fun bs!1174157 () Bool)

(assert (= bs!1174157 d!1561390))

(assert (=> bs!1174157 m!5860130))

(assert (=> bs!1174157 m!5861608))

(assert (=> bs!1174157 m!5860130))

(declare-fun m!5862652 () Bool)

(assert (=> bs!1174157 m!5862652))

(declare-fun m!5862654 () Bool)

(assert (=> bs!1174157 m!5862654))

(assert (=> bs!1174157 m!5861288))

(declare-fun m!5862656 () Bool)

(assert (=> bs!1174157 m!5862656))

(assert (=> d!1560782 d!1561390))

(declare-fun d!1561412 () Bool)

(assert (=> d!1561412 (= (isDefined!10841 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661))) (not (isEmpty!29894 (maxPrefixOneRule!3486 thiss!11777 (h!62362 rules!1248) (list!17460 input!661)))))))

(declare-fun bs!1174158 () Bool)

(assert (= bs!1174158 d!1561412))

(assert (=> bs!1174158 m!5860398))

(declare-fun m!5862658 () Bool)

(assert (=> bs!1174158 m!5862658))

(assert (=> d!1560782 d!1561412))

(assert (=> d!1560782 d!1560878))

(assert (=> d!1560782 d!1561322))

(declare-fun d!1561414 () Bool)

(declare-fun lt!1993544 () Bool)

(assert (=> d!1561414 (= lt!1993544 (isEmpty!29903 (list!17464 (_1!33173 lt!1992961))))))

(assert (=> d!1561414 (= lt!1993544 (isEmpty!29904 (c!826976 (_1!33173 lt!1992961))))))

(assert (=> d!1561414 (= (isEmpty!29893 (_1!33173 lt!1992961)) lt!1993544)))

(declare-fun bs!1174159 () Bool)

(assert (= bs!1174159 d!1561414))

(assert (=> bs!1174159 m!5860864))

(assert (=> bs!1174159 m!5860864))

(declare-fun m!5862660 () Bool)

(assert (=> bs!1174159 m!5862660))

(declare-fun m!5862662 () Bool)

(assert (=> bs!1174159 m!5862662))

(assert (=> b!4863198 d!1561414))

(assert (=> b!4862994 d!1560880))

(assert (=> b!4862994 d!1561116))

(assert (=> b!4862994 d!1561118))

(assert (=> b!4862994 d!1560530))

(declare-fun b!4864263 () Bool)

(declare-fun e!3041255 () Bool)

(declare-fun lt!1993545 () tuple2!59746)

(assert (=> b!4864263 (= e!3041255 (not (isEmpty!29903 (_1!33176 lt!1993545))))))

(declare-fun b!4864264 () Bool)

(declare-fun e!3041256 () Bool)

(assert (=> b!4864264 (= e!3041256 e!3041255)))

(declare-fun res!2076640 () Bool)

(assert (=> b!4864264 (= res!2076640 (< (size!36838 (_2!33176 lt!1993545)) (size!36838 (_2!33177 (v!49674 lt!1992954)))))))

(assert (=> b!4864264 (=> (not res!2076640) (not e!3041255))))

(declare-fun d!1561416 () Bool)

(assert (=> d!1561416 e!3041256))

(declare-fun c!827333 () Bool)

(assert (=> d!1561416 (= c!827333 (> (size!36840 (_1!33176 lt!1993545)) 0))))

(declare-fun e!3041257 () tuple2!59746)

(assert (=> d!1561416 (= lt!1993545 e!3041257)))

(declare-fun c!827334 () Bool)

(declare-fun lt!1993546 () Option!13773)

(assert (=> d!1561416 (= c!827334 ((_ is Some!13772) lt!1993546))))

(assert (=> d!1561416 (= lt!1993546 (maxPrefix!4545 thiss!11777 rules!1248 (_2!33177 (v!49674 lt!1992954))))))

(assert (=> d!1561416 (= (lexList!2099 thiss!11777 rules!1248 (_2!33177 (v!49674 lt!1992954))) lt!1993545)))

(declare-fun b!4864265 () Bool)

(declare-fun lt!1993547 () tuple2!59746)

(assert (=> b!4864265 (= e!3041257 (tuple2!59747 (Cons!55915 (_1!33177 (v!49674 lt!1993546)) (_1!33176 lt!1993547)) (_2!33176 lt!1993547)))))

(assert (=> b!4864265 (= lt!1993547 (lexList!2099 thiss!11777 rules!1248 (_2!33177 (v!49674 lt!1993546))))))

(declare-fun b!4864266 () Bool)

(assert (=> b!4864266 (= e!3041257 (tuple2!59747 Nil!55915 (_2!33177 (v!49674 lt!1992954))))))

(declare-fun b!4864267 () Bool)

(assert (=> b!4864267 (= e!3041256 (= (_2!33176 lt!1993545) (_2!33177 (v!49674 lt!1992954))))))

(assert (= (and d!1561416 c!827334) b!4864265))

(assert (= (and d!1561416 (not c!827334)) b!4864266))

(assert (= (and d!1561416 c!827333) b!4864264))

(assert (= (and d!1561416 (not c!827333)) b!4864267))

(assert (= (and b!4864264 res!2076640) b!4864263))

(declare-fun m!5862664 () Bool)

(assert (=> b!4864263 m!5862664))

(declare-fun m!5862666 () Bool)

(assert (=> b!4864264 m!5862666))

(declare-fun m!5862668 () Bool)

(assert (=> b!4864264 m!5862668))

(declare-fun m!5862670 () Bool)

(assert (=> d!1561416 m!5862670))

(declare-fun m!5862672 () Bool)

(assert (=> d!1561416 m!5862672))

(declare-fun m!5862674 () Bool)

(assert (=> b!4864265 m!5862674))

(assert (=> b!4863148 d!1561416))

(assert (=> b!4862818 d!1560866))

(declare-fun d!1561418 () Bool)

(declare-fun lt!1993548 () Int)

(assert (=> d!1561418 (>= lt!1993548 0)))

(declare-fun e!3041259 () Int)

(assert (=> d!1561418 (= lt!1993548 e!3041259)))

(declare-fun c!827335 () Bool)

(assert (=> d!1561418 (= c!827335 ((_ is Nil!55915) (_1!33176 lt!1992953)))))

(assert (=> d!1561418 (= (size!36840 (_1!33176 lt!1992953)) lt!1993548)))

(declare-fun b!4864269 () Bool)

(assert (=> b!4864269 (= e!3041259 0)))

(declare-fun b!4864270 () Bool)

(assert (=> b!4864270 (= e!3041259 (+ 1 (size!36840 (t!363663 (_1!33176 lt!1992953)))))))

(assert (= (and d!1561418 c!827335) b!4864269))

(assert (= (and d!1561418 (not c!827335)) b!4864270))

(declare-fun m!5862676 () Bool)

(assert (=> b!4864270 m!5862676))

(assert (=> d!1560722 d!1561418))

(assert (=> d!1560722 d!1560886))

(declare-fun d!1561422 () Bool)

(declare-fun choose!35578 (Int) Bool)

(assert (=> d!1561422 (= (Forall2!1249 lambda!243332) (choose!35578 lambda!243332))))

(declare-fun bs!1174161 () Bool)

(assert (= bs!1174161 d!1561422))

(declare-fun m!5862682 () Bool)

(assert (=> bs!1174161 m!5862682))

(assert (=> d!1560758 d!1561422))

(assert (=> d!1560696 d!1561384))

(assert (=> d!1560696 d!1561042))

(assert (=> b!4863194 d!1560980))

(assert (=> b!4863194 d!1561314))

(assert (=> b!4863194 d!1560982))

(declare-fun b!4864279 () Bool)

(declare-fun e!3041264 () List!56039)

(assert (=> b!4864279 (= e!3041264 Nil!55915)))

(declare-fun b!4864281 () Bool)

(declare-fun e!3041265 () List!56039)

(declare-fun list!17470 (IArray!29189) List!56039)

(assert (=> b!4864281 (= e!3041265 (list!17470 (xs!17870 (c!826976 (_1!33173 lt!1992737)))))))

(declare-fun b!4864282 () Bool)

(declare-fun ++!12173 (List!56039 List!56039) List!56039)

(assert (=> b!4864282 (= e!3041265 (++!12173 (list!17468 (left!40609 (c!826976 (_1!33173 lt!1992737)))) (list!17468 (right!40939 (c!826976 (_1!33173 lt!1992737))))))))

(declare-fun b!4864280 () Bool)

(assert (=> b!4864280 (= e!3041264 e!3041265)))

(declare-fun c!827341 () Bool)

(assert (=> b!4864280 (= c!827341 ((_ is Leaf!24288) (c!826976 (_1!33173 lt!1992737))))))

(declare-fun d!1561426 () Bool)

(declare-fun c!827340 () Bool)

(assert (=> d!1561426 (= c!827340 ((_ is Empty!14564) (c!826976 (_1!33173 lt!1992737))))))

(assert (=> d!1561426 (= (list!17468 (c!826976 (_1!33173 lt!1992737))) e!3041264)))

(assert (= (and d!1561426 c!827340) b!4864279))

(assert (= (and d!1561426 (not c!827340)) b!4864280))

(assert (= (and b!4864280 c!827341) b!4864281))

(assert (= (and b!4864280 (not c!827341)) b!4864282))

(declare-fun m!5862684 () Bool)

(assert (=> b!4864281 m!5862684))

(declare-fun m!5862686 () Bool)

(assert (=> b!4864282 m!5862686))

(declare-fun m!5862688 () Bool)

(assert (=> b!4864282 m!5862688))

(assert (=> b!4864282 m!5862686))

(assert (=> b!4864282 m!5862688))

(declare-fun m!5862690 () Bool)

(assert (=> b!4864282 m!5862690))

(assert (=> d!1560720 d!1561426))

(declare-fun d!1561428 () Bool)

(declare-fun lt!1993550 () Int)

(assert (=> d!1561428 (>= lt!1993550 0)))

(declare-fun e!3041266 () Int)

(assert (=> d!1561428 (= lt!1993550 e!3041266)))

(declare-fun c!827342 () Bool)

(assert (=> d!1561428 (= c!827342 ((_ is Nil!55913) lt!1992792))))

(assert (=> d!1561428 (= (size!36838 lt!1992792) lt!1993550)))

(declare-fun b!4864283 () Bool)

(assert (=> b!4864283 (= e!3041266 0)))

(declare-fun b!4864284 () Bool)

(assert (=> b!4864284 (= e!3041266 (+ 1 (size!36838 (t!363661 lt!1992792))))))

(assert (= (and d!1561428 c!827342) b!4864283))

(assert (= (and d!1561428 (not c!827342)) b!4864284))

(declare-fun m!5862692 () Bool)

(assert (=> b!4864284 m!5862692))

(assert (=> b!4862823 d!1561428))

(assert (=> b!4862823 d!1561044))

(assert (=> b!4862823 d!1560778))

(declare-fun d!1561430 () Bool)

(declare-fun e!3041268 () Bool)

(assert (=> d!1561430 e!3041268))

(declare-fun res!2076643 () Bool)

(assert (=> d!1561430 (=> (not res!2076643) (not e!3041268))))

(declare-fun lt!1993551 () List!56037)

(assert (=> d!1561430 (= res!2076643 (= (content!9960 lt!1993551) ((_ map or) (content!9960 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (content!9960 (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))))

(declare-fun e!3041267 () List!56037)

(assert (=> d!1561430 (= lt!1993551 e!3041267)))

(declare-fun c!827343 () Bool)

(assert (=> d!1561430 (= c!827343 ((_ is Nil!55913) (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (=> d!1561430 (= (++!12171 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) lt!1993551)))

(declare-fun b!4864287 () Bool)

(declare-fun res!2076642 () Bool)

(assert (=> b!4864287 (=> (not res!2076642) (not e!3041268))))

(assert (=> b!4864287 (= res!2076642 (= (size!36838 lt!1993551) (+ (size!36838 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (size!36838 (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))))

(declare-fun b!4864286 () Bool)

(assert (=> b!4864286 (= e!3041267 (Cons!55913 (h!62361 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (++!12171 (t!363661 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4864288 () Bool)

(assert (=> b!4864288 (= e!3041268 (or (not (= (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) Nil!55913)) (= lt!1993551 (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun b!4864285 () Bool)

(assert (=> b!4864285 (= e!3041267 (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (= (and d!1561430 c!827343) b!4864285))

(assert (= (and d!1561430 (not c!827343)) b!4864286))

(assert (= (and d!1561430 res!2076643) b!4864287))

(assert (= (and b!4864287 res!2076642) b!4864288))

(declare-fun m!5862694 () Bool)

(assert (=> d!1561430 m!5862694))

(assert (=> d!1561430 m!5860878))

(declare-fun m!5862696 () Bool)

(assert (=> d!1561430 m!5862696))

(assert (=> d!1561430 m!5860880))

(declare-fun m!5862698 () Bool)

(assert (=> d!1561430 m!5862698))

(declare-fun m!5862700 () Bool)

(assert (=> b!4864287 m!5862700))

(assert (=> b!4864287 m!5860878))

(declare-fun m!5862702 () Bool)

(assert (=> b!4864287 m!5862702))

(assert (=> b!4864287 m!5860880))

(declare-fun m!5862704 () Bool)

(assert (=> b!4864287 m!5862704))

(assert (=> b!4864286 m!5860880))

(declare-fun m!5862706 () Bool)

(assert (=> b!4864286 m!5862706))

(assert (=> b!4863213 d!1561430))

(declare-fun b!4864289 () Bool)

(declare-fun e!3041269 () List!56037)

(assert (=> b!4864289 (= e!3041269 Nil!55913)))

(declare-fun b!4864290 () Bool)

(declare-fun e!3041270 () List!56037)

(assert (=> b!4864290 (= e!3041269 e!3041270)))

(declare-fun c!827345 () Bool)

(assert (=> b!4864290 (= c!827345 ((_ is Leaf!24287) (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4864292 () Bool)

(assert (=> b!4864292 (= e!3041270 (++!12171 (list!17462 (left!40608 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (list!17462 (right!40938 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun d!1561432 () Bool)

(declare-fun c!827344 () Bool)

(assert (=> d!1561432 (= c!827344 ((_ is Empty!14563) (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561432 (= (list!17462 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) e!3041269)))

(declare-fun b!4864291 () Bool)

(assert (=> b!4864291 (= e!3041270 (list!17466 (xs!17869 (left!40608 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561432 c!827344) b!4864289))

(assert (= (and d!1561432 (not c!827344)) b!4864290))

(assert (= (and b!4864290 c!827345) b!4864291))

(assert (= (and b!4864290 (not c!827345)) b!4864292))

(declare-fun m!5862708 () Bool)

(assert (=> b!4864292 m!5862708))

(declare-fun m!5862710 () Bool)

(assert (=> b!4864292 m!5862710))

(assert (=> b!4864292 m!5862708))

(assert (=> b!4864292 m!5862710))

(declare-fun m!5862712 () Bool)

(assert (=> b!4864292 m!5862712))

(declare-fun m!5862714 () Bool)

(assert (=> b!4864291 m!5862714))

(assert (=> b!4863213 d!1561432))

(declare-fun b!4864293 () Bool)

(declare-fun e!3041271 () List!56037)

(assert (=> b!4864293 (= e!3041271 Nil!55913)))

(declare-fun b!4864294 () Bool)

(declare-fun e!3041272 () List!56037)

(assert (=> b!4864294 (= e!3041271 e!3041272)))

(declare-fun c!827347 () Bool)

(assert (=> b!4864294 (= c!827347 ((_ is Leaf!24287) (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(declare-fun b!4864296 () Bool)

(assert (=> b!4864296 (= e!3041272 (++!12171 (list!17462 (left!40608 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))) (list!17462 (right!40938 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))))

(declare-fun d!1561434 () Bool)

(declare-fun c!827346 () Bool)

(assert (=> d!1561434 (= c!827346 ((_ is Empty!14563) (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))))))

(assert (=> d!1561434 (= (list!17462 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698)))))) e!3041271)))

(declare-fun b!4864295 () Bool)

(assert (=> b!4864295 (= e!3041272 (list!17466 (xs!17869 (right!40938 (c!826974 (charsOf!5333 (_1!33172 (v!49672 lt!1992698))))))))))

(assert (= (and d!1561434 c!827346) b!4864293))

(assert (= (and d!1561434 (not c!827346)) b!4864294))

(assert (= (and b!4864294 c!827347) b!4864295))

(assert (= (and b!4864294 (not c!827347)) b!4864296))

(declare-fun m!5862716 () Bool)

(assert (=> b!4864296 m!5862716))

(declare-fun m!5862718 () Bool)

(assert (=> b!4864296 m!5862718))

(assert (=> b!4864296 m!5862716))

(assert (=> b!4864296 m!5862718))

(declare-fun m!5862720 () Bool)

(assert (=> b!4864296 m!5862720))

(declare-fun m!5862722 () Bool)

(assert (=> b!4864295 m!5862722))

(assert (=> b!4863213 d!1561434))

(declare-fun d!1561436 () Bool)

(declare-fun e!3041274 () Bool)

(assert (=> d!1561436 e!3041274))

(declare-fun res!2076645 () Bool)

(assert (=> d!1561436 (=> (not res!2076645) (not e!3041274))))

(declare-fun lt!1993552 () List!56037)

(assert (=> d!1561436 (= res!2076645 (= (content!9960 lt!1993552) ((_ map or) (content!9960 (list!17462 (left!40608 (c!826974 totalInput!332)))) (content!9960 (list!17462 (right!40938 (c!826974 totalInput!332)))))))))

(declare-fun e!3041273 () List!56037)

(assert (=> d!1561436 (= lt!1993552 e!3041273)))

(declare-fun c!827348 () Bool)

(assert (=> d!1561436 (= c!827348 ((_ is Nil!55913) (list!17462 (left!40608 (c!826974 totalInput!332)))))))

(assert (=> d!1561436 (= (++!12171 (list!17462 (left!40608 (c!826974 totalInput!332))) (list!17462 (right!40938 (c!826974 totalInput!332)))) lt!1993552)))

(declare-fun b!4864299 () Bool)

(declare-fun res!2076644 () Bool)

(assert (=> b!4864299 (=> (not res!2076644) (not e!3041274))))

(assert (=> b!4864299 (= res!2076644 (= (size!36838 lt!1993552) (+ (size!36838 (list!17462 (left!40608 (c!826974 totalInput!332)))) (size!36838 (list!17462 (right!40938 (c!826974 totalInput!332)))))))))

(declare-fun b!4864298 () Bool)

(assert (=> b!4864298 (= e!3041273 (Cons!55913 (h!62361 (list!17462 (left!40608 (c!826974 totalInput!332)))) (++!12171 (t!363661 (list!17462 (left!40608 (c!826974 totalInput!332)))) (list!17462 (right!40938 (c!826974 totalInput!332))))))))

(declare-fun b!4864300 () Bool)

(assert (=> b!4864300 (= e!3041274 (or (not (= (list!17462 (right!40938 (c!826974 totalInput!332))) Nil!55913)) (= lt!1993552 (list!17462 (left!40608 (c!826974 totalInput!332))))))))

(declare-fun b!4864297 () Bool)

(assert (=> b!4864297 (= e!3041273 (list!17462 (right!40938 (c!826974 totalInput!332))))))

(assert (= (and d!1561436 c!827348) b!4864297))

(assert (= (and d!1561436 (not c!827348)) b!4864298))

(assert (= (and d!1561436 res!2076645) b!4864299))

(assert (= (and b!4864299 res!2076644) b!4864300))

(declare-fun m!5862724 () Bool)

(assert (=> d!1561436 m!5862724))

(assert (=> d!1561436 m!5860622))

(declare-fun m!5862726 () Bool)

(assert (=> d!1561436 m!5862726))

(assert (=> d!1561436 m!5860624))

(declare-fun m!5862728 () Bool)

(assert (=> d!1561436 m!5862728))

(declare-fun m!5862730 () Bool)

(assert (=> b!4864299 m!5862730))

(assert (=> b!4864299 m!5860622))

(assert (=> b!4864299 m!5861234))

(assert (=> b!4864299 m!5860624))

(assert (=> b!4864299 m!5861236))

(assert (=> b!4864298 m!5860624))

(declare-fun m!5862732 () Bool)

(assert (=> b!4864298 m!5862732))

(assert (=> b!4863013 d!1561436))

(declare-fun b!4864301 () Bool)

(declare-fun e!3041275 () List!56037)

(assert (=> b!4864301 (= e!3041275 Nil!55913)))

(declare-fun b!4864302 () Bool)

(declare-fun e!3041276 () List!56037)

(assert (=> b!4864302 (= e!3041275 e!3041276)))

(declare-fun c!827350 () Bool)

(assert (=> b!4864302 (= c!827350 ((_ is Leaf!24287) (left!40608 (c!826974 totalInput!332))))))

(declare-fun b!4864304 () Bool)

(assert (=> b!4864304 (= e!3041276 (++!12171 (list!17462 (left!40608 (left!40608 (c!826974 totalInput!332)))) (list!17462 (right!40938 (left!40608 (c!826974 totalInput!332))))))))

(declare-fun d!1561438 () Bool)

(declare-fun c!827349 () Bool)

(assert (=> d!1561438 (= c!827349 ((_ is Empty!14563) (left!40608 (c!826974 totalInput!332))))))

(assert (=> d!1561438 (= (list!17462 (left!40608 (c!826974 totalInput!332))) e!3041275)))

(declare-fun b!4864303 () Bool)

(assert (=> b!4864303 (= e!3041276 (list!17466 (xs!17869 (left!40608 (c!826974 totalInput!332)))))))

(assert (= (and d!1561438 c!827349) b!4864301))

(assert (= (and d!1561438 (not c!827349)) b!4864302))

(assert (= (and b!4864302 c!827350) b!4864303))

(assert (= (and b!4864302 (not c!827350)) b!4864304))

(declare-fun m!5862734 () Bool)

(assert (=> b!4864304 m!5862734))

(declare-fun m!5862736 () Bool)

(assert (=> b!4864304 m!5862736))

(assert (=> b!4864304 m!5862734))

(assert (=> b!4864304 m!5862736))

(declare-fun m!5862738 () Bool)

(assert (=> b!4864304 m!5862738))

(assert (=> b!4864303 m!5861716))

(assert (=> b!4863013 d!1561438))

(declare-fun b!4864307 () Bool)

(declare-fun e!3041279 () List!56037)

(assert (=> b!4864307 (= e!3041279 Nil!55913)))

(declare-fun b!4864308 () Bool)

(declare-fun e!3041280 () List!56037)

(assert (=> b!4864308 (= e!3041279 e!3041280)))

(declare-fun c!827352 () Bool)

(assert (=> b!4864308 (= c!827352 ((_ is Leaf!24287) (right!40938 (c!826974 totalInput!332))))))

(declare-fun b!4864310 () Bool)

(assert (=> b!4864310 (= e!3041280 (++!12171 (list!17462 (left!40608 (right!40938 (c!826974 totalInput!332)))) (list!17462 (right!40938 (right!40938 (c!826974 totalInput!332))))))))

(declare-fun d!1561440 () Bool)

(declare-fun c!827351 () Bool)

(assert (=> d!1561440 (= c!827351 ((_ is Empty!14563) (right!40938 (c!826974 totalInput!332))))))

(assert (=> d!1561440 (= (list!17462 (right!40938 (c!826974 totalInput!332))) e!3041279)))

(declare-fun b!4864309 () Bool)

(assert (=> b!4864309 (= e!3041280 (list!17466 (xs!17869 (right!40938 (c!826974 totalInput!332)))))))

(assert (= (and d!1561440 c!827351) b!4864307))

(assert (= (and d!1561440 (not c!827351)) b!4864308))

(assert (= (and b!4864308 c!827352) b!4864309))

(assert (= (and b!4864308 (not c!827352)) b!4864310))

(declare-fun m!5862740 () Bool)

(assert (=> b!4864310 m!5862740))

(declare-fun m!5862742 () Bool)

(assert (=> b!4864310 m!5862742))

(assert (=> b!4864310 m!5862740))

(assert (=> b!4864310 m!5862742))

(declare-fun m!5862744 () Bool)

(assert (=> b!4864310 m!5862744))

(assert (=> b!4864309 m!5862568))

(assert (=> b!4863013 d!1561440))

(declare-fun b!4864324 () Bool)

(declare-fun res!2076664 () Bool)

(declare-fun e!3041287 () Bool)

(assert (=> b!4864324 (=> (not res!2076664) (not e!3041287))))

(declare-fun height!1920 (Conc!14564) Int)

(assert (=> b!4864324 (= res!2076664 (<= (- (height!1920 (left!40609 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))) (height!1920 (right!40939 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))))) 1))))

(declare-fun d!1561442 () Bool)

(declare-fun res!2076666 () Bool)

(declare-fun e!3041286 () Bool)

(assert (=> d!1561442 (=> res!2076666 e!3041286)))

(assert (=> d!1561442 (= res!2076666 (not ((_ is Node!14564) (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))))))

(assert (=> d!1561442 (= (isBalanced!3948 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))) e!3041286)))

(declare-fun b!4864325 () Bool)

(assert (=> b!4864325 (= e!3041287 (not (isEmpty!29904 (right!40939 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))))))))

(declare-fun b!4864326 () Bool)

(assert (=> b!4864326 (= e!3041286 e!3041287)))

(declare-fun res!2076661 () Bool)

(assert (=> b!4864326 (=> (not res!2076661) (not e!3041287))))

(assert (=> b!4864326 (= res!2076661 (<= (- 1) (- (height!1920 (left!40609 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))) (height!1920 (right!40939 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))))))))

(declare-fun b!4864327 () Bool)

(declare-fun res!2076663 () Bool)

(assert (=> b!4864327 (=> (not res!2076663) (not e!3041287))))

(assert (=> b!4864327 (= res!2076663 (isBalanced!3948 (right!40939 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))))))

(declare-fun b!4864328 () Bool)

(declare-fun res!2076665 () Bool)

(assert (=> b!4864328 (=> (not res!2076665) (not e!3041287))))

(assert (=> b!4864328 (= res!2076665 (isBalanced!3948 (left!40609 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))))))))

(declare-fun b!4864329 () Bool)

(declare-fun res!2076662 () Bool)

(assert (=> b!4864329 (=> (not res!2076662) (not e!3041287))))

(assert (=> b!4864329 (= res!2076662 (not (isEmpty!29904 (left!40609 (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736)))))))))

(assert (= (and d!1561442 (not res!2076666)) b!4864326))

(assert (= (and b!4864326 res!2076661) b!4864324))

(assert (= (and b!4864324 res!2076664) b!4864328))

(assert (= (and b!4864328 res!2076665) b!4864327))

(assert (= (and b!4864327 res!2076663) b!4864329))

(assert (= (and b!4864329 res!2076662) b!4864325))

(declare-fun m!5862748 () Bool)

(assert (=> b!4864326 m!5862748))

(declare-fun m!5862750 () Bool)

(assert (=> b!4864326 m!5862750))

(declare-fun m!5862752 () Bool)

(assert (=> b!4864327 m!5862752))

(declare-fun m!5862754 () Bool)

(assert (=> b!4864328 m!5862754))

(declare-fun m!5862756 () Bool)

(assert (=> b!4864329 m!5862756))

(declare-fun m!5862758 () Bool)

(assert (=> b!4864325 m!5862758))

(assert (=> b!4864324 m!5862748))

(assert (=> b!4864324 m!5862750))

(assert (=> d!1560748 d!1561442))

(declare-fun d!1561448 () Bool)

(declare-fun e!3041297 () Bool)

(assert (=> d!1561448 e!3041297))

(declare-fun res!2076671 () Bool)

(assert (=> d!1561448 (=> (not res!2076671) (not e!3041297))))

(declare-fun lt!1993563 () Conc!14564)

(assert (=> d!1561448 (= res!2076671 (isBalanced!3948 lt!1993563))))

(declare-fun ++!12174 (Conc!14564 Conc!14564) Conc!14564)

(declare-fun fill!218 (Int Token!14640) IArray!29189)

(assert (=> d!1561448 (= lt!1993563 (++!12174 (Leaf!24288 (fill!218 1 (_1!33172 (v!49672 lt!1992736))) 1) (c!826976 (_1!33173 lt!1992735))))))

(assert (=> d!1561448 (isBalanced!3948 (c!826976 (_1!33173 lt!1992735)))))

(assert (=> d!1561448 (= (prepend!1390 (c!826976 (_1!33173 lt!1992735)) (_1!33172 (v!49672 lt!1992736))) lt!1993563)))

(declare-fun b!4864341 () Bool)

(assert (=> b!4864341 (= e!3041297 (= (list!17468 lt!1993563) (Cons!55915 (_1!33172 (v!49672 lt!1992736)) (list!17468 (c!826976 (_1!33173 lt!1992735))))))))

(assert (= (and d!1561448 res!2076671) b!4864341))

(declare-fun m!5862774 () Bool)

(assert (=> d!1561448 m!5862774))

(declare-fun m!5862776 () Bool)

(assert (=> d!1561448 m!5862776))

(declare-fun m!5862778 () Bool)

(assert (=> d!1561448 m!5862778))

(declare-fun m!5862780 () Bool)

(assert (=> d!1561448 m!5862780))

(declare-fun m!5862782 () Bool)

(assert (=> b!4864341 m!5862782))

(assert (=> b!4864341 m!5861774))

(assert (=> d!1560748 d!1561448))

(declare-fun d!1561458 () Bool)

(declare-fun lt!1993568 () Bool)

(declare-fun content!9962 (List!56038) (InoxSet Rule!15852))

(assert (=> d!1561458 (= lt!1993568 (select (content!9962 rules!1248) (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))

(declare-fun e!3041311 () Bool)

(assert (=> d!1561458 (= lt!1993568 e!3041311)))

(declare-fun res!2076682 () Bool)

(assert (=> d!1561458 (=> (not res!2076682) (not e!3041311))))

(assert (=> d!1561458 (= res!2076682 ((_ is Cons!55914) rules!1248))))

(assert (=> d!1561458 (= (contains!19383 rules!1248 (rule!11144 (_1!33177 (get!19217 lt!1992791)))) lt!1993568)))

(declare-fun b!4864360 () Bool)

(declare-fun e!3041312 () Bool)

(assert (=> b!4864360 (= e!3041311 e!3041312)))

(declare-fun res!2076683 () Bool)

(assert (=> b!4864360 (=> res!2076683 e!3041312)))

(assert (=> b!4864360 (= res!2076683 (= (h!62362 rules!1248) (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))

(declare-fun b!4864361 () Bool)

(assert (=> b!4864361 (= e!3041312 (contains!19383 (t!363662 rules!1248) (rule!11144 (_1!33177 (get!19217 lt!1992791)))))))

(assert (= (and d!1561458 res!2076682) b!4864360))

(assert (= (and b!4864360 (not res!2076683)) b!4864361))

(declare-fun m!5862818 () Bool)

(assert (=> d!1561458 m!5862818))

(declare-fun m!5862820 () Bool)

(assert (=> d!1561458 m!5862820))

(declare-fun m!5862822 () Bool)

(assert (=> b!4864361 m!5862822))

(assert (=> b!4862815 d!1561458))

(assert (=> b!4862815 d!1560838))

(declare-fun d!1561474 () Bool)

(declare-fun c!827360 () Bool)

(assert (=> d!1561474 (= c!827360 ((_ is Node!14563) (left!40608 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun e!3041315 () Bool)

(assert (=> d!1561474 (= (inv!71807 (left!40608 (right!40938 (c!826974 totalInput!332)))) e!3041315)))

(declare-fun b!4864366 () Bool)

(assert (=> b!4864366 (= e!3041315 (inv!71813 (left!40608 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun b!4864367 () Bool)

(declare-fun e!3041316 () Bool)

(assert (=> b!4864367 (= e!3041315 e!3041316)))

(declare-fun res!2076684 () Bool)

(assert (=> b!4864367 (= res!2076684 (not ((_ is Leaf!24287) (left!40608 (right!40938 (c!826974 totalInput!332))))))))

(assert (=> b!4864367 (=> res!2076684 e!3041316)))

(declare-fun b!4864368 () Bool)

(assert (=> b!4864368 (= e!3041316 (inv!71814 (left!40608 (right!40938 (c!826974 totalInput!332)))))))

(assert (= (and d!1561474 c!827360) b!4864366))

(assert (= (and d!1561474 (not c!827360)) b!4864367))

(assert (= (and b!4864367 (not res!2076684)) b!4864368))

(declare-fun m!5862832 () Bool)

(assert (=> b!4864366 m!5862832))

(declare-fun m!5862834 () Bool)

(assert (=> b!4864368 m!5862834))

(assert (=> b!4863382 d!1561474))

(declare-fun d!1561478 () Bool)

(declare-fun c!827363 () Bool)

(assert (=> d!1561478 (= c!827363 ((_ is Node!14563) (right!40938 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun e!3041319 () Bool)

(assert (=> d!1561478 (= (inv!71807 (right!40938 (right!40938 (c!826974 totalInput!332)))) e!3041319)))

(declare-fun b!4864373 () Bool)

(assert (=> b!4864373 (= e!3041319 (inv!71813 (right!40938 (right!40938 (c!826974 totalInput!332)))))))

(declare-fun b!4864374 () Bool)

(declare-fun e!3041320 () Bool)

(assert (=> b!4864374 (= e!3041319 e!3041320)))

(declare-fun res!2076685 () Bool)

(assert (=> b!4864374 (= res!2076685 (not ((_ is Leaf!24287) (right!40938 (right!40938 (c!826974 totalInput!332))))))))

(assert (=> b!4864374 (=> res!2076685 e!3041320)))

(declare-fun b!4864375 () Bool)

(assert (=> b!4864375 (= e!3041320 (inv!71814 (right!40938 (right!40938 (c!826974 totalInput!332)))))))

(assert (= (and d!1561478 c!827363) b!4864373))

(assert (= (and d!1561478 (not c!827363)) b!4864374))

(assert (= (and b!4864374 (not res!2076685)) b!4864375))

(declare-fun m!5862836 () Bool)

(assert (=> b!4864373 m!5862836))

(declare-fun m!5862840 () Bool)

(assert (=> b!4864375 m!5862840))

(assert (=> b!4863382 d!1561478))

(declare-fun b!4864380 () Bool)

(declare-fun e!3041323 () Bool)

(assert (=> b!4864380 (= e!3041323 tp_is_empty!35651)))

(declare-fun b!4864383 () Bool)

(declare-fun tp!1368500 () Bool)

(declare-fun tp!1368498 () Bool)

(assert (=> b!4864383 (= e!3041323 (and tp!1368500 tp!1368498))))

(declare-fun b!4864382 () Bool)

(declare-fun tp!1368499 () Bool)

(assert (=> b!4864382 (= e!3041323 tp!1368499)))

(declare-fun b!4864381 () Bool)

(declare-fun tp!1368496 () Bool)

(declare-fun tp!1368497 () Bool)

(assert (=> b!4864381 (= e!3041323 (and tp!1368496 tp!1368497))))

(assert (=> b!4863415 (= tp!1368432 e!3041323)))

(assert (= (and b!4863415 ((_ is ElementMatch!13101) (regex!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))) b!4864380))

(assert (= (and b!4863415 ((_ is Concat!21438) (regex!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))) b!4864381))

(assert (= (and b!4863415 ((_ is Star!13101) (regex!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))) b!4864382))

(assert (= (and b!4863415 ((_ is Union!13101) (regex!8026 (h!62362 (t!363662 (t!363662 rules!1248)))))) b!4864383))

(declare-fun tp!1368502 () Bool)

(declare-fun tp!1368501 () Bool)

(declare-fun e!3041325 () Bool)

(declare-fun b!4864384 () Bool)

(assert (=> b!4864384 (= e!3041325 (and (inv!71807 (left!40608 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) tp!1368502 (inv!71807 (right!40938 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) tp!1368501))))

(declare-fun b!4864386 () Bool)

(declare-fun e!3041324 () Bool)

(declare-fun tp!1368503 () Bool)

(assert (=> b!4864386 (= e!3041324 tp!1368503)))

(declare-fun b!4864385 () Bool)

(assert (=> b!4864385 (= e!3041325 (and (inv!71815 (xs!17869 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) e!3041324))))

(assert (=> b!4863371 (= tp!1368389 (and (inv!71807 (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) e!3041325))))

(assert (= (and b!4863371 ((_ is Node!14563) (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) b!4864384))

(assert (= b!4864385 b!4864386))

(assert (= (and b!4863371 ((_ is Leaf!24287) (left!40608 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) b!4864385))

(declare-fun m!5862856 () Bool)

(assert (=> b!4864384 m!5862856))

(declare-fun m!5862858 () Bool)

(assert (=> b!4864384 m!5862858))

(declare-fun m!5862860 () Bool)

(assert (=> b!4864385 m!5862860))

(assert (=> b!4863371 m!5861080))

(declare-fun tp!1368504 () Bool)

(declare-fun tp!1368505 () Bool)

(declare-fun e!3041327 () Bool)

(declare-fun b!4864387 () Bool)

(assert (=> b!4864387 (= e!3041327 (and (inv!71807 (left!40608 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) tp!1368505 (inv!71807 (right!40938 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) tp!1368504))))

(declare-fun b!4864389 () Bool)

(declare-fun e!3041326 () Bool)

(declare-fun tp!1368506 () Bool)

(assert (=> b!4864389 (= e!3041326 tp!1368506)))

(declare-fun b!4864388 () Bool)

(assert (=> b!4864388 (= e!3041327 (and (inv!71815 (xs!17869 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) e!3041326))))

(assert (=> b!4863371 (= tp!1368388 (and (inv!71807 (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))) e!3041327))))

(assert (= (and b!4863371 ((_ is Node!14563) (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) b!4864387))

(assert (= b!4864388 b!4864389))

(assert (= (and b!4863371 ((_ is Leaf!24287) (right!40938 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698)))))))) b!4864388))

(declare-fun m!5862862 () Bool)

(assert (=> b!4864387 m!5862862))

(declare-fun m!5862864 () Bool)

(assert (=> b!4864387 m!5862864))

(declare-fun m!5862866 () Bool)

(assert (=> b!4864388 m!5862866))

(assert (=> b!4863371 m!5861082))

(declare-fun b!4864390 () Bool)

(declare-fun e!3041328 () Bool)

(assert (=> b!4864390 (= e!3041328 tp_is_empty!35651)))

(declare-fun b!4864393 () Bool)

(declare-fun tp!1368511 () Bool)

(declare-fun tp!1368509 () Bool)

(assert (=> b!4864393 (= e!3041328 (and tp!1368511 tp!1368509))))

(declare-fun b!4864392 () Bool)

(declare-fun tp!1368510 () Bool)

(assert (=> b!4864392 (= e!3041328 tp!1368510)))

(declare-fun b!4864391 () Bool)

(declare-fun tp!1368507 () Bool)

(declare-fun tp!1368508 () Bool)

(assert (=> b!4864391 (= e!3041328 (and tp!1368507 tp!1368508))))

(assert (=> b!4863408 (= tp!1368424 e!3041328)))

(assert (= (and b!4863408 ((_ is ElementMatch!13101) (reg!13430 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864390))

(assert (= (and b!4863408 ((_ is Concat!21438) (reg!13430 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864391))

(assert (= (and b!4863408 ((_ is Star!13101) (reg!13430 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864392))

(assert (= (and b!4863408 ((_ is Union!13101) (reg!13430 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864393))

(declare-fun tp!1368512 () Bool)

(declare-fun e!3041330 () Bool)

(declare-fun tp!1368513 () Bool)

(declare-fun b!4864394 () Bool)

(assert (=> b!4864394 (= e!3041330 (and (inv!71807 (left!40608 (left!40608 (right!40938 (c!826974 input!661))))) tp!1368513 (inv!71807 (right!40938 (left!40608 (right!40938 (c!826974 input!661))))) tp!1368512))))

(declare-fun b!4864396 () Bool)

(declare-fun e!3041329 () Bool)

(declare-fun tp!1368514 () Bool)

(assert (=> b!4864396 (= e!3041329 tp!1368514)))

(declare-fun b!4864395 () Bool)

(assert (=> b!4864395 (= e!3041330 (and (inv!71815 (xs!17869 (left!40608 (right!40938 (c!826974 input!661))))) e!3041329))))

(assert (=> b!4863455 (= tp!1368481 (and (inv!71807 (left!40608 (right!40938 (c!826974 input!661)))) e!3041330))))

(assert (= (and b!4863455 ((_ is Node!14563) (left!40608 (right!40938 (c!826974 input!661))))) b!4864394))

(assert (= b!4864395 b!4864396))

(assert (= (and b!4863455 ((_ is Leaf!24287) (left!40608 (right!40938 (c!826974 input!661))))) b!4864395))

(declare-fun m!5862868 () Bool)

(assert (=> b!4864394 m!5862868))

(declare-fun m!5862870 () Bool)

(assert (=> b!4864394 m!5862870))

(declare-fun m!5862872 () Bool)

(assert (=> b!4864395 m!5862872))

(assert (=> b!4863455 m!5861130))

(declare-fun e!3041332 () Bool)

(declare-fun b!4864397 () Bool)

(declare-fun tp!1368515 () Bool)

(declare-fun tp!1368516 () Bool)

(assert (=> b!4864397 (= e!3041332 (and (inv!71807 (left!40608 (right!40938 (right!40938 (c!826974 input!661))))) tp!1368516 (inv!71807 (right!40938 (right!40938 (right!40938 (c!826974 input!661))))) tp!1368515))))

(declare-fun b!4864399 () Bool)

(declare-fun e!3041331 () Bool)

(declare-fun tp!1368517 () Bool)

(assert (=> b!4864399 (= e!3041331 tp!1368517)))

(declare-fun b!4864398 () Bool)

(assert (=> b!4864398 (= e!3041332 (and (inv!71815 (xs!17869 (right!40938 (right!40938 (c!826974 input!661))))) e!3041331))))

(assert (=> b!4863455 (= tp!1368480 (and (inv!71807 (right!40938 (right!40938 (c!826974 input!661)))) e!3041332))))

(assert (= (and b!4863455 ((_ is Node!14563) (right!40938 (right!40938 (c!826974 input!661))))) b!4864397))

(assert (= b!4864398 b!4864399))

(assert (= (and b!4863455 ((_ is Leaf!24287) (right!40938 (right!40938 (c!826974 input!661))))) b!4864398))

(declare-fun m!5862874 () Bool)

(assert (=> b!4864397 m!5862874))

(declare-fun m!5862876 () Bool)

(assert (=> b!4864397 m!5862876))

(declare-fun m!5862878 () Bool)

(assert (=> b!4864398 m!5862878))

(assert (=> b!4863455 m!5861132))

(declare-fun b!4864404 () Bool)

(declare-fun e!3041337 () Bool)

(assert (=> b!4864404 (= e!3041337 tp_is_empty!35651)))

(declare-fun b!4864407 () Bool)

(declare-fun tp!1368522 () Bool)

(declare-fun tp!1368520 () Bool)

(assert (=> b!4864407 (= e!3041337 (and tp!1368522 tp!1368520))))

(declare-fun b!4864406 () Bool)

(declare-fun tp!1368521 () Bool)

(assert (=> b!4864406 (= e!3041337 tp!1368521)))

(declare-fun b!4864405 () Bool)

(declare-fun tp!1368518 () Bool)

(declare-fun tp!1368519 () Bool)

(assert (=> b!4864405 (= e!3041337 (and tp!1368518 tp!1368519))))

(assert (=> b!4863407 (= tp!1368421 e!3041337)))

(assert (= (and b!4863407 ((_ is ElementMatch!13101) (regOne!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864404))

(assert (= (and b!4863407 ((_ is Concat!21438) (regOne!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864405))

(assert (= (and b!4863407 ((_ is Star!13101) (regOne!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864406))

(assert (= (and b!4863407 ((_ is Union!13101) (regOne!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864407))

(declare-fun b!4864408 () Bool)

(declare-fun e!3041338 () Bool)

(assert (=> b!4864408 (= e!3041338 tp_is_empty!35651)))

(declare-fun b!4864411 () Bool)

(declare-fun tp!1368527 () Bool)

(declare-fun tp!1368525 () Bool)

(assert (=> b!4864411 (= e!3041338 (and tp!1368527 tp!1368525))))

(declare-fun b!4864410 () Bool)

(declare-fun tp!1368526 () Bool)

(assert (=> b!4864410 (= e!3041338 tp!1368526)))

(declare-fun b!4864409 () Bool)

(declare-fun tp!1368523 () Bool)

(declare-fun tp!1368524 () Bool)

(assert (=> b!4864409 (= e!3041338 (and tp!1368523 tp!1368524))))

(assert (=> b!4863407 (= tp!1368422 e!3041338)))

(assert (= (and b!4863407 ((_ is ElementMatch!13101) (regTwo!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864408))

(assert (= (and b!4863407 ((_ is Concat!21438) (regTwo!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864409))

(assert (= (and b!4863407 ((_ is Star!13101) (regTwo!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864410))

(assert (= (and b!4863407 ((_ is Union!13101) (regTwo!26714 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864411))

(declare-fun b!4864414 () Bool)

(declare-fun b_free!130591 () Bool)

(declare-fun b_next!131381 () Bool)

(assert (=> b!4864414 (= b_free!130591 (not b_next!131381))))

(declare-fun t!363744 () Bool)

(declare-fun tb!257639 () Bool)

(assert (=> (and b!4864414 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363744) tb!257639))

(declare-fun result!320734 () Bool)

(assert (= result!320734 result!320688))

(assert (=> d!1560908 t!363744))

(declare-fun t!363746 () Bool)

(declare-fun tb!257641 () Bool)

(assert (=> (and b!4864414 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248)))) t!363746) tb!257641))

(declare-fun result!320736 () Bool)

(assert (= result!320736 result!320696))

(assert (=> d!1560908 t!363746))

(assert (=> d!1560918 t!363744))

(declare-fun t!363748 () Bool)

(declare-fun tb!257643 () Bool)

(assert (=> (and b!4864414 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363748) tb!257643))

(declare-fun result!320738 () Bool)

(assert (= result!320738 result!320702))

(assert (=> d!1561072 t!363748))

(declare-fun tp!1368531 () Bool)

(declare-fun b_and!342507 () Bool)

(assert (=> b!4864414 (= tp!1368531 (and (=> t!363744 result!320734) (=> t!363746 result!320736) (=> t!363748 result!320738) b_and!342507))))

(declare-fun b_free!130593 () Bool)

(declare-fun b_next!131383 () Bool)

(assert (=> b!4864414 (= b_free!130593 (not b_next!131383))))

(declare-fun tb!257645 () Bool)

(declare-fun t!363750 () Bool)

(assert (=> (and b!4864414 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698)))))) t!363750) tb!257645))

(declare-fun result!320740 () Bool)

(assert (= result!320740 result!320654))

(assert (=> d!1560566 t!363750))

(declare-fun tb!257647 () Bool)

(declare-fun t!363752 () Bool)

(assert (=> (and b!4864414 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toChars!10740 (transformation!8026 (rule!11144 (_1!33177 (get!19217 lt!1992791)))))) t!363752) tb!257647))

(declare-fun result!320742 () Bool)

(assert (= result!320742 result!320682))

(assert (=> d!1560836 t!363752))

(declare-fun b_and!342509 () Bool)

(declare-fun tp!1368528 () Bool)

(assert (=> b!4864414 (= tp!1368528 (and (=> t!363750 result!320740) (=> t!363752 result!320742) b_and!342509))))

(declare-fun e!3041342 () Bool)

(assert (=> b!4864414 (= e!3041342 (and tp!1368531 tp!1368528))))

(declare-fun e!3041341 () Bool)

(declare-fun b!4864413 () Bool)

(declare-fun tp!1368529 () Bool)

(assert (=> b!4864413 (= e!3041341 (and tp!1368529 (inv!71803 (tag!8890 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (inv!71808 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) e!3041342))))

(declare-fun b!4864412 () Bool)

(declare-fun e!3041339 () Bool)

(declare-fun tp!1368530 () Bool)

(assert (=> b!4864412 (= e!3041339 (and e!3041341 tp!1368530))))

(assert (=> b!4863414 (= tp!1368433 e!3041339)))

(assert (= b!4864413 b!4864414))

(assert (= b!4864412 b!4864413))

(assert (= (and b!4863414 ((_ is Cons!55914) (t!363662 (t!363662 (t!363662 rules!1248))))) b!4864412))

(declare-fun m!5862886 () Bool)

(assert (=> b!4864413 m!5862886))

(declare-fun m!5862888 () Bool)

(assert (=> b!4864413 m!5862888))

(declare-fun b!4864419 () Bool)

(declare-fun e!3041346 () Bool)

(assert (=> b!4864419 (= e!3041346 tp_is_empty!35651)))

(declare-fun b!4864422 () Bool)

(declare-fun tp!1368536 () Bool)

(declare-fun tp!1368534 () Bool)

(assert (=> b!4864422 (= e!3041346 (and tp!1368536 tp!1368534))))

(declare-fun b!4864421 () Bool)

(declare-fun tp!1368535 () Bool)

(assert (=> b!4864421 (= e!3041346 tp!1368535)))

(declare-fun b!4864420 () Bool)

(declare-fun tp!1368532 () Bool)

(declare-fun tp!1368533 () Bool)

(assert (=> b!4864420 (= e!3041346 (and tp!1368532 tp!1368533))))

(assert (=> b!4863440 (= tp!1368463 e!3041346)))

(assert (= (and b!4863440 ((_ is ElementMatch!13101) (regOne!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864419))

(assert (= (and b!4863440 ((_ is Concat!21438) (regOne!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864420))

(assert (= (and b!4863440 ((_ is Star!13101) (regOne!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864421))

(assert (= (and b!4863440 ((_ is Union!13101) (regOne!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864422))

(declare-fun b!4864423 () Bool)

(declare-fun e!3041347 () Bool)

(assert (=> b!4864423 (= e!3041347 tp_is_empty!35651)))

(declare-fun b!4864426 () Bool)

(declare-fun tp!1368541 () Bool)

(declare-fun tp!1368539 () Bool)

(assert (=> b!4864426 (= e!3041347 (and tp!1368541 tp!1368539))))

(declare-fun b!4864425 () Bool)

(declare-fun tp!1368540 () Bool)

(assert (=> b!4864425 (= e!3041347 tp!1368540)))

(declare-fun b!4864424 () Bool)

(declare-fun tp!1368537 () Bool)

(declare-fun tp!1368538 () Bool)

(assert (=> b!4864424 (= e!3041347 (and tp!1368537 tp!1368538))))

(assert (=> b!4863440 (= tp!1368461 e!3041347)))

(assert (= (and b!4863440 ((_ is ElementMatch!13101) (regTwo!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864423))

(assert (= (and b!4863440 ((_ is Concat!21438) (regTwo!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864424))

(assert (= (and b!4863440 ((_ is Star!13101) (regTwo!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864425))

(assert (= (and b!4863440 ((_ is Union!13101) (regTwo!26715 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864426))

(declare-fun b!4864433 () Bool)

(declare-fun e!3041353 () Bool)

(assert (=> b!4864433 (= e!3041353 tp_is_empty!35651)))

(declare-fun b!4864436 () Bool)

(declare-fun tp!1368546 () Bool)

(declare-fun tp!1368544 () Bool)

(assert (=> b!4864436 (= e!3041353 (and tp!1368546 tp!1368544))))

(declare-fun b!4864435 () Bool)

(declare-fun tp!1368545 () Bool)

(assert (=> b!4864435 (= e!3041353 tp!1368545)))

(declare-fun b!4864434 () Bool)

(declare-fun tp!1368542 () Bool)

(declare-fun tp!1368543 () Bool)

(assert (=> b!4864434 (= e!3041353 (and tp!1368542 tp!1368543))))

(assert (=> b!4863424 (= tp!1368444 e!3041353)))

(assert (= (and b!4863424 ((_ is ElementMatch!13101) (reg!13430 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864433))

(assert (= (and b!4863424 ((_ is Concat!21438) (reg!13430 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864434))

(assert (= (and b!4863424 ((_ is Star!13101) (reg!13430 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864435))

(assert (= (and b!4863424 ((_ is Union!13101) (reg!13430 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864436))

(declare-fun b!4864437 () Bool)

(declare-fun e!3041354 () Bool)

(assert (=> b!4864437 (= e!3041354 tp_is_empty!35651)))

(declare-fun b!4864440 () Bool)

(declare-fun tp!1368551 () Bool)

(declare-fun tp!1368549 () Bool)

(assert (=> b!4864440 (= e!3041354 (and tp!1368551 tp!1368549))))

(declare-fun b!4864439 () Bool)

(declare-fun tp!1368550 () Bool)

(assert (=> b!4864439 (= e!3041354 tp!1368550)))

(declare-fun b!4864438 () Bool)

(declare-fun tp!1368547 () Bool)

(declare-fun tp!1368548 () Bool)

(assert (=> b!4864438 (= e!3041354 (and tp!1368547 tp!1368548))))

(assert (=> b!4863423 (= tp!1368441 e!3041354)))

(assert (= (and b!4863423 ((_ is ElementMatch!13101) (regOne!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864437))

(assert (= (and b!4863423 ((_ is Concat!21438) (regOne!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864438))

(assert (= (and b!4863423 ((_ is Star!13101) (regOne!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864439))

(assert (= (and b!4863423 ((_ is Union!13101) (regOne!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864440))

(declare-fun b!4864441 () Bool)

(declare-fun e!3041355 () Bool)

(assert (=> b!4864441 (= e!3041355 tp_is_empty!35651)))

(declare-fun b!4864444 () Bool)

(declare-fun tp!1368556 () Bool)

(declare-fun tp!1368554 () Bool)

(assert (=> b!4864444 (= e!3041355 (and tp!1368556 tp!1368554))))

(declare-fun b!4864443 () Bool)

(declare-fun tp!1368555 () Bool)

(assert (=> b!4864443 (= e!3041355 tp!1368555)))

(declare-fun b!4864442 () Bool)

(declare-fun tp!1368552 () Bool)

(declare-fun tp!1368553 () Bool)

(assert (=> b!4864442 (= e!3041355 (and tp!1368552 tp!1368553))))

(assert (=> b!4863423 (= tp!1368442 e!3041355)))

(assert (= (and b!4863423 ((_ is ElementMatch!13101) (regTwo!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864441))

(assert (= (and b!4863423 ((_ is Concat!21438) (regTwo!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864442))

(assert (= (and b!4863423 ((_ is Star!13101) (regTwo!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864443))

(assert (= (and b!4863423 ((_ is Union!13101) (regTwo!26714 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864444))

(declare-fun b!4864445 () Bool)

(declare-fun e!3041356 () Bool)

(declare-fun tp!1368557 () Bool)

(assert (=> b!4864445 (= e!3041356 (and tp_is_empty!35651 tp!1368557))))

(assert (=> b!4863373 (= tp!1368390 e!3041356)))

(assert (= (and b!4863373 ((_ is Cons!55913) (innerList!14651 (xs!17869 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (rule!11144 (_1!33172 (v!49672 lt!1992698))))) (value!257885 (_1!33172 (v!49672 lt!1992698))))))))) b!4864445))

(declare-fun b!4864448 () Bool)

(declare-fun e!3041359 () Bool)

(assert (=> b!4864448 (= e!3041359 tp_is_empty!35651)))

(declare-fun b!4864451 () Bool)

(declare-fun tp!1368562 () Bool)

(declare-fun tp!1368560 () Bool)

(assert (=> b!4864451 (= e!3041359 (and tp!1368562 tp!1368560))))

(declare-fun b!4864450 () Bool)

(declare-fun tp!1368561 () Bool)

(assert (=> b!4864450 (= e!3041359 tp!1368561)))

(declare-fun b!4864449 () Bool)

(declare-fun tp!1368558 () Bool)

(declare-fun tp!1368559 () Bool)

(assert (=> b!4864449 (= e!3041359 (and tp!1368558 tp!1368559))))

(assert (=> b!4863439 (= tp!1368462 e!3041359)))

(assert (= (and b!4863439 ((_ is ElementMatch!13101) (reg!13430 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864448))

(assert (= (and b!4863439 ((_ is Concat!21438) (reg!13430 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864449))

(assert (= (and b!4863439 ((_ is Star!13101) (reg!13430 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864450))

(assert (= (and b!4863439 ((_ is Union!13101) (reg!13430 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864451))

(declare-fun b!4864452 () Bool)

(declare-fun e!3041360 () Bool)

(declare-fun tp!1368563 () Bool)

(assert (=> b!4864452 (= e!3041360 (and tp_is_empty!35651 tp!1368563))))

(assert (=> b!4863457 (= tp!1368482 e!3041360)))

(assert (= (and b!4863457 ((_ is Cons!55913) (innerList!14651 (xs!17869 (right!40938 (c!826974 input!661)))))) b!4864452))

(declare-fun b!4864453 () Bool)

(declare-fun e!3041361 () Bool)

(assert (=> b!4864453 (= e!3041361 tp_is_empty!35651)))

(declare-fun b!4864456 () Bool)

(declare-fun tp!1368568 () Bool)

(declare-fun tp!1368566 () Bool)

(assert (=> b!4864456 (= e!3041361 (and tp!1368568 tp!1368566))))

(declare-fun b!4864455 () Bool)

(declare-fun tp!1368567 () Bool)

(assert (=> b!4864455 (= e!3041361 tp!1368567)))

(declare-fun b!4864454 () Bool)

(declare-fun tp!1368564 () Bool)

(declare-fun tp!1368565 () Bool)

(assert (=> b!4864454 (= e!3041361 (and tp!1368564 tp!1368565))))

(assert (=> b!4863409 (= tp!1368425 e!3041361)))

(assert (= (and b!4863409 ((_ is ElementMatch!13101) (regOne!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864453))

(assert (= (and b!4863409 ((_ is Concat!21438) (regOne!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864454))

(assert (= (and b!4863409 ((_ is Star!13101) (regOne!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864455))

(assert (= (and b!4863409 ((_ is Union!13101) (regOne!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864456))

(declare-fun b!4864457 () Bool)

(declare-fun e!3041362 () Bool)

(assert (=> b!4864457 (= e!3041362 tp_is_empty!35651)))

(declare-fun b!4864460 () Bool)

(declare-fun tp!1368573 () Bool)

(declare-fun tp!1368571 () Bool)

(assert (=> b!4864460 (= e!3041362 (and tp!1368573 tp!1368571))))

(declare-fun b!4864459 () Bool)

(declare-fun tp!1368572 () Bool)

(assert (=> b!4864459 (= e!3041362 tp!1368572)))

(declare-fun b!4864458 () Bool)

(declare-fun tp!1368569 () Bool)

(declare-fun tp!1368570 () Bool)

(assert (=> b!4864458 (= e!3041362 (and tp!1368569 tp!1368570))))

(assert (=> b!4863409 (= tp!1368423 e!3041362)))

(assert (= (and b!4863409 ((_ is ElementMatch!13101) (regTwo!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864457))

(assert (= (and b!4863409 ((_ is Concat!21438) (regTwo!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864458))

(assert (= (and b!4863409 ((_ is Star!13101) (regTwo!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864459))

(assert (= (and b!4863409 ((_ is Union!13101) (regTwo!26715 (regTwo!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864460))

(declare-fun b!4864461 () Bool)

(declare-fun e!3041363 () Bool)

(assert (=> b!4864461 (= e!3041363 tp_is_empty!35651)))

(declare-fun b!4864464 () Bool)

(declare-fun tp!1368578 () Bool)

(declare-fun tp!1368576 () Bool)

(assert (=> b!4864464 (= e!3041363 (and tp!1368578 tp!1368576))))

(declare-fun b!4864463 () Bool)

(declare-fun tp!1368577 () Bool)

(assert (=> b!4864463 (= e!3041363 tp!1368577)))

(declare-fun b!4864462 () Bool)

(declare-fun tp!1368574 () Bool)

(declare-fun tp!1368575 () Bool)

(assert (=> b!4864462 (= e!3041363 (and tp!1368574 tp!1368575))))

(assert (=> b!4863438 (= tp!1368459 e!3041363)))

(assert (= (and b!4863438 ((_ is ElementMatch!13101) (regOne!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864461))

(assert (= (and b!4863438 ((_ is Concat!21438) (regOne!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864462))

(assert (= (and b!4863438 ((_ is Star!13101) (regOne!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864463))

(assert (= (and b!4863438 ((_ is Union!13101) (regOne!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864464))

(declare-fun b!4864465 () Bool)

(declare-fun e!3041364 () Bool)

(assert (=> b!4864465 (= e!3041364 tp_is_empty!35651)))

(declare-fun b!4864468 () Bool)

(declare-fun tp!1368583 () Bool)

(declare-fun tp!1368581 () Bool)

(assert (=> b!4864468 (= e!3041364 (and tp!1368583 tp!1368581))))

(declare-fun b!4864467 () Bool)

(declare-fun tp!1368582 () Bool)

(assert (=> b!4864467 (= e!3041364 tp!1368582)))

(declare-fun b!4864466 () Bool)

(declare-fun tp!1368579 () Bool)

(declare-fun tp!1368580 () Bool)

(assert (=> b!4864466 (= e!3041364 (and tp!1368579 tp!1368580))))

(assert (=> b!4863438 (= tp!1368460 e!3041364)))

(assert (= (and b!4863438 ((_ is ElementMatch!13101) (regTwo!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864465))

(assert (= (and b!4863438 ((_ is Concat!21438) (regTwo!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864466))

(assert (= (and b!4863438 ((_ is Star!13101) (regTwo!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864467))

(assert (= (and b!4863438 ((_ is Union!13101) (regTwo!26714 (regOne!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864468))

(declare-fun b!4864469 () Bool)

(declare-fun e!3041365 () Bool)

(assert (=> b!4864469 (= e!3041365 tp_is_empty!35651)))

(declare-fun b!4864472 () Bool)

(declare-fun tp!1368588 () Bool)

(declare-fun tp!1368586 () Bool)

(assert (=> b!4864472 (= e!3041365 (and tp!1368588 tp!1368586))))

(declare-fun b!4864471 () Bool)

(declare-fun tp!1368587 () Bool)

(assert (=> b!4864471 (= e!3041365 tp!1368587)))

(declare-fun b!4864470 () Bool)

(declare-fun tp!1368584 () Bool)

(declare-fun tp!1368585 () Bool)

(assert (=> b!4864470 (= e!3041365 (and tp!1368584 tp!1368585))))

(assert (=> b!4863400 (= tp!1368414 e!3041365)))

(assert (= (and b!4863400 ((_ is ElementMatch!13101) (reg!13430 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864469))

(assert (= (and b!4863400 ((_ is Concat!21438) (reg!13430 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864470))

(assert (= (and b!4863400 ((_ is Star!13101) (reg!13430 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864471))

(assert (= (and b!4863400 ((_ is Union!13101) (reg!13430 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864472))

(declare-fun b!4864473 () Bool)

(declare-fun e!3041366 () Bool)

(assert (=> b!4864473 (= e!3041366 tp_is_empty!35651)))

(declare-fun b!4864476 () Bool)

(declare-fun tp!1368593 () Bool)

(declare-fun tp!1368591 () Bool)

(assert (=> b!4864476 (= e!3041366 (and tp!1368593 tp!1368591))))

(declare-fun b!4864475 () Bool)

(declare-fun tp!1368592 () Bool)

(assert (=> b!4864475 (= e!3041366 tp!1368592)))

(declare-fun b!4864474 () Bool)

(declare-fun tp!1368589 () Bool)

(declare-fun tp!1368590 () Bool)

(assert (=> b!4864474 (= e!3041366 (and tp!1368589 tp!1368590))))

(assert (=> b!4863399 (= tp!1368411 e!3041366)))

(assert (= (and b!4863399 ((_ is ElementMatch!13101) (regOne!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864473))

(assert (= (and b!4863399 ((_ is Concat!21438) (regOne!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864474))

(assert (= (and b!4863399 ((_ is Star!13101) (regOne!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864475))

(assert (= (and b!4863399 ((_ is Union!13101) (regOne!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864476))

(declare-fun b!4864477 () Bool)

(declare-fun e!3041367 () Bool)

(assert (=> b!4864477 (= e!3041367 tp_is_empty!35651)))

(declare-fun b!4864480 () Bool)

(declare-fun tp!1368598 () Bool)

(declare-fun tp!1368596 () Bool)

(assert (=> b!4864480 (= e!3041367 (and tp!1368598 tp!1368596))))

(declare-fun b!4864479 () Bool)

(declare-fun tp!1368597 () Bool)

(assert (=> b!4864479 (= e!3041367 tp!1368597)))

(declare-fun b!4864478 () Bool)

(declare-fun tp!1368594 () Bool)

(declare-fun tp!1368595 () Bool)

(assert (=> b!4864478 (= e!3041367 (and tp!1368594 tp!1368595))))

(assert (=> b!4863399 (= tp!1368412 e!3041367)))

(assert (= (and b!4863399 ((_ is ElementMatch!13101) (regTwo!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864477))

(assert (= (and b!4863399 ((_ is Concat!21438) (regTwo!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864478))

(assert (= (and b!4863399 ((_ is Star!13101) (regTwo!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864479))

(assert (= (and b!4863399 ((_ is Union!13101) (regTwo!26714 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864480))

(declare-fun b!4864481 () Bool)

(declare-fun e!3041368 () Bool)

(declare-fun tp!1368599 () Bool)

(assert (=> b!4864481 (= e!3041368 (and tp_is_empty!35651 tp!1368599))))

(assert (=> b!4863421 (= tp!1368440 e!3041368)))

(assert (= (and b!4863421 ((_ is Cons!55913) (t!363661 (innerList!14651 (xs!17869 (c!826974 totalInput!332)))))) b!4864481))

(declare-fun b!4864482 () Bool)

(declare-fun e!3041369 () Bool)

(assert (=> b!4864482 (= e!3041369 tp_is_empty!35651)))

(declare-fun b!4864485 () Bool)

(declare-fun tp!1368604 () Bool)

(declare-fun tp!1368602 () Bool)

(assert (=> b!4864485 (= e!3041369 (and tp!1368604 tp!1368602))))

(declare-fun b!4864484 () Bool)

(declare-fun tp!1368603 () Bool)

(assert (=> b!4864484 (= e!3041369 tp!1368603)))

(declare-fun b!4864483 () Bool)

(declare-fun tp!1368600 () Bool)

(declare-fun tp!1368601 () Bool)

(assert (=> b!4864483 (= e!3041369 (and tp!1368600 tp!1368601))))

(assert (=> b!4863401 (= tp!1368415 e!3041369)))

(assert (= (and b!4863401 ((_ is ElementMatch!13101) (regOne!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864482))

(assert (= (and b!4863401 ((_ is Concat!21438) (regOne!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864483))

(assert (= (and b!4863401 ((_ is Star!13101) (regOne!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864484))

(assert (= (and b!4863401 ((_ is Union!13101) (regOne!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864485))

(declare-fun b!4864486 () Bool)

(declare-fun e!3041370 () Bool)

(assert (=> b!4864486 (= e!3041370 tp_is_empty!35651)))

(declare-fun b!4864489 () Bool)

(declare-fun tp!1368609 () Bool)

(declare-fun tp!1368607 () Bool)

(assert (=> b!4864489 (= e!3041370 (and tp!1368609 tp!1368607))))

(declare-fun b!4864488 () Bool)

(declare-fun tp!1368608 () Bool)

(assert (=> b!4864488 (= e!3041370 tp!1368608)))

(declare-fun b!4864487 () Bool)

(declare-fun tp!1368605 () Bool)

(declare-fun tp!1368606 () Bool)

(assert (=> b!4864487 (= e!3041370 (and tp!1368605 tp!1368606))))

(assert (=> b!4863401 (= tp!1368413 e!3041370)))

(assert (= (and b!4863401 ((_ is ElementMatch!13101) (regTwo!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864486))

(assert (= (and b!4863401 ((_ is Concat!21438) (regTwo!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864487))

(assert (= (and b!4863401 ((_ is Star!13101) (regTwo!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864488))

(assert (= (and b!4863401 ((_ is Union!13101) (regTwo!26715 (regOne!26714 (regex!8026 (h!62362 rules!1248)))))) b!4864489))

(declare-fun b!4864490 () Bool)

(declare-fun e!3041371 () Bool)

(assert (=> b!4864490 (= e!3041371 tp_is_empty!35651)))

(declare-fun b!4864493 () Bool)

(declare-fun tp!1368614 () Bool)

(declare-fun tp!1368612 () Bool)

(assert (=> b!4864493 (= e!3041371 (and tp!1368614 tp!1368612))))

(declare-fun b!4864492 () Bool)

(declare-fun tp!1368613 () Bool)

(assert (=> b!4864492 (= e!3041371 tp!1368613)))

(declare-fun b!4864491 () Bool)

(declare-fun tp!1368610 () Bool)

(declare-fun tp!1368611 () Bool)

(assert (=> b!4864491 (= e!3041371 (and tp!1368610 tp!1368611))))

(assert (=> b!4863442 (= tp!1368464 e!3041371)))

(assert (= (and b!4863442 ((_ is ElementMatch!13101) (regOne!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864490))

(assert (= (and b!4863442 ((_ is Concat!21438) (regOne!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864491))

(assert (= (and b!4863442 ((_ is Star!13101) (regOne!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864492))

(assert (= (and b!4863442 ((_ is Union!13101) (regOne!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864493))

(declare-fun b!4864494 () Bool)

(declare-fun e!3041372 () Bool)

(assert (=> b!4864494 (= e!3041372 tp_is_empty!35651)))

(declare-fun b!4864497 () Bool)

(declare-fun tp!1368619 () Bool)

(declare-fun tp!1368617 () Bool)

(assert (=> b!4864497 (= e!3041372 (and tp!1368619 tp!1368617))))

(declare-fun b!4864496 () Bool)

(declare-fun tp!1368618 () Bool)

(assert (=> b!4864496 (= e!3041372 tp!1368618)))

(declare-fun b!4864495 () Bool)

(declare-fun tp!1368615 () Bool)

(declare-fun tp!1368616 () Bool)

(assert (=> b!4864495 (= e!3041372 (and tp!1368615 tp!1368616))))

(assert (=> b!4863442 (= tp!1368465 e!3041372)))

(assert (= (and b!4863442 ((_ is ElementMatch!13101) (regTwo!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864494))

(assert (= (and b!4863442 ((_ is Concat!21438) (regTwo!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864495))

(assert (= (and b!4863442 ((_ is Star!13101) (regTwo!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864496))

(assert (= (and b!4863442 ((_ is Union!13101) (regTwo!26714 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864497))

(declare-fun b!4864498 () Bool)

(declare-fun e!3041373 () Bool)

(declare-fun tp!1368620 () Bool)

(assert (=> b!4864498 (= e!3041373 (and tp_is_empty!35651 tp!1368620))))

(assert (=> b!4863450 (= tp!1368474 e!3041373)))

(assert (= (and b!4863450 ((_ is Cons!55913) (innerList!14651 (xs!17869 (left!40608 (c!826974 input!661)))))) b!4864498))

(declare-fun b!4864499 () Bool)

(declare-fun e!3041374 () Bool)

(declare-fun tp!1368621 () Bool)

(assert (=> b!4864499 (= e!3041374 (and tp_is_empty!35651 tp!1368621))))

(assert (=> b!4863381 (= tp!1368393 e!3041374)))

(assert (= (and b!4863381 ((_ is Cons!55913) (innerList!14651 (xs!17869 (left!40608 (c!826974 totalInput!332)))))) b!4864499))

(declare-fun b!4864500 () Bool)

(declare-fun e!3041375 () Bool)

(assert (=> b!4864500 (= e!3041375 tp_is_empty!35651)))

(declare-fun b!4864503 () Bool)

(declare-fun tp!1368626 () Bool)

(declare-fun tp!1368624 () Bool)

(assert (=> b!4864503 (= e!3041375 (and tp!1368626 tp!1368624))))

(declare-fun b!4864502 () Bool)

(declare-fun tp!1368625 () Bool)

(assert (=> b!4864502 (= e!3041375 tp!1368625)))

(declare-fun b!4864501 () Bool)

(declare-fun tp!1368622 () Bool)

(declare-fun tp!1368623 () Bool)

(assert (=> b!4864501 (= e!3041375 (and tp!1368622 tp!1368623))))

(assert (=> b!4863444 (= tp!1368468 e!3041375)))

(assert (= (and b!4863444 ((_ is ElementMatch!13101) (regOne!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864500))

(assert (= (and b!4863444 ((_ is Concat!21438) (regOne!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864501))

(assert (= (and b!4863444 ((_ is Star!13101) (regOne!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864502))

(assert (= (and b!4863444 ((_ is Union!13101) (regOne!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864503))

(declare-fun b!4864504 () Bool)

(declare-fun e!3041376 () Bool)

(assert (=> b!4864504 (= e!3041376 tp_is_empty!35651)))

(declare-fun b!4864507 () Bool)

(declare-fun tp!1368631 () Bool)

(declare-fun tp!1368629 () Bool)

(assert (=> b!4864507 (= e!3041376 (and tp!1368631 tp!1368629))))

(declare-fun b!4864506 () Bool)

(declare-fun tp!1368630 () Bool)

(assert (=> b!4864506 (= e!3041376 tp!1368630)))

(declare-fun b!4864505 () Bool)

(declare-fun tp!1368627 () Bool)

(declare-fun tp!1368628 () Bool)

(assert (=> b!4864505 (= e!3041376 (and tp!1368627 tp!1368628))))

(assert (=> b!4863444 (= tp!1368466 e!3041376)))

(assert (= (and b!4863444 ((_ is ElementMatch!13101) (regTwo!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864504))

(assert (= (and b!4863444 ((_ is Concat!21438) (regTwo!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864505))

(assert (= (and b!4863444 ((_ is Star!13101) (regTwo!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864506))

(assert (= (and b!4863444 ((_ is Union!13101) (regTwo!26715 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864507))

(declare-fun b!4864508 () Bool)

(declare-fun tp!1368632 () Bool)

(declare-fun tp!1368633 () Bool)

(declare-fun e!3041378 () Bool)

(assert (=> b!4864508 (= e!3041378 (and (inv!71807 (left!40608 (left!40608 (left!40608 (c!826974 totalInput!332))))) tp!1368633 (inv!71807 (right!40938 (left!40608 (left!40608 (c!826974 totalInput!332))))) tp!1368632))))

(declare-fun b!4864510 () Bool)

(declare-fun e!3041377 () Bool)

(declare-fun tp!1368634 () Bool)

(assert (=> b!4864510 (= e!3041377 tp!1368634)))

(declare-fun b!4864509 () Bool)

(assert (=> b!4864509 (= e!3041378 (and (inv!71815 (xs!17869 (left!40608 (left!40608 (c!826974 totalInput!332))))) e!3041377))))

(assert (=> b!4863379 (= tp!1368392 (and (inv!71807 (left!40608 (left!40608 (c!826974 totalInput!332)))) e!3041378))))

(assert (= (and b!4863379 ((_ is Node!14563) (left!40608 (left!40608 (c!826974 totalInput!332))))) b!4864508))

(assert (= b!4864509 b!4864510))

(assert (= (and b!4863379 ((_ is Leaf!24287) (left!40608 (left!40608 (c!826974 totalInput!332))))) b!4864509))

(declare-fun m!5862934 () Bool)

(assert (=> b!4864508 m!5862934))

(declare-fun m!5862936 () Bool)

(assert (=> b!4864508 m!5862936))

(declare-fun m!5862938 () Bool)

(assert (=> b!4864509 m!5862938))

(assert (=> b!4863379 m!5861086))

(declare-fun tp!1368636 () Bool)

(declare-fun e!3041380 () Bool)

(declare-fun b!4864511 () Bool)

(declare-fun tp!1368635 () Bool)

(assert (=> b!4864511 (= e!3041380 (and (inv!71807 (left!40608 (right!40938 (left!40608 (c!826974 totalInput!332))))) tp!1368636 (inv!71807 (right!40938 (right!40938 (left!40608 (c!826974 totalInput!332))))) tp!1368635))))

(declare-fun b!4864513 () Bool)

(declare-fun e!3041379 () Bool)

(declare-fun tp!1368637 () Bool)

(assert (=> b!4864513 (= e!3041379 tp!1368637)))

(declare-fun b!4864512 () Bool)

(assert (=> b!4864512 (= e!3041380 (and (inv!71815 (xs!17869 (right!40938 (left!40608 (c!826974 totalInput!332))))) e!3041379))))

(assert (=> b!4863379 (= tp!1368391 (and (inv!71807 (right!40938 (left!40608 (c!826974 totalInput!332)))) e!3041380))))

(assert (= (and b!4863379 ((_ is Node!14563) (right!40938 (left!40608 (c!826974 totalInput!332))))) b!4864511))

(assert (= b!4864512 b!4864513))

(assert (= (and b!4863379 ((_ is Leaf!24287) (right!40938 (left!40608 (c!826974 totalInput!332))))) b!4864512))

(declare-fun m!5862942 () Bool)

(assert (=> b!4864511 m!5862942))

(declare-fun m!5862944 () Bool)

(assert (=> b!4864511 m!5862944))

(declare-fun m!5862946 () Bool)

(assert (=> b!4864512 m!5862946))

(assert (=> b!4863379 m!5861088))

(declare-fun b!4864516 () Bool)

(declare-fun tp!1368638 () Bool)

(declare-fun tp!1368639 () Bool)

(declare-fun e!3041383 () Bool)

(assert (=> b!4864516 (= e!3041383 (and (inv!71807 (left!40608 (left!40608 (left!40608 (c!826974 input!661))))) tp!1368639 (inv!71807 (right!40938 (left!40608 (left!40608 (c!826974 input!661))))) tp!1368638))))

(declare-fun b!4864518 () Bool)

(declare-fun e!3041382 () Bool)

(declare-fun tp!1368640 () Bool)

(assert (=> b!4864518 (= e!3041382 tp!1368640)))

(declare-fun b!4864517 () Bool)

(assert (=> b!4864517 (= e!3041383 (and (inv!71815 (xs!17869 (left!40608 (left!40608 (c!826974 input!661))))) e!3041382))))

(assert (=> b!4863448 (= tp!1368473 (and (inv!71807 (left!40608 (left!40608 (c!826974 input!661)))) e!3041383))))

(assert (= (and b!4863448 ((_ is Node!14563) (left!40608 (left!40608 (c!826974 input!661))))) b!4864516))

(assert (= b!4864517 b!4864518))

(assert (= (and b!4863448 ((_ is Leaf!24287) (left!40608 (left!40608 (c!826974 input!661))))) b!4864517))

(declare-fun m!5862952 () Bool)

(assert (=> b!4864516 m!5862952))

(declare-fun m!5862954 () Bool)

(assert (=> b!4864516 m!5862954))

(declare-fun m!5862956 () Bool)

(assert (=> b!4864517 m!5862956))

(assert (=> b!4863448 m!5861124))

(declare-fun tp!1368642 () Bool)

(declare-fun b!4864521 () Bool)

(declare-fun tp!1368641 () Bool)

(declare-fun e!3041386 () Bool)

(assert (=> b!4864521 (= e!3041386 (and (inv!71807 (left!40608 (right!40938 (left!40608 (c!826974 input!661))))) tp!1368642 (inv!71807 (right!40938 (right!40938 (left!40608 (c!826974 input!661))))) tp!1368641))))

(declare-fun b!4864523 () Bool)

(declare-fun e!3041385 () Bool)

(declare-fun tp!1368643 () Bool)

(assert (=> b!4864523 (= e!3041385 tp!1368643)))

(declare-fun b!4864522 () Bool)

(assert (=> b!4864522 (= e!3041386 (and (inv!71815 (xs!17869 (right!40938 (left!40608 (c!826974 input!661))))) e!3041385))))

(assert (=> b!4863448 (= tp!1368472 (and (inv!71807 (right!40938 (left!40608 (c!826974 input!661)))) e!3041386))))

(assert (= (and b!4863448 ((_ is Node!14563) (right!40938 (left!40608 (c!826974 input!661))))) b!4864521))

(assert (= b!4864522 b!4864523))

(assert (= (and b!4863448 ((_ is Leaf!24287) (right!40938 (left!40608 (c!826974 input!661))))) b!4864522))

(declare-fun m!5862962 () Bool)

(assert (=> b!4864521 m!5862962))

(declare-fun m!5862964 () Bool)

(assert (=> b!4864521 m!5862964))

(declare-fun m!5862966 () Bool)

(assert (=> b!4864522 m!5862966))

(assert (=> b!4863448 m!5861126))

(declare-fun b!4864526 () Bool)

(declare-fun e!3041388 () Bool)

(assert (=> b!4864526 (= e!3041388 tp_is_empty!35651)))

(declare-fun b!4864529 () Bool)

(declare-fun tp!1368648 () Bool)

(declare-fun tp!1368646 () Bool)

(assert (=> b!4864529 (= e!3041388 (and tp!1368648 tp!1368646))))

(declare-fun b!4864528 () Bool)

(declare-fun tp!1368647 () Bool)

(assert (=> b!4864528 (= e!3041388 tp!1368647)))

(declare-fun b!4864527 () Bool)

(declare-fun tp!1368644 () Bool)

(declare-fun tp!1368645 () Bool)

(assert (=> b!4864527 (= e!3041388 (and tp!1368644 tp!1368645))))

(assert (=> b!4863443 (= tp!1368467 e!3041388)))

(assert (= (and b!4863443 ((_ is ElementMatch!13101) (reg!13430 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864526))

(assert (= (and b!4863443 ((_ is Concat!21438) (reg!13430 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864527))

(assert (= (and b!4863443 ((_ is Star!13101) (reg!13430 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864528))

(assert (= (and b!4863443 ((_ is Union!13101) (reg!13430 (regTwo!26715 (regex!8026 (h!62362 rules!1248)))))) b!4864529))

(declare-fun b!4864530 () Bool)

(declare-fun e!3041389 () Bool)

(assert (=> b!4864530 (= e!3041389 tp_is_empty!35651)))

(declare-fun b!4864533 () Bool)

(declare-fun tp!1368653 () Bool)

(declare-fun tp!1368651 () Bool)

(assert (=> b!4864533 (= e!3041389 (and tp!1368653 tp!1368651))))

(declare-fun b!4864532 () Bool)

(declare-fun tp!1368652 () Bool)

(assert (=> b!4864532 (= e!3041389 tp!1368652)))

(declare-fun b!4864531 () Bool)

(declare-fun tp!1368649 () Bool)

(declare-fun tp!1368650 () Bool)

(assert (=> b!4864531 (= e!3041389 (and tp!1368649 tp!1368650))))

(assert (=> b!4863432 (= tp!1368454 e!3041389)))

(assert (= (and b!4863432 ((_ is ElementMatch!13101) (reg!13430 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864530))

(assert (= (and b!4863432 ((_ is Concat!21438) (reg!13430 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864531))

(assert (= (and b!4863432 ((_ is Star!13101) (reg!13430 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864532))

(assert (= (and b!4863432 ((_ is Union!13101) (reg!13430 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864533))

(declare-fun b!4864534 () Bool)

(declare-fun e!3041390 () Bool)

(assert (=> b!4864534 (= e!3041390 tp_is_empty!35651)))

(declare-fun b!4864537 () Bool)

(declare-fun tp!1368658 () Bool)

(declare-fun tp!1368656 () Bool)

(assert (=> b!4864537 (= e!3041390 (and tp!1368658 tp!1368656))))

(declare-fun b!4864536 () Bool)

(declare-fun tp!1368657 () Bool)

(assert (=> b!4864536 (= e!3041390 tp!1368657)))

(declare-fun b!4864535 () Bool)

(declare-fun tp!1368654 () Bool)

(declare-fun tp!1368655 () Bool)

(assert (=> b!4864535 (= e!3041390 (and tp!1368654 tp!1368655))))

(assert (=> b!4863431 (= tp!1368451 e!3041390)))

(assert (= (and b!4863431 ((_ is ElementMatch!13101) (regOne!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864534))

(assert (= (and b!4863431 ((_ is Concat!21438) (regOne!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864535))

(assert (= (and b!4863431 ((_ is Star!13101) (regOne!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864536))

(assert (= (and b!4863431 ((_ is Union!13101) (regOne!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864537))

(declare-fun b!4864538 () Bool)

(declare-fun e!3041391 () Bool)

(assert (=> b!4864538 (= e!3041391 tp_is_empty!35651)))

(declare-fun b!4864541 () Bool)

(declare-fun tp!1368663 () Bool)

(declare-fun tp!1368661 () Bool)

(assert (=> b!4864541 (= e!3041391 (and tp!1368663 tp!1368661))))

(declare-fun b!4864540 () Bool)

(declare-fun tp!1368662 () Bool)

(assert (=> b!4864540 (= e!3041391 tp!1368662)))

(declare-fun b!4864539 () Bool)

(declare-fun tp!1368659 () Bool)

(declare-fun tp!1368660 () Bool)

(assert (=> b!4864539 (= e!3041391 (and tp!1368659 tp!1368660))))

(assert (=> b!4863431 (= tp!1368452 e!3041391)))

(assert (= (and b!4863431 ((_ is ElementMatch!13101) (regTwo!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864538))

(assert (= (and b!4863431 ((_ is Concat!21438) (regTwo!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864539))

(assert (= (and b!4863431 ((_ is Star!13101) (regTwo!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864540))

(assert (= (and b!4863431 ((_ is Union!13101) (regTwo!26714 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864541))

(declare-fun b!4864542 () Bool)

(declare-fun e!3041392 () Bool)

(assert (=> b!4864542 (= e!3041392 tp_is_empty!35651)))

(declare-fun b!4864545 () Bool)

(declare-fun tp!1368668 () Bool)

(declare-fun tp!1368666 () Bool)

(assert (=> b!4864545 (= e!3041392 (and tp!1368668 tp!1368666))))

(declare-fun b!4864544 () Bool)

(declare-fun tp!1368667 () Bool)

(assert (=> b!4864544 (= e!3041392 tp!1368667)))

(declare-fun b!4864543 () Bool)

(declare-fun tp!1368664 () Bool)

(declare-fun tp!1368665 () Bool)

(assert (=> b!4864543 (= e!3041392 (and tp!1368664 tp!1368665))))

(assert (=> b!4863425 (= tp!1368445 e!3041392)))

(assert (= (and b!4863425 ((_ is ElementMatch!13101) (regOne!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864542))

(assert (= (and b!4863425 ((_ is Concat!21438) (regOne!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864543))

(assert (= (and b!4863425 ((_ is Star!13101) (regOne!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864544))

(assert (= (and b!4863425 ((_ is Union!13101) (regOne!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864545))

(declare-fun b!4864546 () Bool)

(declare-fun e!3041393 () Bool)

(assert (=> b!4864546 (= e!3041393 tp_is_empty!35651)))

(declare-fun b!4864549 () Bool)

(declare-fun tp!1368673 () Bool)

(declare-fun tp!1368671 () Bool)

(assert (=> b!4864549 (= e!3041393 (and tp!1368673 tp!1368671))))

(declare-fun b!4864548 () Bool)

(declare-fun tp!1368672 () Bool)

(assert (=> b!4864548 (= e!3041393 tp!1368672)))

(declare-fun b!4864547 () Bool)

(declare-fun tp!1368669 () Bool)

(declare-fun tp!1368670 () Bool)

(assert (=> b!4864547 (= e!3041393 (and tp!1368669 tp!1368670))))

(assert (=> b!4863425 (= tp!1368443 e!3041393)))

(assert (= (and b!4863425 ((_ is ElementMatch!13101) (regTwo!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864546))

(assert (= (and b!4863425 ((_ is Concat!21438) (regTwo!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864547))

(assert (= (and b!4863425 ((_ is Star!13101) (regTwo!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864548))

(assert (= (and b!4863425 ((_ is Union!13101) (regTwo!26715 (regex!8026 (h!62362 (t!363662 rules!1248)))))) b!4864549))

(declare-fun b!4864550 () Bool)

(declare-fun e!3041394 () Bool)

(declare-fun tp!1368674 () Bool)

(assert (=> b!4864550 (= e!3041394 (and tp_is_empty!35651 tp!1368674))))

(assert (=> b!4863384 (= tp!1368398 e!3041394)))

(assert (= (and b!4863384 ((_ is Cons!55913) (innerList!14651 (xs!17869 (right!40938 (c!826974 totalInput!332)))))) b!4864550))

(declare-fun b!4864551 () Bool)

(declare-fun e!3041395 () Bool)

(declare-fun tp!1368675 () Bool)

(assert (=> b!4864551 (= e!3041395 (and tp_is_empty!35651 tp!1368675))))

(assert (=> b!4863397 (= tp!1368410 e!3041395)))

(assert (= (and b!4863397 ((_ is Cons!55913) (t!363661 (innerList!14651 (xs!17869 (c!826974 input!661)))))) b!4864551))

(declare-fun b!4864552 () Bool)

(declare-fun e!3041397 () Bool)

(declare-fun tp!1368676 () Bool)

(declare-fun tp!1368677 () Bool)

(assert (=> b!4864552 (= e!3041397 (and (inv!71807 (left!40608 (left!40608 (right!40938 (c!826974 totalInput!332))))) tp!1368677 (inv!71807 (right!40938 (left!40608 (right!40938 (c!826974 totalInput!332))))) tp!1368676))))

(declare-fun b!4864554 () Bool)

(declare-fun e!3041396 () Bool)

(declare-fun tp!1368678 () Bool)

(assert (=> b!4864554 (= e!3041396 tp!1368678)))

(declare-fun b!4864553 () Bool)

(assert (=> b!4864553 (= e!3041397 (and (inv!71815 (xs!17869 (left!40608 (right!40938 (c!826974 totalInput!332))))) e!3041396))))

(assert (=> b!4863382 (= tp!1368397 (and (inv!71807 (left!40608 (right!40938 (c!826974 totalInput!332)))) e!3041397))))

(assert (= (and b!4863382 ((_ is Node!14563) (left!40608 (right!40938 (c!826974 totalInput!332))))) b!4864552))

(assert (= b!4864553 b!4864554))

(assert (= (and b!4863382 ((_ is Leaf!24287) (left!40608 (right!40938 (c!826974 totalInput!332))))) b!4864553))

(declare-fun m!5862970 () Bool)

(assert (=> b!4864552 m!5862970))

(declare-fun m!5862972 () Bool)

(assert (=> b!4864552 m!5862972))

(declare-fun m!5862974 () Bool)

(assert (=> b!4864553 m!5862974))

(assert (=> b!4863382 m!5861092))

(declare-fun b!4864555 () Bool)

(declare-fun tp!1368680 () Bool)

(declare-fun e!3041399 () Bool)

(declare-fun tp!1368679 () Bool)

(assert (=> b!4864555 (= e!3041399 (and (inv!71807 (left!40608 (right!40938 (right!40938 (c!826974 totalInput!332))))) tp!1368680 (inv!71807 (right!40938 (right!40938 (right!40938 (c!826974 totalInput!332))))) tp!1368679))))

(declare-fun b!4864557 () Bool)

(declare-fun e!3041398 () Bool)

(declare-fun tp!1368681 () Bool)

(assert (=> b!4864557 (= e!3041398 tp!1368681)))

(declare-fun b!4864556 () Bool)

(assert (=> b!4864556 (= e!3041399 (and (inv!71815 (xs!17869 (right!40938 (right!40938 (c!826974 totalInput!332))))) e!3041398))))

(assert (=> b!4863382 (= tp!1368396 (and (inv!71807 (right!40938 (right!40938 (c!826974 totalInput!332)))) e!3041399))))

(assert (= (and b!4863382 ((_ is Node!14563) (right!40938 (right!40938 (c!826974 totalInput!332))))) b!4864555))

(assert (= b!4864556 b!4864557))

(assert (= (and b!4863382 ((_ is Leaf!24287) (right!40938 (right!40938 (c!826974 totalInput!332))))) b!4864556))

(declare-fun m!5862976 () Bool)

(assert (=> b!4864555 m!5862976))

(declare-fun m!5862978 () Bool)

(assert (=> b!4864555 m!5862978))

(declare-fun m!5862980 () Bool)

(assert (=> b!4864556 m!5862980))

(assert (=> b!4863382 m!5861094))

(declare-fun b!4864558 () Bool)

(declare-fun e!3041400 () Bool)

(assert (=> b!4864558 (= e!3041400 tp_is_empty!35651)))

(declare-fun b!4864561 () Bool)

(declare-fun tp!1368686 () Bool)

(declare-fun tp!1368684 () Bool)

(assert (=> b!4864561 (= e!3041400 (and tp!1368686 tp!1368684))))

(declare-fun b!4864560 () Bool)

(declare-fun tp!1368685 () Bool)

(assert (=> b!4864560 (= e!3041400 tp!1368685)))

(declare-fun b!4864559 () Bool)

(declare-fun tp!1368682 () Bool)

(declare-fun tp!1368683 () Bool)

(assert (=> b!4864559 (= e!3041400 (and tp!1368682 tp!1368683))))

(assert (=> b!4863433 (= tp!1368455 e!3041400)))

(assert (= (and b!4863433 ((_ is ElementMatch!13101) (regOne!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864558))

(assert (= (and b!4863433 ((_ is Concat!21438) (regOne!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864559))

(assert (= (and b!4863433 ((_ is Star!13101) (regOne!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864560))

(assert (= (and b!4863433 ((_ is Union!13101) (regOne!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864561))

(declare-fun b!4864562 () Bool)

(declare-fun e!3041401 () Bool)

(assert (=> b!4864562 (= e!3041401 tp_is_empty!35651)))

(declare-fun b!4864565 () Bool)

(declare-fun tp!1368691 () Bool)

(declare-fun tp!1368689 () Bool)

(assert (=> b!4864565 (= e!3041401 (and tp!1368691 tp!1368689))))

(declare-fun b!4864564 () Bool)

(declare-fun tp!1368690 () Bool)

(assert (=> b!4864564 (= e!3041401 tp!1368690)))

(declare-fun b!4864563 () Bool)

(declare-fun tp!1368687 () Bool)

(declare-fun tp!1368688 () Bool)

(assert (=> b!4864563 (= e!3041401 (and tp!1368687 tp!1368688))))

(assert (=> b!4863433 (= tp!1368453 e!3041401)))

(assert (= (and b!4863433 ((_ is ElementMatch!13101) (regTwo!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864562))

(assert (= (and b!4863433 ((_ is Concat!21438) (regTwo!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864563))

(assert (= (and b!4863433 ((_ is Star!13101) (regTwo!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864564))

(assert (= (and b!4863433 ((_ is Union!13101) (regTwo!26715 (reg!13430 (regex!8026 (h!62362 rules!1248)))))) b!4864565))

(declare-fun b_lambda!193443 () Bool)

(assert (= b_lambda!193423 (or d!1560694 b_lambda!193443)))

(declare-fun bs!1174170 () Bool)

(declare-fun d!1561500 () Bool)

(assert (= bs!1174170 (and d!1561500 d!1560694)))

(assert (=> bs!1174170 (= (dynLambda!22427 lambda!243329 (h!62362 rules!1248)) (ruleValid!3625 thiss!11777 (h!62362 rules!1248)))))

(assert (=> bs!1174170 m!5860496))

(assert (=> b!4863850 d!1561500))

(declare-fun b_lambda!193445 () Bool)

(assert (= b_lambda!193417 (or b!4863324 b_lambda!193445)))

(declare-fun bs!1174171 () Bool)

(declare-fun d!1561502 () Bool)

(assert (= bs!1174171 (and d!1561502 b!4863324)))

(assert (=> bs!1174171 (= (dynLambda!22429 lambda!243343 (_1!33181 lt!1993034)) (= (list!17460 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034)))) (list!17460 (_1!33181 lt!1993034))))))

(declare-fun b_lambda!193457 () Bool)

(assert (=> (not b_lambda!193457) (not bs!1174171)))

(declare-fun t!363754 () Bool)

(declare-fun tb!257649 () Bool)

(assert (=> (and b!4862549 (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363754) tb!257649))

(declare-fun e!3041402 () Bool)

(declare-fun tp!1368692 () Bool)

(declare-fun b!4864566 () Bool)

(assert (=> b!4864566 (= e!3041402 (and (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034))))) tp!1368692))))

(declare-fun result!320744 () Bool)

(assert (=> tb!257649 (= result!320744 (and (inv!71809 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (_1!33181 lt!1993034)))) e!3041402))))

(assert (= tb!257649 b!4864566))

(declare-fun m!5862982 () Bool)

(assert (=> b!4864566 m!5862982))

(declare-fun m!5862984 () Bool)

(assert (=> tb!257649 m!5862984))

(assert (=> bs!1174171 t!363754))

(declare-fun b_and!342511 () Bool)

(assert (= b_and!342447 (and (=> t!363754 result!320744) b_and!342511)))

(declare-fun t!363756 () Bool)

(declare-fun tb!257651 () Bool)

(assert (=> (and b!4862793 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363756) tb!257651))

(declare-fun result!320746 () Bool)

(assert (= result!320746 result!320744))

(assert (=> bs!1174171 t!363756))

(declare-fun b_and!342513 () Bool)

(assert (= b_and!342449 (and (=> t!363756 result!320746) b_and!342513)))

(declare-fun t!363758 () Bool)

(declare-fun tb!257653 () Bool)

(assert (=> (and b!4863416 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363758) tb!257653))

(declare-fun result!320748 () Bool)

(assert (= result!320748 result!320744))

(assert (=> bs!1174171 t!363758))

(declare-fun b_and!342515 () Bool)

(assert (= b_and!342451 (and (=> t!363758 result!320748) b_and!342515)))

(declare-fun t!363760 () Bool)

(declare-fun tb!257655 () Bool)

(assert (=> (and b!4864414 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363760) tb!257655))

(declare-fun result!320750 () Bool)

(assert (= result!320750 result!320744))

(assert (=> bs!1174171 t!363760))

(declare-fun b_and!342517 () Bool)

(assert (= b_and!342509 (and (=> t!363760 result!320750) b_and!342517)))

(declare-fun b_lambda!193459 () Bool)

(assert (=> (not b_lambda!193459) (not bs!1174171)))

(assert (=> bs!1174171 t!363691))

(declare-fun b_and!342519 () Bool)

(assert (= b_and!342471 (and (=> t!363691 result!320688) b_and!342519)))

(assert (=> bs!1174171 t!363693))

(declare-fun b_and!342521 () Bool)

(assert (= b_and!342473 (and (=> t!363693 result!320692) b_and!342521)))

(assert (=> bs!1174171 t!363695))

(declare-fun b_and!342523 () Bool)

(assert (= b_and!342475 (and (=> t!363695 result!320694) b_and!342523)))

(assert (=> bs!1174171 t!363744))

(declare-fun b_and!342525 () Bool)

(assert (= b_and!342507 (and (=> t!363744 result!320734) b_and!342525)))

(assert (=> bs!1174171 m!5861404))

(declare-fun m!5862986 () Bool)

(assert (=> bs!1174171 m!5862986))

(assert (=> bs!1174171 m!5862986))

(declare-fun m!5862988 () Bool)

(assert (=> bs!1174171 m!5862988))

(assert (=> bs!1174171 m!5861042))

(assert (=> bs!1174171 m!5861404))

(assert (=> d!1560914 d!1561502))

(declare-fun b_lambda!193447 () Bool)

(assert (= b_lambda!193421 (or b!4863324 b_lambda!193447)))

(declare-fun bs!1174172 () Bool)

(declare-fun d!1561504 () Bool)

(assert (= bs!1174172 (and d!1561504 b!4863324)))

(assert (=> bs!1174172 (= (dynLambda!22429 lambda!243343 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))) (= (list!17460 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))) (list!17460 (seqFromList!5893 (list!17460 (_1!33181 lt!1993034))))))))

(declare-fun b_lambda!193461 () Bool)

(assert (=> (not b_lambda!193461) (not bs!1174172)))

(declare-fun t!363762 () Bool)

(declare-fun tb!257657 () Bool)

(assert (=> (and b!4862549 (= (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363762) tb!257657))

(declare-fun tp!1368693 () Bool)

(declare-fun e!3041403 () Bool)

(declare-fun b!4864567 () Bool)

(assert (=> b!4864567 (= e!3041403 (and (inv!71807 (c!826974 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034))))))) tp!1368693))))

(declare-fun result!320752 () Bool)

(assert (=> tb!257657 (= result!320752 (and (inv!71809 (dynLambda!22418 (toChars!10740 (transformation!8026 (h!62362 rules!1248))) (dynLambda!22428 (toValue!10881 (transformation!8026 (h!62362 rules!1248))) (seqFromList!5893 (list!17460 (_1!33181 lt!1993034)))))) e!3041403))))

(assert (= tb!257657 b!4864567))

(declare-fun m!5862990 () Bool)

(assert (=> b!4864567 m!5862990))

(declare-fun m!5862992 () Bool)

(assert (=> tb!257657 m!5862992))

(assert (=> bs!1174172 t!363762))

(declare-fun b_and!342527 () Bool)

(assert (= b_and!342511 (and (=> t!363762 result!320752) b_and!342527)))

(declare-fun t!363764 () Bool)

(declare-fun tb!257659 () Bool)

(assert (=> (and b!4862793 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363764) tb!257659))

(declare-fun result!320754 () Bool)

(assert (= result!320754 result!320752))

(assert (=> bs!1174172 t!363764))

(declare-fun b_and!342529 () Bool)

(assert (= b_and!342513 (and (=> t!363764 result!320754) b_and!342529)))

(declare-fun t!363766 () Bool)

(declare-fun tb!257661 () Bool)

(assert (=> (and b!4863416 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363766) tb!257661))

(declare-fun result!320756 () Bool)

(assert (= result!320756 result!320752))

(assert (=> bs!1174172 t!363766))

(declare-fun b_and!342531 () Bool)

(assert (= b_and!342515 (and (=> t!363766 result!320756) b_and!342531)))

(declare-fun t!363768 () Bool)

(declare-fun tb!257663 () Bool)

(assert (=> (and b!4864414 (= (toChars!10740 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toChars!10740 (transformation!8026 (h!62362 rules!1248)))) t!363768) tb!257663))

(declare-fun result!320758 () Bool)

(assert (= result!320758 result!320752))

(assert (=> bs!1174172 t!363768))

(declare-fun b_and!342533 () Bool)

(assert (= b_and!342517 (and (=> t!363768 result!320758) b_and!342533)))

(declare-fun b_lambda!193463 () Bool)

(assert (=> (not b_lambda!193463) (not bs!1174172)))

(assert (=> bs!1174172 t!363697))

(declare-fun b_and!342535 () Bool)

(assert (= b_and!342519 (and (=> t!363697 result!320696) b_and!342535)))

(assert (=> bs!1174172 t!363699))

(declare-fun b_and!342537 () Bool)

(assert (= b_and!342521 (and (=> t!363699 result!320698) b_and!342537)))

(assert (=> bs!1174172 t!363701))

(declare-fun b_and!342539 () Bool)

(assert (= b_and!342523 (and (=> t!363701 result!320700) b_and!342539)))

(assert (=> bs!1174172 t!363746))

(declare-fun b_and!342541 () Bool)

(assert (= b_and!342525 (and (=> t!363746 result!320736) b_and!342541)))

(assert (=> bs!1174172 m!5861402))

(declare-fun m!5862994 () Bool)

(assert (=> bs!1174172 m!5862994))

(assert (=> bs!1174172 m!5862994))

(declare-fun m!5862996 () Bool)

(assert (=> bs!1174172 m!5862996))

(assert (=> bs!1174172 m!5861044))

(assert (=> bs!1174172 m!5861406))

(assert (=> bs!1174172 m!5861044))

(assert (=> bs!1174172 m!5861402))

(assert (=> d!1560952 d!1561504))

(declare-fun b_lambda!193449 () Bool)

(assert (= b_lambda!193413 (or (and b!4862549 b_free!130571) (and b!4862793 b_free!130579 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4863416 b_free!130583 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4864414 b_free!130591 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) b_lambda!193449)))

(declare-fun b_lambda!193451 () Bool)

(assert (= b_lambda!193419 (or (and b!4862549 b_free!130571) (and b!4862793 b_free!130579 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4863416 b_free!130583 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4864414 b_free!130591 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) b_lambda!193451)))

(declare-fun b_lambda!193453 () Bool)

(assert (= b_lambda!193409 (or d!1560626 b_lambda!193453)))

(declare-fun bs!1174173 () Bool)

(declare-fun d!1561506 () Bool)

(assert (= bs!1174173 (and d!1561506 d!1560626)))

(assert (=> bs!1174173 (= (dynLambda!22427 lambda!243315 (h!62362 rules!1248)) (ruleValid!3625 thiss!11777 (h!62362 rules!1248)))))

(assert (=> bs!1174173 m!5860496))

(assert (=> b!4863472 d!1561506))

(declare-fun b_lambda!193455 () Bool)

(assert (= b_lambda!193415 (or (and b!4862549 b_free!130571) (and b!4862793 b_free!130579 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 rules!1248)))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4863416 b_free!130583 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 rules!1248))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) (and b!4864414 b_free!130591 (= (toValue!10881 (transformation!8026 (h!62362 (t!363662 (t!363662 (t!363662 rules!1248)))))) (toValue!10881 (transformation!8026 (h!62362 rules!1248))))) b_lambda!193455)))

(check-sat (not b!4864195) (not d!1561336) (not b!4863532) (not b!4864296) (not b!4864444) (not b_next!131375) (not b!4864559) (not b!4864291) (not b!4864491) (not b!4864265) (not b!4864421) (not b!4863501) (not b!4864382) (not b!4864420) (not b!4863873) (not b_lambda!193445) (not b!4863815) (not b!4863568) (not d!1561106) (not b_next!131383) (not b!4864329) (not b!4864548) (not bm!337858) (not b!4863893) (not b!4863661) (not d!1561310) (not b!4864509) (not b!4863857) (not b!4864166) (not b!4863482) (not b!4864396) (not d!1561362) (not bm!337849) (not b!4864513) (not b!4863659) (not b!4864393) (not b!4863820) (not b!4863811) (not b!4863876) (not b!4864406) (not d!1560992) (not tb!257591) (not b!4864325) (not b!4864233) (not b!4863483) (not b!4863881) (not b!4863506) (not d!1560922) (not b!4863571) (not b!4864434) (not b!4864462) (not b!4864341) (not b!4864207) b_and!342535 (not bm!337846) (not bm!337823) (not b!4864409) (not b!4864237) (not b!4864203) (not b!4863826) (not b!4863745) (not d!1561430) (not b!4864413) (not d!1560888) (not b!4864518) (not b!4864539) (not b!4864466) (not d!1561110) (not d!1561374) (not b!4863731) (not b!4863533) (not b!4864498) (not b_next!131363) (not b!4864499) (not b!4863829) (not b!4864527) (not b!4864328) (not b!4863849) (not d!1560914) (not b!4863867) b_and!342539 (not b!4863872) (not d!1561018) (not b!4863657) (not b!4864545) (not b!4863728) (not b!4863769) (not bm!337875) (not b!4864483) (not b!4863844) (not b!4863864) (not b!4863884) (not b!4864533) (not b!4864263) (not b!4863948) (not b!4864239) (not b!4864565) (not b!4863814) (not d!1560872) (not b!4863843) (not b!4864550) (not b_lambda!193449) (not b!4864270) (not b!4863639) (not bs!1174170) (not bm!337822) b_and!342527 (not b!4864442) (not b!4864395) (not b!4864567) (not b!4863952) (not b!4864327) (not b!4864422) (not bm!337847) (not d!1560974) (not b!4864535) (not b!4863492) (not b!4864511) (not b!4864310) (not b!4863508) (not b!4863759) b_and!342533 (not d!1560836) (not b!4864286) (not b!4864497) (not b!4863883) (not b!4863954) (not b!4863899) (not b!4863539) (not b!4864445) (not d!1561342) (not b!4864503) (not b_lambda!193463) (not b!4863830) (not d!1560858) (not b!4864392) (not b!4864529) (not b!4863498) (not b!4864361) (not b!4864455) (not b_lambda!193453) (not b!4863812) (not bs!1174173) (not b!4864236) (not b!4863474) (not b!4864454) (not b!4864485) (not b!4864381) (not b!4864481) (not b!4864471) (not d!1560990) (not b!4863455) (not b!4863772) (not b!4863735) (not b!4863509) (not bm!337890) (not d!1561050) (not b!4863747) (not b!4863500) (not b!4864528) (not d!1560850) (not b!4863859) b_and!342529 (not b!4864443) (not b!4863379) (not b!4863896) (not b!4863821) (not b_next!131369) (not b!4864201) (not b!4864158) (not b!4864326) (not b!4863448) (not b!4864234) (not b!4864375) (not b!4864157) (not b!4864235) (not b!4864387) (not b!4863656) (not b!4864561) (not d!1561016) (not b!4864450) (not b!4863770) (not b!4863490) (not b!4864165) (not b!4863513) (not b!4864383) (not d!1560954) (not b!4864474) (not d!1561332) (not b!4864537) (not b!4864517) (not b_lambda!193443) (not b!4863895) (not d!1560852) b_and!342537 (not b!4864309) (not b!4864510) (not b!4864449) (not b!4863851) (not b!4864303) (not d!1560830) (not b!4863534) (not b!4864147) (not b!4864174) (not b!4863818) (not b!4864436) (not d!1561360) (not b!4864544) (not d!1560898) (not b!4864496) (not b!4864460) (not b!4864388) (not b!4864516) (not b!4864394) (not b!4864391) (not b!4864523) (not b!4864386) (not b!4863863) (not b!4864243) (not b!4863502) (not d!1560882) (not b_lambda!193425) (not b!4864522) (not b!4863507) (not b!4863879) (not b!4863939) (not d!1560956) (not b!4864412) (not d!1561028) (not d!1561314) (not d!1560966) b_and!342541 (not d!1560866) (not b!4864493) (not b!4864557) (not d!1561412) (not d!1561448) (not d!1560878) b_and!342531 (not d!1561382) (not b!4863528) (not b!4863847) (not b!4864240) (not b!4863725) (not b!4863479) (not d!1561368) (not b!4863921) (not b!4864492) (not b!4864495) (not b!4864214) (not b!4864501) (not b!4863487) (not b!4864172) (not b!4863727) (not b!4863503) (not b!4864506) (not b!4863480) (not b!4863882) (not b!4864170) (not b_lambda!193455) (not b!4863810) (not b!4864440) (not d!1561376) (not b!4863530) (not b!4864191) (not b!4864459) (not b!4863823) (not b!4864470) (not d!1560982) (not b!4864384) (not b!4863951) (not b!4863484) (not d!1561092) (not d!1560942) (not d!1561436) (not b!4863662) (not d!1561120) (not b!4863734) (not b!4863494) (not d!1560892) (not d!1561048) (not b!4863771) (not d!1560862) (not b!4863491) (not b!4864475) (not b!4864410) (not d!1560998) (not b!4863546) (not b!4864476) (not b!4864532) (not b!4863730) (not d!1561386) (not b!4863861) (not b_lambda!193451) (not d!1560972) (not d!1561032) (not b!4864424) (not b!4863382) (not d!1561030) (not b!4863941) (not b!4864540) (not b!4864200) (not b!4864284) (not b!4863486) (not d!1561306) (not b!4864505) (not b!4864563) (not tb!257603) (not d!1561040) (not d!1560840) (not b!4863915) (not d!1561046) (not d!1561056) (not b!4864298) (not b!4864295) (not b!4863511) (not b!4864472) (not d!1561084) (not b!4863495) (not d!1561364) (not b!4863663) (not b!4864209) (not b!4863548) (not d!1561002) (not bm!337844) (not tb!257657) (not b!4863496) (not bm!337843) (not b!4863756) (not d!1560834) (not b!4864536) (not bm!337841) (not b!4864555) (not b!4864152) (not b!4864287) (not b!4863750) (not b!4863758) (not b_next!131381) (not b!4863767) (not b!4863865) (not b!4864405) (not b!4863537) (not b!4864479) (not b!4864552) (not b!4863740) (not b!4864194) (not d!1560926) (not b!4864159) (not b!4864211) (not b_lambda!193405) (not b!4864385) (not b!4864206) (not b!4863478) (not b!4864553) (not b!4864366) (not b!4863765) (not b!4863481) (not b!4863565) (not b!4864216) (not b!4863724) (not b!4863541) (not b!4863754) (not b!4864264) (not b!4863858) (not b!4864226) (not b!4863641) (not b!4863890) (not d!1560920) (not d!1561390) (not b!4864438) (not b!4864282) (not d!1560886) (not b!4864549) (not b!4863545) (not b!4863903) (not b!4864543) (not d!1561458) (not b!4864198) (not b!4863764) (not b!4864245) (not d!1560980) (not b!4863476) (not b!4864531) (not d!1560876) (not b!4864566) (not bs!1174172) (not d!1560962) (not b!4863762) (not d!1561108) (not b!4864556) (not b!4863845) (not d!1560902) (not b_next!131371) (not b!4863726) (not b!4863536) (not b!4864464) (not b!4863751) (not b!4864488) tp_is_empty!35651 (not b!4864397) (not d!1561322) (not b!4863950) (not d!1561416) (not b!4863540) (not b!4864487) (not b!4864463) (not b!4863660) (not b!4864554) (not b!4864228) (not d!1560890) (not b!4863523) (not b!4863489) (not b!4863947) (not b_lambda!193457) (not b!4864426) (not b!4864373) (not b!4863840) (not b!4863853) (not b!4864435) (not b_lambda!193447) (not b!4864177) (not b!4864190) (not bs!1174171) (not d!1561334) (not d!1561034) (not b!4863646) (not b!4863527) (not b!4863634) (not b!4864468) (not b!4864425) (not bm!337845) (not d!1561058) (not b!4863732) (not b!4864541) (not b!4864368) (not d!1560870) (not d!1561414) (not bm!337848) (not b!4863897) (not d!1561102) (not b!4863497) (not d!1560924) (not b!4863846) (not b!4863855) (not b!4864407) (not b!4863499) (not d!1561366) (not d!1560894) (not d!1560978) (not b!4863868) (not b!4863768) (not b!4864151) (not b!4863529) (not b!4863877) (not d!1561388) (not b!4864456) (not b!4863848) (not b!4863524) (not b!4864148) (not b!4864458) (not b!4863743) (not d!1560900) (not b!4864507) (not d!1561304) (not b!4864484) (not b!4864508) (not b!4863817) (not d!1561022) (not b!4864439) (not b!4863862) (not b!4864281) (not b!4864564) (not d!1560944) (not b!4864163) (not b!4863542) (not b!4863522) (not b!4863925) (not b!4863525) (not b!4864164) (not b!4864193) (not b!4863885) (not d!1560984) (not b!4863520) (not b!4864489) (not d!1561356) (not b!4864399) (not b_lambda!193461) (not b!4864467) (not b!4863538) (not b!4864411) (not d!1561104) (not d!1561074) (not b!4864478) (not b!4864299) (not b!4863949) (not b!4864480) (not b!4864551) (not bm!337855) (not b!4863824) (not b!4864451) (not b!4864324) (not d!1560908) (not d!1560952) (not b!4864204) (not b!4863923) (not b!4864452) (not b!4864502) (not b!4863739) (not tb!257649) (not b!4863512) (not b_next!131361) (not bm!337856) (not b!4863544) (not d!1561080) (not b!4864389) (not b!4863477) (not b!4864292) (not tb!257609) (not b!4864521) (not b!4864238) (not b!4863832) (not bm!337824) (not bm!337842) (not b_lambda!193411) (not b!4864304) (not tb!257597) (not b!4864560) (not b!4863838) (not b!4863473) (not b_lambda!193459) (not b!4863371) (not b!4864398) (not b!4863808) (not b!4864512) (not b!4863744) (not d!1561422) (not b!4864547) (not b!4863805) (not bm!337857) (not b_next!131373) (not d!1561118))
(check-sat (not b_next!131375) (not b_next!131383) b_and!342535 b_and!342527 b_and!342533 b_and!342537 b_and!342541 b_and!342531 (not b_next!131381) (not b_next!131371) (not b_next!131361) (not b_next!131373) (not b_next!131363) b_and!342539 b_and!342529 (not b_next!131369))
