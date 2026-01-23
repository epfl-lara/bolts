; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154654 () Bool)

(assert start!154654)

(declare-fun b!1626179 () Bool)

(declare-fun b_free!43895 () Bool)

(declare-fun b_next!44599 () Bool)

(assert (=> b!1626179 (= b_free!43895 (not b_next!44599))))

(declare-fun tp!472867 () Bool)

(declare-fun b_and!115317 () Bool)

(assert (=> b!1626179 (= tp!472867 b_and!115317)))

(declare-fun b_free!43897 () Bool)

(declare-fun b_next!44601 () Bool)

(assert (=> b!1626179 (= b_free!43897 (not b_next!44601))))

(declare-fun tp!472865 () Bool)

(declare-fun b_and!115319 () Bool)

(assert (=> b!1626179 (= tp!472865 b_and!115319)))

(declare-fun b!1626193 () Bool)

(declare-fun b_free!43899 () Bool)

(declare-fun b_next!44603 () Bool)

(assert (=> b!1626193 (= b_free!43899 (not b_next!44603))))

(declare-fun tp!472868 () Bool)

(declare-fun b_and!115321 () Bool)

(assert (=> b!1626193 (= tp!472868 b_and!115321)))

(declare-fun b_free!43901 () Bool)

(declare-fun b_next!44605 () Bool)

(assert (=> b!1626193 (= b_free!43901 (not b_next!44605))))

(declare-fun tp!472863 () Bool)

(declare-fun b_and!115323 () Bool)

(assert (=> b!1626193 (= tp!472863 b_and!115323)))

(declare-fun e!1043038 () Bool)

(declare-fun b!1626176 () Bool)

(declare-fun e!1043046 () Bool)

(declare-datatypes ((List!17915 0))(
  ( (Nil!17845) (Cons!17845 (h!23246 (_ BitVec 16)) (t!149048 List!17915)) )
))
(declare-datatypes ((TokenValue!3233 0))(
  ( (FloatLiteralValue!6466 (text!23076 List!17915)) (TokenValueExt!3232 (__x!11768 Int)) (Broken!16165 (value!99222 List!17915)) (Object!3302) (End!3233) (Def!3233) (Underscore!3233) (Match!3233) (Else!3233) (Error!3233) (Case!3233) (If!3233) (Extends!3233) (Abstract!3233) (Class!3233) (Val!3233) (DelimiterValue!6466 (del!3293 List!17915)) (KeywordValue!3239 (value!99223 List!17915)) (CommentValue!6466 (value!99224 List!17915)) (WhitespaceValue!6466 (value!99225 List!17915)) (IndentationValue!3233 (value!99226 List!17915)) (String!20496) (Int32!3233) (Broken!16166 (value!99227 List!17915)) (Boolean!3234) (Unit!28916) (OperatorValue!3236 (op!3293 List!17915)) (IdentifierValue!6466 (value!99228 List!17915)) (IdentifierValue!6467 (value!99229 List!17915)) (WhitespaceValue!6467 (value!99230 List!17915)) (True!6466) (False!6466) (Broken!16167 (value!99231 List!17915)) (Broken!16168 (value!99232 List!17915)) (True!6467) (RightBrace!3233) (RightBracket!3233) (Colon!3233) (Null!3233) (Comma!3233) (LeftBracket!3233) (False!6467) (LeftBrace!3233) (ImaginaryLiteralValue!3233 (text!23077 List!17915)) (StringLiteralValue!9699 (value!99233 List!17915)) (EOFValue!3233 (value!99234 List!17915)) (IdentValue!3233 (value!99235 List!17915)) (DelimiterValue!6467 (value!99236 List!17915)) (DedentValue!3233 (value!99237 List!17915)) (NewLineValue!3233 (value!99238 List!17915)) (IntegerValue!9699 (value!99239 (_ BitVec 32)) (text!23078 List!17915)) (IntegerValue!9700 (value!99240 Int) (text!23079 List!17915)) (Times!3233) (Or!3233) (Equal!3233) (Minus!3233) (Broken!16169 (value!99241 List!17915)) (And!3233) (Div!3233) (LessEqual!3233) (Mod!3233) (Concat!7704) (Not!3233) (Plus!3233) (SpaceValue!3233 (value!99242 List!17915)) (IntegerValue!9701 (value!99243 Int) (text!23080 List!17915)) (StringLiteralValue!9700 (text!23081 List!17915)) (FloatLiteralValue!6467 (text!23082 List!17915)) (BytesLiteralValue!3233 (value!99244 List!17915)) (CommentValue!6467 (value!99245 List!17915)) (StringLiteralValue!9701 (value!99246 List!17915)) (ErrorTokenValue!3233 (msg!3294 List!17915)) )
))
(declare-datatypes ((C!9116 0))(
  ( (C!9117 (val!5154 Int)) )
))
(declare-datatypes ((List!17916 0))(
  ( (Nil!17846) (Cons!17846 (h!23247 C!9116) (t!149049 List!17916)) )
))
(declare-datatypes ((IArray!11873 0))(
  ( (IArray!11874 (innerList!5994 List!17916)) )
))
(declare-datatypes ((Conc!5934 0))(
  ( (Node!5934 (left!14343 Conc!5934) (right!14673 Conc!5934) (csize!12098 Int) (cheight!6145 Int)) (Leaf!8726 (xs!8766 IArray!11873) (csize!12099 Int)) (Empty!5934) )
))
(declare-datatypes ((BalanceConc!11812 0))(
  ( (BalanceConc!11813 (c!264615 Conc!5934)) )
))
(declare-datatypes ((Regex!4471 0))(
  ( (ElementMatch!4471 (c!264616 C!9116)) (Concat!7705 (regOne!9454 Regex!4471) (regTwo!9454 Regex!4471)) (EmptyExpr!4471) (Star!4471 (reg!4800 Regex!4471)) (EmptyLang!4471) (Union!4471 (regOne!9455 Regex!4471) (regTwo!9455 Regex!4471)) )
))
(declare-datatypes ((String!20497 0))(
  ( (String!20498 (value!99247 String)) )
))
(declare-datatypes ((TokenValueInjection!6126 0))(
  ( (TokenValueInjection!6127 (toValue!4570 Int) (toChars!4429 Int)) )
))
(declare-datatypes ((Rule!6086 0))(
  ( (Rule!6087 (regex!3143 Regex!4471) (tag!3421 String!20497) (isSeparator!3143 Bool) (transformation!3143 TokenValueInjection!6126)) )
))
(declare-datatypes ((Token!5852 0))(
  ( (Token!5853 (value!99248 TokenValue!3233) (rule!4969 Rule!6086) (size!14276 Int) (originalCharacters!3957 List!17916)) )
))
(declare-datatypes ((List!17917 0))(
  ( (Nil!17847) (Cons!17847 (h!23248 Token!5852) (t!149050 List!17917)) )
))
(declare-fun tokens!457 () List!17917)

(declare-fun tp!472866 () Bool)

(declare-fun inv!23218 (String!20497) Bool)

(declare-fun inv!23221 (TokenValueInjection!6126) Bool)

(assert (=> b!1626176 (= e!1043046 (and tp!472866 (inv!23218 (tag!3421 (rule!4969 (h!23248 tokens!457)))) (inv!23221 (transformation!3143 (rule!4969 (h!23248 tokens!457)))) e!1043038))))

(declare-fun b!1626177 () Bool)

(declare-fun res!727104 () Bool)

(declare-fun e!1043043 () Bool)

(assert (=> b!1626177 (=> (not res!727104) (not e!1043043))))

(declare-fun lt!587808 () List!17916)

(declare-fun head!3444 (List!17916) C!9116)

(assert (=> b!1626177 (= res!727104 (= lt!587808 (Cons!17846 (head!3444 (originalCharacters!3957 (h!23248 (t!149050 tokens!457)))) Nil!17846)))))

(declare-fun b!1626178 () Bool)

(declare-fun res!727100 () Bool)

(declare-fun e!1043042 () Bool)

(assert (=> b!1626178 (=> (not res!727100) (not e!1043042))))

(declare-datatypes ((List!17918 0))(
  ( (Nil!17848) (Cons!17848 (h!23249 Rule!6086) (t!149051 List!17918)) )
))
(declare-fun rules!1846 () List!17918)

(declare-fun isEmpty!10875 (List!17918) Bool)

(assert (=> b!1626178 (= res!727100 (not (isEmpty!10875 rules!1846)))))

(assert (=> b!1626179 (= e!1043038 (and tp!472867 tp!472865))))

(declare-fun b!1626180 () Bool)

(declare-fun res!727105 () Bool)

(assert (=> b!1626180 (=> (not res!727105) (not e!1043042))))

(declare-datatypes ((LexerInterface!2772 0))(
  ( (LexerInterfaceExt!2769 (__x!11769 Int)) (Lexer!2770) )
))
(declare-fun thiss!17113 () LexerInterface!2772)

(declare-fun tokensListTwoByTwoPredicateSeparableList!465 (LexerInterface!2772 List!17917 List!17918) Bool)

(assert (=> b!1626180 (= res!727105 (tokensListTwoByTwoPredicateSeparableList!465 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!472870 () Bool)

(declare-fun e!1043035 () Bool)

(declare-fun b!1626181 () Bool)

(declare-fun e!1043031 () Bool)

(assert (=> b!1626181 (= e!1043035 (and tp!472870 (inv!23218 (tag!3421 (h!23249 rules!1846))) (inv!23221 (transformation!3143 (h!23249 rules!1846))) e!1043031))))

(declare-fun b!1626182 () Bool)

(declare-fun e!1043052 () Bool)

(declare-fun e!1043040 () Bool)

(assert (=> b!1626182 (= e!1043052 (not e!1043040))))

(declare-fun res!727111 () Bool)

(assert (=> b!1626182 (=> res!727111 e!1043040)))

(declare-fun lt!587813 () List!17917)

(assert (=> b!1626182 (= res!727111 (not (= lt!587813 (t!149050 tokens!457))))))

(declare-datatypes ((IArray!11875 0))(
  ( (IArray!11876 (innerList!5995 List!17917)) )
))
(declare-datatypes ((Conc!5935 0))(
  ( (Node!5935 (left!14344 Conc!5935) (right!14674 Conc!5935) (csize!12100 Int) (cheight!6146 Int)) (Leaf!8727 (xs!8767 IArray!11875) (csize!12101 Int)) (Empty!5935) )
))
(declare-datatypes ((BalanceConc!11814 0))(
  ( (BalanceConc!11815 (c!264617 Conc!5935)) )
))
(declare-datatypes ((tuple2!17418 0))(
  ( (tuple2!17419 (_1!10111 BalanceConc!11814) (_2!10111 BalanceConc!11812)) )
))
(declare-fun lt!587806 () tuple2!17418)

(declare-fun list!7007 (BalanceConc!11814) List!17917)

(assert (=> b!1626182 (= lt!587813 (list!7007 (_1!10111 lt!587806)))))

(declare-datatypes ((Unit!28917 0))(
  ( (Unit!28918) )
))
(declare-fun lt!587814 () Unit!28917)

(declare-fun theoremInvertabilityWhenTokenListSeparable!217 (LexerInterface!2772 List!17918 List!17917) Unit!28917)

(assert (=> b!1626182 (= lt!587814 (theoremInvertabilityWhenTokenListSeparable!217 thiss!17113 rules!1846 (t!149050 tokens!457)))))

(declare-fun lt!587821 () List!17916)

(declare-fun lt!587832 () List!17916)

(declare-fun isPrefix!1403 (List!17916 List!17916) Bool)

(assert (=> b!1626182 (isPrefix!1403 lt!587821 lt!587832)))

(declare-fun lt!587823 () Unit!28917)

(declare-fun lt!587826 () List!17916)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!928 (List!17916 List!17916) Unit!28917)

(assert (=> b!1626182 (= lt!587823 (lemmaConcatTwoListThenFirstIsPrefix!928 lt!587821 lt!587826))))

(declare-fun b!1626183 () Bool)

(declare-fun res!727117 () Bool)

(assert (=> b!1626183 (=> (not res!727117) (not e!1043042))))

(declare-fun rulesProduceEachTokenIndividuallyList!974 (LexerInterface!2772 List!17918 List!17917) Bool)

(assert (=> b!1626183 (= res!727117 (rulesProduceEachTokenIndividuallyList!974 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1626184 () Bool)

(declare-fun res!727110 () Bool)

(assert (=> b!1626184 (=> (not res!727110) (not e!1043042))))

(declare-fun rulesInvariant!2441 (LexerInterface!2772 List!17918) Bool)

(assert (=> b!1626184 (= res!727110 (rulesInvariant!2441 thiss!17113 rules!1846))))

(declare-fun b!1626185 () Bool)

(declare-fun res!727103 () Bool)

(declare-fun e!1043049 () Bool)

(assert (=> b!1626185 (=> res!727103 e!1043049)))

(declare-fun separableTokensPredicate!714 (LexerInterface!2772 Token!5852 Token!5852 List!17918) Bool)

(assert (=> b!1626185 (= res!727103 (not (separableTokensPredicate!714 thiss!17113 (h!23248 tokens!457) (h!23248 (t!149050 tokens!457)) rules!1846)))))

(declare-fun b!1626186 () Bool)

(declare-fun e!1043032 () Bool)

(declare-fun matchR!1970 (Regex!4471 List!17916) Bool)

(assert (=> b!1626186 (= e!1043032 (matchR!1970 (regex!3143 (rule!4969 (h!23248 tokens!457))) lt!587821))))

(declare-fun b!1626187 () Bool)

(declare-fun e!1043033 () Bool)

(declare-fun e!1043044 () Bool)

(assert (=> b!1626187 (= e!1043033 e!1043044)))

(declare-fun res!727108 () Bool)

(assert (=> b!1626187 (=> res!727108 e!1043044)))

(declare-fun lt!587816 () Regex!4471)

(declare-fun prefixMatch!406 (Regex!4471 List!17916) Bool)

(declare-fun ++!4747 (List!17916 List!17916) List!17916)

(assert (=> b!1626187 (= res!727108 (prefixMatch!406 lt!587816 (++!4747 lt!587821 lt!587808)))))

(declare-fun lt!587811 () BalanceConc!11812)

(declare-fun list!7008 (BalanceConc!11812) List!17916)

(assert (=> b!1626187 (= lt!587808 (list!7008 lt!587811))))

(declare-fun b!1626188 () Bool)

(assert (=> b!1626188 (= e!1043042 e!1043052)))

(declare-fun res!727106 () Bool)

(assert (=> b!1626188 (=> (not res!727106) (not e!1043052))))

(declare-fun lt!587828 () List!17916)

(assert (=> b!1626188 (= res!727106 (= lt!587828 lt!587832))))

(assert (=> b!1626188 (= lt!587832 (++!4747 lt!587821 lt!587826))))

(declare-fun lt!587825 () BalanceConc!11812)

(assert (=> b!1626188 (= lt!587828 (list!7008 lt!587825))))

(declare-fun lt!587818 () BalanceConc!11812)

(assert (=> b!1626188 (= lt!587826 (list!7008 lt!587818))))

(declare-fun lt!587820 () BalanceConc!11812)

(assert (=> b!1626188 (= lt!587821 (list!7008 lt!587820))))

(declare-fun charsOf!1792 (Token!5852) BalanceConc!11812)

(assert (=> b!1626188 (= lt!587820 (charsOf!1792 (h!23248 tokens!457)))))

(declare-fun lex!1256 (LexerInterface!2772 List!17918 BalanceConc!11812) tuple2!17418)

(assert (=> b!1626188 (= lt!587806 (lex!1256 thiss!17113 rules!1846 lt!587818))))

(declare-fun lt!587822 () BalanceConc!11814)

(declare-fun print!1303 (LexerInterface!2772 BalanceConc!11814) BalanceConc!11812)

(assert (=> b!1626188 (= lt!587818 (print!1303 thiss!17113 lt!587822))))

(declare-fun seqFromList!2035 (List!17917) BalanceConc!11814)

(assert (=> b!1626188 (= lt!587822 (seqFromList!2035 (t!149050 tokens!457)))))

(assert (=> b!1626188 (= lt!587825 (print!1303 thiss!17113 (seqFromList!2035 tokens!457)))))

(declare-fun b!1626189 () Bool)

(assert (=> b!1626189 (= e!1043040 e!1043049)))

(declare-fun res!727096 () Bool)

(assert (=> b!1626189 (=> res!727096 e!1043049)))

(declare-fun lt!587812 () List!17917)

(declare-fun lt!587817 () List!17917)

(assert (=> b!1626189 (= res!727096 (or (not (= lt!587813 lt!587817)) (not (= lt!587817 lt!587812))))))

(assert (=> b!1626189 (= lt!587817 (list!7007 lt!587822))))

(assert (=> b!1626189 (= lt!587813 lt!587812)))

(declare-fun prepend!671 (BalanceConc!11814 Token!5852) BalanceConc!11814)

(assert (=> b!1626189 (= lt!587812 (list!7007 (prepend!671 (seqFromList!2035 (t!149050 (t!149050 tokens!457))) (h!23248 (t!149050 tokens!457)))))))

(declare-fun lt!587819 () Unit!28917)

(declare-fun seqFromListBHdTlConstructive!220 (Token!5852 List!17917 BalanceConc!11814) Unit!28917)

(assert (=> b!1626189 (= lt!587819 (seqFromListBHdTlConstructive!220 (h!23248 (t!149050 tokens!457)) (t!149050 (t!149050 tokens!457)) (_1!10111 lt!587806)))))

(declare-fun b!1626190 () Bool)

(declare-fun tp!472869 () Bool)

(declare-fun e!1043037 () Bool)

(declare-fun inv!21 (TokenValue!3233) Bool)

(assert (=> b!1626190 (= e!1043037 (and (inv!21 (value!99248 (h!23248 tokens!457))) e!1043046 tp!472869))))

(declare-fun b!1626191 () Bool)

(declare-fun e!1043047 () Bool)

(declare-fun e!1043039 () Bool)

(assert (=> b!1626191 (= e!1043047 e!1043039)))

(declare-fun res!727102 () Bool)

(assert (=> b!1626191 (=> res!727102 e!1043039)))

(declare-fun lt!587824 () List!17916)

(assert (=> b!1626191 (= res!727102 (prefixMatch!406 lt!587816 (++!4747 (originalCharacters!3957 (h!23248 tokens!457)) lt!587824)))))

(assert (=> b!1626191 e!1043032))

(declare-fun res!727119 () Bool)

(assert (=> b!1626191 (=> (not res!727119) (not e!1043032))))

(declare-datatypes ((tuple2!17420 0))(
  ( (tuple2!17421 (_1!10112 Token!5852) (_2!10112 List!17916)) )
))
(declare-fun lt!587831 () tuple2!17420)

(assert (=> b!1626191 (= res!727119 (= (_1!10112 lt!587831) (h!23248 tokens!457)))))

(declare-datatypes ((Option!3311 0))(
  ( (None!3310) (Some!3310 (v!24353 tuple2!17420)) )
))
(declare-fun lt!587815 () Option!3311)

(declare-fun get!5147 (Option!3311) tuple2!17420)

(assert (=> b!1626191 (= lt!587831 (get!5147 lt!587815))))

(declare-fun isDefined!2678 (Option!3311) Bool)

(assert (=> b!1626191 (isDefined!2678 lt!587815)))

(declare-fun maxPrefix!1336 (LexerInterface!2772 List!17918 List!17916) Option!3311)

(assert (=> b!1626191 (= lt!587815 (maxPrefix!1336 thiss!17113 rules!1846 lt!587821))))

(assert (=> b!1626191 (isDefined!2678 (maxPrefix!1336 thiss!17113 rules!1846 (originalCharacters!3957 (h!23248 tokens!457))))))

(declare-fun b!1626192 () Bool)

(declare-fun res!727113 () Bool)

(assert (=> b!1626192 (=> (not res!727113) (not e!1043032))))

(declare-fun isEmpty!10876 (List!17916) Bool)

(assert (=> b!1626192 (= res!727113 (isEmpty!10876 (_2!10112 lt!587831)))))

(assert (=> b!1626193 (= e!1043031 (and tp!472868 tp!472863))))

(declare-fun b!1626194 () Bool)

(assert (=> b!1626194 (= e!1043044 e!1043047)))

(declare-fun res!727116 () Bool)

(assert (=> b!1626194 (=> res!727116 e!1043047)))

(declare-datatypes ((tuple2!17422 0))(
  ( (tuple2!17423 (_1!10113 Token!5852) (_2!10113 BalanceConc!11812)) )
))
(declare-datatypes ((Option!3312 0))(
  ( (None!3311) (Some!3311 (v!24354 tuple2!17422)) )
))
(declare-fun isDefined!2679 (Option!3312) Bool)

(declare-fun maxPrefixZipperSequence!667 (LexerInterface!2772 List!17918 BalanceConc!11812) Option!3312)

(declare-fun seqFromList!2036 (List!17916) BalanceConc!11812)

(assert (=> b!1626194 (= res!727116 (not (isDefined!2679 (maxPrefixZipperSequence!667 thiss!17113 rules!1846 (seqFromList!2036 (originalCharacters!3957 (h!23248 tokens!457)))))))))

(assert (=> b!1626194 (= lt!587808 lt!587824)))

(declare-fun head!3445 (BalanceConc!11812) C!9116)

(assert (=> b!1626194 (= lt!587824 (Cons!17846 (head!3445 lt!587818) Nil!17846))))

(assert (=> b!1626194 e!1043043))

(declare-fun res!727118 () Bool)

(assert (=> b!1626194 (=> (not res!727118) (not e!1043043))))

(assert (=> b!1626194 (= res!727118 (= lt!587821 (originalCharacters!3957 (h!23248 tokens!457))))))

(declare-fun b!1626195 () Bool)

(declare-fun res!727115 () Bool)

(declare-fun e!1043048 () Bool)

(assert (=> b!1626195 (=> res!727115 e!1043048)))

(declare-fun isEmpty!10877 (BalanceConc!11814) Bool)

(assert (=> b!1626195 (= res!727115 (isEmpty!10877 (_1!10111 (lex!1256 thiss!17113 rules!1846 (seqFromList!2036 lt!587821)))))))

(declare-fun b!1626196 () Bool)

(declare-fun res!727107 () Bool)

(assert (=> b!1626196 (=> (not res!727107) (not e!1043042))))

(get-info :version)

(assert (=> b!1626196 (= res!727107 (and (not ((_ is Nil!17847) tokens!457)) (not ((_ is Nil!17847) (t!149050 tokens!457)))))))

(declare-fun b!1626197 () Bool)

(assert (=> b!1626197 (= e!1043039 true)))

(declare-fun ruleValid!737 (LexerInterface!2772 Rule!6086) Bool)

(assert (=> b!1626197 (ruleValid!737 thiss!17113 (rule!4969 (h!23248 tokens!457)))))

(declare-fun lt!587827 () Unit!28917)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!298 (LexerInterface!2772 Rule!6086 List!17918) Unit!28917)

(assert (=> b!1626197 (= lt!587827 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!298 thiss!17113 (rule!4969 (h!23248 tokens!457)) rules!1846))))

(declare-fun b!1626198 () Bool)

(assert (=> b!1626198 (= e!1043043 (= lt!587808 (Cons!17846 (head!3444 lt!587826) Nil!17846)))))

(declare-fun b!1626199 () Bool)

(assert (=> b!1626199 (= e!1043049 e!1043048)))

(declare-fun res!727109 () Bool)

(assert (=> b!1626199 (=> res!727109 e!1043048)))

(declare-fun lt!587807 () List!17916)

(declare-fun lt!587805 () List!17916)

(assert (=> b!1626199 (= res!727109 (or (not (= lt!587807 lt!587805)) (not (= lt!587805 lt!587821)) (not (= lt!587807 lt!587821))))))

(declare-fun printList!887 (LexerInterface!2772 List!17917) List!17916)

(assert (=> b!1626199 (= lt!587805 (printList!887 thiss!17113 (Cons!17847 (h!23248 tokens!457) Nil!17847)))))

(declare-fun lt!587829 () BalanceConc!11812)

(assert (=> b!1626199 (= lt!587807 (list!7008 lt!587829))))

(declare-fun lt!587810 () BalanceConc!11814)

(declare-fun printTailRec!825 (LexerInterface!2772 BalanceConc!11814 Int BalanceConc!11812) BalanceConc!11812)

(assert (=> b!1626199 (= lt!587829 (printTailRec!825 thiss!17113 lt!587810 0 (BalanceConc!11813 Empty!5934)))))

(assert (=> b!1626199 (= lt!587829 (print!1303 thiss!17113 lt!587810))))

(declare-fun singletonSeq!1564 (Token!5852) BalanceConc!11814)

(assert (=> b!1626199 (= lt!587810 (singletonSeq!1564 (h!23248 tokens!457)))))

(declare-fun lt!587830 () Option!3311)

(assert (=> b!1626199 (= lt!587830 (maxPrefix!1336 thiss!17113 rules!1846 lt!587828))))

(declare-fun b!1626200 () Bool)

(declare-fun res!727101 () Bool)

(assert (=> b!1626200 (=> res!727101 e!1043039)))

(declare-fun contains!3118 (List!17918 Rule!6086) Bool)

(assert (=> b!1626200 (= res!727101 (not (contains!3118 rules!1846 (rule!4969 (h!23248 tokens!457)))))))

(declare-fun b!1626201 () Bool)

(declare-fun res!727098 () Bool)

(assert (=> b!1626201 (=> res!727098 e!1043048)))

(declare-fun rulesProduceIndividualToken!1424 (LexerInterface!2772 List!17918 Token!5852) Bool)

(assert (=> b!1626201 (= res!727098 (not (rulesProduceIndividualToken!1424 thiss!17113 rules!1846 (h!23248 tokens!457))))))

(declare-fun b!1626202 () Bool)

(declare-fun e!1043045 () Bool)

(declare-fun tp!472864 () Bool)

(assert (=> b!1626202 (= e!1043045 (and e!1043035 tp!472864))))

(declare-fun res!727099 () Bool)

(assert (=> start!154654 (=> (not res!727099) (not e!1043042))))

(assert (=> start!154654 (= res!727099 ((_ is Lexer!2770) thiss!17113))))

(assert (=> start!154654 e!1043042))

(assert (=> start!154654 true))

(assert (=> start!154654 e!1043045))

(declare-fun e!1043051 () Bool)

(assert (=> start!154654 e!1043051))

(declare-fun b!1626203 () Bool)

(declare-fun tp!472862 () Bool)

(declare-fun inv!23222 (Token!5852) Bool)

(assert (=> b!1626203 (= e!1043051 (and (inv!23222 (h!23248 tokens!457)) e!1043037 tp!472862))))

(declare-fun b!1626204 () Bool)

(declare-fun e!1043041 () Bool)

(assert (=> b!1626204 (= e!1043048 e!1043041)))

(declare-fun res!727097 () Bool)

(assert (=> b!1626204 (=> res!727097 e!1043041)))

(assert (=> b!1626204 (= res!727097 (not (isDefined!2678 lt!587830)))))

(declare-fun lt!587809 () Unit!28917)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!346 (LexerInterface!2772 List!17918 List!17916 List!17916) Unit!28917)

(assert (=> b!1626204 (= lt!587809 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!346 thiss!17113 rules!1846 lt!587821 lt!587826))))

(declare-fun b!1626205 () Bool)

(declare-fun res!727112 () Bool)

(assert (=> b!1626205 (=> res!727112 e!1043039)))

(assert (=> b!1626205 (= res!727112 (prefixMatch!406 lt!587816 (++!4747 lt!587821 lt!587824)))))

(declare-fun b!1626206 () Bool)

(assert (=> b!1626206 (= e!1043041 e!1043033)))

(declare-fun res!727114 () Bool)

(assert (=> b!1626206 (=> res!727114 e!1043033)))

(declare-fun prefixMatchZipperSequence!533 (Regex!4471 BalanceConc!11812) Bool)

(declare-fun ++!4748 (BalanceConc!11812 BalanceConc!11812) BalanceConc!11812)

(assert (=> b!1626206 (= res!727114 (prefixMatchZipperSequence!533 lt!587816 (++!4748 lt!587820 lt!587811)))))

(declare-fun singletonSeq!1565 (C!9116) BalanceConc!11812)

(declare-fun apply!4566 (BalanceConc!11812 Int) C!9116)

(assert (=> b!1626206 (= lt!587811 (singletonSeq!1565 (apply!4566 (charsOf!1792 (h!23248 (t!149050 tokens!457))) 0)))))

(declare-fun rulesRegex!533 (LexerInterface!2772 List!17918) Regex!4471)

(assert (=> b!1626206 (= lt!587816 (rulesRegex!533 thiss!17113 rules!1846))))

(assert (= (and start!154654 res!727099) b!1626178))

(assert (= (and b!1626178 res!727100) b!1626184))

(assert (= (and b!1626184 res!727110) b!1626183))

(assert (= (and b!1626183 res!727117) b!1626180))

(assert (= (and b!1626180 res!727105) b!1626196))

(assert (= (and b!1626196 res!727107) b!1626188))

(assert (= (and b!1626188 res!727106) b!1626182))

(assert (= (and b!1626182 (not res!727111)) b!1626189))

(assert (= (and b!1626189 (not res!727096)) b!1626185))

(assert (= (and b!1626185 (not res!727103)) b!1626199))

(assert (= (and b!1626199 (not res!727109)) b!1626201))

(assert (= (and b!1626201 (not res!727098)) b!1626195))

(assert (= (and b!1626195 (not res!727115)) b!1626204))

(assert (= (and b!1626204 (not res!727097)) b!1626206))

(assert (= (and b!1626206 (not res!727114)) b!1626187))

(assert (= (and b!1626187 (not res!727108)) b!1626194))

(assert (= (and b!1626194 res!727118) b!1626177))

(assert (= (and b!1626177 res!727104) b!1626198))

(assert (= (and b!1626194 (not res!727116)) b!1626191))

(assert (= (and b!1626191 res!727119) b!1626192))

(assert (= (and b!1626192 res!727113) b!1626186))

(assert (= (and b!1626191 (not res!727102)) b!1626205))

(assert (= (and b!1626205 (not res!727112)) b!1626200))

(assert (= (and b!1626200 (not res!727101)) b!1626197))

(assert (= b!1626181 b!1626193))

(assert (= b!1626202 b!1626181))

(assert (= (and start!154654 ((_ is Cons!17848) rules!1846)) b!1626202))

(assert (= b!1626176 b!1626179))

(assert (= b!1626190 b!1626176))

(assert (= b!1626203 b!1626190))

(assert (= (and start!154654 ((_ is Cons!17847) tokens!457)) b!1626203))

(declare-fun m!1954611 () Bool)

(assert (=> b!1626200 m!1954611))

(declare-fun m!1954613 () Bool)

(assert (=> b!1626189 m!1954613))

(declare-fun m!1954615 () Bool)

(assert (=> b!1626189 m!1954615))

(declare-fun m!1954617 () Bool)

(assert (=> b!1626189 m!1954617))

(declare-fun m!1954619 () Bool)

(assert (=> b!1626189 m!1954619))

(declare-fun m!1954621 () Bool)

(assert (=> b!1626189 m!1954621))

(assert (=> b!1626189 m!1954617))

(assert (=> b!1626189 m!1954619))

(declare-fun m!1954623 () Bool)

(assert (=> b!1626188 m!1954623))

(declare-fun m!1954625 () Bool)

(assert (=> b!1626188 m!1954625))

(declare-fun m!1954627 () Bool)

(assert (=> b!1626188 m!1954627))

(declare-fun m!1954629 () Bool)

(assert (=> b!1626188 m!1954629))

(declare-fun m!1954631 () Bool)

(assert (=> b!1626188 m!1954631))

(declare-fun m!1954633 () Bool)

(assert (=> b!1626188 m!1954633))

(declare-fun m!1954635 () Bool)

(assert (=> b!1626188 m!1954635))

(assert (=> b!1626188 m!1954629))

(declare-fun m!1954637 () Bool)

(assert (=> b!1626188 m!1954637))

(declare-fun m!1954639 () Bool)

(assert (=> b!1626188 m!1954639))

(declare-fun m!1954641 () Bool)

(assert (=> b!1626188 m!1954641))

(declare-fun m!1954643 () Bool)

(assert (=> b!1626195 m!1954643))

(assert (=> b!1626195 m!1954643))

(declare-fun m!1954645 () Bool)

(assert (=> b!1626195 m!1954645))

(declare-fun m!1954647 () Bool)

(assert (=> b!1626195 m!1954647))

(declare-fun m!1954649 () Bool)

(assert (=> b!1626199 m!1954649))

(declare-fun m!1954651 () Bool)

(assert (=> b!1626199 m!1954651))

(declare-fun m!1954653 () Bool)

(assert (=> b!1626199 m!1954653))

(declare-fun m!1954655 () Bool)

(assert (=> b!1626199 m!1954655))

(declare-fun m!1954657 () Bool)

(assert (=> b!1626199 m!1954657))

(declare-fun m!1954659 () Bool)

(assert (=> b!1626199 m!1954659))

(declare-fun m!1954661 () Bool)

(assert (=> b!1626194 m!1954661))

(assert (=> b!1626194 m!1954661))

(declare-fun m!1954663 () Bool)

(assert (=> b!1626194 m!1954663))

(assert (=> b!1626194 m!1954663))

(declare-fun m!1954665 () Bool)

(assert (=> b!1626194 m!1954665))

(declare-fun m!1954667 () Bool)

(assert (=> b!1626194 m!1954667))

(declare-fun m!1954669 () Bool)

(assert (=> b!1626205 m!1954669))

(assert (=> b!1626205 m!1954669))

(declare-fun m!1954671 () Bool)

(assert (=> b!1626205 m!1954671))

(declare-fun m!1954673 () Bool)

(assert (=> b!1626204 m!1954673))

(declare-fun m!1954675 () Bool)

(assert (=> b!1626204 m!1954675))

(declare-fun m!1954677 () Bool)

(assert (=> b!1626181 m!1954677))

(declare-fun m!1954679 () Bool)

(assert (=> b!1626181 m!1954679))

(declare-fun m!1954681 () Bool)

(assert (=> b!1626185 m!1954681))

(declare-fun m!1954683 () Bool)

(assert (=> b!1626182 m!1954683))

(declare-fun m!1954685 () Bool)

(assert (=> b!1626182 m!1954685))

(declare-fun m!1954687 () Bool)

(assert (=> b!1626182 m!1954687))

(declare-fun m!1954689 () Bool)

(assert (=> b!1626182 m!1954689))

(declare-fun m!1954691 () Bool)

(assert (=> b!1626180 m!1954691))

(declare-fun m!1954693 () Bool)

(assert (=> b!1626177 m!1954693))

(declare-fun m!1954695 () Bool)

(assert (=> b!1626183 m!1954695))

(declare-fun m!1954697 () Bool)

(assert (=> b!1626206 m!1954697))

(declare-fun m!1954699 () Bool)

(assert (=> b!1626206 m!1954699))

(declare-fun m!1954701 () Bool)

(assert (=> b!1626206 m!1954701))

(declare-fun m!1954703 () Bool)

(assert (=> b!1626206 m!1954703))

(assert (=> b!1626206 m!1954703))

(declare-fun m!1954705 () Bool)

(assert (=> b!1626206 m!1954705))

(declare-fun m!1954707 () Bool)

(assert (=> b!1626206 m!1954707))

(assert (=> b!1626206 m!1954699))

(assert (=> b!1626206 m!1954707))

(declare-fun m!1954709 () Bool)

(assert (=> b!1626201 m!1954709))

(declare-fun m!1954711 () Bool)

(assert (=> b!1626191 m!1954711))

(declare-fun m!1954713 () Bool)

(assert (=> b!1626191 m!1954713))

(declare-fun m!1954715 () Bool)

(assert (=> b!1626191 m!1954715))

(declare-fun m!1954717 () Bool)

(assert (=> b!1626191 m!1954717))

(assert (=> b!1626191 m!1954713))

(declare-fun m!1954719 () Bool)

(assert (=> b!1626191 m!1954719))

(declare-fun m!1954721 () Bool)

(assert (=> b!1626191 m!1954721))

(assert (=> b!1626191 m!1954719))

(declare-fun m!1954723 () Bool)

(assert (=> b!1626191 m!1954723))

(declare-fun m!1954725 () Bool)

(assert (=> b!1626184 m!1954725))

(declare-fun m!1954727 () Bool)

(assert (=> b!1626192 m!1954727))

(declare-fun m!1954729 () Bool)

(assert (=> b!1626190 m!1954729))

(declare-fun m!1954731 () Bool)

(assert (=> b!1626186 m!1954731))

(declare-fun m!1954733 () Bool)

(assert (=> b!1626187 m!1954733))

(assert (=> b!1626187 m!1954733))

(declare-fun m!1954735 () Bool)

(assert (=> b!1626187 m!1954735))

(declare-fun m!1954737 () Bool)

(assert (=> b!1626187 m!1954737))

(declare-fun m!1954739 () Bool)

(assert (=> b!1626203 m!1954739))

(declare-fun m!1954741 () Bool)

(assert (=> b!1626197 m!1954741))

(declare-fun m!1954743 () Bool)

(assert (=> b!1626197 m!1954743))

(declare-fun m!1954745 () Bool)

(assert (=> b!1626198 m!1954745))

(declare-fun m!1954747 () Bool)

(assert (=> b!1626176 m!1954747))

(declare-fun m!1954749 () Bool)

(assert (=> b!1626176 m!1954749))

(declare-fun m!1954751 () Bool)

(assert (=> b!1626178 m!1954751))

(check-sat (not b!1626184) (not b!1626187) (not b!1626199) (not b!1626204) b_and!115323 (not b!1626178) (not b!1626186) (not b!1626176) (not b!1626189) (not b!1626195) (not b!1626194) (not b_next!44605) b_and!115319 (not b_next!44599) (not b!1626203) b_and!115321 (not b!1626205) (not b!1626201) (not b!1626177) (not b!1626185) (not b!1626180) (not b_next!44601) (not b!1626198) (not b!1626182) (not b!1626190) (not b!1626202) (not b!1626191) (not b!1626206) (not b!1626181) b_and!115317 (not b!1626188) (not b!1626183) (not b!1626192) (not b!1626197) (not b!1626200) (not b_next!44603))
(check-sat (not b_next!44601) b_and!115323 b_and!115317 (not b_next!44605) b_and!115319 (not b_next!44603) (not b_next!44599) b_and!115321)
