; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152698 () Bool)

(assert start!152698)

(declare-fun b!1615028 () Bool)

(declare-fun b_free!43495 () Bool)

(declare-fun b_next!44199 () Bool)

(assert (=> b!1615028 (= b_free!43495 (not b_next!44199))))

(declare-fun tp!470902 () Bool)

(declare-fun b_and!114525 () Bool)

(assert (=> b!1615028 (= tp!470902 b_and!114525)))

(declare-fun b_free!43497 () Bool)

(declare-fun b_next!44201 () Bool)

(assert (=> b!1615028 (= b_free!43497 (not b_next!44201))))

(declare-fun tp!470904 () Bool)

(declare-fun b_and!114527 () Bool)

(assert (=> b!1615028 (= tp!470904 b_and!114527)))

(declare-fun b!1615032 () Bool)

(declare-fun b_free!43499 () Bool)

(declare-fun b_next!44203 () Bool)

(assert (=> b!1615032 (= b_free!43499 (not b_next!44203))))

(declare-fun tp!470900 () Bool)

(declare-fun b_and!114529 () Bool)

(assert (=> b!1615032 (= tp!470900 b_and!114529)))

(declare-fun b_free!43501 () Bool)

(declare-fun b_next!44205 () Bool)

(assert (=> b!1615032 (= b_free!43501 (not b_next!44205))))

(declare-fun tp!470906 () Bool)

(declare-fun b_and!114531 () Bool)

(assert (=> b!1615032 (= tp!470906 b_and!114531)))

(declare-fun res!720707 () Bool)

(declare-fun e!1035917 () Bool)

(assert (=> start!152698 (=> (not res!720707) (not e!1035917))))

(declare-datatypes ((LexerInterface!2742 0))(
  ( (LexerInterfaceExt!2739 (__x!11708 Int)) (Lexer!2740) )
))
(declare-fun thiss!17113 () LexerInterface!2742)

(get-info :version)

(assert (=> start!152698 (= res!720707 ((_ is Lexer!2740) thiss!17113))))

(assert (=> start!152698 e!1035917))

(assert (=> start!152698 true))

(declare-fun e!1035914 () Bool)

(assert (=> start!152698 e!1035914))

(declare-fun e!1035902 () Bool)

(assert (=> start!152698 e!1035902))

(declare-fun b!1615007 () Bool)

(declare-fun e!1035906 () Bool)

(declare-fun e!1035921 () Bool)

(assert (=> b!1615007 (= e!1035906 (not e!1035921))))

(declare-fun res!720702 () Bool)

(assert (=> b!1615007 (=> res!720702 e!1035921)))

(declare-datatypes ((List!17741 0))(
  ( (Nil!17671) (Cons!17671 (h!23072 (_ BitVec 16)) (t!148214 List!17741)) )
))
(declare-datatypes ((TokenValue!3203 0))(
  ( (FloatLiteralValue!6406 (text!22866 List!17741)) (TokenValueExt!3202 (__x!11709 Int)) (Broken!16015 (value!98367 List!17741)) (Object!3272) (End!3203) (Def!3203) (Underscore!3203) (Match!3203) (Else!3203) (Error!3203) (Case!3203) (If!3203) (Extends!3203) (Abstract!3203) (Class!3203) (Val!3203) (DelimiterValue!6406 (del!3263 List!17741)) (KeywordValue!3209 (value!98368 List!17741)) (CommentValue!6406 (value!98369 List!17741)) (WhitespaceValue!6406 (value!98370 List!17741)) (IndentationValue!3203 (value!98371 List!17741)) (String!20346) (Int32!3203) (Broken!16016 (value!98372 List!17741)) (Boolean!3204) (Unit!28408) (OperatorValue!3206 (op!3263 List!17741)) (IdentifierValue!6406 (value!98373 List!17741)) (IdentifierValue!6407 (value!98374 List!17741)) (WhitespaceValue!6407 (value!98375 List!17741)) (True!6406) (False!6406) (Broken!16017 (value!98376 List!17741)) (Broken!16018 (value!98377 List!17741)) (True!6407) (RightBrace!3203) (RightBracket!3203) (Colon!3203) (Null!3203) (Comma!3203) (LeftBracket!3203) (False!6407) (LeftBrace!3203) (ImaginaryLiteralValue!3203 (text!22867 List!17741)) (StringLiteralValue!9609 (value!98378 List!17741)) (EOFValue!3203 (value!98379 List!17741)) (IdentValue!3203 (value!98380 List!17741)) (DelimiterValue!6407 (value!98381 List!17741)) (DedentValue!3203 (value!98382 List!17741)) (NewLineValue!3203 (value!98383 List!17741)) (IntegerValue!9609 (value!98384 (_ BitVec 32)) (text!22868 List!17741)) (IntegerValue!9610 (value!98385 Int) (text!22869 List!17741)) (Times!3203) (Or!3203) (Equal!3203) (Minus!3203) (Broken!16019 (value!98386 List!17741)) (And!3203) (Div!3203) (LessEqual!3203) (Mod!3203) (Concat!7644) (Not!3203) (Plus!3203) (SpaceValue!3203 (value!98387 List!17741)) (IntegerValue!9611 (value!98388 Int) (text!22870 List!17741)) (StringLiteralValue!9610 (text!22871 List!17741)) (FloatLiteralValue!6407 (text!22872 List!17741)) (BytesLiteralValue!3203 (value!98389 List!17741)) (CommentValue!6407 (value!98390 List!17741)) (StringLiteralValue!9611 (value!98391 List!17741)) (ErrorTokenValue!3203 (msg!3264 List!17741)) )
))
(declare-datatypes ((C!9056 0))(
  ( (C!9057 (val!5124 Int)) )
))
(declare-datatypes ((List!17742 0))(
  ( (Nil!17672) (Cons!17672 (h!23073 C!9056) (t!148215 List!17742)) )
))
(declare-datatypes ((IArray!11753 0))(
  ( (IArray!11754 (innerList!5934 List!17742)) )
))
(declare-datatypes ((Conc!5874 0))(
  ( (Node!5874 (left!14232 Conc!5874) (right!14562 Conc!5874) (csize!11978 Int) (cheight!6085 Int)) (Leaf!8651 (xs!8702 IArray!11753) (csize!11979 Int)) (Empty!5874) )
))
(declare-datatypes ((BalanceConc!11692 0))(
  ( (BalanceConc!11693 (c!263015 Conc!5874)) )
))
(declare-datatypes ((Regex!4441 0))(
  ( (ElementMatch!4441 (c!263016 C!9056)) (Concat!7645 (regOne!9394 Regex!4441) (regTwo!9394 Regex!4441)) (EmptyExpr!4441) (Star!4441 (reg!4770 Regex!4441)) (EmptyLang!4441) (Union!4441 (regOne!9395 Regex!4441) (regTwo!9395 Regex!4441)) )
))
(declare-datatypes ((String!20347 0))(
  ( (String!20348 (value!98392 String)) )
))
(declare-datatypes ((TokenValueInjection!6066 0))(
  ( (TokenValueInjection!6067 (toValue!4536 Int) (toChars!4395 Int)) )
))
(declare-datatypes ((Rule!6026 0))(
  ( (Rule!6027 (regex!3113 Regex!4441) (tag!3389 String!20347) (isSeparator!3113 Bool) (transformation!3113 TokenValueInjection!6066)) )
))
(declare-datatypes ((Token!5792 0))(
  ( (Token!5793 (value!98393 TokenValue!3203) (rule!4933 Rule!6026) (size!14182 Int) (originalCharacters!3927 List!17742)) )
))
(declare-datatypes ((List!17743 0))(
  ( (Nil!17673) (Cons!17673 (h!23074 Token!5792) (t!148216 List!17743)) )
))
(declare-fun lt!578197 () List!17743)

(declare-fun tokens!457 () List!17743)

(assert (=> b!1615007 (= res!720702 (not (= lt!578197 (t!148216 tokens!457))))))

(declare-datatypes ((IArray!11755 0))(
  ( (IArray!11756 (innerList!5935 List!17743)) )
))
(declare-datatypes ((Conc!5875 0))(
  ( (Node!5875 (left!14233 Conc!5875) (right!14563 Conc!5875) (csize!11980 Int) (cheight!6086 Int)) (Leaf!8652 (xs!8703 IArray!11755) (csize!11981 Int)) (Empty!5875) )
))
(declare-datatypes ((BalanceConc!11694 0))(
  ( (BalanceConc!11695 (c!263017 Conc!5875)) )
))
(declare-datatypes ((tuple2!17194 0))(
  ( (tuple2!17195 (_1!9999 BalanceConc!11694) (_2!9999 BalanceConc!11692)) )
))
(declare-fun lt!578188 () tuple2!17194)

(declare-fun list!6907 (BalanceConc!11694) List!17743)

(assert (=> b!1615007 (= lt!578197 (list!6907 (_1!9999 lt!578188)))))

(declare-datatypes ((Unit!28409 0))(
  ( (Unit!28410) )
))
(declare-fun lt!578185 () Unit!28409)

(declare-datatypes ((List!17744 0))(
  ( (Nil!17674) (Cons!17674 (h!23075 Rule!6026) (t!148217 List!17744)) )
))
(declare-fun rules!1846 () List!17744)

(declare-fun theoremInvertabilityWhenTokenListSeparable!187 (LexerInterface!2742 List!17744 List!17743) Unit!28409)

(assert (=> b!1615007 (= lt!578185 (theoremInvertabilityWhenTokenListSeparable!187 thiss!17113 rules!1846 (t!148216 tokens!457)))))

(declare-fun lt!578181 () List!17742)

(declare-fun lt!578186 () List!17742)

(declare-fun isPrefix!1373 (List!17742 List!17742) Bool)

(assert (=> b!1615007 (isPrefix!1373 lt!578181 lt!578186)))

(declare-fun lt!578193 () Unit!28409)

(declare-fun lt!578180 () List!17742)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!898 (List!17742 List!17742) Unit!28409)

(assert (=> b!1615007 (= lt!578193 (lemmaConcatTwoListThenFirstIsPrefix!898 lt!578181 lt!578180))))

(declare-fun b!1615008 () Bool)

(declare-fun res!720698 () Bool)

(assert (=> b!1615008 (=> (not res!720698) (not e!1035917))))

(declare-fun isEmpty!10688 (List!17744) Bool)

(assert (=> b!1615008 (= res!720698 (not (isEmpty!10688 rules!1846)))))

(declare-fun b!1615009 () Bool)

(declare-fun e!1035908 () Bool)

(assert (=> b!1615009 (= e!1035921 e!1035908)))

(declare-fun res!720696 () Bool)

(assert (=> b!1615009 (=> res!720696 e!1035908)))

(declare-fun lt!578201 () List!17743)

(declare-fun lt!578202 () List!17743)

(assert (=> b!1615009 (= res!720696 (or (not (= lt!578197 lt!578202)) (not (= lt!578202 lt!578201))))))

(declare-fun lt!578196 () BalanceConc!11694)

(assert (=> b!1615009 (= lt!578202 (list!6907 lt!578196))))

(assert (=> b!1615009 (= lt!578197 lt!578201)))

(declare-fun prepend!623 (BalanceConc!11694 Token!5792) BalanceConc!11694)

(declare-fun seqFromList!1975 (List!17743) BalanceConc!11694)

(assert (=> b!1615009 (= lt!578201 (list!6907 (prepend!623 (seqFromList!1975 (t!148216 (t!148216 tokens!457))) (h!23074 (t!148216 tokens!457)))))))

(declare-fun lt!578192 () Unit!28409)

(declare-fun seqFromListBHdTlConstructive!190 (Token!5792 List!17743 BalanceConc!11694) Unit!28409)

(assert (=> b!1615009 (= lt!578192 (seqFromListBHdTlConstructive!190 (h!23074 (t!148216 tokens!457)) (t!148216 (t!148216 tokens!457)) (_1!9999 lt!578188)))))

(declare-fun b!1615010 () Bool)

(declare-fun res!720694 () Bool)

(assert (=> b!1615010 (=> (not res!720694) (not e!1035917))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!435 (LexerInterface!2742 List!17743 List!17744) Bool)

(assert (=> b!1615010 (= res!720694 (tokensListTwoByTwoPredicateSeparableList!435 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1615011 () Bool)

(declare-fun e!1035919 () Bool)

(declare-fun e!1035913 () Bool)

(assert (=> b!1615011 (= e!1035919 e!1035913)))

(declare-fun res!720708 () Bool)

(assert (=> b!1615011 (=> res!720708 e!1035913)))

(declare-fun lt!578200 () Regex!4441)

(declare-fun lt!578184 () List!17742)

(declare-fun prefixMatch!376 (Regex!4441 List!17742) Bool)

(declare-fun ++!4665 (List!17742 List!17742) List!17742)

(assert (=> b!1615011 (= res!720708 (prefixMatch!376 lt!578200 (++!4665 lt!578181 lt!578184)))))

(declare-fun lt!578189 () BalanceConc!11692)

(declare-fun list!6908 (BalanceConc!11692) List!17742)

(assert (=> b!1615011 (= lt!578184 (list!6908 lt!578189))))

(declare-fun b!1615012 () Bool)

(declare-fun res!720692 () Bool)

(declare-fun e!1035915 () Bool)

(assert (=> b!1615012 (=> (not res!720692) (not e!1035915))))

(declare-fun head!3346 (List!17742) C!9056)

(assert (=> b!1615012 (= res!720692 (= lt!578184 (Cons!17672 (head!3346 (originalCharacters!3927 (h!23074 (t!148216 tokens!457)))) Nil!17672)))))

(declare-fun b!1615013 () Bool)

(declare-fun tp!470908 () Bool)

(declare-fun e!1035905 () Bool)

(declare-fun inv!23074 (Token!5792) Bool)

(assert (=> b!1615013 (= e!1035902 (and (inv!23074 (h!23074 tokens!457)) e!1035905 tp!470908))))

(declare-fun b!1615014 () Bool)

(declare-fun e!1035903 () Bool)

(assert (=> b!1615014 (= e!1035903 true)))

(declare-fun e!1035912 () Bool)

(assert (=> b!1615014 e!1035912))

(declare-fun res!720690 () Bool)

(assert (=> b!1615014 (=> (not res!720690) (not e!1035912))))

(declare-datatypes ((tuple2!17196 0))(
  ( (tuple2!17197 (_1!10000 Token!5792) (_2!10000 List!17742)) )
))
(declare-datatypes ((Option!3233 0))(
  ( (None!3232) (Some!3232 (v!24215 tuple2!17196)) )
))
(declare-fun lt!578182 () Option!3233)

(declare-fun isDefined!2600 (Option!3233) Bool)

(assert (=> b!1615014 (= res!720690 (isDefined!2600 lt!578182))))

(declare-fun maxPrefix!1306 (LexerInterface!2742 List!17744 List!17742) Option!3233)

(assert (=> b!1615014 (= lt!578182 (maxPrefix!1306 thiss!17113 rules!1846 lt!578181))))

(assert (=> b!1615014 (isDefined!2600 (maxPrefix!1306 thiss!17113 rules!1846 (originalCharacters!3927 (h!23074 tokens!457))))))

(declare-fun b!1615015 () Bool)

(declare-fun res!720693 () Bool)

(assert (=> b!1615015 (=> res!720693 e!1035908)))

(declare-fun separableTokensPredicate!684 (LexerInterface!2742 Token!5792 Token!5792 List!17744) Bool)

(assert (=> b!1615015 (= res!720693 (not (separableTokensPredicate!684 thiss!17113 (h!23074 tokens!457) (h!23074 (t!148216 tokens!457)) rules!1846)))))

(declare-fun b!1615016 () Bool)

(declare-fun res!720705 () Bool)

(assert (=> b!1615016 (=> (not res!720705) (not e!1035917))))

(assert (=> b!1615016 (= res!720705 (and (not ((_ is Nil!17673) tokens!457)) (not ((_ is Nil!17673) (t!148216 tokens!457)))))))

(declare-fun b!1615017 () Bool)

(declare-fun e!1035904 () Bool)

(assert (=> b!1615017 (= e!1035908 e!1035904)))

(declare-fun res!720699 () Bool)

(assert (=> b!1615017 (=> res!720699 e!1035904)))

(declare-fun lt!578187 () List!17742)

(declare-fun lt!578191 () List!17742)

(assert (=> b!1615017 (= res!720699 (or (not (= lt!578191 lt!578187)) (not (= lt!578187 lt!578181)) (not (= lt!578191 lt!578181))))))

(declare-fun printList!857 (LexerInterface!2742 List!17743) List!17742)

(assert (=> b!1615017 (= lt!578187 (printList!857 thiss!17113 (Cons!17673 (h!23074 tokens!457) Nil!17673)))))

(declare-fun lt!578190 () BalanceConc!11692)

(assert (=> b!1615017 (= lt!578191 (list!6908 lt!578190))))

(declare-fun lt!578203 () BalanceConc!11694)

(declare-fun printTailRec!795 (LexerInterface!2742 BalanceConc!11694 Int BalanceConc!11692) BalanceConc!11692)

(assert (=> b!1615017 (= lt!578190 (printTailRec!795 thiss!17113 lt!578203 0 (BalanceConc!11693 Empty!5874)))))

(declare-fun print!1273 (LexerInterface!2742 BalanceConc!11694) BalanceConc!11692)

(assert (=> b!1615017 (= lt!578190 (print!1273 thiss!17113 lt!578203))))

(declare-fun singletonSeq!1504 (Token!5792) BalanceConc!11694)

(assert (=> b!1615017 (= lt!578203 (singletonSeq!1504 (h!23074 tokens!457)))))

(declare-fun lt!578204 () Option!3233)

(declare-fun lt!578183 () List!17742)

(assert (=> b!1615017 (= lt!578204 (maxPrefix!1306 thiss!17113 rules!1846 lt!578183))))

(declare-fun b!1615018 () Bool)

(declare-fun tp!470903 () Bool)

(declare-fun e!1035910 () Bool)

(declare-fun inv!21 (TokenValue!3203) Bool)

(assert (=> b!1615018 (= e!1035905 (and (inv!21 (value!98393 (h!23074 tokens!457))) e!1035910 tp!470903))))

(declare-fun b!1615019 () Bool)

(declare-fun res!720703 () Bool)

(assert (=> b!1615019 (=> res!720703 e!1035904)))

(declare-fun isEmpty!10689 (BalanceConc!11694) Bool)

(declare-fun lex!1226 (LexerInterface!2742 List!17744 BalanceConc!11692) tuple2!17194)

(declare-fun seqFromList!1976 (List!17742) BalanceConc!11692)

(assert (=> b!1615019 (= res!720703 (isEmpty!10689 (_1!9999 (lex!1226 thiss!17113 rules!1846 (seqFromList!1976 lt!578181)))))))

(declare-fun b!1615020 () Bool)

(declare-fun res!720691 () Bool)

(assert (=> b!1615020 (=> (not res!720691) (not e!1035915))))

(assert (=> b!1615020 (= res!720691 (= lt!578184 (Cons!17672 (head!3346 lt!578180) Nil!17672)))))

(declare-fun b!1615021 () Bool)

(declare-fun res!720706 () Bool)

(assert (=> b!1615021 (=> (not res!720706) (not e!1035917))))

(declare-fun rulesInvariant!2411 (LexerInterface!2742 List!17744) Bool)

(assert (=> b!1615021 (= res!720706 (rulesInvariant!2411 thiss!17113 rules!1846))))

(declare-fun b!1615022 () Bool)

(assert (=> b!1615022 (= e!1035913 e!1035903)))

(declare-fun res!720709 () Bool)

(assert (=> b!1615022 (=> res!720709 e!1035903)))

(declare-datatypes ((tuple2!17198 0))(
  ( (tuple2!17199 (_1!10001 Token!5792) (_2!10001 BalanceConc!11692)) )
))
(declare-datatypes ((Option!3234 0))(
  ( (None!3233) (Some!3233 (v!24216 tuple2!17198)) )
))
(declare-fun isDefined!2601 (Option!3234) Bool)

(declare-fun maxPrefixZipperSequence!637 (LexerInterface!2742 List!17744 BalanceConc!11692) Option!3234)

(assert (=> b!1615022 (= res!720709 (not (isDefined!2601 (maxPrefixZipperSequence!637 thiss!17113 rules!1846 (seqFromList!1976 (originalCharacters!3927 (h!23074 tokens!457)))))))))

(assert (=> b!1615022 e!1035915))

(declare-fun res!720700 () Bool)

(assert (=> b!1615022 (=> (not res!720700) (not e!1035915))))

(assert (=> b!1615022 (= res!720700 (= lt!578181 (originalCharacters!3927 (h!23074 tokens!457))))))

(declare-fun b!1615023 () Bool)

(declare-fun res!720697 () Bool)

(assert (=> b!1615023 (=> (not res!720697) (not e!1035917))))

(declare-fun rulesProduceEachTokenIndividuallyList!944 (LexerInterface!2742 List!17744 List!17743) Bool)

(assert (=> b!1615023 (= res!720697 (rulesProduceEachTokenIndividuallyList!944 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1615024 () Bool)

(declare-fun get!5066 (Option!3233) tuple2!17196)

(assert (=> b!1615024 (= e!1035912 (= (_1!10000 (get!5066 lt!578182)) (h!23074 tokens!457)))))

(declare-fun b!1615025 () Bool)

(declare-fun e!1035907 () Bool)

(declare-fun tp!470901 () Bool)

(declare-fun inv!23071 (String!20347) Bool)

(declare-fun inv!23075 (TokenValueInjection!6066) Bool)

(assert (=> b!1615025 (= e!1035910 (and tp!470901 (inv!23071 (tag!3389 (rule!4933 (h!23074 tokens!457)))) (inv!23075 (transformation!3113 (rule!4933 (h!23074 tokens!457)))) e!1035907))))

(declare-fun b!1615026 () Bool)

(declare-fun res!720695 () Bool)

(assert (=> b!1615026 (=> res!720695 e!1035904)))

(declare-fun rulesProduceIndividualToken!1394 (LexerInterface!2742 List!17744 Token!5792) Bool)

(assert (=> b!1615026 (= res!720695 (not (rulesProduceIndividualToken!1394 thiss!17113 rules!1846 (h!23074 tokens!457))))))

(declare-fun b!1615027 () Bool)

(declare-fun e!1035909 () Bool)

(assert (=> b!1615027 (= e!1035909 e!1035919)))

(declare-fun res!720704 () Bool)

(assert (=> b!1615027 (=> res!720704 e!1035919)))

(declare-fun lt!578198 () BalanceConc!11692)

(declare-fun prefixMatchZipperSequence!485 (Regex!4441 BalanceConc!11692) Bool)

(declare-fun ++!4666 (BalanceConc!11692 BalanceConc!11692) BalanceConc!11692)

(assert (=> b!1615027 (= res!720704 (prefixMatchZipperSequence!485 lt!578200 (++!4666 lt!578198 lt!578189)))))

(declare-fun singletonSeq!1505 (C!9056) BalanceConc!11692)

(declare-fun apply!4442 (BalanceConc!11692 Int) C!9056)

(declare-fun charsOf!1762 (Token!5792) BalanceConc!11692)

(assert (=> b!1615027 (= lt!578189 (singletonSeq!1505 (apply!4442 (charsOf!1762 (h!23074 (t!148216 tokens!457))) 0)))))

(declare-fun rulesRegex!503 (LexerInterface!2742 List!17744) Regex!4441)

(assert (=> b!1615027 (= lt!578200 (rulesRegex!503 thiss!17113 rules!1846))))

(declare-fun e!1035920 () Bool)

(assert (=> b!1615028 (= e!1035920 (and tp!470902 tp!470904))))

(declare-fun e!1035911 () Bool)

(declare-fun b!1615029 () Bool)

(declare-fun tp!470905 () Bool)

(assert (=> b!1615029 (= e!1035911 (and tp!470905 (inv!23071 (tag!3389 (h!23075 rules!1846))) (inv!23075 (transformation!3113 (h!23075 rules!1846))) e!1035920))))

(declare-fun b!1615030 () Bool)

(assert (=> b!1615030 (= e!1035904 e!1035909)))

(declare-fun res!720689 () Bool)

(assert (=> b!1615030 (=> res!720689 e!1035909)))

(assert (=> b!1615030 (= res!720689 (not (isDefined!2600 lt!578204)))))

(declare-fun lt!578199 () Unit!28409)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!316 (LexerInterface!2742 List!17744 List!17742 List!17742) Unit!28409)

(assert (=> b!1615030 (= lt!578199 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!316 thiss!17113 rules!1846 lt!578181 lt!578180))))

(declare-fun b!1615031 () Bool)

(declare-fun lt!578194 () BalanceConc!11692)

(declare-fun head!3347 (BalanceConc!11692) C!9056)

(assert (=> b!1615031 (= e!1035915 (= lt!578184 (Cons!17672 (head!3347 lt!578194) Nil!17672)))))

(assert (=> b!1615032 (= e!1035907 (and tp!470900 tp!470906))))

(declare-fun b!1615033 () Bool)

(assert (=> b!1615033 (= e!1035917 e!1035906)))

(declare-fun res!720701 () Bool)

(assert (=> b!1615033 (=> (not res!720701) (not e!1035906))))

(assert (=> b!1615033 (= res!720701 (= lt!578183 lt!578186))))

(assert (=> b!1615033 (= lt!578186 (++!4665 lt!578181 lt!578180))))

(declare-fun lt!578195 () BalanceConc!11692)

(assert (=> b!1615033 (= lt!578183 (list!6908 lt!578195))))

(assert (=> b!1615033 (= lt!578180 (list!6908 lt!578194))))

(assert (=> b!1615033 (= lt!578181 (list!6908 lt!578198))))

(assert (=> b!1615033 (= lt!578198 (charsOf!1762 (h!23074 tokens!457)))))

(assert (=> b!1615033 (= lt!578188 (lex!1226 thiss!17113 rules!1846 lt!578194))))

(assert (=> b!1615033 (= lt!578194 (print!1273 thiss!17113 lt!578196))))

(assert (=> b!1615033 (= lt!578196 (seqFromList!1975 (t!148216 tokens!457)))))

(assert (=> b!1615033 (= lt!578195 (print!1273 thiss!17113 (seqFromList!1975 tokens!457)))))

(declare-fun b!1615034 () Bool)

(declare-fun tp!470907 () Bool)

(assert (=> b!1615034 (= e!1035914 (and e!1035911 tp!470907))))

(assert (= (and start!152698 res!720707) b!1615008))

(assert (= (and b!1615008 res!720698) b!1615021))

(assert (= (and b!1615021 res!720706) b!1615023))

(assert (= (and b!1615023 res!720697) b!1615010))

(assert (= (and b!1615010 res!720694) b!1615016))

(assert (= (and b!1615016 res!720705) b!1615033))

(assert (= (and b!1615033 res!720701) b!1615007))

(assert (= (and b!1615007 (not res!720702)) b!1615009))

(assert (= (and b!1615009 (not res!720696)) b!1615015))

(assert (= (and b!1615015 (not res!720693)) b!1615017))

(assert (= (and b!1615017 (not res!720699)) b!1615026))

(assert (= (and b!1615026 (not res!720695)) b!1615019))

(assert (= (and b!1615019 (not res!720703)) b!1615030))

(assert (= (and b!1615030 (not res!720689)) b!1615027))

(assert (= (and b!1615027 (not res!720704)) b!1615011))

(assert (= (and b!1615011 (not res!720708)) b!1615022))

(assert (= (and b!1615022 res!720700) b!1615012))

(assert (= (and b!1615012 res!720692) b!1615020))

(assert (= (and b!1615020 res!720691) b!1615031))

(assert (= (and b!1615022 (not res!720709)) b!1615014))

(assert (= (and b!1615014 res!720690) b!1615024))

(assert (= b!1615029 b!1615028))

(assert (= b!1615034 b!1615029))

(assert (= (and start!152698 ((_ is Cons!17674) rules!1846)) b!1615034))

(assert (= b!1615025 b!1615032))

(assert (= b!1615018 b!1615025))

(assert (= b!1615013 b!1615018))

(assert (= (and start!152698 ((_ is Cons!17673) tokens!457)) b!1615013))

(declare-fun m!1934469 () Bool)

(assert (=> b!1615026 m!1934469))

(declare-fun m!1934471 () Bool)

(assert (=> b!1615021 m!1934471))

(declare-fun m!1934473 () Bool)

(assert (=> b!1615010 m!1934473))

(declare-fun m!1934475 () Bool)

(assert (=> b!1615011 m!1934475))

(assert (=> b!1615011 m!1934475))

(declare-fun m!1934477 () Bool)

(assert (=> b!1615011 m!1934477))

(declare-fun m!1934479 () Bool)

(assert (=> b!1615011 m!1934479))

(declare-fun m!1934481 () Bool)

(assert (=> b!1615019 m!1934481))

(assert (=> b!1615019 m!1934481))

(declare-fun m!1934483 () Bool)

(assert (=> b!1615019 m!1934483))

(declare-fun m!1934485 () Bool)

(assert (=> b!1615019 m!1934485))

(declare-fun m!1934487 () Bool)

(assert (=> b!1615023 m!1934487))

(declare-fun m!1934489 () Bool)

(assert (=> b!1615007 m!1934489))

(declare-fun m!1934491 () Bool)

(assert (=> b!1615007 m!1934491))

(declare-fun m!1934493 () Bool)

(assert (=> b!1615007 m!1934493))

(declare-fun m!1934495 () Bool)

(assert (=> b!1615007 m!1934495))

(declare-fun m!1934497 () Bool)

(assert (=> b!1615017 m!1934497))

(declare-fun m!1934499 () Bool)

(assert (=> b!1615017 m!1934499))

(declare-fun m!1934501 () Bool)

(assert (=> b!1615017 m!1934501))

(declare-fun m!1934503 () Bool)

(assert (=> b!1615017 m!1934503))

(declare-fun m!1934505 () Bool)

(assert (=> b!1615017 m!1934505))

(declare-fun m!1934507 () Bool)

(assert (=> b!1615017 m!1934507))

(declare-fun m!1934509 () Bool)

(assert (=> b!1615020 m!1934509))

(declare-fun m!1934511 () Bool)

(assert (=> b!1615013 m!1934511))

(declare-fun m!1934513 () Bool)

(assert (=> b!1615033 m!1934513))

(declare-fun m!1934515 () Bool)

(assert (=> b!1615033 m!1934515))

(declare-fun m!1934517 () Bool)

(assert (=> b!1615033 m!1934517))

(declare-fun m!1934519 () Bool)

(assert (=> b!1615033 m!1934519))

(declare-fun m!1934521 () Bool)

(assert (=> b!1615033 m!1934521))

(declare-fun m!1934523 () Bool)

(assert (=> b!1615033 m!1934523))

(declare-fun m!1934525 () Bool)

(assert (=> b!1615033 m!1934525))

(declare-fun m!1934527 () Bool)

(assert (=> b!1615033 m!1934527))

(assert (=> b!1615033 m!1934519))

(declare-fun m!1934529 () Bool)

(assert (=> b!1615033 m!1934529))

(declare-fun m!1934531 () Bool)

(assert (=> b!1615033 m!1934531))

(declare-fun m!1934533 () Bool)

(assert (=> b!1615027 m!1934533))

(declare-fun m!1934535 () Bool)

(assert (=> b!1615027 m!1934535))

(declare-fun m!1934537 () Bool)

(assert (=> b!1615027 m!1934537))

(declare-fun m!1934539 () Bool)

(assert (=> b!1615027 m!1934539))

(declare-fun m!1934541 () Bool)

(assert (=> b!1615027 m!1934541))

(assert (=> b!1615027 m!1934535))

(declare-fun m!1934543 () Bool)

(assert (=> b!1615027 m!1934543))

(assert (=> b!1615027 m!1934539))

(assert (=> b!1615027 m!1934543))

(declare-fun m!1934545 () Bool)

(assert (=> b!1615025 m!1934545))

(declare-fun m!1934547 () Bool)

(assert (=> b!1615025 m!1934547))

(declare-fun m!1934549 () Bool)

(assert (=> b!1615030 m!1934549))

(declare-fun m!1934551 () Bool)

(assert (=> b!1615030 m!1934551))

(declare-fun m!1934553 () Bool)

(assert (=> b!1615014 m!1934553))

(declare-fun m!1934555 () Bool)

(assert (=> b!1615014 m!1934555))

(declare-fun m!1934557 () Bool)

(assert (=> b!1615014 m!1934557))

(assert (=> b!1615014 m!1934557))

(declare-fun m!1934559 () Bool)

(assert (=> b!1615014 m!1934559))

(declare-fun m!1934561 () Bool)

(assert (=> b!1615012 m!1934561))

(declare-fun m!1934563 () Bool)

(assert (=> b!1615029 m!1934563))

(declare-fun m!1934565 () Bool)

(assert (=> b!1615029 m!1934565))

(declare-fun m!1934567 () Bool)

(assert (=> b!1615015 m!1934567))

(declare-fun m!1934569 () Bool)

(assert (=> b!1615024 m!1934569))

(declare-fun m!1934571 () Bool)

(assert (=> b!1615031 m!1934571))

(declare-fun m!1934573 () Bool)

(assert (=> b!1615009 m!1934573))

(declare-fun m!1934575 () Bool)

(assert (=> b!1615009 m!1934575))

(declare-fun m!1934577 () Bool)

(assert (=> b!1615009 m!1934577))

(declare-fun m!1934579 () Bool)

(assert (=> b!1615009 m!1934579))

(declare-fun m!1934581 () Bool)

(assert (=> b!1615009 m!1934581))

(assert (=> b!1615009 m!1934577))

(assert (=> b!1615009 m!1934579))

(declare-fun m!1934583 () Bool)

(assert (=> b!1615018 m!1934583))

(declare-fun m!1934585 () Bool)

(assert (=> b!1615022 m!1934585))

(assert (=> b!1615022 m!1934585))

(declare-fun m!1934587 () Bool)

(assert (=> b!1615022 m!1934587))

(assert (=> b!1615022 m!1934587))

(declare-fun m!1934589 () Bool)

(assert (=> b!1615022 m!1934589))

(declare-fun m!1934591 () Bool)

(assert (=> b!1615008 m!1934591))

(check-sat (not b!1615013) b_and!114527 (not b!1615021) (not b!1615031) (not b!1615020) b_and!114529 (not b!1615027) (not b!1615007) (not b!1615017) (not b!1615012) (not b!1615014) (not b_next!44205) (not b!1615033) (not b_next!44201) (not b!1615011) (not b!1615029) (not b!1615026) (not b_next!44203) (not b!1615025) b_and!114531 (not b!1615030) (not b!1615015) (not b!1615008) (not b!1615010) (not b!1615019) (not b!1615022) (not b!1615023) (not b!1615034) (not b_next!44199) (not b!1615018) b_and!114525 (not b!1615024) (not b!1615009))
(check-sat (not b_next!44205) (not b_next!44201) (not b_next!44203) b_and!114527 b_and!114531 (not b_next!44199) b_and!114525 b_and!114529)
