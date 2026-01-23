; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!132482 () Bool)

(assert start!132482)

(declare-fun b!1432375 () Bool)

(declare-fun e!914307 () Bool)

(declare-datatypes ((C!8014 0))(
  ( (C!8015 (val!4577 Int)) )
))
(declare-datatypes ((List!14918 0))(
  ( (Nil!14852) (Cons!14852 (h!20253 C!8014) (t!127137 List!14918)) )
))
(declare-datatypes ((IArray!10073 0))(
  ( (IArray!10074 (innerList!5094 List!14918)) )
))
(declare-datatypes ((Conc!5034 0))(
  ( (Node!5034 (left!12659 Conc!5034) (right!12989 Conc!5034) (csize!10298 Int) (cheight!5245 Int)) (Leaf!7538 (xs!7767 IArray!10073) (csize!10299 Int)) (Empty!5034) )
))
(declare-datatypes ((BalanceConc!10008 0))(
  ( (BalanceConc!10009 (c!235449 Conc!5034)) )
))
(declare-datatypes ((List!14919 0))(
  ( (Nil!14853) (Cons!14853 (h!20254 (_ BitVec 16)) (t!127138 List!14919)) )
))
(declare-datatypes ((TokenValue!2694 0))(
  ( (FloatLiteralValue!5388 (text!19303 List!14919)) (TokenValueExt!2693 (__x!9186 Int)) (Broken!13470 (value!83837 List!14919)) (Object!2759) (End!2694) (Def!2694) (Underscore!2694) (Match!2694) (Else!2694) (Error!2694) (Case!2694) (If!2694) (Extends!2694) (Abstract!2694) (Class!2694) (Val!2694) (DelimiterValue!5388 (del!2754 List!14919)) (KeywordValue!2700 (value!83838 List!14919)) (CommentValue!5388 (value!83839 List!14919)) (WhitespaceValue!5388 (value!83840 List!14919)) (IndentationValue!2694 (value!83841 List!14919)) (String!17727) (Int32!2694) (Broken!13471 (value!83842 List!14919)) (Boolean!2695) (Unit!22411) (OperatorValue!2697 (op!2754 List!14919)) (IdentifierValue!5388 (value!83843 List!14919)) (IdentifierValue!5389 (value!83844 List!14919)) (WhitespaceValue!5389 (value!83845 List!14919)) (True!5388) (False!5388) (Broken!13472 (value!83846 List!14919)) (Broken!13473 (value!83847 List!14919)) (True!5389) (RightBrace!2694) (RightBracket!2694) (Colon!2694) (Null!2694) (Comma!2694) (LeftBracket!2694) (False!5389) (LeftBrace!2694) (ImaginaryLiteralValue!2694 (text!19304 List!14919)) (StringLiteralValue!8082 (value!83848 List!14919)) (EOFValue!2694 (value!83849 List!14919)) (IdentValue!2694 (value!83850 List!14919)) (DelimiterValue!5389 (value!83851 List!14919)) (DedentValue!2694 (value!83852 List!14919)) (NewLineValue!2694 (value!83853 List!14919)) (IntegerValue!8082 (value!83854 (_ BitVec 32)) (text!19305 List!14919)) (IntegerValue!8083 (value!83855 Int) (text!19306 List!14919)) (Times!2694) (Or!2694) (Equal!2694) (Minus!2694) (Broken!13474 (value!83856 List!14919)) (And!2694) (Div!2694) (LessEqual!2694) (Mod!2694) (Concat!6612) (Not!2694) (Plus!2694) (SpaceValue!2694 (value!83857 List!14919)) (IntegerValue!8084 (value!83858 Int) (text!19307 List!14919)) (StringLiteralValue!8083 (text!19308 List!14919)) (FloatLiteralValue!5389 (text!19309 List!14919)) (BytesLiteralValue!2694 (value!83859 List!14919)) (CommentValue!5389 (value!83860 List!14919)) (StringLiteralValue!8084 (value!83861 List!14919)) (ErrorTokenValue!2694 (msg!2755 List!14919)) )
))
(declare-datatypes ((Regex!3918 0))(
  ( (ElementMatch!3918 (c!235450 C!8014)) (Concat!6613 (regOne!8348 Regex!3918) (regTwo!8348 Regex!3918)) (EmptyExpr!3918) (Star!3918 (reg!4247 Regex!3918)) (EmptyLang!3918) (Union!3918 (regOne!8349 Regex!3918) (regTwo!8349 Regex!3918)) )
))
(declare-datatypes ((String!17728 0))(
  ( (String!17729 (value!83862 String)) )
))
(declare-datatypes ((TokenValueInjection!5048 0))(
  ( (TokenValueInjection!5049 (toValue!3907 Int) (toChars!3766 Int)) )
))
(declare-datatypes ((Rule!5008 0))(
  ( (Rule!5009 (regex!2604 Regex!3918) (tag!2866 String!17728) (isSeparator!2604 Bool) (transformation!2604 TokenValueInjection!5048)) )
))
(declare-datatypes ((Token!4870 0))(
  ( (Token!4871 (value!83863 TokenValue!2694) (rule!4367 Rule!5008) (size!12192 Int) (originalCharacters!3466 List!14918)) )
))
(declare-datatypes ((List!14920 0))(
  ( (Nil!14854) (Cons!14854 (h!20255 Token!4870) (t!127139 List!14920)) )
))
(declare-fun lt!486600 () List!14920)

(declare-datatypes ((IArray!10075 0))(
  ( (IArray!10076 (innerList!5095 List!14920)) )
))
(declare-datatypes ((Conc!5035 0))(
  ( (Node!5035 (left!12660 Conc!5035) (right!12990 Conc!5035) (csize!10300 Int) (cheight!5246 Int)) (Leaf!7539 (xs!7768 IArray!10075) (csize!10301 Int)) (Empty!5035) )
))
(declare-datatypes ((BalanceConc!10010 0))(
  ( (BalanceConc!10011 (c!235451 Conc!5035)) )
))
(declare-datatypes ((List!14921 0))(
  ( (Nil!14855) (Cons!14855 (h!20256 Rule!5008) (t!127140 List!14921)) )
))
(declare-datatypes ((PrintableTokens!990 0))(
  ( (PrintableTokens!991 (rules!11337 List!14921) (tokens!1953 BalanceConc!10010)) )
))
(declare-fun thiss!10022 () PrintableTokens!990)

(declare-datatypes ((LexerInterface!2268 0))(
  ( (LexerInterfaceExt!2265 (__x!9187 Int)) (Lexer!2266) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!226 (LexerInterface!2268 List!14920 List!14921) Bool)

(assert (=> b!1432375 (= e!914307 (tokensListTwoByTwoPredicateSeparableList!226 Lexer!2266 lt!486600 (rules!11337 thiss!10022)))))

(declare-fun e!914308 () Bool)

(declare-fun other!32 () PrintableTokens!990)

(declare-fun b!1432376 () Bool)

(declare-fun tp!405993 () Bool)

(declare-fun e!914309 () Bool)

(declare-fun inv!19721 (BalanceConc!10010) Bool)

(assert (=> b!1432376 (= e!914308 (and tp!405993 (inv!19721 (tokens!1953 other!32)) e!914309))))

(declare-fun b!1432377 () Bool)

(declare-fun e!914306 () Bool)

(declare-fun e!914304 () Bool)

(assert (=> b!1432377 (= e!914306 (not e!914304))))

(declare-fun res!648398 () Bool)

(assert (=> b!1432377 (=> res!648398 e!914304)))

(declare-fun lt!486596 () Token!4870)

(declare-fun lt!486594 () Token!4870)

(declare-fun separableTokensPredicate!503 (LexerInterface!2268 Token!4870 Token!4870 List!14921) Bool)

(assert (=> b!1432377 (= res!648398 (not (separableTokensPredicate!503 Lexer!2266 lt!486594 lt!486596 (rules!11337 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1201 (LexerInterface!2268 List!14921 Token!4870) Bool)

(assert (=> b!1432377 (rulesProduceIndividualToken!1201 Lexer!2266 (rules!11337 thiss!10022) lt!486596)))

(declare-datatypes ((Unit!22412 0))(
  ( (Unit!22413) )
))
(declare-fun lt!486603 () Unit!22412)

(declare-fun lt!486602 () List!14920)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!386 (LexerInterface!2268 List!14921 List!14920 Token!4870) Unit!22412)

(assert (=> b!1432377 (= lt!486603 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!386 Lexer!2266 (rules!11337 thiss!10022) lt!486602 lt!486596))))

(declare-fun head!2864 (BalanceConc!10010) Token!4870)

(assert (=> b!1432377 (= lt!486596 (head!2864 (tokens!1953 other!32)))))

(declare-fun list!5901 (BalanceConc!10010) List!14920)

(assert (=> b!1432377 (= lt!486602 (list!5901 (tokens!1953 other!32)))))

(assert (=> b!1432377 (rulesProduceIndividualToken!1201 Lexer!2266 (rules!11337 thiss!10022) lt!486594)))

(declare-fun lt!486598 () Unit!22412)

(declare-fun lt!486599 () List!14920)

(assert (=> b!1432377 (= lt!486598 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!386 Lexer!2266 (rules!11337 thiss!10022) lt!486599 lt!486594))))

(declare-fun last!146 (BalanceConc!10010) Token!4870)

(assert (=> b!1432377 (= lt!486594 (last!146 (tokens!1953 thiss!10022)))))

(assert (=> b!1432377 (= lt!486599 (list!5901 (tokens!1953 thiss!10022)))))

(declare-fun b!1432378 () Bool)

(declare-fun res!648399 () Bool)

(assert (=> b!1432378 (=> (not res!648399) (not e!914306))))

(declare-fun isEmpty!9214 (BalanceConc!10010) Bool)

(assert (=> b!1432378 (= res!648399 (not (isEmpty!9214 (tokens!1953 thiss!10022))))))

(declare-fun res!648397 () Bool)

(declare-fun e!914311 () Bool)

(assert (=> start!132482 (=> (not res!648397) (not e!914311))))

(assert (=> start!132482 (= res!648397 (= (rules!11337 thiss!10022) (rules!11337 other!32)))))

(assert (=> start!132482 e!914311))

(declare-fun e!914305 () Bool)

(declare-fun inv!19722 (PrintableTokens!990) Bool)

(assert (=> start!132482 (and (inv!19722 thiss!10022) e!914305)))

(assert (=> start!132482 (and (inv!19722 other!32) e!914308)))

(declare-fun b!1432379 () Bool)

(declare-fun tp!405996 () Bool)

(declare-fun inv!19723 (Conc!5035) Bool)

(assert (=> b!1432379 (= e!914309 (and (inv!19723 (c!235451 (tokens!1953 other!32))) tp!405996))))

(declare-fun b!1432380 () Bool)

(declare-fun e!914310 () Bool)

(declare-fun tp!405994 () Bool)

(assert (=> b!1432380 (= e!914310 (and (inv!19723 (c!235451 (tokens!1953 thiss!10022))) tp!405994))))

(declare-fun b!1432381 () Bool)

(declare-fun tp!405995 () Bool)

(assert (=> b!1432381 (= e!914305 (and tp!405995 (inv!19721 (tokens!1953 thiss!10022)) e!914310))))

(declare-fun b!1432382 () Bool)

(assert (=> b!1432382 (= e!914311 e!914306)))

(declare-fun res!648400 () Bool)

(assert (=> b!1432382 (=> (not res!648400) (not e!914306))))

(assert (=> b!1432382 (= res!648400 (not (isEmpty!9214 (tokens!1953 other!32))))))

(declare-fun lt!486601 () Unit!22412)

(declare-fun lemmaInvariant!300 (PrintableTokens!990) Unit!22412)

(assert (=> b!1432382 (= lt!486601 (lemmaInvariant!300 thiss!10022))))

(declare-fun lt!486597 () Unit!22412)

(assert (=> b!1432382 (= lt!486597 (lemmaInvariant!300 other!32))))

(declare-fun b!1432383 () Bool)

(assert (=> b!1432383 (= e!914304 true)))

(declare-fun lt!486595 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!103 (LexerInterface!2268 BalanceConc!10010 Int List!14921) Bool)

(declare-fun ++!3957 (BalanceConc!10010 BalanceConc!10010) BalanceConc!10010)

(assert (=> b!1432383 (= lt!486595 (tokensListTwoByTwoPredicateSeparable!103 Lexer!2266 (++!3957 (tokens!1953 thiss!10022) (tokens!1953 other!32)) 0 (rules!11337 thiss!10022)))))

(assert (=> b!1432383 e!914307))

(declare-fun res!648396 () Bool)

(assert (=> b!1432383 (=> (not res!648396) (not e!914307))))

(declare-fun rulesProduceEachTokenIndividuallyList!711 (LexerInterface!2268 List!14921 List!14920) Bool)

(assert (=> b!1432383 (= res!648396 (rulesProduceEachTokenIndividuallyList!711 Lexer!2266 (rules!11337 thiss!10022) lt!486600))))

(declare-fun ++!3958 (List!14920 List!14920) List!14920)

(assert (=> b!1432383 (= lt!486600 (++!3958 lt!486599 lt!486602))))

(declare-fun lt!486604 () Unit!22412)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!41 (LexerInterface!2268 List!14921 List!14920 List!14920) Unit!22412)

(assert (=> b!1432383 (= lt!486604 (lemmaRulesProduceEachTokenIndividuallyConcat!41 Lexer!2266 (rules!11337 thiss!10022) lt!486599 lt!486602))))

(declare-fun lt!486593 () Unit!22412)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!41 (LexerInterface!2268 List!14920 List!14920 List!14921) Unit!22412)

(assert (=> b!1432383 (= lt!486593 (tokensListTwoByTwoPredicateConcatSeparableTokensList!41 Lexer!2266 lt!486599 lt!486602 (rules!11337 thiss!10022)))))

(assert (= (and start!132482 res!648397) b!1432382))

(assert (= (and b!1432382 res!648400) b!1432378))

(assert (= (and b!1432378 res!648399) b!1432377))

(assert (= (and b!1432377 (not res!648398)) b!1432383))

(assert (= (and b!1432383 res!648396) b!1432375))

(assert (= b!1432381 b!1432380))

(assert (= start!132482 b!1432381))

(assert (= b!1432376 b!1432379))

(assert (= start!132482 b!1432376))

(declare-fun m!1632301 () Bool)

(assert (=> b!1432379 m!1632301))

(declare-fun m!1632303 () Bool)

(assert (=> b!1432375 m!1632303))

(declare-fun m!1632305 () Bool)

(assert (=> b!1432376 m!1632305))

(declare-fun m!1632307 () Bool)

(assert (=> b!1432377 m!1632307))

(declare-fun m!1632309 () Bool)

(assert (=> b!1432377 m!1632309))

(declare-fun m!1632311 () Bool)

(assert (=> b!1432377 m!1632311))

(declare-fun m!1632313 () Bool)

(assert (=> b!1432377 m!1632313))

(declare-fun m!1632315 () Bool)

(assert (=> b!1432377 m!1632315))

(declare-fun m!1632317 () Bool)

(assert (=> b!1432377 m!1632317))

(declare-fun m!1632319 () Bool)

(assert (=> b!1432377 m!1632319))

(declare-fun m!1632321 () Bool)

(assert (=> b!1432377 m!1632321))

(declare-fun m!1632323 () Bool)

(assert (=> b!1432377 m!1632323))

(declare-fun m!1632325 () Bool)

(assert (=> b!1432383 m!1632325))

(declare-fun m!1632327 () Bool)

(assert (=> b!1432383 m!1632327))

(declare-fun m!1632329 () Bool)

(assert (=> b!1432383 m!1632329))

(declare-fun m!1632331 () Bool)

(assert (=> b!1432383 m!1632331))

(declare-fun m!1632333 () Bool)

(assert (=> b!1432383 m!1632333))

(assert (=> b!1432383 m!1632325))

(declare-fun m!1632335 () Bool)

(assert (=> b!1432383 m!1632335))

(declare-fun m!1632337 () Bool)

(assert (=> b!1432378 m!1632337))

(declare-fun m!1632339 () Bool)

(assert (=> b!1432381 m!1632339))

(declare-fun m!1632341 () Bool)

(assert (=> start!132482 m!1632341))

(declare-fun m!1632343 () Bool)

(assert (=> start!132482 m!1632343))

(declare-fun m!1632345 () Bool)

(assert (=> b!1432380 m!1632345))

(declare-fun m!1632347 () Bool)

(assert (=> b!1432382 m!1632347))

(declare-fun m!1632349 () Bool)

(assert (=> b!1432382 m!1632349))

(declare-fun m!1632351 () Bool)

(assert (=> b!1432382 m!1632351))

(push 1)

(assert (not start!132482))

(assert (not b!1432380))

(assert (not b!1432382))

(assert (not b!1432376))

(assert (not b!1432378))

(assert (not b!1432383))

(assert (not b!1432375))

(assert (not b!1432379))

(assert (not b!1432377))

(assert (not b!1432381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

