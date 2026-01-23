; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154650 () Bool)

(assert start!154650)

(declare-fun b!1626009 () Bool)

(declare-fun b_free!43879 () Bool)

(declare-fun b_next!44583 () Bool)

(assert (=> b!1626009 (= b_free!43879 (not b_next!44583))))

(declare-fun tp!472808 () Bool)

(declare-fun b_and!115301 () Bool)

(assert (=> b!1626009 (= tp!472808 b_and!115301)))

(declare-fun b_free!43881 () Bool)

(declare-fun b_next!44585 () Bool)

(assert (=> b!1626009 (= b_free!43881 (not b_next!44585))))

(declare-fun tp!472810 () Bool)

(declare-fun b_and!115303 () Bool)

(assert (=> b!1626009 (= tp!472810 b_and!115303)))

(declare-fun b!1625992 () Bool)

(declare-fun b_free!43883 () Bool)

(declare-fun b_next!44587 () Bool)

(assert (=> b!1625992 (= b_free!43883 (not b_next!44587))))

(declare-fun tp!472811 () Bool)

(declare-fun b_and!115305 () Bool)

(assert (=> b!1625992 (= tp!472811 b_and!115305)))

(declare-fun b_free!43885 () Bool)

(declare-fun b_next!44589 () Bool)

(assert (=> b!1625992 (= b_free!43885 (not b_next!44589))))

(declare-fun tp!472813 () Bool)

(declare-fun b_and!115307 () Bool)

(assert (=> b!1625992 (= tp!472813 b_and!115307)))

(declare-fun b!1625991 () Bool)

(declare-fun res!726969 () Bool)

(declare-fun e!1042908 () Bool)

(assert (=> b!1625991 (=> (not res!726969) (not e!1042908))))

(declare-datatypes ((List!17907 0))(
  ( (Nil!17837) (Cons!17837 (h!23238 (_ BitVec 16)) (t!149040 List!17907)) )
))
(declare-datatypes ((TokenValue!3231 0))(
  ( (FloatLiteralValue!6462 (text!23062 List!17907)) (TokenValueExt!3230 (__x!11764 Int)) (Broken!16155 (value!99165 List!17907)) (Object!3300) (End!3231) (Def!3231) (Underscore!3231) (Match!3231) (Else!3231) (Error!3231) (Case!3231) (If!3231) (Extends!3231) (Abstract!3231) (Class!3231) (Val!3231) (DelimiterValue!6462 (del!3291 List!17907)) (KeywordValue!3237 (value!99166 List!17907)) (CommentValue!6462 (value!99167 List!17907)) (WhitespaceValue!6462 (value!99168 List!17907)) (IndentationValue!3231 (value!99169 List!17907)) (String!20486) (Int32!3231) (Broken!16156 (value!99170 List!17907)) (Boolean!3232) (Unit!28910) (OperatorValue!3234 (op!3291 List!17907)) (IdentifierValue!6462 (value!99171 List!17907)) (IdentifierValue!6463 (value!99172 List!17907)) (WhitespaceValue!6463 (value!99173 List!17907)) (True!6462) (False!6462) (Broken!16157 (value!99174 List!17907)) (Broken!16158 (value!99175 List!17907)) (True!6463) (RightBrace!3231) (RightBracket!3231) (Colon!3231) (Null!3231) (Comma!3231) (LeftBracket!3231) (False!6463) (LeftBrace!3231) (ImaginaryLiteralValue!3231 (text!23063 List!17907)) (StringLiteralValue!9693 (value!99176 List!17907)) (EOFValue!3231 (value!99177 List!17907)) (IdentValue!3231 (value!99178 List!17907)) (DelimiterValue!6463 (value!99179 List!17907)) (DedentValue!3231 (value!99180 List!17907)) (NewLineValue!3231 (value!99181 List!17907)) (IntegerValue!9693 (value!99182 (_ BitVec 32)) (text!23064 List!17907)) (IntegerValue!9694 (value!99183 Int) (text!23065 List!17907)) (Times!3231) (Or!3231) (Equal!3231) (Minus!3231) (Broken!16159 (value!99184 List!17907)) (And!3231) (Div!3231) (LessEqual!3231) (Mod!3231) (Concat!7700) (Not!3231) (Plus!3231) (SpaceValue!3231 (value!99185 List!17907)) (IntegerValue!9695 (value!99186 Int) (text!23066 List!17907)) (StringLiteralValue!9694 (text!23067 List!17907)) (FloatLiteralValue!6463 (text!23068 List!17907)) (BytesLiteralValue!3231 (value!99187 List!17907)) (CommentValue!6463 (value!99188 List!17907)) (StringLiteralValue!9695 (value!99189 List!17907)) (ErrorTokenValue!3231 (msg!3292 List!17907)) )
))
(declare-datatypes ((C!9112 0))(
  ( (C!9113 (val!5152 Int)) )
))
(declare-datatypes ((List!17908 0))(
  ( (Nil!17838) (Cons!17838 (h!23239 C!9112) (t!149041 List!17908)) )
))
(declare-datatypes ((IArray!11865 0))(
  ( (IArray!11866 (innerList!5990 List!17908)) )
))
(declare-datatypes ((Conc!5930 0))(
  ( (Node!5930 (left!14338 Conc!5930) (right!14668 Conc!5930) (csize!12090 Int) (cheight!6141 Int)) (Leaf!8721 (xs!8762 IArray!11865) (csize!12091 Int)) (Empty!5930) )
))
(declare-datatypes ((BalanceConc!11804 0))(
  ( (BalanceConc!11805 (c!264607 Conc!5930)) )
))
(declare-datatypes ((String!20487 0))(
  ( (String!20488 (value!99190 String)) )
))
(declare-datatypes ((Regex!4469 0))(
  ( (ElementMatch!4469 (c!264608 C!9112)) (Concat!7701 (regOne!9450 Regex!4469) (regTwo!9450 Regex!4469)) (EmptyExpr!4469) (Star!4469 (reg!4798 Regex!4469)) (EmptyLang!4469) (Union!4469 (regOne!9451 Regex!4469) (regTwo!9451 Regex!4469)) )
))
(declare-datatypes ((TokenValueInjection!6122 0))(
  ( (TokenValueInjection!6123 (toValue!4568 Int) (toChars!4427 Int)) )
))
(declare-datatypes ((Rule!6082 0))(
  ( (Rule!6083 (regex!3141 Regex!4469) (tag!3419 String!20487) (isSeparator!3141 Bool) (transformation!3141 TokenValueInjection!6122)) )
))
(declare-datatypes ((List!17909 0))(
  ( (Nil!17839) (Cons!17839 (h!23240 Rule!6082) (t!149042 List!17909)) )
))
(declare-fun rules!1846 () List!17909)

(declare-datatypes ((LexerInterface!2770 0))(
  ( (LexerInterfaceExt!2767 (__x!11765 Int)) (Lexer!2768) )
))
(declare-fun thiss!17113 () LexerInterface!2770)

(declare-datatypes ((Token!5848 0))(
  ( (Token!5849 (value!99191 TokenValue!3231) (rule!4967 Rule!6082) (size!14274 Int) (originalCharacters!3955 List!17908)) )
))
(declare-datatypes ((List!17910 0))(
  ( (Nil!17840) (Cons!17840 (h!23241 Token!5848) (t!149043 List!17910)) )
))
(declare-fun tokens!457 () List!17910)

(declare-fun tokensListTwoByTwoPredicateSeparableList!463 (LexerInterface!2770 List!17910 List!17909) Bool)

(assert (=> b!1625991 (= res!726969 (tokensListTwoByTwoPredicateSeparableList!463 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1042918 () Bool)

(assert (=> b!1625992 (= e!1042918 (and tp!472811 tp!472813))))

(declare-fun b!1625993 () Bool)

(declare-fun e!1042916 () Bool)

(declare-fun e!1042903 () Bool)

(assert (=> b!1625993 (= e!1042916 (not e!1042903))))

(declare-fun res!726971 () Bool)

(assert (=> b!1625993 (=> res!726971 e!1042903)))

(declare-fun lt!587658 () List!17910)

(assert (=> b!1625993 (= res!726971 (not (= lt!587658 (t!149043 tokens!457))))))

(declare-datatypes ((IArray!11867 0))(
  ( (IArray!11868 (innerList!5991 List!17910)) )
))
(declare-datatypes ((Conc!5931 0))(
  ( (Node!5931 (left!14339 Conc!5931) (right!14669 Conc!5931) (csize!12092 Int) (cheight!6142 Int)) (Leaf!8722 (xs!8763 IArray!11867) (csize!12093 Int)) (Empty!5931) )
))
(declare-datatypes ((BalanceConc!11806 0))(
  ( (BalanceConc!11807 (c!264609 Conc!5931)) )
))
(declare-datatypes ((tuple2!17406 0))(
  ( (tuple2!17407 (_1!10105 BalanceConc!11806) (_2!10105 BalanceConc!11804)) )
))
(declare-fun lt!587650 () tuple2!17406)

(declare-fun list!7003 (BalanceConc!11806) List!17910)

(assert (=> b!1625993 (= lt!587658 (list!7003 (_1!10105 lt!587650)))))

(declare-datatypes ((Unit!28911 0))(
  ( (Unit!28912) )
))
(declare-fun lt!587661 () Unit!28911)

(declare-fun theoremInvertabilityWhenTokenListSeparable!215 (LexerInterface!2770 List!17909 List!17910) Unit!28911)

(assert (=> b!1625993 (= lt!587661 (theoremInvertabilityWhenTokenListSeparable!215 thiss!17113 rules!1846 (t!149043 tokens!457)))))

(declare-fun lt!587664 () List!17908)

(declare-fun lt!587646 () List!17908)

(declare-fun isPrefix!1401 (List!17908 List!17908) Bool)

(assert (=> b!1625993 (isPrefix!1401 lt!587664 lt!587646)))

(declare-fun lt!587647 () Unit!28911)

(declare-fun lt!587654 () List!17908)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!926 (List!17908 List!17908) Unit!28911)

(assert (=> b!1625993 (= lt!587647 (lemmaConcatTwoListThenFirstIsPrefix!926 lt!587664 lt!587654))))

(declare-fun b!1625994 () Bool)

(declare-fun res!726964 () Bool)

(assert (=> b!1625994 (=> (not res!726964) (not e!1042908))))

(declare-fun isEmpty!10869 (List!17909) Bool)

(assert (=> b!1625994 (= res!726964 (not (isEmpty!10869 rules!1846)))))

(declare-fun b!1625995 () Bool)

(declare-fun e!1042905 () Bool)

(declare-fun e!1042915 () Bool)

(assert (=> b!1625995 (= e!1042905 e!1042915)))

(declare-fun res!726960 () Bool)

(assert (=> b!1625995 (=> res!726960 e!1042915)))

(declare-fun lt!587657 () List!17908)

(declare-fun lt!587643 () Regex!4469)

(declare-fun prefixMatch!404 (Regex!4469 List!17908) Bool)

(declare-fun ++!4743 (List!17908 List!17908) List!17908)

(assert (=> b!1625995 (= res!726960 (prefixMatch!404 lt!587643 (++!4743 (originalCharacters!3955 (h!23241 tokens!457)) lt!587657)))))

(declare-fun e!1042909 () Bool)

(assert (=> b!1625995 e!1042909))

(declare-fun res!726955 () Bool)

(assert (=> b!1625995 (=> (not res!726955) (not e!1042909))))

(declare-datatypes ((tuple2!17408 0))(
  ( (tuple2!17409 (_1!10106 Token!5848) (_2!10106 List!17908)) )
))
(declare-fun lt!587642 () tuple2!17408)

(assert (=> b!1625995 (= res!726955 (= (_1!10106 lt!587642) (h!23241 tokens!457)))))

(declare-datatypes ((Option!3307 0))(
  ( (None!3306) (Some!3306 (v!24349 tuple2!17408)) )
))
(declare-fun lt!587641 () Option!3307)

(declare-fun get!5144 (Option!3307) tuple2!17408)

(assert (=> b!1625995 (= lt!587642 (get!5144 lt!587641))))

(declare-fun isDefined!2674 (Option!3307) Bool)

(assert (=> b!1625995 (isDefined!2674 lt!587641)))

(declare-fun maxPrefix!1334 (LexerInterface!2770 List!17909 List!17908) Option!3307)

(assert (=> b!1625995 (= lt!587641 (maxPrefix!1334 thiss!17113 rules!1846 lt!587664))))

(assert (=> b!1625995 (isDefined!2674 (maxPrefix!1334 thiss!17113 rules!1846 (originalCharacters!3955 (h!23241 tokens!457))))))

(declare-fun b!1625996 () Bool)

(declare-fun res!726959 () Bool)

(declare-fun e!1042914 () Bool)

(assert (=> b!1625996 (=> res!726959 e!1042914)))

(declare-fun rulesProduceIndividualToken!1422 (LexerInterface!2770 List!17909 Token!5848) Bool)

(assert (=> b!1625996 (= res!726959 (not (rulesProduceIndividualToken!1422 thiss!17113 rules!1846 (h!23241 tokens!457))))))

(declare-fun b!1625997 () Bool)

(declare-fun e!1042904 () Bool)

(assert (=> b!1625997 (= e!1042903 e!1042904)))

(declare-fun res!726973 () Bool)

(assert (=> b!1625997 (=> res!726973 e!1042904)))

(declare-fun lt!587644 () List!17910)

(declare-fun lt!587663 () List!17910)

(assert (=> b!1625997 (= res!726973 (or (not (= lt!587658 lt!587663)) (not (= lt!587663 lt!587644))))))

(declare-fun lt!587651 () BalanceConc!11806)

(assert (=> b!1625997 (= lt!587663 (list!7003 lt!587651))))

(assert (=> b!1625997 (= lt!587658 lt!587644)))

(declare-fun prepend!669 (BalanceConc!11806 Token!5848) BalanceConc!11806)

(declare-fun seqFromList!2031 (List!17910) BalanceConc!11806)

(assert (=> b!1625997 (= lt!587644 (list!7003 (prepend!669 (seqFromList!2031 (t!149043 (t!149043 tokens!457))) (h!23241 (t!149043 tokens!457)))))))

(declare-fun lt!587645 () Unit!28911)

(declare-fun seqFromListBHdTlConstructive!218 (Token!5848 List!17910 BalanceConc!11806) Unit!28911)

(assert (=> b!1625997 (= lt!587645 (seqFromListBHdTlConstructive!218 (h!23241 (t!149043 tokens!457)) (t!149043 (t!149043 tokens!457)) (_1!10105 lt!587650)))))

(declare-fun b!1625998 () Bool)

(declare-fun res!726958 () Bool)

(assert (=> b!1625998 (=> (not res!726958) (not e!1042909))))

(declare-fun isEmpty!10870 (List!17908) Bool)

(assert (=> b!1625998 (= res!726958 (isEmpty!10870 (_2!10106 lt!587642)))))

(declare-fun b!1625999 () Bool)

(declare-fun res!726966 () Bool)

(assert (=> b!1625999 (=> res!726966 e!1042915)))

(assert (=> b!1625999 (= res!726966 (prefixMatch!404 lt!587643 (++!4743 lt!587664 lt!587657)))))

(declare-fun b!1626000 () Bool)

(declare-fun e!1042913 () Bool)

(declare-fun lt!587660 () List!17908)

(declare-fun head!3440 (List!17908) C!9112)

(assert (=> b!1626000 (= e!1042913 (= lt!587660 (Cons!17838 (head!3440 lt!587654) Nil!17838)))))

(declare-fun b!1626001 () Bool)

(assert (=> b!1626001 (= e!1042904 e!1042914)))

(declare-fun res!726974 () Bool)

(assert (=> b!1626001 (=> res!726974 e!1042914)))

(declare-fun lt!587662 () List!17908)

(declare-fun lt!587653 () List!17908)

(assert (=> b!1626001 (= res!726974 (or (not (= lt!587653 lt!587662)) (not (= lt!587662 lt!587664)) (not (= lt!587653 lt!587664))))))

(declare-fun printList!885 (LexerInterface!2770 List!17910) List!17908)

(assert (=> b!1626001 (= lt!587662 (printList!885 thiss!17113 (Cons!17840 (h!23241 tokens!457) Nil!17840)))))

(declare-fun lt!587637 () BalanceConc!11804)

(declare-fun list!7004 (BalanceConc!11804) List!17908)

(assert (=> b!1626001 (= lt!587653 (list!7004 lt!587637))))

(declare-fun lt!587652 () BalanceConc!11806)

(declare-fun printTailRec!823 (LexerInterface!2770 BalanceConc!11806 Int BalanceConc!11804) BalanceConc!11804)

(assert (=> b!1626001 (= lt!587637 (printTailRec!823 thiss!17113 lt!587652 0 (BalanceConc!11805 Empty!5930)))))

(declare-fun print!1301 (LexerInterface!2770 BalanceConc!11806) BalanceConc!11804)

(assert (=> b!1626001 (= lt!587637 (print!1301 thiss!17113 lt!587652))))

(declare-fun singletonSeq!1560 (Token!5848) BalanceConc!11806)

(assert (=> b!1626001 (= lt!587652 (singletonSeq!1560 (h!23241 tokens!457)))))

(declare-fun lt!587648 () List!17908)

(declare-fun lt!587655 () Option!3307)

(assert (=> b!1626001 (= lt!587655 (maxPrefix!1334 thiss!17113 rules!1846 lt!587648))))

(declare-fun b!1626003 () Bool)

(declare-fun e!1042920 () Bool)

(declare-fun e!1042899 () Bool)

(assert (=> b!1626003 (= e!1042920 e!1042899)))

(declare-fun res!726972 () Bool)

(assert (=> b!1626003 (=> res!726972 e!1042899)))

(declare-fun lt!587649 () BalanceConc!11804)

(declare-fun lt!587639 () BalanceConc!11804)

(declare-fun prefixMatchZipperSequence!531 (Regex!4469 BalanceConc!11804) Bool)

(declare-fun ++!4744 (BalanceConc!11804 BalanceConc!11804) BalanceConc!11804)

(assert (=> b!1626003 (= res!726972 (prefixMatchZipperSequence!531 lt!587643 (++!4744 lt!587639 lt!587649)))))

(declare-fun singletonSeq!1561 (C!9112) BalanceConc!11804)

(declare-fun apply!4564 (BalanceConc!11804 Int) C!9112)

(declare-fun charsOf!1790 (Token!5848) BalanceConc!11804)

(assert (=> b!1626003 (= lt!587649 (singletonSeq!1561 (apply!4564 (charsOf!1790 (h!23241 (t!149043 tokens!457))) 0)))))

(declare-fun rulesRegex!531 (LexerInterface!2770 List!17909) Regex!4469)

(assert (=> b!1626003 (= lt!587643 (rulesRegex!531 thiss!17113 rules!1846))))

(declare-fun e!1042900 () Bool)

(declare-fun tp!472814 () Bool)

(declare-fun b!1626004 () Bool)

(declare-fun inv!23211 (String!20487) Bool)

(declare-fun inv!23214 (TokenValueInjection!6122) Bool)

(assert (=> b!1626004 (= e!1042900 (and tp!472814 (inv!23211 (tag!3419 (rule!4967 (h!23241 tokens!457)))) (inv!23214 (transformation!3141 (rule!4967 (h!23241 tokens!457)))) e!1042918))))

(declare-fun b!1626005 () Bool)

(declare-fun e!1042911 () Bool)

(assert (=> b!1626005 (= e!1042899 e!1042911)))

(declare-fun res!726957 () Bool)

(assert (=> b!1626005 (=> res!726957 e!1042911)))

(assert (=> b!1626005 (= res!726957 (prefixMatch!404 lt!587643 (++!4743 lt!587664 lt!587660)))))

(assert (=> b!1626005 (= lt!587660 (list!7004 lt!587649))))

(declare-fun b!1626006 () Bool)

(assert (=> b!1626006 (= e!1042908 e!1042916)))

(declare-fun res!726970 () Bool)

(assert (=> b!1626006 (=> (not res!726970) (not e!1042916))))

(assert (=> b!1626006 (= res!726970 (= lt!587648 lt!587646))))

(assert (=> b!1626006 (= lt!587646 (++!4743 lt!587664 lt!587654))))

(declare-fun lt!587638 () BalanceConc!11804)

(assert (=> b!1626006 (= lt!587648 (list!7004 lt!587638))))

(declare-fun lt!587659 () BalanceConc!11804)

(assert (=> b!1626006 (= lt!587654 (list!7004 lt!587659))))

(assert (=> b!1626006 (= lt!587664 (list!7004 lt!587639))))

(assert (=> b!1626006 (= lt!587639 (charsOf!1790 (h!23241 tokens!457)))))

(declare-fun lex!1254 (LexerInterface!2770 List!17909 BalanceConc!11804) tuple2!17406)

(assert (=> b!1626006 (= lt!587650 (lex!1254 thiss!17113 rules!1846 lt!587659))))

(assert (=> b!1626006 (= lt!587659 (print!1301 thiss!17113 lt!587651))))

(assert (=> b!1626006 (= lt!587651 (seqFromList!2031 (t!149043 tokens!457)))))

(assert (=> b!1626006 (= lt!587638 (print!1301 thiss!17113 (seqFromList!2031 tokens!457)))))

(declare-fun b!1626007 () Bool)

(declare-fun tp!472816 () Bool)

(declare-fun e!1042917 () Bool)

(declare-fun inv!21 (TokenValue!3231) Bool)

(assert (=> b!1626007 (= e!1042917 (and (inv!21 (value!99191 (h!23241 tokens!457))) e!1042900 tp!472816))))

(declare-fun b!1626008 () Bool)

(declare-fun res!726962 () Bool)

(assert (=> b!1626008 (=> (not res!726962) (not e!1042908))))

(declare-fun rulesInvariant!2439 (LexerInterface!2770 List!17909) Bool)

(assert (=> b!1626008 (= res!726962 (rulesInvariant!2439 thiss!17113 rules!1846))))

(declare-fun e!1042901 () Bool)

(assert (=> b!1626009 (= e!1042901 (and tp!472808 tp!472810))))

(declare-fun b!1626010 () Bool)

(declare-fun res!726968 () Bool)

(assert (=> b!1626010 (=> (not res!726968) (not e!1042908))))

(declare-fun rulesProduceEachTokenIndividuallyList!972 (LexerInterface!2770 List!17909 List!17910) Bool)

(assert (=> b!1626010 (= res!726968 (rulesProduceEachTokenIndividuallyList!972 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1626011 () Bool)

(declare-fun res!726954 () Bool)

(assert (=> b!1626011 (=> (not res!726954) (not e!1042908))))

(get-info :version)

(assert (=> b!1626011 (= res!726954 (and (not ((_ is Nil!17840) tokens!457)) (not ((_ is Nil!17840) (t!149043 tokens!457)))))))

(declare-fun b!1626012 () Bool)

(assert (=> b!1626012 (= e!1042911 e!1042905)))

(declare-fun res!726956 () Bool)

(assert (=> b!1626012 (=> res!726956 e!1042905)))

(declare-datatypes ((tuple2!17410 0))(
  ( (tuple2!17411 (_1!10107 Token!5848) (_2!10107 BalanceConc!11804)) )
))
(declare-datatypes ((Option!3308 0))(
  ( (None!3307) (Some!3307 (v!24350 tuple2!17410)) )
))
(declare-fun isDefined!2675 (Option!3308) Bool)

(declare-fun maxPrefixZipperSequence!665 (LexerInterface!2770 List!17909 BalanceConc!11804) Option!3308)

(declare-fun seqFromList!2032 (List!17908) BalanceConc!11804)

(assert (=> b!1626012 (= res!726956 (not (isDefined!2675 (maxPrefixZipperSequence!665 thiss!17113 rules!1846 (seqFromList!2032 (originalCharacters!3955 (h!23241 tokens!457)))))))))

(assert (=> b!1626012 (= lt!587660 lt!587657)))

(declare-fun head!3441 (BalanceConc!11804) C!9112)

(assert (=> b!1626012 (= lt!587657 (Cons!17838 (head!3441 lt!587659) Nil!17838))))

(assert (=> b!1626012 e!1042913))

(declare-fun res!726961 () Bool)

(assert (=> b!1626012 (=> (not res!726961) (not e!1042913))))

(assert (=> b!1626012 (= res!726961 (= lt!587664 (originalCharacters!3955 (h!23241 tokens!457))))))

(declare-fun b!1626013 () Bool)

(declare-fun matchR!1968 (Regex!4469 List!17908) Bool)

(assert (=> b!1626013 (= e!1042909 (matchR!1968 (regex!3141 (rule!4967 (h!23241 tokens!457))) lt!587664))))

(declare-fun b!1626014 () Bool)

(declare-fun e!1042906 () Bool)

(declare-fun tp!472809 () Bool)

(assert (=> b!1626014 (= e!1042906 (and tp!472809 (inv!23211 (tag!3419 (h!23240 rules!1846))) (inv!23214 (transformation!3141 (h!23240 rules!1846))) e!1042901))))

(declare-fun b!1626015 () Bool)

(declare-fun e!1042902 () Bool)

(declare-fun tp!472815 () Bool)

(declare-fun inv!23215 (Token!5848) Bool)

(assert (=> b!1626015 (= e!1042902 (and (inv!23215 (h!23241 tokens!457)) e!1042917 tp!472815))))

(declare-fun res!726975 () Bool)

(assert (=> start!154650 (=> (not res!726975) (not e!1042908))))

(assert (=> start!154650 (= res!726975 ((_ is Lexer!2768) thiss!17113))))

(assert (=> start!154650 e!1042908))

(assert (=> start!154650 true))

(declare-fun e!1042919 () Bool)

(assert (=> start!154650 e!1042919))

(assert (=> start!154650 e!1042902))

(declare-fun b!1626002 () Bool)

(declare-fun tp!472812 () Bool)

(assert (=> b!1626002 (= e!1042919 (and e!1042906 tp!472812))))

(declare-fun b!1626016 () Bool)

(declare-fun res!726963 () Bool)

(assert (=> b!1626016 (=> res!726963 e!1042914)))

(declare-fun isEmpty!10871 (BalanceConc!11806) Bool)

(assert (=> b!1626016 (= res!726963 (isEmpty!10871 (_1!10105 (lex!1254 thiss!17113 rules!1846 (seqFromList!2032 lt!587664)))))))

(declare-fun b!1626017 () Bool)

(declare-fun res!726953 () Bool)

(assert (=> b!1626017 (=> res!726953 e!1042904)))

(declare-fun separableTokensPredicate!712 (LexerInterface!2770 Token!5848 Token!5848 List!17909) Bool)

(assert (=> b!1626017 (= res!726953 (not (separableTokensPredicate!712 thiss!17113 (h!23241 tokens!457) (h!23241 (t!149043 tokens!457)) rules!1846)))))

(declare-fun b!1626018 () Bool)

(assert (=> b!1626018 (= e!1042914 e!1042920)))

(declare-fun res!726965 () Bool)

(assert (=> b!1626018 (=> res!726965 e!1042920)))

(assert (=> b!1626018 (= res!726965 (not (isDefined!2674 lt!587655)))))

(declare-fun lt!587640 () Unit!28911)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!344 (LexerInterface!2770 List!17909 List!17908 List!17908) Unit!28911)

(assert (=> b!1626018 (= lt!587640 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!344 thiss!17113 rules!1846 lt!587664 lt!587654))))

(declare-fun b!1626019 () Bool)

(declare-fun res!726967 () Bool)

(assert (=> b!1626019 (=> (not res!726967) (not e!1042913))))

(assert (=> b!1626019 (= res!726967 (= lt!587660 (Cons!17838 (head!3440 (originalCharacters!3955 (h!23241 (t!149043 tokens!457)))) Nil!17838)))))

(declare-fun b!1626020 () Bool)

(assert (=> b!1626020 (= e!1042915 true)))

(declare-fun lt!587656 () Bool)

(declare-fun contains!3116 (List!17909 Rule!6082) Bool)

(assert (=> b!1626020 (= lt!587656 (contains!3116 rules!1846 (rule!4967 (h!23241 tokens!457))))))

(assert (= (and start!154650 res!726975) b!1625994))

(assert (= (and b!1625994 res!726964) b!1626008))

(assert (= (and b!1626008 res!726962) b!1626010))

(assert (= (and b!1626010 res!726968) b!1625991))

(assert (= (and b!1625991 res!726969) b!1626011))

(assert (= (and b!1626011 res!726954) b!1626006))

(assert (= (and b!1626006 res!726970) b!1625993))

(assert (= (and b!1625993 (not res!726971)) b!1625997))

(assert (= (and b!1625997 (not res!726973)) b!1626017))

(assert (= (and b!1626017 (not res!726953)) b!1626001))

(assert (= (and b!1626001 (not res!726974)) b!1625996))

(assert (= (and b!1625996 (not res!726959)) b!1626016))

(assert (= (and b!1626016 (not res!726963)) b!1626018))

(assert (= (and b!1626018 (not res!726965)) b!1626003))

(assert (= (and b!1626003 (not res!726972)) b!1626005))

(assert (= (and b!1626005 (not res!726957)) b!1626012))

(assert (= (and b!1626012 res!726961) b!1626019))

(assert (= (and b!1626019 res!726967) b!1626000))

(assert (= (and b!1626012 (not res!726956)) b!1625995))

(assert (= (and b!1625995 res!726955) b!1625998))

(assert (= (and b!1625998 res!726958) b!1626013))

(assert (= (and b!1625995 (not res!726960)) b!1625999))

(assert (= (and b!1625999 (not res!726966)) b!1626020))

(assert (= b!1626014 b!1626009))

(assert (= b!1626002 b!1626014))

(assert (= (and start!154650 ((_ is Cons!17839) rules!1846)) b!1626002))

(assert (= b!1626004 b!1625992))

(assert (= b!1626007 b!1626004))

(assert (= b!1626015 b!1626007))

(assert (= (and start!154650 ((_ is Cons!17840) tokens!457)) b!1626015))

(declare-fun m!1954331 () Bool)

(assert (=> b!1626003 m!1954331))

(declare-fun m!1954333 () Bool)

(assert (=> b!1626003 m!1954333))

(declare-fun m!1954335 () Bool)

(assert (=> b!1626003 m!1954335))

(declare-fun m!1954337 () Bool)

(assert (=> b!1626003 m!1954337))

(declare-fun m!1954339 () Bool)

(assert (=> b!1626003 m!1954339))

(assert (=> b!1626003 m!1954333))

(declare-fun m!1954341 () Bool)

(assert (=> b!1626003 m!1954341))

(assert (=> b!1626003 m!1954337))

(assert (=> b!1626003 m!1954341))

(declare-fun m!1954343 () Bool)

(assert (=> b!1626010 m!1954343))

(declare-fun m!1954345 () Bool)

(assert (=> b!1625999 m!1954345))

(assert (=> b!1625999 m!1954345))

(declare-fun m!1954347 () Bool)

(assert (=> b!1625999 m!1954347))

(declare-fun m!1954349 () Bool)

(assert (=> b!1625991 m!1954349))

(declare-fun m!1954351 () Bool)

(assert (=> b!1626000 m!1954351))

(declare-fun m!1954353 () Bool)

(assert (=> b!1625994 m!1954353))

(declare-fun m!1954355 () Bool)

(assert (=> b!1626020 m!1954355))

(declare-fun m!1954357 () Bool)

(assert (=> b!1626007 m!1954357))

(declare-fun m!1954359 () Bool)

(assert (=> b!1625996 m!1954359))

(declare-fun m!1954361 () Bool)

(assert (=> b!1626008 m!1954361))

(declare-fun m!1954363 () Bool)

(assert (=> b!1625995 m!1954363))

(declare-fun m!1954365 () Bool)

(assert (=> b!1625995 m!1954365))

(declare-fun m!1954367 () Bool)

(assert (=> b!1625995 m!1954367))

(declare-fun m!1954369 () Bool)

(assert (=> b!1625995 m!1954369))

(declare-fun m!1954371 () Bool)

(assert (=> b!1625995 m!1954371))

(declare-fun m!1954373 () Bool)

(assert (=> b!1625995 m!1954373))

(assert (=> b!1625995 m!1954365))

(assert (=> b!1625995 m!1954373))

(declare-fun m!1954375 () Bool)

(assert (=> b!1625995 m!1954375))

(declare-fun m!1954377 () Bool)

(assert (=> b!1626013 m!1954377))

(declare-fun m!1954379 () Bool)

(assert (=> b!1626001 m!1954379))

(declare-fun m!1954381 () Bool)

(assert (=> b!1626001 m!1954381))

(declare-fun m!1954383 () Bool)

(assert (=> b!1626001 m!1954383))

(declare-fun m!1954385 () Bool)

(assert (=> b!1626001 m!1954385))

(declare-fun m!1954387 () Bool)

(assert (=> b!1626001 m!1954387))

(declare-fun m!1954389 () Bool)

(assert (=> b!1626001 m!1954389))

(declare-fun m!1954391 () Bool)

(assert (=> b!1626019 m!1954391))

(declare-fun m!1954393 () Bool)

(assert (=> b!1626017 m!1954393))

(declare-fun m!1954395 () Bool)

(assert (=> b!1626018 m!1954395))

(declare-fun m!1954397 () Bool)

(assert (=> b!1626018 m!1954397))

(declare-fun m!1954399 () Bool)

(assert (=> b!1625993 m!1954399))

(declare-fun m!1954401 () Bool)

(assert (=> b!1625993 m!1954401))

(declare-fun m!1954403 () Bool)

(assert (=> b!1625993 m!1954403))

(declare-fun m!1954405 () Bool)

(assert (=> b!1625993 m!1954405))

(declare-fun m!1954407 () Bool)

(assert (=> b!1626006 m!1954407))

(declare-fun m!1954409 () Bool)

(assert (=> b!1626006 m!1954409))

(declare-fun m!1954411 () Bool)

(assert (=> b!1626006 m!1954411))

(declare-fun m!1954413 () Bool)

(assert (=> b!1626006 m!1954413))

(declare-fun m!1954415 () Bool)

(assert (=> b!1626006 m!1954415))

(declare-fun m!1954417 () Bool)

(assert (=> b!1626006 m!1954417))

(declare-fun m!1954419 () Bool)

(assert (=> b!1626006 m!1954419))

(declare-fun m!1954421 () Bool)

(assert (=> b!1626006 m!1954421))

(assert (=> b!1626006 m!1954413))

(declare-fun m!1954423 () Bool)

(assert (=> b!1626006 m!1954423))

(declare-fun m!1954425 () Bool)

(assert (=> b!1626006 m!1954425))

(declare-fun m!1954427 () Bool)

(assert (=> b!1626016 m!1954427))

(assert (=> b!1626016 m!1954427))

(declare-fun m!1954429 () Bool)

(assert (=> b!1626016 m!1954429))

(declare-fun m!1954431 () Bool)

(assert (=> b!1626016 m!1954431))

(declare-fun m!1954433 () Bool)

(assert (=> b!1626005 m!1954433))

(assert (=> b!1626005 m!1954433))

(declare-fun m!1954435 () Bool)

(assert (=> b!1626005 m!1954435))

(declare-fun m!1954437 () Bool)

(assert (=> b!1626005 m!1954437))

(declare-fun m!1954439 () Bool)

(assert (=> b!1626015 m!1954439))

(declare-fun m!1954441 () Bool)

(assert (=> b!1626004 m!1954441))

(declare-fun m!1954443 () Bool)

(assert (=> b!1626004 m!1954443))

(declare-fun m!1954445 () Bool)

(assert (=> b!1625998 m!1954445))

(declare-fun m!1954447 () Bool)

(assert (=> b!1626014 m!1954447))

(declare-fun m!1954449 () Bool)

(assert (=> b!1626014 m!1954449))

(declare-fun m!1954451 () Bool)

(assert (=> b!1626012 m!1954451))

(assert (=> b!1626012 m!1954451))

(declare-fun m!1954453 () Bool)

(assert (=> b!1626012 m!1954453))

(assert (=> b!1626012 m!1954453))

(declare-fun m!1954455 () Bool)

(assert (=> b!1626012 m!1954455))

(declare-fun m!1954457 () Bool)

(assert (=> b!1626012 m!1954457))

(declare-fun m!1954459 () Bool)

(assert (=> b!1625997 m!1954459))

(declare-fun m!1954461 () Bool)

(assert (=> b!1625997 m!1954461))

(declare-fun m!1954463 () Bool)

(assert (=> b!1625997 m!1954463))

(declare-fun m!1954465 () Bool)

(assert (=> b!1625997 m!1954465))

(declare-fun m!1954467 () Bool)

(assert (=> b!1625997 m!1954467))

(assert (=> b!1625997 m!1954463))

(assert (=> b!1625997 m!1954465))

(check-sat (not b!1625993) (not b!1625997) (not b!1625996) (not b!1625994) (not b!1626006) (not b!1626003) (not b!1626002) (not b!1625998) (not b_next!44587) (not b!1626016) (not b!1626008) (not b!1626012) b_and!115303 (not b!1626014) (not b!1626019) (not b!1626017) (not b!1626013) (not b_next!44583) (not b!1626005) (not b!1626000) (not b!1626004) (not b!1626001) (not b_next!44589) (not b!1626018) (not b!1625999) (not b!1626007) b_and!115301 (not b!1626020) (not b!1625991) (not b_next!44585) b_and!115307 (not b!1626015) b_and!115305 (not b!1626010) (not b!1625995))
(check-sat b_and!115303 (not b_next!44583) (not b_next!44589) b_and!115301 (not b_next!44587) b_and!115305 b_and!115307 (not b_next!44585))
