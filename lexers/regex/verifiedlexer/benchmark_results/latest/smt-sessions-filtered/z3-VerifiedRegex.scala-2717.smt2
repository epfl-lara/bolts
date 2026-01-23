; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146158 () Bool)

(assert start!146158)

(declare-fun res!699138 () Bool)

(declare-fun e!1007572 () Bool)

(assert (=> start!146158 (=> (not res!699138) (not e!1007572))))

(declare-datatypes ((List!17153 0))(
  ( (Nil!17083) (Cons!17083 (h!22484 (_ BitVec 16)) (t!142450 List!17153)) )
))
(declare-datatypes ((TokenValue!3085 0))(
  ( (FloatLiteralValue!6170 (text!22040 List!17153)) (TokenValueExt!3084 (__x!11472 Int)) (Broken!15425 (value!95004 List!17153)) (Object!3154) (End!3085) (Def!3085) (Underscore!3085) (Match!3085) (Else!3085) (Error!3085) (Case!3085) (If!3085) (Extends!3085) (Abstract!3085) (Class!3085) (Val!3085) (DelimiterValue!6170 (del!3145 List!17153)) (KeywordValue!3091 (value!95005 List!17153)) (CommentValue!6170 (value!95006 List!17153)) (WhitespaceValue!6170 (value!95007 List!17153)) (IndentationValue!3085 (value!95008 List!17153)) (String!19756) (Int32!3085) (Broken!15426 (value!95009 List!17153)) (Boolean!3086) (Unit!26312) (OperatorValue!3088 (op!3145 List!17153)) (IdentifierValue!6170 (value!95010 List!17153)) (IdentifierValue!6171 (value!95011 List!17153)) (WhitespaceValue!6171 (value!95012 List!17153)) (True!6170) (False!6170) (Broken!15427 (value!95013 List!17153)) (Broken!15428 (value!95014 List!17153)) (True!6171) (RightBrace!3085) (RightBracket!3085) (Colon!3085) (Null!3085) (Comma!3085) (LeftBracket!3085) (False!6171) (LeftBrace!3085) (ImaginaryLiteralValue!3085 (text!22041 List!17153)) (StringLiteralValue!9255 (value!95015 List!17153)) (EOFValue!3085 (value!95016 List!17153)) (IdentValue!3085 (value!95017 List!17153)) (DelimiterValue!6171 (value!95018 List!17153)) (DedentValue!3085 (value!95019 List!17153)) (NewLineValue!3085 (value!95020 List!17153)) (IntegerValue!9255 (value!95021 (_ BitVec 32)) (text!22042 List!17153)) (IntegerValue!9256 (value!95022 Int) (text!22043 List!17153)) (Times!3085) (Or!3085) (Equal!3085) (Minus!3085) (Broken!15429 (value!95023 List!17153)) (And!3085) (Div!3085) (LessEqual!3085) (Mod!3085) (Concat!7408) (Not!3085) (Plus!3085) (SpaceValue!3085 (value!95024 List!17153)) (IntegerValue!9257 (value!95025 Int) (text!22044 List!17153)) (StringLiteralValue!9256 (text!22045 List!17153)) (FloatLiteralValue!6171 (text!22046 List!17153)) (BytesLiteralValue!3085 (value!95026 List!17153)) (CommentValue!6171 (value!95027 List!17153)) (StringLiteralValue!9257 (value!95028 List!17153)) (ErrorTokenValue!3085 (msg!3146 List!17153)) )
))
(declare-datatypes ((C!8820 0))(
  ( (C!8821 (val!5006 Int)) )
))
(declare-datatypes ((List!17154 0))(
  ( (Nil!17084) (Cons!17084 (h!22485 C!8820) (t!142451 List!17154)) )
))
(declare-datatypes ((IArray!11281 0))(
  ( (IArray!11282 (innerList!5698 List!17154)) )
))
(declare-datatypes ((Conc!5638 0))(
  ( (Node!5638 (left!13837 Conc!5638) (right!14167 Conc!5638) (csize!11506 Int) (cheight!5849 Int)) (Leaf!8356 (xs!8442 IArray!11281) (csize!11507 Int)) (Empty!5638) )
))
(declare-datatypes ((BalanceConc!11220 0))(
  ( (BalanceConc!11221 (c!254245 Conc!5638)) )
))
(declare-datatypes ((String!19757 0))(
  ( (String!19758 (value!95029 String)) )
))
(declare-datatypes ((Regex!4323 0))(
  ( (ElementMatch!4323 (c!254246 C!8820)) (Concat!7409 (regOne!9158 Regex!4323) (regTwo!9158 Regex!4323)) (EmptyExpr!4323) (Star!4323 (reg!4652 Regex!4323)) (EmptyLang!4323) (Union!4323 (regOne!9159 Regex!4323) (regTwo!9159 Regex!4323)) )
))
(declare-datatypes ((TokenValueInjection!5830 0))(
  ( (TokenValueInjection!5831 (toValue!4386 Int) (toChars!4245 Int)) )
))
(declare-datatypes ((Rule!5790 0))(
  ( (Rule!5791 (regex!2995 Regex!4323) (tag!3259 String!19757) (isSeparator!2995 Bool) (transformation!2995 TokenValueInjection!5830)) )
))
(declare-datatypes ((Token!5556 0))(
  ( (Token!5557 (value!95030 TokenValue!3085) (rule!4781 Rule!5790) (size!13830 Int) (originalCharacters!3809 List!17154)) )
))
(declare-datatypes ((List!17155 0))(
  ( (Nil!17085) (Cons!17085 (h!22486 Token!5556) (t!142452 List!17155)) )
))
(declare-datatypes ((IArray!11283 0))(
  ( (IArray!11284 (innerList!5699 List!17155)) )
))
(declare-datatypes ((Conc!5639 0))(
  ( (Node!5639 (left!13838 Conc!5639) (right!14168 Conc!5639) (csize!11508 Int) (cheight!5850 Int)) (Leaf!8357 (xs!8443 IArray!11283) (csize!11509 Int)) (Empty!5639) )
))
(declare-datatypes ((BalanceConc!11222 0))(
  ( (BalanceConc!11223 (c!254247 Conc!5639)) )
))
(declare-datatypes ((List!17156 0))(
  ( (Nil!17086) (Cons!17086 (h!22487 Rule!5790) (t!142453 List!17156)) )
))
(declare-datatypes ((PrintableTokens!1208 0))(
  ( (PrintableTokens!1209 (rules!12130 List!17156) (tokens!2222 BalanceConc!11222)) )
))
(declare-fun thiss!10002 () PrintableTokens!1208)

(declare-fun lt!543632 () List!17155)

(declare-fun list!6575 (BalanceConc!11222) List!17155)

(declare-datatypes ((tuple2!16626 0))(
  ( (tuple2!16627 (_1!9715 BalanceConc!11222) (_2!9715 BalanceConc!11220)) )
))
(declare-datatypes ((LexerInterface!2624 0))(
  ( (LexerInterfaceExt!2621 (__x!11473 Int)) (Lexer!2622) )
))
(declare-fun lex!1122 (LexerInterface!2624 List!17156 BalanceConc!11220) tuple2!16626)

(declare-fun print!1161 (LexerInterface!2624 BalanceConc!11222) BalanceConc!11220)

(assert (=> start!146158 (= res!699138 (= (list!6575 (_1!9715 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (tokens!2222 thiss!10002))))) lt!543632))))

(declare-datatypes ((Unit!26313 0))(
  ( (Unit!26314) )
))
(declare-fun lt!543631 () Unit!26313)

(declare-fun theoremInvertabilityWhenTokenListSeparable!93 (LexerInterface!2624 List!17156 List!17155) Unit!26313)

(assert (=> start!146158 (= lt!543631 (theoremInvertabilityWhenTokenListSeparable!93 Lexer!2622 (rules!12130 thiss!10002) lt!543632))))

(assert (=> start!146158 (= lt!543632 (list!6575 (tokens!2222 thiss!10002)))))

(assert (=> start!146158 e!1007572))

(declare-fun e!1007570 () Bool)

(declare-fun inv!22476 (PrintableTokens!1208) Bool)

(assert (=> start!146158 (and (inv!22476 thiss!10002) e!1007570)))

(declare-fun b!1568836 () Bool)

(declare-fun isEmpty!10220 (List!17156) Bool)

(assert (=> b!1568836 (= e!1007572 (isEmpty!10220 (rules!12130 thiss!10002)))))

(declare-fun b!1568838 () Bool)

(declare-fun e!1007571 () Bool)

(declare-fun tp!462060 () Bool)

(declare-fun inv!22477 (Conc!5639) Bool)

(assert (=> b!1568838 (= e!1007571 (and (inv!22477 (c!254247 (tokens!2222 thiss!10002))) tp!462060))))

(declare-fun b!1568837 () Bool)

(declare-fun tp!462059 () Bool)

(declare-fun inv!22478 (BalanceConc!11222) Bool)

(assert (=> b!1568837 (= e!1007570 (and tp!462059 (inv!22478 (tokens!2222 thiss!10002)) e!1007571))))

(assert (= (and start!146158 res!699138) b!1568836))

(assert (= b!1568837 b!1568838))

(assert (= start!146158 b!1568837))

(declare-fun m!1842855 () Bool)

(assert (=> start!146158 m!1842855))

(declare-fun m!1842857 () Bool)

(assert (=> start!146158 m!1842857))

(declare-fun m!1842859 () Bool)

(assert (=> start!146158 m!1842859))

(declare-fun m!1842861 () Bool)

(assert (=> start!146158 m!1842861))

(declare-fun m!1842863 () Bool)

(assert (=> start!146158 m!1842863))

(assert (=> start!146158 m!1842857))

(declare-fun m!1842865 () Bool)

(assert (=> start!146158 m!1842865))

(declare-fun m!1842867 () Bool)

(assert (=> b!1568836 m!1842867))

(declare-fun m!1842869 () Bool)

(assert (=> b!1568838 m!1842869))

(declare-fun m!1842871 () Bool)

(assert (=> b!1568837 m!1842871))

(check-sat (not b!1568837) (not b!1568838) (not start!146158) (not b!1568836))
(check-sat)
(get-model)

(declare-fun d!465398 () Bool)

(declare-fun isBalanced!1670 (Conc!5639) Bool)

(assert (=> d!465398 (= (inv!22478 (tokens!2222 thiss!10002)) (isBalanced!1670 (c!254247 (tokens!2222 thiss!10002))))))

(declare-fun bs!389993 () Bool)

(assert (= bs!389993 d!465398))

(declare-fun m!1842879 () Bool)

(assert (=> bs!389993 m!1842879))

(assert (=> b!1568837 d!465398))

(declare-fun d!465400 () Bool)

(declare-fun c!254253 () Bool)

(get-info :version)

(assert (=> d!465400 (= c!254253 ((_ is Node!5639) (c!254247 (tokens!2222 thiss!10002))))))

(declare-fun e!1007583 () Bool)

(assert (=> d!465400 (= (inv!22477 (c!254247 (tokens!2222 thiss!10002))) e!1007583)))

(declare-fun b!1568854 () Bool)

(declare-fun inv!22481 (Conc!5639) Bool)

(assert (=> b!1568854 (= e!1007583 (inv!22481 (c!254247 (tokens!2222 thiss!10002))))))

(declare-fun b!1568855 () Bool)

(declare-fun e!1007584 () Bool)

(assert (=> b!1568855 (= e!1007583 e!1007584)))

(declare-fun res!699144 () Bool)

(assert (=> b!1568855 (= res!699144 (not ((_ is Leaf!8357) (c!254247 (tokens!2222 thiss!10002)))))))

(assert (=> b!1568855 (=> res!699144 e!1007584)))

(declare-fun b!1568856 () Bool)

(declare-fun inv!22482 (Conc!5639) Bool)

(assert (=> b!1568856 (= e!1007584 (inv!22482 (c!254247 (tokens!2222 thiss!10002))))))

(assert (= (and d!465400 c!254253) b!1568854))

(assert (= (and d!465400 (not c!254253)) b!1568855))

(assert (= (and b!1568855 (not res!699144)) b!1568856))

(declare-fun m!1842881 () Bool)

(assert (=> b!1568854 m!1842881))

(declare-fun m!1842883 () Bool)

(assert (=> b!1568856 m!1842883))

(assert (=> b!1568838 d!465400))

(declare-fun d!465402 () Bool)

(declare-fun lt!543638 () BalanceConc!11220)

(declare-fun list!6577 (BalanceConc!11220) List!17154)

(declare-fun printList!777 (LexerInterface!2624 List!17155) List!17154)

(assert (=> d!465402 (= (list!6577 lt!543638) (printList!777 Lexer!2622 (list!6575 (tokens!2222 thiss!10002))))))

(declare-fun printTailRec!713 (LexerInterface!2624 BalanceConc!11222 Int BalanceConc!11220) BalanceConc!11220)

(assert (=> d!465402 (= lt!543638 (printTailRec!713 Lexer!2622 (tokens!2222 thiss!10002) 0 (BalanceConc!11221 Empty!5638)))))

(assert (=> d!465402 (= (print!1161 Lexer!2622 (tokens!2222 thiss!10002)) lt!543638)))

(declare-fun bs!389995 () Bool)

(assert (= bs!389995 d!465402))

(declare-fun m!1842891 () Bool)

(assert (=> bs!389995 m!1842891))

(assert (=> bs!389995 m!1842855))

(assert (=> bs!389995 m!1842855))

(declare-fun m!1842893 () Bool)

(assert (=> bs!389995 m!1842893))

(declare-fun m!1842895 () Bool)

(assert (=> bs!389995 m!1842895))

(assert (=> start!146158 d!465402))

(declare-fun d!465406 () Bool)

(declare-fun e!1007595 () Bool)

(assert (=> d!465406 e!1007595))

(declare-fun res!699150 () Bool)

(assert (=> d!465406 (=> (not res!699150) (not e!1007595))))

(declare-fun seqFromList!1791 (List!17155) BalanceConc!11222)

(assert (=> d!465406 (= res!699150 (= (list!6575 (_1!9715 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (seqFromList!1791 lt!543632))))) lt!543632))))

(declare-fun lt!543769 () Unit!26313)

(declare-fun e!1007596 () Unit!26313)

(assert (=> d!465406 (= lt!543769 e!1007596)))

(declare-fun c!254259 () Bool)

(assert (=> d!465406 (= c!254259 (or ((_ is Nil!17085) lt!543632) ((_ is Nil!17085) (t!142452 lt!543632))))))

(assert (=> d!465406 (not (isEmpty!10220 (rules!12130 thiss!10002)))))

(assert (=> d!465406 (= (theoremInvertabilityWhenTokenListSeparable!93 Lexer!2622 (rules!12130 thiss!10002) lt!543632) lt!543769)))

(declare-fun b!1568872 () Bool)

(declare-fun Unit!26317 () Unit!26313)

(assert (=> b!1568872 (= e!1007596 Unit!26317)))

(declare-fun b!1568873 () Bool)

(declare-fun Unit!26318 () Unit!26313)

(assert (=> b!1568873 (= e!1007596 Unit!26318)))

(declare-fun lt!543787 () BalanceConc!11220)

(assert (=> b!1568873 (= lt!543787 (print!1161 Lexer!2622 (seqFromList!1791 lt!543632)))))

(declare-fun lt!543781 () BalanceConc!11220)

(assert (=> b!1568873 (= lt!543781 (print!1161 Lexer!2622 (seqFromList!1791 (t!142452 lt!543632))))))

(declare-fun lt!543786 () tuple2!16626)

(assert (=> b!1568873 (= lt!543786 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) lt!543781))))

(declare-fun lt!543776 () List!17154)

(declare-fun charsOf!1662 (Token!5556) BalanceConc!11220)

(assert (=> b!1568873 (= lt!543776 (list!6577 (charsOf!1662 (h!22486 lt!543632))))))

(declare-fun lt!543774 () List!17154)

(assert (=> b!1568873 (= lt!543774 (list!6577 lt!543781))))

(declare-fun lt!543773 () Unit!26313)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!798 (List!17154 List!17154) Unit!26313)

(assert (=> b!1568873 (= lt!543773 (lemmaConcatTwoListThenFirstIsPrefix!798 lt!543776 lt!543774))))

(declare-fun isPrefix!1273 (List!17154 List!17154) Bool)

(declare-fun ++!4441 (List!17154 List!17154) List!17154)

(assert (=> b!1568873 (isPrefix!1273 lt!543776 (++!4441 lt!543776 lt!543774))))

(declare-fun lt!543771 () Unit!26313)

(assert (=> b!1568873 (= lt!543771 lt!543773)))

(declare-fun lt!543777 () Unit!26313)

(assert (=> b!1568873 (= lt!543777 (theoremInvertabilityWhenTokenListSeparable!93 Lexer!2622 (rules!12130 thiss!10002) (t!142452 lt!543632)))))

(declare-fun lt!543793 () Unit!26313)

(declare-fun seqFromListBHdTlConstructive!102 (Token!5556 List!17155 BalanceConc!11222) Unit!26313)

(assert (=> b!1568873 (= lt!543793 (seqFromListBHdTlConstructive!102 (h!22486 (t!142452 lt!543632)) (t!142452 (t!142452 lt!543632)) (_1!9715 lt!543786)))))

(declare-fun prepend!489 (BalanceConc!11222 Token!5556) BalanceConc!11222)

(assert (=> b!1568873 (= (list!6575 (_1!9715 lt!543786)) (list!6575 (prepend!489 (seqFromList!1791 (t!142452 (t!142452 lt!543632))) (h!22486 (t!142452 lt!543632)))))))

(declare-fun lt!543778 () Unit!26313)

(assert (=> b!1568873 (= lt!543778 lt!543793)))

(declare-datatypes ((tuple2!16628 0))(
  ( (tuple2!16629 (_1!9716 Token!5556) (_2!9716 List!17154)) )
))
(declare-datatypes ((Option!3072 0))(
  ( (None!3071) (Some!3071 (v!23858 tuple2!16628)) )
))
(declare-fun lt!543779 () Option!3072)

(declare-fun maxPrefix!1226 (LexerInterface!2624 List!17156 List!17154) Option!3072)

(assert (=> b!1568873 (= lt!543779 (maxPrefix!1226 Lexer!2622 (rules!12130 thiss!10002) (list!6577 lt!543787)))))

(declare-fun singletonSeq!1356 (Token!5556) BalanceConc!11222)

(assert (=> b!1568873 (= (print!1161 Lexer!2622 (singletonSeq!1356 (h!22486 lt!543632))) (printTailRec!713 Lexer!2622 (singletonSeq!1356 (h!22486 lt!543632)) 0 (BalanceConc!11221 Empty!5638)))))

(declare-fun lt!543788 () Unit!26313)

(declare-fun Unit!26319 () Unit!26313)

(assert (=> b!1568873 (= lt!543788 Unit!26319)))

(declare-fun lt!543785 () Unit!26313)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!246 (LexerInterface!2624 List!17156 List!17154 List!17154) Unit!26313)

(assert (=> b!1568873 (= lt!543785 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!246 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (charsOf!1662 (h!22486 lt!543632))) (list!6577 lt!543781)))))

(assert (=> b!1568873 (= (list!6577 (charsOf!1662 (h!22486 lt!543632))) (originalCharacters!3809 (h!22486 lt!543632)))))

(declare-fun lt!543784 () Unit!26313)

(declare-fun Unit!26320 () Unit!26313)

(assert (=> b!1568873 (= lt!543784 Unit!26320)))

(declare-fun singletonSeq!1357 (C!8820) BalanceConc!11220)

(declare-fun apply!4148 (BalanceConc!11220 Int) C!8820)

(declare-fun head!3136 (List!17154) C!8820)

(assert (=> b!1568873 (= (list!6577 (singletonSeq!1357 (apply!4148 (charsOf!1662 (h!22486 (t!142452 lt!543632))) 0))) (Cons!17084 (head!3136 (originalCharacters!3809 (h!22486 (t!142452 lt!543632)))) Nil!17084))))

(declare-fun lt!543789 () Unit!26313)

(declare-fun Unit!26321 () Unit!26313)

(assert (=> b!1568873 (= lt!543789 Unit!26321)))

(assert (=> b!1568873 (= (list!6577 (singletonSeq!1357 (apply!4148 (charsOf!1662 (h!22486 (t!142452 lt!543632))) 0))) (Cons!17084 (head!3136 (list!6577 lt!543781)) Nil!17084))))

(declare-fun lt!543792 () Unit!26313)

(declare-fun Unit!26322 () Unit!26313)

(assert (=> b!1568873 (= lt!543792 Unit!26322)))

(declare-fun head!3137 (BalanceConc!11220) C!8820)

(assert (=> b!1568873 (= (list!6577 (singletonSeq!1357 (apply!4148 (charsOf!1662 (h!22486 (t!142452 lt!543632))) 0))) (Cons!17084 (head!3137 lt!543781) Nil!17084))))

(declare-fun lt!543791 () Unit!26313)

(declare-fun Unit!26324 () Unit!26313)

(assert (=> b!1568873 (= lt!543791 Unit!26324)))

(declare-fun isDefined!2467 (Option!3072) Bool)

(assert (=> b!1568873 (isDefined!2467 (maxPrefix!1226 Lexer!2622 (rules!12130 thiss!10002) (originalCharacters!3809 (h!22486 lt!543632))))))

(declare-fun lt!543770 () Unit!26313)

(declare-fun Unit!26325 () Unit!26313)

(assert (=> b!1568873 (= lt!543770 Unit!26325)))

(assert (=> b!1568873 (isDefined!2467 (maxPrefix!1226 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (charsOf!1662 (h!22486 lt!543632)))))))

(declare-fun lt!543782 () Unit!26313)

(declare-fun Unit!26326 () Unit!26313)

(assert (=> b!1568873 (= lt!543782 Unit!26326)))

(declare-fun lt!543783 () Unit!26313)

(declare-fun Unit!26328 () Unit!26313)

(assert (=> b!1568873 (= lt!543783 Unit!26328)))

(declare-fun get!4903 (Option!3072) tuple2!16628)

(assert (=> b!1568873 (= (_1!9716 (get!4903 (maxPrefix!1226 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (charsOf!1662 (h!22486 lt!543632)))))) (h!22486 lt!543632))))

(declare-fun lt!543790 () Unit!26313)

(declare-fun Unit!26329 () Unit!26313)

(assert (=> b!1568873 (= lt!543790 Unit!26329)))

(declare-fun isEmpty!10221 (List!17154) Bool)

(assert (=> b!1568873 (isEmpty!10221 (_2!9716 (get!4903 (maxPrefix!1226 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (charsOf!1662 (h!22486 lt!543632)))))))))

(declare-fun lt!543794 () Unit!26313)

(declare-fun Unit!26330 () Unit!26313)

(assert (=> b!1568873 (= lt!543794 Unit!26330)))

(declare-fun matchR!1894 (Regex!4323 List!17154) Bool)

(assert (=> b!1568873 (matchR!1894 (regex!2995 (rule!4781 (h!22486 lt!543632))) (list!6577 (charsOf!1662 (h!22486 lt!543632))))))

(declare-fun lt!543772 () Unit!26313)

(declare-fun Unit!26332 () Unit!26313)

(assert (=> b!1568873 (= lt!543772 Unit!26332)))

(assert (=> b!1568873 (= (rule!4781 (h!22486 lt!543632)) (rule!4781 (h!22486 lt!543632)))))

(declare-fun lt!543780 () Unit!26313)

(declare-fun Unit!26334 () Unit!26313)

(assert (=> b!1568873 (= lt!543780 Unit!26334)))

(declare-fun lt!543775 () Unit!26313)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!44 (LexerInterface!2624 List!17156 Token!5556 Rule!5790 List!17154) Unit!26313)

(assert (=> b!1568873 (= lt!543775 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!44 Lexer!2622 (rules!12130 thiss!10002) (h!22486 lt!543632) (rule!4781 (h!22486 lt!543632)) (list!6577 lt!543781)))))

(declare-fun b!1568874 () Bool)

(declare-fun isEmpty!10222 (BalanceConc!11220) Bool)

(assert (=> b!1568874 (= e!1007595 (isEmpty!10222 (_2!9715 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (seqFromList!1791 lt!543632))))))))

(assert (= (and d!465406 c!254259) b!1568872))

(assert (= (and d!465406 (not c!254259)) b!1568873))

(assert (= (and d!465406 res!699150) b!1568874))

(assert (=> d!465406 m!1842867))

(declare-fun m!1842983 () Bool)

(assert (=> d!465406 m!1842983))

(declare-fun m!1842985 () Bool)

(assert (=> d!465406 m!1842985))

(declare-fun m!1842987 () Bool)

(assert (=> d!465406 m!1842987))

(assert (=> d!465406 m!1842983))

(declare-fun m!1842989 () Bool)

(assert (=> d!465406 m!1842989))

(assert (=> d!465406 m!1842987))

(declare-fun m!1842991 () Bool)

(assert (=> b!1568873 m!1842991))

(declare-fun m!1842993 () Bool)

(assert (=> b!1568873 m!1842993))

(declare-fun m!1842995 () Bool)

(assert (=> b!1568873 m!1842995))

(declare-fun m!1842997 () Bool)

(assert (=> b!1568873 m!1842997))

(declare-fun m!1842999 () Bool)

(assert (=> b!1568873 m!1842999))

(declare-fun m!1843001 () Bool)

(assert (=> b!1568873 m!1843001))

(declare-fun m!1843003 () Bool)

(assert (=> b!1568873 m!1843003))

(declare-fun m!1843005 () Bool)

(assert (=> b!1568873 m!1843005))

(declare-fun m!1843007 () Bool)

(assert (=> b!1568873 m!1843007))

(declare-fun m!1843009 () Bool)

(assert (=> b!1568873 m!1843009))

(declare-fun m!1843011 () Bool)

(assert (=> b!1568873 m!1843011))

(declare-fun m!1843013 () Bool)

(assert (=> b!1568873 m!1843013))

(declare-fun m!1843015 () Bool)

(assert (=> b!1568873 m!1843015))

(assert (=> b!1568873 m!1843009))

(declare-fun m!1843017 () Bool)

(assert (=> b!1568873 m!1843017))

(declare-fun m!1843019 () Bool)

(assert (=> b!1568873 m!1843019))

(declare-fun m!1843021 () Bool)

(assert (=> b!1568873 m!1843021))

(assert (=> b!1568873 m!1843005))

(assert (=> b!1568873 m!1843007))

(declare-fun m!1843023 () Bool)

(assert (=> b!1568873 m!1843023))

(assert (=> b!1568873 m!1842991))

(declare-fun m!1843025 () Bool)

(assert (=> b!1568873 m!1843025))

(declare-fun m!1843027 () Bool)

(assert (=> b!1568873 m!1843027))

(declare-fun m!1843029 () Bool)

(assert (=> b!1568873 m!1843029))

(declare-fun m!1843031 () Bool)

(assert (=> b!1568873 m!1843031))

(declare-fun m!1843033 () Bool)

(assert (=> b!1568873 m!1843033))

(assert (=> b!1568873 m!1843011))

(declare-fun m!1843035 () Bool)

(assert (=> b!1568873 m!1843035))

(declare-fun m!1843037 () Bool)

(assert (=> b!1568873 m!1843037))

(assert (=> b!1568873 m!1843019))

(declare-fun m!1843039 () Bool)

(assert (=> b!1568873 m!1843039))

(assert (=> b!1568873 m!1843009))

(assert (=> b!1568873 m!1843019))

(declare-fun m!1843041 () Bool)

(assert (=> b!1568873 m!1843041))

(assert (=> b!1568873 m!1843011))

(declare-fun m!1843043 () Bool)

(assert (=> b!1568873 m!1843043))

(declare-fun m!1843045 () Bool)

(assert (=> b!1568873 m!1843045))

(declare-fun m!1843047 () Bool)

(assert (=> b!1568873 m!1843047))

(assert (=> b!1568873 m!1842987))

(assert (=> b!1568873 m!1842983))

(assert (=> b!1568873 m!1842997))

(declare-fun m!1843049 () Bool)

(assert (=> b!1568873 m!1843049))

(declare-fun m!1843051 () Bool)

(assert (=> b!1568873 m!1843051))

(assert (=> b!1568873 m!1842995))

(declare-fun m!1843053 () Bool)

(assert (=> b!1568873 m!1843053))

(declare-fun m!1843055 () Bool)

(assert (=> b!1568873 m!1843055))

(assert (=> b!1568873 m!1843027))

(assert (=> b!1568873 m!1843049))

(assert (=> b!1568873 m!1843011))

(assert (=> b!1568873 m!1843025))

(declare-fun m!1843057 () Bool)

(assert (=> b!1568873 m!1843057))

(assert (=> b!1568873 m!1843055))

(assert (=> b!1568873 m!1843009))

(assert (=> b!1568873 m!1843001))

(assert (=> b!1568873 m!1843029))

(assert (=> b!1568873 m!1842997))

(declare-fun m!1843059 () Bool)

(assert (=> b!1568873 m!1843059))

(assert (=> b!1568873 m!1842987))

(declare-fun m!1843061 () Bool)

(assert (=> b!1568873 m!1843061))

(assert (=> b!1568874 m!1842987))

(assert (=> b!1568874 m!1842987))

(assert (=> b!1568874 m!1842983))

(assert (=> b!1568874 m!1842983))

(assert (=> b!1568874 m!1842985))

(declare-fun m!1843063 () Bool)

(assert (=> b!1568874 m!1843063))

(assert (=> start!146158 d!465406))

(declare-fun d!465414 () Bool)

(declare-fun list!6578 (Conc!5639) List!17155)

(assert (=> d!465414 (= (list!6575 (tokens!2222 thiss!10002)) (list!6578 (c!254247 (tokens!2222 thiss!10002))))))

(declare-fun bs!389998 () Bool)

(assert (= bs!389998 d!465414))

(declare-fun m!1843065 () Bool)

(assert (=> bs!389998 m!1843065))

(assert (=> start!146158 d!465414))

(declare-fun d!465416 () Bool)

(assert (=> d!465416 (= (list!6575 (_1!9715 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (tokens!2222 thiss!10002))))) (list!6578 (c!254247 (_1!9715 (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (tokens!2222 thiss!10002)))))))))

(declare-fun bs!389999 () Bool)

(assert (= bs!389999 d!465416))

(declare-fun m!1843067 () Bool)

(assert (=> bs!389999 m!1843067))

(assert (=> start!146158 d!465416))

(declare-fun b!1568900 () Bool)

(declare-fun res!699166 () Bool)

(declare-fun e!1007613 () Bool)

(assert (=> b!1568900 (=> (not res!699166) (not e!1007613))))

(declare-fun lt!543800 () tuple2!16626)

(declare-datatypes ((tuple2!16632 0))(
  ( (tuple2!16633 (_1!9718 List!17155) (_2!9718 List!17154)) )
))
(declare-fun lexList!759 (LexerInterface!2624 List!17156 List!17154) tuple2!16632)

(assert (=> b!1568900 (= res!699166 (= (list!6575 (_1!9715 lt!543800)) (_1!9718 (lexList!759 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (print!1161 Lexer!2622 (tokens!2222 thiss!10002)))))))))

(declare-fun d!465418 () Bool)

(assert (=> d!465418 e!1007613))

(declare-fun res!699167 () Bool)

(assert (=> d!465418 (=> (not res!699167) (not e!1007613))))

(declare-fun e!1007614 () Bool)

(assert (=> d!465418 (= res!699167 e!1007614)))

(declare-fun c!254265 () Bool)

(declare-fun size!13831 (BalanceConc!11222) Int)

(assert (=> d!465418 (= c!254265 (> (size!13831 (_1!9715 lt!543800)) 0))))

(declare-fun lexTailRecV2!482 (LexerInterface!2624 List!17156 BalanceConc!11220 BalanceConc!11220 BalanceConc!11220 BalanceConc!11222) tuple2!16626)

(assert (=> d!465418 (= lt!543800 (lexTailRecV2!482 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (tokens!2222 thiss!10002)) (BalanceConc!11221 Empty!5638) (print!1161 Lexer!2622 (tokens!2222 thiss!10002)) (BalanceConc!11223 Empty!5639)))))

(assert (=> d!465418 (= (lex!1122 Lexer!2622 (rules!12130 thiss!10002) (print!1161 Lexer!2622 (tokens!2222 thiss!10002))) lt!543800)))

(declare-fun b!1568901 () Bool)

(assert (=> b!1568901 (= e!1007613 (= (list!6577 (_2!9715 lt!543800)) (_2!9718 (lexList!759 Lexer!2622 (rules!12130 thiss!10002) (list!6577 (print!1161 Lexer!2622 (tokens!2222 thiss!10002)))))))))

(declare-fun b!1568902 () Bool)

(assert (=> b!1568902 (= e!1007614 (= (_2!9715 lt!543800) (print!1161 Lexer!2622 (tokens!2222 thiss!10002))))))

(declare-fun b!1568903 () Bool)

(declare-fun e!1007612 () Bool)

(assert (=> b!1568903 (= e!1007614 e!1007612)))

(declare-fun res!699168 () Bool)

(declare-fun size!13832 (BalanceConc!11220) Int)

(assert (=> b!1568903 (= res!699168 (< (size!13832 (_2!9715 lt!543800)) (size!13832 (print!1161 Lexer!2622 (tokens!2222 thiss!10002)))))))

(assert (=> b!1568903 (=> (not res!699168) (not e!1007612))))

(declare-fun b!1568904 () Bool)

(declare-fun isEmpty!10225 (BalanceConc!11222) Bool)

(assert (=> b!1568904 (= e!1007612 (not (isEmpty!10225 (_1!9715 lt!543800))))))

(assert (= (and d!465418 c!254265) b!1568903))

(assert (= (and d!465418 (not c!254265)) b!1568902))

(assert (= (and b!1568903 res!699168) b!1568904))

(assert (= (and d!465418 res!699167) b!1568900))

(assert (= (and b!1568900 res!699166) b!1568901))

(declare-fun m!1843087 () Bool)

(assert (=> b!1568904 m!1843087))

(declare-fun m!1843089 () Bool)

(assert (=> b!1568900 m!1843089))

(assert (=> b!1568900 m!1842857))

(declare-fun m!1843091 () Bool)

(assert (=> b!1568900 m!1843091))

(assert (=> b!1568900 m!1843091))

(declare-fun m!1843093 () Bool)

(assert (=> b!1568900 m!1843093))

(declare-fun m!1843095 () Bool)

(assert (=> d!465418 m!1843095))

(assert (=> d!465418 m!1842857))

(assert (=> d!465418 m!1842857))

(declare-fun m!1843097 () Bool)

(assert (=> d!465418 m!1843097))

(declare-fun m!1843099 () Bool)

(assert (=> b!1568901 m!1843099))

(assert (=> b!1568901 m!1842857))

(assert (=> b!1568901 m!1843091))

(assert (=> b!1568901 m!1843091))

(assert (=> b!1568901 m!1843093))

(declare-fun m!1843101 () Bool)

(assert (=> b!1568903 m!1843101))

(assert (=> b!1568903 m!1842857))

(declare-fun m!1843103 () Bool)

(assert (=> b!1568903 m!1843103))

(assert (=> start!146158 d!465418))

(declare-fun d!465422 () Bool)

(declare-fun res!699184 () Bool)

(declare-fun e!1007628 () Bool)

(assert (=> d!465422 (=> (not res!699184) (not e!1007628))))

(assert (=> d!465422 (= res!699184 (not (isEmpty!10220 (rules!12130 thiss!10002))))))

(assert (=> d!465422 (= (inv!22476 thiss!10002) e!1007628)))

(declare-fun b!1568928 () Bool)

(declare-fun res!699185 () Bool)

(assert (=> b!1568928 (=> (not res!699185) (not e!1007628))))

(declare-fun rulesInvariant!2293 (LexerInterface!2624 List!17156) Bool)

(assert (=> b!1568928 (= res!699185 (rulesInvariant!2293 Lexer!2622 (rules!12130 thiss!10002)))))

(declare-fun b!1568929 () Bool)

(declare-fun res!699186 () Bool)

(assert (=> b!1568929 (=> (not res!699186) (not e!1007628))))

(declare-fun rulesProduceEachTokenIndividually!912 (LexerInterface!2624 List!17156 BalanceConc!11222) Bool)

(assert (=> b!1568929 (= res!699186 (rulesProduceEachTokenIndividually!912 Lexer!2622 (rules!12130 thiss!10002) (tokens!2222 thiss!10002)))))

(declare-fun b!1568930 () Bool)

(declare-fun separableTokens!283 (LexerInterface!2624 BalanceConc!11222 List!17156) Bool)

(assert (=> b!1568930 (= e!1007628 (separableTokens!283 Lexer!2622 (tokens!2222 thiss!10002) (rules!12130 thiss!10002)))))

(assert (= (and d!465422 res!699184) b!1568928))

(assert (= (and b!1568928 res!699185) b!1568929))

(assert (= (and b!1568929 res!699186) b!1568930))

(assert (=> d!465422 m!1842867))

(declare-fun m!1843111 () Bool)

(assert (=> b!1568928 m!1843111))

(declare-fun m!1843113 () Bool)

(assert (=> b!1568929 m!1843113))

(declare-fun m!1843115 () Bool)

(assert (=> b!1568930 m!1843115))

(assert (=> start!146158 d!465422))

(declare-fun d!465426 () Bool)

(assert (=> d!465426 (= (isEmpty!10220 (rules!12130 thiss!10002)) ((_ is Nil!17086) (rules!12130 thiss!10002)))))

(assert (=> b!1568836 d!465426))

(declare-fun b!1568955 () Bool)

(declare-fun b_free!41995 () Bool)

(declare-fun b_next!42699 () Bool)

(assert (=> b!1568955 (= b_free!41995 (not b_next!42699))))

(declare-fun tp!462090 () Bool)

(declare-fun b_and!109565 () Bool)

(assert (=> b!1568955 (= tp!462090 b_and!109565)))

(declare-fun b_free!41997 () Bool)

(declare-fun b_next!42701 () Bool)

(assert (=> b!1568955 (= b_free!41997 (not b_next!42701))))

(declare-fun tp!462092 () Bool)

(declare-fun b_and!109567 () Bool)

(assert (=> b!1568955 (= tp!462092 b_and!109567)))

(declare-fun e!1007650 () Bool)

(assert (=> b!1568955 (= e!1007650 (and tp!462090 tp!462092))))

(declare-fun tp!462093 () Bool)

(declare-fun e!1007647 () Bool)

(declare-fun b!1568954 () Bool)

(declare-fun inv!22472 (String!19757) Bool)

(declare-fun inv!22483 (TokenValueInjection!5830) Bool)

(assert (=> b!1568954 (= e!1007647 (and tp!462093 (inv!22472 (tag!3259 (h!22487 (rules!12130 thiss!10002)))) (inv!22483 (transformation!2995 (h!22487 (rules!12130 thiss!10002)))) e!1007650))))

(declare-fun b!1568953 () Bool)

(declare-fun e!1007649 () Bool)

(declare-fun tp!462091 () Bool)

(assert (=> b!1568953 (= e!1007649 (and e!1007647 tp!462091))))

(assert (=> b!1568837 (= tp!462059 e!1007649)))

(assert (= b!1568954 b!1568955))

(assert (= b!1568953 b!1568954))

(assert (= (and b!1568837 ((_ is Cons!17086) (rules!12130 thiss!10002))) b!1568953))

(declare-fun m!1843127 () Bool)

(assert (=> b!1568954 m!1843127))

(declare-fun m!1843129 () Bool)

(assert (=> b!1568954 m!1843129))

(declare-fun tp!462102 () Bool)

(declare-fun tp!462100 () Bool)

(declare-fun b!1568964 () Bool)

(declare-fun e!1007655 () Bool)

(assert (=> b!1568964 (= e!1007655 (and (inv!22477 (left!13838 (c!254247 (tokens!2222 thiss!10002)))) tp!462100 (inv!22477 (right!14168 (c!254247 (tokens!2222 thiss!10002)))) tp!462102))))

(declare-fun b!1568966 () Bool)

(declare-fun e!1007656 () Bool)

(declare-fun tp!462101 () Bool)

(assert (=> b!1568966 (= e!1007656 tp!462101)))

(declare-fun b!1568965 () Bool)

(declare-fun inv!22484 (IArray!11283) Bool)

(assert (=> b!1568965 (= e!1007655 (and (inv!22484 (xs!8443 (c!254247 (tokens!2222 thiss!10002)))) e!1007656))))

(assert (=> b!1568838 (= tp!462060 (and (inv!22477 (c!254247 (tokens!2222 thiss!10002))) e!1007655))))

(assert (= (and b!1568838 ((_ is Node!5639) (c!254247 (tokens!2222 thiss!10002)))) b!1568964))

(assert (= b!1568965 b!1568966))

(assert (= (and b!1568838 ((_ is Leaf!8357) (c!254247 (tokens!2222 thiss!10002)))) b!1568965))

(declare-fun m!1843131 () Bool)

(assert (=> b!1568964 m!1843131))

(declare-fun m!1843133 () Bool)

(assert (=> b!1568964 m!1843133))

(declare-fun m!1843135 () Bool)

(assert (=> b!1568965 m!1843135))

(assert (=> b!1568838 m!1842869))

(check-sat (not d!465414) (not b!1568903) (not d!465422) (not b_next!42701) (not b!1568904) (not b!1568873) (not b!1568900) (not b!1568856) (not b!1568838) (not b!1568964) (not d!465418) (not b!1568874) (not b_next!42699) (not b!1568965) (not d!465402) b_and!109565 (not b!1568929) (not b!1568928) (not b!1568953) (not b!1568901) (not d!465416) (not d!465406) (not d!465398) b_and!109567 (not b!1568966) (not b!1568954) (not b!1568854) (not b!1568930))
(check-sat b_and!109565 b_and!109567 (not b_next!42699) (not b_next!42701))
