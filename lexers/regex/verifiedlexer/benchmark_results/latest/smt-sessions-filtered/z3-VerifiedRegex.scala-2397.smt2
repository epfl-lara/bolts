; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123614 () Bool)

(assert start!123614)

(declare-fun b!1369797 () Bool)

(declare-fun b_free!33187 () Bool)

(declare-fun b_next!33891 () Bool)

(assert (=> b!1369797 (= b_free!33187 (not b_next!33891))))

(declare-fun tp!393660 () Bool)

(declare-fun b_and!91795 () Bool)

(assert (=> b!1369797 (= tp!393660 b_and!91795)))

(declare-fun b_free!33189 () Bool)

(declare-fun b_next!33893 () Bool)

(assert (=> b!1369797 (= b_free!33189 (not b_next!33893))))

(declare-fun tp!393666 () Bool)

(declare-fun b_and!91797 () Bool)

(assert (=> b!1369797 (= tp!393666 b_and!91797)))

(declare-fun b!1369796 () Bool)

(declare-fun b_free!33191 () Bool)

(declare-fun b_next!33895 () Bool)

(assert (=> b!1369796 (= b_free!33191 (not b_next!33895))))

(declare-fun tp!393663 () Bool)

(declare-fun b_and!91799 () Bool)

(assert (=> b!1369796 (= tp!393663 b_and!91799)))

(declare-fun b_free!33193 () Bool)

(declare-fun b_next!33897 () Bool)

(assert (=> b!1369796 (= b_free!33193 (not b_next!33897))))

(declare-fun tp!393665 () Bool)

(declare-fun b_and!91801 () Bool)

(assert (=> b!1369796 (= tp!393665 b_and!91801)))

(declare-fun b!1369798 () Bool)

(declare-fun b_free!33195 () Bool)

(declare-fun b_next!33899 () Bool)

(assert (=> b!1369798 (= b_free!33195 (not b_next!33899))))

(declare-fun tp!393662 () Bool)

(declare-fun b_and!91803 () Bool)

(assert (=> b!1369798 (= tp!393662 b_and!91803)))

(declare-fun b_free!33197 () Bool)

(declare-fun b_next!33901 () Bool)

(assert (=> b!1369798 (= b_free!33197 (not b_next!33901))))

(declare-fun tp!393656 () Bool)

(declare-fun b_and!91805 () Bool)

(assert (=> b!1369798 (= tp!393656 b_and!91805)))

(declare-fun b!1369787 () Bool)

(assert (=> b!1369787 true))

(assert (=> b!1369787 true))

(declare-fun b!1369808 () Bool)

(assert (=> b!1369808 true))

(declare-fun b!1369788 () Bool)

(assert (=> b!1369788 true))

(declare-fun b!1369771 () Bool)

(declare-fun res!616982 () Bool)

(declare-fun e!875686 () Bool)

(assert (=> b!1369771 (=> res!616982 e!875686)))

(declare-datatypes ((C!7724 0))(
  ( (C!7725 (val!4422 Int)) )
))
(declare-datatypes ((Regex!3717 0))(
  ( (ElementMatch!3717 (c!225388 C!7724)) (Concat!6210 (regOne!7946 Regex!3717) (regTwo!7946 Regex!3717)) (EmptyExpr!3717) (Star!3717 (reg!4046 Regex!3717)) (EmptyLang!3717) (Union!3717 (regOne!7947 Regex!3717) (regTwo!7947 Regex!3717)) )
))
(declare-fun lt!454594 () Regex!3717)

(declare-datatypes ((List!13942 0))(
  ( (Nil!13876) (Cons!13876 (h!19277 C!7724) (t!121435 List!13942)) )
))
(declare-fun lt!454588 () List!13942)

(declare-fun matchR!1710 (Regex!3717 List!13942) Bool)

(assert (=> b!1369771 (= res!616982 (not (matchR!1710 lt!454594 lt!454588)))))

(declare-fun b!1369773 () Bool)

(declare-fun res!616963 () Bool)

(assert (=> b!1369773 (=> res!616963 e!875686)))

(declare-fun lt!454593 () C!7724)

(declare-fun contains!2593 (List!13942 C!7724) Bool)

(assert (=> b!1369773 (= res!616963 (not (contains!2593 lt!454588 lt!454593)))))

(declare-fun e!875679 () Bool)

(declare-fun tp!393658 () Bool)

(declare-fun e!875696 () Bool)

(declare-fun b!1369774 () Bool)

(declare-datatypes ((List!13943 0))(
  ( (Nil!13877) (Cons!13877 (h!19278 (_ BitVec 16)) (t!121436 List!13943)) )
))
(declare-datatypes ((TokenValue!2493 0))(
  ( (FloatLiteralValue!4986 (text!17896 List!13943)) (TokenValueExt!2492 (__x!8815 Int)) (Broken!12465 (value!78092 List!13943)) (Object!2558) (End!2493) (Def!2493) (Underscore!2493) (Match!2493) (Else!2493) (Error!2493) (Case!2493) (If!2493) (Extends!2493) (Abstract!2493) (Class!2493) (Val!2493) (DelimiterValue!4986 (del!2553 List!13943)) (KeywordValue!2499 (value!78093 List!13943)) (CommentValue!4986 (value!78094 List!13943)) (WhitespaceValue!4986 (value!78095 List!13943)) (IndentationValue!2493 (value!78096 List!13943)) (String!16700) (Int32!2493) (Broken!12466 (value!78097 List!13943)) (Boolean!2494) (Unit!20096) (OperatorValue!2496 (op!2553 List!13943)) (IdentifierValue!4986 (value!78098 List!13943)) (IdentifierValue!4987 (value!78099 List!13943)) (WhitespaceValue!4987 (value!78100 List!13943)) (True!4986) (False!4986) (Broken!12467 (value!78101 List!13943)) (Broken!12468 (value!78102 List!13943)) (True!4987) (RightBrace!2493) (RightBracket!2493) (Colon!2493) (Null!2493) (Comma!2493) (LeftBracket!2493) (False!4987) (LeftBrace!2493) (ImaginaryLiteralValue!2493 (text!17897 List!13943)) (StringLiteralValue!7479 (value!78103 List!13943)) (EOFValue!2493 (value!78104 List!13943)) (IdentValue!2493 (value!78105 List!13943)) (DelimiterValue!4987 (value!78106 List!13943)) (DedentValue!2493 (value!78107 List!13943)) (NewLineValue!2493 (value!78108 List!13943)) (IntegerValue!7479 (value!78109 (_ BitVec 32)) (text!17898 List!13943)) (IntegerValue!7480 (value!78110 Int) (text!17899 List!13943)) (Times!2493) (Or!2493) (Equal!2493) (Minus!2493) (Broken!12469 (value!78111 List!13943)) (And!2493) (Div!2493) (LessEqual!2493) (Mod!2493) (Concat!6211) (Not!2493) (Plus!2493) (SpaceValue!2493 (value!78112 List!13943)) (IntegerValue!7481 (value!78113 Int) (text!17900 List!13943)) (StringLiteralValue!7480 (text!17901 List!13943)) (FloatLiteralValue!4987 (text!17902 List!13943)) (BytesLiteralValue!2493 (value!78114 List!13943)) (CommentValue!4987 (value!78115 List!13943)) (StringLiteralValue!7481 (value!78116 List!13943)) (ErrorTokenValue!2493 (msg!2554 List!13943)) )
))
(declare-datatypes ((IArray!9141 0))(
  ( (IArray!9142 (innerList!4628 List!13942)) )
))
(declare-datatypes ((Conc!4568 0))(
  ( (Node!4568 (left!11875 Conc!4568) (right!12205 Conc!4568) (csize!9366 Int) (cheight!4779 Int)) (Leaf!6966 (xs!7295 IArray!9141) (csize!9367 Int)) (Empty!4568) )
))
(declare-datatypes ((BalanceConc!9076 0))(
  ( (BalanceConc!9077 (c!225389 Conc!4568)) )
))
(declare-datatypes ((String!16701 0))(
  ( (String!16702 (value!78117 String)) )
))
(declare-datatypes ((TokenValueInjection!4646 0))(
  ( (TokenValueInjection!4647 (toValue!3670 Int) (toChars!3529 Int)) )
))
(declare-datatypes ((Rule!4606 0))(
  ( (Rule!4607 (regex!2403 Regex!3717) (tag!2665 String!16701) (isSeparator!2403 Bool) (transformation!2403 TokenValueInjection!4646)) )
))
(declare-datatypes ((Token!4468 0))(
  ( (Token!4469 (value!78118 TokenValue!2493) (rule!4158 Rule!4606) (size!11375 Int) (originalCharacters!3265 List!13942)) )
))
(declare-fun t2!34 () Token!4468)

(declare-fun inv!18230 (String!16701) Bool)

(declare-fun inv!18233 (TokenValueInjection!4646) Bool)

(assert (=> b!1369774 (= e!875696 (and tp!393658 (inv!18230 (tag!2665 (rule!4158 t2!34))) (inv!18233 (transformation!2403 (rule!4158 t2!34))) e!875679))))

(declare-fun b!1369775 () Bool)

(declare-fun res!616969 () Bool)

(declare-fun e!875687 () Bool)

(assert (=> b!1369775 (=> res!616969 e!875687)))

(declare-datatypes ((List!13944 0))(
  ( (Nil!13878) (Cons!13878 (h!19279 Rule!4606) (t!121437 List!13944)) )
))
(declare-fun rules!2550 () List!13944)

(declare-fun lt!454587 () BalanceConc!9076)

(declare-datatypes ((LexerInterface!2098 0))(
  ( (LexerInterfaceExt!2095 (__x!8816 Int)) (Lexer!2096) )
))
(declare-fun thiss!19762 () LexerInterface!2098)

(declare-datatypes ((tuple2!13474 0))(
  ( (tuple2!13475 (_1!7623 Token!4468) (_2!7623 List!13942)) )
))
(declare-datatypes ((Option!2666 0))(
  ( (None!2665) (Some!2665 (v!21461 tuple2!13474)) )
))
(declare-fun maxPrefix!1080 (LexerInterface!2098 List!13944 List!13942) Option!2666)

(declare-fun list!5342 (BalanceConc!9076) List!13942)

(assert (=> b!1369775 (= res!616969 (not (= (maxPrefix!1080 thiss!19762 rules!2550 (list!5342 lt!454587)) (Some!2665 (tuple2!13475 t2!34 Nil!13876)))))))

(declare-fun b!1369776 () Bool)

(declare-fun res!616968 () Bool)

(declare-fun e!875699 () Bool)

(assert (=> b!1369776 (=> (not res!616968) (not e!875699))))

(declare-fun t1!34 () Token!4468)

(assert (=> b!1369776 (= res!616968 (not (= (isSeparator!2403 (rule!4158 t1!34)) (isSeparator!2403 (rule!4158 t2!34)))))))

(declare-fun b!1369777 () Bool)

(declare-fun e!875676 () Bool)

(declare-fun e!875677 () Bool)

(assert (=> b!1369777 (= e!875676 e!875677)))

(declare-fun res!616972 () Bool)

(assert (=> b!1369777 (=> res!616972 e!875677)))

(declare-fun lt!454595 () List!13942)

(declare-fun ++!3586 (List!13942 List!13942) List!13942)

(declare-fun getSuffix!565 (List!13942 List!13942) List!13942)

(assert (=> b!1369777 (= res!616972 (not (= lt!454588 (++!3586 lt!454595 (getSuffix!565 lt!454588 lt!454595)))))))

(declare-fun lambda!58062 () Int)

(declare-fun pickWitness!172 (Int) List!13942)

(assert (=> b!1369777 (= lt!454588 (pickWitness!172 lambda!58062))))

(declare-fun b!1369778 () Bool)

(declare-fun res!616987 () Bool)

(assert (=> b!1369778 (=> (not res!616987) (not e!875699))))

(declare-fun isEmpty!8356 (List!13944) Bool)

(assert (=> b!1369778 (= res!616987 (not (isEmpty!8356 rules!2550)))))

(declare-fun tp!393655 () Bool)

(declare-fun b!1369772 () Bool)

(declare-fun e!875695 () Bool)

(declare-fun inv!21 (TokenValue!2493) Bool)

(assert (=> b!1369772 (= e!875695 (and (inv!21 (value!78118 t2!34)) e!875696 tp!393655))))

(declare-fun res!616979 () Bool)

(assert (=> start!123614 (=> (not res!616979) (not e!875699))))

(get-info :version)

(assert (=> start!123614 (= res!616979 ((_ is Lexer!2096) thiss!19762))))

(assert (=> start!123614 e!875699))

(assert (=> start!123614 true))

(declare-fun e!875685 () Bool)

(assert (=> start!123614 e!875685))

(declare-fun e!875680 () Bool)

(declare-fun inv!18234 (Token!4468) Bool)

(assert (=> start!123614 (and (inv!18234 t1!34) e!875680)))

(assert (=> start!123614 (and (inv!18234 t2!34) e!875695)))

(declare-fun b!1369779 () Bool)

(declare-fun e!875678 () Bool)

(assert (=> b!1369779 (= e!875678 e!875687)))

(declare-fun res!616971 () Bool)

(assert (=> b!1369779 (=> res!616971 e!875687)))

(declare-datatypes ((List!13945 0))(
  ( (Nil!13879) (Cons!13879 (h!19280 Token!4468) (t!121438 List!13945)) )
))
(declare-datatypes ((IArray!9143 0))(
  ( (IArray!9144 (innerList!4629 List!13945)) )
))
(declare-datatypes ((Conc!4569 0))(
  ( (Node!4569 (left!11876 Conc!4569) (right!12206 Conc!4569) (csize!9368 Int) (cheight!4780 Int)) (Leaf!6967 (xs!7296 IArray!9143) (csize!9369 Int)) (Empty!4569) )
))
(declare-datatypes ((BalanceConc!9078 0))(
  ( (BalanceConc!9079 (c!225390 Conc!4569)) )
))
(declare-datatypes ((tuple2!13476 0))(
  ( (tuple2!13477 (_1!7624 BalanceConc!9078) (_2!7624 BalanceConc!9076)) )
))
(declare-fun lt!454583 () tuple2!13476)

(declare-fun lt!454582 () List!13945)

(declare-fun list!5343 (BalanceConc!9078) List!13945)

(assert (=> b!1369779 (= res!616971 (not (= (list!5343 (_1!7624 lt!454583)) lt!454582)))))

(assert (=> b!1369779 (= lt!454582 (Cons!13879 t2!34 Nil!13879))))

(declare-fun lt!454590 () BalanceConc!9076)

(declare-fun lex!925 (LexerInterface!2098 List!13944 BalanceConc!9076) tuple2!13476)

(assert (=> b!1369779 (= lt!454583 (lex!925 thiss!19762 rules!2550 lt!454590))))

(declare-fun print!864 (LexerInterface!2098 BalanceConc!9078) BalanceConc!9076)

(declare-fun singletonSeq!1032 (Token!4468) BalanceConc!9078)

(assert (=> b!1369779 (= lt!454590 (print!864 thiss!19762 (singletonSeq!1032 t2!34)))))

(declare-fun b!1369780 () Bool)

(declare-fun res!616975 () Bool)

(assert (=> b!1369780 (=> res!616975 e!875687)))

(declare-datatypes ((tuple2!13478 0))(
  ( (tuple2!13479 (_1!7625 List!13945) (_2!7625 List!13942)) )
))
(declare-fun lexList!616 (LexerInterface!2098 List!13944 List!13942) tuple2!13478)

(assert (=> b!1369780 (= res!616975 (not (= (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454590)) (tuple2!13479 lt!454582 Nil!13876))))))

(declare-fun b!1369781 () Bool)

(declare-fun res!616988 () Bool)

(declare-fun e!875683 () Bool)

(assert (=> b!1369781 (=> (not res!616988) (not e!875683))))

(declare-fun separableTokensPredicate!381 (LexerInterface!2098 Token!4468 Token!4468 List!13944) Bool)

(assert (=> b!1369781 (= res!616988 (not (separableTokensPredicate!381 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1369782 () Bool)

(declare-fun res!616974 () Bool)

(assert (=> b!1369782 (=> (not res!616974) (not e!875699))))

(declare-fun rulesProduceIndividualToken!1067 (LexerInterface!2098 List!13944 Token!4468) Bool)

(assert (=> b!1369782 (= res!616974 (rulesProduceIndividualToken!1067 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!393659 () Bool)

(declare-fun e!875693 () Bool)

(declare-fun e!875681 () Bool)

(declare-fun b!1369783 () Bool)

(assert (=> b!1369783 (= e!875693 (and tp!393659 (inv!18230 (tag!2665 (h!19279 rules!2550))) (inv!18233 (transformation!2403 (h!19279 rules!2550))) e!875681))))

(declare-fun b!1369784 () Bool)

(declare-fun res!616965 () Bool)

(assert (=> b!1369784 (=> res!616965 e!875687)))

(declare-fun contains!2594 (List!13944 Rule!4606) Bool)

(assert (=> b!1369784 (= res!616965 (not (contains!2594 rules!2550 (rule!4158 t2!34))))))

(declare-fun b!1369785 () Bool)

(declare-fun res!616985 () Bool)

(assert (=> b!1369785 (=> res!616985 e!875678)))

(declare-fun lt!454578 () List!13942)

(assert (=> b!1369785 (= res!616985 (not (= (maxPrefix!1080 thiss!19762 rules!2550 lt!454578) (Some!2665 (tuple2!13475 t1!34 Nil!13876)))))))

(declare-fun b!1369786 () Bool)

(assert (=> b!1369786 (= e!875699 e!875683)))

(declare-fun res!616970 () Bool)

(assert (=> b!1369786 (=> (not res!616970) (not e!875683))))

(declare-fun size!11376 (BalanceConc!9076) Int)

(assert (=> b!1369786 (= res!616970 (> (size!11376 lt!454587) 0))))

(declare-fun charsOf!1375 (Token!4468) BalanceConc!9076)

(assert (=> b!1369786 (= lt!454587 (charsOf!1375 t2!34))))

(declare-fun e!875690 () Bool)

(assert (=> b!1369787 (= e!875690 (not e!875676))))

(declare-fun res!616960 () Bool)

(assert (=> b!1369787 (=> res!616960 e!875676)))

(declare-fun Exists!869 (Int) Bool)

(assert (=> b!1369787 (= res!616960 (not (Exists!869 lambda!58062)))))

(assert (=> b!1369787 (Exists!869 lambda!58062)))

(declare-datatypes ((Unit!20097 0))(
  ( (Unit!20098) )
))
(declare-fun lt!454581 () Unit!20097)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!187 (Regex!3717 List!13942) Unit!20097)

(assert (=> b!1369787 (= lt!454581 (lemmaPrefixMatchThenExistsStringThatMatches!187 lt!454594 lt!454595))))

(declare-fun e!875700 () Bool)

(declare-fun e!875691 () Bool)

(assert (=> b!1369788 (= e!875700 e!875691)))

(declare-fun res!616981 () Bool)

(assert (=> b!1369788 (=> res!616981 e!875691)))

(declare-fun lambda!58065 () Int)

(declare-fun exists!464 (List!13944 Int) Bool)

(assert (=> b!1369788 (= res!616981 (not (exists!464 rules!2550 lambda!58065)))))

(assert (=> b!1369788 (exists!464 rules!2550 lambda!58065)))

(declare-fun lt!454577 () Regex!3717)

(declare-fun lt!454589 () Unit!20097)

(declare-fun lambda!58063 () Int)

(declare-fun lemmaMapContains!122 (List!13944 Int Regex!3717) Unit!20097)

(assert (=> b!1369788 (= lt!454589 (lemmaMapContains!122 rules!2550 lambda!58063 lt!454577))))

(declare-fun b!1369789 () Bool)

(declare-fun res!616973 () Bool)

(assert (=> b!1369789 (=> res!616973 e!875686)))

(assert (=> b!1369789 (= res!616973 (not (contains!2593 lt!454595 lt!454593)))))

(declare-fun b!1369790 () Bool)

(declare-fun tp!393664 () Bool)

(assert (=> b!1369790 (= e!875685 (and e!875693 tp!393664))))

(declare-fun b!1369791 () Bool)

(declare-fun res!616966 () Bool)

(assert (=> b!1369791 (=> res!616966 e!875678)))

(assert (=> b!1369791 (= res!616966 (not (contains!2594 rules!2550 (rule!4158 t1!34))))))

(declare-fun b!1369792 () Bool)

(declare-fun lt!454579 () Rule!4606)

(assert (=> b!1369792 (= e!875687 (contains!2594 rules!2550 lt!454579))))

(declare-fun b!1369793 () Bool)

(declare-fun e!875698 () Bool)

(declare-fun tp!393657 () Bool)

(declare-fun e!875692 () Bool)

(assert (=> b!1369793 (= e!875698 (and tp!393657 (inv!18230 (tag!2665 (rule!4158 t1!34))) (inv!18233 (transformation!2403 (rule!4158 t1!34))) e!875692))))

(declare-fun b!1369794 () Bool)

(assert (=> b!1369794 (= e!875683 e!875690)))

(declare-fun res!616967 () Bool)

(assert (=> b!1369794 (=> (not res!616967) (not e!875690))))

(declare-fun prefixMatch!226 (Regex!3717 List!13942) Bool)

(assert (=> b!1369794 (= res!616967 (prefixMatch!226 lt!454594 lt!454595))))

(declare-fun rulesRegex!286 (LexerInterface!2098 List!13944) Regex!3717)

(assert (=> b!1369794 (= lt!454594 (rulesRegex!286 thiss!19762 rules!2550))))

(assert (=> b!1369794 (= lt!454595 (++!3586 lt!454578 (Cons!13876 lt!454593 Nil!13876)))))

(declare-fun apply!3397 (BalanceConc!9076 Int) C!7724)

(assert (=> b!1369794 (= lt!454593 (apply!3397 lt!454587 0))))

(declare-fun lt!454586 () BalanceConc!9076)

(assert (=> b!1369794 (= lt!454578 (list!5342 lt!454586))))

(assert (=> b!1369794 (= lt!454586 (charsOf!1375 t1!34))))

(declare-fun b!1369795 () Bool)

(declare-fun res!616983 () Bool)

(assert (=> b!1369795 (=> res!616983 e!875687)))

(declare-fun isEmpty!8357 (BalanceConc!9076) Bool)

(assert (=> b!1369795 (= res!616983 (not (isEmpty!8357 (_2!7624 lt!454583))))))

(assert (=> b!1369796 (= e!875681 (and tp!393663 tp!393665))))

(assert (=> b!1369797 (= e!875692 (and tp!393660 tp!393666))))

(assert (=> b!1369798 (= e!875679 (and tp!393662 tp!393656))))

(declare-fun b!1369799 () Bool)

(declare-fun res!616961 () Bool)

(assert (=> b!1369799 (=> (not res!616961) (not e!875699))))

(assert (=> b!1369799 (= res!616961 (rulesProduceIndividualToken!1067 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1369800 () Bool)

(declare-fun res!616989 () Bool)

(assert (=> b!1369800 (=> res!616989 e!875686)))

(declare-fun lt!454591 () C!7724)

(assert (=> b!1369800 (= res!616989 (not (contains!2593 lt!454588 lt!454591)))))

(declare-fun b!1369801 () Bool)

(assert (=> b!1369801 (= e!875677 e!875686)))

(declare-fun res!616980 () Bool)

(assert (=> b!1369801 (=> res!616980 e!875686)))

(assert (=> b!1369801 (= res!616980 (not (contains!2593 lt!454595 lt!454591)))))

(assert (=> b!1369801 (= lt!454591 (apply!3397 lt!454586 0))))

(declare-fun b!1369802 () Bool)

(declare-fun tp!393661 () Bool)

(assert (=> b!1369802 (= e!875680 (and (inv!21 (value!78118 t1!34)) e!875698 tp!393661))))

(declare-fun b!1369803 () Bool)

(declare-fun res!616962 () Bool)

(assert (=> b!1369803 (=> res!616962 e!875678)))

(declare-fun lt!454584 () List!13945)

(declare-fun lt!454592 () BalanceConc!9076)

(assert (=> b!1369803 (= res!616962 (not (= (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454592)) (tuple2!13479 lt!454584 Nil!13876))))))

(declare-fun b!1369804 () Bool)

(declare-fun res!616976 () Bool)

(assert (=> b!1369804 (=> res!616976 e!875678)))

(declare-fun lt!454580 () tuple2!13476)

(assert (=> b!1369804 (= res!616976 (not (isEmpty!8357 (_2!7624 lt!454580))))))

(declare-fun b!1369805 () Bool)

(assert (=> b!1369805 (= e!875691 e!875678)))

(declare-fun res!616984 () Bool)

(assert (=> b!1369805 (=> res!616984 e!875678)))

(assert (=> b!1369805 (= res!616984 (not (= (list!5343 (_1!7624 lt!454580)) lt!454584)))))

(assert (=> b!1369805 (= lt!454584 (Cons!13879 t1!34 Nil!13879))))

(assert (=> b!1369805 (= lt!454580 (lex!925 thiss!19762 rules!2550 lt!454592))))

(assert (=> b!1369805 (= lt!454592 (print!864 thiss!19762 (singletonSeq!1032 t1!34)))))

(declare-fun getWitness!352 (List!13944 Int) Rule!4606)

(assert (=> b!1369805 (= lt!454579 (getWitness!352 rules!2550 lambda!58065))))

(declare-fun b!1369806 () Bool)

(declare-fun e!875689 () Bool)

(assert (=> b!1369806 (= e!875689 e!875700)))

(declare-fun res!616977 () Bool)

(assert (=> b!1369806 (=> res!616977 e!875700)))

(declare-datatypes ((List!13946 0))(
  ( (Nil!13880) (Cons!13880 (h!19281 Regex!3717) (t!121439 List!13946)) )
))
(declare-fun contains!2595 (List!13946 Regex!3717) Bool)

(declare-fun map!3065 (List!13944 Int) List!13946)

(assert (=> b!1369806 (= res!616977 (not (contains!2595 (map!3065 rules!2550 lambda!58063) lt!454577)))))

(declare-fun lambda!58064 () Int)

(declare-fun getWitness!353 (List!13946 Int) Regex!3717)

(assert (=> b!1369806 (= lt!454577 (getWitness!353 (map!3065 rules!2550 lambda!58063) lambda!58064))))

(declare-fun b!1369807 () Bool)

(declare-fun res!616964 () Bool)

(assert (=> b!1369807 (=> (not res!616964) (not e!875699))))

(declare-fun rulesInvariant!1968 (LexerInterface!2098 List!13944) Bool)

(assert (=> b!1369807 (= res!616964 (rulesInvariant!1968 thiss!19762 rules!2550))))

(assert (=> b!1369808 (= e!875686 e!875689)))

(declare-fun res!616978 () Bool)

(assert (=> b!1369808 (=> res!616978 e!875689)))

(declare-fun exists!465 (List!13946 Int) Bool)

(assert (=> b!1369808 (= res!616978 (not (exists!465 (map!3065 rules!2550 lambda!58063) lambda!58064)))))

(declare-fun lt!454596 () List!13946)

(assert (=> b!1369808 (exists!465 lt!454596 lambda!58064)))

(declare-fun lt!454585 () Unit!20097)

(declare-fun matchRGenUnionSpec!134 (Regex!3717 List!13946 List!13942) Unit!20097)

(assert (=> b!1369808 (= lt!454585 (matchRGenUnionSpec!134 lt!454594 lt!454596 lt!454588))))

(assert (=> b!1369808 (= lt!454596 (map!3065 rules!2550 lambda!58063))))

(declare-fun b!1369809 () Bool)

(declare-fun res!616986 () Bool)

(assert (=> b!1369809 (=> (not res!616986) (not e!875683))))

(declare-fun sepAndNonSepRulesDisjointChars!776 (List!13944 List!13944) Bool)

(assert (=> b!1369809 (= res!616986 (sepAndNonSepRulesDisjointChars!776 rules!2550 rules!2550))))

(assert (= (and start!123614 res!616979) b!1369778))

(assert (= (and b!1369778 res!616987) b!1369807))

(assert (= (and b!1369807 res!616964) b!1369799))

(assert (= (and b!1369799 res!616961) b!1369782))

(assert (= (and b!1369782 res!616974) b!1369776))

(assert (= (and b!1369776 res!616968) b!1369786))

(assert (= (and b!1369786 res!616970) b!1369809))

(assert (= (and b!1369809 res!616986) b!1369781))

(assert (= (and b!1369781 res!616988) b!1369794))

(assert (= (and b!1369794 res!616967) b!1369787))

(assert (= (and b!1369787 (not res!616960)) b!1369777))

(assert (= (and b!1369777 (not res!616972)) b!1369801))

(assert (= (and b!1369801 (not res!616980)) b!1369800))

(assert (= (and b!1369800 (not res!616989)) b!1369789))

(assert (= (and b!1369789 (not res!616973)) b!1369773))

(assert (= (and b!1369773 (not res!616963)) b!1369771))

(assert (= (and b!1369771 (not res!616982)) b!1369808))

(assert (= (and b!1369808 (not res!616978)) b!1369806))

(assert (= (and b!1369806 (not res!616977)) b!1369788))

(assert (= (and b!1369788 (not res!616981)) b!1369805))

(assert (= (and b!1369805 (not res!616984)) b!1369804))

(assert (= (and b!1369804 (not res!616976)) b!1369803))

(assert (= (and b!1369803 (not res!616962)) b!1369785))

(assert (= (and b!1369785 (not res!616985)) b!1369791))

(assert (= (and b!1369791 (not res!616966)) b!1369779))

(assert (= (and b!1369779 (not res!616971)) b!1369795))

(assert (= (and b!1369795 (not res!616983)) b!1369780))

(assert (= (and b!1369780 (not res!616975)) b!1369775))

(assert (= (and b!1369775 (not res!616969)) b!1369784))

(assert (= (and b!1369784 (not res!616965)) b!1369792))

(assert (= b!1369783 b!1369796))

(assert (= b!1369790 b!1369783))

(assert (= (and start!123614 ((_ is Cons!13878) rules!2550)) b!1369790))

(assert (= b!1369793 b!1369797))

(assert (= b!1369802 b!1369793))

(assert (= start!123614 b!1369802))

(assert (= b!1369774 b!1369798))

(assert (= b!1369772 b!1369774))

(assert (= start!123614 b!1369772))

(declare-fun m!1539607 () Bool)

(assert (=> b!1369788 m!1539607))

(assert (=> b!1369788 m!1539607))

(declare-fun m!1539609 () Bool)

(assert (=> b!1369788 m!1539609))

(declare-fun m!1539611 () Bool)

(assert (=> b!1369794 m!1539611))

(declare-fun m!1539613 () Bool)

(assert (=> b!1369794 m!1539613))

(declare-fun m!1539615 () Bool)

(assert (=> b!1369794 m!1539615))

(declare-fun m!1539617 () Bool)

(assert (=> b!1369794 m!1539617))

(declare-fun m!1539619 () Bool)

(assert (=> b!1369794 m!1539619))

(declare-fun m!1539621 () Bool)

(assert (=> b!1369794 m!1539621))

(declare-fun m!1539623 () Bool)

(assert (=> b!1369808 m!1539623))

(assert (=> b!1369808 m!1539623))

(declare-fun m!1539625 () Bool)

(assert (=> b!1369808 m!1539625))

(declare-fun m!1539627 () Bool)

(assert (=> b!1369808 m!1539627))

(assert (=> b!1369808 m!1539623))

(declare-fun m!1539629 () Bool)

(assert (=> b!1369808 m!1539629))

(declare-fun m!1539631 () Bool)

(assert (=> b!1369782 m!1539631))

(declare-fun m!1539633 () Bool)

(assert (=> b!1369772 m!1539633))

(declare-fun m!1539635 () Bool)

(assert (=> b!1369800 m!1539635))

(declare-fun m!1539637 () Bool)

(assert (=> b!1369789 m!1539637))

(declare-fun m!1539639 () Bool)

(assert (=> b!1369777 m!1539639))

(assert (=> b!1369777 m!1539639))

(declare-fun m!1539641 () Bool)

(assert (=> b!1369777 m!1539641))

(declare-fun m!1539643 () Bool)

(assert (=> b!1369777 m!1539643))

(declare-fun m!1539645 () Bool)

(assert (=> b!1369781 m!1539645))

(declare-fun m!1539647 () Bool)

(assert (=> b!1369809 m!1539647))

(declare-fun m!1539649 () Bool)

(assert (=> b!1369784 m!1539649))

(declare-fun m!1539651 () Bool)

(assert (=> b!1369805 m!1539651))

(declare-fun m!1539653 () Bool)

(assert (=> b!1369805 m!1539653))

(declare-fun m!1539655 () Bool)

(assert (=> b!1369805 m!1539655))

(declare-fun m!1539657 () Bool)

(assert (=> b!1369805 m!1539657))

(assert (=> b!1369805 m!1539655))

(declare-fun m!1539659 () Bool)

(assert (=> b!1369805 m!1539659))

(declare-fun m!1539661 () Bool)

(assert (=> b!1369783 m!1539661))

(declare-fun m!1539663 () Bool)

(assert (=> b!1369783 m!1539663))

(declare-fun m!1539665 () Bool)

(assert (=> b!1369779 m!1539665))

(declare-fun m!1539667 () Bool)

(assert (=> b!1369779 m!1539667))

(declare-fun m!1539669 () Bool)

(assert (=> b!1369779 m!1539669))

(assert (=> b!1369779 m!1539669))

(declare-fun m!1539671 () Bool)

(assert (=> b!1369779 m!1539671))

(declare-fun m!1539673 () Bool)

(assert (=> b!1369785 m!1539673))

(declare-fun m!1539675 () Bool)

(assert (=> b!1369792 m!1539675))

(declare-fun m!1539677 () Bool)

(assert (=> b!1369773 m!1539677))

(declare-fun m!1539679 () Bool)

(assert (=> b!1369778 m!1539679))

(declare-fun m!1539681 () Bool)

(assert (=> b!1369807 m!1539681))

(declare-fun m!1539683 () Bool)

(assert (=> b!1369791 m!1539683))

(declare-fun m!1539685 () Bool)

(assert (=> b!1369799 m!1539685))

(declare-fun m!1539687 () Bool)

(assert (=> b!1369803 m!1539687))

(assert (=> b!1369803 m!1539687))

(declare-fun m!1539689 () Bool)

(assert (=> b!1369803 m!1539689))

(declare-fun m!1539691 () Bool)

(assert (=> b!1369787 m!1539691))

(assert (=> b!1369787 m!1539691))

(declare-fun m!1539693 () Bool)

(assert (=> b!1369787 m!1539693))

(declare-fun m!1539695 () Bool)

(assert (=> b!1369775 m!1539695))

(assert (=> b!1369775 m!1539695))

(declare-fun m!1539697 () Bool)

(assert (=> b!1369775 m!1539697))

(declare-fun m!1539699 () Bool)

(assert (=> start!123614 m!1539699))

(declare-fun m!1539701 () Bool)

(assert (=> start!123614 m!1539701))

(declare-fun m!1539703 () Bool)

(assert (=> b!1369801 m!1539703))

(declare-fun m!1539705 () Bool)

(assert (=> b!1369801 m!1539705))

(declare-fun m!1539707 () Bool)

(assert (=> b!1369771 m!1539707))

(declare-fun m!1539709 () Bool)

(assert (=> b!1369802 m!1539709))

(declare-fun m!1539711 () Bool)

(assert (=> b!1369793 m!1539711))

(declare-fun m!1539713 () Bool)

(assert (=> b!1369793 m!1539713))

(declare-fun m!1539715 () Bool)

(assert (=> b!1369795 m!1539715))

(assert (=> b!1369806 m!1539623))

(assert (=> b!1369806 m!1539623))

(declare-fun m!1539717 () Bool)

(assert (=> b!1369806 m!1539717))

(assert (=> b!1369806 m!1539623))

(assert (=> b!1369806 m!1539623))

(declare-fun m!1539719 () Bool)

(assert (=> b!1369806 m!1539719))

(declare-fun m!1539721 () Bool)

(assert (=> b!1369774 m!1539721))

(declare-fun m!1539723 () Bool)

(assert (=> b!1369774 m!1539723))

(declare-fun m!1539725 () Bool)

(assert (=> b!1369780 m!1539725))

(assert (=> b!1369780 m!1539725))

(declare-fun m!1539727 () Bool)

(assert (=> b!1369780 m!1539727))

(declare-fun m!1539729 () Bool)

(assert (=> b!1369786 m!1539729))

(declare-fun m!1539731 () Bool)

(assert (=> b!1369786 m!1539731))

(declare-fun m!1539733 () Bool)

(assert (=> b!1369804 m!1539733))

(check-sat (not b!1369790) (not b_next!33891) (not b!1369789) (not b!1369807) (not b_next!33899) (not b!1369775) (not b!1369785) (not b!1369803) (not b!1369805) (not b!1369774) (not b!1369787) (not b!1369804) (not b!1369773) (not b!1369771) b_and!91805 b_and!91801 (not b!1369801) (not b!1369799) (not b!1369784) b_and!91797 (not b!1369792) (not b!1369782) (not b!1369791) (not b!1369772) (not b!1369809) b_and!91799 (not b_next!33895) (not b!1369802) (not b!1369788) (not b_next!33893) (not b!1369795) b_and!91795 (not b_next!33901) (not b!1369793) (not b!1369783) (not b!1369781) (not b!1369780) (not b!1369806) (not b_next!33897) (not start!123614) (not b!1369779) (not b!1369786) (not b!1369800) (not b!1369778) b_and!91803 (not b!1369808) (not b!1369794) (not b!1369777))
(check-sat b_and!91805 b_and!91801 (not b_next!33891) b_and!91797 b_and!91799 (not b_next!33899) (not b_next!33895) (not b_next!33893) (not b_next!33897) b_and!91803 b_and!91795 (not b_next!33901))
(get-model)

(declare-fun d!390622 () Bool)

(declare-fun lt!454605 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2025 (List!13944) (InoxSet Rule!4606))

(assert (=> d!390622 (= lt!454605 (select (content!2025 rules!2550) (rule!4158 t1!34)))))

(declare-fun e!875712 () Bool)

(assert (=> d!390622 (= lt!454605 e!875712)))

(declare-fun res!617011 () Bool)

(assert (=> d!390622 (=> (not res!617011) (not e!875712))))

(assert (=> d!390622 (= res!617011 ((_ is Cons!13878) rules!2550))))

(assert (=> d!390622 (= (contains!2594 rules!2550 (rule!4158 t1!34)) lt!454605)))

(declare-fun b!1369828 () Bool)

(declare-fun e!875711 () Bool)

(assert (=> b!1369828 (= e!875712 e!875711)))

(declare-fun res!617010 () Bool)

(assert (=> b!1369828 (=> res!617010 e!875711)))

(assert (=> b!1369828 (= res!617010 (= (h!19279 rules!2550) (rule!4158 t1!34)))))

(declare-fun b!1369829 () Bool)

(assert (=> b!1369829 (= e!875711 (contains!2594 (t!121437 rules!2550) (rule!4158 t1!34)))))

(assert (= (and d!390622 res!617011) b!1369828))

(assert (= (and b!1369828 (not res!617010)) b!1369829))

(declare-fun m!1539755 () Bool)

(assert (=> d!390622 m!1539755))

(declare-fun m!1539757 () Bool)

(assert (=> d!390622 m!1539757))

(declare-fun m!1539759 () Bool)

(assert (=> b!1369829 m!1539759))

(assert (=> b!1369791 d!390622))

(declare-fun d!390624 () Bool)

(declare-fun lt!454606 () Bool)

(assert (=> d!390624 (= lt!454606 (select (content!2025 rules!2550) lt!454579))))

(declare-fun e!875714 () Bool)

(assert (=> d!390624 (= lt!454606 e!875714)))

(declare-fun res!617013 () Bool)

(assert (=> d!390624 (=> (not res!617013) (not e!875714))))

(assert (=> d!390624 (= res!617013 ((_ is Cons!13878) rules!2550))))

(assert (=> d!390624 (= (contains!2594 rules!2550 lt!454579) lt!454606)))

(declare-fun b!1369830 () Bool)

(declare-fun e!875713 () Bool)

(assert (=> b!1369830 (= e!875714 e!875713)))

(declare-fun res!617012 () Bool)

(assert (=> b!1369830 (=> res!617012 e!875713)))

(assert (=> b!1369830 (= res!617012 (= (h!19279 rules!2550) lt!454579))))

(declare-fun b!1369831 () Bool)

(assert (=> b!1369831 (= e!875713 (contains!2594 (t!121437 rules!2550) lt!454579))))

(assert (= (and d!390624 res!617013) b!1369830))

(assert (= (and b!1369830 (not res!617012)) b!1369831))

(assert (=> d!390624 m!1539755))

(declare-fun m!1539761 () Bool)

(assert (=> d!390624 m!1539761))

(declare-fun m!1539763 () Bool)

(assert (=> b!1369831 m!1539763))

(assert (=> b!1369792 d!390624))

(declare-fun b!1369860 () Bool)

(declare-fun e!875734 () Bool)

(declare-fun e!875731 () Bool)

(assert (=> b!1369860 (= e!875734 e!875731)))

(declare-fun c!225397 () Bool)

(assert (=> b!1369860 (= c!225397 ((_ is EmptyLang!3717) lt!454594))))

(declare-fun b!1369861 () Bool)

(declare-fun e!875733 () Bool)

(declare-fun head!2462 (List!13942) C!7724)

(assert (=> b!1369861 (= e!875733 (not (= (head!2462 lt!454588) (c!225388 lt!454594))))))

(declare-fun b!1369862 () Bool)

(declare-fun lt!454609 () Bool)

(declare-fun call!92066 () Bool)

(assert (=> b!1369862 (= e!875734 (= lt!454609 call!92066))))

(declare-fun d!390626 () Bool)

(assert (=> d!390626 e!875734))

(declare-fun c!225399 () Bool)

(assert (=> d!390626 (= c!225399 ((_ is EmptyExpr!3717) lt!454594))))

(declare-fun e!875730 () Bool)

(assert (=> d!390626 (= lt!454609 e!875730)))

(declare-fun c!225398 () Bool)

(declare-fun isEmpty!8363 (List!13942) Bool)

(assert (=> d!390626 (= c!225398 (isEmpty!8363 lt!454588))))

(declare-fun validRegex!1617 (Regex!3717) Bool)

(assert (=> d!390626 (validRegex!1617 lt!454594)))

(assert (=> d!390626 (= (matchR!1710 lt!454594 lt!454588) lt!454609)))

(declare-fun b!1369863 () Bool)

(declare-fun e!875729 () Bool)

(assert (=> b!1369863 (= e!875729 e!875733)))

(declare-fun res!617033 () Bool)

(assert (=> b!1369863 (=> res!617033 e!875733)))

(assert (=> b!1369863 (= res!617033 call!92066)))

(declare-fun b!1369864 () Bool)

(declare-fun derivativeStep!954 (Regex!3717 C!7724) Regex!3717)

(declare-fun tail!1979 (List!13942) List!13942)

(assert (=> b!1369864 (= e!875730 (matchR!1710 (derivativeStep!954 lt!454594 (head!2462 lt!454588)) (tail!1979 lt!454588)))))

(declare-fun b!1369865 () Bool)

(declare-fun nullable!1196 (Regex!3717) Bool)

(assert (=> b!1369865 (= e!875730 (nullable!1196 lt!454594))))

(declare-fun b!1369866 () Bool)

(declare-fun res!617031 () Bool)

(declare-fun e!875735 () Bool)

(assert (=> b!1369866 (=> res!617031 e!875735)))

(declare-fun e!875732 () Bool)

(assert (=> b!1369866 (= res!617031 e!875732)))

(declare-fun res!617030 () Bool)

(assert (=> b!1369866 (=> (not res!617030) (not e!875732))))

(assert (=> b!1369866 (= res!617030 lt!454609)))

(declare-fun b!1369867 () Bool)

(assert (=> b!1369867 (= e!875731 (not lt!454609))))

(declare-fun b!1369868 () Bool)

(declare-fun res!617034 () Bool)

(assert (=> b!1369868 (=> res!617034 e!875733)))

(assert (=> b!1369868 (= res!617034 (not (isEmpty!8363 (tail!1979 lt!454588))))))

(declare-fun b!1369869 () Bool)

(declare-fun res!617035 () Bool)

(assert (=> b!1369869 (=> res!617035 e!875735)))

(assert (=> b!1369869 (= res!617035 (not ((_ is ElementMatch!3717) lt!454594)))))

(assert (=> b!1369869 (= e!875731 e!875735)))

(declare-fun b!1369870 () Bool)

(declare-fun res!617032 () Bool)

(assert (=> b!1369870 (=> (not res!617032) (not e!875732))))

(assert (=> b!1369870 (= res!617032 (isEmpty!8363 (tail!1979 lt!454588)))))

(declare-fun bm!92061 () Bool)

(assert (=> bm!92061 (= call!92066 (isEmpty!8363 lt!454588))))

(declare-fun b!1369871 () Bool)

(declare-fun res!617036 () Bool)

(assert (=> b!1369871 (=> (not res!617036) (not e!875732))))

(assert (=> b!1369871 (= res!617036 (not call!92066))))

(declare-fun b!1369872 () Bool)

(assert (=> b!1369872 (= e!875732 (= (head!2462 lt!454588) (c!225388 lt!454594)))))

(declare-fun b!1369873 () Bool)

(assert (=> b!1369873 (= e!875735 e!875729)))

(declare-fun res!617037 () Bool)

(assert (=> b!1369873 (=> (not res!617037) (not e!875729))))

(assert (=> b!1369873 (= res!617037 (not lt!454609))))

(assert (= (and d!390626 c!225398) b!1369865))

(assert (= (and d!390626 (not c!225398)) b!1369864))

(assert (= (and d!390626 c!225399) b!1369862))

(assert (= (and d!390626 (not c!225399)) b!1369860))

(assert (= (and b!1369860 c!225397) b!1369867))

(assert (= (and b!1369860 (not c!225397)) b!1369869))

(assert (= (and b!1369869 (not res!617035)) b!1369866))

(assert (= (and b!1369866 res!617030) b!1369871))

(assert (= (and b!1369871 res!617036) b!1369870))

(assert (= (and b!1369870 res!617032) b!1369872))

(assert (= (and b!1369866 (not res!617031)) b!1369873))

(assert (= (and b!1369873 res!617037) b!1369863))

(assert (= (and b!1369863 (not res!617033)) b!1369868))

(assert (= (and b!1369868 (not res!617034)) b!1369861))

(assert (= (or b!1369862 b!1369863 b!1369871) bm!92061))

(declare-fun m!1539765 () Bool)

(assert (=> b!1369864 m!1539765))

(assert (=> b!1369864 m!1539765))

(declare-fun m!1539767 () Bool)

(assert (=> b!1369864 m!1539767))

(declare-fun m!1539769 () Bool)

(assert (=> b!1369864 m!1539769))

(assert (=> b!1369864 m!1539767))

(assert (=> b!1369864 m!1539769))

(declare-fun m!1539771 () Bool)

(assert (=> b!1369864 m!1539771))

(declare-fun m!1539773 () Bool)

(assert (=> d!390626 m!1539773))

(declare-fun m!1539775 () Bool)

(assert (=> d!390626 m!1539775))

(declare-fun m!1539777 () Bool)

(assert (=> b!1369865 m!1539777))

(assert (=> b!1369870 m!1539769))

(assert (=> b!1369870 m!1539769))

(declare-fun m!1539779 () Bool)

(assert (=> b!1369870 m!1539779))

(assert (=> bm!92061 m!1539773))

(assert (=> b!1369861 m!1539765))

(assert (=> b!1369872 m!1539765))

(assert (=> b!1369868 m!1539769))

(assert (=> b!1369868 m!1539769))

(assert (=> b!1369868 m!1539779))

(assert (=> b!1369771 d!390626))

(declare-fun b!1369884 () Bool)

(declare-fun res!617040 () Bool)

(declare-fun e!875743 () Bool)

(assert (=> b!1369884 (=> res!617040 e!875743)))

(assert (=> b!1369884 (= res!617040 (not ((_ is IntegerValue!7481) (value!78118 t2!34))))))

(declare-fun e!875742 () Bool)

(assert (=> b!1369884 (= e!875742 e!875743)))

(declare-fun b!1369885 () Bool)

(declare-fun e!875744 () Bool)

(assert (=> b!1369885 (= e!875744 e!875742)))

(declare-fun c!225405 () Bool)

(assert (=> b!1369885 (= c!225405 ((_ is IntegerValue!7480) (value!78118 t2!34)))))

(declare-fun b!1369886 () Bool)

(declare-fun inv!15 (TokenValue!2493) Bool)

(assert (=> b!1369886 (= e!875743 (inv!15 (value!78118 t2!34)))))

(declare-fun b!1369887 () Bool)

(declare-fun inv!17 (TokenValue!2493) Bool)

(assert (=> b!1369887 (= e!875742 (inv!17 (value!78118 t2!34)))))

(declare-fun d!390628 () Bool)

(declare-fun c!225404 () Bool)

(assert (=> d!390628 (= c!225404 ((_ is IntegerValue!7479) (value!78118 t2!34)))))

(assert (=> d!390628 (= (inv!21 (value!78118 t2!34)) e!875744)))

(declare-fun b!1369888 () Bool)

(declare-fun inv!16 (TokenValue!2493) Bool)

(assert (=> b!1369888 (= e!875744 (inv!16 (value!78118 t2!34)))))

(assert (= (and d!390628 c!225404) b!1369888))

(assert (= (and d!390628 (not c!225404)) b!1369885))

(assert (= (and b!1369885 c!225405) b!1369887))

(assert (= (and b!1369885 (not c!225405)) b!1369884))

(assert (= (and b!1369884 (not res!617040)) b!1369886))

(declare-fun m!1539781 () Bool)

(assert (=> b!1369886 m!1539781))

(declare-fun m!1539783 () Bool)

(assert (=> b!1369887 m!1539783))

(declare-fun m!1539785 () Bool)

(assert (=> b!1369888 m!1539785))

(assert (=> b!1369772 d!390628))

(declare-fun d!390630 () Bool)

(assert (=> d!390630 (= (inv!18230 (tag!2665 (rule!4158 t1!34))) (= (mod (str.len (value!78117 (tag!2665 (rule!4158 t1!34)))) 2) 0))))

(assert (=> b!1369793 d!390630))

(declare-fun d!390632 () Bool)

(declare-fun res!617043 () Bool)

(declare-fun e!875747 () Bool)

(assert (=> d!390632 (=> (not res!617043) (not e!875747))))

(declare-fun semiInverseModEq!925 (Int Int) Bool)

(assert (=> d!390632 (= res!617043 (semiInverseModEq!925 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toValue!3670 (transformation!2403 (rule!4158 t1!34)))))))

(assert (=> d!390632 (= (inv!18233 (transformation!2403 (rule!4158 t1!34))) e!875747)))

(declare-fun b!1369891 () Bool)

(declare-fun equivClasses!884 (Int Int) Bool)

(assert (=> b!1369891 (= e!875747 (equivClasses!884 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toValue!3670 (transformation!2403 (rule!4158 t1!34)))))))

(assert (= (and d!390632 res!617043) b!1369891))

(declare-fun m!1539787 () Bool)

(assert (=> d!390632 m!1539787))

(declare-fun m!1539789 () Bool)

(assert (=> b!1369891 m!1539789))

(assert (=> b!1369793 d!390632))

(declare-fun d!390634 () Bool)

(declare-fun lt!454612 () Bool)

(declare-fun content!2026 (List!13942) (InoxSet C!7724))

(assert (=> d!390634 (= lt!454612 (select (content!2026 lt!454595) lt!454593))))

(declare-fun e!875753 () Bool)

(assert (=> d!390634 (= lt!454612 e!875753)))

(declare-fun res!617049 () Bool)

(assert (=> d!390634 (=> (not res!617049) (not e!875753))))

(assert (=> d!390634 (= res!617049 ((_ is Cons!13876) lt!454595))))

(assert (=> d!390634 (= (contains!2593 lt!454595 lt!454593) lt!454612)))

(declare-fun b!1369896 () Bool)

(declare-fun e!875752 () Bool)

(assert (=> b!1369896 (= e!875753 e!875752)))

(declare-fun res!617048 () Bool)

(assert (=> b!1369896 (=> res!617048 e!875752)))

(assert (=> b!1369896 (= res!617048 (= (h!19277 lt!454595) lt!454593))))

(declare-fun b!1369897 () Bool)

(assert (=> b!1369897 (= e!875752 (contains!2593 (t!121435 lt!454595) lt!454593))))

(assert (= (and d!390634 res!617049) b!1369896))

(assert (= (and b!1369896 (not res!617048)) b!1369897))

(declare-fun m!1539791 () Bool)

(assert (=> d!390634 m!1539791))

(declare-fun m!1539793 () Bool)

(assert (=> d!390634 m!1539793))

(declare-fun m!1539795 () Bool)

(assert (=> b!1369897 m!1539795))

(assert (=> b!1369789 d!390634))

(declare-fun d!390636 () Bool)

(declare-fun lt!454615 () Int)

(declare-fun size!11382 (List!13942) Int)

(assert (=> d!390636 (= lt!454615 (size!11382 (list!5342 lt!454587)))))

(declare-fun size!11383 (Conc!4568) Int)

(assert (=> d!390636 (= lt!454615 (size!11383 (c!225389 lt!454587)))))

(assert (=> d!390636 (= (size!11376 lt!454587) lt!454615)))

(declare-fun bs!335513 () Bool)

(assert (= bs!335513 d!390636))

(assert (=> bs!335513 m!1539695))

(assert (=> bs!335513 m!1539695))

(declare-fun m!1539797 () Bool)

(assert (=> bs!335513 m!1539797))

(declare-fun m!1539799 () Bool)

(assert (=> bs!335513 m!1539799))

(assert (=> b!1369786 d!390636))

(declare-fun d!390638 () Bool)

(declare-fun lt!454622 () BalanceConc!9076)

(assert (=> d!390638 (= (list!5342 lt!454622) (originalCharacters!3265 t2!34))))

(declare-fun dynLambda!6289 (Int TokenValue!2493) BalanceConc!9076)

(assert (=> d!390638 (= lt!454622 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (value!78118 t2!34)))))

(assert (=> d!390638 (= (charsOf!1375 t2!34) lt!454622)))

(declare-fun b_lambda!41811 () Bool)

(assert (=> (not b_lambda!41811) (not d!390638)))

(declare-fun t!121442 () Bool)

(declare-fun tb!72169 () Bool)

(assert (=> (and b!1369797 (= (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toChars!3529 (transformation!2403 (rule!4158 t2!34)))) t!121442) tb!72169))

(declare-fun b!1369908 () Bool)

(declare-fun e!875760 () Bool)

(declare-fun tp!393669 () Bool)

(declare-fun inv!18237 (Conc!4568) Bool)

(assert (=> b!1369908 (= e!875760 (and (inv!18237 (c!225389 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (value!78118 t2!34)))) tp!393669))))

(declare-fun result!87622 () Bool)

(declare-fun inv!18238 (BalanceConc!9076) Bool)

(assert (=> tb!72169 (= result!87622 (and (inv!18238 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (value!78118 t2!34))) e!875760))))

(assert (= tb!72169 b!1369908))

(declare-fun m!1539801 () Bool)

(assert (=> b!1369908 m!1539801))

(declare-fun m!1539803 () Bool)

(assert (=> tb!72169 m!1539803))

(assert (=> d!390638 t!121442))

(declare-fun b_and!91807 () Bool)

(assert (= b_and!91797 (and (=> t!121442 result!87622) b_and!91807)))

(declare-fun t!121444 () Bool)

(declare-fun tb!72171 () Bool)

(assert (=> (and b!1369796 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t2!34)))) t!121444) tb!72171))

(declare-fun result!87626 () Bool)

(assert (= result!87626 result!87622))

(assert (=> d!390638 t!121444))

(declare-fun b_and!91809 () Bool)

(assert (= b_and!91801 (and (=> t!121444 result!87626) b_and!91809)))

(declare-fun t!121446 () Bool)

(declare-fun tb!72173 () Bool)

(assert (=> (and b!1369798 (= (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toChars!3529 (transformation!2403 (rule!4158 t2!34)))) t!121446) tb!72173))

(declare-fun result!87628 () Bool)

(assert (= result!87628 result!87622))

(assert (=> d!390638 t!121446))

(declare-fun b_and!91811 () Bool)

(assert (= b_and!91805 (and (=> t!121446 result!87628) b_and!91811)))

(declare-fun m!1539805 () Bool)

(assert (=> d!390638 m!1539805))

(declare-fun m!1539807 () Bool)

(assert (=> d!390638 m!1539807))

(assert (=> b!1369786 d!390638))

(declare-fun d!390640 () Bool)

(declare-fun res!617061 () Bool)

(declare-fun e!875765 () Bool)

(assert (=> d!390640 (=> (not res!617061) (not e!875765))))

(declare-fun rulesValid!894 (LexerInterface!2098 List!13944) Bool)

(assert (=> d!390640 (= res!617061 (rulesValid!894 thiss!19762 rules!2550))))

(assert (=> d!390640 (= (rulesInvariant!1968 thiss!19762 rules!2550) e!875765)))

(declare-fun b!1369914 () Bool)

(declare-datatypes ((List!13947 0))(
  ( (Nil!13881) (Cons!13881 (h!19282 String!16701) (t!121476 List!13947)) )
))
(declare-fun noDuplicateTag!894 (LexerInterface!2098 List!13944 List!13947) Bool)

(assert (=> b!1369914 (= e!875765 (noDuplicateTag!894 thiss!19762 rules!2550 Nil!13881))))

(assert (= (and d!390640 res!617061) b!1369914))

(declare-fun m!1539825 () Bool)

(assert (=> d!390640 m!1539825))

(declare-fun m!1539827 () Bool)

(assert (=> b!1369914 m!1539827))

(assert (=> b!1369807 d!390640))

(declare-fun bs!335517 () Bool)

(declare-fun d!390646 () Bool)

(assert (= bs!335517 (and d!390646 b!1369808)))

(declare-fun lambda!58073 () Int)

(assert (=> bs!335517 (not (= lambda!58073 lambda!58064))))

(declare-fun lambda!58074 () Int)

(assert (=> bs!335517 (= lambda!58074 lambda!58064)))

(declare-fun bs!335518 () Bool)

(assert (= bs!335518 d!390646))

(assert (=> bs!335518 (not (= lambda!58074 lambda!58073))))

(assert (=> d!390646 true))

(assert (=> d!390646 (= (matchR!1710 lt!454594 lt!454588) (exists!465 lt!454596 lambda!58074))))

(declare-fun lt!454633 () Unit!20097)

(declare-fun choose!8424 (Regex!3717 List!13946 List!13942) Unit!20097)

(assert (=> d!390646 (= lt!454633 (choose!8424 lt!454594 lt!454596 lt!454588))))

(declare-fun forall!3391 (List!13946 Int) Bool)

(assert (=> d!390646 (forall!3391 lt!454596 lambda!58073)))

(assert (=> d!390646 (= (matchRGenUnionSpec!134 lt!454594 lt!454596 lt!454588) lt!454633)))

(assert (=> bs!335518 m!1539707))

(declare-fun m!1539847 () Bool)

(assert (=> bs!335518 m!1539847))

(declare-fun m!1539849 () Bool)

(assert (=> bs!335518 m!1539849))

(declare-fun m!1539851 () Bool)

(assert (=> bs!335518 m!1539851))

(assert (=> b!1369808 d!390646))

(declare-fun d!390656 () Bool)

(declare-fun lt!454636 () List!13946)

(declare-fun size!11384 (List!13946) Int)

(declare-fun size!11385 (List!13944) Int)

(assert (=> d!390656 (= (size!11384 lt!454636) (size!11385 rules!2550))))

(declare-fun e!875787 () List!13946)

(assert (=> d!390656 (= lt!454636 e!875787)))

(declare-fun c!225414 () Bool)

(assert (=> d!390656 (= c!225414 ((_ is Nil!13878) rules!2550))))

(assert (=> d!390656 (= (map!3065 rules!2550 lambda!58063) lt!454636)))

(declare-fun b!1369944 () Bool)

(assert (=> b!1369944 (= e!875787 Nil!13880)))

(declare-fun b!1369945 () Bool)

(declare-fun $colon$colon!199 (List!13946 Regex!3717) List!13946)

(declare-fun dynLambda!6290 (Int Rule!4606) Regex!3717)

(assert (=> b!1369945 (= e!875787 ($colon$colon!199 (map!3065 (t!121437 rules!2550) lambda!58063) (dynLambda!6290 lambda!58063 (h!19279 rules!2550))))))

(assert (= (and d!390656 c!225414) b!1369944))

(assert (= (and d!390656 (not c!225414)) b!1369945))

(declare-fun b_lambda!41813 () Bool)

(assert (=> (not b_lambda!41813) (not b!1369945)))

(declare-fun m!1539853 () Bool)

(assert (=> d!390656 m!1539853))

(declare-fun m!1539855 () Bool)

(assert (=> d!390656 m!1539855))

(declare-fun m!1539857 () Bool)

(assert (=> b!1369945 m!1539857))

(declare-fun m!1539859 () Bool)

(assert (=> b!1369945 m!1539859))

(assert (=> b!1369945 m!1539857))

(assert (=> b!1369945 m!1539859))

(declare-fun m!1539861 () Bool)

(assert (=> b!1369945 m!1539861))

(assert (=> b!1369808 d!390656))

(declare-fun bs!335519 () Bool)

(declare-fun d!390658 () Bool)

(assert (= bs!335519 (and d!390658 b!1369808)))

(declare-fun lambda!58077 () Int)

(assert (=> bs!335519 (not (= lambda!58077 lambda!58064))))

(declare-fun bs!335520 () Bool)

(assert (= bs!335520 (and d!390658 d!390646)))

(assert (=> bs!335520 (not (= lambda!58077 lambda!58073))))

(assert (=> bs!335520 (not (= lambda!58077 lambda!58074))))

(assert (=> d!390658 true))

(declare-fun order!8451 () Int)

(declare-fun dynLambda!6291 (Int Int) Int)

(assert (=> d!390658 (< (dynLambda!6291 order!8451 lambda!58064) (dynLambda!6291 order!8451 lambda!58077))))

(assert (=> d!390658 (= (exists!465 (map!3065 rules!2550 lambda!58063) lambda!58064) (not (forall!3391 (map!3065 rules!2550 lambda!58063) lambda!58077)))))

(declare-fun bs!335521 () Bool)

(assert (= bs!335521 d!390658))

(assert (=> bs!335521 m!1539623))

(declare-fun m!1539863 () Bool)

(assert (=> bs!335521 m!1539863))

(assert (=> b!1369808 d!390658))

(declare-fun bs!335522 () Bool)

(declare-fun d!390660 () Bool)

(assert (= bs!335522 (and d!390660 b!1369808)))

(declare-fun lambda!58078 () Int)

(assert (=> bs!335522 (not (= lambda!58078 lambda!58064))))

(declare-fun bs!335523 () Bool)

(assert (= bs!335523 (and d!390660 d!390646)))

(assert (=> bs!335523 (not (= lambda!58078 lambda!58073))))

(assert (=> bs!335523 (not (= lambda!58078 lambda!58074))))

(declare-fun bs!335524 () Bool)

(assert (= bs!335524 (and d!390660 d!390658)))

(assert (=> bs!335524 (= lambda!58078 lambda!58077)))

(assert (=> d!390660 true))

(assert (=> d!390660 (< (dynLambda!6291 order!8451 lambda!58064) (dynLambda!6291 order!8451 lambda!58078))))

(assert (=> d!390660 (= (exists!465 lt!454596 lambda!58064) (not (forall!3391 lt!454596 lambda!58078)))))

(declare-fun bs!335525 () Bool)

(assert (= bs!335525 d!390660))

(declare-fun m!1539865 () Bool)

(assert (=> bs!335525 m!1539865))

(assert (=> b!1369808 d!390660))

(declare-fun d!390662 () Bool)

(declare-fun choose!8425 (Int) Bool)

(assert (=> d!390662 (= (Exists!869 lambda!58062) (choose!8425 lambda!58062))))

(declare-fun bs!335526 () Bool)

(assert (= bs!335526 d!390662))

(declare-fun m!1539867 () Bool)

(assert (=> bs!335526 m!1539867))

(assert (=> b!1369787 d!390662))

(declare-fun bs!335527 () Bool)

(declare-fun d!390664 () Bool)

(assert (= bs!335527 (and d!390664 b!1369787)))

(declare-fun lambda!58081 () Int)

(assert (=> bs!335527 (= lambda!58081 lambda!58062)))

(assert (=> d!390664 true))

(assert (=> d!390664 true))

(assert (=> d!390664 (Exists!869 lambda!58081)))

(declare-fun lt!454649 () Unit!20097)

(declare-fun choose!8426 (Regex!3717 List!13942) Unit!20097)

(assert (=> d!390664 (= lt!454649 (choose!8426 lt!454594 lt!454595))))

(assert (=> d!390664 (validRegex!1617 lt!454594)))

(assert (=> d!390664 (= (lemmaPrefixMatchThenExistsStringThatMatches!187 lt!454594 lt!454595) lt!454649)))

(declare-fun bs!335528 () Bool)

(assert (= bs!335528 d!390664))

(declare-fun m!1539869 () Bool)

(assert (=> bs!335528 m!1539869))

(declare-fun m!1539871 () Bool)

(assert (=> bs!335528 m!1539871))

(assert (=> bs!335528 m!1539775))

(assert (=> b!1369787 d!390664))

(declare-fun bs!335529 () Bool)

(declare-fun d!390666 () Bool)

(assert (= bs!335529 (and d!390666 b!1369788)))

(declare-fun lambda!58084 () Int)

(assert (=> bs!335529 (not (= lambda!58084 lambda!58065))))

(assert (=> d!390666 true))

(declare-fun order!8453 () Int)

(declare-fun dynLambda!6292 (Int Int) Int)

(assert (=> d!390666 (< (dynLambda!6292 order!8453 lambda!58065) (dynLambda!6292 order!8453 lambda!58084))))

(declare-fun forall!3392 (List!13944 Int) Bool)

(assert (=> d!390666 (= (exists!464 rules!2550 lambda!58065) (not (forall!3392 rules!2550 lambda!58084)))))

(declare-fun bs!335530 () Bool)

(assert (= bs!335530 d!390666))

(declare-fun m!1539873 () Bool)

(assert (=> bs!335530 m!1539873))

(assert (=> b!1369788 d!390666))

(declare-fun bs!335531 () Bool)

(declare-fun d!390668 () Bool)

(assert (= bs!335531 (and d!390668 b!1369788)))

(declare-fun lambda!58087 () Int)

(assert (=> bs!335531 (not (= lambda!58087 lambda!58065))))

(declare-fun bs!335532 () Bool)

(assert (= bs!335532 (and d!390668 d!390666)))

(assert (=> bs!335532 (not (= lambda!58087 lambda!58084))))

(assert (=> d!390668 true))

(assert (=> d!390668 true))

(declare-fun order!8455 () Int)

(declare-fun dynLambda!6293 (Int Int) Int)

(assert (=> d!390668 (< (dynLambda!6293 order!8455 lambda!58063) (dynLambda!6292 order!8453 lambda!58087))))

(assert (=> d!390668 (exists!464 rules!2550 lambda!58087)))

(declare-fun lt!454658 () Unit!20097)

(declare-fun choose!8427 (List!13944 Int Regex!3717) Unit!20097)

(assert (=> d!390668 (= lt!454658 (choose!8427 rules!2550 lambda!58063 lt!454577))))

(assert (=> d!390668 (contains!2595 (map!3065 rules!2550 lambda!58063) lt!454577)))

(assert (=> d!390668 (= (lemmaMapContains!122 rules!2550 lambda!58063 lt!454577) lt!454658)))

(declare-fun bs!335533 () Bool)

(assert (= bs!335533 d!390668))

(declare-fun m!1539913 () Bool)

(assert (=> bs!335533 m!1539913))

(declare-fun m!1539915 () Bool)

(assert (=> bs!335533 m!1539915))

(assert (=> bs!335533 m!1539623))

(assert (=> bs!335533 m!1539623))

(assert (=> bs!335533 m!1539717))

(assert (=> b!1369788 d!390668))

(declare-fun d!390674 () Bool)

(declare-fun res!617104 () Bool)

(declare-fun e!875805 () Bool)

(assert (=> d!390674 (=> res!617104 e!875805)))

(assert (=> d!390674 (= res!617104 (not ((_ is Cons!13878) rules!2550)))))

(assert (=> d!390674 (= (sepAndNonSepRulesDisjointChars!776 rules!2550 rules!2550) e!875805)))

(declare-fun b!1369989 () Bool)

(declare-fun e!875806 () Bool)

(assert (=> b!1369989 (= e!875805 e!875806)))

(declare-fun res!617105 () Bool)

(assert (=> b!1369989 (=> (not res!617105) (not e!875806))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!367 (Rule!4606 List!13944) Bool)

(assert (=> b!1369989 (= res!617105 (ruleDisjointCharsFromAllFromOtherType!367 (h!19279 rules!2550) rules!2550))))

(declare-fun b!1369990 () Bool)

(assert (=> b!1369990 (= e!875806 (sepAndNonSepRulesDisjointChars!776 rules!2550 (t!121437 rules!2550)))))

(assert (= (and d!390674 (not res!617104)) b!1369989))

(assert (= (and b!1369989 res!617105) b!1369990))

(declare-fun m!1539917 () Bool)

(assert (=> b!1369989 m!1539917))

(declare-fun m!1539919 () Bool)

(assert (=> b!1369990 m!1539919))

(assert (=> b!1369809 d!390674))

(declare-fun d!390676 () Bool)

(assert (=> d!390676 (= (inv!18230 (tag!2665 (h!19279 rules!2550))) (= (mod (str.len (value!78117 (tag!2665 (h!19279 rules!2550)))) 2) 0))))

(assert (=> b!1369783 d!390676))

(declare-fun d!390678 () Bool)

(declare-fun res!617106 () Bool)

(declare-fun e!875807 () Bool)

(assert (=> d!390678 (=> (not res!617106) (not e!875807))))

(assert (=> d!390678 (= res!617106 (semiInverseModEq!925 (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toValue!3670 (transformation!2403 (h!19279 rules!2550)))))))

(assert (=> d!390678 (= (inv!18233 (transformation!2403 (h!19279 rules!2550))) e!875807)))

(declare-fun b!1369991 () Bool)

(assert (=> b!1369991 (= e!875807 (equivClasses!884 (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toValue!3670 (transformation!2403 (h!19279 rules!2550)))))))

(assert (= (and d!390678 res!617106) b!1369991))

(declare-fun m!1539921 () Bool)

(assert (=> d!390678 m!1539921))

(declare-fun m!1539923 () Bool)

(assert (=> b!1369991 m!1539923))

(assert (=> b!1369783 d!390678))

(declare-fun d!390680 () Bool)

(declare-fun lt!454659 () Bool)

(assert (=> d!390680 (= lt!454659 (select (content!2025 rules!2550) (rule!4158 t2!34)))))

(declare-fun e!875809 () Bool)

(assert (=> d!390680 (= lt!454659 e!875809)))

(declare-fun res!617108 () Bool)

(assert (=> d!390680 (=> (not res!617108) (not e!875809))))

(assert (=> d!390680 (= res!617108 ((_ is Cons!13878) rules!2550))))

(assert (=> d!390680 (= (contains!2594 rules!2550 (rule!4158 t2!34)) lt!454659)))

(declare-fun b!1369992 () Bool)

(declare-fun e!875808 () Bool)

(assert (=> b!1369992 (= e!875809 e!875808)))

(declare-fun res!617107 () Bool)

(assert (=> b!1369992 (=> res!617107 e!875808)))

(assert (=> b!1369992 (= res!617107 (= (h!19279 rules!2550) (rule!4158 t2!34)))))

(declare-fun b!1369993 () Bool)

(assert (=> b!1369993 (= e!875808 (contains!2594 (t!121437 rules!2550) (rule!4158 t2!34)))))

(assert (= (and d!390680 res!617108) b!1369992))

(assert (= (and b!1369992 (not res!617107)) b!1369993))

(assert (=> d!390680 m!1539755))

(declare-fun m!1539925 () Bool)

(assert (=> d!390680 m!1539925))

(declare-fun m!1539927 () Bool)

(assert (=> b!1369993 m!1539927))

(assert (=> b!1369784 d!390680))

(declare-fun b!1370023 () Bool)

(declare-fun e!875830 () Bool)

(declare-fun dynLambda!6294 (Int Rule!4606) Bool)

(assert (=> b!1370023 (= e!875830 (dynLambda!6294 lambda!58065 (h!19279 rules!2550)))))

(declare-fun d!390682 () Bool)

(declare-fun e!875832 () Bool)

(assert (=> d!390682 e!875832))

(declare-fun res!617119 () Bool)

(assert (=> d!390682 (=> (not res!617119) (not e!875832))))

(declare-fun lt!454675 () Rule!4606)

(assert (=> d!390682 (= res!617119 (dynLambda!6294 lambda!58065 lt!454675))))

(declare-fun e!875831 () Rule!4606)

(assert (=> d!390682 (= lt!454675 e!875831)))

(declare-fun c!225428 () Bool)

(assert (=> d!390682 (= c!225428 e!875830)))

(declare-fun res!617118 () Bool)

(assert (=> d!390682 (=> (not res!617118) (not e!875830))))

(assert (=> d!390682 (= res!617118 ((_ is Cons!13878) rules!2550))))

(assert (=> d!390682 (exists!464 rules!2550 lambda!58065)))

(assert (=> d!390682 (= (getWitness!352 rules!2550 lambda!58065) lt!454675)))

(declare-fun b!1370024 () Bool)

(assert (=> b!1370024 (= e!875831 (h!19279 rules!2550))))

(declare-fun b!1370025 () Bool)

(assert (=> b!1370025 (= e!875832 (contains!2594 rules!2550 lt!454675))))

(declare-fun b!1370026 () Bool)

(declare-fun lt!454674 () Unit!20097)

(declare-fun Unit!20101 () Unit!20097)

(assert (=> b!1370026 (= lt!454674 Unit!20101)))

(assert (=> b!1370026 false))

(declare-fun e!875829 () Rule!4606)

(declare-fun head!2464 (List!13944) Rule!4606)

(assert (=> b!1370026 (= e!875829 (head!2464 rules!2550))))

(declare-fun b!1370027 () Bool)

(assert (=> b!1370027 (= e!875829 (getWitness!352 (t!121437 rules!2550) lambda!58065))))

(declare-fun b!1370028 () Bool)

(assert (=> b!1370028 (= e!875831 e!875829)))

(declare-fun c!225429 () Bool)

(assert (=> b!1370028 (= c!225429 ((_ is Cons!13878) rules!2550))))

(assert (= (and d!390682 res!617118) b!1370023))

(assert (= (and d!390682 c!225428) b!1370024))

(assert (= (and d!390682 (not c!225428)) b!1370028))

(assert (= (and b!1370028 c!225429) b!1370027))

(assert (= (and b!1370028 (not c!225429)) b!1370026))

(assert (= (and d!390682 res!617119) b!1370025))

(declare-fun b_lambda!41815 () Bool)

(assert (=> (not b_lambda!41815) (not b!1370023)))

(declare-fun b_lambda!41817 () Bool)

(assert (=> (not b_lambda!41817) (not d!390682)))

(declare-fun m!1539949 () Bool)

(assert (=> b!1370025 m!1539949))

(declare-fun m!1539951 () Bool)

(assert (=> d!390682 m!1539951))

(assert (=> d!390682 m!1539607))

(declare-fun m!1539953 () Bool)

(assert (=> b!1370023 m!1539953))

(declare-fun m!1539955 () Bool)

(assert (=> b!1370026 m!1539955))

(declare-fun m!1539957 () Bool)

(assert (=> b!1370027 m!1539957))

(assert (=> b!1369805 d!390682))

(declare-fun d!390690 () Bool)

(declare-fun list!5346 (Conc!4569) List!13945)

(assert (=> d!390690 (= (list!5343 (_1!7624 lt!454580)) (list!5346 (c!225390 (_1!7624 lt!454580))))))

(declare-fun bs!335535 () Bool)

(assert (= bs!335535 d!390690))

(declare-fun m!1539965 () Bool)

(assert (=> bs!335535 m!1539965))

(assert (=> b!1369805 d!390690))

(declare-fun d!390694 () Bool)

(declare-fun e!875844 () Bool)

(assert (=> d!390694 e!875844))

(declare-fun res!617127 () Bool)

(assert (=> d!390694 (=> (not res!617127) (not e!875844))))

(declare-fun lt!454685 () BalanceConc!9078)

(assert (=> d!390694 (= res!617127 (= (list!5343 lt!454685) (Cons!13879 t1!34 Nil!13879)))))

(declare-fun singleton!450 (Token!4468) BalanceConc!9078)

(assert (=> d!390694 (= lt!454685 (singleton!450 t1!34))))

(assert (=> d!390694 (= (singletonSeq!1032 t1!34) lt!454685)))

(declare-fun b!1370044 () Bool)

(declare-fun isBalanced!1344 (Conc!4569) Bool)

(assert (=> b!1370044 (= e!875844 (isBalanced!1344 (c!225390 lt!454685)))))

(assert (= (and d!390694 res!617127) b!1370044))

(declare-fun m!1539967 () Bool)

(assert (=> d!390694 m!1539967))

(declare-fun m!1539969 () Bool)

(assert (=> d!390694 m!1539969))

(declare-fun m!1539971 () Bool)

(assert (=> b!1370044 m!1539971))

(assert (=> b!1369805 d!390694))

(declare-fun d!390696 () Bool)

(declare-fun lt!454690 () BalanceConc!9076)

(declare-fun printList!606 (LexerInterface!2098 List!13945) List!13942)

(assert (=> d!390696 (= (list!5342 lt!454690) (printList!606 thiss!19762 (list!5343 (singletonSeq!1032 t1!34))))))

(declare-fun printTailRec!588 (LexerInterface!2098 BalanceConc!9078 Int BalanceConc!9076) BalanceConc!9076)

(assert (=> d!390696 (= lt!454690 (printTailRec!588 thiss!19762 (singletonSeq!1032 t1!34) 0 (BalanceConc!9077 Empty!4568)))))

(assert (=> d!390696 (= (print!864 thiss!19762 (singletonSeq!1032 t1!34)) lt!454690)))

(declare-fun bs!335536 () Bool)

(assert (= bs!335536 d!390696))

(declare-fun m!1539983 () Bool)

(assert (=> bs!335536 m!1539983))

(assert (=> bs!335536 m!1539655))

(declare-fun m!1539985 () Bool)

(assert (=> bs!335536 m!1539985))

(assert (=> bs!335536 m!1539985))

(declare-fun m!1539987 () Bool)

(assert (=> bs!335536 m!1539987))

(assert (=> bs!335536 m!1539655))

(declare-fun m!1539989 () Bool)

(assert (=> bs!335536 m!1539989))

(assert (=> b!1369805 d!390696))

(declare-fun b!1370078 () Bool)

(declare-fun e!875866 () Bool)

(declare-fun e!875868 () Bool)

(assert (=> b!1370078 (= e!875866 e!875868)))

(declare-fun res!617149 () Bool)

(declare-fun lt!454699 () tuple2!13476)

(assert (=> b!1370078 (= res!617149 (< (size!11376 (_2!7624 lt!454699)) (size!11376 lt!454592)))))

(assert (=> b!1370078 (=> (not res!617149) (not e!875868))))

(declare-fun b!1370079 () Bool)

(declare-fun isEmpty!8364 (BalanceConc!9078) Bool)

(assert (=> b!1370079 (= e!875868 (not (isEmpty!8364 (_1!7624 lt!454699))))))

(declare-fun b!1370080 () Bool)

(declare-fun res!617148 () Bool)

(declare-fun e!875867 () Bool)

(assert (=> b!1370080 (=> (not res!617148) (not e!875867))))

(assert (=> b!1370080 (= res!617148 (= (list!5343 (_1!7624 lt!454699)) (_1!7625 (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454592)))))))

(declare-fun b!1370081 () Bool)

(assert (=> b!1370081 (= e!875866 (= (_2!7624 lt!454699) lt!454592))))

(declare-fun d!390700 () Bool)

(assert (=> d!390700 e!875867))

(declare-fun res!617147 () Bool)

(assert (=> d!390700 (=> (not res!617147) (not e!875867))))

(assert (=> d!390700 (= res!617147 e!875866)))

(declare-fun c!225441 () Bool)

(declare-fun size!11386 (BalanceConc!9078) Int)

(assert (=> d!390700 (= c!225441 (> (size!11386 (_1!7624 lt!454699)) 0))))

(declare-fun lexTailRecV2!411 (LexerInterface!2098 List!13944 BalanceConc!9076 BalanceConc!9076 BalanceConc!9076 BalanceConc!9078) tuple2!13476)

(assert (=> d!390700 (= lt!454699 (lexTailRecV2!411 thiss!19762 rules!2550 lt!454592 (BalanceConc!9077 Empty!4568) lt!454592 (BalanceConc!9079 Empty!4569)))))

(assert (=> d!390700 (= (lex!925 thiss!19762 rules!2550 lt!454592) lt!454699)))

(declare-fun b!1370082 () Bool)

(assert (=> b!1370082 (= e!875867 (= (list!5342 (_2!7624 lt!454699)) (_2!7625 (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454592)))))))

(assert (= (and d!390700 c!225441) b!1370078))

(assert (= (and d!390700 (not c!225441)) b!1370081))

(assert (= (and b!1370078 res!617149) b!1370079))

(assert (= (and d!390700 res!617147) b!1370080))

(assert (= (and b!1370080 res!617148) b!1370082))

(declare-fun m!1540011 () Bool)

(assert (=> b!1370079 m!1540011))

(declare-fun m!1540013 () Bool)

(assert (=> b!1370080 m!1540013))

(assert (=> b!1370080 m!1539687))

(assert (=> b!1370080 m!1539687))

(assert (=> b!1370080 m!1539689))

(declare-fun m!1540015 () Bool)

(assert (=> b!1370078 m!1540015))

(declare-fun m!1540017 () Bool)

(assert (=> b!1370078 m!1540017))

(declare-fun m!1540019 () Bool)

(assert (=> b!1370082 m!1540019))

(assert (=> b!1370082 m!1539687))

(assert (=> b!1370082 m!1539687))

(assert (=> b!1370082 m!1539689))

(declare-fun m!1540021 () Bool)

(assert (=> d!390700 m!1540021))

(declare-fun m!1540023 () Bool)

(assert (=> d!390700 m!1540023))

(assert (=> b!1369805 d!390700))

(declare-fun d!390706 () Bool)

(declare-fun lt!454705 () Bool)

(declare-fun content!2027 (List!13946) (InoxSet Regex!3717))

(assert (=> d!390706 (= lt!454705 (select (content!2027 (map!3065 rules!2550 lambda!58063)) lt!454577))))

(declare-fun e!875877 () Bool)

(assert (=> d!390706 (= lt!454705 e!875877)))

(declare-fun res!617157 () Bool)

(assert (=> d!390706 (=> (not res!617157) (not e!875877))))

(assert (=> d!390706 (= res!617157 ((_ is Cons!13880) (map!3065 rules!2550 lambda!58063)))))

(assert (=> d!390706 (= (contains!2595 (map!3065 rules!2550 lambda!58063) lt!454577) lt!454705)))

(declare-fun b!1370090 () Bool)

(declare-fun e!875876 () Bool)

(assert (=> b!1370090 (= e!875877 e!875876)))

(declare-fun res!617158 () Bool)

(assert (=> b!1370090 (=> res!617158 e!875876)))

(assert (=> b!1370090 (= res!617158 (= (h!19281 (map!3065 rules!2550 lambda!58063)) lt!454577))))

(declare-fun b!1370091 () Bool)

(assert (=> b!1370091 (= e!875876 (contains!2595 (t!121439 (map!3065 rules!2550 lambda!58063)) lt!454577))))

(assert (= (and d!390706 res!617157) b!1370090))

(assert (= (and b!1370090 (not res!617158)) b!1370091))

(assert (=> d!390706 m!1539623))

(declare-fun m!1540031 () Bool)

(assert (=> d!390706 m!1540031))

(declare-fun m!1540033 () Bool)

(assert (=> d!390706 m!1540033))

(declare-fun m!1540035 () Bool)

(assert (=> b!1370091 m!1540035))

(assert (=> b!1369806 d!390706))

(assert (=> b!1369806 d!390656))

(declare-fun b!1370119 () Bool)

(declare-fun e!875899 () Regex!3717)

(assert (=> b!1370119 (= e!875899 (getWitness!353 (t!121439 (map!3065 rules!2550 lambda!58063)) lambda!58064))))

(declare-fun b!1370120 () Bool)

(declare-fun e!875898 () Bool)

(declare-fun dynLambda!6295 (Int Regex!3717) Bool)

(assert (=> b!1370120 (= e!875898 (dynLambda!6295 lambda!58064 (h!19281 (map!3065 rules!2550 lambda!58063))))))

(declare-fun d!390710 () Bool)

(declare-fun e!875897 () Bool)

(assert (=> d!390710 e!875897))

(declare-fun res!617171 () Bool)

(assert (=> d!390710 (=> (not res!617171) (not e!875897))))

(declare-fun lt!454715 () Regex!3717)

(assert (=> d!390710 (= res!617171 (dynLambda!6295 lambda!58064 lt!454715))))

(declare-fun e!875900 () Regex!3717)

(assert (=> d!390710 (= lt!454715 e!875900)))

(declare-fun c!225451 () Bool)

(assert (=> d!390710 (= c!225451 e!875898)))

(declare-fun res!617170 () Bool)

(assert (=> d!390710 (=> (not res!617170) (not e!875898))))

(assert (=> d!390710 (= res!617170 ((_ is Cons!13880) (map!3065 rules!2550 lambda!58063)))))

(assert (=> d!390710 (exists!465 (map!3065 rules!2550 lambda!58063) lambda!58064)))

(assert (=> d!390710 (= (getWitness!353 (map!3065 rules!2550 lambda!58063) lambda!58064) lt!454715)))

(declare-fun b!1370121 () Bool)

(assert (=> b!1370121 (= e!875897 (contains!2595 (map!3065 rules!2550 lambda!58063) lt!454715))))

(declare-fun b!1370122 () Bool)

(assert (=> b!1370122 (= e!875900 e!875899)))

(declare-fun c!225450 () Bool)

(assert (=> b!1370122 (= c!225450 ((_ is Cons!13880) (map!3065 rules!2550 lambda!58063)))))

(declare-fun b!1370123 () Bool)

(assert (=> b!1370123 (= e!875900 (h!19281 (map!3065 rules!2550 lambda!58063)))))

(declare-fun b!1370124 () Bool)

(declare-fun lt!454716 () Unit!20097)

(declare-fun Unit!20102 () Unit!20097)

(assert (=> b!1370124 (= lt!454716 Unit!20102)))

(assert (=> b!1370124 false))

(declare-fun head!2465 (List!13946) Regex!3717)

(assert (=> b!1370124 (= e!875899 (head!2465 (map!3065 rules!2550 lambda!58063)))))

(assert (= (and d!390710 res!617170) b!1370120))

(assert (= (and d!390710 c!225451) b!1370123))

(assert (= (and d!390710 (not c!225451)) b!1370122))

(assert (= (and b!1370122 c!225450) b!1370119))

(assert (= (and b!1370122 (not c!225450)) b!1370124))

(assert (= (and d!390710 res!617171) b!1370121))

(declare-fun b_lambda!41823 () Bool)

(assert (=> (not b_lambda!41823) (not b!1370120)))

(declare-fun b_lambda!41825 () Bool)

(assert (=> (not b_lambda!41825) (not d!390710)))

(declare-fun m!1540051 () Bool)

(assert (=> d!390710 m!1540051))

(assert (=> d!390710 m!1539623))

(assert (=> d!390710 m!1539625))

(declare-fun m!1540053 () Bool)

(assert (=> b!1370119 m!1540053))

(declare-fun m!1540055 () Bool)

(assert (=> b!1370120 m!1540055))

(assert (=> b!1370121 m!1539623))

(declare-fun m!1540057 () Bool)

(assert (=> b!1370121 m!1540057))

(assert (=> b!1370124 m!1539623))

(declare-fun m!1540059 () Bool)

(assert (=> b!1370124 m!1540059))

(assert (=> b!1369806 d!390710))

(declare-fun b!1370228 () Bool)

(declare-fun res!617231 () Bool)

(declare-fun e!875952 () Bool)

(assert (=> b!1370228 (=> (not res!617231) (not e!875952))))

(declare-fun lt!454746 () Option!2666)

(declare-fun get!4344 (Option!2666) tuple2!13474)

(declare-fun apply!3402 (TokenValueInjection!4646 BalanceConc!9076) TokenValue!2493)

(declare-fun seqFromList!1633 (List!13942) BalanceConc!9076)

(assert (=> b!1370228 (= res!617231 (= (value!78118 (_1!7623 (get!4344 lt!454746))) (apply!3402 (transformation!2403 (rule!4158 (_1!7623 (get!4344 lt!454746)))) (seqFromList!1633 (originalCharacters!3265 (_1!7623 (get!4344 lt!454746)))))))))

(declare-fun b!1370229 () Bool)

(assert (=> b!1370229 (= e!875952 (contains!2594 rules!2550 (rule!4158 (_1!7623 (get!4344 lt!454746)))))))

(declare-fun bm!92071 () Bool)

(declare-fun call!92076 () Option!2666)

(declare-fun maxPrefixOneRule!615 (LexerInterface!2098 Rule!4606 List!13942) Option!2666)

(assert (=> bm!92071 (= call!92076 (maxPrefixOneRule!615 thiss!19762 (h!19279 rules!2550) lt!454578))))

(declare-fun b!1370230 () Bool)

(declare-fun e!875954 () Bool)

(assert (=> b!1370230 (= e!875954 e!875952)))

(declare-fun res!617232 () Bool)

(assert (=> b!1370230 (=> (not res!617232) (not e!875952))))

(declare-fun isDefined!2217 (Option!2666) Bool)

(assert (=> b!1370230 (= res!617232 (isDefined!2217 lt!454746))))

(declare-fun d!390718 () Bool)

(assert (=> d!390718 e!875954))

(declare-fun res!617234 () Bool)

(assert (=> d!390718 (=> res!617234 e!875954)))

(declare-fun isEmpty!8365 (Option!2666) Bool)

(assert (=> d!390718 (= res!617234 (isEmpty!8365 lt!454746))))

(declare-fun e!875953 () Option!2666)

(assert (=> d!390718 (= lt!454746 e!875953)))

(declare-fun c!225471 () Bool)

(assert (=> d!390718 (= c!225471 (and ((_ is Cons!13878) rules!2550) ((_ is Nil!13878) (t!121437 rules!2550))))))

(declare-fun lt!454742 () Unit!20097)

(declare-fun lt!454743 () Unit!20097)

(assert (=> d!390718 (= lt!454742 lt!454743)))

(declare-fun isPrefix!1127 (List!13942 List!13942) Bool)

(assert (=> d!390718 (isPrefix!1127 lt!454578 lt!454578)))

(declare-fun lemmaIsPrefixRefl!789 (List!13942 List!13942) Unit!20097)

(assert (=> d!390718 (= lt!454743 (lemmaIsPrefixRefl!789 lt!454578 lt!454578))))

(declare-fun rulesValidInductive!768 (LexerInterface!2098 List!13944) Bool)

(assert (=> d!390718 (rulesValidInductive!768 thiss!19762 rules!2550)))

(assert (=> d!390718 (= (maxPrefix!1080 thiss!19762 rules!2550 lt!454578) lt!454746)))

(declare-fun b!1370231 () Bool)

(assert (=> b!1370231 (= e!875953 call!92076)))

(declare-fun b!1370232 () Bool)

(declare-fun res!617235 () Bool)

(assert (=> b!1370232 (=> (not res!617235) (not e!875952))))

(assert (=> b!1370232 (= res!617235 (= (++!3586 (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454746)))) (_2!7623 (get!4344 lt!454746))) lt!454578))))

(declare-fun b!1370233 () Bool)

(declare-fun res!617236 () Bool)

(assert (=> b!1370233 (=> (not res!617236) (not e!875952))))

(assert (=> b!1370233 (= res!617236 (matchR!1710 (regex!2403 (rule!4158 (_1!7623 (get!4344 lt!454746)))) (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454746))))))))

(declare-fun b!1370234 () Bool)

(declare-fun lt!454745 () Option!2666)

(declare-fun lt!454744 () Option!2666)

(assert (=> b!1370234 (= e!875953 (ite (and ((_ is None!2665) lt!454745) ((_ is None!2665) lt!454744)) None!2665 (ite ((_ is None!2665) lt!454744) lt!454745 (ite ((_ is None!2665) lt!454745) lt!454744 (ite (>= (size!11375 (_1!7623 (v!21461 lt!454745))) (size!11375 (_1!7623 (v!21461 lt!454744)))) lt!454745 lt!454744)))))))

(assert (=> b!1370234 (= lt!454745 call!92076)))

(assert (=> b!1370234 (= lt!454744 (maxPrefix!1080 thiss!19762 (t!121437 rules!2550) lt!454578))))

(declare-fun b!1370235 () Bool)

(declare-fun res!617237 () Bool)

(assert (=> b!1370235 (=> (not res!617237) (not e!875952))))

(assert (=> b!1370235 (= res!617237 (= (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454746)))) (originalCharacters!3265 (_1!7623 (get!4344 lt!454746)))))))

(declare-fun b!1370236 () Bool)

(declare-fun res!617233 () Bool)

(assert (=> b!1370236 (=> (not res!617233) (not e!875952))))

(assert (=> b!1370236 (= res!617233 (< (size!11382 (_2!7623 (get!4344 lt!454746))) (size!11382 lt!454578)))))

(assert (= (and d!390718 c!225471) b!1370231))

(assert (= (and d!390718 (not c!225471)) b!1370234))

(assert (= (or b!1370231 b!1370234) bm!92071))

(assert (= (and d!390718 (not res!617234)) b!1370230))

(assert (= (and b!1370230 res!617232) b!1370235))

(assert (= (and b!1370235 res!617237) b!1370236))

(assert (= (and b!1370236 res!617233) b!1370232))

(assert (= (and b!1370232 res!617235) b!1370228))

(assert (= (and b!1370228 res!617231) b!1370233))

(assert (= (and b!1370233 res!617236) b!1370229))

(declare-fun m!1540153 () Bool)

(assert (=> bm!92071 m!1540153))

(declare-fun m!1540155 () Bool)

(assert (=> b!1370234 m!1540155))

(declare-fun m!1540157 () Bool)

(assert (=> b!1370235 m!1540157))

(declare-fun m!1540159 () Bool)

(assert (=> b!1370235 m!1540159))

(assert (=> b!1370235 m!1540159))

(declare-fun m!1540161 () Bool)

(assert (=> b!1370235 m!1540161))

(declare-fun m!1540163 () Bool)

(assert (=> d!390718 m!1540163))

(declare-fun m!1540165 () Bool)

(assert (=> d!390718 m!1540165))

(declare-fun m!1540167 () Bool)

(assert (=> d!390718 m!1540167))

(declare-fun m!1540169 () Bool)

(assert (=> d!390718 m!1540169))

(assert (=> b!1370229 m!1540157))

(declare-fun m!1540171 () Bool)

(assert (=> b!1370229 m!1540171))

(assert (=> b!1370228 m!1540157))

(declare-fun m!1540173 () Bool)

(assert (=> b!1370228 m!1540173))

(assert (=> b!1370228 m!1540173))

(declare-fun m!1540175 () Bool)

(assert (=> b!1370228 m!1540175))

(declare-fun m!1540177 () Bool)

(assert (=> b!1370230 m!1540177))

(assert (=> b!1370236 m!1540157))

(declare-fun m!1540179 () Bool)

(assert (=> b!1370236 m!1540179))

(declare-fun m!1540183 () Bool)

(assert (=> b!1370236 m!1540183))

(assert (=> b!1370232 m!1540157))

(assert (=> b!1370232 m!1540159))

(assert (=> b!1370232 m!1540159))

(assert (=> b!1370232 m!1540161))

(assert (=> b!1370232 m!1540161))

(declare-fun m!1540187 () Bool)

(assert (=> b!1370232 m!1540187))

(assert (=> b!1370233 m!1540157))

(assert (=> b!1370233 m!1540159))

(assert (=> b!1370233 m!1540159))

(assert (=> b!1370233 m!1540161))

(assert (=> b!1370233 m!1540161))

(declare-fun m!1540193 () Bool)

(assert (=> b!1370233 m!1540193))

(assert (=> b!1369785 d!390718))

(declare-fun b!1370242 () Bool)

(declare-fun res!617243 () Bool)

(declare-fun e!875961 () Bool)

(assert (=> b!1370242 (=> res!617243 e!875961)))

(assert (=> b!1370242 (= res!617243 (not ((_ is IntegerValue!7481) (value!78118 t1!34))))))

(declare-fun e!875960 () Bool)

(assert (=> b!1370242 (= e!875960 e!875961)))

(declare-fun b!1370243 () Bool)

(declare-fun e!875962 () Bool)

(assert (=> b!1370243 (= e!875962 e!875960)))

(declare-fun c!225473 () Bool)

(assert (=> b!1370243 (= c!225473 ((_ is IntegerValue!7480) (value!78118 t1!34)))))

(declare-fun b!1370244 () Bool)

(assert (=> b!1370244 (= e!875961 (inv!15 (value!78118 t1!34)))))

(declare-fun b!1370245 () Bool)

(assert (=> b!1370245 (= e!875960 (inv!17 (value!78118 t1!34)))))

(declare-fun d!390740 () Bool)

(declare-fun c!225472 () Bool)

(assert (=> d!390740 (= c!225472 ((_ is IntegerValue!7479) (value!78118 t1!34)))))

(assert (=> d!390740 (= (inv!21 (value!78118 t1!34)) e!875962)))

(declare-fun b!1370246 () Bool)

(assert (=> b!1370246 (= e!875962 (inv!16 (value!78118 t1!34)))))

(assert (= (and d!390740 c!225472) b!1370246))

(assert (= (and d!390740 (not c!225472)) b!1370243))

(assert (= (and b!1370243 c!225473) b!1370245))

(assert (= (and b!1370243 (not c!225473)) b!1370242))

(assert (= (and b!1370242 (not res!617243)) b!1370244))

(declare-fun m!1540201 () Bool)

(assert (=> b!1370244 m!1540201))

(declare-fun m!1540203 () Bool)

(assert (=> b!1370245 m!1540203))

(declare-fun m!1540205 () Bool)

(assert (=> b!1370246 m!1540205))

(assert (=> b!1369802 d!390740))

(declare-fun d!390746 () Bool)

(declare-fun prefixMatchZipperSequence!256 (Regex!3717 BalanceConc!9076) Bool)

(declare-fun ++!3588 (BalanceConc!9076 BalanceConc!9076) BalanceConc!9076)

(declare-fun singletonSeq!1034 (C!7724) BalanceConc!9076)

(assert (=> d!390746 (= (separableTokensPredicate!381 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!256 (rulesRegex!286 thiss!19762 rules!2550) (++!3588 (charsOf!1375 t1!34) (singletonSeq!1034 (apply!3397 (charsOf!1375 t2!34) 0))))))))

(declare-fun bs!335545 () Bool)

(assert (= bs!335545 d!390746))

(assert (=> bs!335545 m!1539619))

(assert (=> bs!335545 m!1539731))

(declare-fun m!1540281 () Bool)

(assert (=> bs!335545 m!1540281))

(assert (=> bs!335545 m!1539731))

(assert (=> bs!335545 m!1539619))

(declare-fun m!1540283 () Bool)

(assert (=> bs!335545 m!1540283))

(declare-fun m!1540285 () Bool)

(assert (=> bs!335545 m!1540285))

(assert (=> bs!335545 m!1540281))

(declare-fun m!1540287 () Bool)

(assert (=> bs!335545 m!1540287))

(assert (=> bs!335545 m!1539613))

(assert (=> bs!335545 m!1540287))

(assert (=> bs!335545 m!1540283))

(assert (=> bs!335545 m!1539613))

(assert (=> b!1369781 d!390746))

(declare-fun d!390772 () Bool)

(declare-fun lt!454790 () Bool)

(declare-fun e!876032 () Bool)

(assert (=> d!390772 (= lt!454790 e!876032)))

(declare-fun res!617289 () Bool)

(assert (=> d!390772 (=> (not res!617289) (not e!876032))))

(assert (=> d!390772 (= res!617289 (= (list!5343 (_1!7624 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t2!34))))) (list!5343 (singletonSeq!1032 t2!34))))))

(declare-fun e!876033 () Bool)

(assert (=> d!390772 (= lt!454790 e!876033)))

(declare-fun res!617287 () Bool)

(assert (=> d!390772 (=> (not res!617287) (not e!876033))))

(declare-fun lt!454791 () tuple2!13476)

(assert (=> d!390772 (= res!617287 (= (size!11386 (_1!7624 lt!454791)) 1))))

(assert (=> d!390772 (= lt!454791 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t2!34))))))

(assert (=> d!390772 (not (isEmpty!8356 rules!2550))))

(assert (=> d!390772 (= (rulesProduceIndividualToken!1067 thiss!19762 rules!2550 t2!34) lt!454790)))

(declare-fun b!1370363 () Bool)

(declare-fun res!617288 () Bool)

(assert (=> b!1370363 (=> (not res!617288) (not e!876033))))

(declare-fun apply!3403 (BalanceConc!9078 Int) Token!4468)

(assert (=> b!1370363 (= res!617288 (= (apply!3403 (_1!7624 lt!454791) 0) t2!34))))

(declare-fun b!1370364 () Bool)

(assert (=> b!1370364 (= e!876033 (isEmpty!8357 (_2!7624 lt!454791)))))

(declare-fun b!1370365 () Bool)

(assert (=> b!1370365 (= e!876032 (isEmpty!8357 (_2!7624 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t2!34))))))))

(assert (= (and d!390772 res!617287) b!1370363))

(assert (= (and b!1370363 res!617288) b!1370364))

(assert (= (and d!390772 res!617289) b!1370365))

(assert (=> d!390772 m!1539679))

(declare-fun m!1540391 () Bool)

(assert (=> d!390772 m!1540391))

(assert (=> d!390772 m!1539671))

(declare-fun m!1540393 () Bool)

(assert (=> d!390772 m!1540393))

(declare-fun m!1540395 () Bool)

(assert (=> d!390772 m!1540395))

(assert (=> d!390772 m!1539669))

(assert (=> d!390772 m!1539671))

(assert (=> d!390772 m!1539669))

(assert (=> d!390772 m!1539669))

(declare-fun m!1540397 () Bool)

(assert (=> d!390772 m!1540397))

(declare-fun m!1540399 () Bool)

(assert (=> b!1370363 m!1540399))

(declare-fun m!1540401 () Bool)

(assert (=> b!1370364 m!1540401))

(assert (=> b!1370365 m!1539669))

(assert (=> b!1370365 m!1539669))

(assert (=> b!1370365 m!1539671))

(assert (=> b!1370365 m!1539671))

(assert (=> b!1370365 m!1540393))

(declare-fun m!1540403 () Bool)

(assert (=> b!1370365 m!1540403))

(assert (=> b!1369782 d!390772))

(declare-fun d!390820 () Bool)

(declare-fun e!876040 () Bool)

(assert (=> d!390820 e!876040))

(declare-fun c!225491 () Bool)

(declare-fun lt!454800 () tuple2!13478)

(declare-fun size!11388 (List!13945) Int)

(assert (=> d!390820 (= c!225491 (> (size!11388 (_1!7625 lt!454800)) 0))))

(declare-fun e!876042 () tuple2!13478)

(assert (=> d!390820 (= lt!454800 e!876042)))

(declare-fun c!225492 () Bool)

(declare-fun lt!454799 () Option!2666)

(assert (=> d!390820 (= c!225492 ((_ is Some!2665) lt!454799))))

(assert (=> d!390820 (= lt!454799 (maxPrefix!1080 thiss!19762 rules!2550 (list!5342 lt!454592)))))

(assert (=> d!390820 (= (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454592)) lt!454800)))

(declare-fun b!1370376 () Bool)

(declare-fun lt!454798 () tuple2!13478)

(assert (=> b!1370376 (= e!876042 (tuple2!13479 (Cons!13879 (_1!7623 (v!21461 lt!454799)) (_1!7625 lt!454798)) (_2!7625 lt!454798)))))

(assert (=> b!1370376 (= lt!454798 (lexList!616 thiss!19762 rules!2550 (_2!7623 (v!21461 lt!454799))))))

(declare-fun b!1370377 () Bool)

(assert (=> b!1370377 (= e!876040 (= (_2!7625 lt!454800) (list!5342 lt!454592)))))

(declare-fun b!1370378 () Bool)

(declare-fun e!876041 () Bool)

(assert (=> b!1370378 (= e!876040 e!876041)))

(declare-fun res!617292 () Bool)

(assert (=> b!1370378 (= res!617292 (< (size!11382 (_2!7625 lt!454800)) (size!11382 (list!5342 lt!454592))))))

(assert (=> b!1370378 (=> (not res!617292) (not e!876041))))

(declare-fun b!1370379 () Bool)

(assert (=> b!1370379 (= e!876042 (tuple2!13479 Nil!13879 (list!5342 lt!454592)))))

(declare-fun b!1370380 () Bool)

(declare-fun isEmpty!8366 (List!13945) Bool)

(assert (=> b!1370380 (= e!876041 (not (isEmpty!8366 (_1!7625 lt!454800))))))

(assert (= (and d!390820 c!225492) b!1370376))

(assert (= (and d!390820 (not c!225492)) b!1370379))

(assert (= (and d!390820 c!225491) b!1370378))

(assert (= (and d!390820 (not c!225491)) b!1370377))

(assert (= (and b!1370378 res!617292) b!1370380))

(declare-fun m!1540405 () Bool)

(assert (=> d!390820 m!1540405))

(assert (=> d!390820 m!1539687))

(declare-fun m!1540407 () Bool)

(assert (=> d!390820 m!1540407))

(declare-fun m!1540409 () Bool)

(assert (=> b!1370376 m!1540409))

(declare-fun m!1540411 () Bool)

(assert (=> b!1370378 m!1540411))

(assert (=> b!1370378 m!1539687))

(declare-fun m!1540413 () Bool)

(assert (=> b!1370378 m!1540413))

(declare-fun m!1540415 () Bool)

(assert (=> b!1370380 m!1540415))

(assert (=> b!1369803 d!390820))

(declare-fun d!390822 () Bool)

(declare-fun list!5347 (Conc!4568) List!13942)

(assert (=> d!390822 (= (list!5342 lt!454592) (list!5347 (c!225389 lt!454592)))))

(declare-fun bs!335570 () Bool)

(assert (= bs!335570 d!390822))

(declare-fun m!1540417 () Bool)

(assert (=> bs!335570 m!1540417))

(assert (=> b!1369803 d!390822))

(declare-fun d!390824 () Bool)

(declare-fun lt!454803 () Bool)

(assert (=> d!390824 (= lt!454803 (isEmpty!8363 (list!5342 (_2!7624 lt!454580))))))

(declare-fun isEmpty!8367 (Conc!4568) Bool)

(assert (=> d!390824 (= lt!454803 (isEmpty!8367 (c!225389 (_2!7624 lt!454580))))))

(assert (=> d!390824 (= (isEmpty!8357 (_2!7624 lt!454580)) lt!454803)))

(declare-fun bs!335571 () Bool)

(assert (= bs!335571 d!390824))

(declare-fun m!1540419 () Bool)

(assert (=> bs!335571 m!1540419))

(assert (=> bs!335571 m!1540419))

(declare-fun m!1540421 () Bool)

(assert (=> bs!335571 m!1540421))

(declare-fun m!1540423 () Bool)

(assert (=> bs!335571 m!1540423))

(assert (=> b!1369804 d!390824))

(declare-fun d!390826 () Bool)

(assert (=> d!390826 (= (isEmpty!8356 rules!2550) ((_ is Nil!13878) rules!2550))))

(assert (=> b!1369778 d!390826))

(declare-fun d!390828 () Bool)

(declare-fun lt!454804 () Bool)

(declare-fun e!876043 () Bool)

(assert (=> d!390828 (= lt!454804 e!876043)))

(declare-fun res!617295 () Bool)

(assert (=> d!390828 (=> (not res!617295) (not e!876043))))

(assert (=> d!390828 (= res!617295 (= (list!5343 (_1!7624 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t1!34))))) (list!5343 (singletonSeq!1032 t1!34))))))

(declare-fun e!876044 () Bool)

(assert (=> d!390828 (= lt!454804 e!876044)))

(declare-fun res!617293 () Bool)

(assert (=> d!390828 (=> (not res!617293) (not e!876044))))

(declare-fun lt!454805 () tuple2!13476)

(assert (=> d!390828 (= res!617293 (= (size!11386 (_1!7624 lt!454805)) 1))))

(assert (=> d!390828 (= lt!454805 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t1!34))))))

(assert (=> d!390828 (not (isEmpty!8356 rules!2550))))

(assert (=> d!390828 (= (rulesProduceIndividualToken!1067 thiss!19762 rules!2550 t1!34) lt!454804)))

(declare-fun b!1370381 () Bool)

(declare-fun res!617294 () Bool)

(assert (=> b!1370381 (=> (not res!617294) (not e!876044))))

(assert (=> b!1370381 (= res!617294 (= (apply!3403 (_1!7624 lt!454805) 0) t1!34))))

(declare-fun b!1370382 () Bool)

(assert (=> b!1370382 (= e!876044 (isEmpty!8357 (_2!7624 lt!454805)))))

(declare-fun b!1370383 () Bool)

(assert (=> b!1370383 (= e!876043 (isEmpty!8357 (_2!7624 (lex!925 thiss!19762 rules!2550 (print!864 thiss!19762 (singletonSeq!1032 t1!34))))))))

(assert (= (and d!390828 res!617293) b!1370381))

(assert (= (and b!1370381 res!617294) b!1370382))

(assert (= (and d!390828 res!617295) b!1370383))

(assert (=> d!390828 m!1539679))

(declare-fun m!1540425 () Bool)

(assert (=> d!390828 m!1540425))

(assert (=> d!390828 m!1539657))

(declare-fun m!1540427 () Bool)

(assert (=> d!390828 m!1540427))

(declare-fun m!1540429 () Bool)

(assert (=> d!390828 m!1540429))

(assert (=> d!390828 m!1539655))

(assert (=> d!390828 m!1539657))

(assert (=> d!390828 m!1539655))

(assert (=> d!390828 m!1539655))

(assert (=> d!390828 m!1539985))

(declare-fun m!1540431 () Bool)

(assert (=> b!1370381 m!1540431))

(declare-fun m!1540433 () Bool)

(assert (=> b!1370382 m!1540433))

(assert (=> b!1370383 m!1539655))

(assert (=> b!1370383 m!1539655))

(assert (=> b!1370383 m!1539657))

(assert (=> b!1370383 m!1539657))

(assert (=> b!1370383 m!1540427))

(declare-fun m!1540435 () Bool)

(assert (=> b!1370383 m!1540435))

(assert (=> b!1369799 d!390828))

(declare-fun d!390830 () Bool)

(declare-fun lt!454806 () Bool)

(assert (=> d!390830 (= lt!454806 (select (content!2026 lt!454588) lt!454591))))

(declare-fun e!876046 () Bool)

(assert (=> d!390830 (= lt!454806 e!876046)))

(declare-fun res!617297 () Bool)

(assert (=> d!390830 (=> (not res!617297) (not e!876046))))

(assert (=> d!390830 (= res!617297 ((_ is Cons!13876) lt!454588))))

(assert (=> d!390830 (= (contains!2593 lt!454588 lt!454591) lt!454806)))

(declare-fun b!1370384 () Bool)

(declare-fun e!876045 () Bool)

(assert (=> b!1370384 (= e!876046 e!876045)))

(declare-fun res!617296 () Bool)

(assert (=> b!1370384 (=> res!617296 e!876045)))

(assert (=> b!1370384 (= res!617296 (= (h!19277 lt!454588) lt!454591))))

(declare-fun b!1370385 () Bool)

(assert (=> b!1370385 (= e!876045 (contains!2593 (t!121435 lt!454588) lt!454591))))

(assert (= (and d!390830 res!617297) b!1370384))

(assert (= (and b!1370384 (not res!617296)) b!1370385))

(declare-fun m!1540437 () Bool)

(assert (=> d!390830 m!1540437))

(declare-fun m!1540439 () Bool)

(assert (=> d!390830 m!1540439))

(declare-fun m!1540441 () Bool)

(assert (=> b!1370385 m!1540441))

(assert (=> b!1369800 d!390830))

(declare-fun d!390832 () Bool)

(assert (=> d!390832 (= (list!5343 (_1!7624 lt!454583)) (list!5346 (c!225390 (_1!7624 lt!454583))))))

(declare-fun bs!335572 () Bool)

(assert (= bs!335572 d!390832))

(declare-fun m!1540443 () Bool)

(assert (=> bs!335572 m!1540443))

(assert (=> b!1369779 d!390832))

(declare-fun b!1370386 () Bool)

(declare-fun e!876047 () Bool)

(declare-fun e!876049 () Bool)

(assert (=> b!1370386 (= e!876047 e!876049)))

(declare-fun res!617300 () Bool)

(declare-fun lt!454807 () tuple2!13476)

(assert (=> b!1370386 (= res!617300 (< (size!11376 (_2!7624 lt!454807)) (size!11376 lt!454590)))))

(assert (=> b!1370386 (=> (not res!617300) (not e!876049))))

(declare-fun b!1370387 () Bool)

(assert (=> b!1370387 (= e!876049 (not (isEmpty!8364 (_1!7624 lt!454807))))))

(declare-fun b!1370388 () Bool)

(declare-fun res!617299 () Bool)

(declare-fun e!876048 () Bool)

(assert (=> b!1370388 (=> (not res!617299) (not e!876048))))

(assert (=> b!1370388 (= res!617299 (= (list!5343 (_1!7624 lt!454807)) (_1!7625 (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454590)))))))

(declare-fun b!1370389 () Bool)

(assert (=> b!1370389 (= e!876047 (= (_2!7624 lt!454807) lt!454590))))

(declare-fun d!390834 () Bool)

(assert (=> d!390834 e!876048))

(declare-fun res!617298 () Bool)

(assert (=> d!390834 (=> (not res!617298) (not e!876048))))

(assert (=> d!390834 (= res!617298 e!876047)))

(declare-fun c!225493 () Bool)

(assert (=> d!390834 (= c!225493 (> (size!11386 (_1!7624 lt!454807)) 0))))

(assert (=> d!390834 (= lt!454807 (lexTailRecV2!411 thiss!19762 rules!2550 lt!454590 (BalanceConc!9077 Empty!4568) lt!454590 (BalanceConc!9079 Empty!4569)))))

(assert (=> d!390834 (= (lex!925 thiss!19762 rules!2550 lt!454590) lt!454807)))

(declare-fun b!1370390 () Bool)

(assert (=> b!1370390 (= e!876048 (= (list!5342 (_2!7624 lt!454807)) (_2!7625 (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454590)))))))

(assert (= (and d!390834 c!225493) b!1370386))

(assert (= (and d!390834 (not c!225493)) b!1370389))

(assert (= (and b!1370386 res!617300) b!1370387))

(assert (= (and d!390834 res!617298) b!1370388))

(assert (= (and b!1370388 res!617299) b!1370390))

(declare-fun m!1540445 () Bool)

(assert (=> b!1370387 m!1540445))

(declare-fun m!1540447 () Bool)

(assert (=> b!1370388 m!1540447))

(assert (=> b!1370388 m!1539725))

(assert (=> b!1370388 m!1539725))

(assert (=> b!1370388 m!1539727))

(declare-fun m!1540449 () Bool)

(assert (=> b!1370386 m!1540449))

(declare-fun m!1540451 () Bool)

(assert (=> b!1370386 m!1540451))

(declare-fun m!1540453 () Bool)

(assert (=> b!1370390 m!1540453))

(assert (=> b!1370390 m!1539725))

(assert (=> b!1370390 m!1539725))

(assert (=> b!1370390 m!1539727))

(declare-fun m!1540455 () Bool)

(assert (=> d!390834 m!1540455))

(declare-fun m!1540457 () Bool)

(assert (=> d!390834 m!1540457))

(assert (=> b!1369779 d!390834))

(declare-fun d!390836 () Bool)

(declare-fun lt!454808 () BalanceConc!9076)

(assert (=> d!390836 (= (list!5342 lt!454808) (printList!606 thiss!19762 (list!5343 (singletonSeq!1032 t2!34))))))

(assert (=> d!390836 (= lt!454808 (printTailRec!588 thiss!19762 (singletonSeq!1032 t2!34) 0 (BalanceConc!9077 Empty!4568)))))

(assert (=> d!390836 (= (print!864 thiss!19762 (singletonSeq!1032 t2!34)) lt!454808)))

(declare-fun bs!335573 () Bool)

(assert (= bs!335573 d!390836))

(declare-fun m!1540459 () Bool)

(assert (=> bs!335573 m!1540459))

(assert (=> bs!335573 m!1539669))

(assert (=> bs!335573 m!1540397))

(assert (=> bs!335573 m!1540397))

(declare-fun m!1540461 () Bool)

(assert (=> bs!335573 m!1540461))

(assert (=> bs!335573 m!1539669))

(declare-fun m!1540463 () Bool)

(assert (=> bs!335573 m!1540463))

(assert (=> b!1369779 d!390836))

(declare-fun d!390838 () Bool)

(declare-fun e!876050 () Bool)

(assert (=> d!390838 e!876050))

(declare-fun res!617301 () Bool)

(assert (=> d!390838 (=> (not res!617301) (not e!876050))))

(declare-fun lt!454809 () BalanceConc!9078)

(assert (=> d!390838 (= res!617301 (= (list!5343 lt!454809) (Cons!13879 t2!34 Nil!13879)))))

(assert (=> d!390838 (= lt!454809 (singleton!450 t2!34))))

(assert (=> d!390838 (= (singletonSeq!1032 t2!34) lt!454809)))

(declare-fun b!1370391 () Bool)

(assert (=> b!1370391 (= e!876050 (isBalanced!1344 (c!225390 lt!454809)))))

(assert (= (and d!390838 res!617301) b!1370391))

(declare-fun m!1540465 () Bool)

(assert (=> d!390838 m!1540465))

(declare-fun m!1540467 () Bool)

(assert (=> d!390838 m!1540467))

(declare-fun m!1540469 () Bool)

(assert (=> b!1370391 m!1540469))

(assert (=> b!1369779 d!390838))

(declare-fun d!390840 () Bool)

(declare-fun e!876051 () Bool)

(assert (=> d!390840 e!876051))

(declare-fun c!225494 () Bool)

(declare-fun lt!454812 () tuple2!13478)

(assert (=> d!390840 (= c!225494 (> (size!11388 (_1!7625 lt!454812)) 0))))

(declare-fun e!876053 () tuple2!13478)

(assert (=> d!390840 (= lt!454812 e!876053)))

(declare-fun c!225495 () Bool)

(declare-fun lt!454811 () Option!2666)

(assert (=> d!390840 (= c!225495 ((_ is Some!2665) lt!454811))))

(assert (=> d!390840 (= lt!454811 (maxPrefix!1080 thiss!19762 rules!2550 (list!5342 lt!454590)))))

(assert (=> d!390840 (= (lexList!616 thiss!19762 rules!2550 (list!5342 lt!454590)) lt!454812)))

(declare-fun b!1370392 () Bool)

(declare-fun lt!454810 () tuple2!13478)

(assert (=> b!1370392 (= e!876053 (tuple2!13479 (Cons!13879 (_1!7623 (v!21461 lt!454811)) (_1!7625 lt!454810)) (_2!7625 lt!454810)))))

(assert (=> b!1370392 (= lt!454810 (lexList!616 thiss!19762 rules!2550 (_2!7623 (v!21461 lt!454811))))))

(declare-fun b!1370393 () Bool)

(assert (=> b!1370393 (= e!876051 (= (_2!7625 lt!454812) (list!5342 lt!454590)))))

(declare-fun b!1370394 () Bool)

(declare-fun e!876052 () Bool)

(assert (=> b!1370394 (= e!876051 e!876052)))

(declare-fun res!617302 () Bool)

(assert (=> b!1370394 (= res!617302 (< (size!11382 (_2!7625 lt!454812)) (size!11382 (list!5342 lt!454590))))))

(assert (=> b!1370394 (=> (not res!617302) (not e!876052))))

(declare-fun b!1370395 () Bool)

(assert (=> b!1370395 (= e!876053 (tuple2!13479 Nil!13879 (list!5342 lt!454590)))))

(declare-fun b!1370396 () Bool)

(assert (=> b!1370396 (= e!876052 (not (isEmpty!8366 (_1!7625 lt!454812))))))

(assert (= (and d!390840 c!225495) b!1370392))

(assert (= (and d!390840 (not c!225495)) b!1370395))

(assert (= (and d!390840 c!225494) b!1370394))

(assert (= (and d!390840 (not c!225494)) b!1370393))

(assert (= (and b!1370394 res!617302) b!1370396))

(declare-fun m!1540471 () Bool)

(assert (=> d!390840 m!1540471))

(assert (=> d!390840 m!1539725))

(declare-fun m!1540473 () Bool)

(assert (=> d!390840 m!1540473))

(declare-fun m!1540475 () Bool)

(assert (=> b!1370392 m!1540475))

(declare-fun m!1540477 () Bool)

(assert (=> b!1370394 m!1540477))

(assert (=> b!1370394 m!1539725))

(declare-fun m!1540479 () Bool)

(assert (=> b!1370394 m!1540479))

(declare-fun m!1540481 () Bool)

(assert (=> b!1370396 m!1540481))

(assert (=> b!1369780 d!390840))

(declare-fun d!390842 () Bool)

(assert (=> d!390842 (= (list!5342 lt!454590) (list!5347 (c!225389 lt!454590)))))

(declare-fun bs!335574 () Bool)

(assert (= bs!335574 d!390842))

(declare-fun m!1540483 () Bool)

(assert (=> bs!335574 m!1540483))

(assert (=> b!1369780 d!390842))

(declare-fun d!390844 () Bool)

(declare-fun res!617307 () Bool)

(declare-fun e!876056 () Bool)

(assert (=> d!390844 (=> (not res!617307) (not e!876056))))

(assert (=> d!390844 (= res!617307 (not (isEmpty!8363 (originalCharacters!3265 t1!34))))))

(assert (=> d!390844 (= (inv!18234 t1!34) e!876056)))

(declare-fun b!1370401 () Bool)

(declare-fun res!617308 () Bool)

(assert (=> b!1370401 (=> (not res!617308) (not e!876056))))

(assert (=> b!1370401 (= res!617308 (= (originalCharacters!3265 t1!34) (list!5342 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (value!78118 t1!34)))))))

(declare-fun b!1370402 () Bool)

(assert (=> b!1370402 (= e!876056 (= (size!11375 t1!34) (size!11382 (originalCharacters!3265 t1!34))))))

(assert (= (and d!390844 res!617307) b!1370401))

(assert (= (and b!1370401 res!617308) b!1370402))

(declare-fun b_lambda!41863 () Bool)

(assert (=> (not b_lambda!41863) (not b!1370401)))

(declare-fun t!121467 () Bool)

(declare-fun tb!72191 () Bool)

(assert (=> (and b!1369797 (= (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toChars!3529 (transformation!2403 (rule!4158 t1!34)))) t!121467) tb!72191))

(declare-fun b!1370403 () Bool)

(declare-fun e!876057 () Bool)

(declare-fun tp!393715 () Bool)

(assert (=> b!1370403 (= e!876057 (and (inv!18237 (c!225389 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (value!78118 t1!34)))) tp!393715))))

(declare-fun result!87654 () Bool)

(assert (=> tb!72191 (= result!87654 (and (inv!18238 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (value!78118 t1!34))) e!876057))))

(assert (= tb!72191 b!1370403))

(declare-fun m!1540485 () Bool)

(assert (=> b!1370403 m!1540485))

(declare-fun m!1540487 () Bool)

(assert (=> tb!72191 m!1540487))

(assert (=> b!1370401 t!121467))

(declare-fun b_and!91841 () Bool)

(assert (= b_and!91807 (and (=> t!121467 result!87654) b_and!91841)))

(declare-fun t!121469 () Bool)

(declare-fun tb!72193 () Bool)

(assert (=> (and b!1369796 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t1!34)))) t!121469) tb!72193))

(declare-fun result!87656 () Bool)

(assert (= result!87656 result!87654))

(assert (=> b!1370401 t!121469))

(declare-fun b_and!91843 () Bool)

(assert (= b_and!91809 (and (=> t!121469 result!87656) b_and!91843)))

(declare-fun tb!72195 () Bool)

(declare-fun t!121471 () Bool)

(assert (=> (and b!1369798 (= (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toChars!3529 (transformation!2403 (rule!4158 t1!34)))) t!121471) tb!72195))

(declare-fun result!87658 () Bool)

(assert (= result!87658 result!87654))

(assert (=> b!1370401 t!121471))

(declare-fun b_and!91845 () Bool)

(assert (= b_and!91811 (and (=> t!121471 result!87658) b_and!91845)))

(declare-fun m!1540489 () Bool)

(assert (=> d!390844 m!1540489))

(declare-fun m!1540491 () Bool)

(assert (=> b!1370401 m!1540491))

(assert (=> b!1370401 m!1540491))

(declare-fun m!1540493 () Bool)

(assert (=> b!1370401 m!1540493))

(declare-fun m!1540495 () Bool)

(assert (=> b!1370402 m!1540495))

(assert (=> start!123614 d!390844))

(declare-fun d!390846 () Bool)

(declare-fun res!617309 () Bool)

(declare-fun e!876058 () Bool)

(assert (=> d!390846 (=> (not res!617309) (not e!876058))))

(assert (=> d!390846 (= res!617309 (not (isEmpty!8363 (originalCharacters!3265 t2!34))))))

(assert (=> d!390846 (= (inv!18234 t2!34) e!876058)))

(declare-fun b!1370404 () Bool)

(declare-fun res!617310 () Bool)

(assert (=> b!1370404 (=> (not res!617310) (not e!876058))))

(assert (=> b!1370404 (= res!617310 (= (originalCharacters!3265 t2!34) (list!5342 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (value!78118 t2!34)))))))

(declare-fun b!1370405 () Bool)

(assert (=> b!1370405 (= e!876058 (= (size!11375 t2!34) (size!11382 (originalCharacters!3265 t2!34))))))

(assert (= (and d!390846 res!617309) b!1370404))

(assert (= (and b!1370404 res!617310) b!1370405))

(declare-fun b_lambda!41865 () Bool)

(assert (=> (not b_lambda!41865) (not b!1370404)))

(assert (=> b!1370404 t!121442))

(declare-fun b_and!91847 () Bool)

(assert (= b_and!91841 (and (=> t!121442 result!87622) b_and!91847)))

(assert (=> b!1370404 t!121444))

(declare-fun b_and!91849 () Bool)

(assert (= b_and!91843 (and (=> t!121444 result!87626) b_and!91849)))

(assert (=> b!1370404 t!121446))

(declare-fun b_and!91851 () Bool)

(assert (= b_and!91845 (and (=> t!121446 result!87628) b_and!91851)))

(declare-fun m!1540497 () Bool)

(assert (=> d!390846 m!1540497))

(assert (=> b!1370404 m!1539807))

(assert (=> b!1370404 m!1539807))

(declare-fun m!1540499 () Bool)

(assert (=> b!1370404 m!1540499))

(declare-fun m!1540501 () Bool)

(assert (=> b!1370405 m!1540501))

(assert (=> start!123614 d!390846))

(declare-fun d!390848 () Bool)

(declare-fun lt!454813 () Bool)

(assert (=> d!390848 (= lt!454813 (select (content!2026 lt!454595) lt!454591))))

(declare-fun e!876060 () Bool)

(assert (=> d!390848 (= lt!454813 e!876060)))

(declare-fun res!617312 () Bool)

(assert (=> d!390848 (=> (not res!617312) (not e!876060))))

(assert (=> d!390848 (= res!617312 ((_ is Cons!13876) lt!454595))))

(assert (=> d!390848 (= (contains!2593 lt!454595 lt!454591) lt!454813)))

(declare-fun b!1370406 () Bool)

(declare-fun e!876059 () Bool)

(assert (=> b!1370406 (= e!876060 e!876059)))

(declare-fun res!617311 () Bool)

(assert (=> b!1370406 (=> res!617311 e!876059)))

(assert (=> b!1370406 (= res!617311 (= (h!19277 lt!454595) lt!454591))))

(declare-fun b!1370407 () Bool)

(assert (=> b!1370407 (= e!876059 (contains!2593 (t!121435 lt!454595) lt!454591))))

(assert (= (and d!390848 res!617312) b!1370406))

(assert (= (and b!1370406 (not res!617311)) b!1370407))

(assert (=> d!390848 m!1539791))

(declare-fun m!1540503 () Bool)

(assert (=> d!390848 m!1540503))

(declare-fun m!1540505 () Bool)

(assert (=> b!1370407 m!1540505))

(assert (=> b!1369801 d!390848))

(declare-fun d!390850 () Bool)

(declare-fun lt!454816 () C!7724)

(declare-fun apply!3404 (List!13942 Int) C!7724)

(assert (=> d!390850 (= lt!454816 (apply!3404 (list!5342 lt!454586) 0))))

(declare-fun apply!3405 (Conc!4568 Int) C!7724)

(assert (=> d!390850 (= lt!454816 (apply!3405 (c!225389 lt!454586) 0))))

(declare-fun e!876063 () Bool)

(assert (=> d!390850 e!876063))

(declare-fun res!617315 () Bool)

(assert (=> d!390850 (=> (not res!617315) (not e!876063))))

(assert (=> d!390850 (= res!617315 (<= 0 0))))

(assert (=> d!390850 (= (apply!3397 lt!454586 0) lt!454816)))

(declare-fun b!1370410 () Bool)

(assert (=> b!1370410 (= e!876063 (< 0 (size!11376 lt!454586)))))

(assert (= (and d!390850 res!617315) b!1370410))

(assert (=> d!390850 m!1539621))

(assert (=> d!390850 m!1539621))

(declare-fun m!1540507 () Bool)

(assert (=> d!390850 m!1540507))

(declare-fun m!1540509 () Bool)

(assert (=> d!390850 m!1540509))

(declare-fun m!1540511 () Bool)

(assert (=> b!1370410 m!1540511))

(assert (=> b!1369801 d!390850))

(declare-fun b!1370411 () Bool)

(declare-fun res!617316 () Bool)

(declare-fun e!876064 () Bool)

(assert (=> b!1370411 (=> (not res!617316) (not e!876064))))

(declare-fun lt!454821 () Option!2666)

(assert (=> b!1370411 (= res!617316 (= (value!78118 (_1!7623 (get!4344 lt!454821))) (apply!3402 (transformation!2403 (rule!4158 (_1!7623 (get!4344 lt!454821)))) (seqFromList!1633 (originalCharacters!3265 (_1!7623 (get!4344 lt!454821)))))))))

(declare-fun b!1370412 () Bool)

(assert (=> b!1370412 (= e!876064 (contains!2594 rules!2550 (rule!4158 (_1!7623 (get!4344 lt!454821)))))))

(declare-fun bm!92072 () Bool)

(declare-fun call!92077 () Option!2666)

(assert (=> bm!92072 (= call!92077 (maxPrefixOneRule!615 thiss!19762 (h!19279 rules!2550) (list!5342 lt!454587)))))

(declare-fun b!1370413 () Bool)

(declare-fun e!876066 () Bool)

(assert (=> b!1370413 (= e!876066 e!876064)))

(declare-fun res!617317 () Bool)

(assert (=> b!1370413 (=> (not res!617317) (not e!876064))))

(assert (=> b!1370413 (= res!617317 (isDefined!2217 lt!454821))))

(declare-fun d!390852 () Bool)

(assert (=> d!390852 e!876066))

(declare-fun res!617319 () Bool)

(assert (=> d!390852 (=> res!617319 e!876066)))

(assert (=> d!390852 (= res!617319 (isEmpty!8365 lt!454821))))

(declare-fun e!876065 () Option!2666)

(assert (=> d!390852 (= lt!454821 e!876065)))

(declare-fun c!225496 () Bool)

(assert (=> d!390852 (= c!225496 (and ((_ is Cons!13878) rules!2550) ((_ is Nil!13878) (t!121437 rules!2550))))))

(declare-fun lt!454817 () Unit!20097)

(declare-fun lt!454818 () Unit!20097)

(assert (=> d!390852 (= lt!454817 lt!454818)))

(assert (=> d!390852 (isPrefix!1127 (list!5342 lt!454587) (list!5342 lt!454587))))

(assert (=> d!390852 (= lt!454818 (lemmaIsPrefixRefl!789 (list!5342 lt!454587) (list!5342 lt!454587)))))

(assert (=> d!390852 (rulesValidInductive!768 thiss!19762 rules!2550)))

(assert (=> d!390852 (= (maxPrefix!1080 thiss!19762 rules!2550 (list!5342 lt!454587)) lt!454821)))

(declare-fun b!1370414 () Bool)

(assert (=> b!1370414 (= e!876065 call!92077)))

(declare-fun b!1370415 () Bool)

(declare-fun res!617320 () Bool)

(assert (=> b!1370415 (=> (not res!617320) (not e!876064))))

(assert (=> b!1370415 (= res!617320 (= (++!3586 (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454821)))) (_2!7623 (get!4344 lt!454821))) (list!5342 lt!454587)))))

(declare-fun b!1370416 () Bool)

(declare-fun res!617321 () Bool)

(assert (=> b!1370416 (=> (not res!617321) (not e!876064))))

(assert (=> b!1370416 (= res!617321 (matchR!1710 (regex!2403 (rule!4158 (_1!7623 (get!4344 lt!454821)))) (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454821))))))))

(declare-fun b!1370417 () Bool)

(declare-fun lt!454820 () Option!2666)

(declare-fun lt!454819 () Option!2666)

(assert (=> b!1370417 (= e!876065 (ite (and ((_ is None!2665) lt!454820) ((_ is None!2665) lt!454819)) None!2665 (ite ((_ is None!2665) lt!454819) lt!454820 (ite ((_ is None!2665) lt!454820) lt!454819 (ite (>= (size!11375 (_1!7623 (v!21461 lt!454820))) (size!11375 (_1!7623 (v!21461 lt!454819)))) lt!454820 lt!454819)))))))

(assert (=> b!1370417 (= lt!454820 call!92077)))

(assert (=> b!1370417 (= lt!454819 (maxPrefix!1080 thiss!19762 (t!121437 rules!2550) (list!5342 lt!454587)))))

(declare-fun b!1370418 () Bool)

(declare-fun res!617322 () Bool)

(assert (=> b!1370418 (=> (not res!617322) (not e!876064))))

(assert (=> b!1370418 (= res!617322 (= (list!5342 (charsOf!1375 (_1!7623 (get!4344 lt!454821)))) (originalCharacters!3265 (_1!7623 (get!4344 lt!454821)))))))

(declare-fun b!1370419 () Bool)

(declare-fun res!617318 () Bool)

(assert (=> b!1370419 (=> (not res!617318) (not e!876064))))

(assert (=> b!1370419 (= res!617318 (< (size!11382 (_2!7623 (get!4344 lt!454821))) (size!11382 (list!5342 lt!454587))))))

(assert (= (and d!390852 c!225496) b!1370414))

(assert (= (and d!390852 (not c!225496)) b!1370417))

(assert (= (or b!1370414 b!1370417) bm!92072))

(assert (= (and d!390852 (not res!617319)) b!1370413))

(assert (= (and b!1370413 res!617317) b!1370418))

(assert (= (and b!1370418 res!617322) b!1370419))

(assert (= (and b!1370419 res!617318) b!1370415))

(assert (= (and b!1370415 res!617320) b!1370411))

(assert (= (and b!1370411 res!617316) b!1370416))

(assert (= (and b!1370416 res!617321) b!1370412))

(assert (=> bm!92072 m!1539695))

(declare-fun m!1540513 () Bool)

(assert (=> bm!92072 m!1540513))

(assert (=> b!1370417 m!1539695))

(declare-fun m!1540515 () Bool)

(assert (=> b!1370417 m!1540515))

(declare-fun m!1540517 () Bool)

(assert (=> b!1370418 m!1540517))

(declare-fun m!1540519 () Bool)

(assert (=> b!1370418 m!1540519))

(assert (=> b!1370418 m!1540519))

(declare-fun m!1540521 () Bool)

(assert (=> b!1370418 m!1540521))

(declare-fun m!1540523 () Bool)

(assert (=> d!390852 m!1540523))

(assert (=> d!390852 m!1539695))

(assert (=> d!390852 m!1539695))

(declare-fun m!1540525 () Bool)

(assert (=> d!390852 m!1540525))

(assert (=> d!390852 m!1539695))

(assert (=> d!390852 m!1539695))

(declare-fun m!1540527 () Bool)

(assert (=> d!390852 m!1540527))

(assert (=> d!390852 m!1540169))

(assert (=> b!1370412 m!1540517))

(declare-fun m!1540529 () Bool)

(assert (=> b!1370412 m!1540529))

(assert (=> b!1370411 m!1540517))

(declare-fun m!1540531 () Bool)

(assert (=> b!1370411 m!1540531))

(assert (=> b!1370411 m!1540531))

(declare-fun m!1540533 () Bool)

(assert (=> b!1370411 m!1540533))

(declare-fun m!1540535 () Bool)

(assert (=> b!1370413 m!1540535))

(assert (=> b!1370419 m!1540517))

(declare-fun m!1540537 () Bool)

(assert (=> b!1370419 m!1540537))

(assert (=> b!1370419 m!1539695))

(assert (=> b!1370419 m!1539797))

(assert (=> b!1370415 m!1540517))

(assert (=> b!1370415 m!1540519))

(assert (=> b!1370415 m!1540519))

(assert (=> b!1370415 m!1540521))

(assert (=> b!1370415 m!1540521))

(declare-fun m!1540539 () Bool)

(assert (=> b!1370415 m!1540539))

(assert (=> b!1370416 m!1540517))

(assert (=> b!1370416 m!1540519))

(assert (=> b!1370416 m!1540519))

(assert (=> b!1370416 m!1540521))

(assert (=> b!1370416 m!1540521))

(declare-fun m!1540541 () Bool)

(assert (=> b!1370416 m!1540541))

(assert (=> b!1369775 d!390852))

(declare-fun d!390854 () Bool)

(assert (=> d!390854 (= (list!5342 lt!454587) (list!5347 (c!225389 lt!454587)))))

(declare-fun bs!335575 () Bool)

(assert (= bs!335575 d!390854))

(declare-fun m!1540543 () Bool)

(assert (=> bs!335575 m!1540543))

(assert (=> b!1369775 d!390854))

(declare-fun d!390856 () Bool)

(declare-fun e!876071 () Bool)

(assert (=> d!390856 e!876071))

(declare-fun res!617328 () Bool)

(assert (=> d!390856 (=> (not res!617328) (not e!876071))))

(declare-fun lt!454824 () List!13942)

(assert (=> d!390856 (= res!617328 (= (content!2026 lt!454824) ((_ map or) (content!2026 lt!454595) (content!2026 (getSuffix!565 lt!454588 lt!454595)))))))

(declare-fun e!876072 () List!13942)

(assert (=> d!390856 (= lt!454824 e!876072)))

(declare-fun c!225499 () Bool)

(assert (=> d!390856 (= c!225499 ((_ is Nil!13876) lt!454595))))

(assert (=> d!390856 (= (++!3586 lt!454595 (getSuffix!565 lt!454588 lt!454595)) lt!454824)))

(declare-fun b!1370430 () Bool)

(declare-fun res!617327 () Bool)

(assert (=> b!1370430 (=> (not res!617327) (not e!876071))))

(assert (=> b!1370430 (= res!617327 (= (size!11382 lt!454824) (+ (size!11382 lt!454595) (size!11382 (getSuffix!565 lt!454588 lt!454595)))))))

(declare-fun b!1370431 () Bool)

(assert (=> b!1370431 (= e!876071 (or (not (= (getSuffix!565 lt!454588 lt!454595) Nil!13876)) (= lt!454824 lt!454595)))))

(declare-fun b!1370428 () Bool)

(assert (=> b!1370428 (= e!876072 (getSuffix!565 lt!454588 lt!454595))))

(declare-fun b!1370429 () Bool)

(assert (=> b!1370429 (= e!876072 (Cons!13876 (h!19277 lt!454595) (++!3586 (t!121435 lt!454595) (getSuffix!565 lt!454588 lt!454595))))))

(assert (= (and d!390856 c!225499) b!1370428))

(assert (= (and d!390856 (not c!225499)) b!1370429))

(assert (= (and d!390856 res!617328) b!1370430))

(assert (= (and b!1370430 res!617327) b!1370431))

(declare-fun m!1540545 () Bool)

(assert (=> d!390856 m!1540545))

(assert (=> d!390856 m!1539791))

(assert (=> d!390856 m!1539639))

(declare-fun m!1540547 () Bool)

(assert (=> d!390856 m!1540547))

(declare-fun m!1540549 () Bool)

(assert (=> b!1370430 m!1540549))

(declare-fun m!1540551 () Bool)

(assert (=> b!1370430 m!1540551))

(assert (=> b!1370430 m!1539639))

(declare-fun m!1540553 () Bool)

(assert (=> b!1370430 m!1540553))

(assert (=> b!1370429 m!1539639))

(declare-fun m!1540555 () Bool)

(assert (=> b!1370429 m!1540555))

(assert (=> b!1369777 d!390856))

(declare-fun d!390858 () Bool)

(declare-fun lt!454827 () List!13942)

(assert (=> d!390858 (= (++!3586 lt!454595 lt!454827) lt!454588)))

(declare-fun e!876075 () List!13942)

(assert (=> d!390858 (= lt!454827 e!876075)))

(declare-fun c!225502 () Bool)

(assert (=> d!390858 (= c!225502 ((_ is Cons!13876) lt!454595))))

(assert (=> d!390858 (>= (size!11382 lt!454588) (size!11382 lt!454595))))

(assert (=> d!390858 (= (getSuffix!565 lt!454588 lt!454595) lt!454827)))

(declare-fun b!1370436 () Bool)

(assert (=> b!1370436 (= e!876075 (getSuffix!565 (tail!1979 lt!454588) (t!121435 lt!454595)))))

(declare-fun b!1370437 () Bool)

(assert (=> b!1370437 (= e!876075 lt!454588)))

(assert (= (and d!390858 c!225502) b!1370436))

(assert (= (and d!390858 (not c!225502)) b!1370437))

(declare-fun m!1540557 () Bool)

(assert (=> d!390858 m!1540557))

(declare-fun m!1540559 () Bool)

(assert (=> d!390858 m!1540559))

(assert (=> d!390858 m!1540551))

(assert (=> b!1370436 m!1539769))

(assert (=> b!1370436 m!1539769))

(declare-fun m!1540561 () Bool)

(assert (=> b!1370436 m!1540561))

(assert (=> b!1369777 d!390858))

(declare-fun d!390860 () Bool)

(declare-fun lt!454830 () List!13942)

(declare-fun dynLambda!6300 (Int List!13942) Bool)

(assert (=> d!390860 (dynLambda!6300 lambda!58062 lt!454830)))

(declare-fun choose!8431 (Int) List!13942)

(assert (=> d!390860 (= lt!454830 (choose!8431 lambda!58062))))

(assert (=> d!390860 (Exists!869 lambda!58062)))

(assert (=> d!390860 (= (pickWitness!172 lambda!58062) lt!454830)))

(declare-fun b_lambda!41867 () Bool)

(assert (=> (not b_lambda!41867) (not d!390860)))

(declare-fun bs!335576 () Bool)

(assert (= bs!335576 d!390860))

(declare-fun m!1540563 () Bool)

(assert (=> bs!335576 m!1540563))

(declare-fun m!1540565 () Bool)

(assert (=> bs!335576 m!1540565))

(assert (=> bs!335576 m!1539691))

(assert (=> b!1369777 d!390860))

(declare-fun d!390862 () Bool)

(declare-fun lt!454831 () C!7724)

(assert (=> d!390862 (= lt!454831 (apply!3404 (list!5342 lt!454587) 0))))

(assert (=> d!390862 (= lt!454831 (apply!3405 (c!225389 lt!454587) 0))))

(declare-fun e!876076 () Bool)

(assert (=> d!390862 e!876076))

(declare-fun res!617329 () Bool)

(assert (=> d!390862 (=> (not res!617329) (not e!876076))))

(assert (=> d!390862 (= res!617329 (<= 0 0))))

(assert (=> d!390862 (= (apply!3397 lt!454587 0) lt!454831)))

(declare-fun b!1370438 () Bool)

(assert (=> b!1370438 (= e!876076 (< 0 (size!11376 lt!454587)))))

(assert (= (and d!390862 res!617329) b!1370438))

(assert (=> d!390862 m!1539695))

(assert (=> d!390862 m!1539695))

(declare-fun m!1540567 () Bool)

(assert (=> d!390862 m!1540567))

(declare-fun m!1540569 () Bool)

(assert (=> d!390862 m!1540569))

(assert (=> b!1370438 m!1539729))

(assert (=> b!1369794 d!390862))

(declare-fun d!390864 () Bool)

(assert (=> d!390864 (= (list!5342 lt!454586) (list!5347 (c!225389 lt!454586)))))

(declare-fun bs!335577 () Bool)

(assert (= bs!335577 d!390864))

(declare-fun m!1540571 () Bool)

(assert (=> bs!335577 m!1540571))

(assert (=> b!1369794 d!390864))

(declare-fun d!390866 () Bool)

(declare-fun c!225505 () Bool)

(assert (=> d!390866 (= c!225505 (isEmpty!8363 lt!454595))))

(declare-fun e!876079 () Bool)

(assert (=> d!390866 (= (prefixMatch!226 lt!454594 lt!454595) e!876079)))

(declare-fun b!1370443 () Bool)

(declare-fun lostCause!331 (Regex!3717) Bool)

(assert (=> b!1370443 (= e!876079 (not (lostCause!331 lt!454594)))))

(declare-fun b!1370444 () Bool)

(assert (=> b!1370444 (= e!876079 (prefixMatch!226 (derivativeStep!954 lt!454594 (head!2462 lt!454595)) (tail!1979 lt!454595)))))

(assert (= (and d!390866 c!225505) b!1370443))

(assert (= (and d!390866 (not c!225505)) b!1370444))

(declare-fun m!1540573 () Bool)

(assert (=> d!390866 m!1540573))

(declare-fun m!1540575 () Bool)

(assert (=> b!1370443 m!1540575))

(declare-fun m!1540577 () Bool)

(assert (=> b!1370444 m!1540577))

(assert (=> b!1370444 m!1540577))

(declare-fun m!1540579 () Bool)

(assert (=> b!1370444 m!1540579))

(declare-fun m!1540581 () Bool)

(assert (=> b!1370444 m!1540581))

(assert (=> b!1370444 m!1540579))

(assert (=> b!1370444 m!1540581))

(declare-fun m!1540583 () Bool)

(assert (=> b!1370444 m!1540583))

(assert (=> b!1369794 d!390866))

(declare-fun d!390868 () Bool)

(declare-fun lt!454832 () BalanceConc!9076)

(assert (=> d!390868 (= (list!5342 lt!454832) (originalCharacters!3265 t1!34))))

(assert (=> d!390868 (= lt!454832 (dynLambda!6289 (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (value!78118 t1!34)))))

(assert (=> d!390868 (= (charsOf!1375 t1!34) lt!454832)))

(declare-fun b_lambda!41869 () Bool)

(assert (=> (not b_lambda!41869) (not d!390868)))

(assert (=> d!390868 t!121467))

(declare-fun b_and!91853 () Bool)

(assert (= b_and!91847 (and (=> t!121467 result!87654) b_and!91853)))

(assert (=> d!390868 t!121469))

(declare-fun b_and!91855 () Bool)

(assert (= b_and!91849 (and (=> t!121469 result!87656) b_and!91855)))

(assert (=> d!390868 t!121471))

(declare-fun b_and!91857 () Bool)

(assert (= b_and!91851 (and (=> t!121471 result!87658) b_and!91857)))

(declare-fun m!1540585 () Bool)

(assert (=> d!390868 m!1540585))

(assert (=> d!390868 m!1540491))

(assert (=> b!1369794 d!390868))

(declare-fun bs!335578 () Bool)

(declare-fun d!390870 () Bool)

(assert (= bs!335578 (and d!390870 b!1369808)))

(declare-fun lambda!58109 () Int)

(assert (=> bs!335578 (= lambda!58109 lambda!58063)))

(declare-fun lt!454835 () Unit!20097)

(declare-fun lemma!125 (List!13944 LexerInterface!2098 List!13944) Unit!20097)

(assert (=> d!390870 (= lt!454835 (lemma!125 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!133 (List!13946) Regex!3717)

(assert (=> d!390870 (= (rulesRegex!286 thiss!19762 rules!2550) (generalisedUnion!133 (map!3065 rules!2550 lambda!58109)))))

(declare-fun bs!335579 () Bool)

(assert (= bs!335579 d!390870))

(declare-fun m!1540587 () Bool)

(assert (=> bs!335579 m!1540587))

(declare-fun m!1540589 () Bool)

(assert (=> bs!335579 m!1540589))

(assert (=> bs!335579 m!1540589))

(declare-fun m!1540591 () Bool)

(assert (=> bs!335579 m!1540591))

(assert (=> b!1369794 d!390870))

(declare-fun d!390872 () Bool)

(declare-fun e!876080 () Bool)

(assert (=> d!390872 e!876080))

(declare-fun res!617331 () Bool)

(assert (=> d!390872 (=> (not res!617331) (not e!876080))))

(declare-fun lt!454836 () List!13942)

(assert (=> d!390872 (= res!617331 (= (content!2026 lt!454836) ((_ map or) (content!2026 lt!454578) (content!2026 (Cons!13876 lt!454593 Nil!13876)))))))

(declare-fun e!876081 () List!13942)

(assert (=> d!390872 (= lt!454836 e!876081)))

(declare-fun c!225506 () Bool)

(assert (=> d!390872 (= c!225506 ((_ is Nil!13876) lt!454578))))

(assert (=> d!390872 (= (++!3586 lt!454578 (Cons!13876 lt!454593 Nil!13876)) lt!454836)))

(declare-fun b!1370447 () Bool)

(declare-fun res!617330 () Bool)

(assert (=> b!1370447 (=> (not res!617330) (not e!876080))))

(assert (=> b!1370447 (= res!617330 (= (size!11382 lt!454836) (+ (size!11382 lt!454578) (size!11382 (Cons!13876 lt!454593 Nil!13876)))))))

(declare-fun b!1370448 () Bool)

(assert (=> b!1370448 (= e!876080 (or (not (= (Cons!13876 lt!454593 Nil!13876) Nil!13876)) (= lt!454836 lt!454578)))))

(declare-fun b!1370445 () Bool)

(assert (=> b!1370445 (= e!876081 (Cons!13876 lt!454593 Nil!13876))))

(declare-fun b!1370446 () Bool)

(assert (=> b!1370446 (= e!876081 (Cons!13876 (h!19277 lt!454578) (++!3586 (t!121435 lt!454578) (Cons!13876 lt!454593 Nil!13876))))))

(assert (= (and d!390872 c!225506) b!1370445))

(assert (= (and d!390872 (not c!225506)) b!1370446))

(assert (= (and d!390872 res!617331) b!1370447))

(assert (= (and b!1370447 res!617330) b!1370448))

(declare-fun m!1540593 () Bool)

(assert (=> d!390872 m!1540593))

(declare-fun m!1540595 () Bool)

(assert (=> d!390872 m!1540595))

(declare-fun m!1540597 () Bool)

(assert (=> d!390872 m!1540597))

(declare-fun m!1540599 () Bool)

(assert (=> b!1370447 m!1540599))

(assert (=> b!1370447 m!1540183))

(declare-fun m!1540601 () Bool)

(assert (=> b!1370447 m!1540601))

(declare-fun m!1540603 () Bool)

(assert (=> b!1370446 m!1540603))

(assert (=> b!1369794 d!390872))

(declare-fun d!390874 () Bool)

(declare-fun lt!454837 () Bool)

(assert (=> d!390874 (= lt!454837 (select (content!2026 lt!454588) lt!454593))))

(declare-fun e!876083 () Bool)

(assert (=> d!390874 (= lt!454837 e!876083)))

(declare-fun res!617333 () Bool)

(assert (=> d!390874 (=> (not res!617333) (not e!876083))))

(assert (=> d!390874 (= res!617333 ((_ is Cons!13876) lt!454588))))

(assert (=> d!390874 (= (contains!2593 lt!454588 lt!454593) lt!454837)))

(declare-fun b!1370449 () Bool)

(declare-fun e!876082 () Bool)

(assert (=> b!1370449 (= e!876083 e!876082)))

(declare-fun res!617332 () Bool)

(assert (=> b!1370449 (=> res!617332 e!876082)))

(assert (=> b!1370449 (= res!617332 (= (h!19277 lt!454588) lt!454593))))

(declare-fun b!1370450 () Bool)

(assert (=> b!1370450 (= e!876082 (contains!2593 (t!121435 lt!454588) lt!454593))))

(assert (= (and d!390874 res!617333) b!1370449))

(assert (= (and b!1370449 (not res!617332)) b!1370450))

(assert (=> d!390874 m!1540437))

(declare-fun m!1540605 () Bool)

(assert (=> d!390874 m!1540605))

(declare-fun m!1540607 () Bool)

(assert (=> b!1370450 m!1540607))

(assert (=> b!1369773 d!390874))

(declare-fun d!390876 () Bool)

(assert (=> d!390876 (= (inv!18230 (tag!2665 (rule!4158 t2!34))) (= (mod (str.len (value!78117 (tag!2665 (rule!4158 t2!34)))) 2) 0))))

(assert (=> b!1369774 d!390876))

(declare-fun d!390878 () Bool)

(declare-fun res!617334 () Bool)

(declare-fun e!876084 () Bool)

(assert (=> d!390878 (=> (not res!617334) (not e!876084))))

(assert (=> d!390878 (= res!617334 (semiInverseModEq!925 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toValue!3670 (transformation!2403 (rule!4158 t2!34)))))))

(assert (=> d!390878 (= (inv!18233 (transformation!2403 (rule!4158 t2!34))) e!876084)))

(declare-fun b!1370451 () Bool)

(assert (=> b!1370451 (= e!876084 (equivClasses!884 (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toValue!3670 (transformation!2403 (rule!4158 t2!34)))))))

(assert (= (and d!390878 res!617334) b!1370451))

(declare-fun m!1540609 () Bool)

(assert (=> d!390878 m!1540609))

(declare-fun m!1540611 () Bool)

(assert (=> b!1370451 m!1540611))

(assert (=> b!1369774 d!390878))

(declare-fun d!390880 () Bool)

(declare-fun lt!454838 () Bool)

(assert (=> d!390880 (= lt!454838 (isEmpty!8363 (list!5342 (_2!7624 lt!454583))))))

(assert (=> d!390880 (= lt!454838 (isEmpty!8367 (c!225389 (_2!7624 lt!454583))))))

(assert (=> d!390880 (= (isEmpty!8357 (_2!7624 lt!454583)) lt!454838)))

(declare-fun bs!335580 () Bool)

(assert (= bs!335580 d!390880))

(declare-fun m!1540613 () Bool)

(assert (=> bs!335580 m!1540613))

(assert (=> bs!335580 m!1540613))

(declare-fun m!1540615 () Bool)

(assert (=> bs!335580 m!1540615))

(declare-fun m!1540617 () Bool)

(assert (=> bs!335580 m!1540617))

(assert (=> b!1369795 d!390880))

(declare-fun b!1370456 () Bool)

(declare-fun e!876087 () Bool)

(declare-fun tp_is_empty!6743 () Bool)

(declare-fun tp!393718 () Bool)

(assert (=> b!1370456 (= e!876087 (and tp_is_empty!6743 tp!393718))))

(assert (=> b!1369802 (= tp!393661 e!876087)))

(assert (= (and b!1369802 ((_ is Cons!13876) (originalCharacters!3265 t1!34))) b!1370456))

(declare-fun b!1370457 () Bool)

(declare-fun e!876088 () Bool)

(declare-fun tp!393719 () Bool)

(assert (=> b!1370457 (= e!876088 (and tp_is_empty!6743 tp!393719))))

(assert (=> b!1369772 (= tp!393655 e!876088)))

(assert (= (and b!1369772 ((_ is Cons!13876) (originalCharacters!3265 t2!34))) b!1370457))

(declare-fun e!876091 () Bool)

(assert (=> b!1369793 (= tp!393657 e!876091)))

(declare-fun b!1370469 () Bool)

(declare-fun tp!393733 () Bool)

(declare-fun tp!393732 () Bool)

(assert (=> b!1370469 (= e!876091 (and tp!393733 tp!393732))))

(declare-fun b!1370471 () Bool)

(declare-fun tp!393730 () Bool)

(declare-fun tp!393731 () Bool)

(assert (=> b!1370471 (= e!876091 (and tp!393730 tp!393731))))

(declare-fun b!1370468 () Bool)

(assert (=> b!1370468 (= e!876091 tp_is_empty!6743)))

(declare-fun b!1370470 () Bool)

(declare-fun tp!393734 () Bool)

(assert (=> b!1370470 (= e!876091 tp!393734)))

(assert (= (and b!1369793 ((_ is ElementMatch!3717) (regex!2403 (rule!4158 t1!34)))) b!1370468))

(assert (= (and b!1369793 ((_ is Concat!6210) (regex!2403 (rule!4158 t1!34)))) b!1370469))

(assert (= (and b!1369793 ((_ is Star!3717) (regex!2403 (rule!4158 t1!34)))) b!1370470))

(assert (= (and b!1369793 ((_ is Union!3717) (regex!2403 (rule!4158 t1!34)))) b!1370471))

(declare-fun e!876092 () Bool)

(assert (=> b!1369783 (= tp!393659 e!876092)))

(declare-fun b!1370473 () Bool)

(declare-fun tp!393738 () Bool)

(declare-fun tp!393737 () Bool)

(assert (=> b!1370473 (= e!876092 (and tp!393738 tp!393737))))

(declare-fun b!1370475 () Bool)

(declare-fun tp!393735 () Bool)

(declare-fun tp!393736 () Bool)

(assert (=> b!1370475 (= e!876092 (and tp!393735 tp!393736))))

(declare-fun b!1370472 () Bool)

(assert (=> b!1370472 (= e!876092 tp_is_empty!6743)))

(declare-fun b!1370474 () Bool)

(declare-fun tp!393739 () Bool)

(assert (=> b!1370474 (= e!876092 tp!393739)))

(assert (= (and b!1369783 ((_ is ElementMatch!3717) (regex!2403 (h!19279 rules!2550)))) b!1370472))

(assert (= (and b!1369783 ((_ is Concat!6210) (regex!2403 (h!19279 rules!2550)))) b!1370473))

(assert (= (and b!1369783 ((_ is Star!3717) (regex!2403 (h!19279 rules!2550)))) b!1370474))

(assert (= (and b!1369783 ((_ is Union!3717) (regex!2403 (h!19279 rules!2550)))) b!1370475))

(declare-fun e!876093 () Bool)

(assert (=> b!1369774 (= tp!393658 e!876093)))

(declare-fun b!1370477 () Bool)

(declare-fun tp!393743 () Bool)

(declare-fun tp!393742 () Bool)

(assert (=> b!1370477 (= e!876093 (and tp!393743 tp!393742))))

(declare-fun b!1370479 () Bool)

(declare-fun tp!393740 () Bool)

(declare-fun tp!393741 () Bool)

(assert (=> b!1370479 (= e!876093 (and tp!393740 tp!393741))))

(declare-fun b!1370476 () Bool)

(assert (=> b!1370476 (= e!876093 tp_is_empty!6743)))

(declare-fun b!1370478 () Bool)

(declare-fun tp!393744 () Bool)

(assert (=> b!1370478 (= e!876093 tp!393744)))

(assert (= (and b!1369774 ((_ is ElementMatch!3717) (regex!2403 (rule!4158 t2!34)))) b!1370476))

(assert (= (and b!1369774 ((_ is Concat!6210) (regex!2403 (rule!4158 t2!34)))) b!1370477))

(assert (= (and b!1369774 ((_ is Star!3717) (regex!2403 (rule!4158 t2!34)))) b!1370478))

(assert (= (and b!1369774 ((_ is Union!3717) (regex!2403 (rule!4158 t2!34)))) b!1370479))

(declare-fun b!1370490 () Bool)

(declare-fun b_free!33203 () Bool)

(declare-fun b_next!33907 () Bool)

(assert (=> b!1370490 (= b_free!33203 (not b_next!33907))))

(declare-fun tp!393754 () Bool)

(declare-fun b_and!91859 () Bool)

(assert (=> b!1370490 (= tp!393754 b_and!91859)))

(declare-fun b_free!33205 () Bool)

(declare-fun b_next!33909 () Bool)

(assert (=> b!1370490 (= b_free!33205 (not b_next!33909))))

(declare-fun tb!72197 () Bool)

(declare-fun t!121473 () Bool)

(assert (=> (and b!1370490 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t2!34)))) t!121473) tb!72197))

(declare-fun result!87666 () Bool)

(assert (= result!87666 result!87622))

(assert (=> d!390638 t!121473))

(declare-fun tb!72199 () Bool)

(declare-fun t!121475 () Bool)

(assert (=> (and b!1370490 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t1!34)))) t!121475) tb!72199))

(declare-fun result!87668 () Bool)

(assert (= result!87668 result!87654))

(assert (=> b!1370401 t!121475))

(assert (=> b!1370404 t!121473))

(assert (=> d!390868 t!121475))

(declare-fun tp!393755 () Bool)

(declare-fun b_and!91861 () Bool)

(assert (=> b!1370490 (= tp!393755 (and (=> t!121473 result!87666) (=> t!121475 result!87668) b_and!91861))))

(declare-fun e!876102 () Bool)

(assert (=> b!1370490 (= e!876102 (and tp!393754 tp!393755))))

(declare-fun b!1370489 () Bool)

(declare-fun tp!393753 () Bool)

(declare-fun e!876105 () Bool)

(assert (=> b!1370489 (= e!876105 (and tp!393753 (inv!18230 (tag!2665 (h!19279 (t!121437 rules!2550)))) (inv!18233 (transformation!2403 (h!19279 (t!121437 rules!2550)))) e!876102))))

(declare-fun b!1370488 () Bool)

(declare-fun e!876103 () Bool)

(declare-fun tp!393756 () Bool)

(assert (=> b!1370488 (= e!876103 (and e!876105 tp!393756))))

(assert (=> b!1369790 (= tp!393664 e!876103)))

(assert (= b!1370489 b!1370490))

(assert (= b!1370488 b!1370489))

(assert (= (and b!1369790 ((_ is Cons!13878) (t!121437 rules!2550))) b!1370488))

(declare-fun m!1540619 () Bool)

(assert (=> b!1370489 m!1540619))

(declare-fun m!1540621 () Bool)

(assert (=> b!1370489 m!1540621))

(declare-fun b_lambda!41871 () Bool)

(assert (= b_lambda!41825 (or b!1369808 b_lambda!41871)))

(declare-fun bs!335581 () Bool)

(declare-fun d!390882 () Bool)

(assert (= bs!335581 (and d!390882 b!1369808)))

(declare-fun res!617335 () Bool)

(declare-fun e!876106 () Bool)

(assert (=> bs!335581 (=> (not res!617335) (not e!876106))))

(assert (=> bs!335581 (= res!617335 (validRegex!1617 lt!454715))))

(assert (=> bs!335581 (= (dynLambda!6295 lambda!58064 lt!454715) e!876106)))

(declare-fun b!1370491 () Bool)

(assert (=> b!1370491 (= e!876106 (matchR!1710 lt!454715 lt!454588))))

(assert (= (and bs!335581 res!617335) b!1370491))

(declare-fun m!1540623 () Bool)

(assert (=> bs!335581 m!1540623))

(declare-fun m!1540625 () Bool)

(assert (=> b!1370491 m!1540625))

(assert (=> d!390710 d!390882))

(declare-fun b_lambda!41873 () Bool)

(assert (= b_lambda!41817 (or b!1369788 b_lambda!41873)))

(declare-fun bs!335582 () Bool)

(declare-fun d!390884 () Bool)

(assert (= bs!335582 (and d!390884 b!1369788)))

(assert (=> bs!335582 (= (dynLambda!6294 lambda!58065 lt!454675) (= (regex!2403 lt!454675) lt!454577))))

(assert (=> d!390682 d!390884))

(declare-fun b_lambda!41875 () Bool)

(assert (= b_lambda!41863 (or (and b!1369797 b_free!33189) (and b!1369796 b_free!33193 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) (and b!1369798 b_free!33197 (= (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) (and b!1370490 b_free!33205 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) b_lambda!41875)))

(declare-fun b_lambda!41877 () Bool)

(assert (= b_lambda!41811 (or (and b!1369797 b_free!33189 (= (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) (and b!1369796 b_free!33193 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) (and b!1369798 b_free!33197) (and b!1370490 b_free!33205 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) b_lambda!41877)))

(declare-fun b_lambda!41879 () Bool)

(assert (= b_lambda!41823 (or b!1369808 b_lambda!41879)))

(declare-fun bs!335583 () Bool)

(declare-fun d!390886 () Bool)

(assert (= bs!335583 (and d!390886 b!1369808)))

(declare-fun res!617336 () Bool)

(declare-fun e!876107 () Bool)

(assert (=> bs!335583 (=> (not res!617336) (not e!876107))))

(assert (=> bs!335583 (= res!617336 (validRegex!1617 (h!19281 (map!3065 rules!2550 lambda!58063))))))

(assert (=> bs!335583 (= (dynLambda!6295 lambda!58064 (h!19281 (map!3065 rules!2550 lambda!58063))) e!876107)))

(declare-fun b!1370492 () Bool)

(assert (=> b!1370492 (= e!876107 (matchR!1710 (h!19281 (map!3065 rules!2550 lambda!58063)) lt!454588))))

(assert (= (and bs!335583 res!617336) b!1370492))

(declare-fun m!1540627 () Bool)

(assert (=> bs!335583 m!1540627))

(declare-fun m!1540629 () Bool)

(assert (=> b!1370492 m!1540629))

(assert (=> b!1370120 d!390886))

(declare-fun b_lambda!41881 () Bool)

(assert (= b_lambda!41813 (or b!1369808 b_lambda!41881)))

(declare-fun bs!335584 () Bool)

(declare-fun d!390888 () Bool)

(assert (= bs!335584 (and d!390888 b!1369808)))

(assert (=> bs!335584 (= (dynLambda!6290 lambda!58063 (h!19279 rules!2550)) (regex!2403 (h!19279 rules!2550)))))

(assert (=> b!1369945 d!390888))

(declare-fun b_lambda!41883 () Bool)

(assert (= b_lambda!41865 (or (and b!1369797 b_free!33189 (= (toChars!3529 (transformation!2403 (rule!4158 t1!34))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) (and b!1369796 b_free!33193 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) (and b!1369798 b_free!33197) (and b!1370490 b_free!33205 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t2!34))))) b_lambda!41883)))

(declare-fun b_lambda!41885 () Bool)

(assert (= b_lambda!41815 (or b!1369788 b_lambda!41885)))

(declare-fun bs!335585 () Bool)

(declare-fun d!390890 () Bool)

(assert (= bs!335585 (and d!390890 b!1369788)))

(assert (=> bs!335585 (= (dynLambda!6294 lambda!58065 (h!19279 rules!2550)) (= (regex!2403 (h!19279 rules!2550)) lt!454577))))

(assert (=> b!1370023 d!390890))

(declare-fun b_lambda!41887 () Bool)

(assert (= b_lambda!41869 (or (and b!1369797 b_free!33189) (and b!1369796 b_free!33193 (= (toChars!3529 (transformation!2403 (h!19279 rules!2550))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) (and b!1369798 b_free!33197 (= (toChars!3529 (transformation!2403 (rule!4158 t2!34))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) (and b!1370490 b_free!33205 (= (toChars!3529 (transformation!2403 (h!19279 (t!121437 rules!2550)))) (toChars!3529 (transformation!2403 (rule!4158 t1!34))))) b_lambda!41887)))

(declare-fun b_lambda!41889 () Bool)

(assert (= b_lambda!41867 (or b!1369787 b_lambda!41889)))

(declare-fun bs!335586 () Bool)

(declare-fun d!390892 () Bool)

(assert (= bs!335586 (and d!390892 b!1369787)))

(declare-fun res!617337 () Bool)

(declare-fun e!876108 () Bool)

(assert (=> bs!335586 (=> (not res!617337) (not e!876108))))

(assert (=> bs!335586 (= res!617337 (matchR!1710 lt!454594 lt!454830))))

(assert (=> bs!335586 (= (dynLambda!6300 lambda!58062 lt!454830) e!876108)))

(declare-fun b!1370493 () Bool)

(assert (=> b!1370493 (= e!876108 (isPrefix!1127 lt!454595 lt!454830))))

(assert (= (and bs!335586 res!617337) b!1370493))

(declare-fun m!1540631 () Bool)

(assert (=> bs!335586 m!1540631))

(declare-fun m!1540633 () Bool)

(assert (=> b!1370493 m!1540633))

(assert (=> d!390860 d!390892))

(check-sat (not b_next!33909) (not bm!92071) (not d!390666) (not b!1370394) (not b!1369891) (not b!1370235) (not d!390678) (not d!390824) (not b!1370444) (not b!1370443) (not tb!72191) (not b!1370382) (not b!1370386) (not b_lambda!41881) (not b!1370436) (not b!1369914) (not b!1370082) (not b!1370456) (not b!1370411) (not b!1370477) (not d!390634) (not b_lambda!41873) (not b!1370091) (not d!390870) (not d!390828) (not d!390840) (not d!390820) (not d!390646) (not b!1370471) (not b!1370380) (not bm!92061) (not b!1370233) (not b!1370026) (not b!1370376) (not b!1369990) (not d!390830) (not b!1370450) (not bs!335586) (not d!390846) (not b!1369861) (not b!1370492) (not d!390626) (not b!1370078) (not b!1370364) (not b_next!33891) (not d!390832) (not b!1370391) (not d!390662) (not d!390710) (not b_lambda!41889) (not b!1369945) (not b!1370378) (not b!1370447) (not bm!92072) (not b!1370232) (not d!390640) (not b_lambda!41871) (not bs!335581) (not d!390862) b_and!91859 (not b!1370401) (not b!1370493) (not b!1370474) (not d!390668) (not d!390850) (not b!1370387) (not d!390872) (not b!1370390) (not b_lambda!41885) (not b!1369989) (not d!390838) (not b!1369865) (not b!1370044) (not b!1370124) (not b!1370410) (not d!390624) (not b!1370478) (not b!1370027) (not d!390860) (not d!390658) (not b!1370383) (not d!390622) (not b!1370473) (not b!1370491) b_and!91853 (not d!390718) (not b!1370479) (not bs!335583) (not b!1369887) (not b!1370365) (not b!1369829) b_and!91799 (not b!1369897) (not d!390844) (not d!390696) (not d!390700) (not b!1370363) (not b!1369991) (not d!390864) (not b_next!33899) (not b!1370446) (not d!390854) (not b!1370396) (not b_next!33895) (not b!1370438) (not b_lambda!41877) (not d!390858) (not b!1370234) (not b!1370405) (not d!390632) (not b!1369888) (not b_lambda!41883) (not b_next!33893) (not b!1370407) (not b!1370244) (not b!1370392) (not b_lambda!41879) (not b!1370419) b_and!91795 (not b_next!33901) (not b!1370228) (not d!390706) (not d!390772) (not d!390852) b_and!91857 (not b!1370385) (not b!1369831) (not b!1370469) (not d!390878) (not b!1370025) (not b!1369886) (not b!1369870) b_and!91855 (not b_lambda!41875) (not d!390680) (not d!390656) (not b!1370415) (not b!1370119) (not b!1370417) (not d!390664) (not b!1369908) (not d!390746) (not b!1370245) (not d!390636) tp_is_empty!6743 (not d!390638) (not d!390682) (not b!1370246) (not d!390874) (not b!1370412) (not d!390848) (not b!1370429) (not d!390660) (not b!1370470) (not d!390836) (not tb!72169) b_and!91861 (not d!390694) (not b!1370230) (not b!1370236) (not d!390690) (not b!1370475) (not b_next!33897) (not d!390866) (not b!1370430) (not b!1369864) (not d!390822) (not b!1370416) (not b!1370402) (not b!1370489) (not b!1370488) (not d!390842) (not b!1370080) (not b!1370457) b_and!91803 (not b!1369868) (not b!1369993) (not b!1370079) (not b!1370229) (not b_lambda!41887) (not b!1370403) (not d!390880) (not b!1369872) (not b!1370388) (not d!390856) (not b!1370418) (not b!1370413) (not b!1370121) (not b!1370381) (not d!390868) (not b!1370404) (not b!1370451) (not d!390834) (not b_next!33907))
(check-sat (not b_next!33909) (not b_next!33891) b_and!91859 b_and!91853 b_and!91799 (not b_next!33899) (not b_next!33895) (not b_next!33893) b_and!91857 b_and!91855 b_and!91861 (not b_next!33897) b_and!91803 (not b_next!33907) b_and!91795 (not b_next!33901))
