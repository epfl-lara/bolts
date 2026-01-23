; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152174 () Bool)

(assert start!152174)

(declare-fun b!1611900 () Bool)

(declare-fun b_free!43319 () Bool)

(declare-fun b_next!44023 () Bool)

(assert (=> b!1611900 (= b_free!43319 (not b_next!44023))))

(declare-fun tp!470147 () Bool)

(declare-fun b_and!114277 () Bool)

(assert (=> b!1611900 (= tp!470147 b_and!114277)))

(declare-fun b_free!43321 () Bool)

(declare-fun b_next!44025 () Bool)

(assert (=> b!1611900 (= b_free!43321 (not b_next!44025))))

(declare-fun tp!470151 () Bool)

(declare-fun b_and!114279 () Bool)

(assert (=> b!1611900 (= tp!470151 b_and!114279)))

(declare-fun b!1611922 () Bool)

(declare-fun b_free!43323 () Bool)

(declare-fun b_next!44027 () Bool)

(assert (=> b!1611922 (= b_free!43323 (not b_next!44027))))

(declare-fun tp!470148 () Bool)

(declare-fun b_and!114281 () Bool)

(assert (=> b!1611922 (= tp!470148 b_and!114281)))

(declare-fun b_free!43325 () Bool)

(declare-fun b_next!44029 () Bool)

(assert (=> b!1611922 (= b_free!43325 (not b_next!44029))))

(declare-fun tp!470144 () Bool)

(declare-fun b_and!114283 () Bool)

(assert (=> b!1611922 (= tp!470144 b_and!114283)))

(declare-fun e!1033788 () Bool)

(assert (=> b!1611900 (= e!1033788 (and tp!470147 tp!470151))))

(declare-fun b!1611901 () Bool)

(declare-fun e!1033775 () Bool)

(declare-fun e!1033789 () Bool)

(assert (=> b!1611901 (= e!1033775 e!1033789)))

(declare-fun res!718745 () Bool)

(assert (=> b!1611901 (=> res!718745 e!1033789)))

(declare-datatypes ((List!17659 0))(
  ( (Nil!17589) (Cons!17589 (h!22990 (_ BitVec 16)) (t!148006 List!17659)) )
))
(declare-datatypes ((TokenValue!3187 0))(
  ( (FloatLiteralValue!6374 (text!22754 List!17659)) (TokenValueExt!3186 (__x!11676 Int)) (Broken!15935 (value!97911 List!17659)) (Object!3256) (End!3187) (Def!3187) (Underscore!3187) (Match!3187) (Else!3187) (Error!3187) (Case!3187) (If!3187) (Extends!3187) (Abstract!3187) (Class!3187) (Val!3187) (DelimiterValue!6374 (del!3247 List!17659)) (KeywordValue!3193 (value!97912 List!17659)) (CommentValue!6374 (value!97913 List!17659)) (WhitespaceValue!6374 (value!97914 List!17659)) (IndentationValue!3187 (value!97915 List!17659)) (String!20266) (Int32!3187) (Broken!15936 (value!97916 List!17659)) (Boolean!3188) (Unit!28246) (OperatorValue!3190 (op!3247 List!17659)) (IdentifierValue!6374 (value!97917 List!17659)) (IdentifierValue!6375 (value!97918 List!17659)) (WhitespaceValue!6375 (value!97919 List!17659)) (True!6374) (False!6374) (Broken!15937 (value!97920 List!17659)) (Broken!15938 (value!97921 List!17659)) (True!6375) (RightBrace!3187) (RightBracket!3187) (Colon!3187) (Null!3187) (Comma!3187) (LeftBracket!3187) (False!6375) (LeftBrace!3187) (ImaginaryLiteralValue!3187 (text!22755 List!17659)) (StringLiteralValue!9561 (value!97922 List!17659)) (EOFValue!3187 (value!97923 List!17659)) (IdentValue!3187 (value!97924 List!17659)) (DelimiterValue!6375 (value!97925 List!17659)) (DedentValue!3187 (value!97926 List!17659)) (NewLineValue!3187 (value!97927 List!17659)) (IntegerValue!9561 (value!97928 (_ BitVec 32)) (text!22756 List!17659)) (IntegerValue!9562 (value!97929 Int) (text!22757 List!17659)) (Times!3187) (Or!3187) (Equal!3187) (Minus!3187) (Broken!15939 (value!97930 List!17659)) (And!3187) (Div!3187) (LessEqual!3187) (Mod!3187) (Concat!7612) (Not!3187) (Plus!3187) (SpaceValue!3187 (value!97931 List!17659)) (IntegerValue!9563 (value!97932 Int) (text!22758 List!17659)) (StringLiteralValue!9562 (text!22759 List!17659)) (FloatLiteralValue!6375 (text!22760 List!17659)) (BytesLiteralValue!3187 (value!97933 List!17659)) (CommentValue!6375 (value!97934 List!17659)) (StringLiteralValue!9563 (value!97935 List!17659)) (ErrorTokenValue!3187 (msg!3248 List!17659)) )
))
(declare-datatypes ((C!9024 0))(
  ( (C!9025 (val!5108 Int)) )
))
(declare-datatypes ((List!17660 0))(
  ( (Nil!17590) (Cons!17590 (h!22991 C!9024) (t!148007 List!17660)) )
))
(declare-datatypes ((IArray!11689 0))(
  ( (IArray!11690 (innerList!5902 List!17660)) )
))
(declare-datatypes ((Conc!5842 0))(
  ( (Node!5842 (left!14180 Conc!5842) (right!14510 Conc!5842) (csize!11914 Int) (cheight!6053 Int)) (Leaf!8611 (xs!8670 IArray!11689) (csize!11915 Int)) (Empty!5842) )
))
(declare-datatypes ((BalanceConc!11628 0))(
  ( (BalanceConc!11629 (c!262711 Conc!5842)) )
))
(declare-datatypes ((Regex!4425 0))(
  ( (ElementMatch!4425 (c!262712 C!9024)) (Concat!7613 (regOne!9362 Regex!4425) (regTwo!9362 Regex!4425)) (EmptyExpr!4425) (Star!4425 (reg!4754 Regex!4425)) (EmptyLang!4425) (Union!4425 (regOne!9363 Regex!4425) (regTwo!9363 Regex!4425)) )
))
(declare-datatypes ((String!20267 0))(
  ( (String!20268 (value!97936 String)) )
))
(declare-datatypes ((TokenValueInjection!6034 0))(
  ( (TokenValueInjection!6035 (toValue!4520 Int) (toChars!4379 Int)) )
))
(declare-datatypes ((Rule!5994 0))(
  ( (Rule!5995 (regex!3097 Regex!4425) (tag!3373 String!20267) (isSeparator!3097 Bool) (transformation!3097 TokenValueInjection!6034)) )
))
(declare-datatypes ((Token!5760 0))(
  ( (Token!5761 (value!97937 TokenValue!3187) (rule!4917 Rule!5994) (size!14148 Int) (originalCharacters!3911 List!17660)) )
))
(declare-datatypes ((tuple2!17086 0))(
  ( (tuple2!17087 (_1!9945 Token!5760) (_2!9945 List!17660)) )
))
(declare-datatypes ((Option!3195 0))(
  ( (None!3194) (Some!3194 (v!24159 tuple2!17086)) )
))
(declare-fun lt!575200 () Option!3195)

(declare-fun isDefined!2562 (Option!3195) Bool)

(assert (=> b!1611901 (= res!718745 (not (isDefined!2562 lt!575200)))))

(declare-datatypes ((Unit!28247 0))(
  ( (Unit!28248) )
))
(declare-fun lt!575183 () Unit!28247)

(declare-fun lt!575193 () List!17660)

(declare-datatypes ((List!17661 0))(
  ( (Nil!17591) (Cons!17591 (h!22992 Rule!5994) (t!148008 List!17661)) )
))
(declare-fun rules!1846 () List!17661)

(declare-datatypes ((LexerInterface!2726 0))(
  ( (LexerInterfaceExt!2723 (__x!11677 Int)) (Lexer!2724) )
))
(declare-fun thiss!17113 () LexerInterface!2726)

(declare-fun lt!575201 () List!17660)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!300 (LexerInterface!2726 List!17661 List!17660 List!17660) Unit!28247)

(assert (=> b!1611901 (= lt!575183 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!300 thiss!17113 rules!1846 lt!575193 lt!575201))))

(declare-fun b!1611902 () Bool)

(declare-fun res!718758 () Bool)

(declare-fun e!1033776 () Bool)

(assert (=> b!1611902 (=> (not res!718758) (not e!1033776))))

(declare-fun lt!575198 () List!17660)

(declare-datatypes ((List!17662 0))(
  ( (Nil!17592) (Cons!17592 (h!22993 Token!5760) (t!148009 List!17662)) )
))
(declare-fun tokens!457 () List!17662)

(declare-fun head!3302 (List!17660) C!9024)

(assert (=> b!1611902 (= res!718758 (= lt!575198 (Cons!17590 (head!3302 (originalCharacters!3911 (h!22993 (t!148009 tokens!457)))) Nil!17590)))))

(declare-fun b!1611903 () Bool)

(declare-fun res!718759 () Bool)

(declare-fun e!1033787 () Bool)

(assert (=> b!1611903 (=> (not res!718759) (not e!1033787))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!419 (LexerInterface!2726 List!17662 List!17661) Bool)

(assert (=> b!1611903 (= res!718759 (tokensListTwoByTwoPredicateSeparableList!419 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!470150 () Bool)

(declare-fun b!1611904 () Bool)

(declare-fun e!1033780 () Bool)

(declare-fun inv!23003 (String!20267) Bool)

(declare-fun inv!23006 (TokenValueInjection!6034) Bool)

(assert (=> b!1611904 (= e!1033780 (and tp!470150 (inv!23003 (tag!3373 (rule!4917 (h!22993 tokens!457)))) (inv!23006 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) e!1033788))))

(declare-fun b!1611905 () Bool)

(declare-fun e!1033791 () Bool)

(declare-fun e!1033790 () Bool)

(assert (=> b!1611905 (= e!1033791 e!1033790)))

(declare-fun res!718746 () Bool)

(assert (=> b!1611905 (=> res!718746 e!1033790)))

(declare-fun lt!575204 () Regex!4425)

(declare-fun prefixMatch!360 (Regex!4425 List!17660) Bool)

(declare-fun ++!4627 (List!17660 List!17660) List!17660)

(assert (=> b!1611905 (= res!718746 (prefixMatch!360 lt!575204 (++!4627 lt!575193 lt!575198)))))

(declare-fun lt!575187 () BalanceConc!11628)

(declare-fun list!6863 (BalanceConc!11628) List!17660)

(assert (=> b!1611905 (= lt!575198 (list!6863 lt!575187))))

(declare-fun res!718756 () Bool)

(assert (=> start!152174 (=> (not res!718756) (not e!1033787))))

(get-info :version)

(assert (=> start!152174 (= res!718756 ((_ is Lexer!2724) thiss!17113))))

(assert (=> start!152174 e!1033787))

(assert (=> start!152174 true))

(declare-fun e!1033782 () Bool)

(assert (=> start!152174 e!1033782))

(declare-fun e!1033786 () Bool)

(assert (=> start!152174 e!1033786))

(declare-fun b!1611906 () Bool)

(declare-fun res!718747 () Bool)

(assert (=> b!1611906 (=> (not res!718747) (not e!1033787))))

(declare-fun rulesProduceEachTokenIndividuallyList!928 (LexerInterface!2726 List!17661 List!17662) Bool)

(assert (=> b!1611906 (= res!718747 (rulesProduceEachTokenIndividuallyList!928 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1611907 () Bool)

(declare-fun e!1033783 () Bool)

(assert (=> b!1611907 (= e!1033790 e!1033783)))

(declare-fun res!718757 () Bool)

(assert (=> b!1611907 (=> res!718757 e!1033783)))

(declare-datatypes ((tuple2!17088 0))(
  ( (tuple2!17089 (_1!9946 Token!5760) (_2!9946 BalanceConc!11628)) )
))
(declare-datatypes ((Option!3196 0))(
  ( (None!3195) (Some!3195 (v!24160 tuple2!17088)) )
))
(declare-fun isDefined!2563 (Option!3196) Bool)

(declare-fun maxPrefixZipperSequence!621 (LexerInterface!2726 List!17661 BalanceConc!11628) Option!3196)

(declare-fun seqFromList!1943 (List!17660) BalanceConc!11628)

(assert (=> b!1611907 (= res!718757 (not (isDefined!2563 (maxPrefixZipperSequence!621 thiss!17113 rules!1846 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))

(assert (=> b!1611907 e!1033776))

(declare-fun res!718752 () Bool)

(assert (=> b!1611907 (=> (not res!718752) (not e!1033776))))

(assert (=> b!1611907 (= res!718752 (= lt!575193 (originalCharacters!3911 (h!22993 tokens!457))))))

(declare-fun b!1611908 () Bool)

(declare-fun res!718743 () Bool)

(assert (=> b!1611908 (=> (not res!718743) (not e!1033787))))

(declare-fun rulesInvariant!2395 (LexerInterface!2726 List!17661) Bool)

(assert (=> b!1611908 (= res!718743 (rulesInvariant!2395 thiss!17113 rules!1846))))

(declare-fun b!1611909 () Bool)

(declare-fun rulesValidInductive!942 (LexerInterface!2726 List!17661) Bool)

(assert (=> b!1611909 (= e!1033783 (rulesValidInductive!942 thiss!17113 rules!1846))))

(declare-fun b!1611910 () Bool)

(declare-fun lt!575199 () BalanceConc!11628)

(declare-fun head!3303 (BalanceConc!11628) C!9024)

(assert (=> b!1611910 (= e!1033776 (= lt!575198 (Cons!17590 (head!3303 lt!575199) Nil!17590)))))

(declare-fun b!1611911 () Bool)

(declare-fun e!1033774 () Bool)

(assert (=> b!1611911 (= e!1033787 e!1033774)))

(declare-fun res!718748 () Bool)

(assert (=> b!1611911 (=> (not res!718748) (not e!1033774))))

(declare-fun lt!575192 () List!17660)

(declare-fun lt!575197 () List!17660)

(assert (=> b!1611911 (= res!718748 (= lt!575192 lt!575197))))

(assert (=> b!1611911 (= lt!575197 (++!4627 lt!575193 lt!575201))))

(declare-fun lt!575181 () BalanceConc!11628)

(assert (=> b!1611911 (= lt!575192 (list!6863 lt!575181))))

(assert (=> b!1611911 (= lt!575201 (list!6863 lt!575199))))

(declare-fun lt!575190 () BalanceConc!11628)

(assert (=> b!1611911 (= lt!575193 (list!6863 lt!575190))))

(declare-fun charsOf!1746 (Token!5760) BalanceConc!11628)

(assert (=> b!1611911 (= lt!575190 (charsOf!1746 (h!22993 tokens!457)))))

(declare-datatypes ((IArray!11691 0))(
  ( (IArray!11692 (innerList!5903 List!17662)) )
))
(declare-datatypes ((Conc!5843 0))(
  ( (Node!5843 (left!14181 Conc!5843) (right!14511 Conc!5843) (csize!11916 Int) (cheight!6054 Int)) (Leaf!8612 (xs!8671 IArray!11691) (csize!11917 Int)) (Empty!5843) )
))
(declare-datatypes ((BalanceConc!11630 0))(
  ( (BalanceConc!11631 (c!262713 Conc!5843)) )
))
(declare-datatypes ((tuple2!17090 0))(
  ( (tuple2!17091 (_1!9947 BalanceConc!11630) (_2!9947 BalanceConc!11628)) )
))
(declare-fun lt!575195 () tuple2!17090)

(declare-fun lex!1210 (LexerInterface!2726 List!17661 BalanceConc!11628) tuple2!17090)

(assert (=> b!1611911 (= lt!575195 (lex!1210 thiss!17113 rules!1846 lt!575199))))

(declare-fun lt!575189 () BalanceConc!11630)

(declare-fun print!1257 (LexerInterface!2726 BalanceConc!11630) BalanceConc!11628)

(assert (=> b!1611911 (= lt!575199 (print!1257 thiss!17113 lt!575189))))

(declare-fun seqFromList!1944 (List!17662) BalanceConc!11630)

(assert (=> b!1611911 (= lt!575189 (seqFromList!1944 (t!148009 tokens!457)))))

(assert (=> b!1611911 (= lt!575181 (print!1257 thiss!17113 (seqFromList!1944 tokens!457)))))

(declare-fun b!1611912 () Bool)

(declare-fun res!718741 () Bool)

(assert (=> b!1611912 (=> (not res!718741) (not e!1033776))))

(assert (=> b!1611912 (= res!718741 (= lt!575198 (Cons!17590 (head!3302 lt!575201) Nil!17590)))))

(declare-fun e!1033773 () Bool)

(declare-fun tp!470146 () Bool)

(declare-fun b!1611913 () Bool)

(declare-fun inv!21 (TokenValue!3187) Bool)

(assert (=> b!1611913 (= e!1033773 (and (inv!21 (value!97937 (h!22993 tokens!457))) e!1033780 tp!470146))))

(declare-fun b!1611914 () Bool)

(declare-fun e!1033777 () Bool)

(declare-fun e!1033778 () Bool)

(assert (=> b!1611914 (= e!1033777 e!1033778)))

(declare-fun res!718755 () Bool)

(assert (=> b!1611914 (=> res!718755 e!1033778)))

(declare-fun lt!575194 () List!17662)

(declare-fun lt!575203 () List!17662)

(declare-fun lt!575185 () List!17662)

(assert (=> b!1611914 (= res!718755 (or (not (= lt!575203 lt!575185)) (not (= lt!575185 lt!575194))))))

(declare-fun list!6864 (BalanceConc!11630) List!17662)

(assert (=> b!1611914 (= lt!575185 (list!6864 lt!575189))))

(assert (=> b!1611914 (= lt!575203 lt!575194)))

(declare-fun prepend!601 (BalanceConc!11630 Token!5760) BalanceConc!11630)

(assert (=> b!1611914 (= lt!575194 (list!6864 (prepend!601 (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575191 () Unit!28247)

(declare-fun seqFromListBHdTlConstructive!174 (Token!5760 List!17662 BalanceConc!11630) Unit!28247)

(assert (=> b!1611914 (= lt!575191 (seqFromListBHdTlConstructive!174 (h!22993 (t!148009 tokens!457)) (t!148009 (t!148009 tokens!457)) (_1!9947 lt!575195)))))

(declare-fun b!1611915 () Bool)

(declare-fun res!718753 () Bool)

(assert (=> b!1611915 (=> res!718753 e!1033775)))

(declare-fun isEmpty!10620 (BalanceConc!11630) Bool)

(assert (=> b!1611915 (= res!718753 (isEmpty!10620 (_1!9947 (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193)))))))

(declare-fun e!1033792 () Bool)

(declare-fun tp!470145 () Bool)

(declare-fun e!1033785 () Bool)

(declare-fun b!1611916 () Bool)

(assert (=> b!1611916 (= e!1033785 (and tp!470145 (inv!23003 (tag!3373 (h!22992 rules!1846))) (inv!23006 (transformation!3097 (h!22992 rules!1846))) e!1033792))))

(declare-fun b!1611917 () Bool)

(assert (=> b!1611917 (= e!1033789 e!1033791)))

(declare-fun res!718740 () Bool)

(assert (=> b!1611917 (=> res!718740 e!1033791)))

(declare-fun prefixMatchZipperSequence!463 (Regex!4425 BalanceConc!11628) Bool)

(declare-fun ++!4628 (BalanceConc!11628 BalanceConc!11628) BalanceConc!11628)

(assert (=> b!1611917 (= res!718740 (prefixMatchZipperSequence!463 lt!575204 (++!4628 lt!575190 lt!575187)))))

(declare-fun singletonSeq!1472 (C!9024) BalanceConc!11628)

(declare-fun apply!4396 (BalanceConc!11628 Int) C!9024)

(assert (=> b!1611917 (= lt!575187 (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0)))))

(declare-fun rulesRegex!487 (LexerInterface!2726 List!17661) Regex!4425)

(assert (=> b!1611917 (= lt!575204 (rulesRegex!487 thiss!17113 rules!1846))))

(declare-fun b!1611918 () Bool)

(declare-fun tp!470152 () Bool)

(assert (=> b!1611918 (= e!1033782 (and e!1033785 tp!470152))))

(declare-fun b!1611919 () Bool)

(assert (=> b!1611919 (= e!1033778 e!1033775)))

(declare-fun res!718750 () Bool)

(assert (=> b!1611919 (=> res!718750 e!1033775)))

(declare-fun lt!575202 () List!17660)

(declare-fun lt!575184 () List!17660)

(assert (=> b!1611919 (= res!718750 (or (not (= lt!575202 lt!575184)) (not (= lt!575184 lt!575193)) (not (= lt!575202 lt!575193))))))

(declare-fun printList!841 (LexerInterface!2726 List!17662) List!17660)

(assert (=> b!1611919 (= lt!575184 (printList!841 thiss!17113 (Cons!17592 (h!22993 tokens!457) Nil!17592)))))

(declare-fun lt!575186 () BalanceConc!11628)

(assert (=> b!1611919 (= lt!575202 (list!6863 lt!575186))))

(declare-fun lt!575182 () BalanceConc!11630)

(declare-fun printTailRec!779 (LexerInterface!2726 BalanceConc!11630 Int BalanceConc!11628) BalanceConc!11628)

(assert (=> b!1611919 (= lt!575186 (printTailRec!779 thiss!17113 lt!575182 0 (BalanceConc!11629 Empty!5842)))))

(assert (=> b!1611919 (= lt!575186 (print!1257 thiss!17113 lt!575182))))

(declare-fun singletonSeq!1473 (Token!5760) BalanceConc!11630)

(assert (=> b!1611919 (= lt!575182 (singletonSeq!1473 (h!22993 tokens!457)))))

(declare-fun maxPrefix!1290 (LexerInterface!2726 List!17661 List!17660) Option!3195)

(assert (=> b!1611919 (= lt!575200 (maxPrefix!1290 thiss!17113 rules!1846 lt!575192))))

(declare-fun b!1611920 () Bool)

(declare-fun res!718754 () Bool)

(assert (=> b!1611920 (=> (not res!718754) (not e!1033787))))

(declare-fun isEmpty!10621 (List!17661) Bool)

(assert (=> b!1611920 (= res!718754 (not (isEmpty!10621 rules!1846)))))

(declare-fun b!1611921 () Bool)

(declare-fun res!718751 () Bool)

(assert (=> b!1611921 (=> res!718751 e!1033775)))

(declare-fun rulesProduceIndividualToken!1378 (LexerInterface!2726 List!17661 Token!5760) Bool)

(assert (=> b!1611921 (= res!718751 (not (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 tokens!457))))))

(assert (=> b!1611922 (= e!1033792 (and tp!470148 tp!470144))))

(declare-fun tp!470149 () Bool)

(declare-fun b!1611923 () Bool)

(declare-fun inv!23007 (Token!5760) Bool)

(assert (=> b!1611923 (= e!1033786 (and (inv!23007 (h!22993 tokens!457)) e!1033773 tp!470149))))

(declare-fun b!1611924 () Bool)

(assert (=> b!1611924 (= e!1033774 (not e!1033777))))

(declare-fun res!718744 () Bool)

(assert (=> b!1611924 (=> res!718744 e!1033777)))

(assert (=> b!1611924 (= res!718744 (not (= lt!575203 (t!148009 tokens!457))))))

(assert (=> b!1611924 (= lt!575203 (list!6864 (_1!9947 lt!575195)))))

(declare-fun lt!575196 () Unit!28247)

(declare-fun theoremInvertabilityWhenTokenListSeparable!171 (LexerInterface!2726 List!17661 List!17662) Unit!28247)

(assert (=> b!1611924 (= lt!575196 (theoremInvertabilityWhenTokenListSeparable!171 thiss!17113 rules!1846 (t!148009 tokens!457)))))

(declare-fun isPrefix!1357 (List!17660 List!17660) Bool)

(assert (=> b!1611924 (isPrefix!1357 lt!575193 lt!575197)))

(declare-fun lt!575188 () Unit!28247)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!882 (List!17660 List!17660) Unit!28247)

(assert (=> b!1611924 (= lt!575188 (lemmaConcatTwoListThenFirstIsPrefix!882 lt!575193 lt!575201))))

(declare-fun b!1611925 () Bool)

(declare-fun res!718749 () Bool)

(assert (=> b!1611925 (=> res!718749 e!1033778)))

(declare-fun separableTokensPredicate!668 (LexerInterface!2726 Token!5760 Token!5760 List!17661) Bool)

(assert (=> b!1611925 (= res!718749 (not (separableTokensPredicate!668 thiss!17113 (h!22993 tokens!457) (h!22993 (t!148009 tokens!457)) rules!1846)))))

(declare-fun b!1611926 () Bool)

(declare-fun res!718742 () Bool)

(assert (=> b!1611926 (=> (not res!718742) (not e!1033787))))

(assert (=> b!1611926 (= res!718742 (and (not ((_ is Nil!17592) tokens!457)) (not ((_ is Nil!17592) (t!148009 tokens!457)))))))

(assert (= (and start!152174 res!718756) b!1611920))

(assert (= (and b!1611920 res!718754) b!1611908))

(assert (= (and b!1611908 res!718743) b!1611906))

(assert (= (and b!1611906 res!718747) b!1611903))

(assert (= (and b!1611903 res!718759) b!1611926))

(assert (= (and b!1611926 res!718742) b!1611911))

(assert (= (and b!1611911 res!718748) b!1611924))

(assert (= (and b!1611924 (not res!718744)) b!1611914))

(assert (= (and b!1611914 (not res!718755)) b!1611925))

(assert (= (and b!1611925 (not res!718749)) b!1611919))

(assert (= (and b!1611919 (not res!718750)) b!1611921))

(assert (= (and b!1611921 (not res!718751)) b!1611915))

(assert (= (and b!1611915 (not res!718753)) b!1611901))

(assert (= (and b!1611901 (not res!718745)) b!1611917))

(assert (= (and b!1611917 (not res!718740)) b!1611905))

(assert (= (and b!1611905 (not res!718746)) b!1611907))

(assert (= (and b!1611907 res!718752) b!1611902))

(assert (= (and b!1611902 res!718758) b!1611912))

(assert (= (and b!1611912 res!718741) b!1611910))

(assert (= (and b!1611907 (not res!718757)) b!1611909))

(assert (= b!1611916 b!1611922))

(assert (= b!1611918 b!1611916))

(assert (= (and start!152174 ((_ is Cons!17591) rules!1846)) b!1611918))

(assert (= b!1611904 b!1611900))

(assert (= b!1611913 b!1611904))

(assert (= b!1611923 b!1611913))

(assert (= (and start!152174 ((_ is Cons!17592) tokens!457)) b!1611923))

(declare-fun m!1929089 () Bool)

(assert (=> b!1611917 m!1929089))

(declare-fun m!1929091 () Bool)

(assert (=> b!1611917 m!1929091))

(declare-fun m!1929093 () Bool)

(assert (=> b!1611917 m!1929093))

(declare-fun m!1929095 () Bool)

(assert (=> b!1611917 m!1929095))

(declare-fun m!1929097 () Bool)

(assert (=> b!1611917 m!1929097))

(assert (=> b!1611917 m!1929093))

(declare-fun m!1929099 () Bool)

(assert (=> b!1611917 m!1929099))

(assert (=> b!1611917 m!1929089))

(assert (=> b!1611917 m!1929099))

(declare-fun m!1929101 () Bool)

(assert (=> b!1611916 m!1929101))

(declare-fun m!1929103 () Bool)

(assert (=> b!1611916 m!1929103))

(declare-fun m!1929105 () Bool)

(assert (=> b!1611902 m!1929105))

(declare-fun m!1929107 () Bool)

(assert (=> b!1611915 m!1929107))

(assert (=> b!1611915 m!1929107))

(declare-fun m!1929109 () Bool)

(assert (=> b!1611915 m!1929109))

(declare-fun m!1929111 () Bool)

(assert (=> b!1611915 m!1929111))

(declare-fun m!1929113 () Bool)

(assert (=> b!1611919 m!1929113))

(declare-fun m!1929115 () Bool)

(assert (=> b!1611919 m!1929115))

(declare-fun m!1929117 () Bool)

(assert (=> b!1611919 m!1929117))

(declare-fun m!1929119 () Bool)

(assert (=> b!1611919 m!1929119))

(declare-fun m!1929121 () Bool)

(assert (=> b!1611919 m!1929121))

(declare-fun m!1929123 () Bool)

(assert (=> b!1611919 m!1929123))

(declare-fun m!1929125 () Bool)

(assert (=> b!1611924 m!1929125))

(declare-fun m!1929127 () Bool)

(assert (=> b!1611924 m!1929127))

(declare-fun m!1929129 () Bool)

(assert (=> b!1611924 m!1929129))

(declare-fun m!1929131 () Bool)

(assert (=> b!1611924 m!1929131))

(declare-fun m!1929133 () Bool)

(assert (=> b!1611912 m!1929133))

(declare-fun m!1929135 () Bool)

(assert (=> b!1611914 m!1929135))

(declare-fun m!1929137 () Bool)

(assert (=> b!1611914 m!1929137))

(declare-fun m!1929139 () Bool)

(assert (=> b!1611914 m!1929139))

(declare-fun m!1929141 () Bool)

(assert (=> b!1611914 m!1929141))

(declare-fun m!1929143 () Bool)

(assert (=> b!1611914 m!1929143))

(assert (=> b!1611914 m!1929139))

(assert (=> b!1611914 m!1929141))

(declare-fun m!1929145 () Bool)

(assert (=> b!1611907 m!1929145))

(assert (=> b!1611907 m!1929145))

(declare-fun m!1929147 () Bool)

(assert (=> b!1611907 m!1929147))

(assert (=> b!1611907 m!1929147))

(declare-fun m!1929149 () Bool)

(assert (=> b!1611907 m!1929149))

(declare-fun m!1929151 () Bool)

(assert (=> b!1611903 m!1929151))

(declare-fun m!1929153 () Bool)

(assert (=> b!1611920 m!1929153))

(declare-fun m!1929155 () Bool)

(assert (=> b!1611908 m!1929155))

(declare-fun m!1929157 () Bool)

(assert (=> b!1611909 m!1929157))

(declare-fun m!1929159 () Bool)

(assert (=> b!1611925 m!1929159))

(declare-fun m!1929161 () Bool)

(assert (=> b!1611901 m!1929161))

(declare-fun m!1929163 () Bool)

(assert (=> b!1611901 m!1929163))

(declare-fun m!1929165 () Bool)

(assert (=> b!1611906 m!1929165))

(declare-fun m!1929167 () Bool)

(assert (=> b!1611921 m!1929167))

(declare-fun m!1929169 () Bool)

(assert (=> b!1611911 m!1929169))

(declare-fun m!1929171 () Bool)

(assert (=> b!1611911 m!1929171))

(declare-fun m!1929173 () Bool)

(assert (=> b!1611911 m!1929173))

(declare-fun m!1929175 () Bool)

(assert (=> b!1611911 m!1929175))

(declare-fun m!1929177 () Bool)

(assert (=> b!1611911 m!1929177))

(declare-fun m!1929179 () Bool)

(assert (=> b!1611911 m!1929179))

(declare-fun m!1929181 () Bool)

(assert (=> b!1611911 m!1929181))

(assert (=> b!1611911 m!1929173))

(declare-fun m!1929183 () Bool)

(assert (=> b!1611911 m!1929183))

(declare-fun m!1929185 () Bool)

(assert (=> b!1611911 m!1929185))

(declare-fun m!1929187 () Bool)

(assert (=> b!1611911 m!1929187))

(declare-fun m!1929189 () Bool)

(assert (=> b!1611905 m!1929189))

(assert (=> b!1611905 m!1929189))

(declare-fun m!1929191 () Bool)

(assert (=> b!1611905 m!1929191))

(declare-fun m!1929193 () Bool)

(assert (=> b!1611905 m!1929193))

(declare-fun m!1929195 () Bool)

(assert (=> b!1611913 m!1929195))

(declare-fun m!1929197 () Bool)

(assert (=> b!1611923 m!1929197))

(declare-fun m!1929199 () Bool)

(assert (=> b!1611910 m!1929199))

(declare-fun m!1929201 () Bool)

(assert (=> b!1611904 m!1929201))

(declare-fun m!1929203 () Bool)

(assert (=> b!1611904 m!1929203))

(check-sat (not b!1611924) (not b!1611914) (not b_next!44023) (not b_next!44025) b_and!114277 (not b!1611916) (not b!1611921) (not b!1611905) (not b!1611908) b_and!114283 (not b!1611903) (not b!1611910) (not b!1611909) (not b!1611907) (not b!1611911) (not b!1611913) (not b!1611904) (not b!1611925) (not b!1611918) (not b!1611912) (not b!1611923) (not b!1611917) (not b!1611915) (not b!1611920) b_and!114281 b_and!114279 (not b!1611919) (not b!1611906) (not b!1611901) (not b_next!44027) (not b!1611902) (not b_next!44029))
(check-sat b_and!114283 (not b_next!44023) (not b_next!44025) b_and!114277 (not b_next!44027) (not b_next!44029) b_and!114281 b_and!114279)
(get-model)

(declare-fun d!485195 () Bool)

(declare-fun isEmpty!10624 (Option!3196) Bool)

(assert (=> d!485195 (= (isDefined!2563 (maxPrefixZipperSequence!621 thiss!17113 rules!1846 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457))))) (not (isEmpty!10624 (maxPrefixZipperSequence!621 thiss!17113 rules!1846 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))

(declare-fun bs!393880 () Bool)

(assert (= bs!393880 d!485195))

(assert (=> bs!393880 m!1929147))

(declare-fun m!1929205 () Bool)

(assert (=> bs!393880 m!1929205))

(assert (=> b!1611907 d!485195))

(declare-fun b!1611943 () Bool)

(declare-fun e!1033809 () Bool)

(declare-fun e!1033808 () Bool)

(assert (=> b!1611943 (= e!1033809 e!1033808)))

(declare-fun res!718784 () Bool)

(assert (=> b!1611943 (=> res!718784 e!1033808)))

(declare-fun lt!575223 () Option!3196)

(assert (=> b!1611943 (= res!718784 (not (isDefined!2563 lt!575223)))))

(declare-fun b!1611944 () Bool)

(declare-fun e!1033810 () Bool)

(declare-fun get!5041 (Option!3196) tuple2!17088)

(declare-fun get!5042 (Option!3195) tuple2!17086)

(assert (=> b!1611944 (= e!1033810 (= (list!6863 (_2!9946 (get!5041 lt!575223))) (_2!9945 (get!5042 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))))

(declare-fun b!1611945 () Bool)

(declare-fun e!1033806 () Option!3196)

(declare-fun call!104781 () Option!3196)

(assert (=> b!1611945 (= e!1033806 call!104781)))

(declare-fun d!485197 () Bool)

(assert (=> d!485197 e!1033809))

(declare-fun res!718781 () Bool)

(assert (=> d!485197 (=> (not res!718781) (not e!1033809))))

(declare-fun maxPrefixZipper!283 (LexerInterface!2726 List!17661 List!17660) Option!3195)

(assert (=> d!485197 (= res!718781 (= (isDefined!2563 lt!575223) (isDefined!2562 (maxPrefixZipper!283 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457))))))))))

(assert (=> d!485197 (= lt!575223 e!1033806)))

(declare-fun c!262716 () Bool)

(assert (=> d!485197 (= c!262716 (and ((_ is Cons!17591) rules!1846) ((_ is Nil!17591) (t!148008 rules!1846))))))

(declare-fun lt!575225 () Unit!28247)

(declare-fun lt!575219 () Unit!28247)

(assert (=> d!485197 (= lt!575225 lt!575219)))

(declare-fun lt!575220 () List!17660)

(declare-fun lt!575221 () List!17660)

(assert (=> d!485197 (isPrefix!1357 lt!575220 lt!575221)))

(declare-fun lemmaIsPrefixRefl!937 (List!17660 List!17660) Unit!28247)

(assert (=> d!485197 (= lt!575219 (lemmaIsPrefixRefl!937 lt!575220 lt!575221))))

(assert (=> d!485197 (= lt!575221 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))

(assert (=> d!485197 (= lt!575220 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))

(assert (=> d!485197 (rulesValidInductive!942 thiss!17113 rules!1846)))

(assert (=> d!485197 (= (maxPrefixZipperSequence!621 thiss!17113 rules!1846 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))) lt!575223)))

(declare-fun b!1611946 () Bool)

(declare-fun lt!575222 () Option!3196)

(declare-fun lt!575224 () Option!3196)

(assert (=> b!1611946 (= e!1033806 (ite (and ((_ is None!3195) lt!575222) ((_ is None!3195) lt!575224)) None!3195 (ite ((_ is None!3195) lt!575224) lt!575222 (ite ((_ is None!3195) lt!575222) lt!575224 (ite (>= (size!14148 (_1!9946 (v!24160 lt!575222))) (size!14148 (_1!9946 (v!24160 lt!575224)))) lt!575222 lt!575224)))))))

(assert (=> b!1611946 (= lt!575222 call!104781)))

(assert (=> b!1611946 (= lt!575224 (maxPrefixZipperSequence!621 thiss!17113 (t!148008 rules!1846) (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))

(declare-fun b!1611947 () Bool)

(declare-fun e!1033807 () Bool)

(declare-fun e!1033805 () Bool)

(assert (=> b!1611947 (= e!1033807 e!1033805)))

(declare-fun res!718783 () Bool)

(assert (=> b!1611947 (=> (not res!718783) (not e!1033805))))

(assert (=> b!1611947 (= res!718783 (= (_1!9946 (get!5041 lt!575223)) (_1!9945 (get!5042 (maxPrefixZipper!283 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))))

(declare-fun b!1611948 () Bool)

(assert (=> b!1611948 (= e!1033808 e!1033810)))

(declare-fun res!718782 () Bool)

(assert (=> b!1611948 (=> (not res!718782) (not e!1033810))))

(assert (=> b!1611948 (= res!718782 (= (_1!9946 (get!5041 lt!575223)) (_1!9945 (get!5042 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))))

(declare-fun bm!104776 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!293 (LexerInterface!2726 Rule!5994 BalanceConc!11628) Option!3196)

(assert (=> bm!104776 (= call!104781 (maxPrefixOneRuleZipperSequence!293 thiss!17113 (h!22992 rules!1846) (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))

(declare-fun b!1611949 () Bool)

(assert (=> b!1611949 (= e!1033805 (= (list!6863 (_2!9946 (get!5041 lt!575223))) (_2!9945 (get!5042 (maxPrefixZipper!283 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457)))))))))))

(declare-fun b!1611950 () Bool)

(declare-fun res!718779 () Bool)

(assert (=> b!1611950 (=> (not res!718779) (not e!1033809))))

(assert (=> b!1611950 (= res!718779 e!1033807)))

(declare-fun res!718780 () Bool)

(assert (=> b!1611950 (=> res!718780 e!1033807)))

(assert (=> b!1611950 (= res!718780 (not (isDefined!2563 lt!575223)))))

(assert (= (and d!485197 c!262716) b!1611945))

(assert (= (and d!485197 (not c!262716)) b!1611946))

(assert (= (or b!1611945 b!1611946) bm!104776))

(assert (= (and d!485197 res!718781) b!1611950))

(assert (= (and b!1611950 (not res!718780)) b!1611947))

(assert (= (and b!1611947 res!718783) b!1611949))

(assert (= (and b!1611950 res!718779) b!1611943))

(assert (= (and b!1611943 (not res!718784)) b!1611948))

(assert (= (and b!1611948 res!718782) b!1611944))

(assert (=> bm!104776 m!1929145))

(declare-fun m!1929209 () Bool)

(assert (=> bm!104776 m!1929209))

(declare-fun m!1929211 () Bool)

(assert (=> b!1611943 m!1929211))

(declare-fun m!1929213 () Bool)

(assert (=> b!1611949 m!1929213))

(declare-fun m!1929215 () Bool)

(assert (=> b!1611949 m!1929215))

(declare-fun m!1929217 () Bool)

(assert (=> b!1611949 m!1929217))

(declare-fun m!1929219 () Bool)

(assert (=> b!1611949 m!1929219))

(assert (=> b!1611949 m!1929213))

(assert (=> b!1611949 m!1929145))

(assert (=> b!1611949 m!1929219))

(declare-fun m!1929221 () Bool)

(assert (=> b!1611949 m!1929221))

(assert (=> d!485197 m!1929213))

(declare-fun m!1929223 () Bool)

(assert (=> d!485197 m!1929223))

(assert (=> d!485197 m!1929157))

(assert (=> d!485197 m!1929211))

(assert (=> d!485197 m!1929219))

(assert (=> d!485197 m!1929213))

(declare-fun m!1929225 () Bool)

(assert (=> d!485197 m!1929225))

(declare-fun m!1929227 () Bool)

(assert (=> d!485197 m!1929227))

(assert (=> d!485197 m!1929145))

(assert (=> d!485197 m!1929219))

(assert (=> b!1611946 m!1929145))

(declare-fun m!1929229 () Bool)

(assert (=> b!1611946 m!1929229))

(assert (=> b!1611948 m!1929217))

(assert (=> b!1611948 m!1929145))

(assert (=> b!1611948 m!1929219))

(assert (=> b!1611948 m!1929219))

(declare-fun m!1929231 () Bool)

(assert (=> b!1611948 m!1929231))

(assert (=> b!1611948 m!1929231))

(declare-fun m!1929233 () Bool)

(assert (=> b!1611948 m!1929233))

(assert (=> b!1611947 m!1929217))

(assert (=> b!1611947 m!1929145))

(assert (=> b!1611947 m!1929219))

(assert (=> b!1611947 m!1929219))

(assert (=> b!1611947 m!1929213))

(assert (=> b!1611947 m!1929213))

(assert (=> b!1611947 m!1929215))

(assert (=> b!1611944 m!1929217))

(assert (=> b!1611944 m!1929231))

(assert (=> b!1611944 m!1929233))

(assert (=> b!1611944 m!1929145))

(assert (=> b!1611944 m!1929219))

(assert (=> b!1611944 m!1929221))

(assert (=> b!1611944 m!1929219))

(assert (=> b!1611944 m!1929231))

(assert (=> b!1611950 m!1929211))

(assert (=> b!1611907 d!485197))

(declare-fun d!485203 () Bool)

(declare-fun fromListB!848 (List!17660) BalanceConc!11628)

(assert (=> d!485203 (= (seqFromList!1943 (originalCharacters!3911 (h!22993 tokens!457))) (fromListB!848 (originalCharacters!3911 (h!22993 tokens!457))))))

(declare-fun bs!393882 () Bool)

(assert (= bs!393882 d!485203))

(declare-fun m!1929235 () Bool)

(assert (=> bs!393882 m!1929235))

(assert (=> b!1611907 d!485203))

(declare-fun b!1612060 () Bool)

(declare-fun e!1033883 () Bool)

(assert (=> b!1612060 (= e!1033883 true)))

(declare-fun b!1612059 () Bool)

(declare-fun e!1033882 () Bool)

(assert (=> b!1612059 (= e!1033882 e!1033883)))

(declare-fun b!1612058 () Bool)

(declare-fun e!1033881 () Bool)

(assert (=> b!1612058 (= e!1033881 e!1033882)))

(declare-fun d!485205 () Bool)

(assert (=> d!485205 e!1033881))

(assert (= b!1612059 b!1612060))

(assert (= b!1612058 b!1612059))

(assert (= (and d!485205 ((_ is Cons!17591) rules!1846)) b!1612058))

(declare-fun lambda!67032 () Int)

(declare-fun order!10435 () Int)

(declare-fun order!10433 () Int)

(declare-fun dynLambda!7854 (Int Int) Int)

(declare-fun dynLambda!7855 (Int Int) Int)

(assert (=> b!1612060 (< (dynLambda!7854 order!10433 (toValue!4520 (transformation!3097 (h!22992 rules!1846)))) (dynLambda!7855 order!10435 lambda!67032))))

(declare-fun order!10437 () Int)

(declare-fun dynLambda!7856 (Int Int) Int)

(assert (=> b!1612060 (< (dynLambda!7856 order!10437 (toChars!4379 (transformation!3097 (h!22992 rules!1846)))) (dynLambda!7855 order!10435 lambda!67032))))

(assert (=> d!485205 true))

(declare-fun lt!575375 () Bool)

(declare-fun forall!4045 (List!17662 Int) Bool)

(assert (=> d!485205 (= lt!575375 (forall!4045 tokens!457 lambda!67032))))

(declare-fun e!1033874 () Bool)

(assert (=> d!485205 (= lt!575375 e!1033874)))

(declare-fun res!718852 () Bool)

(assert (=> d!485205 (=> res!718852 e!1033874)))

(assert (=> d!485205 (= res!718852 (not ((_ is Cons!17592) tokens!457)))))

(assert (=> d!485205 (not (isEmpty!10621 rules!1846))))

(assert (=> d!485205 (= (rulesProduceEachTokenIndividuallyList!928 thiss!17113 rules!1846 tokens!457) lt!575375)))

(declare-fun b!1612048 () Bool)

(declare-fun e!1033873 () Bool)

(assert (=> b!1612048 (= e!1033874 e!1033873)))

(declare-fun res!718853 () Bool)

(assert (=> b!1612048 (=> (not res!718853) (not e!1033873))))

(assert (=> b!1612048 (= res!718853 (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 tokens!457)))))

(declare-fun b!1612049 () Bool)

(assert (=> b!1612049 (= e!1033873 (rulesProduceEachTokenIndividuallyList!928 thiss!17113 rules!1846 (t!148009 tokens!457)))))

(assert (= (and d!485205 (not res!718852)) b!1612048))

(assert (= (and b!1612048 res!718853) b!1612049))

(declare-fun m!1929461 () Bool)

(assert (=> d!485205 m!1929461))

(assert (=> d!485205 m!1929153))

(assert (=> b!1612048 m!1929167))

(declare-fun m!1929463 () Bool)

(assert (=> b!1612049 m!1929463))

(assert (=> b!1611906 d!485205))

(declare-fun d!485253 () Bool)

(declare-fun e!1033886 () Bool)

(assert (=> d!485253 e!1033886))

(declare-fun res!718856 () Bool)

(assert (=> d!485253 (=> (not res!718856) (not e!1033886))))

(declare-fun lt!575378 () BalanceConc!11628)

(assert (=> d!485253 (= res!718856 (= (list!6863 lt!575378) (Cons!17590 (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0) Nil!17590)))))

(declare-fun singleton!624 (C!9024) BalanceConc!11628)

(assert (=> d!485253 (= lt!575378 (singleton!624 (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0)))))

(assert (=> d!485253 (= (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0)) lt!575378)))

(declare-fun b!1612065 () Bool)

(declare-fun isBalanced!1744 (Conc!5842) Bool)

(assert (=> b!1612065 (= e!1033886 (isBalanced!1744 (c!262711 lt!575378)))))

(assert (= (and d!485253 res!718856) b!1612065))

(declare-fun m!1929465 () Bool)

(assert (=> d!485253 m!1929465))

(assert (=> d!485253 m!1929089))

(declare-fun m!1929467 () Bool)

(assert (=> d!485253 m!1929467))

(declare-fun m!1929469 () Bool)

(assert (=> b!1612065 m!1929469))

(assert (=> b!1611917 d!485253))

(declare-fun lt!575407 () Bool)

(declare-fun d!485255 () Bool)

(assert (=> d!485255 (= lt!575407 (prefixMatch!360 lt!575204 (list!6863 (++!4628 lt!575190 lt!575187))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17665 0))(
  ( (Nil!17595) (Cons!17595 (h!22996 Regex!4425) (t!148054 List!17665)) )
))
(declare-datatypes ((Context!1690 0))(
  ( (Context!1691 (exprs!1345 List!17665)) )
))
(declare-fun prefixMatchZipperSequence!465 ((InoxSet Context!1690) BalanceConc!11628 Int) Bool)

(declare-fun focus!151 (Regex!4425) (InoxSet Context!1690))

(assert (=> d!485255 (= lt!575407 (prefixMatchZipperSequence!465 (focus!151 lt!575204) (++!4628 lt!575190 lt!575187) 0))))

(declare-fun lt!575409 () Unit!28247)

(declare-fun lt!575403 () Unit!28247)

(assert (=> d!485255 (= lt!575409 lt!575403)))

(declare-fun lt!575410 () List!17660)

(declare-fun lt!575404 () (InoxSet Context!1690))

(declare-fun prefixMatchZipper!130 ((InoxSet Context!1690) List!17660) Bool)

(assert (=> d!485255 (= (prefixMatch!360 lt!575204 lt!575410) (prefixMatchZipper!130 lt!575404 lt!575410))))

(declare-datatypes ((List!17666 0))(
  ( (Nil!17596) (Cons!17596 (h!22997 Context!1690) (t!148055 List!17666)) )
))
(declare-fun lt!575402 () List!17666)

(declare-fun prefixMatchZipperRegexEquiv!130 ((InoxSet Context!1690) List!17666 Regex!4425 List!17660) Unit!28247)

(assert (=> d!485255 (= lt!575403 (prefixMatchZipperRegexEquiv!130 lt!575404 lt!575402 lt!575204 lt!575410))))

(assert (=> d!485255 (= lt!575410 (list!6863 (++!4628 lt!575190 lt!575187)))))

(declare-fun toList!891 ((InoxSet Context!1690)) List!17666)

(assert (=> d!485255 (= lt!575402 (toList!891 (focus!151 lt!575204)))))

(assert (=> d!485255 (= lt!575404 (focus!151 lt!575204))))

(declare-fun lt!575411 () Unit!28247)

(declare-fun lt!575406 () Unit!28247)

(assert (=> d!485255 (= lt!575411 lt!575406)))

(declare-fun lt!575408 () Int)

(declare-fun lt!575405 () (InoxSet Context!1690))

(declare-fun dropList!562 (BalanceConc!11628 Int) List!17660)

(assert (=> d!485255 (= (prefixMatchZipper!130 lt!575405 (dropList!562 (++!4628 lt!575190 lt!575187) lt!575408)) (prefixMatchZipperSequence!465 lt!575405 (++!4628 lt!575190 lt!575187) lt!575408))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!130 ((InoxSet Context!1690) BalanceConc!11628 Int) Unit!28247)

(assert (=> d!485255 (= lt!575406 (lemmaprefixMatchZipperSequenceEquivalent!130 lt!575405 (++!4628 lt!575190 lt!575187) lt!575408))))

(assert (=> d!485255 (= lt!575408 0)))

(assert (=> d!485255 (= lt!575405 (focus!151 lt!575204))))

(declare-fun validRegex!1756 (Regex!4425) Bool)

(assert (=> d!485255 (validRegex!1756 lt!575204)))

(assert (=> d!485255 (= (prefixMatchZipperSequence!463 lt!575204 (++!4628 lt!575190 lt!575187)) lt!575407)))

(declare-fun bs!393893 () Bool)

(assert (= bs!393893 d!485255))

(declare-fun m!1929487 () Bool)

(assert (=> bs!393893 m!1929487))

(assert (=> bs!393893 m!1929093))

(declare-fun m!1929489 () Bool)

(assert (=> bs!393893 m!1929489))

(declare-fun m!1929491 () Bool)

(assert (=> bs!393893 m!1929491))

(assert (=> bs!393893 m!1929093))

(declare-fun m!1929493 () Bool)

(assert (=> bs!393893 m!1929493))

(assert (=> bs!393893 m!1929489))

(declare-fun m!1929495 () Bool)

(assert (=> bs!393893 m!1929495))

(assert (=> bs!393893 m!1929093))

(declare-fun m!1929497 () Bool)

(assert (=> bs!393893 m!1929497))

(assert (=> bs!393893 m!1929491))

(assert (=> bs!393893 m!1929093))

(declare-fun m!1929499 () Bool)

(assert (=> bs!393893 m!1929499))

(declare-fun m!1929501 () Bool)

(assert (=> bs!393893 m!1929501))

(declare-fun m!1929503 () Bool)

(assert (=> bs!393893 m!1929503))

(assert (=> bs!393893 m!1929491))

(declare-fun m!1929505 () Bool)

(assert (=> bs!393893 m!1929505))

(declare-fun m!1929509 () Bool)

(assert (=> bs!393893 m!1929509))

(assert (=> bs!393893 m!1929497))

(declare-fun m!1929511 () Bool)

(assert (=> bs!393893 m!1929511))

(assert (=> bs!393893 m!1929093))

(declare-fun m!1929513 () Bool)

(assert (=> bs!393893 m!1929513))

(assert (=> b!1611917 d!485255))

(declare-fun d!485261 () Bool)

(declare-fun lt!575417 () Unit!28247)

(declare-fun lemma!217 (List!17661 LexerInterface!2726 List!17661) Unit!28247)

(assert (=> d!485261 (= lt!575417 (lemma!217 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67035 () Int)

(declare-fun generalisedUnion!225 (List!17665) Regex!4425)

(declare-fun map!3645 (List!17661 Int) List!17665)

(assert (=> d!485261 (= (rulesRegex!487 thiss!17113 rules!1846) (generalisedUnion!225 (map!3645 rules!1846 lambda!67035)))))

(declare-fun bs!393898 () Bool)

(assert (= bs!393898 d!485261))

(declare-fun m!1929537 () Bool)

(assert (=> bs!393898 m!1929537))

(declare-fun m!1929539 () Bool)

(assert (=> bs!393898 m!1929539))

(assert (=> bs!393898 m!1929539))

(declare-fun m!1929541 () Bool)

(assert (=> bs!393898 m!1929541))

(assert (=> b!1611917 d!485261))

(declare-fun d!485273 () Bool)

(declare-fun lt!575422 () BalanceConc!11628)

(assert (=> d!485273 (= (list!6863 lt!575422) (originalCharacters!3911 (h!22993 (t!148009 tokens!457))))))

(declare-fun dynLambda!7858 (Int TokenValue!3187) BalanceConc!11628)

(assert (=> d!485273 (= lt!575422 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (value!97937 (h!22993 (t!148009 tokens!457)))))))

(assert (=> d!485273 (= (charsOf!1746 (h!22993 (t!148009 tokens!457))) lt!575422)))

(declare-fun b_lambda!50875 () Bool)

(assert (=> (not b_lambda!50875) (not d!485273)))

(declare-fun t!148023 () Bool)

(declare-fun tb!92703 () Bool)

(assert (=> (and b!1611900 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457)))))) t!148023) tb!92703))

(declare-fun b!1612093 () Bool)

(declare-fun e!1033904 () Bool)

(declare-fun tp!470159 () Bool)

(declare-fun inv!23010 (Conc!5842) Bool)

(assert (=> b!1612093 (= e!1033904 (and (inv!23010 (c!262711 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (value!97937 (h!22993 (t!148009 tokens!457)))))) tp!470159))))

(declare-fun result!111696 () Bool)

(declare-fun inv!23011 (BalanceConc!11628) Bool)

(assert (=> tb!92703 (= result!111696 (and (inv!23011 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (value!97937 (h!22993 (t!148009 tokens!457))))) e!1033904))))

(assert (= tb!92703 b!1612093))

(declare-fun m!1929543 () Bool)

(assert (=> b!1612093 m!1929543))

(declare-fun m!1929545 () Bool)

(assert (=> tb!92703 m!1929545))

(assert (=> d!485273 t!148023))

(declare-fun b_and!114297 () Bool)

(assert (= b_and!114279 (and (=> t!148023 result!111696) b_and!114297)))

(declare-fun t!148025 () Bool)

(declare-fun tb!92705 () Bool)

(assert (=> (and b!1611922 (= (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457)))))) t!148025) tb!92705))

(declare-fun result!111700 () Bool)

(assert (= result!111700 result!111696))

(assert (=> d!485273 t!148025))

(declare-fun b_and!114299 () Bool)

(assert (= b_and!114283 (and (=> t!148025 result!111700) b_and!114299)))

(declare-fun m!1929547 () Bool)

(assert (=> d!485273 m!1929547))

(declare-fun m!1929549 () Bool)

(assert (=> d!485273 m!1929549))

(assert (=> b!1611917 d!485273))

(declare-fun d!485275 () Bool)

(declare-fun lt!575425 () C!9024)

(declare-fun apply!4399 (List!17660 Int) C!9024)

(assert (=> d!485275 (= lt!575425 (apply!4399 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457)))) 0))))

(declare-fun apply!4400 (Conc!5842 Int) C!9024)

(assert (=> d!485275 (= lt!575425 (apply!4400 (c!262711 (charsOf!1746 (h!22993 (t!148009 tokens!457)))) 0))))

(declare-fun e!1033907 () Bool)

(assert (=> d!485275 e!1033907))

(declare-fun res!718874 () Bool)

(assert (=> d!485275 (=> (not res!718874) (not e!1033907))))

(assert (=> d!485275 (= res!718874 (<= 0 0))))

(assert (=> d!485275 (= (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0) lt!575425)))

(declare-fun b!1612096 () Bool)

(declare-fun size!14151 (BalanceConc!11628) Int)

(assert (=> b!1612096 (= e!1033907 (< 0 (size!14151 (charsOf!1746 (h!22993 (t!148009 tokens!457))))))))

(assert (= (and d!485275 res!718874) b!1612096))

(assert (=> d!485275 m!1929099))

(declare-fun m!1929551 () Bool)

(assert (=> d!485275 m!1929551))

(assert (=> d!485275 m!1929551))

(declare-fun m!1929553 () Bool)

(assert (=> d!485275 m!1929553))

(declare-fun m!1929555 () Bool)

(assert (=> d!485275 m!1929555))

(assert (=> b!1612096 m!1929099))

(declare-fun m!1929557 () Bool)

(assert (=> b!1612096 m!1929557))

(assert (=> b!1611917 d!485275))

(declare-fun b!1612105 () Bool)

(declare-fun res!718886 () Bool)

(declare-fun e!1033910 () Bool)

(assert (=> b!1612105 (=> (not res!718886) (not e!1033910))))

(declare-fun ++!4630 (Conc!5842 Conc!5842) Conc!5842)

(assert (=> b!1612105 (= res!718886 (isBalanced!1744 (++!4630 (c!262711 lt!575190) (c!262711 lt!575187))))))

(declare-fun lt!575428 () BalanceConc!11628)

(declare-fun b!1612108 () Bool)

(assert (=> b!1612108 (= e!1033910 (= (list!6863 lt!575428) (++!4627 (list!6863 lt!575190) (list!6863 lt!575187))))))

(declare-fun b!1612107 () Bool)

(declare-fun res!718884 () Bool)

(assert (=> b!1612107 (=> (not res!718884) (not e!1033910))))

(declare-fun height!881 (Conc!5842) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1612107 (= res!718884 (>= (height!881 (++!4630 (c!262711 lt!575190) (c!262711 lt!575187))) (max!0 (height!881 (c!262711 lt!575190)) (height!881 (c!262711 lt!575187)))))))

(declare-fun d!485277 () Bool)

(assert (=> d!485277 e!1033910))

(declare-fun res!718883 () Bool)

(assert (=> d!485277 (=> (not res!718883) (not e!1033910))))

(declare-fun appendAssocInst!413 (Conc!5842 Conc!5842) Bool)

(assert (=> d!485277 (= res!718883 (appendAssocInst!413 (c!262711 lt!575190) (c!262711 lt!575187)))))

(assert (=> d!485277 (= lt!575428 (BalanceConc!11629 (++!4630 (c!262711 lt!575190) (c!262711 lt!575187))))))

(assert (=> d!485277 (= (++!4628 lt!575190 lt!575187) lt!575428)))

(declare-fun b!1612106 () Bool)

(declare-fun res!718885 () Bool)

(assert (=> b!1612106 (=> (not res!718885) (not e!1033910))))

(assert (=> b!1612106 (= res!718885 (<= (height!881 (++!4630 (c!262711 lt!575190) (c!262711 lt!575187))) (+ (max!0 (height!881 (c!262711 lt!575190)) (height!881 (c!262711 lt!575187))) 1)))))

(assert (= (and d!485277 res!718883) b!1612105))

(assert (= (and b!1612105 res!718886) b!1612106))

(assert (= (and b!1612106 res!718885) b!1612107))

(assert (= (and b!1612107 res!718884) b!1612108))

(declare-fun m!1929559 () Bool)

(assert (=> b!1612107 m!1929559))

(declare-fun m!1929561 () Bool)

(assert (=> b!1612107 m!1929561))

(assert (=> b!1612107 m!1929559))

(declare-fun m!1929563 () Bool)

(assert (=> b!1612107 m!1929563))

(declare-fun m!1929565 () Bool)

(assert (=> b!1612107 m!1929565))

(declare-fun m!1929567 () Bool)

(assert (=> b!1612107 m!1929567))

(assert (=> b!1612107 m!1929561))

(assert (=> b!1612107 m!1929565))

(assert (=> b!1612106 m!1929559))

(assert (=> b!1612106 m!1929561))

(assert (=> b!1612106 m!1929559))

(assert (=> b!1612106 m!1929563))

(assert (=> b!1612106 m!1929565))

(assert (=> b!1612106 m!1929567))

(assert (=> b!1612106 m!1929561))

(assert (=> b!1612106 m!1929565))

(declare-fun m!1929569 () Bool)

(assert (=> b!1612108 m!1929569))

(assert (=> b!1612108 m!1929185))

(assert (=> b!1612108 m!1929193))

(assert (=> b!1612108 m!1929185))

(assert (=> b!1612108 m!1929193))

(declare-fun m!1929571 () Bool)

(assert (=> b!1612108 m!1929571))

(assert (=> b!1612105 m!1929565))

(assert (=> b!1612105 m!1929565))

(declare-fun m!1929573 () Bool)

(assert (=> b!1612105 m!1929573))

(declare-fun m!1929575 () Bool)

(assert (=> d!485277 m!1929575))

(assert (=> d!485277 m!1929565))

(assert (=> b!1611917 d!485277))

(declare-fun d!485279 () Bool)

(assert (=> d!485279 (= (inv!23003 (tag!3373 (h!22992 rules!1846))) (= (mod (str.len (value!97936 (tag!3373 (h!22992 rules!1846)))) 2) 0))))

(assert (=> b!1611916 d!485279))

(declare-fun d!485281 () Bool)

(declare-fun res!718889 () Bool)

(declare-fun e!1033913 () Bool)

(assert (=> d!485281 (=> (not res!718889) (not e!1033913))))

(declare-fun semiInverseModEq!1178 (Int Int) Bool)

(assert (=> d!485281 (= res!718889 (semiInverseModEq!1178 (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toValue!4520 (transformation!3097 (h!22992 rules!1846)))))))

(assert (=> d!485281 (= (inv!23006 (transformation!3097 (h!22992 rules!1846))) e!1033913)))

(declare-fun b!1612111 () Bool)

(declare-fun equivClasses!1119 (Int Int) Bool)

(assert (=> b!1612111 (= e!1033913 (equivClasses!1119 (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toValue!4520 (transformation!3097 (h!22992 rules!1846)))))))

(assert (= (and d!485281 res!718889) b!1612111))

(declare-fun m!1929577 () Bool)

(assert (=> d!485281 m!1929577))

(declare-fun m!1929579 () Bool)

(assert (=> b!1612111 m!1929579))

(assert (=> b!1611916 d!485281))

(declare-fun d!485283 () Bool)

(declare-fun c!262741 () Bool)

(declare-fun isEmpty!10627 (List!17660) Bool)

(assert (=> d!485283 (= c!262741 (isEmpty!10627 (++!4627 lt!575193 lt!575198)))))

(declare-fun e!1033916 () Bool)

(assert (=> d!485283 (= (prefixMatch!360 lt!575204 (++!4627 lt!575193 lt!575198)) e!1033916)))

(declare-fun b!1612116 () Bool)

(declare-fun lostCause!416 (Regex!4425) Bool)

(assert (=> b!1612116 (= e!1033916 (not (lostCause!416 lt!575204)))))

(declare-fun b!1612117 () Bool)

(declare-fun derivativeStep!1060 (Regex!4425 C!9024) Regex!4425)

(declare-fun tail!2316 (List!17660) List!17660)

(assert (=> b!1612117 (= e!1033916 (prefixMatch!360 (derivativeStep!1060 lt!575204 (head!3302 (++!4627 lt!575193 lt!575198))) (tail!2316 (++!4627 lt!575193 lt!575198))))))

(assert (= (and d!485283 c!262741) b!1612116))

(assert (= (and d!485283 (not c!262741)) b!1612117))

(assert (=> d!485283 m!1929189))

(declare-fun m!1929581 () Bool)

(assert (=> d!485283 m!1929581))

(declare-fun m!1929583 () Bool)

(assert (=> b!1612116 m!1929583))

(assert (=> b!1612117 m!1929189))

(declare-fun m!1929585 () Bool)

(assert (=> b!1612117 m!1929585))

(assert (=> b!1612117 m!1929585))

(declare-fun m!1929587 () Bool)

(assert (=> b!1612117 m!1929587))

(assert (=> b!1612117 m!1929189))

(declare-fun m!1929589 () Bool)

(assert (=> b!1612117 m!1929589))

(assert (=> b!1612117 m!1929587))

(assert (=> b!1612117 m!1929589))

(declare-fun m!1929591 () Bool)

(assert (=> b!1612117 m!1929591))

(assert (=> b!1611905 d!485283))

(declare-fun b!1612128 () Bool)

(declare-fun res!718895 () Bool)

(declare-fun e!1033921 () Bool)

(assert (=> b!1612128 (=> (not res!718895) (not e!1033921))))

(declare-fun lt!575431 () List!17660)

(declare-fun size!14152 (List!17660) Int)

(assert (=> b!1612128 (= res!718895 (= (size!14152 lt!575431) (+ (size!14152 lt!575193) (size!14152 lt!575198))))))

(declare-fun d!485285 () Bool)

(assert (=> d!485285 e!1033921))

(declare-fun res!718894 () Bool)

(assert (=> d!485285 (=> (not res!718894) (not e!1033921))))

(declare-fun content!2443 (List!17660) (InoxSet C!9024))

(assert (=> d!485285 (= res!718894 (= (content!2443 lt!575431) ((_ map or) (content!2443 lt!575193) (content!2443 lt!575198))))))

(declare-fun e!1033922 () List!17660)

(assert (=> d!485285 (= lt!575431 e!1033922)))

(declare-fun c!262744 () Bool)

(assert (=> d!485285 (= c!262744 ((_ is Nil!17590) lt!575193))))

(assert (=> d!485285 (= (++!4627 lt!575193 lt!575198) lt!575431)))

(declare-fun b!1612126 () Bool)

(assert (=> b!1612126 (= e!1033922 lt!575198)))

(declare-fun b!1612129 () Bool)

(assert (=> b!1612129 (= e!1033921 (or (not (= lt!575198 Nil!17590)) (= lt!575431 lt!575193)))))

(declare-fun b!1612127 () Bool)

(assert (=> b!1612127 (= e!1033922 (Cons!17590 (h!22991 lt!575193) (++!4627 (t!148007 lt!575193) lt!575198)))))

(assert (= (and d!485285 c!262744) b!1612126))

(assert (= (and d!485285 (not c!262744)) b!1612127))

(assert (= (and d!485285 res!718894) b!1612128))

(assert (= (and b!1612128 res!718895) b!1612129))

(declare-fun m!1929593 () Bool)

(assert (=> b!1612128 m!1929593))

(declare-fun m!1929595 () Bool)

(assert (=> b!1612128 m!1929595))

(declare-fun m!1929597 () Bool)

(assert (=> b!1612128 m!1929597))

(declare-fun m!1929599 () Bool)

(assert (=> d!485285 m!1929599))

(declare-fun m!1929601 () Bool)

(assert (=> d!485285 m!1929601))

(declare-fun m!1929603 () Bool)

(assert (=> d!485285 m!1929603))

(declare-fun m!1929605 () Bool)

(assert (=> b!1612127 m!1929605))

(assert (=> b!1611905 d!485285))

(declare-fun d!485287 () Bool)

(declare-fun list!6866 (Conc!5842) List!17660)

(assert (=> d!485287 (= (list!6863 lt!575187) (list!6866 (c!262711 lt!575187)))))

(declare-fun bs!393899 () Bool)

(assert (= bs!393899 d!485287))

(declare-fun m!1929607 () Bool)

(assert (=> bs!393899 m!1929607))

(assert (=> b!1611905 d!485287))

(declare-fun d!485289 () Bool)

(assert (=> d!485289 (= (isEmpty!10621 rules!1846) ((_ is Nil!17591) rules!1846))))

(assert (=> b!1611920 d!485289))

(declare-fun d!485291 () Bool)

(assert (=> d!485291 true))

(declare-fun lt!575434 () Bool)

(declare-fun lambda!67038 () Int)

(declare-fun forall!4046 (List!17661 Int) Bool)

(assert (=> d!485291 (= lt!575434 (forall!4046 rules!1846 lambda!67038))))

(declare-fun e!1033928 () Bool)

(assert (=> d!485291 (= lt!575434 e!1033928)))

(declare-fun res!718900 () Bool)

(assert (=> d!485291 (=> res!718900 e!1033928)))

(assert (=> d!485291 (= res!718900 (not ((_ is Cons!17591) rules!1846)))))

(assert (=> d!485291 (= (rulesValidInductive!942 thiss!17113 rules!1846) lt!575434)))

(declare-fun b!1612134 () Bool)

(declare-fun e!1033927 () Bool)

(assert (=> b!1612134 (= e!1033928 e!1033927)))

(declare-fun res!718901 () Bool)

(assert (=> b!1612134 (=> (not res!718901) (not e!1033927))))

(declare-fun ruleValid!722 (LexerInterface!2726 Rule!5994) Bool)

(assert (=> b!1612134 (= res!718901 (ruleValid!722 thiss!17113 (h!22992 rules!1846)))))

(declare-fun b!1612135 () Bool)

(assert (=> b!1612135 (= e!1033927 (rulesValidInductive!942 thiss!17113 (t!148008 rules!1846)))))

(assert (= (and d!485291 (not res!718900)) b!1612134))

(assert (= (and b!1612134 res!718901) b!1612135))

(declare-fun m!1929609 () Bool)

(assert (=> d!485291 m!1929609))

(declare-fun m!1929611 () Bool)

(assert (=> b!1612134 m!1929611))

(declare-fun m!1929613 () Bool)

(assert (=> b!1612135 m!1929613))

(assert (=> b!1611909 d!485291))

(declare-fun d!485293 () Bool)

(declare-fun res!718904 () Bool)

(declare-fun e!1033931 () Bool)

(assert (=> d!485293 (=> (not res!718904) (not e!1033931))))

(declare-fun rulesValid!1105 (LexerInterface!2726 List!17661) Bool)

(assert (=> d!485293 (= res!718904 (rulesValid!1105 thiss!17113 rules!1846))))

(assert (=> d!485293 (= (rulesInvariant!2395 thiss!17113 rules!1846) e!1033931)))

(declare-fun b!1612140 () Bool)

(declare-datatypes ((List!17667 0))(
  ( (Nil!17597) (Cons!17597 (h!22998 String!20267) (t!148056 List!17667)) )
))
(declare-fun noDuplicateTag!1105 (LexerInterface!2726 List!17661 List!17667) Bool)

(assert (=> b!1612140 (= e!1033931 (noDuplicateTag!1105 thiss!17113 rules!1846 Nil!17597))))

(assert (= (and d!485293 res!718904) b!1612140))

(declare-fun m!1929615 () Bool)

(assert (=> d!485293 m!1929615))

(declare-fun m!1929617 () Bool)

(assert (=> b!1612140 m!1929617))

(assert (=> b!1611908 d!485293))

(declare-fun d!485295 () Bool)

(declare-fun lt!575437 () BalanceConc!11628)

(assert (=> d!485295 (= (list!6863 lt!575437) (printList!841 thiss!17113 (list!6864 lt!575182)))))

(assert (=> d!485295 (= lt!575437 (printTailRec!779 thiss!17113 lt!575182 0 (BalanceConc!11629 Empty!5842)))))

(assert (=> d!485295 (= (print!1257 thiss!17113 lt!575182) lt!575437)))

(declare-fun bs!393900 () Bool)

(assert (= bs!393900 d!485295))

(declare-fun m!1929619 () Bool)

(assert (=> bs!393900 m!1929619))

(declare-fun m!1929621 () Bool)

(assert (=> bs!393900 m!1929621))

(assert (=> bs!393900 m!1929621))

(declare-fun m!1929623 () Bool)

(assert (=> bs!393900 m!1929623))

(assert (=> bs!393900 m!1929117))

(assert (=> b!1611919 d!485295))

(declare-fun b!1612159 () Bool)

(declare-fun e!1033940 () Bool)

(declare-fun lt!575450 () Option!3195)

(declare-fun contains!3085 (List!17661 Rule!5994) Bool)

(assert (=> b!1612159 (= e!1033940 (contains!3085 rules!1846 (rule!4917 (_1!9945 (get!5042 lt!575450)))))))

(declare-fun b!1612160 () Bool)

(declare-fun res!718925 () Bool)

(assert (=> b!1612160 (=> (not res!718925) (not e!1033940))))

(assert (=> b!1612160 (= res!718925 (= (++!4627 (list!6863 (charsOf!1746 (_1!9945 (get!5042 lt!575450)))) (_2!9945 (get!5042 lt!575450))) lt!575192))))

(declare-fun b!1612161 () Bool)

(declare-fun res!718919 () Bool)

(assert (=> b!1612161 (=> (not res!718919) (not e!1033940))))

(assert (=> b!1612161 (= res!718919 (< (size!14152 (_2!9945 (get!5042 lt!575450))) (size!14152 lt!575192)))))

(declare-fun b!1612162 () Bool)

(declare-fun e!1033939 () Option!3195)

(declare-fun call!104787 () Option!3195)

(assert (=> b!1612162 (= e!1033939 call!104787)))

(declare-fun b!1612163 () Bool)

(declare-fun e!1033938 () Bool)

(assert (=> b!1612163 (= e!1033938 e!1033940)))

(declare-fun res!718924 () Bool)

(assert (=> b!1612163 (=> (not res!718924) (not e!1033940))))

(assert (=> b!1612163 (= res!718924 (isDefined!2562 lt!575450))))

(declare-fun b!1612164 () Bool)

(declare-fun res!718923 () Bool)

(assert (=> b!1612164 (=> (not res!718923) (not e!1033940))))

(assert (=> b!1612164 (= res!718923 (= (list!6863 (charsOf!1746 (_1!9945 (get!5042 lt!575450)))) (originalCharacters!3911 (_1!9945 (get!5042 lt!575450)))))))

(declare-fun b!1612165 () Bool)

(declare-fun res!718920 () Bool)

(assert (=> b!1612165 (=> (not res!718920) (not e!1033940))))

(declare-fun apply!4401 (TokenValueInjection!6034 BalanceConc!11628) TokenValue!3187)

(assert (=> b!1612165 (= res!718920 (= (value!97937 (_1!9945 (get!5042 lt!575450))) (apply!4401 (transformation!3097 (rule!4917 (_1!9945 (get!5042 lt!575450)))) (seqFromList!1943 (originalCharacters!3911 (_1!9945 (get!5042 lt!575450)))))))))

(declare-fun d!485297 () Bool)

(assert (=> d!485297 e!1033938))

(declare-fun res!718922 () Bool)

(assert (=> d!485297 (=> res!718922 e!1033938)))

(declare-fun isEmpty!10628 (Option!3195) Bool)

(assert (=> d!485297 (= res!718922 (isEmpty!10628 lt!575450))))

(assert (=> d!485297 (= lt!575450 e!1033939)))

(declare-fun c!262747 () Bool)

(assert (=> d!485297 (= c!262747 (and ((_ is Cons!17591) rules!1846) ((_ is Nil!17591) (t!148008 rules!1846))))))

(declare-fun lt!575449 () Unit!28247)

(declare-fun lt!575452 () Unit!28247)

(assert (=> d!485297 (= lt!575449 lt!575452)))

(assert (=> d!485297 (isPrefix!1357 lt!575192 lt!575192)))

(assert (=> d!485297 (= lt!575452 (lemmaIsPrefixRefl!937 lt!575192 lt!575192))))

(assert (=> d!485297 (rulesValidInductive!942 thiss!17113 rules!1846)))

(assert (=> d!485297 (= (maxPrefix!1290 thiss!17113 rules!1846 lt!575192) lt!575450)))

(declare-fun b!1612166 () Bool)

(declare-fun lt!575448 () Option!3195)

(declare-fun lt!575451 () Option!3195)

(assert (=> b!1612166 (= e!1033939 (ite (and ((_ is None!3194) lt!575448) ((_ is None!3194) lt!575451)) None!3194 (ite ((_ is None!3194) lt!575451) lt!575448 (ite ((_ is None!3194) lt!575448) lt!575451 (ite (>= (size!14148 (_1!9945 (v!24159 lt!575448))) (size!14148 (_1!9945 (v!24159 lt!575451)))) lt!575448 lt!575451)))))))

(assert (=> b!1612166 (= lt!575448 call!104787)))

(assert (=> b!1612166 (= lt!575451 (maxPrefix!1290 thiss!17113 (t!148008 rules!1846) lt!575192))))

(declare-fun b!1612167 () Bool)

(declare-fun res!718921 () Bool)

(assert (=> b!1612167 (=> (not res!718921) (not e!1033940))))

(declare-fun matchR!1938 (Regex!4425 List!17660) Bool)

(assert (=> b!1612167 (= res!718921 (matchR!1938 (regex!3097 (rule!4917 (_1!9945 (get!5042 lt!575450)))) (list!6863 (charsOf!1746 (_1!9945 (get!5042 lt!575450))))))))

(declare-fun bm!104782 () Bool)

(declare-fun maxPrefixOneRule!753 (LexerInterface!2726 Rule!5994 List!17660) Option!3195)

(assert (=> bm!104782 (= call!104787 (maxPrefixOneRule!753 thiss!17113 (h!22992 rules!1846) lt!575192))))

(assert (= (and d!485297 c!262747) b!1612162))

(assert (= (and d!485297 (not c!262747)) b!1612166))

(assert (= (or b!1612162 b!1612166) bm!104782))

(assert (= (and d!485297 (not res!718922)) b!1612163))

(assert (= (and b!1612163 res!718924) b!1612164))

(assert (= (and b!1612164 res!718923) b!1612161))

(assert (= (and b!1612161 res!718919) b!1612160))

(assert (= (and b!1612160 res!718925) b!1612165))

(assert (= (and b!1612165 res!718920) b!1612167))

(assert (= (and b!1612167 res!718921) b!1612159))

(declare-fun m!1929625 () Bool)

(assert (=> b!1612163 m!1929625))

(declare-fun m!1929627 () Bool)

(assert (=> b!1612166 m!1929627))

(declare-fun m!1929629 () Bool)

(assert (=> b!1612161 m!1929629))

(declare-fun m!1929631 () Bool)

(assert (=> b!1612161 m!1929631))

(declare-fun m!1929633 () Bool)

(assert (=> b!1612161 m!1929633))

(assert (=> b!1612164 m!1929629))

(declare-fun m!1929635 () Bool)

(assert (=> b!1612164 m!1929635))

(assert (=> b!1612164 m!1929635))

(declare-fun m!1929637 () Bool)

(assert (=> b!1612164 m!1929637))

(assert (=> b!1612167 m!1929629))

(assert (=> b!1612167 m!1929635))

(assert (=> b!1612167 m!1929635))

(assert (=> b!1612167 m!1929637))

(assert (=> b!1612167 m!1929637))

(declare-fun m!1929639 () Bool)

(assert (=> b!1612167 m!1929639))

(declare-fun m!1929641 () Bool)

(assert (=> d!485297 m!1929641))

(declare-fun m!1929643 () Bool)

(assert (=> d!485297 m!1929643))

(declare-fun m!1929645 () Bool)

(assert (=> d!485297 m!1929645))

(assert (=> d!485297 m!1929157))

(assert (=> b!1612160 m!1929629))

(assert (=> b!1612160 m!1929635))

(assert (=> b!1612160 m!1929635))

(assert (=> b!1612160 m!1929637))

(assert (=> b!1612160 m!1929637))

(declare-fun m!1929647 () Bool)

(assert (=> b!1612160 m!1929647))

(declare-fun m!1929649 () Bool)

(assert (=> bm!104782 m!1929649))

(assert (=> b!1612165 m!1929629))

(declare-fun m!1929651 () Bool)

(assert (=> b!1612165 m!1929651))

(assert (=> b!1612165 m!1929651))

(declare-fun m!1929653 () Bool)

(assert (=> b!1612165 m!1929653))

(assert (=> b!1612159 m!1929629))

(declare-fun m!1929655 () Bool)

(assert (=> b!1612159 m!1929655))

(assert (=> b!1611919 d!485297))

(declare-fun d!485299 () Bool)

(declare-fun c!262750 () Bool)

(assert (=> d!485299 (= c!262750 ((_ is Cons!17592) (Cons!17592 (h!22993 tokens!457) Nil!17592)))))

(declare-fun e!1033943 () List!17660)

(assert (=> d!485299 (= (printList!841 thiss!17113 (Cons!17592 (h!22993 tokens!457) Nil!17592)) e!1033943)))

(declare-fun b!1612172 () Bool)

(assert (=> b!1612172 (= e!1033943 (++!4627 (list!6863 (charsOf!1746 (h!22993 (Cons!17592 (h!22993 tokens!457) Nil!17592)))) (printList!841 thiss!17113 (t!148009 (Cons!17592 (h!22993 tokens!457) Nil!17592)))))))

(declare-fun b!1612173 () Bool)

(assert (=> b!1612173 (= e!1033943 Nil!17590)))

(assert (= (and d!485299 c!262750) b!1612172))

(assert (= (and d!485299 (not c!262750)) b!1612173))

(declare-fun m!1929657 () Bool)

(assert (=> b!1612172 m!1929657))

(assert (=> b!1612172 m!1929657))

(declare-fun m!1929659 () Bool)

(assert (=> b!1612172 m!1929659))

(declare-fun m!1929661 () Bool)

(assert (=> b!1612172 m!1929661))

(assert (=> b!1612172 m!1929659))

(assert (=> b!1612172 m!1929661))

(declare-fun m!1929663 () Bool)

(assert (=> b!1612172 m!1929663))

(assert (=> b!1611919 d!485299))

(declare-fun d!485301 () Bool)

(declare-fun lt!575471 () BalanceConc!11628)

(declare-fun printListTailRec!332 (LexerInterface!2726 List!17662 List!17660) List!17660)

(declare-fun dropList!563 (BalanceConc!11630 Int) List!17662)

(assert (=> d!485301 (= (list!6863 lt!575471) (printListTailRec!332 thiss!17113 (dropList!563 lt!575182 0) (list!6863 (BalanceConc!11629 Empty!5842))))))

(declare-fun e!1033949 () BalanceConc!11628)

(assert (=> d!485301 (= lt!575471 e!1033949)))

(declare-fun c!262753 () Bool)

(declare-fun size!14154 (BalanceConc!11630) Int)

(assert (=> d!485301 (= c!262753 (>= 0 (size!14154 lt!575182)))))

(declare-fun e!1033948 () Bool)

(assert (=> d!485301 e!1033948))

(declare-fun res!718928 () Bool)

(assert (=> d!485301 (=> (not res!718928) (not e!1033948))))

(assert (=> d!485301 (= res!718928 (>= 0 0))))

(assert (=> d!485301 (= (printTailRec!779 thiss!17113 lt!575182 0 (BalanceConc!11629 Empty!5842)) lt!575471)))

(declare-fun b!1612180 () Bool)

(assert (=> b!1612180 (= e!1033948 (<= 0 (size!14154 lt!575182)))))

(declare-fun b!1612181 () Bool)

(assert (=> b!1612181 (= e!1033949 (BalanceConc!11629 Empty!5842))))

(declare-fun b!1612182 () Bool)

(declare-fun apply!4402 (BalanceConc!11630 Int) Token!5760)

(assert (=> b!1612182 (= e!1033949 (printTailRec!779 thiss!17113 lt!575182 (+ 0 1) (++!4628 (BalanceConc!11629 Empty!5842) (charsOf!1746 (apply!4402 lt!575182 0)))))))

(declare-fun lt!575468 () List!17662)

(assert (=> b!1612182 (= lt!575468 (list!6864 lt!575182))))

(declare-fun lt!575472 () Unit!28247)

(declare-fun lemmaDropApply!539 (List!17662 Int) Unit!28247)

(assert (=> b!1612182 (= lt!575472 (lemmaDropApply!539 lt!575468 0))))

(declare-fun head!3306 (List!17662) Token!5760)

(declare-fun drop!847 (List!17662 Int) List!17662)

(declare-fun apply!4403 (List!17662 Int) Token!5760)

(assert (=> b!1612182 (= (head!3306 (drop!847 lt!575468 0)) (apply!4403 lt!575468 0))))

(declare-fun lt!575470 () Unit!28247)

(assert (=> b!1612182 (= lt!575470 lt!575472)))

(declare-fun lt!575473 () List!17662)

(assert (=> b!1612182 (= lt!575473 (list!6864 lt!575182))))

(declare-fun lt!575467 () Unit!28247)

(declare-fun lemmaDropTail!519 (List!17662 Int) Unit!28247)

(assert (=> b!1612182 (= lt!575467 (lemmaDropTail!519 lt!575473 0))))

(declare-fun tail!2317 (List!17662) List!17662)

(assert (=> b!1612182 (= (tail!2317 (drop!847 lt!575473 0)) (drop!847 lt!575473 (+ 0 1)))))

(declare-fun lt!575469 () Unit!28247)

(assert (=> b!1612182 (= lt!575469 lt!575467)))

(assert (= (and d!485301 res!718928) b!1612180))

(assert (= (and d!485301 c!262753) b!1612181))

(assert (= (and d!485301 (not c!262753)) b!1612182))

(declare-fun m!1929665 () Bool)

(assert (=> d!485301 m!1929665))

(declare-fun m!1929667 () Bool)

(assert (=> d!485301 m!1929667))

(declare-fun m!1929669 () Bool)

(assert (=> d!485301 m!1929669))

(declare-fun m!1929671 () Bool)

(assert (=> d!485301 m!1929671))

(assert (=> d!485301 m!1929667))

(declare-fun m!1929673 () Bool)

(assert (=> d!485301 m!1929673))

(assert (=> d!485301 m!1929665))

(assert (=> b!1612180 m!1929673))

(declare-fun m!1929675 () Bool)

(assert (=> b!1612182 m!1929675))

(declare-fun m!1929677 () Bool)

(assert (=> b!1612182 m!1929677))

(declare-fun m!1929679 () Bool)

(assert (=> b!1612182 m!1929679))

(declare-fun m!1929681 () Bool)

(assert (=> b!1612182 m!1929681))

(declare-fun m!1929683 () Bool)

(assert (=> b!1612182 m!1929683))

(declare-fun m!1929685 () Bool)

(assert (=> b!1612182 m!1929685))

(declare-fun m!1929687 () Bool)

(assert (=> b!1612182 m!1929687))

(declare-fun m!1929689 () Bool)

(assert (=> b!1612182 m!1929689))

(declare-fun m!1929691 () Bool)

(assert (=> b!1612182 m!1929691))

(declare-fun m!1929693 () Bool)

(assert (=> b!1612182 m!1929693))

(assert (=> b!1612182 m!1929687))

(declare-fun m!1929695 () Bool)

(assert (=> b!1612182 m!1929695))

(assert (=> b!1612182 m!1929677))

(assert (=> b!1612182 m!1929621))

(assert (=> b!1612182 m!1929675))

(assert (=> b!1612182 m!1929695))

(declare-fun m!1929697 () Bool)

(assert (=> b!1612182 m!1929697))

(assert (=> b!1612182 m!1929683))

(assert (=> b!1611919 d!485301))

(declare-fun d!485303 () Bool)

(assert (=> d!485303 (= (list!6863 lt!575186) (list!6866 (c!262711 lt!575186)))))

(declare-fun bs!393901 () Bool)

(assert (= bs!393901 d!485303))

(declare-fun m!1929699 () Bool)

(assert (=> bs!393901 m!1929699))

(assert (=> b!1611919 d!485303))

(declare-fun d!485305 () Bool)

(declare-fun e!1033952 () Bool)

(assert (=> d!485305 e!1033952))

(declare-fun res!718931 () Bool)

(assert (=> d!485305 (=> (not res!718931) (not e!1033952))))

(declare-fun lt!575476 () BalanceConc!11630)

(assert (=> d!485305 (= res!718931 (= (list!6864 lt!575476) (Cons!17592 (h!22993 tokens!457) Nil!17592)))))

(declare-fun singleton!625 (Token!5760) BalanceConc!11630)

(assert (=> d!485305 (= lt!575476 (singleton!625 (h!22993 tokens!457)))))

(assert (=> d!485305 (= (singletonSeq!1473 (h!22993 tokens!457)) lt!575476)))

(declare-fun b!1612185 () Bool)

(declare-fun isBalanced!1746 (Conc!5843) Bool)

(assert (=> b!1612185 (= e!1033952 (isBalanced!1746 (c!262713 lt!575476)))))

(assert (= (and d!485305 res!718931) b!1612185))

(declare-fun m!1929701 () Bool)

(assert (=> d!485305 m!1929701))

(declare-fun m!1929703 () Bool)

(assert (=> d!485305 m!1929703))

(declare-fun m!1929705 () Bool)

(assert (=> b!1612185 m!1929705))

(assert (=> b!1611919 d!485305))

(declare-fun d!485307 () Bool)

(assert (=> d!485307 (= (head!3302 lt!575201) (h!22991 lt!575201))))

(assert (=> b!1611912 d!485307))

(declare-fun d!485309 () Bool)

(declare-fun res!718936 () Bool)

(declare-fun e!1033955 () Bool)

(assert (=> d!485309 (=> (not res!718936) (not e!1033955))))

(assert (=> d!485309 (= res!718936 (not (isEmpty!10627 (originalCharacters!3911 (h!22993 tokens!457)))))))

(assert (=> d!485309 (= (inv!23007 (h!22993 tokens!457)) e!1033955)))

(declare-fun b!1612190 () Bool)

(declare-fun res!718937 () Bool)

(assert (=> b!1612190 (=> (not res!718937) (not e!1033955))))

(assert (=> b!1612190 (= res!718937 (= (originalCharacters!3911 (h!22993 tokens!457)) (list!6863 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (value!97937 (h!22993 tokens!457))))))))

(declare-fun b!1612191 () Bool)

(assert (=> b!1612191 (= e!1033955 (= (size!14148 (h!22993 tokens!457)) (size!14152 (originalCharacters!3911 (h!22993 tokens!457)))))))

(assert (= (and d!485309 res!718936) b!1612190))

(assert (= (and b!1612190 res!718937) b!1612191))

(declare-fun b_lambda!50877 () Bool)

(assert (=> (not b_lambda!50877) (not b!1612190)))

(declare-fun t!148028 () Bool)

(declare-fun tb!92707 () Bool)

(assert (=> (and b!1611900 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457))))) t!148028) tb!92707))

(declare-fun b!1612192 () Bool)

(declare-fun e!1033956 () Bool)

(declare-fun tp!470160 () Bool)

(assert (=> b!1612192 (= e!1033956 (and (inv!23010 (c!262711 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (value!97937 (h!22993 tokens!457))))) tp!470160))))

(declare-fun result!111702 () Bool)

(assert (=> tb!92707 (= result!111702 (and (inv!23011 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (value!97937 (h!22993 tokens!457)))) e!1033956))))

(assert (= tb!92707 b!1612192))

(declare-fun m!1929707 () Bool)

(assert (=> b!1612192 m!1929707))

(declare-fun m!1929709 () Bool)

(assert (=> tb!92707 m!1929709))

(assert (=> b!1612190 t!148028))

(declare-fun b_and!114301 () Bool)

(assert (= b_and!114297 (and (=> t!148028 result!111702) b_and!114301)))

(declare-fun tb!92709 () Bool)

(declare-fun t!148030 () Bool)

(assert (=> (and b!1611922 (= (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457))))) t!148030) tb!92709))

(declare-fun result!111704 () Bool)

(assert (= result!111704 result!111702))

(assert (=> b!1612190 t!148030))

(declare-fun b_and!114303 () Bool)

(assert (= b_and!114299 (and (=> t!148030 result!111704) b_and!114303)))

(declare-fun m!1929711 () Bool)

(assert (=> d!485309 m!1929711))

(declare-fun m!1929713 () Bool)

(assert (=> b!1612190 m!1929713))

(assert (=> b!1612190 m!1929713))

(declare-fun m!1929715 () Bool)

(assert (=> b!1612190 m!1929715))

(declare-fun m!1929717 () Bool)

(assert (=> b!1612191 m!1929717))

(assert (=> b!1611923 d!485309))

(declare-fun d!485311 () Bool)

(assert (=> d!485311 (= (isDefined!2562 lt!575200) (not (isEmpty!10628 lt!575200)))))

(declare-fun bs!393902 () Bool)

(assert (= bs!393902 d!485311))

(declare-fun m!1929719 () Bool)

(assert (=> bs!393902 m!1929719))

(assert (=> b!1611901 d!485311))

(declare-fun d!485313 () Bool)

(assert (=> d!485313 (isDefined!2562 (maxPrefix!1290 thiss!17113 rules!1846 (++!4627 lt!575193 lt!575201)))))

(declare-fun lt!575518 () Unit!28247)

(declare-fun e!1033967 () Unit!28247)

(assert (=> d!485313 (= lt!575518 e!1033967)))

(declare-fun c!262757 () Bool)

(assert (=> d!485313 (= c!262757 (isEmpty!10628 (maxPrefix!1290 thiss!17113 rules!1846 (++!4627 lt!575193 lt!575201))))))

(declare-fun lt!575519 () Unit!28247)

(declare-fun lt!575528 () Unit!28247)

(assert (=> d!485313 (= lt!575519 lt!575528)))

(declare-fun e!1033966 () Bool)

(assert (=> d!485313 e!1033966))

(declare-fun res!718947 () Bool)

(assert (=> d!485313 (=> (not res!718947) (not e!1033966))))

(declare-fun lt!575525 () Token!5760)

(declare-datatypes ((Option!3198 0))(
  ( (None!3197) (Some!3197 (v!24168 Rule!5994)) )
))
(declare-fun isDefined!2565 (Option!3198) Bool)

(declare-fun getRuleFromTag!262 (LexerInterface!2726 List!17661 String!20267) Option!3198)

(assert (=> d!485313 (= res!718947 (isDefined!2565 (getRuleFromTag!262 thiss!17113 rules!1846 (tag!3373 (rule!4917 lt!575525)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!262 (LexerInterface!2726 List!17661 List!17660 Token!5760) Unit!28247)

(assert (=> d!485313 (= lt!575528 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!262 thiss!17113 rules!1846 lt!575193 lt!575525))))

(declare-fun lt!575521 () Unit!28247)

(declare-fun lt!575534 () Unit!28247)

(assert (=> d!485313 (= lt!575521 lt!575534)))

(declare-fun lt!575531 () List!17660)

(assert (=> d!485313 (isPrefix!1357 lt!575531 (++!4627 lt!575193 lt!575201))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!148 (List!17660 List!17660 List!17660) Unit!28247)

(assert (=> d!485313 (= lt!575534 (lemmaPrefixStaysPrefixWhenAddingToSuffix!148 lt!575531 lt!575193 lt!575201))))

(assert (=> d!485313 (= lt!575531 (list!6863 (charsOf!1746 lt!575525)))))

(declare-fun lt!575520 () Unit!28247)

(declare-fun lt!575523 () Unit!28247)

(assert (=> d!485313 (= lt!575520 lt!575523)))

(declare-fun lt!575524 () List!17660)

(declare-fun lt!575526 () List!17660)

(assert (=> d!485313 (isPrefix!1357 lt!575524 (++!4627 lt!575524 lt!575526))))

(assert (=> d!485313 (= lt!575523 (lemmaConcatTwoListThenFirstIsPrefix!882 lt!575524 lt!575526))))

(assert (=> d!485313 (= lt!575526 (_2!9945 (get!5042 (maxPrefix!1290 thiss!17113 rules!1846 lt!575193))))))

(assert (=> d!485313 (= lt!575524 (list!6863 (charsOf!1746 lt!575525)))))

(assert (=> d!485313 (= lt!575525 (head!3306 (list!6864 (_1!9947 (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193))))))))

(assert (=> d!485313 (not (isEmpty!10621 rules!1846))))

(assert (=> d!485313 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!300 thiss!17113 rules!1846 lt!575193 lt!575201) lt!575518)))

(declare-fun b!1612209 () Bool)

(declare-fun get!5044 (Option!3198) Rule!5994)

(assert (=> b!1612209 (= e!1033966 (= (rule!4917 lt!575525) (get!5044 (getRuleFromTag!262 thiss!17113 rules!1846 (tag!3373 (rule!4917 lt!575525))))))))

(declare-fun b!1612210 () Bool)

(declare-fun Unit!28254 () Unit!28247)

(assert (=> b!1612210 (= e!1033967 Unit!28254)))

(declare-fun lt!575529 () List!17660)

(assert (=> b!1612210 (= lt!575529 (++!4627 lt!575193 lt!575201))))

(declare-fun lt!575522 () Unit!28247)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!156 (LexerInterface!2726 Rule!5994 List!17661 List!17660) Unit!28247)

(assert (=> b!1612210 (= lt!575522 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!156 thiss!17113 (rule!4917 lt!575525) rules!1846 lt!575529))))

(assert (=> b!1612210 (isEmpty!10628 (maxPrefixOneRule!753 thiss!17113 (rule!4917 lt!575525) lt!575529))))

(declare-fun lt!575532 () Unit!28247)

(assert (=> b!1612210 (= lt!575532 lt!575522)))

(declare-fun lt!575530 () List!17660)

(assert (=> b!1612210 (= lt!575530 (list!6863 (charsOf!1746 lt!575525)))))

(declare-fun lt!575527 () Unit!28247)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!152 (LexerInterface!2726 Rule!5994 List!17660 List!17660) Unit!28247)

(assert (=> b!1612210 (= lt!575527 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!152 thiss!17113 (rule!4917 lt!575525) lt!575530 (++!4627 lt!575193 lt!575201)))))

(assert (=> b!1612210 (not (matchR!1938 (regex!3097 (rule!4917 lt!575525)) lt!575530))))

(declare-fun lt!575533 () Unit!28247)

(assert (=> b!1612210 (= lt!575533 lt!575527)))

(assert (=> b!1612210 false))

(declare-fun b!1612211 () Bool)

(declare-fun Unit!28255 () Unit!28247)

(assert (=> b!1612211 (= e!1033967 Unit!28255)))

(declare-fun b!1612208 () Bool)

(declare-fun res!718948 () Bool)

(assert (=> b!1612208 (=> (not res!718948) (not e!1033966))))

(assert (=> b!1612208 (= res!718948 (matchR!1938 (regex!3097 (get!5044 (getRuleFromTag!262 thiss!17113 rules!1846 (tag!3373 (rule!4917 lt!575525))))) (list!6863 (charsOf!1746 lt!575525))))))

(assert (= (and d!485313 res!718947) b!1612208))

(assert (= (and b!1612208 res!718948) b!1612209))

(assert (= (and d!485313 c!262757) b!1612210))

(assert (= (and d!485313 (not c!262757)) b!1612211))

(declare-fun m!1929749 () Bool)

(assert (=> d!485313 m!1929749))

(declare-fun m!1929751 () Bool)

(assert (=> d!485313 m!1929751))

(declare-fun m!1929755 () Bool)

(assert (=> d!485313 m!1929755))

(declare-fun m!1929757 () Bool)

(assert (=> d!485313 m!1929757))

(assert (=> d!485313 m!1929107))

(assert (=> d!485313 m!1929109))

(assert (=> d!485313 m!1929749))

(declare-fun m!1929761 () Bool)

(assert (=> d!485313 m!1929761))

(declare-fun m!1929763 () Bool)

(assert (=> d!485313 m!1929763))

(declare-fun m!1929765 () Bool)

(assert (=> d!485313 m!1929765))

(declare-fun m!1929767 () Bool)

(assert (=> d!485313 m!1929767))

(declare-fun m!1929769 () Bool)

(assert (=> d!485313 m!1929769))

(assert (=> d!485313 m!1929107))

(assert (=> d!485313 m!1929153))

(declare-fun m!1929771 () Bool)

(assert (=> d!485313 m!1929771))

(declare-fun m!1929773 () Bool)

(assert (=> d!485313 m!1929773))

(assert (=> d!485313 m!1929179))

(assert (=> d!485313 m!1929761))

(assert (=> d!485313 m!1929767))

(assert (=> d!485313 m!1929179))

(assert (=> d!485313 m!1929761))

(declare-fun m!1929775 () Bool)

(assert (=> d!485313 m!1929775))

(declare-fun m!1929777 () Bool)

(assert (=> d!485313 m!1929777))

(declare-fun m!1929779 () Bool)

(assert (=> d!485313 m!1929779))

(assert (=> d!485313 m!1929179))

(declare-fun m!1929781 () Bool)

(assert (=> d!485313 m!1929781))

(assert (=> d!485313 m!1929771))

(assert (=> d!485313 m!1929777))

(declare-fun m!1929783 () Bool)

(assert (=> d!485313 m!1929783))

(declare-fun m!1929785 () Bool)

(assert (=> d!485313 m!1929785))

(assert (=> d!485313 m!1929755))

(assert (=> b!1612209 m!1929777))

(assert (=> b!1612209 m!1929777))

(declare-fun m!1929787 () Bool)

(assert (=> b!1612209 m!1929787))

(declare-fun m!1929789 () Bool)

(assert (=> b!1612210 m!1929789))

(assert (=> b!1612210 m!1929749))

(assert (=> b!1612210 m!1929179))

(declare-fun m!1929791 () Bool)

(assert (=> b!1612210 m!1929791))

(declare-fun m!1929793 () Bool)

(assert (=> b!1612210 m!1929793))

(assert (=> b!1612210 m!1929179))

(assert (=> b!1612210 m!1929789))

(declare-fun m!1929795 () Bool)

(assert (=> b!1612210 m!1929795))

(declare-fun m!1929797 () Bool)

(assert (=> b!1612210 m!1929797))

(assert (=> b!1612210 m!1929749))

(assert (=> b!1612210 m!1929751))

(assert (=> b!1612208 m!1929749))

(assert (=> b!1612208 m!1929751))

(assert (=> b!1612208 m!1929777))

(assert (=> b!1612208 m!1929787))

(assert (=> b!1612208 m!1929749))

(assert (=> b!1612208 m!1929751))

(declare-fun m!1929799 () Bool)

(assert (=> b!1612208 m!1929799))

(assert (=> b!1612208 m!1929777))

(assert (=> b!1611901 d!485313))

(declare-fun d!485329 () Bool)

(declare-fun lt!575535 () BalanceConc!11628)

(assert (=> d!485329 (= (list!6863 lt!575535) (printList!841 thiss!17113 (list!6864 (seqFromList!1944 tokens!457))))))

(assert (=> d!485329 (= lt!575535 (printTailRec!779 thiss!17113 (seqFromList!1944 tokens!457) 0 (BalanceConc!11629 Empty!5842)))))

(assert (=> d!485329 (= (print!1257 thiss!17113 (seqFromList!1944 tokens!457)) lt!575535)))

(declare-fun bs!393907 () Bool)

(assert (= bs!393907 d!485329))

(declare-fun m!1929801 () Bool)

(assert (=> bs!393907 m!1929801))

(assert (=> bs!393907 m!1929173))

(declare-fun m!1929803 () Bool)

(assert (=> bs!393907 m!1929803))

(assert (=> bs!393907 m!1929803))

(declare-fun m!1929805 () Bool)

(assert (=> bs!393907 m!1929805))

(assert (=> bs!393907 m!1929173))

(declare-fun m!1929807 () Bool)

(assert (=> bs!393907 m!1929807))

(assert (=> b!1611911 d!485329))

(declare-fun b!1612225 () Bool)

(declare-fun e!1033977 () Bool)

(declare-fun e!1033978 () Bool)

(assert (=> b!1612225 (= e!1033977 e!1033978)))

(declare-fun res!718959 () Bool)

(declare-fun lt!575538 () tuple2!17090)

(assert (=> b!1612225 (= res!718959 (< (size!14151 (_2!9947 lt!575538)) (size!14151 lt!575199)))))

(assert (=> b!1612225 (=> (not res!718959) (not e!1033978))))

(declare-fun e!1033979 () Bool)

(declare-fun b!1612226 () Bool)

(declare-datatypes ((tuple2!17094 0))(
  ( (tuple2!17095 (_1!9949 List!17662) (_2!9949 List!17660)) )
))
(declare-fun lexList!807 (LexerInterface!2726 List!17661 List!17660) tuple2!17094)

(assert (=> b!1612226 (= e!1033979 (= (list!6863 (_2!9947 lt!575538)) (_2!9949 (lexList!807 thiss!17113 rules!1846 (list!6863 lt!575199)))))))

(declare-fun b!1612227 () Bool)

(assert (=> b!1612227 (= e!1033978 (not (isEmpty!10620 (_1!9947 lt!575538))))))

(declare-fun d!485331 () Bool)

(assert (=> d!485331 e!1033979))

(declare-fun res!718958 () Bool)

(assert (=> d!485331 (=> (not res!718958) (not e!1033979))))

(assert (=> d!485331 (= res!718958 e!1033977)))

(declare-fun c!262760 () Bool)

(assert (=> d!485331 (= c!262760 (> (size!14154 (_1!9947 lt!575538)) 0))))

(declare-fun lexTailRecV2!530 (LexerInterface!2726 List!17661 BalanceConc!11628 BalanceConc!11628 BalanceConc!11628 BalanceConc!11630) tuple2!17090)

(assert (=> d!485331 (= lt!575538 (lexTailRecV2!530 thiss!17113 rules!1846 lt!575199 (BalanceConc!11629 Empty!5842) lt!575199 (BalanceConc!11631 Empty!5843)))))

(assert (=> d!485331 (= (lex!1210 thiss!17113 rules!1846 lt!575199) lt!575538)))

(declare-fun b!1612228 () Bool)

(assert (=> b!1612228 (= e!1033977 (= (_2!9947 lt!575538) lt!575199))))

(declare-fun b!1612229 () Bool)

(declare-fun res!718960 () Bool)

(assert (=> b!1612229 (=> (not res!718960) (not e!1033979))))

(assert (=> b!1612229 (= res!718960 (= (list!6864 (_1!9947 lt!575538)) (_1!9949 (lexList!807 thiss!17113 rules!1846 (list!6863 lt!575199)))))))

(assert (= (and d!485331 c!262760) b!1612225))

(assert (= (and d!485331 (not c!262760)) b!1612228))

(assert (= (and b!1612225 res!718959) b!1612227))

(assert (= (and d!485331 res!718958) b!1612229))

(assert (= (and b!1612229 res!718960) b!1612226))

(declare-fun m!1929809 () Bool)

(assert (=> b!1612229 m!1929809))

(assert (=> b!1612229 m!1929181))

(assert (=> b!1612229 m!1929181))

(declare-fun m!1929811 () Bool)

(assert (=> b!1612229 m!1929811))

(declare-fun m!1929813 () Bool)

(assert (=> d!485331 m!1929813))

(declare-fun m!1929815 () Bool)

(assert (=> d!485331 m!1929815))

(declare-fun m!1929817 () Bool)

(assert (=> b!1612226 m!1929817))

(assert (=> b!1612226 m!1929181))

(assert (=> b!1612226 m!1929181))

(assert (=> b!1612226 m!1929811))

(declare-fun m!1929819 () Bool)

(assert (=> b!1612227 m!1929819))

(declare-fun m!1929821 () Bool)

(assert (=> b!1612225 m!1929821))

(declare-fun m!1929823 () Bool)

(assert (=> b!1612225 m!1929823))

(assert (=> b!1611911 d!485331))

(declare-fun d!485333 () Bool)

(assert (=> d!485333 (= (list!6863 lt!575190) (list!6866 (c!262711 lt!575190)))))

(declare-fun bs!393908 () Bool)

(assert (= bs!393908 d!485333))

(declare-fun m!1929825 () Bool)

(assert (=> bs!393908 m!1929825))

(assert (=> b!1611911 d!485333))

(declare-fun d!485335 () Bool)

(assert (=> d!485335 (= (list!6863 lt!575181) (list!6866 (c!262711 lt!575181)))))

(declare-fun bs!393909 () Bool)

(assert (= bs!393909 d!485335))

(declare-fun m!1929827 () Bool)

(assert (=> bs!393909 m!1929827))

(assert (=> b!1611911 d!485335))

(declare-fun d!485337 () Bool)

(declare-fun lt!575539 () BalanceConc!11628)

(assert (=> d!485337 (= (list!6863 lt!575539) (printList!841 thiss!17113 (list!6864 lt!575189)))))

(assert (=> d!485337 (= lt!575539 (printTailRec!779 thiss!17113 lt!575189 0 (BalanceConc!11629 Empty!5842)))))

(assert (=> d!485337 (= (print!1257 thiss!17113 lt!575189) lt!575539)))

(declare-fun bs!393910 () Bool)

(assert (= bs!393910 d!485337))

(declare-fun m!1929829 () Bool)

(assert (=> bs!393910 m!1929829))

(assert (=> bs!393910 m!1929135))

(assert (=> bs!393910 m!1929135))

(declare-fun m!1929831 () Bool)

(assert (=> bs!393910 m!1929831))

(declare-fun m!1929833 () Bool)

(assert (=> bs!393910 m!1929833))

(assert (=> b!1611911 d!485337))

(declare-fun d!485339 () Bool)

(declare-fun fromListB!851 (List!17662) BalanceConc!11630)

(assert (=> d!485339 (= (seqFromList!1944 tokens!457) (fromListB!851 tokens!457))))

(declare-fun bs!393911 () Bool)

(assert (= bs!393911 d!485339))

(declare-fun m!1929835 () Bool)

(assert (=> bs!393911 m!1929835))

(assert (=> b!1611911 d!485339))

(declare-fun d!485341 () Bool)

(declare-fun lt!575540 () BalanceConc!11628)

(assert (=> d!485341 (= (list!6863 lt!575540) (originalCharacters!3911 (h!22993 tokens!457)))))

(assert (=> d!485341 (= lt!575540 (dynLambda!7858 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (value!97937 (h!22993 tokens!457))))))

(assert (=> d!485341 (= (charsOf!1746 (h!22993 tokens!457)) lt!575540)))

(declare-fun b_lambda!50879 () Bool)

(assert (=> (not b_lambda!50879) (not d!485341)))

(assert (=> d!485341 t!148028))

(declare-fun b_and!114305 () Bool)

(assert (= b_and!114301 (and (=> t!148028 result!111702) b_and!114305)))

(assert (=> d!485341 t!148030))

(declare-fun b_and!114307 () Bool)

(assert (= b_and!114303 (and (=> t!148030 result!111704) b_and!114307)))

(declare-fun m!1929837 () Bool)

(assert (=> d!485341 m!1929837))

(assert (=> d!485341 m!1929713))

(assert (=> b!1611911 d!485341))

(declare-fun b!1612232 () Bool)

(declare-fun res!718962 () Bool)

(declare-fun e!1033980 () Bool)

(assert (=> b!1612232 (=> (not res!718962) (not e!1033980))))

(declare-fun lt!575545 () List!17660)

(assert (=> b!1612232 (= res!718962 (= (size!14152 lt!575545) (+ (size!14152 lt!575193) (size!14152 lt!575201))))))

(declare-fun d!485343 () Bool)

(assert (=> d!485343 e!1033980))

(declare-fun res!718961 () Bool)

(assert (=> d!485343 (=> (not res!718961) (not e!1033980))))

(assert (=> d!485343 (= res!718961 (= (content!2443 lt!575545) ((_ map or) (content!2443 lt!575193) (content!2443 lt!575201))))))

(declare-fun e!1033981 () List!17660)

(assert (=> d!485343 (= lt!575545 e!1033981)))

(declare-fun c!262761 () Bool)

(assert (=> d!485343 (= c!262761 ((_ is Nil!17590) lt!575193))))

(assert (=> d!485343 (= (++!4627 lt!575193 lt!575201) lt!575545)))

(declare-fun b!1612230 () Bool)

(assert (=> b!1612230 (= e!1033981 lt!575201)))

(declare-fun b!1612233 () Bool)

(assert (=> b!1612233 (= e!1033980 (or (not (= lt!575201 Nil!17590)) (= lt!575545 lt!575193)))))

(declare-fun b!1612231 () Bool)

(assert (=> b!1612231 (= e!1033981 (Cons!17590 (h!22991 lt!575193) (++!4627 (t!148007 lt!575193) lt!575201)))))

(assert (= (and d!485343 c!262761) b!1612230))

(assert (= (and d!485343 (not c!262761)) b!1612231))

(assert (= (and d!485343 res!718961) b!1612232))

(assert (= (and b!1612232 res!718962) b!1612233))

(declare-fun m!1929839 () Bool)

(assert (=> b!1612232 m!1929839))

(assert (=> b!1612232 m!1929595))

(declare-fun m!1929841 () Bool)

(assert (=> b!1612232 m!1929841))

(declare-fun m!1929843 () Bool)

(assert (=> d!485343 m!1929843))

(assert (=> d!485343 m!1929601))

(declare-fun m!1929845 () Bool)

(assert (=> d!485343 m!1929845))

(declare-fun m!1929847 () Bool)

(assert (=> b!1612231 m!1929847))

(assert (=> b!1611911 d!485343))

(declare-fun d!485345 () Bool)

(assert (=> d!485345 (= (list!6863 lt!575199) (list!6866 (c!262711 lt!575199)))))

(declare-fun bs!393912 () Bool)

(assert (= bs!393912 d!485345))

(declare-fun m!1929849 () Bool)

(assert (=> bs!393912 m!1929849))

(assert (=> b!1611911 d!485345))

(declare-fun d!485347 () Bool)

(assert (=> d!485347 (= (seqFromList!1944 (t!148009 tokens!457)) (fromListB!851 (t!148009 tokens!457)))))

(declare-fun bs!393913 () Bool)

(assert (= bs!393913 d!485347))

(declare-fun m!1929851 () Bool)

(assert (=> bs!393913 m!1929851))

(assert (=> b!1611911 d!485347))

(declare-fun d!485349 () Bool)

(declare-fun lt!575550 () C!9024)

(assert (=> d!485349 (= lt!575550 (head!3302 (list!6863 lt!575199)))))

(declare-fun head!3307 (Conc!5842) C!9024)

(assert (=> d!485349 (= lt!575550 (head!3307 (c!262711 lt!575199)))))

(declare-fun isEmpty!10631 (BalanceConc!11628) Bool)

(assert (=> d!485349 (not (isEmpty!10631 lt!575199))))

(assert (=> d!485349 (= (head!3303 lt!575199) lt!575550)))

(declare-fun bs!393914 () Bool)

(assert (= bs!393914 d!485349))

(assert (=> bs!393914 m!1929181))

(assert (=> bs!393914 m!1929181))

(declare-fun m!1929869 () Bool)

(assert (=> bs!393914 m!1929869))

(declare-fun m!1929871 () Bool)

(assert (=> bs!393914 m!1929871))

(declare-fun m!1929873 () Bool)

(assert (=> bs!393914 m!1929873))

(assert (=> b!1611910 d!485349))

(declare-fun d!485353 () Bool)

(declare-fun lt!575599 () Bool)

(declare-fun e!1034026 () Bool)

(assert (=> d!485353 (= lt!575599 e!1034026)))

(declare-fun res!719011 () Bool)

(assert (=> d!485353 (=> (not res!719011) (not e!1034026))))

(assert (=> d!485353 (= res!719011 (= (list!6864 (_1!9947 (lex!1210 thiss!17113 rules!1846 (print!1257 thiss!17113 (singletonSeq!1473 (h!22993 tokens!457)))))) (list!6864 (singletonSeq!1473 (h!22993 tokens!457)))))))

(declare-fun e!1034025 () Bool)

(assert (=> d!485353 (= lt!575599 e!1034025)))

(declare-fun res!719013 () Bool)

(assert (=> d!485353 (=> (not res!719013) (not e!1034025))))

(declare-fun lt!575600 () tuple2!17090)

(assert (=> d!485353 (= res!719013 (= (size!14154 (_1!9947 lt!575600)) 1))))

(assert (=> d!485353 (= lt!575600 (lex!1210 thiss!17113 rules!1846 (print!1257 thiss!17113 (singletonSeq!1473 (h!22993 tokens!457)))))))

(assert (=> d!485353 (not (isEmpty!10621 rules!1846))))

(assert (=> d!485353 (= (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 tokens!457)) lt!575599)))

(declare-fun b!1612314 () Bool)

(declare-fun res!719012 () Bool)

(assert (=> b!1612314 (=> (not res!719012) (not e!1034025))))

(assert (=> b!1612314 (= res!719012 (= (apply!4402 (_1!9947 lt!575600) 0) (h!22993 tokens!457)))))

(declare-fun b!1612315 () Bool)

(assert (=> b!1612315 (= e!1034025 (isEmpty!10631 (_2!9947 lt!575600)))))

(declare-fun b!1612316 () Bool)

(assert (=> b!1612316 (= e!1034026 (isEmpty!10631 (_2!9947 (lex!1210 thiss!17113 rules!1846 (print!1257 thiss!17113 (singletonSeq!1473 (h!22993 tokens!457)))))))))

(assert (= (and d!485353 res!719013) b!1612314))

(assert (= (and b!1612314 res!719012) b!1612315))

(assert (= (and d!485353 res!719011) b!1612316))

(assert (=> d!485353 m!1929121))

(declare-fun m!1929995 () Bool)

(assert (=> d!485353 m!1929995))

(declare-fun m!1929997 () Bool)

(assert (=> d!485353 m!1929997))

(assert (=> d!485353 m!1929121))

(declare-fun m!1929999 () Bool)

(assert (=> d!485353 m!1929999))

(assert (=> d!485353 m!1929153))

(assert (=> d!485353 m!1929121))

(assert (=> d!485353 m!1929999))

(declare-fun m!1930001 () Bool)

(assert (=> d!485353 m!1930001))

(declare-fun m!1930003 () Bool)

(assert (=> d!485353 m!1930003))

(declare-fun m!1930005 () Bool)

(assert (=> b!1612314 m!1930005))

(declare-fun m!1930007 () Bool)

(assert (=> b!1612315 m!1930007))

(assert (=> b!1612316 m!1929121))

(assert (=> b!1612316 m!1929121))

(assert (=> b!1612316 m!1929999))

(assert (=> b!1612316 m!1929999))

(assert (=> b!1612316 m!1930001))

(declare-fun m!1930009 () Bool)

(assert (=> b!1612316 m!1930009))

(assert (=> b!1611921 d!485353))

(declare-fun d!485381 () Bool)

(assert (=> d!485381 (= (inv!23003 (tag!3373 (rule!4917 (h!22993 tokens!457)))) (= (mod (str.len (value!97936 (tag!3373 (rule!4917 (h!22993 tokens!457))))) 2) 0))))

(assert (=> b!1611904 d!485381))

(declare-fun d!485383 () Bool)

(declare-fun res!719014 () Bool)

(declare-fun e!1034027 () Bool)

(assert (=> d!485383 (=> (not res!719014) (not e!1034027))))

(assert (=> d!485383 (= res!719014 (semiInverseModEq!1178 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (toValue!4520 (transformation!3097 (rule!4917 (h!22993 tokens!457))))))))

(assert (=> d!485383 (= (inv!23006 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) e!1034027)))

(declare-fun b!1612317 () Bool)

(assert (=> b!1612317 (= e!1034027 (equivClasses!1119 (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (toValue!4520 (transformation!3097 (rule!4917 (h!22993 tokens!457))))))))

(assert (= (and d!485383 res!719014) b!1612317))

(declare-fun m!1930011 () Bool)

(assert (=> d!485383 m!1930011))

(declare-fun m!1930013 () Bool)

(assert (=> b!1612317 m!1930013))

(assert (=> b!1611904 d!485383))

(declare-fun d!485385 () Bool)

(declare-fun lt!575603 () Bool)

(declare-fun isEmpty!10632 (List!17662) Bool)

(assert (=> d!485385 (= lt!575603 (isEmpty!10632 (list!6864 (_1!9947 (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193))))))))

(declare-fun isEmpty!10633 (Conc!5843) Bool)

(assert (=> d!485385 (= lt!575603 (isEmpty!10633 (c!262713 (_1!9947 (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193))))))))

(assert (=> d!485385 (= (isEmpty!10620 (_1!9947 (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193)))) lt!575603)))

(declare-fun bs!393920 () Bool)

(assert (= bs!393920 d!485385))

(assert (=> bs!393920 m!1929755))

(assert (=> bs!393920 m!1929755))

(declare-fun m!1930015 () Bool)

(assert (=> bs!393920 m!1930015))

(declare-fun m!1930017 () Bool)

(assert (=> bs!393920 m!1930017))

(assert (=> b!1611915 d!485385))

(declare-fun b!1612318 () Bool)

(declare-fun e!1034028 () Bool)

(declare-fun e!1034029 () Bool)

(assert (=> b!1612318 (= e!1034028 e!1034029)))

(declare-fun res!719016 () Bool)

(declare-fun lt!575604 () tuple2!17090)

(assert (=> b!1612318 (= res!719016 (< (size!14151 (_2!9947 lt!575604)) (size!14151 (seqFromList!1943 lt!575193))))))

(assert (=> b!1612318 (=> (not res!719016) (not e!1034029))))

(declare-fun b!1612319 () Bool)

(declare-fun e!1034030 () Bool)

(assert (=> b!1612319 (= e!1034030 (= (list!6863 (_2!9947 lt!575604)) (_2!9949 (lexList!807 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 lt!575193))))))))

(declare-fun b!1612320 () Bool)

(assert (=> b!1612320 (= e!1034029 (not (isEmpty!10620 (_1!9947 lt!575604))))))

(declare-fun d!485387 () Bool)

(assert (=> d!485387 e!1034030))

(declare-fun res!719015 () Bool)

(assert (=> d!485387 (=> (not res!719015) (not e!1034030))))

(assert (=> d!485387 (= res!719015 e!1034028)))

(declare-fun c!262778 () Bool)

(assert (=> d!485387 (= c!262778 (> (size!14154 (_1!9947 lt!575604)) 0))))

(assert (=> d!485387 (= lt!575604 (lexTailRecV2!530 thiss!17113 rules!1846 (seqFromList!1943 lt!575193) (BalanceConc!11629 Empty!5842) (seqFromList!1943 lt!575193) (BalanceConc!11631 Empty!5843)))))

(assert (=> d!485387 (= (lex!1210 thiss!17113 rules!1846 (seqFromList!1943 lt!575193)) lt!575604)))

(declare-fun b!1612321 () Bool)

(assert (=> b!1612321 (= e!1034028 (= (_2!9947 lt!575604) (seqFromList!1943 lt!575193)))))

(declare-fun b!1612322 () Bool)

(declare-fun res!719017 () Bool)

(assert (=> b!1612322 (=> (not res!719017) (not e!1034030))))

(assert (=> b!1612322 (= res!719017 (= (list!6864 (_1!9947 lt!575604)) (_1!9949 (lexList!807 thiss!17113 rules!1846 (list!6863 (seqFromList!1943 lt!575193))))))))

(assert (= (and d!485387 c!262778) b!1612318))

(assert (= (and d!485387 (not c!262778)) b!1612321))

(assert (= (and b!1612318 res!719016) b!1612320))

(assert (= (and d!485387 res!719015) b!1612322))

(assert (= (and b!1612322 res!719017) b!1612319))

(declare-fun m!1930019 () Bool)

(assert (=> b!1612322 m!1930019))

(assert (=> b!1612322 m!1929107))

(declare-fun m!1930021 () Bool)

(assert (=> b!1612322 m!1930021))

(assert (=> b!1612322 m!1930021))

(declare-fun m!1930023 () Bool)

(assert (=> b!1612322 m!1930023))

(declare-fun m!1930025 () Bool)

(assert (=> d!485387 m!1930025))

(assert (=> d!485387 m!1929107))

(assert (=> d!485387 m!1929107))

(declare-fun m!1930027 () Bool)

(assert (=> d!485387 m!1930027))

(declare-fun m!1930029 () Bool)

(assert (=> b!1612319 m!1930029))

(assert (=> b!1612319 m!1929107))

(assert (=> b!1612319 m!1930021))

(assert (=> b!1612319 m!1930021))

(assert (=> b!1612319 m!1930023))

(declare-fun m!1930031 () Bool)

(assert (=> b!1612320 m!1930031))

(declare-fun m!1930033 () Bool)

(assert (=> b!1612318 m!1930033))

(assert (=> b!1612318 m!1929107))

(declare-fun m!1930035 () Bool)

(assert (=> b!1612318 m!1930035))

(assert (=> b!1611915 d!485387))

(declare-fun d!485389 () Bool)

(assert (=> d!485389 (= (seqFromList!1943 lt!575193) (fromListB!848 lt!575193))))

(declare-fun bs!393921 () Bool)

(assert (= bs!393921 d!485389))

(declare-fun m!1930037 () Bool)

(assert (=> bs!393921 m!1930037))

(assert (=> b!1611915 d!485389))

(declare-fun d!485391 () Bool)

(declare-fun e!1034033 () Bool)

(assert (=> d!485391 e!1034033))

(declare-fun res!719020 () Bool)

(assert (=> d!485391 (=> (not res!719020) (not e!1034033))))

(declare-fun prepend!603 (Conc!5843 Token!5760) Conc!5843)

(assert (=> d!485391 (= res!719020 (isBalanced!1746 (prepend!603 (c!262713 (seqFromList!1944 (t!148009 (t!148009 tokens!457)))) (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575607 () BalanceConc!11630)

(assert (=> d!485391 (= lt!575607 (BalanceConc!11631 (prepend!603 (c!262713 (seqFromList!1944 (t!148009 (t!148009 tokens!457)))) (h!22993 (t!148009 tokens!457)))))))

(assert (=> d!485391 (= (prepend!601 (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (h!22993 (t!148009 tokens!457))) lt!575607)))

(declare-fun b!1612325 () Bool)

(assert (=> b!1612325 (= e!1034033 (= (list!6864 lt!575607) (Cons!17592 (h!22993 (t!148009 tokens!457)) (list!6864 (seqFromList!1944 (t!148009 (t!148009 tokens!457)))))))))

(assert (= (and d!485391 res!719020) b!1612325))

(declare-fun m!1930039 () Bool)

(assert (=> d!485391 m!1930039))

(assert (=> d!485391 m!1930039))

(declare-fun m!1930041 () Bool)

(assert (=> d!485391 m!1930041))

(declare-fun m!1930043 () Bool)

(assert (=> b!1612325 m!1930043))

(assert (=> b!1612325 m!1929139))

(declare-fun m!1930045 () Bool)

(assert (=> b!1612325 m!1930045))

(assert (=> b!1611914 d!485391))

(declare-fun d!485393 () Bool)

(assert (=> d!485393 (= (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (fromListB!851 (t!148009 (t!148009 tokens!457))))))

(declare-fun bs!393922 () Bool)

(assert (= bs!393922 d!485393))

(declare-fun m!1930047 () Bool)

(assert (=> bs!393922 m!1930047))

(assert (=> b!1611914 d!485393))

(declare-fun d!485395 () Bool)

(assert (=> d!485395 (= (list!6864 (_1!9947 lt!575195)) (list!6864 (prepend!601 (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575610 () Unit!28247)

(declare-fun choose!9704 (Token!5760 List!17662 BalanceConc!11630) Unit!28247)

(assert (=> d!485395 (= lt!575610 (choose!9704 (h!22993 (t!148009 tokens!457)) (t!148009 (t!148009 tokens!457)) (_1!9947 lt!575195)))))

(declare-fun $colon$colon!305 (List!17662 Token!5760) List!17662)

(assert (=> d!485395 (= (list!6864 (_1!9947 lt!575195)) (list!6864 (seqFromList!1944 ($colon$colon!305 (t!148009 (t!148009 tokens!457)) (h!22993 (t!148009 tokens!457))))))))

(assert (=> d!485395 (= (seqFromListBHdTlConstructive!174 (h!22993 (t!148009 tokens!457)) (t!148009 (t!148009 tokens!457)) (_1!9947 lt!575195)) lt!575610)))

(declare-fun bs!393923 () Bool)

(assert (= bs!393923 d!485395))

(declare-fun m!1930049 () Bool)

(assert (=> bs!393923 m!1930049))

(declare-fun m!1930051 () Bool)

(assert (=> bs!393923 m!1930051))

(assert (=> bs!393923 m!1930051))

(declare-fun m!1930053 () Bool)

(assert (=> bs!393923 m!1930053))

(assert (=> bs!393923 m!1929125))

(assert (=> bs!393923 m!1929139))

(assert (=> bs!393923 m!1929141))

(assert (=> bs!393923 m!1929141))

(assert (=> bs!393923 m!1929143))

(assert (=> bs!393923 m!1929139))

(assert (=> bs!393923 m!1930053))

(declare-fun m!1930055 () Bool)

(assert (=> bs!393923 m!1930055))

(assert (=> b!1611914 d!485395))

(declare-fun d!485397 () Bool)

(declare-fun list!6868 (Conc!5843) List!17662)

(assert (=> d!485397 (= (list!6864 lt!575189) (list!6868 (c!262713 lt!575189)))))

(declare-fun bs!393924 () Bool)

(assert (= bs!393924 d!485397))

(declare-fun m!1930057 () Bool)

(assert (=> bs!393924 m!1930057))

(assert (=> b!1611914 d!485397))

(declare-fun d!485399 () Bool)

(assert (=> d!485399 (= (list!6864 (prepend!601 (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (h!22993 (t!148009 tokens!457)))) (list!6868 (c!262713 (prepend!601 (seqFromList!1944 (t!148009 (t!148009 tokens!457))) (h!22993 (t!148009 tokens!457))))))))

(declare-fun bs!393925 () Bool)

(assert (= bs!393925 d!485399))

(declare-fun m!1930059 () Bool)

(assert (=> bs!393925 m!1930059))

(assert (=> b!1611914 d!485399))

(declare-fun d!485401 () Bool)

(assert (=> d!485401 (= (separableTokensPredicate!668 thiss!17113 (h!22993 tokens!457) (h!22993 (t!148009 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!463 (rulesRegex!487 thiss!17113 rules!1846) (++!4628 (charsOf!1746 (h!22993 tokens!457)) (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 tokens!457))) 0))))))))

(declare-fun bs!393926 () Bool)

(assert (= bs!393926 d!485401))

(assert (=> bs!393926 m!1929097))

(assert (=> bs!393926 m!1929169))

(assert (=> bs!393926 m!1929091))

(declare-fun m!1930061 () Bool)

(assert (=> bs!393926 m!1930061))

(assert (=> bs!393926 m!1929099))

(assert (=> bs!393926 m!1929099))

(assert (=> bs!393926 m!1929089))

(assert (=> bs!393926 m!1929089))

(assert (=> bs!393926 m!1929091))

(assert (=> bs!393926 m!1929169))

(assert (=> bs!393926 m!1929097))

(assert (=> bs!393926 m!1930061))

(declare-fun m!1930063 () Bool)

(assert (=> bs!393926 m!1930063))

(assert (=> b!1611925 d!485401))

(declare-fun d!485403 () Bool)

(assert (=> d!485403 (= (list!6864 (_1!9947 lt!575195)) (list!6868 (c!262713 (_1!9947 lt!575195))))))

(declare-fun bs!393927 () Bool)

(assert (= bs!393927 d!485403))

(declare-fun m!1930065 () Bool)

(assert (=> bs!393927 m!1930065))

(assert (=> b!1611924 d!485403))

(declare-fun d!485405 () Bool)

(declare-fun e!1034053 () Bool)

(assert (=> d!485405 e!1034053))

(declare-fun res!719038 () Bool)

(assert (=> d!485405 (=> (not res!719038) (not e!1034053))))

(assert (=> d!485405 (= res!719038 (= (list!6864 (_1!9947 (lex!1210 thiss!17113 rules!1846 (print!1257 thiss!17113 (seqFromList!1944 (t!148009 tokens!457)))))) (t!148009 tokens!457)))))

(declare-fun lt!575765 () Unit!28247)

(declare-fun e!1034054 () Unit!28247)

(assert (=> d!485405 (= lt!575765 e!1034054)))

(declare-fun c!262785 () Bool)

(assert (=> d!485405 (= c!262785 (or ((_ is Nil!17592) (t!148009 tokens!457)) ((_ is Nil!17592) (t!148009 (t!148009 tokens!457)))))))

(assert (=> d!485405 (not (isEmpty!10621 rules!1846))))

(assert (=> d!485405 (= (theoremInvertabilityWhenTokenListSeparable!171 thiss!17113 rules!1846 (t!148009 tokens!457)) lt!575765)))

(declare-fun b!1612353 () Bool)

(declare-fun Unit!28270 () Unit!28247)

(assert (=> b!1612353 (= e!1034054 Unit!28270)))

(declare-fun b!1612354 () Bool)

(declare-fun Unit!28271 () Unit!28247)

(assert (=> b!1612354 (= e!1034054 Unit!28271)))

(declare-fun lt!575758 () BalanceConc!11628)

(assert (=> b!1612354 (= lt!575758 (print!1257 thiss!17113 (seqFromList!1944 (t!148009 tokens!457))))))

(declare-fun lt!575760 () BalanceConc!11628)

(assert (=> b!1612354 (= lt!575760 (print!1257 thiss!17113 (seqFromList!1944 (t!148009 (t!148009 tokens!457)))))))

(declare-fun lt!575762 () tuple2!17090)

(assert (=> b!1612354 (= lt!575762 (lex!1210 thiss!17113 rules!1846 lt!575760))))

(declare-fun lt!575763 () List!17660)

(assert (=> b!1612354 (= lt!575763 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575749 () List!17660)

(assert (=> b!1612354 (= lt!575749 (list!6863 lt!575760))))

(declare-fun lt!575766 () Unit!28247)

(assert (=> b!1612354 (= lt!575766 (lemmaConcatTwoListThenFirstIsPrefix!882 lt!575763 lt!575749))))

(assert (=> b!1612354 (isPrefix!1357 lt!575763 (++!4627 lt!575763 lt!575749))))

(declare-fun lt!575768 () Unit!28247)

(assert (=> b!1612354 (= lt!575768 lt!575766)))

(declare-fun lt!575772 () Unit!28247)

(assert (=> b!1612354 (= lt!575772 (theoremInvertabilityWhenTokenListSeparable!171 thiss!17113 rules!1846 (t!148009 (t!148009 tokens!457))))))

(declare-fun lt!575771 () Unit!28247)

(assert (=> b!1612354 (= lt!575771 (seqFromListBHdTlConstructive!174 (h!22993 (t!148009 (t!148009 tokens!457))) (t!148009 (t!148009 (t!148009 tokens!457))) (_1!9947 lt!575762)))))

(assert (=> b!1612354 (= (list!6864 (_1!9947 lt!575762)) (list!6864 (prepend!601 (seqFromList!1944 (t!148009 (t!148009 (t!148009 tokens!457)))) (h!22993 (t!148009 (t!148009 tokens!457))))))))

(declare-fun lt!575761 () Unit!28247)

(assert (=> b!1612354 (= lt!575761 lt!575771)))

(declare-fun lt!575751 () Option!3195)

(assert (=> b!1612354 (= lt!575751 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 lt!575758)))))

(assert (=> b!1612354 (= (print!1257 thiss!17113 (singletonSeq!1473 (h!22993 (t!148009 tokens!457)))) (printTailRec!779 thiss!17113 (singletonSeq!1473 (h!22993 (t!148009 tokens!457))) 0 (BalanceConc!11629 Empty!5842)))))

(declare-fun lt!575769 () Unit!28247)

(declare-fun Unit!28272 () Unit!28247)

(assert (=> b!1612354 (= lt!575769 Unit!28272)))

(declare-fun lt!575770 () Unit!28247)

(assert (=> b!1612354 (= lt!575770 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!300 thiss!17113 rules!1846 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457)))) (list!6863 lt!575760)))))

(assert (=> b!1612354 (= (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457)))) (originalCharacters!3911 (h!22993 (t!148009 tokens!457))))))

(declare-fun lt!575754 () Unit!28247)

(declare-fun Unit!28273 () Unit!28247)

(assert (=> b!1612354 (= lt!575754 Unit!28273)))

(assert (=> b!1612354 (= (list!6863 (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 (t!148009 tokens!457)))) 0))) (Cons!17590 (head!3302 (originalCharacters!3911 (h!22993 (t!148009 (t!148009 tokens!457))))) Nil!17590))))

(declare-fun lt!575767 () Unit!28247)

(declare-fun Unit!28274 () Unit!28247)

(assert (=> b!1612354 (= lt!575767 Unit!28274)))

(assert (=> b!1612354 (= (list!6863 (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 (t!148009 tokens!457)))) 0))) (Cons!17590 (head!3302 (list!6863 lt!575760)) Nil!17590))))

(declare-fun lt!575755 () Unit!28247)

(declare-fun Unit!28275 () Unit!28247)

(assert (=> b!1612354 (= lt!575755 Unit!28275)))

(assert (=> b!1612354 (= (list!6863 (singletonSeq!1472 (apply!4396 (charsOf!1746 (h!22993 (t!148009 (t!148009 tokens!457)))) 0))) (Cons!17590 (head!3303 lt!575760) Nil!17590))))

(declare-fun lt!575747 () Unit!28247)

(declare-fun Unit!28276 () Unit!28247)

(assert (=> b!1612354 (= lt!575747 Unit!28276)))

(assert (=> b!1612354 (isDefined!2562 (maxPrefix!1290 thiss!17113 rules!1846 (originalCharacters!3911 (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575764 () Unit!28247)

(declare-fun Unit!28277 () Unit!28247)

(assert (=> b!1612354 (= lt!575764 Unit!28277)))

(assert (=> b!1612354 (isDefined!2562 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457))))))))

(declare-fun lt!575756 () Unit!28247)

(declare-fun Unit!28278 () Unit!28247)

(assert (=> b!1612354 (= lt!575756 Unit!28278)))

(declare-fun lt!575753 () Unit!28247)

(declare-fun Unit!28279 () Unit!28247)

(assert (=> b!1612354 (= lt!575753 Unit!28279)))

(assert (=> b!1612354 (= (_1!9945 (get!5042 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457))))))) (h!22993 (t!148009 tokens!457)))))

(declare-fun lt!575748 () Unit!28247)

(declare-fun Unit!28280 () Unit!28247)

(assert (=> b!1612354 (= lt!575748 Unit!28280)))

(assert (=> b!1612354 (isEmpty!10627 (_2!9945 (get!5042 (maxPrefix!1290 thiss!17113 rules!1846 (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457))))))))))

(declare-fun lt!575757 () Unit!28247)

(declare-fun Unit!28281 () Unit!28247)

(assert (=> b!1612354 (= lt!575757 Unit!28281)))

(assert (=> b!1612354 (matchR!1938 (regex!3097 (rule!4917 (h!22993 (t!148009 tokens!457)))) (list!6863 (charsOf!1746 (h!22993 (t!148009 tokens!457)))))))

(declare-fun lt!575750 () Unit!28247)

(declare-fun Unit!28282 () Unit!28247)

(assert (=> b!1612354 (= lt!575750 Unit!28282)))

(assert (=> b!1612354 (= (rule!4917 (h!22993 (t!148009 tokens!457))) (rule!4917 (h!22993 (t!148009 tokens!457))))))

(declare-fun lt!575759 () Unit!28247)

(declare-fun Unit!28283 () Unit!28247)

(assert (=> b!1612354 (= lt!575759 Unit!28283)))

(declare-fun lt!575752 () Unit!28247)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!88 (LexerInterface!2726 List!17661 Token!5760 Rule!5994 List!17660) Unit!28247)

(assert (=> b!1612354 (= lt!575752 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!88 thiss!17113 rules!1846 (h!22993 (t!148009 tokens!457)) (rule!4917 (h!22993 (t!148009 tokens!457))) (list!6863 lt!575760)))))

(declare-fun b!1612355 () Bool)

(assert (=> b!1612355 (= e!1034053 (isEmpty!10631 (_2!9947 (lex!1210 thiss!17113 rules!1846 (print!1257 thiss!17113 (seqFromList!1944 (t!148009 tokens!457)))))))))

(assert (= (and d!485405 c!262785) b!1612353))

(assert (= (and d!485405 (not c!262785)) b!1612354))

(assert (= (and d!485405 res!719038) b!1612355))

(assert (=> d!485405 m!1929171))

(declare-fun m!1930157 () Bool)

(assert (=> d!485405 m!1930157))

(assert (=> d!485405 m!1929171))

(declare-fun m!1930159 () Bool)

(assert (=> d!485405 m!1930159))

(assert (=> d!485405 m!1930159))

(declare-fun m!1930161 () Bool)

(assert (=> d!485405 m!1930161))

(assert (=> d!485405 m!1929153))

(declare-fun m!1930163 () Bool)

(assert (=> b!1612354 m!1930163))

(declare-fun m!1930165 () Bool)

(assert (=> b!1612354 m!1930165))

(declare-fun m!1930167 () Bool)

(assert (=> b!1612354 m!1930167))

(declare-fun m!1930169 () Bool)

(assert (=> b!1612354 m!1930169))

(assert (=> b!1612354 m!1929551))

(declare-fun m!1930171 () Bool)

(assert (=> b!1612354 m!1930171))

(declare-fun m!1930173 () Bool)

(assert (=> b!1612354 m!1930173))

(declare-fun m!1930175 () Bool)

(assert (=> b!1612354 m!1930175))

(declare-fun m!1930177 () Bool)

(assert (=> b!1612354 m!1930177))

(declare-fun m!1930179 () Bool)

(assert (=> b!1612354 m!1930179))

(assert (=> b!1612354 m!1929139))

(declare-fun m!1930181 () Bool)

(assert (=> b!1612354 m!1930181))

(declare-fun m!1930183 () Bool)

(assert (=> b!1612354 m!1930183))

(declare-fun m!1930185 () Bool)

(assert (=> b!1612354 m!1930185))

(assert (=> b!1612354 m!1930171))

(declare-fun m!1930187 () Bool)

(assert (=> b!1612354 m!1930187))

(assert (=> b!1612354 m!1930171))

(declare-fun m!1930189 () Bool)

(assert (=> b!1612354 m!1930189))

(declare-fun m!1930191 () Bool)

(assert (=> b!1612354 m!1930191))

(declare-fun m!1930193 () Bool)

(assert (=> b!1612354 m!1930193))

(declare-fun m!1930195 () Bool)

(assert (=> b!1612354 m!1930195))

(assert (=> b!1612354 m!1929171))

(declare-fun m!1930197 () Bool)

(assert (=> b!1612354 m!1930197))

(declare-fun m!1930199 () Bool)

(assert (=> b!1612354 m!1930199))

(assert (=> b!1612354 m!1929551))

(assert (=> b!1612354 m!1930165))

(assert (=> b!1612354 m!1930169))

(declare-fun m!1930201 () Bool)

(assert (=> b!1612354 m!1930201))

(assert (=> b!1612354 m!1929139))

(declare-fun m!1930203 () Bool)

(assert (=> b!1612354 m!1930203))

(assert (=> b!1612354 m!1929171))

(assert (=> b!1612354 m!1930159))

(assert (=> b!1612354 m!1930181))

(declare-fun m!1930205 () Bool)

(assert (=> b!1612354 m!1930205))

(assert (=> b!1612354 m!1929099))

(assert (=> b!1612354 m!1929551))

(assert (=> b!1612354 m!1929099))

(declare-fun m!1930207 () Bool)

(assert (=> b!1612354 m!1930207))

(declare-fun m!1930209 () Bool)

(assert (=> b!1612354 m!1930209))

(assert (=> b!1612354 m!1930193))

(declare-fun m!1930211 () Bool)

(assert (=> b!1612354 m!1930211))

(declare-fun m!1930213 () Bool)

(assert (=> b!1612354 m!1930213))

(assert (=> b!1612354 m!1930175))

(declare-fun m!1930215 () Bool)

(assert (=> b!1612354 m!1930215))

(assert (=> b!1612354 m!1930171))

(assert (=> b!1612354 m!1930185))

(assert (=> b!1612354 m!1930207))

(assert (=> b!1612354 m!1930165))

(declare-fun m!1930217 () Bool)

(assert (=> b!1612354 m!1930217))

(assert (=> b!1612354 m!1930211))

(declare-fun m!1930219 () Bool)

(assert (=> b!1612354 m!1930219))

(declare-fun m!1930221 () Bool)

(assert (=> b!1612354 m!1930221))

(assert (=> b!1612354 m!1930211))

(declare-fun m!1930223 () Bool)

(assert (=> b!1612354 m!1930223))

(assert (=> b!1612354 m!1930183))

(assert (=> b!1612354 m!1930177))

(declare-fun m!1930225 () Bool)

(assert (=> b!1612354 m!1930225))

(assert (=> b!1612354 m!1929551))

(declare-fun m!1930227 () Bool)

(assert (=> b!1612354 m!1930227))

(assert (=> b!1612355 m!1929171))

(assert (=> b!1612355 m!1929171))

(assert (=> b!1612355 m!1930159))

(assert (=> b!1612355 m!1930159))

(assert (=> b!1612355 m!1930161))

(declare-fun m!1930229 () Bool)

(assert (=> b!1612355 m!1930229))

(assert (=> b!1611924 d!485405))

(declare-fun d!485413 () Bool)

(declare-fun e!1034061 () Bool)

(assert (=> d!485413 e!1034061))

(declare-fun res!719047 () Bool)

(assert (=> d!485413 (=> res!719047 e!1034061)))

(declare-fun lt!575775 () Bool)

(assert (=> d!485413 (= res!719047 (not lt!575775))))

(declare-fun e!1034062 () Bool)

(assert (=> d!485413 (= lt!575775 e!1034062)))

(declare-fun res!719049 () Bool)

(assert (=> d!485413 (=> res!719049 e!1034062)))

(assert (=> d!485413 (= res!719049 ((_ is Nil!17590) lt!575193))))

(assert (=> d!485413 (= (isPrefix!1357 lt!575193 lt!575197) lt!575775)))

(declare-fun b!1612367 () Bool)

(assert (=> b!1612367 (= e!1034061 (>= (size!14152 lt!575197) (size!14152 lt!575193)))))

(declare-fun b!1612364 () Bool)

(declare-fun e!1034063 () Bool)

(assert (=> b!1612364 (= e!1034062 e!1034063)))

(declare-fun res!719050 () Bool)

(assert (=> b!1612364 (=> (not res!719050) (not e!1034063))))

(assert (=> b!1612364 (= res!719050 (not ((_ is Nil!17590) lt!575197)))))

(declare-fun b!1612366 () Bool)

(assert (=> b!1612366 (= e!1034063 (isPrefix!1357 (tail!2316 lt!575193) (tail!2316 lt!575197)))))

(declare-fun b!1612365 () Bool)

(declare-fun res!719048 () Bool)

(assert (=> b!1612365 (=> (not res!719048) (not e!1034063))))

(assert (=> b!1612365 (= res!719048 (= (head!3302 lt!575193) (head!3302 lt!575197)))))

(assert (= (and d!485413 (not res!719049)) b!1612364))

(assert (= (and b!1612364 res!719050) b!1612365))

(assert (= (and b!1612365 res!719048) b!1612366))

(assert (= (and d!485413 (not res!719047)) b!1612367))

(declare-fun m!1930231 () Bool)

(assert (=> b!1612367 m!1930231))

(assert (=> b!1612367 m!1929595))

(declare-fun m!1930233 () Bool)

(assert (=> b!1612366 m!1930233))

(declare-fun m!1930235 () Bool)

(assert (=> b!1612366 m!1930235))

(assert (=> b!1612366 m!1930233))

(assert (=> b!1612366 m!1930235))

(declare-fun m!1930237 () Bool)

(assert (=> b!1612366 m!1930237))

(declare-fun m!1930239 () Bool)

(assert (=> b!1612365 m!1930239))

(declare-fun m!1930241 () Bool)

(assert (=> b!1612365 m!1930241))

(assert (=> b!1611924 d!485413))

(declare-fun d!485415 () Bool)

(assert (=> d!485415 (isPrefix!1357 lt!575193 (++!4627 lt!575193 lt!575201))))

(declare-fun lt!575778 () Unit!28247)

(declare-fun choose!9706 (List!17660 List!17660) Unit!28247)

(assert (=> d!485415 (= lt!575778 (choose!9706 lt!575193 lt!575201))))

(assert (=> d!485415 (= (lemmaConcatTwoListThenFirstIsPrefix!882 lt!575193 lt!575201) lt!575778)))

(declare-fun bs!393929 () Bool)

(assert (= bs!393929 d!485415))

(assert (=> bs!393929 m!1929179))

(assert (=> bs!393929 m!1929179))

(declare-fun m!1930243 () Bool)

(assert (=> bs!393929 m!1930243))

(declare-fun m!1930245 () Bool)

(assert (=> bs!393929 m!1930245))

(assert (=> b!1611924 d!485415))

(declare-fun d!485417 () Bool)

(declare-fun res!719062 () Bool)

(declare-fun e!1034121 () Bool)

(assert (=> d!485417 (=> res!719062 e!1034121)))

(assert (=> d!485417 (= res!719062 (or (not ((_ is Cons!17592) tokens!457)) (not ((_ is Cons!17592) (t!148009 tokens!457)))))))

(assert (=> d!485417 (= (tokensListTwoByTwoPredicateSeparableList!419 thiss!17113 tokens!457 rules!1846) e!1034121)))

(declare-fun b!1612440 () Bool)

(declare-fun e!1034122 () Bool)

(assert (=> b!1612440 (= e!1034121 e!1034122)))

(declare-fun res!719063 () Bool)

(assert (=> b!1612440 (=> (not res!719063) (not e!1034122))))

(assert (=> b!1612440 (= res!719063 (separableTokensPredicate!668 thiss!17113 (h!22993 tokens!457) (h!22993 (t!148009 tokens!457)) rules!1846))))

(declare-fun lt!575797 () Unit!28247)

(declare-fun Unit!28284 () Unit!28247)

(assert (=> b!1612440 (= lt!575797 Unit!28284)))

(assert (=> b!1612440 (> (size!14151 (charsOf!1746 (h!22993 (t!148009 tokens!457)))) 0)))

(declare-fun lt!575802 () Unit!28247)

(declare-fun Unit!28285 () Unit!28247)

(assert (=> b!1612440 (= lt!575802 Unit!28285)))

(assert (=> b!1612440 (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 (t!148009 tokens!457)))))

(declare-fun lt!575800 () Unit!28247)

(declare-fun Unit!28286 () Unit!28247)

(assert (=> b!1612440 (= lt!575800 Unit!28286)))

(assert (=> b!1612440 (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 tokens!457))))

(declare-fun lt!575801 () Unit!28247)

(declare-fun lt!575796 () Unit!28247)

(assert (=> b!1612440 (= lt!575801 lt!575796)))

(assert (=> b!1612440 (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 (t!148009 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!543 (LexerInterface!2726 List!17661 List!17662 Token!5760) Unit!28247)

(assert (=> b!1612440 (= lt!575796 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!543 thiss!17113 rules!1846 tokens!457 (h!22993 (t!148009 tokens!457))))))

(declare-fun lt!575799 () Unit!28247)

(declare-fun lt!575798 () Unit!28247)

(assert (=> b!1612440 (= lt!575799 lt!575798)))

(assert (=> b!1612440 (rulesProduceIndividualToken!1378 thiss!17113 rules!1846 (h!22993 tokens!457))))

(assert (=> b!1612440 (= lt!575798 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!543 thiss!17113 rules!1846 tokens!457 (h!22993 tokens!457)))))

(declare-fun b!1612441 () Bool)

(assert (=> b!1612441 (= e!1034122 (tokensListTwoByTwoPredicateSeparableList!419 thiss!17113 (Cons!17592 (h!22993 (t!148009 tokens!457)) (t!148009 (t!148009 tokens!457))) rules!1846))))

(assert (= (and d!485417 (not res!719062)) b!1612440))

(assert (= (and b!1612440 res!719063) b!1612441))

(assert (=> b!1612440 m!1929159))

(assert (=> b!1612440 m!1929099))

(assert (=> b!1612440 m!1929557))

(assert (=> b!1612440 m!1929099))

(declare-fun m!1930267 () Bool)

(assert (=> b!1612440 m!1930267))

(declare-fun m!1930269 () Bool)

(assert (=> b!1612440 m!1930269))

(declare-fun m!1930271 () Bool)

(assert (=> b!1612440 m!1930271))

(assert (=> b!1612440 m!1929167))

(declare-fun m!1930273 () Bool)

(assert (=> b!1612441 m!1930273))

(assert (=> b!1611903 d!485417))

(declare-fun d!485423 () Bool)

(assert (=> d!485423 (= (head!3302 (originalCharacters!3911 (h!22993 (t!148009 tokens!457)))) (h!22991 (originalCharacters!3911 (h!22993 (t!148009 tokens!457)))))))

(assert (=> b!1611902 d!485423))

(declare-fun d!485425 () Bool)

(declare-fun c!262791 () Bool)

(assert (=> d!485425 (= c!262791 ((_ is IntegerValue!9561) (value!97937 (h!22993 tokens!457))))))

(declare-fun e!1034130 () Bool)

(assert (=> d!485425 (= (inv!21 (value!97937 (h!22993 tokens!457))) e!1034130)))

(declare-fun b!1612452 () Bool)

(declare-fun res!719066 () Bool)

(declare-fun e!1034129 () Bool)

(assert (=> b!1612452 (=> res!719066 e!1034129)))

(assert (=> b!1612452 (= res!719066 (not ((_ is IntegerValue!9563) (value!97937 (h!22993 tokens!457)))))))

(declare-fun e!1034131 () Bool)

(assert (=> b!1612452 (= e!1034131 e!1034129)))

(declare-fun b!1612453 () Bool)

(declare-fun inv!16 (TokenValue!3187) Bool)

(assert (=> b!1612453 (= e!1034130 (inv!16 (value!97937 (h!22993 tokens!457))))))

(declare-fun b!1612454 () Bool)

(declare-fun inv!17 (TokenValue!3187) Bool)

(assert (=> b!1612454 (= e!1034131 (inv!17 (value!97937 (h!22993 tokens!457))))))

(declare-fun b!1612455 () Bool)

(declare-fun inv!15 (TokenValue!3187) Bool)

(assert (=> b!1612455 (= e!1034129 (inv!15 (value!97937 (h!22993 tokens!457))))))

(declare-fun b!1612456 () Bool)

(assert (=> b!1612456 (= e!1034130 e!1034131)))

(declare-fun c!262790 () Bool)

(assert (=> b!1612456 (= c!262790 ((_ is IntegerValue!9562) (value!97937 (h!22993 tokens!457))))))

(assert (= (and d!485425 c!262791) b!1612453))

(assert (= (and d!485425 (not c!262791)) b!1612456))

(assert (= (and b!1612456 c!262790) b!1612454))

(assert (= (and b!1612456 (not c!262790)) b!1612452))

(assert (= (and b!1612452 (not res!719066)) b!1612455))

(declare-fun m!1930275 () Bool)

(assert (=> b!1612453 m!1930275))

(declare-fun m!1930277 () Bool)

(assert (=> b!1612454 m!1930277))

(declare-fun m!1930279 () Bool)

(assert (=> b!1612455 m!1930279))

(assert (=> b!1611913 d!485425))

(declare-fun b!1612470 () Bool)

(declare-fun b_free!43335 () Bool)

(declare-fun b_next!44039 () Bool)

(assert (=> b!1612470 (= b_free!43335 (not b_next!44039))))

(declare-fun tp!470222 () Bool)

(declare-fun b_and!114317 () Bool)

(assert (=> b!1612470 (= tp!470222 b_and!114317)))

(declare-fun b_free!43337 () Bool)

(declare-fun b_next!44041 () Bool)

(assert (=> b!1612470 (= b_free!43337 (not b_next!44041))))

(declare-fun t!148045 () Bool)

(declare-fun tb!92719 () Bool)

(assert (=> (and b!1612470 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457)))))) t!148045) tb!92719))

(declare-fun result!111724 () Bool)

(assert (= result!111724 result!111696))

(assert (=> d!485273 t!148045))

(declare-fun t!148047 () Bool)

(declare-fun tb!92721 () Bool)

(assert (=> (and b!1612470 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457))))) t!148047) tb!92721))

(declare-fun result!111726 () Bool)

(assert (= result!111726 result!111702))

(assert (=> b!1612190 t!148047))

(assert (=> d!485341 t!148047))

(declare-fun b_and!114319 () Bool)

(declare-fun tp!470225 () Bool)

(assert (=> b!1612470 (= tp!470225 (and (=> t!148045 result!111724) (=> t!148047 result!111726) b_and!114319))))

(declare-fun e!1034149 () Bool)

(declare-fun tp!470223 () Bool)

(declare-fun b!1612469 () Bool)

(declare-fun e!1034148 () Bool)

(assert (=> b!1612469 (= e!1034149 (and tp!470223 (inv!23003 (tag!3373 (rule!4917 (h!22993 (t!148009 tokens!457))))) (inv!23006 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) e!1034148))))

(declare-fun e!1034145 () Bool)

(declare-fun b!1612467 () Bool)

(declare-fun e!1034147 () Bool)

(declare-fun tp!470224 () Bool)

(assert (=> b!1612467 (= e!1034147 (and (inv!23007 (h!22993 (t!148009 tokens!457))) e!1034145 tp!470224))))

(declare-fun tp!470221 () Bool)

(declare-fun b!1612468 () Bool)

(assert (=> b!1612468 (= e!1034145 (and (inv!21 (value!97937 (h!22993 (t!148009 tokens!457)))) e!1034149 tp!470221))))

(assert (=> b!1612470 (= e!1034148 (and tp!470222 tp!470225))))

(assert (=> b!1611923 (= tp!470149 e!1034147)))

(assert (= b!1612469 b!1612470))

(assert (= b!1612468 b!1612469))

(assert (= b!1612467 b!1612468))

(assert (= (and b!1611923 ((_ is Cons!17592) (t!148009 tokens!457))) b!1612467))

(declare-fun m!1930281 () Bool)

(assert (=> b!1612469 m!1930281))

(declare-fun m!1930283 () Bool)

(assert (=> b!1612469 m!1930283))

(declare-fun m!1930285 () Bool)

(assert (=> b!1612467 m!1930285))

(declare-fun m!1930287 () Bool)

(assert (=> b!1612468 m!1930287))

(declare-fun b!1612482 () Bool)

(declare-fun e!1034152 () Bool)

(declare-fun tp!470237 () Bool)

(declare-fun tp!470240 () Bool)

(assert (=> b!1612482 (= e!1034152 (and tp!470237 tp!470240))))

(declare-fun b!1612481 () Bool)

(declare-fun tp_is_empty!7237 () Bool)

(assert (=> b!1612481 (= e!1034152 tp_is_empty!7237)))

(assert (=> b!1611916 (= tp!470145 e!1034152)))

(declare-fun b!1612484 () Bool)

(declare-fun tp!470236 () Bool)

(declare-fun tp!470239 () Bool)

(assert (=> b!1612484 (= e!1034152 (and tp!470236 tp!470239))))

(declare-fun b!1612483 () Bool)

(declare-fun tp!470238 () Bool)

(assert (=> b!1612483 (= e!1034152 tp!470238)))

(assert (= (and b!1611916 ((_ is ElementMatch!4425) (regex!3097 (h!22992 rules!1846)))) b!1612481))

(assert (= (and b!1611916 ((_ is Concat!7613) (regex!3097 (h!22992 rules!1846)))) b!1612482))

(assert (= (and b!1611916 ((_ is Star!4425) (regex!3097 (h!22992 rules!1846)))) b!1612483))

(assert (= (and b!1611916 ((_ is Union!4425) (regex!3097 (h!22992 rules!1846)))) b!1612484))

(declare-fun b!1612486 () Bool)

(declare-fun e!1034153 () Bool)

(declare-fun tp!470242 () Bool)

(declare-fun tp!470245 () Bool)

(assert (=> b!1612486 (= e!1034153 (and tp!470242 tp!470245))))

(declare-fun b!1612485 () Bool)

(assert (=> b!1612485 (= e!1034153 tp_is_empty!7237)))

(assert (=> b!1611904 (= tp!470150 e!1034153)))

(declare-fun b!1612488 () Bool)

(declare-fun tp!470241 () Bool)

(declare-fun tp!470244 () Bool)

(assert (=> b!1612488 (= e!1034153 (and tp!470241 tp!470244))))

(declare-fun b!1612487 () Bool)

(declare-fun tp!470243 () Bool)

(assert (=> b!1612487 (= e!1034153 tp!470243)))

(assert (= (and b!1611904 ((_ is ElementMatch!4425) (regex!3097 (rule!4917 (h!22993 tokens!457))))) b!1612485))

(assert (= (and b!1611904 ((_ is Concat!7613) (regex!3097 (rule!4917 (h!22993 tokens!457))))) b!1612486))

(assert (= (and b!1611904 ((_ is Star!4425) (regex!3097 (rule!4917 (h!22993 tokens!457))))) b!1612487))

(assert (= (and b!1611904 ((_ is Union!4425) (regex!3097 (rule!4917 (h!22993 tokens!457))))) b!1612488))

(declare-fun b!1612499 () Bool)

(declare-fun b_free!43339 () Bool)

(declare-fun b_next!44043 () Bool)

(assert (=> b!1612499 (= b_free!43339 (not b_next!44043))))

(declare-fun tp!470254 () Bool)

(declare-fun b_and!114321 () Bool)

(assert (=> b!1612499 (= tp!470254 b_and!114321)))

(declare-fun b_free!43341 () Bool)

(declare-fun b_next!44045 () Bool)

(assert (=> b!1612499 (= b_free!43341 (not b_next!44045))))

(declare-fun t!148049 () Bool)

(declare-fun tb!92723 () Bool)

(assert (=> (and b!1612499 (= (toChars!4379 (transformation!3097 (h!22992 (t!148008 rules!1846)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457)))))) t!148049) tb!92723))

(declare-fun result!111732 () Bool)

(assert (= result!111732 result!111696))

(assert (=> d!485273 t!148049))

(declare-fun tb!92725 () Bool)

(declare-fun t!148051 () Bool)

(assert (=> (and b!1612499 (= (toChars!4379 (transformation!3097 (h!22992 (t!148008 rules!1846)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457))))) t!148051) tb!92725))

(declare-fun result!111734 () Bool)

(assert (= result!111734 result!111702))

(assert (=> b!1612190 t!148051))

(assert (=> d!485341 t!148051))

(declare-fun tp!470257 () Bool)

(declare-fun b_and!114323 () Bool)

(assert (=> b!1612499 (= tp!470257 (and (=> t!148049 result!111732) (=> t!148051 result!111734) b_and!114323))))

(declare-fun e!1034165 () Bool)

(assert (=> b!1612499 (= e!1034165 (and tp!470254 tp!470257))))

(declare-fun b!1612498 () Bool)

(declare-fun e!1034163 () Bool)

(declare-fun tp!470256 () Bool)

(assert (=> b!1612498 (= e!1034163 (and tp!470256 (inv!23003 (tag!3373 (h!22992 (t!148008 rules!1846)))) (inv!23006 (transformation!3097 (h!22992 (t!148008 rules!1846)))) e!1034165))))

(declare-fun b!1612497 () Bool)

(declare-fun e!1034162 () Bool)

(declare-fun tp!470255 () Bool)

(assert (=> b!1612497 (= e!1034162 (and e!1034163 tp!470255))))

(assert (=> b!1611918 (= tp!470152 e!1034162)))

(assert (= b!1612498 b!1612499))

(assert (= b!1612497 b!1612498))

(assert (= (and b!1611918 ((_ is Cons!17591) (t!148008 rules!1846))) b!1612497))

(declare-fun m!1930289 () Bool)

(assert (=> b!1612498 m!1930289))

(declare-fun m!1930291 () Bool)

(assert (=> b!1612498 m!1930291))

(declare-fun b!1612504 () Bool)

(declare-fun e!1034168 () Bool)

(declare-fun tp!470260 () Bool)

(assert (=> b!1612504 (= e!1034168 (and tp_is_empty!7237 tp!470260))))

(assert (=> b!1611913 (= tp!470146 e!1034168)))

(assert (= (and b!1611913 ((_ is Cons!17590) (originalCharacters!3911 (h!22993 tokens!457)))) b!1612504))

(declare-fun b_lambda!50887 () Bool)

(assert (= b_lambda!50879 (or (and b!1611900 b_free!43321) (and b!1611922 b_free!43325 (= (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) (and b!1612470 b_free!43337 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) (and b!1612499 b_free!43341 (= (toChars!4379 (transformation!3097 (h!22992 (t!148008 rules!1846)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) b_lambda!50887)))

(declare-fun b_lambda!50889 () Bool)

(assert (= b_lambda!50877 (or (and b!1611900 b_free!43321) (and b!1611922 b_free!43325 (= (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) (and b!1612470 b_free!43337 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) (and b!1612499 b_free!43341 (= (toChars!4379 (transformation!3097 (h!22992 (t!148008 rules!1846)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))))) b_lambda!50889)))

(declare-fun b_lambda!50891 () Bool)

(assert (= b_lambda!50875 (or (and b!1611900 b_free!43321 (= (toChars!4379 (transformation!3097 (rule!4917 (h!22993 tokens!457)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))))) (and b!1611922 b_free!43325 (= (toChars!4379 (transformation!3097 (h!22992 rules!1846))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))))) (and b!1612470 b_free!43337) (and b!1612499 b_free!43341 (= (toChars!4379 (transformation!3097 (h!22992 (t!148008 rules!1846)))) (toChars!4379 (transformation!3097 (rule!4917 (h!22993 (t!148009 tokens!457))))))) b_lambda!50891)))

(check-sat (not b!1612504) (not b!1612172) (not b!1612232) (not b!1612453) (not b!1612163) (not d!485347) (not b!1612320) (not d!485331) (not d!485195) b_and!114317 (not d!485303) (not b!1612318) (not b!1612467) (not b!1612209) (not d!485415) (not d!485387) (not d!485345) (not d!485385) (not b!1612182) (not b_lambda!50889) (not d!485297) (not d!485281) (not d!485405) b_and!114305 (not d!485293) (not b_lambda!50891) (not b!1612185) (not b!1612454) (not b!1612134) b_and!114319 (not d!485295) (not b!1612117) (not b!1612441) (not d!485389) (not b!1612135) (not d!485395) (not tb!92703) (not d!485253) (not b!1612191) (not b!1612226) (not b!1612484) (not b!1612469) (not d!485283) (not d!485339) (not d!485383) (not b_next!44043) (not d!485309) (not d!485261) (not b!1612315) (not b!1612108) (not d!485275) (not d!485287) (not d!485401) (not b!1612487) (not d!485397) (not b!1612366) (not d!485203) (not b!1612159) (not d!485403) (not b!1612365) (not b!1612317) (not b!1611950) (not d!485399) (not b!1612354) (not b!1612096) (not b!1611948) (not d!485273) (not b!1612355) (not b!1611947) (not b!1612208) (not b!1612455) (not b_next!44023) (not b!1612128) (not d!485393) (not bm!104776) (not d!485305) (not b!1612486) (not b!1612116) (not d!485205) (not d!485341) (not b_next!44025) (not b_next!44039) (not b_lambda!50887) (not b!1612488) (not d!485343) (not d!485337) b_and!114281 (not b!1612316) b_and!114307 (not b!1612105) (not b!1612325) (not b!1612166) (not d!485291) (not b!1612231) (not b!1612192) (not b!1611943) (not b!1612210) (not b!1612058) (not d!485197) (not b!1612322) (not tb!92707) (not d!485353) (not b!1612065) (not b!1612165) b_and!114277 (not b!1612227) (not b!1612482) (not d!485301) (not b!1612093) (not b!1612319) (not b!1612367) (not b!1611944) (not b!1612229) (not b!1612167) (not b_next!44027) (not d!485349) (not b!1612107) (not d!485391) (not bm!104782) (not d!485311) (not d!485313) (not b!1612049) (not b!1612225) (not b!1612190) (not b!1612498) (not b_next!44029) (not b!1612127) (not d!485285) (not b!1612483) (not b!1612160) (not d!485333) (not b!1612161) (not d!485277) (not b_next!44041) (not b!1612180) (not b!1612106) (not b!1611949) (not b!1612497) (not b!1612468) b_and!114323 (not d!485335) (not b!1612140) (not b_next!44045) (not b!1612111) (not b!1612440) (not d!485255) (not b!1612164) (not b!1611946) (not d!485329) (not b!1612314) tp_is_empty!7237 (not b!1612048) b_and!114321)
(check-sat b_and!114317 b_and!114305 b_and!114319 (not b_next!44043) (not b_next!44023) b_and!114281 b_and!114307 b_and!114277 (not b_next!44027) (not b_next!44029) (not b_next!44041) b_and!114321 (not b_next!44025) (not b_next!44039) b_and!114323 (not b_next!44045))
