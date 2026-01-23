; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339758 () Bool)

(assert start!339758)

(declare-fun b!3639104 () Bool)

(declare-fun b_free!95361 () Bool)

(declare-fun b_next!96065 () Bool)

(assert (=> b!3639104 (= b_free!95361 (not b_next!96065))))

(declare-fun tp!1110371 () Bool)

(declare-fun b_and!268043 () Bool)

(assert (=> b!3639104 (= tp!1110371 b_and!268043)))

(declare-fun b_free!95363 () Bool)

(declare-fun b_next!96067 () Bool)

(assert (=> b!3639104 (= b_free!95363 (not b_next!96067))))

(declare-fun tp!1110372 () Bool)

(declare-fun b_and!268045 () Bool)

(assert (=> b!3639104 (= tp!1110372 b_and!268045)))

(declare-fun b!3639099 () Bool)

(declare-fun b_free!95365 () Bool)

(declare-fun b_next!96069 () Bool)

(assert (=> b!3639099 (= b_free!95365 (not b_next!96069))))

(declare-fun tp!1110369 () Bool)

(declare-fun b_and!268047 () Bool)

(assert (=> b!3639099 (= tp!1110369 b_and!268047)))

(declare-fun b_free!95367 () Bool)

(declare-fun b_next!96071 () Bool)

(assert (=> b!3639099 (= b_free!95367 (not b_next!96071))))

(declare-fun tp!1110370 () Bool)

(declare-fun b_and!268049 () Bool)

(assert (=> b!3639099 (= tp!1110370 b_and!268049)))

(declare-fun b!3639097 () Bool)

(declare-fun b_free!95369 () Bool)

(declare-fun b_next!96073 () Bool)

(assert (=> b!3639097 (= b_free!95369 (not b_next!96073))))

(declare-fun tp!1110362 () Bool)

(declare-fun b_and!268051 () Bool)

(assert (=> b!3639097 (= tp!1110362 b_and!268051)))

(declare-fun b_free!95371 () Bool)

(declare-fun b_next!96075 () Bool)

(assert (=> b!3639097 (= b_free!95371 (not b_next!96075))))

(declare-fun tp!1110363 () Bool)

(declare-fun b_and!268053 () Bool)

(assert (=> b!3639097 (= tp!1110363 b_and!268053)))

(declare-fun b!3639117 () Bool)

(declare-fun b_free!95373 () Bool)

(declare-fun b_next!96077 () Bool)

(assert (=> b!3639117 (= b_free!95373 (not b_next!96077))))

(declare-fun tp!1110366 () Bool)

(declare-fun b_and!268055 () Bool)

(assert (=> b!3639117 (= tp!1110366 b_and!268055)))

(declare-fun b_free!95375 () Bool)

(declare-fun b_next!96079 () Bool)

(assert (=> b!3639117 (= b_free!95375 (not b_next!96079))))

(declare-fun tp!1110359 () Bool)

(declare-fun b_and!268057 () Bool)

(assert (=> b!3639117 (= tp!1110359 b_and!268057)))

(declare-fun b!3639096 () Bool)

(declare-datatypes ((Unit!55185 0))(
  ( (Unit!55186) )
))
(declare-fun e!2252709 () Unit!55185)

(declare-fun Unit!55187 () Unit!55185)

(assert (=> b!3639096 (= e!2252709 Unit!55187)))

(declare-datatypes ((C!21160 0))(
  ( (C!21161 (val!12628 Int)) )
))
(declare-datatypes ((List!38475 0))(
  ( (Nil!38351) (Cons!38351 (h!43771 C!21160) (t!296258 List!38475)) )
))
(declare-fun lt!1259689 () List!38475)

(declare-fun lt!1259696 () Unit!55185)

(declare-datatypes ((List!38476 0))(
  ( (Nil!38352) (Cons!38352 (h!43772 (_ BitVec 16)) (t!296259 List!38476)) )
))
(declare-datatypes ((TokenValue!5958 0))(
  ( (FloatLiteralValue!11916 (text!42151 List!38476)) (TokenValueExt!5957 (__x!24133 Int)) (Broken!29790 (value!183682 List!38476)) (Object!6081) (End!5958) (Def!5958) (Underscore!5958) (Match!5958) (Else!5958) (Error!5958) (Case!5958) (If!5958) (Extends!5958) (Abstract!5958) (Class!5958) (Val!5958) (DelimiterValue!11916 (del!6018 List!38476)) (KeywordValue!5964 (value!183683 List!38476)) (CommentValue!11916 (value!183684 List!38476)) (WhitespaceValue!11916 (value!183685 List!38476)) (IndentationValue!5958 (value!183686 List!38476)) (String!43123) (Int32!5958) (Broken!29791 (value!183687 List!38476)) (Boolean!5959) (Unit!55188) (OperatorValue!5961 (op!6018 List!38476)) (IdentifierValue!11916 (value!183688 List!38476)) (IdentifierValue!11917 (value!183689 List!38476)) (WhitespaceValue!11917 (value!183690 List!38476)) (True!11916) (False!11916) (Broken!29792 (value!183691 List!38476)) (Broken!29793 (value!183692 List!38476)) (True!11917) (RightBrace!5958) (RightBracket!5958) (Colon!5958) (Null!5958) (Comma!5958) (LeftBracket!5958) (False!11917) (LeftBrace!5958) (ImaginaryLiteralValue!5958 (text!42152 List!38476)) (StringLiteralValue!17874 (value!183693 List!38476)) (EOFValue!5958 (value!183694 List!38476)) (IdentValue!5958 (value!183695 List!38476)) (DelimiterValue!11917 (value!183696 List!38476)) (DedentValue!5958 (value!183697 List!38476)) (NewLineValue!5958 (value!183698 List!38476)) (IntegerValue!17874 (value!183699 (_ BitVec 32)) (text!42153 List!38476)) (IntegerValue!17875 (value!183700 Int) (text!42154 List!38476)) (Times!5958) (Or!5958) (Equal!5958) (Minus!5958) (Broken!29794 (value!183701 List!38476)) (And!5958) (Div!5958) (LessEqual!5958) (Mod!5958) (Concat!16445) (Not!5958) (Plus!5958) (SpaceValue!5958 (value!183702 List!38476)) (IntegerValue!17876 (value!183703 Int) (text!42155 List!38476)) (StringLiteralValue!17875 (text!42156 List!38476)) (FloatLiteralValue!11917 (text!42157 List!38476)) (BytesLiteralValue!5958 (value!183704 List!38476)) (CommentValue!11917 (value!183705 List!38476)) (StringLiteralValue!17876 (value!183706 List!38476)) (ErrorTokenValue!5958 (msg!6019 List!38476)) )
))
(declare-datatypes ((String!43124 0))(
  ( (String!43125 (value!183707 String)) )
))
(declare-datatypes ((Regex!10487 0))(
  ( (ElementMatch!10487 (c!629270 C!21160)) (Concat!16446 (regOne!21486 Regex!10487) (regTwo!21486 Regex!10487)) (EmptyExpr!10487) (Star!10487 (reg!10816 Regex!10487)) (EmptyLang!10487) (Union!10487 (regOne!21487 Regex!10487) (regTwo!21487 Regex!10487)) )
))
(declare-datatypes ((IArray!23423 0))(
  ( (IArray!23424 (innerList!11769 List!38475)) )
))
(declare-datatypes ((Conc!11709 0))(
  ( (Node!11709 (left!29943 Conc!11709) (right!30273 Conc!11709) (csize!23648 Int) (cheight!11920 Int)) (Leaf!18184 (xs!14911 IArray!23423) (csize!23649 Int)) (Empty!11709) )
))
(declare-datatypes ((BalanceConc!23032 0))(
  ( (BalanceConc!23033 (c!629271 Conc!11709)) )
))
(declare-datatypes ((TokenValueInjection!11344 0))(
  ( (TokenValueInjection!11345 (toValue!8020 Int) (toChars!7879 Int)) )
))
(declare-datatypes ((Rule!11256 0))(
  ( (Rule!11257 (regex!5728 Regex!10487) (tag!6474 String!43124) (isSeparator!5728 Bool) (transformation!5728 TokenValueInjection!11344)) )
))
(declare-fun rule!403 () Rule!11256)

(declare-fun lt!1259684 () C!21160)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!676 (Regex!10487 List!38475 C!21160) Unit!55185)

(assert (=> b!3639096 (= lt!1259696 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!676 (regex!5728 rule!403) lt!1259689 lt!1259684))))

(assert (=> b!3639096 false))

(declare-fun e!2252720 () Bool)

(assert (=> b!3639097 (= e!2252720 (and tp!1110362 tp!1110363))))

(declare-fun b!3639098 () Bool)

(declare-fun res!1474751 () Bool)

(declare-fun e!2252712 () Bool)

(assert (=> b!3639098 (=> (not res!1474751) (not e!2252712))))

(declare-datatypes ((LexerInterface!5317 0))(
  ( (LexerInterfaceExt!5314 (__x!24134 Int)) (Lexer!5315) )
))
(declare-fun thiss!23823 () LexerInterface!5317)

(declare-datatypes ((List!38477 0))(
  ( (Nil!38353) (Cons!38353 (h!43773 Rule!11256) (t!296260 List!38477)) )
))
(declare-fun rules!3307 () List!38477)

(declare-fun rulesInvariant!4714 (LexerInterface!5317 List!38477) Bool)

(assert (=> b!3639098 (= res!1474751 (rulesInvariant!4714 thiss!23823 rules!3307))))

(declare-fun e!2252727 () Bool)

(assert (=> b!3639099 (= e!2252727 (and tp!1110369 tp!1110370))))

(declare-fun b!3639100 () Bool)

(declare-fun e!2252716 () Bool)

(declare-fun e!2252728 () Bool)

(assert (=> b!3639100 (= e!2252716 e!2252728)))

(declare-fun res!1474754 () Bool)

(assert (=> b!3639100 (=> res!1474754 e!2252728)))

(declare-fun lt!1259704 () List!38475)

(declare-fun lt!1259691 () List!38475)

(declare-fun isPrefix!3091 (List!38475 List!38475) Bool)

(assert (=> b!3639100 (= res!1474754 (not (isPrefix!3091 lt!1259704 lt!1259691)))))

(declare-datatypes ((Token!10822 0))(
  ( (Token!10823 (value!183708 TokenValue!5958) (rule!8508 Rule!11256) (size!29269 Int) (originalCharacters!6442 List!38475)) )
))
(declare-datatypes ((tuple2!38220 0))(
  ( (tuple2!38221 (_1!22244 Token!10822) (_2!22244 List!38475)) )
))
(declare-fun lt!1259683 () tuple2!38220)

(declare-fun ++!9544 (List!38475 List!38475) List!38475)

(assert (=> b!3639100 (isPrefix!3091 lt!1259704 (++!9544 lt!1259704 (_2!22244 lt!1259683)))))

(declare-fun lt!1259695 () Unit!55185)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2010 (List!38475 List!38475) Unit!55185)

(assert (=> b!3639100 (= lt!1259695 (lemmaConcatTwoListThenFirstIsPrefix!2010 lt!1259704 (_2!22244 lt!1259683)))))

(declare-fun lt!1259694 () BalanceConc!23032)

(declare-fun list!14194 (BalanceConc!23032) List!38475)

(assert (=> b!3639100 (= lt!1259704 (list!14194 lt!1259694))))

(declare-fun charsOf!3742 (Token!10822) BalanceConc!23032)

(assert (=> b!3639100 (= lt!1259694 (charsOf!3742 (_1!22244 lt!1259683)))))

(declare-fun e!2252717 () Bool)

(assert (=> b!3639100 e!2252717))

(declare-fun res!1474760 () Bool)

(assert (=> b!3639100 (=> (not res!1474760) (not e!2252717))))

(declare-datatypes ((Option!8084 0))(
  ( (None!8083) (Some!8083 (v!37907 Rule!11256)) )
))
(declare-fun lt!1259702 () Option!8084)

(declare-fun isDefined!6316 (Option!8084) Bool)

(assert (=> b!3639100 (= res!1474760 (isDefined!6316 lt!1259702))))

(declare-fun getRuleFromTag!1332 (LexerInterface!5317 List!38477 String!43124) Option!8084)

(assert (=> b!3639100 (= lt!1259702 (getRuleFromTag!1332 thiss!23823 rules!3307 (tag!6474 (rule!8508 (_1!22244 lt!1259683)))))))

(declare-fun lt!1259677 () Unit!55185)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1332 (LexerInterface!5317 List!38477 List!38475 Token!10822) Unit!55185)

(assert (=> b!3639100 (= lt!1259677 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1332 thiss!23823 rules!3307 lt!1259691 (_1!22244 lt!1259683)))))

(declare-datatypes ((Option!8085 0))(
  ( (None!8084) (Some!8084 (v!37908 tuple2!38220)) )
))
(declare-fun lt!1259703 () Option!8085)

(declare-fun get!12558 (Option!8085) tuple2!38220)

(assert (=> b!3639100 (= lt!1259683 (get!12558 lt!1259703))))

(declare-fun suffix!1395 () List!38475)

(declare-fun lt!1259697 () Unit!55185)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!995 (LexerInterface!5317 List!38477 List!38475 List!38475) Unit!55185)

(assert (=> b!3639100 (= lt!1259697 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!995 thiss!23823 rules!3307 lt!1259689 suffix!1395))))

(declare-fun maxPrefix!2851 (LexerInterface!5317 List!38477 List!38475) Option!8085)

(assert (=> b!3639100 (= lt!1259703 (maxPrefix!2851 thiss!23823 rules!3307 lt!1259691))))

(assert (=> b!3639100 (isPrefix!3091 lt!1259689 lt!1259691)))

(declare-fun lt!1259679 () Unit!55185)

(assert (=> b!3639100 (= lt!1259679 (lemmaConcatTwoListThenFirstIsPrefix!2010 lt!1259689 suffix!1395))))

(assert (=> b!3639100 (= lt!1259691 (++!9544 lt!1259689 suffix!1395))))

(declare-fun b!3639101 () Bool)

(declare-fun res!1474769 () Bool)

(declare-fun e!2252718 () Bool)

(assert (=> b!3639101 (=> (not res!1474769) (not e!2252718))))

(declare-fun lt!1259686 () tuple2!38220)

(declare-fun isEmpty!22704 (List!38475) Bool)

(assert (=> b!3639101 (= res!1474769 (isEmpty!22704 (_2!22244 lt!1259686)))))

(declare-fun b!3639102 () Bool)

(declare-fun e!2252721 () Bool)

(assert (=> b!3639102 (= e!2252717 e!2252721)))

(declare-fun res!1474755 () Bool)

(assert (=> b!3639102 (=> (not res!1474755) (not e!2252721))))

(declare-fun lt!1259701 () Rule!11256)

(declare-fun matchR!5056 (Regex!10487 List!38475) Bool)

(assert (=> b!3639102 (= res!1474755 (matchR!5056 (regex!5728 lt!1259701) (list!14194 (charsOf!3742 (_1!22244 lt!1259683)))))))

(declare-fun get!12559 (Option!8084) Rule!11256)

(assert (=> b!3639102 (= lt!1259701 (get!12559 lt!1259702))))

(declare-fun b!3639103 () Bool)

(declare-fun e!2252725 () Bool)

(declare-fun tp_is_empty!18057 () Bool)

(declare-fun tp!1110368 () Bool)

(assert (=> b!3639103 (= e!2252725 (and tp_is_empty!18057 tp!1110368))))

(declare-fun e!2252719 () Bool)

(assert (=> b!3639104 (= e!2252719 (and tp!1110371 tp!1110372))))

(declare-fun b!3639105 () Bool)

(declare-fun e!2252702 () Bool)

(assert (=> b!3639105 (= e!2252712 e!2252702)))

(declare-fun res!1474767 () Bool)

(assert (=> b!3639105 (=> (not res!1474767) (not e!2252702))))

(declare-fun lt!1259687 () Option!8085)

(declare-fun isDefined!6317 (Option!8085) Bool)

(assert (=> b!3639105 (= res!1474767 (isDefined!6317 lt!1259687))))

(assert (=> b!3639105 (= lt!1259687 (maxPrefix!2851 thiss!23823 rules!3307 lt!1259689))))

(declare-fun token!511 () Token!10822)

(assert (=> b!3639105 (= lt!1259689 (list!14194 (charsOf!3742 token!511)))))

(declare-fun b!3639106 () Bool)

(assert (=> b!3639106 (= e!2252702 e!2252718)))

(declare-fun res!1474753 () Bool)

(assert (=> b!3639106 (=> (not res!1474753) (not e!2252718))))

(assert (=> b!3639106 (= res!1474753 (= (_1!22244 lt!1259686) token!511))))

(assert (=> b!3639106 (= lt!1259686 (get!12558 lt!1259687))))

(declare-fun b!3639107 () Bool)

(declare-fun res!1474771 () Bool)

(declare-fun e!2252707 () Bool)

(assert (=> b!3639107 (=> res!1474771 e!2252707)))

(assert (=> b!3639107 (= res!1474771 (isEmpty!22704 suffix!1395))))

(declare-fun res!1474766 () Bool)

(assert (=> start!339758 (=> (not res!1474766) (not e!2252712))))

(get-info :version)

(assert (=> start!339758 (= res!1474766 ((_ is Lexer!5315) thiss!23823))))

(assert (=> start!339758 e!2252712))

(declare-fun e!2252710 () Bool)

(assert (=> start!339758 e!2252710))

(assert (=> start!339758 e!2252725))

(assert (=> start!339758 true))

(declare-fun e!2252706 () Bool)

(declare-fun inv!51784 (Token!10822) Bool)

(assert (=> start!339758 (and (inv!51784 token!511) e!2252706)))

(declare-fun e!2252711 () Bool)

(assert (=> start!339758 e!2252711))

(declare-fun e!2252713 () Bool)

(assert (=> start!339758 e!2252713))

(declare-fun b!3639108 () Bool)

(declare-fun e!2252715 () Bool)

(assert (=> b!3639108 (= e!2252715 true)))

(declare-fun lt!1259685 () Bool)

(declare-fun contains!7521 (List!38475 C!21160) Bool)

(assert (=> b!3639108 (= lt!1259685 (contains!7521 lt!1259689 lt!1259684))))

(declare-fun tp!1110367 () Bool)

(declare-fun e!2252704 () Bool)

(declare-fun b!3639109 () Bool)

(declare-fun inv!51781 (String!43124) Bool)

(declare-fun inv!51785 (TokenValueInjection!11344) Bool)

(assert (=> b!3639109 (= e!2252704 (and tp!1110367 (inv!51781 (tag!6474 (rule!8508 token!511))) (inv!51785 (transformation!5728 (rule!8508 token!511))) e!2252727))))

(declare-fun b!3639110 () Bool)

(declare-fun e!2252701 () Bool)

(assert (=> b!3639110 (= e!2252728 e!2252701)))

(declare-fun res!1474757 () Bool)

(assert (=> b!3639110 (=> res!1474757 e!2252701)))

(declare-fun apply!9230 (TokenValueInjection!11344 BalanceConc!23032) TokenValue!5958)

(declare-fun size!29270 (BalanceConc!23032) Int)

(assert (=> b!3639110 (= res!1474757 (not (= lt!1259703 (Some!8084 (tuple2!38221 (Token!10823 (apply!9230 (transformation!5728 (rule!8508 (_1!22244 lt!1259683))) lt!1259694) (rule!8508 (_1!22244 lt!1259683)) (size!29270 lt!1259694) lt!1259704) (_2!22244 lt!1259683))))))))

(declare-fun lt!1259682 () Unit!55185)

(declare-fun lemmaCharactersSize!773 (Token!10822) Unit!55185)

(assert (=> b!3639110 (= lt!1259682 (lemmaCharactersSize!773 (_1!22244 lt!1259683)))))

(declare-fun lt!1259688 () Unit!55185)

(declare-fun lemmaEqSameImage!911 (TokenValueInjection!11344 BalanceConc!23032 BalanceConc!23032) Unit!55185)

(declare-fun seqFromList!4277 (List!38475) BalanceConc!23032)

(assert (=> b!3639110 (= lt!1259688 (lemmaEqSameImage!911 (transformation!5728 (rule!8508 (_1!22244 lt!1259683))) lt!1259694 (seqFromList!4277 (originalCharacters!6442 (_1!22244 lt!1259683)))))))

(declare-fun lt!1259681 () Unit!55185)

(declare-fun lemmaSemiInverse!1477 (TokenValueInjection!11344 BalanceConc!23032) Unit!55185)

(assert (=> b!3639110 (= lt!1259681 (lemmaSemiInverse!1477 (transformation!5728 (rule!8508 (_1!22244 lt!1259683))) lt!1259694))))

(declare-fun b!3639111 () Bool)

(declare-fun Unit!55189 () Unit!55185)

(assert (=> b!3639111 (= e!2252709 Unit!55189)))

(declare-fun b!3639112 () Bool)

(declare-fun res!1474752 () Bool)

(assert (=> b!3639112 (=> (not res!1474752) (not e!2252718))))

(assert (=> b!3639112 (= res!1474752 (= (rule!8508 token!511) rule!403))))

(declare-fun b!3639113 () Bool)

(declare-fun res!1474756 () Bool)

(assert (=> b!3639113 (=> res!1474756 e!2252716)))

(declare-fun anOtherTypeRule!33 () Rule!11256)

(declare-fun lt!1259706 () C!21160)

(declare-fun usedCharacters!940 (Regex!10487) List!38475)

(assert (=> b!3639113 (= res!1474756 (not (contains!7521 (usedCharacters!940 (regex!5728 anOtherTypeRule!33)) lt!1259706)))))

(declare-fun b!3639114 () Bool)

(declare-fun res!1474768 () Bool)

(assert (=> b!3639114 (=> (not res!1474768) (not e!2252712))))

(declare-fun contains!7522 (List!38477 Rule!11256) Bool)

(assert (=> b!3639114 (= res!1474768 (contains!7522 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3639115 () Bool)

(declare-fun e!2252723 () Bool)

(assert (=> b!3639115 (= e!2252701 e!2252723)))

(declare-fun res!1474758 () Bool)

(assert (=> b!3639115 (=> res!1474758 e!2252723)))

(declare-fun lt!1259690 () Option!8085)

(declare-fun lt!1259698 () List!38475)

(assert (=> b!3639115 (= res!1474758 (or (not (= lt!1259698 (_2!22244 lt!1259683))) (not (= lt!1259690 (Some!8084 (tuple2!38221 (_1!22244 lt!1259683) lt!1259698))))))))

(assert (=> b!3639115 (= (_2!22244 lt!1259683) lt!1259698)))

(declare-fun lt!1259692 () Unit!55185)

(declare-fun lemmaSamePrefixThenSameSuffix!1418 (List!38475 List!38475 List!38475 List!38475 List!38475) Unit!55185)

(assert (=> b!3639115 (= lt!1259692 (lemmaSamePrefixThenSameSuffix!1418 lt!1259704 (_2!22244 lt!1259683) lt!1259704 lt!1259698 lt!1259691))))

(declare-fun getSuffix!1644 (List!38475 List!38475) List!38475)

(assert (=> b!3639115 (= lt!1259698 (getSuffix!1644 lt!1259691 lt!1259704))))

(declare-fun lt!1259705 () Int)

(declare-fun lt!1259699 () TokenValue!5958)

(assert (=> b!3639115 (= lt!1259690 (Some!8084 (tuple2!38221 (Token!10823 lt!1259699 (rule!8508 (_1!22244 lt!1259683)) lt!1259705 lt!1259704) (_2!22244 lt!1259683))))))

(declare-fun maxPrefixOneRule!1989 (LexerInterface!5317 Rule!11256 List!38475) Option!8085)

(assert (=> b!3639115 (= lt!1259690 (maxPrefixOneRule!1989 thiss!23823 (rule!8508 (_1!22244 lt!1259683)) lt!1259691))))

(declare-fun size!29271 (List!38475) Int)

(assert (=> b!3639115 (= lt!1259705 (size!29271 lt!1259704))))

(assert (=> b!3639115 (= lt!1259699 (apply!9230 (transformation!5728 (rule!8508 (_1!22244 lt!1259683))) (seqFromList!4277 lt!1259704)))))

(declare-fun lt!1259693 () Unit!55185)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1045 (LexerInterface!5317 List!38477 List!38475 List!38475 List!38475 Rule!11256) Unit!55185)

(assert (=> b!3639115 (= lt!1259693 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1045 thiss!23823 rules!3307 lt!1259704 lt!1259691 (_2!22244 lt!1259683) (rule!8508 (_1!22244 lt!1259683))))))

(declare-fun b!3639116 () Bool)

(assert (=> b!3639116 (= e!2252707 e!2252716)))

(declare-fun res!1474762 () Bool)

(assert (=> b!3639116 (=> res!1474762 e!2252716)))

(declare-fun lt!1259678 () List!38475)

(assert (=> b!3639116 (= res!1474762 (contains!7521 lt!1259678 lt!1259706))))

(declare-fun head!7724 (List!38475) C!21160)

(assert (=> b!3639116 (= lt!1259706 (head!7724 suffix!1395))))

(assert (=> b!3639116 (= lt!1259678 (usedCharacters!940 (regex!5728 rule!403)))))

(declare-fun e!2252714 () Bool)

(assert (=> b!3639117 (= e!2252714 (and tp!1110366 tp!1110359))))

(declare-fun b!3639118 () Bool)

(assert (=> b!3639118 (= e!2252721 (= (rule!8508 (_1!22244 lt!1259683)) lt!1259701))))

(declare-fun tp!1110365 () Bool)

(declare-fun b!3639119 () Bool)

(declare-fun inv!21 (TokenValue!5958) Bool)

(assert (=> b!3639119 (= e!2252706 (and (inv!21 (value!183708 token!511)) e!2252704 tp!1110365))))

(declare-fun b!3639120 () Bool)

(declare-fun e!2252722 () Bool)

(declare-fun tp!1110360 () Bool)

(assert (=> b!3639120 (= e!2252710 (and e!2252722 tp!1110360))))

(declare-fun b!3639121 () Bool)

(declare-fun res!1474770 () Bool)

(assert (=> b!3639121 (=> (not res!1474770) (not e!2252712))))

(assert (=> b!3639121 (= res!1474770 (not (= (isSeparator!5728 anOtherTypeRule!33) (isSeparator!5728 rule!403))))))

(declare-fun tp!1110358 () Bool)

(declare-fun b!3639122 () Bool)

(assert (=> b!3639122 (= e!2252713 (and tp!1110358 (inv!51781 (tag!6474 anOtherTypeRule!33)) (inv!51785 (transformation!5728 anOtherTypeRule!33)) e!2252720))))

(declare-fun b!3639123 () Bool)

(assert (=> b!3639123 (= e!2252723 e!2252715)))

(declare-fun res!1474750 () Bool)

(assert (=> b!3639123 (=> res!1474750 e!2252715)))

(assert (=> b!3639123 (= res!1474750 (or (not (isSeparator!5728 rule!403)) (isSeparator!5728 (rule!8508 (_1!22244 lt!1259683)))))))

(declare-fun lt!1259680 () Unit!55185)

(assert (=> b!3639123 (= lt!1259680 e!2252709)))

(declare-fun c!629269 () Bool)

(assert (=> b!3639123 (= c!629269 (not (contains!7521 lt!1259678 lt!1259684)))))

(assert (=> b!3639123 (= lt!1259684 (head!7724 lt!1259704))))

(declare-fun b!3639124 () Bool)

(declare-fun res!1474764 () Bool)

(assert (=> b!3639124 (=> res!1474764 e!2252716)))

(declare-fun sepAndNonSepRulesDisjointChars!1896 (List!38477 List!38477) Bool)

(assert (=> b!3639124 (= res!1474764 (not (sepAndNonSepRulesDisjointChars!1896 rules!3307 rules!3307)))))

(declare-fun b!3639125 () Bool)

(declare-fun tp!1110364 () Bool)

(assert (=> b!3639125 (= e!2252722 (and tp!1110364 (inv!51781 (tag!6474 (h!43773 rules!3307))) (inv!51785 (transformation!5728 (h!43773 rules!3307))) e!2252719))))

(declare-fun b!3639126 () Bool)

(declare-fun res!1474759 () Bool)

(assert (=> b!3639126 (=> res!1474759 e!2252728)))

(assert (=> b!3639126 (= res!1474759 (not (matchR!5056 (regex!5728 (rule!8508 (_1!22244 lt!1259683))) lt!1259704)))))

(declare-fun b!3639127 () Bool)

(declare-fun res!1474765 () Bool)

(assert (=> b!3639127 (=> (not res!1474765) (not e!2252712))))

(assert (=> b!3639127 (= res!1474765 (contains!7522 rules!3307 rule!403))))

(declare-fun b!3639128 () Bool)

(assert (=> b!3639128 (= e!2252718 (not e!2252707))))

(declare-fun res!1474763 () Bool)

(assert (=> b!3639128 (=> res!1474763 e!2252707)))

(assert (=> b!3639128 (= res!1474763 (not (matchR!5056 (regex!5728 rule!403) lt!1259689)))))

(declare-fun ruleValid!1992 (LexerInterface!5317 Rule!11256) Bool)

(assert (=> b!3639128 (ruleValid!1992 thiss!23823 rule!403)))

(declare-fun lt!1259700 () Unit!55185)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1146 (LexerInterface!5317 Rule!11256 List!38477) Unit!55185)

(assert (=> b!3639128 (= lt!1259700 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1146 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3639129 () Bool)

(declare-fun tp!1110361 () Bool)

(assert (=> b!3639129 (= e!2252711 (and tp!1110361 (inv!51781 (tag!6474 rule!403)) (inv!51785 (transformation!5728 rule!403)) e!2252714))))

(declare-fun b!3639130 () Bool)

(declare-fun res!1474761 () Bool)

(assert (=> b!3639130 (=> (not res!1474761) (not e!2252712))))

(declare-fun isEmpty!22705 (List!38477) Bool)

(assert (=> b!3639130 (= res!1474761 (not (isEmpty!22705 rules!3307)))))

(assert (= (and start!339758 res!1474766) b!3639130))

(assert (= (and b!3639130 res!1474761) b!3639098))

(assert (= (and b!3639098 res!1474751) b!3639127))

(assert (= (and b!3639127 res!1474765) b!3639114))

(assert (= (and b!3639114 res!1474768) b!3639121))

(assert (= (and b!3639121 res!1474770) b!3639105))

(assert (= (and b!3639105 res!1474767) b!3639106))

(assert (= (and b!3639106 res!1474753) b!3639101))

(assert (= (and b!3639101 res!1474769) b!3639112))

(assert (= (and b!3639112 res!1474752) b!3639128))

(assert (= (and b!3639128 (not res!1474763)) b!3639107))

(assert (= (and b!3639107 (not res!1474771)) b!3639116))

(assert (= (and b!3639116 (not res!1474762)) b!3639113))

(assert (= (and b!3639113 (not res!1474756)) b!3639124))

(assert (= (and b!3639124 (not res!1474764)) b!3639100))

(assert (= (and b!3639100 res!1474760) b!3639102))

(assert (= (and b!3639102 res!1474755) b!3639118))

(assert (= (and b!3639100 (not res!1474754)) b!3639126))

(assert (= (and b!3639126 (not res!1474759)) b!3639110))

(assert (= (and b!3639110 (not res!1474757)) b!3639115))

(assert (= (and b!3639115 (not res!1474758)) b!3639123))

(assert (= (and b!3639123 c!629269) b!3639096))

(assert (= (and b!3639123 (not c!629269)) b!3639111))

(assert (= (and b!3639123 (not res!1474750)) b!3639108))

(assert (= b!3639125 b!3639104))

(assert (= b!3639120 b!3639125))

(assert (= (and start!339758 ((_ is Cons!38353) rules!3307)) b!3639120))

(assert (= (and start!339758 ((_ is Cons!38351) suffix!1395)) b!3639103))

(assert (= b!3639109 b!3639099))

(assert (= b!3639119 b!3639109))

(assert (= start!339758 b!3639119))

(assert (= b!3639129 b!3639117))

(assert (= start!339758 b!3639129))

(assert (= b!3639122 b!3639097))

(assert (= start!339758 b!3639122))

(declare-fun m!4141817 () Bool)

(assert (=> b!3639125 m!4141817))

(declare-fun m!4141819 () Bool)

(assert (=> b!3639125 m!4141819))

(declare-fun m!4141821 () Bool)

(assert (=> b!3639100 m!4141821))

(declare-fun m!4141823 () Bool)

(assert (=> b!3639100 m!4141823))

(declare-fun m!4141825 () Bool)

(assert (=> b!3639100 m!4141825))

(declare-fun m!4141827 () Bool)

(assert (=> b!3639100 m!4141827))

(declare-fun m!4141829 () Bool)

(assert (=> b!3639100 m!4141829))

(declare-fun m!4141831 () Bool)

(assert (=> b!3639100 m!4141831))

(declare-fun m!4141833 () Bool)

(assert (=> b!3639100 m!4141833))

(declare-fun m!4141835 () Bool)

(assert (=> b!3639100 m!4141835))

(declare-fun m!4141837 () Bool)

(assert (=> b!3639100 m!4141837))

(declare-fun m!4141839 () Bool)

(assert (=> b!3639100 m!4141839))

(declare-fun m!4141841 () Bool)

(assert (=> b!3639100 m!4141841))

(declare-fun m!4141843 () Bool)

(assert (=> b!3639100 m!4141843))

(declare-fun m!4141845 () Bool)

(assert (=> b!3639100 m!4141845))

(assert (=> b!3639100 m!4141835))

(declare-fun m!4141847 () Bool)

(assert (=> b!3639100 m!4141847))

(declare-fun m!4141849 () Bool)

(assert (=> b!3639100 m!4141849))

(declare-fun m!4141851 () Bool)

(assert (=> b!3639127 m!4141851))

(declare-fun m!4141853 () Bool)

(assert (=> b!3639105 m!4141853))

(declare-fun m!4141855 () Bool)

(assert (=> b!3639105 m!4141855))

(declare-fun m!4141857 () Bool)

(assert (=> b!3639105 m!4141857))

(assert (=> b!3639105 m!4141857))

(declare-fun m!4141859 () Bool)

(assert (=> b!3639105 m!4141859))

(declare-fun m!4141861 () Bool)

(assert (=> b!3639107 m!4141861))

(declare-fun m!4141863 () Bool)

(assert (=> b!3639129 m!4141863))

(declare-fun m!4141865 () Bool)

(assert (=> b!3639129 m!4141865))

(declare-fun m!4141867 () Bool)

(assert (=> b!3639115 m!4141867))

(declare-fun m!4141869 () Bool)

(assert (=> b!3639115 m!4141869))

(assert (=> b!3639115 m!4141869))

(declare-fun m!4141871 () Bool)

(assert (=> b!3639115 m!4141871))

(declare-fun m!4141873 () Bool)

(assert (=> b!3639115 m!4141873))

(declare-fun m!4141875 () Bool)

(assert (=> b!3639115 m!4141875))

(declare-fun m!4141877 () Bool)

(assert (=> b!3639115 m!4141877))

(declare-fun m!4141879 () Bool)

(assert (=> b!3639115 m!4141879))

(declare-fun m!4141881 () Bool)

(assert (=> b!3639101 m!4141881))

(declare-fun m!4141883 () Bool)

(assert (=> b!3639128 m!4141883))

(declare-fun m!4141885 () Bool)

(assert (=> b!3639128 m!4141885))

(declare-fun m!4141887 () Bool)

(assert (=> b!3639128 m!4141887))

(declare-fun m!4141889 () Bool)

(assert (=> b!3639109 m!4141889))

(declare-fun m!4141891 () Bool)

(assert (=> b!3639109 m!4141891))

(declare-fun m!4141893 () Bool)

(assert (=> b!3639096 m!4141893))

(declare-fun m!4141895 () Bool)

(assert (=> b!3639116 m!4141895))

(declare-fun m!4141897 () Bool)

(assert (=> b!3639116 m!4141897))

(declare-fun m!4141899 () Bool)

(assert (=> b!3639116 m!4141899))

(declare-fun m!4141901 () Bool)

(assert (=> b!3639124 m!4141901))

(declare-fun m!4141903 () Bool)

(assert (=> b!3639098 m!4141903))

(declare-fun m!4141905 () Bool)

(assert (=> start!339758 m!4141905))

(declare-fun m!4141907 () Bool)

(assert (=> b!3639126 m!4141907))

(declare-fun m!4141909 () Bool)

(assert (=> b!3639113 m!4141909))

(assert (=> b!3639113 m!4141909))

(declare-fun m!4141911 () Bool)

(assert (=> b!3639113 m!4141911))

(declare-fun m!4141913 () Bool)

(assert (=> b!3639123 m!4141913))

(declare-fun m!4141915 () Bool)

(assert (=> b!3639123 m!4141915))

(declare-fun m!4141917 () Bool)

(assert (=> b!3639106 m!4141917))

(declare-fun m!4141919 () Bool)

(assert (=> b!3639110 m!4141919))

(declare-fun m!4141921 () Bool)

(assert (=> b!3639110 m!4141921))

(declare-fun m!4141923 () Bool)

(assert (=> b!3639110 m!4141923))

(declare-fun m!4141925 () Bool)

(assert (=> b!3639110 m!4141925))

(assert (=> b!3639110 m!4141923))

(declare-fun m!4141927 () Bool)

(assert (=> b!3639110 m!4141927))

(declare-fun m!4141929 () Bool)

(assert (=> b!3639110 m!4141929))

(declare-fun m!4141931 () Bool)

(assert (=> b!3639114 m!4141931))

(assert (=> b!3639102 m!4141845))

(assert (=> b!3639102 m!4141845))

(declare-fun m!4141933 () Bool)

(assert (=> b!3639102 m!4141933))

(assert (=> b!3639102 m!4141933))

(declare-fun m!4141935 () Bool)

(assert (=> b!3639102 m!4141935))

(declare-fun m!4141937 () Bool)

(assert (=> b!3639102 m!4141937))

(declare-fun m!4141939 () Bool)

(assert (=> b!3639122 m!4141939))

(declare-fun m!4141941 () Bool)

(assert (=> b!3639122 m!4141941))

(declare-fun m!4141943 () Bool)

(assert (=> b!3639108 m!4141943))

(declare-fun m!4141945 () Bool)

(assert (=> b!3639119 m!4141945))

(declare-fun m!4141947 () Bool)

(assert (=> b!3639130 m!4141947))

(check-sat (not b!3639130) (not b!3639109) (not b!3639116) (not b_next!96073) (not start!339758) (not b_next!96069) (not b!3639108) (not b!3639123) b_and!268055 (not b!3639103) (not b!3639120) (not b!3639098) (not b!3639126) (not b_next!96071) (not b_next!96065) (not b!3639110) (not b!3639129) tp_is_empty!18057 (not b!3639101) (not b!3639102) b_and!268057 (not b!3639113) b_and!268051 (not b!3639128) (not b_next!96079) b_and!268045 (not b!3639125) b_and!268043 (not b!3639124) (not b!3639096) (not b!3639115) b_and!268049 (not b!3639114) b_and!268053 (not b!3639119) (not b!3639127) b_and!268047 (not b!3639100) (not b_next!96075) (not b!3639105) (not b_next!96067) (not b_next!96077) (not b!3639107) (not b!3639106) (not b!3639122))
(check-sat (not b_next!96073) b_and!268057 b_and!268051 (not b_next!96079) (not b_next!96069) b_and!268045 b_and!268043 b_and!268049 b_and!268053 b_and!268055 b_and!268047 (not b_next!96075) (not b_next!96071) (not b_next!96065) (not b_next!96067) (not b_next!96077))
