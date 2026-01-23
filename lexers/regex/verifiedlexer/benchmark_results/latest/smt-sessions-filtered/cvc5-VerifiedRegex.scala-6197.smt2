; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!299384 () Bool)

(assert start!299384)

(declare-fun b!3192475 () Bool)

(declare-fun b_free!84629 () Bool)

(declare-fun b_next!85333 () Bool)

(assert (=> b!3192475 (= b_free!84629 (not b_next!85333))))

(declare-fun tp!1009480 () Bool)

(declare-fun b_and!211675 () Bool)

(assert (=> b!3192475 (= tp!1009480 b_and!211675)))

(declare-fun b_free!84631 () Bool)

(declare-fun b_next!85335 () Bool)

(assert (=> b!3192475 (= b_free!84631 (not b_next!85335))))

(declare-fun tp!1009478 () Bool)

(declare-fun b_and!211677 () Bool)

(assert (=> b!3192475 (= tp!1009478 b_and!211677)))

(declare-fun b!3192480 () Bool)

(declare-fun b_free!84633 () Bool)

(declare-fun b_next!85337 () Bool)

(assert (=> b!3192480 (= b_free!84633 (not b_next!85337))))

(declare-fun tp!1009475 () Bool)

(declare-fun b_and!211679 () Bool)

(assert (=> b!3192480 (= tp!1009475 b_and!211679)))

(declare-fun b_free!84635 () Bool)

(declare-fun b_next!85339 () Bool)

(assert (=> b!3192480 (= b_free!84635 (not b_next!85339))))

(declare-fun tp!1009487 () Bool)

(declare-fun b_and!211681 () Bool)

(assert (=> b!3192480 (= tp!1009487 b_and!211681)))

(declare-fun b!3192467 () Bool)

(declare-fun b_free!84637 () Bool)

(declare-fun b_next!85341 () Bool)

(assert (=> b!3192467 (= b_free!84637 (not b_next!85341))))

(declare-fun tp!1009476 () Bool)

(declare-fun b_and!211683 () Bool)

(assert (=> b!3192467 (= tp!1009476 b_and!211683)))

(declare-fun b_free!84639 () Bool)

(declare-fun b_next!85343 () Bool)

(assert (=> b!3192467 (= b_free!84639 (not b_next!85343))))

(declare-fun tp!1009486 () Bool)

(declare-fun b_and!211685 () Bool)

(assert (=> b!3192467 (= tp!1009486 b_and!211685)))

(declare-fun b!3192457 () Bool)

(declare-fun res!1298672 () Bool)

(declare-fun e!1990008 () Bool)

(assert (=> b!3192457 (=> (not res!1298672) (not e!1990008))))

(declare-datatypes ((C!20050 0))(
  ( (C!20051 (val!12073 Int)) )
))
(declare-datatypes ((Regex!9932 0))(
  ( (ElementMatch!9932 (c!535938 C!20050)) (Concat!15335 (regOne!20376 Regex!9932) (regTwo!20376 Regex!9932)) (EmptyExpr!9932) (Star!9932 (reg!10261 Regex!9932)) (EmptyLang!9932) (Union!9932 (regOne!20377 Regex!9932) (regTwo!20377 Regex!9932)) )
))
(declare-datatypes ((List!36086 0))(
  ( (Nil!35962) (Cons!35962 (h!41382 (_ BitVec 16)) (t!236309 List!36086)) )
))
(declare-datatypes ((TokenValue!5403 0))(
  ( (FloatLiteralValue!10806 (text!38266 List!36086)) (TokenValueExt!5402 (__x!23023 Int)) (Broken!27015 (value!167866 List!36086)) (Object!5526) (End!5403) (Def!5403) (Underscore!5403) (Match!5403) (Else!5403) (Error!5403) (Case!5403) (If!5403) (Extends!5403) (Abstract!5403) (Class!5403) (Val!5403) (DelimiterValue!10806 (del!5463 List!36086)) (KeywordValue!5409 (value!167867 List!36086)) (CommentValue!10806 (value!167868 List!36086)) (WhitespaceValue!10806 (value!167869 List!36086)) (IndentationValue!5403 (value!167870 List!36086)) (String!40350) (Int32!5403) (Broken!27016 (value!167871 List!36086)) (Boolean!5404) (Unit!50370) (OperatorValue!5406 (op!5463 List!36086)) (IdentifierValue!10806 (value!167872 List!36086)) (IdentifierValue!10807 (value!167873 List!36086)) (WhitespaceValue!10807 (value!167874 List!36086)) (True!10806) (False!10806) (Broken!27017 (value!167875 List!36086)) (Broken!27018 (value!167876 List!36086)) (True!10807) (RightBrace!5403) (RightBracket!5403) (Colon!5403) (Null!5403) (Comma!5403) (LeftBracket!5403) (False!10807) (LeftBrace!5403) (ImaginaryLiteralValue!5403 (text!38267 List!36086)) (StringLiteralValue!16209 (value!167877 List!36086)) (EOFValue!5403 (value!167878 List!36086)) (IdentValue!5403 (value!167879 List!36086)) (DelimiterValue!10807 (value!167880 List!36086)) (DedentValue!5403 (value!167881 List!36086)) (NewLineValue!5403 (value!167882 List!36086)) (IntegerValue!16209 (value!167883 (_ BitVec 32)) (text!38268 List!36086)) (IntegerValue!16210 (value!167884 Int) (text!38269 List!36086)) (Times!5403) (Or!5403) (Equal!5403) (Minus!5403) (Broken!27019 (value!167885 List!36086)) (And!5403) (Div!5403) (LessEqual!5403) (Mod!5403) (Concat!15336) (Not!5403) (Plus!5403) (SpaceValue!5403 (value!167886 List!36086)) (IntegerValue!16211 (value!167887 Int) (text!38270 List!36086)) (StringLiteralValue!16210 (text!38271 List!36086)) (FloatLiteralValue!10807 (text!38272 List!36086)) (BytesLiteralValue!5403 (value!167888 List!36086)) (CommentValue!10807 (value!167889 List!36086)) (StringLiteralValue!16211 (value!167890 List!36086)) (ErrorTokenValue!5403 (msg!5464 List!36086)) )
))
(declare-datatypes ((List!36087 0))(
  ( (Nil!35963) (Cons!35963 (h!41383 C!20050) (t!236310 List!36087)) )
))
(declare-datatypes ((IArray!21447 0))(
  ( (IArray!21448 (innerList!10781 List!36087)) )
))
(declare-datatypes ((Conc!10721 0))(
  ( (Node!10721 (left!27954 Conc!10721) (right!28284 Conc!10721) (csize!21672 Int) (cheight!10932 Int)) (Leaf!16919 (xs!13839 IArray!21447) (csize!21673 Int)) (Empty!10721) )
))
(declare-datatypes ((BalanceConc!21056 0))(
  ( (BalanceConc!21057 (c!535939 Conc!10721)) )
))
(declare-datatypes ((String!40351 0))(
  ( (String!40352 (value!167891 String)) )
))
(declare-datatypes ((TokenValueInjection!10234 0))(
  ( (TokenValueInjection!10235 (toValue!7237 Int) (toChars!7096 Int)) )
))
(declare-datatypes ((Rule!10146 0))(
  ( (Rule!10147 (regex!5173 Regex!9932) (tag!5691 String!40351) (isSeparator!5173 Bool) (transformation!5173 TokenValueInjection!10234)) )
))
(declare-datatypes ((Token!9712 0))(
  ( (Token!9713 (value!167892 TokenValue!5403) (rule!7605 Rule!10146) (size!27096 Int) (originalCharacters!5887 List!36087)) )
))
(declare-datatypes ((List!36088 0))(
  ( (Nil!35964) (Cons!35964 (h!41384 Token!9712) (t!236311 List!36088)) )
))
(declare-fun tokens!494 () List!36088)

(declare-fun lambda!116828 () Int)

(declare-fun forall!7307 (List!36088 Int) Bool)

(assert (=> b!3192457 (= res!1298672 (forall!7307 tokens!494 lambda!116828))))

(declare-fun tp!1009483 () Bool)

(declare-fun b!3192458 () Bool)

(declare-fun e!1990011 () Bool)

(declare-fun e!1990010 () Bool)

(declare-datatypes ((List!36089 0))(
  ( (Nil!35965) (Cons!35965 (h!41385 Rule!10146) (t!236312 List!36089)) )
))
(declare-fun rules!2135 () List!36089)

(declare-fun inv!48805 (String!40351) Bool)

(declare-fun inv!48808 (TokenValueInjection!10234) Bool)

(assert (=> b!3192458 (= e!1990010 (and tp!1009483 (inv!48805 (tag!5691 (h!41385 rules!2135))) (inv!48808 (transformation!5173 (h!41385 rules!2135))) e!1990011))))

(declare-fun e!1990018 () Bool)

(declare-fun b!3192459 () Bool)

(declare-fun tp!1009477 () Bool)

(declare-fun e!1990014 () Bool)

(declare-fun inv!21 (TokenValue!5403) Bool)

(assert (=> b!3192459 (= e!1990014 (and (inv!21 (value!167892 (h!41384 tokens!494))) e!1990018 tp!1009477))))

(declare-fun b!3192460 () Bool)

(declare-fun e!1990021 () Bool)

(declare-fun e!1990016 () Bool)

(assert (=> b!3192460 (= e!1990021 e!1990016)))

(declare-fun res!1298674 () Bool)

(assert (=> b!3192460 (=> (not res!1298674) (not e!1990016))))

(assert (=> b!3192460 (= res!1298674 (forall!7307 tokens!494 lambda!116828))))

(declare-datatypes ((Unit!50371 0))(
  ( (Unit!50372) )
))
(declare-fun lt!1075297 () Unit!50371)

(declare-fun forallContained!1144 (List!36088 Int Token!9712) Unit!50371)

(assert (=> b!3192460 (= lt!1075297 (forallContained!1144 tokens!494 lambda!116828 (h!41384 tokens!494)))))

(declare-fun b!3192461 () Bool)

(declare-fun res!1298681 () Bool)

(assert (=> b!3192461 (=> (not res!1298681) (not e!1990008))))

(declare-fun separatorToken!241 () Token!9712)

(declare-datatypes ((LexerInterface!4762 0))(
  ( (LexerInterfaceExt!4759 (__x!23024 Int)) (Lexer!4760) )
))
(declare-fun thiss!18206 () LexerInterface!4762)

(declare-fun rulesProduceIndividualToken!2254 (LexerInterface!4762 List!36089 Token!9712) Bool)

(assert (=> b!3192461 (= res!1298681 (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3192462 () Bool)

(declare-fun e!1990020 () Bool)

(declare-fun e!1990006 () Bool)

(declare-fun tp!1009485 () Bool)

(assert (=> b!3192462 (= e!1990006 (and tp!1009485 (inv!48805 (tag!5691 (rule!7605 separatorToken!241))) (inv!48808 (transformation!5173 (rule!7605 separatorToken!241))) e!1990020))))

(declare-fun b!3192463 () Bool)

(declare-fun res!1298675 () Bool)

(assert (=> b!3192463 (=> (not res!1298675) (not e!1990008))))

(declare-fun sepAndNonSepRulesDisjointChars!1367 (List!36089 List!36089) Bool)

(assert (=> b!3192463 (= res!1298675 (sepAndNonSepRulesDisjointChars!1367 rules!2135 rules!2135))))

(declare-fun b!3192464 () Bool)

(declare-fun e!1990017 () Bool)

(assert (=> b!3192464 (= e!1990017 e!1990021)))

(declare-fun res!1298678 () Bool)

(assert (=> b!3192464 (=> res!1298678 e!1990021)))

(declare-fun lt!1075299 () List!36087)

(declare-fun lt!1075301 () List!36087)

(declare-fun lt!1075298 () List!36087)

(assert (=> b!3192464 (= res!1298678 (or (not (= lt!1075298 lt!1075299)) (not (= lt!1075301 lt!1075299))))))

(declare-fun list!12774 (BalanceConc!21056) List!36087)

(declare-fun charsOf!3189 (Token!9712) BalanceConc!21056)

(assert (=> b!3192464 (= lt!1075299 (list!12774 (charsOf!3189 (h!41384 tokens!494))))))

(declare-fun b!3192465 () Bool)

(declare-fun res!1298670 () Bool)

(assert (=> b!3192465 (=> res!1298670 e!1990021)))

(declare-datatypes ((IArray!21449 0))(
  ( (IArray!21450 (innerList!10782 List!36088)) )
))
(declare-datatypes ((Conc!10722 0))(
  ( (Node!10722 (left!27955 Conc!10722) (right!28285 Conc!10722) (csize!21674 Int) (cheight!10933 Int)) (Leaf!16920 (xs!13840 IArray!21449) (csize!21675 Int)) (Empty!10722) )
))
(declare-datatypes ((BalanceConc!21058 0))(
  ( (BalanceConc!21059 (c!535940 Conc!10722)) )
))
(declare-fun isEmpty!20066 (BalanceConc!21058) Bool)

(declare-datatypes ((tuple2!35330 0))(
  ( (tuple2!35331 (_1!20799 BalanceConc!21058) (_2!20799 BalanceConc!21056)) )
))
(declare-fun lex!2092 (LexerInterface!4762 List!36089 BalanceConc!21056) tuple2!35330)

(declare-fun seqFromList!3417 (List!36087) BalanceConc!21056)

(assert (=> b!3192465 (= res!1298670 (isEmpty!20066 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)))))))

(declare-fun res!1298679 () Bool)

(assert (=> start!299384 (=> (not res!1298679) (not e!1990008))))

(assert (=> start!299384 (= res!1298679 (is-Lexer!4760 thiss!18206))))

(assert (=> start!299384 e!1990008))

(assert (=> start!299384 true))

(declare-fun e!1990023 () Bool)

(assert (=> start!299384 e!1990023))

(declare-fun e!1990005 () Bool)

(assert (=> start!299384 e!1990005))

(declare-fun e!1990015 () Bool)

(declare-fun inv!48809 (Token!9712) Bool)

(assert (=> start!299384 (and (inv!48809 separatorToken!241) e!1990015)))

(declare-fun b!3192466 () Bool)

(assert (=> b!3192466 (= e!1990008 (not e!1990017))))

(declare-fun res!1298677 () Bool)

(assert (=> b!3192466 (=> res!1298677 e!1990017)))

(assert (=> b!3192466 (= res!1298677 (not (= lt!1075301 lt!1075298)))))

(declare-fun printList!1312 (LexerInterface!4762 List!36088) List!36087)

(assert (=> b!3192466 (= lt!1075298 (printList!1312 thiss!18206 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))

(declare-fun lt!1075300 () BalanceConc!21056)

(assert (=> b!3192466 (= lt!1075301 (list!12774 lt!1075300))))

(declare-fun lt!1075302 () BalanceConc!21058)

(declare-fun printTailRec!1259 (LexerInterface!4762 BalanceConc!21058 Int BalanceConc!21056) BalanceConc!21056)

(assert (=> b!3192466 (= lt!1075300 (printTailRec!1259 thiss!18206 lt!1075302 0 (BalanceConc!21057 Empty!10721)))))

(declare-fun print!1827 (LexerInterface!4762 BalanceConc!21058) BalanceConc!21056)

(assert (=> b!3192466 (= lt!1075300 (print!1827 thiss!18206 lt!1075302))))

(declare-fun singletonSeq!2269 (Token!9712) BalanceConc!21058)

(assert (=> b!3192466 (= lt!1075302 (singletonSeq!2269 (h!41384 tokens!494)))))

(declare-fun e!1990022 () Bool)

(assert (=> b!3192467 (= e!1990022 (and tp!1009476 tp!1009486))))

(declare-fun b!3192468 () Bool)

(declare-fun contains!6388 (List!36088 Token!9712) Bool)

(assert (=> b!3192468 (= e!1990016 (contains!6388 tokens!494 (h!41384 (t!236311 tokens!494))))))

(declare-fun tp!1009482 () Bool)

(declare-fun b!3192469 () Bool)

(assert (=> b!3192469 (= e!1990015 (and (inv!21 (value!167892 separatorToken!241)) e!1990006 tp!1009482))))

(declare-fun b!3192470 () Bool)

(declare-fun res!1298676 () Bool)

(assert (=> b!3192470 (=> (not res!1298676) (not e!1990008))))

(declare-fun rulesInvariant!4159 (LexerInterface!4762 List!36089) Bool)

(assert (=> b!3192470 (= res!1298676 (rulesInvariant!4159 thiss!18206 rules!2135))))

(declare-fun tp!1009479 () Bool)

(declare-fun b!3192471 () Bool)

(assert (=> b!3192471 (= e!1990005 (and (inv!48809 (h!41384 tokens!494)) e!1990014 tp!1009479))))

(declare-fun b!3192472 () Bool)

(declare-fun res!1298682 () Bool)

(assert (=> b!3192472 (=> (not res!1298682) (not e!1990008))))

(assert (=> b!3192472 (= res!1298682 (and (not (is-Nil!35964 tokens!494)) (not (is-Nil!35964 (t!236311 tokens!494)))))))

(declare-fun b!3192473 () Bool)

(declare-fun tp!1009481 () Bool)

(assert (=> b!3192473 (= e!1990023 (and e!1990010 tp!1009481))))

(declare-fun b!3192474 () Bool)

(declare-fun res!1298683 () Bool)

(assert (=> b!3192474 (=> (not res!1298683) (not e!1990008))))

(assert (=> b!3192474 (= res!1298683 (isSeparator!5173 (rule!7605 separatorToken!241)))))

(assert (=> b!3192475 (= e!1990011 (and tp!1009480 tp!1009478))))

(declare-fun b!3192476 () Bool)

(declare-fun res!1298673 () Bool)

(assert (=> b!3192476 (=> (not res!1298673) (not e!1990008))))

(declare-fun isEmpty!20067 (List!36089) Bool)

(assert (=> b!3192476 (= res!1298673 (not (isEmpty!20067 rules!2135)))))

(declare-fun b!3192477 () Bool)

(declare-fun tp!1009484 () Bool)

(assert (=> b!3192477 (= e!1990018 (and tp!1009484 (inv!48805 (tag!5691 (rule!7605 (h!41384 tokens!494)))) (inv!48808 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) e!1990022))))

(declare-fun b!3192478 () Bool)

(declare-fun res!1298671 () Bool)

(assert (=> b!3192478 (=> res!1298671 e!1990021)))

(assert (=> b!3192478 (= res!1298671 (not (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 (h!41384 tokens!494))))))

(declare-fun b!3192479 () Bool)

(declare-fun res!1298680 () Bool)

(assert (=> b!3192479 (=> (not res!1298680) (not e!1990008))))

(declare-fun rulesProduceEachTokenIndividually!1213 (LexerInterface!4762 List!36089 BalanceConc!21058) Bool)

(declare-fun seqFromList!3418 (List!36088) BalanceConc!21058)

(assert (=> b!3192479 (= res!1298680 (rulesProduceEachTokenIndividually!1213 thiss!18206 rules!2135 (seqFromList!3418 tokens!494)))))

(assert (=> b!3192480 (= e!1990020 (and tp!1009475 tp!1009487))))

(assert (= (and start!299384 res!1298679) b!3192476))

(assert (= (and b!3192476 res!1298673) b!3192470))

(assert (= (and b!3192470 res!1298676) b!3192479))

(assert (= (and b!3192479 res!1298680) b!3192461))

(assert (= (and b!3192461 res!1298681) b!3192474))

(assert (= (and b!3192474 res!1298683) b!3192457))

(assert (= (and b!3192457 res!1298672) b!3192463))

(assert (= (and b!3192463 res!1298675) b!3192472))

(assert (= (and b!3192472 res!1298682) b!3192466))

(assert (= (and b!3192466 (not res!1298677)) b!3192464))

(assert (= (and b!3192464 (not res!1298678)) b!3192478))

(assert (= (and b!3192478 (not res!1298671)) b!3192465))

(assert (= (and b!3192465 (not res!1298670)) b!3192460))

(assert (= (and b!3192460 res!1298674) b!3192468))

(assert (= b!3192458 b!3192475))

(assert (= b!3192473 b!3192458))

(assert (= (and start!299384 (is-Cons!35965 rules!2135)) b!3192473))

(assert (= b!3192477 b!3192467))

(assert (= b!3192459 b!3192477))

(assert (= b!3192471 b!3192459))

(assert (= (and start!299384 (is-Cons!35964 tokens!494)) b!3192471))

(assert (= b!3192462 b!3192480))

(assert (= b!3192469 b!3192462))

(assert (= start!299384 b!3192469))

(declare-fun m!3451711 () Bool)

(assert (=> b!3192466 m!3451711))

(declare-fun m!3451713 () Bool)

(assert (=> b!3192466 m!3451713))

(declare-fun m!3451715 () Bool)

(assert (=> b!3192466 m!3451715))

(declare-fun m!3451717 () Bool)

(assert (=> b!3192466 m!3451717))

(declare-fun m!3451719 () Bool)

(assert (=> b!3192466 m!3451719))

(declare-fun m!3451721 () Bool)

(assert (=> b!3192458 m!3451721))

(declare-fun m!3451723 () Bool)

(assert (=> b!3192458 m!3451723))

(declare-fun m!3451725 () Bool)

(assert (=> b!3192457 m!3451725))

(declare-fun m!3451727 () Bool)

(assert (=> b!3192461 m!3451727))

(declare-fun m!3451729 () Bool)

(assert (=> b!3192477 m!3451729))

(declare-fun m!3451731 () Bool)

(assert (=> b!3192477 m!3451731))

(declare-fun m!3451733 () Bool)

(assert (=> b!3192468 m!3451733))

(declare-fun m!3451735 () Bool)

(assert (=> b!3192471 m!3451735))

(declare-fun m!3451737 () Bool)

(assert (=> b!3192470 m!3451737))

(declare-fun m!3451739 () Bool)

(assert (=> start!299384 m!3451739))

(declare-fun m!3451741 () Bool)

(assert (=> b!3192463 m!3451741))

(declare-fun m!3451743 () Bool)

(assert (=> b!3192479 m!3451743))

(assert (=> b!3192479 m!3451743))

(declare-fun m!3451745 () Bool)

(assert (=> b!3192479 m!3451745))

(declare-fun m!3451747 () Bool)

(assert (=> b!3192478 m!3451747))

(declare-fun m!3451749 () Bool)

(assert (=> b!3192462 m!3451749))

(declare-fun m!3451751 () Bool)

(assert (=> b!3192462 m!3451751))

(declare-fun m!3451753 () Bool)

(assert (=> b!3192469 m!3451753))

(declare-fun m!3451755 () Bool)

(assert (=> b!3192465 m!3451755))

(assert (=> b!3192465 m!3451755))

(declare-fun m!3451757 () Bool)

(assert (=> b!3192465 m!3451757))

(declare-fun m!3451759 () Bool)

(assert (=> b!3192465 m!3451759))

(declare-fun m!3451761 () Bool)

(assert (=> b!3192464 m!3451761))

(assert (=> b!3192464 m!3451761))

(declare-fun m!3451763 () Bool)

(assert (=> b!3192464 m!3451763))

(declare-fun m!3451765 () Bool)

(assert (=> b!3192476 m!3451765))

(declare-fun m!3451767 () Bool)

(assert (=> b!3192459 m!3451767))

(assert (=> b!3192460 m!3451725))

(declare-fun m!3451769 () Bool)

(assert (=> b!3192460 m!3451769))

(push 1)

(assert (not b!3192471))

(assert (not b!3192470))

(assert (not start!299384))

(assert (not b!3192468))

(assert (not b!3192461))

(assert (not b!3192478))

(assert (not b!3192460))

(assert b_and!211675)

(assert (not b!3192477))

(assert (not b!3192466))

(assert b_and!211683)

(assert (not b_next!85343))

(assert (not b!3192457))

(assert (not b!3192476))

(assert (not b_next!85335))

(assert (not b!3192473))

(assert (not b!3192462))

(assert (not b!3192459))

(assert (not b_next!85337))

(assert (not b_next!85341))

(assert (not b!3192463))

(assert (not b!3192479))

(assert (not b!3192465))

(assert (not b!3192464))

(assert (not b_next!85333))

(assert b_and!211677)

(assert (not b_next!85339))

(assert b_and!211685)

(assert (not b!3192469))

(assert b_and!211681)

(assert (not b!3192458))

(assert b_and!211679)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!85335))

(assert (not b_next!85337))

(assert b_and!211675)

(assert (not b_next!85341))

(assert (not b_next!85333))

(assert b_and!211681)

(assert b_and!211683)

(assert (not b_next!85343))

(assert b_and!211679)

(assert b_and!211677)

(assert (not b_next!85339))

(assert b_and!211685)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!872916 () Bool)

(declare-fun lt!1075329 () Bool)

(declare-fun e!1990092 () Bool)

(assert (=> d!872916 (= lt!1075329 e!1990092)))

(declare-fun res!1298750 () Bool)

(assert (=> d!872916 (=> (not res!1298750) (not e!1990092))))

(declare-fun list!12776 (BalanceConc!21058) List!36088)

(assert (=> d!872916 (= res!1298750 (= (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))) (list!12776 (singletonSeq!2269 separatorToken!241))))))

(declare-fun e!1990091 () Bool)

(assert (=> d!872916 (= lt!1075329 e!1990091)))

(declare-fun res!1298748 () Bool)

(assert (=> d!872916 (=> (not res!1298748) (not e!1990091))))

(declare-fun lt!1075328 () tuple2!35330)

(declare-fun size!27098 (BalanceConc!21058) Int)

(assert (=> d!872916 (= res!1298748 (= (size!27098 (_1!20799 lt!1075328)) 1))))

(assert (=> d!872916 (= lt!1075328 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))))

(assert (=> d!872916 (not (isEmpty!20067 rules!2135))))

(assert (=> d!872916 (= (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 separatorToken!241) lt!1075329)))

(declare-fun b!3192565 () Bool)

(declare-fun res!1298749 () Bool)

(assert (=> b!3192565 (=> (not res!1298749) (not e!1990091))))

(declare-fun apply!8103 (BalanceConc!21058 Int) Token!9712)

(assert (=> b!3192565 (= res!1298749 (= (apply!8103 (_1!20799 lt!1075328) 0) separatorToken!241))))

(declare-fun b!3192566 () Bool)

(declare-fun isEmpty!20070 (BalanceConc!21056) Bool)

(assert (=> b!3192566 (= e!1990091 (isEmpty!20070 (_2!20799 lt!1075328)))))

(declare-fun b!3192567 () Bool)

(assert (=> b!3192567 (= e!1990092 (isEmpty!20070 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))))))

(assert (= (and d!872916 res!1298748) b!3192565))

(assert (= (and b!3192565 res!1298749) b!3192566))

(assert (= (and d!872916 res!1298750) b!3192567))

(declare-fun m!3451837 () Bool)

(assert (=> d!872916 m!3451837))

(declare-fun m!3451839 () Bool)

(assert (=> d!872916 m!3451839))

(declare-fun m!3451841 () Bool)

(assert (=> d!872916 m!3451841))

(assert (=> d!872916 m!3451837))

(declare-fun m!3451843 () Bool)

(assert (=> d!872916 m!3451843))

(assert (=> d!872916 m!3451837))

(declare-fun m!3451845 () Bool)

(assert (=> d!872916 m!3451845))

(assert (=> d!872916 m!3451765))

(assert (=> d!872916 m!3451845))

(declare-fun m!3451847 () Bool)

(assert (=> d!872916 m!3451847))

(declare-fun m!3451849 () Bool)

(assert (=> b!3192565 m!3451849))

(declare-fun m!3451851 () Bool)

(assert (=> b!3192566 m!3451851))

(assert (=> b!3192567 m!3451837))

(assert (=> b!3192567 m!3451837))

(assert (=> b!3192567 m!3451845))

(assert (=> b!3192567 m!3451845))

(assert (=> b!3192567 m!3451847))

(declare-fun m!3451853 () Bool)

(assert (=> b!3192567 m!3451853))

(assert (=> b!3192461 d!872916))

(declare-fun d!872922 () Bool)

(declare-fun res!1298755 () Bool)

(declare-fun e!1990097 () Bool)

(assert (=> d!872922 (=> res!1298755 e!1990097)))

(assert (=> d!872922 (= res!1298755 (is-Nil!35964 tokens!494))))

(assert (=> d!872922 (= (forall!7307 tokens!494 lambda!116828) e!1990097)))

(declare-fun b!3192572 () Bool)

(declare-fun e!1990098 () Bool)

(assert (=> b!3192572 (= e!1990097 e!1990098)))

(declare-fun res!1298756 () Bool)

(assert (=> b!3192572 (=> (not res!1298756) (not e!1990098))))

(declare-fun dynLambda!14484 (Int Token!9712) Bool)

(assert (=> b!3192572 (= res!1298756 (dynLambda!14484 lambda!116828 (h!41384 tokens!494)))))

(declare-fun b!3192573 () Bool)

(assert (=> b!3192573 (= e!1990098 (forall!7307 (t!236311 tokens!494) lambda!116828))))

(assert (= (and d!872922 (not res!1298755)) b!3192572))

(assert (= (and b!3192572 res!1298756) b!3192573))

(declare-fun b_lambda!87067 () Bool)

(assert (=> (not b_lambda!87067) (not b!3192572)))

(declare-fun m!3451855 () Bool)

(assert (=> b!3192572 m!3451855))

(declare-fun m!3451857 () Bool)

(assert (=> b!3192573 m!3451857))

(assert (=> b!3192460 d!872922))

(declare-fun d!872924 () Bool)

(assert (=> d!872924 (dynLambda!14484 lambda!116828 (h!41384 tokens!494))))

(declare-fun lt!1075346 () Unit!50371)

(declare-fun choose!18631 (List!36088 Int Token!9712) Unit!50371)

(assert (=> d!872924 (= lt!1075346 (choose!18631 tokens!494 lambda!116828 (h!41384 tokens!494)))))

(declare-fun e!1990105 () Bool)

(assert (=> d!872924 e!1990105))

(declare-fun res!1298761 () Bool)

(assert (=> d!872924 (=> (not res!1298761) (not e!1990105))))

(assert (=> d!872924 (= res!1298761 (forall!7307 tokens!494 lambda!116828))))

(assert (=> d!872924 (= (forallContained!1144 tokens!494 lambda!116828 (h!41384 tokens!494)) lt!1075346)))

(declare-fun b!3192582 () Bool)

(assert (=> b!3192582 (= e!1990105 (contains!6388 tokens!494 (h!41384 tokens!494)))))

(assert (= (and d!872924 res!1298761) b!3192582))

(declare-fun b_lambda!87069 () Bool)

(assert (=> (not b_lambda!87069) (not d!872924)))

(assert (=> d!872924 m!3451855))

(declare-fun m!3451859 () Bool)

(assert (=> d!872924 m!3451859))

(assert (=> d!872924 m!3451725))

(declare-fun m!3451861 () Bool)

(assert (=> b!3192582 m!3451861))

(assert (=> b!3192460 d!872924))

(declare-fun d!872926 () Bool)

(declare-fun res!1298766 () Bool)

(declare-fun e!1990108 () Bool)

(assert (=> d!872926 (=> (not res!1298766) (not e!1990108))))

(declare-fun isEmpty!20071 (List!36087) Bool)

(assert (=> d!872926 (= res!1298766 (not (isEmpty!20071 (originalCharacters!5887 (h!41384 tokens!494)))))))

(assert (=> d!872926 (= (inv!48809 (h!41384 tokens!494)) e!1990108)))

(declare-fun b!3192587 () Bool)

(declare-fun res!1298767 () Bool)

(assert (=> b!3192587 (=> (not res!1298767) (not e!1990108))))

(declare-fun dynLambda!14485 (Int TokenValue!5403) BalanceConc!21056)

(assert (=> b!3192587 (= res!1298767 (= (originalCharacters!5887 (h!41384 tokens!494)) (list!12774 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(declare-fun b!3192588 () Bool)

(declare-fun size!27099 (List!36087) Int)

(assert (=> b!3192588 (= e!1990108 (= (size!27096 (h!41384 tokens!494)) (size!27099 (originalCharacters!5887 (h!41384 tokens!494)))))))

(assert (= (and d!872926 res!1298766) b!3192587))

(assert (= (and b!3192587 res!1298767) b!3192588))

(declare-fun b_lambda!87071 () Bool)

(assert (=> (not b_lambda!87071) (not b!3192587)))

(declare-fun t!236323 () Bool)

(declare-fun tb!155975 () Bool)

(assert (=> (and b!3192475 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236323) tb!155975))

(declare-fun b!3192593 () Bool)

(declare-fun e!1990111 () Bool)

(declare-fun tp!1009529 () Bool)

(declare-fun inv!48812 (Conc!10721) Bool)

(assert (=> b!3192593 (= e!1990111 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))) tp!1009529))))

(declare-fun result!198180 () Bool)

(declare-fun inv!48813 (BalanceConc!21056) Bool)

(assert (=> tb!155975 (= result!198180 (and (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))) e!1990111))))

(assert (= tb!155975 b!3192593))

(declare-fun m!3451863 () Bool)

(assert (=> b!3192593 m!3451863))

(declare-fun m!3451865 () Bool)

(assert (=> tb!155975 m!3451865))

(assert (=> b!3192587 t!236323))

(declare-fun b_and!211699 () Bool)

(assert (= b_and!211677 (and (=> t!236323 result!198180) b_and!211699)))

(declare-fun t!236325 () Bool)

(declare-fun tb!155977 () Bool)

(assert (=> (and b!3192480 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236325) tb!155977))

(declare-fun result!198184 () Bool)

(assert (= result!198184 result!198180))

(assert (=> b!3192587 t!236325))

(declare-fun b_and!211701 () Bool)

(assert (= b_and!211681 (and (=> t!236325 result!198184) b_and!211701)))

(declare-fun t!236327 () Bool)

(declare-fun tb!155979 () Bool)

(assert (=> (and b!3192467 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236327) tb!155979))

(declare-fun result!198186 () Bool)

(assert (= result!198186 result!198180))

(assert (=> b!3192587 t!236327))

(declare-fun b_and!211703 () Bool)

(assert (= b_and!211685 (and (=> t!236327 result!198186) b_and!211703)))

(declare-fun m!3451867 () Bool)

(assert (=> d!872926 m!3451867))

(declare-fun m!3451869 () Bool)

(assert (=> b!3192587 m!3451869))

(assert (=> b!3192587 m!3451869))

(declare-fun m!3451871 () Bool)

(assert (=> b!3192587 m!3451871))

(declare-fun m!3451873 () Bool)

(assert (=> b!3192588 m!3451873))

(assert (=> b!3192471 d!872926))

(declare-fun d!872928 () Bool)

(declare-fun res!1298770 () Bool)

(declare-fun e!1990114 () Bool)

(assert (=> d!872928 (=> (not res!1298770) (not e!1990114))))

(declare-fun rulesValid!1904 (LexerInterface!4762 List!36089) Bool)

(assert (=> d!872928 (= res!1298770 (rulesValid!1904 thiss!18206 rules!2135))))

(assert (=> d!872928 (= (rulesInvariant!4159 thiss!18206 rules!2135) e!1990114)))

(declare-fun b!3192596 () Bool)

(declare-datatypes ((List!36094 0))(
  ( (Nil!35970) (Cons!35970 (h!41390 String!40351) (t!236359 List!36094)) )
))
(declare-fun noDuplicateTag!1900 (LexerInterface!4762 List!36089 List!36094) Bool)

(assert (=> b!3192596 (= e!1990114 (noDuplicateTag!1900 thiss!18206 rules!2135 Nil!35970))))

(assert (= (and d!872928 res!1298770) b!3192596))

(declare-fun m!3451875 () Bool)

(assert (=> d!872928 m!3451875))

(declare-fun m!3451877 () Bool)

(assert (=> b!3192596 m!3451877))

(assert (=> b!3192470 d!872928))

(declare-fun d!872930 () Bool)

(declare-fun c!535952 () Bool)

(assert (=> d!872930 (= c!535952 (is-IntegerValue!16209 (value!167892 (h!41384 tokens!494))))))

(declare-fun e!1990125 () Bool)

(assert (=> d!872930 (= (inv!21 (value!167892 (h!41384 tokens!494))) e!1990125)))

(declare-fun b!3192610 () Bool)

(declare-fun e!1990123 () Bool)

(declare-fun inv!15 (TokenValue!5403) Bool)

(assert (=> b!3192610 (= e!1990123 (inv!15 (value!167892 (h!41384 tokens!494))))))

(declare-fun b!3192611 () Bool)

(declare-fun e!1990124 () Bool)

(assert (=> b!3192611 (= e!1990125 e!1990124)))

(declare-fun c!535953 () Bool)

(assert (=> b!3192611 (= c!535953 (is-IntegerValue!16210 (value!167892 (h!41384 tokens!494))))))

(declare-fun b!3192612 () Bool)

(declare-fun res!1298774 () Bool)

(assert (=> b!3192612 (=> res!1298774 e!1990123)))

(assert (=> b!3192612 (= res!1298774 (not (is-IntegerValue!16211 (value!167892 (h!41384 tokens!494)))))))

(assert (=> b!3192612 (= e!1990124 e!1990123)))

(declare-fun b!3192613 () Bool)

(declare-fun inv!16 (TokenValue!5403) Bool)

(assert (=> b!3192613 (= e!1990125 (inv!16 (value!167892 (h!41384 tokens!494))))))

(declare-fun b!3192614 () Bool)

(declare-fun inv!17 (TokenValue!5403) Bool)

(assert (=> b!3192614 (= e!1990124 (inv!17 (value!167892 (h!41384 tokens!494))))))

(assert (= (and d!872930 c!535952) b!3192613))

(assert (= (and d!872930 (not c!535952)) b!3192611))

(assert (= (and b!3192611 c!535953) b!3192614))

(assert (= (and b!3192611 (not c!535953)) b!3192612))

(assert (= (and b!3192612 (not res!1298774)) b!3192610))

(declare-fun m!3451915 () Bool)

(assert (=> b!3192610 m!3451915))

(declare-fun m!3451917 () Bool)

(assert (=> b!3192613 m!3451917))

(declare-fun m!3451919 () Bool)

(assert (=> b!3192614 m!3451919))

(assert (=> b!3192459 d!872930))

(declare-fun d!872934 () Bool)

(assert (=> d!872934 (= (inv!48805 (tag!5691 (h!41385 rules!2135))) (= (mod (str.len (value!167891 (tag!5691 (h!41385 rules!2135)))) 2) 0))))

(assert (=> b!3192458 d!872934))

(declare-fun d!872936 () Bool)

(declare-fun res!1298777 () Bool)

(declare-fun e!1990128 () Bool)

(assert (=> d!872936 (=> (not res!1298777) (not e!1990128))))

(declare-fun semiInverseModEq!2144 (Int Int) Bool)

(assert (=> d!872936 (= res!1298777 (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toValue!7237 (transformation!5173 (h!41385 rules!2135)))))))

(assert (=> d!872936 (= (inv!48808 (transformation!5173 (h!41385 rules!2135))) e!1990128)))

(declare-fun b!3192617 () Bool)

(declare-fun equivClasses!2043 (Int Int) Bool)

(assert (=> b!3192617 (= e!1990128 (equivClasses!2043 (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toValue!7237 (transformation!5173 (h!41385 rules!2135)))))))

(assert (= (and d!872936 res!1298777) b!3192617))

(declare-fun m!3451923 () Bool)

(assert (=> d!872936 m!3451923))

(declare-fun m!3451925 () Bool)

(assert (=> b!3192617 m!3451925))

(assert (=> b!3192458 d!872936))

(declare-fun d!872940 () Bool)

(declare-fun c!535954 () Bool)

(assert (=> d!872940 (= c!535954 (is-IntegerValue!16209 (value!167892 separatorToken!241)))))

(declare-fun e!1990131 () Bool)

(assert (=> d!872940 (= (inv!21 (value!167892 separatorToken!241)) e!1990131)))

(declare-fun b!3192618 () Bool)

(declare-fun e!1990129 () Bool)

(assert (=> b!3192618 (= e!1990129 (inv!15 (value!167892 separatorToken!241)))))

(declare-fun b!3192619 () Bool)

(declare-fun e!1990130 () Bool)

(assert (=> b!3192619 (= e!1990131 e!1990130)))

(declare-fun c!535955 () Bool)

(assert (=> b!3192619 (= c!535955 (is-IntegerValue!16210 (value!167892 separatorToken!241)))))

(declare-fun b!3192620 () Bool)

(declare-fun res!1298778 () Bool)

(assert (=> b!3192620 (=> res!1298778 e!1990129)))

(assert (=> b!3192620 (= res!1298778 (not (is-IntegerValue!16211 (value!167892 separatorToken!241))))))

(assert (=> b!3192620 (= e!1990130 e!1990129)))

(declare-fun b!3192621 () Bool)

(assert (=> b!3192621 (= e!1990131 (inv!16 (value!167892 separatorToken!241)))))

(declare-fun b!3192622 () Bool)

(assert (=> b!3192622 (= e!1990130 (inv!17 (value!167892 separatorToken!241)))))

(assert (= (and d!872940 c!535954) b!3192621))

(assert (= (and d!872940 (not c!535954)) b!3192619))

(assert (= (and b!3192619 c!535955) b!3192622))

(assert (= (and b!3192619 (not c!535955)) b!3192620))

(assert (= (and b!3192620 (not res!1298778)) b!3192618))

(declare-fun m!3451927 () Bool)

(assert (=> b!3192618 m!3451927))

(declare-fun m!3451929 () Bool)

(assert (=> b!3192621 m!3451929))

(declare-fun m!3451931 () Bool)

(assert (=> b!3192622 m!3451931))

(assert (=> b!3192469 d!872940))

(declare-fun d!872942 () Bool)

(declare-fun lt!1075356 () Bool)

(declare-fun content!4859 (List!36088) (Set Token!9712))

(assert (=> d!872942 (= lt!1075356 (set.member (h!41384 (t!236311 tokens!494)) (content!4859 tokens!494)))))

(declare-fun e!1990136 () Bool)

(assert (=> d!872942 (= lt!1075356 e!1990136)))

(declare-fun res!1298783 () Bool)

(assert (=> d!872942 (=> (not res!1298783) (not e!1990136))))

(assert (=> d!872942 (= res!1298783 (is-Cons!35964 tokens!494))))

(assert (=> d!872942 (= (contains!6388 tokens!494 (h!41384 (t!236311 tokens!494))) lt!1075356)))

(declare-fun b!3192627 () Bool)

(declare-fun e!1990137 () Bool)

(assert (=> b!3192627 (= e!1990136 e!1990137)))

(declare-fun res!1298784 () Bool)

(assert (=> b!3192627 (=> res!1298784 e!1990137)))

(assert (=> b!3192627 (= res!1298784 (= (h!41384 tokens!494) (h!41384 (t!236311 tokens!494))))))

(declare-fun b!3192628 () Bool)

(assert (=> b!3192628 (= e!1990137 (contains!6388 (t!236311 tokens!494) (h!41384 (t!236311 tokens!494))))))

(assert (= (and d!872942 res!1298783) b!3192627))

(assert (= (and b!3192627 (not res!1298784)) b!3192628))

(declare-fun m!3451933 () Bool)

(assert (=> d!872942 m!3451933))

(declare-fun m!3451935 () Bool)

(assert (=> d!872942 m!3451935))

(declare-fun m!3451937 () Bool)

(assert (=> b!3192628 m!3451937))

(assert (=> b!3192468 d!872942))

(declare-fun bs!540336 () Bool)

(declare-fun d!872944 () Bool)

(assert (= bs!540336 (and d!872944 b!3192457)))

(declare-fun lambda!116840 () Int)

(assert (=> bs!540336 (not (= lambda!116840 lambda!116828))))

(declare-fun b!3192666 () Bool)

(declare-fun e!1990164 () Bool)

(assert (=> b!3192666 (= e!1990164 true)))

(declare-fun b!3192665 () Bool)

(declare-fun e!1990163 () Bool)

(assert (=> b!3192665 (= e!1990163 e!1990164)))

(declare-fun b!3192664 () Bool)

(declare-fun e!1990162 () Bool)

(assert (=> b!3192664 (= e!1990162 e!1990163)))

(assert (=> d!872944 e!1990162))

(assert (= b!3192665 b!3192666))

(assert (= b!3192664 b!3192665))

(assert (= (and d!872944 (is-Cons!35965 rules!2135)) b!3192664))

(declare-fun order!18283 () Int)

(declare-fun order!18285 () Int)

(declare-fun dynLambda!14486 (Int Int) Int)

(declare-fun dynLambda!14487 (Int Int) Int)

(assert (=> b!3192666 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14487 order!18285 lambda!116840))))

(declare-fun order!18287 () Int)

(declare-fun dynLambda!14488 (Int Int) Int)

(assert (=> b!3192666 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14487 order!18285 lambda!116840))))

(assert (=> d!872944 true))

(declare-fun e!1990155 () Bool)

(assert (=> d!872944 e!1990155))

(declare-fun res!1298793 () Bool)

(assert (=> d!872944 (=> (not res!1298793) (not e!1990155))))

(declare-fun lt!1075367 () Bool)

(assert (=> d!872944 (= res!1298793 (= lt!1075367 (forall!7307 (list!12776 (seqFromList!3418 tokens!494)) lambda!116840)))))

(declare-fun forall!7309 (BalanceConc!21058 Int) Bool)

(assert (=> d!872944 (= lt!1075367 (forall!7309 (seqFromList!3418 tokens!494) lambda!116840))))

(assert (=> d!872944 (not (isEmpty!20067 rules!2135))))

(assert (=> d!872944 (= (rulesProduceEachTokenIndividually!1213 thiss!18206 rules!2135 (seqFromList!3418 tokens!494)) lt!1075367)))

(declare-fun b!3192655 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1712 (LexerInterface!4762 List!36089 List!36088) Bool)

(assert (=> b!3192655 (= e!1990155 (= lt!1075367 (rulesProduceEachTokenIndividuallyList!1712 thiss!18206 rules!2135 (list!12776 (seqFromList!3418 tokens!494)))))))

(assert (= (and d!872944 res!1298793) b!3192655))

(assert (=> d!872944 m!3451743))

(declare-fun m!3451963 () Bool)

(assert (=> d!872944 m!3451963))

(assert (=> d!872944 m!3451963))

(declare-fun m!3451965 () Bool)

(assert (=> d!872944 m!3451965))

(assert (=> d!872944 m!3451743))

(declare-fun m!3451967 () Bool)

(assert (=> d!872944 m!3451967))

(assert (=> d!872944 m!3451765))

(assert (=> b!3192655 m!3451743))

(assert (=> b!3192655 m!3451963))

(assert (=> b!3192655 m!3451963))

(declare-fun m!3451969 () Bool)

(assert (=> b!3192655 m!3451969))

(assert (=> b!3192479 d!872944))

(declare-fun d!872954 () Bool)

(declare-fun fromListB!1519 (List!36088) BalanceConc!21058)

(assert (=> d!872954 (= (seqFromList!3418 tokens!494) (fromListB!1519 tokens!494))))

(declare-fun bs!540337 () Bool)

(assert (= bs!540337 d!872954))

(declare-fun m!3451971 () Bool)

(assert (=> bs!540337 m!3451971))

(assert (=> b!3192479 d!872954))

(declare-fun d!872956 () Bool)

(declare-fun lt!1075369 () Bool)

(declare-fun e!1990166 () Bool)

(assert (=> d!872956 (= lt!1075369 e!1990166)))

(declare-fun res!1298796 () Bool)

(assert (=> d!872956 (=> (not res!1298796) (not e!1990166))))

(assert (=> d!872956 (= res!1298796 (= (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))) (list!12776 (singletonSeq!2269 (h!41384 tokens!494)))))))

(declare-fun e!1990165 () Bool)

(assert (=> d!872956 (= lt!1075369 e!1990165)))

(declare-fun res!1298794 () Bool)

(assert (=> d!872956 (=> (not res!1298794) (not e!1990165))))

(declare-fun lt!1075368 () tuple2!35330)

(assert (=> d!872956 (= res!1298794 (= (size!27098 (_1!20799 lt!1075368)) 1))))

(assert (=> d!872956 (= lt!1075368 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))))

(assert (=> d!872956 (not (isEmpty!20067 rules!2135))))

(assert (=> d!872956 (= (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 (h!41384 tokens!494)) lt!1075369)))

(declare-fun b!3192669 () Bool)

(declare-fun res!1298795 () Bool)

(assert (=> b!3192669 (=> (not res!1298795) (not e!1990165))))

(assert (=> b!3192669 (= res!1298795 (= (apply!8103 (_1!20799 lt!1075368) 0) (h!41384 tokens!494)))))

(declare-fun b!3192670 () Bool)

(assert (=> b!3192670 (= e!1990165 (isEmpty!20070 (_2!20799 lt!1075368)))))

(declare-fun b!3192671 () Bool)

(assert (=> b!3192671 (= e!1990166 (isEmpty!20070 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))))))

(assert (= (and d!872956 res!1298794) b!3192669))

(assert (= (and b!3192669 res!1298795) b!3192670))

(assert (= (and d!872956 res!1298796) b!3192671))

(assert (=> d!872956 m!3451713))

(declare-fun m!3451973 () Bool)

(assert (=> d!872956 m!3451973))

(declare-fun m!3451975 () Bool)

(assert (=> d!872956 m!3451975))

(assert (=> d!872956 m!3451713))

(declare-fun m!3451977 () Bool)

(assert (=> d!872956 m!3451977))

(assert (=> d!872956 m!3451713))

(declare-fun m!3451979 () Bool)

(assert (=> d!872956 m!3451979))

(assert (=> d!872956 m!3451765))

(assert (=> d!872956 m!3451979))

(declare-fun m!3451981 () Bool)

(assert (=> d!872956 m!3451981))

(declare-fun m!3451983 () Bool)

(assert (=> b!3192669 m!3451983))

(declare-fun m!3451985 () Bool)

(assert (=> b!3192670 m!3451985))

(assert (=> b!3192671 m!3451713))

(assert (=> b!3192671 m!3451713))

(assert (=> b!3192671 m!3451979))

(assert (=> b!3192671 m!3451979))

(assert (=> b!3192671 m!3451981))

(declare-fun m!3451987 () Bool)

(assert (=> b!3192671 m!3451987))

(assert (=> b!3192478 d!872956))

(declare-fun d!872958 () Bool)

(declare-fun res!1298797 () Bool)

(declare-fun e!1990167 () Bool)

(assert (=> d!872958 (=> (not res!1298797) (not e!1990167))))

(assert (=> d!872958 (= res!1298797 (not (isEmpty!20071 (originalCharacters!5887 separatorToken!241))))))

(assert (=> d!872958 (= (inv!48809 separatorToken!241) e!1990167)))

(declare-fun b!3192672 () Bool)

(declare-fun res!1298798 () Bool)

(assert (=> b!3192672 (=> (not res!1298798) (not e!1990167))))

(assert (=> b!3192672 (= res!1298798 (= (originalCharacters!5887 separatorToken!241) (list!12774 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(declare-fun b!3192673 () Bool)

(assert (=> b!3192673 (= e!1990167 (= (size!27096 separatorToken!241) (size!27099 (originalCharacters!5887 separatorToken!241))))))

(assert (= (and d!872958 res!1298797) b!3192672))

(assert (= (and b!3192672 res!1298798) b!3192673))

(declare-fun b_lambda!87073 () Bool)

(assert (=> (not b_lambda!87073) (not b!3192672)))

(declare-fun t!236336 () Bool)

(declare-fun tb!155981 () Bool)

(assert (=> (and b!3192475 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236336) tb!155981))

(declare-fun b!3192674 () Bool)

(declare-fun e!1990168 () Bool)

(declare-fun tp!1009530 () Bool)

(assert (=> b!3192674 (= e!1990168 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))) tp!1009530))))

(declare-fun result!198188 () Bool)

(assert (=> tb!155981 (= result!198188 (and (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))) e!1990168))))

(assert (= tb!155981 b!3192674))

(declare-fun m!3451989 () Bool)

(assert (=> b!3192674 m!3451989))

(declare-fun m!3451991 () Bool)

(assert (=> tb!155981 m!3451991))

(assert (=> b!3192672 t!236336))

(declare-fun b_and!211705 () Bool)

(assert (= b_and!211699 (and (=> t!236336 result!198188) b_and!211705)))

(declare-fun t!236338 () Bool)

(declare-fun tb!155983 () Bool)

(assert (=> (and b!3192480 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236338) tb!155983))

(declare-fun result!198190 () Bool)

(assert (= result!198190 result!198188))

(assert (=> b!3192672 t!236338))

(declare-fun b_and!211707 () Bool)

(assert (= b_and!211701 (and (=> t!236338 result!198190) b_and!211707)))

(declare-fun tb!155985 () Bool)

(declare-fun t!236340 () Bool)

(assert (=> (and b!3192467 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236340) tb!155985))

(declare-fun result!198192 () Bool)

(assert (= result!198192 result!198188))

(assert (=> b!3192672 t!236340))

(declare-fun b_and!211709 () Bool)

(assert (= b_and!211703 (and (=> t!236340 result!198192) b_and!211709)))

(declare-fun m!3451993 () Bool)

(assert (=> d!872958 m!3451993))

(declare-fun m!3451995 () Bool)

(assert (=> b!3192672 m!3451995))

(assert (=> b!3192672 m!3451995))

(declare-fun m!3451997 () Bool)

(assert (=> b!3192672 m!3451997))

(declare-fun m!3451999 () Bool)

(assert (=> b!3192673 m!3451999))

(assert (=> start!299384 d!872958))

(assert (=> b!3192457 d!872922))

(declare-fun d!872960 () Bool)

(declare-fun list!12777 (Conc!10721) List!36087)

(assert (=> d!872960 (= (list!12774 lt!1075300) (list!12777 (c!535939 lt!1075300)))))

(declare-fun bs!540338 () Bool)

(assert (= bs!540338 d!872960))

(declare-fun m!3452001 () Bool)

(assert (=> bs!540338 m!3452001))

(assert (=> b!3192466 d!872960))

(declare-fun d!872962 () Bool)

(declare-fun lt!1075372 () BalanceConc!21056)

(assert (=> d!872962 (= (list!12774 lt!1075372) (printList!1312 thiss!18206 (list!12776 lt!1075302)))))

(assert (=> d!872962 (= lt!1075372 (printTailRec!1259 thiss!18206 lt!1075302 0 (BalanceConc!21057 Empty!10721)))))

(assert (=> d!872962 (= (print!1827 thiss!18206 lt!1075302) lt!1075372)))

(declare-fun bs!540339 () Bool)

(assert (= bs!540339 d!872962))

(declare-fun m!3452003 () Bool)

(assert (=> bs!540339 m!3452003))

(declare-fun m!3452005 () Bool)

(assert (=> bs!540339 m!3452005))

(assert (=> bs!540339 m!3452005))

(declare-fun m!3452007 () Bool)

(assert (=> bs!540339 m!3452007))

(assert (=> bs!540339 m!3451711))

(assert (=> b!3192466 d!872962))

(declare-fun d!872964 () Bool)

(declare-fun lt!1075393 () BalanceConc!21056)

(declare-fun printListTailRec!550 (LexerInterface!4762 List!36088 List!36087) List!36087)

(declare-fun dropList!1067 (BalanceConc!21058 Int) List!36088)

(assert (=> d!872964 (= (list!12774 lt!1075393) (printListTailRec!550 thiss!18206 (dropList!1067 lt!1075302 0) (list!12774 (BalanceConc!21057 Empty!10721))))))

(declare-fun e!1990174 () BalanceConc!21056)

(assert (=> d!872964 (= lt!1075393 e!1990174)))

(declare-fun c!535967 () Bool)

(assert (=> d!872964 (= c!535967 (>= 0 (size!27098 lt!1075302)))))

(declare-fun e!1990173 () Bool)

(assert (=> d!872964 e!1990173))

(declare-fun res!1298801 () Bool)

(assert (=> d!872964 (=> (not res!1298801) (not e!1990173))))

(assert (=> d!872964 (= res!1298801 (>= 0 0))))

(assert (=> d!872964 (= (printTailRec!1259 thiss!18206 lt!1075302 0 (BalanceConc!21057 Empty!10721)) lt!1075393)))

(declare-fun b!3192681 () Bool)

(assert (=> b!3192681 (= e!1990173 (<= 0 (size!27098 lt!1075302)))))

(declare-fun b!3192682 () Bool)

(assert (=> b!3192682 (= e!1990174 (BalanceConc!21057 Empty!10721))))

(declare-fun b!3192683 () Bool)

(declare-fun ++!8603 (BalanceConc!21056 BalanceConc!21056) BalanceConc!21056)

(assert (=> b!3192683 (= e!1990174 (printTailRec!1259 thiss!18206 lt!1075302 (+ 0 1) (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0)))))))

(declare-fun lt!1075391 () List!36088)

(assert (=> b!3192683 (= lt!1075391 (list!12776 lt!1075302))))

(declare-fun lt!1075390 () Unit!50371)

(declare-fun lemmaDropApply!1026 (List!36088 Int) Unit!50371)

(assert (=> b!3192683 (= lt!1075390 (lemmaDropApply!1026 lt!1075391 0))))

(declare-fun head!6998 (List!36088) Token!9712)

(declare-fun drop!1850 (List!36088 Int) List!36088)

(declare-fun apply!8104 (List!36088 Int) Token!9712)

(assert (=> b!3192683 (= (head!6998 (drop!1850 lt!1075391 0)) (apply!8104 lt!1075391 0))))

(declare-fun lt!1075392 () Unit!50371)

(assert (=> b!3192683 (= lt!1075392 lt!1075390)))

(declare-fun lt!1075389 () List!36088)

(assert (=> b!3192683 (= lt!1075389 (list!12776 lt!1075302))))

(declare-fun lt!1075387 () Unit!50371)

(declare-fun lemmaDropTail!910 (List!36088 Int) Unit!50371)

(assert (=> b!3192683 (= lt!1075387 (lemmaDropTail!910 lt!1075389 0))))

(declare-fun tail!5192 (List!36088) List!36088)

(assert (=> b!3192683 (= (tail!5192 (drop!1850 lt!1075389 0)) (drop!1850 lt!1075389 (+ 0 1)))))

(declare-fun lt!1075388 () Unit!50371)

(assert (=> b!3192683 (= lt!1075388 lt!1075387)))

(assert (= (and d!872964 res!1298801) b!3192681))

(assert (= (and d!872964 c!535967) b!3192682))

(assert (= (and d!872964 (not c!535967)) b!3192683))

(declare-fun m!3452009 () Bool)

(assert (=> d!872964 m!3452009))

(declare-fun m!3452011 () Bool)

(assert (=> d!872964 m!3452011))

(declare-fun m!3452013 () Bool)

(assert (=> d!872964 m!3452013))

(assert (=> d!872964 m!3452013))

(assert (=> d!872964 m!3452011))

(declare-fun m!3452015 () Bool)

(assert (=> d!872964 m!3452015))

(declare-fun m!3452017 () Bool)

(assert (=> d!872964 m!3452017))

(assert (=> b!3192681 m!3452009))

(declare-fun m!3452019 () Bool)

(assert (=> b!3192683 m!3452019))

(declare-fun m!3452021 () Bool)

(assert (=> b!3192683 m!3452021))

(declare-fun m!3452023 () Bool)

(assert (=> b!3192683 m!3452023))

(declare-fun m!3452025 () Bool)

(assert (=> b!3192683 m!3452025))

(assert (=> b!3192683 m!3452019))

(declare-fun m!3452027 () Bool)

(assert (=> b!3192683 m!3452027))

(assert (=> b!3192683 m!3452027))

(assert (=> b!3192683 m!3452023))

(declare-fun m!3452029 () Bool)

(assert (=> b!3192683 m!3452029))

(declare-fun m!3452031 () Bool)

(assert (=> b!3192683 m!3452031))

(declare-fun m!3452033 () Bool)

(assert (=> b!3192683 m!3452033))

(declare-fun m!3452035 () Bool)

(assert (=> b!3192683 m!3452035))

(assert (=> b!3192683 m!3452031))

(declare-fun m!3452037 () Bool)

(assert (=> b!3192683 m!3452037))

(declare-fun m!3452039 () Bool)

(assert (=> b!3192683 m!3452039))

(assert (=> b!3192683 m!3452025))

(declare-fun m!3452041 () Bool)

(assert (=> b!3192683 m!3452041))

(assert (=> b!3192683 m!3452005))

(assert (=> b!3192466 d!872964))

(declare-fun d!872966 () Bool)

(declare-fun e!1990177 () Bool)

(assert (=> d!872966 e!1990177))

(declare-fun res!1298804 () Bool)

(assert (=> d!872966 (=> (not res!1298804) (not e!1990177))))

(declare-fun lt!1075396 () BalanceConc!21058)

(assert (=> d!872966 (= res!1298804 (= (list!12776 lt!1075396) (Cons!35964 (h!41384 tokens!494) Nil!35964)))))

(declare-fun singleton!983 (Token!9712) BalanceConc!21058)

(assert (=> d!872966 (= lt!1075396 (singleton!983 (h!41384 tokens!494)))))

(assert (=> d!872966 (= (singletonSeq!2269 (h!41384 tokens!494)) lt!1075396)))

(declare-fun b!3192686 () Bool)

(declare-fun isBalanced!3196 (Conc!10722) Bool)

(assert (=> b!3192686 (= e!1990177 (isBalanced!3196 (c!535940 lt!1075396)))))

(assert (= (and d!872966 res!1298804) b!3192686))

(declare-fun m!3452043 () Bool)

(assert (=> d!872966 m!3452043))

(declare-fun m!3452045 () Bool)

(assert (=> d!872966 m!3452045))

(declare-fun m!3452047 () Bool)

(assert (=> b!3192686 m!3452047))

(assert (=> b!3192466 d!872966))

(declare-fun d!872968 () Bool)

(declare-fun c!535970 () Bool)

(assert (=> d!872968 (= c!535970 (is-Cons!35964 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))

(declare-fun e!1990180 () List!36087)

(assert (=> d!872968 (= (printList!1312 thiss!18206 (Cons!35964 (h!41384 tokens!494) Nil!35964)) e!1990180)))

(declare-fun b!3192691 () Bool)

(declare-fun ++!8604 (List!36087 List!36087) List!36087)

(assert (=> b!3192691 (= e!1990180 (++!8604 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))) (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))))

(declare-fun b!3192692 () Bool)

(assert (=> b!3192692 (= e!1990180 Nil!35963)))

(assert (= (and d!872968 c!535970) b!3192691))

(assert (= (and d!872968 (not c!535970)) b!3192692))

(declare-fun m!3452049 () Bool)

(assert (=> b!3192691 m!3452049))

(assert (=> b!3192691 m!3452049))

(declare-fun m!3452051 () Bool)

(assert (=> b!3192691 m!3452051))

(declare-fun m!3452053 () Bool)

(assert (=> b!3192691 m!3452053))

(assert (=> b!3192691 m!3452051))

(assert (=> b!3192691 m!3452053))

(declare-fun m!3452055 () Bool)

(assert (=> b!3192691 m!3452055))

(assert (=> b!3192466 d!872968))

(declare-fun d!872970 () Bool)

(assert (=> d!872970 (= (inv!48805 (tag!5691 (rule!7605 (h!41384 tokens!494)))) (= (mod (str.len (value!167891 (tag!5691 (rule!7605 (h!41384 tokens!494))))) 2) 0))))

(assert (=> b!3192477 d!872970))

(declare-fun d!872972 () Bool)

(declare-fun res!1298805 () Bool)

(declare-fun e!1990181 () Bool)

(assert (=> d!872972 (=> (not res!1298805) (not e!1990181))))

(assert (=> d!872972 (= res!1298805 (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))))))

(assert (=> d!872972 (= (inv!48808 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) e!1990181)))

(declare-fun b!3192693 () Bool)

(assert (=> b!3192693 (= e!1990181 (equivClasses!2043 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))))))

(assert (= (and d!872972 res!1298805) b!3192693))

(declare-fun m!3452057 () Bool)

(assert (=> d!872972 m!3452057))

(declare-fun m!3452059 () Bool)

(assert (=> b!3192693 m!3452059))

(assert (=> b!3192477 d!872972))

(declare-fun d!872974 () Bool)

(assert (=> d!872974 (= (isEmpty!20067 rules!2135) (is-Nil!35965 rules!2135))))

(assert (=> b!3192476 d!872974))

(declare-fun lt!1075399 () Bool)

(declare-fun d!872976 () Bool)

(declare-fun isEmpty!20072 (List!36088) Bool)

(assert (=> d!872976 (= lt!1075399 (isEmpty!20072 (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(declare-fun isEmpty!20073 (Conc!10722) Bool)

(assert (=> d!872976 (= lt!1075399 (isEmpty!20073 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(assert (=> d!872976 (= (isEmpty!20066 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)))) lt!1075399)))

(declare-fun bs!540340 () Bool)

(assert (= bs!540340 d!872976))

(declare-fun m!3452061 () Bool)

(assert (=> bs!540340 m!3452061))

(assert (=> bs!540340 m!3452061))

(declare-fun m!3452063 () Bool)

(assert (=> bs!540340 m!3452063))

(declare-fun m!3452065 () Bool)

(assert (=> bs!540340 m!3452065))

(assert (=> b!3192465 d!872976))

(declare-fun b!3192745 () Bool)

(declare-fun e!1990218 () Bool)

(declare-fun lt!1075406 () tuple2!35330)

(declare-datatypes ((tuple2!35334 0))(
  ( (tuple2!35335 (_1!20801 List!36088) (_2!20801 List!36087)) )
))
(declare-fun lexList!1302 (LexerInterface!4762 List!36089 List!36087) tuple2!35334)

(assert (=> b!3192745 (= e!1990218 (= (list!12774 (_2!20799 lt!1075406)) (_2!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (seqFromList!3417 lt!1075299))))))))

(declare-fun d!872978 () Bool)

(assert (=> d!872978 e!1990218))

(declare-fun res!1298833 () Bool)

(assert (=> d!872978 (=> (not res!1298833) (not e!1990218))))

(declare-fun e!1990219 () Bool)

(assert (=> d!872978 (= res!1298833 e!1990219)))

(declare-fun c!535975 () Bool)

(assert (=> d!872978 (= c!535975 (> (size!27098 (_1!20799 lt!1075406)) 0))))

(declare-fun lexTailRecV2!922 (LexerInterface!4762 List!36089 BalanceConc!21056 BalanceConc!21056 BalanceConc!21056 BalanceConc!21058) tuple2!35330)

(assert (=> d!872978 (= lt!1075406 (lexTailRecV2!922 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299) (BalanceConc!21057 Empty!10721) (seqFromList!3417 lt!1075299) (BalanceConc!21059 Empty!10722)))))

(assert (=> d!872978 (= (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)) lt!1075406)))

(declare-fun b!3192746 () Bool)

(declare-fun e!1990220 () Bool)

(assert (=> b!3192746 (= e!1990220 (not (isEmpty!20066 (_1!20799 lt!1075406))))))

(declare-fun b!3192747 () Bool)

(declare-fun res!1298831 () Bool)

(assert (=> b!3192747 (=> (not res!1298831) (not e!1990218))))

(assert (=> b!3192747 (= res!1298831 (= (list!12776 (_1!20799 lt!1075406)) (_1!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (seqFromList!3417 lt!1075299))))))))

(declare-fun b!3192748 () Bool)

(assert (=> b!3192748 (= e!1990219 e!1990220)))

(declare-fun res!1298832 () Bool)

(declare-fun size!27100 (BalanceConc!21056) Int)

(assert (=> b!3192748 (= res!1298832 (< (size!27100 (_2!20799 lt!1075406)) (size!27100 (seqFromList!3417 lt!1075299))))))

(assert (=> b!3192748 (=> (not res!1298832) (not e!1990220))))

(declare-fun b!3192749 () Bool)

(assert (=> b!3192749 (= e!1990219 (= (_2!20799 lt!1075406) (seqFromList!3417 lt!1075299)))))

(assert (= (and d!872978 c!535975) b!3192748))

(assert (= (and d!872978 (not c!535975)) b!3192749))

(assert (= (and b!3192748 res!1298832) b!3192746))

(assert (= (and d!872978 res!1298833) b!3192747))

(assert (= (and b!3192747 res!1298831) b!3192745))

(declare-fun m!3452103 () Bool)

(assert (=> b!3192746 m!3452103))

(declare-fun m!3452105 () Bool)

(assert (=> d!872978 m!3452105))

(assert (=> d!872978 m!3451755))

(assert (=> d!872978 m!3451755))

(declare-fun m!3452107 () Bool)

(assert (=> d!872978 m!3452107))

(declare-fun m!3452109 () Bool)

(assert (=> b!3192747 m!3452109))

(assert (=> b!3192747 m!3451755))

(declare-fun m!3452111 () Bool)

(assert (=> b!3192747 m!3452111))

(assert (=> b!3192747 m!3452111))

(declare-fun m!3452113 () Bool)

(assert (=> b!3192747 m!3452113))

(declare-fun m!3452115 () Bool)

(assert (=> b!3192748 m!3452115))

(assert (=> b!3192748 m!3451755))

(declare-fun m!3452117 () Bool)

(assert (=> b!3192748 m!3452117))

(declare-fun m!3452119 () Bool)

(assert (=> b!3192745 m!3452119))

(assert (=> b!3192745 m!3451755))

(assert (=> b!3192745 m!3452111))

(assert (=> b!3192745 m!3452111))

(assert (=> b!3192745 m!3452113))

(assert (=> b!3192465 d!872978))

(declare-fun d!872992 () Bool)

(declare-fun fromListB!1520 (List!36087) BalanceConc!21056)

(assert (=> d!872992 (= (seqFromList!3417 lt!1075299) (fromListB!1520 lt!1075299))))

(declare-fun bs!540343 () Bool)

(assert (= bs!540343 d!872992))

(declare-fun m!3452121 () Bool)

(assert (=> bs!540343 m!3452121))

(assert (=> b!3192465 d!872992))

(declare-fun d!872994 () Bool)

(assert (=> d!872994 (= (list!12774 (charsOf!3189 (h!41384 tokens!494))) (list!12777 (c!535939 (charsOf!3189 (h!41384 tokens!494)))))))

(declare-fun bs!540344 () Bool)

(assert (= bs!540344 d!872994))

(declare-fun m!3452123 () Bool)

(assert (=> bs!540344 m!3452123))

(assert (=> b!3192464 d!872994))

(declare-fun d!872996 () Bool)

(declare-fun lt!1075409 () BalanceConc!21056)

(assert (=> d!872996 (= (list!12774 lt!1075409) (originalCharacters!5887 (h!41384 tokens!494)))))

(assert (=> d!872996 (= lt!1075409 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))

(assert (=> d!872996 (= (charsOf!3189 (h!41384 tokens!494)) lt!1075409)))

(declare-fun b_lambda!87081 () Bool)

(assert (=> (not b_lambda!87081) (not d!872996)))

(assert (=> d!872996 t!236323))

(declare-fun b_and!211717 () Bool)

(assert (= b_and!211705 (and (=> t!236323 result!198180) b_and!211717)))

(assert (=> d!872996 t!236325))

(declare-fun b_and!211719 () Bool)

(assert (= b_and!211707 (and (=> t!236325 result!198184) b_and!211719)))

(assert (=> d!872996 t!236327))

(declare-fun b_and!211721 () Bool)

(assert (= b_and!211709 (and (=> t!236327 result!198186) b_and!211721)))

(declare-fun m!3452125 () Bool)

(assert (=> d!872996 m!3452125))

(assert (=> d!872996 m!3451869))

(assert (=> b!3192464 d!872996))

(declare-fun d!872998 () Bool)

(declare-fun res!1298838 () Bool)

(declare-fun e!1990225 () Bool)

(assert (=> d!872998 (=> res!1298838 e!1990225)))

(assert (=> d!872998 (= res!1298838 (not (is-Cons!35965 rules!2135)))))

(assert (=> d!872998 (= (sepAndNonSepRulesDisjointChars!1367 rules!2135 rules!2135) e!1990225)))

(declare-fun b!3192754 () Bool)

(declare-fun e!1990226 () Bool)

(assert (=> b!3192754 (= e!1990225 e!1990226)))

(declare-fun res!1298839 () Bool)

(assert (=> b!3192754 (=> (not res!1298839) (not e!1990226))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!580 (Rule!10146 List!36089) Bool)

(assert (=> b!3192754 (= res!1298839 (ruleDisjointCharsFromAllFromOtherType!580 (h!41385 rules!2135) rules!2135))))

(declare-fun b!3192755 () Bool)

(assert (=> b!3192755 (= e!1990226 (sepAndNonSepRulesDisjointChars!1367 rules!2135 (t!236312 rules!2135)))))

(assert (= (and d!872998 (not res!1298838)) b!3192754))

(assert (= (and b!3192754 res!1298839) b!3192755))

(declare-fun m!3452127 () Bool)

(assert (=> b!3192754 m!3452127))

(declare-fun m!3452129 () Bool)

(assert (=> b!3192755 m!3452129))

(assert (=> b!3192463 d!872998))

(declare-fun d!873000 () Bool)

(assert (=> d!873000 (= (inv!48805 (tag!5691 (rule!7605 separatorToken!241))) (= (mod (str.len (value!167891 (tag!5691 (rule!7605 separatorToken!241)))) 2) 0))))

(assert (=> b!3192462 d!873000))

(declare-fun d!873002 () Bool)

(declare-fun res!1298840 () Bool)

(declare-fun e!1990227 () Bool)

(assert (=> d!873002 (=> (not res!1298840) (not e!1990227))))

(assert (=> d!873002 (= res!1298840 (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))))))

(assert (=> d!873002 (= (inv!48808 (transformation!5173 (rule!7605 separatorToken!241))) e!1990227)))

(declare-fun b!3192756 () Bool)

(assert (=> b!3192756 (= e!1990227 (equivClasses!2043 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))))))

(assert (= (and d!873002 res!1298840) b!3192756))

(declare-fun m!3452131 () Bool)

(assert (=> d!873002 m!3452131))

(declare-fun m!3452133 () Bool)

(assert (=> b!3192756 m!3452133))

(assert (=> b!3192462 d!873002))

(declare-fun b!3192770 () Bool)

(declare-fun e!1990230 () Bool)

(declare-fun tp!1009544 () Bool)

(declare-fun tp!1009548 () Bool)

(assert (=> b!3192770 (= e!1990230 (and tp!1009544 tp!1009548))))

(declare-fun b!3192768 () Bool)

(declare-fun tp!1009545 () Bool)

(declare-fun tp!1009546 () Bool)

(assert (=> b!3192768 (= e!1990230 (and tp!1009545 tp!1009546))))

(assert (=> b!3192477 (= tp!1009484 e!1990230)))

(declare-fun b!3192767 () Bool)

(declare-fun tp_is_empty!17275 () Bool)

(assert (=> b!3192767 (= e!1990230 tp_is_empty!17275)))

(declare-fun b!3192769 () Bool)

(declare-fun tp!1009547 () Bool)

(assert (=> b!3192769 (= e!1990230 tp!1009547)))

(assert (= (and b!3192477 (is-ElementMatch!9932 (regex!5173 (rule!7605 (h!41384 tokens!494))))) b!3192767))

(assert (= (and b!3192477 (is-Concat!15335 (regex!5173 (rule!7605 (h!41384 tokens!494))))) b!3192768))

(assert (= (and b!3192477 (is-Star!9932 (regex!5173 (rule!7605 (h!41384 tokens!494))))) b!3192769))

(assert (= (and b!3192477 (is-Union!9932 (regex!5173 (rule!7605 (h!41384 tokens!494))))) b!3192770))

(declare-fun b!3192784 () Bool)

(declare-fun b_free!84653 () Bool)

(declare-fun b_next!85357 () Bool)

(assert (=> b!3192784 (= b_free!84653 (not b_next!85357))))

(declare-fun tp!1009561 () Bool)

(declare-fun b_and!211723 () Bool)

(assert (=> b!3192784 (= tp!1009561 b_and!211723)))

(declare-fun b_free!84655 () Bool)

(declare-fun b_next!85359 () Bool)

(assert (=> b!3192784 (= b_free!84655 (not b_next!85359))))

(declare-fun t!236351 () Bool)

(declare-fun tb!155993 () Bool)

(assert (=> (and b!3192784 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236351) tb!155993))

(declare-fun result!198206 () Bool)

(assert (= result!198206 result!198180))

(assert (=> b!3192587 t!236351))

(declare-fun tb!155995 () Bool)

(declare-fun t!236353 () Bool)

(assert (=> (and b!3192784 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236353) tb!155995))

(declare-fun result!198208 () Bool)

(assert (= result!198208 result!198188))

(assert (=> b!3192672 t!236353))

(assert (=> d!872996 t!236351))

(declare-fun tp!1009563 () Bool)

(declare-fun b_and!211725 () Bool)

(assert (=> b!3192784 (= tp!1009563 (and (=> t!236351 result!198206) (=> t!236353 result!198208) b_and!211725))))

(declare-fun tp!1009559 () Bool)

(declare-fun b!3192782 () Bool)

(declare-fun e!1990245 () Bool)

(declare-fun e!1990244 () Bool)

(assert (=> b!3192782 (= e!1990244 (and (inv!21 (value!167892 (h!41384 (t!236311 tokens!494)))) e!1990245 tp!1009559))))

(declare-fun e!1990247 () Bool)

(assert (=> b!3192784 (= e!1990247 (and tp!1009561 tp!1009563))))

(declare-fun tp!1009560 () Bool)

(declare-fun b!3192783 () Bool)

(assert (=> b!3192783 (= e!1990245 (and tp!1009560 (inv!48805 (tag!5691 (rule!7605 (h!41384 (t!236311 tokens!494))))) (inv!48808 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) e!1990247))))

(declare-fun e!1990246 () Bool)

(assert (=> b!3192471 (= tp!1009479 e!1990246)))

(declare-fun tp!1009562 () Bool)

(declare-fun b!3192781 () Bool)

(assert (=> b!3192781 (= e!1990246 (and (inv!48809 (h!41384 (t!236311 tokens!494))) e!1990244 tp!1009562))))

(assert (= b!3192783 b!3192784))

(assert (= b!3192782 b!3192783))

(assert (= b!3192781 b!3192782))

(assert (= (and b!3192471 (is-Cons!35964 (t!236311 tokens!494))) b!3192781))

(declare-fun m!3452135 () Bool)

(assert (=> b!3192782 m!3452135))

(declare-fun m!3452137 () Bool)

(assert (=> b!3192783 m!3452137))

(declare-fun m!3452139 () Bool)

(assert (=> b!3192783 m!3452139))

(declare-fun m!3452141 () Bool)

(assert (=> b!3192781 m!3452141))

(declare-fun b!3192789 () Bool)

(declare-fun e!1990251 () Bool)

(declare-fun tp!1009566 () Bool)

(assert (=> b!3192789 (= e!1990251 (and tp_is_empty!17275 tp!1009566))))

(assert (=> b!3192459 (= tp!1009477 e!1990251)))

(assert (= (and b!3192459 (is-Cons!35963 (originalCharacters!5887 (h!41384 tokens!494)))) b!3192789))

(declare-fun b!3192793 () Bool)

(declare-fun e!1990252 () Bool)

(declare-fun tp!1009567 () Bool)

(declare-fun tp!1009571 () Bool)

(assert (=> b!3192793 (= e!1990252 (and tp!1009567 tp!1009571))))

(declare-fun b!3192791 () Bool)

(declare-fun tp!1009568 () Bool)

(declare-fun tp!1009569 () Bool)

(assert (=> b!3192791 (= e!1990252 (and tp!1009568 tp!1009569))))

(assert (=> b!3192458 (= tp!1009483 e!1990252)))

(declare-fun b!3192790 () Bool)

(assert (=> b!3192790 (= e!1990252 tp_is_empty!17275)))

(declare-fun b!3192792 () Bool)

(declare-fun tp!1009570 () Bool)

(assert (=> b!3192792 (= e!1990252 tp!1009570)))

(assert (= (and b!3192458 (is-ElementMatch!9932 (regex!5173 (h!41385 rules!2135)))) b!3192790))

(assert (= (and b!3192458 (is-Concat!15335 (regex!5173 (h!41385 rules!2135)))) b!3192791))

(assert (= (and b!3192458 (is-Star!9932 (regex!5173 (h!41385 rules!2135)))) b!3192792))

(assert (= (and b!3192458 (is-Union!9932 (regex!5173 (h!41385 rules!2135)))) b!3192793))

(declare-fun b!3192794 () Bool)

(declare-fun e!1990253 () Bool)

(declare-fun tp!1009572 () Bool)

(assert (=> b!3192794 (= e!1990253 (and tp_is_empty!17275 tp!1009572))))

(assert (=> b!3192469 (= tp!1009482 e!1990253)))

(assert (= (and b!3192469 (is-Cons!35963 (originalCharacters!5887 separatorToken!241))) b!3192794))

(declare-fun b!3192798 () Bool)

(declare-fun e!1990254 () Bool)

(declare-fun tp!1009573 () Bool)

(declare-fun tp!1009577 () Bool)

(assert (=> b!3192798 (= e!1990254 (and tp!1009573 tp!1009577))))

(declare-fun b!3192796 () Bool)

(declare-fun tp!1009574 () Bool)

(declare-fun tp!1009575 () Bool)

(assert (=> b!3192796 (= e!1990254 (and tp!1009574 tp!1009575))))

(assert (=> b!3192462 (= tp!1009485 e!1990254)))

(declare-fun b!3192795 () Bool)

(assert (=> b!3192795 (= e!1990254 tp_is_empty!17275)))

(declare-fun b!3192797 () Bool)

(declare-fun tp!1009576 () Bool)

(assert (=> b!3192797 (= e!1990254 tp!1009576)))

(assert (= (and b!3192462 (is-ElementMatch!9932 (regex!5173 (rule!7605 separatorToken!241)))) b!3192795))

(assert (= (and b!3192462 (is-Concat!15335 (regex!5173 (rule!7605 separatorToken!241)))) b!3192796))

(assert (= (and b!3192462 (is-Star!9932 (regex!5173 (rule!7605 separatorToken!241)))) b!3192797))

(assert (= (and b!3192462 (is-Union!9932 (regex!5173 (rule!7605 separatorToken!241)))) b!3192798))

(declare-fun b!3192809 () Bool)

(declare-fun b_free!84657 () Bool)

(declare-fun b_next!85361 () Bool)

(assert (=> b!3192809 (= b_free!84657 (not b_next!85361))))

(declare-fun tp!1009586 () Bool)

(declare-fun b_and!211727 () Bool)

(assert (=> b!3192809 (= tp!1009586 b_and!211727)))

(declare-fun b_free!84659 () Bool)

(declare-fun b_next!85363 () Bool)

(assert (=> b!3192809 (= b_free!84659 (not b_next!85363))))

(declare-fun tb!155997 () Bool)

(declare-fun t!236355 () Bool)

(assert (=> (and b!3192809 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236355) tb!155997))

(declare-fun result!198214 () Bool)

(assert (= result!198214 result!198180))

(assert (=> b!3192587 t!236355))

(declare-fun tb!155999 () Bool)

(declare-fun t!236357 () Bool)

(assert (=> (and b!3192809 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236357) tb!155999))

(declare-fun result!198216 () Bool)

(assert (= result!198216 result!198188))

(assert (=> b!3192672 t!236357))

(assert (=> d!872996 t!236355))

(declare-fun b_and!211729 () Bool)

(declare-fun tp!1009587 () Bool)

(assert (=> b!3192809 (= tp!1009587 (and (=> t!236355 result!198214) (=> t!236357 result!198216) b_and!211729))))

(declare-fun e!1990265 () Bool)

(assert (=> b!3192809 (= e!1990265 (and tp!1009586 tp!1009587))))

(declare-fun tp!1009589 () Bool)

(declare-fun e!1990264 () Bool)

(declare-fun b!3192808 () Bool)

(assert (=> b!3192808 (= e!1990264 (and tp!1009589 (inv!48805 (tag!5691 (h!41385 (t!236312 rules!2135)))) (inv!48808 (transformation!5173 (h!41385 (t!236312 rules!2135)))) e!1990265))))

(declare-fun b!3192807 () Bool)

(declare-fun e!1990263 () Bool)

(declare-fun tp!1009588 () Bool)

(assert (=> b!3192807 (= e!1990263 (and e!1990264 tp!1009588))))

(assert (=> b!3192473 (= tp!1009481 e!1990263)))

(assert (= b!3192808 b!3192809))

(assert (= b!3192807 b!3192808))

(assert (= (and b!3192473 (is-Cons!35965 (t!236312 rules!2135))) b!3192807))

(declare-fun m!3452143 () Bool)

(assert (=> b!3192808 m!3452143))

(declare-fun m!3452145 () Bool)

(assert (=> b!3192808 m!3452145))

(declare-fun b_lambda!87083 () Bool)

(assert (= b_lambda!87067 (or b!3192457 b_lambda!87083)))

(declare-fun bs!540345 () Bool)

(declare-fun d!873004 () Bool)

(assert (= bs!540345 (and d!873004 b!3192457)))

(assert (=> bs!540345 (= (dynLambda!14484 lambda!116828 (h!41384 tokens!494)) (not (isSeparator!5173 (rule!7605 (h!41384 tokens!494)))))))

(assert (=> b!3192572 d!873004))

(declare-fun b_lambda!87085 () Bool)

(assert (= b_lambda!87081 (or (and b!3192480 b_free!84635 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192467 b_free!84639) (and b!3192809 b_free!84659 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192784 b_free!84655 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192475 b_free!84631 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) b_lambda!87085)))

(declare-fun b_lambda!87087 () Bool)

(assert (= b_lambda!87073 (or (and b!3192467 b_free!84639 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))))) (and b!3192784 b_free!84655 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))))) (and b!3192475 b_free!84631 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))))) (and b!3192809 b_free!84659 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))))) (and b!3192480 b_free!84635) b_lambda!87087)))

(declare-fun b_lambda!87089 () Bool)

(assert (= b_lambda!87069 (or b!3192457 b_lambda!87089)))

(assert (=> d!872924 d!873004))

(declare-fun b_lambda!87091 () Bool)

(assert (= b_lambda!87071 (or (and b!3192480 b_free!84635 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192467 b_free!84639) (and b!3192809 b_free!84659 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192784 b_free!84655 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) (and b!3192475 b_free!84631 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))))) b_lambda!87091)))

(push 1)

(assert (not b!3192567))

(assert (not b!3192681))

(assert (not b!3192683))

(assert (not d!872944))

(assert (not d!872966))

(assert b_and!211683)

(assert (not b!3192566))

(assert (not d!872928))

(assert (not b!3192769))

(assert (not b!3192792))

(assert (not b_next!85335))

(assert (not b_next!85357))

(assert (not b!3192747))

(assert (not b!3192686))

(assert (not b!3192565))

(assert b_and!211729)

(assert (not b!3192613))

(assert (not b!3192593))

(assert (not b!3192588))

(assert (not b!3192798))

(assert (not b!3192618))

(assert (not b!3192768))

(assert (not b!3192671))

(assert (not d!872976))

(assert (not b!3192617))

(assert (not b!3192781))

(assert (not d!872964))

(assert (not b!3192796))

(assert (not b_next!85337))

(assert (not b!3192745))

(assert (not d!872972))

(assert (not d!872960))

(assert (not d!872994))

(assert (not b_next!85361))

(assert (not b!3192791))

(assert (not b!3192797))

(assert (not b!3192808))

(assert b_and!211719)

(assert b_and!211717)

(assert b_and!211725)

(assert (not d!873002))

(assert (not b!3192756))

(assert (not b!3192789))

(assert (not b!3192793))

(assert (not b!3192794))

(assert (not tb!155975))

(assert b_and!211723)

(assert (not b!3192582))

(assert (not b!3192655))

(assert (not b!3192670))

(assert (not b_lambda!87083))

(assert (not d!872978))

(assert (not d!872954))

(assert (not b!3192674))

(assert (not d!872996))

(assert (not b!3192783))

(assert (not tb!155981))

(assert (not d!872958))

(assert (not b!3192770))

(assert (not b_lambda!87089))

(assert (not b!3192672))

(assert b_and!211675)

(assert (not d!872942))

(assert (not d!872924))

(assert (not b_next!85363))

(assert (not b!3192573))

(assert (not b_next!85341))

(assert (not b!3192610))

(assert (not b!3192596))

(assert (not b_next!85333))

(assert (not b!3192664))

(assert (not b!3192754))

(assert (not d!872936))

(assert (not b_next!85359))

(assert (not b_lambda!87085))

(assert (not b!3192673))

(assert (not b!3192621))

(assert (not b!3192782))

(assert (not b_lambda!87087))

(assert (not b!3192748))

(assert (not b_next!85339))

(assert (not d!872962))

(assert (not b_lambda!87091))

(assert (not d!872916))

(assert (not b!3192755))

(assert (not b_next!85343))

(assert (not b!3192587))

(assert b_and!211721)

(assert b_and!211679)

(assert (not b!3192807))

(assert (not d!872956))

(assert (not d!872992))

(assert b_and!211727)

(assert (not b!3192746))

(assert (not b!3192628))

(assert (not b!3192622))

(assert (not d!872926))

(assert (not b!3192693))

(assert (not b!3192669))

(assert (not b!3192691))

(assert (not b!3192614))

(assert tp_is_empty!17275)

(check-sat)

(pop 1)

(push 1)

(assert b_and!211729)

(assert (not b_next!85337))

(assert (not b_next!85361))

(assert b_and!211719)

(assert b_and!211723)

(assert (not b_next!85341))

(assert (not b_next!85339))

(assert b_and!211683)

(assert (not b_next!85343))

(assert b_and!211727)

(assert (not b_next!85335))

(assert (not b_next!85357))

(assert b_and!211717)

(assert b_and!211725)

(assert b_and!211675)

(assert (not b_next!85363))

(assert (not b_next!85359))

(assert (not b_next!85333))

(assert b_and!211721)

(assert b_and!211679)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!873040 () Bool)

(declare-fun lt!1075429 () Bool)

(assert (=> d!873040 (= lt!1075429 (isEmpty!20071 (list!12774 (_2!20799 lt!1075368))))))

(declare-fun isEmpty!20078 (Conc!10721) Bool)

(assert (=> d!873040 (= lt!1075429 (isEmpty!20078 (c!535939 (_2!20799 lt!1075368))))))

(assert (=> d!873040 (= (isEmpty!20070 (_2!20799 lt!1075368)) lt!1075429)))

(declare-fun bs!540350 () Bool)

(assert (= bs!540350 d!873040))

(declare-fun m!3452255 () Bool)

(assert (=> bs!540350 m!3452255))

(assert (=> bs!540350 m!3452255))

(declare-fun m!3452257 () Bool)

(assert (=> bs!540350 m!3452257))

(declare-fun m!3452259 () Bool)

(assert (=> bs!540350 m!3452259))

(assert (=> b!3192670 d!873040))

(declare-fun d!873042 () Bool)

(assert (=> d!873042 (= (isEmpty!20071 (originalCharacters!5887 separatorToken!241)) (is-Nil!35963 (originalCharacters!5887 separatorToken!241)))))

(assert (=> d!872958 d!873042))

(declare-fun d!873044 () Bool)

(assert (=> d!873044 (= (isEmpty!20071 (originalCharacters!5887 (h!41384 tokens!494))) (is-Nil!35963 (originalCharacters!5887 (h!41384 tokens!494))))))

(assert (=> d!872926 d!873044))

(declare-fun d!873046 () Bool)

(declare-fun res!1298884 () Bool)

(declare-fun e!1990343 () Bool)

(assert (=> d!873046 (=> res!1298884 e!1990343)))

(assert (=> d!873046 (= res!1298884 (is-Nil!35965 rules!2135))))

(assert (=> d!873046 (= (noDuplicateTag!1900 thiss!18206 rules!2135 Nil!35970) e!1990343)))

(declare-fun b!3192911 () Bool)

(declare-fun e!1990344 () Bool)

(assert (=> b!3192911 (= e!1990343 e!1990344)))

(declare-fun res!1298885 () Bool)

(assert (=> b!3192911 (=> (not res!1298885) (not e!1990344))))

(declare-fun contains!6390 (List!36094 String!40351) Bool)

(assert (=> b!3192911 (= res!1298885 (not (contains!6390 Nil!35970 (tag!5691 (h!41385 rules!2135)))))))

(declare-fun b!3192912 () Bool)

(assert (=> b!3192912 (= e!1990344 (noDuplicateTag!1900 thiss!18206 (t!236312 rules!2135) (Cons!35970 (tag!5691 (h!41385 rules!2135)) Nil!35970)))))

(assert (= (and d!873046 (not res!1298884)) b!3192911))

(assert (= (and b!3192911 res!1298885) b!3192912))

(declare-fun m!3452261 () Bool)

(assert (=> b!3192911 m!3452261))

(declare-fun m!3452263 () Bool)

(assert (=> b!3192912 m!3452263))

(assert (=> b!3192596 d!873046))

(declare-fun d!873048 () Bool)

(assert (=> d!873048 true))

(declare-fun lambda!116848 () Int)

(declare-fun order!18295 () Int)

(declare-fun dynLambda!14494 (Int Int) Int)

(assert (=> d!873048 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (dynLambda!14494 order!18295 lambda!116848))))

(declare-fun Forall2!853 (Int) Bool)

(assert (=> d!873048 (= (equivClasses!2043 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (Forall2!853 lambda!116848))))

(declare-fun bs!540351 () Bool)

(assert (= bs!540351 d!873048))

(declare-fun m!3452265 () Bool)

(assert (=> bs!540351 m!3452265))

(assert (=> b!3192693 d!873048))

(declare-fun d!873050 () Bool)

(assert (=> d!873050 true))

(declare-fun lambda!116851 () Int)

(declare-fun order!18297 () Int)

(declare-fun dynLambda!14495 (Int Int) Int)

(assert (=> d!873050 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14495 order!18297 lambda!116851))))

(assert (=> d!873050 true))

(assert (=> d!873050 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14495 order!18297 lambda!116851))))

(declare-fun Forall!1256 (Int) Bool)

(assert (=> d!873050 (= (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (Forall!1256 lambda!116851))))

(declare-fun bs!540352 () Bool)

(assert (= bs!540352 d!873050))

(declare-fun m!3452267 () Bool)

(assert (=> bs!540352 m!3452267))

(assert (=> d!872936 d!873050))

(declare-fun d!873052 () Bool)

(assert (=> d!873052 (= (list!12774 lt!1075409) (list!12777 (c!535939 lt!1075409)))))

(declare-fun bs!540353 () Bool)

(assert (= bs!540353 d!873052))

(declare-fun m!3452269 () Bool)

(assert (=> bs!540353 m!3452269))

(assert (=> d!872996 d!873052))

(declare-fun lt!1075430 () Bool)

(declare-fun d!873054 () Bool)

(assert (=> d!873054 (= lt!1075430 (isEmpty!20071 (list!12774 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))))

(assert (=> d!873054 (= lt!1075430 (isEmpty!20078 (c!535939 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))))

(assert (=> d!873054 (= (isEmpty!20070 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))) lt!1075430)))

(declare-fun bs!540354 () Bool)

(assert (= bs!540354 d!873054))

(declare-fun m!3452271 () Bool)

(assert (=> bs!540354 m!3452271))

(assert (=> bs!540354 m!3452271))

(declare-fun m!3452273 () Bool)

(assert (=> bs!540354 m!3452273))

(declare-fun m!3452275 () Bool)

(assert (=> bs!540354 m!3452275))

(assert (=> b!3192567 d!873054))

(declare-fun e!1990347 () Bool)

(declare-fun lt!1075431 () tuple2!35330)

(declare-fun b!3192921 () Bool)

(assert (=> b!3192921 (= e!1990347 (= (list!12774 (_2!20799 lt!1075431)) (_2!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))))

(declare-fun d!873056 () Bool)

(assert (=> d!873056 e!1990347))

(declare-fun res!1298890 () Bool)

(assert (=> d!873056 (=> (not res!1298890) (not e!1990347))))

(declare-fun e!1990348 () Bool)

(assert (=> d!873056 (= res!1298890 e!1990348)))

(declare-fun c!535979 () Bool)

(assert (=> d!873056 (= c!535979 (> (size!27098 (_1!20799 lt!1075431)) 0))))

(assert (=> d!873056 (= lt!1075431 (lexTailRecV2!922 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)) (BalanceConc!21057 Empty!10721) (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)) (BalanceConc!21059 Empty!10722)))))

(assert (=> d!873056 (= (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))) lt!1075431)))

(declare-fun b!3192922 () Bool)

(declare-fun e!1990349 () Bool)

(assert (=> b!3192922 (= e!1990349 (not (isEmpty!20066 (_1!20799 lt!1075431))))))

(declare-fun b!3192923 () Bool)

(declare-fun res!1298888 () Bool)

(assert (=> b!3192923 (=> (not res!1298888) (not e!1990347))))

(assert (=> b!3192923 (= res!1298888 (= (list!12776 (_1!20799 lt!1075431)) (_1!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))))

(declare-fun b!3192924 () Bool)

(assert (=> b!3192924 (= e!1990348 e!1990349)))

(declare-fun res!1298889 () Bool)

(assert (=> b!3192924 (= res!1298889 (< (size!27100 (_2!20799 lt!1075431)) (size!27100 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))

(assert (=> b!3192924 (=> (not res!1298889) (not e!1990349))))

(declare-fun b!3192925 () Bool)

(assert (=> b!3192925 (= e!1990348 (= (_2!20799 lt!1075431) (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))))

(assert (= (and d!873056 c!535979) b!3192924))

(assert (= (and d!873056 (not c!535979)) b!3192925))

(assert (= (and b!3192924 res!1298889) b!3192922))

(assert (= (and d!873056 res!1298890) b!3192923))

(assert (= (and b!3192923 res!1298888) b!3192921))

(declare-fun m!3452277 () Bool)

(assert (=> b!3192922 m!3452277))

(declare-fun m!3452279 () Bool)

(assert (=> d!873056 m!3452279))

(assert (=> d!873056 m!3451845))

(assert (=> d!873056 m!3451845))

(declare-fun m!3452281 () Bool)

(assert (=> d!873056 m!3452281))

(declare-fun m!3452283 () Bool)

(assert (=> b!3192923 m!3452283))

(assert (=> b!3192923 m!3451845))

(declare-fun m!3452285 () Bool)

(assert (=> b!3192923 m!3452285))

(assert (=> b!3192923 m!3452285))

(declare-fun m!3452287 () Bool)

(assert (=> b!3192923 m!3452287))

(declare-fun m!3452289 () Bool)

(assert (=> b!3192924 m!3452289))

(assert (=> b!3192924 m!3451845))

(declare-fun m!3452291 () Bool)

(assert (=> b!3192924 m!3452291))

(declare-fun m!3452293 () Bool)

(assert (=> b!3192921 m!3452293))

(assert (=> b!3192921 m!3451845))

(assert (=> b!3192921 m!3452285))

(assert (=> b!3192921 m!3452285))

(assert (=> b!3192921 m!3452287))

(assert (=> b!3192567 d!873056))

(declare-fun d!873058 () Bool)

(declare-fun lt!1075432 () BalanceConc!21056)

(assert (=> d!873058 (= (list!12774 lt!1075432) (printList!1312 thiss!18206 (list!12776 (singletonSeq!2269 separatorToken!241))))))

(assert (=> d!873058 (= lt!1075432 (printTailRec!1259 thiss!18206 (singletonSeq!2269 separatorToken!241) 0 (BalanceConc!21057 Empty!10721)))))

(assert (=> d!873058 (= (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)) lt!1075432)))

(declare-fun bs!540355 () Bool)

(assert (= bs!540355 d!873058))

(declare-fun m!3452295 () Bool)

(assert (=> bs!540355 m!3452295))

(assert (=> bs!540355 m!3451837))

(assert (=> bs!540355 m!3451839))

(assert (=> bs!540355 m!3451839))

(declare-fun m!3452297 () Bool)

(assert (=> bs!540355 m!3452297))

(assert (=> bs!540355 m!3451837))

(declare-fun m!3452299 () Bool)

(assert (=> bs!540355 m!3452299))

(assert (=> b!3192567 d!873058))

(declare-fun d!873060 () Bool)

(declare-fun e!1990350 () Bool)

(assert (=> d!873060 e!1990350))

(declare-fun res!1298891 () Bool)

(assert (=> d!873060 (=> (not res!1298891) (not e!1990350))))

(declare-fun lt!1075433 () BalanceConc!21058)

(assert (=> d!873060 (= res!1298891 (= (list!12776 lt!1075433) (Cons!35964 separatorToken!241 Nil!35964)))))

(assert (=> d!873060 (= lt!1075433 (singleton!983 separatorToken!241))))

(assert (=> d!873060 (= (singletonSeq!2269 separatorToken!241) lt!1075433)))

(declare-fun b!3192926 () Bool)

(assert (=> b!3192926 (= e!1990350 (isBalanced!3196 (c!535940 lt!1075433)))))

(assert (= (and d!873060 res!1298891) b!3192926))

(declare-fun m!3452301 () Bool)

(assert (=> d!873060 m!3452301))

(declare-fun m!3452303 () Bool)

(assert (=> d!873060 m!3452303))

(declare-fun m!3452305 () Bool)

(assert (=> b!3192926 m!3452305))

(assert (=> b!3192567 d!873060))

(declare-fun b!3192945 () Bool)

(declare-fun e!1990365 () List!36088)

(declare-fun e!1990361 () List!36088)

(assert (=> b!3192945 (= e!1990365 e!1990361)))

(declare-fun c!535989 () Bool)

(assert (=> b!3192945 (= c!535989 (<= 0 0))))

(declare-fun b!3192946 () Bool)

(declare-fun e!1990362 () Bool)

(declare-fun lt!1075436 () List!36088)

(declare-fun e!1990364 () Int)

(declare-fun size!27104 (List!36088) Int)

(assert (=> b!3192946 (= e!1990362 (= (size!27104 lt!1075436) e!1990364))))

(declare-fun c!535988 () Bool)

(assert (=> b!3192946 (= c!535988 (<= 0 0))))

(declare-fun d!873062 () Bool)

(assert (=> d!873062 e!1990362))

(declare-fun res!1298894 () Bool)

(assert (=> d!873062 (=> (not res!1298894) (not e!1990362))))

(assert (=> d!873062 (= res!1298894 (set.subset (content!4859 lt!1075436) (content!4859 lt!1075389)))))

(assert (=> d!873062 (= lt!1075436 e!1990365)))

(declare-fun c!535990 () Bool)

(assert (=> d!873062 (= c!535990 (is-Nil!35964 lt!1075389))))

(assert (=> d!873062 (= (drop!1850 lt!1075389 0) lt!1075436)))

(declare-fun bm!231368 () Bool)

(declare-fun call!231373 () Int)

(assert (=> bm!231368 (= call!231373 (size!27104 lt!1075389))))

(declare-fun b!3192947 () Bool)

(assert (=> b!3192947 (= e!1990364 call!231373)))

(declare-fun b!3192948 () Bool)

(assert (=> b!3192948 (= e!1990365 Nil!35964)))

(declare-fun b!3192949 () Bool)

(declare-fun e!1990363 () Int)

(assert (=> b!3192949 (= e!1990363 (- call!231373 0))))

(declare-fun b!3192950 () Bool)

(assert (=> b!3192950 (= e!1990361 lt!1075389)))

(declare-fun b!3192951 () Bool)

(assert (=> b!3192951 (= e!1990364 e!1990363)))

(declare-fun c!535991 () Bool)

(assert (=> b!3192951 (= c!535991 (>= 0 call!231373))))

(declare-fun b!3192952 () Bool)

(assert (=> b!3192952 (= e!1990363 0)))

(declare-fun b!3192953 () Bool)

(assert (=> b!3192953 (= e!1990361 (drop!1850 (t!236311 lt!1075389) (- 0 1)))))

(assert (= (and d!873062 c!535990) b!3192948))

(assert (= (and d!873062 (not c!535990)) b!3192945))

(assert (= (and b!3192945 c!535989) b!3192950))

(assert (= (and b!3192945 (not c!535989)) b!3192953))

(assert (= (and d!873062 res!1298894) b!3192946))

(assert (= (and b!3192946 c!535988) b!3192947))

(assert (= (and b!3192946 (not c!535988)) b!3192951))

(assert (= (and b!3192951 c!535991) b!3192952))

(assert (= (and b!3192951 (not c!535991)) b!3192949))

(assert (= (or b!3192947 b!3192951 b!3192949) bm!231368))

(declare-fun m!3452307 () Bool)

(assert (=> b!3192946 m!3452307))

(declare-fun m!3452309 () Bool)

(assert (=> d!873062 m!3452309))

(declare-fun m!3452311 () Bool)

(assert (=> d!873062 m!3452311))

(declare-fun m!3452313 () Bool)

(assert (=> bm!231368 m!3452313))

(declare-fun m!3452315 () Bool)

(assert (=> b!3192953 m!3452315))

(assert (=> b!3192683 d!873062))

(declare-fun d!873064 () Bool)

(declare-fun lt!1075443 () BalanceConc!21056)

(assert (=> d!873064 (= (list!12774 lt!1075443) (printListTailRec!550 thiss!18206 (dropList!1067 lt!1075302 (+ 0 1)) (list!12774 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0))))))))

(declare-fun e!1990367 () BalanceConc!21056)

(assert (=> d!873064 (= lt!1075443 e!1990367)))

(declare-fun c!535992 () Bool)

(assert (=> d!873064 (= c!535992 (>= (+ 0 1) (size!27098 lt!1075302)))))

(declare-fun e!1990366 () Bool)

(assert (=> d!873064 e!1990366))

(declare-fun res!1298895 () Bool)

(assert (=> d!873064 (=> (not res!1298895) (not e!1990366))))

(assert (=> d!873064 (= res!1298895 (>= (+ 0 1) 0))))

(assert (=> d!873064 (= (printTailRec!1259 thiss!18206 lt!1075302 (+ 0 1) (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0)))) lt!1075443)))

(declare-fun b!3192954 () Bool)

(assert (=> b!3192954 (= e!1990366 (<= (+ 0 1) (size!27098 lt!1075302)))))

(declare-fun b!3192955 () Bool)

(assert (=> b!3192955 (= e!1990367 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0))))))

(declare-fun b!3192956 () Bool)

(assert (=> b!3192956 (= e!1990367 (printTailRec!1259 thiss!18206 lt!1075302 (+ 0 1 1) (++!8603 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0))) (charsOf!3189 (apply!8103 lt!1075302 (+ 0 1))))))))

(declare-fun lt!1075441 () List!36088)

(assert (=> b!3192956 (= lt!1075441 (list!12776 lt!1075302))))

(declare-fun lt!1075440 () Unit!50371)

(assert (=> b!3192956 (= lt!1075440 (lemmaDropApply!1026 lt!1075441 (+ 0 1)))))

(assert (=> b!3192956 (= (head!6998 (drop!1850 lt!1075441 (+ 0 1))) (apply!8104 lt!1075441 (+ 0 1)))))

(declare-fun lt!1075442 () Unit!50371)

(assert (=> b!3192956 (= lt!1075442 lt!1075440)))

(declare-fun lt!1075439 () List!36088)

(assert (=> b!3192956 (= lt!1075439 (list!12776 lt!1075302))))

(declare-fun lt!1075437 () Unit!50371)

(assert (=> b!3192956 (= lt!1075437 (lemmaDropTail!910 lt!1075439 (+ 0 1)))))

(assert (=> b!3192956 (= (tail!5192 (drop!1850 lt!1075439 (+ 0 1))) (drop!1850 lt!1075439 (+ 0 1 1)))))

(declare-fun lt!1075438 () Unit!50371)

(assert (=> b!3192956 (= lt!1075438 lt!1075437)))

(assert (= (and d!873064 res!1298895) b!3192954))

(assert (= (and d!873064 c!535992) b!3192955))

(assert (= (and d!873064 (not c!535992)) b!3192956))

(assert (=> d!873064 m!3452009))

(assert (=> d!873064 m!3452025))

(declare-fun m!3452317 () Bool)

(assert (=> d!873064 m!3452317))

(declare-fun m!3452319 () Bool)

(assert (=> d!873064 m!3452319))

(assert (=> d!873064 m!3452319))

(assert (=> d!873064 m!3452317))

(declare-fun m!3452321 () Bool)

(assert (=> d!873064 m!3452321))

(declare-fun m!3452323 () Bool)

(assert (=> d!873064 m!3452323))

(assert (=> b!3192954 m!3452009))

(declare-fun m!3452325 () Bool)

(assert (=> b!3192956 m!3452325))

(declare-fun m!3452327 () Bool)

(assert (=> b!3192956 m!3452327))

(assert (=> b!3192956 m!3452025))

(declare-fun m!3452329 () Bool)

(assert (=> b!3192956 m!3452329))

(declare-fun m!3452331 () Bool)

(assert (=> b!3192956 m!3452331))

(assert (=> b!3192956 m!3452325))

(declare-fun m!3452333 () Bool)

(assert (=> b!3192956 m!3452333))

(assert (=> b!3192956 m!3452333))

(assert (=> b!3192956 m!3452329))

(declare-fun m!3452335 () Bool)

(assert (=> b!3192956 m!3452335))

(declare-fun m!3452337 () Bool)

(assert (=> b!3192956 m!3452337))

(declare-fun m!3452339 () Bool)

(assert (=> b!3192956 m!3452339))

(declare-fun m!3452341 () Bool)

(assert (=> b!3192956 m!3452341))

(assert (=> b!3192956 m!3452337))

(declare-fun m!3452343 () Bool)

(assert (=> b!3192956 m!3452343))

(declare-fun m!3452345 () Bool)

(assert (=> b!3192956 m!3452345))

(assert (=> b!3192956 m!3452331))

(declare-fun m!3452347 () Bool)

(assert (=> b!3192956 m!3452347))

(assert (=> b!3192956 m!3452005))

(assert (=> b!3192683 d!873064))

(declare-fun d!873066 () Bool)

(declare-fun lt!1075444 () BalanceConc!21056)

(assert (=> d!873066 (= (list!12774 lt!1075444) (originalCharacters!5887 (apply!8103 lt!1075302 0)))))

(assert (=> d!873066 (= lt!1075444 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0)))) (value!167892 (apply!8103 lt!1075302 0))))))

(assert (=> d!873066 (= (charsOf!3189 (apply!8103 lt!1075302 0)) lt!1075444)))

(declare-fun b_lambda!87107 () Bool)

(assert (=> (not b_lambda!87107) (not d!873066)))

(declare-fun tb!156015 () Bool)

(declare-fun t!236376 () Bool)

(assert (=> (and b!3192809 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236376) tb!156015))

(declare-fun b!3192957 () Bool)

(declare-fun e!1990368 () Bool)

(declare-fun tp!1009647 () Bool)

(assert (=> b!3192957 (= e!1990368 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0)))) (value!167892 (apply!8103 lt!1075302 0))))) tp!1009647))))

(declare-fun result!198240 () Bool)

(assert (=> tb!156015 (= result!198240 (and (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0)))) (value!167892 (apply!8103 lt!1075302 0)))) e!1990368))))

(assert (= tb!156015 b!3192957))

(declare-fun m!3452349 () Bool)

(assert (=> b!3192957 m!3452349))

(declare-fun m!3452351 () Bool)

(assert (=> tb!156015 m!3452351))

(assert (=> d!873066 t!236376))

(declare-fun b_and!211751 () Bool)

(assert (= b_and!211729 (and (=> t!236376 result!198240) b_and!211751)))

(declare-fun t!236378 () Bool)

(declare-fun tb!156017 () Bool)

(assert (=> (and b!3192784 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236378) tb!156017))

(declare-fun result!198242 () Bool)

(assert (= result!198242 result!198240))

(assert (=> d!873066 t!236378))

(declare-fun b_and!211753 () Bool)

(assert (= b_and!211725 (and (=> t!236378 result!198242) b_and!211753)))

(declare-fun t!236380 () Bool)

(declare-fun tb!156019 () Bool)

(assert (=> (and b!3192467 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236380) tb!156019))

(declare-fun result!198244 () Bool)

(assert (= result!198244 result!198240))

(assert (=> d!873066 t!236380))

(declare-fun b_and!211755 () Bool)

(assert (= b_and!211721 (and (=> t!236380 result!198244) b_and!211755)))

(declare-fun tb!156021 () Bool)

(declare-fun t!236382 () Bool)

(assert (=> (and b!3192480 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236382) tb!156021))

(declare-fun result!198246 () Bool)

(assert (= result!198246 result!198240))

(assert (=> d!873066 t!236382))

(declare-fun b_and!211757 () Bool)

(assert (= b_and!211719 (and (=> t!236382 result!198246) b_and!211757)))

(declare-fun tb!156023 () Bool)

(declare-fun t!236384 () Bool)

(assert (=> (and b!3192475 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236384) tb!156023))

(declare-fun result!198248 () Bool)

(assert (= result!198248 result!198240))

(assert (=> d!873066 t!236384))

(declare-fun b_and!211759 () Bool)

(assert (= b_and!211717 (and (=> t!236384 result!198248) b_and!211759)))

(declare-fun m!3452353 () Bool)

(assert (=> d!873066 m!3452353))

(declare-fun m!3452355 () Bool)

(assert (=> d!873066 m!3452355))

(assert (=> b!3192683 d!873066))

(declare-fun b!3192966 () Bool)

(declare-fun res!1298907 () Bool)

(declare-fun e!1990371 () Bool)

(assert (=> b!3192966 (=> (not res!1298907) (not e!1990371))))

(declare-fun isBalanced!3198 (Conc!10721) Bool)

(declare-fun ++!8607 (Conc!10721 Conc!10721) Conc!10721)

(assert (=> b!3192966 (= res!1298907 (isBalanced!3198 (++!8607 (c!535939 (BalanceConc!21057 Empty!10721)) (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0))))))))

(declare-fun b!3192967 () Bool)

(declare-fun res!1298904 () Bool)

(assert (=> b!3192967 (=> (not res!1298904) (not e!1990371))))

(declare-fun height!1533 (Conc!10721) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3192967 (= res!1298904 (<= (height!1533 (++!8607 (c!535939 (BalanceConc!21057 Empty!10721)) (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0))))) (+ (max!0 (height!1533 (c!535939 (BalanceConc!21057 Empty!10721))) (height!1533 (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0))))) 1)))))

(declare-fun b!3192968 () Bool)

(declare-fun res!1298905 () Bool)

(assert (=> b!3192968 (=> (not res!1298905) (not e!1990371))))

(assert (=> b!3192968 (= res!1298905 (>= (height!1533 (++!8607 (c!535939 (BalanceConc!21057 Empty!10721)) (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0))))) (max!0 (height!1533 (c!535939 (BalanceConc!21057 Empty!10721))) (height!1533 (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0)))))))))

(declare-fun d!873068 () Bool)

(assert (=> d!873068 e!1990371))

(declare-fun res!1298906 () Bool)

(assert (=> d!873068 (=> (not res!1298906) (not e!1990371))))

(declare-fun appendAssocInst!722 (Conc!10721 Conc!10721) Bool)

(assert (=> d!873068 (= res!1298906 (appendAssocInst!722 (c!535939 (BalanceConc!21057 Empty!10721)) (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0)))))))

(declare-fun lt!1075447 () BalanceConc!21056)

(assert (=> d!873068 (= lt!1075447 (BalanceConc!21057 (++!8607 (c!535939 (BalanceConc!21057 Empty!10721)) (c!535939 (charsOf!3189 (apply!8103 lt!1075302 0))))))))

(assert (=> d!873068 (= (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (apply!8103 lt!1075302 0))) lt!1075447)))

(declare-fun b!3192969 () Bool)

(assert (=> b!3192969 (= e!1990371 (= (list!12774 lt!1075447) (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) (list!12774 (charsOf!3189 (apply!8103 lt!1075302 0))))))))

(assert (= (and d!873068 res!1298906) b!3192966))

(assert (= (and b!3192966 res!1298907) b!3192967))

(assert (= (and b!3192967 res!1298904) b!3192968))

(assert (= (and b!3192968 res!1298905) b!3192969))

(declare-fun m!3452357 () Bool)

(assert (=> b!3192966 m!3452357))

(assert (=> b!3192966 m!3452357))

(declare-fun m!3452359 () Bool)

(assert (=> b!3192966 m!3452359))

(declare-fun m!3452361 () Bool)

(assert (=> b!3192968 m!3452361))

(declare-fun m!3452363 () Bool)

(assert (=> b!3192968 m!3452363))

(declare-fun m!3452365 () Bool)

(assert (=> b!3192968 m!3452365))

(assert (=> b!3192968 m!3452363))

(assert (=> b!3192968 m!3452357))

(assert (=> b!3192968 m!3452361))

(assert (=> b!3192968 m!3452357))

(declare-fun m!3452367 () Bool)

(assert (=> b!3192968 m!3452367))

(declare-fun m!3452369 () Bool)

(assert (=> d!873068 m!3452369))

(assert (=> d!873068 m!3452357))

(declare-fun m!3452371 () Bool)

(assert (=> b!3192969 m!3452371))

(assert (=> b!3192969 m!3452011))

(assert (=> b!3192969 m!3452023))

(declare-fun m!3452373 () Bool)

(assert (=> b!3192969 m!3452373))

(assert (=> b!3192969 m!3452011))

(assert (=> b!3192969 m!3452373))

(declare-fun m!3452375 () Bool)

(assert (=> b!3192969 m!3452375))

(assert (=> b!3192967 m!3452361))

(assert (=> b!3192967 m!3452363))

(assert (=> b!3192967 m!3452365))

(assert (=> b!3192967 m!3452363))

(assert (=> b!3192967 m!3452357))

(assert (=> b!3192967 m!3452361))

(assert (=> b!3192967 m!3452357))

(assert (=> b!3192967 m!3452367))

(assert (=> b!3192683 d!873068))

(declare-fun d!873070 () Bool)

(declare-fun lt!1075450 () Token!9712)

(assert (=> d!873070 (= lt!1075450 (apply!8104 (list!12776 lt!1075302) 0))))

(declare-fun apply!8107 (Conc!10722 Int) Token!9712)

(assert (=> d!873070 (= lt!1075450 (apply!8107 (c!535940 lt!1075302) 0))))

(declare-fun e!1990374 () Bool)

(assert (=> d!873070 e!1990374))

(declare-fun res!1298910 () Bool)

(assert (=> d!873070 (=> (not res!1298910) (not e!1990374))))

(assert (=> d!873070 (= res!1298910 (<= 0 0))))

(assert (=> d!873070 (= (apply!8103 lt!1075302 0) lt!1075450)))

(declare-fun b!3192972 () Bool)

(assert (=> b!3192972 (= e!1990374 (< 0 (size!27098 lt!1075302)))))

(assert (= (and d!873070 res!1298910) b!3192972))

(assert (=> d!873070 m!3452005))

(assert (=> d!873070 m!3452005))

(declare-fun m!3452377 () Bool)

(assert (=> d!873070 m!3452377))

(declare-fun m!3452379 () Bool)

(assert (=> d!873070 m!3452379))

(assert (=> b!3192972 m!3452009))

(assert (=> b!3192683 d!873070))

(declare-fun d!873072 () Bool)

(assert (=> d!873072 (= (head!6998 (drop!1850 lt!1075391 0)) (apply!8104 lt!1075391 0))))

(declare-fun lt!1075453 () Unit!50371)

(declare-fun choose!18633 (List!36088 Int) Unit!50371)

(assert (=> d!873072 (= lt!1075453 (choose!18633 lt!1075391 0))))

(declare-fun e!1990377 () Bool)

(assert (=> d!873072 e!1990377))

(declare-fun res!1298913 () Bool)

(assert (=> d!873072 (=> (not res!1298913) (not e!1990377))))

(assert (=> d!873072 (= res!1298913 (>= 0 0))))

(assert (=> d!873072 (= (lemmaDropApply!1026 lt!1075391 0) lt!1075453)))

(declare-fun b!3192975 () Bool)

(assert (=> b!3192975 (= e!1990377 (< 0 (size!27104 lt!1075391)))))

(assert (= (and d!873072 res!1298913) b!3192975))

(assert (=> d!873072 m!3452031))

(assert (=> d!873072 m!3452031))

(assert (=> d!873072 m!3452033))

(assert (=> d!873072 m!3452039))

(declare-fun m!3452381 () Bool)

(assert (=> d!873072 m!3452381))

(declare-fun m!3452383 () Bool)

(assert (=> b!3192975 m!3452383))

(assert (=> b!3192683 d!873072))

(declare-fun d!873074 () Bool)

(declare-fun list!12780 (Conc!10722) List!36088)

(assert (=> d!873074 (= (list!12776 lt!1075302) (list!12780 (c!535940 lt!1075302)))))

(declare-fun bs!540356 () Bool)

(assert (= bs!540356 d!873074))

(declare-fun m!3452385 () Bool)

(assert (=> bs!540356 m!3452385))

(assert (=> b!3192683 d!873074))

(declare-fun d!873076 () Bool)

(assert (=> d!873076 (= (tail!5192 (drop!1850 lt!1075389 0)) (t!236311 (drop!1850 lt!1075389 0)))))

(assert (=> b!3192683 d!873076))

(declare-fun b!3192976 () Bool)

(declare-fun e!1990382 () List!36088)

(declare-fun e!1990378 () List!36088)

(assert (=> b!3192976 (= e!1990382 e!1990378)))

(declare-fun c!535997 () Bool)

(assert (=> b!3192976 (= c!535997 (<= (+ 0 1) 0))))

(declare-fun b!3192977 () Bool)

(declare-fun e!1990379 () Bool)

(declare-fun lt!1075454 () List!36088)

(declare-fun e!1990381 () Int)

(assert (=> b!3192977 (= e!1990379 (= (size!27104 lt!1075454) e!1990381))))

(declare-fun c!535996 () Bool)

(assert (=> b!3192977 (= c!535996 (<= (+ 0 1) 0))))

(declare-fun d!873078 () Bool)

(assert (=> d!873078 e!1990379))

(declare-fun res!1298914 () Bool)

(assert (=> d!873078 (=> (not res!1298914) (not e!1990379))))

(assert (=> d!873078 (= res!1298914 (set.subset (content!4859 lt!1075454) (content!4859 lt!1075389)))))

(assert (=> d!873078 (= lt!1075454 e!1990382)))

(declare-fun c!535998 () Bool)

(assert (=> d!873078 (= c!535998 (is-Nil!35964 lt!1075389))))

(assert (=> d!873078 (= (drop!1850 lt!1075389 (+ 0 1)) lt!1075454)))

(declare-fun bm!231369 () Bool)

(declare-fun call!231374 () Int)

(assert (=> bm!231369 (= call!231374 (size!27104 lt!1075389))))

(declare-fun b!3192978 () Bool)

(assert (=> b!3192978 (= e!1990381 call!231374)))

(declare-fun b!3192979 () Bool)

(assert (=> b!3192979 (= e!1990382 Nil!35964)))

(declare-fun b!3192980 () Bool)

(declare-fun e!1990380 () Int)

(assert (=> b!3192980 (= e!1990380 (- call!231374 (+ 0 1)))))

(declare-fun b!3192981 () Bool)

(assert (=> b!3192981 (= e!1990378 lt!1075389)))

(declare-fun b!3192982 () Bool)

(assert (=> b!3192982 (= e!1990381 e!1990380)))

(declare-fun c!535999 () Bool)

(assert (=> b!3192982 (= c!535999 (>= (+ 0 1) call!231374))))

(declare-fun b!3192983 () Bool)

(assert (=> b!3192983 (= e!1990380 0)))

(declare-fun b!3192984 () Bool)

(assert (=> b!3192984 (= e!1990378 (drop!1850 (t!236311 lt!1075389) (- (+ 0 1) 1)))))

(assert (= (and d!873078 c!535998) b!3192979))

(assert (= (and d!873078 (not c!535998)) b!3192976))

(assert (= (and b!3192976 c!535997) b!3192981))

(assert (= (and b!3192976 (not c!535997)) b!3192984))

(assert (= (and d!873078 res!1298914) b!3192977))

(assert (= (and b!3192977 c!535996) b!3192978))

(assert (= (and b!3192977 (not c!535996)) b!3192982))

(assert (= (and b!3192982 c!535999) b!3192983))

(assert (= (and b!3192982 (not c!535999)) b!3192980))

(assert (= (or b!3192978 b!3192982 b!3192980) bm!231369))

(declare-fun m!3452387 () Bool)

(assert (=> b!3192977 m!3452387))

(declare-fun m!3452389 () Bool)

(assert (=> d!873078 m!3452389))

(assert (=> d!873078 m!3452311))

(assert (=> bm!231369 m!3452313))

(declare-fun m!3452391 () Bool)

(assert (=> b!3192984 m!3452391))

(assert (=> b!3192683 d!873078))

(declare-fun b!3192985 () Bool)

(declare-fun e!1990387 () List!36088)

(declare-fun e!1990383 () List!36088)

(assert (=> b!3192985 (= e!1990387 e!1990383)))

(declare-fun c!536001 () Bool)

(assert (=> b!3192985 (= c!536001 (<= 0 0))))

(declare-fun b!3192986 () Bool)

(declare-fun e!1990384 () Bool)

(declare-fun lt!1075455 () List!36088)

(declare-fun e!1990386 () Int)

(assert (=> b!3192986 (= e!1990384 (= (size!27104 lt!1075455) e!1990386))))

(declare-fun c!536000 () Bool)

(assert (=> b!3192986 (= c!536000 (<= 0 0))))

(declare-fun d!873080 () Bool)

(assert (=> d!873080 e!1990384))

(declare-fun res!1298915 () Bool)

(assert (=> d!873080 (=> (not res!1298915) (not e!1990384))))

(assert (=> d!873080 (= res!1298915 (set.subset (content!4859 lt!1075455) (content!4859 lt!1075391)))))

(assert (=> d!873080 (= lt!1075455 e!1990387)))

(declare-fun c!536002 () Bool)

(assert (=> d!873080 (= c!536002 (is-Nil!35964 lt!1075391))))

(assert (=> d!873080 (= (drop!1850 lt!1075391 0) lt!1075455)))

(declare-fun bm!231370 () Bool)

(declare-fun call!231375 () Int)

(assert (=> bm!231370 (= call!231375 (size!27104 lt!1075391))))

(declare-fun b!3192987 () Bool)

(assert (=> b!3192987 (= e!1990386 call!231375)))

(declare-fun b!3192988 () Bool)

(assert (=> b!3192988 (= e!1990387 Nil!35964)))

(declare-fun b!3192989 () Bool)

(declare-fun e!1990385 () Int)

(assert (=> b!3192989 (= e!1990385 (- call!231375 0))))

(declare-fun b!3192990 () Bool)

(assert (=> b!3192990 (= e!1990383 lt!1075391)))

(declare-fun b!3192991 () Bool)

(assert (=> b!3192991 (= e!1990386 e!1990385)))

(declare-fun c!536003 () Bool)

(assert (=> b!3192991 (= c!536003 (>= 0 call!231375))))

(declare-fun b!3192992 () Bool)

(assert (=> b!3192992 (= e!1990385 0)))

(declare-fun b!3192993 () Bool)

(assert (=> b!3192993 (= e!1990383 (drop!1850 (t!236311 lt!1075391) (- 0 1)))))

(assert (= (and d!873080 c!536002) b!3192988))

(assert (= (and d!873080 (not c!536002)) b!3192985))

(assert (= (and b!3192985 c!536001) b!3192990))

(assert (= (and b!3192985 (not c!536001)) b!3192993))

(assert (= (and d!873080 res!1298915) b!3192986))

(assert (= (and b!3192986 c!536000) b!3192987))

(assert (= (and b!3192986 (not c!536000)) b!3192991))

(assert (= (and b!3192991 c!536003) b!3192992))

(assert (= (and b!3192991 (not c!536003)) b!3192989))

(assert (= (or b!3192987 b!3192991 b!3192989) bm!231370))

(declare-fun m!3452393 () Bool)

(assert (=> b!3192986 m!3452393))

(declare-fun m!3452395 () Bool)

(assert (=> d!873080 m!3452395))

(declare-fun m!3452397 () Bool)

(assert (=> d!873080 m!3452397))

(assert (=> bm!231370 m!3452383))

(declare-fun m!3452399 () Bool)

(assert (=> b!3192993 m!3452399))

(assert (=> b!3192683 d!873080))

(declare-fun d!873082 () Bool)

(declare-fun lt!1075458 () Token!9712)

(assert (=> d!873082 (contains!6388 lt!1075391 lt!1075458)))

(declare-fun e!1990393 () Token!9712)

(assert (=> d!873082 (= lt!1075458 e!1990393)))

(declare-fun c!536006 () Bool)

(assert (=> d!873082 (= c!536006 (= 0 0))))

(declare-fun e!1990392 () Bool)

(assert (=> d!873082 e!1990392))

(declare-fun res!1298918 () Bool)

(assert (=> d!873082 (=> (not res!1298918) (not e!1990392))))

(assert (=> d!873082 (= res!1298918 (<= 0 0))))

(assert (=> d!873082 (= (apply!8104 lt!1075391 0) lt!1075458)))

(declare-fun b!3193000 () Bool)

(assert (=> b!3193000 (= e!1990392 (< 0 (size!27104 lt!1075391)))))

(declare-fun b!3193001 () Bool)

(assert (=> b!3193001 (= e!1990393 (head!6998 lt!1075391))))

(declare-fun b!3193002 () Bool)

(assert (=> b!3193002 (= e!1990393 (apply!8104 (tail!5192 lt!1075391) (- 0 1)))))

(assert (= (and d!873082 res!1298918) b!3193000))

(assert (= (and d!873082 c!536006) b!3193001))

(assert (= (and d!873082 (not c!536006)) b!3193002))

(declare-fun m!3452401 () Bool)

(assert (=> d!873082 m!3452401))

(assert (=> b!3193000 m!3452383))

(declare-fun m!3452403 () Bool)

(assert (=> b!3193001 m!3452403))

(declare-fun m!3452405 () Bool)

(assert (=> b!3193002 m!3452405))

(assert (=> b!3193002 m!3452405))

(declare-fun m!3452407 () Bool)

(assert (=> b!3193002 m!3452407))

(assert (=> b!3192683 d!873082))

(declare-fun d!873084 () Bool)

(assert (=> d!873084 (= (head!6998 (drop!1850 lt!1075391 0)) (h!41384 (drop!1850 lt!1075391 0)))))

(assert (=> b!3192683 d!873084))

(declare-fun d!873086 () Bool)

(assert (=> d!873086 (= (tail!5192 (drop!1850 lt!1075389 0)) (drop!1850 lt!1075389 (+ 0 1)))))

(declare-fun lt!1075461 () Unit!50371)

(declare-fun choose!18634 (List!36088 Int) Unit!50371)

(assert (=> d!873086 (= lt!1075461 (choose!18634 lt!1075389 0))))

(declare-fun e!1990396 () Bool)

(assert (=> d!873086 e!1990396))

(declare-fun res!1298921 () Bool)

(assert (=> d!873086 (=> (not res!1298921) (not e!1990396))))

(assert (=> d!873086 (= res!1298921 (>= 0 0))))

(assert (=> d!873086 (= (lemmaDropTail!910 lt!1075389 0) lt!1075461)))

(declare-fun b!3193005 () Bool)

(assert (=> b!3193005 (= e!1990396 (< 0 (size!27104 lt!1075389)))))

(assert (= (and d!873086 res!1298921) b!3193005))

(assert (=> d!873086 m!3452019))

(assert (=> d!873086 m!3452019))

(assert (=> d!873086 m!3452021))

(assert (=> d!873086 m!3452037))

(declare-fun m!3452409 () Bool)

(assert (=> d!873086 m!3452409))

(assert (=> b!3193005 m!3452313))

(assert (=> b!3192683 d!873086))

(declare-fun d!873088 () Bool)

(assert (=> d!873088 (= (inv!48805 (tag!5691 (h!41385 (t!236312 rules!2135)))) (= (mod (str.len (value!167891 (tag!5691 (h!41385 (t!236312 rules!2135))))) 2) 0))))

(assert (=> b!3192808 d!873088))

(declare-fun d!873090 () Bool)

(declare-fun res!1298922 () Bool)

(declare-fun e!1990397 () Bool)

(assert (=> d!873090 (=> (not res!1298922) (not e!1990397))))

(assert (=> d!873090 (= res!1298922 (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toValue!7237 (transformation!5173 (h!41385 (t!236312 rules!2135))))))))

(assert (=> d!873090 (= (inv!48808 (transformation!5173 (h!41385 (t!236312 rules!2135)))) e!1990397)))

(declare-fun b!3193006 () Bool)

(assert (=> b!3193006 (= e!1990397 (equivClasses!2043 (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toValue!7237 (transformation!5173 (h!41385 (t!236312 rules!2135))))))))

(assert (= (and d!873090 res!1298922) b!3193006))

(declare-fun m!3452411 () Bool)

(assert (=> d!873090 m!3452411))

(declare-fun m!3452413 () Bool)

(assert (=> b!3193006 m!3452413))

(assert (=> b!3192808 d!873090))

(declare-fun d!873092 () Bool)

(declare-fun res!1298923 () Bool)

(declare-fun e!1990398 () Bool)

(assert (=> d!873092 (=> res!1298923 e!1990398)))

(assert (=> d!873092 (= res!1298923 (is-Nil!35964 (t!236311 tokens!494)))))

(assert (=> d!873092 (= (forall!7307 (t!236311 tokens!494) lambda!116828) e!1990398)))

(declare-fun b!3193007 () Bool)

(declare-fun e!1990399 () Bool)

(assert (=> b!3193007 (= e!1990398 e!1990399)))

(declare-fun res!1298924 () Bool)

(assert (=> b!3193007 (=> (not res!1298924) (not e!1990399))))

(assert (=> b!3193007 (= res!1298924 (dynLambda!14484 lambda!116828 (h!41384 (t!236311 tokens!494))))))

(declare-fun b!3193008 () Bool)

(assert (=> b!3193008 (= e!1990399 (forall!7307 (t!236311 (t!236311 tokens!494)) lambda!116828))))

(assert (= (and d!873092 (not res!1298923)) b!3193007))

(assert (= (and b!3193007 res!1298924) b!3193008))

(declare-fun b_lambda!87109 () Bool)

(assert (=> (not b_lambda!87109) (not b!3193007)))

(declare-fun m!3452415 () Bool)

(assert (=> b!3193007 m!3452415))

(declare-fun m!3452417 () Bool)

(assert (=> b!3193008 m!3452417))

(assert (=> b!3192573 d!873092))

(declare-fun d!873094 () Bool)

(declare-fun res!1298925 () Bool)

(declare-fun e!1990400 () Bool)

(assert (=> d!873094 (=> res!1298925 e!1990400)))

(assert (=> d!873094 (= res!1298925 (not (is-Cons!35965 (t!236312 rules!2135))))))

(assert (=> d!873094 (= (sepAndNonSepRulesDisjointChars!1367 rules!2135 (t!236312 rules!2135)) e!1990400)))

(declare-fun b!3193009 () Bool)

(declare-fun e!1990401 () Bool)

(assert (=> b!3193009 (= e!1990400 e!1990401)))

(declare-fun res!1298926 () Bool)

(assert (=> b!3193009 (=> (not res!1298926) (not e!1990401))))

(assert (=> b!3193009 (= res!1298926 (ruleDisjointCharsFromAllFromOtherType!580 (h!41385 (t!236312 rules!2135)) rules!2135))))

(declare-fun b!3193010 () Bool)

(assert (=> b!3193010 (= e!1990401 (sepAndNonSepRulesDisjointChars!1367 rules!2135 (t!236312 (t!236312 rules!2135))))))

(assert (= (and d!873094 (not res!1298925)) b!3193009))

(assert (= (and b!3193009 res!1298926) b!3193010))

(declare-fun m!3452419 () Bool)

(assert (=> b!3193009 m!3452419))

(declare-fun m!3452421 () Bool)

(assert (=> b!3193010 m!3452421))

(assert (=> b!3192755 d!873094))

(declare-fun d!873096 () Bool)

(assert (=> d!873096 (= (list!12776 (singletonSeq!2269 separatorToken!241)) (list!12780 (c!535940 (singletonSeq!2269 separatorToken!241))))))

(declare-fun bs!540357 () Bool)

(assert (= bs!540357 d!873096))

(declare-fun m!3452423 () Bool)

(assert (=> bs!540357 m!3452423))

(assert (=> d!872916 d!873096))

(declare-fun d!873098 () Bool)

(assert (=> d!873098 (= (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241))))) (list!12780 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 separatorToken!241)))))))))

(declare-fun bs!540358 () Bool)

(assert (= bs!540358 d!873098))

(declare-fun m!3452425 () Bool)

(assert (=> bs!540358 m!3452425))

(assert (=> d!872916 d!873098))

(assert (=> d!872916 d!873060))

(declare-fun d!873100 () Bool)

(declare-fun lt!1075464 () Int)

(assert (=> d!873100 (= lt!1075464 (size!27104 (list!12776 (_1!20799 lt!1075328))))))

(declare-fun size!27105 (Conc!10722) Int)

(assert (=> d!873100 (= lt!1075464 (size!27105 (c!535940 (_1!20799 lt!1075328))))))

(assert (=> d!873100 (= (size!27098 (_1!20799 lt!1075328)) lt!1075464)))

(declare-fun bs!540359 () Bool)

(assert (= bs!540359 d!873100))

(declare-fun m!3452427 () Bool)

(assert (=> bs!540359 m!3452427))

(assert (=> bs!540359 m!3452427))

(declare-fun m!3452429 () Bool)

(assert (=> bs!540359 m!3452429))

(declare-fun m!3452431 () Bool)

(assert (=> bs!540359 m!3452431))

(assert (=> d!872916 d!873100))

(assert (=> d!872916 d!873058))

(assert (=> d!872916 d!872974))

(assert (=> d!872916 d!873056))

(declare-fun d!873102 () Bool)

(assert (=> d!873102 (= (list!12774 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))) (list!12777 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(declare-fun bs!540360 () Bool)

(assert (= bs!540360 d!873102))

(declare-fun m!3452433 () Bool)

(assert (=> bs!540360 m!3452433))

(assert (=> b!3192587 d!873102))

(declare-fun d!873104 () Bool)

(declare-fun lt!1075465 () Token!9712)

(assert (=> d!873104 (= lt!1075465 (apply!8104 (list!12776 (_1!20799 lt!1075328)) 0))))

(assert (=> d!873104 (= lt!1075465 (apply!8107 (c!535940 (_1!20799 lt!1075328)) 0))))

(declare-fun e!1990402 () Bool)

(assert (=> d!873104 e!1990402))

(declare-fun res!1298927 () Bool)

(assert (=> d!873104 (=> (not res!1298927) (not e!1990402))))

(assert (=> d!873104 (= res!1298927 (<= 0 0))))

(assert (=> d!873104 (= (apply!8103 (_1!20799 lt!1075328) 0) lt!1075465)))

(declare-fun b!3193011 () Bool)

(assert (=> b!3193011 (= e!1990402 (< 0 (size!27098 (_1!20799 lt!1075328))))))

(assert (= (and d!873104 res!1298927) b!3193011))

(assert (=> d!873104 m!3452427))

(assert (=> d!873104 m!3452427))

(declare-fun m!3452435 () Bool)

(assert (=> d!873104 m!3452435))

(declare-fun m!3452437 () Bool)

(assert (=> d!873104 m!3452437))

(assert (=> b!3193011 m!3451843))

(assert (=> b!3192565 d!873104))

(declare-fun d!873106 () Bool)

(assert (=> d!873106 (= (inv!48805 (tag!5691 (rule!7605 (h!41384 (t!236311 tokens!494))))) (= (mod (str.len (value!167891 (tag!5691 (rule!7605 (h!41384 (t!236311 tokens!494)))))) 2) 0))))

(assert (=> b!3192783 d!873106))

(declare-fun d!873108 () Bool)

(declare-fun res!1298928 () Bool)

(declare-fun e!1990403 () Bool)

(assert (=> d!873108 (=> (not res!1298928) (not e!1990403))))

(assert (=> d!873108 (= res!1298928 (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))))))

(assert (=> d!873108 (= (inv!48808 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) e!1990403)))

(declare-fun b!3193012 () Bool)

(assert (=> b!3193012 (= e!1990403 (equivClasses!2043 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))))))

(assert (= (and d!873108 res!1298928) b!3193012))

(declare-fun m!3452439 () Bool)

(assert (=> d!873108 m!3452439))

(declare-fun m!3452441 () Bool)

(assert (=> b!3193012 m!3452441))

(assert (=> b!3192783 d!873108))

(declare-fun d!873110 () Bool)

(declare-fun res!1298929 () Bool)

(declare-fun e!1990404 () Bool)

(assert (=> d!873110 (=> res!1298929 e!1990404)))

(assert (=> d!873110 (= res!1298929 (is-Nil!35964 (list!12776 (seqFromList!3418 tokens!494))))))

(assert (=> d!873110 (= (forall!7307 (list!12776 (seqFromList!3418 tokens!494)) lambda!116840) e!1990404)))

(declare-fun b!3193013 () Bool)

(declare-fun e!1990405 () Bool)

(assert (=> b!3193013 (= e!1990404 e!1990405)))

(declare-fun res!1298930 () Bool)

(assert (=> b!3193013 (=> (not res!1298930) (not e!1990405))))

(assert (=> b!3193013 (= res!1298930 (dynLambda!14484 lambda!116840 (h!41384 (list!12776 (seqFromList!3418 tokens!494)))))))

(declare-fun b!3193014 () Bool)

(assert (=> b!3193014 (= e!1990405 (forall!7307 (t!236311 (list!12776 (seqFromList!3418 tokens!494))) lambda!116840))))

(assert (= (and d!873110 (not res!1298929)) b!3193013))

(assert (= (and b!3193013 res!1298930) b!3193014))

(declare-fun b_lambda!87111 () Bool)

(assert (=> (not b_lambda!87111) (not b!3193013)))

(declare-fun m!3452443 () Bool)

(assert (=> b!3193013 m!3452443))

(declare-fun m!3452445 () Bool)

(assert (=> b!3193014 m!3452445))

(assert (=> d!872944 d!873110))

(declare-fun d!873112 () Bool)

(assert (=> d!873112 (= (list!12776 (seqFromList!3418 tokens!494)) (list!12780 (c!535940 (seqFromList!3418 tokens!494))))))

(declare-fun bs!540361 () Bool)

(assert (= bs!540361 d!873112))

(declare-fun m!3452447 () Bool)

(assert (=> bs!540361 m!3452447))

(assert (=> d!872944 d!873112))

(declare-fun d!873114 () Bool)

(declare-fun lt!1075468 () Bool)

(assert (=> d!873114 (= lt!1075468 (forall!7307 (list!12776 (seqFromList!3418 tokens!494)) lambda!116840))))

(declare-fun forall!7311 (Conc!10722 Int) Bool)

(assert (=> d!873114 (= lt!1075468 (forall!7311 (c!535940 (seqFromList!3418 tokens!494)) lambda!116840))))

(assert (=> d!873114 (= (forall!7309 (seqFromList!3418 tokens!494) lambda!116840) lt!1075468)))

(declare-fun bs!540362 () Bool)

(assert (= bs!540362 d!873114))

(assert (=> bs!540362 m!3451743))

(assert (=> bs!540362 m!3451963))

(assert (=> bs!540362 m!3451963))

(assert (=> bs!540362 m!3451965))

(declare-fun m!3452449 () Bool)

(assert (=> bs!540362 m!3452449))

(assert (=> d!872944 d!873114))

(assert (=> d!872944 d!872974))

(declare-fun d!873116 () Bool)

(declare-fun lt!1075469 () Int)

(assert (=> d!873116 (= lt!1075469 (size!27104 (list!12776 lt!1075302)))))

(assert (=> d!873116 (= lt!1075469 (size!27105 (c!535940 lt!1075302)))))

(assert (=> d!873116 (= (size!27098 lt!1075302) lt!1075469)))

(declare-fun bs!540363 () Bool)

(assert (= bs!540363 d!873116))

(assert (=> bs!540363 m!3452005))

(assert (=> bs!540363 m!3452005))

(declare-fun m!3452451 () Bool)

(assert (=> bs!540363 m!3452451))

(declare-fun m!3452453 () Bool)

(assert (=> bs!540363 m!3452453))

(assert (=> b!3192681 d!873116))

(declare-fun d!873118 () Bool)

(declare-fun charsToInt!0 (List!36086) (_ BitVec 32))

(assert (=> d!873118 (= (inv!16 (value!167892 separatorToken!241)) (= (charsToInt!0 (text!38268 (value!167892 separatorToken!241))) (value!167883 (value!167892 separatorToken!241))))))

(declare-fun bs!540364 () Bool)

(assert (= bs!540364 d!873118))

(declare-fun m!3452455 () Bool)

(assert (=> bs!540364 m!3452455))

(assert (=> b!3192621 d!873118))

(declare-fun d!873120 () Bool)

(declare-fun lt!1075470 () Bool)

(assert (=> d!873120 (= lt!1075470 (set.member (h!41384 tokens!494) (content!4859 tokens!494)))))

(declare-fun e!1990406 () Bool)

(assert (=> d!873120 (= lt!1075470 e!1990406)))

(declare-fun res!1298931 () Bool)

(assert (=> d!873120 (=> (not res!1298931) (not e!1990406))))

(assert (=> d!873120 (= res!1298931 (is-Cons!35964 tokens!494))))

(assert (=> d!873120 (= (contains!6388 tokens!494 (h!41384 tokens!494)) lt!1075470)))

(declare-fun b!3193015 () Bool)

(declare-fun e!1990407 () Bool)

(assert (=> b!3193015 (= e!1990406 e!1990407)))

(declare-fun res!1298932 () Bool)

(assert (=> b!3193015 (=> res!1298932 e!1990407)))

(assert (=> b!3193015 (= res!1298932 (= (h!41384 tokens!494) (h!41384 tokens!494)))))

(declare-fun b!3193016 () Bool)

(assert (=> b!3193016 (= e!1990407 (contains!6388 (t!236311 tokens!494) (h!41384 tokens!494)))))

(assert (= (and d!873120 res!1298931) b!3193015))

(assert (= (and b!3193015 (not res!1298932)) b!3193016))

(assert (=> d!873120 m!3451933))

(declare-fun m!3452457 () Bool)

(assert (=> d!873120 m!3452457))

(declare-fun m!3452459 () Bool)

(assert (=> b!3193016 m!3452459))

(assert (=> b!3192582 d!873120))

(declare-fun d!873122 () Bool)

(declare-fun charsToBigInt!0 (List!36086 Int) Int)

(assert (=> d!873122 (= (inv!15 (value!167892 separatorToken!241)) (= (charsToBigInt!0 (text!38270 (value!167892 separatorToken!241)) 0) (value!167887 (value!167892 separatorToken!241))))))

(declare-fun bs!540365 () Bool)

(assert (= bs!540365 d!873122))

(declare-fun m!3452461 () Bool)

(assert (=> bs!540365 m!3452461))

(assert (=> b!3192618 d!873122))

(declare-fun d!873124 () Bool)

(declare-fun charsToBigInt!1 (List!36086) Int)

(assert (=> d!873124 (= (inv!17 (value!167892 (h!41384 tokens!494))) (= (charsToBigInt!1 (text!38269 (value!167892 (h!41384 tokens!494)))) (value!167884 (value!167892 (h!41384 tokens!494)))))))

(declare-fun bs!540366 () Bool)

(assert (= bs!540366 d!873124))

(declare-fun m!3452463 () Bool)

(assert (=> bs!540366 m!3452463))

(assert (=> b!3192614 d!873124))

(declare-fun d!873126 () Bool)

(declare-fun lt!1075473 () Int)

(assert (=> d!873126 (= lt!1075473 (size!27099 (list!12774 (_2!20799 lt!1075406))))))

(declare-fun size!27106 (Conc!10721) Int)

(assert (=> d!873126 (= lt!1075473 (size!27106 (c!535939 (_2!20799 lt!1075406))))))

(assert (=> d!873126 (= (size!27100 (_2!20799 lt!1075406)) lt!1075473)))

(declare-fun bs!540367 () Bool)

(assert (= bs!540367 d!873126))

(assert (=> bs!540367 m!3452119))

(assert (=> bs!540367 m!3452119))

(declare-fun m!3452465 () Bool)

(assert (=> bs!540367 m!3452465))

(declare-fun m!3452467 () Bool)

(assert (=> bs!540367 m!3452467))

(assert (=> b!3192748 d!873126))

(declare-fun d!873128 () Bool)

(declare-fun lt!1075474 () Int)

(assert (=> d!873128 (= lt!1075474 (size!27099 (list!12774 (seqFromList!3417 lt!1075299))))))

(assert (=> d!873128 (= lt!1075474 (size!27106 (c!535939 (seqFromList!3417 lt!1075299))))))

(assert (=> d!873128 (= (size!27100 (seqFromList!3417 lt!1075299)) lt!1075474)))

(declare-fun bs!540368 () Bool)

(assert (= bs!540368 d!873128))

(assert (=> bs!540368 m!3451755))

(assert (=> bs!540368 m!3452111))

(assert (=> bs!540368 m!3452111))

(declare-fun m!3452469 () Bool)

(assert (=> bs!540368 m!3452469))

(declare-fun m!3452471 () Bool)

(assert (=> bs!540368 m!3452471))

(assert (=> b!3192748 d!873128))

(declare-fun d!873130 () Bool)

(assert (=> d!873130 true))

(declare-fun lt!1075477 () Bool)

(declare-fun rulesValidInductive!1766 (LexerInterface!4762 List!36089) Bool)

(assert (=> d!873130 (= lt!1075477 (rulesValidInductive!1766 thiss!18206 rules!2135))))

(declare-fun lambda!116854 () Int)

(declare-fun forall!7312 (List!36089 Int) Bool)

(assert (=> d!873130 (= lt!1075477 (forall!7312 rules!2135 lambda!116854))))

(assert (=> d!873130 (= (rulesValid!1904 thiss!18206 rules!2135) lt!1075477)))

(declare-fun bs!540369 () Bool)

(assert (= bs!540369 d!873130))

(declare-fun m!3452473 () Bool)

(assert (=> bs!540369 m!3452473))

(declare-fun m!3452475 () Bool)

(assert (=> bs!540369 m!3452475))

(assert (=> d!872928 d!873130))

(declare-fun d!873132 () Bool)

(declare-fun e!1990410 () Bool)

(assert (=> d!873132 e!1990410))

(declare-fun res!1298935 () Bool)

(assert (=> d!873132 (=> (not res!1298935) (not e!1990410))))

(declare-fun lt!1075480 () BalanceConc!21058)

(assert (=> d!873132 (= res!1298935 (= (list!12776 lt!1075480) tokens!494))))

(declare-fun fromList!592 (List!36088) Conc!10722)

(assert (=> d!873132 (= lt!1075480 (BalanceConc!21059 (fromList!592 tokens!494)))))

(assert (=> d!873132 (= (fromListB!1519 tokens!494) lt!1075480)))

(declare-fun b!3193021 () Bool)

(assert (=> b!3193021 (= e!1990410 (isBalanced!3196 (fromList!592 tokens!494)))))

(assert (= (and d!873132 res!1298935) b!3193021))

(declare-fun m!3452477 () Bool)

(assert (=> d!873132 m!3452477))

(declare-fun m!3452479 () Bool)

(assert (=> d!873132 m!3452479))

(assert (=> b!3193021 m!3452479))

(assert (=> b!3193021 m!3452479))

(declare-fun m!3452481 () Bool)

(assert (=> b!3193021 m!3452481))

(assert (=> d!872954 d!873132))

(declare-fun d!873134 () Bool)

(declare-fun e!1990413 () Bool)

(assert (=> d!873134 e!1990413))

(declare-fun res!1298938 () Bool)

(assert (=> d!873134 (=> (not res!1298938) (not e!1990413))))

(declare-fun lt!1075483 () BalanceConc!21056)

(assert (=> d!873134 (= res!1298938 (= (list!12774 lt!1075483) lt!1075299))))

(declare-fun fromList!593 (List!36087) Conc!10721)

(assert (=> d!873134 (= lt!1075483 (BalanceConc!21057 (fromList!593 lt!1075299)))))

(assert (=> d!873134 (= (fromListB!1520 lt!1075299) lt!1075483)))

(declare-fun b!3193024 () Bool)

(assert (=> b!3193024 (= e!1990413 (isBalanced!3198 (fromList!593 lt!1075299)))))

(assert (= (and d!873134 res!1298938) b!3193024))

(declare-fun m!3452483 () Bool)

(assert (=> d!873134 m!3452483))

(declare-fun m!3452485 () Bool)

(assert (=> d!873134 m!3452485))

(assert (=> b!3193024 m!3452485))

(assert (=> b!3193024 m!3452485))

(declare-fun m!3452487 () Bool)

(assert (=> b!3193024 m!3452487))

(assert (=> d!872992 d!873134))

(declare-fun d!873136 () Bool)

(assert (=> d!873136 (= (inv!15 (value!167892 (h!41384 tokens!494))) (= (charsToBigInt!0 (text!38270 (value!167892 (h!41384 tokens!494))) 0) (value!167887 (value!167892 (h!41384 tokens!494)))))))

(declare-fun bs!540370 () Bool)

(assert (= bs!540370 d!873136))

(declare-fun m!3452489 () Bool)

(assert (=> bs!540370 m!3452489))

(assert (=> b!3192610 d!873136))

(declare-fun d!873138 () Bool)

(declare-fun c!536013 () Bool)

(assert (=> d!873138 (= c!536013 (is-Empty!10721 (c!535939 lt!1075300)))))

(declare-fun e!1990418 () List!36087)

(assert (=> d!873138 (= (list!12777 (c!535939 lt!1075300)) e!1990418)))

(declare-fun b!3193035 () Bool)

(declare-fun e!1990419 () List!36087)

(declare-fun list!12781 (IArray!21447) List!36087)

(assert (=> b!3193035 (= e!1990419 (list!12781 (xs!13839 (c!535939 lt!1075300))))))

(declare-fun b!3193033 () Bool)

(assert (=> b!3193033 (= e!1990418 Nil!35963)))

(declare-fun b!3193034 () Bool)

(assert (=> b!3193034 (= e!1990418 e!1990419)))

(declare-fun c!536014 () Bool)

(assert (=> b!3193034 (= c!536014 (is-Leaf!16919 (c!535939 lt!1075300)))))

(declare-fun b!3193036 () Bool)

(assert (=> b!3193036 (= e!1990419 (++!8604 (list!12777 (left!27954 (c!535939 lt!1075300))) (list!12777 (right!28284 (c!535939 lt!1075300)))))))

(assert (= (and d!873138 c!536013) b!3193033))

(assert (= (and d!873138 (not c!536013)) b!3193034))

(assert (= (and b!3193034 c!536014) b!3193035))

(assert (= (and b!3193034 (not c!536014)) b!3193036))

(declare-fun m!3452491 () Bool)

(assert (=> b!3193035 m!3452491))

(declare-fun m!3452493 () Bool)

(assert (=> b!3193036 m!3452493))

(declare-fun m!3452495 () Bool)

(assert (=> b!3193036 m!3452495))

(assert (=> b!3193036 m!3452493))

(assert (=> b!3193036 m!3452495))

(declare-fun m!3452497 () Bool)

(assert (=> b!3193036 m!3452497))

(assert (=> d!872960 d!873138))

(declare-fun d!873140 () Bool)

(declare-fun lt!1075484 () Bool)

(assert (=> d!873140 (= lt!1075484 (isEmpty!20072 (list!12776 (_1!20799 lt!1075406))))))

(assert (=> d!873140 (= lt!1075484 (isEmpty!20073 (c!535940 (_1!20799 lt!1075406))))))

(assert (=> d!873140 (= (isEmpty!20066 (_1!20799 lt!1075406)) lt!1075484)))

(declare-fun bs!540371 () Bool)

(assert (= bs!540371 d!873140))

(assert (=> bs!540371 m!3452109))

(assert (=> bs!540371 m!3452109))

(declare-fun m!3452499 () Bool)

(assert (=> bs!540371 m!3452499))

(declare-fun m!3452501 () Bool)

(assert (=> bs!540371 m!3452501))

(assert (=> b!3192746 d!873140))

(declare-fun d!873142 () Bool)

(assert (=> d!873142 (= (list!12774 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))) (list!12777 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(declare-fun bs!540372 () Bool)

(assert (= bs!540372 d!873142))

(declare-fun m!3452503 () Bool)

(assert (=> bs!540372 m!3452503))

(assert (=> b!3192672 d!873142))

(declare-fun d!873144 () Bool)

(assert (=> d!873144 (dynLambda!14484 lambda!116828 (h!41384 tokens!494))))

(assert (=> d!873144 true))

(declare-fun _$7!1046 () Unit!50371)

(assert (=> d!873144 (= (choose!18631 tokens!494 lambda!116828 (h!41384 tokens!494)) _$7!1046)))

(declare-fun b_lambda!87113 () Bool)

(assert (=> (not b_lambda!87113) (not d!873144)))

(declare-fun bs!540373 () Bool)

(assert (= bs!540373 d!873144))

(assert (=> bs!540373 m!3451855))

(assert (=> d!872924 d!873144))

(assert (=> d!872924 d!872922))

(declare-fun bs!540374 () Bool)

(declare-fun d!873146 () Bool)

(assert (= bs!540374 (and d!873146 d!873050)))

(declare-fun lambda!116855 () Int)

(assert (=> bs!540374 (= (and (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (h!41385 rules!2135)))) (= (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (h!41385 rules!2135))))) (= lambda!116855 lambda!116851))))

(assert (=> d!873146 true))

(assert (=> d!873146 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) (dynLambda!14495 order!18297 lambda!116855))))

(assert (=> d!873146 true))

(assert (=> d!873146 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))) (dynLambda!14495 order!18297 lambda!116855))))

(assert (=> d!873146 (= (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))) (Forall!1256 lambda!116855))))

(declare-fun bs!540375 () Bool)

(assert (= bs!540375 d!873146))

(declare-fun m!3452505 () Bool)

(assert (=> bs!540375 m!3452505))

(assert (=> d!873002 d!873146))

(declare-fun d!873148 () Bool)

(declare-fun lt!1075485 () Token!9712)

(assert (=> d!873148 (= lt!1075485 (apply!8104 (list!12776 (_1!20799 lt!1075368)) 0))))

(assert (=> d!873148 (= lt!1075485 (apply!8107 (c!535940 (_1!20799 lt!1075368)) 0))))

(declare-fun e!1990420 () Bool)

(assert (=> d!873148 e!1990420))

(declare-fun res!1298939 () Bool)

(assert (=> d!873148 (=> (not res!1298939) (not e!1990420))))

(assert (=> d!873148 (= res!1298939 (<= 0 0))))

(assert (=> d!873148 (= (apply!8103 (_1!20799 lt!1075368) 0) lt!1075485)))

(declare-fun b!3193037 () Bool)

(assert (=> b!3193037 (= e!1990420 (< 0 (size!27098 (_1!20799 lt!1075368))))))

(assert (= (and d!873148 res!1298939) b!3193037))

(declare-fun m!3452507 () Bool)

(assert (=> d!873148 m!3452507))

(assert (=> d!873148 m!3452507))

(declare-fun m!3452509 () Bool)

(assert (=> d!873148 m!3452509))

(declare-fun m!3452511 () Bool)

(assert (=> d!873148 m!3452511))

(assert (=> b!3193037 m!3451977))

(assert (=> b!3192669 d!873148))

(declare-fun bs!540376 () Bool)

(declare-fun d!873150 () Bool)

(assert (= bs!540376 (and d!873150 d!873048)))

(declare-fun lambda!116856 () Int)

(assert (=> bs!540376 (= (= (toValue!7237 (transformation!5173 (h!41385 rules!2135))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (= lambda!116856 lambda!116848))))

(assert (=> d!873150 true))

(assert (=> d!873150 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14494 order!18295 lambda!116856))))

(assert (=> d!873150 (= (equivClasses!2043 (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (Forall2!853 lambda!116856))))

(declare-fun bs!540377 () Bool)

(assert (= bs!540377 d!873150))

(declare-fun m!3452513 () Bool)

(assert (=> bs!540377 m!3452513))

(assert (=> b!3192617 d!873150))

(declare-fun bs!540378 () Bool)

(declare-fun d!873152 () Bool)

(assert (= bs!540378 (and d!873152 d!873050)))

(declare-fun lambda!116857 () Int)

(assert (=> bs!540378 (= (and (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (h!41385 rules!2135)))) (= (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (h!41385 rules!2135))))) (= lambda!116857 lambda!116851))))

(declare-fun bs!540379 () Bool)

(assert (= bs!540379 (and d!873152 d!873146)))

(assert (=> bs!540379 (= (and (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) (= (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241))))) (= lambda!116857 lambda!116855))))

(assert (=> d!873152 true))

(assert (=> d!873152 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (dynLambda!14495 order!18297 lambda!116857))))

(assert (=> d!873152 true))

(assert (=> d!873152 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (dynLambda!14495 order!18297 lambda!116857))))

(assert (=> d!873152 (= (semiInverseModEq!2144 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (Forall!1256 lambda!116857))))

(declare-fun bs!540380 () Bool)

(assert (= bs!540380 d!873152))

(declare-fun m!3452515 () Bool)

(assert (=> bs!540380 m!3452515))

(assert (=> d!872972 d!873152))

(declare-fun d!873154 () Bool)

(declare-fun c!536017 () Bool)

(assert (=> d!873154 (= c!536017 (is-Node!10721 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(declare-fun e!1990425 () Bool)

(assert (=> d!873154 (= (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))) e!1990425)))

(declare-fun b!3193044 () Bool)

(declare-fun inv!48816 (Conc!10721) Bool)

(assert (=> b!3193044 (= e!1990425 (inv!48816 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(declare-fun b!3193045 () Bool)

(declare-fun e!1990426 () Bool)

(assert (=> b!3193045 (= e!1990425 e!1990426)))

(declare-fun res!1298942 () Bool)

(assert (=> b!3193045 (= res!1298942 (not (is-Leaf!16919 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))))))

(assert (=> b!3193045 (=> res!1298942 e!1990426)))

(declare-fun b!3193046 () Bool)

(declare-fun inv!48817 (Conc!10721) Bool)

(assert (=> b!3193046 (= e!1990426 (inv!48817 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(assert (= (and d!873154 c!536017) b!3193044))

(assert (= (and d!873154 (not c!536017)) b!3193045))

(assert (= (and b!3193045 (not res!1298942)) b!3193046))

(declare-fun m!3452517 () Bool)

(assert (=> b!3193044 m!3452517))

(declare-fun m!3452519 () Bool)

(assert (=> b!3193046 m!3452519))

(assert (=> b!3192593 d!873154))

(declare-fun d!873156 () Bool)

(declare-fun lt!1075488 () Int)

(assert (=> d!873156 (>= lt!1075488 0)))

(declare-fun e!1990429 () Int)

(assert (=> d!873156 (= lt!1075488 e!1990429)))

(declare-fun c!536020 () Bool)

(assert (=> d!873156 (= c!536020 (is-Nil!35963 (originalCharacters!5887 (h!41384 tokens!494))))))

(assert (=> d!873156 (= (size!27099 (originalCharacters!5887 (h!41384 tokens!494))) lt!1075488)))

(declare-fun b!3193051 () Bool)

(assert (=> b!3193051 (= e!1990429 0)))

(declare-fun b!3193052 () Bool)

(assert (=> b!3193052 (= e!1990429 (+ 1 (size!27099 (t!236310 (originalCharacters!5887 (h!41384 tokens!494))))))))

(assert (= (and d!873156 c!536020) b!3193051))

(assert (= (and d!873156 (not c!536020)) b!3193052))

(declare-fun m!3452521 () Bool)

(assert (=> b!3193052 m!3452521))

(assert (=> b!3192588 d!873156))

(declare-fun d!873158 () Bool)

(declare-fun lt!1075489 () Bool)

(assert (=> d!873158 (= lt!1075489 (isEmpty!20071 (list!12774 (_2!20799 lt!1075328))))))

(assert (=> d!873158 (= lt!1075489 (isEmpty!20078 (c!535939 (_2!20799 lt!1075328))))))

(assert (=> d!873158 (= (isEmpty!20070 (_2!20799 lt!1075328)) lt!1075489)))

(declare-fun bs!540381 () Bool)

(assert (= bs!540381 d!873158))

(declare-fun m!3452523 () Bool)

(assert (=> bs!540381 m!3452523))

(assert (=> bs!540381 m!3452523))

(declare-fun m!3452525 () Bool)

(assert (=> bs!540381 m!3452525))

(declare-fun m!3452527 () Bool)

(assert (=> bs!540381 m!3452527))

(assert (=> b!3192566 d!873158))

(declare-fun d!873160 () Bool)

(declare-fun c!536021 () Bool)

(assert (=> d!873160 (= c!536021 (is-Node!10721 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(declare-fun e!1990430 () Bool)

(assert (=> d!873160 (= (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))) e!1990430)))

(declare-fun b!3193053 () Bool)

(assert (=> b!3193053 (= e!1990430 (inv!48816 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(declare-fun b!3193054 () Bool)

(declare-fun e!1990431 () Bool)

(assert (=> b!3193054 (= e!1990430 e!1990431)))

(declare-fun res!1298943 () Bool)

(assert (=> b!3193054 (= res!1298943 (not (is-Leaf!16919 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))))))

(assert (=> b!3193054 (=> res!1298943 e!1990431)))

(declare-fun b!3193055 () Bool)

(assert (=> b!3193055 (= e!1990431 (inv!48817 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(assert (= (and d!873160 c!536021) b!3193053))

(assert (= (and d!873160 (not c!536021)) b!3193054))

(assert (= (and b!3193054 (not res!1298943)) b!3193055))

(declare-fun m!3452529 () Bool)

(assert (=> b!3193053 m!3452529))

(declare-fun m!3452531 () Bool)

(assert (=> b!3193055 m!3452531))

(assert (=> b!3192674 d!873160))

(declare-fun d!873162 () Bool)

(assert (=> d!873162 (= (inv!17 (value!167892 separatorToken!241)) (= (charsToBigInt!1 (text!38269 (value!167892 separatorToken!241))) (value!167884 (value!167892 separatorToken!241))))))

(declare-fun bs!540382 () Bool)

(assert (= bs!540382 d!873162))

(declare-fun m!3452533 () Bool)

(assert (=> bs!540382 m!3452533))

(assert (=> b!3192622 d!873162))

(declare-fun b!3193064 () Bool)

(declare-fun e!1990439 () Bool)

(declare-fun call!231378 () Bool)

(assert (=> b!3193064 (= e!1990439 call!231378)))

(declare-fun b!3193065 () Bool)

(declare-fun e!1990438 () Bool)

(assert (=> b!3193065 (= e!1990438 call!231378)))

(declare-fun b!3193066 () Bool)

(declare-fun e!1990440 () Bool)

(assert (=> b!3193066 (= e!1990440 e!1990438)))

(declare-fun res!1298948 () Bool)

(assert (=> b!3193066 (= res!1298948 (not (is-Cons!35965 rules!2135)))))

(assert (=> b!3193066 (=> res!1298948 e!1990438)))

(declare-fun d!873164 () Bool)

(declare-fun c!536024 () Bool)

(assert (=> d!873164 (= c!536024 (and (is-Cons!35965 rules!2135) (not (= (isSeparator!5173 (h!41385 rules!2135)) (isSeparator!5173 (h!41385 rules!2135))))))))

(assert (=> d!873164 (= (ruleDisjointCharsFromAllFromOtherType!580 (h!41385 rules!2135) rules!2135) e!1990440)))

(declare-fun bm!231373 () Bool)

(assert (=> bm!231373 (= call!231378 (ruleDisjointCharsFromAllFromOtherType!580 (h!41385 rules!2135) (t!236312 rules!2135)))))

(declare-fun b!3193067 () Bool)

(assert (=> b!3193067 (= e!1990440 e!1990439)))

(declare-fun res!1298949 () Bool)

(declare-fun rulesUseDisjointChars!260 (Rule!10146 Rule!10146) Bool)

(assert (=> b!3193067 (= res!1298949 (rulesUseDisjointChars!260 (h!41385 rules!2135) (h!41385 rules!2135)))))

(assert (=> b!3193067 (=> (not res!1298949) (not e!1990439))))

(assert (= (and d!873164 c!536024) b!3193067))

(assert (= (and d!873164 (not c!536024)) b!3193066))

(assert (= (and b!3193067 res!1298949) b!3193064))

(assert (= (and b!3193066 (not res!1298948)) b!3193065))

(assert (= (or b!3193064 b!3193065) bm!231373))

(declare-fun m!3452535 () Bool)

(assert (=> bm!231373 m!3452535))

(declare-fun m!3452537 () Bool)

(assert (=> b!3193067 m!3452537))

(assert (=> b!3192754 d!873164))

(declare-fun d!873166 () Bool)

(assert (=> d!873166 (= (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))) (list!12780 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))))

(declare-fun bs!540383 () Bool)

(assert (= bs!540383 d!873166))

(declare-fun m!3452539 () Bool)

(assert (=> bs!540383 m!3452539))

(assert (=> d!872956 d!873166))

(declare-fun e!1990441 () Bool)

(declare-fun lt!1075490 () tuple2!35330)

(declare-fun b!3193068 () Bool)

(assert (=> b!3193068 (= e!1990441 (= (list!12774 (_2!20799 lt!1075490)) (_2!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))))

(declare-fun d!873168 () Bool)

(assert (=> d!873168 e!1990441))

(declare-fun res!1298952 () Bool)

(assert (=> d!873168 (=> (not res!1298952) (not e!1990441))))

(declare-fun e!1990442 () Bool)

(assert (=> d!873168 (= res!1298952 e!1990442)))

(declare-fun c!536025 () Bool)

(assert (=> d!873168 (= c!536025 (> (size!27098 (_1!20799 lt!1075490)) 0))))

(assert (=> d!873168 (= lt!1075490 (lexTailRecV2!922 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))) (BalanceConc!21057 Empty!10721) (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))) (BalanceConc!21059 Empty!10722)))))

(assert (=> d!873168 (= (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))) lt!1075490)))

(declare-fun b!3193069 () Bool)

(declare-fun e!1990443 () Bool)

(assert (=> b!3193069 (= e!1990443 (not (isEmpty!20066 (_1!20799 lt!1075490))))))

(declare-fun b!3193070 () Bool)

(declare-fun res!1298950 () Bool)

(assert (=> b!3193070 (=> (not res!1298950) (not e!1990441))))

(assert (=> b!3193070 (= res!1298950 (= (list!12776 (_1!20799 lt!1075490)) (_1!20801 (lexList!1302 thiss!18206 rules!2135 (list!12774 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))))

(declare-fun b!3193071 () Bool)

(assert (=> b!3193071 (= e!1990442 e!1990443)))

(declare-fun res!1298951 () Bool)

(assert (=> b!3193071 (= res!1298951 (< (size!27100 (_2!20799 lt!1075490)) (size!27100 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))

(assert (=> b!3193071 (=> (not res!1298951) (not e!1990443))))

(declare-fun b!3193072 () Bool)

(assert (=> b!3193072 (= e!1990442 (= (_2!20799 lt!1075490) (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))))

(assert (= (and d!873168 c!536025) b!3193071))

(assert (= (and d!873168 (not c!536025)) b!3193072))

(assert (= (and b!3193071 res!1298951) b!3193069))

(assert (= (and d!873168 res!1298952) b!3193070))

(assert (= (and b!3193070 res!1298950) b!3193068))

(declare-fun m!3452541 () Bool)

(assert (=> b!3193069 m!3452541))

(declare-fun m!3452543 () Bool)

(assert (=> d!873168 m!3452543))

(assert (=> d!873168 m!3451979))

(assert (=> d!873168 m!3451979))

(declare-fun m!3452545 () Bool)

(assert (=> d!873168 m!3452545))

(declare-fun m!3452547 () Bool)

(assert (=> b!3193070 m!3452547))

(assert (=> b!3193070 m!3451979))

(declare-fun m!3452549 () Bool)

(assert (=> b!3193070 m!3452549))

(assert (=> b!3193070 m!3452549))

(declare-fun m!3452551 () Bool)

(assert (=> b!3193070 m!3452551))

(declare-fun m!3452553 () Bool)

(assert (=> b!3193071 m!3452553))

(assert (=> b!3193071 m!3451979))

(declare-fun m!3452555 () Bool)

(assert (=> b!3193071 m!3452555))

(declare-fun m!3452557 () Bool)

(assert (=> b!3193068 m!3452557))

(assert (=> b!3193068 m!3451979))

(assert (=> b!3193068 m!3452549))

(assert (=> b!3193068 m!3452549))

(assert (=> b!3193068 m!3452551))

(assert (=> d!872956 d!873168))

(declare-fun d!873170 () Bool)

(declare-fun lt!1075491 () BalanceConc!21056)

(assert (=> d!873170 (= (list!12774 lt!1075491) (printList!1312 thiss!18206 (list!12776 (singletonSeq!2269 (h!41384 tokens!494)))))))

(assert (=> d!873170 (= lt!1075491 (printTailRec!1259 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)) 0 (BalanceConc!21057 Empty!10721)))))

(assert (=> d!873170 (= (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))) lt!1075491)))

(declare-fun bs!540384 () Bool)

(assert (= bs!540384 d!873170))

(declare-fun m!3452559 () Bool)

(assert (=> bs!540384 m!3452559))

(assert (=> bs!540384 m!3451713))

(assert (=> bs!540384 m!3451973))

(assert (=> bs!540384 m!3451973))

(declare-fun m!3452561 () Bool)

(assert (=> bs!540384 m!3452561))

(assert (=> bs!540384 m!3451713))

(declare-fun m!3452563 () Bool)

(assert (=> bs!540384 m!3452563))

(assert (=> d!872956 d!873170))

(declare-fun d!873172 () Bool)

(assert (=> d!873172 (= (list!12776 (singletonSeq!2269 (h!41384 tokens!494))) (list!12780 (c!535940 (singletonSeq!2269 (h!41384 tokens!494)))))))

(declare-fun bs!540385 () Bool)

(assert (= bs!540385 d!873172))

(declare-fun m!3452565 () Bool)

(assert (=> bs!540385 m!3452565))

(assert (=> d!872956 d!873172))

(assert (=> d!872956 d!872974))

(assert (=> d!872956 d!872966))

(declare-fun d!873174 () Bool)

(declare-fun lt!1075492 () Int)

(assert (=> d!873174 (= lt!1075492 (size!27104 (list!12776 (_1!20799 lt!1075368))))))

(assert (=> d!873174 (= lt!1075492 (size!27105 (c!535940 (_1!20799 lt!1075368))))))

(assert (=> d!873174 (= (size!27098 (_1!20799 lt!1075368)) lt!1075492)))

(declare-fun bs!540386 () Bool)

(assert (= bs!540386 d!873174))

(assert (=> bs!540386 m!3452507))

(assert (=> bs!540386 m!3452507))

(declare-fun m!3452567 () Bool)

(assert (=> bs!540386 m!3452567))

(declare-fun m!3452569 () Bool)

(assert (=> bs!540386 m!3452569))

(assert (=> d!872956 d!873174))

(declare-fun d!873176 () Bool)

(declare-fun c!536026 () Bool)

(assert (=> d!873176 (= c!536026 (is-Empty!10721 (c!535939 (charsOf!3189 (h!41384 tokens!494)))))))

(declare-fun e!1990444 () List!36087)

(assert (=> d!873176 (= (list!12777 (c!535939 (charsOf!3189 (h!41384 tokens!494)))) e!1990444)))

(declare-fun b!3193075 () Bool)

(declare-fun e!1990445 () List!36087)

(assert (=> b!3193075 (= e!1990445 (list!12781 (xs!13839 (c!535939 (charsOf!3189 (h!41384 tokens!494))))))))

(declare-fun b!3193073 () Bool)

(assert (=> b!3193073 (= e!1990444 Nil!35963)))

(declare-fun b!3193074 () Bool)

(assert (=> b!3193074 (= e!1990444 e!1990445)))

(declare-fun c!536027 () Bool)

(assert (=> b!3193074 (= c!536027 (is-Leaf!16919 (c!535939 (charsOf!3189 (h!41384 tokens!494)))))))

(declare-fun b!3193076 () Bool)

(assert (=> b!3193076 (= e!1990445 (++!8604 (list!12777 (left!27954 (c!535939 (charsOf!3189 (h!41384 tokens!494))))) (list!12777 (right!28284 (c!535939 (charsOf!3189 (h!41384 tokens!494)))))))))

(assert (= (and d!873176 c!536026) b!3193073))

(assert (= (and d!873176 (not c!536026)) b!3193074))

(assert (= (and b!3193074 c!536027) b!3193075))

(assert (= (and b!3193074 (not c!536027)) b!3193076))

(declare-fun m!3452571 () Bool)

(assert (=> b!3193075 m!3452571))

(declare-fun m!3452573 () Bool)

(assert (=> b!3193076 m!3452573))

(declare-fun m!3452575 () Bool)

(assert (=> b!3193076 m!3452575))

(assert (=> b!3193076 m!3452573))

(assert (=> b!3193076 m!3452575))

(declare-fun m!3452577 () Bool)

(assert (=> b!3193076 m!3452577))

(assert (=> d!872994 d!873176))

(declare-fun d!873178 () Bool)

(declare-fun c!536028 () Bool)

(assert (=> d!873178 (= c!536028 (is-IntegerValue!16209 (value!167892 (h!41384 (t!236311 tokens!494)))))))

(declare-fun e!1990448 () Bool)

(assert (=> d!873178 (= (inv!21 (value!167892 (h!41384 (t!236311 tokens!494)))) e!1990448)))

(declare-fun b!3193077 () Bool)

(declare-fun e!1990446 () Bool)

(assert (=> b!3193077 (= e!1990446 (inv!15 (value!167892 (h!41384 (t!236311 tokens!494)))))))

(declare-fun b!3193078 () Bool)

(declare-fun e!1990447 () Bool)

(assert (=> b!3193078 (= e!1990448 e!1990447)))

(declare-fun c!536029 () Bool)

(assert (=> b!3193078 (= c!536029 (is-IntegerValue!16210 (value!167892 (h!41384 (t!236311 tokens!494)))))))

(declare-fun b!3193079 () Bool)

(declare-fun res!1298953 () Bool)

(assert (=> b!3193079 (=> res!1298953 e!1990446)))

(assert (=> b!3193079 (= res!1298953 (not (is-IntegerValue!16211 (value!167892 (h!41384 (t!236311 tokens!494))))))))

(assert (=> b!3193079 (= e!1990447 e!1990446)))

(declare-fun b!3193080 () Bool)

(assert (=> b!3193080 (= e!1990448 (inv!16 (value!167892 (h!41384 (t!236311 tokens!494)))))))

(declare-fun b!3193081 () Bool)

(assert (=> b!3193081 (= e!1990447 (inv!17 (value!167892 (h!41384 (t!236311 tokens!494)))))))

(assert (= (and d!873178 c!536028) b!3193080))

(assert (= (and d!873178 (not c!536028)) b!3193078))

(assert (= (and b!3193078 c!536029) b!3193081))

(assert (= (and b!3193078 (not c!536029)) b!3193079))

(assert (= (and b!3193079 (not res!1298953)) b!3193077))

(declare-fun m!3452579 () Bool)

(assert (=> b!3193077 m!3452579))

(declare-fun m!3452581 () Bool)

(assert (=> b!3193080 m!3452581))

(declare-fun m!3452583 () Bool)

(assert (=> b!3193081 m!3452583))

(assert (=> b!3192782 d!873178))

(declare-fun d!873180 () Bool)

(assert (=> d!873180 (= (list!12774 lt!1075372) (list!12777 (c!535939 lt!1075372)))))

(declare-fun bs!540387 () Bool)

(assert (= bs!540387 d!873180))

(declare-fun m!3452585 () Bool)

(assert (=> bs!540387 m!3452585))

(assert (=> d!872962 d!873180))

(declare-fun d!873182 () Bool)

(declare-fun c!536030 () Bool)

(assert (=> d!873182 (= c!536030 (is-Cons!35964 (list!12776 lt!1075302)))))

(declare-fun e!1990449 () List!36087)

(assert (=> d!873182 (= (printList!1312 thiss!18206 (list!12776 lt!1075302)) e!1990449)))

(declare-fun b!3193082 () Bool)

(assert (=> b!3193082 (= e!1990449 (++!8604 (list!12774 (charsOf!3189 (h!41384 (list!12776 lt!1075302)))) (printList!1312 thiss!18206 (t!236311 (list!12776 lt!1075302)))))))

(declare-fun b!3193083 () Bool)

(assert (=> b!3193083 (= e!1990449 Nil!35963)))

(assert (= (and d!873182 c!536030) b!3193082))

(assert (= (and d!873182 (not c!536030)) b!3193083))

(declare-fun m!3452587 () Bool)

(assert (=> b!3193082 m!3452587))

(assert (=> b!3193082 m!3452587))

(declare-fun m!3452589 () Bool)

(assert (=> b!3193082 m!3452589))

(declare-fun m!3452591 () Bool)

(assert (=> b!3193082 m!3452591))

(assert (=> b!3193082 m!3452589))

(assert (=> b!3193082 m!3452591))

(declare-fun m!3452593 () Bool)

(assert (=> b!3193082 m!3452593))

(assert (=> d!872962 d!873182))

(assert (=> d!872962 d!873074))

(assert (=> d!872962 d!872964))

(declare-fun bs!540388 () Bool)

(declare-fun d!873184 () Bool)

(assert (= bs!540388 (and d!873184 b!3192457)))

(declare-fun lambda!116860 () Int)

(assert (=> bs!540388 (not (= lambda!116860 lambda!116828))))

(declare-fun bs!540389 () Bool)

(assert (= bs!540389 (and d!873184 d!872944)))

(assert (=> bs!540389 (= lambda!116860 lambda!116840)))

(declare-fun b!3193092 () Bool)

(declare-fun e!1990458 () Bool)

(assert (=> b!3193092 (= e!1990458 true)))

(declare-fun b!3193091 () Bool)

(declare-fun e!1990457 () Bool)

(assert (=> b!3193091 (= e!1990457 e!1990458)))

(declare-fun b!3193090 () Bool)

(declare-fun e!1990456 () Bool)

(assert (=> b!3193090 (= e!1990456 e!1990457)))

(assert (=> d!873184 e!1990456))

(assert (= b!3193091 b!3193092))

(assert (= b!3193090 b!3193091))

(assert (= (and d!873184 (is-Cons!35965 rules!2135)) b!3193090))

(assert (=> b!3193092 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14487 order!18285 lambda!116860))))

(assert (=> b!3193092 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (h!41385 rules!2135)))) (dynLambda!14487 order!18285 lambda!116860))))

(assert (=> d!873184 true))

(declare-fun lt!1075495 () Bool)

(assert (=> d!873184 (= lt!1075495 (forall!7307 (list!12776 (seqFromList!3418 tokens!494)) lambda!116860))))

(declare-fun e!1990454 () Bool)

(assert (=> d!873184 (= lt!1075495 e!1990454)))

(declare-fun res!1298964 () Bool)

(assert (=> d!873184 (=> res!1298964 e!1990454)))

(assert (=> d!873184 (= res!1298964 (not (is-Cons!35964 (list!12776 (seqFromList!3418 tokens!494)))))))

(assert (=> d!873184 (not (isEmpty!20067 rules!2135))))

(assert (=> d!873184 (= (rulesProduceEachTokenIndividuallyList!1712 thiss!18206 rules!2135 (list!12776 (seqFromList!3418 tokens!494))) lt!1075495)))

(declare-fun b!3193088 () Bool)

(declare-fun e!1990455 () Bool)

(assert (=> b!3193088 (= e!1990454 e!1990455)))

(declare-fun res!1298963 () Bool)

(assert (=> b!3193088 (=> (not res!1298963) (not e!1990455))))

(assert (=> b!3193088 (= res!1298963 (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 (h!41384 (list!12776 (seqFromList!3418 tokens!494)))))))

(declare-fun b!3193089 () Bool)

(assert (=> b!3193089 (= e!1990455 (rulesProduceEachTokenIndividuallyList!1712 thiss!18206 rules!2135 (t!236311 (list!12776 (seqFromList!3418 tokens!494)))))))

(assert (= (and d!873184 (not res!1298964)) b!3193088))

(assert (= (and b!3193088 res!1298963) b!3193089))

(assert (=> d!873184 m!3451963))

(declare-fun m!3452595 () Bool)

(assert (=> d!873184 m!3452595))

(assert (=> d!873184 m!3451765))

(declare-fun m!3452597 () Bool)

(assert (=> b!3193088 m!3452597))

(declare-fun m!3452599 () Bool)

(assert (=> b!3193089 m!3452599))

(assert (=> b!3192655 d!873184))

(assert (=> b!3192655 d!873112))

(declare-fun d!873188 () Bool)

(assert (=> d!873188 (= (list!12776 lt!1075396) (list!12780 (c!535940 lt!1075396)))))

(declare-fun bs!540390 () Bool)

(assert (= bs!540390 d!873188))

(declare-fun m!3452601 () Bool)

(assert (=> bs!540390 m!3452601))

(assert (=> d!872966 d!873188))

(declare-fun d!873190 () Bool)

(declare-fun e!1990468 () Bool)

(assert (=> d!873190 e!1990468))

(declare-fun res!1298970 () Bool)

(assert (=> d!873190 (=> (not res!1298970) (not e!1990468))))

(declare-fun lt!1075500 () BalanceConc!21058)

(assert (=> d!873190 (= res!1298970 (= (list!12776 lt!1075500) (Cons!35964 (h!41384 tokens!494) Nil!35964)))))

(declare-fun choose!18635 (Token!9712) BalanceConc!21058)

(assert (=> d!873190 (= lt!1075500 (choose!18635 (h!41384 tokens!494)))))

(assert (=> d!873190 (= (singleton!983 (h!41384 tokens!494)) lt!1075500)))

(declare-fun b!3193108 () Bool)

(assert (=> b!3193108 (= e!1990468 (isBalanced!3196 (c!535940 lt!1075500)))))

(assert (= (and d!873190 res!1298970) b!3193108))

(declare-fun m!3452607 () Bool)

(assert (=> d!873190 m!3452607))

(declare-fun m!3452609 () Bool)

(assert (=> d!873190 m!3452609))

(declare-fun m!3452611 () Bool)

(assert (=> b!3193108 m!3452611))

(assert (=> d!872966 d!873190))

(declare-fun d!873194 () Bool)

(assert (=> d!873194 (= (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))) (isBalanced!3198 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))))))

(declare-fun bs!540391 () Bool)

(assert (= bs!540391 d!873194))

(declare-fun m!3452615 () Bool)

(assert (=> bs!540391 m!3452615))

(assert (=> tb!155981 d!873194))

(declare-fun d!873198 () Bool)

(declare-fun res!1298971 () Bool)

(declare-fun e!1990471 () Bool)

(assert (=> d!873198 (=> (not res!1298971) (not e!1990471))))

(assert (=> d!873198 (= res!1298971 (not (isEmpty!20071 (originalCharacters!5887 (h!41384 (t!236311 tokens!494))))))))

(assert (=> d!873198 (= (inv!48809 (h!41384 (t!236311 tokens!494))) e!1990471)))

(declare-fun b!3193111 () Bool)

(declare-fun res!1298972 () Bool)

(assert (=> b!3193111 (=> (not res!1298972) (not e!1990471))))

(assert (=> b!3193111 (= res!1298972 (= (originalCharacters!5887 (h!41384 (t!236311 tokens!494))) (list!12774 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (value!167892 (h!41384 (t!236311 tokens!494)))))))))

(declare-fun b!3193112 () Bool)

(assert (=> b!3193112 (= e!1990471 (= (size!27096 (h!41384 (t!236311 tokens!494))) (size!27099 (originalCharacters!5887 (h!41384 (t!236311 tokens!494))))))))

(assert (= (and d!873198 res!1298971) b!3193111))

(assert (= (and b!3193111 res!1298972) b!3193112))

(declare-fun b_lambda!87115 () Bool)

(assert (=> (not b_lambda!87115) (not b!3193111)))

(declare-fun tb!156025 () Bool)

(declare-fun t!236390 () Bool)

(assert (=> (and b!3192809 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236390) tb!156025))

(declare-fun b!3193113 () Bool)

(declare-fun e!1990472 () Bool)

(declare-fun tp!1009648 () Bool)

(assert (=> b!3193113 (= e!1990472 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (value!167892 (h!41384 (t!236311 tokens!494)))))) tp!1009648))))

(declare-fun result!198250 () Bool)

(assert (=> tb!156025 (= result!198250 (and (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (value!167892 (h!41384 (t!236311 tokens!494))))) e!1990472))))

(assert (= tb!156025 b!3193113))

(declare-fun m!3452617 () Bool)

(assert (=> b!3193113 m!3452617))

(declare-fun m!3452619 () Bool)

(assert (=> tb!156025 m!3452619))

(assert (=> b!3193111 t!236390))

(declare-fun b_and!211761 () Bool)

(assert (= b_and!211751 (and (=> t!236390 result!198250) b_and!211761)))

(declare-fun tb!156027 () Bool)

(declare-fun t!236392 () Bool)

(assert (=> (and b!3192480 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236392) tb!156027))

(declare-fun result!198252 () Bool)

(assert (= result!198252 result!198250))

(assert (=> b!3193111 t!236392))

(declare-fun b_and!211763 () Bool)

(assert (= b_and!211757 (and (=> t!236392 result!198252) b_and!211763)))

(declare-fun tb!156029 () Bool)

(declare-fun t!236394 () Bool)

(assert (=> (and b!3192475 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236394) tb!156029))

(declare-fun result!198254 () Bool)

(assert (= result!198254 result!198250))

(assert (=> b!3193111 t!236394))

(declare-fun b_and!211765 () Bool)

(assert (= b_and!211759 (and (=> t!236394 result!198254) b_and!211765)))

(declare-fun t!236396 () Bool)

(declare-fun tb!156031 () Bool)

(assert (=> (and b!3192784 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236396) tb!156031))

(declare-fun result!198256 () Bool)

(assert (= result!198256 result!198250))

(assert (=> b!3193111 t!236396))

(declare-fun b_and!211767 () Bool)

(assert (= b_and!211753 (and (=> t!236396 result!198256) b_and!211767)))

(declare-fun t!236398 () Bool)

(declare-fun tb!156033 () Bool)

(assert (=> (and b!3192467 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236398) tb!156033))

(declare-fun result!198258 () Bool)

(assert (= result!198258 result!198250))

(assert (=> b!3193111 t!236398))

(declare-fun b_and!211769 () Bool)

(assert (= b_and!211755 (and (=> t!236398 result!198258) b_and!211769)))

(declare-fun m!3452621 () Bool)

(assert (=> d!873198 m!3452621))

(declare-fun m!3452625 () Bool)

(assert (=> b!3193111 m!3452625))

(assert (=> b!3193111 m!3452625))

(declare-fun m!3452631 () Bool)

(assert (=> b!3193111 m!3452631))

(declare-fun m!3452633 () Bool)

(assert (=> b!3193112 m!3452633))

(assert (=> b!3192781 d!873198))

(declare-fun d!873202 () Bool)

(assert (=> d!873202 (= (isEmpty!20072 (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))) (is-Nil!35964 (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(assert (=> d!872976 d!873202))

(declare-fun d!873204 () Bool)

(assert (=> d!873204 (= (list!12776 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)))) (list!12780 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(declare-fun bs!540393 () Bool)

(assert (= bs!540393 d!873204))

(declare-fun m!3452635 () Bool)

(assert (=> bs!540393 m!3452635))

(assert (=> d!872976 d!873204))

(declare-fun d!873206 () Bool)

(declare-fun lt!1075507 () Bool)

(assert (=> d!873206 (= lt!1075507 (isEmpty!20072 (list!12780 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)))))))))

(assert (=> d!873206 (= lt!1075507 (= (size!27105 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))) 0))))

(assert (=> d!873206 (= (isEmpty!20073 (c!535940 (_1!20799 (lex!2092 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))) lt!1075507)))

(declare-fun bs!540394 () Bool)

(assert (= bs!540394 d!873206))

(assert (=> bs!540394 m!3452635))

(assert (=> bs!540394 m!3452635))

(declare-fun m!3452637 () Bool)

(assert (=> bs!540394 m!3452637))

(declare-fun m!3452639 () Bool)

(assert (=> bs!540394 m!3452639))

(assert (=> d!872976 d!873206))

(declare-fun d!873208 () Bool)

(assert (=> d!873208 (= (list!12774 lt!1075393) (list!12777 (c!535939 lt!1075393)))))

(declare-fun bs!540395 () Bool)

(assert (= bs!540395 d!873208))

(declare-fun m!3452641 () Bool)

(assert (=> bs!540395 m!3452641))

(assert (=> d!872964 d!873208))

(declare-fun d!873210 () Bool)

(declare-fun lt!1075525 () List!36087)

(assert (=> d!873210 (= lt!1075525 (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) (printList!1312 thiss!18206 (dropList!1067 lt!1075302 0))))))

(declare-fun e!1990483 () List!36087)

(assert (=> d!873210 (= lt!1075525 e!1990483)))

(declare-fun c!536045 () Bool)

(assert (=> d!873210 (= c!536045 (is-Cons!35964 (dropList!1067 lt!1075302 0)))))

(assert (=> d!873210 (= (printListTailRec!550 thiss!18206 (dropList!1067 lt!1075302 0) (list!12774 (BalanceConc!21057 Empty!10721))) lt!1075525)))

(declare-fun b!3193132 () Bool)

(assert (=> b!3193132 (= e!1990483 (printListTailRec!550 thiss!18206 (t!236311 (dropList!1067 lt!1075302 0)) (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) (list!12774 (charsOf!3189 (h!41384 (dropList!1067 lt!1075302 0)))))))))

(declare-fun lt!1075523 () List!36087)

(assert (=> b!3193132 (= lt!1075523 (list!12774 (charsOf!3189 (h!41384 (dropList!1067 lt!1075302 0)))))))

(declare-fun lt!1075522 () List!36087)

(assert (=> b!3193132 (= lt!1075522 (printList!1312 thiss!18206 (t!236311 (dropList!1067 lt!1075302 0))))))

(declare-fun lt!1075524 () Unit!50371)

(declare-fun lemmaConcatAssociativity!1691 (List!36087 List!36087 List!36087) Unit!50371)

(assert (=> b!3193132 (= lt!1075524 (lemmaConcatAssociativity!1691 (list!12774 (BalanceConc!21057 Empty!10721)) lt!1075523 lt!1075522))))

(assert (=> b!3193132 (= (++!8604 (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) lt!1075523) lt!1075522) (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) (++!8604 lt!1075523 lt!1075522)))))

(declare-fun lt!1075521 () Unit!50371)

(assert (=> b!3193132 (= lt!1075521 lt!1075524)))

(declare-fun b!3193133 () Bool)

(assert (=> b!3193133 (= e!1990483 (list!12774 (BalanceConc!21057 Empty!10721)))))

(assert (= (and d!873210 c!536045) b!3193132))

(assert (= (and d!873210 (not c!536045)) b!3193133))

(assert (=> d!873210 m!3452013))

(declare-fun m!3452661 () Bool)

(assert (=> d!873210 m!3452661))

(assert (=> d!873210 m!3452011))

(assert (=> d!873210 m!3452661))

(declare-fun m!3452663 () Bool)

(assert (=> d!873210 m!3452663))

(declare-fun m!3452665 () Bool)

(assert (=> b!3193132 m!3452665))

(declare-fun m!3452667 () Bool)

(assert (=> b!3193132 m!3452667))

(assert (=> b!3193132 m!3452011))

(declare-fun m!3452669 () Bool)

(assert (=> b!3193132 m!3452669))

(assert (=> b!3193132 m!3452665))

(declare-fun m!3452671 () Bool)

(assert (=> b!3193132 m!3452671))

(declare-fun m!3452673 () Bool)

(assert (=> b!3193132 m!3452673))

(declare-fun m!3452675 () Bool)

(assert (=> b!3193132 m!3452675))

(assert (=> b!3193132 m!3452011))

(declare-fun m!3452677 () Bool)

(assert (=> b!3193132 m!3452677))

(declare-fun m!3452679 () Bool)

(assert (=> b!3193132 m!3452679))

(assert (=> b!3193132 m!3452669))

(assert (=> b!3193132 m!3452679))

(assert (=> b!3193132 m!3452011))

(declare-fun m!3452681 () Bool)

(assert (=> b!3193132 m!3452681))

(declare-fun m!3452683 () Bool)

(assert (=> b!3193132 m!3452683))

(assert (=> b!3193132 m!3452011))

(assert (=> b!3193132 m!3452671))

(assert (=> b!3193132 m!3452681))

(assert (=> d!872964 d!873210))

(declare-fun d!873222 () Bool)

(assert (=> d!873222 (= (list!12774 (BalanceConc!21057 Empty!10721)) (list!12777 (c!535939 (BalanceConc!21057 Empty!10721))))))

(declare-fun bs!540399 () Bool)

(assert (= bs!540399 d!873222))

(declare-fun m!3452685 () Bool)

(assert (=> bs!540399 m!3452685))

(assert (=> d!872964 d!873222))

(declare-fun d!873224 () Bool)

(assert (=> d!873224 (= (dropList!1067 lt!1075302 0) (drop!1850 (list!12780 (c!535940 lt!1075302)) 0))))

(declare-fun bs!540400 () Bool)

(assert (= bs!540400 d!873224))

(assert (=> bs!540400 m!3452385))

(assert (=> bs!540400 m!3452385))

(declare-fun m!3452687 () Bool)

(assert (=> bs!540400 m!3452687))

(assert (=> d!872964 d!873224))

(assert (=> d!872964 d!873116))

(declare-fun d!873226 () Bool)

(assert (=> d!873226 (= (inv!16 (value!167892 (h!41384 tokens!494))) (= (charsToInt!0 (text!38268 (value!167892 (h!41384 tokens!494)))) (value!167883 (value!167892 (h!41384 tokens!494)))))))

(declare-fun bs!540401 () Bool)

(assert (= bs!540401 d!873226))

(declare-fun m!3452689 () Bool)

(assert (=> bs!540401 m!3452689))

(assert (=> b!3192613 d!873226))

(declare-fun d!873228 () Bool)

(declare-fun lt!1075526 () Bool)

(assert (=> d!873228 (= lt!1075526 (set.member (h!41384 (t!236311 tokens!494)) (content!4859 (t!236311 tokens!494))))))

(declare-fun e!1990490 () Bool)

(assert (=> d!873228 (= lt!1075526 e!1990490)))

(declare-fun res!1298979 () Bool)

(assert (=> d!873228 (=> (not res!1298979) (not e!1990490))))

(assert (=> d!873228 (= res!1298979 (is-Cons!35964 (t!236311 tokens!494)))))

(assert (=> d!873228 (= (contains!6388 (t!236311 tokens!494) (h!41384 (t!236311 tokens!494))) lt!1075526)))

(declare-fun b!3193142 () Bool)

(declare-fun e!1990491 () Bool)

(assert (=> b!3193142 (= e!1990490 e!1990491)))

(declare-fun res!1298980 () Bool)

(assert (=> b!3193142 (=> res!1298980 e!1990491)))

(assert (=> b!3193142 (= res!1298980 (= (h!41384 (t!236311 tokens!494)) (h!41384 (t!236311 tokens!494))))))

(declare-fun b!3193143 () Bool)

(assert (=> b!3193143 (= e!1990491 (contains!6388 (t!236311 (t!236311 tokens!494)) (h!41384 (t!236311 tokens!494))))))

(assert (= (and d!873228 res!1298979) b!3193142))

(assert (= (and b!3193142 (not res!1298980)) b!3193143))

(declare-fun m!3452691 () Bool)

(assert (=> d!873228 m!3452691))

(declare-fun m!3452693 () Bool)

(assert (=> d!873228 m!3452693))

(declare-fun m!3452695 () Bool)

(assert (=> b!3193143 m!3452695))

(assert (=> b!3192628 d!873228))

(declare-fun d!873230 () Bool)

(assert (=> d!873230 (= (list!12776 (_1!20799 lt!1075406)) (list!12780 (c!535940 (_1!20799 lt!1075406))))))

(declare-fun bs!540402 () Bool)

(assert (= bs!540402 d!873230))

(declare-fun m!3452697 () Bool)

(assert (=> bs!540402 m!3452697))

(assert (=> b!3192747 d!873230))

(declare-fun b!3193177 () Bool)

(declare-fun e!1990513 () Bool)

(declare-fun lt!1075540 () tuple2!35334)

(assert (=> b!3193177 (= e!1990513 (= (_2!20801 lt!1075540) (list!12774 (seqFromList!3417 lt!1075299))))))

(declare-fun b!3193178 () Bool)

(declare-fun e!1990511 () tuple2!35334)

(declare-datatypes ((tuple2!35338 0))(
  ( (tuple2!35339 (_1!20803 Token!9712) (_2!20803 List!36087)) )
))
(declare-datatypes ((Option!7055 0))(
  ( (None!7054) (Some!7054 (v!35566 tuple2!35338)) )
))
(declare-fun lt!1075539 () Option!7055)

(declare-fun lt!1075538 () tuple2!35334)

(assert (=> b!3193178 (= e!1990511 (tuple2!35335 (Cons!35964 (_1!20803 (v!35566 lt!1075539)) (_1!20801 lt!1075538)) (_2!20801 lt!1075538)))))

(assert (=> b!3193178 (= lt!1075538 (lexList!1302 thiss!18206 rules!2135 (_2!20803 (v!35566 lt!1075539))))))

(declare-fun b!3193179 () Bool)

(assert (=> b!3193179 (= e!1990511 (tuple2!35335 Nil!35964 (list!12774 (seqFromList!3417 lt!1075299))))))

(declare-fun b!3193180 () Bool)

(declare-fun e!1990512 () Bool)

(assert (=> b!3193180 (= e!1990512 (not (isEmpty!20072 (_1!20801 lt!1075540))))))

(declare-fun d!873232 () Bool)

(assert (=> d!873232 e!1990513))

(declare-fun c!536057 () Bool)

(assert (=> d!873232 (= c!536057 (> (size!27104 (_1!20801 lt!1075540)) 0))))

(assert (=> d!873232 (= lt!1075540 e!1990511)))

(declare-fun c!536058 () Bool)

(assert (=> d!873232 (= c!536058 (is-Some!7054 lt!1075539))))

(declare-fun maxPrefix!2428 (LexerInterface!4762 List!36089 List!36087) Option!7055)

(assert (=> d!873232 (= lt!1075539 (maxPrefix!2428 thiss!18206 rules!2135 (list!12774 (seqFromList!3417 lt!1075299))))))

(assert (=> d!873232 (= (lexList!1302 thiss!18206 rules!2135 (list!12774 (seqFromList!3417 lt!1075299))) lt!1075540)))

(declare-fun b!3193181 () Bool)

(assert (=> b!3193181 (= e!1990513 e!1990512)))

(declare-fun res!1298991 () Bool)

(assert (=> b!3193181 (= res!1298991 (< (size!27099 (_2!20801 lt!1075540)) (size!27099 (list!12774 (seqFromList!3417 lt!1075299)))))))

(assert (=> b!3193181 (=> (not res!1298991) (not e!1990512))))

(assert (= (and d!873232 c!536058) b!3193178))

(assert (= (and d!873232 (not c!536058)) b!3193179))

(assert (= (and d!873232 c!536057) b!3193181))

(assert (= (and d!873232 (not c!536057)) b!3193177))

(assert (= (and b!3193181 res!1298991) b!3193180))

(declare-fun m!3452747 () Bool)

(assert (=> b!3193178 m!3452747))

(declare-fun m!3452749 () Bool)

(assert (=> b!3193180 m!3452749))

(declare-fun m!3452751 () Bool)

(assert (=> d!873232 m!3452751))

(assert (=> d!873232 m!3452111))

(declare-fun m!3452753 () Bool)

(assert (=> d!873232 m!3452753))

(declare-fun m!3452755 () Bool)

(assert (=> b!3193181 m!3452755))

(assert (=> b!3193181 m!3452111))

(assert (=> b!3193181 m!3452469))

(assert (=> b!3192747 d!873232))

(declare-fun d!873262 () Bool)

(assert (=> d!873262 (= (list!12774 (seqFromList!3417 lt!1075299)) (list!12777 (c!535939 (seqFromList!3417 lt!1075299))))))

(declare-fun bs!540409 () Bool)

(assert (= bs!540409 d!873262))

(declare-fun m!3452757 () Bool)

(assert (=> bs!540409 m!3452757))

(assert (=> b!3192747 d!873262))

(declare-fun bs!540410 () Bool)

(declare-fun d!873264 () Bool)

(assert (= bs!540410 (and d!873264 d!873048)))

(declare-fun lambda!116864 () Int)

(assert (=> bs!540410 (= (= (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) (= lambda!116864 lambda!116848))))

(declare-fun bs!540411 () Bool)

(assert (= bs!540411 (and d!873264 d!873150)))

(assert (=> bs!540411 (= (= (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (h!41385 rules!2135)))) (= lambda!116864 lambda!116856))))

(assert (=> d!873264 true))

(assert (=> d!873264 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))) (dynLambda!14494 order!18295 lambda!116864))))

(assert (=> d!873264 (= (equivClasses!2043 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toValue!7237 (transformation!5173 (rule!7605 separatorToken!241)))) (Forall2!853 lambda!116864))))

(declare-fun bs!540412 () Bool)

(assert (= bs!540412 d!873264))

(declare-fun m!3452759 () Bool)

(assert (=> bs!540412 m!3452759))

(assert (=> b!3192756 d!873264))

(declare-fun d!873266 () Bool)

(declare-fun lt!1075541 () Int)

(assert (=> d!873266 (= lt!1075541 (size!27104 (list!12776 (_1!20799 lt!1075406))))))

(assert (=> d!873266 (= lt!1075541 (size!27105 (c!535940 (_1!20799 lt!1075406))))))

(assert (=> d!873266 (= (size!27098 (_1!20799 lt!1075406)) lt!1075541)))

(declare-fun bs!540413 () Bool)

(assert (= bs!540413 d!873266))

(assert (=> bs!540413 m!3452109))

(assert (=> bs!540413 m!3452109))

(declare-fun m!3452761 () Bool)

(assert (=> bs!540413 m!3452761))

(declare-fun m!3452763 () Bool)

(assert (=> bs!540413 m!3452763))

(assert (=> d!872978 d!873266))

(declare-datatypes ((tuple2!35342 0))(
  ( (tuple2!35343 (_1!20805 Token!9712) (_2!20805 BalanceConc!21056)) )
))
(declare-datatypes ((Option!7057 0))(
  ( (None!7056) (Some!7056 (v!35568 tuple2!35342)) )
))
(declare-fun lt!1075676 () Option!7057)

(declare-fun b!3193222 () Bool)

(declare-fun lt!1075698 () tuple2!35330)

(declare-fun lexRec!676 (LexerInterface!4762 List!36089 BalanceConc!21056) tuple2!35330)

(assert (=> b!3193222 (= lt!1075698 (lexRec!676 thiss!18206 rules!2135 (_2!20805 (v!35568 lt!1075676))))))

(declare-fun e!1990538 () tuple2!35330)

(declare-fun prepend!1164 (BalanceConc!21058 Token!9712) BalanceConc!21058)

(assert (=> b!3193222 (= e!1990538 (tuple2!35331 (prepend!1164 (_1!20799 lt!1075698) (_1!20805 (v!35568 lt!1075676))) (_2!20799 lt!1075698)))))

(declare-fun b!3193223 () Bool)

(declare-fun e!1990539 () tuple2!35330)

(declare-fun lt!1075691 () BalanceConc!21056)

(assert (=> b!3193223 (= e!1990539 (tuple2!35331 (BalanceConc!21059 Empty!10722) lt!1075691))))

(declare-fun lt!1075696 () tuple2!35330)

(declare-fun b!3193224 () Bool)

(declare-fun e!1990540 () Bool)

(assert (=> b!3193224 (= e!1990540 (= (list!12774 (_2!20799 lt!1075696)) (list!12774 (_2!20799 (lexRec!676 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(declare-fun b!3193225 () Bool)

(assert (=> b!3193225 (= e!1990538 (tuple2!35331 (BalanceConc!21059 Empty!10722) (seqFromList!3417 lt!1075299)))))

(declare-fun d!873268 () Bool)

(assert (=> d!873268 e!1990540))

(declare-fun res!1299000 () Bool)

(assert (=> d!873268 (=> (not res!1299000) (not e!1990540))))

(assert (=> d!873268 (= res!1299000 (= (list!12776 (_1!20799 lt!1075696)) (list!12776 (_1!20799 (lexRec!676 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299))))))))

(declare-fun e!1990541 () tuple2!35330)

(assert (=> d!873268 (= lt!1075696 e!1990541)))

(declare-fun c!536077 () Bool)

(declare-fun lt!1075693 () Option!7057)

(assert (=> d!873268 (= c!536077 (is-Some!7056 lt!1075693))))

(declare-fun maxPrefixZipperSequenceV2!463 (LexerInterface!4762 List!36089 BalanceConc!21056 BalanceConc!21056) Option!7057)

(assert (=> d!873268 (= lt!1075693 (maxPrefixZipperSequenceV2!463 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299) (seqFromList!3417 lt!1075299)))))

(declare-fun lt!1075685 () Unit!50371)

(declare-fun lt!1075690 () Unit!50371)

(assert (=> d!873268 (= lt!1075685 lt!1075690)))

(declare-fun lt!1075699 () List!36087)

(declare-fun lt!1075681 () List!36087)

(declare-fun isSuffix!838 (List!36087 List!36087) Bool)

(assert (=> d!873268 (isSuffix!838 lt!1075699 (++!8604 lt!1075681 lt!1075699))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!523 (List!36087 List!36087) Unit!50371)

(assert (=> d!873268 (= lt!1075690 (lemmaConcatTwoListThenFSndIsSuffix!523 lt!1075681 lt!1075699))))

(assert (=> d!873268 (= lt!1075699 (list!12774 (seqFromList!3417 lt!1075299)))))

(assert (=> d!873268 (= lt!1075681 (list!12774 (BalanceConc!21057 Empty!10721)))))

(assert (=> d!873268 (= (lexTailRecV2!922 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299) (BalanceConc!21057 Empty!10721) (seqFromList!3417 lt!1075299) (BalanceConc!21059 Empty!10722)) lt!1075696)))

(declare-fun lt!1075678 () tuple2!35330)

(declare-fun lt!1075677 () Option!7057)

(declare-fun b!3193226 () Bool)

(assert (=> b!3193226 (= lt!1075678 (lexRec!676 thiss!18206 rules!2135 (_2!20805 (v!35568 lt!1075677))))))

(assert (=> b!3193226 (= e!1990539 (tuple2!35331 (prepend!1164 (_1!20799 lt!1075678) (_1!20805 (v!35568 lt!1075677))) (_2!20799 lt!1075678)))))

(declare-fun b!3193227 () Bool)

(assert (=> b!3193227 (= e!1990541 (tuple2!35331 (BalanceConc!21059 Empty!10722) (seqFromList!3417 lt!1075299)))))

(declare-fun lt!1075686 () BalanceConc!21056)

(declare-fun b!3193228 () Bool)

(declare-fun append!856 (BalanceConc!21058 Token!9712) BalanceConc!21058)

(assert (=> b!3193228 (= e!1990541 (lexTailRecV2!922 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299) lt!1075686 (_2!20805 (v!35568 lt!1075693)) (append!856 (BalanceConc!21059 Empty!10722) (_1!20805 (v!35568 lt!1075693)))))))

(declare-fun lt!1075708 () tuple2!35330)

(assert (=> b!3193228 (= lt!1075708 (lexRec!676 thiss!18206 rules!2135 (_2!20805 (v!35568 lt!1075693))))))

(declare-fun lt!1075684 () List!36087)

(assert (=> b!3193228 (= lt!1075684 (list!12774 (BalanceConc!21057 Empty!10721)))))

(declare-fun lt!1075700 () List!36087)

(assert (=> b!3193228 (= lt!1075700 (list!12774 (charsOf!3189 (_1!20805 (v!35568 lt!1075693)))))))

(declare-fun lt!1075702 () List!36087)

(assert (=> b!3193228 (= lt!1075702 (list!12774 (_2!20805 (v!35568 lt!1075693))))))

(declare-fun lt!1075701 () Unit!50371)

(assert (=> b!3193228 (= lt!1075701 (lemmaConcatAssociativity!1691 lt!1075684 lt!1075700 lt!1075702))))

(assert (=> b!3193228 (= (++!8604 (++!8604 lt!1075684 lt!1075700) lt!1075702) (++!8604 lt!1075684 (++!8604 lt!1075700 lt!1075702)))))

(declare-fun lt!1075679 () Unit!50371)

(assert (=> b!3193228 (= lt!1075679 lt!1075701)))

(declare-fun maxPrefixZipperSequence!1069 (LexerInterface!4762 List!36089 BalanceConc!21056) Option!7057)

(assert (=> b!3193228 (= lt!1075676 (maxPrefixZipperSequence!1069 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)))))

(declare-fun c!536076 () Bool)

(assert (=> b!3193228 (= c!536076 (is-Some!7056 lt!1075676))))

(assert (=> b!3193228 (= (lexRec!676 thiss!18206 rules!2135 (seqFromList!3417 lt!1075299)) e!1990538)))

(declare-fun lt!1075680 () Unit!50371)

(declare-fun Unit!50376 () Unit!50371)

(assert (=> b!3193228 (= lt!1075680 Unit!50376)))

(declare-fun lt!1075694 () List!36088)

(assert (=> b!3193228 (= lt!1075694 (list!12776 (BalanceConc!21059 Empty!10722)))))

(declare-fun lt!1075692 () List!36088)

(assert (=> b!3193228 (= lt!1075692 (Cons!35964 (_1!20805 (v!35568 lt!1075693)) Nil!35964))))

(declare-fun lt!1075695 () List!36088)

(assert (=> b!3193228 (= lt!1075695 (list!12776 (_1!20799 lt!1075708)))))

(declare-fun lt!1075703 () Unit!50371)

(declare-fun lemmaConcatAssociativity!1692 (List!36088 List!36088 List!36088) Unit!50371)

(assert (=> b!3193228 (= lt!1075703 (lemmaConcatAssociativity!1692 lt!1075694 lt!1075692 lt!1075695))))

(declare-fun ++!8608 (List!36088 List!36088) List!36088)

(assert (=> b!3193228 (= (++!8608 (++!8608 lt!1075694 lt!1075692) lt!1075695) (++!8608 lt!1075694 (++!8608 lt!1075692 lt!1075695)))))

(declare-fun lt!1075707 () Unit!50371)

(assert (=> b!3193228 (= lt!1075707 lt!1075703)))

(declare-fun lt!1075704 () List!36087)

(assert (=> b!3193228 (= lt!1075704 (++!8604 (list!12774 (BalanceConc!21057 Empty!10721)) (list!12774 (charsOf!3189 (_1!20805 (v!35568 lt!1075693))))))))

(declare-fun lt!1075683 () List!36087)

(assert (=> b!3193228 (= lt!1075683 (list!12774 (_2!20805 (v!35568 lt!1075693))))))

(declare-fun lt!1075706 () List!36088)

(assert (=> b!3193228 (= lt!1075706 (list!12776 (append!856 (BalanceConc!21059 Empty!10722) (_1!20805 (v!35568 lt!1075693)))))))

(declare-fun lt!1075688 () Unit!50371)

(declare-fun lemmaLexThenLexPrefix!441 (LexerInterface!4762 List!36089 List!36087 List!36087 List!36088 List!36088 List!36087) Unit!50371)

(assert (=> b!3193228 (= lt!1075688 (lemmaLexThenLexPrefix!441 thiss!18206 rules!2135 lt!1075704 lt!1075683 lt!1075706 (list!12776 (_1!20799 lt!1075708)) (list!12774 (_2!20799 lt!1075708))))))

(assert (=> b!3193228 (= (lexList!1302 thiss!18206 rules!2135 lt!1075704) (tuple2!35335 lt!1075706 Nil!35963))))

(declare-fun lt!1075682 () Unit!50371)

(assert (=> b!3193228 (= lt!1075682 lt!1075688)))

(assert (=> b!3193228 (= lt!1075691 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (_1!20805 (v!35568 lt!1075693)))))))

(assert (=> b!3193228 (= lt!1075677 (maxPrefixZipperSequence!1069 thiss!18206 rules!2135 lt!1075691))))

(declare-fun c!536078 () Bool)

(assert (=> b!3193228 (= c!536078 (is-Some!7056 lt!1075677))))

(assert (=> b!3193228 (= (lexRec!676 thiss!18206 rules!2135 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (_1!20805 (v!35568 lt!1075693))))) e!1990539)))

(declare-fun lt!1075687 () Unit!50371)

(declare-fun Unit!50377 () Unit!50371)

(assert (=> b!3193228 (= lt!1075687 Unit!50377)))

(assert (=> b!3193228 (= lt!1075686 (++!8603 (BalanceConc!21057 Empty!10721) (charsOf!3189 (_1!20805 (v!35568 lt!1075693)))))))

(declare-fun lt!1075697 () List!36087)

(assert (=> b!3193228 (= lt!1075697 (list!12774 lt!1075686))))

(declare-fun lt!1075675 () List!36087)

(assert (=> b!3193228 (= lt!1075675 (list!12774 (_2!20805 (v!35568 lt!1075693))))))

(declare-fun lt!1075689 () Unit!50371)

(assert (=> b!3193228 (= lt!1075689 (lemmaConcatTwoListThenFSndIsSuffix!523 lt!1075697 lt!1075675))))

(assert (=> b!3193228 (isSuffix!838 lt!1075675 (++!8604 lt!1075697 lt!1075675))))

(declare-fun lt!1075705 () Unit!50371)

(assert (=> b!3193228 (= lt!1075705 lt!1075689)))

(assert (= (and d!873268 c!536077) b!3193228))

(assert (= (and d!873268 (not c!536077)) b!3193227))

(assert (= (and b!3193228 c!536076) b!3193222))

(assert (= (and b!3193228 (not c!536076)) b!3193225))

(assert (= (and b!3193228 c!536078) b!3193226))

(assert (= (and b!3193228 (not c!536078)) b!3193223))

(assert (= (and d!873268 res!1299000) b!3193224))

(declare-fun m!3452791 () Bool)

(assert (=> b!3193228 m!3452791))

(declare-fun m!3452793 () Bool)

(assert (=> b!3193228 m!3452793))

(declare-fun m!3452795 () Bool)

(assert (=> b!3193228 m!3452795))

(declare-fun m!3452797 () Bool)

(assert (=> b!3193228 m!3452797))

(declare-fun m!3452799 () Bool)

(assert (=> b!3193228 m!3452799))

(declare-fun m!3452801 () Bool)

(assert (=> b!3193228 m!3452801))

(declare-fun m!3452803 () Bool)

(assert (=> b!3193228 m!3452803))

(assert (=> b!3193228 m!3452801))

(declare-fun m!3452805 () Bool)

(assert (=> b!3193228 m!3452805))

(declare-fun m!3452807 () Bool)

(assert (=> b!3193228 m!3452807))

(declare-fun m!3452809 () Bool)

(assert (=> b!3193228 m!3452809))

(assert (=> b!3193228 m!3452805))

(declare-fun m!3452811 () Bool)

(assert (=> b!3193228 m!3452811))

(declare-fun m!3452813 () Bool)

(assert (=> b!3193228 m!3452813))

(declare-fun m!3452815 () Bool)

(assert (=> b!3193228 m!3452815))

(declare-fun m!3452817 () Bool)

(assert (=> b!3193228 m!3452817))

(declare-fun m!3452819 () Bool)

(assert (=> b!3193228 m!3452819))

(declare-fun m!3452821 () Bool)

(assert (=> b!3193228 m!3452821))

(declare-fun m!3452823 () Bool)

(assert (=> b!3193228 m!3452823))

(declare-fun m!3452825 () Bool)

(assert (=> b!3193228 m!3452825))

(declare-fun m!3452827 () Bool)

(assert (=> b!3193228 m!3452827))

(declare-fun m!3452829 () Bool)

(assert (=> b!3193228 m!3452829))

(assert (=> b!3193228 m!3451755))

(declare-fun m!3452831 () Bool)

(assert (=> b!3193228 m!3452831))

(declare-fun m!3452833 () Bool)

(assert (=> b!3193228 m!3452833))

(assert (=> b!3193228 m!3451755))

(declare-fun m!3452835 () Bool)

(assert (=> b!3193228 m!3452835))

(assert (=> b!3193228 m!3452823))

(assert (=> b!3193228 m!3452797))

(assert (=> b!3193228 m!3452811))

(assert (=> b!3193228 m!3452791))

(declare-fun m!3452837 () Bool)

(assert (=> b!3193228 m!3452837))

(assert (=> b!3193228 m!3452795))

(declare-fun m!3452839 () Bool)

(assert (=> b!3193228 m!3452839))

(assert (=> b!3193228 m!3452817))

(declare-fun m!3452841 () Bool)

(assert (=> b!3193228 m!3452841))

(declare-fun m!3452843 () Bool)

(assert (=> b!3193228 m!3452843))

(assert (=> b!3193228 m!3452011))

(assert (=> b!3193228 m!3451755))

(assert (=> b!3193228 m!3452791))

(declare-fun m!3452845 () Bool)

(assert (=> b!3193228 m!3452845))

(declare-fun m!3452847 () Bool)

(assert (=> b!3193228 m!3452847))

(declare-fun m!3452849 () Bool)

(assert (=> b!3193228 m!3452849))

(assert (=> b!3193228 m!3452823))

(assert (=> b!3193228 m!3452819))

(assert (=> b!3193228 m!3452793))

(declare-fun m!3452851 () Bool)

(assert (=> b!3193228 m!3452851))

(assert (=> b!3193228 m!3452011))

(assert (=> b!3193228 m!3452825))

(declare-fun m!3452853 () Bool)

(assert (=> b!3193228 m!3452853))

(declare-fun m!3452855 () Bool)

(assert (=> d!873268 m!3452855))

(declare-fun m!3452857 () Bool)

(assert (=> d!873268 m!3452857))

(declare-fun m!3452859 () Bool)

(assert (=> d!873268 m!3452859))

(assert (=> d!873268 m!3451755))

(assert (=> d!873268 m!3451755))

(declare-fun m!3452861 () Bool)

(assert (=> d!873268 m!3452861))

(assert (=> d!873268 m!3452855))

(declare-fun m!3452863 () Bool)

(assert (=> d!873268 m!3452863))

(assert (=> d!873268 m!3451755))

(assert (=> d!873268 m!3452111))

(assert (=> d!873268 m!3451755))

(assert (=> d!873268 m!3452831))

(declare-fun m!3452865 () Bool)

(assert (=> d!873268 m!3452865))

(assert (=> d!873268 m!3452011))

(declare-fun m!3452867 () Bool)

(assert (=> b!3193226 m!3452867))

(declare-fun m!3452869 () Bool)

(assert (=> b!3193226 m!3452869))

(declare-fun m!3452871 () Bool)

(assert (=> b!3193222 m!3452871))

(declare-fun m!3452873 () Bool)

(assert (=> b!3193222 m!3452873))

(declare-fun m!3452875 () Bool)

(assert (=> b!3193224 m!3452875))

(assert (=> b!3193224 m!3451755))

(assert (=> b!3193224 m!3452831))

(declare-fun m!3452877 () Bool)

(assert (=> b!3193224 m!3452877))

(assert (=> d!872978 d!873268))

(declare-fun b!3193245 () Bool)

(declare-fun res!1299008 () Bool)

(declare-fun e!1990551 () Bool)

(assert (=> b!3193245 (=> (not res!1299008) (not e!1990551))))

(declare-fun lt!1075729 () List!36087)

(assert (=> b!3193245 (= res!1299008 (= (size!27099 lt!1075729) (+ (size!27099 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (size!27099 (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))))))

(declare-fun b!3193246 () Bool)

(assert (=> b!3193246 (= e!1990551 (or (not (= (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))) Nil!35963)) (= lt!1075729 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))))))

(declare-fun b!3193243 () Bool)

(declare-fun e!1990550 () List!36087)

(assert (=> b!3193243 (= e!1990550 (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))

(declare-fun d!873280 () Bool)

(assert (=> d!873280 e!1990551))

(declare-fun res!1299007 () Bool)

(assert (=> d!873280 (=> (not res!1299007) (not e!1990551))))

(declare-fun content!4861 (List!36087) (Set C!20050))

(assert (=> d!873280 (= res!1299007 (= (content!4861 lt!1075729) (set.union (content!4861 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (content!4861 (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))))))

(assert (=> d!873280 (= lt!1075729 e!1990550)))

(declare-fun c!536083 () Bool)

(assert (=> d!873280 (= c!536083 (is-Nil!35963 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))))

(assert (=> d!873280 (= (++!8604 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))) (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964)))) lt!1075729)))

(declare-fun b!3193244 () Bool)

(assert (=> b!3193244 (= e!1990550 (Cons!35963 (h!41383 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (++!8604 (t!236310 (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))))

(assert (= (and d!873280 c!536083) b!3193243))

(assert (= (and d!873280 (not c!536083)) b!3193244))

(assert (= (and d!873280 res!1299007) b!3193245))

(assert (= (and b!3193245 res!1299008) b!3193246))

(declare-fun m!3452879 () Bool)

(assert (=> b!3193245 m!3452879))

(assert (=> b!3193245 m!3452051))

(declare-fun m!3452881 () Bool)

(assert (=> b!3193245 m!3452881))

(assert (=> b!3193245 m!3452053))

(declare-fun m!3452883 () Bool)

(assert (=> b!3193245 m!3452883))

(declare-fun m!3452885 () Bool)

(assert (=> d!873280 m!3452885))

(assert (=> d!873280 m!3452051))

(declare-fun m!3452887 () Bool)

(assert (=> d!873280 m!3452887))

(assert (=> d!873280 m!3452053))

(declare-fun m!3452889 () Bool)

(assert (=> d!873280 m!3452889))

(assert (=> b!3193244 m!3452053))

(declare-fun m!3452891 () Bool)

(assert (=> b!3193244 m!3452891))

(assert (=> b!3192691 d!873280))

(declare-fun d!873282 () Bool)

(assert (=> d!873282 (= (list!12774 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))) (list!12777 (c!535939 (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))))

(declare-fun bs!540417 () Bool)

(assert (= bs!540417 d!873282))

(declare-fun m!3452893 () Bool)

(assert (=> bs!540417 m!3452893))

(assert (=> b!3192691 d!873282))

(declare-fun d!873284 () Bool)

(declare-fun lt!1075730 () BalanceConc!21056)

(assert (=> d!873284 (= (list!12774 lt!1075730) (originalCharacters!5887 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))

(assert (=> d!873284 (= lt!1075730 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (value!167892 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))))

(assert (=> d!873284 (= (charsOf!3189 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))) lt!1075730)))

(declare-fun b_lambda!87121 () Bool)

(assert (=> (not b_lambda!87121) (not d!873284)))

(declare-fun t!236413 () Bool)

(declare-fun tb!156045 () Bool)

(assert (=> (and b!3192784 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236413) tb!156045))

(declare-fun b!3193247 () Bool)

(declare-fun e!1990552 () Bool)

(declare-fun tp!1009650 () Bool)

(assert (=> b!3193247 (= e!1990552 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (value!167892 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) tp!1009650))))

(declare-fun result!198270 () Bool)

(assert (=> tb!156045 (= result!198270 (and (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (value!167892 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) e!1990552))))

(assert (= tb!156045 b!3193247))

(declare-fun m!3452895 () Bool)

(assert (=> b!3193247 m!3452895))

(declare-fun m!3452897 () Bool)

(assert (=> tb!156045 m!3452897))

(assert (=> d!873284 t!236413))

(declare-fun b_and!211781 () Bool)

(assert (= b_and!211767 (and (=> t!236413 result!198270) b_and!211781)))

(declare-fun t!236415 () Bool)

(declare-fun tb!156047 () Bool)

(assert (=> (and b!3192809 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236415) tb!156047))

(declare-fun result!198272 () Bool)

(assert (= result!198272 result!198270))

(assert (=> d!873284 t!236415))

(declare-fun b_and!211783 () Bool)

(assert (= b_and!211761 (and (=> t!236415 result!198272) b_and!211783)))

(declare-fun t!236417 () Bool)

(declare-fun tb!156049 () Bool)

(assert (=> (and b!3192475 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236417) tb!156049))

(declare-fun result!198274 () Bool)

(assert (= result!198274 result!198270))

(assert (=> d!873284 t!236417))

(declare-fun b_and!211785 () Bool)

(assert (= b_and!211765 (and (=> t!236417 result!198274) b_and!211785)))

(declare-fun tb!156051 () Bool)

(declare-fun t!236419 () Bool)

(assert (=> (and b!3192480 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236419) tb!156051))

(declare-fun result!198276 () Bool)

(assert (= result!198276 result!198270))

(assert (=> d!873284 t!236419))

(declare-fun b_and!211787 () Bool)

(assert (= b_and!211763 (and (=> t!236419 result!198276) b_and!211787)))

(declare-fun t!236421 () Bool)

(declare-fun tb!156053 () Bool)

(assert (=> (and b!3192467 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236421) tb!156053))

(declare-fun result!198278 () Bool)

(assert (= result!198278 result!198270))

(assert (=> d!873284 t!236421))

(declare-fun b_and!211789 () Bool)

(assert (= b_and!211769 (and (=> t!236421 result!198278) b_and!211789)))

(declare-fun m!3452899 () Bool)

(assert (=> d!873284 m!3452899))

(declare-fun m!3452901 () Bool)

(assert (=> d!873284 m!3452901))

(assert (=> b!3192691 d!873284))

(declare-fun d!873286 () Bool)

(declare-fun c!536087 () Bool)

(assert (=> d!873286 (= c!536087 (is-Cons!35964 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))

(declare-fun e!1990557 () List!36087)

(assert (=> d!873286 (= (printList!1312 thiss!18206 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))) e!1990557)))

(declare-fun b!3193255 () Bool)

(assert (=> b!3193255 (= e!1990557 (++!8604 (list!12774 (charsOf!3189 (h!41384 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))))) (printList!1312 thiss!18206 (t!236311 (t!236311 (Cons!35964 (h!41384 tokens!494) Nil!35964))))))))

(declare-fun b!3193256 () Bool)

(assert (=> b!3193256 (= e!1990557 Nil!35963)))

(assert (= (and d!873286 c!536087) b!3193255))

(assert (= (and d!873286 (not c!536087)) b!3193256))

(declare-fun m!3452903 () Bool)

(assert (=> b!3193255 m!3452903))

(assert (=> b!3193255 m!3452903))

(declare-fun m!3452905 () Bool)

(assert (=> b!3193255 m!3452905))

(declare-fun m!3452907 () Bool)

(assert (=> b!3193255 m!3452907))

(assert (=> b!3193255 m!3452905))

(assert (=> b!3193255 m!3452907))

(declare-fun m!3452909 () Bool)

(assert (=> b!3193255 m!3452909))

(assert (=> b!3192691 d!873286))

(declare-fun b!3193271 () Bool)

(declare-fun res!1299024 () Bool)

(declare-fun e!1990564 () Bool)

(assert (=> b!3193271 (=> (not res!1299024) (not e!1990564))))

(assert (=> b!3193271 (= res!1299024 (isBalanced!3196 (left!27955 (c!535940 lt!1075396))))))

(declare-fun b!3193272 () Bool)

(assert (=> b!3193272 (= e!1990564 (not (isEmpty!20073 (right!28285 (c!535940 lt!1075396)))))))

(declare-fun d!873288 () Bool)

(declare-fun res!1299022 () Bool)

(declare-fun e!1990563 () Bool)

(assert (=> d!873288 (=> res!1299022 e!1990563)))

(assert (=> d!873288 (= res!1299022 (not (is-Node!10722 (c!535940 lt!1075396))))))

(assert (=> d!873288 (= (isBalanced!3196 (c!535940 lt!1075396)) e!1990563)))

(declare-fun b!3193273 () Bool)

(declare-fun res!1299023 () Bool)

(assert (=> b!3193273 (=> (not res!1299023) (not e!1990564))))

(assert (=> b!3193273 (= res!1299023 (isBalanced!3196 (right!28285 (c!535940 lt!1075396))))))

(declare-fun b!3193274 () Bool)

(declare-fun res!1299025 () Bool)

(assert (=> b!3193274 (=> (not res!1299025) (not e!1990564))))

(assert (=> b!3193274 (= res!1299025 (not (isEmpty!20073 (left!27955 (c!535940 lt!1075396)))))))

(declare-fun b!3193275 () Bool)

(declare-fun res!1299027 () Bool)

(assert (=> b!3193275 (=> (not res!1299027) (not e!1990564))))

(declare-fun height!1534 (Conc!10722) Int)

(assert (=> b!3193275 (= res!1299027 (<= (- (height!1534 (left!27955 (c!535940 lt!1075396))) (height!1534 (right!28285 (c!535940 lt!1075396)))) 1))))

(declare-fun b!3193276 () Bool)

(assert (=> b!3193276 (= e!1990563 e!1990564)))

(declare-fun res!1299026 () Bool)

(assert (=> b!3193276 (=> (not res!1299026) (not e!1990564))))

(assert (=> b!3193276 (= res!1299026 (<= (- 1) (- (height!1534 (left!27955 (c!535940 lt!1075396))) (height!1534 (right!28285 (c!535940 lt!1075396))))))))

(assert (= (and d!873288 (not res!1299022)) b!3193276))

(assert (= (and b!3193276 res!1299026) b!3193275))

(assert (= (and b!3193275 res!1299027) b!3193271))

(assert (= (and b!3193271 res!1299024) b!3193273))

(assert (= (and b!3193273 res!1299023) b!3193274))

(assert (= (and b!3193274 res!1299025) b!3193272))

(declare-fun m!3453015 () Bool)

(assert (=> b!3193273 m!3453015))

(declare-fun m!3453017 () Bool)

(assert (=> b!3193276 m!3453017))

(declare-fun m!3453019 () Bool)

(assert (=> b!3193276 m!3453019))

(declare-fun m!3453021 () Bool)

(assert (=> b!3193272 m!3453021))

(declare-fun m!3453023 () Bool)

(assert (=> b!3193274 m!3453023))

(declare-fun m!3453025 () Bool)

(assert (=> b!3193271 m!3453025))

(assert (=> b!3193275 m!3453017))

(assert (=> b!3193275 m!3453019))

(assert (=> b!3192686 d!873288))

(declare-fun d!873302 () Bool)

(declare-fun lt!1075765 () Int)

(assert (=> d!873302 (>= lt!1075765 0)))

(declare-fun e!1990565 () Int)

(assert (=> d!873302 (= lt!1075765 e!1990565)))

(declare-fun c!536089 () Bool)

(assert (=> d!873302 (= c!536089 (is-Nil!35963 (originalCharacters!5887 separatorToken!241)))))

(assert (=> d!873302 (= (size!27099 (originalCharacters!5887 separatorToken!241)) lt!1075765)))

(declare-fun b!3193277 () Bool)

(assert (=> b!3193277 (= e!1990565 0)))

(declare-fun b!3193278 () Bool)

(assert (=> b!3193278 (= e!1990565 (+ 1 (size!27099 (t!236310 (originalCharacters!5887 separatorToken!241)))))))

(assert (= (and d!873302 c!536089) b!3193277))

(assert (= (and d!873302 (not c!536089)) b!3193278))

(declare-fun m!3453027 () Bool)

(assert (=> b!3193278 m!3453027))

(assert (=> b!3192673 d!873302))

(declare-fun d!873304 () Bool)

(assert (=> d!873304 (= (list!12774 (_2!20799 lt!1075406)) (list!12777 (c!535939 (_2!20799 lt!1075406))))))

(declare-fun bs!540423 () Bool)

(assert (= bs!540423 d!873304))

(declare-fun m!3453029 () Bool)

(assert (=> bs!540423 m!3453029))

(assert (=> b!3192745 d!873304))

(assert (=> b!3192745 d!873232))

(assert (=> b!3192745 d!873262))

(declare-fun d!873306 () Bool)

(assert (=> d!873306 (= (inv!48813 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))) (isBalanced!3198 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))))))

(declare-fun bs!540424 () Bool)

(assert (= bs!540424 d!873306))

(declare-fun m!3453031 () Bool)

(assert (=> bs!540424 m!3453031))

(assert (=> tb!155975 d!873306))

(declare-fun d!873308 () Bool)

(declare-fun c!536092 () Bool)

(assert (=> d!873308 (= c!536092 (is-Nil!35964 tokens!494))))

(declare-fun e!1990568 () (Set Token!9712))

(assert (=> d!873308 (= (content!4859 tokens!494) e!1990568)))

(declare-fun b!3193283 () Bool)

(assert (=> b!3193283 (= e!1990568 (as set.empty (Set Token!9712)))))

(declare-fun b!3193284 () Bool)

(assert (=> b!3193284 (= e!1990568 (set.union (set.insert (h!41384 tokens!494) (as set.empty (Set Token!9712))) (content!4859 (t!236311 tokens!494))))))

(assert (= (and d!873308 c!536092) b!3193283))

(assert (= (and d!873308 (not c!536092)) b!3193284))

(declare-fun m!3453033 () Bool)

(assert (=> b!3193284 m!3453033))

(assert (=> b!3193284 m!3452691))

(assert (=> d!872942 d!873308))

(declare-fun lt!1075766 () Bool)

(declare-fun d!873310 () Bool)

(assert (=> d!873310 (= lt!1075766 (isEmpty!20071 (list!12774 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))))

(assert (=> d!873310 (= lt!1075766 (isEmpty!20078 (c!535939 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494))))))))))

(assert (=> d!873310 (= (isEmpty!20070 (_2!20799 (lex!2092 thiss!18206 rules!2135 (print!1827 thiss!18206 (singletonSeq!2269 (h!41384 tokens!494)))))) lt!1075766)))

(declare-fun bs!540425 () Bool)

(assert (= bs!540425 d!873310))

(declare-fun m!3453035 () Bool)

(assert (=> bs!540425 m!3453035))

(assert (=> bs!540425 m!3453035))

(declare-fun m!3453037 () Bool)

(assert (=> bs!540425 m!3453037))

(declare-fun m!3453039 () Bool)

(assert (=> bs!540425 m!3453039))

(assert (=> b!3192671 d!873310))

(assert (=> b!3192671 d!873168))

(assert (=> b!3192671 d!873170))

(assert (=> b!3192671 d!872966))

(declare-fun b!3193285 () Bool)

(declare-fun e!1990569 () Bool)

(declare-fun tp!1009651 () Bool)

(assert (=> b!3193285 (= e!1990569 (and tp_is_empty!17275 tp!1009651))))

(assert (=> b!3192794 (= tp!1009572 e!1990569)))

(assert (= (and b!3192794 (is-Cons!35963 (t!236310 (originalCharacters!5887 separatorToken!241)))) b!3193285))

(declare-fun b!3193289 () Bool)

(declare-fun e!1990570 () Bool)

(declare-fun tp!1009652 () Bool)

(declare-fun tp!1009656 () Bool)

(assert (=> b!3193289 (= e!1990570 (and tp!1009652 tp!1009656))))

(declare-fun b!3193287 () Bool)

(declare-fun tp!1009653 () Bool)

(declare-fun tp!1009654 () Bool)

(assert (=> b!3193287 (= e!1990570 (and tp!1009653 tp!1009654))))

(assert (=> b!3192798 (= tp!1009573 e!1990570)))

(declare-fun b!3193286 () Bool)

(assert (=> b!3193286 (= e!1990570 tp_is_empty!17275)))

(declare-fun b!3193288 () Bool)

(declare-fun tp!1009655 () Bool)

(assert (=> b!3193288 (= e!1990570 tp!1009655)))

(assert (= (and b!3192798 (is-ElementMatch!9932 (regOne!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193286))

(assert (= (and b!3192798 (is-Concat!15335 (regOne!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193287))

(assert (= (and b!3192798 (is-Star!9932 (regOne!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193288))

(assert (= (and b!3192798 (is-Union!9932 (regOne!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193289))

(declare-fun b!3193293 () Bool)

(declare-fun e!1990571 () Bool)

(declare-fun tp!1009657 () Bool)

(declare-fun tp!1009661 () Bool)

(assert (=> b!3193293 (= e!1990571 (and tp!1009657 tp!1009661))))

(declare-fun b!3193291 () Bool)

(declare-fun tp!1009658 () Bool)

(declare-fun tp!1009659 () Bool)

(assert (=> b!3193291 (= e!1990571 (and tp!1009658 tp!1009659))))

(assert (=> b!3192798 (= tp!1009577 e!1990571)))

(declare-fun b!3193290 () Bool)

(assert (=> b!3193290 (= e!1990571 tp_is_empty!17275)))

(declare-fun b!3193292 () Bool)

(declare-fun tp!1009660 () Bool)

(assert (=> b!3193292 (= e!1990571 tp!1009660)))

(assert (= (and b!3192798 (is-ElementMatch!9932 (regTwo!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193290))

(assert (= (and b!3192798 (is-Concat!15335 (regTwo!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193291))

(assert (= (and b!3192798 (is-Star!9932 (regTwo!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193292))

(assert (= (and b!3192798 (is-Union!9932 (regTwo!20377 (regex!5173 (rule!7605 separatorToken!241))))) b!3193293))

(declare-fun b!3193297 () Bool)

(declare-fun b_free!84669 () Bool)

(declare-fun b_next!85373 () Bool)

(assert (=> b!3193297 (= b_free!84669 (not b_next!85373))))

(declare-fun tp!1009664 () Bool)

(declare-fun b_and!211791 () Bool)

(assert (=> b!3193297 (= tp!1009664 b_and!211791)))

(declare-fun b_free!84671 () Bool)

(declare-fun b_next!85375 () Bool)

(assert (=> b!3193297 (= b_free!84671 (not b_next!85375))))

(declare-fun tb!156055 () Bool)

(declare-fun t!236424 () Bool)

(assert (=> (and b!3193297 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236424) tb!156055))

(declare-fun result!198280 () Bool)

(assert (= result!198280 result!198188))

(assert (=> b!3192672 t!236424))

(declare-fun t!236426 () Bool)

(declare-fun tb!156057 () Bool)

(assert (=> (and b!3193297 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236426) tb!156057))

(declare-fun result!198282 () Bool)

(assert (= result!198282 result!198250))

(assert (=> b!3193111 t!236426))

(declare-fun t!236428 () Bool)

(declare-fun tb!156059 () Bool)

(assert (=> (and b!3193297 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236428) tb!156059))

(declare-fun result!198284 () Bool)

(assert (= result!198284 result!198270))

(assert (=> d!873284 t!236428))

(declare-fun t!236430 () Bool)

(declare-fun tb!156061 () Bool)

(assert (=> (and b!3193297 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236430) tb!156061))

(declare-fun result!198286 () Bool)

(assert (= result!198286 result!198180))

(assert (=> d!872996 t!236430))

(assert (=> b!3192587 t!236430))

(declare-fun tb!156063 () Bool)

(declare-fun t!236432 () Bool)

(assert (=> (and b!3193297 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236432) tb!156063))

(declare-fun result!198288 () Bool)

(assert (= result!198288 result!198240))

(assert (=> d!873066 t!236432))

(declare-fun b_and!211793 () Bool)

(declare-fun tp!1009666 () Bool)

(assert (=> b!3193297 (= tp!1009666 (and (=> t!236426 result!198282) (=> t!236428 result!198284) (=> t!236430 result!198286) (=> t!236424 result!198280) (=> t!236432 result!198288) b_and!211793))))

(declare-fun b!3193295 () Bool)

(declare-fun e!1990574 () Bool)

(declare-fun tp!1009662 () Bool)

(declare-fun e!1990573 () Bool)

(assert (=> b!3193295 (= e!1990573 (and (inv!21 (value!167892 (h!41384 (t!236311 (t!236311 tokens!494))))) e!1990574 tp!1009662))))

(declare-fun e!1990576 () Bool)

(assert (=> b!3193297 (= e!1990576 (and tp!1009664 tp!1009666))))

(declare-fun tp!1009663 () Bool)

(declare-fun b!3193296 () Bool)

(assert (=> b!3193296 (= e!1990574 (and tp!1009663 (inv!48805 (tag!5691 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (inv!48808 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) e!1990576))))

(declare-fun e!1990575 () Bool)

(assert (=> b!3192781 (= tp!1009562 e!1990575)))

(declare-fun b!3193294 () Bool)

(declare-fun tp!1009665 () Bool)

(assert (=> b!3193294 (= e!1990575 (and (inv!48809 (h!41384 (t!236311 (t!236311 tokens!494)))) e!1990573 tp!1009665))))

(assert (= b!3193296 b!3193297))

(assert (= b!3193295 b!3193296))

(assert (= b!3193294 b!3193295))

(assert (= (and b!3192781 (is-Cons!35964 (t!236311 (t!236311 tokens!494)))) b!3193294))

(declare-fun m!3453041 () Bool)

(assert (=> b!3193295 m!3453041))

(declare-fun m!3453043 () Bool)

(assert (=> b!3193296 m!3453043))

(declare-fun m!3453045 () Bool)

(assert (=> b!3193296 m!3453045))

(declare-fun m!3453047 () Bool)

(assert (=> b!3193294 m!3453047))

(declare-fun b!3193298 () Bool)

(declare-fun e!1990578 () Bool)

(declare-fun tp!1009667 () Bool)

(assert (=> b!3193298 (= e!1990578 (and tp_is_empty!17275 tp!1009667))))

(assert (=> b!3192789 (= tp!1009566 e!1990578)))

(assert (= (and b!3192789 (is-Cons!35963 (t!236310 (originalCharacters!5887 (h!41384 tokens!494))))) b!3193298))

(declare-fun b!3193302 () Bool)

(declare-fun e!1990579 () Bool)

(declare-fun tp!1009668 () Bool)

(declare-fun tp!1009672 () Bool)

(assert (=> b!3193302 (= e!1990579 (and tp!1009668 tp!1009672))))

(declare-fun b!3193300 () Bool)

(declare-fun tp!1009669 () Bool)

(declare-fun tp!1009670 () Bool)

(assert (=> b!3193300 (= e!1990579 (and tp!1009669 tp!1009670))))

(assert (=> b!3192796 (= tp!1009574 e!1990579)))

(declare-fun b!3193299 () Bool)

(assert (=> b!3193299 (= e!1990579 tp_is_empty!17275)))

(declare-fun b!3193301 () Bool)

(declare-fun tp!1009671 () Bool)

(assert (=> b!3193301 (= e!1990579 tp!1009671)))

(assert (= (and b!3192796 (is-ElementMatch!9932 (regOne!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193299))

(assert (= (and b!3192796 (is-Concat!15335 (regOne!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193300))

(assert (= (and b!3192796 (is-Star!9932 (regOne!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193301))

(assert (= (and b!3192796 (is-Union!9932 (regOne!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193302))

(declare-fun b!3193306 () Bool)

(declare-fun e!1990580 () Bool)

(declare-fun tp!1009673 () Bool)

(declare-fun tp!1009677 () Bool)

(assert (=> b!3193306 (= e!1990580 (and tp!1009673 tp!1009677))))

(declare-fun b!3193304 () Bool)

(declare-fun tp!1009674 () Bool)

(declare-fun tp!1009675 () Bool)

(assert (=> b!3193304 (= e!1990580 (and tp!1009674 tp!1009675))))

(assert (=> b!3192796 (= tp!1009575 e!1990580)))

(declare-fun b!3193303 () Bool)

(assert (=> b!3193303 (= e!1990580 tp_is_empty!17275)))

(declare-fun b!3193305 () Bool)

(declare-fun tp!1009676 () Bool)

(assert (=> b!3193305 (= e!1990580 tp!1009676)))

(assert (= (and b!3192796 (is-ElementMatch!9932 (regTwo!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193303))

(assert (= (and b!3192796 (is-Concat!15335 (regTwo!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193304))

(assert (= (and b!3192796 (is-Star!9932 (regTwo!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193305))

(assert (= (and b!3192796 (is-Union!9932 (regTwo!20376 (regex!5173 (rule!7605 separatorToken!241))))) b!3193306))

(declare-fun b!3193310 () Bool)

(declare-fun e!1990581 () Bool)

(declare-fun tp!1009678 () Bool)

(declare-fun tp!1009682 () Bool)

(assert (=> b!3193310 (= e!1990581 (and tp!1009678 tp!1009682))))

(declare-fun b!3193308 () Bool)

(declare-fun tp!1009679 () Bool)

(declare-fun tp!1009680 () Bool)

(assert (=> b!3193308 (= e!1990581 (and tp!1009679 tp!1009680))))

(assert (=> b!3192793 (= tp!1009567 e!1990581)))

(declare-fun b!3193307 () Bool)

(assert (=> b!3193307 (= e!1990581 tp_is_empty!17275)))

(declare-fun b!3193309 () Bool)

(declare-fun tp!1009681 () Bool)

(assert (=> b!3193309 (= e!1990581 tp!1009681)))

(assert (= (and b!3192793 (is-ElementMatch!9932 (regOne!20377 (regex!5173 (h!41385 rules!2135))))) b!3193307))

(assert (= (and b!3192793 (is-Concat!15335 (regOne!20377 (regex!5173 (h!41385 rules!2135))))) b!3193308))

(assert (= (and b!3192793 (is-Star!9932 (regOne!20377 (regex!5173 (h!41385 rules!2135))))) b!3193309))

(assert (= (and b!3192793 (is-Union!9932 (regOne!20377 (regex!5173 (h!41385 rules!2135))))) b!3193310))

(declare-fun b!3193314 () Bool)

(declare-fun e!1990582 () Bool)

(declare-fun tp!1009683 () Bool)

(declare-fun tp!1009687 () Bool)

(assert (=> b!3193314 (= e!1990582 (and tp!1009683 tp!1009687))))

(declare-fun b!3193312 () Bool)

(declare-fun tp!1009684 () Bool)

(declare-fun tp!1009685 () Bool)

(assert (=> b!3193312 (= e!1990582 (and tp!1009684 tp!1009685))))

(assert (=> b!3192793 (= tp!1009571 e!1990582)))

(declare-fun b!3193311 () Bool)

(assert (=> b!3193311 (= e!1990582 tp_is_empty!17275)))

(declare-fun b!3193313 () Bool)

(declare-fun tp!1009686 () Bool)

(assert (=> b!3193313 (= e!1990582 tp!1009686)))

(assert (= (and b!3192793 (is-ElementMatch!9932 (regTwo!20377 (regex!5173 (h!41385 rules!2135))))) b!3193311))

(assert (= (and b!3192793 (is-Concat!15335 (regTwo!20377 (regex!5173 (h!41385 rules!2135))))) b!3193312))

(assert (= (and b!3192793 (is-Star!9932 (regTwo!20377 (regex!5173 (h!41385 rules!2135))))) b!3193313))

(assert (= (and b!3192793 (is-Union!9932 (regTwo!20377 (regex!5173 (h!41385 rules!2135))))) b!3193314))

(declare-fun tp!1009696 () Bool)

(declare-fun b!3193323 () Bool)

(declare-fun e!1990587 () Bool)

(declare-fun tp!1009694 () Bool)

(assert (=> b!3193323 (= e!1990587 (and (inv!48812 (left!27954 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))) tp!1009696 (inv!48812 (right!28284 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))) tp!1009694))))

(declare-fun b!3193325 () Bool)

(declare-fun e!1990588 () Bool)

(declare-fun tp!1009695 () Bool)

(assert (=> b!3193325 (= e!1990588 tp!1009695)))

(declare-fun b!3193324 () Bool)

(declare-fun inv!48820 (IArray!21447) Bool)

(assert (=> b!3193324 (= e!1990587 (and (inv!48820 (xs!13839 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))) e!1990588))))

(assert (=> b!3192593 (= tp!1009529 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494))))) e!1990587))))

(assert (= (and b!3192593 (is-Node!10721 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))) b!3193323))

(assert (= b!3193324 b!3193325))

(assert (= (and b!3192593 (is-Leaf!16919 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (value!167892 (h!41384 tokens!494)))))) b!3193324))

(declare-fun m!3453049 () Bool)

(assert (=> b!3193323 m!3453049))

(declare-fun m!3453051 () Bool)

(assert (=> b!3193323 m!3453051))

(declare-fun m!3453053 () Bool)

(assert (=> b!3193324 m!3453053))

(assert (=> b!3192593 m!3451863))

(declare-fun b!3193329 () Bool)

(declare-fun e!1990589 () Bool)

(declare-fun tp!1009697 () Bool)

(declare-fun tp!1009701 () Bool)

(assert (=> b!3193329 (= e!1990589 (and tp!1009697 tp!1009701))))

(declare-fun b!3193327 () Bool)

(declare-fun tp!1009698 () Bool)

(declare-fun tp!1009699 () Bool)

(assert (=> b!3193327 (= e!1990589 (and tp!1009698 tp!1009699))))

(assert (=> b!3192797 (= tp!1009576 e!1990589)))

(declare-fun b!3193326 () Bool)

(assert (=> b!3193326 (= e!1990589 tp_is_empty!17275)))

(declare-fun b!3193328 () Bool)

(declare-fun tp!1009700 () Bool)

(assert (=> b!3193328 (= e!1990589 tp!1009700)))

(assert (= (and b!3192797 (is-ElementMatch!9932 (reg!10261 (regex!5173 (rule!7605 separatorToken!241))))) b!3193326))

(assert (= (and b!3192797 (is-Concat!15335 (reg!10261 (regex!5173 (rule!7605 separatorToken!241))))) b!3193327))

(assert (= (and b!3192797 (is-Star!9932 (reg!10261 (regex!5173 (rule!7605 separatorToken!241))))) b!3193328))

(assert (= (and b!3192797 (is-Union!9932 (reg!10261 (regex!5173 (rule!7605 separatorToken!241))))) b!3193329))

(declare-fun b!3193332 () Bool)

(declare-fun e!1990592 () Bool)

(assert (=> b!3193332 (= e!1990592 true)))

(declare-fun b!3193331 () Bool)

(declare-fun e!1990591 () Bool)

(assert (=> b!3193331 (= e!1990591 e!1990592)))

(declare-fun b!3193330 () Bool)

(declare-fun e!1990590 () Bool)

(assert (=> b!3193330 (= e!1990590 e!1990591)))

(assert (=> b!3192664 e!1990590))

(assert (= b!3193331 b!3193332))

(assert (= b!3193330 b!3193331))

(assert (= (and b!3192664 (is-Cons!35965 (t!236312 rules!2135))) b!3193330))

(assert (=> b!3193332 (< (dynLambda!14486 order!18283 (toValue!7237 (transformation!5173 (h!41385 (t!236312 rules!2135))))) (dynLambda!14487 order!18285 lambda!116840))))

(assert (=> b!3193332 (< (dynLambda!14488 order!18287 (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135))))) (dynLambda!14487 order!18285 lambda!116840))))

(declare-fun b!3193336 () Bool)

(declare-fun e!1990593 () Bool)

(declare-fun tp!1009702 () Bool)

(declare-fun tp!1009706 () Bool)

(assert (=> b!3193336 (= e!1990593 (and tp!1009702 tp!1009706))))

(declare-fun b!3193334 () Bool)

(declare-fun tp!1009703 () Bool)

(declare-fun tp!1009704 () Bool)

(assert (=> b!3193334 (= e!1990593 (and tp!1009703 tp!1009704))))

(assert (=> b!3192791 (= tp!1009568 e!1990593)))

(declare-fun b!3193333 () Bool)

(assert (=> b!3193333 (= e!1990593 tp_is_empty!17275)))

(declare-fun b!3193335 () Bool)

(declare-fun tp!1009705 () Bool)

(assert (=> b!3193335 (= e!1990593 tp!1009705)))

(assert (= (and b!3192791 (is-ElementMatch!9932 (regOne!20376 (regex!5173 (h!41385 rules!2135))))) b!3193333))

(assert (= (and b!3192791 (is-Concat!15335 (regOne!20376 (regex!5173 (h!41385 rules!2135))))) b!3193334))

(assert (= (and b!3192791 (is-Star!9932 (regOne!20376 (regex!5173 (h!41385 rules!2135))))) b!3193335))

(assert (= (and b!3192791 (is-Union!9932 (regOne!20376 (regex!5173 (h!41385 rules!2135))))) b!3193336))

(declare-fun b!3193340 () Bool)

(declare-fun e!1990594 () Bool)

(declare-fun tp!1009707 () Bool)

(declare-fun tp!1009711 () Bool)

(assert (=> b!3193340 (= e!1990594 (and tp!1009707 tp!1009711))))

(declare-fun b!3193338 () Bool)

(declare-fun tp!1009708 () Bool)

(declare-fun tp!1009709 () Bool)

(assert (=> b!3193338 (= e!1990594 (and tp!1009708 tp!1009709))))

(assert (=> b!3192791 (= tp!1009569 e!1990594)))

(declare-fun b!3193337 () Bool)

(assert (=> b!3193337 (= e!1990594 tp_is_empty!17275)))

(declare-fun b!3193339 () Bool)

(declare-fun tp!1009710 () Bool)

(assert (=> b!3193339 (= e!1990594 tp!1009710)))

(assert (= (and b!3192791 (is-ElementMatch!9932 (regTwo!20376 (regex!5173 (h!41385 rules!2135))))) b!3193337))

(assert (= (and b!3192791 (is-Concat!15335 (regTwo!20376 (regex!5173 (h!41385 rules!2135))))) b!3193338))

(assert (= (and b!3192791 (is-Star!9932 (regTwo!20376 (regex!5173 (h!41385 rules!2135))))) b!3193339))

(assert (= (and b!3192791 (is-Union!9932 (regTwo!20376 (regex!5173 (h!41385 rules!2135))))) b!3193340))

(declare-fun b!3193344 () Bool)

(declare-fun e!1990595 () Bool)

(declare-fun tp!1009712 () Bool)

(declare-fun tp!1009716 () Bool)

(assert (=> b!3193344 (= e!1990595 (and tp!1009712 tp!1009716))))

(declare-fun b!3193342 () Bool)

(declare-fun tp!1009713 () Bool)

(declare-fun tp!1009714 () Bool)

(assert (=> b!3193342 (= e!1990595 (and tp!1009713 tp!1009714))))

(assert (=> b!3192808 (= tp!1009589 e!1990595)))

(declare-fun b!3193341 () Bool)

(assert (=> b!3193341 (= e!1990595 tp_is_empty!17275)))

(declare-fun b!3193343 () Bool)

(declare-fun tp!1009715 () Bool)

(assert (=> b!3193343 (= e!1990595 tp!1009715)))

(assert (= (and b!3192808 (is-ElementMatch!9932 (regex!5173 (h!41385 (t!236312 rules!2135))))) b!3193341))

(assert (= (and b!3192808 (is-Concat!15335 (regex!5173 (h!41385 (t!236312 rules!2135))))) b!3193342))

(assert (= (and b!3192808 (is-Star!9932 (regex!5173 (h!41385 (t!236312 rules!2135))))) b!3193343))

(assert (= (and b!3192808 (is-Union!9932 (regex!5173 (h!41385 (t!236312 rules!2135))))) b!3193344))

(declare-fun b!3193348 () Bool)

(declare-fun e!1990596 () Bool)

(declare-fun tp!1009717 () Bool)

(declare-fun tp!1009721 () Bool)

(assert (=> b!3193348 (= e!1990596 (and tp!1009717 tp!1009721))))

(declare-fun b!3193346 () Bool)

(declare-fun tp!1009718 () Bool)

(declare-fun tp!1009719 () Bool)

(assert (=> b!3193346 (= e!1990596 (and tp!1009718 tp!1009719))))

(assert (=> b!3192769 (= tp!1009547 e!1990596)))

(declare-fun b!3193345 () Bool)

(assert (=> b!3193345 (= e!1990596 tp_is_empty!17275)))

(declare-fun b!3193347 () Bool)

(declare-fun tp!1009720 () Bool)

(assert (=> b!3193347 (= e!1990596 tp!1009720)))

(assert (= (and b!3192769 (is-ElementMatch!9932 (reg!10261 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193345))

(assert (= (and b!3192769 (is-Concat!15335 (reg!10261 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193346))

(assert (= (and b!3192769 (is-Star!9932 (reg!10261 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193347))

(assert (= (and b!3192769 (is-Union!9932 (reg!10261 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193348))

(declare-fun e!1990597 () Bool)

(declare-fun tp!1009722 () Bool)

(declare-fun b!3193349 () Bool)

(declare-fun tp!1009724 () Bool)

(assert (=> b!3193349 (= e!1990597 (and (inv!48812 (left!27954 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))) tp!1009724 (inv!48812 (right!28284 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))) tp!1009722))))

(declare-fun b!3193351 () Bool)

(declare-fun e!1990598 () Bool)

(declare-fun tp!1009723 () Bool)

(assert (=> b!3193351 (= e!1990598 tp!1009723)))

(declare-fun b!3193350 () Bool)

(assert (=> b!3193350 (= e!1990597 (and (inv!48820 (xs!13839 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))) e!1990598))))

(assert (=> b!3192674 (= tp!1009530 (and (inv!48812 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241)))) e!1990597))))

(assert (= (and b!3192674 (is-Node!10721 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))) b!3193349))

(assert (= b!3193350 b!3193351))

(assert (= (and b!3192674 (is-Leaf!16919 (c!535939 (dynLambda!14485 (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (value!167892 separatorToken!241))))) b!3193350))

(declare-fun m!3453055 () Bool)

(assert (=> b!3193349 m!3453055))

(declare-fun m!3453057 () Bool)

(assert (=> b!3193349 m!3453057))

(declare-fun m!3453059 () Bool)

(assert (=> b!3193350 m!3453059))

(assert (=> b!3192674 m!3451989))

(declare-fun b!3193355 () Bool)

(declare-fun e!1990599 () Bool)

(declare-fun tp!1009725 () Bool)

(declare-fun tp!1009729 () Bool)

(assert (=> b!3193355 (= e!1990599 (and tp!1009725 tp!1009729))))

(declare-fun b!3193353 () Bool)

(declare-fun tp!1009726 () Bool)

(declare-fun tp!1009727 () Bool)

(assert (=> b!3193353 (= e!1990599 (and tp!1009726 tp!1009727))))

(assert (=> b!3192792 (= tp!1009570 e!1990599)))

(declare-fun b!3193352 () Bool)

(assert (=> b!3193352 (= e!1990599 tp_is_empty!17275)))

(declare-fun b!3193354 () Bool)

(declare-fun tp!1009728 () Bool)

(assert (=> b!3193354 (= e!1990599 tp!1009728)))

(assert (= (and b!3192792 (is-ElementMatch!9932 (reg!10261 (regex!5173 (h!41385 rules!2135))))) b!3193352))

(assert (= (and b!3192792 (is-Concat!15335 (reg!10261 (regex!5173 (h!41385 rules!2135))))) b!3193353))

(assert (= (and b!3192792 (is-Star!9932 (reg!10261 (regex!5173 (h!41385 rules!2135))))) b!3193354))

(assert (= (and b!3192792 (is-Union!9932 (reg!10261 (regex!5173 (h!41385 rules!2135))))) b!3193355))

(declare-fun b!3193359 () Bool)

(declare-fun e!1990600 () Bool)

(declare-fun tp!1009730 () Bool)

(declare-fun tp!1009734 () Bool)

(assert (=> b!3193359 (= e!1990600 (and tp!1009730 tp!1009734))))

(declare-fun b!3193357 () Bool)

(declare-fun tp!1009731 () Bool)

(declare-fun tp!1009732 () Bool)

(assert (=> b!3193357 (= e!1990600 (and tp!1009731 tp!1009732))))

(assert (=> b!3192770 (= tp!1009544 e!1990600)))

(declare-fun b!3193356 () Bool)

(assert (=> b!3193356 (= e!1990600 tp_is_empty!17275)))

(declare-fun b!3193358 () Bool)

(declare-fun tp!1009733 () Bool)

(assert (=> b!3193358 (= e!1990600 tp!1009733)))

(assert (= (and b!3192770 (is-ElementMatch!9932 (regOne!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193356))

(assert (= (and b!3192770 (is-Concat!15335 (regOne!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193357))

(assert (= (and b!3192770 (is-Star!9932 (regOne!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193358))

(assert (= (and b!3192770 (is-Union!9932 (regOne!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193359))

(declare-fun b!3193363 () Bool)

(declare-fun e!1990601 () Bool)

(declare-fun tp!1009735 () Bool)

(declare-fun tp!1009739 () Bool)

(assert (=> b!3193363 (= e!1990601 (and tp!1009735 tp!1009739))))

(declare-fun b!3193361 () Bool)

(declare-fun tp!1009736 () Bool)

(declare-fun tp!1009737 () Bool)

(assert (=> b!3193361 (= e!1990601 (and tp!1009736 tp!1009737))))

(assert (=> b!3192770 (= tp!1009548 e!1990601)))

(declare-fun b!3193360 () Bool)

(assert (=> b!3193360 (= e!1990601 tp_is_empty!17275)))

(declare-fun b!3193362 () Bool)

(declare-fun tp!1009738 () Bool)

(assert (=> b!3193362 (= e!1990601 tp!1009738)))

(assert (= (and b!3192770 (is-ElementMatch!9932 (regTwo!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193360))

(assert (= (and b!3192770 (is-Concat!15335 (regTwo!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193361))

(assert (= (and b!3192770 (is-Star!9932 (regTwo!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193362))

(assert (= (and b!3192770 (is-Union!9932 (regTwo!20377 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193363))

(declare-fun b!3193367 () Bool)

(declare-fun e!1990602 () Bool)

(declare-fun tp!1009740 () Bool)

(declare-fun tp!1009744 () Bool)

(assert (=> b!3193367 (= e!1990602 (and tp!1009740 tp!1009744))))

(declare-fun b!3193365 () Bool)

(declare-fun tp!1009741 () Bool)

(declare-fun tp!1009742 () Bool)

(assert (=> b!3193365 (= e!1990602 (and tp!1009741 tp!1009742))))

(assert (=> b!3192783 (= tp!1009560 e!1990602)))

(declare-fun b!3193364 () Bool)

(assert (=> b!3193364 (= e!1990602 tp_is_empty!17275)))

(declare-fun b!3193366 () Bool)

(declare-fun tp!1009743 () Bool)

(assert (=> b!3193366 (= e!1990602 tp!1009743)))

(assert (= (and b!3192783 (is-ElementMatch!9932 (regex!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) b!3193364))

(assert (= (and b!3192783 (is-Concat!15335 (regex!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) b!3193365))

(assert (= (and b!3192783 (is-Star!9932 (regex!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) b!3193366))

(assert (= (and b!3192783 (is-Union!9932 (regex!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) b!3193367))

(declare-fun b!3193368 () Bool)

(declare-fun e!1990603 () Bool)

(declare-fun tp!1009745 () Bool)

(assert (=> b!3193368 (= e!1990603 (and tp_is_empty!17275 tp!1009745))))

(assert (=> b!3192782 (= tp!1009559 e!1990603)))

(assert (= (and b!3192782 (is-Cons!35963 (originalCharacters!5887 (h!41384 (t!236311 tokens!494))))) b!3193368))

(declare-fun b!3193371 () Bool)

(declare-fun b_free!84673 () Bool)

(declare-fun b_next!85377 () Bool)

(assert (=> b!3193371 (= b_free!84673 (not b_next!85377))))

(declare-fun tp!1009746 () Bool)

(declare-fun b_and!211795 () Bool)

(assert (=> b!3193371 (= tp!1009746 b_and!211795)))

(declare-fun b_free!84675 () Bool)

(declare-fun b_next!85379 () Bool)

(assert (=> b!3193371 (= b_free!84675 (not b_next!85379))))

(declare-fun tb!156065 () Bool)

(declare-fun t!236434 () Bool)

(assert (=> (and b!3193371 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241)))) t!236434) tb!156065))

(declare-fun result!198292 () Bool)

(assert (= result!198292 result!198188))

(assert (=> b!3192672 t!236434))

(declare-fun tb!156067 () Bool)

(declare-fun t!236436 () Bool)

(assert (=> (and b!3193371 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494)))))) t!236436) tb!156067))

(declare-fun result!198294 () Bool)

(assert (= result!198294 result!198250))

(assert (=> b!3193111 t!236436))

(declare-fun tb!156069 () Bool)

(declare-fun t!236438 () Bool)

(assert (=> (and b!3193371 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (Cons!35964 (h!41384 tokens!494) Nil!35964)))))) t!236438) tb!156069))

(declare-fun result!198296 () Bool)

(assert (= result!198296 result!198270))

(assert (=> d!873284 t!236438))

(declare-fun t!236440 () Bool)

(declare-fun tb!156071 () Bool)

(assert (=> (and b!3193371 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494))))) t!236440) tb!156071))

(declare-fun result!198298 () Bool)

(assert (= result!198298 result!198180))

(assert (=> d!872996 t!236440))

(assert (=> b!3192587 t!236440))

(declare-fun t!236442 () Bool)

(declare-fun tb!156073 () Bool)

(assert (=> (and b!3193371 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 (apply!8103 lt!1075302 0))))) t!236442) tb!156073))

(declare-fun result!198300 () Bool)

(assert (= result!198300 result!198240))

(assert (=> d!873066 t!236442))

(declare-fun b_and!211797 () Bool)

(declare-fun tp!1009747 () Bool)

(assert (=> b!3193371 (= tp!1009747 (and (=> t!236440 result!198298) (=> t!236438 result!198296) (=> t!236436 result!198294) (=> t!236434 result!198292) (=> t!236442 result!198300) b_and!211797))))

(declare-fun e!1990606 () Bool)

(assert (=> b!3193371 (= e!1990606 (and tp!1009746 tp!1009747))))

(declare-fun tp!1009749 () Bool)

(declare-fun e!1990605 () Bool)

(declare-fun b!3193370 () Bool)

(assert (=> b!3193370 (= e!1990605 (and tp!1009749 (inv!48805 (tag!5691 (h!41385 (t!236312 (t!236312 rules!2135))))) (inv!48808 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) e!1990606))))

(declare-fun b!3193369 () Bool)

(declare-fun e!1990604 () Bool)

(declare-fun tp!1009748 () Bool)

(assert (=> b!3193369 (= e!1990604 (and e!1990605 tp!1009748))))

(assert (=> b!3192807 (= tp!1009588 e!1990604)))

(assert (= b!3193370 b!3193371))

(assert (= b!3193369 b!3193370))

(assert (= (and b!3192807 (is-Cons!35965 (t!236312 (t!236312 rules!2135)))) b!3193369))

(declare-fun m!3453061 () Bool)

(assert (=> b!3193370 m!3453061))

(declare-fun m!3453063 () Bool)

(assert (=> b!3193370 m!3453063))

(declare-fun b!3193375 () Bool)

(declare-fun e!1990608 () Bool)

(declare-fun tp!1009750 () Bool)

(declare-fun tp!1009754 () Bool)

(assert (=> b!3193375 (= e!1990608 (and tp!1009750 tp!1009754))))

(declare-fun b!3193373 () Bool)

(declare-fun tp!1009751 () Bool)

(declare-fun tp!1009752 () Bool)

(assert (=> b!3193373 (= e!1990608 (and tp!1009751 tp!1009752))))

(assert (=> b!3192768 (= tp!1009545 e!1990608)))

(declare-fun b!3193372 () Bool)

(assert (=> b!3193372 (= e!1990608 tp_is_empty!17275)))

(declare-fun b!3193374 () Bool)

(declare-fun tp!1009753 () Bool)

(assert (=> b!3193374 (= e!1990608 tp!1009753)))

(assert (= (and b!3192768 (is-ElementMatch!9932 (regOne!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193372))

(assert (= (and b!3192768 (is-Concat!15335 (regOne!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193373))

(assert (= (and b!3192768 (is-Star!9932 (regOne!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193374))

(assert (= (and b!3192768 (is-Union!9932 (regOne!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193375))

(declare-fun b!3193379 () Bool)

(declare-fun e!1990609 () Bool)

(declare-fun tp!1009755 () Bool)

(declare-fun tp!1009759 () Bool)

(assert (=> b!3193379 (= e!1990609 (and tp!1009755 tp!1009759))))

(declare-fun b!3193377 () Bool)

(declare-fun tp!1009756 () Bool)

(declare-fun tp!1009757 () Bool)

(assert (=> b!3193377 (= e!1990609 (and tp!1009756 tp!1009757))))

(assert (=> b!3192768 (= tp!1009546 e!1990609)))

(declare-fun b!3193376 () Bool)

(assert (=> b!3193376 (= e!1990609 tp_is_empty!17275)))

(declare-fun b!3193378 () Bool)

(declare-fun tp!1009758 () Bool)

(assert (=> b!3193378 (= e!1990609 tp!1009758)))

(assert (= (and b!3192768 (is-ElementMatch!9932 (regTwo!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193376))

(assert (= (and b!3192768 (is-Concat!15335 (regTwo!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193377))

(assert (= (and b!3192768 (is-Star!9932 (regTwo!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193378))

(assert (= (and b!3192768 (is-Union!9932 (regTwo!20376 (regex!5173 (rule!7605 (h!41384 tokens!494)))))) b!3193379))

(declare-fun b_lambda!87123 () Bool)

(assert (= b_lambda!87115 (or (and b!3192784 b_free!84655) (and b!3192480 b_free!84635 (= (toChars!7096 (transformation!5173 (rule!7605 separatorToken!241))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) (and b!3192809 b_free!84659 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 rules!2135)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) (and b!3193371 b_free!84675 (= (toChars!7096 (transformation!5173 (h!41385 (t!236312 (t!236312 rules!2135))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) (and b!3193297 b_free!84671 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 (t!236311 tokens!494)))))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) (and b!3192475 b_free!84631 (= (toChars!7096 (transformation!5173 (h!41385 rules!2135))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) (and b!3192467 b_free!84639 (= (toChars!7096 (transformation!5173 (rule!7605 (h!41384 tokens!494)))) (toChars!7096 (transformation!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))) b_lambda!87123)))

(declare-fun b_lambda!87125 () Bool)

(assert (= b_lambda!87113 (or b!3192457 b_lambda!87125)))

(assert (=> d!873144 d!873004))

(declare-fun b_lambda!87127 () Bool)

(assert (= b_lambda!87109 (or b!3192457 b_lambda!87127)))

(declare-fun bs!540426 () Bool)

(declare-fun d!873312 () Bool)

(assert (= bs!540426 (and d!873312 b!3192457)))

(assert (=> bs!540426 (= (dynLambda!14484 lambda!116828 (h!41384 (t!236311 tokens!494))) (not (isSeparator!5173 (rule!7605 (h!41384 (t!236311 tokens!494))))))))

(assert (=> b!3193007 d!873312))

(declare-fun b_lambda!87129 () Bool)

(assert (= b_lambda!87111 (or d!872944 b_lambda!87129)))

(declare-fun bs!540427 () Bool)

(declare-fun d!873314 () Bool)

(assert (= bs!540427 (and d!873314 d!872944)))

(assert (=> bs!540427 (= (dynLambda!14484 lambda!116840 (h!41384 (list!12776 (seqFromList!3418 tokens!494)))) (rulesProduceIndividualToken!2254 thiss!18206 rules!2135 (h!41384 (list!12776 (seqFromList!3418 tokens!494)))))))

(assert (=> bs!540427 m!3452597))

(assert (=> b!3193013 d!873314))

(push 1)

(assert (not b!3193368))

(assert (not d!873266))

(assert (not d!873162))

(assert (not d!873112))

(assert (not b!3193090))

(assert (not b!3193272))

(assert (not d!873172))

(assert (not b!3193245))

(assert (not b!3193349))

(assert (not d!873066))

(assert (not d!873206))

(assert (not b_next!85335))

(assert (not b_next!85357))

(assert (not b!3193132))

(assert (not b!3193374))

(assert (not b!3193351))

(assert (not b_lambda!87129))

(assert (not b_next!85375))

(assert (not b!3193362))

(assert (not b!3193046))

(assert (not d!873104))

(assert (not b!3193308))

(assert (not d!873068))

(assert (not b!3193366))

(assert (not b_next!85377))

(assert (not b!3193069))

(assert (not d!873150))

(assert (not b!3193035))

(assert (not b!3192593))

(assert (not b!3193005))

(assert (not b!3193313))

(assert (not b!3193350))

(assert (not b!3193037))

(assert (not d!873170))

(assert (not b!3193348))

(assert (not d!873054))

(assert (not b!3192926))

(assert (not b_next!85373))

(assert (not d!873082))

(assert (not b!3192968))

(assert (not b!3192984))

(assert (not b!3193226))

(assert (not b!3193379))

(assert (not b!3192953))

(assert (not d!873280))

(assert (not b!3193055))

(assert (not b!3193244))

(assert (not d!873128))

(assert (not bm!231370))

(assert (not d!873224))

(assert (not b!3193328))

(assert (not b!3193324))

(assert (not d!873050))

(assert b_and!211797)

(assert (not d!873124))

(assert (not b!3193143))

(assert (not b!3193291))

(assert (not b!3193310))

(assert (not d!873090))

(assert (not b_lambda!87107))

(assert (not b!3193293))

(assert (not b!3193340))

(assert (not b!3193339))

(assert (not b!3193367))

(assert (not d!873184))

(assert (not b!3193068))

(assert (not d!873174))

(assert (not d!873074))

(assert (not d!873064))

(assert (not b_next!85337))

(assert (not b!3193000))

(assert (not b!3193067))

(assert (not b_lambda!87127))

(assert (not d!873198))

(assert (not b!3193378))

(assert b_and!211793)

(assert b_and!211795)

(assert (not b!3192921))

(assert (not d!873070))

(assert (not b_next!85361))

(assert (not b!3193300))

(assert (not d!873108))

(assert (not d!873168))

(assert (not b!3193113))

(assert (not d!873096))

(assert (not b!3193288))

(assert (not b!3193347))

(assert (not b!3193006))

(assert (not b!3193302))

(assert (not bm!231368))

(assert (not b!3193336))

(assert (not b!3193224))

(assert (not b!3193077))

(assert (not b!3193278))

(assert (not b!3193296))

(assert (not d!873232))

(assert (not d!873158))

(assert (not b!3193355))

(assert b_and!211787)

(assert (not d!873268))

(assert (not d!873130))

(assert (not d!873072))

(assert (not b!3193306))

(assert (not b!3193346))

(assert (not b!3193247))

(assert (not b!3192922))

(assert (not d!873152))

(assert (not d!873228))

(assert (not b!3193274))

(assert (not b!3193273))

(assert b_and!211723)

(assert (not b!3193016))

(assert (not d!873284))

(assert (not b!3193354))

(assert (not b_lambda!87083))

(assert (not b!3193024))

(assert (not b_lambda!87123))

(assert (not b!3193369))

(assert (not b!3193036))

(assert (not b!3192969))

(assert (not b!3192957))

(assert (not d!873208))

(assert (not b!3193353))

(assert (not b!3193305))

(assert (not d!873048))

(assert (not bs!540427))

(assert (not b!3192674))

(assert (not b!3193342))

(assert (not d!873100))

(assert (not b!3193076))

(assert (not b!3193012))

(assert (not d!873114))

(assert (not b!3192966))

(assert (not b!3193222))

(assert (not d!873142))

(assert (not b!3193294))

(assert (not b!3193275))

(assert (not b!3193002))

(assert (not b!3192975))

(assert (not d!873062))

(assert (not d!873056))

(assert (not d!873116))

(assert (not b_lambda!87089))

(assert (not b!3193370))

(assert (not tb!156045))

(assert (not b_next!85379))

(assert (not b!3193325))

(assert (not b!3193377))

(assert (not b!3193180))

(assert (not b!3193181))

(assert (not d!873058))

(assert (not d!873264))

(assert (not d!873204))

(assert (not bm!231373))

(assert (not b!3193228))

(assert (not d!873230))

(assert b_and!211675)

(assert b_and!211783)

(assert (not b!3193276))

(assert (not b!3193044))

(assert (not b!3192956))

(assert (not b_next!85363))

(assert (not d!873132))

(assert (not d!873210))

(assert (not b!3193111))

(assert (not b_lambda!87125))

(assert (not b_next!85341))

(assert (not b!3192946))

(assert (not b!3193344))

(assert (not b!3192972))

(assert (not b!3192911))

(assert (not b!3193014))

(assert (not d!873086))

(assert (not b!3193334))

(assert (not b!3193301))

(assert (not b!3193361))

(assert (not b!3193375))

(assert (not b!3193285))

(assert (not d!873102))

(assert (not b!3192954))

(assert (not b!3193021))

(assert (not b!3193053))

(assert (not d!873306))

(assert (not b!3193070))

(assert (not b!3193338))

(assert (not b_next!85333))

(assert (not d!873060))

(assert (not b_next!85359))

(assert (not b!3193112))

(assert b_and!211785)

(assert (not b!3193312))

(assert (not b!3193271))

(assert (not b_lambda!87121))

(assert (not b!3192923))

(assert (not bm!231369))

(assert (not b!3193009))

(assert (not d!873310))

(assert (not b_lambda!87085))

(assert (not b!3193365))

(assert (not b!3193287))

(assert (not d!873190))

(assert (not b!3193089))

(assert (not b!3193323))

(assert (not d!873146))

(assert (not b!3193001))

(assert (not d!873134))

(assert b_and!211791)

(assert (not d!873304))

(assert (not b!3193108))

(assert (not b_lambda!87087))

(assert (not b!3192977))

(assert (not d!873080))

(assert (not b!3193284))

(assert (not d!873194))

(assert (not d!873262))

(assert (not d!873078))

(assert (not b_next!85339))

(assert (not b!3193309))

(assert (not b!3193373))

(assert (not b!3192967))

(assert (not b!3193080))

(assert (not d!873148))

(assert (not b!3193298))

(assert (not b!3193363))

(assert (not b!3193082))

(assert (not b!3192912))

(assert (not b_lambda!87091))

(assert b_and!211789)

(assert (not b!3193178))

(assert (not d!873052))

(assert (not b!3193008))

(assert (not b!3193343))

(assert b_and!211683)

(assert (not b!3192993))

(assert (not d!873166))

(assert (not b!3193071))

(assert (not tb!156025))

(assert (not d!873126))

(assert (not b!3193075))

(assert (not tb!156015))

(assert (not b!3193327))

(assert (not d!873098))

(assert (not b!3193088))

(assert (not d!873282))

(assert (not b_next!85343))

(assert (not d!873140))

(assert (not d!873222))

(assert (not b!3193295))

(assert (not b!3193052))

(assert (not d!873120))

(assert b_and!211679)

(assert (not b!3193335))

(assert (not b!3193289))

(assert (not b!3193314))

(assert (not b!3193255))

(assert (not d!873226))

(assert (not d!873180))

(assert b_and!211781)

(assert b_and!211727)

(assert (not d!873040))

(assert (not b!3193330))

(assert (not b!3193292))

(assert (not b!3192924))

(assert (not b!3193359))

(assert (not b!3193010))

(assert (not d!873118))

(assert (not b!3193357))

(assert (not b!3193304))

(assert (not b!3193081))

(assert (not d!873122))

(assert (not d!873188))

(assert (not b!3193329))

(assert (not b!3192986))

(assert (not b!3193011))

(assert (not d!873136))

(assert tp_is_empty!17275)

(assert (not b!3193358))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!85375))

(assert (not b_next!85377))

(assert (not b_next!85373))

(assert b_and!211797)

(assert (not b_next!85337))

(assert b_and!211787)

(assert b_and!211723)

(assert (not b_next!85379))

(assert (not b_next!85341))

(assert b_and!211791)

(assert (not b_next!85339))

(assert b_and!211789)

(assert b_and!211683)

(assert (not b_next!85343))

(assert b_and!211679)

(assert (not b_next!85335))

(assert (not b_next!85357))

(assert (not b_next!85361))

(assert b_and!211793)

(assert b_and!211795)

(assert b_and!211675)

(assert b_and!211783)

(assert (not b_next!85363))

(assert (not b_next!85333))

(assert (not b_next!85359))

(assert b_and!211785)

(assert b_and!211781)

(assert b_and!211727)

(check-sat)

(pop 1)

