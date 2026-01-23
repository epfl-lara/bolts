; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!151006 () Bool)

(assert start!151006)

(declare-fun b!1600992 () Bool)

(declare-fun b_free!43143 () Bool)

(declare-fun b_next!43847 () Bool)

(assert (=> b!1600992 (= b_free!43143 (not b_next!43847))))

(declare-fun tp!468547 () Bool)

(declare-fun b_and!112885 () Bool)

(assert (=> b!1600992 (= tp!468547 b_and!112885)))

(declare-fun b_free!43145 () Bool)

(declare-fun b_next!43849 () Bool)

(assert (=> b!1600992 (= b_free!43145 (not b_next!43849))))

(declare-fun tp!468542 () Bool)

(declare-fun b_and!112887 () Bool)

(assert (=> b!1600992 (= tp!468542 b_and!112887)))

(declare-fun b!1600998 () Bool)

(declare-fun b_free!43147 () Bool)

(declare-fun b_next!43851 () Bool)

(assert (=> b!1600998 (= b_free!43147 (not b_next!43851))))

(declare-fun tp!468543 () Bool)

(declare-fun b_and!112889 () Bool)

(assert (=> b!1600998 (= tp!468543 b_and!112889)))

(declare-fun b_free!43149 () Bool)

(declare-fun b_next!43853 () Bool)

(assert (=> b!1600998 (= b_free!43149 (not b_next!43853))))

(declare-fun tp!468544 () Bool)

(declare-fun b_and!112891 () Bool)

(assert (=> b!1600998 (= tp!468544 b_and!112891)))

(declare-fun b!1600976 () Bool)

(declare-fun res!713943 () Bool)

(declare-fun e!1027479 () Bool)

(assert (=> b!1600976 (=> (not res!713943) (not e!1027479))))

(declare-datatypes ((List!17593 0))(
  ( (Nil!17523) (Cons!17523 (h!22924 (_ BitVec 16)) (t!146298 List!17593)) )
))
(declare-datatypes ((TokenValue!3175 0))(
  ( (FloatLiteralValue!6350 (text!22670 List!17593)) (TokenValueExt!3174 (__x!11652 Int)) (Broken!15875 (value!97569 List!17593)) (Object!3244) (End!3175) (Def!3175) (Underscore!3175) (Match!3175) (Else!3175) (Error!3175) (Case!3175) (If!3175) (Extends!3175) (Abstract!3175) (Class!3175) (Val!3175) (DelimiterValue!6350 (del!3235 List!17593)) (KeywordValue!3181 (value!97570 List!17593)) (CommentValue!6350 (value!97571 List!17593)) (WhitespaceValue!6350 (value!97572 List!17593)) (IndentationValue!3175 (value!97573 List!17593)) (String!20206) (Int32!3175) (Broken!15876 (value!97574 List!17593)) (Boolean!3176) (Unit!27904) (OperatorValue!3178 (op!3235 List!17593)) (IdentifierValue!6350 (value!97575 List!17593)) (IdentifierValue!6351 (value!97576 List!17593)) (WhitespaceValue!6351 (value!97577 List!17593)) (True!6350) (False!6350) (Broken!15877 (value!97578 List!17593)) (Broken!15878 (value!97579 List!17593)) (True!6351) (RightBrace!3175) (RightBracket!3175) (Colon!3175) (Null!3175) (Comma!3175) (LeftBracket!3175) (False!6351) (LeftBrace!3175) (ImaginaryLiteralValue!3175 (text!22671 List!17593)) (StringLiteralValue!9525 (value!97580 List!17593)) (EOFValue!3175 (value!97581 List!17593)) (IdentValue!3175 (value!97582 List!17593)) (DelimiterValue!6351 (value!97583 List!17593)) (DedentValue!3175 (value!97584 List!17593)) (NewLineValue!3175 (value!97585 List!17593)) (IntegerValue!9525 (value!97586 (_ BitVec 32)) (text!22672 List!17593)) (IntegerValue!9526 (value!97587 Int) (text!22673 List!17593)) (Times!3175) (Or!3175) (Equal!3175) (Minus!3175) (Broken!15879 (value!97588 List!17593)) (And!3175) (Div!3175) (LessEqual!3175) (Mod!3175) (Concat!7588) (Not!3175) (Plus!3175) (SpaceValue!3175 (value!97589 List!17593)) (IntegerValue!9527 (value!97590 Int) (text!22674 List!17593)) (StringLiteralValue!9526 (text!22675 List!17593)) (FloatLiteralValue!6351 (text!22676 List!17593)) (BytesLiteralValue!3175 (value!97591 List!17593)) (CommentValue!6351 (value!97592 List!17593)) (StringLiteralValue!9527 (value!97593 List!17593)) (ErrorTokenValue!3175 (msg!3236 List!17593)) )
))
(declare-datatypes ((C!9000 0))(
  ( (C!9001 (val!5096 Int)) )
))
(declare-datatypes ((List!17594 0))(
  ( (Nil!17524) (Cons!17524 (h!22925 C!9000) (t!146299 List!17594)) )
))
(declare-datatypes ((IArray!11641 0))(
  ( (IArray!11642 (innerList!5878 List!17594)) )
))
(declare-datatypes ((Conc!5818 0))(
  ( (Node!5818 (left!14138 Conc!5818) (right!14468 Conc!5818) (csize!11866 Int) (cheight!6029 Int)) (Leaf!8581 (xs!8638 IArray!11641) (csize!11867 Int)) (Empty!5818) )
))
(declare-datatypes ((BalanceConc!11580 0))(
  ( (BalanceConc!11581 (c!260291 Conc!5818)) )
))
(declare-datatypes ((String!20207 0))(
  ( (String!20208 (value!97594 String)) )
))
(declare-datatypes ((Regex!4413 0))(
  ( (ElementMatch!4413 (c!260292 C!9000)) (Concat!7589 (regOne!9338 Regex!4413) (regTwo!9338 Regex!4413)) (EmptyExpr!4413) (Star!4413 (reg!4742 Regex!4413)) (EmptyLang!4413) (Union!4413 (regOne!9339 Regex!4413) (regTwo!9339 Regex!4413)) )
))
(declare-datatypes ((TokenValueInjection!6010 0))(
  ( (TokenValueInjection!6011 (toValue!4504 Int) (toChars!4363 Int)) )
))
(declare-datatypes ((Rule!5970 0))(
  ( (Rule!5971 (regex!3085 Regex!4413) (tag!3359 String!20207) (isSeparator!3085 Bool) (transformation!3085 TokenValueInjection!6010)) )
))
(declare-datatypes ((List!17595 0))(
  ( (Nil!17525) (Cons!17525 (h!22926 Rule!5970) (t!146300 List!17595)) )
))
(declare-fun rules!1846 () List!17595)

(declare-fun isEmpty!10558 (List!17595) Bool)

(assert (=> b!1600976 (= res!713943 (not (isEmpty!10558 rules!1846)))))

(declare-fun b!1600977 () Bool)

(declare-fun res!713948 () Bool)

(declare-fun e!1027468 () Bool)

(assert (=> b!1600977 (=> res!713948 e!1027468)))

(declare-fun lt!568523 () List!17594)

(declare-datatypes ((LexerInterface!2714 0))(
  ( (LexerInterfaceExt!2711 (__x!11653 Int)) (Lexer!2712) )
))
(declare-fun thiss!17113 () LexerInterface!2714)

(declare-datatypes ((Token!5736 0))(
  ( (Token!5737 (value!97595 TokenValue!3175) (rule!4899 Rule!5970) (size!14105 Int) (originalCharacters!3899 List!17594)) )
))
(declare-datatypes ((List!17596 0))(
  ( (Nil!17526) (Cons!17526 (h!22927 Token!5736) (t!146301 List!17596)) )
))
(declare-datatypes ((IArray!11643 0))(
  ( (IArray!11644 (innerList!5879 List!17596)) )
))
(declare-datatypes ((Conc!5819 0))(
  ( (Node!5819 (left!14139 Conc!5819) (right!14469 Conc!5819) (csize!11868 Int) (cheight!6030 Int)) (Leaf!8582 (xs!8639 IArray!11643) (csize!11869 Int)) (Empty!5819) )
))
(declare-datatypes ((BalanceConc!11582 0))(
  ( (BalanceConc!11583 (c!260293 Conc!5819)) )
))
(declare-fun isEmpty!10559 (BalanceConc!11582) Bool)

(declare-datatypes ((tuple2!17012 0))(
  ( (tuple2!17013 (_1!9908 BalanceConc!11582) (_2!9908 BalanceConc!11580)) )
))
(declare-fun lex!1198 (LexerInterface!2714 List!17595 BalanceConc!11580) tuple2!17012)

(declare-fun seqFromList!1919 (List!17594) BalanceConc!11580)

(assert (=> b!1600977 (= res!713948 (isEmpty!10559 (_1!9908 (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523)))))))

(declare-fun e!1027486 () Bool)

(declare-fun tp!468545 () Bool)

(declare-fun b!1600978 () Bool)

(declare-fun tokens!457 () List!17596)

(declare-fun e!1027470 () Bool)

(declare-fun inv!22940 (Token!5736) Bool)

(assert (=> b!1600978 (= e!1027486 (and (inv!22940 (h!22927 tokens!457)) e!1027470 tp!468545))))

(declare-fun b!1600979 () Bool)

(declare-fun res!713960 () Bool)

(declare-fun e!1027471 () Bool)

(assert (=> b!1600979 (=> (not res!713960) (not e!1027471))))

(declare-fun lt!568519 () List!17594)

(declare-fun head!3265 (List!17594) C!9000)

(assert (=> b!1600979 (= res!713960 (= lt!568519 (Cons!17524 (head!3265 (originalCharacters!3899 (h!22927 (t!146301 tokens!457)))) Nil!17524)))))

(declare-fun res!713949 () Bool)

(assert (=> start!151006 (=> (not res!713949) (not e!1027479))))

(get-info :version)

(assert (=> start!151006 (= res!713949 ((_ is Lexer!2712) thiss!17113))))

(assert (=> start!151006 e!1027479))

(assert (=> start!151006 true))

(declare-fun e!1027469 () Bool)

(assert (=> start!151006 e!1027469))

(assert (=> start!151006 e!1027486))

(declare-fun b!1600980 () Bool)

(declare-fun res!713944 () Bool)

(assert (=> b!1600980 (=> (not res!713944) (not e!1027479))))

(declare-fun rulesProduceEachTokenIndividuallyList!916 (LexerInterface!2714 List!17595 List!17596) Bool)

(assert (=> b!1600980 (= res!713944 (rulesProduceEachTokenIndividuallyList!916 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1600981 () Bool)

(declare-fun e!1027478 () Bool)

(declare-fun e!1027480 () Bool)

(assert (=> b!1600981 (= e!1027478 e!1027480)))

(declare-fun res!713955 () Bool)

(assert (=> b!1600981 (=> res!713955 e!1027480)))

(declare-fun lt!568524 () Regex!4413)

(declare-fun prefixMatch!348 (Regex!4413 List!17594) Bool)

(declare-fun ++!4593 (List!17594 List!17594) List!17594)

(assert (=> b!1600981 (= res!713955 (prefixMatch!348 lt!568524 (++!4593 lt!568523 lt!568519)))))

(declare-fun lt!568532 () BalanceConc!11580)

(declare-fun list!6823 (BalanceConc!11580) List!17594)

(assert (=> b!1600981 (= lt!568519 (list!6823 lt!568532))))

(declare-fun b!1600982 () Bool)

(declare-fun e!1027481 () Bool)

(assert (=> b!1600982 (= e!1027481 e!1027468)))

(declare-fun res!713945 () Bool)

(assert (=> b!1600982 (=> res!713945 e!1027468)))

(declare-fun lt!568526 () List!17594)

(declare-fun lt!568518 () List!17594)

(assert (=> b!1600982 (= res!713945 (or (not (= lt!568518 lt!568526)) (not (= lt!568526 lt!568523)) (not (= lt!568518 lt!568523))))))

(declare-fun printList!829 (LexerInterface!2714 List!17596) List!17594)

(assert (=> b!1600982 (= lt!568526 (printList!829 thiss!17113 (Cons!17526 (h!22927 tokens!457) Nil!17526)))))

(declare-fun lt!568511 () BalanceConc!11580)

(assert (=> b!1600982 (= lt!568518 (list!6823 lt!568511))))

(declare-fun lt!568517 () BalanceConc!11582)

(declare-fun printTailRec!767 (LexerInterface!2714 BalanceConc!11582 Int BalanceConc!11580) BalanceConc!11580)

(assert (=> b!1600982 (= lt!568511 (printTailRec!767 thiss!17113 lt!568517 0 (BalanceConc!11581 Empty!5818)))))

(declare-fun print!1245 (LexerInterface!2714 BalanceConc!11582) BalanceConc!11580)

(assert (=> b!1600982 (= lt!568511 (print!1245 thiss!17113 lt!568517))))

(declare-fun singletonSeq!1448 (Token!5736) BalanceConc!11582)

(assert (=> b!1600982 (= lt!568517 (singletonSeq!1448 (h!22927 tokens!457)))))

(declare-datatypes ((tuple2!17014 0))(
  ( (tuple2!17015 (_1!9909 Token!5736) (_2!9909 List!17594)) )
))
(declare-datatypes ((Option!3170 0))(
  ( (None!3169) (Some!3169 (v!24100 tuple2!17014)) )
))
(declare-fun lt!568520 () Option!3170)

(declare-fun lt!568515 () List!17594)

(declare-fun maxPrefix!1278 (LexerInterface!2714 List!17595 List!17594) Option!3170)

(assert (=> b!1600982 (= lt!568520 (maxPrefix!1278 thiss!17113 rules!1846 lt!568515))))

(declare-fun b!1600983 () Bool)

(declare-fun res!713957 () Bool)

(assert (=> b!1600983 (=> res!713957 e!1027468)))

(declare-fun rulesProduceIndividualToken!1366 (LexerInterface!2714 List!17595 Token!5736) Bool)

(assert (=> b!1600983 (= res!713957 (not (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 tokens!457))))))

(declare-fun b!1600984 () Bool)

(declare-fun e!1027483 () Bool)

(assert (=> b!1600984 (= e!1027479 e!1027483)))

(declare-fun res!713956 () Bool)

(assert (=> b!1600984 (=> (not res!713956) (not e!1027483))))

(declare-fun lt!568527 () List!17594)

(assert (=> b!1600984 (= res!713956 (= lt!568515 lt!568527))))

(declare-fun lt!568513 () List!17594)

(assert (=> b!1600984 (= lt!568527 (++!4593 lt!568523 lt!568513))))

(declare-fun lt!568529 () BalanceConc!11580)

(assert (=> b!1600984 (= lt!568515 (list!6823 lt!568529))))

(declare-fun lt!568528 () BalanceConc!11580)

(assert (=> b!1600984 (= lt!568513 (list!6823 lt!568528))))

(declare-fun lt!568508 () BalanceConc!11580)

(assert (=> b!1600984 (= lt!568523 (list!6823 lt!568508))))

(declare-fun charsOf!1734 (Token!5736) BalanceConc!11580)

(assert (=> b!1600984 (= lt!568508 (charsOf!1734 (h!22927 tokens!457)))))

(declare-fun lt!568510 () tuple2!17012)

(assert (=> b!1600984 (= lt!568510 (lex!1198 thiss!17113 rules!1846 lt!568528))))

(declare-fun lt!568512 () BalanceConc!11582)

(assert (=> b!1600984 (= lt!568528 (print!1245 thiss!17113 lt!568512))))

(declare-fun seqFromList!1920 (List!17596) BalanceConc!11582)

(assert (=> b!1600984 (= lt!568512 (seqFromList!1920 (t!146301 tokens!457)))))

(assert (=> b!1600984 (= lt!568529 (print!1245 thiss!17113 (seqFromList!1920 tokens!457)))))

(declare-fun b!1600985 () Bool)

(declare-fun res!713954 () Bool)

(assert (=> b!1600985 (=> (not res!713954) (not e!1027479))))

(declare-fun rulesInvariant!2383 (LexerInterface!2714 List!17595) Bool)

(assert (=> b!1600985 (= res!713954 (rulesInvariant!2383 thiss!17113 rules!1846))))

(declare-fun b!1600986 () Bool)

(declare-fun e!1027476 () Bool)

(declare-fun tp!468548 () Bool)

(assert (=> b!1600986 (= e!1027469 (and e!1027476 tp!468548))))

(declare-fun tp!468550 () Bool)

(declare-fun e!1027472 () Bool)

(declare-fun b!1600987 () Bool)

(declare-fun e!1027475 () Bool)

(declare-fun inv!22937 (String!20207) Bool)

(declare-fun inv!22941 (TokenValueInjection!6010) Bool)

(assert (=> b!1600987 (= e!1027472 (and tp!468550 (inv!22937 (tag!3359 (rule!4899 (h!22927 tokens!457)))) (inv!22941 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) e!1027475))))

(declare-fun b!1600988 () Bool)

(declare-fun e!1027474 () Bool)

(assert (=> b!1600988 (= e!1027468 e!1027474)))

(declare-fun res!713951 () Bool)

(assert (=> b!1600988 (=> res!713951 e!1027474)))

(declare-fun isDefined!2541 (Option!3170) Bool)

(assert (=> b!1600988 (= res!713951 (not (isDefined!2541 lt!568520)))))

(declare-datatypes ((Unit!27905 0))(
  ( (Unit!27906) )
))
(declare-fun lt!568514 () Unit!27905)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!288 (LexerInterface!2714 List!17595 List!17594 List!17594) Unit!27905)

(assert (=> b!1600988 (= lt!568514 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!288 thiss!17113 rules!1846 lt!568523 lt!568513))))

(declare-fun b!1600989 () Bool)

(declare-fun tp!468546 () Bool)

(declare-fun inv!21 (TokenValue!3175) Bool)

(assert (=> b!1600989 (= e!1027470 (and (inv!21 (value!97595 (h!22927 tokens!457))) e!1027472 tp!468546))))

(declare-fun b!1600990 () Bool)

(declare-fun e!1027485 () Bool)

(declare-fun tp!468549 () Bool)

(assert (=> b!1600990 (= e!1027476 (and tp!468549 (inv!22937 (tag!3359 (h!22926 rules!1846))) (inv!22941 (transformation!3085 (h!22926 rules!1846))) e!1027485))))

(declare-fun b!1600991 () Bool)

(assert (=> b!1600991 (= e!1027471 (= lt!568519 (Cons!17524 (head!3265 lt!568513) Nil!17524)))))

(assert (=> b!1600992 (= e!1027485 (and tp!468547 tp!468542))))

(declare-fun b!1600993 () Bool)

(declare-fun e!1027482 () Bool)

(assert (=> b!1600993 (= e!1027482 e!1027481)))

(declare-fun res!713947 () Bool)

(assert (=> b!1600993 (=> res!713947 e!1027481)))

(declare-fun lt!568522 () List!17596)

(declare-fun lt!568530 () List!17596)

(declare-fun lt!568521 () List!17596)

(assert (=> b!1600993 (= res!713947 (or (not (= lt!568521 lt!568522)) (not (= lt!568522 lt!568530))))))

(declare-fun list!6824 (BalanceConc!11582) List!17596)

(assert (=> b!1600993 (= lt!568522 (list!6824 lt!568512))))

(assert (=> b!1600993 (= lt!568521 lt!568530)))

(declare-fun prepend!583 (BalanceConc!11582 Token!5736) BalanceConc!11582)

(assert (=> b!1600993 (= lt!568530 (list!6824 (prepend!583 (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!568525 () Unit!27905)

(declare-fun seqFromListBHdTlConstructive!162 (Token!5736 List!17596 BalanceConc!11582) Unit!27905)

(assert (=> b!1600993 (= lt!568525 (seqFromListBHdTlConstructive!162 (h!22927 (t!146301 tokens!457)) (t!146301 (t!146301 tokens!457)) (_1!9908 lt!568510)))))

(declare-fun b!1600994 () Bool)

(declare-fun res!713950 () Bool)

(assert (=> b!1600994 (=> (not res!713950) (not e!1027479))))

(assert (=> b!1600994 (= res!713950 (and (not ((_ is Nil!17526) tokens!457)) (not ((_ is Nil!17526) (t!146301 tokens!457)))))))

(declare-fun b!1600995 () Bool)

(declare-fun res!713959 () Bool)

(assert (=> b!1600995 (=> res!713959 e!1027481)))

(declare-fun separableTokensPredicate!656 (LexerInterface!2714 Token!5736 Token!5736 List!17595) Bool)

(assert (=> b!1600995 (= res!713959 (not (separableTokensPredicate!656 thiss!17113 (h!22927 tokens!457) (h!22927 (t!146301 tokens!457)) rules!1846)))))

(declare-fun b!1600996 () Bool)

(declare-fun lt!568531 () BalanceConc!11580)

(declare-fun size!14106 (BalanceConc!11580) Int)

(assert (=> b!1600996 (= e!1027480 (< 0 (size!14106 lt!568531)))))

(assert (=> b!1600996 e!1027471))

(declare-fun res!713952 () Bool)

(assert (=> b!1600996 (=> (not res!713952) (not e!1027471))))

(assert (=> b!1600996 (= res!713952 (= lt!568523 (originalCharacters!3899 (h!22927 tokens!457))))))

(declare-fun b!1600997 () Bool)

(assert (=> b!1600997 (= e!1027474 e!1027478)))

(declare-fun res!713953 () Bool)

(assert (=> b!1600997 (=> res!713953 e!1027478)))

(declare-fun prefixMatchZipperSequence!445 (Regex!4413 BalanceConc!11580) Bool)

(declare-fun ++!4594 (BalanceConc!11580 BalanceConc!11580) BalanceConc!11580)

(assert (=> b!1600997 (= res!713953 (prefixMatchZipperSequence!445 lt!568524 (++!4594 lt!568508 lt!568532)))))

(declare-fun singletonSeq!1449 (C!9000) BalanceConc!11580)

(declare-fun apply!4348 (BalanceConc!11580 Int) C!9000)

(assert (=> b!1600997 (= lt!568532 (singletonSeq!1449 (apply!4348 lt!568531 0)))))

(assert (=> b!1600997 (= lt!568531 (charsOf!1734 (h!22927 (t!146301 tokens!457))))))

(declare-fun rulesRegex!475 (LexerInterface!2714 List!17595) Regex!4413)

(assert (=> b!1600997 (= lt!568524 (rulesRegex!475 thiss!17113 rules!1846))))

(assert (=> b!1600998 (= e!1027475 (and tp!468543 tp!468544))))

(declare-fun b!1600999 () Bool)

(assert (=> b!1600999 (= e!1027483 (not e!1027482))))

(declare-fun res!713946 () Bool)

(assert (=> b!1600999 (=> res!713946 e!1027482)))

(assert (=> b!1600999 (= res!713946 (not (= lt!568521 (t!146301 tokens!457))))))

(assert (=> b!1600999 (= lt!568521 (list!6824 (_1!9908 lt!568510)))))

(declare-fun lt!568509 () Unit!27905)

(declare-fun theoremInvertabilityWhenTokenListSeparable!159 (LexerInterface!2714 List!17595 List!17596) Unit!27905)

(assert (=> b!1600999 (= lt!568509 (theoremInvertabilityWhenTokenListSeparable!159 thiss!17113 rules!1846 (t!146301 tokens!457)))))

(declare-fun isPrefix!1345 (List!17594 List!17594) Bool)

(assert (=> b!1600999 (isPrefix!1345 lt!568523 lt!568527)))

(declare-fun lt!568516 () Unit!27905)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!870 (List!17594 List!17594) Unit!27905)

(assert (=> b!1600999 (= lt!568516 (lemmaConcatTwoListThenFirstIsPrefix!870 lt!568523 lt!568513))))

(declare-fun b!1601000 () Bool)

(declare-fun res!713958 () Bool)

(assert (=> b!1601000 (=> (not res!713958) (not e!1027479))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!407 (LexerInterface!2714 List!17596 List!17595) Bool)

(assert (=> b!1601000 (= res!713958 (tokensListTwoByTwoPredicateSeparableList!407 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!151006 res!713949) b!1600976))

(assert (= (and b!1600976 res!713943) b!1600985))

(assert (= (and b!1600985 res!713954) b!1600980))

(assert (= (and b!1600980 res!713944) b!1601000))

(assert (= (and b!1601000 res!713958) b!1600994))

(assert (= (and b!1600994 res!713950) b!1600984))

(assert (= (and b!1600984 res!713956) b!1600999))

(assert (= (and b!1600999 (not res!713946)) b!1600993))

(assert (= (and b!1600993 (not res!713947)) b!1600995))

(assert (= (and b!1600995 (not res!713959)) b!1600982))

(assert (= (and b!1600982 (not res!713945)) b!1600983))

(assert (= (and b!1600983 (not res!713957)) b!1600977))

(assert (= (and b!1600977 (not res!713948)) b!1600988))

(assert (= (and b!1600988 (not res!713951)) b!1600997))

(assert (= (and b!1600997 (not res!713953)) b!1600981))

(assert (= (and b!1600981 (not res!713955)) b!1600996))

(assert (= (and b!1600996 res!713952) b!1600979))

(assert (= (and b!1600979 res!713960) b!1600991))

(assert (= b!1600990 b!1600992))

(assert (= b!1600986 b!1600990))

(assert (= (and start!151006 ((_ is Cons!17525) rules!1846)) b!1600986))

(assert (= b!1600987 b!1600998))

(assert (= b!1600989 b!1600987))

(assert (= b!1600978 b!1600989))

(assert (= (and start!151006 ((_ is Cons!17526) tokens!457)) b!1600978))

(declare-fun m!1906161 () Bool)

(assert (=> b!1600976 m!1906161))

(declare-fun m!1906163 () Bool)

(assert (=> b!1600993 m!1906163))

(declare-fun m!1906165 () Bool)

(assert (=> b!1600993 m!1906165))

(declare-fun m!1906167 () Bool)

(assert (=> b!1600993 m!1906167))

(declare-fun m!1906169 () Bool)

(assert (=> b!1600993 m!1906169))

(declare-fun m!1906171 () Bool)

(assert (=> b!1600993 m!1906171))

(assert (=> b!1600993 m!1906167))

(assert (=> b!1600993 m!1906169))

(declare-fun m!1906173 () Bool)

(assert (=> b!1600985 m!1906173))

(declare-fun m!1906175 () Bool)

(assert (=> b!1600988 m!1906175))

(declare-fun m!1906177 () Bool)

(assert (=> b!1600988 m!1906177))

(declare-fun m!1906179 () Bool)

(assert (=> b!1600979 m!1906179))

(declare-fun m!1906181 () Bool)

(assert (=> b!1600990 m!1906181))

(declare-fun m!1906183 () Bool)

(assert (=> b!1600990 m!1906183))

(declare-fun m!1906185 () Bool)

(assert (=> b!1600987 m!1906185))

(declare-fun m!1906187 () Bool)

(assert (=> b!1600987 m!1906187))

(declare-fun m!1906189 () Bool)

(assert (=> b!1600995 m!1906189))

(declare-fun m!1906191 () Bool)

(assert (=> b!1600996 m!1906191))

(declare-fun m!1906193 () Bool)

(assert (=> b!1600991 m!1906193))

(declare-fun m!1906195 () Bool)

(assert (=> b!1600982 m!1906195))

(declare-fun m!1906197 () Bool)

(assert (=> b!1600982 m!1906197))

(declare-fun m!1906199 () Bool)

(assert (=> b!1600982 m!1906199))

(declare-fun m!1906201 () Bool)

(assert (=> b!1600982 m!1906201))

(declare-fun m!1906203 () Bool)

(assert (=> b!1600982 m!1906203))

(declare-fun m!1906205 () Bool)

(assert (=> b!1600982 m!1906205))

(declare-fun m!1906207 () Bool)

(assert (=> b!1600997 m!1906207))

(declare-fun m!1906209 () Bool)

(assert (=> b!1600997 m!1906209))

(declare-fun m!1906211 () Bool)

(assert (=> b!1600997 m!1906211))

(declare-fun m!1906213 () Bool)

(assert (=> b!1600997 m!1906213))

(declare-fun m!1906215 () Bool)

(assert (=> b!1600997 m!1906215))

(assert (=> b!1600997 m!1906215))

(declare-fun m!1906217 () Bool)

(assert (=> b!1600997 m!1906217))

(assert (=> b!1600997 m!1906211))

(declare-fun m!1906219 () Bool)

(assert (=> b!1600980 m!1906219))

(declare-fun m!1906221 () Bool)

(assert (=> b!1600983 m!1906221))

(declare-fun m!1906223 () Bool)

(assert (=> b!1600989 m!1906223))

(declare-fun m!1906225 () Bool)

(assert (=> b!1600981 m!1906225))

(assert (=> b!1600981 m!1906225))

(declare-fun m!1906227 () Bool)

(assert (=> b!1600981 m!1906227))

(declare-fun m!1906229 () Bool)

(assert (=> b!1600981 m!1906229))

(declare-fun m!1906231 () Bool)

(assert (=> b!1600999 m!1906231))

(declare-fun m!1906233 () Bool)

(assert (=> b!1600999 m!1906233))

(declare-fun m!1906235 () Bool)

(assert (=> b!1600999 m!1906235))

(declare-fun m!1906237 () Bool)

(assert (=> b!1600999 m!1906237))

(declare-fun m!1906239 () Bool)

(assert (=> b!1600977 m!1906239))

(assert (=> b!1600977 m!1906239))

(declare-fun m!1906241 () Bool)

(assert (=> b!1600977 m!1906241))

(declare-fun m!1906243 () Bool)

(assert (=> b!1600977 m!1906243))

(declare-fun m!1906245 () Bool)

(assert (=> b!1600984 m!1906245))

(declare-fun m!1906247 () Bool)

(assert (=> b!1600984 m!1906247))

(declare-fun m!1906249 () Bool)

(assert (=> b!1600984 m!1906249))

(declare-fun m!1906251 () Bool)

(assert (=> b!1600984 m!1906251))

(declare-fun m!1906253 () Bool)

(assert (=> b!1600984 m!1906253))

(declare-fun m!1906255 () Bool)

(assert (=> b!1600984 m!1906255))

(declare-fun m!1906257 () Bool)

(assert (=> b!1600984 m!1906257))

(declare-fun m!1906259 () Bool)

(assert (=> b!1600984 m!1906259))

(assert (=> b!1600984 m!1906247))

(declare-fun m!1906261 () Bool)

(assert (=> b!1600984 m!1906261))

(declare-fun m!1906263 () Bool)

(assert (=> b!1600984 m!1906263))

(declare-fun m!1906265 () Bool)

(assert (=> b!1600978 m!1906265))

(declare-fun m!1906267 () Bool)

(assert (=> b!1601000 m!1906267))

(check-sat (not b!1600993) (not b!1600985) (not b!1600997) (not b_next!43847) b_and!112891 (not b!1600977) (not b!1600996) (not b!1600995) (not b!1600982) b_and!112885 (not b!1600986) (not b!1601000) b_and!112887 (not b_next!43853) b_and!112889 (not b!1600990) (not b!1600984) (not b!1600987) (not b!1600976) (not b!1600999) (not b!1600991) (not b!1600983) (not b!1600988) (not b!1600978) (not b_next!43851) (not b_next!43849) (not b!1600981) (not b!1600989) (not b!1600980) (not b!1600979))
(check-sat b_and!112885 (not b_next!43847) b_and!112891 b_and!112887 (not b_next!43853) b_and!112889 (not b_next!43851) (not b_next!43849))
(get-model)

(declare-fun d!479415 () Bool)

(declare-fun res!713976 () Bool)

(declare-fun e!1027495 () Bool)

(assert (=> d!479415 (=> res!713976 e!1027495)))

(assert (=> d!479415 (= res!713976 (or (not ((_ is Cons!17526) tokens!457)) (not ((_ is Cons!17526) (t!146301 tokens!457)))))))

(assert (=> d!479415 (= (tokensListTwoByTwoPredicateSeparableList!407 thiss!17113 tokens!457 rules!1846) e!1027495)))

(declare-fun b!1601009 () Bool)

(declare-fun e!1027496 () Bool)

(assert (=> b!1601009 (= e!1027495 e!1027496)))

(declare-fun res!713977 () Bool)

(assert (=> b!1601009 (=> (not res!713977) (not e!1027496))))

(assert (=> b!1601009 (= res!713977 (separableTokensPredicate!656 thiss!17113 (h!22927 tokens!457) (h!22927 (t!146301 tokens!457)) rules!1846))))

(declare-fun lt!568554 () Unit!27905)

(declare-fun Unit!27912 () Unit!27905)

(assert (=> b!1601009 (= lt!568554 Unit!27912)))

(assert (=> b!1601009 (> (size!14106 (charsOf!1734 (h!22927 (t!146301 tokens!457)))) 0)))

(declare-fun lt!568549 () Unit!27905)

(declare-fun Unit!27913 () Unit!27905)

(assert (=> b!1601009 (= lt!568549 Unit!27913)))

(assert (=> b!1601009 (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 (t!146301 tokens!457)))))

(declare-fun lt!568550 () Unit!27905)

(declare-fun Unit!27914 () Unit!27905)

(assert (=> b!1601009 (= lt!568550 Unit!27914)))

(assert (=> b!1601009 (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 tokens!457))))

(declare-fun lt!568552 () Unit!27905)

(declare-fun lt!568551 () Unit!27905)

(assert (=> b!1601009 (= lt!568552 lt!568551)))

(assert (=> b!1601009 (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 (t!146301 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!537 (LexerInterface!2714 List!17595 List!17596 Token!5736) Unit!27905)

(assert (=> b!1601009 (= lt!568551 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!537 thiss!17113 rules!1846 tokens!457 (h!22927 (t!146301 tokens!457))))))

(declare-fun lt!568553 () Unit!27905)

(declare-fun lt!568555 () Unit!27905)

(assert (=> b!1601009 (= lt!568553 lt!568555)))

(assert (=> b!1601009 (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 tokens!457))))

(assert (=> b!1601009 (= lt!568555 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!537 thiss!17113 rules!1846 tokens!457 (h!22927 tokens!457)))))

(declare-fun b!1601010 () Bool)

(assert (=> b!1601010 (= e!1027496 (tokensListTwoByTwoPredicateSeparableList!407 thiss!17113 (Cons!17526 (h!22927 (t!146301 tokens!457)) (t!146301 (t!146301 tokens!457))) rules!1846))))

(assert (= (and d!479415 (not res!713976)) b!1601009))

(assert (= (and b!1601009 res!713977) b!1601010))

(declare-fun m!1906269 () Bool)

(assert (=> b!1601009 m!1906269))

(assert (=> b!1601009 m!1906189))

(declare-fun m!1906271 () Bool)

(assert (=> b!1601009 m!1906271))

(declare-fun m!1906273 () Bool)

(assert (=> b!1601009 m!1906273))

(assert (=> b!1601009 m!1906209))

(declare-fun m!1906275 () Bool)

(assert (=> b!1601009 m!1906275))

(assert (=> b!1601009 m!1906209))

(assert (=> b!1601009 m!1906221))

(declare-fun m!1906277 () Bool)

(assert (=> b!1601010 m!1906277))

(assert (=> b!1601000 d!479415))

(declare-fun b!1601021 () Bool)

(declare-fun e!1027503 () Bool)

(declare-fun inv!17 (TokenValue!3175) Bool)

(assert (=> b!1601021 (= e!1027503 (inv!17 (value!97595 (h!22927 tokens!457))))))

(declare-fun b!1601022 () Bool)

(declare-fun e!1027504 () Bool)

(declare-fun inv!15 (TokenValue!3175) Bool)

(assert (=> b!1601022 (= e!1027504 (inv!15 (value!97595 (h!22927 tokens!457))))))

(declare-fun d!479417 () Bool)

(declare-fun c!260299 () Bool)

(assert (=> d!479417 (= c!260299 ((_ is IntegerValue!9525) (value!97595 (h!22927 tokens!457))))))

(declare-fun e!1027505 () Bool)

(assert (=> d!479417 (= (inv!21 (value!97595 (h!22927 tokens!457))) e!1027505)))

(declare-fun b!1601023 () Bool)

(declare-fun res!713980 () Bool)

(assert (=> b!1601023 (=> res!713980 e!1027504)))

(assert (=> b!1601023 (= res!713980 (not ((_ is IntegerValue!9527) (value!97595 (h!22927 tokens!457)))))))

(assert (=> b!1601023 (= e!1027503 e!1027504)))

(declare-fun b!1601024 () Bool)

(declare-fun inv!16 (TokenValue!3175) Bool)

(assert (=> b!1601024 (= e!1027505 (inv!16 (value!97595 (h!22927 tokens!457))))))

(declare-fun b!1601025 () Bool)

(assert (=> b!1601025 (= e!1027505 e!1027503)))

(declare-fun c!260298 () Bool)

(assert (=> b!1601025 (= c!260298 ((_ is IntegerValue!9526) (value!97595 (h!22927 tokens!457))))))

(assert (= (and d!479417 c!260299) b!1601024))

(assert (= (and d!479417 (not c!260299)) b!1601025))

(assert (= (and b!1601025 c!260298) b!1601021))

(assert (= (and b!1601025 (not c!260298)) b!1601023))

(assert (= (and b!1601023 (not res!713980)) b!1601022))

(declare-fun m!1906279 () Bool)

(assert (=> b!1601021 m!1906279))

(declare-fun m!1906281 () Bool)

(assert (=> b!1601022 m!1906281))

(declare-fun m!1906283 () Bool)

(assert (=> b!1601024 m!1906283))

(assert (=> b!1600989 d!479417))

(declare-fun d!479419 () Bool)

(assert (=> d!479419 (= (inv!22937 (tag!3359 (h!22926 rules!1846))) (= (mod (str.len (value!97594 (tag!3359 (h!22926 rules!1846)))) 2) 0))))

(assert (=> b!1600990 d!479419))

(declare-fun d!479421 () Bool)

(declare-fun res!713983 () Bool)

(declare-fun e!1027508 () Bool)

(assert (=> d!479421 (=> (not res!713983) (not e!1027508))))

(declare-fun semiInverseModEq!1172 (Int Int) Bool)

(assert (=> d!479421 (= res!713983 (semiInverseModEq!1172 (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toValue!4504 (transformation!3085 (h!22926 rules!1846)))))))

(assert (=> d!479421 (= (inv!22941 (transformation!3085 (h!22926 rules!1846))) e!1027508)))

(declare-fun b!1601028 () Bool)

(declare-fun equivClasses!1113 (Int Int) Bool)

(assert (=> b!1601028 (= e!1027508 (equivClasses!1113 (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toValue!4504 (transformation!3085 (h!22926 rules!1846)))))))

(assert (= (and d!479421 res!713983) b!1601028))

(declare-fun m!1906285 () Bool)

(assert (=> d!479421 m!1906285))

(declare-fun m!1906287 () Bool)

(assert (=> b!1601028 m!1906287))

(assert (=> b!1600990 d!479421))

(declare-fun d!479423 () Bool)

(assert (=> d!479423 (= (head!3265 (originalCharacters!3899 (h!22927 (t!146301 tokens!457)))) (h!22925 (originalCharacters!3899 (h!22927 (t!146301 tokens!457)))))))

(assert (=> b!1600979 d!479423))

(declare-fun b!1601099 () Bool)

(declare-fun e!1027558 () Bool)

(assert (=> b!1601099 (= e!1027558 true)))

(declare-fun b!1601098 () Bool)

(declare-fun e!1027557 () Bool)

(assert (=> b!1601098 (= e!1027557 e!1027558)))

(declare-fun b!1601097 () Bool)

(declare-fun e!1027556 () Bool)

(assert (=> b!1601097 (= e!1027556 e!1027557)))

(declare-fun d!479425 () Bool)

(assert (=> d!479425 e!1027556))

(assert (= b!1601098 b!1601099))

(assert (= b!1601097 b!1601098))

(assert (= (and d!479425 ((_ is Cons!17525) rules!1846)) b!1601097))

(declare-fun order!10395 () Int)

(declare-fun order!10397 () Int)

(declare-fun lambda!66854 () Int)

(declare-fun dynLambda!7820 (Int Int) Int)

(declare-fun dynLambda!7821 (Int Int) Int)

(assert (=> b!1601099 (< (dynLambda!7820 order!10395 (toValue!4504 (transformation!3085 (h!22926 rules!1846)))) (dynLambda!7821 order!10397 lambda!66854))))

(declare-fun order!10399 () Int)

(declare-fun dynLambda!7822 (Int Int) Int)

(assert (=> b!1601099 (< (dynLambda!7822 order!10399 (toChars!4363 (transformation!3085 (h!22926 rules!1846)))) (dynLambda!7821 order!10397 lambda!66854))))

(assert (=> d!479425 true))

(declare-fun lt!568640 () Bool)

(declare-fun forall!4032 (List!17596 Int) Bool)

(assert (=> d!479425 (= lt!568640 (forall!4032 tokens!457 lambda!66854))))

(declare-fun e!1027549 () Bool)

(assert (=> d!479425 (= lt!568640 e!1027549)))

(declare-fun res!714011 () Bool)

(assert (=> d!479425 (=> res!714011 e!1027549)))

(assert (=> d!479425 (= res!714011 (not ((_ is Cons!17526) tokens!457)))))

(assert (=> d!479425 (not (isEmpty!10558 rules!1846))))

(assert (=> d!479425 (= (rulesProduceEachTokenIndividuallyList!916 thiss!17113 rules!1846 tokens!457) lt!568640)))

(declare-fun b!1601087 () Bool)

(declare-fun e!1027548 () Bool)

(assert (=> b!1601087 (= e!1027549 e!1027548)))

(declare-fun res!714012 () Bool)

(assert (=> b!1601087 (=> (not res!714012) (not e!1027548))))

(assert (=> b!1601087 (= res!714012 (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 tokens!457)))))

(declare-fun b!1601088 () Bool)

(assert (=> b!1601088 (= e!1027548 (rulesProduceEachTokenIndividuallyList!916 thiss!17113 rules!1846 (t!146301 tokens!457)))))

(assert (= (and d!479425 (not res!714011)) b!1601087))

(assert (= (and b!1601087 res!714012) b!1601088))

(declare-fun m!1906395 () Bool)

(assert (=> d!479425 m!1906395))

(assert (=> d!479425 m!1906161))

(assert (=> b!1601087 m!1906221))

(declare-fun m!1906397 () Bool)

(assert (=> b!1601088 m!1906397))

(assert (=> b!1600980 d!479425))

(declare-fun d!479449 () Bool)

(assert (=> d!479449 (= (head!3265 lt!568513) (h!22925 lt!568513))))

(assert (=> b!1600991 d!479449))

(declare-fun d!479451 () Bool)

(declare-fun c!260311 () Bool)

(declare-fun isEmpty!10565 (List!17594) Bool)

(assert (=> d!479451 (= c!260311 (isEmpty!10565 (++!4593 lt!568523 lt!568519)))))

(declare-fun e!1027561 () Bool)

(assert (=> d!479451 (= (prefixMatch!348 lt!568524 (++!4593 lt!568523 lt!568519)) e!1027561)))

(declare-fun b!1601106 () Bool)

(declare-fun lostCause!410 (Regex!4413) Bool)

(assert (=> b!1601106 (= e!1027561 (not (lostCause!410 lt!568524)))))

(declare-fun b!1601107 () Bool)

(declare-fun derivativeStep!1054 (Regex!4413 C!9000) Regex!4413)

(declare-fun tail!2303 (List!17594) List!17594)

(assert (=> b!1601107 (= e!1027561 (prefixMatch!348 (derivativeStep!1054 lt!568524 (head!3265 (++!4593 lt!568523 lt!568519))) (tail!2303 (++!4593 lt!568523 lt!568519))))))

(assert (= (and d!479451 c!260311) b!1601106))

(assert (= (and d!479451 (not c!260311)) b!1601107))

(assert (=> d!479451 m!1906225))

(declare-fun m!1906399 () Bool)

(assert (=> d!479451 m!1906399))

(declare-fun m!1906401 () Bool)

(assert (=> b!1601106 m!1906401))

(assert (=> b!1601107 m!1906225))

(declare-fun m!1906403 () Bool)

(assert (=> b!1601107 m!1906403))

(assert (=> b!1601107 m!1906403))

(declare-fun m!1906405 () Bool)

(assert (=> b!1601107 m!1906405))

(assert (=> b!1601107 m!1906225))

(declare-fun m!1906407 () Bool)

(assert (=> b!1601107 m!1906407))

(assert (=> b!1601107 m!1906405))

(assert (=> b!1601107 m!1906407))

(declare-fun m!1906409 () Bool)

(assert (=> b!1601107 m!1906409))

(assert (=> b!1600981 d!479451))

(declare-fun b!1601118 () Bool)

(declare-fun res!714018 () Bool)

(declare-fun e!1027566 () Bool)

(assert (=> b!1601118 (=> (not res!714018) (not e!1027566))))

(declare-fun lt!568643 () List!17594)

(declare-fun size!14110 (List!17594) Int)

(assert (=> b!1601118 (= res!714018 (= (size!14110 lt!568643) (+ (size!14110 lt!568523) (size!14110 lt!568519))))))

(declare-fun b!1601119 () Bool)

(assert (=> b!1601119 (= e!1027566 (or (not (= lt!568519 Nil!17524)) (= lt!568643 lt!568523)))))

(declare-fun b!1601117 () Bool)

(declare-fun e!1027567 () List!17594)

(assert (=> b!1601117 (= e!1027567 (Cons!17524 (h!22925 lt!568523) (++!4593 (t!146299 lt!568523) lt!568519)))))

(declare-fun b!1601116 () Bool)

(assert (=> b!1601116 (= e!1027567 lt!568519)))

(declare-fun d!479453 () Bool)

(assert (=> d!479453 e!1027566))

(declare-fun res!714017 () Bool)

(assert (=> d!479453 (=> (not res!714017) (not e!1027566))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2429 (List!17594) (InoxSet C!9000))

(assert (=> d!479453 (= res!714017 (= (content!2429 lt!568643) ((_ map or) (content!2429 lt!568523) (content!2429 lt!568519))))))

(assert (=> d!479453 (= lt!568643 e!1027567)))

(declare-fun c!260314 () Bool)

(assert (=> d!479453 (= c!260314 ((_ is Nil!17524) lt!568523))))

(assert (=> d!479453 (= (++!4593 lt!568523 lt!568519) lt!568643)))

(assert (= (and d!479453 c!260314) b!1601116))

(assert (= (and d!479453 (not c!260314)) b!1601117))

(assert (= (and d!479453 res!714017) b!1601118))

(assert (= (and b!1601118 res!714018) b!1601119))

(declare-fun m!1906411 () Bool)

(assert (=> b!1601118 m!1906411))

(declare-fun m!1906413 () Bool)

(assert (=> b!1601118 m!1906413))

(declare-fun m!1906415 () Bool)

(assert (=> b!1601118 m!1906415))

(declare-fun m!1906417 () Bool)

(assert (=> b!1601117 m!1906417))

(declare-fun m!1906419 () Bool)

(assert (=> d!479453 m!1906419))

(declare-fun m!1906421 () Bool)

(assert (=> d!479453 m!1906421))

(declare-fun m!1906423 () Bool)

(assert (=> d!479453 m!1906423))

(assert (=> b!1600981 d!479453))

(declare-fun d!479455 () Bool)

(declare-fun list!6827 (Conc!5818) List!17594)

(assert (=> d!479455 (= (list!6823 lt!568532) (list!6827 (c!260291 lt!568532)))))

(declare-fun bs!392824 () Bool)

(assert (= bs!392824 d!479455))

(declare-fun m!1906425 () Bool)

(assert (=> bs!392824 m!1906425))

(assert (=> b!1600981 d!479455))

(declare-fun d!479457 () Bool)

(declare-fun e!1027583 () Bool)

(assert (=> d!479457 e!1027583))

(declare-fun res!714047 () Bool)

(assert (=> d!479457 (=> res!714047 e!1027583)))

(declare-fun lt!568659 () Option!3170)

(declare-fun isEmpty!10566 (Option!3170) Bool)

(assert (=> d!479457 (= res!714047 (isEmpty!10566 lt!568659))))

(declare-fun e!1027585 () Option!3170)

(assert (=> d!479457 (= lt!568659 e!1027585)))

(declare-fun c!260320 () Bool)

(assert (=> d!479457 (= c!260320 (and ((_ is Cons!17525) rules!1846) ((_ is Nil!17525) (t!146300 rules!1846))))))

(declare-fun lt!568661 () Unit!27905)

(declare-fun lt!568658 () Unit!27905)

(assert (=> d!479457 (= lt!568661 lt!568658)))

(assert (=> d!479457 (isPrefix!1345 lt!568515 lt!568515)))

(declare-fun lemmaIsPrefixRefl!932 (List!17594 List!17594) Unit!27905)

(assert (=> d!479457 (= lt!568658 (lemmaIsPrefixRefl!932 lt!568515 lt!568515))))

(declare-fun rulesValidInductive!934 (LexerInterface!2714 List!17595) Bool)

(assert (=> d!479457 (rulesValidInductive!934 thiss!17113 rules!1846)))

(assert (=> d!479457 (= (maxPrefix!1278 thiss!17113 rules!1846 lt!568515) lt!568659)))

(declare-fun b!1601153 () Bool)

(declare-fun lt!568657 () Option!3170)

(declare-fun lt!568660 () Option!3170)

(assert (=> b!1601153 (= e!1027585 (ite (and ((_ is None!3169) lt!568657) ((_ is None!3169) lt!568660)) None!3169 (ite ((_ is None!3169) lt!568660) lt!568657 (ite ((_ is None!3169) lt!568657) lt!568660 (ite (>= (size!14105 (_1!9909 (v!24100 lt!568657))) (size!14105 (_1!9909 (v!24100 lt!568660)))) lt!568657 lt!568660)))))))

(declare-fun call!103957 () Option!3170)

(assert (=> b!1601153 (= lt!568657 call!103957)))

(assert (=> b!1601153 (= lt!568660 (maxPrefix!1278 thiss!17113 (t!146300 rules!1846) lt!568515))))

(declare-fun b!1601154 () Bool)

(declare-fun res!714048 () Bool)

(declare-fun e!1027584 () Bool)

(assert (=> b!1601154 (=> (not res!714048) (not e!1027584))))

(declare-fun get!5021 (Option!3170) tuple2!17014)

(assert (=> b!1601154 (= res!714048 (= (++!4593 (list!6823 (charsOf!1734 (_1!9909 (get!5021 lt!568659)))) (_2!9909 (get!5021 lt!568659))) lt!568515))))

(declare-fun b!1601155 () Bool)

(declare-fun res!714046 () Bool)

(assert (=> b!1601155 (=> (not res!714046) (not e!1027584))))

(assert (=> b!1601155 (= res!714046 (< (size!14110 (_2!9909 (get!5021 lt!568659))) (size!14110 lt!568515)))))

(declare-fun bm!103952 () Bool)

(declare-fun maxPrefixOneRule!747 (LexerInterface!2714 Rule!5970 List!17594) Option!3170)

(assert (=> bm!103952 (= call!103957 (maxPrefixOneRule!747 thiss!17113 (h!22926 rules!1846) lt!568515))))

(declare-fun b!1601156 () Bool)

(declare-fun res!714042 () Bool)

(assert (=> b!1601156 (=> (not res!714042) (not e!1027584))))

(declare-fun apply!4354 (TokenValueInjection!6010 BalanceConc!11580) TokenValue!3175)

(assert (=> b!1601156 (= res!714042 (= (value!97595 (_1!9909 (get!5021 lt!568659))) (apply!4354 (transformation!3085 (rule!4899 (_1!9909 (get!5021 lt!568659)))) (seqFromList!1919 (originalCharacters!3899 (_1!9909 (get!5021 lt!568659)))))))))

(declare-fun b!1601157 () Bool)

(assert (=> b!1601157 (= e!1027583 e!1027584)))

(declare-fun res!714044 () Bool)

(assert (=> b!1601157 (=> (not res!714044) (not e!1027584))))

(assert (=> b!1601157 (= res!714044 (isDefined!2541 lt!568659))))

(declare-fun b!1601158 () Bool)

(declare-fun res!714045 () Bool)

(assert (=> b!1601158 (=> (not res!714045) (not e!1027584))))

(declare-fun matchR!1932 (Regex!4413 List!17594) Bool)

(assert (=> b!1601158 (= res!714045 (matchR!1932 (regex!3085 (rule!4899 (_1!9909 (get!5021 lt!568659)))) (list!6823 (charsOf!1734 (_1!9909 (get!5021 lt!568659))))))))

(declare-fun b!1601159 () Bool)

(declare-fun contains!3072 (List!17595 Rule!5970) Bool)

(assert (=> b!1601159 (= e!1027584 (contains!3072 rules!1846 (rule!4899 (_1!9909 (get!5021 lt!568659)))))))

(declare-fun b!1601160 () Bool)

(assert (=> b!1601160 (= e!1027585 call!103957)))

(declare-fun b!1601161 () Bool)

(declare-fun res!714043 () Bool)

(assert (=> b!1601161 (=> (not res!714043) (not e!1027584))))

(assert (=> b!1601161 (= res!714043 (= (list!6823 (charsOf!1734 (_1!9909 (get!5021 lt!568659)))) (originalCharacters!3899 (_1!9909 (get!5021 lt!568659)))))))

(assert (= (and d!479457 c!260320) b!1601160))

(assert (= (and d!479457 (not c!260320)) b!1601153))

(assert (= (or b!1601160 b!1601153) bm!103952))

(assert (= (and d!479457 (not res!714047)) b!1601157))

(assert (= (and b!1601157 res!714044) b!1601161))

(assert (= (and b!1601161 res!714043) b!1601155))

(assert (= (and b!1601155 res!714046) b!1601154))

(assert (= (and b!1601154 res!714048) b!1601156))

(assert (= (and b!1601156 res!714042) b!1601158))

(assert (= (and b!1601158 res!714045) b!1601159))

(declare-fun m!1906447 () Bool)

(assert (=> b!1601156 m!1906447))

(declare-fun m!1906449 () Bool)

(assert (=> b!1601156 m!1906449))

(assert (=> b!1601156 m!1906449))

(declare-fun m!1906451 () Bool)

(assert (=> b!1601156 m!1906451))

(assert (=> b!1601159 m!1906447))

(declare-fun m!1906453 () Bool)

(assert (=> b!1601159 m!1906453))

(assert (=> b!1601154 m!1906447))

(declare-fun m!1906455 () Bool)

(assert (=> b!1601154 m!1906455))

(assert (=> b!1601154 m!1906455))

(declare-fun m!1906457 () Bool)

(assert (=> b!1601154 m!1906457))

(assert (=> b!1601154 m!1906457))

(declare-fun m!1906459 () Bool)

(assert (=> b!1601154 m!1906459))

(assert (=> b!1601155 m!1906447))

(declare-fun m!1906461 () Bool)

(assert (=> b!1601155 m!1906461))

(declare-fun m!1906463 () Bool)

(assert (=> b!1601155 m!1906463))

(assert (=> b!1601161 m!1906447))

(assert (=> b!1601161 m!1906455))

(assert (=> b!1601161 m!1906455))

(assert (=> b!1601161 m!1906457))

(declare-fun m!1906465 () Bool)

(assert (=> b!1601153 m!1906465))

(declare-fun m!1906467 () Bool)

(assert (=> b!1601157 m!1906467))

(assert (=> b!1601158 m!1906447))

(assert (=> b!1601158 m!1906455))

(assert (=> b!1601158 m!1906455))

(assert (=> b!1601158 m!1906457))

(assert (=> b!1601158 m!1906457))

(declare-fun m!1906469 () Bool)

(assert (=> b!1601158 m!1906469))

(declare-fun m!1906471 () Bool)

(assert (=> bm!103952 m!1906471))

(declare-fun m!1906473 () Bool)

(assert (=> d!479457 m!1906473))

(declare-fun m!1906475 () Bool)

(assert (=> d!479457 m!1906475))

(declare-fun m!1906477 () Bool)

(assert (=> d!479457 m!1906477))

(declare-fun m!1906479 () Bool)

(assert (=> d!479457 m!1906479))

(assert (=> b!1600982 d!479457))

(declare-fun d!479463 () Bool)

(declare-fun lt!568664 () BalanceConc!11580)

(assert (=> d!479463 (= (list!6823 lt!568664) (printList!829 thiss!17113 (list!6824 lt!568517)))))

(assert (=> d!479463 (= lt!568664 (printTailRec!767 thiss!17113 lt!568517 0 (BalanceConc!11581 Empty!5818)))))

(assert (=> d!479463 (= (print!1245 thiss!17113 lt!568517) lt!568664)))

(declare-fun bs!392826 () Bool)

(assert (= bs!392826 d!479463))

(declare-fun m!1906481 () Bool)

(assert (=> bs!392826 m!1906481))

(declare-fun m!1906483 () Bool)

(assert (=> bs!392826 m!1906483))

(assert (=> bs!392826 m!1906483))

(declare-fun m!1906485 () Bool)

(assert (=> bs!392826 m!1906485))

(assert (=> bs!392826 m!1906199))

(assert (=> b!1600982 d!479463))

(declare-fun d!479465 () Bool)

(declare-fun lt!568690 () BalanceConc!11580)

(declare-fun printListTailRec!327 (LexerInterface!2714 List!17596 List!17594) List!17594)

(declare-fun dropList!551 (BalanceConc!11582 Int) List!17596)

(assert (=> d!479465 (= (list!6823 lt!568690) (printListTailRec!327 thiss!17113 (dropList!551 lt!568517 0) (list!6823 (BalanceConc!11581 Empty!5818))))))

(declare-fun e!1027596 () BalanceConc!11580)

(assert (=> d!479465 (= lt!568690 e!1027596)))

(declare-fun c!260324 () Bool)

(declare-fun size!14111 (BalanceConc!11582) Int)

(assert (=> d!479465 (= c!260324 (>= 0 (size!14111 lt!568517)))))

(declare-fun e!1027595 () Bool)

(assert (=> d!479465 e!1027595))

(declare-fun res!714058 () Bool)

(assert (=> d!479465 (=> (not res!714058) (not e!1027595))))

(assert (=> d!479465 (= res!714058 (>= 0 0))))

(assert (=> d!479465 (= (printTailRec!767 thiss!17113 lt!568517 0 (BalanceConc!11581 Empty!5818)) lt!568690)))

(declare-fun b!1601175 () Bool)

(assert (=> b!1601175 (= e!1027595 (<= 0 (size!14111 lt!568517)))))

(declare-fun b!1601176 () Bool)

(assert (=> b!1601176 (= e!1027596 (BalanceConc!11581 Empty!5818))))

(declare-fun b!1601177 () Bool)

(declare-fun apply!4355 (BalanceConc!11582 Int) Token!5736)

(assert (=> b!1601177 (= e!1027596 (printTailRec!767 thiss!17113 lt!568517 (+ 0 1) (++!4594 (BalanceConc!11581 Empty!5818) (charsOf!1734 (apply!4355 lt!568517 0)))))))

(declare-fun lt!568689 () List!17596)

(assert (=> b!1601177 (= lt!568689 (list!6824 lt!568517))))

(declare-fun lt!568685 () Unit!27905)

(declare-fun lemmaDropApply!534 (List!17596 Int) Unit!27905)

(assert (=> b!1601177 (= lt!568685 (lemmaDropApply!534 lt!568689 0))))

(declare-fun head!3267 (List!17596) Token!5736)

(declare-fun drop!840 (List!17596 Int) List!17596)

(declare-fun apply!4356 (List!17596 Int) Token!5736)

(assert (=> b!1601177 (= (head!3267 (drop!840 lt!568689 0)) (apply!4356 lt!568689 0))))

(declare-fun lt!568686 () Unit!27905)

(assert (=> b!1601177 (= lt!568686 lt!568685)))

(declare-fun lt!568687 () List!17596)

(assert (=> b!1601177 (= lt!568687 (list!6824 lt!568517))))

(declare-fun lt!568691 () Unit!27905)

(declare-fun lemmaDropTail!514 (List!17596 Int) Unit!27905)

(assert (=> b!1601177 (= lt!568691 (lemmaDropTail!514 lt!568687 0))))

(declare-fun tail!2304 (List!17596) List!17596)

(assert (=> b!1601177 (= (tail!2304 (drop!840 lt!568687 0)) (drop!840 lt!568687 (+ 0 1)))))

(declare-fun lt!568688 () Unit!27905)

(assert (=> b!1601177 (= lt!568688 lt!568691)))

(assert (= (and d!479465 res!714058) b!1601175))

(assert (= (and d!479465 c!260324) b!1601176))

(assert (= (and d!479465 (not c!260324)) b!1601177))

(declare-fun m!1906517 () Bool)

(assert (=> d!479465 m!1906517))

(declare-fun m!1906519 () Bool)

(assert (=> d!479465 m!1906519))

(declare-fun m!1906521 () Bool)

(assert (=> d!479465 m!1906521))

(declare-fun m!1906523 () Bool)

(assert (=> d!479465 m!1906523))

(assert (=> d!479465 m!1906517))

(assert (=> d!479465 m!1906519))

(declare-fun m!1906525 () Bool)

(assert (=> d!479465 m!1906525))

(assert (=> b!1601175 m!1906523))

(declare-fun m!1906527 () Bool)

(assert (=> b!1601177 m!1906527))

(declare-fun m!1906529 () Bool)

(assert (=> b!1601177 m!1906529))

(declare-fun m!1906531 () Bool)

(assert (=> b!1601177 m!1906531))

(declare-fun m!1906533 () Bool)

(assert (=> b!1601177 m!1906533))

(declare-fun m!1906535 () Bool)

(assert (=> b!1601177 m!1906535))

(declare-fun m!1906537 () Bool)

(assert (=> b!1601177 m!1906537))

(declare-fun m!1906539 () Bool)

(assert (=> b!1601177 m!1906539))

(declare-fun m!1906541 () Bool)

(assert (=> b!1601177 m!1906541))

(declare-fun m!1906543 () Bool)

(assert (=> b!1601177 m!1906543))

(assert (=> b!1601177 m!1906531))

(declare-fun m!1906545 () Bool)

(assert (=> b!1601177 m!1906545))

(assert (=> b!1601177 m!1906537))

(assert (=> b!1601177 m!1906483))

(assert (=> b!1601177 m!1906539))

(declare-fun m!1906547 () Bool)

(assert (=> b!1601177 m!1906547))

(assert (=> b!1601177 m!1906529))

(declare-fun m!1906549 () Bool)

(assert (=> b!1601177 m!1906549))

(assert (=> b!1601177 m!1906545))

(assert (=> b!1600982 d!479465))

(declare-fun d!479479 () Bool)

(assert (=> d!479479 (= (list!6823 lt!568511) (list!6827 (c!260291 lt!568511)))))

(declare-fun bs!392832 () Bool)

(assert (= bs!392832 d!479479))

(declare-fun m!1906551 () Bool)

(assert (=> bs!392832 m!1906551))

(assert (=> b!1600982 d!479479))

(declare-fun d!479481 () Bool)

(declare-fun c!260327 () Bool)

(assert (=> d!479481 (= c!260327 ((_ is Cons!17526) (Cons!17526 (h!22927 tokens!457) Nil!17526)))))

(declare-fun e!1027603 () List!17594)

(assert (=> d!479481 (= (printList!829 thiss!17113 (Cons!17526 (h!22927 tokens!457) Nil!17526)) e!1027603)))

(declare-fun b!1601189 () Bool)

(assert (=> b!1601189 (= e!1027603 (++!4593 (list!6823 (charsOf!1734 (h!22927 (Cons!17526 (h!22927 tokens!457) Nil!17526)))) (printList!829 thiss!17113 (t!146301 (Cons!17526 (h!22927 tokens!457) Nil!17526)))))))

(declare-fun b!1601190 () Bool)

(assert (=> b!1601190 (= e!1027603 Nil!17524)))

(assert (= (and d!479481 c!260327) b!1601189))

(assert (= (and d!479481 (not c!260327)) b!1601190))

(declare-fun m!1906565 () Bool)

(assert (=> b!1601189 m!1906565))

(assert (=> b!1601189 m!1906565))

(declare-fun m!1906567 () Bool)

(assert (=> b!1601189 m!1906567))

(declare-fun m!1906569 () Bool)

(assert (=> b!1601189 m!1906569))

(assert (=> b!1601189 m!1906567))

(assert (=> b!1601189 m!1906569))

(declare-fun m!1906571 () Bool)

(assert (=> b!1601189 m!1906571))

(assert (=> b!1600982 d!479481))

(declare-fun d!479487 () Bool)

(declare-fun e!1027609 () Bool)

(assert (=> d!479487 e!1027609))

(declare-fun res!714066 () Bool)

(assert (=> d!479487 (=> (not res!714066) (not e!1027609))))

(declare-fun lt!568694 () BalanceConc!11582)

(assert (=> d!479487 (= res!714066 (= (list!6824 lt!568694) (Cons!17526 (h!22927 tokens!457) Nil!17526)))))

(declare-fun singleton!613 (Token!5736) BalanceConc!11582)

(assert (=> d!479487 (= lt!568694 (singleton!613 (h!22927 tokens!457)))))

(assert (=> d!479487 (= (singletonSeq!1448 (h!22927 tokens!457)) lt!568694)))

(declare-fun b!1601196 () Bool)

(declare-fun isBalanced!1733 (Conc!5819) Bool)

(assert (=> b!1601196 (= e!1027609 (isBalanced!1733 (c!260293 lt!568694)))))

(assert (= (and d!479487 res!714066) b!1601196))

(declare-fun m!1906577 () Bool)

(assert (=> d!479487 m!1906577))

(declare-fun m!1906579 () Bool)

(assert (=> d!479487 m!1906579))

(declare-fun m!1906581 () Bool)

(assert (=> b!1601196 m!1906581))

(assert (=> b!1600982 d!479487))

(declare-fun d!479491 () Bool)

(declare-fun e!1027612 () Bool)

(assert (=> d!479491 e!1027612))

(declare-fun res!714069 () Bool)

(assert (=> d!479491 (=> (not res!714069) (not e!1027612))))

(declare-fun prepend!585 (Conc!5819 Token!5736) Conc!5819)

(assert (=> d!479491 (= res!714069 (isBalanced!1733 (prepend!585 (c!260293 (seqFromList!1920 (t!146301 (t!146301 tokens!457)))) (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!568697 () BalanceConc!11582)

(assert (=> d!479491 (= lt!568697 (BalanceConc!11583 (prepend!585 (c!260293 (seqFromList!1920 (t!146301 (t!146301 tokens!457)))) (h!22927 (t!146301 tokens!457)))))))

(assert (=> d!479491 (= (prepend!583 (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (h!22927 (t!146301 tokens!457))) lt!568697)))

(declare-fun b!1601199 () Bool)

(assert (=> b!1601199 (= e!1027612 (= (list!6824 lt!568697) (Cons!17526 (h!22927 (t!146301 tokens!457)) (list!6824 (seqFromList!1920 (t!146301 (t!146301 tokens!457)))))))))

(assert (= (and d!479491 res!714069) b!1601199))

(declare-fun m!1906583 () Bool)

(assert (=> d!479491 m!1906583))

(assert (=> d!479491 m!1906583))

(declare-fun m!1906585 () Bool)

(assert (=> d!479491 m!1906585))

(declare-fun m!1906587 () Bool)

(assert (=> b!1601199 m!1906587))

(assert (=> b!1601199 m!1906167))

(declare-fun m!1906589 () Bool)

(assert (=> b!1601199 m!1906589))

(assert (=> b!1600993 d!479491))

(declare-fun d!479493 () Bool)

(declare-fun list!6828 (Conc!5819) List!17596)

(assert (=> d!479493 (= (list!6824 (prepend!583 (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (h!22927 (t!146301 tokens!457)))) (list!6828 (c!260293 (prepend!583 (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (h!22927 (t!146301 tokens!457))))))))

(declare-fun bs!392833 () Bool)

(assert (= bs!392833 d!479493))

(declare-fun m!1906591 () Bool)

(assert (=> bs!392833 m!1906591))

(assert (=> b!1600993 d!479493))

(declare-fun d!479495 () Bool)

(declare-fun fromListB!838 (List!17596) BalanceConc!11582)

(assert (=> d!479495 (= (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (fromListB!838 (t!146301 (t!146301 tokens!457))))))

(declare-fun bs!392834 () Bool)

(assert (= bs!392834 d!479495))

(declare-fun m!1906593 () Bool)

(assert (=> bs!392834 m!1906593))

(assert (=> b!1600993 d!479495))

(declare-fun d!479497 () Bool)

(assert (=> d!479497 (= (list!6824 (_1!9908 lt!568510)) (list!6824 (prepend!583 (seqFromList!1920 (t!146301 (t!146301 tokens!457))) (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!568700 () Unit!27905)

(declare-fun choose!9622 (Token!5736 List!17596 BalanceConc!11582) Unit!27905)

(assert (=> d!479497 (= lt!568700 (choose!9622 (h!22927 (t!146301 tokens!457)) (t!146301 (t!146301 tokens!457)) (_1!9908 lt!568510)))))

(declare-fun $colon$colon!297 (List!17596 Token!5736) List!17596)

(assert (=> d!479497 (= (list!6824 (_1!9908 lt!568510)) (list!6824 (seqFromList!1920 ($colon$colon!297 (t!146301 (t!146301 tokens!457)) (h!22927 (t!146301 tokens!457))))))))

(assert (=> d!479497 (= (seqFromListBHdTlConstructive!162 (h!22927 (t!146301 tokens!457)) (t!146301 (t!146301 tokens!457)) (_1!9908 lt!568510)) lt!568700)))

(declare-fun bs!392835 () Bool)

(assert (= bs!392835 d!479497))

(declare-fun m!1906595 () Bool)

(assert (=> bs!392835 m!1906595))

(assert (=> bs!392835 m!1906167))

(assert (=> bs!392835 m!1906169))

(declare-fun m!1906597 () Bool)

(assert (=> bs!392835 m!1906597))

(assert (=> bs!392835 m!1906167))

(assert (=> bs!392835 m!1906231))

(assert (=> bs!392835 m!1906597))

(declare-fun m!1906599 () Bool)

(assert (=> bs!392835 m!1906599))

(assert (=> bs!392835 m!1906599))

(declare-fun m!1906601 () Bool)

(assert (=> bs!392835 m!1906601))

(assert (=> bs!392835 m!1906169))

(assert (=> bs!392835 m!1906171))

(assert (=> b!1600993 d!479497))

(declare-fun d!479499 () Bool)

(assert (=> d!479499 (= (list!6824 lt!568512) (list!6828 (c!260293 lt!568512)))))

(declare-fun bs!392836 () Bool)

(assert (= bs!392836 d!479499))

(declare-fun m!1906603 () Bool)

(assert (=> bs!392836 m!1906603))

(assert (=> b!1600993 d!479499))

(declare-fun d!479501 () Bool)

(declare-fun lt!568750 () Bool)

(declare-fun e!1027627 () Bool)

(assert (=> d!479501 (= lt!568750 e!1027627)))

(declare-fun res!714094 () Bool)

(assert (=> d!479501 (=> (not res!714094) (not e!1027627))))

(assert (=> d!479501 (= res!714094 (= (list!6824 (_1!9908 (lex!1198 thiss!17113 rules!1846 (print!1245 thiss!17113 (singletonSeq!1448 (h!22927 tokens!457)))))) (list!6824 (singletonSeq!1448 (h!22927 tokens!457)))))))

(declare-fun e!1027628 () Bool)

(assert (=> d!479501 (= lt!568750 e!1027628)))

(declare-fun res!714095 () Bool)

(assert (=> d!479501 (=> (not res!714095) (not e!1027628))))

(declare-fun lt!568751 () tuple2!17012)

(assert (=> d!479501 (= res!714095 (= (size!14111 (_1!9908 lt!568751)) 1))))

(assert (=> d!479501 (= lt!568751 (lex!1198 thiss!17113 rules!1846 (print!1245 thiss!17113 (singletonSeq!1448 (h!22927 tokens!457)))))))

(assert (=> d!479501 (not (isEmpty!10558 rules!1846))))

(assert (=> d!479501 (= (rulesProduceIndividualToken!1366 thiss!17113 rules!1846 (h!22927 tokens!457)) lt!568750)))

(declare-fun b!1601225 () Bool)

(declare-fun res!714096 () Bool)

(assert (=> b!1601225 (=> (not res!714096) (not e!1027628))))

(assert (=> b!1601225 (= res!714096 (= (apply!4355 (_1!9908 lt!568751) 0) (h!22927 tokens!457)))))

(declare-fun b!1601226 () Bool)

(declare-fun isEmpty!10567 (BalanceConc!11580) Bool)

(assert (=> b!1601226 (= e!1027628 (isEmpty!10567 (_2!9908 lt!568751)))))

(declare-fun b!1601227 () Bool)

(assert (=> b!1601227 (= e!1027627 (isEmpty!10567 (_2!9908 (lex!1198 thiss!17113 rules!1846 (print!1245 thiss!17113 (singletonSeq!1448 (h!22927 tokens!457)))))))))

(assert (= (and d!479501 res!714095) b!1601225))

(assert (= (and b!1601225 res!714096) b!1601226))

(assert (= (and d!479501 res!714094) b!1601227))

(assert (=> d!479501 m!1906203))

(assert (=> d!479501 m!1906203))

(declare-fun m!1906673 () Bool)

(assert (=> d!479501 m!1906673))

(assert (=> d!479501 m!1906161))

(declare-fun m!1906675 () Bool)

(assert (=> d!479501 m!1906675))

(assert (=> d!479501 m!1906203))

(declare-fun m!1906677 () Bool)

(assert (=> d!479501 m!1906677))

(assert (=> d!479501 m!1906673))

(declare-fun m!1906679 () Bool)

(assert (=> d!479501 m!1906679))

(declare-fun m!1906681 () Bool)

(assert (=> d!479501 m!1906681))

(declare-fun m!1906683 () Bool)

(assert (=> b!1601225 m!1906683))

(declare-fun m!1906685 () Bool)

(assert (=> b!1601226 m!1906685))

(assert (=> b!1601227 m!1906203))

(assert (=> b!1601227 m!1906203))

(assert (=> b!1601227 m!1906673))

(assert (=> b!1601227 m!1906673))

(assert (=> b!1601227 m!1906679))

(declare-fun m!1906687 () Bool)

(assert (=> b!1601227 m!1906687))

(assert (=> b!1600983 d!479501))

(declare-fun d!479515 () Bool)

(declare-fun lt!568752 () BalanceConc!11580)

(assert (=> d!479515 (= (list!6823 lt!568752) (printList!829 thiss!17113 (list!6824 (seqFromList!1920 tokens!457))))))

(assert (=> d!479515 (= lt!568752 (printTailRec!767 thiss!17113 (seqFromList!1920 tokens!457) 0 (BalanceConc!11581 Empty!5818)))))

(assert (=> d!479515 (= (print!1245 thiss!17113 (seqFromList!1920 tokens!457)) lt!568752)))

(declare-fun bs!392839 () Bool)

(assert (= bs!392839 d!479515))

(declare-fun m!1906689 () Bool)

(assert (=> bs!392839 m!1906689))

(assert (=> bs!392839 m!1906247))

(declare-fun m!1906691 () Bool)

(assert (=> bs!392839 m!1906691))

(assert (=> bs!392839 m!1906691))

(declare-fun m!1906693 () Bool)

(assert (=> bs!392839 m!1906693))

(assert (=> bs!392839 m!1906247))

(declare-fun m!1906695 () Bool)

(assert (=> bs!392839 m!1906695))

(assert (=> b!1600984 d!479515))

(declare-fun b!1601254 () Bool)

(declare-fun e!1027648 () Bool)

(declare-fun e!1027646 () Bool)

(assert (=> b!1601254 (= e!1027648 e!1027646)))

(declare-fun res!714116 () Bool)

(declare-fun lt!568778 () tuple2!17012)

(assert (=> b!1601254 (= res!714116 (< (size!14106 (_2!9908 lt!568778)) (size!14106 lt!568528)))))

(assert (=> b!1601254 (=> (not res!714116) (not e!1027646))))

(declare-fun b!1601255 () Bool)

(assert (=> b!1601255 (= e!1027646 (not (isEmpty!10559 (_1!9908 lt!568778))))))

(declare-fun b!1601257 () Bool)

(assert (=> b!1601257 (= e!1027648 (= (_2!9908 lt!568778) lt!568528))))

(declare-fun b!1601258 () Bool)

(declare-fun res!714115 () Bool)

(declare-fun e!1027647 () Bool)

(assert (=> b!1601258 (=> (not res!714115) (not e!1027647))))

(declare-datatypes ((tuple2!17018 0))(
  ( (tuple2!17019 (_1!9911 List!17596) (_2!9911 List!17594)) )
))
(declare-fun lexList!801 (LexerInterface!2714 List!17595 List!17594) tuple2!17018)

(assert (=> b!1601258 (= res!714115 (= (list!6824 (_1!9908 lt!568778)) (_1!9911 (lexList!801 thiss!17113 rules!1846 (list!6823 lt!568528)))))))

(declare-fun b!1601256 () Bool)

(assert (=> b!1601256 (= e!1027647 (= (list!6823 (_2!9908 lt!568778)) (_2!9911 (lexList!801 thiss!17113 rules!1846 (list!6823 lt!568528)))))))

(declare-fun d!479517 () Bool)

(assert (=> d!479517 e!1027647))

(declare-fun res!714117 () Bool)

(assert (=> d!479517 (=> (not res!714117) (not e!1027647))))

(assert (=> d!479517 (= res!714117 e!1027648)))

(declare-fun c!260336 () Bool)

(assert (=> d!479517 (= c!260336 (> (size!14111 (_1!9908 lt!568778)) 0))))

(declare-fun lexTailRecV2!524 (LexerInterface!2714 List!17595 BalanceConc!11580 BalanceConc!11580 BalanceConc!11580 BalanceConc!11582) tuple2!17012)

(assert (=> d!479517 (= lt!568778 (lexTailRecV2!524 thiss!17113 rules!1846 lt!568528 (BalanceConc!11581 Empty!5818) lt!568528 (BalanceConc!11583 Empty!5819)))))

(assert (=> d!479517 (= (lex!1198 thiss!17113 rules!1846 lt!568528) lt!568778)))

(assert (= (and d!479517 c!260336) b!1601254))

(assert (= (and d!479517 (not c!260336)) b!1601257))

(assert (= (and b!1601254 res!714116) b!1601255))

(assert (= (and d!479517 res!714117) b!1601258))

(assert (= (and b!1601258 res!714115) b!1601256))

(declare-fun m!1906723 () Bool)

(assert (=> b!1601258 m!1906723))

(assert (=> b!1601258 m!1906253))

(assert (=> b!1601258 m!1906253))

(declare-fun m!1906725 () Bool)

(assert (=> b!1601258 m!1906725))

(declare-fun m!1906727 () Bool)

(assert (=> b!1601254 m!1906727))

(declare-fun m!1906729 () Bool)

(assert (=> b!1601254 m!1906729))

(declare-fun m!1906731 () Bool)

(assert (=> b!1601255 m!1906731))

(declare-fun m!1906733 () Bool)

(assert (=> d!479517 m!1906733))

(declare-fun m!1906735 () Bool)

(assert (=> d!479517 m!1906735))

(declare-fun m!1906737 () Bool)

(assert (=> b!1601256 m!1906737))

(assert (=> b!1601256 m!1906253))

(assert (=> b!1601256 m!1906253))

(assert (=> b!1601256 m!1906725))

(assert (=> b!1600984 d!479517))

(declare-fun b!1601264 () Bool)

(declare-fun res!714120 () Bool)

(declare-fun e!1027651 () Bool)

(assert (=> b!1601264 (=> (not res!714120) (not e!1027651))))

(declare-fun lt!568786 () List!17594)

(assert (=> b!1601264 (= res!714120 (= (size!14110 lt!568786) (+ (size!14110 lt!568523) (size!14110 lt!568513))))))

(declare-fun b!1601265 () Bool)

(assert (=> b!1601265 (= e!1027651 (or (not (= lt!568513 Nil!17524)) (= lt!568786 lt!568523)))))

(declare-fun b!1601263 () Bool)

(declare-fun e!1027652 () List!17594)

(assert (=> b!1601263 (= e!1027652 (Cons!17524 (h!22925 lt!568523) (++!4593 (t!146299 lt!568523) lt!568513)))))

(declare-fun b!1601262 () Bool)

(assert (=> b!1601262 (= e!1027652 lt!568513)))

(declare-fun d!479527 () Bool)

(assert (=> d!479527 e!1027651))

(declare-fun res!714119 () Bool)

(assert (=> d!479527 (=> (not res!714119) (not e!1027651))))

(assert (=> d!479527 (= res!714119 (= (content!2429 lt!568786) ((_ map or) (content!2429 lt!568523) (content!2429 lt!568513))))))

(assert (=> d!479527 (= lt!568786 e!1027652)))

(declare-fun c!260338 () Bool)

(assert (=> d!479527 (= c!260338 ((_ is Nil!17524) lt!568523))))

(assert (=> d!479527 (= (++!4593 lt!568523 lt!568513) lt!568786)))

(assert (= (and d!479527 c!260338) b!1601262))

(assert (= (and d!479527 (not c!260338)) b!1601263))

(assert (= (and d!479527 res!714119) b!1601264))

(assert (= (and b!1601264 res!714120) b!1601265))

(declare-fun m!1906739 () Bool)

(assert (=> b!1601264 m!1906739))

(assert (=> b!1601264 m!1906413))

(declare-fun m!1906741 () Bool)

(assert (=> b!1601264 m!1906741))

(declare-fun m!1906743 () Bool)

(assert (=> b!1601263 m!1906743))

(declare-fun m!1906745 () Bool)

(assert (=> d!479527 m!1906745))

(assert (=> d!479527 m!1906421))

(declare-fun m!1906747 () Bool)

(assert (=> d!479527 m!1906747))

(assert (=> b!1600984 d!479527))

(declare-fun d!479529 () Bool)

(assert (=> d!479529 (= (list!6823 lt!568528) (list!6827 (c!260291 lt!568528)))))

(declare-fun bs!392841 () Bool)

(assert (= bs!392841 d!479529))

(declare-fun m!1906751 () Bool)

(assert (=> bs!392841 m!1906751))

(assert (=> b!1600984 d!479529))

(declare-fun d!479531 () Bool)

(assert (=> d!479531 (= (seqFromList!1920 tokens!457) (fromListB!838 tokens!457))))

(declare-fun bs!392842 () Bool)

(assert (= bs!392842 d!479531))

(declare-fun m!1906761 () Bool)

(assert (=> bs!392842 m!1906761))

(assert (=> b!1600984 d!479531))

(declare-fun d!479533 () Bool)

(declare-fun lt!568789 () BalanceConc!11580)

(assert (=> d!479533 (= (list!6823 lt!568789) (originalCharacters!3899 (h!22927 tokens!457)))))

(declare-fun dynLambda!7823 (Int TokenValue!3175) BalanceConc!11580)

(assert (=> d!479533 (= lt!568789 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (value!97595 (h!22927 tokens!457))))))

(assert (=> d!479533 (= (charsOf!1734 (h!22927 tokens!457)) lt!568789)))

(declare-fun b_lambda!50461 () Bool)

(assert (=> (not b_lambda!50461) (not d!479533)))

(declare-fun t!146319 () Bool)

(declare-fun tb!91135 () Bool)

(assert (=> (and b!1600992 (= (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457))))) t!146319) tb!91135))

(declare-fun b!1601276 () Bool)

(declare-fun e!1027658 () Bool)

(declare-fun tp!468557 () Bool)

(declare-fun inv!22944 (Conc!5818) Bool)

(assert (=> b!1601276 (= e!1027658 (and (inv!22944 (c!260291 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (value!97595 (h!22927 tokens!457))))) tp!468557))))

(declare-fun result!110060 () Bool)

(declare-fun inv!22945 (BalanceConc!11580) Bool)

(assert (=> tb!91135 (= result!110060 (and (inv!22945 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (value!97595 (h!22927 tokens!457)))) e!1027658))))

(assert (= tb!91135 b!1601276))

(declare-fun m!1906789 () Bool)

(assert (=> b!1601276 m!1906789))

(declare-fun m!1906791 () Bool)

(assert (=> tb!91135 m!1906791))

(assert (=> d!479533 t!146319))

(declare-fun b_and!112901 () Bool)

(assert (= b_and!112887 (and (=> t!146319 result!110060) b_and!112901)))

(declare-fun t!146321 () Bool)

(declare-fun tb!91137 () Bool)

(assert (=> (and b!1600998 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457))))) t!146321) tb!91137))

(declare-fun result!110064 () Bool)

(assert (= result!110064 result!110060))

(assert (=> d!479533 t!146321))

(declare-fun b_and!112903 () Bool)

(assert (= b_and!112891 (and (=> t!146321 result!110064) b_and!112903)))

(declare-fun m!1906799 () Bool)

(assert (=> d!479533 m!1906799))

(declare-fun m!1906801 () Bool)

(assert (=> d!479533 m!1906801))

(assert (=> b!1600984 d!479533))

(declare-fun d!479539 () Bool)

(assert (=> d!479539 (= (list!6823 lt!568508) (list!6827 (c!260291 lt!568508)))))

(declare-fun bs!392844 () Bool)

(assert (= bs!392844 d!479539))

(declare-fun m!1906805 () Bool)

(assert (=> bs!392844 m!1906805))

(assert (=> b!1600984 d!479539))

(declare-fun d!479543 () Bool)

(assert (=> d!479543 (= (seqFromList!1920 (t!146301 tokens!457)) (fromListB!838 (t!146301 tokens!457)))))

(declare-fun bs!392845 () Bool)

(assert (= bs!392845 d!479543))

(declare-fun m!1906807 () Bool)

(assert (=> bs!392845 m!1906807))

(assert (=> b!1600984 d!479543))

(declare-fun d!479545 () Bool)

(declare-fun lt!568790 () BalanceConc!11580)

(assert (=> d!479545 (= (list!6823 lt!568790) (printList!829 thiss!17113 (list!6824 lt!568512)))))

(assert (=> d!479545 (= lt!568790 (printTailRec!767 thiss!17113 lt!568512 0 (BalanceConc!11581 Empty!5818)))))

(assert (=> d!479545 (= (print!1245 thiss!17113 lt!568512) lt!568790)))

(declare-fun bs!392846 () Bool)

(assert (= bs!392846 d!479545))

(declare-fun m!1906809 () Bool)

(assert (=> bs!392846 m!1906809))

(assert (=> bs!392846 m!1906163))

(assert (=> bs!392846 m!1906163))

(declare-fun m!1906811 () Bool)

(assert (=> bs!392846 m!1906811))

(declare-fun m!1906813 () Bool)

(assert (=> bs!392846 m!1906813))

(assert (=> b!1600984 d!479545))

(declare-fun d!479547 () Bool)

(assert (=> d!479547 (= (list!6823 lt!568529) (list!6827 (c!260291 lt!568529)))))

(declare-fun bs!392847 () Bool)

(assert (= bs!392847 d!479547))

(declare-fun m!1906815 () Bool)

(assert (=> bs!392847 m!1906815))

(assert (=> b!1600984 d!479547))

(declare-fun d!479549 () Bool)

(assert (=> d!479549 (= (separableTokensPredicate!656 thiss!17113 (h!22927 tokens!457) (h!22927 (t!146301 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!445 (rulesRegex!475 thiss!17113 rules!1846) (++!4594 (charsOf!1734 (h!22927 tokens!457)) (singletonSeq!1449 (apply!4348 (charsOf!1734 (h!22927 (t!146301 tokens!457))) 0))))))))

(declare-fun bs!392848 () Bool)

(assert (= bs!392848 d!479549))

(assert (=> bs!392848 m!1906207))

(declare-fun m!1906817 () Bool)

(assert (=> bs!392848 m!1906817))

(declare-fun m!1906819 () Bool)

(assert (=> bs!392848 m!1906819))

(assert (=> bs!392848 m!1906263))

(declare-fun m!1906821 () Bool)

(assert (=> bs!392848 m!1906821))

(assert (=> bs!392848 m!1906817))

(assert (=> bs!392848 m!1906209))

(declare-fun m!1906823 () Bool)

(assert (=> bs!392848 m!1906823))

(assert (=> bs!392848 m!1906823))

(assert (=> bs!392848 m!1906821))

(assert (=> bs!392848 m!1906209))

(assert (=> bs!392848 m!1906207))

(assert (=> bs!392848 m!1906263))

(assert (=> b!1600995 d!479549))

(declare-fun d!479551 () Bool)

(declare-fun lt!568793 () Int)

(assert (=> d!479551 (= lt!568793 (size!14110 (list!6823 lt!568531)))))

(declare-fun size!14112 (Conc!5818) Int)

(assert (=> d!479551 (= lt!568793 (size!14112 (c!260291 lt!568531)))))

(assert (=> d!479551 (= (size!14106 lt!568531) lt!568793)))

(declare-fun bs!392849 () Bool)

(assert (= bs!392849 d!479551))

(declare-fun m!1906825 () Bool)

(assert (=> bs!392849 m!1906825))

(assert (=> bs!392849 m!1906825))

(declare-fun m!1906827 () Bool)

(assert (=> bs!392849 m!1906827))

(declare-fun m!1906829 () Bool)

(assert (=> bs!392849 m!1906829))

(assert (=> b!1600996 d!479551))

(declare-fun d!479553 () Bool)

(declare-fun res!714123 () Bool)

(declare-fun e!1027661 () Bool)

(assert (=> d!479553 (=> (not res!714123) (not e!1027661))))

(declare-fun rulesValid!1100 (LexerInterface!2714 List!17595) Bool)

(assert (=> d!479553 (= res!714123 (rulesValid!1100 thiss!17113 rules!1846))))

(assert (=> d!479553 (= (rulesInvariant!2383 thiss!17113 rules!1846) e!1027661)))

(declare-fun b!1601279 () Bool)

(declare-datatypes ((List!17600 0))(
  ( (Nil!17530) (Cons!17530 (h!22931 String!20207) (t!146347 List!17600)) )
))
(declare-fun noDuplicateTag!1100 (LexerInterface!2714 List!17595 List!17600) Bool)

(assert (=> b!1601279 (= e!1027661 (noDuplicateTag!1100 thiss!17113 rules!1846 Nil!17530))))

(assert (= (and d!479553 res!714123) b!1601279))

(declare-fun m!1906831 () Bool)

(assert (=> d!479553 m!1906831))

(declare-fun m!1906833 () Bool)

(assert (=> b!1601279 m!1906833))

(assert (=> b!1600985 d!479553))

(declare-fun d!479555 () Bool)

(assert (=> d!479555 (= (isEmpty!10558 rules!1846) ((_ is Nil!17525) rules!1846))))

(assert (=> b!1600976 d!479555))

(declare-fun d!479557 () Bool)

(declare-fun lt!568806 () C!9000)

(declare-fun apply!4357 (List!17594 Int) C!9000)

(assert (=> d!479557 (= lt!568806 (apply!4357 (list!6823 lt!568531) 0))))

(declare-fun apply!4358 (Conc!5818 Int) C!9000)

(assert (=> d!479557 (= lt!568806 (apply!4358 (c!260291 lt!568531) 0))))

(declare-fun e!1027670 () Bool)

(assert (=> d!479557 e!1027670))

(declare-fun res!714140 () Bool)

(assert (=> d!479557 (=> (not res!714140) (not e!1027670))))

(assert (=> d!479557 (= res!714140 (<= 0 0))))

(assert (=> d!479557 (= (apply!4348 lt!568531 0) lt!568806)))

(declare-fun b!1601300 () Bool)

(assert (=> b!1601300 (= e!1027670 (< 0 (size!14106 lt!568531)))))

(assert (= (and d!479557 res!714140) b!1601300))

(assert (=> d!479557 m!1906825))

(assert (=> d!479557 m!1906825))

(declare-fun m!1906835 () Bool)

(assert (=> d!479557 m!1906835))

(declare-fun m!1906837 () Bool)

(assert (=> d!479557 m!1906837))

(assert (=> b!1601300 m!1906191))

(assert (=> b!1600997 d!479557))

(declare-fun d!479559 () Bool)

(declare-fun e!1027676 () Bool)

(assert (=> d!479559 e!1027676))

(declare-fun res!714150 () Bool)

(assert (=> d!479559 (=> (not res!714150) (not e!1027676))))

(declare-fun lt!568814 () BalanceConc!11580)

(assert (=> d!479559 (= res!714150 (= (list!6823 lt!568814) (Cons!17524 (apply!4348 lt!568531 0) Nil!17524)))))

(declare-fun singleton!614 (C!9000) BalanceConc!11580)

(assert (=> d!479559 (= lt!568814 (singleton!614 (apply!4348 lt!568531 0)))))

(assert (=> d!479559 (= (singletonSeq!1449 (apply!4348 lt!568531 0)) lt!568814)))

(declare-fun b!1601312 () Bool)

(declare-fun isBalanced!1734 (Conc!5818) Bool)

(assert (=> b!1601312 (= e!1027676 (isBalanced!1734 (c!260291 lt!568814)))))

(assert (= (and d!479559 res!714150) b!1601312))

(declare-fun m!1906839 () Bool)

(assert (=> d!479559 m!1906839))

(assert (=> d!479559 m!1906211))

(declare-fun m!1906841 () Bool)

(assert (=> d!479559 m!1906841))

(declare-fun m!1906843 () Bool)

(assert (=> b!1601312 m!1906843))

(assert (=> b!1600997 d!479559))

(declare-fun lt!568848 () Bool)

(declare-fun d!479561 () Bool)

(assert (=> d!479561 (= lt!568848 (prefixMatch!348 lt!568524 (list!6823 (++!4594 lt!568508 lt!568532))))))

(declare-datatypes ((List!17601 0))(
  ( (Nil!17531) (Cons!17531 (h!22932 Regex!4413) (t!146348 List!17601)) )
))
(declare-datatypes ((Context!1678 0))(
  ( (Context!1679 (exprs!1339 List!17601)) )
))
(declare-fun prefixMatchZipperSequence!447 ((InoxSet Context!1678) BalanceConc!11580 Int) Bool)

(declare-fun focus!145 (Regex!4413) (InoxSet Context!1678))

(assert (=> d!479561 (= lt!568848 (prefixMatchZipperSequence!447 (focus!145 lt!568524) (++!4594 lt!568508 lt!568532) 0))))

(declare-fun lt!568850 () Unit!27905)

(declare-fun lt!568844 () Unit!27905)

(assert (=> d!479561 (= lt!568850 lt!568844)))

(declare-fun lt!568845 () List!17594)

(declare-fun lt!568846 () (InoxSet Context!1678))

(declare-fun prefixMatchZipper!124 ((InoxSet Context!1678) List!17594) Bool)

(assert (=> d!479561 (= (prefixMatch!348 lt!568524 lt!568845) (prefixMatchZipper!124 lt!568846 lt!568845))))

(declare-datatypes ((List!17602 0))(
  ( (Nil!17532) (Cons!17532 (h!22933 Context!1678) (t!146349 List!17602)) )
))
(declare-fun lt!568843 () List!17602)

(declare-fun prefixMatchZipperRegexEquiv!124 ((InoxSet Context!1678) List!17602 Regex!4413 List!17594) Unit!27905)

(assert (=> d!479561 (= lt!568844 (prefixMatchZipperRegexEquiv!124 lt!568846 lt!568843 lt!568524 lt!568845))))

(assert (=> d!479561 (= lt!568845 (list!6823 (++!4594 lt!568508 lt!568532)))))

(declare-fun toList!885 ((InoxSet Context!1678)) List!17602)

(assert (=> d!479561 (= lt!568843 (toList!885 (focus!145 lt!568524)))))

(assert (=> d!479561 (= lt!568846 (focus!145 lt!568524))))

(declare-fun lt!568851 () Unit!27905)

(declare-fun lt!568849 () Unit!27905)

(assert (=> d!479561 (= lt!568851 lt!568849)))

(declare-fun lt!568847 () Int)

(declare-fun lt!568852 () (InoxSet Context!1678))

(declare-fun dropList!552 (BalanceConc!11580 Int) List!17594)

(assert (=> d!479561 (= (prefixMatchZipper!124 lt!568852 (dropList!552 (++!4594 lt!568508 lt!568532) lt!568847)) (prefixMatchZipperSequence!447 lt!568852 (++!4594 lt!568508 lt!568532) lt!568847))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!124 ((InoxSet Context!1678) BalanceConc!11580 Int) Unit!27905)

(assert (=> d!479561 (= lt!568849 (lemmaprefixMatchZipperSequenceEquivalent!124 lt!568852 (++!4594 lt!568508 lt!568532) lt!568847))))

(assert (=> d!479561 (= lt!568847 0)))

(assert (=> d!479561 (= lt!568852 (focus!145 lt!568524))))

(declare-fun validRegex!1750 (Regex!4413) Bool)

(assert (=> d!479561 (validRegex!1750 lt!568524)))

(assert (=> d!479561 (= (prefixMatchZipperSequence!445 lt!568524 (++!4594 lt!568508 lt!568532)) lt!568848)))

(declare-fun bs!392858 () Bool)

(assert (= bs!392858 d!479561))

(declare-fun m!1906939 () Bool)

(assert (=> bs!392858 m!1906939))

(declare-fun m!1906941 () Bool)

(assert (=> bs!392858 m!1906941))

(assert (=> bs!392858 m!1906215))

(assert (=> bs!392858 m!1906939))

(assert (=> bs!392858 m!1906215))

(declare-fun m!1906943 () Bool)

(assert (=> bs!392858 m!1906943))

(declare-fun m!1906945 () Bool)

(assert (=> bs!392858 m!1906945))

(declare-fun m!1906947 () Bool)

(assert (=> bs!392858 m!1906947))

(declare-fun m!1906949 () Bool)

(assert (=> bs!392858 m!1906949))

(declare-fun m!1906951 () Bool)

(assert (=> bs!392858 m!1906951))

(assert (=> bs!392858 m!1906215))

(declare-fun m!1906953 () Bool)

(assert (=> bs!392858 m!1906953))

(declare-fun m!1906955 () Bool)

(assert (=> bs!392858 m!1906955))

(assert (=> bs!392858 m!1906951))

(declare-fun m!1906957 () Bool)

(assert (=> bs!392858 m!1906957))

(assert (=> bs!392858 m!1906215))

(assert (=> bs!392858 m!1906945))

(declare-fun m!1906959 () Bool)

(assert (=> bs!392858 m!1906959))

(assert (=> bs!392858 m!1906951))

(declare-fun m!1906961 () Bool)

(assert (=> bs!392858 m!1906961))

(assert (=> bs!392858 m!1906215))

(declare-fun m!1906963 () Bool)

(assert (=> bs!392858 m!1906963))

(assert (=> b!1600997 d!479561))

(declare-fun e!1027687 () Bool)

(declare-fun b!1601336 () Bool)

(declare-fun lt!568855 () BalanceConc!11580)

(assert (=> b!1601336 (= e!1027687 (= (list!6823 lt!568855) (++!4593 (list!6823 lt!568508) (list!6823 lt!568532))))))

(declare-fun d!479593 () Bool)

(assert (=> d!479593 e!1027687))

(declare-fun res!714170 () Bool)

(assert (=> d!479593 (=> (not res!714170) (not e!1027687))))

(declare-fun appendAssocInst!405 (Conc!5818 Conc!5818) Bool)

(assert (=> d!479593 (= res!714170 (appendAssocInst!405 (c!260291 lt!568508) (c!260291 lt!568532)))))

(declare-fun ++!4596 (Conc!5818 Conc!5818) Conc!5818)

(assert (=> d!479593 (= lt!568855 (BalanceConc!11581 (++!4596 (c!260291 lt!568508) (c!260291 lt!568532))))))

(assert (=> d!479593 (= (++!4594 lt!568508 lt!568532) lt!568855)))

(declare-fun b!1601333 () Bool)

(declare-fun res!714168 () Bool)

(assert (=> b!1601333 (=> (not res!714168) (not e!1027687))))

(assert (=> b!1601333 (= res!714168 (isBalanced!1734 (++!4596 (c!260291 lt!568508) (c!260291 lt!568532))))))

(declare-fun b!1601335 () Bool)

(declare-fun res!714169 () Bool)

(assert (=> b!1601335 (=> (not res!714169) (not e!1027687))))

(declare-fun height!873 (Conc!5818) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1601335 (= res!714169 (>= (height!873 (++!4596 (c!260291 lt!568508) (c!260291 lt!568532))) (max!0 (height!873 (c!260291 lt!568508)) (height!873 (c!260291 lt!568532)))))))

(declare-fun b!1601334 () Bool)

(declare-fun res!714167 () Bool)

(assert (=> b!1601334 (=> (not res!714167) (not e!1027687))))

(assert (=> b!1601334 (= res!714167 (<= (height!873 (++!4596 (c!260291 lt!568508) (c!260291 lt!568532))) (+ (max!0 (height!873 (c!260291 lt!568508)) (height!873 (c!260291 lt!568532))) 1)))))

(assert (= (and d!479593 res!714170) b!1601333))

(assert (= (and b!1601333 res!714168) b!1601334))

(assert (= (and b!1601334 res!714167) b!1601335))

(assert (= (and b!1601335 res!714169) b!1601336))

(declare-fun m!1906965 () Bool)

(assert (=> b!1601333 m!1906965))

(assert (=> b!1601333 m!1906965))

(declare-fun m!1906967 () Bool)

(assert (=> b!1601333 m!1906967))

(assert (=> b!1601334 m!1906965))

(declare-fun m!1906969 () Bool)

(assert (=> b!1601334 m!1906969))

(declare-fun m!1906971 () Bool)

(assert (=> b!1601334 m!1906971))

(assert (=> b!1601334 m!1906965))

(declare-fun m!1906973 () Bool)

(assert (=> b!1601334 m!1906973))

(assert (=> b!1601334 m!1906969))

(assert (=> b!1601334 m!1906971))

(declare-fun m!1906975 () Bool)

(assert (=> b!1601334 m!1906975))

(declare-fun m!1906977 () Bool)

(assert (=> b!1601336 m!1906977))

(assert (=> b!1601336 m!1906255))

(assert (=> b!1601336 m!1906229))

(assert (=> b!1601336 m!1906255))

(assert (=> b!1601336 m!1906229))

(declare-fun m!1906979 () Bool)

(assert (=> b!1601336 m!1906979))

(declare-fun m!1906981 () Bool)

(assert (=> d!479593 m!1906981))

(assert (=> d!479593 m!1906965))

(assert (=> b!1601335 m!1906965))

(assert (=> b!1601335 m!1906969))

(assert (=> b!1601335 m!1906971))

(assert (=> b!1601335 m!1906965))

(assert (=> b!1601335 m!1906973))

(assert (=> b!1601335 m!1906969))

(assert (=> b!1601335 m!1906971))

(assert (=> b!1601335 m!1906975))

(assert (=> b!1600997 d!479593))

(declare-fun d!479595 () Bool)

(declare-fun lt!568858 () Unit!27905)

(declare-fun lemma!211 (List!17595 LexerInterface!2714 List!17595) Unit!27905)

(assert (=> d!479595 (= lt!568858 (lemma!211 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66860 () Int)

(declare-fun generalisedUnion!219 (List!17601) Regex!4413)

(declare-fun map!3633 (List!17595 Int) List!17601)

(assert (=> d!479595 (= (rulesRegex!475 thiss!17113 rules!1846) (generalisedUnion!219 (map!3633 rules!1846 lambda!66860)))))

(declare-fun bs!392859 () Bool)

(assert (= bs!392859 d!479595))

(declare-fun m!1906983 () Bool)

(assert (=> bs!392859 m!1906983))

(declare-fun m!1906985 () Bool)

(assert (=> bs!392859 m!1906985))

(assert (=> bs!392859 m!1906985))

(declare-fun m!1906987 () Bool)

(assert (=> bs!392859 m!1906987))

(assert (=> b!1600997 d!479595))

(declare-fun d!479597 () Bool)

(declare-fun lt!568859 () BalanceConc!11580)

(assert (=> d!479597 (= (list!6823 lt!568859) (originalCharacters!3899 (h!22927 (t!146301 tokens!457))))))

(assert (=> d!479597 (= lt!568859 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (value!97595 (h!22927 (t!146301 tokens!457)))))))

(assert (=> d!479597 (= (charsOf!1734 (h!22927 (t!146301 tokens!457))) lt!568859)))

(declare-fun b_lambda!50465 () Bool)

(assert (=> (not b_lambda!50465) (not d!479597)))

(declare-fun t!146325 () Bool)

(declare-fun tb!91139 () Bool)

(assert (=> (and b!1600992 (= (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457)))))) t!146325) tb!91139))

(declare-fun b!1601337 () Bool)

(declare-fun e!1027688 () Bool)

(declare-fun tp!468558 () Bool)

(assert (=> b!1601337 (= e!1027688 (and (inv!22944 (c!260291 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (value!97595 (h!22927 (t!146301 tokens!457)))))) tp!468558))))

(declare-fun result!110066 () Bool)

(assert (=> tb!91139 (= result!110066 (and (inv!22945 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (value!97595 (h!22927 (t!146301 tokens!457))))) e!1027688))))

(assert (= tb!91139 b!1601337))

(declare-fun m!1906989 () Bool)

(assert (=> b!1601337 m!1906989))

(declare-fun m!1906991 () Bool)

(assert (=> tb!91139 m!1906991))

(assert (=> d!479597 t!146325))

(declare-fun b_and!112909 () Bool)

(assert (= b_and!112901 (and (=> t!146325 result!110066) b_and!112909)))

(declare-fun t!146327 () Bool)

(declare-fun tb!91141 () Bool)

(assert (=> (and b!1600998 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457)))))) t!146327) tb!91141))

(declare-fun result!110068 () Bool)

(assert (= result!110068 result!110066))

(assert (=> d!479597 t!146327))

(declare-fun b_and!112911 () Bool)

(assert (= b_and!112903 (and (=> t!146327 result!110068) b_and!112911)))

(declare-fun m!1906993 () Bool)

(assert (=> d!479597 m!1906993))

(declare-fun m!1906995 () Bool)

(assert (=> d!479597 m!1906995))

(assert (=> b!1600997 d!479597))

(declare-fun d!479599 () Bool)

(assert (=> d!479599 (= (inv!22937 (tag!3359 (rule!4899 (h!22927 tokens!457)))) (= (mod (str.len (value!97594 (tag!3359 (rule!4899 (h!22927 tokens!457))))) 2) 0))))

(assert (=> b!1600987 d!479599))

(declare-fun d!479601 () Bool)

(declare-fun res!714171 () Bool)

(declare-fun e!1027689 () Bool)

(assert (=> d!479601 (=> (not res!714171) (not e!1027689))))

(assert (=> d!479601 (= res!714171 (semiInverseModEq!1172 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (toValue!4504 (transformation!3085 (rule!4899 (h!22927 tokens!457))))))))

(assert (=> d!479601 (= (inv!22941 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) e!1027689)))

(declare-fun b!1601338 () Bool)

(assert (=> b!1601338 (= e!1027689 (equivClasses!1113 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (toValue!4504 (transformation!3085 (rule!4899 (h!22927 tokens!457))))))))

(assert (= (and d!479601 res!714171) b!1601338))

(declare-fun m!1906997 () Bool)

(assert (=> d!479601 m!1906997))

(declare-fun m!1906999 () Bool)

(assert (=> b!1601338 m!1906999))

(assert (=> b!1600987 d!479601))

(declare-fun d!479603 () Bool)

(assert (=> d!479603 (= (isDefined!2541 lt!568520) (not (isEmpty!10566 lt!568520)))))

(declare-fun bs!392860 () Bool)

(assert (= bs!392860 d!479603))

(declare-fun m!1907001 () Bool)

(assert (=> bs!392860 m!1907001))

(assert (=> b!1600988 d!479603))

(declare-fun b!1601350 () Bool)

(declare-fun e!1027694 () Unit!27905)

(declare-fun Unit!27929 () Unit!27905)

(assert (=> b!1601350 (= e!1027694 Unit!27929)))

(declare-fun b!1601347 () Bool)

(declare-fun res!714176 () Bool)

(declare-fun e!1027695 () Bool)

(assert (=> b!1601347 (=> (not res!714176) (not e!1027695))))

(declare-fun lt!568907 () Token!5736)

(declare-datatypes ((Option!3172 0))(
  ( (None!3171) (Some!3171 (v!24108 Rule!5970)) )
))
(declare-fun get!5022 (Option!3172) Rule!5970)

(declare-fun getRuleFromTag!256 (LexerInterface!2714 List!17595 String!20207) Option!3172)

(assert (=> b!1601347 (= res!714176 (matchR!1932 (regex!3085 (get!5022 (getRuleFromTag!256 thiss!17113 rules!1846 (tag!3359 (rule!4899 lt!568907))))) (list!6823 (charsOf!1734 lt!568907))))))

(declare-fun d!479605 () Bool)

(assert (=> d!479605 (isDefined!2541 (maxPrefix!1278 thiss!17113 rules!1846 (++!4593 lt!568523 lt!568513)))))

(declare-fun lt!568898 () Unit!27905)

(assert (=> d!479605 (= lt!568898 e!1027694)))

(declare-fun c!260352 () Bool)

(assert (=> d!479605 (= c!260352 (isEmpty!10566 (maxPrefix!1278 thiss!17113 rules!1846 (++!4593 lt!568523 lt!568513))))))

(declare-fun lt!568905 () Unit!27905)

(declare-fun lt!568897 () Unit!27905)

(assert (=> d!479605 (= lt!568905 lt!568897)))

(assert (=> d!479605 e!1027695))

(declare-fun res!714177 () Bool)

(assert (=> d!479605 (=> (not res!714177) (not e!1027695))))

(declare-fun isDefined!2543 (Option!3172) Bool)

(assert (=> d!479605 (= res!714177 (isDefined!2543 (getRuleFromTag!256 thiss!17113 rules!1846 (tag!3359 (rule!4899 lt!568907)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!256 (LexerInterface!2714 List!17595 List!17594 Token!5736) Unit!27905)

(assert (=> d!479605 (= lt!568897 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!256 thiss!17113 rules!1846 lt!568523 lt!568907))))

(declare-fun lt!568908 () Unit!27905)

(declare-fun lt!568896 () Unit!27905)

(assert (=> d!479605 (= lt!568908 lt!568896)))

(declare-fun lt!568900 () List!17594)

(assert (=> d!479605 (isPrefix!1345 lt!568900 (++!4593 lt!568523 lt!568513))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!142 (List!17594 List!17594 List!17594) Unit!27905)

(assert (=> d!479605 (= lt!568896 (lemmaPrefixStaysPrefixWhenAddingToSuffix!142 lt!568900 lt!568523 lt!568513))))

(assert (=> d!479605 (= lt!568900 (list!6823 (charsOf!1734 lt!568907)))))

(declare-fun lt!568899 () Unit!27905)

(declare-fun lt!568906 () Unit!27905)

(assert (=> d!479605 (= lt!568899 lt!568906)))

(declare-fun lt!568895 () List!17594)

(declare-fun lt!568909 () List!17594)

(assert (=> d!479605 (isPrefix!1345 lt!568895 (++!4593 lt!568895 lt!568909))))

(assert (=> d!479605 (= lt!568906 (lemmaConcatTwoListThenFirstIsPrefix!870 lt!568895 lt!568909))))

(assert (=> d!479605 (= lt!568909 (_2!9909 (get!5021 (maxPrefix!1278 thiss!17113 rules!1846 lt!568523))))))

(assert (=> d!479605 (= lt!568895 (list!6823 (charsOf!1734 lt!568907)))))

(assert (=> d!479605 (= lt!568907 (head!3267 (list!6824 (_1!9908 (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523))))))))

(assert (=> d!479605 (not (isEmpty!10558 rules!1846))))

(assert (=> d!479605 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!288 thiss!17113 rules!1846 lt!568523 lt!568513) lt!568898)))

(declare-fun b!1601349 () Bool)

(declare-fun Unit!27930 () Unit!27905)

(assert (=> b!1601349 (= e!1027694 Unit!27930)))

(declare-fun lt!568903 () List!17594)

(assert (=> b!1601349 (= lt!568903 (++!4593 lt!568523 lt!568513))))

(declare-fun lt!568901 () Unit!27905)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!150 (LexerInterface!2714 Rule!5970 List!17595 List!17594) Unit!27905)

(assert (=> b!1601349 (= lt!568901 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!150 thiss!17113 (rule!4899 lt!568907) rules!1846 lt!568903))))

(assert (=> b!1601349 (isEmpty!10566 (maxPrefixOneRule!747 thiss!17113 (rule!4899 lt!568907) lt!568903))))

(declare-fun lt!568910 () Unit!27905)

(assert (=> b!1601349 (= lt!568910 lt!568901)))

(declare-fun lt!568894 () List!17594)

(assert (=> b!1601349 (= lt!568894 (list!6823 (charsOf!1734 lt!568907)))))

(declare-fun lt!568902 () Unit!27905)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!146 (LexerInterface!2714 Rule!5970 List!17594 List!17594) Unit!27905)

(assert (=> b!1601349 (= lt!568902 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!146 thiss!17113 (rule!4899 lt!568907) lt!568894 (++!4593 lt!568523 lt!568513)))))

(assert (=> b!1601349 (not (matchR!1932 (regex!3085 (rule!4899 lt!568907)) lt!568894))))

(declare-fun lt!568904 () Unit!27905)

(assert (=> b!1601349 (= lt!568904 lt!568902)))

(assert (=> b!1601349 false))

(declare-fun b!1601348 () Bool)

(assert (=> b!1601348 (= e!1027695 (= (rule!4899 lt!568907) (get!5022 (getRuleFromTag!256 thiss!17113 rules!1846 (tag!3359 (rule!4899 lt!568907))))))))

(assert (= (and d!479605 res!714177) b!1601347))

(assert (= (and b!1601347 res!714176) b!1601348))

(assert (= (and d!479605 c!260352) b!1601349))

(assert (= (and d!479605 (not c!260352)) b!1601350))

(declare-fun m!1907003 () Bool)

(assert (=> b!1601347 m!1907003))

(declare-fun m!1907005 () Bool)

(assert (=> b!1601347 m!1907005))

(declare-fun m!1907007 () Bool)

(assert (=> b!1601347 m!1907007))

(declare-fun m!1907009 () Bool)

(assert (=> b!1601347 m!1907009))

(declare-fun m!1907011 () Bool)

(assert (=> b!1601347 m!1907011))

(assert (=> b!1601347 m!1907009))

(assert (=> b!1601347 m!1907007))

(assert (=> b!1601347 m!1907003))

(assert (=> d!479605 m!1906251))

(declare-fun m!1907013 () Bool)

(assert (=> d!479605 m!1907013))

(declare-fun m!1907015 () Bool)

(assert (=> d!479605 m!1907015))

(declare-fun m!1907017 () Bool)

(assert (=> d!479605 m!1907017))

(declare-fun m!1907019 () Bool)

(assert (=> d!479605 m!1907019))

(assert (=> d!479605 m!1907007))

(declare-fun m!1907021 () Bool)

(assert (=> d!479605 m!1907021))

(assert (=> d!479605 m!1907019))

(declare-fun m!1907023 () Bool)

(assert (=> d!479605 m!1907023))

(assert (=> d!479605 m!1907015))

(declare-fun m!1907025 () Bool)

(assert (=> d!479605 m!1907025))

(assert (=> d!479605 m!1906251))

(declare-fun m!1907027 () Bool)

(assert (=> d!479605 m!1907027))

(assert (=> d!479605 m!1907027))

(declare-fun m!1907029 () Bool)

(assert (=> d!479605 m!1907029))

(assert (=> d!479605 m!1906239))

(assert (=> d!479605 m!1906241))

(declare-fun m!1907031 () Bool)

(assert (=> d!479605 m!1907031))

(declare-fun m!1907033 () Bool)

(assert (=> d!479605 m!1907033))

(assert (=> d!479605 m!1907009))

(assert (=> d!479605 m!1906161))

(assert (=> d!479605 m!1907009))

(declare-fun m!1907035 () Bool)

(assert (=> d!479605 m!1907035))

(declare-fun m!1907037 () Bool)

(assert (=> d!479605 m!1907037))

(assert (=> d!479605 m!1906239))

(assert (=> d!479605 m!1906251))

(assert (=> d!479605 m!1907031))

(assert (=> d!479605 m!1907031))

(declare-fun m!1907039 () Bool)

(assert (=> d!479605 m!1907039))

(assert (=> d!479605 m!1907007))

(assert (=> d!479605 m!1907003))

(declare-fun m!1907041 () Bool)

(assert (=> b!1601349 m!1907041))

(assert (=> b!1601349 m!1906251))

(declare-fun m!1907043 () Bool)

(assert (=> b!1601349 m!1907043))

(assert (=> b!1601349 m!1907007))

(declare-fun m!1907045 () Bool)

(assert (=> b!1601349 m!1907045))

(assert (=> b!1601349 m!1906251))

(declare-fun m!1907047 () Bool)

(assert (=> b!1601349 m!1907047))

(assert (=> b!1601349 m!1907007))

(assert (=> b!1601349 m!1907003))

(assert (=> b!1601349 m!1907045))

(declare-fun m!1907049 () Bool)

(assert (=> b!1601349 m!1907049))

(assert (=> b!1601348 m!1907009))

(assert (=> b!1601348 m!1907009))

(assert (=> b!1601348 m!1907011))

(assert (=> b!1600988 d!479605))

(declare-fun lt!568913 () Bool)

(declare-fun d!479607 () Bool)

(declare-fun isEmpty!10568 (List!17596) Bool)

(assert (=> d!479607 (= lt!568913 (isEmpty!10568 (list!6824 (_1!9908 (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523))))))))

(declare-fun isEmpty!10569 (Conc!5819) Bool)

(assert (=> d!479607 (= lt!568913 (isEmpty!10569 (c!260293 (_1!9908 (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523))))))))

(assert (=> d!479607 (= (isEmpty!10559 (_1!9908 (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523)))) lt!568913)))

(declare-fun bs!392861 () Bool)

(assert (= bs!392861 d!479607))

(assert (=> bs!392861 m!1907027))

(assert (=> bs!392861 m!1907027))

(declare-fun m!1907051 () Bool)

(assert (=> bs!392861 m!1907051))

(declare-fun m!1907053 () Bool)

(assert (=> bs!392861 m!1907053))

(assert (=> b!1600977 d!479607))

(declare-fun b!1601351 () Bool)

(declare-fun e!1027698 () Bool)

(declare-fun e!1027696 () Bool)

(assert (=> b!1601351 (= e!1027698 e!1027696)))

(declare-fun res!714179 () Bool)

(declare-fun lt!568914 () tuple2!17012)

(assert (=> b!1601351 (= res!714179 (< (size!14106 (_2!9908 lt!568914)) (size!14106 (seqFromList!1919 lt!568523))))))

(assert (=> b!1601351 (=> (not res!714179) (not e!1027696))))

(declare-fun b!1601352 () Bool)

(assert (=> b!1601352 (= e!1027696 (not (isEmpty!10559 (_1!9908 lt!568914))))))

(declare-fun b!1601354 () Bool)

(assert (=> b!1601354 (= e!1027698 (= (_2!9908 lt!568914) (seqFromList!1919 lt!568523)))))

(declare-fun b!1601355 () Bool)

(declare-fun res!714178 () Bool)

(declare-fun e!1027697 () Bool)

(assert (=> b!1601355 (=> (not res!714178) (not e!1027697))))

(assert (=> b!1601355 (= res!714178 (= (list!6824 (_1!9908 lt!568914)) (_1!9911 (lexList!801 thiss!17113 rules!1846 (list!6823 (seqFromList!1919 lt!568523))))))))

(declare-fun b!1601353 () Bool)

(assert (=> b!1601353 (= e!1027697 (= (list!6823 (_2!9908 lt!568914)) (_2!9911 (lexList!801 thiss!17113 rules!1846 (list!6823 (seqFromList!1919 lt!568523))))))))

(declare-fun d!479609 () Bool)

(assert (=> d!479609 e!1027697))

(declare-fun res!714180 () Bool)

(assert (=> d!479609 (=> (not res!714180) (not e!1027697))))

(assert (=> d!479609 (= res!714180 e!1027698)))

(declare-fun c!260353 () Bool)

(assert (=> d!479609 (= c!260353 (> (size!14111 (_1!9908 lt!568914)) 0))))

(assert (=> d!479609 (= lt!568914 (lexTailRecV2!524 thiss!17113 rules!1846 (seqFromList!1919 lt!568523) (BalanceConc!11581 Empty!5818) (seqFromList!1919 lt!568523) (BalanceConc!11583 Empty!5819)))))

(assert (=> d!479609 (= (lex!1198 thiss!17113 rules!1846 (seqFromList!1919 lt!568523)) lt!568914)))

(assert (= (and d!479609 c!260353) b!1601351))

(assert (= (and d!479609 (not c!260353)) b!1601354))

(assert (= (and b!1601351 res!714179) b!1601352))

(assert (= (and d!479609 res!714180) b!1601355))

(assert (= (and b!1601355 res!714178) b!1601353))

(declare-fun m!1907055 () Bool)

(assert (=> b!1601355 m!1907055))

(assert (=> b!1601355 m!1906239))

(declare-fun m!1907057 () Bool)

(assert (=> b!1601355 m!1907057))

(assert (=> b!1601355 m!1907057))

(declare-fun m!1907059 () Bool)

(assert (=> b!1601355 m!1907059))

(declare-fun m!1907061 () Bool)

(assert (=> b!1601351 m!1907061))

(assert (=> b!1601351 m!1906239))

(declare-fun m!1907063 () Bool)

(assert (=> b!1601351 m!1907063))

(declare-fun m!1907065 () Bool)

(assert (=> b!1601352 m!1907065))

(declare-fun m!1907067 () Bool)

(assert (=> d!479609 m!1907067))

(assert (=> d!479609 m!1906239))

(assert (=> d!479609 m!1906239))

(declare-fun m!1907069 () Bool)

(assert (=> d!479609 m!1907069))

(declare-fun m!1907071 () Bool)

(assert (=> b!1601353 m!1907071))

(assert (=> b!1601353 m!1906239))

(assert (=> b!1601353 m!1907057))

(assert (=> b!1601353 m!1907057))

(assert (=> b!1601353 m!1907059))

(assert (=> b!1600977 d!479609))

(declare-fun d!479611 () Bool)

(declare-fun fromListB!839 (List!17594) BalanceConc!11580)

(assert (=> d!479611 (= (seqFromList!1919 lt!568523) (fromListB!839 lt!568523))))

(declare-fun bs!392862 () Bool)

(assert (= bs!392862 d!479611))

(declare-fun m!1907073 () Bool)

(assert (=> bs!392862 m!1907073))

(assert (=> b!1600977 d!479611))

(declare-fun d!479613 () Bool)

(declare-fun res!714185 () Bool)

(declare-fun e!1027701 () Bool)

(assert (=> d!479613 (=> (not res!714185) (not e!1027701))))

(assert (=> d!479613 (= res!714185 (not (isEmpty!10565 (originalCharacters!3899 (h!22927 tokens!457)))))))

(assert (=> d!479613 (= (inv!22940 (h!22927 tokens!457)) e!1027701)))

(declare-fun b!1601360 () Bool)

(declare-fun res!714186 () Bool)

(assert (=> b!1601360 (=> (not res!714186) (not e!1027701))))

(assert (=> b!1601360 (= res!714186 (= (originalCharacters!3899 (h!22927 tokens!457)) (list!6823 (dynLambda!7823 (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (value!97595 (h!22927 tokens!457))))))))

(declare-fun b!1601361 () Bool)

(assert (=> b!1601361 (= e!1027701 (= (size!14105 (h!22927 tokens!457)) (size!14110 (originalCharacters!3899 (h!22927 tokens!457)))))))

(assert (= (and d!479613 res!714185) b!1601360))

(assert (= (and b!1601360 res!714186) b!1601361))

(declare-fun b_lambda!50467 () Bool)

(assert (=> (not b_lambda!50467) (not b!1601360)))

(assert (=> b!1601360 t!146319))

(declare-fun b_and!112913 () Bool)

(assert (= b_and!112909 (and (=> t!146319 result!110060) b_and!112913)))

(assert (=> b!1601360 t!146321))

(declare-fun b_and!112915 () Bool)

(assert (= b_and!112911 (and (=> t!146321 result!110064) b_and!112915)))

(declare-fun m!1907075 () Bool)

(assert (=> d!479613 m!1907075))

(assert (=> b!1601360 m!1906801))

(assert (=> b!1601360 m!1906801))

(declare-fun m!1907077 () Bool)

(assert (=> b!1601360 m!1907077))

(declare-fun m!1907079 () Bool)

(assert (=> b!1601361 m!1907079))

(assert (=> b!1600978 d!479613))

(declare-fun d!479615 () Bool)

(assert (=> d!479615 (= (list!6824 (_1!9908 lt!568510)) (list!6828 (c!260293 (_1!9908 lt!568510))))))

(declare-fun bs!392863 () Bool)

(assert (= bs!392863 d!479615))

(declare-fun m!1907081 () Bool)

(assert (=> bs!392863 m!1907081))

(assert (=> b!1600999 d!479615))

(declare-fun d!479617 () Bool)

(declare-fun e!1027767 () Bool)

(assert (=> d!479617 e!1027767))

(declare-fun res!714207 () Bool)

(assert (=> d!479617 (=> (not res!714207) (not e!1027767))))

(assert (=> d!479617 (= res!714207 (= (list!6824 (_1!9908 (lex!1198 thiss!17113 rules!1846 (print!1245 thiss!17113 (seqFromList!1920 (t!146301 tokens!457)))))) (t!146301 tokens!457)))))

(declare-fun lt!569054 () Unit!27905)

(declare-fun e!1027768 () Unit!27905)

(assert (=> d!479617 (= lt!569054 e!1027768)))

(declare-fun c!260365 () Bool)

(assert (=> d!479617 (= c!260365 (or ((_ is Nil!17526) (t!146301 tokens!457)) ((_ is Nil!17526) (t!146301 (t!146301 tokens!457)))))))

(assert (=> d!479617 (not (isEmpty!10558 rules!1846))))

(assert (=> d!479617 (= (theoremInvertabilityWhenTokenListSeparable!159 thiss!17113 rules!1846 (t!146301 tokens!457)) lt!569054)))

(declare-fun b!1601452 () Bool)

(declare-fun Unit!27931 () Unit!27905)

(assert (=> b!1601452 (= e!1027768 Unit!27931)))

(declare-fun b!1601453 () Bool)

(declare-fun Unit!27932 () Unit!27905)

(assert (=> b!1601453 (= e!1027768 Unit!27932)))

(declare-fun lt!569072 () BalanceConc!11580)

(assert (=> b!1601453 (= lt!569072 (print!1245 thiss!17113 (seqFromList!1920 (t!146301 tokens!457))))))

(declare-fun lt!569069 () BalanceConc!11580)

(assert (=> b!1601453 (= lt!569069 (print!1245 thiss!17113 (seqFromList!1920 (t!146301 (t!146301 tokens!457)))))))

(declare-fun lt!569059 () tuple2!17012)

(assert (=> b!1601453 (= lt!569059 (lex!1198 thiss!17113 rules!1846 lt!569069))))

(declare-fun lt!569063 () List!17594)

(assert (=> b!1601453 (= lt!569063 (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!569071 () List!17594)

(assert (=> b!1601453 (= lt!569071 (list!6823 lt!569069))))

(declare-fun lt!569073 () Unit!27905)

(assert (=> b!1601453 (= lt!569073 (lemmaConcatTwoListThenFirstIsPrefix!870 lt!569063 lt!569071))))

(assert (=> b!1601453 (isPrefix!1345 lt!569063 (++!4593 lt!569063 lt!569071))))

(declare-fun lt!569068 () Unit!27905)

(assert (=> b!1601453 (= lt!569068 lt!569073)))

(declare-fun lt!569070 () Unit!27905)

(assert (=> b!1601453 (= lt!569070 (theoremInvertabilityWhenTokenListSeparable!159 thiss!17113 rules!1846 (t!146301 (t!146301 tokens!457))))))

(declare-fun lt!569075 () Unit!27905)

(assert (=> b!1601453 (= lt!569075 (seqFromListBHdTlConstructive!162 (h!22927 (t!146301 (t!146301 tokens!457))) (t!146301 (t!146301 (t!146301 tokens!457))) (_1!9908 lt!569059)))))

(assert (=> b!1601453 (= (list!6824 (_1!9908 lt!569059)) (list!6824 (prepend!583 (seqFromList!1920 (t!146301 (t!146301 (t!146301 tokens!457)))) (h!22927 (t!146301 (t!146301 tokens!457))))))))

(declare-fun lt!569057 () Unit!27905)

(assert (=> b!1601453 (= lt!569057 lt!569075)))

(declare-fun lt!569055 () Option!3170)

(assert (=> b!1601453 (= lt!569055 (maxPrefix!1278 thiss!17113 rules!1846 (list!6823 lt!569072)))))

(assert (=> b!1601453 (= (print!1245 thiss!17113 (singletonSeq!1448 (h!22927 (t!146301 tokens!457)))) (printTailRec!767 thiss!17113 (singletonSeq!1448 (h!22927 (t!146301 tokens!457))) 0 (BalanceConc!11581 Empty!5818)))))

(declare-fun lt!569064 () Unit!27905)

(declare-fun Unit!27933 () Unit!27905)

(assert (=> b!1601453 (= lt!569064 Unit!27933)))

(declare-fun lt!569066 () Unit!27905)

(assert (=> b!1601453 (= lt!569066 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!288 thiss!17113 rules!1846 (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457)))) (list!6823 lt!569069)))))

(assert (=> b!1601453 (= (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457)))) (originalCharacters!3899 (h!22927 (t!146301 tokens!457))))))

(declare-fun lt!569051 () Unit!27905)

(declare-fun Unit!27934 () Unit!27905)

(assert (=> b!1601453 (= lt!569051 Unit!27934)))

(assert (=> b!1601453 (= (list!6823 (singletonSeq!1449 (apply!4348 (charsOf!1734 (h!22927 (t!146301 (t!146301 tokens!457)))) 0))) (Cons!17524 (head!3265 (originalCharacters!3899 (h!22927 (t!146301 (t!146301 tokens!457))))) Nil!17524))))

(declare-fun lt!569053 () Unit!27905)

(declare-fun Unit!27935 () Unit!27905)

(assert (=> b!1601453 (= lt!569053 Unit!27935)))

(assert (=> b!1601453 (= (list!6823 (singletonSeq!1449 (apply!4348 (charsOf!1734 (h!22927 (t!146301 (t!146301 tokens!457)))) 0))) (Cons!17524 (head!3265 (list!6823 lt!569069)) Nil!17524))))

(declare-fun lt!569060 () Unit!27905)

(declare-fun Unit!27936 () Unit!27905)

(assert (=> b!1601453 (= lt!569060 Unit!27936)))

(declare-fun head!3269 (BalanceConc!11580) C!9000)

(assert (=> b!1601453 (= (list!6823 (singletonSeq!1449 (apply!4348 (charsOf!1734 (h!22927 (t!146301 (t!146301 tokens!457)))) 0))) (Cons!17524 (head!3269 lt!569069) Nil!17524))))

(declare-fun lt!569067 () Unit!27905)

(declare-fun Unit!27937 () Unit!27905)

(assert (=> b!1601453 (= lt!569067 Unit!27937)))

(assert (=> b!1601453 (isDefined!2541 (maxPrefix!1278 thiss!17113 rules!1846 (originalCharacters!3899 (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!569074 () Unit!27905)

(declare-fun Unit!27938 () Unit!27905)

(assert (=> b!1601453 (= lt!569074 Unit!27938)))

(assert (=> b!1601453 (isDefined!2541 (maxPrefix!1278 thiss!17113 rules!1846 (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457))))))))

(declare-fun lt!569065 () Unit!27905)

(declare-fun Unit!27939 () Unit!27905)

(assert (=> b!1601453 (= lt!569065 Unit!27939)))

(declare-fun lt!569058 () Unit!27905)

(declare-fun Unit!27940 () Unit!27905)

(assert (=> b!1601453 (= lt!569058 Unit!27940)))

(assert (=> b!1601453 (= (_1!9909 (get!5021 (maxPrefix!1278 thiss!17113 rules!1846 (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457))))))) (h!22927 (t!146301 tokens!457)))))

(declare-fun lt!569056 () Unit!27905)

(declare-fun Unit!27941 () Unit!27905)

(assert (=> b!1601453 (= lt!569056 Unit!27941)))

(assert (=> b!1601453 (isEmpty!10565 (_2!9909 (get!5021 (maxPrefix!1278 thiss!17113 rules!1846 (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457))))))))))

(declare-fun lt!569061 () Unit!27905)

(declare-fun Unit!27942 () Unit!27905)

(assert (=> b!1601453 (= lt!569061 Unit!27942)))

(assert (=> b!1601453 (matchR!1932 (regex!3085 (rule!4899 (h!22927 (t!146301 tokens!457)))) (list!6823 (charsOf!1734 (h!22927 (t!146301 tokens!457)))))))

(declare-fun lt!569062 () Unit!27905)

(declare-fun Unit!27943 () Unit!27905)

(assert (=> b!1601453 (= lt!569062 Unit!27943)))

(assert (=> b!1601453 (= (rule!4899 (h!22927 (t!146301 tokens!457))) (rule!4899 (h!22927 (t!146301 tokens!457))))))

(declare-fun lt!569076 () Unit!27905)

(declare-fun Unit!27944 () Unit!27905)

(assert (=> b!1601453 (= lt!569076 Unit!27944)))

(declare-fun lt!569052 () Unit!27905)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!82 (LexerInterface!2714 List!17595 Token!5736 Rule!5970 List!17594) Unit!27905)

(assert (=> b!1601453 (= lt!569052 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!82 thiss!17113 rules!1846 (h!22927 (t!146301 tokens!457)) (rule!4899 (h!22927 (t!146301 tokens!457))) (list!6823 lt!569069)))))

(declare-fun b!1601454 () Bool)

(assert (=> b!1601454 (= e!1027767 (isEmpty!10567 (_2!9908 (lex!1198 thiss!17113 rules!1846 (print!1245 thiss!17113 (seqFromList!1920 (t!146301 tokens!457)))))))))

(assert (= (and d!479617 c!260365) b!1601452))

(assert (= (and d!479617 (not c!260365)) b!1601453))

(assert (= (and d!479617 res!714207) b!1601454))

(declare-fun m!1907193 () Bool)

(assert (=> d!479617 m!1907193))

(assert (=> d!479617 m!1906245))

(declare-fun m!1907195 () Bool)

(assert (=> d!479617 m!1907195))

(assert (=> d!479617 m!1906245))

(assert (=> d!479617 m!1906161))

(assert (=> d!479617 m!1907195))

(declare-fun m!1907197 () Bool)

(assert (=> d!479617 m!1907197))

(declare-fun m!1907199 () Bool)

(assert (=> b!1601453 m!1907199))

(declare-fun m!1907201 () Bool)

(assert (=> b!1601453 m!1907201))

(declare-fun m!1907203 () Bool)

(assert (=> b!1601453 m!1907203))

(declare-fun m!1907205 () Bool)

(assert (=> b!1601453 m!1907205))

(declare-fun m!1907207 () Bool)

(assert (=> b!1601453 m!1907207))

(declare-fun m!1907209 () Bool)

(assert (=> b!1601453 m!1907209))

(declare-fun m!1907211 () Bool)

(assert (=> b!1601453 m!1907211))

(assert (=> b!1601453 m!1906209))

(declare-fun m!1907213 () Bool)

(assert (=> b!1601453 m!1907213))

(declare-fun m!1907215 () Bool)

(assert (=> b!1601453 m!1907215))

(assert (=> b!1601453 m!1907201))

(declare-fun m!1907217 () Bool)

(assert (=> b!1601453 m!1907217))

(declare-fun m!1907219 () Bool)

(assert (=> b!1601453 m!1907219))

(declare-fun m!1907221 () Bool)

(assert (=> b!1601453 m!1907221))

(assert (=> b!1601453 m!1907217))

(declare-fun m!1907223 () Bool)

(assert (=> b!1601453 m!1907223))

(declare-fun m!1907225 () Bool)

(assert (=> b!1601453 m!1907225))

(assert (=> b!1601453 m!1907219))

(declare-fun m!1907227 () Bool)

(assert (=> b!1601453 m!1907227))

(declare-fun m!1907229 () Bool)

(assert (=> b!1601453 m!1907229))

(assert (=> b!1601453 m!1907213))

(assert (=> b!1601453 m!1907205))

(declare-fun m!1907231 () Bool)

(assert (=> b!1601453 m!1907231))

(declare-fun m!1907233 () Bool)

(assert (=> b!1601453 m!1907233))

(declare-fun m!1907235 () Bool)

(assert (=> b!1601453 m!1907235))

(assert (=> b!1601453 m!1906245))

(assert (=> b!1601453 m!1907195))

(declare-fun m!1907237 () Bool)

(assert (=> b!1601453 m!1907237))

(assert (=> b!1601453 m!1906209))

(assert (=> b!1601453 m!1906245))

(assert (=> b!1601453 m!1907205))

(declare-fun m!1907239 () Bool)

(assert (=> b!1601453 m!1907239))

(assert (=> b!1601453 m!1906167))

(assert (=> b!1601453 m!1907223))

(declare-fun m!1907241 () Bool)

(assert (=> b!1601453 m!1907241))

(declare-fun m!1907243 () Bool)

(assert (=> b!1601453 m!1907243))

(declare-fun m!1907245 () Bool)

(assert (=> b!1601453 m!1907245))

(assert (=> b!1601453 m!1907209))

(assert (=> b!1601453 m!1907209))

(declare-fun m!1907247 () Bool)

(assert (=> b!1601453 m!1907247))

(assert (=> b!1601453 m!1907213))

(assert (=> b!1601453 m!1907223))

(assert (=> b!1601453 m!1907243))

(declare-fun m!1907249 () Bool)

(assert (=> b!1601453 m!1907249))

(assert (=> b!1601453 m!1907221))

(declare-fun m!1907251 () Bool)

(assert (=> b!1601453 m!1907251))

(assert (=> b!1601453 m!1907205))

(declare-fun m!1907253 () Bool)

(assert (=> b!1601453 m!1907253))

(assert (=> b!1601453 m!1906167))

(declare-fun m!1907255 () Bool)

(assert (=> b!1601453 m!1907255))

(assert (=> b!1601453 m!1907251))

(declare-fun m!1907257 () Bool)

(assert (=> b!1601453 m!1907257))

(assert (=> b!1601453 m!1907239))

(declare-fun m!1907259 () Bool)

(assert (=> b!1601453 m!1907259))

(declare-fun m!1907261 () Bool)

(assert (=> b!1601453 m!1907261))

(assert (=> b!1601453 m!1907257))

(declare-fun m!1907263 () Bool)

(assert (=> b!1601453 m!1907263))

(assert (=> b!1601453 m!1907213))

(declare-fun m!1907265 () Bool)

(assert (=> b!1601453 m!1907265))

(assert (=> b!1601454 m!1906245))

(assert (=> b!1601454 m!1906245))

(assert (=> b!1601454 m!1907195))

(assert (=> b!1601454 m!1907195))

(assert (=> b!1601454 m!1907197))

(declare-fun m!1907267 () Bool)

(assert (=> b!1601454 m!1907267))

(assert (=> b!1600999 d!479617))

(declare-fun b!1601464 () Bool)

(declare-fun res!714219 () Bool)

(declare-fun e!1027777 () Bool)

(assert (=> b!1601464 (=> (not res!714219) (not e!1027777))))

(assert (=> b!1601464 (= res!714219 (= (head!3265 lt!568523) (head!3265 lt!568527)))))

(declare-fun b!1601463 () Bool)

(declare-fun e!1027776 () Bool)

(assert (=> b!1601463 (= e!1027776 e!1027777)))

(declare-fun res!714218 () Bool)

(assert (=> b!1601463 (=> (not res!714218) (not e!1027777))))

(assert (=> b!1601463 (= res!714218 (not ((_ is Nil!17524) lt!568527)))))

(declare-fun b!1601465 () Bool)

(assert (=> b!1601465 (= e!1027777 (isPrefix!1345 (tail!2303 lt!568523) (tail!2303 lt!568527)))))

(declare-fun d!479625 () Bool)

(declare-fun e!1027775 () Bool)

(assert (=> d!479625 e!1027775))

(declare-fun res!714217 () Bool)

(assert (=> d!479625 (=> res!714217 e!1027775)))

(declare-fun lt!569079 () Bool)

(assert (=> d!479625 (= res!714217 (not lt!569079))))

(assert (=> d!479625 (= lt!569079 e!1027776)))

(declare-fun res!714216 () Bool)

(assert (=> d!479625 (=> res!714216 e!1027776)))

(assert (=> d!479625 (= res!714216 ((_ is Nil!17524) lt!568523))))

(assert (=> d!479625 (= (isPrefix!1345 lt!568523 lt!568527) lt!569079)))

(declare-fun b!1601466 () Bool)

(assert (=> b!1601466 (= e!1027775 (>= (size!14110 lt!568527) (size!14110 lt!568523)))))

(assert (= (and d!479625 (not res!714216)) b!1601463))

(assert (= (and b!1601463 res!714218) b!1601464))

(assert (= (and b!1601464 res!714219) b!1601465))

(assert (= (and d!479625 (not res!714217)) b!1601466))

(declare-fun m!1907269 () Bool)

(assert (=> b!1601464 m!1907269))

(declare-fun m!1907271 () Bool)

(assert (=> b!1601464 m!1907271))

(declare-fun m!1907273 () Bool)

(assert (=> b!1601465 m!1907273))

(declare-fun m!1907275 () Bool)

(assert (=> b!1601465 m!1907275))

(assert (=> b!1601465 m!1907273))

(assert (=> b!1601465 m!1907275))

(declare-fun m!1907277 () Bool)

(assert (=> b!1601465 m!1907277))

(declare-fun m!1907279 () Bool)

(assert (=> b!1601466 m!1907279))

(assert (=> b!1601466 m!1906413))

(assert (=> b!1600999 d!479625))

(declare-fun d!479627 () Bool)

(assert (=> d!479627 (isPrefix!1345 lt!568523 (++!4593 lt!568523 lt!568513))))

(declare-fun lt!569082 () Unit!27905)

(declare-fun choose!9624 (List!17594 List!17594) Unit!27905)

(assert (=> d!479627 (= lt!569082 (choose!9624 lt!568523 lt!568513))))

(assert (=> d!479627 (= (lemmaConcatTwoListThenFirstIsPrefix!870 lt!568523 lt!568513) lt!569082)))

(declare-fun bs!392865 () Bool)

(assert (= bs!392865 d!479627))

(assert (=> bs!392865 m!1906251))

(assert (=> bs!392865 m!1906251))

(declare-fun m!1907281 () Bool)

(assert (=> bs!392865 m!1907281))

(declare-fun m!1907283 () Bool)

(assert (=> bs!392865 m!1907283))

(assert (=> b!1600999 d!479627))

(declare-fun b!1601471 () Bool)

(declare-fun e!1027780 () Bool)

(declare-fun tp_is_empty!7225 () Bool)

(declare-fun tp!468611 () Bool)

(assert (=> b!1601471 (= e!1027780 (and tp_is_empty!7225 tp!468611))))

(assert (=> b!1600989 (= tp!468546 e!1027780)))

(assert (= (and b!1600989 ((_ is Cons!17524) (originalCharacters!3899 (h!22927 tokens!457)))) b!1601471))

(declare-fun b!1601484 () Bool)

(declare-fun e!1027783 () Bool)

(declare-fun tp!468623 () Bool)

(assert (=> b!1601484 (= e!1027783 tp!468623)))

(assert (=> b!1600990 (= tp!468549 e!1027783)))

(declare-fun b!1601483 () Bool)

(declare-fun tp!468624 () Bool)

(declare-fun tp!468622 () Bool)

(assert (=> b!1601483 (= e!1027783 (and tp!468624 tp!468622))))

(declare-fun b!1601482 () Bool)

(assert (=> b!1601482 (= e!1027783 tp_is_empty!7225)))

(declare-fun b!1601485 () Bool)

(declare-fun tp!468626 () Bool)

(declare-fun tp!468625 () Bool)

(assert (=> b!1601485 (= e!1027783 (and tp!468626 tp!468625))))

(assert (= (and b!1600990 ((_ is ElementMatch!4413) (regex!3085 (h!22926 rules!1846)))) b!1601482))

(assert (= (and b!1600990 ((_ is Concat!7589) (regex!3085 (h!22926 rules!1846)))) b!1601483))

(assert (= (and b!1600990 ((_ is Star!4413) (regex!3085 (h!22926 rules!1846)))) b!1601484))

(assert (= (and b!1600990 ((_ is Union!4413) (regex!3085 (h!22926 rules!1846)))) b!1601485))

(declare-fun b!1601496 () Bool)

(declare-fun b_free!43159 () Bool)

(declare-fun b_next!43863 () Bool)

(assert (=> b!1601496 (= b_free!43159 (not b_next!43863))))

(declare-fun tp!468635 () Bool)

(declare-fun b_and!112925 () Bool)

(assert (=> b!1601496 (= tp!468635 b_and!112925)))

(declare-fun b_free!43161 () Bool)

(declare-fun b_next!43865 () Bool)

(assert (=> b!1601496 (= b_free!43161 (not b_next!43865))))

(declare-fun tb!91151 () Bool)

(declare-fun t!146340 () Bool)

(assert (=> (and b!1601496 (= (toChars!4363 (transformation!3085 (h!22926 (t!146300 rules!1846)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457))))) t!146340) tb!91151))

(declare-fun result!110092 () Bool)

(assert (= result!110092 result!110060))

(assert (=> d!479533 t!146340))

(declare-fun tb!91153 () Bool)

(declare-fun t!146342 () Bool)

(assert (=> (and b!1601496 (= (toChars!4363 (transformation!3085 (h!22926 (t!146300 rules!1846)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457)))))) t!146342) tb!91153))

(declare-fun result!110094 () Bool)

(assert (= result!110094 result!110066))

(assert (=> d!479597 t!146342))

(assert (=> b!1601360 t!146340))

(declare-fun tp!468636 () Bool)

(declare-fun b_and!112927 () Bool)

(assert (=> b!1601496 (= tp!468636 (and (=> t!146340 result!110092) (=> t!146342 result!110094) b_and!112927))))

(declare-fun e!1027792 () Bool)

(assert (=> b!1601496 (= e!1027792 (and tp!468635 tp!468636))))

(declare-fun b!1601495 () Bool)

(declare-fun e!1027793 () Bool)

(declare-fun tp!468638 () Bool)

(assert (=> b!1601495 (= e!1027793 (and tp!468638 (inv!22937 (tag!3359 (h!22926 (t!146300 rules!1846)))) (inv!22941 (transformation!3085 (h!22926 (t!146300 rules!1846)))) e!1027792))))

(declare-fun b!1601494 () Bool)

(declare-fun e!1027794 () Bool)

(declare-fun tp!468637 () Bool)

(assert (=> b!1601494 (= e!1027794 (and e!1027793 tp!468637))))

(assert (=> b!1600986 (= tp!468548 e!1027794)))

(assert (= b!1601495 b!1601496))

(assert (= b!1601494 b!1601495))

(assert (= (and b!1600986 ((_ is Cons!17525) (t!146300 rules!1846))) b!1601494))

(declare-fun m!1907285 () Bool)

(assert (=> b!1601495 m!1907285))

(declare-fun m!1907287 () Bool)

(assert (=> b!1601495 m!1907287))

(declare-fun b!1601499 () Bool)

(declare-fun e!1027796 () Bool)

(declare-fun tp!468640 () Bool)

(assert (=> b!1601499 (= e!1027796 tp!468640)))

(assert (=> b!1600987 (= tp!468550 e!1027796)))

(declare-fun b!1601498 () Bool)

(declare-fun tp!468641 () Bool)

(declare-fun tp!468639 () Bool)

(assert (=> b!1601498 (= e!1027796 (and tp!468641 tp!468639))))

(declare-fun b!1601497 () Bool)

(assert (=> b!1601497 (= e!1027796 tp_is_empty!7225)))

(declare-fun b!1601500 () Bool)

(declare-fun tp!468643 () Bool)

(declare-fun tp!468642 () Bool)

(assert (=> b!1601500 (= e!1027796 (and tp!468643 tp!468642))))

(assert (= (and b!1600987 ((_ is ElementMatch!4413) (regex!3085 (rule!4899 (h!22927 tokens!457))))) b!1601497))

(assert (= (and b!1600987 ((_ is Concat!7589) (regex!3085 (rule!4899 (h!22927 tokens!457))))) b!1601498))

(assert (= (and b!1600987 ((_ is Star!4413) (regex!3085 (rule!4899 (h!22927 tokens!457))))) b!1601499))

(assert (= (and b!1600987 ((_ is Union!4413) (regex!3085 (rule!4899 (h!22927 tokens!457))))) b!1601500))

(declare-fun b!1601514 () Bool)

(declare-fun b_free!43163 () Bool)

(declare-fun b_next!43867 () Bool)

(assert (=> b!1601514 (= b_free!43163 (not b_next!43867))))

(declare-fun tp!468656 () Bool)

(declare-fun b_and!112929 () Bool)

(assert (=> b!1601514 (= tp!468656 b_and!112929)))

(declare-fun b_free!43165 () Bool)

(declare-fun b_next!43869 () Bool)

(assert (=> b!1601514 (= b_free!43165 (not b_next!43869))))

(declare-fun t!146344 () Bool)

(declare-fun tb!91155 () Bool)

(assert (=> (and b!1601514 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457))))) t!146344) tb!91155))

(declare-fun result!110098 () Bool)

(assert (= result!110098 result!110060))

(assert (=> d!479533 t!146344))

(declare-fun t!146346 () Bool)

(declare-fun tb!91157 () Bool)

(assert (=> (and b!1601514 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457)))))) t!146346) tb!91157))

(declare-fun result!110100 () Bool)

(assert (= result!110100 result!110066))

(assert (=> d!479597 t!146346))

(assert (=> b!1601360 t!146344))

(declare-fun b_and!112931 () Bool)

(declare-fun tp!468658 () Bool)

(assert (=> b!1601514 (= tp!468658 (and (=> t!146344 result!110098) (=> t!146346 result!110100) b_and!112931))))

(declare-fun e!1027812 () Bool)

(declare-fun e!1027809 () Bool)

(declare-fun b!1601513 () Bool)

(declare-fun tp!468655 () Bool)

(assert (=> b!1601513 (= e!1027809 (and tp!468655 (inv!22937 (tag!3359 (rule!4899 (h!22927 (t!146301 tokens!457))))) (inv!22941 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) e!1027812))))

(declare-fun e!1027814 () Bool)

(declare-fun tp!468654 () Bool)

(declare-fun b!1601512 () Bool)

(assert (=> b!1601512 (= e!1027814 (and (inv!21 (value!97595 (h!22927 (t!146301 tokens!457)))) e!1027809 tp!468654))))

(declare-fun e!1027810 () Bool)

(declare-fun b!1601511 () Bool)

(declare-fun tp!468657 () Bool)

(assert (=> b!1601511 (= e!1027810 (and (inv!22940 (h!22927 (t!146301 tokens!457))) e!1027814 tp!468657))))

(assert (=> b!1601514 (= e!1027812 (and tp!468656 tp!468658))))

(assert (=> b!1600978 (= tp!468545 e!1027810)))

(assert (= b!1601513 b!1601514))

(assert (= b!1601512 b!1601513))

(assert (= b!1601511 b!1601512))

(assert (= (and b!1600978 ((_ is Cons!17526) (t!146301 tokens!457))) b!1601511))

(declare-fun m!1907289 () Bool)

(assert (=> b!1601513 m!1907289))

(declare-fun m!1907291 () Bool)

(assert (=> b!1601513 m!1907291))

(declare-fun m!1907293 () Bool)

(assert (=> b!1601512 m!1907293))

(declare-fun m!1907295 () Bool)

(assert (=> b!1601511 m!1907295))

(declare-fun b_lambda!50475 () Bool)

(assert (= b_lambda!50467 (or (and b!1600992 b_free!43145 (= (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) (and b!1600998 b_free!43149) (and b!1601496 b_free!43161 (= (toChars!4363 (transformation!3085 (h!22926 (t!146300 rules!1846)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) (and b!1601514 b_free!43165 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) b_lambda!50475)))

(declare-fun b_lambda!50477 () Bool)

(assert (= b_lambda!50461 (or (and b!1600992 b_free!43145 (= (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) (and b!1600998 b_free!43149) (and b!1601496 b_free!43161 (= (toChars!4363 (transformation!3085 (h!22926 (t!146300 rules!1846)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) (and b!1601514 b_free!43165 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))))) b_lambda!50477)))

(declare-fun b_lambda!50479 () Bool)

(assert (= b_lambda!50465 (or (and b!1600992 b_free!43145 (= (toChars!4363 (transformation!3085 (h!22926 rules!1846))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))))) (and b!1600998 b_free!43149 (= (toChars!4363 (transformation!3085 (rule!4899 (h!22927 tokens!457)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))))) (and b!1601496 b_free!43161 (= (toChars!4363 (transformation!3085 (h!22926 (t!146300 rules!1846)))) (toChars!4363 (transformation!3085 (rule!4899 (h!22927 (t!146301 tokens!457))))))) (and b!1601514 b_free!43165) b_lambda!50479)))

(check-sat (not d!479545) (not b!1601010) (not b!1601196) (not d!479543) (not d!479529) (not b!1601494) (not b!1601258) (not b!1601255) (not b!1601453) (not b!1601361) (not d!479421) b_and!112929 (not b!1601021) (not b!1601337) b_and!112885 (not b!1601483) (not b!1601511) (not d!479451) (not b!1601158) (not b_next!43853) (not b!1601226) (not b!1601279) b_and!112889 (not b_next!43869) (not bm!103952) (not d!479495) (not d!479609) (not b!1601028) (not d!479499) (not b!1601349) (not b!1601263) (not d!479553) (not d!479515) (not d!479491) (not b!1601465) (not b_next!43867) b_and!112915 (not b!1601117) (not d!479561) (not d!479493) (not b!1601161) (not b!1601500) (not tb!91139) (not d!479487) (not d!479527) (not b!1601097) (not b!1601087) (not b!1601175) (not d!479617) (not d!479605) (not b!1601022) (not b!1601276) b_and!112931 (not b_lambda!50479) (not b!1601227) (not b!1601454) (not tb!91135) (not b!1601355) (not d!479455) b_and!112925 (not b!1601513) (not d!479611) (not b!1601088) (not b!1601334) (not b!1601512) (not d!479607) (not d!479595) (not b!1601485) (not b!1601338) (not b!1601159) (not b!1601498) (not b!1601495) (not b!1601157) (not d!479463) (not b!1601312) (not b!1601106) (not d!479603) (not b_next!43865) (not b_next!43851) (not b!1601225) (not b!1601189) (not b_next!43849) (not d!479517) (not b!1601256) (not d!479615) (not d!479613) (not b!1601009) (not b!1601333) (not b!1601199) (not d!479549) (not d!479479) (not b!1601348) (not b!1601466) (not b!1601336) (not b!1601353) (not d!479497) (not b!1601351) (not d!479539) (not b!1601335) (not b_next!43847) (not b!1601177) (not b!1601360) (not b!1601347) (not b!1601254) (not d!479601) tp_is_empty!7225 (not b!1601154) (not d!479425) (not b!1601156) (not d!479551) (not b!1601153) (not b!1601352) (not b!1601300) (not b!1601264) (not d!479533) (not b!1601118) (not b!1601471) (not b_lambda!50475) (not b!1601024) (not d!479501) (not d!479593) (not b!1601484) (not d!479453) (not d!479627) b_and!112913 (not b_lambda!50477) (not b_next!43863) (not d!479547) (not b!1601107) (not d!479457) b_and!112927 (not d!479531) (not d!479465) (not b!1601155) (not b!1601464) (not d!479597) (not d!479557) (not b!1601499) (not d!479559))
(check-sat (not b_next!43869) b_and!112931 b_and!112925 (not b_next!43847) b_and!112927 b_and!112929 b_and!112885 (not b_next!43853) b_and!112889 (not b_next!43867) b_and!112915 (not b_next!43865) (not b_next!43851) (not b_next!43849) b_and!112913 (not b_next!43863))
