; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359400 () Bool)

(assert start!359400)

(declare-fun b!3838233 () Bool)

(declare-fun b_free!102117 () Bool)

(declare-fun b_next!102821 () Bool)

(assert (=> b!3838233 (= b_free!102117 (not b_next!102821))))

(declare-fun tp!1162061 () Bool)

(declare-fun b_and!285667 () Bool)

(assert (=> b!3838233 (= tp!1162061 b_and!285667)))

(declare-fun b_free!102119 () Bool)

(declare-fun b_next!102823 () Bool)

(assert (=> b!3838233 (= b_free!102119 (not b_next!102823))))

(declare-fun tp!1162066 () Bool)

(declare-fun b_and!285669 () Bool)

(assert (=> b!3838233 (= tp!1162066 b_and!285669)))

(declare-fun b!3838225 () Bool)

(declare-fun b_free!102121 () Bool)

(declare-fun b_next!102825 () Bool)

(assert (=> b!3838225 (= b_free!102121 (not b_next!102825))))

(declare-fun tp!1162063 () Bool)

(declare-fun b_and!285671 () Bool)

(assert (=> b!3838225 (= tp!1162063 b_and!285671)))

(declare-fun b_free!102123 () Bool)

(declare-fun b_next!102827 () Bool)

(assert (=> b!3838225 (= b_free!102123 (not b_next!102827))))

(declare-fun tp!1162053 () Bool)

(declare-fun b_and!285673 () Bool)

(assert (=> b!3838225 (= tp!1162053 b_and!285673)))

(declare-fun b!3838220 () Bool)

(declare-fun b_free!102125 () Bool)

(declare-fun b_next!102829 () Bool)

(assert (=> b!3838220 (= b_free!102125 (not b_next!102829))))

(declare-fun tp!1162060 () Bool)

(declare-fun b_and!285675 () Bool)

(assert (=> b!3838220 (= tp!1162060 b_and!285675)))

(declare-fun b_free!102127 () Bool)

(declare-fun b_next!102831 () Bool)

(assert (=> b!3838220 (= b_free!102127 (not b_next!102831))))

(declare-fun tp!1162062 () Bool)

(declare-fun b_and!285677 () Bool)

(assert (=> b!3838220 (= tp!1162062 b_and!285677)))

(declare-fun b!3838216 () Bool)

(declare-fun e!2370629 () Bool)

(declare-fun tp_is_empty!19277 () Bool)

(declare-fun tp!1162052 () Bool)

(assert (=> b!3838216 (= e!2370629 (and tp_is_empty!19277 tp!1162052))))

(declare-fun b!3838217 () Bool)

(declare-fun e!2370617 () Bool)

(declare-fun tp!1162050 () Bool)

(assert (=> b!3838217 (= e!2370617 (and tp_is_empty!19277 tp!1162050))))

(declare-fun b!3838218 () Bool)

(declare-datatypes ((List!40672 0))(
  ( (Nil!40548) (Cons!40548 (h!45968 (_ BitVec 16)) (t!310105 List!40672)) )
))
(declare-datatypes ((TokenValue!6478 0))(
  ( (FloatLiteralValue!12956 (text!45791 List!40672)) (TokenValueExt!6477 (__x!25173 Int)) (Broken!32390 (value!198676 List!40672)) (Object!6601) (End!6478) (Def!6478) (Underscore!6478) (Match!6478) (Else!6478) (Error!6478) (Case!6478) (If!6478) (Extends!6478) (Abstract!6478) (Class!6478) (Val!6478) (DelimiterValue!12956 (del!6538 List!40672)) (KeywordValue!6484 (value!198677 List!40672)) (CommentValue!12956 (value!198678 List!40672)) (WhitespaceValue!12956 (value!198679 List!40672)) (IndentationValue!6478 (value!198680 List!40672)) (String!46107) (Int32!6478) (Broken!32391 (value!198681 List!40672)) (Boolean!6479) (Unit!58275) (OperatorValue!6481 (op!6538 List!40672)) (IdentifierValue!12956 (value!198682 List!40672)) (IdentifierValue!12957 (value!198683 List!40672)) (WhitespaceValue!12957 (value!198684 List!40672)) (True!12956) (False!12956) (Broken!32392 (value!198685 List!40672)) (Broken!32393 (value!198686 List!40672)) (True!12957) (RightBrace!6478) (RightBracket!6478) (Colon!6478) (Null!6478) (Comma!6478) (LeftBracket!6478) (False!12957) (LeftBrace!6478) (ImaginaryLiteralValue!6478 (text!45792 List!40672)) (StringLiteralValue!19434 (value!198687 List!40672)) (EOFValue!6478 (value!198688 List!40672)) (IdentValue!6478 (value!198689 List!40672)) (DelimiterValue!12957 (value!198690 List!40672)) (DedentValue!6478 (value!198691 List!40672)) (NewLineValue!6478 (value!198692 List!40672)) (IntegerValue!19434 (value!198693 (_ BitVec 32)) (text!45793 List!40672)) (IntegerValue!19435 (value!198694 Int) (text!45794 List!40672)) (Times!6478) (Or!6478) (Equal!6478) (Minus!6478) (Broken!32394 (value!198695 List!40672)) (And!6478) (Div!6478) (LessEqual!6478) (Mod!6478) (Concat!17631) (Not!6478) (Plus!6478) (SpaceValue!6478 (value!198696 List!40672)) (IntegerValue!19436 (value!198697 Int) (text!45795 List!40672)) (StringLiteralValue!19435 (text!45796 List!40672)) (FloatLiteralValue!12957 (text!45797 List!40672)) (BytesLiteralValue!6478 (value!198698 List!40672)) (CommentValue!12957 (value!198699 List!40672)) (StringLiteralValue!19436 (value!198700 List!40672)) (ErrorTokenValue!6478 (msg!6539 List!40672)) )
))
(declare-datatypes ((C!22492 0))(
  ( (C!22493 (val!13340 Int)) )
))
(declare-datatypes ((Regex!11153 0))(
  ( (ElementMatch!11153 (c!669158 C!22492)) (Concat!17632 (regOne!22818 Regex!11153) (regTwo!22818 Regex!11153)) (EmptyExpr!11153) (Star!11153 (reg!11482 Regex!11153)) (EmptyLang!11153) (Union!11153 (regOne!22819 Regex!11153) (regTwo!22819 Regex!11153)) )
))
(declare-datatypes ((String!46108 0))(
  ( (String!46109 (value!198701 String)) )
))
(declare-datatypes ((List!40673 0))(
  ( (Nil!40549) (Cons!40549 (h!45969 C!22492) (t!310106 List!40673)) )
))
(declare-datatypes ((IArray!24923 0))(
  ( (IArray!24924 (innerList!12519 List!40673)) )
))
(declare-datatypes ((Conc!12459 0))(
  ( (Node!12459 (left!31349 Conc!12459) (right!31679 Conc!12459) (csize!25148 Int) (cheight!12670 Int)) (Leaf!19290 (xs!15765 IArray!24923) (csize!25149 Int)) (Empty!12459) )
))
(declare-datatypes ((BalanceConc!24512 0))(
  ( (BalanceConc!24513 (c!669159 Conc!12459)) )
))
(declare-datatypes ((TokenValueInjection!12384 0))(
  ( (TokenValueInjection!12385 (toValue!8664 Int) (toChars!8523 Int)) )
))
(declare-datatypes ((Rule!12296 0))(
  ( (Rule!12297 (regex!6248 Regex!11153) (tag!7108 String!46108) (isSeparator!6248 Bool) (transformation!6248 TokenValueInjection!12384)) )
))
(declare-datatypes ((Token!11634 0))(
  ( (Token!11635 (value!198702 TokenValue!6478) (rule!9084 Rule!12296) (size!30537 Int) (originalCharacters!6848 List!40673)) )
))
(declare-datatypes ((List!40674 0))(
  ( (Nil!40550) (Cons!40550 (h!45970 Token!11634) (t!310107 List!40674)) )
))
(declare-fun prefixTokens!80 () List!40674)

(declare-fun e!2370611 () Bool)

(declare-fun tp!1162065 () Bool)

(declare-fun e!2370614 () Bool)

(declare-fun inv!54703 (Token!11634) Bool)

(assert (=> b!3838218 (= e!2370611 (and (inv!54703 (h!45970 prefixTokens!80)) e!2370614 tp!1162065))))

(declare-fun b!3838219 () Bool)

(declare-fun e!2370619 () Bool)

(declare-fun e!2370622 () Bool)

(assert (=> b!3838219 (= e!2370619 e!2370622)))

(declare-fun res!1553448 () Bool)

(assert (=> b!3838219 (=> (not res!1553448) (not e!2370622))))

(declare-datatypes ((tuple2!39722 0))(
  ( (tuple2!39723 (_1!22995 Token!11634) (_2!22995 List!40673)) )
))
(declare-datatypes ((Option!8666 0))(
  ( (None!8665) (Some!8665 (v!38957 tuple2!39722)) )
))
(declare-fun lt!1331887 () Option!8666)

(get-info :version)

(assert (=> b!3838219 (= res!1553448 ((_ is Some!8665) lt!1331887))))

(declare-datatypes ((LexerInterface!5837 0))(
  ( (LexerInterfaceExt!5834 (__x!25174 Int)) (Lexer!5835) )
))
(declare-fun thiss!20629 () LexerInterface!5837)

(declare-datatypes ((List!40675 0))(
  ( (Nil!40551) (Cons!40551 (h!45971 Rule!12296) (t!310108 List!40675)) )
))
(declare-fun rules!2768 () List!40675)

(declare-fun lt!1331888 () List!40673)

(declare-fun maxPrefix!3141 (LexerInterface!5837 List!40675 List!40673) Option!8666)

(assert (=> b!3838219 (= lt!1331887 (maxPrefix!3141 thiss!20629 rules!2768 lt!1331888))))

(declare-fun e!2370624 () Bool)

(assert (=> b!3838220 (= e!2370624 (and tp!1162060 tp!1162062))))

(declare-fun b!3838221 () Bool)

(declare-fun e!2370626 () Bool)

(declare-fun size!30538 (List!40673) Int)

(assert (=> b!3838221 (= e!2370626 (= (size!30537 (_1!22995 (v!38957 lt!1331887))) (size!30538 (originalCharacters!6848 (_1!22995 (v!38957 lt!1331887))))))))

(declare-fun b!3838222 () Bool)

(declare-fun res!1553454 () Bool)

(declare-fun e!2370623 () Bool)

(assert (=> b!3838222 (=> (not res!1553454) (not e!2370623))))

(declare-fun isEmpty!23952 (List!40674) Bool)

(assert (=> b!3838222 (= res!1553454 (not (isEmpty!23952 prefixTokens!80)))))

(declare-fun b!3838223 () Bool)

(declare-fun e!2370618 () Bool)

(declare-fun tp!1162064 () Bool)

(assert (=> b!3838223 (= e!2370618 (and tp_is_empty!19277 tp!1162064))))

(declare-fun b!3838224 () Bool)

(declare-fun res!1553456 () Bool)

(assert (=> b!3838224 (=> (not res!1553456) (not e!2370619))))

(declare-fun suffixResult!91 () List!40673)

(declare-fun suffix!1176 () List!40673)

(declare-fun suffixTokens!72 () List!40674)

(declare-datatypes ((tuple2!39724 0))(
  ( (tuple2!39725 (_1!22996 List!40674) (_2!22996 List!40673)) )
))
(declare-fun lexList!1605 (LexerInterface!5837 List!40675 List!40673) tuple2!39724)

(assert (=> b!3838224 (= res!1553456 (= (lexList!1605 thiss!20629 rules!2768 suffix!1176) (tuple2!39725 suffixTokens!72 suffixResult!91)))))

(declare-fun res!1553450 () Bool)

(assert (=> start!359400 (=> (not res!1553450) (not e!2370623))))

(assert (=> start!359400 (= res!1553450 ((_ is Lexer!5835) thiss!20629))))

(assert (=> start!359400 e!2370623))

(assert (=> start!359400 e!2370617))

(assert (=> start!359400 true))

(assert (=> start!359400 e!2370618))

(declare-fun e!2370615 () Bool)

(assert (=> start!359400 e!2370615))

(assert (=> start!359400 e!2370611))

(declare-fun e!2370621 () Bool)

(assert (=> start!359400 e!2370621))

(assert (=> start!359400 e!2370629))

(declare-fun e!2370630 () Bool)

(assert (=> b!3838225 (= e!2370630 (and tp!1162063 tp!1162053))))

(declare-fun b!3838226 () Bool)

(declare-fun e!2370613 () Bool)

(declare-fun tp!1162057 () Bool)

(assert (=> b!3838226 (= e!2370615 (and e!2370613 tp!1162057))))

(declare-fun b!3838227 () Bool)

(declare-fun res!1553452 () Bool)

(assert (=> b!3838227 (=> (not res!1553452) (not e!2370623))))

(declare-fun prefix!426 () List!40673)

(declare-fun isEmpty!23953 (List!40673) Bool)

(assert (=> b!3838227 (= res!1553452 (not (isEmpty!23953 prefix!426)))))

(declare-fun b!3838228 () Bool)

(assert (=> b!3838228 (= e!2370623 e!2370619)))

(declare-fun res!1553455 () Bool)

(assert (=> b!3838228 (=> (not res!1553455) (not e!2370619))))

(declare-fun ++!10253 (List!40674 List!40674) List!40674)

(assert (=> b!3838228 (= res!1553455 (= (lexList!1605 thiss!20629 rules!2768 lt!1331888) (tuple2!39725 (++!10253 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10254 (List!40673 List!40673) List!40673)

(assert (=> b!3838228 (= lt!1331888 (++!10254 prefix!426 suffix!1176))))

(declare-fun b!3838229 () Bool)

(declare-fun tp!1162054 () Bool)

(declare-fun e!2370612 () Bool)

(declare-fun inv!21 (TokenValue!6478) Bool)

(assert (=> b!3838229 (= e!2370614 (and (inv!21 (value!198702 (h!45970 prefixTokens!80))) e!2370612 tp!1162054))))

(declare-fun tp!1162055 () Bool)

(declare-fun b!3838230 () Bool)

(declare-fun e!2370620 () Bool)

(assert (=> b!3838230 (= e!2370621 (and (inv!54703 (h!45970 suffixTokens!72)) e!2370620 tp!1162055))))

(declare-fun b!3838231 () Bool)

(declare-fun tp!1162056 () Bool)

(declare-fun e!2370610 () Bool)

(assert (=> b!3838231 (= e!2370620 (and (inv!21 (value!198702 (h!45970 suffixTokens!72))) e!2370610 tp!1162056))))

(declare-fun tp!1162051 () Bool)

(declare-fun b!3838232 () Bool)

(declare-fun inv!54700 (String!46108) Bool)

(declare-fun inv!54704 (TokenValueInjection!12384) Bool)

(assert (=> b!3838232 (= e!2370612 (and tp!1162051 (inv!54700 (tag!7108 (rule!9084 (h!45970 prefixTokens!80)))) (inv!54704 (transformation!6248 (rule!9084 (h!45970 prefixTokens!80)))) e!2370624))))

(declare-fun e!2370616 () Bool)

(assert (=> b!3838233 (= e!2370616 (and tp!1162061 tp!1162066))))

(declare-fun tp!1162059 () Bool)

(declare-fun b!3838234 () Bool)

(assert (=> b!3838234 (= e!2370610 (and tp!1162059 (inv!54700 (tag!7108 (rule!9084 (h!45970 suffixTokens!72)))) (inv!54704 (transformation!6248 (rule!9084 (h!45970 suffixTokens!72)))) e!2370616))))

(declare-fun b!3838235 () Bool)

(assert (=> b!3838235 (= e!2370622 (not true))))

(declare-fun lt!1331883 () List!40673)

(declare-fun lt!1331885 () List!40673)

(declare-fun lt!1331884 () Int)

(declare-fun lt!1331891 () TokenValue!6478)

(assert (=> b!3838235 (and (= (size!30537 (_1!22995 (v!38957 lt!1331887))) lt!1331884) (= (originalCharacters!6848 (_1!22995 (v!38957 lt!1331887))) lt!1331883) (= (v!38957 lt!1331887) (tuple2!39723 (Token!11635 lt!1331891 (rule!9084 (_1!22995 (v!38957 lt!1331887))) lt!1331884 lt!1331883) lt!1331885)))))

(assert (=> b!3838235 (= lt!1331884 (size!30538 lt!1331883))))

(assert (=> b!3838235 e!2370626))

(declare-fun res!1553449 () Bool)

(assert (=> b!3838235 (=> (not res!1553449) (not e!2370626))))

(assert (=> b!3838235 (= res!1553449 (= (value!198702 (_1!22995 (v!38957 lt!1331887))) lt!1331891))))

(declare-fun apply!9491 (TokenValueInjection!12384 BalanceConc!24512) TokenValue!6478)

(declare-fun seqFromList!4519 (List!40673) BalanceConc!24512)

(assert (=> b!3838235 (= lt!1331891 (apply!9491 (transformation!6248 (rule!9084 (_1!22995 (v!38957 lt!1331887)))) (seqFromList!4519 lt!1331883)))))

(assert (=> b!3838235 (= (_2!22995 (v!38957 lt!1331887)) lt!1331885)))

(declare-datatypes ((Unit!58276 0))(
  ( (Unit!58277) )
))
(declare-fun lt!1331890 () Unit!58276)

(declare-fun lemmaSamePrefixThenSameSuffix!1568 (List!40673 List!40673 List!40673 List!40673 List!40673) Unit!58276)

(assert (=> b!3838235 (= lt!1331890 (lemmaSamePrefixThenSameSuffix!1568 lt!1331883 (_2!22995 (v!38957 lt!1331887)) lt!1331883 lt!1331885 lt!1331888))))

(declare-fun getSuffix!1802 (List!40673 List!40673) List!40673)

(assert (=> b!3838235 (= lt!1331885 (getSuffix!1802 lt!1331888 lt!1331883))))

(declare-fun isPrefix!3347 (List!40673 List!40673) Bool)

(assert (=> b!3838235 (isPrefix!3347 lt!1331883 (++!10254 lt!1331883 (_2!22995 (v!38957 lt!1331887))))))

(declare-fun lt!1331886 () Unit!58276)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2210 (List!40673 List!40673) Unit!58276)

(assert (=> b!3838235 (= lt!1331886 (lemmaConcatTwoListThenFirstIsPrefix!2210 lt!1331883 (_2!22995 (v!38957 lt!1331887))))))

(declare-fun list!15108 (BalanceConc!24512) List!40673)

(declare-fun charsOf!4076 (Token!11634) BalanceConc!24512)

(assert (=> b!3838235 (= lt!1331883 (list!15108 (charsOf!4076 (_1!22995 (v!38957 lt!1331887)))))))

(declare-fun ruleValid!2200 (LexerInterface!5837 Rule!12296) Bool)

(assert (=> b!3838235 (ruleValid!2200 thiss!20629 (rule!9084 (_1!22995 (v!38957 lt!1331887))))))

(declare-fun lt!1331889 () Unit!58276)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1280 (LexerInterface!5837 Rule!12296 List!40675) Unit!58276)

(assert (=> b!3838235 (= lt!1331889 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1280 thiss!20629 (rule!9084 (_1!22995 (v!38957 lt!1331887))) rules!2768))))

(declare-fun lt!1331882 () Unit!58276)

(declare-fun lemmaCharactersSize!909 (Token!11634) Unit!58276)

(assert (=> b!3838235 (= lt!1331882 (lemmaCharactersSize!909 (_1!22995 (v!38957 lt!1331887))))))

(declare-fun b!3838236 () Bool)

(declare-fun res!1553453 () Bool)

(assert (=> b!3838236 (=> (not res!1553453) (not e!2370623))))

(declare-fun isEmpty!23954 (List!40675) Bool)

(assert (=> b!3838236 (= res!1553453 (not (isEmpty!23954 rules!2768)))))

(declare-fun b!3838237 () Bool)

(declare-fun res!1553451 () Bool)

(assert (=> b!3838237 (=> (not res!1553451) (not e!2370623))))

(declare-fun rulesInvariant!5180 (LexerInterface!5837 List!40675) Bool)

(assert (=> b!3838237 (= res!1553451 (rulesInvariant!5180 thiss!20629 rules!2768))))

(declare-fun b!3838238 () Bool)

(declare-fun tp!1162058 () Bool)

(assert (=> b!3838238 (= e!2370613 (and tp!1162058 (inv!54700 (tag!7108 (h!45971 rules!2768))) (inv!54704 (transformation!6248 (h!45971 rules!2768))) e!2370630))))

(assert (= (and start!359400 res!1553450) b!3838236))

(assert (= (and b!3838236 res!1553453) b!3838237))

(assert (= (and b!3838237 res!1553451) b!3838222))

(assert (= (and b!3838222 res!1553454) b!3838227))

(assert (= (and b!3838227 res!1553452) b!3838228))

(assert (= (and b!3838228 res!1553455) b!3838224))

(assert (= (and b!3838224 res!1553456) b!3838219))

(assert (= (and b!3838219 res!1553448) b!3838235))

(assert (= (and b!3838235 res!1553449) b!3838221))

(assert (= (and start!359400 ((_ is Cons!40549) suffixResult!91)) b!3838217))

(assert (= (and start!359400 ((_ is Cons!40549) suffix!1176)) b!3838223))

(assert (= b!3838238 b!3838225))

(assert (= b!3838226 b!3838238))

(assert (= (and start!359400 ((_ is Cons!40551) rules!2768)) b!3838226))

(assert (= b!3838232 b!3838220))

(assert (= b!3838229 b!3838232))

(assert (= b!3838218 b!3838229))

(assert (= (and start!359400 ((_ is Cons!40550) prefixTokens!80)) b!3838218))

(assert (= b!3838234 b!3838233))

(assert (= b!3838231 b!3838234))

(assert (= b!3838230 b!3838231))

(assert (= (and start!359400 ((_ is Cons!40550) suffixTokens!72)) b!3838230))

(assert (= (and start!359400 ((_ is Cons!40549) prefix!426)) b!3838216))

(declare-fun m!4392563 () Bool)

(assert (=> b!3838234 m!4392563))

(declare-fun m!4392565 () Bool)

(assert (=> b!3838234 m!4392565))

(declare-fun m!4392567 () Bool)

(assert (=> b!3838236 m!4392567))

(declare-fun m!4392569 () Bool)

(assert (=> b!3838222 m!4392569))

(declare-fun m!4392571 () Bool)

(assert (=> b!3838229 m!4392571))

(declare-fun m!4392573 () Bool)

(assert (=> b!3838230 m!4392573))

(declare-fun m!4392575 () Bool)

(assert (=> b!3838237 m!4392575))

(declare-fun m!4392577 () Bool)

(assert (=> b!3838238 m!4392577))

(declare-fun m!4392579 () Bool)

(assert (=> b!3838238 m!4392579))

(declare-fun m!4392581 () Bool)

(assert (=> b!3838231 m!4392581))

(declare-fun m!4392583 () Bool)

(assert (=> b!3838221 m!4392583))

(declare-fun m!4392585 () Bool)

(assert (=> b!3838228 m!4392585))

(declare-fun m!4392587 () Bool)

(assert (=> b!3838228 m!4392587))

(declare-fun m!4392589 () Bool)

(assert (=> b!3838228 m!4392589))

(declare-fun m!4392591 () Bool)

(assert (=> b!3838218 m!4392591))

(declare-fun m!4392593 () Bool)

(assert (=> b!3838227 m!4392593))

(declare-fun m!4392595 () Bool)

(assert (=> b!3838232 m!4392595))

(declare-fun m!4392597 () Bool)

(assert (=> b!3838232 m!4392597))

(declare-fun m!4392599 () Bool)

(assert (=> b!3838235 m!4392599))

(declare-fun m!4392601 () Bool)

(assert (=> b!3838235 m!4392601))

(declare-fun m!4392603 () Bool)

(assert (=> b!3838235 m!4392603))

(declare-fun m!4392605 () Bool)

(assert (=> b!3838235 m!4392605))

(declare-fun m!4392607 () Bool)

(assert (=> b!3838235 m!4392607))

(declare-fun m!4392609 () Bool)

(assert (=> b!3838235 m!4392609))

(declare-fun m!4392611 () Bool)

(assert (=> b!3838235 m!4392611))

(declare-fun m!4392613 () Bool)

(assert (=> b!3838235 m!4392613))

(declare-fun m!4392615 () Bool)

(assert (=> b!3838235 m!4392615))

(assert (=> b!3838235 m!4392603))

(declare-fun m!4392617 () Bool)

(assert (=> b!3838235 m!4392617))

(assert (=> b!3838235 m!4392613))

(declare-fun m!4392619 () Bool)

(assert (=> b!3838235 m!4392619))

(assert (=> b!3838235 m!4392605))

(declare-fun m!4392621 () Bool)

(assert (=> b!3838235 m!4392621))

(declare-fun m!4392623 () Bool)

(assert (=> b!3838235 m!4392623))

(declare-fun m!4392625 () Bool)

(assert (=> b!3838219 m!4392625))

(declare-fun m!4392627 () Bool)

(assert (=> b!3838224 m!4392627))

(check-sat (not b_next!102825) (not b!3838216) b_and!285669 b_and!285673 b_and!285667 (not b_next!102823) (not b!3838227) (not b!3838226) b_and!285675 (not b!3838218) (not b_next!102831) b_and!285671 (not b!3838217) (not b!3838236) (not b!3838224) (not b!3838219) (not b!3838221) (not b_next!102827) (not b_next!102821) (not b!3838238) (not b!3838232) (not b!3838234) (not b!3838222) b_and!285677 (not b!3838223) tp_is_empty!19277 (not b!3838230) (not b!3838237) (not b!3838231) (not b!3838235) (not b!3838228) (not b_next!102829) (not b!3838229))
(check-sat (not b_next!102825) (not b_next!102827) (not b_next!102821) b_and!285669 b_and!285673 b_and!285667 (not b_next!102823) b_and!285677 b_and!285675 (not b_next!102831) b_and!285671 (not b_next!102829))
