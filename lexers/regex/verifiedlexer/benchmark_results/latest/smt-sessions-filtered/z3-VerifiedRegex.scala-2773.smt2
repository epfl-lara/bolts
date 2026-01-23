; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152522 () Bool)

(assert start!152522)

(declare-fun b!1613889 () Bool)

(declare-fun b_free!43431 () Bool)

(declare-fun b_next!44135 () Bool)

(assert (=> b!1613889 (= b_free!43431 (not b_next!44135))))

(declare-fun tp!470636 () Bool)

(declare-fun b_and!114437 () Bool)

(assert (=> b!1613889 (= tp!470636 b_and!114437)))

(declare-fun b_free!43433 () Bool)

(declare-fun b_next!44137 () Bool)

(assert (=> b!1613889 (= b_free!43433 (not b_next!44137))))

(declare-fun tp!470638 () Bool)

(declare-fun b_and!114439 () Bool)

(assert (=> b!1613889 (= tp!470638 b_and!114439)))

(declare-fun b!1613892 () Bool)

(declare-fun b_free!43435 () Bool)

(declare-fun b_next!44139 () Bool)

(assert (=> b!1613892 (= b_free!43435 (not b_next!44139))))

(declare-fun tp!470633 () Bool)

(declare-fun b_and!114441 () Bool)

(assert (=> b!1613892 (= tp!470633 b_and!114441)))

(declare-fun b_free!43437 () Bool)

(declare-fun b_next!44141 () Bool)

(assert (=> b!1613892 (= b_free!43437 (not b_next!44141))))

(declare-fun tp!470637 () Bool)

(declare-fun b_and!114443 () Bool)

(assert (=> b!1613892 (= tp!470637 b_and!114443)))

(declare-fun e!1035156 () Bool)

(assert (=> b!1613889 (= e!1035156 (and tp!470636 tp!470638))))

(declare-fun b!1613890 () Bool)

(declare-fun e!1035145 () Bool)

(declare-fun e!1035141 () Bool)

(assert (=> b!1613890 (= e!1035145 e!1035141)))

(declare-fun res!719988 () Bool)

(assert (=> b!1613890 (=> res!719988 e!1035141)))

(declare-datatypes ((List!17711 0))(
  ( (Nil!17641) (Cons!17641 (h!23042 (_ BitVec 16)) (t!148142 List!17711)) )
))
(declare-datatypes ((TokenValue!3197 0))(
  ( (FloatLiteralValue!6394 (text!22824 List!17711)) (TokenValueExt!3196 (__x!11696 Int)) (Broken!15985 (value!98196 List!17711)) (Object!3266) (End!3197) (Def!3197) (Underscore!3197) (Match!3197) (Else!3197) (Error!3197) (Case!3197) (If!3197) (Extends!3197) (Abstract!3197) (Class!3197) (Val!3197) (DelimiterValue!6394 (del!3257 List!17711)) (KeywordValue!3203 (value!98197 List!17711)) (CommentValue!6394 (value!98198 List!17711)) (WhitespaceValue!6394 (value!98199 List!17711)) (IndentationValue!3197 (value!98200 List!17711)) (String!20316) (Int32!3197) (Broken!15986 (value!98201 List!17711)) (Boolean!3198) (Unit!28352) (OperatorValue!3200 (op!3257 List!17711)) (IdentifierValue!6394 (value!98202 List!17711)) (IdentifierValue!6395 (value!98203 List!17711)) (WhitespaceValue!6395 (value!98204 List!17711)) (True!6394) (False!6394) (Broken!15987 (value!98205 List!17711)) (Broken!15988 (value!98206 List!17711)) (True!6395) (RightBrace!3197) (RightBracket!3197) (Colon!3197) (Null!3197) (Comma!3197) (LeftBracket!3197) (False!6395) (LeftBrace!3197) (ImaginaryLiteralValue!3197 (text!22825 List!17711)) (StringLiteralValue!9591 (value!98207 List!17711)) (EOFValue!3197 (value!98208 List!17711)) (IdentValue!3197 (value!98209 List!17711)) (DelimiterValue!6395 (value!98210 List!17711)) (DedentValue!3197 (value!98211 List!17711)) (NewLineValue!3197 (value!98212 List!17711)) (IntegerValue!9591 (value!98213 (_ BitVec 32)) (text!22826 List!17711)) (IntegerValue!9592 (value!98214 Int) (text!22827 List!17711)) (Times!3197) (Or!3197) (Equal!3197) (Minus!3197) (Broken!15989 (value!98215 List!17711)) (And!3197) (Div!3197) (LessEqual!3197) (Mod!3197) (Concat!7632) (Not!3197) (Plus!3197) (SpaceValue!3197 (value!98216 List!17711)) (IntegerValue!9593 (value!98217 Int) (text!22828 List!17711)) (StringLiteralValue!9592 (text!22829 List!17711)) (FloatLiteralValue!6395 (text!22830 List!17711)) (BytesLiteralValue!3197 (value!98218 List!17711)) (CommentValue!6395 (value!98219 List!17711)) (StringLiteralValue!9593 (value!98220 List!17711)) (ErrorTokenValue!3197 (msg!3258 List!17711)) )
))
(declare-datatypes ((C!9044 0))(
  ( (C!9045 (val!5118 Int)) )
))
(declare-datatypes ((List!17712 0))(
  ( (Nil!17642) (Cons!17642 (h!23043 C!9044) (t!148143 List!17712)) )
))
(declare-datatypes ((IArray!11729 0))(
  ( (IArray!11730 (innerList!5922 List!17712)) )
))
(declare-datatypes ((Conc!5862 0))(
  ( (Node!5862 (left!14213 Conc!5862) (right!14543 Conc!5862) (csize!11954 Int) (cheight!6073 Int)) (Leaf!8636 (xs!8690 IArray!11729) (csize!11955 Int)) (Empty!5862) )
))
(declare-datatypes ((BalanceConc!11668 0))(
  ( (BalanceConc!11669 (c!262909 Conc!5862)) )
))
(declare-datatypes ((Regex!4435 0))(
  ( (ElementMatch!4435 (c!262910 C!9044)) (Concat!7633 (regOne!9382 Regex!4435) (regTwo!9382 Regex!4435)) (EmptyExpr!4435) (Star!4435 (reg!4764 Regex!4435)) (EmptyLang!4435) (Union!4435 (regOne!9383 Regex!4435) (regTwo!9383 Regex!4435)) )
))
(declare-datatypes ((String!20317 0))(
  ( (String!20318 (value!98221 String)) )
))
(declare-datatypes ((TokenValueInjection!6054 0))(
  ( (TokenValueInjection!6055 (toValue!4530 Int) (toChars!4389 Int)) )
))
(declare-datatypes ((Rule!6014 0))(
  ( (Rule!6015 (regex!3107 Regex!4435) (tag!3383 String!20317) (isSeparator!3107 Bool) (transformation!3107 TokenValueInjection!6054)) )
))
(declare-datatypes ((Token!5780 0))(
  ( (Token!5781 (value!98222 TokenValue!3197) (rule!4927 Rule!6014) (size!14170 Int) (originalCharacters!3921 List!17712)) )
))
(declare-datatypes ((List!17713 0))(
  ( (Nil!17643) (Cons!17643 (h!23044 Token!5780) (t!148144 List!17713)) )
))
(declare-fun lt!577121 () List!17713)

(declare-fun lt!577123 () List!17713)

(declare-fun lt!577120 () List!17713)

(assert (=> b!1613890 (= res!719988 (or (not (= lt!577121 lt!577120)) (not (= lt!577120 lt!577123))))))

(declare-datatypes ((IArray!11731 0))(
  ( (IArray!11732 (innerList!5923 List!17713)) )
))
(declare-datatypes ((Conc!5863 0))(
  ( (Node!5863 (left!14214 Conc!5863) (right!14544 Conc!5863) (csize!11956 Int) (cheight!6074 Int)) (Leaf!8637 (xs!8691 IArray!11731) (csize!11957 Int)) (Empty!5863) )
))
(declare-datatypes ((BalanceConc!11670 0))(
  ( (BalanceConc!11671 (c!262911 Conc!5863)) )
))
(declare-fun lt!577129 () BalanceConc!11670)

(declare-fun list!6891 (BalanceConc!11670) List!17713)

(assert (=> b!1613890 (= lt!577120 (list!6891 lt!577129))))

(assert (=> b!1613890 (= lt!577121 lt!577123)))

(declare-fun tokens!457 () List!17713)

(declare-fun prepend!615 (BalanceConc!11670 Token!5780) BalanceConc!11670)

(declare-fun seqFromList!1963 (List!17713) BalanceConc!11670)

(assert (=> b!1613890 (= lt!577123 (list!6891 (prepend!615 (seqFromList!1963 (t!148144 (t!148144 tokens!457))) (h!23044 (t!148144 tokens!457)))))))

(declare-datatypes ((Unit!28353 0))(
  ( (Unit!28354) )
))
(declare-fun lt!577127 () Unit!28353)

(declare-datatypes ((tuple2!17154 0))(
  ( (tuple2!17155 (_1!9979 BalanceConc!11670) (_2!9979 BalanceConc!11668)) )
))
(declare-fun lt!577119 () tuple2!17154)

(declare-fun seqFromListBHdTlConstructive!184 (Token!5780 List!17713 BalanceConc!11670) Unit!28353)

(assert (=> b!1613890 (= lt!577127 (seqFromListBHdTlConstructive!184 (h!23044 (t!148144 tokens!457)) (t!148144 (t!148144 tokens!457)) (_1!9979 lt!577119)))))

(declare-fun b!1613891 () Bool)

(declare-fun res!719990 () Bool)

(declare-fun e!1035150 () Bool)

(assert (=> b!1613891 (=> (not res!719990) (not e!1035150))))

(declare-datatypes ((List!17714 0))(
  ( (Nil!17644) (Cons!17644 (h!23045 Rule!6014) (t!148145 List!17714)) )
))
(declare-fun rules!1846 () List!17714)

(declare-datatypes ((LexerInterface!2736 0))(
  ( (LexerInterfaceExt!2733 (__x!11697 Int)) (Lexer!2734) )
))
(declare-fun thiss!17113 () LexerInterface!2736)

(declare-fun tokensListTwoByTwoPredicateSeparableList!429 (LexerInterface!2736 List!17713 List!17714) Bool)

(assert (=> b!1613891 (= res!719990 (tokensListTwoByTwoPredicateSeparableList!429 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1035142 () Bool)

(assert (=> b!1613892 (= e!1035142 (and tp!470633 tp!470637))))

(declare-fun b!1613893 () Bool)

(declare-fun res!719987 () Bool)

(declare-fun e!1035143 () Bool)

(assert (=> b!1613893 (=> (not res!719987) (not e!1035143))))

(declare-fun lt!577140 () List!17712)

(declare-fun lt!577124 () List!17712)

(declare-fun head!3330 (List!17712) C!9044)

(assert (=> b!1613893 (= res!719987 (= lt!577140 (Cons!17642 (head!3330 lt!577124) Nil!17642)))))

(declare-fun b!1613894 () Bool)

(declare-fun e!1035155 () Bool)

(declare-fun e!1035147 () Bool)

(assert (=> b!1613894 (= e!1035155 e!1035147)))

(declare-fun res!719981 () Bool)

(assert (=> b!1613894 (=> res!719981 e!1035147)))

(declare-fun lt!577142 () Regex!4435)

(declare-fun lt!577133 () List!17712)

(declare-fun prefixMatch!370 (Regex!4435 List!17712) Bool)

(declare-fun ++!4651 (List!17712 List!17712) List!17712)

(assert (=> b!1613894 (= res!719981 (prefixMatch!370 lt!577142 (++!4651 lt!577133 lt!577140)))))

(declare-fun lt!577138 () BalanceConc!11668)

(declare-fun list!6892 (BalanceConc!11668) List!17712)

(assert (=> b!1613894 (= lt!577140 (list!6892 lt!577138))))

(declare-fun e!1035151 () Bool)

(declare-fun e!1035137 () Bool)

(declare-fun tp!470635 () Bool)

(declare-fun b!1613895 () Bool)

(declare-fun inv!21 (TokenValue!3197) Bool)

(assert (=> b!1613895 (= e!1035137 (and (inv!21 (value!98222 (h!23044 tokens!457))) e!1035151 tp!470635))))

(declare-fun b!1613896 () Bool)

(declare-fun e!1035138 () Bool)

(declare-fun e!1035140 () Bool)

(declare-fun tp!470631 () Bool)

(assert (=> b!1613896 (= e!1035138 (and e!1035140 tp!470631))))

(declare-fun b!1613897 () Bool)

(declare-fun e!1035149 () Bool)

(assert (=> b!1613897 (= e!1035149 (not e!1035145))))

(declare-fun res!719979 () Bool)

(assert (=> b!1613897 (=> res!719979 e!1035145)))

(assert (=> b!1613897 (= res!719979 (not (= lt!577121 (t!148144 tokens!457))))))

(assert (=> b!1613897 (= lt!577121 (list!6891 (_1!9979 lt!577119)))))

(declare-fun lt!577125 () Unit!28353)

(declare-fun theoremInvertabilityWhenTokenListSeparable!181 (LexerInterface!2736 List!17714 List!17713) Unit!28353)

(assert (=> b!1613897 (= lt!577125 (theoremInvertabilityWhenTokenListSeparable!181 thiss!17113 rules!1846 (t!148144 tokens!457)))))

(declare-fun lt!577139 () List!17712)

(declare-fun isPrefix!1367 (List!17712 List!17712) Bool)

(assert (=> b!1613897 (isPrefix!1367 lt!577133 lt!577139)))

(declare-fun lt!577131 () Unit!28353)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!892 (List!17712 List!17712) Unit!28353)

(assert (=> b!1613897 (= lt!577131 (lemmaConcatTwoListThenFirstIsPrefix!892 lt!577133 lt!577124))))

(declare-fun b!1613899 () Bool)

(declare-fun e!1035146 () Bool)

(assert (=> b!1613899 (= e!1035146 e!1035155)))

(declare-fun res!719975 () Bool)

(assert (=> b!1613899 (=> res!719975 e!1035155)))

(declare-fun lt!577128 () BalanceConc!11668)

(declare-fun prefixMatchZipperSequence!477 (Regex!4435 BalanceConc!11668) Bool)

(declare-fun ++!4652 (BalanceConc!11668 BalanceConc!11668) BalanceConc!11668)

(assert (=> b!1613899 (= res!719975 (prefixMatchZipperSequence!477 lt!577142 (++!4652 lt!577128 lt!577138)))))

(declare-fun singletonSeq!1492 (C!9044) BalanceConc!11668)

(declare-fun apply!4426 (BalanceConc!11668 Int) C!9044)

(declare-fun charsOf!1756 (Token!5780) BalanceConc!11668)

(assert (=> b!1613899 (= lt!577138 (singletonSeq!1492 (apply!4426 (charsOf!1756 (h!23044 (t!148144 tokens!457))) 0)))))

(declare-fun rulesRegex!497 (LexerInterface!2736 List!17714) Regex!4435)

(assert (=> b!1613899 (= lt!577142 (rulesRegex!497 thiss!17113 rules!1846))))

(declare-fun b!1613900 () Bool)

(declare-fun res!719980 () Bool)

(assert (=> b!1613900 (=> (not res!719980) (not e!1035143))))

(assert (=> b!1613900 (= res!719980 (= lt!577140 (Cons!17642 (head!3330 (originalCharacters!3921 (h!23044 (t!148144 tokens!457)))) Nil!17642)))))

(declare-fun b!1613901 () Bool)

(declare-fun lt!577134 () BalanceConc!11668)

(declare-fun head!3331 (BalanceConc!11668) C!9044)

(assert (=> b!1613901 (= e!1035143 (= lt!577140 (Cons!17642 (head!3331 lt!577134) Nil!17642)))))

(declare-fun b!1613902 () Bool)

(declare-fun res!719976 () Bool)

(assert (=> b!1613902 (=> (not res!719976) (not e!1035150))))

(declare-fun rulesProduceEachTokenIndividuallyList!938 (LexerInterface!2736 List!17714 List!17713) Bool)

(assert (=> b!1613902 (= res!719976 (rulesProduceEachTokenIndividuallyList!938 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1613903 () Bool)

(assert (=> b!1613903 (= e!1035150 e!1035149)))

(declare-fun res!719986 () Bool)

(assert (=> b!1613903 (=> (not res!719986) (not e!1035149))))

(declare-fun lt!577126 () List!17712)

(assert (=> b!1613903 (= res!719986 (= lt!577126 lt!577139))))

(assert (=> b!1613903 (= lt!577139 (++!4651 lt!577133 lt!577124))))

(declare-fun lt!577141 () BalanceConc!11668)

(assert (=> b!1613903 (= lt!577126 (list!6892 lt!577141))))

(assert (=> b!1613903 (= lt!577124 (list!6892 lt!577134))))

(assert (=> b!1613903 (= lt!577133 (list!6892 lt!577128))))

(assert (=> b!1613903 (= lt!577128 (charsOf!1756 (h!23044 tokens!457)))))

(declare-fun lex!1220 (LexerInterface!2736 List!17714 BalanceConc!11668) tuple2!17154)

(assert (=> b!1613903 (= lt!577119 (lex!1220 thiss!17113 rules!1846 lt!577134))))

(declare-fun print!1267 (LexerInterface!2736 BalanceConc!11670) BalanceConc!11668)

(assert (=> b!1613903 (= lt!577134 (print!1267 thiss!17113 lt!577129))))

(assert (=> b!1613903 (= lt!577129 (seqFromList!1963 (t!148144 tokens!457)))))

(assert (=> b!1613903 (= lt!577141 (print!1267 thiss!17113 (seqFromList!1963 tokens!457)))))

(declare-fun b!1613904 () Bool)

(declare-fun e!1035148 () Bool)

(assert (=> b!1613904 (= e!1035148 e!1035146)))

(declare-fun res!719993 () Bool)

(assert (=> b!1613904 (=> res!719993 e!1035146)))

(declare-datatypes ((tuple2!17156 0))(
  ( (tuple2!17157 (_1!9980 Token!5780) (_2!9980 List!17712)) )
))
(declare-datatypes ((Option!3219 0))(
  ( (None!3218) (Some!3218 (v!24195 tuple2!17156)) )
))
(declare-fun lt!577135 () Option!3219)

(declare-fun isDefined!2586 (Option!3219) Bool)

(assert (=> b!1613904 (= res!719993 (not (isDefined!2586 lt!577135)))))

(declare-fun lt!577122 () Unit!28353)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!310 (LexerInterface!2736 List!17714 List!17712 List!17712) Unit!28353)

(assert (=> b!1613904 (= lt!577122 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!310 thiss!17113 rules!1846 lt!577133 lt!577124))))

(declare-fun e!1035144 () Bool)

(declare-fun b!1613905 () Bool)

(declare-fun maxPrefix!1300 (LexerInterface!2736 List!17714 List!17712) Option!3219)

(assert (=> b!1613905 (= e!1035144 (isDefined!2586 (maxPrefix!1300 thiss!17113 rules!1846 lt!577133)))))

(declare-fun tp!470632 () Bool)

(declare-fun b!1613906 () Bool)

(declare-fun inv!23046 (String!20317) Bool)

(declare-fun inv!23049 (TokenValueInjection!6054) Bool)

(assert (=> b!1613906 (= e!1035140 (and tp!470632 (inv!23046 (tag!3383 (h!23045 rules!1846))) (inv!23049 (transformation!3107 (h!23045 rules!1846))) e!1035156))))

(declare-fun b!1613907 () Bool)

(declare-fun res!719994 () Bool)

(assert (=> b!1613907 (=> res!719994 e!1035148)))

(declare-fun rulesProduceIndividualToken!1388 (LexerInterface!2736 List!17714 Token!5780) Bool)

(assert (=> b!1613907 (= res!719994 (not (rulesProduceIndividualToken!1388 thiss!17113 rules!1846 (h!23044 tokens!457))))))

(declare-fun b!1613908 () Bool)

(declare-fun res!719989 () Bool)

(assert (=> b!1613908 (=> (not res!719989) (not e!1035150))))

(get-info :version)

(assert (=> b!1613908 (= res!719989 (and (not ((_ is Nil!17643) tokens!457)) (not ((_ is Nil!17643) (t!148144 tokens!457)))))))

(declare-fun tp!470634 () Bool)

(declare-fun e!1035139 () Bool)

(declare-fun b!1613909 () Bool)

(declare-fun inv!23050 (Token!5780) Bool)

(assert (=> b!1613909 (= e!1035139 (and (inv!23050 (h!23044 tokens!457)) e!1035137 tp!470634))))

(declare-fun b!1613910 () Bool)

(declare-fun res!719991 () Bool)

(assert (=> b!1613910 (=> res!719991 e!1035148)))

(declare-fun isEmpty!10664 (BalanceConc!11670) Bool)

(declare-fun seqFromList!1964 (List!17712) BalanceConc!11668)

(assert (=> b!1613910 (= res!719991 (isEmpty!10664 (_1!9979 (lex!1220 thiss!17113 rules!1846 (seqFromList!1964 lt!577133)))))))

(declare-fun b!1613911 () Bool)

(assert (=> b!1613911 (= e!1035141 e!1035148)))

(declare-fun res!719995 () Bool)

(assert (=> b!1613911 (=> res!719995 e!1035148)))

(declare-fun lt!577130 () List!17712)

(declare-fun lt!577136 () List!17712)

(assert (=> b!1613911 (= res!719995 (or (not (= lt!577136 lt!577130)) (not (= lt!577130 lt!577133)) (not (= lt!577136 lt!577133))))))

(declare-fun printList!851 (LexerInterface!2736 List!17713) List!17712)

(assert (=> b!1613911 (= lt!577130 (printList!851 thiss!17113 (Cons!17643 (h!23044 tokens!457) Nil!17643)))))

(declare-fun lt!577137 () BalanceConc!11668)

(assert (=> b!1613911 (= lt!577136 (list!6892 lt!577137))))

(declare-fun lt!577132 () BalanceConc!11670)

(declare-fun printTailRec!789 (LexerInterface!2736 BalanceConc!11670 Int BalanceConc!11668) BalanceConc!11668)

(assert (=> b!1613911 (= lt!577137 (printTailRec!789 thiss!17113 lt!577132 0 (BalanceConc!11669 Empty!5862)))))

(assert (=> b!1613911 (= lt!577137 (print!1267 thiss!17113 lt!577132))))

(declare-fun singletonSeq!1493 (Token!5780) BalanceConc!11670)

(assert (=> b!1613911 (= lt!577132 (singletonSeq!1493 (h!23044 tokens!457)))))

(assert (=> b!1613911 (= lt!577135 (maxPrefix!1300 thiss!17113 rules!1846 lt!577126))))

(declare-fun b!1613912 () Bool)

(declare-fun res!719983 () Bool)

(assert (=> b!1613912 (=> (not res!719983) (not e!1035150))))

(declare-fun rulesInvariant!2405 (LexerInterface!2736 List!17714) Bool)

(assert (=> b!1613912 (= res!719983 (rulesInvariant!2405 thiss!17113 rules!1846))))

(declare-fun b!1613898 () Bool)

(declare-fun res!719982 () Bool)

(assert (=> b!1613898 (=> (not res!719982) (not e!1035150))))

(declare-fun isEmpty!10665 (List!17714) Bool)

(assert (=> b!1613898 (= res!719982 (not (isEmpty!10665 rules!1846)))))

(declare-fun res!719984 () Bool)

(assert (=> start!152522 (=> (not res!719984) (not e!1035150))))

(assert (=> start!152522 (= res!719984 ((_ is Lexer!2734) thiss!17113))))

(assert (=> start!152522 e!1035150))

(assert (=> start!152522 true))

(assert (=> start!152522 e!1035138))

(assert (=> start!152522 e!1035139))

(declare-fun b!1613913 () Bool)

(declare-fun res!719978 () Bool)

(assert (=> b!1613913 (=> res!719978 e!1035141)))

(declare-fun separableTokensPredicate!678 (LexerInterface!2736 Token!5780 Token!5780 List!17714) Bool)

(assert (=> b!1613913 (= res!719978 (not (separableTokensPredicate!678 thiss!17113 (h!23044 tokens!457) (h!23044 (t!148144 tokens!457)) rules!1846)))))

(declare-fun b!1613914 () Bool)

(declare-fun e!1035152 () Bool)

(assert (=> b!1613914 (= e!1035152 true)))

(assert (=> b!1613914 e!1035144))

(declare-fun res!719985 () Bool)

(assert (=> b!1613914 (=> (not res!719985) (not e!1035144))))

(assert (=> b!1613914 (= res!719985 (isDefined!2586 (maxPrefix!1300 thiss!17113 rules!1846 (originalCharacters!3921 (h!23044 tokens!457)))))))

(declare-fun b!1613915 () Bool)

(assert (=> b!1613915 (= e!1035147 e!1035152)))

(declare-fun res!719992 () Bool)

(assert (=> b!1613915 (=> res!719992 e!1035152)))

(declare-datatypes ((tuple2!17158 0))(
  ( (tuple2!17159 (_1!9981 Token!5780) (_2!9981 BalanceConc!11668)) )
))
(declare-datatypes ((Option!3220 0))(
  ( (None!3219) (Some!3219 (v!24196 tuple2!17158)) )
))
(declare-fun isDefined!2587 (Option!3220) Bool)

(declare-fun maxPrefixZipperSequence!631 (LexerInterface!2736 List!17714 BalanceConc!11668) Option!3220)

(assert (=> b!1613915 (= res!719992 (not (isDefined!2587 (maxPrefixZipperSequence!631 thiss!17113 rules!1846 (seqFromList!1964 (originalCharacters!3921 (h!23044 tokens!457)))))))))

(assert (=> b!1613915 e!1035143))

(declare-fun res!719977 () Bool)

(assert (=> b!1613915 (=> (not res!719977) (not e!1035143))))

(assert (=> b!1613915 (= res!719977 (= lt!577133 (originalCharacters!3921 (h!23044 tokens!457))))))

(declare-fun b!1613916 () Bool)

(declare-fun tp!470630 () Bool)

(assert (=> b!1613916 (= e!1035151 (and tp!470630 (inv!23046 (tag!3383 (rule!4927 (h!23044 tokens!457)))) (inv!23049 (transformation!3107 (rule!4927 (h!23044 tokens!457)))) e!1035142))))

(assert (= (and start!152522 res!719984) b!1613898))

(assert (= (and b!1613898 res!719982) b!1613912))

(assert (= (and b!1613912 res!719983) b!1613902))

(assert (= (and b!1613902 res!719976) b!1613891))

(assert (= (and b!1613891 res!719990) b!1613908))

(assert (= (and b!1613908 res!719989) b!1613903))

(assert (= (and b!1613903 res!719986) b!1613897))

(assert (= (and b!1613897 (not res!719979)) b!1613890))

(assert (= (and b!1613890 (not res!719988)) b!1613913))

(assert (= (and b!1613913 (not res!719978)) b!1613911))

(assert (= (and b!1613911 (not res!719995)) b!1613907))

(assert (= (and b!1613907 (not res!719994)) b!1613910))

(assert (= (and b!1613910 (not res!719991)) b!1613904))

(assert (= (and b!1613904 (not res!719993)) b!1613899))

(assert (= (and b!1613899 (not res!719975)) b!1613894))

(assert (= (and b!1613894 (not res!719981)) b!1613915))

(assert (= (and b!1613915 res!719977) b!1613900))

(assert (= (and b!1613900 res!719980) b!1613893))

(assert (= (and b!1613893 res!719987) b!1613901))

(assert (= (and b!1613915 (not res!719992)) b!1613914))

(assert (= (and b!1613914 res!719985) b!1613905))

(assert (= b!1613906 b!1613889))

(assert (= b!1613896 b!1613906))

(assert (= (and start!152522 ((_ is Cons!17644) rules!1846)) b!1613896))

(assert (= b!1613916 b!1613892))

(assert (= b!1613895 b!1613916))

(assert (= b!1613909 b!1613895))

(assert (= (and start!152522 ((_ is Cons!17643) tokens!457)) b!1613909))

(declare-fun m!1932515 () Bool)

(assert (=> b!1613897 m!1932515))

(declare-fun m!1932517 () Bool)

(assert (=> b!1613897 m!1932517))

(declare-fun m!1932519 () Bool)

(assert (=> b!1613897 m!1932519))

(declare-fun m!1932521 () Bool)

(assert (=> b!1613897 m!1932521))

(declare-fun m!1932523 () Bool)

(assert (=> b!1613898 m!1932523))

(declare-fun m!1932525 () Bool)

(assert (=> b!1613905 m!1932525))

(assert (=> b!1613905 m!1932525))

(declare-fun m!1932527 () Bool)

(assert (=> b!1613905 m!1932527))

(declare-fun m!1932529 () Bool)

(assert (=> b!1613891 m!1932529))

(declare-fun m!1932531 () Bool)

(assert (=> b!1613902 m!1932531))

(declare-fun m!1932533 () Bool)

(assert (=> b!1613907 m!1932533))

(declare-fun m!1932535 () Bool)

(assert (=> b!1613901 m!1932535))

(declare-fun m!1932537 () Bool)

(assert (=> b!1613914 m!1932537))

(assert (=> b!1613914 m!1932537))

(declare-fun m!1932539 () Bool)

(assert (=> b!1613914 m!1932539))

(declare-fun m!1932541 () Bool)

(assert (=> b!1613915 m!1932541))

(assert (=> b!1613915 m!1932541))

(declare-fun m!1932543 () Bool)

(assert (=> b!1613915 m!1932543))

(assert (=> b!1613915 m!1932543))

(declare-fun m!1932545 () Bool)

(assert (=> b!1613915 m!1932545))

(declare-fun m!1932547 () Bool)

(assert (=> b!1613911 m!1932547))

(declare-fun m!1932549 () Bool)

(assert (=> b!1613911 m!1932549))

(declare-fun m!1932551 () Bool)

(assert (=> b!1613911 m!1932551))

(declare-fun m!1932553 () Bool)

(assert (=> b!1613911 m!1932553))

(declare-fun m!1932555 () Bool)

(assert (=> b!1613911 m!1932555))

(declare-fun m!1932557 () Bool)

(assert (=> b!1613911 m!1932557))

(declare-fun m!1932559 () Bool)

(assert (=> b!1613899 m!1932559))

(declare-fun m!1932561 () Bool)

(assert (=> b!1613899 m!1932561))

(declare-fun m!1932563 () Bool)

(assert (=> b!1613899 m!1932563))

(declare-fun m!1932565 () Bool)

(assert (=> b!1613899 m!1932565))

(declare-fun m!1932567 () Bool)

(assert (=> b!1613899 m!1932567))

(assert (=> b!1613899 m!1932561))

(declare-fun m!1932569 () Bool)

(assert (=> b!1613899 m!1932569))

(assert (=> b!1613899 m!1932565))

(assert (=> b!1613899 m!1932569))

(declare-fun m!1932571 () Bool)

(assert (=> b!1613890 m!1932571))

(declare-fun m!1932573 () Bool)

(assert (=> b!1613890 m!1932573))

(declare-fun m!1932575 () Bool)

(assert (=> b!1613890 m!1932575))

(declare-fun m!1932577 () Bool)

(assert (=> b!1613890 m!1932577))

(declare-fun m!1932579 () Bool)

(assert (=> b!1613890 m!1932579))

(assert (=> b!1613890 m!1932575))

(assert (=> b!1613890 m!1932577))

(declare-fun m!1932581 () Bool)

(assert (=> b!1613903 m!1932581))

(declare-fun m!1932583 () Bool)

(assert (=> b!1613903 m!1932583))

(declare-fun m!1932585 () Bool)

(assert (=> b!1613903 m!1932585))

(declare-fun m!1932587 () Bool)

(assert (=> b!1613903 m!1932587))

(declare-fun m!1932589 () Bool)

(assert (=> b!1613903 m!1932589))

(declare-fun m!1932591 () Bool)

(assert (=> b!1613903 m!1932591))

(declare-fun m!1932593 () Bool)

(assert (=> b!1613903 m!1932593))

(declare-fun m!1932595 () Bool)

(assert (=> b!1613903 m!1932595))

(declare-fun m!1932597 () Bool)

(assert (=> b!1613903 m!1932597))

(assert (=> b!1613903 m!1932593))

(declare-fun m!1932599 () Bool)

(assert (=> b!1613903 m!1932599))

(declare-fun m!1932601 () Bool)

(assert (=> b!1613910 m!1932601))

(assert (=> b!1613910 m!1932601))

(declare-fun m!1932603 () Bool)

(assert (=> b!1613910 m!1932603))

(declare-fun m!1932605 () Bool)

(assert (=> b!1613910 m!1932605))

(declare-fun m!1932607 () Bool)

(assert (=> b!1613916 m!1932607))

(declare-fun m!1932609 () Bool)

(assert (=> b!1613916 m!1932609))

(declare-fun m!1932611 () Bool)

(assert (=> b!1613909 m!1932611))

(declare-fun m!1932613 () Bool)

(assert (=> b!1613904 m!1932613))

(declare-fun m!1932615 () Bool)

(assert (=> b!1613904 m!1932615))

(declare-fun m!1932617 () Bool)

(assert (=> b!1613906 m!1932617))

(declare-fun m!1932619 () Bool)

(assert (=> b!1613906 m!1932619))

(declare-fun m!1932621 () Bool)

(assert (=> b!1613893 m!1932621))

(declare-fun m!1932623 () Bool)

(assert (=> b!1613913 m!1932623))

(declare-fun m!1932625 () Bool)

(assert (=> b!1613895 m!1932625))

(declare-fun m!1932627 () Bool)

(assert (=> b!1613894 m!1932627))

(assert (=> b!1613894 m!1932627))

(declare-fun m!1932629 () Bool)

(assert (=> b!1613894 m!1932629))

(declare-fun m!1932631 () Bool)

(assert (=> b!1613894 m!1932631))

(declare-fun m!1932633 () Bool)

(assert (=> b!1613912 m!1932633))

(declare-fun m!1932635 () Bool)

(assert (=> b!1613900 m!1932635))

(check-sat (not b!1613890) (not b!1613916) (not b!1613901) (not b!1613899) (not b!1613905) (not b!1613895) (not b!1613891) (not b!1613907) (not b!1613910) (not b!1613896) (not b!1613913) (not b!1613915) (not b!1613902) (not b!1613903) (not b!1613900) (not b!1613912) (not b_next!44135) (not b_next!44141) (not b!1613897) (not b!1613904) (not b_next!44139) (not b!1613898) (not b!1613909) b_and!114439 b_and!114441 (not b_next!44137) (not b!1613894) (not b!1613906) (not b!1613914) (not b!1613911) (not b!1613893) b_and!114437 b_and!114443)
(check-sat (not b_next!44139) b_and!114439 (not b_next!44135) (not b_next!44141) b_and!114441 (not b_next!44137) b_and!114437 b_and!114443)
