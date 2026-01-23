; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192264 () Bool)

(assert start!192264)

(declare-fun b!1918791 () Bool)

(declare-fun b_free!54625 () Bool)

(declare-fun b_next!55329 () Bool)

(assert (=> b!1918791 (= b_free!54625 (not b_next!55329))))

(declare-fun tp!547932 () Bool)

(declare-fun b_and!149831 () Bool)

(assert (=> b!1918791 (= tp!547932 b_and!149831)))

(declare-fun b_free!54627 () Bool)

(declare-fun b_next!55331 () Bool)

(assert (=> b!1918791 (= b_free!54627 (not b_next!55331))))

(declare-fun tp!547929 () Bool)

(declare-fun b_and!149833 () Bool)

(assert (=> b!1918791 (= tp!547929 b_and!149833)))

(declare-fun b!1918788 () Bool)

(declare-fun b_free!54629 () Bool)

(declare-fun b_next!55333 () Bool)

(assert (=> b!1918788 (= b_free!54629 (not b_next!55333))))

(declare-fun tp!547928 () Bool)

(declare-fun b_and!149835 () Bool)

(assert (=> b!1918788 (= tp!547928 b_and!149835)))

(declare-fun b_free!54631 () Bool)

(declare-fun b_next!55335 () Bool)

(assert (=> b!1918788 (= b_free!54631 (not b_next!55335))))

(declare-fun tp!547924 () Bool)

(declare-fun b_and!149837 () Bool)

(assert (=> b!1918788 (= tp!547924 b_and!149837)))

(declare-fun b!1918797 () Bool)

(declare-fun b_free!54633 () Bool)

(declare-fun b_next!55337 () Bool)

(assert (=> b!1918797 (= b_free!54633 (not b_next!55337))))

(declare-fun tp!547923 () Bool)

(declare-fun b_and!149839 () Bool)

(assert (=> b!1918797 (= tp!547923 b_and!149839)))

(declare-fun b_free!54635 () Bool)

(declare-fun b_next!55339 () Bool)

(assert (=> b!1918797 (= b_free!54635 (not b_next!55339))))

(declare-fun tp!547922 () Bool)

(declare-fun b_and!149841 () Bool)

(assert (=> b!1918797 (= tp!547922 b_and!149841)))

(declare-fun e!1226258 () Bool)

(assert (=> b!1918788 (= e!1226258 (and tp!547928 tp!547924))))

(declare-fun e!1226248 () Bool)

(declare-fun e!1226247 () Bool)

(declare-fun tp!547921 () Bool)

(declare-fun b!1918789 () Bool)

(declare-datatypes ((List!21844 0))(
  ( (Nil!21762) (Cons!21762 (h!27163 (_ BitVec 16)) (t!178637 List!21844)) )
))
(declare-datatypes ((TokenValue!4030 0))(
  ( (FloatLiteralValue!8060 (text!28655 List!21844)) (TokenValueExt!4029 (__x!13558 Int)) (Broken!20150 (value!122544 List!21844)) (Object!4111) (End!4030) (Def!4030) (Underscore!4030) (Match!4030) (Else!4030) (Error!4030) (Case!4030) (If!4030) (Extends!4030) (Abstract!4030) (Class!4030) (Val!4030) (DelimiterValue!8060 (del!4090 List!21844)) (KeywordValue!4036 (value!122545 List!21844)) (CommentValue!8060 (value!122546 List!21844)) (WhitespaceValue!8060 (value!122547 List!21844)) (IndentationValue!4030 (value!122548 List!21844)) (String!25267) (Int32!4030) (Broken!20151 (value!122549 List!21844)) (Boolean!4031) (Unit!36141) (OperatorValue!4033 (op!4090 List!21844)) (IdentifierValue!8060 (value!122550 List!21844)) (IdentifierValue!8061 (value!122551 List!21844)) (WhitespaceValue!8061 (value!122552 List!21844)) (True!8060) (False!8060) (Broken!20152 (value!122553 List!21844)) (Broken!20153 (value!122554 List!21844)) (True!8061) (RightBrace!4030) (RightBracket!4030) (Colon!4030) (Null!4030) (Comma!4030) (LeftBracket!4030) (False!8061) (LeftBrace!4030) (ImaginaryLiteralValue!4030 (text!28656 List!21844)) (StringLiteralValue!12090 (value!122555 List!21844)) (EOFValue!4030 (value!122556 List!21844)) (IdentValue!4030 (value!122557 List!21844)) (DelimiterValue!8061 (value!122558 List!21844)) (DedentValue!4030 (value!122559 List!21844)) (NewLineValue!4030 (value!122560 List!21844)) (IntegerValue!12090 (value!122561 (_ BitVec 32)) (text!28657 List!21844)) (IntegerValue!12091 (value!122562 Int) (text!28658 List!21844)) (Times!4030) (Or!4030) (Equal!4030) (Minus!4030) (Broken!20154 (value!122563 List!21844)) (And!4030) (Div!4030) (LessEqual!4030) (Mod!4030) (Concat!9349) (Not!4030) (Plus!4030) (SpaceValue!4030 (value!122564 List!21844)) (IntegerValue!12092 (value!122565 Int) (text!28659 List!21844)) (StringLiteralValue!12091 (text!28660 List!21844)) (FloatLiteralValue!8061 (text!28661 List!21844)) (BytesLiteralValue!4030 (value!122566 List!21844)) (CommentValue!8061 (value!122567 List!21844)) (StringLiteralValue!12092 (value!122568 List!21844)) (ErrorTokenValue!4030 (msg!4091 List!21844)) )
))
(declare-datatypes ((C!10784 0))(
  ( (C!10785 (val!6344 Int)) )
))
(declare-datatypes ((List!21845 0))(
  ( (Nil!21763) (Cons!21763 (h!27164 C!10784) (t!178638 List!21845)) )
))
(declare-datatypes ((Regex!5319 0))(
  ( (ElementMatch!5319 (c!312107 C!10784)) (Concat!9350 (regOne!11150 Regex!5319) (regTwo!11150 Regex!5319)) (EmptyExpr!5319) (Star!5319 (reg!5648 Regex!5319)) (EmptyLang!5319) (Union!5319 (regOne!11151 Regex!5319) (regTwo!11151 Regex!5319)) )
))
(declare-datatypes ((String!25268 0))(
  ( (String!25269 (value!122569 String)) )
))
(declare-datatypes ((IArray!14539 0))(
  ( (IArray!14540 (innerList!7327 List!21845)) )
))
(declare-datatypes ((Conc!7267 0))(
  ( (Node!7267 (left!17348 Conc!7267) (right!17678 Conc!7267) (csize!14764 Int) (cheight!7478 Int)) (Leaf!10677 (xs!10161 IArray!14539) (csize!14765 Int)) (Empty!7267) )
))
(declare-datatypes ((BalanceConc!14350 0))(
  ( (BalanceConc!14351 (c!312108 Conc!7267)) )
))
(declare-datatypes ((TokenValueInjection!7644 0))(
  ( (TokenValueInjection!7645 (toValue!5523 Int) (toChars!5382 Int)) )
))
(declare-datatypes ((Rule!7588 0))(
  ( (Rule!7589 (regex!3894 Regex!5319) (tag!4334 String!25268) (isSeparator!3894 Bool) (transformation!3894 TokenValueInjection!7644)) )
))
(declare-datatypes ((Token!7340 0))(
  ( (Token!7341 (value!122570 TokenValue!4030) (rule!6097 Rule!7588) (size!17040 Int) (originalCharacters!4701 List!21845)) )
))
(declare-datatypes ((List!21846 0))(
  ( (Nil!21764) (Cons!21764 (h!27165 Token!7340) (t!178639 List!21846)) )
))
(declare-fun tokens!598 () List!21846)

(declare-fun inv!28847 (Token!7340) Bool)

(assert (=> b!1918789 (= e!1226247 (and (inv!28847 (h!27165 tokens!598)) e!1226248 tp!547921))))

(declare-fun b!1918790 () Bool)

(declare-fun res!857984 () Bool)

(declare-fun e!1226251 () Bool)

(assert (=> b!1918790 (=> (not res!857984) (not e!1226251))))

(declare-fun separatorToken!354 () Token!7340)

(declare-datatypes ((LexerInterface!3507 0))(
  ( (LexerInterfaceExt!3504 (__x!13559 Int)) (Lexer!3505) )
))
(declare-fun thiss!23328 () LexerInterface!3507)

(declare-datatypes ((List!21847 0))(
  ( (Nil!21765) (Cons!21765 (h!27166 Rule!7588) (t!178640 List!21847)) )
))
(declare-fun rules!3198 () List!21847)

(declare-fun rulesProduceIndividualToken!1679 (LexerInterface!3507 List!21847 Token!7340) Bool)

(assert (=> b!1918790 (= res!857984 (rulesProduceIndividualToken!1679 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1226255 () Bool)

(assert (=> b!1918791 (= e!1226255 (and tp!547932 tp!547929))))

(declare-fun b!1918792 () Bool)

(declare-fun res!857987 () Bool)

(assert (=> b!1918792 (=> (not res!857987) (not e!1226251))))

(declare-fun isEmpty!13393 (List!21847) Bool)

(assert (=> b!1918792 (= res!857987 (not (isEmpty!13393 rules!3198)))))

(declare-fun b!1918793 () Bool)

(declare-fun res!857973 () Bool)

(assert (=> b!1918793 (=> (not res!857973) (not e!1226251))))

(declare-fun rulesProduceEachTokenIndividuallyList!1238 (LexerInterface!3507 List!21847 List!21846) Bool)

(assert (=> b!1918793 (= res!857973 (rulesProduceEachTokenIndividuallyList!1238 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918794 () Bool)

(declare-fun res!857978 () Bool)

(assert (=> b!1918794 (=> (not res!857978) (not e!1226251))))

(declare-fun lambda!74889 () Int)

(declare-fun forall!4590 (List!21846 Int) Bool)

(assert (=> b!1918794 (= res!857978 (forall!4590 tokens!598 lambda!74889))))

(declare-fun b!1918795 () Bool)

(declare-fun res!857988 () Bool)

(declare-fun e!1226266 () Bool)

(assert (=> b!1918795 (=> res!857988 e!1226266)))

(declare-fun isEmpty!13394 (List!21846) Bool)

(assert (=> b!1918795 (= res!857988 (isEmpty!13394 tokens!598))))

(declare-fun b!1918796 () Bool)

(declare-fun tp!547926 () Bool)

(declare-fun e!1226261 () Bool)

(declare-fun e!1226263 () Bool)

(declare-fun inv!28844 (String!25268) Bool)

(declare-fun inv!28848 (TokenValueInjection!7644) Bool)

(assert (=> b!1918796 (= e!1226263 (and tp!547926 (inv!28844 (tag!4334 (rule!6097 (h!27165 tokens!598)))) (inv!28848 (transformation!3894 (rule!6097 (h!27165 tokens!598)))) e!1226261))))

(assert (=> b!1918797 (= e!1226261 (and tp!547923 tp!547922))))

(declare-fun b!1918798 () Bool)

(declare-fun e!1226246 () Bool)

(declare-fun lt!735924 () Rule!7588)

(assert (=> b!1918798 (= e!1226246 (= (rule!6097 (h!27165 tokens!598)) lt!735924))))

(declare-fun b!1918799 () Bool)

(declare-fun res!857979 () Bool)

(assert (=> b!1918799 (=> (not res!857979) (not e!1226251))))

(assert (=> b!1918799 (= res!857979 (isSeparator!3894 (rule!6097 separatorToken!354)))))

(declare-fun res!857981 () Bool)

(assert (=> start!192264 (=> (not res!857981) (not e!1226251))))

(get-info :version)

(assert (=> start!192264 (= res!857981 ((_ is Lexer!3505) thiss!23328))))

(assert (=> start!192264 e!1226251))

(assert (=> start!192264 true))

(declare-fun e!1226254 () Bool)

(assert (=> start!192264 e!1226254))

(assert (=> start!192264 e!1226247))

(declare-fun e!1226260 () Bool)

(assert (=> start!192264 (and (inv!28847 separatorToken!354) e!1226260)))

(declare-fun tp!547927 () Bool)

(declare-fun b!1918800 () Bool)

(declare-fun inv!21 (TokenValue!4030) Bool)

(assert (=> b!1918800 (= e!1226248 (and (inv!21 (value!122570 (h!27165 tokens!598))) e!1226263 tp!547927))))

(declare-fun b!1918801 () Bool)

(declare-fun e!1226252 () Bool)

(declare-fun tp!547930 () Bool)

(assert (=> b!1918801 (= e!1226260 (and (inv!21 (value!122570 separatorToken!354)) e!1226252 tp!547930))))

(declare-fun b!1918802 () Bool)

(declare-fun e!1226256 () Bool)

(assert (=> b!1918802 (= e!1226256 e!1226246)))

(declare-fun res!857986 () Bool)

(assert (=> b!1918802 (=> (not res!857986) (not e!1226246))))

(declare-fun lt!735915 () List!21845)

(declare-fun matchR!2605 (Regex!5319 List!21845) Bool)

(assert (=> b!1918802 (= res!857986 (matchR!2605 (regex!3894 lt!735924) lt!735915))))

(declare-datatypes ((Option!4493 0))(
  ( (None!4492) (Some!4492 (v!26565 Rule!7588)) )
))
(declare-fun lt!735921 () Option!4493)

(declare-fun get!6847 (Option!4493) Rule!7588)

(assert (=> b!1918802 (= lt!735924 (get!6847 lt!735921))))

(declare-fun b!1918803 () Bool)

(declare-fun e!1226257 () Bool)

(declare-fun e!1226253 () Bool)

(assert (=> b!1918803 (= e!1226257 e!1226253)))

(declare-fun res!857982 () Bool)

(assert (=> b!1918803 (=> (not res!857982) (not e!1226253))))

(declare-fun lt!735919 () Rule!7588)

(declare-fun lt!735912 () List!21845)

(assert (=> b!1918803 (= res!857982 (matchR!2605 (regex!3894 lt!735919) lt!735912))))

(declare-fun lt!735923 () Option!4493)

(assert (=> b!1918803 (= lt!735919 (get!6847 lt!735923))))

(declare-fun b!1918804 () Bool)

(declare-fun tp!547920 () Bool)

(assert (=> b!1918804 (= e!1226252 (and tp!547920 (inv!28844 (tag!4334 (rule!6097 separatorToken!354))) (inv!28848 (transformation!3894 (rule!6097 separatorToken!354))) e!1226255))))

(declare-fun b!1918805 () Bool)

(declare-fun e!1226259 () Bool)

(declare-datatypes ((tuple2!20452 0))(
  ( (tuple2!20453 (_1!11695 Token!7340) (_2!11695 List!21845)) )
))
(declare-datatypes ((Option!4494 0))(
  ( (None!4493) (Some!4493 (v!26566 tuple2!20452)) )
))
(declare-fun lt!735913 () Option!4494)

(declare-fun get!6848 (Option!4494) tuple2!20452)

(assert (=> b!1918805 (= e!1226259 (= (_1!11695 (get!6848 lt!735913)) (h!27165 tokens!598)))))

(declare-fun b!1918806 () Bool)

(assert (=> b!1918806 (= e!1226266 (forall!4590 tokens!598 lambda!74889))))

(declare-fun b!1918807 () Bool)

(declare-fun res!857974 () Bool)

(assert (=> b!1918807 (=> (not res!857974) (not e!1226251))))

(assert (=> b!1918807 (= res!857974 ((_ is Cons!21764) tokens!598))))

(declare-fun b!1918808 () Bool)

(declare-fun res!857983 () Bool)

(assert (=> b!1918808 (=> (not res!857983) (not e!1226251))))

(declare-fun rulesInvariant!3114 (LexerInterface!3507 List!21847) Bool)

(assert (=> b!1918808 (= res!857983 (rulesInvariant!3114 thiss!23328 rules!3198))))

(declare-fun b!1918809 () Bool)

(declare-fun res!857985 () Bool)

(assert (=> b!1918809 (=> (not res!857985) (not e!1226251))))

(declare-fun sepAndNonSepRulesDisjointChars!992 (List!21847 List!21847) Bool)

(assert (=> b!1918809 (= res!857985 (sepAndNonSepRulesDisjointChars!992 rules!3198 rules!3198))))

(declare-fun b!1918810 () Bool)

(declare-fun res!857977 () Bool)

(assert (=> b!1918810 (=> res!857977 e!1226266)))

(declare-fun isDefined!3791 (Option!4494) Bool)

(declare-fun maxPrefix!1953 (LexerInterface!3507 List!21847 List!21845) Option!4494)

(declare-fun printWithSeparatorTokenWhenNeededList!550 (LexerInterface!3507 List!21847 List!21846 Token!7340) List!21845)

(assert (=> b!1918810 (= res!857977 (not (isDefined!3791 (maxPrefix!1953 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!550 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1918811 () Bool)

(assert (=> b!1918811 (= e!1226251 (not e!1226266))))

(declare-fun res!857975 () Bool)

(assert (=> b!1918811 (=> res!857975 e!1226266)))

(declare-fun lt!735917 () Option!4494)

(declare-fun lt!735914 () Bool)

(assert (=> b!1918811 (= res!857975 (or (and (not lt!735914) (= (_1!11695 (v!26566 lt!735917)) (h!27165 tokens!598))) (and (not lt!735914) (not (= (_1!11695 (v!26566 lt!735917)) (h!27165 tokens!598)))) ((_ is None!4493) lt!735917)))))

(assert (=> b!1918811 (= lt!735914 (not ((_ is Some!4493) lt!735917)))))

(declare-fun ++!5849 (List!21845 List!21845) List!21845)

(assert (=> b!1918811 (= lt!735917 (maxPrefix!1953 thiss!23328 rules!3198 (++!5849 lt!735915 (printWithSeparatorTokenWhenNeededList!550 thiss!23328 rules!3198 (t!178639 tokens!598) separatorToken!354))))))

(assert (=> b!1918811 e!1226256))

(declare-fun res!857980 () Bool)

(assert (=> b!1918811 (=> (not res!857980) (not e!1226256))))

(declare-fun isDefined!3792 (Option!4493) Bool)

(assert (=> b!1918811 (= res!857980 (isDefined!3792 lt!735921))))

(declare-fun getRuleFromTag!737 (LexerInterface!3507 List!21847 String!25268) Option!4493)

(assert (=> b!1918811 (= lt!735921 (getRuleFromTag!737 thiss!23328 rules!3198 (tag!4334 (rule!6097 (h!27165 tokens!598)))))))

(declare-datatypes ((Unit!36142 0))(
  ( (Unit!36143) )
))
(declare-fun lt!735920 () Unit!36142)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!737 (LexerInterface!3507 List!21847 List!21845 Token!7340) Unit!36142)

(assert (=> b!1918811 (= lt!735920 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!737 thiss!23328 rules!3198 lt!735915 (h!27165 tokens!598)))))

(assert (=> b!1918811 e!1226259))

(declare-fun res!857972 () Bool)

(assert (=> b!1918811 (=> (not res!857972) (not e!1226259))))

(assert (=> b!1918811 (= res!857972 (isDefined!3791 lt!735913))))

(assert (=> b!1918811 (= lt!735913 (maxPrefix!1953 thiss!23328 rules!3198 lt!735915))))

(declare-fun lt!735918 () BalanceConc!14350)

(declare-fun list!8826 (BalanceConc!14350) List!21845)

(assert (=> b!1918811 (= lt!735915 (list!8826 lt!735918))))

(assert (=> b!1918811 e!1226257))

(declare-fun res!857976 () Bool)

(assert (=> b!1918811 (=> (not res!857976) (not e!1226257))))

(assert (=> b!1918811 (= res!857976 (isDefined!3792 lt!735923))))

(assert (=> b!1918811 (= lt!735923 (getRuleFromTag!737 thiss!23328 rules!3198 (tag!4334 (rule!6097 separatorToken!354))))))

(declare-fun lt!735911 () Unit!36142)

(assert (=> b!1918811 (= lt!735911 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!737 thiss!23328 rules!3198 lt!735912 separatorToken!354))))

(declare-fun charsOf!2450 (Token!7340) BalanceConc!14350)

(assert (=> b!1918811 (= lt!735912 (list!8826 (charsOf!2450 separatorToken!354)))))

(declare-fun lt!735922 () Unit!36142)

(declare-fun lemmaEqSameImage!602 (TokenValueInjection!7644 BalanceConc!14350 BalanceConc!14350) Unit!36142)

(declare-fun seqFromList!2766 (List!21845) BalanceConc!14350)

(assert (=> b!1918811 (= lt!735922 (lemmaEqSameImage!602 (transformation!3894 (rule!6097 (h!27165 tokens!598))) lt!735918 (seqFromList!2766 (originalCharacters!4701 (h!27165 tokens!598)))))))

(declare-fun lt!735916 () Unit!36142)

(declare-fun lemmaSemiInverse!873 (TokenValueInjection!7644 BalanceConc!14350) Unit!36142)

(assert (=> b!1918811 (= lt!735916 (lemmaSemiInverse!873 (transformation!3894 (rule!6097 (h!27165 tokens!598))) lt!735918))))

(assert (=> b!1918811 (= lt!735918 (charsOf!2450 (h!27165 tokens!598)))))

(declare-fun b!1918812 () Bool)

(declare-fun e!1226262 () Bool)

(declare-fun tp!547925 () Bool)

(assert (=> b!1918812 (= e!1226262 (and tp!547925 (inv!28844 (tag!4334 (h!27166 rules!3198))) (inv!28848 (transformation!3894 (h!27166 rules!3198))) e!1226258))))

(declare-fun b!1918813 () Bool)

(declare-fun tp!547931 () Bool)

(assert (=> b!1918813 (= e!1226254 (and e!1226262 tp!547931))))

(declare-fun b!1918814 () Bool)

(assert (=> b!1918814 (= e!1226253 (= (rule!6097 separatorToken!354) lt!735919))))

(assert (= (and start!192264 res!857981) b!1918792))

(assert (= (and b!1918792 res!857987) b!1918808))

(assert (= (and b!1918808 res!857983) b!1918793))

(assert (= (and b!1918793 res!857973) b!1918790))

(assert (= (and b!1918790 res!857984) b!1918799))

(assert (= (and b!1918799 res!857979) b!1918794))

(assert (= (and b!1918794 res!857978) b!1918809))

(assert (= (and b!1918809 res!857985) b!1918807))

(assert (= (and b!1918807 res!857974) b!1918811))

(assert (= (and b!1918811 res!857976) b!1918803))

(assert (= (and b!1918803 res!857982) b!1918814))

(assert (= (and b!1918811 res!857972) b!1918805))

(assert (= (and b!1918811 res!857980) b!1918802))

(assert (= (and b!1918802 res!857986) b!1918798))

(assert (= (and b!1918811 (not res!857975)) b!1918795))

(assert (= (and b!1918795 (not res!857988)) b!1918810))

(assert (= (and b!1918810 (not res!857977)) b!1918806))

(assert (= b!1918812 b!1918788))

(assert (= b!1918813 b!1918812))

(assert (= (and start!192264 ((_ is Cons!21765) rules!3198)) b!1918813))

(assert (= b!1918796 b!1918797))

(assert (= b!1918800 b!1918796))

(assert (= b!1918789 b!1918800))

(assert (= (and start!192264 ((_ is Cons!21764) tokens!598)) b!1918789))

(assert (= b!1918804 b!1918791))

(assert (= b!1918801 b!1918804))

(assert (= start!192264 b!1918801))

(declare-fun m!2354209 () Bool)

(assert (=> start!192264 m!2354209))

(declare-fun m!2354211 () Bool)

(assert (=> b!1918794 m!2354211))

(declare-fun m!2354213 () Bool)

(assert (=> b!1918795 m!2354213))

(declare-fun m!2354215 () Bool)

(assert (=> b!1918802 m!2354215))

(declare-fun m!2354217 () Bool)

(assert (=> b!1918802 m!2354217))

(declare-fun m!2354219 () Bool)

(assert (=> b!1918804 m!2354219))

(declare-fun m!2354221 () Bool)

(assert (=> b!1918804 m!2354221))

(declare-fun m!2354223 () Bool)

(assert (=> b!1918801 m!2354223))

(assert (=> b!1918806 m!2354211))

(declare-fun m!2354225 () Bool)

(assert (=> b!1918809 m!2354225))

(declare-fun m!2354227 () Bool)

(assert (=> b!1918812 m!2354227))

(declare-fun m!2354229 () Bool)

(assert (=> b!1918812 m!2354229))

(declare-fun m!2354231 () Bool)

(assert (=> b!1918810 m!2354231))

(assert (=> b!1918810 m!2354231))

(declare-fun m!2354233 () Bool)

(assert (=> b!1918810 m!2354233))

(assert (=> b!1918810 m!2354233))

(declare-fun m!2354235 () Bool)

(assert (=> b!1918810 m!2354235))

(declare-fun m!2354237 () Bool)

(assert (=> b!1918796 m!2354237))

(declare-fun m!2354239 () Bool)

(assert (=> b!1918796 m!2354239))

(declare-fun m!2354241 () Bool)

(assert (=> b!1918800 m!2354241))

(declare-fun m!2354243 () Bool)

(assert (=> b!1918792 m!2354243))

(declare-fun m!2354245 () Bool)

(assert (=> b!1918811 m!2354245))

(declare-fun m!2354247 () Bool)

(assert (=> b!1918811 m!2354247))

(declare-fun m!2354249 () Bool)

(assert (=> b!1918811 m!2354249))

(declare-fun m!2354251 () Bool)

(assert (=> b!1918811 m!2354251))

(declare-fun m!2354253 () Bool)

(assert (=> b!1918811 m!2354253))

(declare-fun m!2354255 () Bool)

(assert (=> b!1918811 m!2354255))

(declare-fun m!2354257 () Bool)

(assert (=> b!1918811 m!2354257))

(declare-fun m!2354259 () Bool)

(assert (=> b!1918811 m!2354259))

(declare-fun m!2354261 () Bool)

(assert (=> b!1918811 m!2354261))

(declare-fun m!2354263 () Bool)

(assert (=> b!1918811 m!2354263))

(declare-fun m!2354265 () Bool)

(assert (=> b!1918811 m!2354265))

(declare-fun m!2354267 () Bool)

(assert (=> b!1918811 m!2354267))

(declare-fun m!2354269 () Bool)

(assert (=> b!1918811 m!2354269))

(assert (=> b!1918811 m!2354257))

(assert (=> b!1918811 m!2354265))

(declare-fun m!2354271 () Bool)

(assert (=> b!1918811 m!2354271))

(declare-fun m!2354273 () Bool)

(assert (=> b!1918811 m!2354273))

(assert (=> b!1918811 m!2354271))

(declare-fun m!2354275 () Bool)

(assert (=> b!1918811 m!2354275))

(declare-fun m!2354277 () Bool)

(assert (=> b!1918811 m!2354277))

(assert (=> b!1918811 m!2354259))

(declare-fun m!2354279 () Bool)

(assert (=> b!1918811 m!2354279))

(declare-fun m!2354281 () Bool)

(assert (=> b!1918790 m!2354281))

(declare-fun m!2354283 () Bool)

(assert (=> b!1918803 m!2354283))

(declare-fun m!2354285 () Bool)

(assert (=> b!1918803 m!2354285))

(declare-fun m!2354287 () Bool)

(assert (=> b!1918789 m!2354287))

(declare-fun m!2354289 () Bool)

(assert (=> b!1918805 m!2354289))

(declare-fun m!2354291 () Bool)

(assert (=> b!1918793 m!2354291))

(declare-fun m!2354293 () Bool)

(assert (=> b!1918808 m!2354293))

(check-sat (not b!1918810) (not b_next!55337) (not b!1918804) (not b_next!55339) (not b!1918811) (not b!1918809) (not b!1918813) b_and!149841 (not b!1918794) (not b!1918790) (not b_next!55333) (not start!192264) (not b!1918808) (not b!1918789) (not b_next!55329) b_and!149839 (not b!1918800) (not b_next!55331) (not b!1918805) (not b!1918793) (not b!1918792) (not b!1918802) (not b!1918795) (not b!1918806) b_and!149835 b_and!149833 b_and!149837 (not b!1918812) (not b!1918796) (not b!1918801) b_and!149831 (not b_next!55335) (not b!1918803))
(check-sat (not b_next!55337) (not b_next!55331) (not b_next!55339) b_and!149837 b_and!149841 (not b_next!55333) (not b_next!55329) b_and!149839 b_and!149835 b_and!149833 b_and!149831 (not b_next!55335))
