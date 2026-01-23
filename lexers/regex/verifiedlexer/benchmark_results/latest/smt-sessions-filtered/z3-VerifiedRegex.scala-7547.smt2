; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398118 () Bool)

(assert start!398118)

(declare-fun b!4175800 () Bool)

(declare-fun b_free!121127 () Bool)

(declare-fun b_next!121831 () Bool)

(assert (=> b!4175800 (= b_free!121127 (not b_next!121831))))

(declare-fun tp!1276118 () Bool)

(declare-fun b_and!326357 () Bool)

(assert (=> b!4175800 (= tp!1276118 b_and!326357)))

(declare-fun b_free!121129 () Bool)

(declare-fun b_next!121833 () Bool)

(assert (=> b!4175800 (= b_free!121129 (not b_next!121833))))

(declare-fun tp!1276125 () Bool)

(declare-fun b_and!326359 () Bool)

(assert (=> b!4175800 (= tp!1276125 b_and!326359)))

(declare-fun b!4175795 () Bool)

(declare-fun b_free!121131 () Bool)

(declare-fun b_next!121835 () Bool)

(assert (=> b!4175795 (= b_free!121131 (not b_next!121835))))

(declare-fun tp!1276119 () Bool)

(declare-fun b_and!326361 () Bool)

(assert (=> b!4175795 (= tp!1276119 b_and!326361)))

(declare-fun b_free!121133 () Bool)

(declare-fun b_next!121837 () Bool)

(assert (=> b!4175795 (= b_free!121133 (not b_next!121837))))

(declare-fun tp!1276117 () Bool)

(declare-fun b_and!326363 () Bool)

(assert (=> b!4175795 (= tp!1276117 b_and!326363)))

(declare-fun b!4175801 () Bool)

(declare-fun b_free!121135 () Bool)

(declare-fun b_next!121839 () Bool)

(assert (=> b!4175801 (= b_free!121135 (not b_next!121839))))

(declare-fun tp!1276115 () Bool)

(declare-fun b_and!326365 () Bool)

(assert (=> b!4175801 (= tp!1276115 b_and!326365)))

(declare-fun b_free!121137 () Bool)

(declare-fun b_next!121841 () Bool)

(assert (=> b!4175801 (= b_free!121137 (not b_next!121841))))

(declare-fun tp!1276120 () Bool)

(declare-fun b_and!326367 () Bool)

(assert (=> b!4175801 (= tp!1276120 b_and!326367)))

(declare-fun b!4175792 () Bool)

(declare-fun res!1711683 () Bool)

(declare-fun e!2592435 () Bool)

(assert (=> b!4175792 (=> res!1711683 e!2592435)))

(declare-datatypes ((C!25220 0))(
  ( (C!25221 (val!14772 Int)) )
))
(declare-datatypes ((List!45933 0))(
  ( (Nil!45809) (Cons!45809 (h!51229 C!25220) (t!344692 List!45933)) )
))
(declare-fun lt!1486996 () List!45933)

(declare-fun input!3342 () List!45933)

(assert (=> b!4175792 (= res!1711683 (not (= lt!1486996 input!3342)))))

(declare-fun b!4175793 () Bool)

(declare-fun res!1711669 () Bool)

(declare-fun e!2592430 () Bool)

(assert (=> b!4175793 (=> (not res!1711669) (not e!2592430))))

(declare-datatypes ((List!45934 0))(
  ( (Nil!45810) (Cons!45810 (h!51230 (_ BitVec 16)) (t!344693 List!45934)) )
))
(declare-datatypes ((TokenValue!7840 0))(
  ( (FloatLiteralValue!15680 (text!55325 List!45934)) (TokenValueExt!7839 (__x!27901 Int)) (Broken!39200 (value!237391 List!45934)) (Object!7963) (End!7840) (Def!7840) (Underscore!7840) (Match!7840) (Else!7840) (Error!7840) (Case!7840) (If!7840) (Extends!7840) (Abstract!7840) (Class!7840) (Val!7840) (DelimiterValue!15680 (del!7900 List!45934)) (KeywordValue!7846 (value!237392 List!45934)) (CommentValue!15680 (value!237393 List!45934)) (WhitespaceValue!15680 (value!237394 List!45934)) (IndentationValue!7840 (value!237395 List!45934)) (String!53065) (Int32!7840) (Broken!39201 (value!237396 List!45934)) (Boolean!7841) (Unit!64874) (OperatorValue!7843 (op!7900 List!45934)) (IdentifierValue!15680 (value!237397 List!45934)) (IdentifierValue!15681 (value!237398 List!45934)) (WhitespaceValue!15681 (value!237399 List!45934)) (True!15680) (False!15680) (Broken!39202 (value!237400 List!45934)) (Broken!39203 (value!237401 List!45934)) (True!15681) (RightBrace!7840) (RightBracket!7840) (Colon!7840) (Null!7840) (Comma!7840) (LeftBracket!7840) (False!15681) (LeftBrace!7840) (ImaginaryLiteralValue!7840 (text!55326 List!45934)) (StringLiteralValue!23520 (value!237402 List!45934)) (EOFValue!7840 (value!237403 List!45934)) (IdentValue!7840 (value!237404 List!45934)) (DelimiterValue!15681 (value!237405 List!45934)) (DedentValue!7840 (value!237406 List!45934)) (NewLineValue!7840 (value!237407 List!45934)) (IntegerValue!23520 (value!237408 (_ BitVec 32)) (text!55327 List!45934)) (IntegerValue!23521 (value!237409 Int) (text!55328 List!45934)) (Times!7840) (Or!7840) (Equal!7840) (Minus!7840) (Broken!39204 (value!237410 List!45934)) (And!7840) (Div!7840) (LessEqual!7840) (Mod!7840) (Concat!20355) (Not!7840) (Plus!7840) (SpaceValue!7840 (value!237411 List!45934)) (IntegerValue!23522 (value!237412 Int) (text!55329 List!45934)) (StringLiteralValue!23521 (text!55330 List!45934)) (FloatLiteralValue!15681 (text!55331 List!45934)) (BytesLiteralValue!7840 (value!237413 List!45934)) (CommentValue!15681 (value!237414 List!45934)) (StringLiteralValue!23522 (value!237415 List!45934)) (ErrorTokenValue!7840 (msg!7901 List!45934)) )
))
(declare-datatypes ((IArray!27647 0))(
  ( (IArray!27648 (innerList!13881 List!45933)) )
))
(declare-datatypes ((Conc!13821 0))(
  ( (Node!13821 (left!34132 Conc!13821) (right!34462 Conc!13821) (csize!27872 Int) (cheight!14032 Int)) (Leaf!21369 (xs!17127 IArray!27647) (csize!27873 Int)) (Empty!13821) )
))
(declare-datatypes ((BalanceConc!27236 0))(
  ( (BalanceConc!27237 (c!713382 Conc!13821)) )
))
(declare-datatypes ((Regex!12515 0))(
  ( (ElementMatch!12515 (c!713383 C!25220)) (Concat!20356 (regOne!25542 Regex!12515) (regTwo!25542 Regex!12515)) (EmptyExpr!12515) (Star!12515 (reg!12844 Regex!12515)) (EmptyLang!12515) (Union!12515 (regOne!25543 Regex!12515) (regTwo!25543 Regex!12515)) )
))
(declare-datatypes ((String!53066 0))(
  ( (String!53067 (value!237416 String)) )
))
(declare-datatypes ((TokenValueInjection!15108 0))(
  ( (TokenValueInjection!15109 (toValue!10294 Int) (toChars!10153 Int)) )
))
(declare-datatypes ((Rule!15020 0))(
  ( (Rule!15021 (regex!7610 Regex!12515) (tag!8474 String!53066) (isSeparator!7610 Bool) (transformation!7610 TokenValueInjection!15108)) )
))
(declare-fun r!4142 () Rule!15020)

(declare-fun p!2959 () List!45933)

(declare-fun matchR!6254 (Regex!12515 List!45933) Bool)

(assert (=> b!4175793 (= res!1711669 (matchR!6254 (regex!7610 r!4142) p!2959))))

(declare-fun b!4175794 () Bool)

(declare-fun e!2592439 () Bool)

(declare-fun tp_is_empty!21993 () Bool)

(declare-fun tp!1276123 () Bool)

(assert (=> b!4175794 (= e!2592439 (and tp_is_empty!21993 tp!1276123))))

(declare-fun e!2592441 () Bool)

(assert (=> b!4175795 (= e!2592441 (and tp!1276119 tp!1276117))))

(declare-fun b!4175796 () Bool)

(declare-fun res!1711684 () Bool)

(assert (=> b!4175796 (=> (not res!1711684) (not e!2592430))))

(declare-datatypes ((List!45935 0))(
  ( (Nil!45811) (Cons!45811 (h!51231 Rule!15020) (t!344694 List!45935)) )
))
(declare-fun rules!3843 () List!45935)

(declare-fun isEmpty!27098 (List!45935) Bool)

(assert (=> b!4175796 (= res!1711684 (not (isEmpty!27098 rules!3843)))))

(declare-fun b!4175797 () Bool)

(declare-fun res!1711687 () Bool)

(assert (=> b!4175797 (=> (not res!1711687) (not e!2592430))))

(declare-fun rBis!167 () Rule!15020)

(declare-fun contains!9413 (List!45935 Rule!15020) Bool)

(assert (=> b!4175797 (= res!1711687 (contains!9413 rules!3843 rBis!167))))

(declare-fun res!1711685 () Bool)

(assert (=> start!398118 (=> (not res!1711685) (not e!2592430))))

(declare-datatypes ((LexerInterface!7203 0))(
  ( (LexerInterfaceExt!7200 (__x!27902 Int)) (Lexer!7201) )
))
(declare-fun thiss!25986 () LexerInterface!7203)

(get-info :version)

(assert (=> start!398118 (= res!1711685 ((_ is Lexer!7201) thiss!25986))))

(assert (=> start!398118 e!2592430))

(assert (=> start!398118 true))

(declare-fun e!2592434 () Bool)

(assert (=> start!398118 e!2592434))

(declare-fun e!2592431 () Bool)

(assert (=> start!398118 e!2592431))

(declare-fun e!2592433 () Bool)

(assert (=> start!398118 e!2592433))

(declare-fun e!2592438 () Bool)

(assert (=> start!398118 e!2592438))

(declare-fun e!2592443 () Bool)

(assert (=> start!398118 e!2592443))

(assert (=> start!398118 e!2592439))

(declare-fun b!4175798 () Bool)

(declare-fun res!1711675 () Bool)

(assert (=> b!4175798 (=> (not res!1711675) (not e!2592430))))

(declare-fun ruleValid!3328 (LexerInterface!7203 Rule!15020) Bool)

(assert (=> b!4175798 (= res!1711675 (ruleValid!3328 thiss!25986 r!4142))))

(declare-fun b!4175799 () Bool)

(declare-fun res!1711681 () Bool)

(assert (=> b!4175799 (=> (not res!1711681) (not e!2592430))))

(declare-fun pBis!107 () List!45933)

(declare-fun isPrefix!4467 (List!45933 List!45933) Bool)

(assert (=> b!4175799 (= res!1711681 (isPrefix!4467 pBis!107 input!3342))))

(declare-fun e!2592436 () Bool)

(assert (=> b!4175800 (= e!2592436 (and tp!1276118 tp!1276125))))

(declare-fun e!2592440 () Bool)

(assert (=> b!4175801 (= e!2592440 (and tp!1276115 tp!1276120))))

(declare-fun b!4175802 () Bool)

(declare-fun res!1711677 () Bool)

(assert (=> b!4175802 (=> (not res!1711677) (not e!2592430))))

(assert (=> b!4175802 (= res!1711677 (isPrefix!4467 p!2959 input!3342))))

(declare-fun b!4175803 () Bool)

(declare-fun tp!1276126 () Bool)

(declare-fun e!2592442 () Bool)

(declare-fun inv!60334 (String!53066) Bool)

(declare-fun inv!60336 (TokenValueInjection!15108) Bool)

(assert (=> b!4175803 (= e!2592442 (and tp!1276126 (inv!60334 (tag!8474 (h!51231 rules!3843))) (inv!60336 (transformation!7610 (h!51231 rules!3843))) e!2592440))))

(declare-fun b!4175804 () Bool)

(declare-fun res!1711680 () Bool)

(assert (=> b!4175804 (=> (not res!1711680) (not e!2592430))))

(declare-fun validRegex!5632 (Regex!12515) Bool)

(assert (=> b!4175804 (= res!1711680 (validRegex!5632 (regex!7610 r!4142)))))

(declare-fun b!4175805 () Bool)

(declare-fun tp!1276121 () Bool)

(assert (=> b!4175805 (= e!2592443 (and tp_is_empty!21993 tp!1276121))))

(declare-fun b!4175806 () Bool)

(declare-fun res!1711672 () Bool)

(assert (=> b!4175806 (=> res!1711672 e!2592435)))

(declare-fun lt!1486999 () BalanceConc!27236)

(declare-fun lt!1486998 () Int)

(declare-fun size!33624 (BalanceConc!27236) Int)

(assert (=> b!4175806 (= res!1711672 (>= (size!33624 lt!1486999) lt!1486998))))

(declare-fun b!4175807 () Bool)

(declare-fun res!1711673 () Bool)

(declare-fun e!2592446 () Bool)

(assert (=> b!4175807 (=> res!1711673 e!2592446)))

(declare-datatypes ((Token!13934 0))(
  ( (Token!13935 (value!237417 TokenValue!7840) (rule!10664 Rule!15020) (size!33625 Int) (originalCharacters!7998 List!45933)) )
))
(declare-datatypes ((tuple2!43646 0))(
  ( (tuple2!43647 (_1!24957 Token!13934) (_2!24957 List!45933)) )
))
(declare-datatypes ((Option!9806 0))(
  ( (None!9805) (Some!9805 (v!40605 tuple2!43646)) )
))
(declare-fun lt!1487008 () Option!9806)

(declare-fun maxPrefix!4255 (LexerInterface!7203 List!45935 List!45933) Option!9806)

(assert (=> b!4175807 (= res!1711673 (not (= (maxPrefix!4255 thiss!25986 rules!3843 input!3342) lt!1487008)))))

(declare-fun b!4175808 () Bool)

(declare-fun res!1711678 () Bool)

(assert (=> b!4175808 (=> res!1711678 e!2592446)))

(assert (=> b!4175808 (= res!1711678 (not (ruleValid!3328 thiss!25986 rBis!167)))))

(declare-fun b!4175809 () Bool)

(declare-fun res!1711686 () Bool)

(assert (=> b!4175809 (=> res!1711686 e!2592435)))

(declare-fun lt!1486997 () List!45933)

(declare-fun size!33626 (List!45933) Int)

(assert (=> b!4175809 (= res!1711686 (<= lt!1486998 (size!33626 lt!1486997)))))

(declare-fun b!4175810 () Bool)

(declare-fun e!2592444 () Bool)

(assert (=> b!4175810 (= e!2592444 e!2592446)))

(declare-fun res!1711674 () Bool)

(assert (=> b!4175810 (=> res!1711674 e!2592446)))

(declare-fun lt!1486994 () Int)

(assert (=> b!4175810 (= res!1711674 (<= lt!1486998 lt!1486994))))

(assert (=> b!4175810 (= lt!1486998 (size!33626 pBis!107))))

(declare-fun b!4175811 () Bool)

(declare-fun tp!1276114 () Bool)

(assert (=> b!4175811 (= e!2592433 (and e!2592442 tp!1276114))))

(declare-fun b!4175812 () Bool)

(declare-fun res!1711671 () Bool)

(assert (=> b!4175812 (=> (not res!1711671) (not e!2592430))))

(assert (=> b!4175812 (= res!1711671 (contains!9413 rules!3843 r!4142))))

(declare-fun b!4175813 () Bool)

(declare-fun tp!1276122 () Bool)

(assert (=> b!4175813 (= e!2592438 (and tp_is_empty!21993 tp!1276122))))

(declare-fun tp!1276116 () Bool)

(declare-fun b!4175814 () Bool)

(assert (=> b!4175814 (= e!2592431 (and tp!1276116 (inv!60334 (tag!8474 r!4142)) (inv!60336 (transformation!7610 r!4142)) e!2592436))))

(declare-fun b!4175815 () Bool)

(assert (=> b!4175815 (= e!2592435 true)))

(declare-fun lt!1487006 () Bool)

(assert (=> b!4175815 (= lt!1487006 (matchR!6254 (regex!7610 rBis!167) lt!1486997))))

(declare-fun b!4175816 () Bool)

(declare-fun e!2592432 () Bool)

(assert (=> b!4175816 (= e!2592446 e!2592432)))

(declare-fun res!1711668 () Bool)

(assert (=> b!4175816 (=> res!1711668 e!2592432)))

(declare-fun lt!1487002 () Option!9806)

(declare-fun isEmpty!27099 (Option!9806) Bool)

(assert (=> b!4175816 (= res!1711668 (isEmpty!27099 lt!1487002))))

(declare-fun maxPrefixOneRule!3214 (LexerInterface!7203 Rule!15020 List!45933) Option!9806)

(assert (=> b!4175816 (= lt!1487002 (maxPrefixOneRule!3214 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!64875 0))(
  ( (Unit!64876) )
))
(declare-fun lt!1486995 () Unit!64875)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2342 (LexerInterface!7203 Rule!15020 List!45935) Unit!64875)

(assert (=> b!4175816 (= lt!1486995 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2342 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175816 (<= lt!1486998 (size!33626 input!3342))))

(declare-fun lt!1487007 () Unit!64875)

(declare-fun lemmaIsPrefixThenSmallerEqSize!499 (List!45933 List!45933) Unit!64875)

(assert (=> b!4175816 (= lt!1487007 (lemmaIsPrefixThenSmallerEqSize!499 pBis!107 input!3342))))

(declare-fun b!4175817 () Bool)

(declare-fun res!1711682 () Bool)

(assert (=> b!4175817 (=> res!1711682 e!2592435)))

(assert (=> b!4175817 (= res!1711682 (not (isPrefix!4467 lt!1486997 input!3342)))))

(declare-fun b!4175818 () Bool)

(declare-fun res!1711670 () Bool)

(assert (=> b!4175818 (=> (not res!1711670) (not e!2592430))))

(declare-fun rulesInvariant!6416 (LexerInterface!7203 List!45935) Bool)

(assert (=> b!4175818 (= res!1711670 (rulesInvariant!6416 thiss!25986 rules!3843))))

(declare-fun b!4175819 () Bool)

(assert (=> b!4175819 (= e!2592430 (not e!2592444))))

(declare-fun res!1711679 () Bool)

(assert (=> b!4175819 (=> res!1711679 e!2592444)))

(assert (=> b!4175819 (= res!1711679 (not (= (maxPrefixOneRule!3214 thiss!25986 r!4142 input!3342) lt!1487008)))))

(declare-fun lt!1487004 () TokenValue!7840)

(declare-fun getSuffix!2762 (List!45933 List!45933) List!45933)

(assert (=> b!4175819 (= lt!1487008 (Some!9805 (tuple2!43647 (Token!13935 lt!1487004 r!4142 lt!1486994 p!2959) (getSuffix!2762 input!3342 p!2959))))))

(assert (=> b!4175819 (= lt!1486994 (size!33626 p!2959))))

(declare-fun lt!1487003 () BalanceConc!27236)

(declare-fun apply!10575 (TokenValueInjection!15108 BalanceConc!27236) TokenValue!7840)

(assert (=> b!4175819 (= lt!1487004 (apply!10575 (transformation!7610 r!4142) lt!1487003))))

(assert (=> b!4175819 (isPrefix!4467 input!3342 input!3342)))

(declare-fun lt!1487000 () Unit!64875)

(declare-fun lemmaIsPrefixRefl!2896 (List!45933 List!45933) Unit!64875)

(assert (=> b!4175819 (= lt!1487000 (lemmaIsPrefixRefl!2896 input!3342 input!3342))))

(declare-fun lt!1487005 () Unit!64875)

(declare-fun lemmaSemiInverse!2376 (TokenValueInjection!15108 BalanceConc!27236) Unit!64875)

(assert (=> b!4175819 (= lt!1487005 (lemmaSemiInverse!2376 (transformation!7610 r!4142) lt!1487003))))

(declare-fun seqFromList!5635 (List!45933) BalanceConc!27236)

(assert (=> b!4175819 (= lt!1487003 (seqFromList!5635 p!2959))))

(declare-fun b!4175820 () Bool)

(assert (=> b!4175820 (= e!2592432 e!2592435)))

(declare-fun res!1711676 () Bool)

(assert (=> b!4175820 (=> res!1711676 e!2592435)))

(assert (=> b!4175820 (= res!1711676 (= lt!1486997 pBis!107))))

(assert (=> b!4175820 (isPrefix!4467 lt!1486997 lt!1486996)))

(declare-fun lt!1486993 () tuple2!43646)

(declare-fun ++!11688 (List!45933 List!45933) List!45933)

(assert (=> b!4175820 (= lt!1486996 (++!11688 lt!1486997 (_2!24957 lt!1486993)))))

(declare-fun lt!1487001 () Unit!64875)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2974 (List!45933 List!45933) Unit!64875)

(assert (=> b!4175820 (= lt!1487001 (lemmaConcatTwoListThenFirstIsPrefix!2974 lt!1486997 (_2!24957 lt!1486993)))))

(declare-fun list!16545 (BalanceConc!27236) List!45933)

(assert (=> b!4175820 (= lt!1486997 (list!16545 lt!1486999))))

(declare-fun charsOf!5051 (Token!13934) BalanceConc!27236)

(assert (=> b!4175820 (= lt!1486999 (charsOf!5051 (_1!24957 lt!1486993)))))

(declare-fun get!14880 (Option!9806) tuple2!43646)

(assert (=> b!4175820 (= lt!1486993 (get!14880 lt!1487002))))

(declare-fun b!4175821 () Bool)

(declare-fun tp!1276124 () Bool)

(assert (=> b!4175821 (= e!2592434 (and tp!1276124 (inv!60334 (tag!8474 rBis!167)) (inv!60336 (transformation!7610 rBis!167)) e!2592441))))

(declare-fun b!4175822 () Bool)

(declare-fun res!1711688 () Bool)

(assert (=> b!4175822 (=> res!1711688 e!2592435)))

(assert (=> b!4175822 (= res!1711688 (not (validRegex!5632 (regex!7610 rBis!167))))))

(assert (= (and start!398118 res!1711685) b!4175802))

(assert (= (and b!4175802 res!1711677) b!4175799))

(assert (= (and b!4175799 res!1711681) b!4175796))

(assert (= (and b!4175796 res!1711684) b!4175818))

(assert (= (and b!4175818 res!1711670) b!4175812))

(assert (= (and b!4175812 res!1711671) b!4175797))

(assert (= (and b!4175797 res!1711687) b!4175804))

(assert (= (and b!4175804 res!1711680) b!4175793))

(assert (= (and b!4175793 res!1711669) b!4175798))

(assert (= (and b!4175798 res!1711675) b!4175819))

(assert (= (and b!4175819 (not res!1711679)) b!4175810))

(assert (= (and b!4175810 (not res!1711674)) b!4175808))

(assert (= (and b!4175808 (not res!1711678)) b!4175807))

(assert (= (and b!4175807 (not res!1711673)) b!4175816))

(assert (= (and b!4175816 (not res!1711668)) b!4175820))

(assert (= (and b!4175820 (not res!1711676)) b!4175806))

(assert (= (and b!4175806 (not res!1711672)) b!4175817))

(assert (= (and b!4175817 (not res!1711682)) b!4175792))

(assert (= (and b!4175792 (not res!1711683)) b!4175809))

(assert (= (and b!4175809 (not res!1711686)) b!4175822))

(assert (= (and b!4175822 (not res!1711688)) b!4175815))

(assert (= b!4175821 b!4175795))

(assert (= start!398118 b!4175821))

(assert (= b!4175814 b!4175800))

(assert (= start!398118 b!4175814))

(assert (= b!4175803 b!4175801))

(assert (= b!4175811 b!4175803))

(assert (= (and start!398118 ((_ is Cons!45811) rules!3843)) b!4175811))

(assert (= (and start!398118 ((_ is Cons!45809) input!3342)) b!4175813))

(assert (= (and start!398118 ((_ is Cons!45809) pBis!107)) b!4175805))

(assert (= (and start!398118 ((_ is Cons!45809) p!2959)) b!4175794))

(declare-fun m!4765495 () Bool)

(assert (=> b!4175814 m!4765495))

(declare-fun m!4765497 () Bool)

(assert (=> b!4175814 m!4765497))

(declare-fun m!4765499 () Bool)

(assert (=> b!4175821 m!4765499))

(declare-fun m!4765501 () Bool)

(assert (=> b!4175821 m!4765501))

(declare-fun m!4765503 () Bool)

(assert (=> b!4175809 m!4765503))

(declare-fun m!4765505 () Bool)

(assert (=> b!4175806 m!4765505))

(declare-fun m!4765507 () Bool)

(assert (=> b!4175796 m!4765507))

(declare-fun m!4765509 () Bool)

(assert (=> b!4175803 m!4765509))

(declare-fun m!4765511 () Bool)

(assert (=> b!4175803 m!4765511))

(declare-fun m!4765513 () Bool)

(assert (=> b!4175815 m!4765513))

(declare-fun m!4765515 () Bool)

(assert (=> b!4175797 m!4765515))

(declare-fun m!4765517 () Bool)

(assert (=> b!4175816 m!4765517))

(declare-fun m!4765519 () Bool)

(assert (=> b!4175816 m!4765519))

(declare-fun m!4765521 () Bool)

(assert (=> b!4175816 m!4765521))

(declare-fun m!4765523 () Bool)

(assert (=> b!4175816 m!4765523))

(declare-fun m!4765525 () Bool)

(assert (=> b!4175816 m!4765525))

(declare-fun m!4765527 () Bool)

(assert (=> b!4175819 m!4765527))

(declare-fun m!4765529 () Bool)

(assert (=> b!4175819 m!4765529))

(declare-fun m!4765531 () Bool)

(assert (=> b!4175819 m!4765531))

(declare-fun m!4765533 () Bool)

(assert (=> b!4175819 m!4765533))

(declare-fun m!4765535 () Bool)

(assert (=> b!4175819 m!4765535))

(declare-fun m!4765537 () Bool)

(assert (=> b!4175819 m!4765537))

(declare-fun m!4765539 () Bool)

(assert (=> b!4175819 m!4765539))

(declare-fun m!4765541 () Bool)

(assert (=> b!4175819 m!4765541))

(declare-fun m!4765543 () Bool)

(assert (=> b!4175802 m!4765543))

(declare-fun m!4765545 () Bool)

(assert (=> b!4175793 m!4765545))

(declare-fun m!4765547 () Bool)

(assert (=> b!4175812 m!4765547))

(declare-fun m!4765549 () Bool)

(assert (=> b!4175818 m!4765549))

(declare-fun m!4765551 () Bool)

(assert (=> b!4175810 m!4765551))

(declare-fun m!4765553 () Bool)

(assert (=> b!4175807 m!4765553))

(declare-fun m!4765555 () Bool)

(assert (=> b!4175808 m!4765555))

(declare-fun m!4765557 () Bool)

(assert (=> b!4175820 m!4765557))

(declare-fun m!4765559 () Bool)

(assert (=> b!4175820 m!4765559))

(declare-fun m!4765561 () Bool)

(assert (=> b!4175820 m!4765561))

(declare-fun m!4765563 () Bool)

(assert (=> b!4175820 m!4765563))

(declare-fun m!4765565 () Bool)

(assert (=> b!4175820 m!4765565))

(declare-fun m!4765567 () Bool)

(assert (=> b!4175820 m!4765567))

(declare-fun m!4765569 () Bool)

(assert (=> b!4175798 m!4765569))

(declare-fun m!4765571 () Bool)

(assert (=> b!4175799 m!4765571))

(declare-fun m!4765573 () Bool)

(assert (=> b!4175817 m!4765573))

(declare-fun m!4765575 () Bool)

(assert (=> b!4175822 m!4765575))

(declare-fun m!4765577 () Bool)

(assert (=> b!4175804 m!4765577))

(check-sat (not b!4175816) (not b!4175802) b_and!326367 (not b!4175806) b_and!326361 (not b!4175815) tp_is_empty!21993 (not b!4175796) (not b!4175803) (not b!4175794) (not b!4175818) b_and!326363 (not b!4175821) (not b!4175808) (not b!4175813) (not b_next!121839) (not b!4175820) (not b!4175817) (not b!4175798) b_and!326359 (not b!4175811) (not b!4175793) (not b!4175797) (not b_next!121835) (not b_next!121837) b_and!326365 (not b!4175819) (not b!4175810) (not b!4175804) (not b_next!121833) (not b_next!121841) (not b!4175812) (not b!4175805) (not b!4175799) (not b!4175822) (not b!4175814) (not b!4175809) (not b_next!121831) (not b!4175807) b_and!326357)
(check-sat b_and!326363 (not b_next!121839) b_and!326359 b_and!326367 b_and!326361 b_and!326365 (not b_next!121833) (not b_next!121841) (not b_next!121835) (not b_next!121837) (not b_next!121831) b_and!326357)
