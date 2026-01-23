; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399714 () Bool)

(assert start!399714)

(declare-fun b!4188821 () Bool)

(declare-fun b_free!121903 () Bool)

(declare-fun b_next!122607 () Bool)

(assert (=> b!4188821 (= b_free!121903 (not b_next!122607))))

(declare-fun tp!1280029 () Bool)

(declare-fun b_and!328137 () Bool)

(assert (=> b!4188821 (= tp!1280029 b_and!328137)))

(declare-fun b_free!121905 () Bool)

(declare-fun b_next!122609 () Bool)

(assert (=> b!4188821 (= b_free!121905 (not b_next!122609))))

(declare-fun tp!1280031 () Bool)

(declare-fun b_and!328139 () Bool)

(assert (=> b!4188821 (= tp!1280031 b_and!328139)))

(declare-fun b!4188815 () Bool)

(declare-fun b_free!121907 () Bool)

(declare-fun b_next!122611 () Bool)

(assert (=> b!4188815 (= b_free!121907 (not b_next!122611))))

(declare-fun tp!1280028 () Bool)

(declare-fun b_and!328141 () Bool)

(assert (=> b!4188815 (= tp!1280028 b_and!328141)))

(declare-fun b_free!121909 () Bool)

(declare-fun b_next!122613 () Bool)

(assert (=> b!4188815 (= b_free!121909 (not b_next!122613))))

(declare-fun tp!1280040 () Bool)

(declare-fun b_and!328143 () Bool)

(assert (=> b!4188815 (= tp!1280040 b_and!328143)))

(declare-fun b!4188819 () Bool)

(declare-fun b_free!121911 () Bool)

(declare-fun b_next!122615 () Bool)

(assert (=> b!4188819 (= b_free!121911 (not b_next!122615))))

(declare-fun tp!1280032 () Bool)

(declare-fun b_and!328145 () Bool)

(assert (=> b!4188819 (= tp!1280032 b_and!328145)))

(declare-fun b_free!121913 () Bool)

(declare-fun b_next!122617 () Bool)

(assert (=> b!4188819 (= b_free!121913 (not b_next!122617))))

(declare-fun tp!1280039 () Bool)

(declare-fun b_and!328147 () Bool)

(assert (=> b!4188819 (= tp!1280039 b_and!328147)))

(declare-fun b!4188794 () Bool)

(declare-fun e!2600358 () Bool)

(declare-fun e!2600341 () Bool)

(assert (=> b!4188794 (= e!2600358 e!2600341)))

(declare-fun res!1718603 () Bool)

(assert (=> b!4188794 (=> res!1718603 e!2600341)))

(declare-fun lt!1491900 () Int)

(declare-fun lt!1491899 () Int)

(assert (=> b!4188794 (= res!1718603 (<= lt!1491900 lt!1491899))))

(declare-datatypes ((C!25328 0))(
  ( (C!25329 (val!14826 Int)) )
))
(declare-datatypes ((List!46121 0))(
  ( (Nil!45997) (Cons!45997 (h!51417 C!25328) (t!345812 List!46121)) )
))
(declare-fun pBis!107 () List!46121)

(declare-fun size!33785 (List!46121) Int)

(assert (=> b!4188794 (= lt!1491900 (size!33785 pBis!107))))

(declare-fun b!4188795 () Bool)

(declare-fun res!1718613 () Bool)

(declare-fun e!2600353 () Bool)

(assert (=> b!4188795 (=> (not res!1718613) (not e!2600353))))

(declare-datatypes ((List!46122 0))(
  ( (Nil!45998) (Cons!45998 (h!51418 (_ BitVec 16)) (t!345813 List!46122)) )
))
(declare-datatypes ((TokenValue!7894 0))(
  ( (FloatLiteralValue!15788 (text!55703 List!46122)) (TokenValueExt!7893 (__x!28009 Int)) (Broken!39470 (value!238930 List!46122)) (Object!8017) (End!7894) (Def!7894) (Underscore!7894) (Match!7894) (Else!7894) (Error!7894) (Case!7894) (If!7894) (Extends!7894) (Abstract!7894) (Class!7894) (Val!7894) (DelimiterValue!15788 (del!7954 List!46122)) (KeywordValue!7900 (value!238931 List!46122)) (CommentValue!15788 (value!238932 List!46122)) (WhitespaceValue!15788 (value!238933 List!46122)) (IndentationValue!7894 (value!238934 List!46122)) (String!53335) (Int32!7894) (Broken!39471 (value!238935 List!46122)) (Boolean!7895) (Unit!65082) (OperatorValue!7897 (op!7954 List!46122)) (IdentifierValue!15788 (value!238936 List!46122)) (IdentifierValue!15789 (value!238937 List!46122)) (WhitespaceValue!15789 (value!238938 List!46122)) (True!15788) (False!15788) (Broken!39472 (value!238939 List!46122)) (Broken!39473 (value!238940 List!46122)) (True!15789) (RightBrace!7894) (RightBracket!7894) (Colon!7894) (Null!7894) (Comma!7894) (LeftBracket!7894) (False!15789) (LeftBrace!7894) (ImaginaryLiteralValue!7894 (text!55704 List!46122)) (StringLiteralValue!23682 (value!238941 List!46122)) (EOFValue!7894 (value!238942 List!46122)) (IdentValue!7894 (value!238943 List!46122)) (DelimiterValue!15789 (value!238944 List!46122)) (DedentValue!7894 (value!238945 List!46122)) (NewLineValue!7894 (value!238946 List!46122)) (IntegerValue!23682 (value!238947 (_ BitVec 32)) (text!55705 List!46122)) (IntegerValue!23683 (value!238948 Int) (text!55706 List!46122)) (Times!7894) (Or!7894) (Equal!7894) (Minus!7894) (Broken!39474 (value!238949 List!46122)) (And!7894) (Div!7894) (LessEqual!7894) (Mod!7894) (Concat!20463) (Not!7894) (Plus!7894) (SpaceValue!7894 (value!238950 List!46122)) (IntegerValue!23684 (value!238951 Int) (text!55707 List!46122)) (StringLiteralValue!23683 (text!55708 List!46122)) (FloatLiteralValue!15789 (text!55709 List!46122)) (BytesLiteralValue!7894 (value!238952 List!46122)) (CommentValue!15789 (value!238953 List!46122)) (StringLiteralValue!23684 (value!238954 List!46122)) (ErrorTokenValue!7894 (msg!7955 List!46122)) )
))
(declare-datatypes ((String!53336 0))(
  ( (String!53337 (value!238955 String)) )
))
(declare-datatypes ((IArray!27755 0))(
  ( (IArray!27756 (innerList!13935 List!46121)) )
))
(declare-datatypes ((Conc!13875 0))(
  ( (Node!13875 (left!34265 Conc!13875) (right!34595 Conc!13875) (csize!27980 Int) (cheight!14086 Int)) (Leaf!21450 (xs!17181 IArray!27755) (csize!27981 Int)) (Empty!13875) )
))
(declare-datatypes ((BalanceConc!27344 0))(
  ( (BalanceConc!27345 (c!714882 Conc!13875)) )
))
(declare-datatypes ((Regex!12569 0))(
  ( (ElementMatch!12569 (c!714883 C!25328)) (Concat!20464 (regOne!25650 Regex!12569) (regTwo!25650 Regex!12569)) (EmptyExpr!12569) (Star!12569 (reg!12898 Regex!12569)) (EmptyLang!12569) (Union!12569 (regOne!25651 Regex!12569) (regTwo!25651 Regex!12569)) )
))
(declare-datatypes ((TokenValueInjection!15216 0))(
  ( (TokenValueInjection!15217 (toValue!10360 Int) (toChars!10219 Int)) )
))
(declare-datatypes ((Rule!15128 0))(
  ( (Rule!15129 (regex!7664 Regex!12569) (tag!8528 String!53336) (isSeparator!7664 Bool) (transformation!7664 TokenValueInjection!15216)) )
))
(declare-fun r!4142 () Rule!15128)

(declare-fun p!2959 () List!46121)

(declare-fun matchR!6308 (Regex!12569 List!46121) Bool)

(assert (=> b!4188795 (= res!1718613 (matchR!6308 (regex!7664 r!4142) p!2959))))

(declare-fun b!4188796 () Bool)

(declare-fun res!1718605 () Bool)

(assert (=> b!4188796 (=> (not res!1718605) (not e!2600353))))

(declare-fun input!3342 () List!46121)

(declare-fun isPrefix!4521 (List!46121 List!46121) Bool)

(assert (=> b!4188796 (= res!1718605 (isPrefix!4521 pBis!107 input!3342))))

(declare-fun b!4188797 () Bool)

(declare-fun e!2600357 () Bool)

(declare-fun tp_is_empty!22101 () Bool)

(declare-fun tp!1280034 () Bool)

(assert (=> b!4188797 (= e!2600357 (and tp_is_empty!22101 tp!1280034))))

(declare-fun b!4188798 () Bool)

(declare-fun res!1718610 () Bool)

(assert (=> b!4188798 (=> (not res!1718610) (not e!2600353))))

(declare-datatypes ((List!46123 0))(
  ( (Nil!45999) (Cons!45999 (h!51419 Rule!15128) (t!345814 List!46123)) )
))
(declare-fun rules!3843 () List!46123)

(declare-fun isEmpty!27228 (List!46123) Bool)

(assert (=> b!4188798 (= res!1718610 (not (isEmpty!27228 rules!3843)))))

(declare-fun b!4188799 () Bool)

(declare-fun res!1718608 () Bool)

(assert (=> b!4188799 (=> (not res!1718608) (not e!2600353))))

(declare-fun contains!9473 (List!46123 Rule!15128) Bool)

(assert (=> b!4188799 (= res!1718608 (contains!9473 rules!3843 r!4142))))

(declare-fun b!4188800 () Bool)

(declare-fun res!1718615 () Bool)

(assert (=> b!4188800 (=> (not res!1718615) (not e!2600353))))

(declare-datatypes ((LexerInterface!7257 0))(
  ( (LexerInterfaceExt!7254 (__x!28010 Int)) (Lexer!7255) )
))
(declare-fun thiss!25986 () LexerInterface!7257)

(declare-fun ruleValid!3382 (LexerInterface!7257 Rule!15128) Bool)

(assert (=> b!4188800 (= res!1718615 (ruleValid!3382 thiss!25986 r!4142))))

(declare-fun b!4188801 () Bool)

(declare-fun tp!1280037 () Bool)

(declare-fun e!2600343 () Bool)

(declare-fun e!2600354 () Bool)

(declare-fun inv!60544 (String!53336) Bool)

(declare-fun inv!60546 (TokenValueInjection!15216) Bool)

(assert (=> b!4188801 (= e!2600354 (and tp!1280037 (inv!60544 (tag!8528 (h!51419 rules!3843))) (inv!60546 (transformation!7664 (h!51419 rules!3843))) e!2600343))))

(declare-fun b!4188802 () Bool)

(declare-fun res!1718601 () Bool)

(declare-fun e!2600351 () Bool)

(assert (=> b!4188802 (=> res!1718601 e!2600351)))

(declare-fun lt!1491895 () List!46121)

(assert (=> b!4188802 (= res!1718601 (not (isPrefix!4521 lt!1491895 input!3342)))))

(declare-fun b!4188803 () Bool)

(declare-fun e!2600356 () Bool)

(assert (=> b!4188803 (= e!2600356 e!2600351)))

(declare-fun res!1718604 () Bool)

(assert (=> b!4188803 (=> res!1718604 e!2600351)))

(assert (=> b!4188803 (= res!1718604 (= lt!1491895 pBis!107))))

(declare-fun lt!1491902 () List!46121)

(assert (=> b!4188803 (isPrefix!4521 lt!1491895 lt!1491902)))

(declare-datatypes ((Token!14042 0))(
  ( (Token!14043 (value!238956 TokenValue!7894) (rule!10742 Rule!15128) (size!33786 Int) (originalCharacters!8052 List!46121)) )
))
(declare-datatypes ((tuple2!43798 0))(
  ( (tuple2!43799 (_1!25033 Token!14042) (_2!25033 List!46121)) )
))
(declare-fun lt!1491888 () tuple2!43798)

(declare-fun ++!11736 (List!46121 List!46121) List!46121)

(assert (=> b!4188803 (= lt!1491902 (++!11736 lt!1491895 (_2!25033 lt!1491888)))))

(declare-datatypes ((Unit!65083 0))(
  ( (Unit!65084) )
))
(declare-fun lt!1491890 () Unit!65083)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3018 (List!46121 List!46121) Unit!65083)

(assert (=> b!4188803 (= lt!1491890 (lemmaConcatTwoListThenFirstIsPrefix!3018 lt!1491895 (_2!25033 lt!1491888)))))

(declare-fun lt!1491891 () BalanceConc!27344)

(declare-fun list!16618 (BalanceConc!27344) List!46121)

(assert (=> b!4188803 (= lt!1491895 (list!16618 lt!1491891))))

(declare-fun charsOf!5099 (Token!14042) BalanceConc!27344)

(assert (=> b!4188803 (= lt!1491891 (charsOf!5099 (_1!25033 lt!1491888)))))

(declare-datatypes ((Option!9858 0))(
  ( (None!9857) (Some!9857 (v!40683 tuple2!43798)) )
))
(declare-fun lt!1491897 () Option!9858)

(declare-fun get!14955 (Option!9858) tuple2!43798)

(assert (=> b!4188803 (= lt!1491888 (get!14955 lt!1491897))))

(declare-fun b!4188804 () Bool)

(assert (=> b!4188804 (= e!2600351 (> lt!1491900 (size!33785 lt!1491895)))))

(declare-fun res!1718600 () Bool)

(assert (=> start!399714 (=> (not res!1718600) (not e!2600353))))

(get-info :version)

(assert (=> start!399714 (= res!1718600 ((_ is Lexer!7255) thiss!25986))))

(assert (=> start!399714 e!2600353))

(assert (=> start!399714 true))

(declare-fun e!2600344 () Bool)

(assert (=> start!399714 e!2600344))

(declare-fun e!2600345 () Bool)

(assert (=> start!399714 e!2600345))

(declare-fun e!2600342 () Bool)

(assert (=> start!399714 e!2600342))

(assert (=> start!399714 e!2600357))

(declare-fun e!2600348 () Bool)

(assert (=> start!399714 e!2600348))

(declare-fun e!2600355 () Bool)

(assert (=> start!399714 e!2600355))

(declare-fun e!2600350 () Bool)

(declare-fun tp!1280030 () Bool)

(declare-fun b!4188805 () Bool)

(assert (=> b!4188805 (= e!2600345 (and tp!1280030 (inv!60544 (tag!8528 r!4142)) (inv!60546 (transformation!7664 r!4142)) e!2600350))))

(declare-fun b!4188806 () Bool)

(declare-fun tp!1280033 () Bool)

(assert (=> b!4188806 (= e!2600355 (and tp_is_empty!22101 tp!1280033))))

(declare-fun b!4188807 () Bool)

(declare-fun res!1718606 () Bool)

(assert (=> b!4188807 (=> (not res!1718606) (not e!2600353))))

(declare-fun rulesInvariant!6470 (LexerInterface!7257 List!46123) Bool)

(assert (=> b!4188807 (= res!1718606 (rulesInvariant!6470 thiss!25986 rules!3843))))

(declare-fun b!4188808 () Bool)

(declare-fun res!1718617 () Bool)

(assert (=> b!4188808 (=> res!1718617 e!2600351)))

(declare-fun size!33787 (BalanceConc!27344) Int)

(assert (=> b!4188808 (= res!1718617 (>= (size!33787 lt!1491891) lt!1491900))))

(declare-fun b!4188809 () Bool)

(declare-fun res!1718614 () Bool)

(assert (=> b!4188809 (=> res!1718614 e!2600341)))

(declare-fun lt!1491901 () Option!9858)

(declare-fun maxPrefix!4305 (LexerInterface!7257 List!46123 List!46121) Option!9858)

(assert (=> b!4188809 (= res!1718614 (not (= (maxPrefix!4305 thiss!25986 rules!3843 input!3342) lt!1491901)))))

(declare-fun b!4188810 () Bool)

(declare-fun res!1718611 () Bool)

(assert (=> b!4188810 (=> (not res!1718611) (not e!2600353))))

(declare-fun validRegex!5686 (Regex!12569) Bool)

(assert (=> b!4188810 (= res!1718611 (validRegex!5686 (regex!7664 r!4142)))))

(declare-fun b!4188811 () Bool)

(declare-fun tp!1280035 () Bool)

(assert (=> b!4188811 (= e!2600348 (and tp_is_empty!22101 tp!1280035))))

(declare-fun b!4188812 () Bool)

(declare-fun tp!1280038 () Bool)

(assert (=> b!4188812 (= e!2600342 (and e!2600354 tp!1280038))))

(declare-fun b!4188813 () Bool)

(declare-fun rBis!167 () Rule!15128)

(declare-fun tp!1280036 () Bool)

(declare-fun e!2600347 () Bool)

(assert (=> b!4188813 (= e!2600344 (and tp!1280036 (inv!60544 (tag!8528 rBis!167)) (inv!60546 (transformation!7664 rBis!167)) e!2600347))))

(declare-fun b!4188814 () Bool)

(declare-fun res!1718612 () Bool)

(assert (=> b!4188814 (=> (not res!1718612) (not e!2600353))))

(assert (=> b!4188814 (= res!1718612 (isPrefix!4521 p!2959 input!3342))))

(assert (=> b!4188815 (= e!2600347 (and tp!1280028 tp!1280040))))

(declare-fun b!4188816 () Bool)

(declare-fun res!1718616 () Bool)

(assert (=> b!4188816 (=> res!1718616 e!2600341)))

(assert (=> b!4188816 (= res!1718616 (not (ruleValid!3382 thiss!25986 rBis!167)))))

(declare-fun b!4188817 () Bool)

(declare-fun res!1718618 () Bool)

(assert (=> b!4188817 (=> (not res!1718618) (not e!2600353))))

(assert (=> b!4188817 (= res!1718618 (contains!9473 rules!3843 rBis!167))))

(declare-fun b!4188818 () Bool)

(declare-fun res!1718609 () Bool)

(assert (=> b!4188818 (=> res!1718609 e!2600351)))

(assert (=> b!4188818 (= res!1718609 (not (= lt!1491902 input!3342)))))

(assert (=> b!4188819 (= e!2600350 (and tp!1280032 tp!1280039))))

(declare-fun b!4188820 () Bool)

(assert (=> b!4188820 (= e!2600353 (not e!2600358))))

(declare-fun res!1718602 () Bool)

(assert (=> b!4188820 (=> res!1718602 e!2600358)))

(declare-fun maxPrefixOneRule!3266 (LexerInterface!7257 Rule!15128 List!46121) Option!9858)

(assert (=> b!4188820 (= res!1718602 (not (= (maxPrefixOneRule!3266 thiss!25986 r!4142 input!3342) lt!1491901)))))

(declare-fun lt!1491896 () TokenValue!7894)

(declare-fun getSuffix!2814 (List!46121 List!46121) List!46121)

(assert (=> b!4188820 (= lt!1491901 (Some!9857 (tuple2!43799 (Token!14043 lt!1491896 r!4142 lt!1491899 p!2959) (getSuffix!2814 input!3342 p!2959))))))

(assert (=> b!4188820 (= lt!1491899 (size!33785 p!2959))))

(declare-fun lt!1491898 () BalanceConc!27344)

(declare-fun apply!10629 (TokenValueInjection!15216 BalanceConc!27344) TokenValue!7894)

(assert (=> b!4188820 (= lt!1491896 (apply!10629 (transformation!7664 r!4142) lt!1491898))))

(assert (=> b!4188820 (isPrefix!4521 input!3342 input!3342)))

(declare-fun lt!1491893 () Unit!65083)

(declare-fun lemmaIsPrefixRefl!2950 (List!46121 List!46121) Unit!65083)

(assert (=> b!4188820 (= lt!1491893 (lemmaIsPrefixRefl!2950 input!3342 input!3342))))

(declare-fun lt!1491894 () Unit!65083)

(declare-fun lemmaSemiInverse!2430 (TokenValueInjection!15216 BalanceConc!27344) Unit!65083)

(assert (=> b!4188820 (= lt!1491894 (lemmaSemiInverse!2430 (transformation!7664 r!4142) lt!1491898))))

(declare-fun seqFromList!5689 (List!46121) BalanceConc!27344)

(assert (=> b!4188820 (= lt!1491898 (seqFromList!5689 p!2959))))

(assert (=> b!4188821 (= e!2600343 (and tp!1280029 tp!1280031))))

(declare-fun b!4188822 () Bool)

(assert (=> b!4188822 (= e!2600341 e!2600356)))

(declare-fun res!1718607 () Bool)

(assert (=> b!4188822 (=> res!1718607 e!2600356)))

(declare-fun isEmpty!27229 (Option!9858) Bool)

(assert (=> b!4188822 (= res!1718607 (isEmpty!27229 lt!1491897))))

(assert (=> b!4188822 (= lt!1491897 (maxPrefixOneRule!3266 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1491889 () Unit!65083)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2388 (LexerInterface!7257 Rule!15128 List!46123) Unit!65083)

(assert (=> b!4188822 (= lt!1491889 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2388 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4188822 (<= lt!1491900 (size!33785 input!3342))))

(declare-fun lt!1491892 () Unit!65083)

(declare-fun lemmaIsPrefixThenSmallerEqSize!551 (List!46121 List!46121) Unit!65083)

(assert (=> b!4188822 (= lt!1491892 (lemmaIsPrefixThenSmallerEqSize!551 pBis!107 input!3342))))

(assert (= (and start!399714 res!1718600) b!4188814))

(assert (= (and b!4188814 res!1718612) b!4188796))

(assert (= (and b!4188796 res!1718605) b!4188798))

(assert (= (and b!4188798 res!1718610) b!4188807))

(assert (= (and b!4188807 res!1718606) b!4188799))

(assert (= (and b!4188799 res!1718608) b!4188817))

(assert (= (and b!4188817 res!1718618) b!4188810))

(assert (= (and b!4188810 res!1718611) b!4188795))

(assert (= (and b!4188795 res!1718613) b!4188800))

(assert (= (and b!4188800 res!1718615) b!4188820))

(assert (= (and b!4188820 (not res!1718602)) b!4188794))

(assert (= (and b!4188794 (not res!1718603)) b!4188816))

(assert (= (and b!4188816 (not res!1718616)) b!4188809))

(assert (= (and b!4188809 (not res!1718614)) b!4188822))

(assert (= (and b!4188822 (not res!1718607)) b!4188803))

(assert (= (and b!4188803 (not res!1718604)) b!4188808))

(assert (= (and b!4188808 (not res!1718617)) b!4188802))

(assert (= (and b!4188802 (not res!1718601)) b!4188818))

(assert (= (and b!4188818 (not res!1718609)) b!4188804))

(assert (= b!4188813 b!4188815))

(assert (= start!399714 b!4188813))

(assert (= b!4188805 b!4188819))

(assert (= start!399714 b!4188805))

(assert (= b!4188801 b!4188821))

(assert (= b!4188812 b!4188801))

(assert (= (and start!399714 ((_ is Cons!45999) rules!3843)) b!4188812))

(assert (= (and start!399714 ((_ is Cons!45997) input!3342)) b!4188797))

(assert (= (and start!399714 ((_ is Cons!45997) pBis!107)) b!4188811))

(assert (= (and start!399714 ((_ is Cons!45997) p!2959)) b!4188806))

(declare-fun m!4777679 () Bool)

(assert (=> b!4188822 m!4777679))

(declare-fun m!4777681 () Bool)

(assert (=> b!4188822 m!4777681))

(declare-fun m!4777683 () Bool)

(assert (=> b!4188822 m!4777683))

(declare-fun m!4777685 () Bool)

(assert (=> b!4188822 m!4777685))

(declare-fun m!4777687 () Bool)

(assert (=> b!4188822 m!4777687))

(declare-fun m!4777689 () Bool)

(assert (=> b!4188816 m!4777689))

(declare-fun m!4777691 () Bool)

(assert (=> b!4188799 m!4777691))

(declare-fun m!4777693 () Bool)

(assert (=> b!4188804 m!4777693))

(declare-fun m!4777695 () Bool)

(assert (=> b!4188810 m!4777695))

(declare-fun m!4777697 () Bool)

(assert (=> b!4188803 m!4777697))

(declare-fun m!4777699 () Bool)

(assert (=> b!4188803 m!4777699))

(declare-fun m!4777701 () Bool)

(assert (=> b!4188803 m!4777701))

(declare-fun m!4777703 () Bool)

(assert (=> b!4188803 m!4777703))

(declare-fun m!4777705 () Bool)

(assert (=> b!4188803 m!4777705))

(declare-fun m!4777707 () Bool)

(assert (=> b!4188803 m!4777707))

(declare-fun m!4777709 () Bool)

(assert (=> b!4188813 m!4777709))

(declare-fun m!4777711 () Bool)

(assert (=> b!4188813 m!4777711))

(declare-fun m!4777713 () Bool)

(assert (=> b!4188814 m!4777713))

(declare-fun m!4777715 () Bool)

(assert (=> b!4188800 m!4777715))

(declare-fun m!4777717 () Bool)

(assert (=> b!4188802 m!4777717))

(declare-fun m!4777719 () Bool)

(assert (=> b!4188801 m!4777719))

(declare-fun m!4777721 () Bool)

(assert (=> b!4188801 m!4777721))

(declare-fun m!4777723 () Bool)

(assert (=> b!4188820 m!4777723))

(declare-fun m!4777725 () Bool)

(assert (=> b!4188820 m!4777725))

(declare-fun m!4777727 () Bool)

(assert (=> b!4188820 m!4777727))

(declare-fun m!4777729 () Bool)

(assert (=> b!4188820 m!4777729))

(declare-fun m!4777731 () Bool)

(assert (=> b!4188820 m!4777731))

(declare-fun m!4777733 () Bool)

(assert (=> b!4188820 m!4777733))

(declare-fun m!4777735 () Bool)

(assert (=> b!4188820 m!4777735))

(declare-fun m!4777737 () Bool)

(assert (=> b!4188820 m!4777737))

(declare-fun m!4777739 () Bool)

(assert (=> b!4188809 m!4777739))

(declare-fun m!4777741 () Bool)

(assert (=> b!4188798 m!4777741))

(declare-fun m!4777743 () Bool)

(assert (=> b!4188817 m!4777743))

(declare-fun m!4777745 () Bool)

(assert (=> b!4188796 m!4777745))

(declare-fun m!4777747 () Bool)

(assert (=> b!4188805 m!4777747))

(declare-fun m!4777749 () Bool)

(assert (=> b!4188805 m!4777749))

(declare-fun m!4777751 () Bool)

(assert (=> b!4188794 m!4777751))

(declare-fun m!4777753 () Bool)

(assert (=> b!4188808 m!4777753))

(declare-fun m!4777755 () Bool)

(assert (=> b!4188807 m!4777755))

(declare-fun m!4777757 () Bool)

(assert (=> b!4188795 m!4777757))

(check-sat (not b_next!122617) (not b!4188816) (not b!4188804) (not b!4188794) (not b!4188797) (not b!4188799) (not b!4188808) b_and!328137 (not b!4188805) (not b_next!122613) (not b!4188814) (not b!4188806) (not b!4188822) (not b!4188795) tp_is_empty!22101 (not b!4188800) (not b!4188809) (not b_next!122609) b_and!328139 (not b!4188811) (not b!4188812) (not b!4188802) (not b!4188807) (not b!4188796) (not b!4188801) (not b_next!122607) (not b_next!122615) (not b!4188817) (not b!4188810) b_and!328147 (not b!4188798) (not b!4188813) (not b_next!122611) b_and!328141 (not b!4188803) (not b!4188820) b_and!328145 b_and!328143)
(check-sat (not b_next!122617) (not b_next!122613) b_and!328147 b_and!328137 (not b_next!122609) b_and!328139 (not b_next!122607) (not b_next!122615) (not b_next!122611) b_and!328141 b_and!328145 b_and!328143)
(get-model)

(declare-fun d!1235743 () Bool)

(assert (=> d!1235743 (= (inv!60544 (tag!8528 (h!51419 rules!3843))) (= (mod (str.len (value!238955 (tag!8528 (h!51419 rules!3843)))) 2) 0))))

(assert (=> b!4188801 d!1235743))

(declare-fun d!1235745 () Bool)

(declare-fun res!1718631 () Bool)

(declare-fun e!2600361 () Bool)

(assert (=> d!1235745 (=> (not res!1718631) (not e!2600361))))

(declare-fun semiInverseModEq!3321 (Int Int) Bool)

(assert (=> d!1235745 (= res!1718631 (semiInverseModEq!3321 (toChars!10219 (transformation!7664 (h!51419 rules!3843))) (toValue!10360 (transformation!7664 (h!51419 rules!3843)))))))

(assert (=> d!1235745 (= (inv!60546 (transformation!7664 (h!51419 rules!3843))) e!2600361)))

(declare-fun b!4188825 () Bool)

(declare-fun equivClasses!3220 (Int Int) Bool)

(assert (=> b!4188825 (= e!2600361 (equivClasses!3220 (toChars!10219 (transformation!7664 (h!51419 rules!3843))) (toValue!10360 (transformation!7664 (h!51419 rules!3843)))))))

(assert (= (and d!1235745 res!1718631) b!4188825))

(declare-fun m!4777759 () Bool)

(assert (=> d!1235745 m!4777759))

(declare-fun m!4777761 () Bool)

(assert (=> b!4188825 m!4777761))

(assert (=> b!4188801 d!1235745))

(declare-fun d!1235747 () Bool)

(declare-fun e!2600375 () Bool)

(assert (=> d!1235747 e!2600375))

(declare-fun res!1718649 () Bool)

(assert (=> d!1235747 (=> res!1718649 e!2600375)))

(declare-fun lt!1491905 () Bool)

(assert (=> d!1235747 (= res!1718649 (not lt!1491905))))

(declare-fun e!2600373 () Bool)

(assert (=> d!1235747 (= lt!1491905 e!2600373)))

(declare-fun res!1718651 () Bool)

(assert (=> d!1235747 (=> res!1718651 e!2600373)))

(assert (=> d!1235747 (= res!1718651 ((_ is Nil!45997) lt!1491895))))

(assert (=> d!1235747 (= (isPrefix!4521 lt!1491895 input!3342) lt!1491905)))

(declare-fun b!4188843 () Bool)

(declare-fun res!1718650 () Bool)

(declare-fun e!2600374 () Bool)

(assert (=> b!4188843 (=> (not res!1718650) (not e!2600374))))

(declare-fun head!8890 (List!46121) C!25328)

(assert (=> b!4188843 (= res!1718650 (= (head!8890 lt!1491895) (head!8890 input!3342)))))

(declare-fun b!4188845 () Bool)

(assert (=> b!4188845 (= e!2600375 (>= (size!33785 input!3342) (size!33785 lt!1491895)))))

(declare-fun b!4188842 () Bool)

(assert (=> b!4188842 (= e!2600373 e!2600374)))

(declare-fun res!1718648 () Bool)

(assert (=> b!4188842 (=> (not res!1718648) (not e!2600374))))

(assert (=> b!4188842 (= res!1718648 (not ((_ is Nil!45997) input!3342)))))

(declare-fun b!4188844 () Bool)

(declare-fun tail!6737 (List!46121) List!46121)

(assert (=> b!4188844 (= e!2600374 (isPrefix!4521 (tail!6737 lt!1491895) (tail!6737 input!3342)))))

(assert (= (and d!1235747 (not res!1718651)) b!4188842))

(assert (= (and b!4188842 res!1718648) b!4188843))

(assert (= (and b!4188843 res!1718650) b!4188844))

(assert (= (and d!1235747 (not res!1718649)) b!4188845))

(declare-fun m!4777767 () Bool)

(assert (=> b!4188843 m!4777767))

(declare-fun m!4777769 () Bool)

(assert (=> b!4188843 m!4777769))

(assert (=> b!4188845 m!4777681))

(assert (=> b!4188845 m!4777693))

(declare-fun m!4777771 () Bool)

(assert (=> b!4188844 m!4777771))

(declare-fun m!4777773 () Bool)

(assert (=> b!4188844 m!4777773))

(assert (=> b!4188844 m!4777771))

(assert (=> b!4188844 m!4777773))

(declare-fun m!4777775 () Bool)

(assert (=> b!4188844 m!4777775))

(assert (=> b!4188802 d!1235747))

(declare-fun d!1235753 () Bool)

(declare-fun res!1718667 () Bool)

(declare-fun e!2600393 () Bool)

(assert (=> d!1235753 (=> (not res!1718667) (not e!2600393))))

(assert (=> d!1235753 (= res!1718667 (validRegex!5686 (regex!7664 r!4142)))))

(assert (=> d!1235753 (= (ruleValid!3382 thiss!25986 r!4142) e!2600393)))

(declare-fun b!4188869 () Bool)

(declare-fun res!1718668 () Bool)

(assert (=> b!4188869 (=> (not res!1718668) (not e!2600393))))

(declare-fun nullable!4413 (Regex!12569) Bool)

(assert (=> b!4188869 (= res!1718668 (not (nullable!4413 (regex!7664 r!4142))))))

(declare-fun b!4188870 () Bool)

(assert (=> b!4188870 (= e!2600393 (not (= (tag!8528 r!4142) (String!53337 ""))))))

(assert (= (and d!1235753 res!1718667) b!4188869))

(assert (= (and b!4188869 res!1718668) b!4188870))

(assert (=> d!1235753 m!4777695))

(declare-fun m!4777781 () Bool)

(assert (=> b!4188869 m!4777781))

(assert (=> b!4188800 d!1235753))

(declare-fun d!1235757 () Bool)

(assert (=> d!1235757 (ruleValid!3382 thiss!25986 rBis!167)))

(declare-fun lt!1491908 () Unit!65083)

(declare-fun choose!25653 (LexerInterface!7257 Rule!15128 List!46123) Unit!65083)

(assert (=> d!1235757 (= lt!1491908 (choose!25653 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235757 (contains!9473 rules!3843 rBis!167)))

(assert (=> d!1235757 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2388 thiss!25986 rBis!167 rules!3843) lt!1491908)))

(declare-fun bs!596578 () Bool)

(assert (= bs!596578 d!1235757))

(assert (=> bs!596578 m!4777689))

(declare-fun m!4777783 () Bool)

(assert (=> bs!596578 m!4777783))

(assert (=> bs!596578 m!4777743))

(assert (=> b!4188822 d!1235757))

(declare-fun b!4188916 () Bool)

(declare-fun e!2600424 () Bool)

(declare-datatypes ((tuple2!43802 0))(
  ( (tuple2!43803 (_1!25035 List!46121) (_2!25035 List!46121)) )
))
(declare-fun findLongestMatchInner!1603 (Regex!12569 List!46121 Int List!46121 List!46121 Int) tuple2!43802)

(assert (=> b!4188916 (= e!2600424 (matchR!6308 (regex!7664 rBis!167) (_1!25035 (findLongestMatchInner!1603 (regex!7664 rBis!167) Nil!45997 (size!33785 Nil!45997) input!3342 input!3342 (size!33785 input!3342)))))))

(declare-fun b!4188917 () Bool)

(declare-fun res!1718703 () Bool)

(declare-fun e!2600421 () Bool)

(assert (=> b!4188917 (=> (not res!1718703) (not e!2600421))))

(declare-fun lt!1491934 () Option!9858)

(assert (=> b!4188917 (= res!1718703 (= (value!238956 (_1!25033 (get!14955 lt!1491934))) (apply!10629 (transformation!7664 (rule!10742 (_1!25033 (get!14955 lt!1491934)))) (seqFromList!5689 (originalCharacters!8052 (_1!25033 (get!14955 lt!1491934)))))))))

(declare-fun d!1235759 () Bool)

(declare-fun e!2600423 () Bool)

(assert (=> d!1235759 e!2600423))

(declare-fun res!1718700 () Bool)

(assert (=> d!1235759 (=> res!1718700 e!2600423)))

(assert (=> d!1235759 (= res!1718700 (isEmpty!27229 lt!1491934))))

(declare-fun e!2600422 () Option!9858)

(assert (=> d!1235759 (= lt!1491934 e!2600422)))

(declare-fun c!714896 () Bool)

(declare-fun lt!1491933 () tuple2!43802)

(declare-fun isEmpty!27231 (List!46121) Bool)

(assert (=> d!1235759 (= c!714896 (isEmpty!27231 (_1!25035 lt!1491933)))))

(declare-fun findLongestMatch!1516 (Regex!12569 List!46121) tuple2!43802)

(assert (=> d!1235759 (= lt!1491933 (findLongestMatch!1516 (regex!7664 rBis!167) input!3342))))

(assert (=> d!1235759 (ruleValid!3382 thiss!25986 rBis!167)))

(assert (=> d!1235759 (= (maxPrefixOneRule!3266 thiss!25986 rBis!167 input!3342) lt!1491934)))

(declare-fun b!4188918 () Bool)

(assert (=> b!4188918 (= e!2600421 (= (size!33786 (_1!25033 (get!14955 lt!1491934))) (size!33785 (originalCharacters!8052 (_1!25033 (get!14955 lt!1491934))))))))

(declare-fun b!4188919 () Bool)

(declare-fun res!1718706 () Bool)

(assert (=> b!4188919 (=> (not res!1718706) (not e!2600421))))

(assert (=> b!4188919 (= res!1718706 (< (size!33785 (_2!25033 (get!14955 lt!1491934))) (size!33785 input!3342)))))

(declare-fun b!4188920 () Bool)

(assert (=> b!4188920 (= e!2600423 e!2600421)))

(declare-fun res!1718702 () Bool)

(assert (=> b!4188920 (=> (not res!1718702) (not e!2600421))))

(assert (=> b!4188920 (= res!1718702 (matchR!6308 (regex!7664 rBis!167) (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1491934))))))))

(declare-fun b!4188921 () Bool)

(declare-fun res!1718704 () Bool)

(assert (=> b!4188921 (=> (not res!1718704) (not e!2600421))))

(assert (=> b!4188921 (= res!1718704 (= (++!11736 (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1491934)))) (_2!25033 (get!14955 lt!1491934))) input!3342))))

(declare-fun b!4188922 () Bool)

(assert (=> b!4188922 (= e!2600422 (Some!9857 (tuple2!43799 (Token!14043 (apply!10629 (transformation!7664 rBis!167) (seqFromList!5689 (_1!25035 lt!1491933))) rBis!167 (size!33787 (seqFromList!5689 (_1!25035 lt!1491933))) (_1!25035 lt!1491933)) (_2!25035 lt!1491933))))))

(declare-fun lt!1491931 () Unit!65083)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1576 (Regex!12569 List!46121) Unit!65083)

(assert (=> b!4188922 (= lt!1491931 (longestMatchIsAcceptedByMatchOrIsEmpty!1576 (regex!7664 rBis!167) input!3342))))

(declare-fun res!1718701 () Bool)

(assert (=> b!4188922 (= res!1718701 (isEmpty!27231 (_1!25035 (findLongestMatchInner!1603 (regex!7664 rBis!167) Nil!45997 (size!33785 Nil!45997) input!3342 input!3342 (size!33785 input!3342)))))))

(assert (=> b!4188922 (=> res!1718701 e!2600424)))

(assert (=> b!4188922 e!2600424))

(declare-fun lt!1491932 () Unit!65083)

(assert (=> b!4188922 (= lt!1491932 lt!1491931)))

(declare-fun lt!1491930 () Unit!65083)

(assert (=> b!4188922 (= lt!1491930 (lemmaSemiInverse!2430 (transformation!7664 rBis!167) (seqFromList!5689 (_1!25035 lt!1491933))))))

(declare-fun b!4188923 () Bool)

(assert (=> b!4188923 (= e!2600422 None!9857)))

(declare-fun b!4188924 () Bool)

(declare-fun res!1718705 () Bool)

(assert (=> b!4188924 (=> (not res!1718705) (not e!2600421))))

(assert (=> b!4188924 (= res!1718705 (= (rule!10742 (_1!25033 (get!14955 lt!1491934))) rBis!167))))

(assert (= (and d!1235759 c!714896) b!4188923))

(assert (= (and d!1235759 (not c!714896)) b!4188922))

(assert (= (and b!4188922 (not res!1718701)) b!4188916))

(assert (= (and d!1235759 (not res!1718700)) b!4188920))

(assert (= (and b!4188920 res!1718702) b!4188921))

(assert (= (and b!4188921 res!1718704) b!4188919))

(assert (= (and b!4188919 res!1718706) b!4188924))

(assert (= (and b!4188924 res!1718705) b!4188917))

(assert (= (and b!4188917 res!1718703) b!4188918))

(declare-fun m!4777805 () Bool)

(assert (=> b!4188917 m!4777805))

(declare-fun m!4777807 () Bool)

(assert (=> b!4188917 m!4777807))

(assert (=> b!4188917 m!4777807))

(declare-fun m!4777809 () Bool)

(assert (=> b!4188917 m!4777809))

(declare-fun m!4777811 () Bool)

(assert (=> b!4188922 m!4777811))

(declare-fun m!4777813 () Bool)

(assert (=> b!4188922 m!4777813))

(assert (=> b!4188922 m!4777811))

(assert (=> b!4188922 m!4777811))

(declare-fun m!4777815 () Bool)

(assert (=> b!4188922 m!4777815))

(declare-fun m!4777817 () Bool)

(assert (=> b!4188922 m!4777817))

(assert (=> b!4188922 m!4777681))

(declare-fun m!4777819 () Bool)

(assert (=> b!4188922 m!4777819))

(assert (=> b!4188922 m!4777811))

(declare-fun m!4777821 () Bool)

(assert (=> b!4188922 m!4777821))

(declare-fun m!4777823 () Bool)

(assert (=> b!4188922 m!4777823))

(assert (=> b!4188922 m!4777817))

(declare-fun m!4777825 () Bool)

(assert (=> b!4188922 m!4777825))

(assert (=> b!4188922 m!4777681))

(assert (=> b!4188919 m!4777805))

(declare-fun m!4777827 () Bool)

(assert (=> b!4188919 m!4777827))

(assert (=> b!4188919 m!4777681))

(declare-fun m!4777829 () Bool)

(assert (=> d!1235759 m!4777829))

(declare-fun m!4777831 () Bool)

(assert (=> d!1235759 m!4777831))

(declare-fun m!4777833 () Bool)

(assert (=> d!1235759 m!4777833))

(assert (=> d!1235759 m!4777689))

(assert (=> b!4188921 m!4777805))

(declare-fun m!4777835 () Bool)

(assert (=> b!4188921 m!4777835))

(assert (=> b!4188921 m!4777835))

(declare-fun m!4777837 () Bool)

(assert (=> b!4188921 m!4777837))

(assert (=> b!4188921 m!4777837))

(declare-fun m!4777839 () Bool)

(assert (=> b!4188921 m!4777839))

(assert (=> b!4188924 m!4777805))

(assert (=> b!4188918 m!4777805))

(declare-fun m!4777841 () Bool)

(assert (=> b!4188918 m!4777841))

(assert (=> b!4188916 m!4777817))

(assert (=> b!4188916 m!4777681))

(assert (=> b!4188916 m!4777817))

(assert (=> b!4188916 m!4777681))

(assert (=> b!4188916 m!4777819))

(declare-fun m!4777843 () Bool)

(assert (=> b!4188916 m!4777843))

(assert (=> b!4188920 m!4777805))

(assert (=> b!4188920 m!4777835))

(assert (=> b!4188920 m!4777835))

(assert (=> b!4188920 m!4777837))

(assert (=> b!4188920 m!4777837))

(declare-fun m!4777845 () Bool)

(assert (=> b!4188920 m!4777845))

(assert (=> b!4188822 d!1235759))

(declare-fun d!1235771 () Bool)

(assert (=> d!1235771 (= (isEmpty!27229 lt!1491897) (not ((_ is Some!9857) lt!1491897)))))

(assert (=> b!4188822 d!1235771))

(declare-fun d!1235773 () Bool)

(assert (=> d!1235773 (<= (size!33785 pBis!107) (size!33785 input!3342))))

(declare-fun lt!1491937 () Unit!65083)

(declare-fun choose!25656 (List!46121 List!46121) Unit!65083)

(assert (=> d!1235773 (= lt!1491937 (choose!25656 pBis!107 input!3342))))

(assert (=> d!1235773 (isPrefix!4521 pBis!107 input!3342)))

(assert (=> d!1235773 (= (lemmaIsPrefixThenSmallerEqSize!551 pBis!107 input!3342) lt!1491937)))

(declare-fun bs!596581 () Bool)

(assert (= bs!596581 d!1235773))

(assert (=> bs!596581 m!4777751))

(assert (=> bs!596581 m!4777681))

(declare-fun m!4777847 () Bool)

(assert (=> bs!596581 m!4777847))

(assert (=> bs!596581 m!4777745))

(assert (=> b!4188822 d!1235773))

(declare-fun d!1235775 () Bool)

(declare-fun lt!1491940 () Int)

(assert (=> d!1235775 (>= lt!1491940 0)))

(declare-fun e!2600427 () Int)

(assert (=> d!1235775 (= lt!1491940 e!2600427)))

(declare-fun c!714899 () Bool)

(assert (=> d!1235775 (= c!714899 ((_ is Nil!45997) input!3342))))

(assert (=> d!1235775 (= (size!33785 input!3342) lt!1491940)))

(declare-fun b!4188929 () Bool)

(assert (=> b!4188929 (= e!2600427 0)))

(declare-fun b!4188930 () Bool)

(assert (=> b!4188930 (= e!2600427 (+ 1 (size!33785 (t!345812 input!3342))))))

(assert (= (and d!1235775 c!714899) b!4188929))

(assert (= (and d!1235775 (not c!714899)) b!4188930))

(declare-fun m!4777849 () Bool)

(assert (=> b!4188930 m!4777849))

(assert (=> b!4188822 d!1235775))

(declare-fun d!1235777 () Bool)

(declare-fun lt!1491941 () Int)

(assert (=> d!1235777 (>= lt!1491941 0)))

(declare-fun e!2600428 () Int)

(assert (=> d!1235777 (= lt!1491941 e!2600428)))

(declare-fun c!714900 () Bool)

(assert (=> d!1235777 (= c!714900 ((_ is Nil!45997) lt!1491895))))

(assert (=> d!1235777 (= (size!33785 lt!1491895) lt!1491941)))

(declare-fun b!4188931 () Bool)

(assert (=> b!4188931 (= e!2600428 0)))

(declare-fun b!4188932 () Bool)

(assert (=> b!4188932 (= e!2600428 (+ 1 (size!33785 (t!345812 lt!1491895))))))

(assert (= (and d!1235777 c!714900) b!4188931))

(assert (= (and d!1235777 (not c!714900)) b!4188932))

(declare-fun m!4777851 () Bool)

(assert (=> b!4188932 m!4777851))

(assert (=> b!4188804 d!1235777))

(declare-fun d!1235779 () Bool)

(declare-fun lt!1491942 () Int)

(assert (=> d!1235779 (>= lt!1491942 0)))

(declare-fun e!2600429 () Int)

(assert (=> d!1235779 (= lt!1491942 e!2600429)))

(declare-fun c!714901 () Bool)

(assert (=> d!1235779 (= c!714901 ((_ is Nil!45997) pBis!107))))

(assert (=> d!1235779 (= (size!33785 pBis!107) lt!1491942)))

(declare-fun b!4188933 () Bool)

(assert (=> b!4188933 (= e!2600429 0)))

(declare-fun b!4188934 () Bool)

(assert (=> b!4188934 (= e!2600429 (+ 1 (size!33785 (t!345812 pBis!107))))))

(assert (= (and d!1235779 c!714901) b!4188933))

(assert (= (and d!1235779 (not c!714901)) b!4188934))

(declare-fun m!4777853 () Bool)

(assert (=> b!4188934 m!4777853))

(assert (=> b!4188794 d!1235779))

(declare-fun d!1235781 () Bool)

(assert (=> d!1235781 (= (inv!60544 (tag!8528 rBis!167)) (= (mod (str.len (value!238955 (tag!8528 rBis!167))) 2) 0))))

(assert (=> b!4188813 d!1235781))

(declare-fun d!1235783 () Bool)

(declare-fun res!1718707 () Bool)

(declare-fun e!2600430 () Bool)

(assert (=> d!1235783 (=> (not res!1718707) (not e!2600430))))

(assert (=> d!1235783 (= res!1718707 (semiInverseModEq!3321 (toChars!10219 (transformation!7664 rBis!167)) (toValue!10360 (transformation!7664 rBis!167))))))

(assert (=> d!1235783 (= (inv!60546 (transformation!7664 rBis!167)) e!2600430)))

(declare-fun b!4188935 () Bool)

(assert (=> b!4188935 (= e!2600430 (equivClasses!3220 (toChars!10219 (transformation!7664 rBis!167)) (toValue!10360 (transformation!7664 rBis!167))))))

(assert (= (and d!1235783 res!1718707) b!4188935))

(declare-fun m!4777855 () Bool)

(assert (=> d!1235783 m!4777855))

(declare-fun m!4777857 () Bool)

(assert (=> b!4188935 m!4777857))

(assert (=> b!4188813 d!1235783))

(declare-fun d!1235785 () Bool)

(declare-fun e!2600433 () Bool)

(assert (=> d!1235785 e!2600433))

(declare-fun res!1718709 () Bool)

(assert (=> d!1235785 (=> res!1718709 e!2600433)))

(declare-fun lt!1491943 () Bool)

(assert (=> d!1235785 (= res!1718709 (not lt!1491943))))

(declare-fun e!2600431 () Bool)

(assert (=> d!1235785 (= lt!1491943 e!2600431)))

(declare-fun res!1718711 () Bool)

(assert (=> d!1235785 (=> res!1718711 e!2600431)))

(assert (=> d!1235785 (= res!1718711 ((_ is Nil!45997) p!2959))))

(assert (=> d!1235785 (= (isPrefix!4521 p!2959 input!3342) lt!1491943)))

(declare-fun b!4188937 () Bool)

(declare-fun res!1718710 () Bool)

(declare-fun e!2600432 () Bool)

(assert (=> b!4188937 (=> (not res!1718710) (not e!2600432))))

(assert (=> b!4188937 (= res!1718710 (= (head!8890 p!2959) (head!8890 input!3342)))))

(declare-fun b!4188939 () Bool)

(assert (=> b!4188939 (= e!2600433 (>= (size!33785 input!3342) (size!33785 p!2959)))))

(declare-fun b!4188936 () Bool)

(assert (=> b!4188936 (= e!2600431 e!2600432)))

(declare-fun res!1718708 () Bool)

(assert (=> b!4188936 (=> (not res!1718708) (not e!2600432))))

(assert (=> b!4188936 (= res!1718708 (not ((_ is Nil!45997) input!3342)))))

(declare-fun b!4188938 () Bool)

(assert (=> b!4188938 (= e!2600432 (isPrefix!4521 (tail!6737 p!2959) (tail!6737 input!3342)))))

(assert (= (and d!1235785 (not res!1718711)) b!4188936))

(assert (= (and b!4188936 res!1718708) b!4188937))

(assert (= (and b!4188937 res!1718710) b!4188938))

(assert (= (and d!1235785 (not res!1718709)) b!4188939))

(declare-fun m!4777859 () Bool)

(assert (=> b!4188937 m!4777859))

(assert (=> b!4188937 m!4777769))

(assert (=> b!4188939 m!4777681))

(assert (=> b!4188939 m!4777733))

(declare-fun m!4777861 () Bool)

(assert (=> b!4188938 m!4777861))

(assert (=> b!4188938 m!4777773))

(assert (=> b!4188938 m!4777861))

(assert (=> b!4188938 m!4777773))

(declare-fun m!4777863 () Bool)

(assert (=> b!4188938 m!4777863))

(assert (=> b!4188814 d!1235785))

(declare-fun d!1235787 () Bool)

(assert (=> d!1235787 (isPrefix!4521 lt!1491895 (++!11736 lt!1491895 (_2!25033 lt!1491888)))))

(declare-fun lt!1491946 () Unit!65083)

(declare-fun choose!25657 (List!46121 List!46121) Unit!65083)

(assert (=> d!1235787 (= lt!1491946 (choose!25657 lt!1491895 (_2!25033 lt!1491888)))))

(assert (=> d!1235787 (= (lemmaConcatTwoListThenFirstIsPrefix!3018 lt!1491895 (_2!25033 lt!1491888)) lt!1491946)))

(declare-fun bs!596582 () Bool)

(assert (= bs!596582 d!1235787))

(assert (=> bs!596582 m!4777699))

(assert (=> bs!596582 m!4777699))

(declare-fun m!4777865 () Bool)

(assert (=> bs!596582 m!4777865))

(declare-fun m!4777867 () Bool)

(assert (=> bs!596582 m!4777867))

(assert (=> b!4188803 d!1235787))

(declare-fun d!1235789 () Bool)

(declare-fun lt!1491949 () BalanceConc!27344)

(assert (=> d!1235789 (= (list!16618 lt!1491949) (originalCharacters!8052 (_1!25033 lt!1491888)))))

(declare-fun dynLambda!19785 (Int TokenValue!7894) BalanceConc!27344)

(assert (=> d!1235789 (= lt!1491949 (dynLambda!19785 (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888)))) (value!238956 (_1!25033 lt!1491888))))))

(assert (=> d!1235789 (= (charsOf!5099 (_1!25033 lt!1491888)) lt!1491949)))

(declare-fun b_lambda!123183 () Bool)

(assert (=> (not b_lambda!123183) (not d!1235789)))

(declare-fun t!345816 () Bool)

(declare-fun tb!250907 () Bool)

(assert (=> (and b!4188821 (= (toChars!10219 (transformation!7664 (h!51419 rules!3843))) (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888))))) t!345816) tb!250907))

(declare-fun b!4188944 () Bool)

(declare-fun e!2600436 () Bool)

(declare-fun tp!1280043 () Bool)

(declare-fun inv!60549 (Conc!13875) Bool)

(assert (=> b!4188944 (= e!2600436 (and (inv!60549 (c!714882 (dynLambda!19785 (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888)))) (value!238956 (_1!25033 lt!1491888))))) tp!1280043))))

(declare-fun result!305772 () Bool)

(declare-fun inv!60550 (BalanceConc!27344) Bool)

(assert (=> tb!250907 (= result!305772 (and (inv!60550 (dynLambda!19785 (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888)))) (value!238956 (_1!25033 lt!1491888)))) e!2600436))))

(assert (= tb!250907 b!4188944))

(declare-fun m!4777869 () Bool)

(assert (=> b!4188944 m!4777869))

(declare-fun m!4777871 () Bool)

(assert (=> tb!250907 m!4777871))

(assert (=> d!1235789 t!345816))

(declare-fun b_and!328149 () Bool)

(assert (= b_and!328139 (and (=> t!345816 result!305772) b_and!328149)))

(declare-fun tb!250909 () Bool)

(declare-fun t!345818 () Bool)

(assert (=> (and b!4188815 (= (toChars!10219 (transformation!7664 rBis!167)) (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888))))) t!345818) tb!250909))

(declare-fun result!305776 () Bool)

(assert (= result!305776 result!305772))

(assert (=> d!1235789 t!345818))

(declare-fun b_and!328151 () Bool)

(assert (= b_and!328143 (and (=> t!345818 result!305776) b_and!328151)))

(declare-fun tb!250911 () Bool)

(declare-fun t!345820 () Bool)

(assert (=> (and b!4188819 (= (toChars!10219 (transformation!7664 r!4142)) (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888))))) t!345820) tb!250911))

(declare-fun result!305778 () Bool)

(assert (= result!305778 result!305772))

(assert (=> d!1235789 t!345820))

(declare-fun b_and!328153 () Bool)

(assert (= b_and!328147 (and (=> t!345820 result!305778) b_and!328153)))

(declare-fun m!4777873 () Bool)

(assert (=> d!1235789 m!4777873))

(declare-fun m!4777875 () Bool)

(assert (=> d!1235789 m!4777875))

(assert (=> b!4188803 d!1235789))

(declare-fun d!1235791 () Bool)

(assert (=> d!1235791 (= (get!14955 lt!1491897) (v!40683 lt!1491897))))

(assert (=> b!4188803 d!1235791))

(declare-fun d!1235793 () Bool)

(declare-fun e!2600441 () Bool)

(assert (=> d!1235793 e!2600441))

(declare-fun res!1718716 () Bool)

(assert (=> d!1235793 (=> (not res!1718716) (not e!2600441))))

(declare-fun lt!1491952 () List!46121)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7160 (List!46121) (InoxSet C!25328))

(assert (=> d!1235793 (= res!1718716 (= (content!7160 lt!1491952) ((_ map or) (content!7160 lt!1491895) (content!7160 (_2!25033 lt!1491888)))))))

(declare-fun e!2600442 () List!46121)

(assert (=> d!1235793 (= lt!1491952 e!2600442)))

(declare-fun c!714904 () Bool)

(assert (=> d!1235793 (= c!714904 ((_ is Nil!45997) lt!1491895))))

(assert (=> d!1235793 (= (++!11736 lt!1491895 (_2!25033 lt!1491888)) lt!1491952)))

(declare-fun b!4188954 () Bool)

(assert (=> b!4188954 (= e!2600442 (Cons!45997 (h!51417 lt!1491895) (++!11736 (t!345812 lt!1491895) (_2!25033 lt!1491888))))))

(declare-fun b!4188955 () Bool)

(declare-fun res!1718717 () Bool)

(assert (=> b!4188955 (=> (not res!1718717) (not e!2600441))))

(assert (=> b!4188955 (= res!1718717 (= (size!33785 lt!1491952) (+ (size!33785 lt!1491895) (size!33785 (_2!25033 lt!1491888)))))))

(declare-fun b!4188956 () Bool)

(assert (=> b!4188956 (= e!2600441 (or (not (= (_2!25033 lt!1491888) Nil!45997)) (= lt!1491952 lt!1491895)))))

(declare-fun b!4188953 () Bool)

(assert (=> b!4188953 (= e!2600442 (_2!25033 lt!1491888))))

(assert (= (and d!1235793 c!714904) b!4188953))

(assert (= (and d!1235793 (not c!714904)) b!4188954))

(assert (= (and d!1235793 res!1718716) b!4188955))

(assert (= (and b!4188955 res!1718717) b!4188956))

(declare-fun m!4777877 () Bool)

(assert (=> d!1235793 m!4777877))

(declare-fun m!4777879 () Bool)

(assert (=> d!1235793 m!4777879))

(declare-fun m!4777881 () Bool)

(assert (=> d!1235793 m!4777881))

(declare-fun m!4777883 () Bool)

(assert (=> b!4188954 m!4777883))

(declare-fun m!4777885 () Bool)

(assert (=> b!4188955 m!4777885))

(assert (=> b!4188955 m!4777693))

(declare-fun m!4777887 () Bool)

(assert (=> b!4188955 m!4777887))

(assert (=> b!4188803 d!1235793))

(declare-fun d!1235795 () Bool)

(declare-fun list!16619 (Conc!13875) List!46121)

(assert (=> d!1235795 (= (list!16618 lt!1491891) (list!16619 (c!714882 lt!1491891)))))

(declare-fun bs!596583 () Bool)

(assert (= bs!596583 d!1235795))

(declare-fun m!4777889 () Bool)

(assert (=> bs!596583 m!4777889))

(assert (=> b!4188803 d!1235795))

(declare-fun d!1235797 () Bool)

(declare-fun e!2600445 () Bool)

(assert (=> d!1235797 e!2600445))

(declare-fun res!1718719 () Bool)

(assert (=> d!1235797 (=> res!1718719 e!2600445)))

(declare-fun lt!1491953 () Bool)

(assert (=> d!1235797 (= res!1718719 (not lt!1491953))))

(declare-fun e!2600443 () Bool)

(assert (=> d!1235797 (= lt!1491953 e!2600443)))

(declare-fun res!1718721 () Bool)

(assert (=> d!1235797 (=> res!1718721 e!2600443)))

(assert (=> d!1235797 (= res!1718721 ((_ is Nil!45997) lt!1491895))))

(assert (=> d!1235797 (= (isPrefix!4521 lt!1491895 lt!1491902) lt!1491953)))

(declare-fun b!4188958 () Bool)

(declare-fun res!1718720 () Bool)

(declare-fun e!2600444 () Bool)

(assert (=> b!4188958 (=> (not res!1718720) (not e!2600444))))

(assert (=> b!4188958 (= res!1718720 (= (head!8890 lt!1491895) (head!8890 lt!1491902)))))

(declare-fun b!4188960 () Bool)

(assert (=> b!4188960 (= e!2600445 (>= (size!33785 lt!1491902) (size!33785 lt!1491895)))))

(declare-fun b!4188957 () Bool)

(assert (=> b!4188957 (= e!2600443 e!2600444)))

(declare-fun res!1718718 () Bool)

(assert (=> b!4188957 (=> (not res!1718718) (not e!2600444))))

(assert (=> b!4188957 (= res!1718718 (not ((_ is Nil!45997) lt!1491902)))))

(declare-fun b!4188959 () Bool)

(assert (=> b!4188959 (= e!2600444 (isPrefix!4521 (tail!6737 lt!1491895) (tail!6737 lt!1491902)))))

(assert (= (and d!1235797 (not res!1718721)) b!4188957))

(assert (= (and b!4188957 res!1718718) b!4188958))

(assert (= (and b!4188958 res!1718720) b!4188959))

(assert (= (and d!1235797 (not res!1718719)) b!4188960))

(assert (=> b!4188958 m!4777767))

(declare-fun m!4777891 () Bool)

(assert (=> b!4188958 m!4777891))

(declare-fun m!4777893 () Bool)

(assert (=> b!4188960 m!4777893))

(assert (=> b!4188960 m!4777693))

(assert (=> b!4188959 m!4777771))

(declare-fun m!4777895 () Bool)

(assert (=> b!4188959 m!4777895))

(assert (=> b!4188959 m!4777771))

(assert (=> b!4188959 m!4777895))

(declare-fun m!4777897 () Bool)

(assert (=> b!4188959 m!4777897))

(assert (=> b!4188803 d!1235797))

(declare-fun d!1235799 () Bool)

(declare-fun e!2600448 () Bool)

(assert (=> d!1235799 e!2600448))

(declare-fun res!1718723 () Bool)

(assert (=> d!1235799 (=> res!1718723 e!2600448)))

(declare-fun lt!1491954 () Bool)

(assert (=> d!1235799 (= res!1718723 (not lt!1491954))))

(declare-fun e!2600446 () Bool)

(assert (=> d!1235799 (= lt!1491954 e!2600446)))

(declare-fun res!1718725 () Bool)

(assert (=> d!1235799 (=> res!1718725 e!2600446)))

(assert (=> d!1235799 (= res!1718725 ((_ is Nil!45997) pBis!107))))

(assert (=> d!1235799 (= (isPrefix!4521 pBis!107 input!3342) lt!1491954)))

(declare-fun b!4188962 () Bool)

(declare-fun res!1718724 () Bool)

(declare-fun e!2600447 () Bool)

(assert (=> b!4188962 (=> (not res!1718724) (not e!2600447))))

(assert (=> b!4188962 (= res!1718724 (= (head!8890 pBis!107) (head!8890 input!3342)))))

(declare-fun b!4188964 () Bool)

(assert (=> b!4188964 (= e!2600448 (>= (size!33785 input!3342) (size!33785 pBis!107)))))

(declare-fun b!4188961 () Bool)

(assert (=> b!4188961 (= e!2600446 e!2600447)))

(declare-fun res!1718722 () Bool)

(assert (=> b!4188961 (=> (not res!1718722) (not e!2600447))))

(assert (=> b!4188961 (= res!1718722 (not ((_ is Nil!45997) input!3342)))))

(declare-fun b!4188963 () Bool)

(assert (=> b!4188963 (= e!2600447 (isPrefix!4521 (tail!6737 pBis!107) (tail!6737 input!3342)))))

(assert (= (and d!1235799 (not res!1718725)) b!4188961))

(assert (= (and b!4188961 res!1718722) b!4188962))

(assert (= (and b!4188962 res!1718724) b!4188963))

(assert (= (and d!1235799 (not res!1718723)) b!4188964))

(declare-fun m!4777899 () Bool)

(assert (=> b!4188962 m!4777899))

(assert (=> b!4188962 m!4777769))

(assert (=> b!4188964 m!4777681))

(assert (=> b!4188964 m!4777751))

(declare-fun m!4777901 () Bool)

(assert (=> b!4188963 m!4777901))

(assert (=> b!4188963 m!4777773))

(assert (=> b!4188963 m!4777901))

(assert (=> b!4188963 m!4777773))

(declare-fun m!4777903 () Bool)

(assert (=> b!4188963 m!4777903))

(assert (=> b!4188796 d!1235799))

(declare-fun d!1235801 () Bool)

(declare-fun lt!1491957 () Bool)

(declare-fun content!7161 (List!46123) (InoxSet Rule!15128))

(assert (=> d!1235801 (= lt!1491957 (select (content!7161 rules!3843) rBis!167))))

(declare-fun e!2600453 () Bool)

(assert (=> d!1235801 (= lt!1491957 e!2600453)))

(declare-fun res!1718730 () Bool)

(assert (=> d!1235801 (=> (not res!1718730) (not e!2600453))))

(assert (=> d!1235801 (= res!1718730 ((_ is Cons!45999) rules!3843))))

(assert (=> d!1235801 (= (contains!9473 rules!3843 rBis!167) lt!1491957)))

(declare-fun b!4188969 () Bool)

(declare-fun e!2600454 () Bool)

(assert (=> b!4188969 (= e!2600453 e!2600454)))

(declare-fun res!1718731 () Bool)

(assert (=> b!4188969 (=> res!1718731 e!2600454)))

(assert (=> b!4188969 (= res!1718731 (= (h!51419 rules!3843) rBis!167))))

(declare-fun b!4188970 () Bool)

(assert (=> b!4188970 (= e!2600454 (contains!9473 (t!345814 rules!3843) rBis!167))))

(assert (= (and d!1235801 res!1718730) b!4188969))

(assert (= (and b!4188969 (not res!1718731)) b!4188970))

(declare-fun m!4777905 () Bool)

(assert (=> d!1235801 m!4777905))

(declare-fun m!4777907 () Bool)

(assert (=> d!1235801 m!4777907))

(declare-fun m!4777909 () Bool)

(assert (=> b!4188970 m!4777909))

(assert (=> b!4188817 d!1235801))

(declare-fun d!1235803 () Bool)

(declare-fun res!1718734 () Bool)

(declare-fun e!2600457 () Bool)

(assert (=> d!1235803 (=> (not res!1718734) (not e!2600457))))

(declare-fun rulesValid!2990 (LexerInterface!7257 List!46123) Bool)

(assert (=> d!1235803 (= res!1718734 (rulesValid!2990 thiss!25986 rules!3843))))

(assert (=> d!1235803 (= (rulesInvariant!6470 thiss!25986 rules!3843) e!2600457)))

(declare-fun b!4188973 () Bool)

(declare-datatypes ((List!46125 0))(
  ( (Nil!46001) (Cons!46001 (h!51421 String!53336) (t!345864 List!46125)) )
))
(declare-fun noDuplicateTag!3151 (LexerInterface!7257 List!46123 List!46125) Bool)

(assert (=> b!4188973 (= e!2600457 (noDuplicateTag!3151 thiss!25986 rules!3843 Nil!46001))))

(assert (= (and d!1235803 res!1718734) b!4188973))

(declare-fun m!4777911 () Bool)

(assert (=> d!1235803 m!4777911))

(declare-fun m!4777913 () Bool)

(assert (=> b!4188973 m!4777913))

(assert (=> b!4188807 d!1235803))

(declare-fun d!1235805 () Bool)

(declare-fun res!1718735 () Bool)

(declare-fun e!2600458 () Bool)

(assert (=> d!1235805 (=> (not res!1718735) (not e!2600458))))

(assert (=> d!1235805 (= res!1718735 (validRegex!5686 (regex!7664 rBis!167)))))

(assert (=> d!1235805 (= (ruleValid!3382 thiss!25986 rBis!167) e!2600458)))

(declare-fun b!4188974 () Bool)

(declare-fun res!1718736 () Bool)

(assert (=> b!4188974 (=> (not res!1718736) (not e!2600458))))

(assert (=> b!4188974 (= res!1718736 (not (nullable!4413 (regex!7664 rBis!167))))))

(declare-fun b!4188975 () Bool)

(assert (=> b!4188975 (= e!2600458 (not (= (tag!8528 rBis!167) (String!53337 ""))))))

(assert (= (and d!1235805 res!1718735) b!4188974))

(assert (= (and b!4188974 res!1718736) b!4188975))

(declare-fun m!4777915 () Bool)

(assert (=> d!1235805 m!4777915))

(declare-fun m!4777917 () Bool)

(assert (=> b!4188974 m!4777917))

(assert (=> b!4188816 d!1235805))

(declare-fun d!1235807 () Bool)

(assert (=> d!1235807 (= (inv!60544 (tag!8528 r!4142)) (= (mod (str.len (value!238955 (tag!8528 r!4142))) 2) 0))))

(assert (=> b!4188805 d!1235807))

(declare-fun d!1235809 () Bool)

(declare-fun res!1718737 () Bool)

(declare-fun e!2600459 () Bool)

(assert (=> d!1235809 (=> (not res!1718737) (not e!2600459))))

(assert (=> d!1235809 (= res!1718737 (semiInverseModEq!3321 (toChars!10219 (transformation!7664 r!4142)) (toValue!10360 (transformation!7664 r!4142))))))

(assert (=> d!1235809 (= (inv!60546 (transformation!7664 r!4142)) e!2600459)))

(declare-fun b!4188976 () Bool)

(assert (=> b!4188976 (= e!2600459 (equivClasses!3220 (toChars!10219 (transformation!7664 r!4142)) (toValue!10360 (transformation!7664 r!4142))))))

(assert (= (and d!1235809 res!1718737) b!4188976))

(declare-fun m!4777919 () Bool)

(assert (=> d!1235809 m!4777919))

(declare-fun m!4777921 () Bool)

(assert (=> b!4188976 m!4777921))

(assert (=> b!4188805 d!1235809))

(declare-fun b!4189006 () Bool)

(declare-fun e!2600474 () Bool)

(declare-fun e!2600480 () Bool)

(assert (=> b!4189006 (= e!2600474 e!2600480)))

(declare-fun res!1718761 () Bool)

(assert (=> b!4189006 (=> res!1718761 e!2600480)))

(declare-fun call!292078 () Bool)

(assert (=> b!4189006 (= res!1718761 call!292078)))

(declare-fun b!4189007 () Bool)

(declare-fun res!1718760 () Bool)

(declare-fun e!2600478 () Bool)

(assert (=> b!4189007 (=> res!1718760 e!2600478)))

(declare-fun e!2600477 () Bool)

(assert (=> b!4189007 (= res!1718760 e!2600477)))

(declare-fun res!1718758 () Bool)

(assert (=> b!4189007 (=> (not res!1718758) (not e!2600477))))

(declare-fun lt!1491960 () Bool)

(assert (=> b!4189007 (= res!1718758 lt!1491960)))

(declare-fun b!4189008 () Bool)

(declare-fun res!1718755 () Bool)

(assert (=> b!4189008 (=> res!1718755 e!2600480)))

(assert (=> b!4189008 (= res!1718755 (not (isEmpty!27231 (tail!6737 p!2959))))))

(declare-fun b!4189009 () Bool)

(declare-fun e!2600479 () Bool)

(assert (=> b!4189009 (= e!2600479 (nullable!4413 (regex!7664 r!4142)))))

(declare-fun bm!292073 () Bool)

(assert (=> bm!292073 (= call!292078 (isEmpty!27231 p!2959))))

(declare-fun b!4189010 () Bool)

(declare-fun res!1718754 () Bool)

(assert (=> b!4189010 (=> (not res!1718754) (not e!2600477))))

(assert (=> b!4189010 (= res!1718754 (isEmpty!27231 (tail!6737 p!2959)))))

(declare-fun b!4189011 () Bool)

(declare-fun res!1718757 () Bool)

(assert (=> b!4189011 (=> (not res!1718757) (not e!2600477))))

(assert (=> b!4189011 (= res!1718757 (not call!292078))))

(declare-fun b!4189012 () Bool)

(declare-fun e!2600475 () Bool)

(assert (=> b!4189012 (= e!2600475 (not lt!1491960))))

(declare-fun b!4189005 () Bool)

(declare-fun e!2600476 () Bool)

(assert (=> b!4189005 (= e!2600476 (= lt!1491960 call!292078))))

(declare-fun d!1235811 () Bool)

(assert (=> d!1235811 e!2600476))

(declare-fun c!714911 () Bool)

(assert (=> d!1235811 (= c!714911 ((_ is EmptyExpr!12569) (regex!7664 r!4142)))))

(assert (=> d!1235811 (= lt!1491960 e!2600479)))

(declare-fun c!714912 () Bool)

(assert (=> d!1235811 (= c!714912 (isEmpty!27231 p!2959))))

(assert (=> d!1235811 (validRegex!5686 (regex!7664 r!4142))))

(assert (=> d!1235811 (= (matchR!6308 (regex!7664 r!4142) p!2959) lt!1491960)))

(declare-fun b!4189013 () Bool)

(declare-fun res!1718759 () Bool)

(assert (=> b!4189013 (=> res!1718759 e!2600478)))

(assert (=> b!4189013 (= res!1718759 (not ((_ is ElementMatch!12569) (regex!7664 r!4142))))))

(assert (=> b!4189013 (= e!2600475 e!2600478)))

(declare-fun b!4189014 () Bool)

(declare-fun derivativeStep!3803 (Regex!12569 C!25328) Regex!12569)

(assert (=> b!4189014 (= e!2600479 (matchR!6308 (derivativeStep!3803 (regex!7664 r!4142) (head!8890 p!2959)) (tail!6737 p!2959)))))

(declare-fun b!4189015 () Bool)

(assert (=> b!4189015 (= e!2600480 (not (= (head!8890 p!2959) (c!714883 (regex!7664 r!4142)))))))

(declare-fun b!4189016 () Bool)

(assert (=> b!4189016 (= e!2600478 e!2600474)))

(declare-fun res!1718756 () Bool)

(assert (=> b!4189016 (=> (not res!1718756) (not e!2600474))))

(assert (=> b!4189016 (= res!1718756 (not lt!1491960))))

(declare-fun b!4189017 () Bool)

(assert (=> b!4189017 (= e!2600476 e!2600475)))

(declare-fun c!714913 () Bool)

(assert (=> b!4189017 (= c!714913 ((_ is EmptyLang!12569) (regex!7664 r!4142)))))

(declare-fun b!4189018 () Bool)

(assert (=> b!4189018 (= e!2600477 (= (head!8890 p!2959) (c!714883 (regex!7664 r!4142))))))

(assert (= (and d!1235811 c!714912) b!4189009))

(assert (= (and d!1235811 (not c!714912)) b!4189014))

(assert (= (and d!1235811 c!714911) b!4189005))

(assert (= (and d!1235811 (not c!714911)) b!4189017))

(assert (= (and b!4189017 c!714913) b!4189012))

(assert (= (and b!4189017 (not c!714913)) b!4189013))

(assert (= (and b!4189013 (not res!1718759)) b!4189007))

(assert (= (and b!4189007 res!1718758) b!4189011))

(assert (= (and b!4189011 res!1718757) b!4189010))

(assert (= (and b!4189010 res!1718754) b!4189018))

(assert (= (and b!4189007 (not res!1718760)) b!4189016))

(assert (= (and b!4189016 res!1718756) b!4189006))

(assert (= (and b!4189006 (not res!1718761)) b!4189008))

(assert (= (and b!4189008 (not res!1718755)) b!4189015))

(assert (= (or b!4189005 b!4189006 b!4189011) bm!292073))

(declare-fun m!4777923 () Bool)

(assert (=> bm!292073 m!4777923))

(assert (=> b!4189008 m!4777861))

(assert (=> b!4189008 m!4777861))

(declare-fun m!4777925 () Bool)

(assert (=> b!4189008 m!4777925))

(assert (=> b!4189010 m!4777861))

(assert (=> b!4189010 m!4777861))

(assert (=> b!4189010 m!4777925))

(assert (=> b!4189014 m!4777859))

(assert (=> b!4189014 m!4777859))

(declare-fun m!4777927 () Bool)

(assert (=> b!4189014 m!4777927))

(assert (=> b!4189014 m!4777861))

(assert (=> b!4189014 m!4777927))

(assert (=> b!4189014 m!4777861))

(declare-fun m!4777929 () Bool)

(assert (=> b!4189014 m!4777929))

(assert (=> d!1235811 m!4777923))

(assert (=> d!1235811 m!4777695))

(assert (=> b!4189018 m!4777859))

(assert (=> b!4189009 m!4777781))

(assert (=> b!4189015 m!4777859))

(assert (=> b!4188795 d!1235811))

(declare-fun d!1235813 () Bool)

(declare-fun dynLambda!19786 (Int BalanceConc!27344) TokenValue!7894)

(assert (=> d!1235813 (= (apply!10629 (transformation!7664 r!4142) lt!1491898) (dynLambda!19786 (toValue!10360 (transformation!7664 r!4142)) lt!1491898))))

(declare-fun b_lambda!123185 () Bool)

(assert (=> (not b_lambda!123185) (not d!1235813)))

(declare-fun tb!250913 () Bool)

(declare-fun t!345822 () Bool)

(assert (=> (and b!4188821 (= (toValue!10360 (transformation!7664 (h!51419 rules!3843))) (toValue!10360 (transformation!7664 r!4142))) t!345822) tb!250913))

(declare-fun result!305780 () Bool)

(declare-fun inv!21 (TokenValue!7894) Bool)

(assert (=> tb!250913 (= result!305780 (inv!21 (dynLambda!19786 (toValue!10360 (transformation!7664 r!4142)) lt!1491898)))))

(declare-fun m!4777931 () Bool)

(assert (=> tb!250913 m!4777931))

(assert (=> d!1235813 t!345822))

(declare-fun b_and!328155 () Bool)

(assert (= b_and!328137 (and (=> t!345822 result!305780) b_and!328155)))

(declare-fun tb!250915 () Bool)

(declare-fun t!345824 () Bool)

(assert (=> (and b!4188815 (= (toValue!10360 (transformation!7664 rBis!167)) (toValue!10360 (transformation!7664 r!4142))) t!345824) tb!250915))

(declare-fun result!305784 () Bool)

(assert (= result!305784 result!305780))

(assert (=> d!1235813 t!345824))

(declare-fun b_and!328157 () Bool)

(assert (= b_and!328141 (and (=> t!345824 result!305784) b_and!328157)))

(declare-fun t!345826 () Bool)

(declare-fun tb!250917 () Bool)

(assert (=> (and b!4188819 (= (toValue!10360 (transformation!7664 r!4142)) (toValue!10360 (transformation!7664 r!4142))) t!345826) tb!250917))

(declare-fun result!305786 () Bool)

(assert (= result!305786 result!305780))

(assert (=> d!1235813 t!345826))

(declare-fun b_and!328159 () Bool)

(assert (= b_and!328145 (and (=> t!345826 result!305786) b_and!328159)))

(declare-fun m!4777933 () Bool)

(assert (=> d!1235813 m!4777933))

(assert (=> b!4188820 d!1235813))

(declare-fun d!1235815 () Bool)

(declare-fun lt!1491963 () List!46121)

(assert (=> d!1235815 (= (++!11736 p!2959 lt!1491963) input!3342)))

(declare-fun e!2600486 () List!46121)

(assert (=> d!1235815 (= lt!1491963 e!2600486)))

(declare-fun c!714916 () Bool)

(assert (=> d!1235815 (= c!714916 ((_ is Cons!45997) p!2959))))

(assert (=> d!1235815 (>= (size!33785 input!3342) (size!33785 p!2959))))

(assert (=> d!1235815 (= (getSuffix!2814 input!3342 p!2959) lt!1491963)))

(declare-fun b!4189025 () Bool)

(assert (=> b!4189025 (= e!2600486 (getSuffix!2814 (tail!6737 input!3342) (t!345812 p!2959)))))

(declare-fun b!4189026 () Bool)

(assert (=> b!4189026 (= e!2600486 input!3342)))

(assert (= (and d!1235815 c!714916) b!4189025))

(assert (= (and d!1235815 (not c!714916)) b!4189026))

(declare-fun m!4777935 () Bool)

(assert (=> d!1235815 m!4777935))

(assert (=> d!1235815 m!4777681))

(assert (=> d!1235815 m!4777733))

(assert (=> b!4189025 m!4777773))

(assert (=> b!4189025 m!4777773))

(declare-fun m!4777937 () Bool)

(assert (=> b!4189025 m!4777937))

(assert (=> b!4188820 d!1235815))

(declare-fun d!1235817 () Bool)

(declare-fun e!2600489 () Bool)

(assert (=> d!1235817 e!2600489))

(declare-fun res!1718763 () Bool)

(assert (=> d!1235817 (=> res!1718763 e!2600489)))

(declare-fun lt!1491964 () Bool)

(assert (=> d!1235817 (= res!1718763 (not lt!1491964))))

(declare-fun e!2600487 () Bool)

(assert (=> d!1235817 (= lt!1491964 e!2600487)))

(declare-fun res!1718765 () Bool)

(assert (=> d!1235817 (=> res!1718765 e!2600487)))

(assert (=> d!1235817 (= res!1718765 ((_ is Nil!45997) input!3342))))

(assert (=> d!1235817 (= (isPrefix!4521 input!3342 input!3342) lt!1491964)))

(declare-fun b!4189028 () Bool)

(declare-fun res!1718764 () Bool)

(declare-fun e!2600488 () Bool)

(assert (=> b!4189028 (=> (not res!1718764) (not e!2600488))))

(assert (=> b!4189028 (= res!1718764 (= (head!8890 input!3342) (head!8890 input!3342)))))

(declare-fun b!4189030 () Bool)

(assert (=> b!4189030 (= e!2600489 (>= (size!33785 input!3342) (size!33785 input!3342)))))

(declare-fun b!4189027 () Bool)

(assert (=> b!4189027 (= e!2600487 e!2600488)))

(declare-fun res!1718762 () Bool)

(assert (=> b!4189027 (=> (not res!1718762) (not e!2600488))))

(assert (=> b!4189027 (= res!1718762 (not ((_ is Nil!45997) input!3342)))))

(declare-fun b!4189029 () Bool)

(assert (=> b!4189029 (= e!2600488 (isPrefix!4521 (tail!6737 input!3342) (tail!6737 input!3342)))))

(assert (= (and d!1235817 (not res!1718765)) b!4189027))

(assert (= (and b!4189027 res!1718762) b!4189028))

(assert (= (and b!4189028 res!1718764) b!4189029))

(assert (= (and d!1235817 (not res!1718763)) b!4189030))

(assert (=> b!4189028 m!4777769))

(assert (=> b!4189028 m!4777769))

(assert (=> b!4189030 m!4777681))

(assert (=> b!4189030 m!4777681))

(assert (=> b!4189029 m!4777773))

(assert (=> b!4189029 m!4777773))

(assert (=> b!4189029 m!4777773))

(assert (=> b!4189029 m!4777773))

(declare-fun m!4777939 () Bool)

(assert (=> b!4189029 m!4777939))

(assert (=> b!4188820 d!1235817))

(declare-fun b!4189202 () Bool)

(declare-fun e!2600582 () Bool)

(assert (=> b!4189202 (= e!2600582 true)))

(declare-fun d!1235819 () Bool)

(assert (=> d!1235819 e!2600582))

(assert (= d!1235819 b!4189202))

(declare-fun order!24325 () Int)

(declare-fun lambda!129469 () Int)

(declare-fun order!24327 () Int)

(declare-fun dynLambda!19787 (Int Int) Int)

(declare-fun dynLambda!19788 (Int Int) Int)

(assert (=> b!4189202 (< (dynLambda!19787 order!24325 (toValue!10360 (transformation!7664 r!4142))) (dynLambda!19788 order!24327 lambda!129469))))

(declare-fun order!24329 () Int)

(declare-fun dynLambda!19789 (Int Int) Int)

(assert (=> b!4189202 (< (dynLambda!19789 order!24329 (toChars!10219 (transformation!7664 r!4142))) (dynLambda!19788 order!24327 lambda!129469))))

(assert (=> d!1235819 (= (list!16618 (dynLambda!19785 (toChars!10219 (transformation!7664 r!4142)) (dynLambda!19786 (toValue!10360 (transformation!7664 r!4142)) lt!1491898))) (list!16618 lt!1491898))))

(declare-fun lt!1492036 () Unit!65083)

(declare-fun ForallOf!1056 (Int BalanceConc!27344) Unit!65083)

(assert (=> d!1235819 (= lt!1492036 (ForallOf!1056 lambda!129469 lt!1491898))))

(assert (=> d!1235819 (= (lemmaSemiInverse!2430 (transformation!7664 r!4142) lt!1491898) lt!1492036)))

(declare-fun b_lambda!123195 () Bool)

(assert (=> (not b_lambda!123195) (not d!1235819)))

(declare-fun tb!250937 () Bool)

(declare-fun t!345846 () Bool)

(assert (=> (and b!4188821 (= (toChars!10219 (transformation!7664 (h!51419 rules!3843))) (toChars!10219 (transformation!7664 r!4142))) t!345846) tb!250937))

(declare-fun b!4189203 () Bool)

(declare-fun e!2600583 () Bool)

(declare-fun tp!1280048 () Bool)

(assert (=> b!4189203 (= e!2600583 (and (inv!60549 (c!714882 (dynLambda!19785 (toChars!10219 (transformation!7664 r!4142)) (dynLambda!19786 (toValue!10360 (transformation!7664 r!4142)) lt!1491898)))) tp!1280048))))

(declare-fun result!305810 () Bool)

(assert (=> tb!250937 (= result!305810 (and (inv!60550 (dynLambda!19785 (toChars!10219 (transformation!7664 r!4142)) (dynLambda!19786 (toValue!10360 (transformation!7664 r!4142)) lt!1491898))) e!2600583))))

(assert (= tb!250937 b!4189203))

(declare-fun m!4778159 () Bool)

(assert (=> b!4189203 m!4778159))

(declare-fun m!4778161 () Bool)

(assert (=> tb!250937 m!4778161))

(assert (=> d!1235819 t!345846))

(declare-fun b_and!328185 () Bool)

(assert (= b_and!328149 (and (=> t!345846 result!305810) b_and!328185)))

(declare-fun t!345848 () Bool)

(declare-fun tb!250939 () Bool)

(assert (=> (and b!4188815 (= (toChars!10219 (transformation!7664 rBis!167)) (toChars!10219 (transformation!7664 r!4142))) t!345848) tb!250939))

(declare-fun result!305812 () Bool)

(assert (= result!305812 result!305810))

(assert (=> d!1235819 t!345848))

(declare-fun b_and!328187 () Bool)

(assert (= b_and!328151 (and (=> t!345848 result!305812) b_and!328187)))

(declare-fun t!345850 () Bool)

(declare-fun tb!250941 () Bool)

(assert (=> (and b!4188819 (= (toChars!10219 (transformation!7664 r!4142)) (toChars!10219 (transformation!7664 r!4142))) t!345850) tb!250941))

(declare-fun result!305814 () Bool)

(assert (= result!305814 result!305810))

(assert (=> d!1235819 t!345850))

(declare-fun b_and!328189 () Bool)

(assert (= b_and!328153 (and (=> t!345850 result!305814) b_and!328189)))

(declare-fun b_lambda!123197 () Bool)

(assert (=> (not b_lambda!123197) (not d!1235819)))

(assert (=> d!1235819 t!345822))

(declare-fun b_and!328191 () Bool)

(assert (= b_and!328155 (and (=> t!345822 result!305780) b_and!328191)))

(assert (=> d!1235819 t!345824))

(declare-fun b_and!328193 () Bool)

(assert (= b_and!328157 (and (=> t!345824 result!305784) b_and!328193)))

(assert (=> d!1235819 t!345826))

(declare-fun b_and!328195 () Bool)

(assert (= b_and!328159 (and (=> t!345826 result!305786) b_and!328195)))

(declare-fun m!4778169 () Bool)

(assert (=> d!1235819 m!4778169))

(declare-fun m!4778171 () Bool)

(assert (=> d!1235819 m!4778171))

(assert (=> d!1235819 m!4777933))

(declare-fun m!4778173 () Bool)

(assert (=> d!1235819 m!4778173))

(declare-fun m!4778175 () Bool)

(assert (=> d!1235819 m!4778175))

(assert (=> d!1235819 m!4777933))

(assert (=> d!1235819 m!4778169))

(assert (=> b!4188820 d!1235819))

(declare-fun d!1235885 () Bool)

(declare-fun fromListB!2605 (List!46121) BalanceConc!27344)

(assert (=> d!1235885 (= (seqFromList!5689 p!2959) (fromListB!2605 p!2959))))

(declare-fun bs!596589 () Bool)

(assert (= bs!596589 d!1235885))

(declare-fun m!4778179 () Bool)

(assert (=> bs!596589 m!4778179))

(assert (=> b!4188820 d!1235885))

(declare-fun d!1235887 () Bool)

(assert (=> d!1235887 (isPrefix!4521 input!3342 input!3342)))

(declare-fun lt!1492041 () Unit!65083)

(declare-fun choose!25659 (List!46121 List!46121) Unit!65083)

(assert (=> d!1235887 (= lt!1492041 (choose!25659 input!3342 input!3342))))

(assert (=> d!1235887 (= (lemmaIsPrefixRefl!2950 input!3342 input!3342) lt!1492041)))

(declare-fun bs!596590 () Bool)

(assert (= bs!596590 d!1235887))

(assert (=> bs!596590 m!4777727))

(declare-fun m!4778181 () Bool)

(assert (=> bs!596590 m!4778181))

(assert (=> b!4188820 d!1235887))

(declare-fun b!4189247 () Bool)

(declare-fun e!2600609 () Bool)

(assert (=> b!4189247 (= e!2600609 (matchR!6308 (regex!7664 r!4142) (_1!25035 (findLongestMatchInner!1603 (regex!7664 r!4142) Nil!45997 (size!33785 Nil!45997) input!3342 input!3342 (size!33785 input!3342)))))))

(declare-fun b!4189248 () Bool)

(declare-fun res!1718879 () Bool)

(declare-fun e!2600606 () Bool)

(assert (=> b!4189248 (=> (not res!1718879) (not e!2600606))))

(declare-fun lt!1492046 () Option!9858)

(assert (=> b!4189248 (= res!1718879 (= (value!238956 (_1!25033 (get!14955 lt!1492046))) (apply!10629 (transformation!7664 (rule!10742 (_1!25033 (get!14955 lt!1492046)))) (seqFromList!5689 (originalCharacters!8052 (_1!25033 (get!14955 lt!1492046)))))))))

(declare-fun d!1235889 () Bool)

(declare-fun e!2600608 () Bool)

(assert (=> d!1235889 e!2600608))

(declare-fun res!1718876 () Bool)

(assert (=> d!1235889 (=> res!1718876 e!2600608)))

(assert (=> d!1235889 (= res!1718876 (isEmpty!27229 lt!1492046))))

(declare-fun e!2600607 () Option!9858)

(assert (=> d!1235889 (= lt!1492046 e!2600607)))

(declare-fun c!714943 () Bool)

(declare-fun lt!1492045 () tuple2!43802)

(assert (=> d!1235889 (= c!714943 (isEmpty!27231 (_1!25035 lt!1492045)))))

(assert (=> d!1235889 (= lt!1492045 (findLongestMatch!1516 (regex!7664 r!4142) input!3342))))

(assert (=> d!1235889 (ruleValid!3382 thiss!25986 r!4142)))

(assert (=> d!1235889 (= (maxPrefixOneRule!3266 thiss!25986 r!4142 input!3342) lt!1492046)))

(declare-fun b!4189249 () Bool)

(assert (=> b!4189249 (= e!2600606 (= (size!33786 (_1!25033 (get!14955 lt!1492046))) (size!33785 (originalCharacters!8052 (_1!25033 (get!14955 lt!1492046))))))))

(declare-fun b!4189250 () Bool)

(declare-fun res!1718882 () Bool)

(assert (=> b!4189250 (=> (not res!1718882) (not e!2600606))))

(assert (=> b!4189250 (= res!1718882 (< (size!33785 (_2!25033 (get!14955 lt!1492046))) (size!33785 input!3342)))))

(declare-fun b!4189251 () Bool)

(assert (=> b!4189251 (= e!2600608 e!2600606)))

(declare-fun res!1718878 () Bool)

(assert (=> b!4189251 (=> (not res!1718878) (not e!2600606))))

(assert (=> b!4189251 (= res!1718878 (matchR!6308 (regex!7664 r!4142) (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1492046))))))))

(declare-fun b!4189252 () Bool)

(declare-fun res!1718880 () Bool)

(assert (=> b!4189252 (=> (not res!1718880) (not e!2600606))))

(assert (=> b!4189252 (= res!1718880 (= (++!11736 (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1492046)))) (_2!25033 (get!14955 lt!1492046))) input!3342))))

(declare-fun b!4189253 () Bool)

(assert (=> b!4189253 (= e!2600607 (Some!9857 (tuple2!43799 (Token!14043 (apply!10629 (transformation!7664 r!4142) (seqFromList!5689 (_1!25035 lt!1492045))) r!4142 (size!33787 (seqFromList!5689 (_1!25035 lt!1492045))) (_1!25035 lt!1492045)) (_2!25035 lt!1492045))))))

(declare-fun lt!1492043 () Unit!65083)

(assert (=> b!4189253 (= lt!1492043 (longestMatchIsAcceptedByMatchOrIsEmpty!1576 (regex!7664 r!4142) input!3342))))

(declare-fun res!1718877 () Bool)

(assert (=> b!4189253 (= res!1718877 (isEmpty!27231 (_1!25035 (findLongestMatchInner!1603 (regex!7664 r!4142) Nil!45997 (size!33785 Nil!45997) input!3342 input!3342 (size!33785 input!3342)))))))

(assert (=> b!4189253 (=> res!1718877 e!2600609)))

(assert (=> b!4189253 e!2600609))

(declare-fun lt!1492044 () Unit!65083)

(assert (=> b!4189253 (= lt!1492044 lt!1492043)))

(declare-fun lt!1492042 () Unit!65083)

(assert (=> b!4189253 (= lt!1492042 (lemmaSemiInverse!2430 (transformation!7664 r!4142) (seqFromList!5689 (_1!25035 lt!1492045))))))

(declare-fun b!4189254 () Bool)

(assert (=> b!4189254 (= e!2600607 None!9857)))

(declare-fun b!4189255 () Bool)

(declare-fun res!1718881 () Bool)

(assert (=> b!4189255 (=> (not res!1718881) (not e!2600606))))

(assert (=> b!4189255 (= res!1718881 (= (rule!10742 (_1!25033 (get!14955 lt!1492046))) r!4142))))

(assert (= (and d!1235889 c!714943) b!4189254))

(assert (= (and d!1235889 (not c!714943)) b!4189253))

(assert (= (and b!4189253 (not res!1718877)) b!4189247))

(assert (= (and d!1235889 (not res!1718876)) b!4189251))

(assert (= (and b!4189251 res!1718878) b!4189252))

(assert (= (and b!4189252 res!1718880) b!4189250))

(assert (= (and b!4189250 res!1718882) b!4189255))

(assert (= (and b!4189255 res!1718881) b!4189248))

(assert (= (and b!4189248 res!1718879) b!4189249))

(declare-fun m!4778187 () Bool)

(assert (=> b!4189248 m!4778187))

(declare-fun m!4778189 () Bool)

(assert (=> b!4189248 m!4778189))

(assert (=> b!4189248 m!4778189))

(declare-fun m!4778191 () Bool)

(assert (=> b!4189248 m!4778191))

(declare-fun m!4778193 () Bool)

(assert (=> b!4189253 m!4778193))

(declare-fun m!4778195 () Bool)

(assert (=> b!4189253 m!4778195))

(assert (=> b!4189253 m!4778193))

(assert (=> b!4189253 m!4778193))

(declare-fun m!4778197 () Bool)

(assert (=> b!4189253 m!4778197))

(assert (=> b!4189253 m!4777817))

(assert (=> b!4189253 m!4777681))

(declare-fun m!4778199 () Bool)

(assert (=> b!4189253 m!4778199))

(assert (=> b!4189253 m!4778193))

(declare-fun m!4778201 () Bool)

(assert (=> b!4189253 m!4778201))

(declare-fun m!4778203 () Bool)

(assert (=> b!4189253 m!4778203))

(assert (=> b!4189253 m!4777817))

(declare-fun m!4778205 () Bool)

(assert (=> b!4189253 m!4778205))

(assert (=> b!4189253 m!4777681))

(assert (=> b!4189250 m!4778187))

(declare-fun m!4778207 () Bool)

(assert (=> b!4189250 m!4778207))

(assert (=> b!4189250 m!4777681))

(declare-fun m!4778209 () Bool)

(assert (=> d!1235889 m!4778209))

(declare-fun m!4778211 () Bool)

(assert (=> d!1235889 m!4778211))

(declare-fun m!4778213 () Bool)

(assert (=> d!1235889 m!4778213))

(assert (=> d!1235889 m!4777715))

(assert (=> b!4189252 m!4778187))

(declare-fun m!4778215 () Bool)

(assert (=> b!4189252 m!4778215))

(assert (=> b!4189252 m!4778215))

(declare-fun m!4778217 () Bool)

(assert (=> b!4189252 m!4778217))

(assert (=> b!4189252 m!4778217))

(declare-fun m!4778219 () Bool)

(assert (=> b!4189252 m!4778219))

(assert (=> b!4189255 m!4778187))

(assert (=> b!4189249 m!4778187))

(declare-fun m!4778221 () Bool)

(assert (=> b!4189249 m!4778221))

(assert (=> b!4189247 m!4777817))

(assert (=> b!4189247 m!4777681))

(assert (=> b!4189247 m!4777817))

(assert (=> b!4189247 m!4777681))

(assert (=> b!4189247 m!4778199))

(declare-fun m!4778223 () Bool)

(assert (=> b!4189247 m!4778223))

(assert (=> b!4189251 m!4778187))

(assert (=> b!4189251 m!4778215))

(assert (=> b!4189251 m!4778215))

(assert (=> b!4189251 m!4778217))

(assert (=> b!4189251 m!4778217))

(declare-fun m!4778225 () Bool)

(assert (=> b!4189251 m!4778225))

(assert (=> b!4188820 d!1235889))

(declare-fun d!1235891 () Bool)

(declare-fun lt!1492047 () Int)

(assert (=> d!1235891 (>= lt!1492047 0)))

(declare-fun e!2600614 () Int)

(assert (=> d!1235891 (= lt!1492047 e!2600614)))

(declare-fun c!714944 () Bool)

(assert (=> d!1235891 (= c!714944 ((_ is Nil!45997) p!2959))))

(assert (=> d!1235891 (= (size!33785 p!2959) lt!1492047)))

(declare-fun b!4189259 () Bool)

(assert (=> b!4189259 (= e!2600614 0)))

(declare-fun b!4189260 () Bool)

(assert (=> b!4189260 (= e!2600614 (+ 1 (size!33785 (t!345812 p!2959))))))

(assert (= (and d!1235891 c!714944) b!4189259))

(assert (= (and d!1235891 (not c!714944)) b!4189260))

(declare-fun m!4778227 () Bool)

(assert (=> b!4189260 m!4778227))

(assert (=> b!4188820 d!1235891))

(declare-fun b!4189279 () Bool)

(declare-fun res!1718898 () Bool)

(declare-fun e!2600623 () Bool)

(assert (=> b!4189279 (=> (not res!1718898) (not e!2600623))))

(declare-fun lt!1492059 () Option!9858)

(assert (=> b!4189279 (= res!1718898 (= (value!238956 (_1!25033 (get!14955 lt!1492059))) (apply!10629 (transformation!7664 (rule!10742 (_1!25033 (get!14955 lt!1492059)))) (seqFromList!5689 (originalCharacters!8052 (_1!25033 (get!14955 lt!1492059)))))))))

(declare-fun call!292087 () Option!9858)

(declare-fun bm!292082 () Bool)

(assert (=> bm!292082 (= call!292087 (maxPrefixOneRule!3266 thiss!25986 (h!51419 rules!3843) input!3342))))

(declare-fun b!4189280 () Bool)

(declare-fun e!2600622 () Option!9858)

(assert (=> b!4189280 (= e!2600622 call!292087)))

(declare-fun b!4189281 () Bool)

(assert (=> b!4189281 (= e!2600623 (contains!9473 rules!3843 (rule!10742 (_1!25033 (get!14955 lt!1492059)))))))

(declare-fun b!4189282 () Bool)

(declare-fun res!1718900 () Bool)

(assert (=> b!4189282 (=> (not res!1718900) (not e!2600623))))

(assert (=> b!4189282 (= res!1718900 (< (size!33785 (_2!25033 (get!14955 lt!1492059))) (size!33785 input!3342)))))

(declare-fun b!4189283 () Bool)

(declare-fun e!2600621 () Bool)

(assert (=> b!4189283 (= e!2600621 e!2600623)))

(declare-fun res!1718902 () Bool)

(assert (=> b!4189283 (=> (not res!1718902) (not e!2600623))))

(declare-fun isDefined!7344 (Option!9858) Bool)

(assert (=> b!4189283 (= res!1718902 (isDefined!7344 lt!1492059))))

(declare-fun b!4189284 () Bool)

(declare-fun res!1718899 () Bool)

(assert (=> b!4189284 (=> (not res!1718899) (not e!2600623))))

(assert (=> b!4189284 (= res!1718899 (= (++!11736 (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1492059)))) (_2!25033 (get!14955 lt!1492059))) input!3342))))

(declare-fun b!4189286 () Bool)

(declare-fun res!1718903 () Bool)

(assert (=> b!4189286 (=> (not res!1718903) (not e!2600623))))

(assert (=> b!4189286 (= res!1718903 (= (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1492059)))) (originalCharacters!8052 (_1!25033 (get!14955 lt!1492059)))))))

(declare-fun b!4189287 () Bool)

(declare-fun lt!1492060 () Option!9858)

(declare-fun lt!1492061 () Option!9858)

(assert (=> b!4189287 (= e!2600622 (ite (and ((_ is None!9857) lt!1492060) ((_ is None!9857) lt!1492061)) None!9857 (ite ((_ is None!9857) lt!1492061) lt!1492060 (ite ((_ is None!9857) lt!1492060) lt!1492061 (ite (>= (size!33786 (_1!25033 (v!40683 lt!1492060))) (size!33786 (_1!25033 (v!40683 lt!1492061)))) lt!1492060 lt!1492061)))))))

(assert (=> b!4189287 (= lt!1492060 call!292087)))

(assert (=> b!4189287 (= lt!1492061 (maxPrefix!4305 thiss!25986 (t!345814 rules!3843) input!3342))))

(declare-fun b!4189285 () Bool)

(declare-fun res!1718901 () Bool)

(assert (=> b!4189285 (=> (not res!1718901) (not e!2600623))))

(assert (=> b!4189285 (= res!1718901 (matchR!6308 (regex!7664 (rule!10742 (_1!25033 (get!14955 lt!1492059)))) (list!16618 (charsOf!5099 (_1!25033 (get!14955 lt!1492059))))))))

(declare-fun d!1235893 () Bool)

(assert (=> d!1235893 e!2600621))

(declare-fun res!1718897 () Bool)

(assert (=> d!1235893 (=> res!1718897 e!2600621)))

(assert (=> d!1235893 (= res!1718897 (isEmpty!27229 lt!1492059))))

(assert (=> d!1235893 (= lt!1492059 e!2600622)))

(declare-fun c!714947 () Bool)

(assert (=> d!1235893 (= c!714947 (and ((_ is Cons!45999) rules!3843) ((_ is Nil!45999) (t!345814 rules!3843))))))

(declare-fun lt!1492058 () Unit!65083)

(declare-fun lt!1492062 () Unit!65083)

(assert (=> d!1235893 (= lt!1492058 lt!1492062)))

(assert (=> d!1235893 (isPrefix!4521 input!3342 input!3342)))

(assert (=> d!1235893 (= lt!1492062 (lemmaIsPrefixRefl!2950 input!3342 input!3342))))

(declare-fun rulesValidInductive!2828 (LexerInterface!7257 List!46123) Bool)

(assert (=> d!1235893 (rulesValidInductive!2828 thiss!25986 rules!3843)))

(assert (=> d!1235893 (= (maxPrefix!4305 thiss!25986 rules!3843 input!3342) lt!1492059)))

(assert (= (and d!1235893 c!714947) b!4189280))

(assert (= (and d!1235893 (not c!714947)) b!4189287))

(assert (= (or b!4189280 b!4189287) bm!292082))

(assert (= (and d!1235893 (not res!1718897)) b!4189283))

(assert (= (and b!4189283 res!1718902) b!4189286))

(assert (= (and b!4189286 res!1718903) b!4189282))

(assert (= (and b!4189282 res!1718900) b!4189284))

(assert (= (and b!4189284 res!1718899) b!4189279))

(assert (= (and b!4189279 res!1718898) b!4189285))

(assert (= (and b!4189285 res!1718901) b!4189281))

(declare-fun m!4778229 () Bool)

(assert (=> b!4189286 m!4778229))

(declare-fun m!4778231 () Bool)

(assert (=> b!4189286 m!4778231))

(assert (=> b!4189286 m!4778231))

(declare-fun m!4778233 () Bool)

(assert (=> b!4189286 m!4778233))

(declare-fun m!4778235 () Bool)

(assert (=> d!1235893 m!4778235))

(assert (=> d!1235893 m!4777727))

(assert (=> d!1235893 m!4777731))

(declare-fun m!4778237 () Bool)

(assert (=> d!1235893 m!4778237))

(assert (=> b!4189281 m!4778229))

(declare-fun m!4778239 () Bool)

(assert (=> b!4189281 m!4778239))

(declare-fun m!4778241 () Bool)

(assert (=> bm!292082 m!4778241))

(assert (=> b!4189285 m!4778229))

(assert (=> b!4189285 m!4778231))

(assert (=> b!4189285 m!4778231))

(assert (=> b!4189285 m!4778233))

(assert (=> b!4189285 m!4778233))

(declare-fun m!4778243 () Bool)

(assert (=> b!4189285 m!4778243))

(declare-fun m!4778245 () Bool)

(assert (=> b!4189283 m!4778245))

(assert (=> b!4189282 m!4778229))

(declare-fun m!4778247 () Bool)

(assert (=> b!4189282 m!4778247))

(assert (=> b!4189282 m!4777681))

(declare-fun m!4778249 () Bool)

(assert (=> b!4189287 m!4778249))

(assert (=> b!4189284 m!4778229))

(assert (=> b!4189284 m!4778231))

(assert (=> b!4189284 m!4778231))

(assert (=> b!4189284 m!4778233))

(assert (=> b!4189284 m!4778233))

(declare-fun m!4778251 () Bool)

(assert (=> b!4189284 m!4778251))

(assert (=> b!4189279 m!4778229))

(declare-fun m!4778253 () Bool)

(assert (=> b!4189279 m!4778253))

(assert (=> b!4189279 m!4778253))

(declare-fun m!4778255 () Bool)

(assert (=> b!4189279 m!4778255))

(assert (=> b!4188809 d!1235893))

(declare-fun b!4189306 () Bool)

(declare-fun res!1718916 () Bool)

(declare-fun e!2600642 () Bool)

(assert (=> b!4189306 (=> res!1718916 e!2600642)))

(assert (=> b!4189306 (= res!1718916 (not ((_ is Concat!20464) (regex!7664 r!4142))))))

(declare-fun e!2600638 () Bool)

(assert (=> b!4189306 (= e!2600638 e!2600642)))

(declare-fun bm!292089 () Bool)

(declare-fun c!714952 () Bool)

(declare-fun c!714953 () Bool)

(declare-fun call!292095 () Bool)

(assert (=> bm!292089 (= call!292095 (validRegex!5686 (ite c!714953 (reg!12898 (regex!7664 r!4142)) (ite c!714952 (regTwo!25651 (regex!7664 r!4142)) (regTwo!25650 (regex!7664 r!4142))))))))

(declare-fun b!4189307 () Bool)

(declare-fun e!2600643 () Bool)

(declare-fun call!292094 () Bool)

(assert (=> b!4189307 (= e!2600643 call!292094)))

(declare-fun b!4189308 () Bool)

(declare-fun e!2600644 () Bool)

(assert (=> b!4189308 (= e!2600644 e!2600638)))

(assert (=> b!4189308 (= c!714952 ((_ is Union!12569) (regex!7664 r!4142)))))

(declare-fun b!4189309 () Bool)

(declare-fun e!2600639 () Bool)

(assert (=> b!4189309 (= e!2600639 call!292095)))

(declare-fun b!4189310 () Bool)

(declare-fun e!2600641 () Bool)

(assert (=> b!4189310 (= e!2600642 e!2600641)))

(declare-fun res!1718915 () Bool)

(assert (=> b!4189310 (=> (not res!1718915) (not e!2600641))))

(declare-fun call!292096 () Bool)

(assert (=> b!4189310 (= res!1718915 call!292096)))

(declare-fun bm!292090 () Bool)

(assert (=> bm!292090 (= call!292096 (validRegex!5686 (ite c!714952 (regOne!25651 (regex!7664 r!4142)) (regOne!25650 (regex!7664 r!4142)))))))

(declare-fun b!4189311 () Bool)

(declare-fun e!2600640 () Bool)

(assert (=> b!4189311 (= e!2600640 e!2600644)))

(assert (=> b!4189311 (= c!714953 ((_ is Star!12569) (regex!7664 r!4142)))))

(declare-fun d!1235895 () Bool)

(declare-fun res!1718918 () Bool)

(assert (=> d!1235895 (=> res!1718918 e!2600640)))

(assert (=> d!1235895 (= res!1718918 ((_ is ElementMatch!12569) (regex!7664 r!4142)))))

(assert (=> d!1235895 (= (validRegex!5686 (regex!7664 r!4142)) e!2600640)))

(declare-fun b!4189312 () Bool)

(assert (=> b!4189312 (= e!2600644 e!2600639)))

(declare-fun res!1718914 () Bool)

(assert (=> b!4189312 (= res!1718914 (not (nullable!4413 (reg!12898 (regex!7664 r!4142)))))))

(assert (=> b!4189312 (=> (not res!1718914) (not e!2600639))))

(declare-fun bm!292091 () Bool)

(assert (=> bm!292091 (= call!292094 call!292095)))

(declare-fun b!4189313 () Bool)

(declare-fun res!1718917 () Bool)

(assert (=> b!4189313 (=> (not res!1718917) (not e!2600643))))

(assert (=> b!4189313 (= res!1718917 call!292096)))

(assert (=> b!4189313 (= e!2600638 e!2600643)))

(declare-fun b!4189314 () Bool)

(assert (=> b!4189314 (= e!2600641 call!292094)))

(assert (= (and d!1235895 (not res!1718918)) b!4189311))

(assert (= (and b!4189311 c!714953) b!4189312))

(assert (= (and b!4189311 (not c!714953)) b!4189308))

(assert (= (and b!4189312 res!1718914) b!4189309))

(assert (= (and b!4189308 c!714952) b!4189313))

(assert (= (and b!4189308 (not c!714952)) b!4189306))

(assert (= (and b!4189313 res!1718917) b!4189307))

(assert (= (and b!4189306 (not res!1718916)) b!4189310))

(assert (= (and b!4189310 res!1718915) b!4189314))

(assert (= (or b!4189307 b!4189314) bm!292091))

(assert (= (or b!4189313 b!4189310) bm!292090))

(assert (= (or b!4189309 bm!292091) bm!292089))

(declare-fun m!4778257 () Bool)

(assert (=> bm!292089 m!4778257))

(declare-fun m!4778259 () Bool)

(assert (=> bm!292090 m!4778259))

(declare-fun m!4778261 () Bool)

(assert (=> b!4189312 m!4778261))

(assert (=> b!4188810 d!1235895))

(declare-fun d!1235897 () Bool)

(declare-fun lt!1492063 () Bool)

(assert (=> d!1235897 (= lt!1492063 (select (content!7161 rules!3843) r!4142))))

(declare-fun e!2600645 () Bool)

(assert (=> d!1235897 (= lt!1492063 e!2600645)))

(declare-fun res!1718919 () Bool)

(assert (=> d!1235897 (=> (not res!1718919) (not e!2600645))))

(assert (=> d!1235897 (= res!1718919 ((_ is Cons!45999) rules!3843))))

(assert (=> d!1235897 (= (contains!9473 rules!3843 r!4142) lt!1492063)))

(declare-fun b!4189315 () Bool)

(declare-fun e!2600646 () Bool)

(assert (=> b!4189315 (= e!2600645 e!2600646)))

(declare-fun res!1718920 () Bool)

(assert (=> b!4189315 (=> res!1718920 e!2600646)))

(assert (=> b!4189315 (= res!1718920 (= (h!51419 rules!3843) r!4142))))

(declare-fun b!4189316 () Bool)

(assert (=> b!4189316 (= e!2600646 (contains!9473 (t!345814 rules!3843) r!4142))))

(assert (= (and d!1235897 res!1718919) b!4189315))

(assert (= (and b!4189315 (not res!1718920)) b!4189316))

(assert (=> d!1235897 m!4777905))

(declare-fun m!4778263 () Bool)

(assert (=> d!1235897 m!4778263))

(declare-fun m!4778265 () Bool)

(assert (=> b!4189316 m!4778265))

(assert (=> b!4188799 d!1235897))

(declare-fun d!1235899 () Bool)

(declare-fun lt!1492066 () Int)

(assert (=> d!1235899 (= lt!1492066 (size!33785 (list!16618 lt!1491891)))))

(declare-fun size!33789 (Conc!13875) Int)

(assert (=> d!1235899 (= lt!1492066 (size!33789 (c!714882 lt!1491891)))))

(assert (=> d!1235899 (= (size!33787 lt!1491891) lt!1492066)))

(declare-fun bs!596591 () Bool)

(assert (= bs!596591 d!1235899))

(assert (=> bs!596591 m!4777697))

(assert (=> bs!596591 m!4777697))

(declare-fun m!4778267 () Bool)

(assert (=> bs!596591 m!4778267))

(declare-fun m!4778269 () Bool)

(assert (=> bs!596591 m!4778269))

(assert (=> b!4188808 d!1235899))

(declare-fun d!1235901 () Bool)

(assert (=> d!1235901 (= (isEmpty!27228 rules!3843) ((_ is Nil!45999) rules!3843))))

(assert (=> b!4188798 d!1235901))

(declare-fun b!4189327 () Bool)

(declare-fun b_free!121919 () Bool)

(declare-fun b_next!122623 () Bool)

(assert (=> b!4189327 (= b_free!121919 (not b_next!122623))))

(declare-fun tb!250949 () Bool)

(declare-fun t!345859 () Bool)

(assert (=> (and b!4189327 (= (toValue!10360 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toValue!10360 (transformation!7664 r!4142))) t!345859) tb!250949))

(declare-fun result!305830 () Bool)

(assert (= result!305830 result!305780))

(assert (=> d!1235813 t!345859))

(assert (=> d!1235819 t!345859))

(declare-fun tp!1280101 () Bool)

(declare-fun b_and!328201 () Bool)

(assert (=> b!4189327 (= tp!1280101 (and (=> t!345859 result!305830) b_and!328201))))

(declare-fun b_free!121921 () Bool)

(declare-fun b_next!122625 () Bool)

(assert (=> b!4189327 (= b_free!121921 (not b_next!122625))))

(declare-fun tb!250951 () Bool)

(declare-fun t!345861 () Bool)

(assert (=> (and b!4189327 (= (toChars!10219 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toChars!10219 (transformation!7664 (rule!10742 (_1!25033 lt!1491888))))) t!345861) tb!250951))

(declare-fun result!305832 () Bool)

(assert (= result!305832 result!305772))

(assert (=> d!1235789 t!345861))

(declare-fun tb!250953 () Bool)

(declare-fun t!345863 () Bool)

(assert (=> (and b!4189327 (= (toChars!10219 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toChars!10219 (transformation!7664 r!4142))) t!345863) tb!250953))

(declare-fun result!305834 () Bool)

(assert (= result!305834 result!305810))

(assert (=> d!1235819 t!345863))

(declare-fun tp!1280099 () Bool)

(declare-fun b_and!328203 () Bool)

(assert (=> b!4189327 (= tp!1280099 (and (=> t!345861 result!305832) (=> t!345863 result!305834) b_and!328203))))

(declare-fun e!2600657 () Bool)

(assert (=> b!4189327 (= e!2600657 (and tp!1280101 tp!1280099))))

(declare-fun b!4189326 () Bool)

(declare-fun tp!1280100 () Bool)

(declare-fun e!2600656 () Bool)

(assert (=> b!4189326 (= e!2600656 (and tp!1280100 (inv!60544 (tag!8528 (h!51419 (t!345814 rules!3843)))) (inv!60546 (transformation!7664 (h!51419 (t!345814 rules!3843)))) e!2600657))))

(declare-fun b!4189325 () Bool)

(declare-fun e!2600658 () Bool)

(declare-fun tp!1280102 () Bool)

(assert (=> b!4189325 (= e!2600658 (and e!2600656 tp!1280102))))

(assert (=> b!4188812 (= tp!1280038 e!2600658)))

(assert (= b!4189326 b!4189327))

(assert (= b!4189325 b!4189326))

(assert (= (and b!4188812 ((_ is Cons!45999) (t!345814 rules!3843))) b!4189325))

(declare-fun m!4778271 () Bool)

(assert (=> b!4189326 m!4778271))

(declare-fun m!4778273 () Bool)

(assert (=> b!4189326 m!4778273))

(declare-fun b!4189339 () Bool)

(declare-fun e!2600661 () Bool)

(declare-fun tp!1280113 () Bool)

(declare-fun tp!1280114 () Bool)

(assert (=> b!4189339 (= e!2600661 (and tp!1280113 tp!1280114))))

(assert (=> b!4188801 (= tp!1280037 e!2600661)))

(declare-fun b!4189341 () Bool)

(declare-fun tp!1280115 () Bool)

(declare-fun tp!1280116 () Bool)

(assert (=> b!4189341 (= e!2600661 (and tp!1280115 tp!1280116))))

(declare-fun b!4189340 () Bool)

(declare-fun tp!1280117 () Bool)

(assert (=> b!4189340 (= e!2600661 tp!1280117)))

(declare-fun b!4189338 () Bool)

(assert (=> b!4189338 (= e!2600661 tp_is_empty!22101)))

(assert (= (and b!4188801 ((_ is ElementMatch!12569) (regex!7664 (h!51419 rules!3843)))) b!4189338))

(assert (= (and b!4188801 ((_ is Concat!20464) (regex!7664 (h!51419 rules!3843)))) b!4189339))

(assert (= (and b!4188801 ((_ is Star!12569) (regex!7664 (h!51419 rules!3843)))) b!4189340))

(assert (= (and b!4188801 ((_ is Union!12569) (regex!7664 (h!51419 rules!3843)))) b!4189341))

(declare-fun b!4189343 () Bool)

(declare-fun e!2600662 () Bool)

(declare-fun tp!1280118 () Bool)

(declare-fun tp!1280119 () Bool)

(assert (=> b!4189343 (= e!2600662 (and tp!1280118 tp!1280119))))

(assert (=> b!4188805 (= tp!1280030 e!2600662)))

(declare-fun b!4189345 () Bool)

(declare-fun tp!1280120 () Bool)

(declare-fun tp!1280121 () Bool)

(assert (=> b!4189345 (= e!2600662 (and tp!1280120 tp!1280121))))

(declare-fun b!4189344 () Bool)

(declare-fun tp!1280122 () Bool)

(assert (=> b!4189344 (= e!2600662 tp!1280122)))

(declare-fun b!4189342 () Bool)

(assert (=> b!4189342 (= e!2600662 tp_is_empty!22101)))

(assert (= (and b!4188805 ((_ is ElementMatch!12569) (regex!7664 r!4142))) b!4189342))

(assert (= (and b!4188805 ((_ is Concat!20464) (regex!7664 r!4142))) b!4189343))

(assert (= (and b!4188805 ((_ is Star!12569) (regex!7664 r!4142))) b!4189344))

(assert (= (and b!4188805 ((_ is Union!12569) (regex!7664 r!4142))) b!4189345))

(declare-fun b!4189350 () Bool)

(declare-fun e!2600665 () Bool)

(declare-fun tp!1280125 () Bool)

(assert (=> b!4189350 (= e!2600665 (and tp_is_empty!22101 tp!1280125))))

(assert (=> b!4188806 (= tp!1280033 e!2600665)))

(assert (= (and b!4188806 ((_ is Cons!45997) (t!345812 p!2959))) b!4189350))

(declare-fun b!4189351 () Bool)

(declare-fun e!2600666 () Bool)

(declare-fun tp!1280126 () Bool)

(assert (=> b!4189351 (= e!2600666 (and tp_is_empty!22101 tp!1280126))))

(assert (=> b!4188811 (= tp!1280035 e!2600666)))

(assert (= (and b!4188811 ((_ is Cons!45997) (t!345812 pBis!107))) b!4189351))

(declare-fun b!4189353 () Bool)

(declare-fun e!2600667 () Bool)

(declare-fun tp!1280127 () Bool)

(declare-fun tp!1280128 () Bool)

(assert (=> b!4189353 (= e!2600667 (and tp!1280127 tp!1280128))))

(assert (=> b!4188813 (= tp!1280036 e!2600667)))

(declare-fun b!4189355 () Bool)

(declare-fun tp!1280129 () Bool)

(declare-fun tp!1280130 () Bool)

(assert (=> b!4189355 (= e!2600667 (and tp!1280129 tp!1280130))))

(declare-fun b!4189354 () Bool)

(declare-fun tp!1280131 () Bool)

(assert (=> b!4189354 (= e!2600667 tp!1280131)))

(declare-fun b!4189352 () Bool)

(assert (=> b!4189352 (= e!2600667 tp_is_empty!22101)))

(assert (= (and b!4188813 ((_ is ElementMatch!12569) (regex!7664 rBis!167))) b!4189352))

(assert (= (and b!4188813 ((_ is Concat!20464) (regex!7664 rBis!167))) b!4189353))

(assert (= (and b!4188813 ((_ is Star!12569) (regex!7664 rBis!167))) b!4189354))

(assert (= (and b!4188813 ((_ is Union!12569) (regex!7664 rBis!167))) b!4189355))

(declare-fun b!4189356 () Bool)

(declare-fun e!2600668 () Bool)

(declare-fun tp!1280132 () Bool)

(assert (=> b!4189356 (= e!2600668 (and tp_is_empty!22101 tp!1280132))))

(assert (=> b!4188797 (= tp!1280034 e!2600668)))

(assert (= (and b!4188797 ((_ is Cons!45997) (t!345812 input!3342))) b!4189356))

(declare-fun b_lambda!123205 () Bool)

(assert (= b_lambda!123197 (or (and b!4188821 b_free!121903 (= (toValue!10360 (transformation!7664 (h!51419 rules!3843))) (toValue!10360 (transformation!7664 r!4142)))) (and b!4188815 b_free!121907 (= (toValue!10360 (transformation!7664 rBis!167)) (toValue!10360 (transformation!7664 r!4142)))) (and b!4188819 b_free!121911) (and b!4189327 b_free!121919 (= (toValue!10360 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toValue!10360 (transformation!7664 r!4142)))) b_lambda!123205)))

(declare-fun b_lambda!123207 () Bool)

(assert (= b_lambda!123195 (or (and b!4188821 b_free!121905 (= (toChars!10219 (transformation!7664 (h!51419 rules!3843))) (toChars!10219 (transformation!7664 r!4142)))) (and b!4188815 b_free!121909 (= (toChars!10219 (transformation!7664 rBis!167)) (toChars!10219 (transformation!7664 r!4142)))) (and b!4188819 b_free!121913) (and b!4189327 b_free!121921 (= (toChars!10219 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toChars!10219 (transformation!7664 r!4142)))) b_lambda!123207)))

(declare-fun b_lambda!123209 () Bool)

(assert (= b_lambda!123185 (or (and b!4188821 b_free!121903 (= (toValue!10360 (transformation!7664 (h!51419 rules!3843))) (toValue!10360 (transformation!7664 r!4142)))) (and b!4188815 b_free!121907 (= (toValue!10360 (transformation!7664 rBis!167)) (toValue!10360 (transformation!7664 r!4142)))) (and b!4188819 b_free!121911) (and b!4189327 b_free!121919 (= (toValue!10360 (transformation!7664 (h!51419 (t!345814 rules!3843)))) (toValue!10360 (transformation!7664 r!4142)))) b_lambda!123209)))

(check-sat (not b!4189253) (not b!4189029) (not b!4188954) (not b_next!122617) (not d!1235773) (not tb!250913) (not d!1235887) (not b!4188917) (not b!4188960) (not b!4188970) (not d!1235789) (not b!4189010) (not b!4188921) (not b!4189015) (not d!1235819) (not b!4188963) (not d!1235801) (not b!4189316) (not b_next!122613) (not b_next!122625) (not b!4188916) (not b!4189282) b_and!328203 tp_is_empty!22101 (not b!4188976) (not b_lambda!123209) b_and!328191 (not b_lambda!123207) (not b!4189203) (not d!1235897) (not b!4189014) (not d!1235783) (not d!1235803) (not b!4188934) (not b_next!122609) b_and!328193 (not b!4188959) (not b!4188964) (not b!4189285) (not b!4189286) (not tb!250937) (not b!4189255) (not b!4189283) (not b!4189351) (not b!4189326) (not b!4189008) (not b!4189281) (not bm!292089) b_and!328187 (not tb!250907) (not b!4188919) (not b!4189018) (not b_lambda!123183) (not b!4189247) (not b!4188958) (not b!4188825) (not b_lambda!123205) (not b!4189028) (not b!4189287) (not b!4189356) (not d!1235793) (not d!1235795) (not b!4189344) (not d!1235745) (not b!4189260) (not b!4188938) (not b_next!122607) (not b!4189345) (not b_next!122615) (not b!4188937) (not d!1235899) (not d!1235809) (not bm!292073) (not d!1235805) (not b!4189251) (not b!4188922) (not d!1235893) (not b!4188869) (not b!4189340) (not b!4189312) (not b!4188955) (not b!4188924) (not b!4189339) (not b!4188962) (not d!1235787) (not b_next!122611) (not bm!292090) (not b!4188932) (not b!4189030) (not b!4188843) (not b!4189279) (not b!4189249) (not b!4188918) (not b_next!122623) (not b!4188939) (not b!4189250) (not d!1235885) (not d!1235757) (not b!4189341) (not b!4189325) (not b!4189354) (not d!1235815) (not b!4189248) (not d!1235759) (not b!4189252) (not bm!292082) (not b!4188844) (not b!4189009) b_and!328195 (not b!4189025) b_and!328201 (not b!4188973) (not b!4188920) (not d!1235889) (not b!4188845) b_and!328185 (not d!1235753) (not b!4189343) (not b!4188944) (not b!4189353) (not b!4188974) (not b!4189350) (not b!4188930) b_and!328189 (not b!4188935) (not b!4189355) (not b!4189284) (not d!1235811))
(check-sat (not b_next!122617) (not b_next!122613) b_and!328191 (not b_next!122609) b_and!328193 b_and!328187 (not b_next!122611) (not b_next!122623) b_and!328195 b_and!328201 b_and!328185 b_and!328189 (not b_next!122625) b_and!328203 (not b_next!122607) (not b_next!122615))
