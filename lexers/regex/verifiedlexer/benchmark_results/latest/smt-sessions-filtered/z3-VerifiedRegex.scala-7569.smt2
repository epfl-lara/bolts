; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399490 () Bool)

(assert start!399490)

(declare-fun b!4186937 () Bool)

(declare-fun b_free!121767 () Bool)

(declare-fun b_next!122471 () Bool)

(assert (=> b!4186937 (= b_free!121767 (not b_next!122471))))

(declare-fun tp!1279458 () Bool)

(declare-fun b_and!327905 () Bool)

(assert (=> b!4186937 (= tp!1279458 b_and!327905)))

(declare-fun b_free!121769 () Bool)

(declare-fun b_next!122473 () Bool)

(assert (=> b!4186937 (= b_free!121769 (not b_next!122473))))

(declare-fun tp!1279454 () Bool)

(declare-fun b_and!327907 () Bool)

(assert (=> b!4186937 (= tp!1279454 b_and!327907)))

(declare-fun b!4186929 () Bool)

(declare-fun b_free!121771 () Bool)

(declare-fun b_next!122475 () Bool)

(assert (=> b!4186929 (= b_free!121771 (not b_next!122475))))

(declare-fun tp!1279462 () Bool)

(declare-fun b_and!327909 () Bool)

(assert (=> b!4186929 (= tp!1279462 b_and!327909)))

(declare-fun b_free!121773 () Bool)

(declare-fun b_next!122477 () Bool)

(assert (=> b!4186929 (= b_free!121773 (not b_next!122477))))

(declare-fun tp!1279463 () Bool)

(declare-fun b_and!327911 () Bool)

(assert (=> b!4186929 (= tp!1279463 b_and!327911)))

(declare-fun b!4186927 () Bool)

(declare-fun b_free!121775 () Bool)

(declare-fun b_next!122479 () Bool)

(assert (=> b!4186927 (= b_free!121775 (not b_next!122479))))

(declare-fun tp!1279465 () Bool)

(declare-fun b_and!327913 () Bool)

(assert (=> b!4186927 (= tp!1279465 b_and!327913)))

(declare-fun b_free!121777 () Bool)

(declare-fun b_next!122481 () Bool)

(assert (=> b!4186927 (= b_free!121777 (not b_next!122481))))

(declare-fun tp!1279461 () Bool)

(declare-fun b_and!327915 () Bool)

(assert (=> b!4186927 (= tp!1279461 b_and!327915)))

(declare-fun b!4186911 () Bool)

(declare-fun e!2599187 () Bool)

(declare-fun e!2599199 () Bool)

(assert (=> b!4186911 (= e!2599187 e!2599199)))

(declare-fun res!1717497 () Bool)

(assert (=> b!4186911 (=> res!1717497 e!2599199)))

(declare-datatypes ((C!25308 0))(
  ( (C!25309 (val!14816 Int)) )
))
(declare-datatypes ((List!46087 0))(
  ( (Nil!45963) (Cons!45963 (h!51383 C!25308) (t!345682 List!46087)) )
))
(declare-fun lt!1491110 () List!46087)

(declare-fun pBis!107 () List!46087)

(assert (=> b!4186911 (= res!1717497 (not (= lt!1491110 pBis!107)))))

(declare-datatypes ((List!46088 0))(
  ( (Nil!45964) (Cons!45964 (h!51384 (_ BitVec 16)) (t!345683 List!46088)) )
))
(declare-datatypes ((TokenValue!7884 0))(
  ( (FloatLiteralValue!15768 (text!55633 List!46088)) (TokenValueExt!7883 (__x!27989 Int)) (Broken!39420 (value!238645 List!46088)) (Object!8007) (End!7884) (Def!7884) (Underscore!7884) (Match!7884) (Else!7884) (Error!7884) (Case!7884) (If!7884) (Extends!7884) (Abstract!7884) (Class!7884) (Val!7884) (DelimiterValue!15768 (del!7944 List!46088)) (KeywordValue!7890 (value!238646 List!46088)) (CommentValue!15768 (value!238647 List!46088)) (WhitespaceValue!15768 (value!238648 List!46088)) (IndentationValue!7884 (value!238649 List!46088)) (String!53285) (Int32!7884) (Broken!39421 (value!238650 List!46088)) (Boolean!7885) (Unit!65052) (OperatorValue!7887 (op!7944 List!46088)) (IdentifierValue!15768 (value!238651 List!46088)) (IdentifierValue!15769 (value!238652 List!46088)) (WhitespaceValue!15769 (value!238653 List!46088)) (True!15768) (False!15768) (Broken!39422 (value!238654 List!46088)) (Broken!39423 (value!238655 List!46088)) (True!15769) (RightBrace!7884) (RightBracket!7884) (Colon!7884) (Null!7884) (Comma!7884) (LeftBracket!7884) (False!15769) (LeftBrace!7884) (ImaginaryLiteralValue!7884 (text!55634 List!46088)) (StringLiteralValue!23652 (value!238656 List!46088)) (EOFValue!7884 (value!238657 List!46088)) (IdentValue!7884 (value!238658 List!46088)) (DelimiterValue!15769 (value!238659 List!46088)) (DedentValue!7884 (value!238660 List!46088)) (NewLineValue!7884 (value!238661 List!46088)) (IntegerValue!23652 (value!238662 (_ BitVec 32)) (text!55635 List!46088)) (IntegerValue!23653 (value!238663 Int) (text!55636 List!46088)) (Times!7884) (Or!7884) (Equal!7884) (Minus!7884) (Broken!39424 (value!238664 List!46088)) (And!7884) (Div!7884) (LessEqual!7884) (Mod!7884) (Concat!20443) (Not!7884) (Plus!7884) (SpaceValue!7884 (value!238665 List!46088)) (IntegerValue!23654 (value!238666 Int) (text!55637 List!46088)) (StringLiteralValue!23653 (text!55638 List!46088)) (FloatLiteralValue!15769 (text!55639 List!46088)) (BytesLiteralValue!7884 (value!238667 List!46088)) (CommentValue!15769 (value!238668 List!46088)) (StringLiteralValue!23654 (value!238669 List!46088)) (ErrorTokenValue!7884 (msg!7945 List!46088)) )
))
(declare-datatypes ((Regex!12559 0))(
  ( (ElementMatch!12559 (c!714712 C!25308)) (Concat!20444 (regOne!25630 Regex!12559) (regTwo!25630 Regex!12559)) (EmptyExpr!12559) (Star!12559 (reg!12888 Regex!12559)) (EmptyLang!12559) (Union!12559 (regOne!25631 Regex!12559) (regTwo!25631 Regex!12559)) )
))
(declare-datatypes ((String!53286 0))(
  ( (String!53287 (value!238670 String)) )
))
(declare-datatypes ((IArray!27735 0))(
  ( (IArray!27736 (innerList!13925 List!46087)) )
))
(declare-datatypes ((Conc!13865 0))(
  ( (Node!13865 (left!34242 Conc!13865) (right!34572 Conc!13865) (csize!27960 Int) (cheight!14076 Int)) (Leaf!21435 (xs!17171 IArray!27735) (csize!27961 Int)) (Empty!13865) )
))
(declare-datatypes ((BalanceConc!27324 0))(
  ( (BalanceConc!27325 (c!714713 Conc!13865)) )
))
(declare-datatypes ((TokenValueInjection!15196 0))(
  ( (TokenValueInjection!15197 (toValue!10350 Int) (toChars!10209 Int)) )
))
(declare-datatypes ((Rule!15108 0))(
  ( (Rule!15109 (regex!7654 Regex!12559) (tag!8518 String!53286) (isSeparator!7654 Bool) (transformation!7654 TokenValueInjection!15196)) )
))
(declare-datatypes ((Token!14022 0))(
  ( (Token!14023 (value!238671 TokenValue!7884) (rule!10728 Rule!15108) (size!33756 Int) (originalCharacters!8042 List!46087)) )
))
(declare-datatypes ((tuple2!43770 0))(
  ( (tuple2!43771 (_1!25019 Token!14022) (_2!25019 List!46087)) )
))
(declare-fun lt!1491105 () tuple2!43770)

(declare-fun isPrefix!4511 (List!46087 List!46087) Bool)

(declare-fun ++!11726 (List!46087 List!46087) List!46087)

(assert (=> b!4186911 (isPrefix!4511 lt!1491110 (++!11726 lt!1491110 (_2!25019 lt!1491105)))))

(declare-datatypes ((Unit!65053 0))(
  ( (Unit!65054) )
))
(declare-fun lt!1491102 () Unit!65053)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3008 (List!46087 List!46087) Unit!65053)

(assert (=> b!4186911 (= lt!1491102 (lemmaConcatTwoListThenFirstIsPrefix!3008 lt!1491110 (_2!25019 lt!1491105)))))

(declare-fun list!16604 (BalanceConc!27324) List!46087)

(declare-fun charsOf!5089 (Token!14022) BalanceConc!27324)

(assert (=> b!4186911 (= lt!1491110 (list!16604 (charsOf!5089 (_1!25019 lt!1491105))))))

(declare-datatypes ((Option!9848 0))(
  ( (None!9847) (Some!9847 (v!40669 tuple2!43770)) )
))
(declare-fun lt!1491111 () Option!9848)

(declare-fun get!14940 (Option!9848) tuple2!43770)

(assert (=> b!4186911 (= lt!1491105 (get!14940 lt!1491111))))

(declare-fun b!4186912 () Bool)

(declare-fun res!1717499 () Bool)

(assert (=> b!4186912 (=> res!1717499 e!2599199)))

(declare-fun rBis!167 () Rule!15108)

(assert (=> b!4186912 (= res!1717499 (or (not (= lt!1491111 (Some!9847 (tuple2!43771 (_1!25019 lt!1491105) (_2!25019 lt!1491105))))) (not (= (rule!10728 (_1!25019 lt!1491105)) rBis!167))))))

(declare-fun input!3342 () List!46087)

(declare-fun b!4186913 () Bool)

(assert (=> b!4186913 (= e!2599199 (= (++!11726 pBis!107 (_2!25019 lt!1491105)) input!3342))))

(declare-fun e!2599200 () Bool)

(declare-datatypes ((List!46089 0))(
  ( (Nil!45965) (Cons!45965 (h!51385 Rule!15108) (t!345684 List!46089)) )
))
(declare-fun rules!3843 () List!46089)

(declare-fun e!2599195 () Bool)

(declare-fun tp!1279464 () Bool)

(declare-fun b!4186914 () Bool)

(declare-fun inv!60511 (String!53286) Bool)

(declare-fun inv!60513 (TokenValueInjection!15196) Bool)

(assert (=> b!4186914 (= e!2599195 (and tp!1279464 (inv!60511 (tag!8518 (h!51385 rules!3843))) (inv!60513 (transformation!7654 (h!51385 rules!3843))) e!2599200))))

(declare-fun b!4186915 () Bool)

(declare-fun e!2599198 () Bool)

(assert (=> b!4186915 (= e!2599198 e!2599187)))

(declare-fun res!1717485 () Bool)

(assert (=> b!4186915 (=> res!1717485 e!2599187)))

(declare-fun isEmpty!27204 (Option!9848) Bool)

(assert (=> b!4186915 (= res!1717485 (isEmpty!27204 lt!1491111))))

(declare-datatypes ((LexerInterface!7247 0))(
  ( (LexerInterfaceExt!7244 (__x!27990 Int)) (Lexer!7245) )
))
(declare-fun thiss!25986 () LexerInterface!7247)

(declare-fun maxPrefixOneRule!3256 (LexerInterface!7247 Rule!15108 List!46087) Option!9848)

(assert (=> b!4186915 (= lt!1491111 (maxPrefixOneRule!3256 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1491109 () Unit!65053)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2378 (LexerInterface!7247 Rule!15108 List!46089) Unit!65053)

(assert (=> b!4186915 (= lt!1491109 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2378 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1491114 () Int)

(declare-fun size!33757 (List!46087) Int)

(assert (=> b!4186915 (<= lt!1491114 (size!33757 input!3342))))

(declare-fun lt!1491113 () Unit!65053)

(declare-fun lemmaIsPrefixThenSmallerEqSize!541 (List!46087 List!46087) Unit!65053)

(assert (=> b!4186915 (= lt!1491113 (lemmaIsPrefixThenSmallerEqSize!541 pBis!107 input!3342))))

(declare-fun b!4186916 () Bool)

(declare-fun e!2599183 () Bool)

(declare-fun tp_is_empty!22081 () Bool)

(declare-fun tp!1279466 () Bool)

(assert (=> b!4186916 (= e!2599183 (and tp_is_empty!22081 tp!1279466))))

(declare-fun b!4186917 () Bool)

(declare-fun e!2599189 () Bool)

(assert (=> b!4186917 (= e!2599189 e!2599198)))

(declare-fun res!1717500 () Bool)

(assert (=> b!4186917 (=> res!1717500 e!2599198)))

(declare-fun lt!1491103 () Int)

(assert (=> b!4186917 (= res!1717500 (<= lt!1491114 lt!1491103))))

(assert (=> b!4186917 (= lt!1491114 (size!33757 pBis!107))))

(declare-fun res!1717491 () Bool)

(declare-fun e!2599192 () Bool)

(assert (=> start!399490 (=> (not res!1717491) (not e!2599192))))

(get-info :version)

(assert (=> start!399490 (= res!1717491 ((_ is Lexer!7245) thiss!25986))))

(assert (=> start!399490 e!2599192))

(assert (=> start!399490 true))

(declare-fun e!2599197 () Bool)

(assert (=> start!399490 e!2599197))

(declare-fun e!2599185 () Bool)

(assert (=> start!399490 e!2599185))

(declare-fun e!2599186 () Bool)

(assert (=> start!399490 e!2599186))

(declare-fun e!2599193 () Bool)

(assert (=> start!399490 e!2599193))

(assert (=> start!399490 e!2599183))

(declare-fun e!2599191 () Bool)

(assert (=> start!399490 e!2599191))

(declare-fun b!4186918 () Bool)

(declare-fun res!1717492 () Bool)

(assert (=> b!4186918 (=> (not res!1717492) (not e!2599192))))

(declare-fun r!4142 () Rule!15108)

(declare-fun validRegex!5676 (Regex!12559) Bool)

(assert (=> b!4186918 (= res!1717492 (validRegex!5676 (regex!7654 r!4142)))))

(declare-fun b!4186919 () Bool)

(declare-fun tp!1279459 () Bool)

(assert (=> b!4186919 (= e!2599191 (and tp_is_empty!22081 tp!1279459))))

(declare-fun b!4186920 () Bool)

(declare-fun res!1717489 () Bool)

(assert (=> b!4186920 (=> (not res!1717489) (not e!2599192))))

(declare-fun p!2959 () List!46087)

(assert (=> b!4186920 (= res!1717489 (isPrefix!4511 p!2959 input!3342))))

(declare-fun b!4186921 () Bool)

(declare-fun e!2599194 () Bool)

(declare-fun tp!1279456 () Bool)

(assert (=> b!4186921 (= e!2599185 (and tp!1279456 (inv!60511 (tag!8518 r!4142)) (inv!60513 (transformation!7654 r!4142)) e!2599194))))

(declare-fun b!4186922 () Bool)

(declare-fun res!1717484 () Bool)

(assert (=> b!4186922 (=> (not res!1717484) (not e!2599192))))

(declare-fun ruleValid!3372 (LexerInterface!7247 Rule!15108) Bool)

(assert (=> b!4186922 (= res!1717484 (ruleValid!3372 thiss!25986 r!4142))))

(declare-fun b!4186923 () Bool)

(declare-fun res!1717490 () Bool)

(assert (=> b!4186923 (=> res!1717490 e!2599198)))

(assert (=> b!4186923 (= res!1717490 (not (ruleValid!3372 thiss!25986 rBis!167)))))

(declare-fun b!4186924 () Bool)

(declare-fun res!1717488 () Bool)

(assert (=> b!4186924 (=> (not res!1717488) (not e!2599192))))

(declare-fun rulesInvariant!6460 (LexerInterface!7247 List!46089) Bool)

(assert (=> b!4186924 (= res!1717488 (rulesInvariant!6460 thiss!25986 rules!3843))))

(declare-fun b!4186925 () Bool)

(declare-fun res!1717487 () Bool)

(assert (=> b!4186925 (=> (not res!1717487) (not e!2599192))))

(declare-fun contains!9463 (List!46089 Rule!15108) Bool)

(assert (=> b!4186925 (= res!1717487 (contains!9463 rules!3843 rBis!167))))

(declare-fun b!4186926 () Bool)

(declare-fun res!1717483 () Bool)

(assert (=> b!4186926 (=> (not res!1717483) (not e!2599192))))

(assert (=> b!4186926 (= res!1717483 (isPrefix!4511 pBis!107 input!3342))))

(declare-fun e!2599184 () Bool)

(assert (=> b!4186927 (= e!2599184 (and tp!1279465 tp!1279461))))

(declare-fun tp!1279460 () Bool)

(declare-fun b!4186928 () Bool)

(assert (=> b!4186928 (= e!2599197 (and tp!1279460 (inv!60511 (tag!8518 rBis!167)) (inv!60513 (transformation!7654 rBis!167)) e!2599184))))

(assert (=> b!4186929 (= e!2599200 (and tp!1279462 tp!1279463))))

(declare-fun b!4186930 () Bool)

(declare-fun tp!1279457 () Bool)

(assert (=> b!4186930 (= e!2599193 (and tp_is_empty!22081 tp!1279457))))

(declare-fun b!4186931 () Bool)

(declare-fun res!1717495 () Bool)

(assert (=> b!4186931 (=> res!1717495 e!2599199)))

(declare-fun lt!1491107 () List!46087)

(assert (=> b!4186931 (= res!1717495 (not (= (++!11726 p!2959 lt!1491107) input!3342)))))

(declare-fun b!4186932 () Bool)

(declare-fun res!1717498 () Bool)

(assert (=> b!4186932 (=> res!1717498 e!2599198)))

(declare-fun lt!1491108 () Option!9848)

(declare-fun maxPrefix!4295 (LexerInterface!7247 List!46089 List!46087) Option!9848)

(assert (=> b!4186932 (= res!1717498 (not (= (maxPrefix!4295 thiss!25986 rules!3843 input!3342) lt!1491108)))))

(declare-fun b!4186933 () Bool)

(assert (=> b!4186933 (= e!2599192 (not e!2599189))))

(declare-fun res!1717493 () Bool)

(assert (=> b!4186933 (=> res!1717493 e!2599189)))

(assert (=> b!4186933 (= res!1717493 (not (= (maxPrefixOneRule!3256 thiss!25986 r!4142 input!3342) lt!1491108)))))

(declare-fun lt!1491106 () TokenValue!7884)

(assert (=> b!4186933 (= lt!1491108 (Some!9847 (tuple2!43771 (Token!14023 lt!1491106 r!4142 lt!1491103 p!2959) lt!1491107)))))

(declare-fun getSuffix!2804 (List!46087 List!46087) List!46087)

(assert (=> b!4186933 (= lt!1491107 (getSuffix!2804 input!3342 p!2959))))

(assert (=> b!4186933 (= lt!1491103 (size!33757 p!2959))))

(declare-fun lt!1491112 () BalanceConc!27324)

(declare-fun apply!10619 (TokenValueInjection!15196 BalanceConc!27324) TokenValue!7884)

(assert (=> b!4186933 (= lt!1491106 (apply!10619 (transformation!7654 r!4142) lt!1491112))))

(assert (=> b!4186933 (isPrefix!4511 input!3342 input!3342)))

(declare-fun lt!1491101 () Unit!65053)

(declare-fun lemmaIsPrefixRefl!2940 (List!46087 List!46087) Unit!65053)

(assert (=> b!4186933 (= lt!1491101 (lemmaIsPrefixRefl!2940 input!3342 input!3342))))

(declare-fun lt!1491104 () Unit!65053)

(declare-fun lemmaSemiInverse!2420 (TokenValueInjection!15196 BalanceConc!27324) Unit!65053)

(assert (=> b!4186933 (= lt!1491104 (lemmaSemiInverse!2420 (transformation!7654 r!4142) lt!1491112))))

(declare-fun seqFromList!5679 (List!46087) BalanceConc!27324)

(assert (=> b!4186933 (= lt!1491112 (seqFromList!5679 p!2959))))

(declare-fun b!4186934 () Bool)

(declare-fun res!1717486 () Bool)

(assert (=> b!4186934 (=> (not res!1717486) (not e!2599192))))

(declare-fun isEmpty!27205 (List!46089) Bool)

(assert (=> b!4186934 (= res!1717486 (not (isEmpty!27205 rules!3843)))))

(declare-fun b!4186935 () Bool)

(declare-fun res!1717494 () Bool)

(assert (=> b!4186935 (=> (not res!1717494) (not e!2599192))))

(declare-fun matchR!6298 (Regex!12559 List!46087) Bool)

(assert (=> b!4186935 (= res!1717494 (matchR!6298 (regex!7654 r!4142) p!2959))))

(declare-fun b!4186936 () Bool)

(declare-fun res!1717496 () Bool)

(assert (=> b!4186936 (=> (not res!1717496) (not e!2599192))))

(assert (=> b!4186936 (= res!1717496 (contains!9463 rules!3843 r!4142))))

(assert (=> b!4186937 (= e!2599194 (and tp!1279458 tp!1279454))))

(declare-fun b!4186938 () Bool)

(declare-fun tp!1279455 () Bool)

(assert (=> b!4186938 (= e!2599186 (and e!2599195 tp!1279455))))

(assert (= (and start!399490 res!1717491) b!4186920))

(assert (= (and b!4186920 res!1717489) b!4186926))

(assert (= (and b!4186926 res!1717483) b!4186934))

(assert (= (and b!4186934 res!1717486) b!4186924))

(assert (= (and b!4186924 res!1717488) b!4186936))

(assert (= (and b!4186936 res!1717496) b!4186925))

(assert (= (and b!4186925 res!1717487) b!4186918))

(assert (= (and b!4186918 res!1717492) b!4186935))

(assert (= (and b!4186935 res!1717494) b!4186922))

(assert (= (and b!4186922 res!1717484) b!4186933))

(assert (= (and b!4186933 (not res!1717493)) b!4186917))

(assert (= (and b!4186917 (not res!1717500)) b!4186923))

(assert (= (and b!4186923 (not res!1717490)) b!4186932))

(assert (= (and b!4186932 (not res!1717498)) b!4186915))

(assert (= (and b!4186915 (not res!1717485)) b!4186911))

(assert (= (and b!4186911 (not res!1717497)) b!4186931))

(assert (= (and b!4186931 (not res!1717495)) b!4186912))

(assert (= (and b!4186912 (not res!1717499)) b!4186913))

(assert (= b!4186928 b!4186927))

(assert (= start!399490 b!4186928))

(assert (= b!4186921 b!4186937))

(assert (= start!399490 b!4186921))

(assert (= b!4186914 b!4186929))

(assert (= b!4186938 b!4186914))

(assert (= (and start!399490 ((_ is Cons!45965) rules!3843)) b!4186938))

(assert (= (and start!399490 ((_ is Cons!45963) input!3342)) b!4186930))

(assert (= (and start!399490 ((_ is Cons!45963) pBis!107)) b!4186916))

(assert (= (and start!399490 ((_ is Cons!45963) p!2959)) b!4186919))

(declare-fun m!4775841 () Bool)

(assert (=> b!4186913 m!4775841))

(declare-fun m!4775843 () Bool)

(assert (=> b!4186932 m!4775843))

(declare-fun m!4775845 () Bool)

(assert (=> b!4186914 m!4775845))

(declare-fun m!4775847 () Bool)

(assert (=> b!4186914 m!4775847))

(declare-fun m!4775849 () Bool)

(assert (=> b!4186926 m!4775849))

(declare-fun m!4775851 () Bool)

(assert (=> b!4186917 m!4775851))

(declare-fun m!4775853 () Bool)

(assert (=> b!4186918 m!4775853))

(declare-fun m!4775855 () Bool)

(assert (=> b!4186911 m!4775855))

(declare-fun m!4775857 () Bool)

(assert (=> b!4186911 m!4775857))

(declare-fun m!4775859 () Bool)

(assert (=> b!4186911 m!4775859))

(assert (=> b!4186911 m!4775855))

(declare-fun m!4775861 () Bool)

(assert (=> b!4186911 m!4775861))

(declare-fun m!4775863 () Bool)

(assert (=> b!4186911 m!4775863))

(assert (=> b!4186911 m!4775863))

(declare-fun m!4775865 () Bool)

(assert (=> b!4186911 m!4775865))

(declare-fun m!4775867 () Bool)

(assert (=> b!4186935 m!4775867))

(declare-fun m!4775869 () Bool)

(assert (=> b!4186921 m!4775869))

(declare-fun m!4775871 () Bool)

(assert (=> b!4186921 m!4775871))

(declare-fun m!4775873 () Bool)

(assert (=> b!4186925 m!4775873))

(declare-fun m!4775875 () Bool)

(assert (=> b!4186931 m!4775875))

(declare-fun m!4775877 () Bool)

(assert (=> b!4186928 m!4775877))

(declare-fun m!4775879 () Bool)

(assert (=> b!4186928 m!4775879))

(declare-fun m!4775881 () Bool)

(assert (=> b!4186922 m!4775881))

(declare-fun m!4775883 () Bool)

(assert (=> b!4186920 m!4775883))

(declare-fun m!4775885 () Bool)

(assert (=> b!4186936 m!4775885))

(declare-fun m!4775887 () Bool)

(assert (=> b!4186915 m!4775887))

(declare-fun m!4775889 () Bool)

(assert (=> b!4186915 m!4775889))

(declare-fun m!4775891 () Bool)

(assert (=> b!4186915 m!4775891))

(declare-fun m!4775893 () Bool)

(assert (=> b!4186915 m!4775893))

(declare-fun m!4775895 () Bool)

(assert (=> b!4186915 m!4775895))

(declare-fun m!4775897 () Bool)

(assert (=> b!4186934 m!4775897))

(declare-fun m!4775899 () Bool)

(assert (=> b!4186933 m!4775899))

(declare-fun m!4775901 () Bool)

(assert (=> b!4186933 m!4775901))

(declare-fun m!4775903 () Bool)

(assert (=> b!4186933 m!4775903))

(declare-fun m!4775905 () Bool)

(assert (=> b!4186933 m!4775905))

(declare-fun m!4775907 () Bool)

(assert (=> b!4186933 m!4775907))

(declare-fun m!4775909 () Bool)

(assert (=> b!4186933 m!4775909))

(declare-fun m!4775911 () Bool)

(assert (=> b!4186933 m!4775911))

(declare-fun m!4775913 () Bool)

(assert (=> b!4186933 m!4775913))

(declare-fun m!4775915 () Bool)

(assert (=> b!4186923 m!4775915))

(declare-fun m!4775917 () Bool)

(assert (=> b!4186924 m!4775917))

(check-sat (not b!4186938) (not b!4186911) (not b!4186926) (not b!4186920) (not b!4186932) tp_is_empty!22081 b_and!327911 (not b!4186923) b_and!327909 (not b!4186921) (not b_next!122479) (not b_next!122481) b_and!327915 (not b_next!122471) (not b!4186919) (not b!4186931) (not b!4186936) (not b!4186933) (not b!4186928) (not b!4186930) (not b!4186915) (not b!4186924) (not b!4186935) b_and!327913 (not b!4186922) (not b_next!122475) b_and!327905 (not b!4186913) (not b!4186918) (not b!4186934) (not b!4186916) (not b_next!122477) (not b!4186917) b_and!327907 (not b_next!122473) (not b!4186914) (not b!4186925))
(check-sat b_and!327911 b_and!327913 b_and!327909 (not b_next!122479) (not b_next!122481) b_and!327915 (not b_next!122471) (not b_next!122477) (not b_next!122475) b_and!327905 b_and!327907 (not b_next!122473))
(get-model)

(declare-fun d!1235426 () Bool)

(assert (=> d!1235426 (= (inv!60511 (tag!8518 rBis!167)) (= (mod (str.len (value!238670 (tag!8518 rBis!167))) 2) 0))))

(assert (=> b!4186928 d!1235426))

(declare-fun d!1235428 () Bool)

(declare-fun res!1717515 () Bool)

(declare-fun e!2599207 () Bool)

(assert (=> d!1235428 (=> (not res!1717515) (not e!2599207))))

(declare-fun semiInverseModEq!3318 (Int Int) Bool)

(assert (=> d!1235428 (= res!1717515 (semiInverseModEq!3318 (toChars!10209 (transformation!7654 rBis!167)) (toValue!10350 (transformation!7654 rBis!167))))))

(assert (=> d!1235428 (= (inv!60513 (transformation!7654 rBis!167)) e!2599207)))

(declare-fun b!4186945 () Bool)

(declare-fun equivClasses!3217 (Int Int) Bool)

(assert (=> b!4186945 (= e!2599207 (equivClasses!3217 (toChars!10209 (transformation!7654 rBis!167)) (toValue!10350 (transformation!7654 rBis!167))))))

(assert (= (and d!1235428 res!1717515) b!4186945))

(declare-fun m!4775919 () Bool)

(assert (=> d!1235428 m!4775919))

(declare-fun m!4775921 () Bool)

(assert (=> b!4186945 m!4775921))

(assert (=> b!4186928 d!1235428))

(declare-fun d!1235432 () Bool)

(declare-fun lt!1491120 () Int)

(assert (=> d!1235432 (>= lt!1491120 0)))

(declare-fun e!2599212 () Int)

(assert (=> d!1235432 (= lt!1491120 e!2599212)))

(declare-fun c!714716 () Bool)

(assert (=> d!1235432 (= c!714716 ((_ is Nil!45963) pBis!107))))

(assert (=> d!1235432 (= (size!33757 pBis!107) lt!1491120)))

(declare-fun b!4186952 () Bool)

(assert (=> b!4186952 (= e!2599212 0)))

(declare-fun b!4186953 () Bool)

(assert (=> b!4186953 (= e!2599212 (+ 1 (size!33757 (t!345682 pBis!107))))))

(assert (= (and d!1235432 c!714716) b!4186952))

(assert (= (and d!1235432 (not c!714716)) b!4186953))

(declare-fun m!4775929 () Bool)

(assert (=> b!4186953 m!4775929))

(assert (=> b!4186917 d!1235432))

(declare-fun b!4187005 () Bool)

(declare-fun res!1717543 () Bool)

(declare-fun e!2599254 () Bool)

(assert (=> b!4187005 (=> res!1717543 e!2599254)))

(assert (=> b!4187005 (= res!1717543 (not ((_ is Concat!20444) (regex!7654 r!4142))))))

(declare-fun e!2599251 () Bool)

(assert (=> b!4187005 (= e!2599251 e!2599254)))

(declare-fun b!4187006 () Bool)

(declare-fun e!2599253 () Bool)

(declare-fun call!292024 () Bool)

(assert (=> b!4187006 (= e!2599253 call!292024)))

(declare-fun b!4187007 () Bool)

(declare-fun e!2599255 () Bool)

(declare-fun call!292022 () Bool)

(assert (=> b!4187007 (= e!2599255 call!292022)))

(declare-fun bm!292017 () Bool)

(assert (=> bm!292017 (= call!292022 call!292024)))

(declare-fun c!714730 () Bool)

(declare-fun bm!292018 () Bool)

(declare-fun c!714731 () Bool)

(assert (=> bm!292018 (= call!292024 (validRegex!5676 (ite c!714730 (reg!12888 (regex!7654 r!4142)) (ite c!714731 (regTwo!25631 (regex!7654 r!4142)) (regTwo!25630 (regex!7654 r!4142))))))))

(declare-fun b!4187008 () Bool)

(declare-fun e!2599256 () Bool)

(assert (=> b!4187008 (= e!2599256 call!292022)))

(declare-fun d!1235436 () Bool)

(declare-fun res!1717544 () Bool)

(declare-fun e!2599257 () Bool)

(assert (=> d!1235436 (=> res!1717544 e!2599257)))

(assert (=> d!1235436 (= res!1717544 ((_ is ElementMatch!12559) (regex!7654 r!4142)))))

(assert (=> d!1235436 (= (validRegex!5676 (regex!7654 r!4142)) e!2599257)))

(declare-fun b!4187009 () Bool)

(declare-fun e!2599252 () Bool)

(assert (=> b!4187009 (= e!2599252 e!2599251)))

(assert (=> b!4187009 (= c!714731 ((_ is Union!12559) (regex!7654 r!4142)))))

(declare-fun bm!292019 () Bool)

(declare-fun call!292023 () Bool)

(assert (=> bm!292019 (= call!292023 (validRegex!5676 (ite c!714731 (regOne!25631 (regex!7654 r!4142)) (regOne!25630 (regex!7654 r!4142)))))))

(declare-fun b!4187010 () Bool)

(assert (=> b!4187010 (= e!2599257 e!2599252)))

(assert (=> b!4187010 (= c!714730 ((_ is Star!12559) (regex!7654 r!4142)))))

(declare-fun b!4187011 () Bool)

(assert (=> b!4187011 (= e!2599252 e!2599253)))

(declare-fun res!1717547 () Bool)

(declare-fun nullable!4409 (Regex!12559) Bool)

(assert (=> b!4187011 (= res!1717547 (not (nullable!4409 (reg!12888 (regex!7654 r!4142)))))))

(assert (=> b!4187011 (=> (not res!1717547) (not e!2599253))))

(declare-fun b!4187012 () Bool)

(declare-fun res!1717545 () Bool)

(assert (=> b!4187012 (=> (not res!1717545) (not e!2599255))))

(assert (=> b!4187012 (= res!1717545 call!292023)))

(assert (=> b!4187012 (= e!2599251 e!2599255)))

(declare-fun b!4187013 () Bool)

(assert (=> b!4187013 (= e!2599254 e!2599256)))

(declare-fun res!1717546 () Bool)

(assert (=> b!4187013 (=> (not res!1717546) (not e!2599256))))

(assert (=> b!4187013 (= res!1717546 call!292023)))

(assert (= (and d!1235436 (not res!1717544)) b!4187010))

(assert (= (and b!4187010 c!714730) b!4187011))

(assert (= (and b!4187010 (not c!714730)) b!4187009))

(assert (= (and b!4187011 res!1717547) b!4187006))

(assert (= (and b!4187009 c!714731) b!4187012))

(assert (= (and b!4187009 (not c!714731)) b!4187005))

(assert (= (and b!4187012 res!1717545) b!4187007))

(assert (= (and b!4187005 (not res!1717543)) b!4187013))

(assert (= (and b!4187013 res!1717546) b!4187008))

(assert (= (or b!4187007 b!4187008) bm!292017))

(assert (= (or b!4187012 b!4187013) bm!292019))

(assert (= (or b!4187006 bm!292017) bm!292018))

(declare-fun m!4775939 () Bool)

(assert (=> bm!292018 m!4775939))

(declare-fun m!4775941 () Bool)

(assert (=> bm!292019 m!4775941))

(declare-fun m!4775943 () Bool)

(assert (=> b!4187011 m!4775943))

(assert (=> b!4186918 d!1235436))

(declare-fun b!4187039 () Bool)

(declare-fun e!2599272 () Bool)

(assert (=> b!4187039 (= e!2599272 (>= (size!33757 input!3342) (size!33757 p!2959)))))

(declare-fun b!4187037 () Bool)

(declare-fun res!1717567 () Bool)

(declare-fun e!2599271 () Bool)

(assert (=> b!4187037 (=> (not res!1717567) (not e!2599271))))

(declare-fun head!8886 (List!46087) C!25308)

(assert (=> b!4187037 (= res!1717567 (= (head!8886 p!2959) (head!8886 input!3342)))))

(declare-fun d!1235442 () Bool)

(assert (=> d!1235442 e!2599272))

(declare-fun res!1717566 () Bool)

(assert (=> d!1235442 (=> res!1717566 e!2599272)))

(declare-fun lt!1491128 () Bool)

(assert (=> d!1235442 (= res!1717566 (not lt!1491128))))

(declare-fun e!2599273 () Bool)

(assert (=> d!1235442 (= lt!1491128 e!2599273)))

(declare-fun res!1717569 () Bool)

(assert (=> d!1235442 (=> res!1717569 e!2599273)))

(assert (=> d!1235442 (= res!1717569 ((_ is Nil!45963) p!2959))))

(assert (=> d!1235442 (= (isPrefix!4511 p!2959 input!3342) lt!1491128)))

(declare-fun b!4187036 () Bool)

(assert (=> b!4187036 (= e!2599273 e!2599271)))

(declare-fun res!1717568 () Bool)

(assert (=> b!4187036 (=> (not res!1717568) (not e!2599271))))

(assert (=> b!4187036 (= res!1717568 (not ((_ is Nil!45963) input!3342)))))

(declare-fun b!4187038 () Bool)

(declare-fun tail!6733 (List!46087) List!46087)

(assert (=> b!4187038 (= e!2599271 (isPrefix!4511 (tail!6733 p!2959) (tail!6733 input!3342)))))

(assert (= (and d!1235442 (not res!1717569)) b!4187036))

(assert (= (and b!4187036 res!1717568) b!4187037))

(assert (= (and b!4187037 res!1717567) b!4187038))

(assert (= (and d!1235442 (not res!1717566)) b!4187039))

(assert (=> b!4187039 m!4775889))

(assert (=> b!4187039 m!4775907))

(declare-fun m!4775947 () Bool)

(assert (=> b!4187037 m!4775947))

(declare-fun m!4775949 () Bool)

(assert (=> b!4187037 m!4775949))

(declare-fun m!4775951 () Bool)

(assert (=> b!4187038 m!4775951))

(declare-fun m!4775953 () Bool)

(assert (=> b!4187038 m!4775953))

(assert (=> b!4187038 m!4775951))

(assert (=> b!4187038 m!4775953))

(declare-fun m!4775955 () Bool)

(assert (=> b!4187038 m!4775955))

(assert (=> b!4186920 d!1235442))

(declare-fun lt!1491135 () List!46087)

(declare-fun e!2599280 () Bool)

(declare-fun b!4187055 () Bool)

(assert (=> b!4187055 (= e!2599280 (or (not (= lt!1491107 Nil!45963)) (= lt!1491135 p!2959)))))

(declare-fun b!4187054 () Bool)

(declare-fun res!1717576 () Bool)

(assert (=> b!4187054 (=> (not res!1717576) (not e!2599280))))

(assert (=> b!4187054 (= res!1717576 (= (size!33757 lt!1491135) (+ (size!33757 p!2959) (size!33757 lt!1491107))))))

(declare-fun b!4187052 () Bool)

(declare-fun e!2599281 () List!46087)

(assert (=> b!4187052 (= e!2599281 lt!1491107)))

(declare-fun d!1235446 () Bool)

(assert (=> d!1235446 e!2599280))

(declare-fun res!1717577 () Bool)

(assert (=> d!1235446 (=> (not res!1717577) (not e!2599280))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7153 (List!46087) (InoxSet C!25308))

(assert (=> d!1235446 (= res!1717577 (= (content!7153 lt!1491135) ((_ map or) (content!7153 p!2959) (content!7153 lt!1491107))))))

(assert (=> d!1235446 (= lt!1491135 e!2599281)))

(declare-fun c!714737 () Bool)

(assert (=> d!1235446 (= c!714737 ((_ is Nil!45963) p!2959))))

(assert (=> d!1235446 (= (++!11726 p!2959 lt!1491107) lt!1491135)))

(declare-fun b!4187053 () Bool)

(assert (=> b!4187053 (= e!2599281 (Cons!45963 (h!51383 p!2959) (++!11726 (t!345682 p!2959) lt!1491107)))))

(assert (= (and d!1235446 c!714737) b!4187052))

(assert (= (and d!1235446 (not c!714737)) b!4187053))

(assert (= (and d!1235446 res!1717577) b!4187054))

(assert (= (and b!4187054 res!1717576) b!4187055))

(declare-fun m!4775971 () Bool)

(assert (=> b!4187054 m!4775971))

(assert (=> b!4187054 m!4775907))

(declare-fun m!4775973 () Bool)

(assert (=> b!4187054 m!4775973))

(declare-fun m!4775975 () Bool)

(assert (=> d!1235446 m!4775975))

(declare-fun m!4775977 () Bool)

(assert (=> d!1235446 m!4775977))

(declare-fun m!4775979 () Bool)

(assert (=> d!1235446 m!4775979))

(declare-fun m!4775981 () Bool)

(assert (=> b!4187053 m!4775981))

(assert (=> b!4186931 d!1235446))

(declare-fun b!4187134 () Bool)

(declare-fun res!1717634 () Bool)

(declare-fun e!2599319 () Bool)

(assert (=> b!4187134 (=> (not res!1717634) (not e!2599319))))

(declare-fun lt!1491169 () Option!9848)

(assert (=> b!4187134 (= res!1717634 (= (value!238671 (_1!25019 (get!14940 lt!1491169))) (apply!10619 (transformation!7654 (rule!10728 (_1!25019 (get!14940 lt!1491169)))) (seqFromList!5679 (originalCharacters!8042 (_1!25019 (get!14940 lt!1491169)))))))))

(declare-fun b!4187135 () Bool)

(declare-fun res!1717638 () Bool)

(assert (=> b!4187135 (=> (not res!1717638) (not e!2599319))))

(assert (=> b!4187135 (= res!1717638 (= (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491169)))) (originalCharacters!8042 (_1!25019 (get!14940 lt!1491169)))))))

(declare-fun b!4187136 () Bool)

(declare-fun res!1717635 () Bool)

(assert (=> b!4187136 (=> (not res!1717635) (not e!2599319))))

(assert (=> b!4187136 (= res!1717635 (< (size!33757 (_2!25019 (get!14940 lt!1491169))) (size!33757 input!3342)))))

(declare-fun b!4187137 () Bool)

(assert (=> b!4187137 (= e!2599319 (contains!9463 rules!3843 (rule!10728 (_1!25019 (get!14940 lt!1491169)))))))

(declare-fun b!4187138 () Bool)

(declare-fun e!2599320 () Option!9848)

(declare-fun call!292029 () Option!9848)

(assert (=> b!4187138 (= e!2599320 call!292029)))

(declare-fun d!1235454 () Bool)

(declare-fun e!2599318 () Bool)

(assert (=> d!1235454 e!2599318))

(declare-fun res!1717632 () Bool)

(assert (=> d!1235454 (=> res!1717632 e!2599318)))

(assert (=> d!1235454 (= res!1717632 (isEmpty!27204 lt!1491169))))

(assert (=> d!1235454 (= lt!1491169 e!2599320)))

(declare-fun c!714750 () Bool)

(assert (=> d!1235454 (= c!714750 (and ((_ is Cons!45965) rules!3843) ((_ is Nil!45965) (t!345684 rules!3843))))))

(declare-fun lt!1491167 () Unit!65053)

(declare-fun lt!1491170 () Unit!65053)

(assert (=> d!1235454 (= lt!1491167 lt!1491170)))

(assert (=> d!1235454 (isPrefix!4511 input!3342 input!3342)))

(assert (=> d!1235454 (= lt!1491170 (lemmaIsPrefixRefl!2940 input!3342 input!3342))))

(declare-fun rulesValidInductive!2823 (LexerInterface!7247 List!46089) Bool)

(assert (=> d!1235454 (rulesValidInductive!2823 thiss!25986 rules!3843)))

(assert (=> d!1235454 (= (maxPrefix!4295 thiss!25986 rules!3843 input!3342) lt!1491169)))

(declare-fun b!4187139 () Bool)

(declare-fun lt!1491171 () Option!9848)

(declare-fun lt!1491168 () Option!9848)

(assert (=> b!4187139 (= e!2599320 (ite (and ((_ is None!9847) lt!1491171) ((_ is None!9847) lt!1491168)) None!9847 (ite ((_ is None!9847) lt!1491168) lt!1491171 (ite ((_ is None!9847) lt!1491171) lt!1491168 (ite (>= (size!33756 (_1!25019 (v!40669 lt!1491171))) (size!33756 (_1!25019 (v!40669 lt!1491168)))) lt!1491171 lt!1491168)))))))

(assert (=> b!4187139 (= lt!1491171 call!292029)))

(assert (=> b!4187139 (= lt!1491168 (maxPrefix!4295 thiss!25986 (t!345684 rules!3843) input!3342))))

(declare-fun b!4187140 () Bool)

(declare-fun res!1717636 () Bool)

(assert (=> b!4187140 (=> (not res!1717636) (not e!2599319))))

(assert (=> b!4187140 (= res!1717636 (= (++!11726 (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491169)))) (_2!25019 (get!14940 lt!1491169))) input!3342))))

(declare-fun b!4187141 () Bool)

(assert (=> b!4187141 (= e!2599318 e!2599319)))

(declare-fun res!1717633 () Bool)

(assert (=> b!4187141 (=> (not res!1717633) (not e!2599319))))

(declare-fun isDefined!7339 (Option!9848) Bool)

(assert (=> b!4187141 (= res!1717633 (isDefined!7339 lt!1491169))))

(declare-fun bm!292024 () Bool)

(assert (=> bm!292024 (= call!292029 (maxPrefixOneRule!3256 thiss!25986 (h!51385 rules!3843) input!3342))))

(declare-fun b!4187142 () Bool)

(declare-fun res!1717637 () Bool)

(assert (=> b!4187142 (=> (not res!1717637) (not e!2599319))))

(assert (=> b!4187142 (= res!1717637 (matchR!6298 (regex!7654 (rule!10728 (_1!25019 (get!14940 lt!1491169)))) (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491169))))))))

(assert (= (and d!1235454 c!714750) b!4187138))

(assert (= (and d!1235454 (not c!714750)) b!4187139))

(assert (= (or b!4187138 b!4187139) bm!292024))

(assert (= (and d!1235454 (not res!1717632)) b!4187141))

(assert (= (and b!4187141 res!1717633) b!4187135))

(assert (= (and b!4187135 res!1717638) b!4187136))

(assert (= (and b!4187136 res!1717635) b!4187140))

(assert (= (and b!4187140 res!1717636) b!4187134))

(assert (= (and b!4187134 res!1717634) b!4187142))

(assert (= (and b!4187142 res!1717637) b!4187137))

(declare-fun m!4776045 () Bool)

(assert (=> b!4187137 m!4776045))

(declare-fun m!4776047 () Bool)

(assert (=> b!4187137 m!4776047))

(declare-fun m!4776049 () Bool)

(assert (=> b!4187141 m!4776049))

(assert (=> b!4187134 m!4776045))

(declare-fun m!4776051 () Bool)

(assert (=> b!4187134 m!4776051))

(assert (=> b!4187134 m!4776051))

(declare-fun m!4776053 () Bool)

(assert (=> b!4187134 m!4776053))

(assert (=> b!4187135 m!4776045))

(declare-fun m!4776055 () Bool)

(assert (=> b!4187135 m!4776055))

(assert (=> b!4187135 m!4776055))

(declare-fun m!4776057 () Bool)

(assert (=> b!4187135 m!4776057))

(assert (=> b!4187140 m!4776045))

(assert (=> b!4187140 m!4776055))

(assert (=> b!4187140 m!4776055))

(assert (=> b!4187140 m!4776057))

(assert (=> b!4187140 m!4776057))

(declare-fun m!4776059 () Bool)

(assert (=> b!4187140 m!4776059))

(declare-fun m!4776061 () Bool)

(assert (=> d!1235454 m!4776061))

(assert (=> d!1235454 m!4775913))

(assert (=> d!1235454 m!4775905))

(declare-fun m!4776063 () Bool)

(assert (=> d!1235454 m!4776063))

(declare-fun m!4776065 () Bool)

(assert (=> bm!292024 m!4776065))

(assert (=> b!4187136 m!4776045))

(declare-fun m!4776067 () Bool)

(assert (=> b!4187136 m!4776067))

(assert (=> b!4187136 m!4775889))

(declare-fun m!4776069 () Bool)

(assert (=> b!4187139 m!4776069))

(assert (=> b!4187142 m!4776045))

(assert (=> b!4187142 m!4776055))

(assert (=> b!4187142 m!4776055))

(assert (=> b!4187142 m!4776057))

(assert (=> b!4187142 m!4776057))

(declare-fun m!4776071 () Bool)

(assert (=> b!4187142 m!4776071))

(assert (=> b!4186932 d!1235454))

(declare-fun d!1235468 () Bool)

(assert (=> d!1235468 (= (inv!60511 (tag!8518 r!4142)) (= (mod (str.len (value!238670 (tag!8518 r!4142))) 2) 0))))

(assert (=> b!4186921 d!1235468))

(declare-fun d!1235470 () Bool)

(declare-fun res!1717655 () Bool)

(declare-fun e!2599334 () Bool)

(assert (=> d!1235470 (=> (not res!1717655) (not e!2599334))))

(assert (=> d!1235470 (= res!1717655 (semiInverseModEq!3318 (toChars!10209 (transformation!7654 r!4142)) (toValue!10350 (transformation!7654 r!4142))))))

(assert (=> d!1235470 (= (inv!60513 (transformation!7654 r!4142)) e!2599334)))

(declare-fun b!4187165 () Bool)

(assert (=> b!4187165 (= e!2599334 (equivClasses!3217 (toChars!10209 (transformation!7654 r!4142)) (toValue!10350 (transformation!7654 r!4142))))))

(assert (= (and d!1235470 res!1717655) b!4187165))

(declare-fun m!4776073 () Bool)

(assert (=> d!1235470 m!4776073))

(declare-fun m!4776075 () Bool)

(assert (=> b!4187165 m!4776075))

(assert (=> b!4186921 d!1235470))

(declare-fun d!1235472 () Bool)

(declare-fun res!1717667 () Bool)

(declare-fun e!2599343 () Bool)

(assert (=> d!1235472 (=> (not res!1717667) (not e!2599343))))

(assert (=> d!1235472 (= res!1717667 (validRegex!5676 (regex!7654 r!4142)))))

(assert (=> d!1235472 (= (ruleValid!3372 thiss!25986 r!4142) e!2599343)))

(declare-fun b!4187177 () Bool)

(declare-fun res!1717668 () Bool)

(assert (=> b!4187177 (=> (not res!1717668) (not e!2599343))))

(assert (=> b!4187177 (= res!1717668 (not (nullable!4409 (regex!7654 r!4142))))))

(declare-fun b!4187178 () Bool)

(assert (=> b!4187178 (= e!2599343 (not (= (tag!8518 r!4142) (String!53287 ""))))))

(assert (= (and d!1235472 res!1717667) b!4187177))

(assert (= (and b!4187177 res!1717668) b!4187178))

(assert (=> d!1235472 m!4775853))

(declare-fun m!4776091 () Bool)

(assert (=> b!4187177 m!4776091))

(assert (=> b!4186922 d!1235472))

(declare-fun d!1235482 () Bool)

(assert (=> d!1235482 (isPrefix!4511 lt!1491110 (++!11726 lt!1491110 (_2!25019 lt!1491105)))))

(declare-fun lt!1491179 () Unit!65053)

(declare-fun choose!25638 (List!46087 List!46087) Unit!65053)

(assert (=> d!1235482 (= lt!1491179 (choose!25638 lt!1491110 (_2!25019 lt!1491105)))))

(assert (=> d!1235482 (= (lemmaConcatTwoListThenFirstIsPrefix!3008 lt!1491110 (_2!25019 lt!1491105)) lt!1491179)))

(declare-fun bs!596544 () Bool)

(assert (= bs!596544 d!1235482))

(assert (=> bs!596544 m!4775863))

(assert (=> bs!596544 m!4775863))

(assert (=> bs!596544 m!4775865))

(declare-fun m!4776093 () Bool)

(assert (=> bs!596544 m!4776093))

(assert (=> b!4186911 d!1235482))

(declare-fun d!1235484 () Bool)

(declare-fun lt!1491182 () BalanceConc!27324)

(assert (=> d!1235484 (= (list!16604 lt!1491182) (originalCharacters!8042 (_1!25019 lt!1491105)))))

(declare-fun dynLambda!19760 (Int TokenValue!7884) BalanceConc!27324)

(assert (=> d!1235484 (= lt!1491182 (dynLambda!19760 (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105)))) (value!238671 (_1!25019 lt!1491105))))))

(assert (=> d!1235484 (= (charsOf!5089 (_1!25019 lt!1491105)) lt!1491182)))

(declare-fun b_lambda!123127 () Bool)

(assert (=> (not b_lambda!123127) (not d!1235484)))

(declare-fun tb!250811 () Bool)

(declare-fun t!345686 () Bool)

(assert (=> (and b!4186937 (= (toChars!10209 (transformation!7654 r!4142)) (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105))))) t!345686) tb!250811))

(declare-fun b!4187183 () Bool)

(declare-fun e!2599346 () Bool)

(declare-fun tp!1279469 () Bool)

(declare-fun inv!60514 (Conc!13865) Bool)

(assert (=> b!4187183 (= e!2599346 (and (inv!60514 (c!714713 (dynLambda!19760 (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105)))) (value!238671 (_1!25019 lt!1491105))))) tp!1279469))))

(declare-fun result!305636 () Bool)

(declare-fun inv!60515 (BalanceConc!27324) Bool)

(assert (=> tb!250811 (= result!305636 (and (inv!60515 (dynLambda!19760 (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105)))) (value!238671 (_1!25019 lt!1491105)))) e!2599346))))

(assert (= tb!250811 b!4187183))

(declare-fun m!4776095 () Bool)

(assert (=> b!4187183 m!4776095))

(declare-fun m!4776097 () Bool)

(assert (=> tb!250811 m!4776097))

(assert (=> d!1235484 t!345686))

(declare-fun b_and!327917 () Bool)

(assert (= b_and!327907 (and (=> t!345686 result!305636) b_and!327917)))

(declare-fun tb!250813 () Bool)

(declare-fun t!345688 () Bool)

(assert (=> (and b!4186929 (= (toChars!10209 (transformation!7654 (h!51385 rules!3843))) (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105))))) t!345688) tb!250813))

(declare-fun result!305640 () Bool)

(assert (= result!305640 result!305636))

(assert (=> d!1235484 t!345688))

(declare-fun b_and!327919 () Bool)

(assert (= b_and!327911 (and (=> t!345688 result!305640) b_and!327919)))

(declare-fun t!345690 () Bool)

(declare-fun tb!250815 () Bool)

(assert (=> (and b!4186927 (= (toChars!10209 (transformation!7654 rBis!167)) (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105))))) t!345690) tb!250815))

(declare-fun result!305642 () Bool)

(assert (= result!305642 result!305636))

(assert (=> d!1235484 t!345690))

(declare-fun b_and!327921 () Bool)

(assert (= b_and!327915 (and (=> t!345690 result!305642) b_and!327921)))

(declare-fun m!4776099 () Bool)

(assert (=> d!1235484 m!4776099))

(declare-fun m!4776101 () Bool)

(assert (=> d!1235484 m!4776101))

(assert (=> b!4186911 d!1235484))

(declare-fun d!1235486 () Bool)

(assert (=> d!1235486 (= (get!14940 lt!1491111) (v!40669 lt!1491111))))

(assert (=> b!4186911 d!1235486))

(declare-fun e!2599347 () Bool)

(declare-fun lt!1491183 () List!46087)

(declare-fun b!4187187 () Bool)

(assert (=> b!4187187 (= e!2599347 (or (not (= (_2!25019 lt!1491105) Nil!45963)) (= lt!1491183 lt!1491110)))))

(declare-fun b!4187186 () Bool)

(declare-fun res!1717669 () Bool)

(assert (=> b!4187186 (=> (not res!1717669) (not e!2599347))))

(assert (=> b!4187186 (= res!1717669 (= (size!33757 lt!1491183) (+ (size!33757 lt!1491110) (size!33757 (_2!25019 lt!1491105)))))))

(declare-fun b!4187184 () Bool)

(declare-fun e!2599348 () List!46087)

(assert (=> b!4187184 (= e!2599348 (_2!25019 lt!1491105))))

(declare-fun d!1235488 () Bool)

(assert (=> d!1235488 e!2599347))

(declare-fun res!1717670 () Bool)

(assert (=> d!1235488 (=> (not res!1717670) (not e!2599347))))

(assert (=> d!1235488 (= res!1717670 (= (content!7153 lt!1491183) ((_ map or) (content!7153 lt!1491110) (content!7153 (_2!25019 lt!1491105)))))))

(assert (=> d!1235488 (= lt!1491183 e!2599348)))

(declare-fun c!714754 () Bool)

(assert (=> d!1235488 (= c!714754 ((_ is Nil!45963) lt!1491110))))

(assert (=> d!1235488 (= (++!11726 lt!1491110 (_2!25019 lt!1491105)) lt!1491183)))

(declare-fun b!4187185 () Bool)

(assert (=> b!4187185 (= e!2599348 (Cons!45963 (h!51383 lt!1491110) (++!11726 (t!345682 lt!1491110) (_2!25019 lt!1491105))))))

(assert (= (and d!1235488 c!714754) b!4187184))

(assert (= (and d!1235488 (not c!714754)) b!4187185))

(assert (= (and d!1235488 res!1717670) b!4187186))

(assert (= (and b!4187186 res!1717669) b!4187187))

(declare-fun m!4776103 () Bool)

(assert (=> b!4187186 m!4776103))

(declare-fun m!4776105 () Bool)

(assert (=> b!4187186 m!4776105))

(declare-fun m!4776107 () Bool)

(assert (=> b!4187186 m!4776107))

(declare-fun m!4776109 () Bool)

(assert (=> d!1235488 m!4776109))

(declare-fun m!4776111 () Bool)

(assert (=> d!1235488 m!4776111))

(declare-fun m!4776113 () Bool)

(assert (=> d!1235488 m!4776113))

(declare-fun m!4776115 () Bool)

(assert (=> b!4187185 m!4776115))

(assert (=> b!4186911 d!1235488))

(declare-fun d!1235490 () Bool)

(declare-fun list!16605 (Conc!13865) List!46087)

(assert (=> d!1235490 (= (list!16604 (charsOf!5089 (_1!25019 lt!1491105))) (list!16605 (c!714713 (charsOf!5089 (_1!25019 lt!1491105)))))))

(declare-fun bs!596545 () Bool)

(assert (= bs!596545 d!1235490))

(declare-fun m!4776117 () Bool)

(assert (=> bs!596545 m!4776117))

(assert (=> b!4186911 d!1235490))

(declare-fun b!4187191 () Bool)

(declare-fun e!2599350 () Bool)

(assert (=> b!4187191 (= e!2599350 (>= (size!33757 (++!11726 lt!1491110 (_2!25019 lt!1491105))) (size!33757 lt!1491110)))))

(declare-fun b!4187189 () Bool)

(declare-fun res!1717672 () Bool)

(declare-fun e!2599349 () Bool)

(assert (=> b!4187189 (=> (not res!1717672) (not e!2599349))))

(assert (=> b!4187189 (= res!1717672 (= (head!8886 lt!1491110) (head!8886 (++!11726 lt!1491110 (_2!25019 lt!1491105)))))))

(declare-fun d!1235492 () Bool)

(assert (=> d!1235492 e!2599350))

(declare-fun res!1717671 () Bool)

(assert (=> d!1235492 (=> res!1717671 e!2599350)))

(declare-fun lt!1491184 () Bool)

(assert (=> d!1235492 (= res!1717671 (not lt!1491184))))

(declare-fun e!2599351 () Bool)

(assert (=> d!1235492 (= lt!1491184 e!2599351)))

(declare-fun res!1717674 () Bool)

(assert (=> d!1235492 (=> res!1717674 e!2599351)))

(assert (=> d!1235492 (= res!1717674 ((_ is Nil!45963) lt!1491110))))

(assert (=> d!1235492 (= (isPrefix!4511 lt!1491110 (++!11726 lt!1491110 (_2!25019 lt!1491105))) lt!1491184)))

(declare-fun b!4187188 () Bool)

(assert (=> b!4187188 (= e!2599351 e!2599349)))

(declare-fun res!1717673 () Bool)

(assert (=> b!4187188 (=> (not res!1717673) (not e!2599349))))

(assert (=> b!4187188 (= res!1717673 (not ((_ is Nil!45963) (++!11726 lt!1491110 (_2!25019 lt!1491105)))))))

(declare-fun b!4187190 () Bool)

(assert (=> b!4187190 (= e!2599349 (isPrefix!4511 (tail!6733 lt!1491110) (tail!6733 (++!11726 lt!1491110 (_2!25019 lt!1491105)))))))

(assert (= (and d!1235492 (not res!1717674)) b!4187188))

(assert (= (and b!4187188 res!1717673) b!4187189))

(assert (= (and b!4187189 res!1717672) b!4187190))

(assert (= (and d!1235492 (not res!1717671)) b!4187191))

(assert (=> b!4187191 m!4775863))

(declare-fun m!4776119 () Bool)

(assert (=> b!4187191 m!4776119))

(assert (=> b!4187191 m!4776105))

(declare-fun m!4776121 () Bool)

(assert (=> b!4187189 m!4776121))

(assert (=> b!4187189 m!4775863))

(declare-fun m!4776123 () Bool)

(assert (=> b!4187189 m!4776123))

(declare-fun m!4776125 () Bool)

(assert (=> b!4187190 m!4776125))

(assert (=> b!4187190 m!4775863))

(declare-fun m!4776127 () Bool)

(assert (=> b!4187190 m!4776127))

(assert (=> b!4187190 m!4776125))

(assert (=> b!4187190 m!4776127))

(declare-fun m!4776129 () Bool)

(assert (=> b!4187190 m!4776129))

(assert (=> b!4186911 d!1235492))

(declare-fun b!4187195 () Bool)

(declare-fun e!2599353 () Bool)

(assert (=> b!4187195 (= e!2599353 (>= (size!33757 input!3342) (size!33757 input!3342)))))

(declare-fun b!4187193 () Bool)

(declare-fun res!1717676 () Bool)

(declare-fun e!2599352 () Bool)

(assert (=> b!4187193 (=> (not res!1717676) (not e!2599352))))

(assert (=> b!4187193 (= res!1717676 (= (head!8886 input!3342) (head!8886 input!3342)))))

(declare-fun d!1235494 () Bool)

(assert (=> d!1235494 e!2599353))

(declare-fun res!1717675 () Bool)

(assert (=> d!1235494 (=> res!1717675 e!2599353)))

(declare-fun lt!1491185 () Bool)

(assert (=> d!1235494 (= res!1717675 (not lt!1491185))))

(declare-fun e!2599354 () Bool)

(assert (=> d!1235494 (= lt!1491185 e!2599354)))

(declare-fun res!1717678 () Bool)

(assert (=> d!1235494 (=> res!1717678 e!2599354)))

(assert (=> d!1235494 (= res!1717678 ((_ is Nil!45963) input!3342))))

(assert (=> d!1235494 (= (isPrefix!4511 input!3342 input!3342) lt!1491185)))

(declare-fun b!4187192 () Bool)

(assert (=> b!4187192 (= e!2599354 e!2599352)))

(declare-fun res!1717677 () Bool)

(assert (=> b!4187192 (=> (not res!1717677) (not e!2599352))))

(assert (=> b!4187192 (= res!1717677 (not ((_ is Nil!45963) input!3342)))))

(declare-fun b!4187194 () Bool)

(assert (=> b!4187194 (= e!2599352 (isPrefix!4511 (tail!6733 input!3342) (tail!6733 input!3342)))))

(assert (= (and d!1235494 (not res!1717678)) b!4187192))

(assert (= (and b!4187192 res!1717677) b!4187193))

(assert (= (and b!4187193 res!1717676) b!4187194))

(assert (= (and d!1235494 (not res!1717675)) b!4187195))

(assert (=> b!4187195 m!4775889))

(assert (=> b!4187195 m!4775889))

(assert (=> b!4187193 m!4775949))

(assert (=> b!4187193 m!4775949))

(assert (=> b!4187194 m!4775953))

(assert (=> b!4187194 m!4775953))

(assert (=> b!4187194 m!4775953))

(assert (=> b!4187194 m!4775953))

(declare-fun m!4776131 () Bool)

(assert (=> b!4187194 m!4776131))

(assert (=> b!4186933 d!1235494))

(declare-fun d!1235496 () Bool)

(declare-fun fromListB!2601 (List!46087) BalanceConc!27324)

(assert (=> d!1235496 (= (seqFromList!5679 p!2959) (fromListB!2601 p!2959))))

(declare-fun bs!596546 () Bool)

(assert (= bs!596546 d!1235496))

(declare-fun m!4776133 () Bool)

(assert (=> bs!596546 m!4776133))

(assert (=> b!4186933 d!1235496))

(declare-fun d!1235498 () Bool)

(assert (=> d!1235498 (isPrefix!4511 input!3342 input!3342)))

(declare-fun lt!1491198 () Unit!65053)

(declare-fun choose!25640 (List!46087 List!46087) Unit!65053)

(assert (=> d!1235498 (= lt!1491198 (choose!25640 input!3342 input!3342))))

(assert (=> d!1235498 (= (lemmaIsPrefixRefl!2940 input!3342 input!3342) lt!1491198)))

(declare-fun bs!596547 () Bool)

(assert (= bs!596547 d!1235498))

(assert (=> bs!596547 m!4775913))

(declare-fun m!4776135 () Bool)

(assert (=> bs!596547 m!4776135))

(assert (=> b!4186933 d!1235498))

(declare-fun b!4187252 () Bool)

(declare-fun res!1717721 () Bool)

(declare-fun e!2599381 () Bool)

(assert (=> b!4187252 (=> (not res!1717721) (not e!2599381))))

(declare-fun lt!1491225 () Option!9848)

(assert (=> b!4187252 (= res!1717721 (= (value!238671 (_1!25019 (get!14940 lt!1491225))) (apply!10619 (transformation!7654 (rule!10728 (_1!25019 (get!14940 lt!1491225)))) (seqFromList!5679 (originalCharacters!8042 (_1!25019 (get!14940 lt!1491225)))))))))

(declare-fun b!4187253 () Bool)

(declare-fun e!2599378 () Bool)

(declare-datatypes ((tuple2!43774 0))(
  ( (tuple2!43775 (_1!25021 List!46087) (_2!25021 List!46087)) )
))
(declare-fun findLongestMatchInner!1599 (Regex!12559 List!46087 Int List!46087 List!46087 Int) tuple2!43774)

(assert (=> b!4187253 (= e!2599378 (matchR!6298 (regex!7654 r!4142) (_1!25021 (findLongestMatchInner!1599 (regex!7654 r!4142) Nil!45963 (size!33757 Nil!45963) input!3342 input!3342 (size!33757 input!3342)))))))

(declare-fun b!4187254 () Bool)

(declare-fun res!1717718 () Bool)

(assert (=> b!4187254 (=> (not res!1717718) (not e!2599381))))

(assert (=> b!4187254 (= res!1717718 (= (rule!10728 (_1!25019 (get!14940 lt!1491225))) r!4142))))

(declare-fun b!4187255 () Bool)

(declare-fun res!1717719 () Bool)

(assert (=> b!4187255 (=> (not res!1717719) (not e!2599381))))

(assert (=> b!4187255 (= res!1717719 (< (size!33757 (_2!25019 (get!14940 lt!1491225))) (size!33757 input!3342)))))

(declare-fun b!4187256 () Bool)

(declare-fun e!2599379 () Bool)

(assert (=> b!4187256 (= e!2599379 e!2599381)))

(declare-fun res!1717723 () Bool)

(assert (=> b!4187256 (=> (not res!1717723) (not e!2599381))))

(assert (=> b!4187256 (= res!1717723 (matchR!6298 (regex!7654 r!4142) (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491225))))))))

(declare-fun b!4187257 () Bool)

(assert (=> b!4187257 (= e!2599381 (= (size!33756 (_1!25019 (get!14940 lt!1491225))) (size!33757 (originalCharacters!8042 (_1!25019 (get!14940 lt!1491225))))))))

(declare-fun d!1235500 () Bool)

(assert (=> d!1235500 e!2599379))

(declare-fun res!1717722 () Bool)

(assert (=> d!1235500 (=> res!1717722 e!2599379)))

(assert (=> d!1235500 (= res!1717722 (isEmpty!27204 lt!1491225))))

(declare-fun e!2599380 () Option!9848)

(assert (=> d!1235500 (= lt!1491225 e!2599380)))

(declare-fun c!714764 () Bool)

(declare-fun lt!1491227 () tuple2!43774)

(declare-fun isEmpty!27207 (List!46087) Bool)

(assert (=> d!1235500 (= c!714764 (isEmpty!27207 (_1!25021 lt!1491227)))))

(declare-fun findLongestMatch!1512 (Regex!12559 List!46087) tuple2!43774)

(assert (=> d!1235500 (= lt!1491227 (findLongestMatch!1512 (regex!7654 r!4142) input!3342))))

(assert (=> d!1235500 (ruleValid!3372 thiss!25986 r!4142)))

(assert (=> d!1235500 (= (maxPrefixOneRule!3256 thiss!25986 r!4142 input!3342) lt!1491225)))

(declare-fun b!4187251 () Bool)

(declare-fun size!33759 (BalanceConc!27324) Int)

(assert (=> b!4187251 (= e!2599380 (Some!9847 (tuple2!43771 (Token!14023 (apply!10619 (transformation!7654 r!4142) (seqFromList!5679 (_1!25021 lt!1491227))) r!4142 (size!33759 (seqFromList!5679 (_1!25021 lt!1491227))) (_1!25021 lt!1491227)) (_2!25021 lt!1491227))))))

(declare-fun lt!1491223 () Unit!65053)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1572 (Regex!12559 List!46087) Unit!65053)

(assert (=> b!4187251 (= lt!1491223 (longestMatchIsAcceptedByMatchOrIsEmpty!1572 (regex!7654 r!4142) input!3342))))

(declare-fun res!1717724 () Bool)

(assert (=> b!4187251 (= res!1717724 (isEmpty!27207 (_1!25021 (findLongestMatchInner!1599 (regex!7654 r!4142) Nil!45963 (size!33757 Nil!45963) input!3342 input!3342 (size!33757 input!3342)))))))

(assert (=> b!4187251 (=> res!1717724 e!2599378)))

(assert (=> b!4187251 e!2599378))

(declare-fun lt!1491224 () Unit!65053)

(assert (=> b!4187251 (= lt!1491224 lt!1491223)))

(declare-fun lt!1491226 () Unit!65053)

(assert (=> b!4187251 (= lt!1491226 (lemmaSemiInverse!2420 (transformation!7654 r!4142) (seqFromList!5679 (_1!25021 lt!1491227))))))

(declare-fun b!4187258 () Bool)

(declare-fun res!1717720 () Bool)

(assert (=> b!4187258 (=> (not res!1717720) (not e!2599381))))

(assert (=> b!4187258 (= res!1717720 (= (++!11726 (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491225)))) (_2!25019 (get!14940 lt!1491225))) input!3342))))

(declare-fun b!4187259 () Bool)

(assert (=> b!4187259 (= e!2599380 None!9847)))

(assert (= (and d!1235500 c!714764) b!4187259))

(assert (= (and d!1235500 (not c!714764)) b!4187251))

(assert (= (and b!4187251 (not res!1717724)) b!4187253))

(assert (= (and d!1235500 (not res!1717722)) b!4187256))

(assert (= (and b!4187256 res!1717723) b!4187258))

(assert (= (and b!4187258 res!1717720) b!4187255))

(assert (= (and b!4187255 res!1717719) b!4187254))

(assert (= (and b!4187254 res!1717718) b!4187252))

(assert (= (and b!4187252 res!1717721) b!4187257))

(declare-fun m!4776175 () Bool)

(assert (=> b!4187251 m!4776175))

(declare-fun m!4776177 () Bool)

(assert (=> b!4187251 m!4776177))

(declare-fun m!4776179 () Bool)

(assert (=> b!4187251 m!4776179))

(assert (=> b!4187251 m!4776175))

(declare-fun m!4776181 () Bool)

(assert (=> b!4187251 m!4776181))

(assert (=> b!4187251 m!4775889))

(declare-fun m!4776183 () Bool)

(assert (=> b!4187251 m!4776183))

(assert (=> b!4187251 m!4775889))

(declare-fun m!4776185 () Bool)

(assert (=> b!4187251 m!4776185))

(declare-fun m!4776187 () Bool)

(assert (=> b!4187251 m!4776187))

(assert (=> b!4187251 m!4776175))

(declare-fun m!4776189 () Bool)

(assert (=> b!4187251 m!4776189))

(assert (=> b!4187251 m!4776175))

(assert (=> b!4187251 m!4776183))

(declare-fun m!4776191 () Bool)

(assert (=> b!4187256 m!4776191))

(declare-fun m!4776193 () Bool)

(assert (=> b!4187256 m!4776193))

(assert (=> b!4187256 m!4776193))

(declare-fun m!4776195 () Bool)

(assert (=> b!4187256 m!4776195))

(assert (=> b!4187256 m!4776195))

(declare-fun m!4776197 () Bool)

(assert (=> b!4187256 m!4776197))

(assert (=> b!4187252 m!4776191))

(declare-fun m!4776199 () Bool)

(assert (=> b!4187252 m!4776199))

(assert (=> b!4187252 m!4776199))

(declare-fun m!4776201 () Bool)

(assert (=> b!4187252 m!4776201))

(assert (=> b!4187257 m!4776191))

(declare-fun m!4776203 () Bool)

(assert (=> b!4187257 m!4776203))

(assert (=> b!4187254 m!4776191))

(assert (=> b!4187255 m!4776191))

(declare-fun m!4776205 () Bool)

(assert (=> b!4187255 m!4776205))

(assert (=> b!4187255 m!4775889))

(declare-fun m!4776207 () Bool)

(assert (=> d!1235500 m!4776207))

(declare-fun m!4776209 () Bool)

(assert (=> d!1235500 m!4776209))

(declare-fun m!4776211 () Bool)

(assert (=> d!1235500 m!4776211))

(assert (=> d!1235500 m!4775881))

(assert (=> b!4187258 m!4776191))

(assert (=> b!4187258 m!4776193))

(assert (=> b!4187258 m!4776193))

(assert (=> b!4187258 m!4776195))

(assert (=> b!4187258 m!4776195))

(declare-fun m!4776213 () Bool)

(assert (=> b!4187258 m!4776213))

(assert (=> b!4187253 m!4776183))

(assert (=> b!4187253 m!4775889))

(assert (=> b!4187253 m!4776183))

(assert (=> b!4187253 m!4775889))

(assert (=> b!4187253 m!4776185))

(declare-fun m!4776215 () Bool)

(assert (=> b!4187253 m!4776215))

(assert (=> b!4186933 d!1235500))

(declare-fun d!1235512 () Bool)

(declare-fun lt!1491230 () List!46087)

(assert (=> d!1235512 (= (++!11726 p!2959 lt!1491230) input!3342)))

(declare-fun e!2599384 () List!46087)

(assert (=> d!1235512 (= lt!1491230 e!2599384)))

(declare-fun c!714767 () Bool)

(assert (=> d!1235512 (= c!714767 ((_ is Cons!45963) p!2959))))

(assert (=> d!1235512 (>= (size!33757 input!3342) (size!33757 p!2959))))

(assert (=> d!1235512 (= (getSuffix!2804 input!3342 p!2959) lt!1491230)))

(declare-fun b!4187264 () Bool)

(assert (=> b!4187264 (= e!2599384 (getSuffix!2804 (tail!6733 input!3342) (t!345682 p!2959)))))

(declare-fun b!4187265 () Bool)

(assert (=> b!4187265 (= e!2599384 input!3342)))

(assert (= (and d!1235512 c!714767) b!4187264))

(assert (= (and d!1235512 (not c!714767)) b!4187265))

(declare-fun m!4776217 () Bool)

(assert (=> d!1235512 m!4776217))

(assert (=> d!1235512 m!4775889))

(assert (=> d!1235512 m!4775907))

(assert (=> b!4187264 m!4775953))

(assert (=> b!4187264 m!4775953))

(declare-fun m!4776219 () Bool)

(assert (=> b!4187264 m!4776219))

(assert (=> b!4186933 d!1235512))

(declare-fun d!1235514 () Bool)

(declare-fun dynLambda!19766 (Int BalanceConc!27324) TokenValue!7884)

(assert (=> d!1235514 (= (apply!10619 (transformation!7654 r!4142) lt!1491112) (dynLambda!19766 (toValue!10350 (transformation!7654 r!4142)) lt!1491112))))

(declare-fun b_lambda!123129 () Bool)

(assert (=> (not b_lambda!123129) (not d!1235514)))

(declare-fun t!345692 () Bool)

(declare-fun tb!250817 () Bool)

(assert (=> (and b!4186937 (= (toValue!10350 (transformation!7654 r!4142)) (toValue!10350 (transformation!7654 r!4142))) t!345692) tb!250817))

(declare-fun result!305644 () Bool)

(declare-fun inv!21 (TokenValue!7884) Bool)

(assert (=> tb!250817 (= result!305644 (inv!21 (dynLambda!19766 (toValue!10350 (transformation!7654 r!4142)) lt!1491112)))))

(declare-fun m!4776221 () Bool)

(assert (=> tb!250817 m!4776221))

(assert (=> d!1235514 t!345692))

(declare-fun b_and!327923 () Bool)

(assert (= b_and!327905 (and (=> t!345692 result!305644) b_and!327923)))

(declare-fun tb!250819 () Bool)

(declare-fun t!345694 () Bool)

(assert (=> (and b!4186929 (= (toValue!10350 (transformation!7654 (h!51385 rules!3843))) (toValue!10350 (transformation!7654 r!4142))) t!345694) tb!250819))

(declare-fun result!305648 () Bool)

(assert (= result!305648 result!305644))

(assert (=> d!1235514 t!345694))

(declare-fun b_and!327925 () Bool)

(assert (= b_and!327909 (and (=> t!345694 result!305648) b_and!327925)))

(declare-fun tb!250821 () Bool)

(declare-fun t!345696 () Bool)

(assert (=> (and b!4186927 (= (toValue!10350 (transformation!7654 rBis!167)) (toValue!10350 (transformation!7654 r!4142))) t!345696) tb!250821))

(declare-fun result!305650 () Bool)

(assert (= result!305650 result!305644))

(assert (=> d!1235514 t!345696))

(declare-fun b_and!327927 () Bool)

(assert (= b_and!327913 (and (=> t!345696 result!305650) b_and!327927)))

(declare-fun m!4776223 () Bool)

(assert (=> d!1235514 m!4776223))

(assert (=> b!4186933 d!1235514))

(declare-fun b!4187358 () Bool)

(declare-fun e!2599442 () Bool)

(assert (=> b!4187358 (= e!2599442 true)))

(declare-fun d!1235516 () Bool)

(assert (=> d!1235516 e!2599442))

(assert (= d!1235516 b!4187358))

(declare-fun order!24301 () Int)

(declare-fun order!24303 () Int)

(declare-fun lambda!129457 () Int)

(declare-fun dynLambda!19767 (Int Int) Int)

(declare-fun dynLambda!19768 (Int Int) Int)

(assert (=> b!4187358 (< (dynLambda!19767 order!24301 (toValue!10350 (transformation!7654 r!4142))) (dynLambda!19768 order!24303 lambda!129457))))

(declare-fun order!24305 () Int)

(declare-fun dynLambda!19769 (Int Int) Int)

(assert (=> b!4187358 (< (dynLambda!19769 order!24305 (toChars!10209 (transformation!7654 r!4142))) (dynLambda!19768 order!24303 lambda!129457))))

(assert (=> d!1235516 (= (list!16604 (dynLambda!19760 (toChars!10209 (transformation!7654 r!4142)) (dynLambda!19766 (toValue!10350 (transformation!7654 r!4142)) lt!1491112))) (list!16604 lt!1491112))))

(declare-fun lt!1491250 () Unit!65053)

(declare-fun ForallOf!1052 (Int BalanceConc!27324) Unit!65053)

(assert (=> d!1235516 (= lt!1491250 (ForallOf!1052 lambda!129457 lt!1491112))))

(assert (=> d!1235516 (= (lemmaSemiInverse!2420 (transformation!7654 r!4142) lt!1491112) lt!1491250)))

(declare-fun b_lambda!123145 () Bool)

(assert (=> (not b_lambda!123145) (not d!1235516)))

(declare-fun t!345722 () Bool)

(declare-fun tb!250847 () Bool)

(assert (=> (and b!4186937 (= (toChars!10209 (transformation!7654 r!4142)) (toChars!10209 (transformation!7654 r!4142))) t!345722) tb!250847))

(declare-fun b!4187359 () Bool)

(declare-fun e!2599443 () Bool)

(declare-fun tp!1279516 () Bool)

(assert (=> b!4187359 (= e!2599443 (and (inv!60514 (c!714713 (dynLambda!19760 (toChars!10209 (transformation!7654 r!4142)) (dynLambda!19766 (toValue!10350 (transformation!7654 r!4142)) lt!1491112)))) tp!1279516))))

(declare-fun result!305686 () Bool)

(assert (=> tb!250847 (= result!305686 (and (inv!60515 (dynLambda!19760 (toChars!10209 (transformation!7654 r!4142)) (dynLambda!19766 (toValue!10350 (transformation!7654 r!4142)) lt!1491112))) e!2599443))))

(assert (= tb!250847 b!4187359))

(declare-fun m!4776351 () Bool)

(assert (=> b!4187359 m!4776351))

(declare-fun m!4776353 () Bool)

(assert (=> tb!250847 m!4776353))

(assert (=> d!1235516 t!345722))

(declare-fun b_and!327957 () Bool)

(assert (= b_and!327917 (and (=> t!345722 result!305686) b_and!327957)))

(declare-fun t!345724 () Bool)

(declare-fun tb!250849 () Bool)

(assert (=> (and b!4186929 (= (toChars!10209 (transformation!7654 (h!51385 rules!3843))) (toChars!10209 (transformation!7654 r!4142))) t!345724) tb!250849))

(declare-fun result!305688 () Bool)

(assert (= result!305688 result!305686))

(assert (=> d!1235516 t!345724))

(declare-fun b_and!327959 () Bool)

(assert (= b_and!327919 (and (=> t!345724 result!305688) b_and!327959)))

(declare-fun tb!250851 () Bool)

(declare-fun t!345726 () Bool)

(assert (=> (and b!4186927 (= (toChars!10209 (transformation!7654 rBis!167)) (toChars!10209 (transformation!7654 r!4142))) t!345726) tb!250851))

(declare-fun result!305690 () Bool)

(assert (= result!305690 result!305686))

(assert (=> d!1235516 t!345726))

(declare-fun b_and!327961 () Bool)

(assert (= b_and!327921 (and (=> t!345726 result!305690) b_and!327961)))

(declare-fun b_lambda!123147 () Bool)

(assert (=> (not b_lambda!123147) (not d!1235516)))

(assert (=> d!1235516 t!345692))

(declare-fun b_and!327963 () Bool)

(assert (= b_and!327923 (and (=> t!345692 result!305644) b_and!327963)))

(assert (=> d!1235516 t!345694))

(declare-fun b_and!327965 () Bool)

(assert (= b_and!327925 (and (=> t!345694 result!305648) b_and!327965)))

(assert (=> d!1235516 t!345696))

(declare-fun b_and!327967 () Bool)

(assert (= b_and!327927 (and (=> t!345696 result!305650) b_and!327967)))

(declare-fun m!4776355 () Bool)

(assert (=> d!1235516 m!4776355))

(assert (=> d!1235516 m!4776223))

(declare-fun m!4776357 () Bool)

(assert (=> d!1235516 m!4776357))

(assert (=> d!1235516 m!4776357))

(declare-fun m!4776359 () Bool)

(assert (=> d!1235516 m!4776359))

(assert (=> d!1235516 m!4776223))

(declare-fun m!4776361 () Bool)

(assert (=> d!1235516 m!4776361))

(assert (=> b!4186933 d!1235516))

(declare-fun d!1235550 () Bool)

(declare-fun lt!1491251 () Int)

(assert (=> d!1235550 (>= lt!1491251 0)))

(declare-fun e!2599444 () Int)

(assert (=> d!1235550 (= lt!1491251 e!2599444)))

(declare-fun c!714773 () Bool)

(assert (=> d!1235550 (= c!714773 ((_ is Nil!45963) p!2959))))

(assert (=> d!1235550 (= (size!33757 p!2959) lt!1491251)))

(declare-fun b!4187360 () Bool)

(assert (=> b!4187360 (= e!2599444 0)))

(declare-fun b!4187361 () Bool)

(assert (=> b!4187361 (= e!2599444 (+ 1 (size!33757 (t!345682 p!2959))))))

(assert (= (and d!1235550 c!714773) b!4187360))

(assert (= (and d!1235550 (not c!714773)) b!4187361))

(declare-fun m!4776363 () Bool)

(assert (=> b!4187361 m!4776363))

(assert (=> b!4186933 d!1235550))

(declare-fun d!1235552 () Bool)

(assert (=> d!1235552 (= (isEmpty!27205 rules!3843) ((_ is Nil!45965) rules!3843))))

(assert (=> b!4186934 d!1235552))

(declare-fun d!1235554 () Bool)

(declare-fun res!1717750 () Bool)

(declare-fun e!2599445 () Bool)

(assert (=> d!1235554 (=> (not res!1717750) (not e!2599445))))

(assert (=> d!1235554 (= res!1717750 (validRegex!5676 (regex!7654 rBis!167)))))

(assert (=> d!1235554 (= (ruleValid!3372 thiss!25986 rBis!167) e!2599445)))

(declare-fun b!4187362 () Bool)

(declare-fun res!1717751 () Bool)

(assert (=> b!4187362 (=> (not res!1717751) (not e!2599445))))

(assert (=> b!4187362 (= res!1717751 (not (nullable!4409 (regex!7654 rBis!167))))))

(declare-fun b!4187363 () Bool)

(assert (=> b!4187363 (= e!2599445 (not (= (tag!8518 rBis!167) (String!53287 ""))))))

(assert (= (and d!1235554 res!1717750) b!4187362))

(assert (= (and b!4187362 res!1717751) b!4187363))

(declare-fun m!4776365 () Bool)

(assert (=> d!1235554 m!4776365))

(declare-fun m!4776367 () Bool)

(assert (=> b!4187362 m!4776367))

(assert (=> b!4186923 d!1235554))

(declare-fun d!1235556 () Bool)

(declare-fun res!1717754 () Bool)

(declare-fun e!2599448 () Bool)

(assert (=> d!1235556 (=> (not res!1717754) (not e!2599448))))

(declare-fun rulesValid!2985 (LexerInterface!7247 List!46089) Bool)

(assert (=> d!1235556 (= res!1717754 (rulesValid!2985 thiss!25986 rules!3843))))

(assert (=> d!1235556 (= (rulesInvariant!6460 thiss!25986 rules!3843) e!2599448)))

(declare-fun b!4187366 () Bool)

(declare-datatypes ((List!46090 0))(
  ( (Nil!45966) (Cons!45966 (h!51386 String!53286) (t!345733 List!46090)) )
))
(declare-fun noDuplicateTag!3146 (LexerInterface!7247 List!46089 List!46090) Bool)

(assert (=> b!4187366 (= e!2599448 (noDuplicateTag!3146 thiss!25986 rules!3843 Nil!45966))))

(assert (= (and d!1235556 res!1717754) b!4187366))

(declare-fun m!4776369 () Bool)

(assert (=> d!1235556 m!4776369))

(declare-fun m!4776371 () Bool)

(assert (=> b!4187366 m!4776371))

(assert (=> b!4186924 d!1235556))

(declare-fun e!2599449 () Bool)

(declare-fun lt!1491252 () List!46087)

(declare-fun b!4187370 () Bool)

(assert (=> b!4187370 (= e!2599449 (or (not (= (_2!25019 lt!1491105) Nil!45963)) (= lt!1491252 pBis!107)))))

(declare-fun b!4187369 () Bool)

(declare-fun res!1717755 () Bool)

(assert (=> b!4187369 (=> (not res!1717755) (not e!2599449))))

(assert (=> b!4187369 (= res!1717755 (= (size!33757 lt!1491252) (+ (size!33757 pBis!107) (size!33757 (_2!25019 lt!1491105)))))))

(declare-fun b!4187367 () Bool)

(declare-fun e!2599450 () List!46087)

(assert (=> b!4187367 (= e!2599450 (_2!25019 lt!1491105))))

(declare-fun d!1235558 () Bool)

(assert (=> d!1235558 e!2599449))

(declare-fun res!1717756 () Bool)

(assert (=> d!1235558 (=> (not res!1717756) (not e!2599449))))

(assert (=> d!1235558 (= res!1717756 (= (content!7153 lt!1491252) ((_ map or) (content!7153 pBis!107) (content!7153 (_2!25019 lt!1491105)))))))

(assert (=> d!1235558 (= lt!1491252 e!2599450)))

(declare-fun c!714774 () Bool)

(assert (=> d!1235558 (= c!714774 ((_ is Nil!45963) pBis!107))))

(assert (=> d!1235558 (= (++!11726 pBis!107 (_2!25019 lt!1491105)) lt!1491252)))

(declare-fun b!4187368 () Bool)

(assert (=> b!4187368 (= e!2599450 (Cons!45963 (h!51383 pBis!107) (++!11726 (t!345682 pBis!107) (_2!25019 lt!1491105))))))

(assert (= (and d!1235558 c!714774) b!4187367))

(assert (= (and d!1235558 (not c!714774)) b!4187368))

(assert (= (and d!1235558 res!1717756) b!4187369))

(assert (= (and b!4187369 res!1717755) b!4187370))

(declare-fun m!4776373 () Bool)

(assert (=> b!4187369 m!4776373))

(assert (=> b!4187369 m!4775851))

(assert (=> b!4187369 m!4776107))

(declare-fun m!4776375 () Bool)

(assert (=> d!1235558 m!4776375))

(declare-fun m!4776377 () Bool)

(assert (=> d!1235558 m!4776377))

(assert (=> d!1235558 m!4776113))

(declare-fun m!4776379 () Bool)

(assert (=> b!4187368 m!4776379))

(assert (=> b!4186913 d!1235558))

(declare-fun d!1235560 () Bool)

(assert (=> d!1235560 (= (inv!60511 (tag!8518 (h!51385 rules!3843))) (= (mod (str.len (value!238670 (tag!8518 (h!51385 rules!3843)))) 2) 0))))

(assert (=> b!4186914 d!1235560))

(declare-fun d!1235562 () Bool)

(declare-fun res!1717757 () Bool)

(declare-fun e!2599451 () Bool)

(assert (=> d!1235562 (=> (not res!1717757) (not e!2599451))))

(assert (=> d!1235562 (= res!1717757 (semiInverseModEq!3318 (toChars!10209 (transformation!7654 (h!51385 rules!3843))) (toValue!10350 (transformation!7654 (h!51385 rules!3843)))))))

(assert (=> d!1235562 (= (inv!60513 (transformation!7654 (h!51385 rules!3843))) e!2599451)))

(declare-fun b!4187371 () Bool)

(assert (=> b!4187371 (= e!2599451 (equivClasses!3217 (toChars!10209 (transformation!7654 (h!51385 rules!3843))) (toValue!10350 (transformation!7654 (h!51385 rules!3843)))))))

(assert (= (and d!1235562 res!1717757) b!4187371))

(declare-fun m!4776381 () Bool)

(assert (=> d!1235562 m!4776381))

(declare-fun m!4776383 () Bool)

(assert (=> b!4187371 m!4776383))

(assert (=> b!4186914 d!1235562))

(declare-fun b!4187400 () Bool)

(declare-fun e!2599470 () Bool)

(declare-fun e!2599468 () Bool)

(assert (=> b!4187400 (= e!2599470 e!2599468)))

(declare-fun c!714782 () Bool)

(assert (=> b!4187400 (= c!714782 ((_ is EmptyLang!12559) (regex!7654 r!4142)))))

(declare-fun b!4187401 () Bool)

(declare-fun lt!1491255 () Bool)

(assert (=> b!4187401 (= e!2599468 (not lt!1491255))))

(declare-fun b!4187402 () Bool)

(declare-fun res!1717780 () Bool)

(declare-fun e!2599469 () Bool)

(assert (=> b!4187402 (=> (not res!1717780) (not e!2599469))))

(assert (=> b!4187402 (= res!1717780 (isEmpty!27207 (tail!6733 p!2959)))))

(declare-fun b!4187403 () Bool)

(assert (=> b!4187403 (= e!2599469 (= (head!8886 p!2959) (c!714712 (regex!7654 r!4142))))))

(declare-fun b!4187404 () Bool)

(declare-fun call!292036 () Bool)

(assert (=> b!4187404 (= e!2599470 (= lt!1491255 call!292036))))

(declare-fun b!4187405 () Bool)

(declare-fun res!1717778 () Bool)

(assert (=> b!4187405 (=> (not res!1717778) (not e!2599469))))

(assert (=> b!4187405 (= res!1717778 (not call!292036))))

(declare-fun d!1235564 () Bool)

(assert (=> d!1235564 e!2599470))

(declare-fun c!714781 () Bool)

(assert (=> d!1235564 (= c!714781 ((_ is EmptyExpr!12559) (regex!7654 r!4142)))))

(declare-fun e!2599467 () Bool)

(assert (=> d!1235564 (= lt!1491255 e!2599467)))

(declare-fun c!714783 () Bool)

(assert (=> d!1235564 (= c!714783 (isEmpty!27207 p!2959))))

(assert (=> d!1235564 (validRegex!5676 (regex!7654 r!4142))))

(assert (=> d!1235564 (= (matchR!6298 (regex!7654 r!4142) p!2959) lt!1491255)))

(declare-fun bm!292031 () Bool)

(assert (=> bm!292031 (= call!292036 (isEmpty!27207 p!2959))))

(declare-fun b!4187406 () Bool)

(declare-fun e!2599472 () Bool)

(assert (=> b!4187406 (= e!2599472 (not (= (head!8886 p!2959) (c!714712 (regex!7654 r!4142)))))))

(declare-fun b!4187407 () Bool)

(declare-fun res!1717779 () Bool)

(declare-fun e!2599471 () Bool)

(assert (=> b!4187407 (=> res!1717779 e!2599471)))

(assert (=> b!4187407 (= res!1717779 e!2599469)))

(declare-fun res!1717774 () Bool)

(assert (=> b!4187407 (=> (not res!1717774) (not e!2599469))))

(assert (=> b!4187407 (= res!1717774 lt!1491255)))

(declare-fun b!4187408 () Bool)

(declare-fun res!1717775 () Bool)

(assert (=> b!4187408 (=> res!1717775 e!2599472)))

(assert (=> b!4187408 (= res!1717775 (not (isEmpty!27207 (tail!6733 p!2959))))))

(declare-fun b!4187409 () Bool)

(assert (=> b!4187409 (= e!2599467 (nullable!4409 (regex!7654 r!4142)))))

(declare-fun b!4187410 () Bool)

(declare-fun e!2599466 () Bool)

(assert (=> b!4187410 (= e!2599471 e!2599466)))

(declare-fun res!1717777 () Bool)

(assert (=> b!4187410 (=> (not res!1717777) (not e!2599466))))

(assert (=> b!4187410 (= res!1717777 (not lt!1491255))))

(declare-fun b!4187411 () Bool)

(declare-fun res!1717776 () Bool)

(assert (=> b!4187411 (=> res!1717776 e!2599471)))

(assert (=> b!4187411 (= res!1717776 (not ((_ is ElementMatch!12559) (regex!7654 r!4142))))))

(assert (=> b!4187411 (= e!2599468 e!2599471)))

(declare-fun b!4187412 () Bool)

(assert (=> b!4187412 (= e!2599466 e!2599472)))

(declare-fun res!1717781 () Bool)

(assert (=> b!4187412 (=> res!1717781 e!2599472)))

(assert (=> b!4187412 (= res!1717781 call!292036)))

(declare-fun b!4187413 () Bool)

(declare-fun derivativeStep!3799 (Regex!12559 C!25308) Regex!12559)

(assert (=> b!4187413 (= e!2599467 (matchR!6298 (derivativeStep!3799 (regex!7654 r!4142) (head!8886 p!2959)) (tail!6733 p!2959)))))

(assert (= (and d!1235564 c!714783) b!4187409))

(assert (= (and d!1235564 (not c!714783)) b!4187413))

(assert (= (and d!1235564 c!714781) b!4187404))

(assert (= (and d!1235564 (not c!714781)) b!4187400))

(assert (= (and b!4187400 c!714782) b!4187401))

(assert (= (and b!4187400 (not c!714782)) b!4187411))

(assert (= (and b!4187411 (not res!1717776)) b!4187407))

(assert (= (and b!4187407 res!1717774) b!4187405))

(assert (= (and b!4187405 res!1717778) b!4187402))

(assert (= (and b!4187402 res!1717780) b!4187403))

(assert (= (and b!4187407 (not res!1717779)) b!4187410))

(assert (= (and b!4187410 res!1717777) b!4187412))

(assert (= (and b!4187412 (not res!1717781)) b!4187408))

(assert (= (and b!4187408 (not res!1717775)) b!4187406))

(assert (= (or b!4187404 b!4187412 b!4187405) bm!292031))

(assert (=> b!4187413 m!4775947))

(assert (=> b!4187413 m!4775947))

(declare-fun m!4776385 () Bool)

(assert (=> b!4187413 m!4776385))

(assert (=> b!4187413 m!4775951))

(assert (=> b!4187413 m!4776385))

(assert (=> b!4187413 m!4775951))

(declare-fun m!4776387 () Bool)

(assert (=> b!4187413 m!4776387))

(assert (=> b!4187409 m!4776091))

(assert (=> b!4187402 m!4775951))

(assert (=> b!4187402 m!4775951))

(declare-fun m!4776389 () Bool)

(assert (=> b!4187402 m!4776389))

(declare-fun m!4776391 () Bool)

(assert (=> bm!292031 m!4776391))

(assert (=> b!4187408 m!4775951))

(assert (=> b!4187408 m!4775951))

(assert (=> b!4187408 m!4776389))

(assert (=> b!4187403 m!4775947))

(assert (=> b!4187406 m!4775947))

(assert (=> d!1235564 m!4776391))

(assert (=> d!1235564 m!4775853))

(assert (=> b!4186935 d!1235564))

(declare-fun d!1235566 () Bool)

(declare-fun lt!1491258 () Bool)

(declare-fun content!7154 (List!46089) (InoxSet Rule!15108))

(assert (=> d!1235566 (= lt!1491258 (select (content!7154 rules!3843) r!4142))))

(declare-fun e!2599478 () Bool)

(assert (=> d!1235566 (= lt!1491258 e!2599478)))

(declare-fun res!1717786 () Bool)

(assert (=> d!1235566 (=> (not res!1717786) (not e!2599478))))

(assert (=> d!1235566 (= res!1717786 ((_ is Cons!45965) rules!3843))))

(assert (=> d!1235566 (= (contains!9463 rules!3843 r!4142) lt!1491258)))

(declare-fun b!4187418 () Bool)

(declare-fun e!2599477 () Bool)

(assert (=> b!4187418 (= e!2599478 e!2599477)))

(declare-fun res!1717787 () Bool)

(assert (=> b!4187418 (=> res!1717787 e!2599477)))

(assert (=> b!4187418 (= res!1717787 (= (h!51385 rules!3843) r!4142))))

(declare-fun b!4187419 () Bool)

(assert (=> b!4187419 (= e!2599477 (contains!9463 (t!345684 rules!3843) r!4142))))

(assert (= (and d!1235566 res!1717786) b!4187418))

(assert (= (and b!4187418 (not res!1717787)) b!4187419))

(declare-fun m!4776393 () Bool)

(assert (=> d!1235566 m!4776393))

(declare-fun m!4776395 () Bool)

(assert (=> d!1235566 m!4776395))

(declare-fun m!4776397 () Bool)

(assert (=> b!4187419 m!4776397))

(assert (=> b!4186936 d!1235566))

(declare-fun d!1235568 () Bool)

(declare-fun lt!1491259 () Bool)

(assert (=> d!1235568 (= lt!1491259 (select (content!7154 rules!3843) rBis!167))))

(declare-fun e!2599480 () Bool)

(assert (=> d!1235568 (= lt!1491259 e!2599480)))

(declare-fun res!1717788 () Bool)

(assert (=> d!1235568 (=> (not res!1717788) (not e!2599480))))

(assert (=> d!1235568 (= res!1717788 ((_ is Cons!45965) rules!3843))))

(assert (=> d!1235568 (= (contains!9463 rules!3843 rBis!167) lt!1491259)))

(declare-fun b!4187420 () Bool)

(declare-fun e!2599479 () Bool)

(assert (=> b!4187420 (= e!2599480 e!2599479)))

(declare-fun res!1717789 () Bool)

(assert (=> b!4187420 (=> res!1717789 e!2599479)))

(assert (=> b!4187420 (= res!1717789 (= (h!51385 rules!3843) rBis!167))))

(declare-fun b!4187421 () Bool)

(assert (=> b!4187421 (= e!2599479 (contains!9463 (t!345684 rules!3843) rBis!167))))

(assert (= (and d!1235568 res!1717788) b!4187420))

(assert (= (and b!4187420 (not res!1717789)) b!4187421))

(assert (=> d!1235568 m!4776393))

(declare-fun m!4776399 () Bool)

(assert (=> d!1235568 m!4776399))

(declare-fun m!4776401 () Bool)

(assert (=> b!4187421 m!4776401))

(assert (=> b!4186925 d!1235568))

(declare-fun b!4187425 () Bool)

(declare-fun e!2599482 () Bool)

(assert (=> b!4187425 (= e!2599482 (>= (size!33757 input!3342) (size!33757 pBis!107)))))

(declare-fun b!4187423 () Bool)

(declare-fun res!1717791 () Bool)

(declare-fun e!2599481 () Bool)

(assert (=> b!4187423 (=> (not res!1717791) (not e!2599481))))

(assert (=> b!4187423 (= res!1717791 (= (head!8886 pBis!107) (head!8886 input!3342)))))

(declare-fun d!1235570 () Bool)

(assert (=> d!1235570 e!2599482))

(declare-fun res!1717790 () Bool)

(assert (=> d!1235570 (=> res!1717790 e!2599482)))

(declare-fun lt!1491260 () Bool)

(assert (=> d!1235570 (= res!1717790 (not lt!1491260))))

(declare-fun e!2599483 () Bool)

(assert (=> d!1235570 (= lt!1491260 e!2599483)))

(declare-fun res!1717793 () Bool)

(assert (=> d!1235570 (=> res!1717793 e!2599483)))

(assert (=> d!1235570 (= res!1717793 ((_ is Nil!45963) pBis!107))))

(assert (=> d!1235570 (= (isPrefix!4511 pBis!107 input!3342) lt!1491260)))

(declare-fun b!4187422 () Bool)

(assert (=> b!4187422 (= e!2599483 e!2599481)))

(declare-fun res!1717792 () Bool)

(assert (=> b!4187422 (=> (not res!1717792) (not e!2599481))))

(assert (=> b!4187422 (= res!1717792 (not ((_ is Nil!45963) input!3342)))))

(declare-fun b!4187424 () Bool)

(assert (=> b!4187424 (= e!2599481 (isPrefix!4511 (tail!6733 pBis!107) (tail!6733 input!3342)))))

(assert (= (and d!1235570 (not res!1717793)) b!4187422))

(assert (= (and b!4187422 res!1717792) b!4187423))

(assert (= (and b!4187423 res!1717791) b!4187424))

(assert (= (and d!1235570 (not res!1717790)) b!4187425))

(assert (=> b!4187425 m!4775889))

(assert (=> b!4187425 m!4775851))

(declare-fun m!4776403 () Bool)

(assert (=> b!4187423 m!4776403))

(assert (=> b!4187423 m!4775949))

(declare-fun m!4776405 () Bool)

(assert (=> b!4187424 m!4776405))

(assert (=> b!4187424 m!4775953))

(assert (=> b!4187424 m!4776405))

(assert (=> b!4187424 m!4775953))

(declare-fun m!4776407 () Bool)

(assert (=> b!4187424 m!4776407))

(assert (=> b!4186926 d!1235570))

(declare-fun d!1235572 () Bool)

(assert (=> d!1235572 (ruleValid!3372 thiss!25986 rBis!167)))

(declare-fun lt!1491263 () Unit!65053)

(declare-fun choose!25642 (LexerInterface!7247 Rule!15108 List!46089) Unit!65053)

(assert (=> d!1235572 (= lt!1491263 (choose!25642 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235572 (contains!9463 rules!3843 rBis!167)))

(assert (=> d!1235572 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2378 thiss!25986 rBis!167 rules!3843) lt!1491263)))

(declare-fun bs!596552 () Bool)

(assert (= bs!596552 d!1235572))

(assert (=> bs!596552 m!4775915))

(declare-fun m!4776409 () Bool)

(assert (=> bs!596552 m!4776409))

(assert (=> bs!596552 m!4775873))

(assert (=> b!4186915 d!1235572))

(declare-fun d!1235574 () Bool)

(assert (=> d!1235574 (= (isEmpty!27204 lt!1491111) (not ((_ is Some!9847) lt!1491111)))))

(assert (=> b!4186915 d!1235574))

(declare-fun b!4187427 () Bool)

(declare-fun res!1717797 () Bool)

(declare-fun e!2599487 () Bool)

(assert (=> b!4187427 (=> (not res!1717797) (not e!2599487))))

(declare-fun lt!1491266 () Option!9848)

(assert (=> b!4187427 (= res!1717797 (= (value!238671 (_1!25019 (get!14940 lt!1491266))) (apply!10619 (transformation!7654 (rule!10728 (_1!25019 (get!14940 lt!1491266)))) (seqFromList!5679 (originalCharacters!8042 (_1!25019 (get!14940 lt!1491266)))))))))

(declare-fun b!4187428 () Bool)

(declare-fun e!2599484 () Bool)

(assert (=> b!4187428 (= e!2599484 (matchR!6298 (regex!7654 rBis!167) (_1!25021 (findLongestMatchInner!1599 (regex!7654 rBis!167) Nil!45963 (size!33757 Nil!45963) input!3342 input!3342 (size!33757 input!3342)))))))

(declare-fun b!4187429 () Bool)

(declare-fun res!1717794 () Bool)

(assert (=> b!4187429 (=> (not res!1717794) (not e!2599487))))

(assert (=> b!4187429 (= res!1717794 (= (rule!10728 (_1!25019 (get!14940 lt!1491266))) rBis!167))))

(declare-fun b!4187430 () Bool)

(declare-fun res!1717795 () Bool)

(assert (=> b!4187430 (=> (not res!1717795) (not e!2599487))))

(assert (=> b!4187430 (= res!1717795 (< (size!33757 (_2!25019 (get!14940 lt!1491266))) (size!33757 input!3342)))))

(declare-fun b!4187431 () Bool)

(declare-fun e!2599485 () Bool)

(assert (=> b!4187431 (= e!2599485 e!2599487)))

(declare-fun res!1717799 () Bool)

(assert (=> b!4187431 (=> (not res!1717799) (not e!2599487))))

(assert (=> b!4187431 (= res!1717799 (matchR!6298 (regex!7654 rBis!167) (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491266))))))))

(declare-fun b!4187432 () Bool)

(assert (=> b!4187432 (= e!2599487 (= (size!33756 (_1!25019 (get!14940 lt!1491266))) (size!33757 (originalCharacters!8042 (_1!25019 (get!14940 lt!1491266))))))))

(declare-fun d!1235576 () Bool)

(assert (=> d!1235576 e!2599485))

(declare-fun res!1717798 () Bool)

(assert (=> d!1235576 (=> res!1717798 e!2599485)))

(assert (=> d!1235576 (= res!1717798 (isEmpty!27204 lt!1491266))))

(declare-fun e!2599486 () Option!9848)

(assert (=> d!1235576 (= lt!1491266 e!2599486)))

(declare-fun c!714784 () Bool)

(declare-fun lt!1491268 () tuple2!43774)

(assert (=> d!1235576 (= c!714784 (isEmpty!27207 (_1!25021 lt!1491268)))))

(assert (=> d!1235576 (= lt!1491268 (findLongestMatch!1512 (regex!7654 rBis!167) input!3342))))

(assert (=> d!1235576 (ruleValid!3372 thiss!25986 rBis!167)))

(assert (=> d!1235576 (= (maxPrefixOneRule!3256 thiss!25986 rBis!167 input!3342) lt!1491266)))

(declare-fun b!4187426 () Bool)

(assert (=> b!4187426 (= e!2599486 (Some!9847 (tuple2!43771 (Token!14023 (apply!10619 (transformation!7654 rBis!167) (seqFromList!5679 (_1!25021 lt!1491268))) rBis!167 (size!33759 (seqFromList!5679 (_1!25021 lt!1491268))) (_1!25021 lt!1491268)) (_2!25021 lt!1491268))))))

(declare-fun lt!1491264 () Unit!65053)

(assert (=> b!4187426 (= lt!1491264 (longestMatchIsAcceptedByMatchOrIsEmpty!1572 (regex!7654 rBis!167) input!3342))))

(declare-fun res!1717800 () Bool)

(assert (=> b!4187426 (= res!1717800 (isEmpty!27207 (_1!25021 (findLongestMatchInner!1599 (regex!7654 rBis!167) Nil!45963 (size!33757 Nil!45963) input!3342 input!3342 (size!33757 input!3342)))))))

(assert (=> b!4187426 (=> res!1717800 e!2599484)))

(assert (=> b!4187426 e!2599484))

(declare-fun lt!1491265 () Unit!65053)

(assert (=> b!4187426 (= lt!1491265 lt!1491264)))

(declare-fun lt!1491267 () Unit!65053)

(assert (=> b!4187426 (= lt!1491267 (lemmaSemiInverse!2420 (transformation!7654 rBis!167) (seqFromList!5679 (_1!25021 lt!1491268))))))

(declare-fun b!4187433 () Bool)

(declare-fun res!1717796 () Bool)

(assert (=> b!4187433 (=> (not res!1717796) (not e!2599487))))

(assert (=> b!4187433 (= res!1717796 (= (++!11726 (list!16604 (charsOf!5089 (_1!25019 (get!14940 lt!1491266)))) (_2!25019 (get!14940 lt!1491266))) input!3342))))

(declare-fun b!4187434 () Bool)

(assert (=> b!4187434 (= e!2599486 None!9847)))

(assert (= (and d!1235576 c!714784) b!4187434))

(assert (= (and d!1235576 (not c!714784)) b!4187426))

(assert (= (and b!4187426 (not res!1717800)) b!4187428))

(assert (= (and d!1235576 (not res!1717798)) b!4187431))

(assert (= (and b!4187431 res!1717799) b!4187433))

(assert (= (and b!4187433 res!1717796) b!4187430))

(assert (= (and b!4187430 res!1717795) b!4187429))

(assert (= (and b!4187429 res!1717794) b!4187427))

(assert (= (and b!4187427 res!1717797) b!4187432))

(declare-fun m!4776411 () Bool)

(assert (=> b!4187426 m!4776411))

(declare-fun m!4776413 () Bool)

(assert (=> b!4187426 m!4776413))

(declare-fun m!4776415 () Bool)

(assert (=> b!4187426 m!4776415))

(assert (=> b!4187426 m!4776411))

(declare-fun m!4776417 () Bool)

(assert (=> b!4187426 m!4776417))

(assert (=> b!4187426 m!4775889))

(assert (=> b!4187426 m!4776183))

(assert (=> b!4187426 m!4775889))

(declare-fun m!4776419 () Bool)

(assert (=> b!4187426 m!4776419))

(declare-fun m!4776421 () Bool)

(assert (=> b!4187426 m!4776421))

(assert (=> b!4187426 m!4776411))

(declare-fun m!4776423 () Bool)

(assert (=> b!4187426 m!4776423))

(assert (=> b!4187426 m!4776411))

(assert (=> b!4187426 m!4776183))

(declare-fun m!4776425 () Bool)

(assert (=> b!4187431 m!4776425))

(declare-fun m!4776427 () Bool)

(assert (=> b!4187431 m!4776427))

(assert (=> b!4187431 m!4776427))

(declare-fun m!4776429 () Bool)

(assert (=> b!4187431 m!4776429))

(assert (=> b!4187431 m!4776429))

(declare-fun m!4776431 () Bool)

(assert (=> b!4187431 m!4776431))

(assert (=> b!4187427 m!4776425))

(declare-fun m!4776433 () Bool)

(assert (=> b!4187427 m!4776433))

(assert (=> b!4187427 m!4776433))

(declare-fun m!4776435 () Bool)

(assert (=> b!4187427 m!4776435))

(assert (=> b!4187432 m!4776425))

(declare-fun m!4776437 () Bool)

(assert (=> b!4187432 m!4776437))

(assert (=> b!4187429 m!4776425))

(assert (=> b!4187430 m!4776425))

(declare-fun m!4776439 () Bool)

(assert (=> b!4187430 m!4776439))

(assert (=> b!4187430 m!4775889))

(declare-fun m!4776441 () Bool)

(assert (=> d!1235576 m!4776441))

(declare-fun m!4776443 () Bool)

(assert (=> d!1235576 m!4776443))

(declare-fun m!4776445 () Bool)

(assert (=> d!1235576 m!4776445))

(assert (=> d!1235576 m!4775915))

(assert (=> b!4187433 m!4776425))

(assert (=> b!4187433 m!4776427))

(assert (=> b!4187433 m!4776427))

(assert (=> b!4187433 m!4776429))

(assert (=> b!4187433 m!4776429))

(declare-fun m!4776447 () Bool)

(assert (=> b!4187433 m!4776447))

(assert (=> b!4187428 m!4776183))

(assert (=> b!4187428 m!4775889))

(assert (=> b!4187428 m!4776183))

(assert (=> b!4187428 m!4775889))

(assert (=> b!4187428 m!4776419))

(declare-fun m!4776449 () Bool)

(assert (=> b!4187428 m!4776449))

(assert (=> b!4186915 d!1235576))

(declare-fun d!1235578 () Bool)

(assert (=> d!1235578 (<= (size!33757 pBis!107) (size!33757 input!3342))))

(declare-fun lt!1491271 () Unit!65053)

(declare-fun choose!25643 (List!46087 List!46087) Unit!65053)

(assert (=> d!1235578 (= lt!1491271 (choose!25643 pBis!107 input!3342))))

(assert (=> d!1235578 (isPrefix!4511 pBis!107 input!3342)))

(assert (=> d!1235578 (= (lemmaIsPrefixThenSmallerEqSize!541 pBis!107 input!3342) lt!1491271)))

(declare-fun bs!596553 () Bool)

(assert (= bs!596553 d!1235578))

(assert (=> bs!596553 m!4775851))

(assert (=> bs!596553 m!4775889))

(declare-fun m!4776451 () Bool)

(assert (=> bs!596553 m!4776451))

(assert (=> bs!596553 m!4775849))

(assert (=> b!4186915 d!1235578))

(declare-fun d!1235580 () Bool)

(declare-fun lt!1491272 () Int)

(assert (=> d!1235580 (>= lt!1491272 0)))

(declare-fun e!2599488 () Int)

(assert (=> d!1235580 (= lt!1491272 e!2599488)))

(declare-fun c!714785 () Bool)

(assert (=> d!1235580 (= c!714785 ((_ is Nil!45963) input!3342))))

(assert (=> d!1235580 (= (size!33757 input!3342) lt!1491272)))

(declare-fun b!4187435 () Bool)

(assert (=> b!4187435 (= e!2599488 0)))

(declare-fun b!4187436 () Bool)

(assert (=> b!4187436 (= e!2599488 (+ 1 (size!33757 (t!345682 input!3342))))))

(assert (= (and d!1235580 c!714785) b!4187435))

(assert (= (and d!1235580 (not c!714785)) b!4187436))

(declare-fun m!4776453 () Bool)

(assert (=> b!4187436 m!4776453))

(assert (=> b!4186915 d!1235580))

(declare-fun e!2599491 () Bool)

(assert (=> b!4186928 (= tp!1279460 e!2599491)))

(declare-fun b!4187448 () Bool)

(declare-fun tp!1279530 () Bool)

(declare-fun tp!1279529 () Bool)

(assert (=> b!4187448 (= e!2599491 (and tp!1279530 tp!1279529))))

(declare-fun b!4187447 () Bool)

(assert (=> b!4187447 (= e!2599491 tp_is_empty!22081)))

(declare-fun b!4187449 () Bool)

(declare-fun tp!1279531 () Bool)

(assert (=> b!4187449 (= e!2599491 tp!1279531)))

(declare-fun b!4187450 () Bool)

(declare-fun tp!1279527 () Bool)

(declare-fun tp!1279528 () Bool)

(assert (=> b!4187450 (= e!2599491 (and tp!1279527 tp!1279528))))

(assert (= (and b!4186928 ((_ is ElementMatch!12559) (regex!7654 rBis!167))) b!4187447))

(assert (= (and b!4186928 ((_ is Concat!20444) (regex!7654 rBis!167))) b!4187448))

(assert (= (and b!4186928 ((_ is Star!12559) (regex!7654 rBis!167))) b!4187449))

(assert (= (and b!4186928 ((_ is Union!12559) (regex!7654 rBis!167))) b!4187450))

(declare-fun e!2599492 () Bool)

(assert (=> b!4186914 (= tp!1279464 e!2599492)))

(declare-fun b!4187452 () Bool)

(declare-fun tp!1279535 () Bool)

(declare-fun tp!1279534 () Bool)

(assert (=> b!4187452 (= e!2599492 (and tp!1279535 tp!1279534))))

(declare-fun b!4187451 () Bool)

(assert (=> b!4187451 (= e!2599492 tp_is_empty!22081)))

(declare-fun b!4187453 () Bool)

(declare-fun tp!1279536 () Bool)

(assert (=> b!4187453 (= e!2599492 tp!1279536)))

(declare-fun b!4187454 () Bool)

(declare-fun tp!1279532 () Bool)

(declare-fun tp!1279533 () Bool)

(assert (=> b!4187454 (= e!2599492 (and tp!1279532 tp!1279533))))

(assert (= (and b!4186914 ((_ is ElementMatch!12559) (regex!7654 (h!51385 rules!3843)))) b!4187451))

(assert (= (and b!4186914 ((_ is Concat!20444) (regex!7654 (h!51385 rules!3843)))) b!4187452))

(assert (= (and b!4186914 ((_ is Star!12559) (regex!7654 (h!51385 rules!3843)))) b!4187453))

(assert (= (and b!4186914 ((_ is Union!12559) (regex!7654 (h!51385 rules!3843)))) b!4187454))

(declare-fun b!4187459 () Bool)

(declare-fun e!2599495 () Bool)

(declare-fun tp!1279539 () Bool)

(assert (=> b!4187459 (= e!2599495 (and tp_is_empty!22081 tp!1279539))))

(assert (=> b!4186930 (= tp!1279457 e!2599495)))

(assert (= (and b!4186930 ((_ is Cons!45963) (t!345682 input!3342))) b!4187459))

(declare-fun b!4187460 () Bool)

(declare-fun e!2599496 () Bool)

(declare-fun tp!1279540 () Bool)

(assert (=> b!4187460 (= e!2599496 (and tp_is_empty!22081 tp!1279540))))

(assert (=> b!4186919 (= tp!1279459 e!2599496)))

(assert (= (and b!4186919 ((_ is Cons!45963) (t!345682 p!2959))) b!4187460))

(declare-fun b!4187461 () Bool)

(declare-fun e!2599497 () Bool)

(declare-fun tp!1279541 () Bool)

(assert (=> b!4187461 (= e!2599497 (and tp_is_empty!22081 tp!1279541))))

(assert (=> b!4186916 (= tp!1279466 e!2599497)))

(assert (= (and b!4186916 ((_ is Cons!45963) (t!345682 pBis!107))) b!4187461))

(declare-fun e!2599498 () Bool)

(assert (=> b!4186921 (= tp!1279456 e!2599498)))

(declare-fun b!4187463 () Bool)

(declare-fun tp!1279545 () Bool)

(declare-fun tp!1279544 () Bool)

(assert (=> b!4187463 (= e!2599498 (and tp!1279545 tp!1279544))))

(declare-fun b!4187462 () Bool)

(assert (=> b!4187462 (= e!2599498 tp_is_empty!22081)))

(declare-fun b!4187464 () Bool)

(declare-fun tp!1279546 () Bool)

(assert (=> b!4187464 (= e!2599498 tp!1279546)))

(declare-fun b!4187465 () Bool)

(declare-fun tp!1279542 () Bool)

(declare-fun tp!1279543 () Bool)

(assert (=> b!4187465 (= e!2599498 (and tp!1279542 tp!1279543))))

(assert (= (and b!4186921 ((_ is ElementMatch!12559) (regex!7654 r!4142))) b!4187462))

(assert (= (and b!4186921 ((_ is Concat!20444) (regex!7654 r!4142))) b!4187463))

(assert (= (and b!4186921 ((_ is Star!12559) (regex!7654 r!4142))) b!4187464))

(assert (= (and b!4186921 ((_ is Union!12559) (regex!7654 r!4142))) b!4187465))

(declare-fun b!4187476 () Bool)

(declare-fun b_free!121783 () Bool)

(declare-fun b_next!122487 () Bool)

(assert (=> b!4187476 (= b_free!121783 (not b_next!122487))))

(declare-fun t!345728 () Bool)

(declare-fun tb!250853 () Bool)

(assert (=> (and b!4187476 (= (toValue!10350 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toValue!10350 (transformation!7654 r!4142))) t!345728) tb!250853))

(declare-fun result!305698 () Bool)

(assert (= result!305698 result!305644))

(assert (=> d!1235514 t!345728))

(assert (=> d!1235516 t!345728))

(declare-fun tp!1279556 () Bool)

(declare-fun b_and!327969 () Bool)

(assert (=> b!4187476 (= tp!1279556 (and (=> t!345728 result!305698) b_and!327969))))

(declare-fun b_free!121785 () Bool)

(declare-fun b_next!122489 () Bool)

(assert (=> b!4187476 (= b_free!121785 (not b_next!122489))))

(declare-fun tb!250855 () Bool)

(declare-fun t!345730 () Bool)

(assert (=> (and b!4187476 (= (toChars!10209 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toChars!10209 (transformation!7654 (rule!10728 (_1!25019 lt!1491105))))) t!345730) tb!250855))

(declare-fun result!305700 () Bool)

(assert (= result!305700 result!305636))

(assert (=> d!1235484 t!345730))

(declare-fun tb!250857 () Bool)

(declare-fun t!345732 () Bool)

(assert (=> (and b!4187476 (= (toChars!10209 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toChars!10209 (transformation!7654 r!4142))) t!345732) tb!250857))

(declare-fun result!305702 () Bool)

(assert (= result!305702 result!305686))

(assert (=> d!1235516 t!345732))

(declare-fun tp!1279557 () Bool)

(declare-fun b_and!327971 () Bool)

(assert (=> b!4187476 (= tp!1279557 (and (=> t!345730 result!305700) (=> t!345732 result!305702) b_and!327971))))

(declare-fun e!2599507 () Bool)

(assert (=> b!4187476 (= e!2599507 (and tp!1279556 tp!1279557))))

(declare-fun tp!1279558 () Bool)

(declare-fun b!4187475 () Bool)

(declare-fun e!2599509 () Bool)

(assert (=> b!4187475 (= e!2599509 (and tp!1279558 (inv!60511 (tag!8518 (h!51385 (t!345684 rules!3843)))) (inv!60513 (transformation!7654 (h!51385 (t!345684 rules!3843)))) e!2599507))))

(declare-fun b!4187474 () Bool)

(declare-fun e!2599508 () Bool)

(declare-fun tp!1279555 () Bool)

(assert (=> b!4187474 (= e!2599508 (and e!2599509 tp!1279555))))

(assert (=> b!4186938 (= tp!1279455 e!2599508)))

(assert (= b!4187475 b!4187476))

(assert (= b!4187474 b!4187475))

(assert (= (and b!4186938 ((_ is Cons!45965) (t!345684 rules!3843))) b!4187474))

(declare-fun m!4776455 () Bool)

(assert (=> b!4187475 m!4776455))

(declare-fun m!4776457 () Bool)

(assert (=> b!4187475 m!4776457))

(declare-fun b_lambda!123149 () Bool)

(assert (= b_lambda!123147 (or (and b!4186937 b_free!121767) (and b!4186929 b_free!121771 (= (toValue!10350 (transformation!7654 (h!51385 rules!3843))) (toValue!10350 (transformation!7654 r!4142)))) (and b!4186927 b_free!121775 (= (toValue!10350 (transformation!7654 rBis!167)) (toValue!10350 (transformation!7654 r!4142)))) (and b!4187476 b_free!121783 (= (toValue!10350 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toValue!10350 (transformation!7654 r!4142)))) b_lambda!123149)))

(declare-fun b_lambda!123151 () Bool)

(assert (= b_lambda!123145 (or (and b!4186937 b_free!121769) (and b!4186929 b_free!121773 (= (toChars!10209 (transformation!7654 (h!51385 rules!3843))) (toChars!10209 (transformation!7654 r!4142)))) (and b!4186927 b_free!121777 (= (toChars!10209 (transformation!7654 rBis!167)) (toChars!10209 (transformation!7654 r!4142)))) (and b!4187476 b_free!121785 (= (toChars!10209 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toChars!10209 (transformation!7654 r!4142)))) b_lambda!123151)))

(declare-fun b_lambda!123153 () Bool)

(assert (= b_lambda!123129 (or (and b!4186937 b_free!121767) (and b!4186929 b_free!121771 (= (toValue!10350 (transformation!7654 (h!51385 rules!3843))) (toValue!10350 (transformation!7654 r!4142)))) (and b!4186927 b_free!121775 (= (toValue!10350 (transformation!7654 rBis!167)) (toValue!10350 (transformation!7654 r!4142)))) (and b!4187476 b_free!121783 (= (toValue!10350 (transformation!7654 (h!51385 (t!345684 rules!3843)))) (toValue!10350 (transformation!7654 r!4142)))) b_lambda!123153)))

(check-sat (not b!4187254) (not b!4187419) (not b_next!122481) (not b!4187140) (not b!4187189) (not b!4187137) (not b!4187426) (not d!1235516) (not b!4187409) b_and!327965 (not b!4187251) (not d!1235490) (not b!4187463) (not d!1235568) (not d!1235496) (not b!4187258) (not b!4187368) (not d!1235428) (not b!4187039) (not b!4187453) (not b!4187432) (not d!1235572) (not d!1235484) (not d!1235472) (not bm!292031) (not bm!292024) (not b!4187037) (not d!1235512) (not b!4187185) (not d!1235576) (not d!1235564) (not b!4187139) (not b!4187366) (not b!4187135) (not b!4187464) tp_is_empty!22081 (not b!4187252) (not d!1235498) (not b!4187402) (not b!4187194) (not b!4187011) (not b!4187054) (not b!4187413) (not b!4187165) (not b!4187361) (not d!1235446) b_and!327959 b_and!327957 (not b!4186953) (not b!4187257) (not b_next!122475) (not b!4187433) b_and!327961 (not b!4187459) (not b!4187460) (not b!4187427) (not b!4187429) (not b!4187186) (not b!4187461) (not b!4187449) (not tb!250811) (not d!1235470) (not b!4187465) (not b!4187134) (not b!4187430) (not d!1235454) (not b!4187408) (not b!4187421) (not b!4187191) (not b!4187369) (not b_lambda!123153) (not b!4187428) (not b_next!122479) (not b!4187454) (not b!4187450) (not b!4187403) (not d!1235558) (not b!4187452) (not b_lambda!123151) (not b_next!122487) (not b!4187193) (not b!4187256) (not b!4187448) b_and!327967 (not b!4187406) (not b!4187359) (not b!4187141) (not d!1235482) (not b_next!122471) (not bm!292018) (not b!4187362) (not b!4187183) (not bm!292019) (not b_lambda!123127) b_and!327963 (not d!1235554) (not tb!250847) (not b!4187425) (not b!4187177) (not b_lambda!123149) (not d!1235488) (not b!4187255) (not d!1235566) (not b!4187423) (not tb!250817) (not b!4187371) (not d!1235500) (not b!4187142) (not b!4187195) (not b!4187475) (not b_next!122477) (not b!4187424) (not b_next!122489) (not b!4187190) (not b!4187038) (not b_next!122473) b_and!327971 (not d!1235556) (not b!4187474) (not d!1235562) (not b!4187253) b_and!327969 (not b!4187264) (not b!4187431) (not d!1235578) (not b!4187053) (not b!4186945) (not b!4187136) (not b!4187436))
(check-sat b_and!327965 (not b_next!122479) (not b_next!122481) (not b_next!122487) b_and!327967 (not b_next!122471) b_and!327963 (not b_next!122477) b_and!327969 b_and!327959 b_and!327957 b_and!327961 (not b_next!122475) (not b_next!122489) (not b_next!122473) b_and!327971)
