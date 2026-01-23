; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137022 () Bool)

(assert start!137022)

(declare-fun b!1465578 () Bool)

(declare-fun e!934891 () Bool)

(declare-fun e!934883 () Bool)

(assert (=> b!1465578 (= e!934891 e!934883)))

(declare-fun res!663445 () Bool)

(assert (=> b!1465578 (=> (not res!663445) (not e!934883))))

(declare-datatypes ((C!8160 0))(
  ( (C!8161 (val!4650 Int)) )
))
(declare-datatypes ((List!15266 0))(
  ( (Nil!15200) (Cons!15200 (h!20601 C!8160) (t!134957 List!15266)) )
))
(declare-datatypes ((IArray!10365 0))(
  ( (IArray!10366 (innerList!5240 List!15266)) )
))
(declare-datatypes ((Conc!5180 0))(
  ( (Node!5180 (left!12913 Conc!5180) (right!13243 Conc!5180) (csize!10590 Int) (cheight!5391 Int)) (Leaf!7720 (xs!7935 IArray!10365) (csize!10591 Int)) (Empty!5180) )
))
(declare-datatypes ((BalanceConc!10300 0))(
  ( (BalanceConc!10301 (c!241666 Conc!5180)) )
))
(declare-datatypes ((List!15267 0))(
  ( (Nil!15201) (Cons!15201 (h!20602 (_ BitVec 16)) (t!134958 List!15267)) )
))
(declare-datatypes ((TokenValue!2767 0))(
  ( (FloatLiteralValue!5534 (text!19814 List!15267)) (TokenValueExt!2766 (__x!9324 Int)) (Broken!13835 (value!85916 List!15267)) (Object!2832) (End!2767) (Def!2767) (Underscore!2767) (Match!2767) (Else!2767) (Error!2767) (Case!2767) (If!2767) (Extends!2767) (Abstract!2767) (Class!2767) (Val!2767) (DelimiterValue!5534 (del!2827 List!15267)) (KeywordValue!2773 (value!85917 List!15267)) (CommentValue!5534 (value!85918 List!15267)) (WhitespaceValue!5534 (value!85919 List!15267)) (IndentationValue!2767 (value!85920 List!15267)) (String!18090) (Int32!2767) (Broken!13836 (value!85921 List!15267)) (Boolean!2768) (Unit!24896) (OperatorValue!2770 (op!2827 List!15267)) (IdentifierValue!5534 (value!85922 List!15267)) (IdentifierValue!5535 (value!85923 List!15267)) (WhitespaceValue!5535 (value!85924 List!15267)) (True!5534) (False!5534) (Broken!13837 (value!85925 List!15267)) (Broken!13838 (value!85926 List!15267)) (True!5535) (RightBrace!2767) (RightBracket!2767) (Colon!2767) (Null!2767) (Comma!2767) (LeftBracket!2767) (False!5535) (LeftBrace!2767) (ImaginaryLiteralValue!2767 (text!19815 List!15267)) (StringLiteralValue!8301 (value!85927 List!15267)) (EOFValue!2767 (value!85928 List!15267)) (IdentValue!2767 (value!85929 List!15267)) (DelimiterValue!5535 (value!85930 List!15267)) (DedentValue!2767 (value!85931 List!15267)) (NewLineValue!2767 (value!85932 List!15267)) (IntegerValue!8301 (value!85933 (_ BitVec 32)) (text!19816 List!15267)) (IntegerValue!8302 (value!85934 Int) (text!19817 List!15267)) (Times!2767) (Or!2767) (Equal!2767) (Minus!2767) (Broken!13839 (value!85935 List!15267)) (And!2767) (Div!2767) (LessEqual!2767) (Mod!2767) (Concat!6758) (Not!2767) (Plus!2767) (SpaceValue!2767 (value!85936 List!15267)) (IntegerValue!8303 (value!85937 Int) (text!19818 List!15267)) (StringLiteralValue!8302 (text!19819 List!15267)) (FloatLiteralValue!5535 (text!19820 List!15267)) (BytesLiteralValue!2767 (value!85938 List!15267)) (CommentValue!5535 (value!85939 List!15267)) (StringLiteralValue!8303 (value!85940 List!15267)) (ErrorTokenValue!2767 (msg!2828 List!15267)) )
))
(declare-datatypes ((Regex!3991 0))(
  ( (ElementMatch!3991 (c!241667 C!8160)) (Concat!6759 (regOne!8494 Regex!3991) (regTwo!8494 Regex!3991)) (EmptyExpr!3991) (Star!3991 (reg!4320 Regex!3991)) (EmptyLang!3991) (Union!3991 (regOne!8495 Regex!3991) (regTwo!8495 Regex!3991)) )
))
(declare-datatypes ((String!18091 0))(
  ( (String!18092 (value!85941 String)) )
))
(declare-datatypes ((TokenValueInjection!5194 0))(
  ( (TokenValueInjection!5195 (toValue!3988 Int) (toChars!3847 Int)) )
))
(declare-datatypes ((Rule!5154 0))(
  ( (Rule!5155 (regex!2677 Regex!3991) (tag!2941 String!18091) (isSeparator!2677 Bool) (transformation!2677 TokenValueInjection!5194)) )
))
(declare-datatypes ((Token!5016 0))(
  ( (Token!5017 (value!85942 TokenValue!2767) (rule!4454 Rule!5154) (size!12435 Int) (originalCharacters!3539 List!15266)) )
))
(declare-datatypes ((List!15268 0))(
  ( (Nil!15202) (Cons!15202 (h!20603 Token!5016) (t!134959 List!15268)) )
))
(declare-datatypes ((IArray!10367 0))(
  ( (IArray!10368 (innerList!5241 List!15268)) )
))
(declare-datatypes ((Conc!5181 0))(
  ( (Node!5181 (left!12914 Conc!5181) (right!13244 Conc!5181) (csize!10592 Int) (cheight!5392 Int)) (Leaf!7721 (xs!7936 IArray!10367) (csize!10593 Int)) (Empty!5181) )
))
(declare-datatypes ((BalanceConc!10302 0))(
  ( (BalanceConc!10303 (c!241668 Conc!5181)) )
))
(declare-datatypes ((List!15269 0))(
  ( (Nil!15203) (Cons!15203 (h!20604 Rule!5154) (t!134960 List!15269)) )
))
(declare-datatypes ((PrintableTokens!1136 0))(
  ( (PrintableTokens!1137 (rules!11744 List!15269) (tokens!2124 BalanceConc!10302)) )
))
(declare-fun other!32 () PrintableTokens!1136)

(declare-fun isEmpty!9552 (BalanceConc!10302) Bool)

(assert (=> b!1465578 (= res!663445 (not (isEmpty!9552 (tokens!2124 other!32))))))

(declare-datatypes ((Unit!24897 0))(
  ( (Unit!24898) )
))
(declare-fun lt!509792 () Unit!24897)

(declare-fun thiss!10022 () PrintableTokens!1136)

(declare-fun lemmaInvariant!373 (PrintableTokens!1136) Unit!24897)

(assert (=> b!1465578 (= lt!509792 (lemmaInvariant!373 thiss!10022))))

(declare-fun lt!509800 () Unit!24897)

(assert (=> b!1465578 (= lt!509800 (lemmaInvariant!373 other!32))))

(declare-fun b!1465579 () Bool)

(declare-fun e!934889 () Bool)

(declare-fun e!934890 () Bool)

(assert (=> b!1465579 (= e!934889 e!934890)))

(declare-fun res!663450 () Bool)

(assert (=> b!1465579 (=> res!663450 e!934890)))

(declare-datatypes ((Option!2883 0))(
  ( (None!2882) (Some!2882 (v!22522 PrintableTokens!1136)) )
))
(declare-fun lt!509803 () Option!2883)

(declare-fun isEmpty!9553 (Option!2883) Bool)

(assert (=> b!1465579 (= res!663450 (isEmpty!9553 lt!509803))))

(declare-fun lt!509799 () PrintableTokens!1136)

(assert (=> b!1465579 (= lt!509803 (Some!2882 lt!509799))))

(declare-fun lt!509797 () BalanceConc!10302)

(declare-fun print!1110 (PrintableTokens!1136) BalanceConc!10300)

(declare-datatypes ((LexerInterface!2333 0))(
  ( (LexerInterfaceExt!2330 (__x!9325 Int)) (Lexer!2331) )
))
(declare-fun print!1111 (LexerInterface!2333 BalanceConc!10302) BalanceConc!10300)

(assert (=> b!1465579 (= (print!1110 lt!509799) (print!1111 Lexer!2331 lt!509797))))

(declare-fun lt!509806 () Unit!24897)

(declare-fun theoremInvertabilityWhenTokenListSeparable!81 (LexerInterface!2333 List!15269 List!15268) Unit!24897)

(declare-fun list!6094 (BalanceConc!10302) List!15268)

(assert (=> b!1465579 (= lt!509806 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) (list!6094 lt!509797)))))

(assert (=> b!1465579 (= lt!509799 (PrintableTokens!1137 (rules!11744 thiss!10022) lt!509797))))

(declare-fun lt!509798 () BalanceConc!10300)

(assert (=> b!1465579 (= lt!509798 (print!1111 Lexer!2331 (tokens!2124 other!32)))))

(assert (=> b!1465579 (= lt!509798 (print!1110 other!32))))

(declare-fun lt!509793 () Unit!24897)

(declare-fun lt!509807 () List!15268)

(assert (=> b!1465579 (= lt!509793 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 other!32) lt!509807))))

(declare-fun lt!509801 () BalanceConc!10300)

(assert (=> b!1465579 (= lt!509801 (print!1111 Lexer!2331 (tokens!2124 thiss!10022)))))

(assert (=> b!1465579 (= lt!509801 (print!1110 thiss!10022))))

(declare-fun lt!509809 () Unit!24897)

(declare-fun lt!509791 () List!15268)

(assert (=> b!1465579 (= lt!509809 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) lt!509791))))

(declare-fun lt!509802 () List!15268)

(declare-fun printList!729 (LexerInterface!2333 List!15268) List!15266)

(declare-fun ++!4103 (List!15266 List!15266) List!15266)

(assert (=> b!1465579 (= (printList!729 Lexer!2331 lt!509802) (++!4103 (printList!729 Lexer!2331 lt!509791) (printList!729 Lexer!2331 lt!509807)))))

(declare-fun lt!509811 () Unit!24897)

(declare-fun lemmaPrintConcatSameAsConcatPrint!80 (LexerInterface!2333 List!15268 List!15268) Unit!24897)

(assert (=> b!1465579 (= lt!509811 (lemmaPrintConcatSameAsConcatPrint!80 Lexer!2331 lt!509791 lt!509807))))

(declare-fun b!1465580 () Bool)

(declare-fun e!934887 () Bool)

(assert (=> b!1465580 (= e!934890 e!934887)))

(declare-fun res!663449 () Bool)

(assert (=> b!1465580 (=> (not res!663449) (not e!934887))))

(declare-fun lt!509804 () PrintableTokens!1136)

(assert (=> b!1465580 (= res!663449 (= (rules!11744 lt!509804) (rules!11744 thiss!10022)))))

(declare-fun get!4626 (Option!2883) PrintableTokens!1136)

(assert (=> b!1465580 (= lt!509804 (get!4626 lt!509803))))

(declare-fun res!663451 () Bool)

(assert (=> start!137022 (=> (not res!663451) (not e!934891))))

(assert (=> start!137022 (= res!663451 (= (rules!11744 thiss!10022) (rules!11744 other!32)))))

(assert (=> start!137022 e!934891))

(declare-fun e!934892 () Bool)

(declare-fun inv!20321 (PrintableTokens!1136) Bool)

(assert (=> start!137022 (and (inv!20321 thiss!10022) e!934892)))

(declare-fun e!934885 () Bool)

(assert (=> start!137022 (and (inv!20321 other!32) e!934885)))

(declare-fun b!1465581 () Bool)

(declare-fun e!934888 () Bool)

(declare-fun tp!412014 () Bool)

(declare-fun inv!20322 (Conc!5181) Bool)

(assert (=> b!1465581 (= e!934888 (and (inv!20322 (c!241668 (tokens!2124 thiss!10022))) tp!412014))))

(declare-fun tp!412015 () Bool)

(declare-fun b!1465582 () Bool)

(declare-fun inv!20323 (BalanceConc!10302) Bool)

(assert (=> b!1465582 (= e!934892 (and tp!412015 (inv!20323 (tokens!2124 thiss!10022)) e!934888))))

(declare-fun b!1465583 () Bool)

(declare-fun e!934882 () Bool)

(declare-fun tp!412013 () Bool)

(assert (=> b!1465583 (= e!934882 (and (inv!20322 (c!241668 (tokens!2124 other!32))) tp!412013))))

(declare-fun b!1465584 () Bool)

(declare-fun e!934886 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!251 (LexerInterface!2333 List!15268 List!15269) Bool)

(assert (=> b!1465584 (= e!934886 (tokensListTwoByTwoPredicateSeparableList!251 Lexer!2331 lt!509802 (rules!11744 thiss!10022)))))

(declare-fun b!1465585 () Bool)

(declare-fun e!934884 () Bool)

(assert (=> b!1465585 (= e!934883 (not e!934884))))

(declare-fun res!663446 () Bool)

(assert (=> b!1465585 (=> res!663446 e!934884)))

(declare-fun lt!509795 () Token!5016)

(declare-fun lt!509808 () Token!5016)

(declare-fun separableTokensPredicate!542 (LexerInterface!2333 Token!5016 Token!5016 List!15269) Bool)

(assert (=> b!1465585 (= res!663446 (not (separableTokensPredicate!542 Lexer!2331 lt!509795 lt!509808 (rules!11744 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1252 (LexerInterface!2333 List!15269 Token!5016) Bool)

(assert (=> b!1465585 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509808)))

(declare-fun lt!509796 () Unit!24897)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 (LexerInterface!2333 List!15269 List!15268 Token!5016) Unit!24897)

(assert (=> b!1465585 (= lt!509796 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509807 lt!509808))))

(declare-fun head!3029 (BalanceConc!10302) Token!5016)

(assert (=> b!1465585 (= lt!509808 (head!3029 (tokens!2124 other!32)))))

(assert (=> b!1465585 (= lt!509807 (list!6094 (tokens!2124 other!32)))))

(assert (=> b!1465585 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509795)))

(declare-fun lt!509794 () Unit!24897)

(assert (=> b!1465585 (= lt!509794 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509795))))

(declare-fun last!293 (BalanceConc!10302) Token!5016)

(assert (=> b!1465585 (= lt!509795 (last!293 (tokens!2124 thiss!10022)))))

(assert (=> b!1465585 (= lt!509791 (list!6094 (tokens!2124 thiss!10022)))))

(declare-fun tp!412016 () Bool)

(declare-fun b!1465586 () Bool)

(assert (=> b!1465586 (= e!934885 (and tp!412016 (inv!20323 (tokens!2124 other!32)) e!934882))))

(declare-fun b!1465587 () Bool)

(declare-fun res!663448 () Bool)

(assert (=> b!1465587 (=> (not res!663448) (not e!934887))))

(assert (=> b!1465587 (= res!663448 (= (list!6094 (tokens!2124 lt!509804)) lt!509802))))

(declare-fun b!1465588 () Bool)

(declare-fun res!663444 () Bool)

(assert (=> b!1465588 (=> (not res!663444) (not e!934883))))

(assert (=> b!1465588 (= res!663444 (not (isEmpty!9552 (tokens!2124 thiss!10022))))))

(declare-fun b!1465589 () Bool)

(declare-fun list!6095 (BalanceConc!10300) List!15266)

(assert (=> b!1465589 (= e!934887 (= (list!6095 (print!1110 lt!509804)) (++!4103 (list!6095 lt!509801) (list!6095 lt!509798))))))

(declare-fun b!1465590 () Bool)

(assert (=> b!1465590 (= e!934884 e!934889)))

(declare-fun res!663447 () Bool)

(assert (=> b!1465590 (=> res!663447 e!934889)))

(declare-fun tokensListTwoByTwoPredicateSeparable!140 (LexerInterface!2333 BalanceConc!10302 Int List!15269) Bool)

(assert (=> b!1465590 (= res!663447 (not (tokensListTwoByTwoPredicateSeparable!140 Lexer!2331 lt!509797 0 (rules!11744 thiss!10022))))))

(declare-fun ++!4104 (BalanceConc!10302 BalanceConc!10302) BalanceConc!10302)

(assert (=> b!1465590 (= lt!509797 (++!4104 (tokens!2124 thiss!10022) (tokens!2124 other!32)))))

(assert (=> b!1465590 e!934886))

(declare-fun res!663443 () Bool)

(assert (=> b!1465590 (=> (not res!663443) (not e!934886))))

(declare-fun rulesProduceEachTokenIndividuallyList!752 (LexerInterface!2333 List!15269 List!15268) Bool)

(assert (=> b!1465590 (= res!663443 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!509802))))

(declare-fun ++!4105 (List!15268 List!15268) List!15268)

(assert (=> b!1465590 (= lt!509802 (++!4105 lt!509791 lt!509807))))

(declare-fun lt!509805 () Unit!24897)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!58 (LexerInterface!2333 List!15269 List!15268 List!15268) Unit!24897)

(assert (=> b!1465590 (= lt!509805 (lemmaRulesProduceEachTokenIndividuallyConcat!58 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509807))))

(declare-fun lt!509810 () Unit!24897)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!58 (LexerInterface!2333 List!15268 List!15268 List!15269) Unit!24897)

(assert (=> b!1465590 (= lt!509810 (tokensListTwoByTwoPredicateConcatSeparableTokensList!58 Lexer!2331 lt!509791 lt!509807 (rules!11744 thiss!10022)))))

(assert (= (and start!137022 res!663451) b!1465578))

(assert (= (and b!1465578 res!663445) b!1465588))

(assert (= (and b!1465588 res!663444) b!1465585))

(assert (= (and b!1465585 (not res!663446)) b!1465590))

(assert (= (and b!1465590 res!663443) b!1465584))

(assert (= (and b!1465590 (not res!663447)) b!1465579))

(assert (= (and b!1465579 (not res!663450)) b!1465580))

(assert (= (and b!1465580 res!663449) b!1465587))

(assert (= (and b!1465587 res!663448) b!1465589))

(assert (= b!1465582 b!1465581))

(assert (= start!137022 b!1465582))

(assert (= b!1465586 b!1465583))

(assert (= start!137022 b!1465586))

(declare-fun m!1709235 () Bool)

(assert (=> b!1465588 m!1709235))

(declare-fun m!1709237 () Bool)

(assert (=> b!1465587 m!1709237))

(declare-fun m!1709239 () Bool)

(assert (=> b!1465589 m!1709239))

(declare-fun m!1709241 () Bool)

(assert (=> b!1465589 m!1709241))

(declare-fun m!1709243 () Bool)

(assert (=> b!1465589 m!1709243))

(declare-fun m!1709245 () Bool)

(assert (=> b!1465589 m!1709245))

(assert (=> b!1465589 m!1709243))

(assert (=> b!1465589 m!1709241))

(assert (=> b!1465589 m!1709239))

(declare-fun m!1709247 () Bool)

(assert (=> b!1465589 m!1709247))

(declare-fun m!1709249 () Bool)

(assert (=> b!1465590 m!1709249))

(declare-fun m!1709251 () Bool)

(assert (=> b!1465590 m!1709251))

(declare-fun m!1709253 () Bool)

(assert (=> b!1465590 m!1709253))

(declare-fun m!1709255 () Bool)

(assert (=> b!1465590 m!1709255))

(declare-fun m!1709257 () Bool)

(assert (=> b!1465590 m!1709257))

(declare-fun m!1709259 () Bool)

(assert (=> b!1465590 m!1709259))

(declare-fun m!1709261 () Bool)

(assert (=> b!1465578 m!1709261))

(declare-fun m!1709263 () Bool)

(assert (=> b!1465578 m!1709263))

(declare-fun m!1709265 () Bool)

(assert (=> b!1465578 m!1709265))

(declare-fun m!1709267 () Bool)

(assert (=> b!1465579 m!1709267))

(declare-fun m!1709269 () Bool)

(assert (=> b!1465579 m!1709269))

(declare-fun m!1709271 () Bool)

(assert (=> b!1465579 m!1709271))

(declare-fun m!1709273 () Bool)

(assert (=> b!1465579 m!1709273))

(declare-fun m!1709275 () Bool)

(assert (=> b!1465579 m!1709275))

(declare-fun m!1709277 () Bool)

(assert (=> b!1465579 m!1709277))

(assert (=> b!1465579 m!1709273))

(declare-fun m!1709279 () Bool)

(assert (=> b!1465579 m!1709279))

(declare-fun m!1709281 () Bool)

(assert (=> b!1465579 m!1709281))

(declare-fun m!1709283 () Bool)

(assert (=> b!1465579 m!1709283))

(declare-fun m!1709285 () Bool)

(assert (=> b!1465579 m!1709285))

(assert (=> b!1465579 m!1709285))

(declare-fun m!1709287 () Bool)

(assert (=> b!1465579 m!1709287))

(assert (=> b!1465579 m!1709275))

(declare-fun m!1709289 () Bool)

(assert (=> b!1465579 m!1709289))

(declare-fun m!1709291 () Bool)

(assert (=> b!1465579 m!1709291))

(declare-fun m!1709293 () Bool)

(assert (=> b!1465579 m!1709293))

(declare-fun m!1709295 () Bool)

(assert (=> b!1465579 m!1709295))

(declare-fun m!1709297 () Bool)

(assert (=> b!1465579 m!1709297))

(declare-fun m!1709299 () Bool)

(assert (=> b!1465585 m!1709299))

(declare-fun m!1709301 () Bool)

(assert (=> b!1465585 m!1709301))

(declare-fun m!1709303 () Bool)

(assert (=> b!1465585 m!1709303))

(declare-fun m!1709305 () Bool)

(assert (=> b!1465585 m!1709305))

(declare-fun m!1709307 () Bool)

(assert (=> b!1465585 m!1709307))

(declare-fun m!1709309 () Bool)

(assert (=> b!1465585 m!1709309))

(declare-fun m!1709311 () Bool)

(assert (=> b!1465585 m!1709311))

(declare-fun m!1709313 () Bool)

(assert (=> b!1465585 m!1709313))

(declare-fun m!1709315 () Bool)

(assert (=> b!1465585 m!1709315))

(declare-fun m!1709317 () Bool)

(assert (=> b!1465582 m!1709317))

(declare-fun m!1709319 () Bool)

(assert (=> b!1465581 m!1709319))

(declare-fun m!1709321 () Bool)

(assert (=> start!137022 m!1709321))

(declare-fun m!1709323 () Bool)

(assert (=> start!137022 m!1709323))

(declare-fun m!1709325 () Bool)

(assert (=> b!1465583 m!1709325))

(declare-fun m!1709327 () Bool)

(assert (=> b!1465580 m!1709327))

(declare-fun m!1709329 () Bool)

(assert (=> b!1465586 m!1709329))

(declare-fun m!1709331 () Bool)

(assert (=> b!1465584 m!1709331))

(check-sat (not b!1465585) (not start!137022) (not b!1465582) (not b!1465584) (not b!1465589) (not b!1465579) (not b!1465588) (not b!1465590) (not b!1465580) (not b!1465581) (not b!1465578) (not b!1465583) (not b!1465586) (not b!1465587))
(check-sat)
(get-model)

(declare-fun d!430188 () Bool)

(declare-fun lt!509814 () Bool)

(declare-fun isEmpty!9556 (List!15268) Bool)

(assert (=> d!430188 (= lt!509814 (isEmpty!9556 (list!6094 (tokens!2124 other!32))))))

(declare-fun isEmpty!9557 (Conc!5181) Bool)

(assert (=> d!430188 (= lt!509814 (isEmpty!9557 (c!241668 (tokens!2124 other!32))))))

(assert (=> d!430188 (= (isEmpty!9552 (tokens!2124 other!32)) lt!509814)))

(declare-fun bs!344789 () Bool)

(assert (= bs!344789 d!430188))

(assert (=> bs!344789 m!1709307))

(assert (=> bs!344789 m!1709307))

(declare-fun m!1709335 () Bool)

(assert (=> bs!344789 m!1709335))

(declare-fun m!1709337 () Bool)

(assert (=> bs!344789 m!1709337))

(assert (=> b!1465578 d!430188))

(declare-fun d!430190 () Bool)

(declare-fun e!934910 () Bool)

(assert (=> d!430190 e!934910))

(declare-fun res!663477 () Bool)

(assert (=> d!430190 (=> (not res!663477) (not e!934910))))

(declare-fun rulesInvariant!2166 (LexerInterface!2333 List!15269) Bool)

(assert (=> d!430190 (= res!663477 (rulesInvariant!2166 Lexer!2331 (rules!11744 thiss!10022)))))

(declare-fun Unit!24905 () Unit!24897)

(assert (=> d!430190 (= (lemmaInvariant!373 thiss!10022) Unit!24905)))

(declare-fun b!1465622 () Bool)

(declare-fun res!663478 () Bool)

(assert (=> b!1465622 (=> (not res!663478) (not e!934910))))

(declare-fun rulesProduceEachTokenIndividually!882 (LexerInterface!2333 List!15269 BalanceConc!10302) Bool)

(assert (=> b!1465622 (= res!663478 (rulesProduceEachTokenIndividually!882 Lexer!2331 (rules!11744 thiss!10022) (tokens!2124 thiss!10022)))))

(declare-fun b!1465623 () Bool)

(declare-fun separableTokens!266 (LexerInterface!2333 BalanceConc!10302 List!15269) Bool)

(assert (=> b!1465623 (= e!934910 (separableTokens!266 Lexer!2331 (tokens!2124 thiss!10022) (rules!11744 thiss!10022)))))

(assert (= (and d!430190 res!663477) b!1465622))

(assert (= (and b!1465622 res!663478) b!1465623))

(declare-fun m!1709385 () Bool)

(assert (=> d!430190 m!1709385))

(declare-fun m!1709387 () Bool)

(assert (=> b!1465622 m!1709387))

(declare-fun m!1709389 () Bool)

(assert (=> b!1465623 m!1709389))

(assert (=> b!1465578 d!430190))

(declare-fun d!430204 () Bool)

(declare-fun e!934911 () Bool)

(assert (=> d!430204 e!934911))

(declare-fun res!663479 () Bool)

(assert (=> d!430204 (=> (not res!663479) (not e!934911))))

(assert (=> d!430204 (= res!663479 (rulesInvariant!2166 Lexer!2331 (rules!11744 other!32)))))

(declare-fun Unit!24906 () Unit!24897)

(assert (=> d!430204 (= (lemmaInvariant!373 other!32) Unit!24906)))

(declare-fun b!1465624 () Bool)

(declare-fun res!663480 () Bool)

(assert (=> b!1465624 (=> (not res!663480) (not e!934911))))

(assert (=> b!1465624 (= res!663480 (rulesProduceEachTokenIndividually!882 Lexer!2331 (rules!11744 other!32) (tokens!2124 other!32)))))

(declare-fun b!1465625 () Bool)

(assert (=> b!1465625 (= e!934911 (separableTokens!266 Lexer!2331 (tokens!2124 other!32) (rules!11744 other!32)))))

(assert (= (and d!430204 res!663479) b!1465624))

(assert (= (and b!1465624 res!663480) b!1465625))

(declare-fun m!1709391 () Bool)

(assert (=> d!430204 m!1709391))

(declare-fun m!1709393 () Bool)

(assert (=> b!1465624 m!1709393))

(declare-fun m!1709395 () Bool)

(assert (=> b!1465625 m!1709395))

(assert (=> b!1465578 d!430204))

(declare-fun d!430206 () Bool)

(declare-fun lt!509827 () Bool)

(assert (=> d!430206 (= lt!509827 (isEmpty!9556 (list!6094 (tokens!2124 thiss!10022))))))

(assert (=> d!430206 (= lt!509827 (isEmpty!9557 (c!241668 (tokens!2124 thiss!10022))))))

(assert (=> d!430206 (= (isEmpty!9552 (tokens!2124 thiss!10022)) lt!509827)))

(declare-fun bs!344793 () Bool)

(assert (= bs!344793 d!430206))

(assert (=> bs!344793 m!1709313))

(assert (=> bs!344793 m!1709313))

(declare-fun m!1709397 () Bool)

(assert (=> bs!344793 m!1709397))

(declare-fun m!1709399 () Bool)

(assert (=> bs!344793 m!1709399))

(assert (=> b!1465588 d!430206))

(declare-fun d!430208 () Bool)

(declare-fun list!6098 (Conc!5181) List!15268)

(assert (=> d!430208 (= (list!6094 (tokens!2124 lt!509804)) (list!6098 (c!241668 (tokens!2124 lt!509804))))))

(declare-fun bs!344794 () Bool)

(assert (= bs!344794 d!430208))

(declare-fun m!1709401 () Bool)

(assert (=> bs!344794 m!1709401))

(assert (=> b!1465587 d!430208))

(declare-fun d!430210 () Bool)

(declare-fun isBalanced!1559 (Conc!5181) Bool)

(assert (=> d!430210 (= (inv!20323 (tokens!2124 other!32)) (isBalanced!1559 (c!241668 (tokens!2124 other!32))))))

(declare-fun bs!344795 () Bool)

(assert (= bs!344795 d!430210))

(declare-fun m!1709403 () Bool)

(assert (=> bs!344795 m!1709403))

(assert (=> b!1465586 d!430210))

(declare-fun d!430212 () Bool)

(declare-fun res!663511 () Bool)

(declare-fun e!934929 () Bool)

(assert (=> d!430212 (=> (not res!663511) (not e!934929))))

(declare-fun isEmpty!9559 (List!15269) Bool)

(assert (=> d!430212 (= res!663511 (not (isEmpty!9559 (rules!11744 thiss!10022))))))

(assert (=> d!430212 (= (inv!20321 thiss!10022) e!934929)))

(declare-fun b!1465656 () Bool)

(declare-fun res!663512 () Bool)

(assert (=> b!1465656 (=> (not res!663512) (not e!934929))))

(assert (=> b!1465656 (= res!663512 (rulesInvariant!2166 Lexer!2331 (rules!11744 thiss!10022)))))

(declare-fun b!1465657 () Bool)

(declare-fun res!663513 () Bool)

(assert (=> b!1465657 (=> (not res!663513) (not e!934929))))

(assert (=> b!1465657 (= res!663513 (rulesProduceEachTokenIndividually!882 Lexer!2331 (rules!11744 thiss!10022) (tokens!2124 thiss!10022)))))

(declare-fun b!1465658 () Bool)

(assert (=> b!1465658 (= e!934929 (separableTokens!266 Lexer!2331 (tokens!2124 thiss!10022) (rules!11744 thiss!10022)))))

(assert (= (and d!430212 res!663511) b!1465656))

(assert (= (and b!1465656 res!663512) b!1465657))

(assert (= (and b!1465657 res!663513) b!1465658))

(declare-fun m!1709487 () Bool)

(assert (=> d!430212 m!1709487))

(assert (=> b!1465656 m!1709385))

(assert (=> b!1465657 m!1709387))

(assert (=> b!1465658 m!1709389))

(assert (=> start!137022 d!430212))

(declare-fun d!430216 () Bool)

(declare-fun res!663514 () Bool)

(declare-fun e!934930 () Bool)

(assert (=> d!430216 (=> (not res!663514) (not e!934930))))

(assert (=> d!430216 (= res!663514 (not (isEmpty!9559 (rules!11744 other!32))))))

(assert (=> d!430216 (= (inv!20321 other!32) e!934930)))

(declare-fun b!1465659 () Bool)

(declare-fun res!663515 () Bool)

(assert (=> b!1465659 (=> (not res!663515) (not e!934930))))

(assert (=> b!1465659 (= res!663515 (rulesInvariant!2166 Lexer!2331 (rules!11744 other!32)))))

(declare-fun b!1465660 () Bool)

(declare-fun res!663516 () Bool)

(assert (=> b!1465660 (=> (not res!663516) (not e!934930))))

(assert (=> b!1465660 (= res!663516 (rulesProduceEachTokenIndividually!882 Lexer!2331 (rules!11744 other!32) (tokens!2124 other!32)))))

(declare-fun b!1465661 () Bool)

(assert (=> b!1465661 (= e!934930 (separableTokens!266 Lexer!2331 (tokens!2124 other!32) (rules!11744 other!32)))))

(assert (= (and d!430216 res!663514) b!1465659))

(assert (= (and b!1465659 res!663515) b!1465660))

(assert (= (and b!1465660 res!663516) b!1465661))

(declare-fun m!1709489 () Bool)

(assert (=> d!430216 m!1709489))

(assert (=> b!1465659 m!1709391))

(assert (=> b!1465660 m!1709393))

(assert (=> b!1465661 m!1709395))

(assert (=> start!137022 d!430216))

(declare-fun d!430218 () Bool)

(assert (=> d!430218 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509795)))

(declare-fun lt!509931 () Unit!24897)

(declare-fun choose!9020 (LexerInterface!2333 List!15269 List!15268 Token!5016) Unit!24897)

(assert (=> d!430218 (= lt!509931 (choose!9020 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509795))))

(assert (=> d!430218 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430218 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509795) lt!509931)))

(declare-fun bs!344796 () Bool)

(assert (= bs!344796 d!430218))

(assert (=> bs!344796 m!1709315))

(declare-fun m!1709491 () Bool)

(assert (=> bs!344796 m!1709491))

(assert (=> bs!344796 m!1709487))

(assert (=> b!1465585 d!430218))

(declare-fun d!430220 () Bool)

(assert (=> d!430220 (= (list!6094 (tokens!2124 other!32)) (list!6098 (c!241668 (tokens!2124 other!32))))))

(declare-fun bs!344797 () Bool)

(assert (= bs!344797 d!430220))

(declare-fun m!1709493 () Bool)

(assert (=> bs!344797 m!1709493))

(assert (=> b!1465585 d!430220))

(declare-fun d!430222 () Bool)

(declare-fun lt!509934 () Token!5016)

(declare-fun head!3032 (List!15268) Token!5016)

(assert (=> d!430222 (= lt!509934 (head!3032 (list!6094 (tokens!2124 other!32))))))

(declare-fun head!3033 (Conc!5181) Token!5016)

(assert (=> d!430222 (= lt!509934 (head!3033 (c!241668 (tokens!2124 other!32))))))

(assert (=> d!430222 (not (isEmpty!9552 (tokens!2124 other!32)))))

(assert (=> d!430222 (= (head!3029 (tokens!2124 other!32)) lt!509934)))

(declare-fun bs!344798 () Bool)

(assert (= bs!344798 d!430222))

(assert (=> bs!344798 m!1709307))

(assert (=> bs!344798 m!1709307))

(declare-fun m!1709495 () Bool)

(assert (=> bs!344798 m!1709495))

(declare-fun m!1709497 () Bool)

(assert (=> bs!344798 m!1709497))

(assert (=> bs!344798 m!1709261))

(assert (=> b!1465585 d!430222))

(declare-fun d!430224 () Bool)

(assert (=> d!430224 (= (list!6094 (tokens!2124 thiss!10022)) (list!6098 (c!241668 (tokens!2124 thiss!10022))))))

(declare-fun bs!344799 () Bool)

(assert (= bs!344799 d!430224))

(declare-fun m!1709499 () Bool)

(assert (=> bs!344799 m!1709499))

(assert (=> b!1465585 d!430224))

(declare-fun d!430226 () Bool)

(declare-fun prefixMatchZipperSequence!360 (Regex!3991 BalanceConc!10300) Bool)

(declare-fun rulesRegex!414 (LexerInterface!2333 List!15269) Regex!3991)

(declare-fun ++!4108 (BalanceConc!10300 BalanceConc!10300) BalanceConc!10300)

(declare-fun charsOf!1540 (Token!5016) BalanceConc!10300)

(declare-fun singletonSeq!1285 (C!8160) BalanceConc!10300)

(declare-fun apply!3983 (BalanceConc!10300 Int) C!8160)

(assert (=> d!430226 (= (separableTokensPredicate!542 Lexer!2331 lt!509795 lt!509808 (rules!11744 thiss!10022)) (not (prefixMatchZipperSequence!360 (rulesRegex!414 Lexer!2331 (rules!11744 thiss!10022)) (++!4108 (charsOf!1540 lt!509795) (singletonSeq!1285 (apply!3983 (charsOf!1540 lt!509808) 0))))))))

(declare-fun bs!344800 () Bool)

(assert (= bs!344800 d!430226))

(declare-fun m!1709501 () Bool)

(assert (=> bs!344800 m!1709501))

(declare-fun m!1709503 () Bool)

(assert (=> bs!344800 m!1709503))

(declare-fun m!1709505 () Bool)

(assert (=> bs!344800 m!1709505))

(declare-fun m!1709507 () Bool)

(assert (=> bs!344800 m!1709507))

(declare-fun m!1709509 () Bool)

(assert (=> bs!344800 m!1709509))

(declare-fun m!1709511 () Bool)

(assert (=> bs!344800 m!1709511))

(assert (=> bs!344800 m!1709507))

(assert (=> bs!344800 m!1709503))

(declare-fun m!1709513 () Bool)

(assert (=> bs!344800 m!1709513))

(assert (=> bs!344800 m!1709501))

(assert (=> bs!344800 m!1709505))

(assert (=> bs!344800 m!1709513))

(assert (=> bs!344800 m!1709509))

(assert (=> b!1465585 d!430226))

(declare-fun d!430228 () Bool)

(declare-fun lt!509939 () Bool)

(declare-fun e!934940 () Bool)

(assert (=> d!430228 (= lt!509939 e!934940)))

(declare-fun res!663527 () Bool)

(assert (=> d!430228 (=> (not res!663527) (not e!934940))))

(declare-datatypes ((tuple2!14266 0))(
  ( (tuple2!14267 (_1!8019 BalanceConc!10302) (_2!8019 BalanceConc!10300)) )
))
(declare-fun lex!1078 (LexerInterface!2333 List!15269 BalanceConc!10300) tuple2!14266)

(declare-fun singletonSeq!1286 (Token!5016) BalanceConc!10302)

(assert (=> d!430228 (= res!663527 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509808))))) (list!6094 (singletonSeq!1286 lt!509808))))))

(declare-fun e!934939 () Bool)

(assert (=> d!430228 (= lt!509939 e!934939)))

(declare-fun res!663529 () Bool)

(assert (=> d!430228 (=> (not res!663529) (not e!934939))))

(declare-fun lt!509940 () tuple2!14266)

(declare-fun size!12440 (BalanceConc!10302) Int)

(assert (=> d!430228 (= res!663529 (= (size!12440 (_1!8019 lt!509940)) 1))))

(assert (=> d!430228 (= lt!509940 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509808))))))

(assert (=> d!430228 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430228 (= (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509808) lt!509939)))

(declare-fun b!1465672 () Bool)

(declare-fun res!663528 () Bool)

(assert (=> b!1465672 (=> (not res!663528) (not e!934939))))

(declare-fun apply!3984 (BalanceConc!10302 Int) Token!5016)

(assert (=> b!1465672 (= res!663528 (= (apply!3984 (_1!8019 lt!509940) 0) lt!509808))))

(declare-fun b!1465673 () Bool)

(declare-fun isEmpty!9562 (BalanceConc!10300) Bool)

(assert (=> b!1465673 (= e!934939 (isEmpty!9562 (_2!8019 lt!509940)))))

(declare-fun b!1465674 () Bool)

(assert (=> b!1465674 (= e!934940 (isEmpty!9562 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509808))))))))

(assert (= (and d!430228 res!663529) b!1465672))

(assert (= (and b!1465672 res!663528) b!1465673))

(assert (= (and d!430228 res!663527) b!1465674))

(declare-fun m!1709515 () Bool)

(assert (=> d!430228 m!1709515))

(assert (=> d!430228 m!1709487))

(declare-fun m!1709517 () Bool)

(assert (=> d!430228 m!1709517))

(declare-fun m!1709519 () Bool)

(assert (=> d!430228 m!1709519))

(declare-fun m!1709521 () Bool)

(assert (=> d!430228 m!1709521))

(declare-fun m!1709523 () Bool)

(assert (=> d!430228 m!1709523))

(assert (=> d!430228 m!1709517))

(assert (=> d!430228 m!1709521))

(assert (=> d!430228 m!1709517))

(declare-fun m!1709525 () Bool)

(assert (=> d!430228 m!1709525))

(declare-fun m!1709527 () Bool)

(assert (=> b!1465672 m!1709527))

(declare-fun m!1709529 () Bool)

(assert (=> b!1465673 m!1709529))

(assert (=> b!1465674 m!1709517))

(assert (=> b!1465674 m!1709517))

(assert (=> b!1465674 m!1709521))

(assert (=> b!1465674 m!1709521))

(assert (=> b!1465674 m!1709523))

(declare-fun m!1709531 () Bool)

(assert (=> b!1465674 m!1709531))

(assert (=> b!1465585 d!430228))

(declare-fun d!430230 () Bool)

(declare-fun lt!509941 () Bool)

(declare-fun e!934942 () Bool)

(assert (=> d!430230 (= lt!509941 e!934942)))

(declare-fun res!663530 () Bool)

(assert (=> d!430230 (=> (not res!663530) (not e!934942))))

(assert (=> d!430230 (= res!663530 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509795))))) (list!6094 (singletonSeq!1286 lt!509795))))))

(declare-fun e!934941 () Bool)

(assert (=> d!430230 (= lt!509941 e!934941)))

(declare-fun res!663532 () Bool)

(assert (=> d!430230 (=> (not res!663532) (not e!934941))))

(declare-fun lt!509942 () tuple2!14266)

(assert (=> d!430230 (= res!663532 (= (size!12440 (_1!8019 lt!509942)) 1))))

(assert (=> d!430230 (= lt!509942 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509795))))))

(assert (=> d!430230 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430230 (= (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509795) lt!509941)))

(declare-fun b!1465675 () Bool)

(declare-fun res!663531 () Bool)

(assert (=> b!1465675 (=> (not res!663531) (not e!934941))))

(assert (=> b!1465675 (= res!663531 (= (apply!3984 (_1!8019 lt!509942) 0) lt!509795))))

(declare-fun b!1465676 () Bool)

(assert (=> b!1465676 (= e!934941 (isEmpty!9562 (_2!8019 lt!509942)))))

(declare-fun b!1465677 () Bool)

(assert (=> b!1465677 (= e!934942 (isEmpty!9562 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (singletonSeq!1286 lt!509795))))))))

(assert (= (and d!430230 res!663532) b!1465675))

(assert (= (and b!1465675 res!663531) b!1465676))

(assert (= (and d!430230 res!663530) b!1465677))

(declare-fun m!1709533 () Bool)

(assert (=> d!430230 m!1709533))

(assert (=> d!430230 m!1709487))

(declare-fun m!1709535 () Bool)

(assert (=> d!430230 m!1709535))

(declare-fun m!1709537 () Bool)

(assert (=> d!430230 m!1709537))

(declare-fun m!1709539 () Bool)

(assert (=> d!430230 m!1709539))

(declare-fun m!1709541 () Bool)

(assert (=> d!430230 m!1709541))

(assert (=> d!430230 m!1709535))

(assert (=> d!430230 m!1709539))

(assert (=> d!430230 m!1709535))

(declare-fun m!1709543 () Bool)

(assert (=> d!430230 m!1709543))

(declare-fun m!1709545 () Bool)

(assert (=> b!1465675 m!1709545))

(declare-fun m!1709547 () Bool)

(assert (=> b!1465676 m!1709547))

(assert (=> b!1465677 m!1709535))

(assert (=> b!1465677 m!1709535))

(assert (=> b!1465677 m!1709539))

(assert (=> b!1465677 m!1709539))

(assert (=> b!1465677 m!1709541))

(declare-fun m!1709549 () Bool)

(assert (=> b!1465677 m!1709549))

(assert (=> b!1465585 d!430230))

(declare-fun d!430232 () Bool)

(assert (=> d!430232 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!509808)))

(declare-fun lt!509943 () Unit!24897)

(assert (=> d!430232 (= lt!509943 (choose!9020 Lexer!2331 (rules!11744 thiss!10022) lt!509807 lt!509808))))

(assert (=> d!430232 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430232 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509807 lt!509808) lt!509943)))

(declare-fun bs!344801 () Bool)

(assert (= bs!344801 d!430232))

(assert (=> bs!344801 m!1709309))

(declare-fun m!1709551 () Bool)

(assert (=> bs!344801 m!1709551))

(assert (=> bs!344801 m!1709487))

(assert (=> b!1465585 d!430232))

(declare-fun d!430234 () Bool)

(declare-fun lt!509946 () Token!5016)

(declare-fun last!296 (List!15268) Token!5016)

(assert (=> d!430234 (= lt!509946 (last!296 (list!6094 (tokens!2124 thiss!10022))))))

(declare-fun last!297 (Conc!5181) Token!5016)

(assert (=> d!430234 (= lt!509946 (last!297 (c!241668 (tokens!2124 thiss!10022))))))

(assert (=> d!430234 (not (isEmpty!9552 (tokens!2124 thiss!10022)))))

(assert (=> d!430234 (= (last!293 (tokens!2124 thiss!10022)) lt!509946)))

(declare-fun bs!344802 () Bool)

(assert (= bs!344802 d!430234))

(assert (=> bs!344802 m!1709313))

(assert (=> bs!344802 m!1709313))

(declare-fun m!1709553 () Bool)

(assert (=> bs!344802 m!1709553))

(declare-fun m!1709555 () Bool)

(assert (=> bs!344802 m!1709555))

(assert (=> bs!344802 m!1709235))

(assert (=> b!1465585 d!430234))

(declare-fun d!430236 () Bool)

(declare-fun res!663537 () Bool)

(declare-fun e!934947 () Bool)

(assert (=> d!430236 (=> res!663537 e!934947)))

(get-info :version)

(assert (=> d!430236 (= res!663537 (or (not ((_ is Cons!15202) lt!509802)) (not ((_ is Cons!15202) (t!134959 lt!509802)))))))

(assert (=> d!430236 (= (tokensListTwoByTwoPredicateSeparableList!251 Lexer!2331 lt!509802 (rules!11744 thiss!10022)) e!934947)))

(declare-fun b!1465682 () Bool)

(declare-fun e!934948 () Bool)

(assert (=> b!1465682 (= e!934947 e!934948)))

(declare-fun res!663538 () Bool)

(assert (=> b!1465682 (=> (not res!663538) (not e!934948))))

(assert (=> b!1465682 (= res!663538 (separableTokensPredicate!542 Lexer!2331 (h!20603 lt!509802) (h!20603 (t!134959 lt!509802)) (rules!11744 thiss!10022)))))

(declare-fun lt!509964 () Unit!24897)

(declare-fun Unit!24909 () Unit!24897)

(assert (=> b!1465682 (= lt!509964 Unit!24909)))

(declare-fun size!12441 (BalanceConc!10300) Int)

(assert (=> b!1465682 (> (size!12441 (charsOf!1540 (h!20603 (t!134959 lt!509802)))) 0)))

(declare-fun lt!509963 () Unit!24897)

(declare-fun Unit!24910 () Unit!24897)

(assert (=> b!1465682 (= lt!509963 Unit!24910)))

(assert (=> b!1465682 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (h!20603 (t!134959 lt!509802)))))

(declare-fun lt!509965 () Unit!24897)

(declare-fun Unit!24911 () Unit!24897)

(assert (=> b!1465682 (= lt!509965 Unit!24911)))

(assert (=> b!1465682 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (h!20603 lt!509802))))

(declare-fun lt!509967 () Unit!24897)

(declare-fun lt!509966 () Unit!24897)

(assert (=> b!1465682 (= lt!509967 lt!509966)))

(assert (=> b!1465682 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (h!20603 (t!134959 lt!509802)))))

(assert (=> b!1465682 (= lt!509966 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509802 (h!20603 (t!134959 lt!509802))))))

(declare-fun lt!509962 () Unit!24897)

(declare-fun lt!509961 () Unit!24897)

(assert (=> b!1465682 (= lt!509962 lt!509961)))

(assert (=> b!1465682 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (h!20603 lt!509802))))

(assert (=> b!1465682 (= lt!509961 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!509802 (h!20603 lt!509802)))))

(declare-fun b!1465683 () Bool)

(assert (=> b!1465683 (= e!934948 (tokensListTwoByTwoPredicateSeparableList!251 Lexer!2331 (Cons!15202 (h!20603 (t!134959 lt!509802)) (t!134959 (t!134959 lt!509802))) (rules!11744 thiss!10022)))))

(assert (= (and d!430236 (not res!663537)) b!1465682))

(assert (= (and b!1465682 res!663538) b!1465683))

(declare-fun m!1709557 () Bool)

(assert (=> b!1465682 m!1709557))

(declare-fun m!1709559 () Bool)

(assert (=> b!1465682 m!1709559))

(declare-fun m!1709561 () Bool)

(assert (=> b!1465682 m!1709561))

(declare-fun m!1709563 () Bool)

(assert (=> b!1465682 m!1709563))

(declare-fun m!1709565 () Bool)

(assert (=> b!1465682 m!1709565))

(declare-fun m!1709567 () Bool)

(assert (=> b!1465682 m!1709567))

(assert (=> b!1465682 m!1709561))

(declare-fun m!1709569 () Bool)

(assert (=> b!1465682 m!1709569))

(declare-fun m!1709571 () Bool)

(assert (=> b!1465683 m!1709571))

(assert (=> b!1465584 d!430236))

(declare-fun d!430238 () Bool)

(declare-fun c!241677 () Bool)

(assert (=> d!430238 (= c!241677 ((_ is Node!5181) (c!241668 (tokens!2124 other!32))))))

(declare-fun e!934953 () Bool)

(assert (=> d!430238 (= (inv!20322 (c!241668 (tokens!2124 other!32))) e!934953)))

(declare-fun b!1465690 () Bool)

(declare-fun inv!20326 (Conc!5181) Bool)

(assert (=> b!1465690 (= e!934953 (inv!20326 (c!241668 (tokens!2124 other!32))))))

(declare-fun b!1465691 () Bool)

(declare-fun e!934954 () Bool)

(assert (=> b!1465691 (= e!934953 e!934954)))

(declare-fun res!663541 () Bool)

(assert (=> b!1465691 (= res!663541 (not ((_ is Leaf!7721) (c!241668 (tokens!2124 other!32)))))))

(assert (=> b!1465691 (=> res!663541 e!934954)))

(declare-fun b!1465692 () Bool)

(declare-fun inv!20327 (Conc!5181) Bool)

(assert (=> b!1465692 (= e!934954 (inv!20327 (c!241668 (tokens!2124 other!32))))))

(assert (= (and d!430238 c!241677) b!1465690))

(assert (= (and d!430238 (not c!241677)) b!1465691))

(assert (= (and b!1465691 (not res!663541)) b!1465692))

(declare-fun m!1709573 () Bool)

(assert (=> b!1465690 m!1709573))

(declare-fun m!1709575 () Bool)

(assert (=> b!1465692 m!1709575))

(assert (=> b!1465583 d!430238))

(declare-fun d!430240 () Bool)

(assert (=> d!430240 (= (inv!20323 (tokens!2124 thiss!10022)) (isBalanced!1559 (c!241668 (tokens!2124 thiss!10022))))))

(declare-fun bs!344803 () Bool)

(assert (= bs!344803 d!430240))

(declare-fun m!1709577 () Bool)

(assert (=> bs!344803 m!1709577))

(assert (=> b!1465582 d!430240))

(declare-fun d!430242 () Bool)

(declare-fun c!241678 () Bool)

(assert (=> d!430242 (= c!241678 ((_ is Node!5181) (c!241668 (tokens!2124 thiss!10022))))))

(declare-fun e!934957 () Bool)

(assert (=> d!430242 (= (inv!20322 (c!241668 (tokens!2124 thiss!10022))) e!934957)))

(declare-fun b!1465695 () Bool)

(assert (=> b!1465695 (= e!934957 (inv!20326 (c!241668 (tokens!2124 thiss!10022))))))

(declare-fun b!1465696 () Bool)

(declare-fun e!934958 () Bool)

(assert (=> b!1465696 (= e!934957 e!934958)))

(declare-fun res!663544 () Bool)

(assert (=> b!1465696 (= res!663544 (not ((_ is Leaf!7721) (c!241668 (tokens!2124 thiss!10022)))))))

(assert (=> b!1465696 (=> res!663544 e!934958)))

(declare-fun b!1465697 () Bool)

(assert (=> b!1465697 (= e!934958 (inv!20327 (c!241668 (tokens!2124 thiss!10022))))))

(assert (= (and d!430242 c!241678) b!1465695))

(assert (= (and d!430242 (not c!241678)) b!1465696))

(assert (= (and b!1465696 (not res!663544)) b!1465697))

(declare-fun m!1709579 () Bool)

(assert (=> b!1465695 m!1709579))

(declare-fun m!1709581 () Bool)

(assert (=> b!1465697 m!1709581))

(assert (=> b!1465581 d!430242))

(declare-fun d!430244 () Bool)

(assert (=> d!430244 (= (get!4626 lt!509803) (v!22522 lt!509803))))

(assert (=> b!1465580 d!430244))

(declare-fun d!430246 () Bool)

(declare-fun e!934972 () Bool)

(assert (=> d!430246 e!934972))

(declare-fun res!663549 () Bool)

(assert (=> d!430246 (=> (not res!663549) (not e!934972))))

(declare-fun lt!509971 () List!15268)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2250 (List!15268) (InoxSet Token!5016))

(assert (=> d!430246 (= res!663549 (= (content!2250 lt!509971) ((_ map or) (content!2250 lt!509791) (content!2250 lt!509807))))))

(declare-fun e!934973 () List!15268)

(assert (=> d!430246 (= lt!509971 e!934973)))

(declare-fun c!241681 () Bool)

(assert (=> d!430246 (= c!241681 ((_ is Nil!15202) lt!509791))))

(assert (=> d!430246 (= (++!4105 lt!509791 lt!509807) lt!509971)))

(declare-fun b!1465719 () Bool)

(assert (=> b!1465719 (= e!934973 lt!509807)))

(declare-fun b!1465722 () Bool)

(assert (=> b!1465722 (= e!934972 (or (not (= lt!509807 Nil!15202)) (= lt!509971 lt!509791)))))

(declare-fun b!1465721 () Bool)

(declare-fun res!663550 () Bool)

(assert (=> b!1465721 (=> (not res!663550) (not e!934972))))

(declare-fun size!12442 (List!15268) Int)

(assert (=> b!1465721 (= res!663550 (= (size!12442 lt!509971) (+ (size!12442 lt!509791) (size!12442 lt!509807))))))

(declare-fun b!1465720 () Bool)

(assert (=> b!1465720 (= e!934973 (Cons!15202 (h!20603 lt!509791) (++!4105 (t!134959 lt!509791) lt!509807)))))

(assert (= (and d!430246 c!241681) b!1465719))

(assert (= (and d!430246 (not c!241681)) b!1465720))

(assert (= (and d!430246 res!663549) b!1465721))

(assert (= (and b!1465721 res!663550) b!1465722))

(declare-fun m!1709589 () Bool)

(assert (=> d!430246 m!1709589))

(declare-fun m!1709591 () Bool)

(assert (=> d!430246 m!1709591))

(declare-fun m!1709593 () Bool)

(assert (=> d!430246 m!1709593))

(declare-fun m!1709595 () Bool)

(assert (=> b!1465721 m!1709595))

(declare-fun m!1709597 () Bool)

(assert (=> b!1465721 m!1709597))

(declare-fun m!1709599 () Bool)

(assert (=> b!1465721 m!1709599))

(declare-fun m!1709601 () Bool)

(assert (=> b!1465720 m!1709601))

(assert (=> b!1465590 d!430246))

(declare-fun b!1465778 () Bool)

(declare-fun e!935006 () Bool)

(assert (=> b!1465778 (= e!935006 true)))

(declare-fun b!1465777 () Bool)

(declare-fun e!935005 () Bool)

(assert (=> b!1465777 (= e!935005 e!935006)))

(declare-fun b!1465776 () Bool)

(declare-fun e!935004 () Bool)

(assert (=> b!1465776 (= e!935004 e!935005)))

(declare-fun d!430250 () Bool)

(assert (=> d!430250 e!935004))

(assert (= b!1465777 b!1465778))

(assert (= b!1465776 b!1465777))

(assert (= (and d!430250 ((_ is Cons!15203) (rules!11744 thiss!10022))) b!1465776))

(declare-fun order!9169 () Int)

(declare-fun order!9171 () Int)

(declare-fun lambda!63367 () Int)

(declare-fun dynLambda!6943 (Int Int) Int)

(declare-fun dynLambda!6944 (Int Int) Int)

(assert (=> b!1465778 (< (dynLambda!6943 order!9169 (toValue!3988 (transformation!2677 (h!20604 (rules!11744 thiss!10022))))) (dynLambda!6944 order!9171 lambda!63367))))

(declare-fun order!9173 () Int)

(declare-fun dynLambda!6945 (Int Int) Int)

(assert (=> b!1465778 (< (dynLambda!6945 order!9173 (toChars!3847 (transformation!2677 (h!20604 (rules!11744 thiss!10022))))) (dynLambda!6944 order!9171 lambda!63367))))

(assert (=> d!430250 true))

(declare-fun lt!510010 () Bool)

(declare-fun forall!3748 (List!15268 Int) Bool)

(assert (=> d!430250 (= lt!510010 (forall!3748 lt!509802 lambda!63367))))

(declare-fun e!934997 () Bool)

(assert (=> d!430250 (= lt!510010 e!934997)))

(declare-fun res!663588 () Bool)

(assert (=> d!430250 (=> res!663588 e!934997)))

(assert (=> d!430250 (= res!663588 (not ((_ is Cons!15202) lt!509802)))))

(assert (=> d!430250 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430250 (= (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!509802) lt!510010)))

(declare-fun b!1465766 () Bool)

(declare-fun e!934996 () Bool)

(assert (=> b!1465766 (= e!934997 e!934996)))

(declare-fun res!663589 () Bool)

(assert (=> b!1465766 (=> (not res!663589) (not e!934996))))

(assert (=> b!1465766 (= res!663589 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (h!20603 lt!509802)))))

(declare-fun b!1465767 () Bool)

(assert (=> b!1465767 (= e!934996 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) (t!134959 lt!509802)))))

(assert (= (and d!430250 (not res!663588)) b!1465766))

(assert (= (and b!1465766 res!663589) b!1465767))

(declare-fun m!1709653 () Bool)

(assert (=> d!430250 m!1709653))

(assert (=> d!430250 m!1709487))

(assert (=> b!1465766 m!1709563))

(declare-fun m!1709655 () Bool)

(assert (=> b!1465767 m!1709655))

(assert (=> b!1465590 d!430250))

(declare-fun d!430264 () Bool)

(declare-fun e!935009 () Bool)

(assert (=> d!430264 e!935009))

(declare-fun res!663601 () Bool)

(assert (=> d!430264 (=> (not res!663601) (not e!935009))))

(declare-fun appendAssocInst!341 (Conc!5181 Conc!5181) Bool)

(assert (=> d!430264 (= res!663601 (appendAssocInst!341 (c!241668 (tokens!2124 thiss!10022)) (c!241668 (tokens!2124 other!32))))))

(declare-fun lt!510013 () BalanceConc!10302)

(declare-fun ++!4109 (Conc!5181 Conc!5181) Conc!5181)

(assert (=> d!430264 (= lt!510013 (BalanceConc!10303 (++!4109 (c!241668 (tokens!2124 thiss!10022)) (c!241668 (tokens!2124 other!32)))))))

(assert (=> d!430264 (= (++!4104 (tokens!2124 thiss!10022) (tokens!2124 other!32)) lt!510013)))

(declare-fun b!1465792 () Bool)

(assert (=> b!1465792 (= e!935009 (= (list!6094 lt!510013) (++!4105 (list!6094 (tokens!2124 thiss!10022)) (list!6094 (tokens!2124 other!32)))))))

(declare-fun b!1465790 () Bool)

(declare-fun res!663598 () Bool)

(assert (=> b!1465790 (=> (not res!663598) (not e!935009))))

(declare-fun height!782 (Conc!5181) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1465790 (= res!663598 (<= (height!782 (++!4109 (c!241668 (tokens!2124 thiss!10022)) (c!241668 (tokens!2124 other!32)))) (+ (max!0 (height!782 (c!241668 (tokens!2124 thiss!10022))) (height!782 (c!241668 (tokens!2124 other!32)))) 1)))))

(declare-fun b!1465789 () Bool)

(declare-fun res!663600 () Bool)

(assert (=> b!1465789 (=> (not res!663600) (not e!935009))))

(assert (=> b!1465789 (= res!663600 (isBalanced!1559 (++!4109 (c!241668 (tokens!2124 thiss!10022)) (c!241668 (tokens!2124 other!32)))))))

(declare-fun b!1465791 () Bool)

(declare-fun res!663599 () Bool)

(assert (=> b!1465791 (=> (not res!663599) (not e!935009))))

(assert (=> b!1465791 (= res!663599 (>= (height!782 (++!4109 (c!241668 (tokens!2124 thiss!10022)) (c!241668 (tokens!2124 other!32)))) (max!0 (height!782 (c!241668 (tokens!2124 thiss!10022))) (height!782 (c!241668 (tokens!2124 other!32))))))))

(assert (= (and d!430264 res!663601) b!1465789))

(assert (= (and b!1465789 res!663600) b!1465790))

(assert (= (and b!1465790 res!663598) b!1465791))

(assert (= (and b!1465791 res!663599) b!1465792))

(declare-fun m!1709657 () Bool)

(assert (=> b!1465790 m!1709657))

(declare-fun m!1709659 () Bool)

(assert (=> b!1465790 m!1709659))

(declare-fun m!1709661 () Bool)

(assert (=> b!1465790 m!1709661))

(declare-fun m!1709663 () Bool)

(assert (=> b!1465790 m!1709663))

(declare-fun m!1709665 () Bool)

(assert (=> b!1465790 m!1709665))

(assert (=> b!1465790 m!1709663))

(assert (=> b!1465790 m!1709657))

(assert (=> b!1465790 m!1709659))

(assert (=> b!1465791 m!1709657))

(assert (=> b!1465791 m!1709659))

(assert (=> b!1465791 m!1709661))

(assert (=> b!1465791 m!1709663))

(assert (=> b!1465791 m!1709665))

(assert (=> b!1465791 m!1709663))

(assert (=> b!1465791 m!1709657))

(assert (=> b!1465791 m!1709659))

(assert (=> b!1465789 m!1709663))

(assert (=> b!1465789 m!1709663))

(declare-fun m!1709667 () Bool)

(assert (=> b!1465789 m!1709667))

(declare-fun m!1709669 () Bool)

(assert (=> d!430264 m!1709669))

(assert (=> d!430264 m!1709663))

(declare-fun m!1709671 () Bool)

(assert (=> b!1465792 m!1709671))

(assert (=> b!1465792 m!1709313))

(assert (=> b!1465792 m!1709307))

(assert (=> b!1465792 m!1709313))

(assert (=> b!1465792 m!1709307))

(declare-fun m!1709673 () Bool)

(assert (=> b!1465792 m!1709673))

(assert (=> b!1465590 d!430264))

(declare-fun b!1465822 () Bool)

(declare-fun res!663637 () Bool)

(declare-fun e!935031 () Bool)

(assert (=> b!1465822 (=> (not res!663637) (not e!935031))))

(declare-fun lt!510122 () List!15268)

(declare-fun lt!510102 () List!15268)

(declare-fun subseq!371 (List!15268 List!15268) Bool)

(assert (=> b!1465822 (= res!663637 (subseq!371 lt!510122 lt!510102))))

(declare-fun b!1465823 () Bool)

(assert (=> b!1465823 (= e!935031 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!510102))))

(declare-fun b!1465824 () Bool)

(declare-fun e!935030 () Bool)

(declare-fun lt!510117 () List!15268)

(assert (=> b!1465824 (= e!935030 (<= 0 (size!12442 lt!510117)))))

(declare-fun b!1465825 () Bool)

(declare-fun res!663635 () Bool)

(assert (=> b!1465825 (=> (not res!663635) (not e!935031))))

(assert (=> b!1465825 (= res!663635 (rulesInvariant!2166 Lexer!2331 (rules!11744 thiss!10022)))))

(declare-fun b!1465826 () Bool)

(declare-fun e!935029 () Bool)

(assert (=> b!1465826 (= e!935029 (<= 0 (size!12440 lt!509797)))))

(declare-fun b!1465827 () Bool)

(declare-fun e!935032 () Bool)

(assert (=> b!1465827 (= e!935032 (tokensListTwoByTwoPredicateSeparable!140 Lexer!2331 lt!509797 (+ 0 1) (rules!11744 thiss!10022)))))

(declare-fun b!1465828 () Bool)

(declare-fun e!935028 () Bool)

(assert (=> b!1465828 (= e!935028 e!935032)))

(declare-fun res!663633 () Bool)

(assert (=> b!1465828 (=> (not res!663633) (not e!935032))))

(assert (=> b!1465828 (= res!663633 (separableTokensPredicate!542 Lexer!2331 (apply!3984 lt!509797 0) (apply!3984 lt!509797 (+ 0 1)) (rules!11744 thiss!10022)))))

(declare-fun lt!510129 () Unit!24897)

(declare-fun Unit!24922 () Unit!24897)

(assert (=> b!1465828 (= lt!510129 Unit!24922)))

(assert (=> b!1465828 (> (size!12441 (charsOf!1540 (apply!3984 lt!509797 (+ 0 1)))) 0)))

(declare-fun lt!510106 () Unit!24897)

(declare-fun Unit!24923 () Unit!24897)

(assert (=> b!1465828 (= lt!510106 Unit!24923)))

(assert (=> b!1465828 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (apply!3984 lt!509797 (+ 0 1)))))

(declare-fun lt!510113 () Unit!24897)

(declare-fun Unit!24925 () Unit!24897)

(assert (=> b!1465828 (= lt!510113 Unit!24925)))

(assert (=> b!1465828 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) (apply!3984 lt!509797 0))))

(declare-fun lt!510105 () Unit!24897)

(declare-fun lt!510111 () Unit!24897)

(assert (=> b!1465828 (= lt!510105 lt!510111)))

(declare-fun lt!510120 () Token!5016)

(assert (=> b!1465828 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!510120)))

(declare-fun lt!510104 () List!15268)

(assert (=> b!1465828 (= lt!510111 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!510104 lt!510120))))

(assert (=> b!1465828 (= lt!510120 (apply!3984 lt!509797 (+ 0 1)))))

(assert (=> b!1465828 (= lt!510104 (list!6094 lt!509797))))

(declare-fun lt!510119 () Unit!24897)

(declare-fun lt!510116 () Unit!24897)

(assert (=> b!1465828 (= lt!510119 lt!510116)))

(declare-fun lt!510115 () Token!5016)

(assert (=> b!1465828 (rulesProduceIndividualToken!1252 Lexer!2331 (rules!11744 thiss!10022) lt!510115)))

(declare-fun lt!510133 () List!15268)

(assert (=> b!1465828 (= lt!510116 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!435 Lexer!2331 (rules!11744 thiss!10022) lt!510133 lt!510115))))

(assert (=> b!1465828 (= lt!510115 (apply!3984 lt!509797 0))))

(assert (=> b!1465828 (= lt!510133 (list!6094 lt!509797))))

(declare-fun lt!510108 () Unit!24897)

(declare-fun lt!510123 () Unit!24897)

(assert (=> b!1465828 (= lt!510108 lt!510123)))

(declare-fun lt!510131 () List!15268)

(declare-fun lt!510107 () Int)

(declare-fun tail!2182 (List!15268) List!15268)

(declare-fun drop!748 (List!15268 Int) List!15268)

(assert (=> b!1465828 (= (tail!2182 (drop!748 lt!510131 lt!510107)) (drop!748 lt!510131 (+ lt!510107 1)))))

(declare-fun lemmaDropTail!478 (List!15268 Int) Unit!24897)

(assert (=> b!1465828 (= lt!510123 (lemmaDropTail!478 lt!510131 lt!510107))))

(assert (=> b!1465828 (= lt!510107 (+ 0 1))))

(assert (=> b!1465828 (= lt!510131 (list!6094 lt!509797))))

(declare-fun lt!510101 () Unit!24897)

(declare-fun lt!510128 () Unit!24897)

(assert (=> b!1465828 (= lt!510101 lt!510128)))

(declare-fun lt!510103 () List!15268)

(assert (=> b!1465828 (= (tail!2182 (drop!748 lt!510103 0)) (drop!748 lt!510103 (+ 0 1)))))

(assert (=> b!1465828 (= lt!510128 (lemmaDropTail!478 lt!510103 0))))

(assert (=> b!1465828 (= lt!510103 (list!6094 lt!509797))))

(declare-fun lt!510121 () Unit!24897)

(declare-fun lt!510114 () Unit!24897)

(assert (=> b!1465828 (= lt!510121 lt!510114)))

(declare-fun lt!510110 () List!15268)

(declare-fun lt!510126 () Int)

(declare-fun apply!3985 (List!15268 Int) Token!5016)

(assert (=> b!1465828 (= (head!3032 (drop!748 lt!510110 lt!510126)) (apply!3985 lt!510110 lt!510126))))

(declare-fun lemmaDropApply!498 (List!15268 Int) Unit!24897)

(assert (=> b!1465828 (= lt!510114 (lemmaDropApply!498 lt!510110 lt!510126))))

(assert (=> b!1465828 (= lt!510126 (+ 0 1))))

(assert (=> b!1465828 (= lt!510110 (list!6094 lt!509797))))

(declare-fun lt!510132 () Unit!24897)

(declare-fun lt!510125 () Unit!24897)

(assert (=> b!1465828 (= lt!510132 lt!510125)))

(declare-fun lt!510124 () List!15268)

(assert (=> b!1465828 (= (head!3032 (drop!748 lt!510124 0)) (apply!3985 lt!510124 0))))

(assert (=> b!1465828 (= lt!510125 (lemmaDropApply!498 lt!510124 0))))

(assert (=> b!1465828 (= lt!510124 (list!6094 lt!509797))))

(declare-fun d!430266 () Bool)

(declare-fun lt!510112 () Bool)

(declare-fun dropList!488 (BalanceConc!10302 Int) List!15268)

(assert (=> d!430266 (= lt!510112 (tokensListTwoByTwoPredicateSeparableList!251 Lexer!2331 (dropList!488 lt!509797 0) (rules!11744 thiss!10022)))))

(declare-fun lt!510130 () Unit!24897)

(declare-fun lt!510127 () Unit!24897)

(assert (=> d!430266 (= lt!510130 lt!510127)))

(assert (=> d!430266 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!510122)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!66 (LexerInterface!2333 List!15269 List!15268 List!15268) Unit!24897)

(assert (=> d!430266 (= lt!510127 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!66 Lexer!2331 (rules!11744 thiss!10022) lt!510102 lt!510122))))

(assert (=> d!430266 e!935031))

(declare-fun res!663631 () Bool)

(assert (=> d!430266 (=> (not res!663631) (not e!935031))))

(assert (=> d!430266 (= res!663631 ((_ is Lexer!2331) Lexer!2331))))

(assert (=> d!430266 (= lt!510122 (dropList!488 lt!509797 0))))

(assert (=> d!430266 (= lt!510102 (list!6094 lt!509797))))

(declare-fun lt!510109 () Unit!24897)

(declare-fun lt!510118 () Unit!24897)

(assert (=> d!430266 (= lt!510109 lt!510118)))

(assert (=> d!430266 (subseq!371 (drop!748 lt!510117 0) lt!510117)))

(declare-fun lemmaDropSubSeq!66 (List!15268 Int) Unit!24897)

(assert (=> d!430266 (= lt!510118 (lemmaDropSubSeq!66 lt!510117 0))))

(assert (=> d!430266 e!935030))

(declare-fun res!663636 () Bool)

(assert (=> d!430266 (=> (not res!663636) (not e!935030))))

(assert (=> d!430266 (= res!663636 (>= 0 0))))

(assert (=> d!430266 (= lt!510117 (list!6094 lt!509797))))

(assert (=> d!430266 (= lt!510112 e!935028)))

(declare-fun res!663634 () Bool)

(assert (=> d!430266 (=> res!663634 e!935028)))

(assert (=> d!430266 (= res!663634 (not (< 0 (- (size!12440 lt!509797) 1))))))

(assert (=> d!430266 e!935029))

(declare-fun res!663632 () Bool)

(assert (=> d!430266 (=> (not res!663632) (not e!935029))))

(assert (=> d!430266 (= res!663632 (>= 0 0))))

(assert (=> d!430266 (= (tokensListTwoByTwoPredicateSeparable!140 Lexer!2331 lt!509797 0 (rules!11744 thiss!10022)) lt!510112)))

(declare-fun b!1465821 () Bool)

(declare-fun res!663630 () Bool)

(assert (=> b!1465821 (=> (not res!663630) (not e!935031))))

(assert (=> b!1465821 (= res!663630 (not (isEmpty!9559 (rules!11744 thiss!10022))))))

(assert (= (and d!430266 res!663632) b!1465826))

(assert (= (and d!430266 (not res!663634)) b!1465828))

(assert (= (and b!1465828 res!663633) b!1465827))

(assert (= (and d!430266 res!663636) b!1465824))

(assert (= (and d!430266 res!663631) b!1465821))

(assert (= (and b!1465821 res!663630) b!1465825))

(assert (= (and b!1465825 res!663635) b!1465822))

(assert (= (and b!1465822 res!663637) b!1465823))

(declare-fun m!1709745 () Bool)

(assert (=> b!1465822 m!1709745))

(declare-fun m!1709747 () Bool)

(assert (=> b!1465828 m!1709747))

(declare-fun m!1709749 () Bool)

(assert (=> b!1465828 m!1709749))

(declare-fun m!1709751 () Bool)

(assert (=> b!1465828 m!1709751))

(declare-fun m!1709753 () Bool)

(assert (=> b!1465828 m!1709753))

(declare-fun m!1709755 () Bool)

(assert (=> b!1465828 m!1709755))

(declare-fun m!1709757 () Bool)

(assert (=> b!1465828 m!1709757))

(declare-fun m!1709759 () Bool)

(assert (=> b!1465828 m!1709759))

(assert (=> b!1465828 m!1709285))

(declare-fun m!1709761 () Bool)

(assert (=> b!1465828 m!1709761))

(declare-fun m!1709763 () Bool)

(assert (=> b!1465828 m!1709763))

(declare-fun m!1709765 () Bool)

(assert (=> b!1465828 m!1709765))

(declare-fun m!1709767 () Bool)

(assert (=> b!1465828 m!1709767))

(assert (=> b!1465828 m!1709749))

(assert (=> b!1465828 m!1709765))

(declare-fun m!1709769 () Bool)

(assert (=> b!1465828 m!1709769))

(declare-fun m!1709771 () Bool)

(assert (=> b!1465828 m!1709771))

(declare-fun m!1709773 () Bool)

(assert (=> b!1465828 m!1709773))

(declare-fun m!1709775 () Bool)

(assert (=> b!1465828 m!1709775))

(declare-fun m!1709777 () Bool)

(assert (=> b!1465828 m!1709777))

(assert (=> b!1465828 m!1709773))

(declare-fun m!1709779 () Bool)

(assert (=> b!1465828 m!1709779))

(declare-fun m!1709781 () Bool)

(assert (=> b!1465828 m!1709781))

(assert (=> b!1465828 m!1709761))

(assert (=> b!1465828 m!1709761))

(declare-fun m!1709783 () Bool)

(assert (=> b!1465828 m!1709783))

(declare-fun m!1709785 () Bool)

(assert (=> b!1465828 m!1709785))

(declare-fun m!1709787 () Bool)

(assert (=> b!1465828 m!1709787))

(assert (=> b!1465828 m!1709785))

(declare-fun m!1709789 () Bool)

(assert (=> b!1465828 m!1709789))

(declare-fun m!1709791 () Bool)

(assert (=> b!1465828 m!1709791))

(declare-fun m!1709793 () Bool)

(assert (=> b!1465828 m!1709793))

(assert (=> b!1465828 m!1709763))

(declare-fun m!1709795 () Bool)

(assert (=> b!1465828 m!1709795))

(assert (=> b!1465828 m!1709765))

(assert (=> b!1465828 m!1709761))

(declare-fun m!1709797 () Bool)

(assert (=> b!1465828 m!1709797))

(assert (=> b!1465828 m!1709779))

(declare-fun m!1709799 () Bool)

(assert (=> b!1465828 m!1709799))

(declare-fun m!1709801 () Bool)

(assert (=> b!1465823 m!1709801))

(assert (=> b!1465821 m!1709487))

(declare-fun m!1709803 () Bool)

(assert (=> b!1465826 m!1709803))

(declare-fun m!1709805 () Bool)

(assert (=> b!1465827 m!1709805))

(declare-fun m!1709807 () Bool)

(assert (=> d!430266 m!1709807))

(declare-fun m!1709809 () Bool)

(assert (=> d!430266 m!1709809))

(assert (=> d!430266 m!1709803))

(assert (=> d!430266 m!1709285))

(declare-fun m!1709811 () Bool)

(assert (=> d!430266 m!1709811))

(declare-fun m!1709813 () Bool)

(assert (=> d!430266 m!1709813))

(declare-fun m!1709815 () Bool)

(assert (=> d!430266 m!1709815))

(assert (=> d!430266 m!1709813))

(declare-fun m!1709817 () Bool)

(assert (=> d!430266 m!1709817))

(assert (=> d!430266 m!1709815))

(declare-fun m!1709819 () Bool)

(assert (=> d!430266 m!1709819))

(assert (=> b!1465825 m!1709385))

(declare-fun m!1709821 () Bool)

(assert (=> b!1465824 m!1709821))

(assert (=> b!1465590 d!430266))

(declare-fun b!1465847 () Bool)

(declare-fun res!663656 () Bool)

(declare-fun e!935039 () Bool)

(assert (=> b!1465847 (=> (not res!663656) (not e!935039))))

(assert (=> b!1465847 (= res!663656 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!509807))))

(declare-fun d!430288 () Bool)

(assert (=> d!430288 e!935039))

(declare-fun res!663657 () Bool)

(assert (=> d!430288 (=> (not res!663657) (not e!935039))))

(assert (=> d!430288 (= res!663657 ((_ is Lexer!2331) Lexer!2331))))

(declare-fun lt!510142 () Unit!24897)

(declare-fun choose!9022 (LexerInterface!2333 List!15268 List!15268 List!15269) Unit!24897)

(assert (=> d!430288 (= lt!510142 (choose!9022 Lexer!2331 lt!509791 lt!509807 (rules!11744 thiss!10022)))))

(assert (=> d!430288 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430288 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!58 Lexer!2331 lt!509791 lt!509807 (rules!11744 thiss!10022)) lt!510142)))

(declare-fun b!1465848 () Bool)

(assert (=> b!1465848 (= e!935039 (tokensListTwoByTwoPredicateSeparableList!251 Lexer!2331 (++!4105 lt!509791 lt!509807) (rules!11744 thiss!10022)))))

(declare-fun lt!510141 () Unit!24897)

(declare-fun lt!510143 () Unit!24897)

(assert (=> b!1465848 (= lt!510141 lt!510143)))

(assert (=> b!1465848 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) (++!4105 lt!509791 lt!509807))))

(assert (=> b!1465848 (= lt!510143 (lemmaRulesProduceEachTokenIndividuallyConcat!58 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509807))))

(declare-fun b!1465846 () Bool)

(declare-fun res!663655 () Bool)

(assert (=> b!1465846 (=> (not res!663655) (not e!935039))))

(assert (=> b!1465846 (= res!663655 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) lt!509791))))

(declare-fun b!1465845 () Bool)

(declare-fun res!663654 () Bool)

(assert (=> b!1465845 (=> (not res!663654) (not e!935039))))

(assert (=> b!1465845 (= res!663654 (rulesInvariant!2166 Lexer!2331 (rules!11744 thiss!10022)))))

(assert (= (and d!430288 res!663657) b!1465845))

(assert (= (and b!1465845 res!663654) b!1465846))

(assert (= (and b!1465846 res!663655) b!1465847))

(assert (= (and b!1465847 res!663656) b!1465848))

(declare-fun m!1709837 () Bool)

(assert (=> b!1465847 m!1709837))

(assert (=> b!1465845 m!1709385))

(declare-fun m!1709839 () Bool)

(assert (=> b!1465846 m!1709839))

(declare-fun m!1709841 () Bool)

(assert (=> d!430288 m!1709841))

(assert (=> d!430288 m!1709487))

(assert (=> b!1465848 m!1709251))

(assert (=> b!1465848 m!1709251))

(declare-fun m!1709843 () Bool)

(assert (=> b!1465848 m!1709843))

(assert (=> b!1465848 m!1709251))

(declare-fun m!1709845 () Bool)

(assert (=> b!1465848 m!1709845))

(assert (=> b!1465848 m!1709259))

(assert (=> b!1465590 d!430288))

(declare-fun d!430296 () Bool)

(assert (=> d!430296 (rulesProduceEachTokenIndividuallyList!752 Lexer!2331 (rules!11744 thiss!10022) (++!4105 lt!509791 lt!509807))))

(declare-fun lt!510146 () Unit!24897)

(declare-fun choose!9023 (LexerInterface!2333 List!15269 List!15268 List!15268) Unit!24897)

(assert (=> d!430296 (= lt!510146 (choose!9023 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509807))))

(assert (=> d!430296 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430296 (= (lemmaRulesProduceEachTokenIndividuallyConcat!58 Lexer!2331 (rules!11744 thiss!10022) lt!509791 lt!509807) lt!510146)))

(declare-fun bs!344815 () Bool)

(assert (= bs!344815 d!430296))

(assert (=> bs!344815 m!1709251))

(assert (=> bs!344815 m!1709251))

(assert (=> bs!344815 m!1709845))

(declare-fun m!1709847 () Bool)

(assert (=> bs!344815 m!1709847))

(assert (=> bs!344815 m!1709487))

(assert (=> b!1465590 d!430296))

(declare-fun d!430298 () Bool)

(declare-fun e!935056 () Bool)

(assert (=> d!430298 e!935056))

(declare-fun res!663677 () Bool)

(assert (=> d!430298 (=> (not res!663677) (not e!935056))))

(declare-fun lt!510163 () BalanceConc!10300)

(assert (=> d!430298 (= res!663677 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 lt!509799) lt!510163))) (list!6094 (tokens!2124 lt!509799))))))

(assert (=> d!430298 (= lt!510163 (print!1111 Lexer!2331 (tokens!2124 lt!509799)))))

(declare-fun lt!510164 () Unit!24897)

(assert (=> d!430298 (= lt!510164 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 lt!509799) (list!6094 (tokens!2124 lt!509799))))))

(assert (=> d!430298 (= (print!1110 lt!509799) lt!510163)))

(declare-fun b!1465880 () Bool)

(declare-fun isEmpty!9563 (List!15266) Bool)

(assert (=> b!1465880 (= e!935056 (isEmpty!9563 (list!6095 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 lt!509799) lt!510163)))))))

(assert (= (and d!430298 res!663677) b!1465880))

(declare-fun m!1709927 () Bool)

(assert (=> d!430298 m!1709927))

(declare-fun m!1709929 () Bool)

(assert (=> d!430298 m!1709929))

(assert (=> d!430298 m!1709927))

(declare-fun m!1709931 () Bool)

(assert (=> d!430298 m!1709931))

(declare-fun m!1709933 () Bool)

(assert (=> d!430298 m!1709933))

(declare-fun m!1709935 () Bool)

(assert (=> d!430298 m!1709935))

(assert (=> b!1465880 m!1709935))

(declare-fun m!1709937 () Bool)

(assert (=> b!1465880 m!1709937))

(assert (=> b!1465880 m!1709937))

(declare-fun m!1709939 () Bool)

(assert (=> b!1465880 m!1709939))

(assert (=> b!1465579 d!430298))

(declare-fun d!430328 () Bool)

(declare-fun c!241699 () Bool)

(assert (=> d!430328 (= c!241699 ((_ is Cons!15202) lt!509802))))

(declare-fun e!935059 () List!15266)

(assert (=> d!430328 (= (printList!729 Lexer!2331 lt!509802) e!935059)))

(declare-fun b!1465885 () Bool)

(assert (=> b!1465885 (= e!935059 (++!4103 (list!6095 (charsOf!1540 (h!20603 lt!509802))) (printList!729 Lexer!2331 (t!134959 lt!509802))))))

(declare-fun b!1465886 () Bool)

(assert (=> b!1465886 (= e!935059 Nil!15200)))

(assert (= (and d!430328 c!241699) b!1465885))

(assert (= (and d!430328 (not c!241699)) b!1465886))

(declare-fun m!1709941 () Bool)

(assert (=> b!1465885 m!1709941))

(assert (=> b!1465885 m!1709941))

(declare-fun m!1709943 () Bool)

(assert (=> b!1465885 m!1709943))

(declare-fun m!1709945 () Bool)

(assert (=> b!1465885 m!1709945))

(assert (=> b!1465885 m!1709943))

(assert (=> b!1465885 m!1709945))

(declare-fun m!1709947 () Bool)

(assert (=> b!1465885 m!1709947))

(assert (=> b!1465579 d!430328))

(declare-fun d!430330 () Bool)

(declare-fun c!241700 () Bool)

(assert (=> d!430330 (= c!241700 ((_ is Cons!15202) lt!509807))))

(declare-fun e!935060 () List!15266)

(assert (=> d!430330 (= (printList!729 Lexer!2331 lt!509807) e!935060)))

(declare-fun b!1465887 () Bool)

(assert (=> b!1465887 (= e!935060 (++!4103 (list!6095 (charsOf!1540 (h!20603 lt!509807))) (printList!729 Lexer!2331 (t!134959 lt!509807))))))

(declare-fun b!1465888 () Bool)

(assert (=> b!1465888 (= e!935060 Nil!15200)))

(assert (= (and d!430330 c!241700) b!1465887))

(assert (= (and d!430330 (not c!241700)) b!1465888))

(declare-fun m!1709949 () Bool)

(assert (=> b!1465887 m!1709949))

(assert (=> b!1465887 m!1709949))

(declare-fun m!1709951 () Bool)

(assert (=> b!1465887 m!1709951))

(declare-fun m!1709953 () Bool)

(assert (=> b!1465887 m!1709953))

(assert (=> b!1465887 m!1709951))

(assert (=> b!1465887 m!1709953))

(declare-fun m!1709955 () Bool)

(assert (=> b!1465887 m!1709955))

(assert (=> b!1465579 d!430330))

(declare-fun d!430332 () Bool)

(assert (=> d!430332 (= (isEmpty!9553 lt!509803) (not ((_ is Some!2882) lt!509803)))))

(assert (=> b!1465579 d!430332))

(declare-fun d!430334 () Bool)

(declare-fun c!241701 () Bool)

(assert (=> d!430334 (= c!241701 ((_ is Cons!15202) lt!509791))))

(declare-fun e!935061 () List!15266)

(assert (=> d!430334 (= (printList!729 Lexer!2331 lt!509791) e!935061)))

(declare-fun b!1465889 () Bool)

(assert (=> b!1465889 (= e!935061 (++!4103 (list!6095 (charsOf!1540 (h!20603 lt!509791))) (printList!729 Lexer!2331 (t!134959 lt!509791))))))

(declare-fun b!1465890 () Bool)

(assert (=> b!1465890 (= e!935061 Nil!15200)))

(assert (= (and d!430334 c!241701) b!1465889))

(assert (= (and d!430334 (not c!241701)) b!1465890))

(declare-fun m!1709957 () Bool)

(assert (=> b!1465889 m!1709957))

(assert (=> b!1465889 m!1709957))

(declare-fun m!1709959 () Bool)

(assert (=> b!1465889 m!1709959))

(declare-fun m!1709961 () Bool)

(assert (=> b!1465889 m!1709961))

(assert (=> b!1465889 m!1709959))

(assert (=> b!1465889 m!1709961))

(declare-fun m!1709963 () Bool)

(assert (=> b!1465889 m!1709963))

(assert (=> b!1465579 d!430334))

(declare-fun d!430336 () Bool)

(declare-fun e!935103 () Bool)

(assert (=> d!430336 e!935103))

(declare-fun res!663686 () Bool)

(assert (=> d!430336 (=> (not res!663686) (not e!935103))))

(declare-fun seqFromList!1720 (List!15268) BalanceConc!10302)

(assert (=> d!430336 (= res!663686 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (seqFromList!1720 (list!6094 lt!509797)))))) (list!6094 lt!509797)))))

(declare-fun lt!510375 () Unit!24897)

(declare-fun e!935102 () Unit!24897)

(assert (=> d!430336 (= lt!510375 e!935102)))

(declare-fun c!241710 () Bool)

(assert (=> d!430336 (= c!241710 (or ((_ is Nil!15202) (list!6094 lt!509797)) ((_ is Nil!15202) (t!134959 (list!6094 lt!509797)))))))

(assert (=> d!430336 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430336 (= (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) (list!6094 lt!509797)) lt!510375)))

(declare-fun b!1465943 () Bool)

(declare-fun Unit!24943 () Unit!24897)

(assert (=> b!1465943 (= e!935102 Unit!24943)))

(declare-fun b!1465944 () Bool)

(declare-fun Unit!24945 () Unit!24897)

(assert (=> b!1465944 (= e!935102 Unit!24945)))

(declare-fun lt!510352 () BalanceConc!10300)

(assert (=> b!1465944 (= lt!510352 (print!1111 Lexer!2331 (seqFromList!1720 (list!6094 lt!509797))))))

(declare-fun lt!510361 () BalanceConc!10300)

(assert (=> b!1465944 (= lt!510361 (print!1111 Lexer!2331 (seqFromList!1720 (t!134959 (list!6094 lt!509797)))))))

(declare-fun lt!510357 () tuple2!14266)

(assert (=> b!1465944 (= lt!510357 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) lt!510361))))

(declare-fun lt!510360 () List!15266)

(assert (=> b!1465944 (= lt!510360 (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797)))))))

(declare-fun lt!510351 () List!15266)

(assert (=> b!1465944 (= lt!510351 (list!6095 lt!510361))))

(declare-fun lt!510368 () Unit!24897)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!770 (List!15266 List!15266) Unit!24897)

(assert (=> b!1465944 (= lt!510368 (lemmaConcatTwoListThenFirstIsPrefix!770 lt!510360 lt!510351))))

(declare-fun isPrefix!1207 (List!15266 List!15266) Bool)

(assert (=> b!1465944 (isPrefix!1207 lt!510360 (++!4103 lt!510360 lt!510351))))

(declare-fun lt!510366 () Unit!24897)

(assert (=> b!1465944 (= lt!510366 lt!510368)))

(declare-fun lt!510359 () Unit!24897)

(assert (=> b!1465944 (= lt!510359 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) (t!134959 (list!6094 lt!509797))))))

(declare-fun lt!510369 () Unit!24897)

(declare-fun seqFromListBHdTlConstructive!99 (Token!5016 List!15268 BalanceConc!10302) Unit!24897)

(assert (=> b!1465944 (= lt!510369 (seqFromListBHdTlConstructive!99 (h!20603 (t!134959 (list!6094 lt!509797))) (t!134959 (t!134959 (list!6094 lt!509797))) (_1!8019 lt!510357)))))

(declare-fun prepend!433 (BalanceConc!10302 Token!5016) BalanceConc!10302)

(assert (=> b!1465944 (= (list!6094 (_1!8019 lt!510357)) (list!6094 (prepend!433 (seqFromList!1720 (t!134959 (t!134959 (list!6094 lt!509797)))) (h!20603 (t!134959 (list!6094 lt!509797))))))))

(declare-fun lt!510362 () Unit!24897)

(assert (=> b!1465944 (= lt!510362 lt!510369)))

(declare-datatypes ((tuple2!14270 0))(
  ( (tuple2!14271 (_1!8021 Token!5016) (_2!8021 List!15266)) )
))
(declare-datatypes ((Option!2885 0))(
  ( (None!2884) (Some!2884 (v!22532 tuple2!14270)) )
))
(declare-fun lt!510364 () Option!2885)

(declare-fun maxPrefix!1197 (LexerInterface!2333 List!15269 List!15266) Option!2885)

(assert (=> b!1465944 (= lt!510364 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 lt!510352)))))

(declare-fun printTailRec!701 (LexerInterface!2333 BalanceConc!10302 Int BalanceConc!10300) BalanceConc!10300)

(assert (=> b!1465944 (= (print!1111 Lexer!2331 (singletonSeq!1286 (h!20603 (list!6094 lt!509797)))) (printTailRec!701 Lexer!2331 (singletonSeq!1286 (h!20603 (list!6094 lt!509797))) 0 (BalanceConc!10301 Empty!5180)))))

(declare-fun lt!510374 () Unit!24897)

(declare-fun Unit!24950 () Unit!24897)

(assert (=> b!1465944 (= lt!510374 Unit!24950)))

(declare-fun lt!510354 () Unit!24897)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!243 (LexerInterface!2333 List!15269 List!15266 List!15266) Unit!24897)

(assert (=> b!1465944 (= lt!510354 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!243 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797)))) (list!6095 lt!510361)))))

(assert (=> b!1465944 (= (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797)))) (originalCharacters!3539 (h!20603 (list!6094 lt!509797))))))

(declare-fun lt!510353 () Unit!24897)

(declare-fun Unit!24952 () Unit!24897)

(assert (=> b!1465944 (= lt!510353 Unit!24952)))

(declare-fun head!3036 (List!15266) C!8160)

(assert (=> b!1465944 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 (list!6094 lt!509797)))) 0))) (Cons!15200 (head!3036 (originalCharacters!3539 (h!20603 (t!134959 (list!6094 lt!509797))))) Nil!15200))))

(declare-fun lt!510356 () Unit!24897)

(declare-fun Unit!24955 () Unit!24897)

(assert (=> b!1465944 (= lt!510356 Unit!24955)))

(assert (=> b!1465944 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 (list!6094 lt!509797)))) 0))) (Cons!15200 (head!3036 (list!6095 lt!510361)) Nil!15200))))

(declare-fun lt!510370 () Unit!24897)

(declare-fun Unit!24957 () Unit!24897)

(assert (=> b!1465944 (= lt!510370 Unit!24957)))

(declare-fun head!3037 (BalanceConc!10300) C!8160)

(assert (=> b!1465944 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 (list!6094 lt!509797)))) 0))) (Cons!15200 (head!3037 lt!510361) Nil!15200))))

(declare-fun lt!510365 () Unit!24897)

(declare-fun Unit!24959 () Unit!24897)

(assert (=> b!1465944 (= lt!510365 Unit!24959)))

(declare-fun isDefined!2332 (Option!2885) Bool)

(assert (=> b!1465944 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (originalCharacters!3539 (h!20603 (list!6094 lt!509797)))))))

(declare-fun lt!510372 () Unit!24897)

(declare-fun Unit!24961 () Unit!24897)

(assert (=> b!1465944 (= lt!510372 Unit!24961)))

(assert (=> b!1465944 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797))))))))

(declare-fun lt!510358 () Unit!24897)

(declare-fun Unit!24963 () Unit!24897)

(assert (=> b!1465944 (= lt!510358 Unit!24963)))

(declare-fun lt!510350 () Unit!24897)

(declare-fun Unit!24965 () Unit!24897)

(assert (=> b!1465944 (= lt!510350 Unit!24965)))

(declare-fun get!4628 (Option!2885) tuple2!14270)

(assert (=> b!1465944 (= (_1!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797))))))) (h!20603 (list!6094 lt!509797)))))

(declare-fun lt!510355 () Unit!24897)

(declare-fun Unit!24967 () Unit!24897)

(assert (=> b!1465944 (= lt!510355 Unit!24967)))

(assert (=> b!1465944 (isEmpty!9563 (_2!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797))))))))))

(declare-fun lt!510367 () Unit!24897)

(declare-fun Unit!24968 () Unit!24897)

(assert (=> b!1465944 (= lt!510367 Unit!24968)))

(declare-fun matchR!1833 (Regex!3991 List!15266) Bool)

(assert (=> b!1465944 (matchR!1833 (regex!2677 (rule!4454 (h!20603 (list!6094 lt!509797)))) (list!6095 (charsOf!1540 (h!20603 (list!6094 lt!509797)))))))

(declare-fun lt!510363 () Unit!24897)

(declare-fun Unit!24969 () Unit!24897)

(assert (=> b!1465944 (= lt!510363 Unit!24969)))

(assert (=> b!1465944 (= (rule!4454 (h!20603 (list!6094 lt!509797))) (rule!4454 (h!20603 (list!6094 lt!509797))))))

(declare-fun lt!510373 () Unit!24897)

(declare-fun Unit!24970 () Unit!24897)

(assert (=> b!1465944 (= lt!510373 Unit!24970)))

(declare-fun lt!510371 () Unit!24897)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!41 (LexerInterface!2333 List!15269 Token!5016 Rule!5154 List!15266) Unit!24897)

(assert (=> b!1465944 (= lt!510371 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!41 Lexer!2331 (rules!11744 thiss!10022) (h!20603 (list!6094 lt!509797)) (rule!4454 (h!20603 (list!6094 lt!509797))) (list!6095 lt!510361)))))

(declare-fun b!1465945 () Bool)

(assert (=> b!1465945 (= e!935103 (isEmpty!9562 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (seqFromList!1720 (list!6094 lt!509797)))))))))

(assert (= (and d!430336 c!241710) b!1465943))

(assert (= (and d!430336 (not c!241710)) b!1465944))

(assert (= (and d!430336 res!663686) b!1465945))

(assert (=> d!430336 m!1709487))

(declare-fun m!1710249 () Bool)

(assert (=> d!430336 m!1710249))

(assert (=> d!430336 m!1709285))

(declare-fun m!1710251 () Bool)

(assert (=> d!430336 m!1710251))

(assert (=> d!430336 m!1710251))

(declare-fun m!1710253 () Bool)

(assert (=> d!430336 m!1710253))

(assert (=> d!430336 m!1710253))

(declare-fun m!1710255 () Bool)

(assert (=> d!430336 m!1710255))

(declare-fun m!1710257 () Bool)

(assert (=> b!1465944 m!1710257))

(declare-fun m!1710259 () Bool)

(assert (=> b!1465944 m!1710259))

(declare-fun m!1710261 () Bool)

(assert (=> b!1465944 m!1710261))

(declare-fun m!1710263 () Bool)

(assert (=> b!1465944 m!1710263))

(declare-fun m!1710265 () Bool)

(assert (=> b!1465944 m!1710265))

(declare-fun m!1710267 () Bool)

(assert (=> b!1465944 m!1710267))

(declare-fun m!1710269 () Bool)

(assert (=> b!1465944 m!1710269))

(declare-fun m!1710271 () Bool)

(assert (=> b!1465944 m!1710271))

(declare-fun m!1710273 () Bool)

(assert (=> b!1465944 m!1710273))

(declare-fun m!1710275 () Bool)

(assert (=> b!1465944 m!1710275))

(declare-fun m!1710277 () Bool)

(assert (=> b!1465944 m!1710277))

(assert (=> b!1465944 m!1710257))

(declare-fun m!1710279 () Bool)

(assert (=> b!1465944 m!1710279))

(declare-fun m!1710281 () Bool)

(assert (=> b!1465944 m!1710281))

(assert (=> b!1465944 m!1710265))

(declare-fun m!1710283 () Bool)

(assert (=> b!1465944 m!1710283))

(declare-fun m!1710285 () Bool)

(assert (=> b!1465944 m!1710285))

(assert (=> b!1465944 m!1710269))

(declare-fun m!1710287 () Bool)

(assert (=> b!1465944 m!1710287))

(declare-fun m!1710289 () Bool)

(assert (=> b!1465944 m!1710289))

(declare-fun m!1710291 () Bool)

(assert (=> b!1465944 m!1710291))

(assert (=> b!1465944 m!1710265))

(assert (=> b!1465944 m!1710273))

(assert (=> b!1465944 m!1710291))

(assert (=> b!1465944 m!1710273))

(declare-fun m!1710293 () Bool)

(assert (=> b!1465944 m!1710293))

(declare-fun m!1710295 () Bool)

(assert (=> b!1465944 m!1710295))

(declare-fun m!1710297 () Bool)

(assert (=> b!1465944 m!1710297))

(declare-fun m!1710299 () Bool)

(assert (=> b!1465944 m!1710299))

(assert (=> b!1465944 m!1710277))

(declare-fun m!1710301 () Bool)

(assert (=> b!1465944 m!1710301))

(declare-fun m!1710303 () Bool)

(assert (=> b!1465944 m!1710303))

(assert (=> b!1465944 m!1710295))

(assert (=> b!1465944 m!1710287))

(declare-fun m!1710305 () Bool)

(assert (=> b!1465944 m!1710305))

(assert (=> b!1465944 m!1710291))

(declare-fun m!1710307 () Bool)

(assert (=> b!1465944 m!1710307))

(assert (=> b!1465944 m!1710273))

(declare-fun m!1710309 () Bool)

(assert (=> b!1465944 m!1710309))

(assert (=> b!1465944 m!1710291))

(declare-fun m!1710311 () Bool)

(assert (=> b!1465944 m!1710311))

(declare-fun m!1710313 () Bool)

(assert (=> b!1465944 m!1710313))

(assert (=> b!1465944 m!1710269))

(declare-fun m!1710315 () Bool)

(assert (=> b!1465944 m!1710315))

(assert (=> b!1465944 m!1710307))

(declare-fun m!1710317 () Bool)

(assert (=> b!1465944 m!1710317))

(assert (=> b!1465944 m!1710297))

(declare-fun m!1710319 () Bool)

(assert (=> b!1465944 m!1710319))

(assert (=> b!1465944 m!1709285))

(assert (=> b!1465944 m!1710251))

(assert (=> b!1465944 m!1710305))

(assert (=> b!1465944 m!1710313))

(assert (=> b!1465944 m!1710259))

(declare-fun m!1710321 () Bool)

(assert (=> b!1465944 m!1710321))

(assert (=> b!1465944 m!1710251))

(assert (=> b!1465944 m!1710253))

(assert (=> b!1465944 m!1710289))

(declare-fun m!1710323 () Bool)

(assert (=> b!1465944 m!1710323))

(declare-fun m!1710325 () Bool)

(assert (=> b!1465944 m!1710325))

(declare-fun m!1710327 () Bool)

(assert (=> b!1465944 m!1710327))

(assert (=> b!1465945 m!1709285))

(assert (=> b!1465945 m!1710251))

(assert (=> b!1465945 m!1710251))

(assert (=> b!1465945 m!1710253))

(assert (=> b!1465945 m!1710253))

(assert (=> b!1465945 m!1710255))

(declare-fun m!1710329 () Bool)

(assert (=> b!1465945 m!1710329))

(assert (=> b!1465579 d!430336))

(declare-fun d!430350 () Bool)

(assert (=> d!430350 (= (list!6094 lt!509797) (list!6098 (c!241668 lt!509797)))))

(declare-fun bs!344822 () Bool)

(assert (= bs!344822 d!430350))

(declare-fun m!1710331 () Bool)

(assert (=> bs!344822 m!1710331))

(assert (=> b!1465579 d!430350))

(declare-fun d!430352 () Bool)

(declare-fun e!935105 () Bool)

(assert (=> d!430352 e!935105))

(declare-fun res!663687 () Bool)

(assert (=> d!430352 (=> (not res!663687) (not e!935105))))

(assert (=> d!430352 (= res!663687 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (seqFromList!1720 lt!509791))))) lt!509791))))

(declare-fun lt!510401 () Unit!24897)

(declare-fun e!935104 () Unit!24897)

(assert (=> d!430352 (= lt!510401 e!935104)))

(declare-fun c!241711 () Bool)

(assert (=> d!430352 (= c!241711 (or ((_ is Nil!15202) lt!509791) ((_ is Nil!15202) (t!134959 lt!509791))))))

(assert (=> d!430352 (not (isEmpty!9559 (rules!11744 thiss!10022)))))

(assert (=> d!430352 (= (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) lt!509791) lt!510401)))

(declare-fun b!1465946 () Bool)

(declare-fun Unit!24971 () Unit!24897)

(assert (=> b!1465946 (= e!935104 Unit!24971)))

(declare-fun b!1465947 () Bool)

(declare-fun Unit!24972 () Unit!24897)

(assert (=> b!1465947 (= e!935104 Unit!24972)))

(declare-fun lt!510378 () BalanceConc!10300)

(assert (=> b!1465947 (= lt!510378 (print!1111 Lexer!2331 (seqFromList!1720 lt!509791)))))

(declare-fun lt!510387 () BalanceConc!10300)

(assert (=> b!1465947 (= lt!510387 (print!1111 Lexer!2331 (seqFromList!1720 (t!134959 lt!509791))))))

(declare-fun lt!510383 () tuple2!14266)

(assert (=> b!1465947 (= lt!510383 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) lt!510387))))

(declare-fun lt!510386 () List!15266)

(assert (=> b!1465947 (= lt!510386 (list!6095 (charsOf!1540 (h!20603 lt!509791))))))

(declare-fun lt!510377 () List!15266)

(assert (=> b!1465947 (= lt!510377 (list!6095 lt!510387))))

(declare-fun lt!510394 () Unit!24897)

(assert (=> b!1465947 (= lt!510394 (lemmaConcatTwoListThenFirstIsPrefix!770 lt!510386 lt!510377))))

(assert (=> b!1465947 (isPrefix!1207 lt!510386 (++!4103 lt!510386 lt!510377))))

(declare-fun lt!510392 () Unit!24897)

(assert (=> b!1465947 (= lt!510392 lt!510394)))

(declare-fun lt!510385 () Unit!24897)

(assert (=> b!1465947 (= lt!510385 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) (t!134959 lt!509791)))))

(declare-fun lt!510395 () Unit!24897)

(assert (=> b!1465947 (= lt!510395 (seqFromListBHdTlConstructive!99 (h!20603 (t!134959 lt!509791)) (t!134959 (t!134959 lt!509791)) (_1!8019 lt!510383)))))

(assert (=> b!1465947 (= (list!6094 (_1!8019 lt!510383)) (list!6094 (prepend!433 (seqFromList!1720 (t!134959 (t!134959 lt!509791))) (h!20603 (t!134959 lt!509791)))))))

(declare-fun lt!510388 () Unit!24897)

(assert (=> b!1465947 (= lt!510388 lt!510395)))

(declare-fun lt!510390 () Option!2885)

(assert (=> b!1465947 (= lt!510390 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 lt!510378)))))

(assert (=> b!1465947 (= (print!1111 Lexer!2331 (singletonSeq!1286 (h!20603 lt!509791))) (printTailRec!701 Lexer!2331 (singletonSeq!1286 (h!20603 lt!509791)) 0 (BalanceConc!10301 Empty!5180)))))

(declare-fun lt!510400 () Unit!24897)

(declare-fun Unit!24973 () Unit!24897)

(assert (=> b!1465947 (= lt!510400 Unit!24973)))

(declare-fun lt!510380 () Unit!24897)

(assert (=> b!1465947 (= lt!510380 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!243 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 lt!509791))) (list!6095 lt!510387)))))

(assert (=> b!1465947 (= (list!6095 (charsOf!1540 (h!20603 lt!509791))) (originalCharacters!3539 (h!20603 lt!509791)))))

(declare-fun lt!510379 () Unit!24897)

(declare-fun Unit!24974 () Unit!24897)

(assert (=> b!1465947 (= lt!510379 Unit!24974)))

(assert (=> b!1465947 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509791))) 0))) (Cons!15200 (head!3036 (originalCharacters!3539 (h!20603 (t!134959 lt!509791)))) Nil!15200))))

(declare-fun lt!510382 () Unit!24897)

(declare-fun Unit!24975 () Unit!24897)

(assert (=> b!1465947 (= lt!510382 Unit!24975)))

(assert (=> b!1465947 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509791))) 0))) (Cons!15200 (head!3036 (list!6095 lt!510387)) Nil!15200))))

(declare-fun lt!510396 () Unit!24897)

(declare-fun Unit!24976 () Unit!24897)

(assert (=> b!1465947 (= lt!510396 Unit!24976)))

(assert (=> b!1465947 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509791))) 0))) (Cons!15200 (head!3037 lt!510387) Nil!15200))))

(declare-fun lt!510391 () Unit!24897)

(declare-fun Unit!24977 () Unit!24897)

(assert (=> b!1465947 (= lt!510391 Unit!24977)))

(assert (=> b!1465947 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (originalCharacters!3539 (h!20603 lt!509791))))))

(declare-fun lt!510398 () Unit!24897)

(declare-fun Unit!24978 () Unit!24897)

(assert (=> b!1465947 (= lt!510398 Unit!24978)))

(assert (=> b!1465947 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 lt!509791)))))))

(declare-fun lt!510384 () Unit!24897)

(declare-fun Unit!24979 () Unit!24897)

(assert (=> b!1465947 (= lt!510384 Unit!24979)))

(declare-fun lt!510376 () Unit!24897)

(declare-fun Unit!24980 () Unit!24897)

(assert (=> b!1465947 (= lt!510376 Unit!24980)))

(assert (=> b!1465947 (= (_1!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 lt!509791)))))) (h!20603 lt!509791))))

(declare-fun lt!510381 () Unit!24897)

(declare-fun Unit!24981 () Unit!24897)

(assert (=> b!1465947 (= lt!510381 Unit!24981)))

(assert (=> b!1465947 (isEmpty!9563 (_2!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 thiss!10022) (list!6095 (charsOf!1540 (h!20603 lt!509791)))))))))

(declare-fun lt!510393 () Unit!24897)

(declare-fun Unit!24982 () Unit!24897)

(assert (=> b!1465947 (= lt!510393 Unit!24982)))

(assert (=> b!1465947 (matchR!1833 (regex!2677 (rule!4454 (h!20603 lt!509791))) (list!6095 (charsOf!1540 (h!20603 lt!509791))))))

(declare-fun lt!510389 () Unit!24897)

(declare-fun Unit!24983 () Unit!24897)

(assert (=> b!1465947 (= lt!510389 Unit!24983)))

(assert (=> b!1465947 (= (rule!4454 (h!20603 lt!509791)) (rule!4454 (h!20603 lt!509791)))))

(declare-fun lt!510399 () Unit!24897)

(declare-fun Unit!24984 () Unit!24897)

(assert (=> b!1465947 (= lt!510399 Unit!24984)))

(declare-fun lt!510397 () Unit!24897)

(assert (=> b!1465947 (= lt!510397 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!41 Lexer!2331 (rules!11744 thiss!10022) (h!20603 lt!509791) (rule!4454 (h!20603 lt!509791)) (list!6095 lt!510387)))))

(declare-fun b!1465948 () Bool)

(assert (=> b!1465948 (= e!935105 (isEmpty!9562 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) (print!1111 Lexer!2331 (seqFromList!1720 lt!509791))))))))

(assert (= (and d!430352 c!241711) b!1465946))

(assert (= (and d!430352 (not c!241711)) b!1465947))

(assert (= (and d!430352 res!663687) b!1465948))

(assert (=> d!430352 m!1709487))

(declare-fun m!1710333 () Bool)

(assert (=> d!430352 m!1710333))

(declare-fun m!1710335 () Bool)

(assert (=> d!430352 m!1710335))

(assert (=> d!430352 m!1710335))

(declare-fun m!1710337 () Bool)

(assert (=> d!430352 m!1710337))

(assert (=> d!430352 m!1710337))

(declare-fun m!1710339 () Bool)

(assert (=> d!430352 m!1710339))

(declare-fun m!1710341 () Bool)

(assert (=> b!1465947 m!1710341))

(declare-fun m!1710343 () Bool)

(assert (=> b!1465947 m!1710343))

(declare-fun m!1710345 () Bool)

(assert (=> b!1465947 m!1710345))

(declare-fun m!1710347 () Bool)

(assert (=> b!1465947 m!1710347))

(declare-fun m!1710349 () Bool)

(assert (=> b!1465947 m!1710349))

(declare-fun m!1710351 () Bool)

(assert (=> b!1465947 m!1710351))

(declare-fun m!1710353 () Bool)

(assert (=> b!1465947 m!1710353))

(declare-fun m!1710355 () Bool)

(assert (=> b!1465947 m!1710355))

(declare-fun m!1710357 () Bool)

(assert (=> b!1465947 m!1710357))

(declare-fun m!1710359 () Bool)

(assert (=> b!1465947 m!1710359))

(declare-fun m!1710361 () Bool)

(assert (=> b!1465947 m!1710361))

(assert (=> b!1465947 m!1710341))

(declare-fun m!1710363 () Bool)

(assert (=> b!1465947 m!1710363))

(declare-fun m!1710365 () Bool)

(assert (=> b!1465947 m!1710365))

(assert (=> b!1465947 m!1710349))

(declare-fun m!1710367 () Bool)

(assert (=> b!1465947 m!1710367))

(declare-fun m!1710369 () Bool)

(assert (=> b!1465947 m!1710369))

(assert (=> b!1465947 m!1710353))

(declare-fun m!1710371 () Bool)

(assert (=> b!1465947 m!1710371))

(declare-fun m!1710373 () Bool)

(assert (=> b!1465947 m!1710373))

(assert (=> b!1465947 m!1709959))

(assert (=> b!1465947 m!1710349))

(assert (=> b!1465947 m!1710357))

(assert (=> b!1465947 m!1709959))

(assert (=> b!1465947 m!1710357))

(declare-fun m!1710375 () Bool)

(assert (=> b!1465947 m!1710375))

(declare-fun m!1710377 () Bool)

(assert (=> b!1465947 m!1710377))

(declare-fun m!1710379 () Bool)

(assert (=> b!1465947 m!1710379))

(declare-fun m!1710381 () Bool)

(assert (=> b!1465947 m!1710381))

(assert (=> b!1465947 m!1710361))

(declare-fun m!1710383 () Bool)

(assert (=> b!1465947 m!1710383))

(declare-fun m!1710385 () Bool)

(assert (=> b!1465947 m!1710385))

(assert (=> b!1465947 m!1710377))

(assert (=> b!1465947 m!1710371))

(assert (=> b!1465947 m!1709957))

(assert (=> b!1465947 m!1709959))

(declare-fun m!1710387 () Bool)

(assert (=> b!1465947 m!1710387))

(assert (=> b!1465947 m!1710357))

(declare-fun m!1710389 () Bool)

(assert (=> b!1465947 m!1710389))

(assert (=> b!1465947 m!1709959))

(declare-fun m!1710391 () Bool)

(assert (=> b!1465947 m!1710391))

(declare-fun m!1710393 () Bool)

(assert (=> b!1465947 m!1710393))

(assert (=> b!1465947 m!1710353))

(declare-fun m!1710395 () Bool)

(assert (=> b!1465947 m!1710395))

(assert (=> b!1465947 m!1710387))

(declare-fun m!1710397 () Bool)

(assert (=> b!1465947 m!1710397))

(assert (=> b!1465947 m!1710379))

(declare-fun m!1710399 () Bool)

(assert (=> b!1465947 m!1710399))

(assert (=> b!1465947 m!1710335))

(assert (=> b!1465947 m!1709957))

(assert (=> b!1465947 m!1710393))

(assert (=> b!1465947 m!1710343))

(declare-fun m!1710401 () Bool)

(assert (=> b!1465947 m!1710401))

(assert (=> b!1465947 m!1710335))

(assert (=> b!1465947 m!1710337))

(assert (=> b!1465947 m!1710373))

(declare-fun m!1710403 () Bool)

(assert (=> b!1465947 m!1710403))

(declare-fun m!1710405 () Bool)

(assert (=> b!1465947 m!1710405))

(declare-fun m!1710407 () Bool)

(assert (=> b!1465947 m!1710407))

(assert (=> b!1465948 m!1710335))

(assert (=> b!1465948 m!1710335))

(assert (=> b!1465948 m!1710337))

(assert (=> b!1465948 m!1710337))

(assert (=> b!1465948 m!1710339))

(declare-fun m!1710409 () Bool)

(assert (=> b!1465948 m!1710409))

(assert (=> b!1465579 d!430352))

(declare-fun d!430354 () Bool)

(declare-fun lt!510404 () BalanceConc!10300)

(assert (=> d!430354 (= (list!6095 lt!510404) (printList!729 Lexer!2331 (list!6094 (tokens!2124 other!32))))))

(assert (=> d!430354 (= lt!510404 (printTailRec!701 Lexer!2331 (tokens!2124 other!32) 0 (BalanceConc!10301 Empty!5180)))))

(assert (=> d!430354 (= (print!1111 Lexer!2331 (tokens!2124 other!32)) lt!510404)))

(declare-fun bs!344823 () Bool)

(assert (= bs!344823 d!430354))

(declare-fun m!1710411 () Bool)

(assert (=> bs!344823 m!1710411))

(assert (=> bs!344823 m!1709307))

(assert (=> bs!344823 m!1709307))

(declare-fun m!1710413 () Bool)

(assert (=> bs!344823 m!1710413))

(declare-fun m!1710415 () Bool)

(assert (=> bs!344823 m!1710415))

(assert (=> b!1465579 d!430354))

(declare-fun d!430356 () Bool)

(declare-fun e!935107 () Bool)

(assert (=> d!430356 e!935107))

(declare-fun res!663688 () Bool)

(assert (=> d!430356 (=> (not res!663688) (not e!935107))))

(assert (=> d!430356 (= res!663688 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 other!32) (print!1111 Lexer!2331 (seqFromList!1720 lt!509807))))) lt!509807))))

(declare-fun lt!510430 () Unit!24897)

(declare-fun e!935106 () Unit!24897)

(assert (=> d!430356 (= lt!510430 e!935106)))

(declare-fun c!241712 () Bool)

(assert (=> d!430356 (= c!241712 (or ((_ is Nil!15202) lt!509807) ((_ is Nil!15202) (t!134959 lt!509807))))))

(assert (=> d!430356 (not (isEmpty!9559 (rules!11744 other!32)))))

(assert (=> d!430356 (= (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 other!32) lt!509807) lt!510430)))

(declare-fun b!1465949 () Bool)

(declare-fun Unit!24985 () Unit!24897)

(assert (=> b!1465949 (= e!935106 Unit!24985)))

(declare-fun b!1465950 () Bool)

(declare-fun Unit!24986 () Unit!24897)

(assert (=> b!1465950 (= e!935106 Unit!24986)))

(declare-fun lt!510407 () BalanceConc!10300)

(assert (=> b!1465950 (= lt!510407 (print!1111 Lexer!2331 (seqFromList!1720 lt!509807)))))

(declare-fun lt!510416 () BalanceConc!10300)

(assert (=> b!1465950 (= lt!510416 (print!1111 Lexer!2331 (seqFromList!1720 (t!134959 lt!509807))))))

(declare-fun lt!510412 () tuple2!14266)

(assert (=> b!1465950 (= lt!510412 (lex!1078 Lexer!2331 (rules!11744 other!32) lt!510416))))

(declare-fun lt!510415 () List!15266)

(assert (=> b!1465950 (= lt!510415 (list!6095 (charsOf!1540 (h!20603 lt!509807))))))

(declare-fun lt!510406 () List!15266)

(assert (=> b!1465950 (= lt!510406 (list!6095 lt!510416))))

(declare-fun lt!510423 () Unit!24897)

(assert (=> b!1465950 (= lt!510423 (lemmaConcatTwoListThenFirstIsPrefix!770 lt!510415 lt!510406))))

(assert (=> b!1465950 (isPrefix!1207 lt!510415 (++!4103 lt!510415 lt!510406))))

(declare-fun lt!510421 () Unit!24897)

(assert (=> b!1465950 (= lt!510421 lt!510423)))

(declare-fun lt!510414 () Unit!24897)

(assert (=> b!1465950 (= lt!510414 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 other!32) (t!134959 lt!509807)))))

(declare-fun lt!510424 () Unit!24897)

(assert (=> b!1465950 (= lt!510424 (seqFromListBHdTlConstructive!99 (h!20603 (t!134959 lt!509807)) (t!134959 (t!134959 lt!509807)) (_1!8019 lt!510412)))))

(assert (=> b!1465950 (= (list!6094 (_1!8019 lt!510412)) (list!6094 (prepend!433 (seqFromList!1720 (t!134959 (t!134959 lt!509807))) (h!20603 (t!134959 lt!509807)))))))

(declare-fun lt!510417 () Unit!24897)

(assert (=> b!1465950 (= lt!510417 lt!510424)))

(declare-fun lt!510419 () Option!2885)

(assert (=> b!1465950 (= lt!510419 (maxPrefix!1197 Lexer!2331 (rules!11744 other!32) (list!6095 lt!510407)))))

(assert (=> b!1465950 (= (print!1111 Lexer!2331 (singletonSeq!1286 (h!20603 lt!509807))) (printTailRec!701 Lexer!2331 (singletonSeq!1286 (h!20603 lt!509807)) 0 (BalanceConc!10301 Empty!5180)))))

(declare-fun lt!510429 () Unit!24897)

(declare-fun Unit!24987 () Unit!24897)

(assert (=> b!1465950 (= lt!510429 Unit!24987)))

(declare-fun lt!510409 () Unit!24897)

(assert (=> b!1465950 (= lt!510409 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!243 Lexer!2331 (rules!11744 other!32) (list!6095 (charsOf!1540 (h!20603 lt!509807))) (list!6095 lt!510416)))))

(assert (=> b!1465950 (= (list!6095 (charsOf!1540 (h!20603 lt!509807))) (originalCharacters!3539 (h!20603 lt!509807)))))

(declare-fun lt!510408 () Unit!24897)

(declare-fun Unit!24988 () Unit!24897)

(assert (=> b!1465950 (= lt!510408 Unit!24988)))

(assert (=> b!1465950 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509807))) 0))) (Cons!15200 (head!3036 (originalCharacters!3539 (h!20603 (t!134959 lt!509807)))) Nil!15200))))

(declare-fun lt!510411 () Unit!24897)

(declare-fun Unit!24989 () Unit!24897)

(assert (=> b!1465950 (= lt!510411 Unit!24989)))

(assert (=> b!1465950 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509807))) 0))) (Cons!15200 (head!3036 (list!6095 lt!510416)) Nil!15200))))

(declare-fun lt!510425 () Unit!24897)

(declare-fun Unit!24990 () Unit!24897)

(assert (=> b!1465950 (= lt!510425 Unit!24990)))

(assert (=> b!1465950 (= (list!6095 (singletonSeq!1285 (apply!3983 (charsOf!1540 (h!20603 (t!134959 lt!509807))) 0))) (Cons!15200 (head!3037 lt!510416) Nil!15200))))

(declare-fun lt!510420 () Unit!24897)

(declare-fun Unit!24991 () Unit!24897)

(assert (=> b!1465950 (= lt!510420 Unit!24991)))

(assert (=> b!1465950 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 other!32) (originalCharacters!3539 (h!20603 lt!509807))))))

(declare-fun lt!510427 () Unit!24897)

(declare-fun Unit!24992 () Unit!24897)

(assert (=> b!1465950 (= lt!510427 Unit!24992)))

(assert (=> b!1465950 (isDefined!2332 (maxPrefix!1197 Lexer!2331 (rules!11744 other!32) (list!6095 (charsOf!1540 (h!20603 lt!509807)))))))

(declare-fun lt!510413 () Unit!24897)

(declare-fun Unit!24993 () Unit!24897)

(assert (=> b!1465950 (= lt!510413 Unit!24993)))

(declare-fun lt!510405 () Unit!24897)

(declare-fun Unit!24994 () Unit!24897)

(assert (=> b!1465950 (= lt!510405 Unit!24994)))

(assert (=> b!1465950 (= (_1!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 other!32) (list!6095 (charsOf!1540 (h!20603 lt!509807)))))) (h!20603 lt!509807))))

(declare-fun lt!510410 () Unit!24897)

(declare-fun Unit!24995 () Unit!24897)

(assert (=> b!1465950 (= lt!510410 Unit!24995)))

(assert (=> b!1465950 (isEmpty!9563 (_2!8021 (get!4628 (maxPrefix!1197 Lexer!2331 (rules!11744 other!32) (list!6095 (charsOf!1540 (h!20603 lt!509807)))))))))

(declare-fun lt!510422 () Unit!24897)

(declare-fun Unit!24996 () Unit!24897)

(assert (=> b!1465950 (= lt!510422 Unit!24996)))

(assert (=> b!1465950 (matchR!1833 (regex!2677 (rule!4454 (h!20603 lt!509807))) (list!6095 (charsOf!1540 (h!20603 lt!509807))))))

(declare-fun lt!510418 () Unit!24897)

(declare-fun Unit!24997 () Unit!24897)

(assert (=> b!1465950 (= lt!510418 Unit!24997)))

(assert (=> b!1465950 (= (rule!4454 (h!20603 lt!509807)) (rule!4454 (h!20603 lt!509807)))))

(declare-fun lt!510428 () Unit!24897)

(declare-fun Unit!24998 () Unit!24897)

(assert (=> b!1465950 (= lt!510428 Unit!24998)))

(declare-fun lt!510426 () Unit!24897)

(assert (=> b!1465950 (= lt!510426 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!41 Lexer!2331 (rules!11744 other!32) (h!20603 lt!509807) (rule!4454 (h!20603 lt!509807)) (list!6095 lt!510416)))))

(declare-fun b!1465951 () Bool)

(assert (=> b!1465951 (= e!935107 (isEmpty!9562 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 other!32) (print!1111 Lexer!2331 (seqFromList!1720 lt!509807))))))))

(assert (= (and d!430356 c!241712) b!1465949))

(assert (= (and d!430356 (not c!241712)) b!1465950))

(assert (= (and d!430356 res!663688) b!1465951))

(assert (=> d!430356 m!1709489))

(declare-fun m!1710417 () Bool)

(assert (=> d!430356 m!1710417))

(declare-fun m!1710419 () Bool)

(assert (=> d!430356 m!1710419))

(assert (=> d!430356 m!1710419))

(declare-fun m!1710421 () Bool)

(assert (=> d!430356 m!1710421))

(assert (=> d!430356 m!1710421))

(declare-fun m!1710423 () Bool)

(assert (=> d!430356 m!1710423))

(declare-fun m!1710425 () Bool)

(assert (=> b!1465950 m!1710425))

(declare-fun m!1710427 () Bool)

(assert (=> b!1465950 m!1710427))

(declare-fun m!1710429 () Bool)

(assert (=> b!1465950 m!1710429))

(declare-fun m!1710431 () Bool)

(assert (=> b!1465950 m!1710431))

(declare-fun m!1710433 () Bool)

(assert (=> b!1465950 m!1710433))

(declare-fun m!1710435 () Bool)

(assert (=> b!1465950 m!1710435))

(declare-fun m!1710437 () Bool)

(assert (=> b!1465950 m!1710437))

(declare-fun m!1710439 () Bool)

(assert (=> b!1465950 m!1710439))

(declare-fun m!1710441 () Bool)

(assert (=> b!1465950 m!1710441))

(declare-fun m!1710443 () Bool)

(assert (=> b!1465950 m!1710443))

(declare-fun m!1710445 () Bool)

(assert (=> b!1465950 m!1710445))

(assert (=> b!1465950 m!1710425))

(declare-fun m!1710447 () Bool)

(assert (=> b!1465950 m!1710447))

(declare-fun m!1710449 () Bool)

(assert (=> b!1465950 m!1710449))

(assert (=> b!1465950 m!1710433))

(declare-fun m!1710451 () Bool)

(assert (=> b!1465950 m!1710451))

(declare-fun m!1710453 () Bool)

(assert (=> b!1465950 m!1710453))

(assert (=> b!1465950 m!1710437))

(declare-fun m!1710455 () Bool)

(assert (=> b!1465950 m!1710455))

(declare-fun m!1710457 () Bool)

(assert (=> b!1465950 m!1710457))

(assert (=> b!1465950 m!1709951))

(assert (=> b!1465950 m!1710433))

(assert (=> b!1465950 m!1710441))

(assert (=> b!1465950 m!1709951))

(assert (=> b!1465950 m!1710441))

(declare-fun m!1710459 () Bool)

(assert (=> b!1465950 m!1710459))

(declare-fun m!1710461 () Bool)

(assert (=> b!1465950 m!1710461))

(declare-fun m!1710463 () Bool)

(assert (=> b!1465950 m!1710463))

(declare-fun m!1710465 () Bool)

(assert (=> b!1465950 m!1710465))

(assert (=> b!1465950 m!1710445))

(declare-fun m!1710467 () Bool)

(assert (=> b!1465950 m!1710467))

(declare-fun m!1710469 () Bool)

(assert (=> b!1465950 m!1710469))

(assert (=> b!1465950 m!1710461))

(assert (=> b!1465950 m!1710455))

(assert (=> b!1465950 m!1709949))

(assert (=> b!1465950 m!1709951))

(declare-fun m!1710471 () Bool)

(assert (=> b!1465950 m!1710471))

(assert (=> b!1465950 m!1710441))

(declare-fun m!1710473 () Bool)

(assert (=> b!1465950 m!1710473))

(assert (=> b!1465950 m!1709951))

(declare-fun m!1710475 () Bool)

(assert (=> b!1465950 m!1710475))

(declare-fun m!1710477 () Bool)

(assert (=> b!1465950 m!1710477))

(assert (=> b!1465950 m!1710437))

(declare-fun m!1710479 () Bool)

(assert (=> b!1465950 m!1710479))

(assert (=> b!1465950 m!1710471))

(declare-fun m!1710481 () Bool)

(assert (=> b!1465950 m!1710481))

(assert (=> b!1465950 m!1710463))

(declare-fun m!1710483 () Bool)

(assert (=> b!1465950 m!1710483))

(assert (=> b!1465950 m!1710419))

(assert (=> b!1465950 m!1709949))

(assert (=> b!1465950 m!1710477))

(assert (=> b!1465950 m!1710427))

(declare-fun m!1710485 () Bool)

(assert (=> b!1465950 m!1710485))

(assert (=> b!1465950 m!1710419))

(assert (=> b!1465950 m!1710421))

(assert (=> b!1465950 m!1710457))

(declare-fun m!1710487 () Bool)

(assert (=> b!1465950 m!1710487))

(declare-fun m!1710489 () Bool)

(assert (=> b!1465950 m!1710489))

(declare-fun m!1710491 () Bool)

(assert (=> b!1465950 m!1710491))

(assert (=> b!1465951 m!1710419))

(assert (=> b!1465951 m!1710419))

(assert (=> b!1465951 m!1710421))

(assert (=> b!1465951 m!1710421))

(assert (=> b!1465951 m!1710423))

(declare-fun m!1710493 () Bool)

(assert (=> b!1465951 m!1710493))

(assert (=> b!1465579 d!430356))

(declare-fun b!1465960 () Bool)

(declare-fun e!935112 () List!15266)

(assert (=> b!1465960 (= e!935112 (printList!729 Lexer!2331 lt!509807))))

(declare-fun b!1465961 () Bool)

(assert (=> b!1465961 (= e!935112 (Cons!15200 (h!20601 (printList!729 Lexer!2331 lt!509791)) (++!4103 (t!134957 (printList!729 Lexer!2331 lt!509791)) (printList!729 Lexer!2331 lt!509807))))))

(declare-fun b!1465962 () Bool)

(declare-fun res!663693 () Bool)

(declare-fun e!935113 () Bool)

(assert (=> b!1465962 (=> (not res!663693) (not e!935113))))

(declare-fun lt!510433 () List!15266)

(declare-fun size!12443 (List!15266) Int)

(assert (=> b!1465962 (= res!663693 (= (size!12443 lt!510433) (+ (size!12443 (printList!729 Lexer!2331 lt!509791)) (size!12443 (printList!729 Lexer!2331 lt!509807)))))))

(declare-fun b!1465963 () Bool)

(assert (=> b!1465963 (= e!935113 (or (not (= (printList!729 Lexer!2331 lt!509807) Nil!15200)) (= lt!510433 (printList!729 Lexer!2331 lt!509791))))))

(declare-fun d!430358 () Bool)

(assert (=> d!430358 e!935113))

(declare-fun res!663694 () Bool)

(assert (=> d!430358 (=> (not res!663694) (not e!935113))))

(declare-fun content!2251 (List!15266) (InoxSet C!8160))

(assert (=> d!430358 (= res!663694 (= (content!2251 lt!510433) ((_ map or) (content!2251 (printList!729 Lexer!2331 lt!509791)) (content!2251 (printList!729 Lexer!2331 lt!509807)))))))

(assert (=> d!430358 (= lt!510433 e!935112)))

(declare-fun c!241715 () Bool)

(assert (=> d!430358 (= c!241715 ((_ is Nil!15200) (printList!729 Lexer!2331 lt!509791)))))

(assert (=> d!430358 (= (++!4103 (printList!729 Lexer!2331 lt!509791) (printList!729 Lexer!2331 lt!509807)) lt!510433)))

(assert (= (and d!430358 c!241715) b!1465960))

(assert (= (and d!430358 (not c!241715)) b!1465961))

(assert (= (and d!430358 res!663694) b!1465962))

(assert (= (and b!1465962 res!663693) b!1465963))

(assert (=> b!1465961 m!1709275))

(declare-fun m!1710495 () Bool)

(assert (=> b!1465961 m!1710495))

(declare-fun m!1710497 () Bool)

(assert (=> b!1465962 m!1710497))

(assert (=> b!1465962 m!1709273))

(declare-fun m!1710499 () Bool)

(assert (=> b!1465962 m!1710499))

(assert (=> b!1465962 m!1709275))

(declare-fun m!1710501 () Bool)

(assert (=> b!1465962 m!1710501))

(declare-fun m!1710503 () Bool)

(assert (=> d!430358 m!1710503))

(assert (=> d!430358 m!1709273))

(declare-fun m!1710505 () Bool)

(assert (=> d!430358 m!1710505))

(assert (=> d!430358 m!1709275))

(declare-fun m!1710507 () Bool)

(assert (=> d!430358 m!1710507))

(assert (=> b!1465579 d!430358))

(declare-fun d!430360 () Bool)

(declare-fun lt!510434 () BalanceConc!10300)

(assert (=> d!430360 (= (list!6095 lt!510434) (printList!729 Lexer!2331 (list!6094 lt!509797)))))

(assert (=> d!430360 (= lt!510434 (printTailRec!701 Lexer!2331 lt!509797 0 (BalanceConc!10301 Empty!5180)))))

(assert (=> d!430360 (= (print!1111 Lexer!2331 lt!509797) lt!510434)))

(declare-fun bs!344824 () Bool)

(assert (= bs!344824 d!430360))

(declare-fun m!1710509 () Bool)

(assert (=> bs!344824 m!1710509))

(assert (=> bs!344824 m!1709285))

(assert (=> bs!344824 m!1709285))

(declare-fun m!1710511 () Bool)

(assert (=> bs!344824 m!1710511))

(declare-fun m!1710513 () Bool)

(assert (=> bs!344824 m!1710513))

(assert (=> b!1465579 d!430360))

(declare-fun d!430362 () Bool)

(declare-fun lt!510435 () BalanceConc!10300)

(assert (=> d!430362 (= (list!6095 lt!510435) (printList!729 Lexer!2331 (list!6094 (tokens!2124 thiss!10022))))))

(assert (=> d!430362 (= lt!510435 (printTailRec!701 Lexer!2331 (tokens!2124 thiss!10022) 0 (BalanceConc!10301 Empty!5180)))))

(assert (=> d!430362 (= (print!1111 Lexer!2331 (tokens!2124 thiss!10022)) lt!510435)))

(declare-fun bs!344825 () Bool)

(assert (= bs!344825 d!430362))

(declare-fun m!1710515 () Bool)

(assert (=> bs!344825 m!1710515))

(assert (=> bs!344825 m!1709313))

(assert (=> bs!344825 m!1709313))

(declare-fun m!1710517 () Bool)

(assert (=> bs!344825 m!1710517))

(declare-fun m!1710519 () Bool)

(assert (=> bs!344825 m!1710519))

(assert (=> b!1465579 d!430362))

(declare-fun d!430364 () Bool)

(declare-fun e!935114 () Bool)

(assert (=> d!430364 e!935114))

(declare-fun res!663695 () Bool)

(assert (=> d!430364 (=> (not res!663695) (not e!935114))))

(declare-fun lt!510436 () BalanceConc!10300)

(assert (=> d!430364 (= res!663695 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) lt!510436))) (list!6094 (tokens!2124 thiss!10022))))))

(assert (=> d!430364 (= lt!510436 (print!1111 Lexer!2331 (tokens!2124 thiss!10022)))))

(declare-fun lt!510437 () Unit!24897)

(assert (=> d!430364 (= lt!510437 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 thiss!10022) (list!6094 (tokens!2124 thiss!10022))))))

(assert (=> d!430364 (= (print!1110 thiss!10022) lt!510436)))

(declare-fun b!1465964 () Bool)

(assert (=> b!1465964 (= e!935114 (isEmpty!9563 (list!6095 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 thiss!10022) lt!510436)))))))

(assert (= (and d!430364 res!663695) b!1465964))

(assert (=> d!430364 m!1709313))

(assert (=> d!430364 m!1709279))

(assert (=> d!430364 m!1709313))

(declare-fun m!1710521 () Bool)

(assert (=> d!430364 m!1710521))

(declare-fun m!1710523 () Bool)

(assert (=> d!430364 m!1710523))

(declare-fun m!1710525 () Bool)

(assert (=> d!430364 m!1710525))

(assert (=> b!1465964 m!1710525))

(declare-fun m!1710527 () Bool)

(assert (=> b!1465964 m!1710527))

(assert (=> b!1465964 m!1710527))

(declare-fun m!1710529 () Bool)

(assert (=> b!1465964 m!1710529))

(assert (=> b!1465579 d!430364))

(declare-fun d!430366 () Bool)

(assert (=> d!430366 (= (printList!729 Lexer!2331 (++!4105 lt!509791 lt!509807)) (++!4103 (printList!729 Lexer!2331 lt!509791) (printList!729 Lexer!2331 lt!509807)))))

(declare-fun lt!510440 () Unit!24897)

(declare-fun choose!9024 (LexerInterface!2333 List!15268 List!15268) Unit!24897)

(assert (=> d!430366 (= lt!510440 (choose!9024 Lexer!2331 lt!509791 lt!509807))))

(assert (=> d!430366 (= (lemmaPrintConcatSameAsConcatPrint!80 Lexer!2331 lt!509791 lt!509807) lt!510440)))

(declare-fun bs!344826 () Bool)

(assert (= bs!344826 d!430366))

(assert (=> bs!344826 m!1709251))

(declare-fun m!1710531 () Bool)

(assert (=> bs!344826 m!1710531))

(assert (=> bs!344826 m!1709251))

(assert (=> bs!344826 m!1709273))

(assert (=> bs!344826 m!1709275))

(assert (=> bs!344826 m!1709273))

(assert (=> bs!344826 m!1709275))

(assert (=> bs!344826 m!1709277))

(declare-fun m!1710533 () Bool)

(assert (=> bs!344826 m!1710533))

(assert (=> b!1465579 d!430366))

(declare-fun d!430368 () Bool)

(declare-fun e!935115 () Bool)

(assert (=> d!430368 e!935115))

(declare-fun res!663696 () Bool)

(assert (=> d!430368 (=> (not res!663696) (not e!935115))))

(declare-fun lt!510441 () BalanceConc!10300)

(assert (=> d!430368 (= res!663696 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 other!32) lt!510441))) (list!6094 (tokens!2124 other!32))))))

(assert (=> d!430368 (= lt!510441 (print!1111 Lexer!2331 (tokens!2124 other!32)))))

(declare-fun lt!510442 () Unit!24897)

(assert (=> d!430368 (= lt!510442 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 other!32) (list!6094 (tokens!2124 other!32))))))

(assert (=> d!430368 (= (print!1110 other!32) lt!510441)))

(declare-fun b!1465965 () Bool)

(assert (=> b!1465965 (= e!935115 (isEmpty!9563 (list!6095 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 other!32) lt!510441)))))))

(assert (= (and d!430368 res!663696) b!1465965))

(assert (=> d!430368 m!1709307))

(assert (=> d!430368 m!1709289))

(assert (=> d!430368 m!1709307))

(declare-fun m!1710535 () Bool)

(assert (=> d!430368 m!1710535))

(declare-fun m!1710537 () Bool)

(assert (=> d!430368 m!1710537))

(declare-fun m!1710539 () Bool)

(assert (=> d!430368 m!1710539))

(assert (=> b!1465965 m!1710539))

(declare-fun m!1710541 () Bool)

(assert (=> b!1465965 m!1710541))

(assert (=> b!1465965 m!1710541))

(declare-fun m!1710543 () Bool)

(assert (=> b!1465965 m!1710543))

(assert (=> b!1465579 d!430368))

(declare-fun d!430370 () Bool)

(declare-fun list!6099 (Conc!5180) List!15266)

(assert (=> d!430370 (= (list!6095 lt!509798) (list!6099 (c!241666 lt!509798)))))

(declare-fun bs!344827 () Bool)

(assert (= bs!344827 d!430370))

(declare-fun m!1710545 () Bool)

(assert (=> bs!344827 m!1710545))

(assert (=> b!1465589 d!430370))

(declare-fun d!430372 () Bool)

(assert (=> d!430372 (= (list!6095 (print!1110 lt!509804)) (list!6099 (c!241666 (print!1110 lt!509804))))))

(declare-fun bs!344828 () Bool)

(assert (= bs!344828 d!430372))

(declare-fun m!1710547 () Bool)

(assert (=> bs!344828 m!1710547))

(assert (=> b!1465589 d!430372))

(declare-fun d!430374 () Bool)

(declare-fun e!935116 () Bool)

(assert (=> d!430374 e!935116))

(declare-fun res!663697 () Bool)

(assert (=> d!430374 (=> (not res!663697) (not e!935116))))

(declare-fun lt!510443 () BalanceConc!10300)

(assert (=> d!430374 (= res!663697 (= (list!6094 (_1!8019 (lex!1078 Lexer!2331 (rules!11744 lt!509804) lt!510443))) (list!6094 (tokens!2124 lt!509804))))))

(assert (=> d!430374 (= lt!510443 (print!1111 Lexer!2331 (tokens!2124 lt!509804)))))

(declare-fun lt!510444 () Unit!24897)

(assert (=> d!430374 (= lt!510444 (theoremInvertabilityWhenTokenListSeparable!81 Lexer!2331 (rules!11744 lt!509804) (list!6094 (tokens!2124 lt!509804))))))

(assert (=> d!430374 (= (print!1110 lt!509804) lt!510443)))

(declare-fun b!1465966 () Bool)

(assert (=> b!1465966 (= e!935116 (isEmpty!9563 (list!6095 (_2!8019 (lex!1078 Lexer!2331 (rules!11744 lt!509804) lt!510443)))))))

(assert (= (and d!430374 res!663697) b!1465966))

(assert (=> d!430374 m!1709237))

(declare-fun m!1710549 () Bool)

(assert (=> d!430374 m!1710549))

(assert (=> d!430374 m!1709237))

(declare-fun m!1710551 () Bool)

(assert (=> d!430374 m!1710551))

(declare-fun m!1710553 () Bool)

(assert (=> d!430374 m!1710553))

(declare-fun m!1710555 () Bool)

(assert (=> d!430374 m!1710555))

(assert (=> b!1465966 m!1710555))

(declare-fun m!1710557 () Bool)

(assert (=> b!1465966 m!1710557))

(assert (=> b!1465966 m!1710557))

(declare-fun m!1710559 () Bool)

(assert (=> b!1465966 m!1710559))

(assert (=> b!1465589 d!430374))

(declare-fun b!1465967 () Bool)

(declare-fun e!935117 () List!15266)

(assert (=> b!1465967 (= e!935117 (list!6095 lt!509798))))

(declare-fun b!1465968 () Bool)

(assert (=> b!1465968 (= e!935117 (Cons!15200 (h!20601 (list!6095 lt!509801)) (++!4103 (t!134957 (list!6095 lt!509801)) (list!6095 lt!509798))))))

(declare-fun b!1465969 () Bool)

(declare-fun res!663698 () Bool)

(declare-fun e!935118 () Bool)

(assert (=> b!1465969 (=> (not res!663698) (not e!935118))))

(declare-fun lt!510445 () List!15266)

(assert (=> b!1465969 (= res!663698 (= (size!12443 lt!510445) (+ (size!12443 (list!6095 lt!509801)) (size!12443 (list!6095 lt!509798)))))))

(declare-fun b!1465970 () Bool)

(assert (=> b!1465970 (= e!935118 (or (not (= (list!6095 lt!509798) Nil!15200)) (= lt!510445 (list!6095 lt!509801))))))

(declare-fun d!430376 () Bool)

(assert (=> d!430376 e!935118))

(declare-fun res!663699 () Bool)

(assert (=> d!430376 (=> (not res!663699) (not e!935118))))

(assert (=> d!430376 (= res!663699 (= (content!2251 lt!510445) ((_ map or) (content!2251 (list!6095 lt!509801)) (content!2251 (list!6095 lt!509798)))))))

(assert (=> d!430376 (= lt!510445 e!935117)))

(declare-fun c!241716 () Bool)

(assert (=> d!430376 (= c!241716 ((_ is Nil!15200) (list!6095 lt!509801)))))

(assert (=> d!430376 (= (++!4103 (list!6095 lt!509801) (list!6095 lt!509798)) lt!510445)))

(assert (= (and d!430376 c!241716) b!1465967))

(assert (= (and d!430376 (not c!241716)) b!1465968))

(assert (= (and d!430376 res!663699) b!1465969))

(assert (= (and b!1465969 res!663698) b!1465970))

(assert (=> b!1465968 m!1709243))

(declare-fun m!1710561 () Bool)

(assert (=> b!1465968 m!1710561))

(declare-fun m!1710563 () Bool)

(assert (=> b!1465969 m!1710563))

(assert (=> b!1465969 m!1709241))

(declare-fun m!1710565 () Bool)

(assert (=> b!1465969 m!1710565))

(assert (=> b!1465969 m!1709243))

(declare-fun m!1710567 () Bool)

(assert (=> b!1465969 m!1710567))

(declare-fun m!1710569 () Bool)

(assert (=> d!430376 m!1710569))

(assert (=> d!430376 m!1709241))

(declare-fun m!1710571 () Bool)

(assert (=> d!430376 m!1710571))

(assert (=> d!430376 m!1709243))

(declare-fun m!1710573 () Bool)

(assert (=> d!430376 m!1710573))

(assert (=> b!1465589 d!430376))

(declare-fun d!430378 () Bool)

(assert (=> d!430378 (= (list!6095 lt!509801) (list!6099 (c!241666 lt!509801)))))

(declare-fun bs!344829 () Bool)

(assert (= bs!344829 d!430378))

(declare-fun m!1710575 () Bool)

(assert (=> bs!344829 m!1710575))

(assert (=> b!1465589 d!430378))

(declare-fun tp!412052 () Bool)

(declare-fun b!1465979 () Bool)

(declare-fun e!935124 () Bool)

(declare-fun tp!412053 () Bool)

(assert (=> b!1465979 (= e!935124 (and (inv!20322 (left!12914 (c!241668 (tokens!2124 other!32)))) tp!412053 (inv!20322 (right!13244 (c!241668 (tokens!2124 other!32)))) tp!412052))))

(declare-fun b!1465981 () Bool)

(declare-fun e!935123 () Bool)

(declare-fun tp!412051 () Bool)

(assert (=> b!1465981 (= e!935123 tp!412051)))

(declare-fun b!1465980 () Bool)

(declare-fun inv!20330 (IArray!10367) Bool)

(assert (=> b!1465980 (= e!935124 (and (inv!20330 (xs!7936 (c!241668 (tokens!2124 other!32)))) e!935123))))

(assert (=> b!1465583 (= tp!412013 (and (inv!20322 (c!241668 (tokens!2124 other!32))) e!935124))))

(assert (= (and b!1465583 ((_ is Node!5181) (c!241668 (tokens!2124 other!32)))) b!1465979))

(assert (= b!1465980 b!1465981))

(assert (= (and b!1465583 ((_ is Leaf!7721) (c!241668 (tokens!2124 other!32)))) b!1465980))

(declare-fun m!1710577 () Bool)

(assert (=> b!1465979 m!1710577))

(declare-fun m!1710579 () Bool)

(assert (=> b!1465979 m!1710579))

(declare-fun m!1710581 () Bool)

(assert (=> b!1465980 m!1710581))

(assert (=> b!1465583 m!1709325))

(declare-fun b!1465992 () Bool)

(declare-fun b_free!36567 () Bool)

(declare-fun b_next!37271 () Bool)

(assert (=> b!1465992 (= b_free!36567 (not b_next!37271))))

(declare-fun tp!412063 () Bool)

(declare-fun b_and!100041 () Bool)

(assert (=> b!1465992 (= tp!412063 b_and!100041)))

(declare-fun b_free!36569 () Bool)

(declare-fun b_next!37273 () Bool)

(assert (=> b!1465992 (= b_free!36569 (not b_next!37273))))

(declare-fun tp!412064 () Bool)

(declare-fun b_and!100043 () Bool)

(assert (=> b!1465992 (= tp!412064 b_and!100043)))

(declare-fun e!935133 () Bool)

(assert (=> b!1465992 (= e!935133 (and tp!412063 tp!412064))))

(declare-fun tp!412062 () Bool)

(declare-fun e!935135 () Bool)

(declare-fun b!1465991 () Bool)

(declare-fun inv!20317 (String!18091) Bool)

(declare-fun inv!20331 (TokenValueInjection!5194) Bool)

(assert (=> b!1465991 (= e!935135 (and tp!412062 (inv!20317 (tag!2941 (h!20604 (rules!11744 thiss!10022)))) (inv!20331 (transformation!2677 (h!20604 (rules!11744 thiss!10022)))) e!935133))))

(declare-fun b!1465990 () Bool)

(declare-fun e!935136 () Bool)

(declare-fun tp!412065 () Bool)

(assert (=> b!1465990 (= e!935136 (and e!935135 tp!412065))))

(assert (=> b!1465582 (= tp!412015 e!935136)))

(assert (= b!1465991 b!1465992))

(assert (= b!1465990 b!1465991))

(assert (= (and b!1465582 ((_ is Cons!15203) (rules!11744 thiss!10022))) b!1465990))

(declare-fun m!1710583 () Bool)

(assert (=> b!1465991 m!1710583))

(declare-fun m!1710585 () Bool)

(assert (=> b!1465991 m!1710585))

(declare-fun b!1465993 () Bool)

(declare-fun e!935138 () Bool)

(declare-fun tp!412068 () Bool)

(declare-fun tp!412067 () Bool)

(assert (=> b!1465993 (= e!935138 (and (inv!20322 (left!12914 (c!241668 (tokens!2124 thiss!10022)))) tp!412068 (inv!20322 (right!13244 (c!241668 (tokens!2124 thiss!10022)))) tp!412067))))

(declare-fun b!1465995 () Bool)

(declare-fun e!935137 () Bool)

(declare-fun tp!412066 () Bool)

(assert (=> b!1465995 (= e!935137 tp!412066)))

(declare-fun b!1465994 () Bool)

(assert (=> b!1465994 (= e!935138 (and (inv!20330 (xs!7936 (c!241668 (tokens!2124 thiss!10022)))) e!935137))))

(assert (=> b!1465581 (= tp!412014 (and (inv!20322 (c!241668 (tokens!2124 thiss!10022))) e!935138))))

(assert (= (and b!1465581 ((_ is Node!5181) (c!241668 (tokens!2124 thiss!10022)))) b!1465993))

(assert (= b!1465994 b!1465995))

(assert (= (and b!1465581 ((_ is Leaf!7721) (c!241668 (tokens!2124 thiss!10022)))) b!1465994))

(declare-fun m!1710587 () Bool)

(assert (=> b!1465993 m!1710587))

(declare-fun m!1710589 () Bool)

(assert (=> b!1465993 m!1710589))

(declare-fun m!1710591 () Bool)

(assert (=> b!1465994 m!1710591))

(assert (=> b!1465581 m!1709319))

(declare-fun b!1465998 () Bool)

(declare-fun b_free!36571 () Bool)

(declare-fun b_next!37275 () Bool)

(assert (=> b!1465998 (= b_free!36571 (not b_next!37275))))

(declare-fun tp!412070 () Bool)

(declare-fun b_and!100045 () Bool)

(assert (=> b!1465998 (= tp!412070 b_and!100045)))

(declare-fun b_free!36573 () Bool)

(declare-fun b_next!37277 () Bool)

(assert (=> b!1465998 (= b_free!36573 (not b_next!37277))))

(declare-fun tp!412071 () Bool)

(declare-fun b_and!100047 () Bool)

(assert (=> b!1465998 (= tp!412071 b_and!100047)))

(declare-fun e!935139 () Bool)

(assert (=> b!1465998 (= e!935139 (and tp!412070 tp!412071))))

(declare-fun tp!412069 () Bool)

(declare-fun b!1465997 () Bool)

(declare-fun e!935141 () Bool)

(assert (=> b!1465997 (= e!935141 (and tp!412069 (inv!20317 (tag!2941 (h!20604 (rules!11744 other!32)))) (inv!20331 (transformation!2677 (h!20604 (rules!11744 other!32)))) e!935139))))

(declare-fun b!1465996 () Bool)

(declare-fun e!935142 () Bool)

(declare-fun tp!412072 () Bool)

(assert (=> b!1465996 (= e!935142 (and e!935141 tp!412072))))

(assert (=> b!1465586 (= tp!412016 e!935142)))

(assert (= b!1465997 b!1465998))

(assert (= b!1465996 b!1465997))

(assert (= (and b!1465586 ((_ is Cons!15203) (rules!11744 other!32))) b!1465996))

(declare-fun m!1710593 () Bool)

(assert (=> b!1465997 m!1710593))

(declare-fun m!1710595 () Bool)

(assert (=> b!1465997 m!1710595))

(check-sat (not b!1465880) (not b!1465968) (not b!1465622) (not b!1465846) (not b!1465962) (not d!430220) (not b!1465692) (not b!1465673) (not d!430356) (not b!1465623) (not b!1465823) (not d!430364) (not d!430218) (not b!1465994) (not d!430204) (not b!1465827) (not d!430190) (not b!1465964) (not d!430224) (not b!1465993) (not b!1465676) (not d!430360) (not b!1465981) (not b!1465657) (not b!1465822) (not b!1465828) (not d!430362) (not d!430226) (not b!1465674) (not d!430336) b_and!100047 (not d!430230) (not b!1465961) b_and!100045 (not d!430208) (not b_next!37275) (not b!1465990) (not b!1465995) (not b!1465624) (not d!430250) (not d!430374) (not b!1465656) (not b!1465766) (not b!1465625) (not b!1465791) (not d!430366) (not d!430378) (not d!430368) (not b!1465951) (not b!1465660) (not b!1465889) (not b!1465845) (not b!1465997) (not d!430376) (not d!430372) (not b!1465887) (not b!1465965) (not b!1465821) (not d!430264) (not d!430296) (not d!430246) (not b!1465659) (not b_next!37273) (not b!1465790) (not d!430228) (not b!1465947) (not b!1465683) (not b!1465966) (not b!1465824) (not d!430210) (not b!1465945) (not b!1465948) (not b!1465581) (not b!1465677) (not b!1465825) (not b!1465847) (not b!1465661) (not d!430358) (not d!430298) (not b_next!37271) (not b!1465885) (not b!1465980) (not d!430206) (not b!1465672) (not d!430232) (not b!1465826) (not d!430240) (not b!1465695) (not d!430350) (not d!430352) (not b!1465697) (not b!1465690) (not d!430266) (not b!1465950) (not b!1465789) (not d!430212) (not d!430216) (not b!1465720) (not b!1465675) (not b!1465658) (not b!1465583) (not b!1465682) (not b!1465848) (not b!1465996) (not d!430222) b_and!100041 (not b!1465792) (not b!1465969) (not b!1465991) (not d!430370) (not d!430354) (not b!1465721) (not b!1465776) (not b!1465979) (not b!1465944) b_and!100043 (not d!430288) (not b_next!37277) (not b!1465767) (not d!430188) (not d!430234))
(check-sat b_and!100047 (not b_next!37273) (not b_next!37271) b_and!100041 b_and!100043 (not b_next!37277) (not b_next!37275) b_and!100045)
