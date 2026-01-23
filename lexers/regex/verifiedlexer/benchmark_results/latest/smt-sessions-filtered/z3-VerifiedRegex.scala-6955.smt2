; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368080 () Bool)

(assert start!368080)

(declare-fun b!3924995 () Bool)

(declare-fun b_free!106949 () Bool)

(declare-fun b_next!107653 () Bool)

(assert (=> b!3924995 (= b_free!106949 (not b_next!107653))))

(declare-fun tp!1194946 () Bool)

(declare-fun b_and!299303 () Bool)

(assert (=> b!3924995 (= tp!1194946 b_and!299303)))

(declare-fun b_free!106951 () Bool)

(declare-fun b_next!107655 () Bool)

(assert (=> b!3924995 (= b_free!106951 (not b_next!107655))))

(declare-fun tp!1194948 () Bool)

(declare-fun b_and!299305 () Bool)

(assert (=> b!3924995 (= tp!1194948 b_and!299305)))

(declare-fun b!3924984 () Bool)

(declare-fun b_free!106953 () Bool)

(declare-fun b_next!107657 () Bool)

(assert (=> b!3924984 (= b_free!106953 (not b_next!107657))))

(declare-fun tp!1194947 () Bool)

(declare-fun b_and!299307 () Bool)

(assert (=> b!3924984 (= tp!1194947 b_and!299307)))

(declare-fun b_free!106955 () Bool)

(declare-fun b_next!107659 () Bool)

(assert (=> b!3924984 (= b_free!106955 (not b_next!107659))))

(declare-fun tp!1194959 () Bool)

(declare-fun b_and!299309 () Bool)

(assert (=> b!3924984 (= tp!1194959 b_and!299309)))

(declare-fun b!3924963 () Bool)

(declare-fun b_free!106957 () Bool)

(declare-fun b_next!107661 () Bool)

(assert (=> b!3924963 (= b_free!106957 (not b_next!107661))))

(declare-fun tp!1194954 () Bool)

(declare-fun b_and!299311 () Bool)

(assert (=> b!3924963 (= tp!1194954 b_and!299311)))

(declare-fun b_free!106959 () Bool)

(declare-fun b_next!107663 () Bool)

(assert (=> b!3924963 (= b_free!106959 (not b_next!107663))))

(declare-fun tp!1194949 () Bool)

(declare-fun b_and!299313 () Bool)

(assert (=> b!3924963 (= tp!1194949 b_and!299313)))

(declare-datatypes ((LexerInterface!6087 0))(
  ( (LexerInterfaceExt!6084 (__x!25673 Int)) (Lexer!6085) )
))
(declare-fun thiss!20629 () LexerInterface!6087)

(declare-datatypes ((C!22992 0))(
  ( (C!22993 (val!13590 Int)) )
))
(declare-datatypes ((List!41781 0))(
  ( (Nil!41657) (Cons!41657 (h!47077 C!22992) (t!324916 List!41781)) )
))
(declare-datatypes ((IArray!25423 0))(
  ( (IArray!25424 (innerList!12769 List!41781)) )
))
(declare-datatypes ((Conc!12709 0))(
  ( (Node!12709 (left!31808 Conc!12709) (right!32138 Conc!12709) (csize!25648 Int) (cheight!12920 Int)) (Leaf!19665 (xs!16015 IArray!25423) (csize!25649 Int)) (Empty!12709) )
))
(declare-datatypes ((BalanceConc!25012 0))(
  ( (BalanceConc!25013 (c!681992 Conc!12709)) )
))
(declare-datatypes ((List!41782 0))(
  ( (Nil!41658) (Cons!41658 (h!47078 (_ BitVec 16)) (t!324917 List!41782)) )
))
(declare-datatypes ((TokenValue!6728 0))(
  ( (FloatLiteralValue!13456 (text!47541 List!41782)) (TokenValueExt!6727 (__x!25674 Int)) (Broken!33640 (value!205801 List!41782)) (Object!6851) (End!6728) (Def!6728) (Underscore!6728) (Match!6728) (Else!6728) (Error!6728) (Case!6728) (If!6728) (Extends!6728) (Abstract!6728) (Class!6728) (Val!6728) (DelimiterValue!13456 (del!6788 List!41782)) (KeywordValue!6734 (value!205802 List!41782)) (CommentValue!13456 (value!205803 List!41782)) (WhitespaceValue!13456 (value!205804 List!41782)) (IndentationValue!6728 (value!205805 List!41782)) (String!47357) (Int32!6728) (Broken!33641 (value!205806 List!41782)) (Boolean!6729) (Unit!59939) (OperatorValue!6731 (op!6788 List!41782)) (IdentifierValue!13456 (value!205807 List!41782)) (IdentifierValue!13457 (value!205808 List!41782)) (WhitespaceValue!13457 (value!205809 List!41782)) (True!13456) (False!13456) (Broken!33642 (value!205810 List!41782)) (Broken!33643 (value!205811 List!41782)) (True!13457) (RightBrace!6728) (RightBracket!6728) (Colon!6728) (Null!6728) (Comma!6728) (LeftBracket!6728) (False!13457) (LeftBrace!6728) (ImaginaryLiteralValue!6728 (text!47542 List!41782)) (StringLiteralValue!20184 (value!205812 List!41782)) (EOFValue!6728 (value!205813 List!41782)) (IdentValue!6728 (value!205814 List!41782)) (DelimiterValue!13457 (value!205815 List!41782)) (DedentValue!6728 (value!205816 List!41782)) (NewLineValue!6728 (value!205817 List!41782)) (IntegerValue!20184 (value!205818 (_ BitVec 32)) (text!47543 List!41782)) (IntegerValue!20185 (value!205819 Int) (text!47544 List!41782)) (Times!6728) (Or!6728) (Equal!6728) (Minus!6728) (Broken!33644 (value!205820 List!41782)) (And!6728) (Div!6728) (LessEqual!6728) (Mod!6728) (Concat!18131) (Not!6728) (Plus!6728) (SpaceValue!6728 (value!205821 List!41782)) (IntegerValue!20186 (value!205822 Int) (text!47545 List!41782)) (StringLiteralValue!20185 (text!47546 List!41782)) (FloatLiteralValue!13457 (text!47547 List!41782)) (BytesLiteralValue!6728 (value!205823 List!41782)) (CommentValue!13457 (value!205824 List!41782)) (StringLiteralValue!20186 (value!205825 List!41782)) (ErrorTokenValue!6728 (msg!6789 List!41782)) )
))
(declare-datatypes ((Regex!11403 0))(
  ( (ElementMatch!11403 (c!681993 C!22992)) (Concat!18132 (regOne!23318 Regex!11403) (regTwo!23318 Regex!11403)) (EmptyExpr!11403) (Star!11403 (reg!11732 Regex!11403)) (EmptyLang!11403) (Union!11403 (regOne!23319 Regex!11403) (regTwo!23319 Regex!11403)) )
))
(declare-datatypes ((String!47358 0))(
  ( (String!47359 (value!205826 String)) )
))
(declare-datatypes ((TokenValueInjection!12884 0))(
  ( (TokenValueInjection!12885 (toValue!8950 Int) (toChars!8809 Int)) )
))
(declare-datatypes ((Rule!12796 0))(
  ( (Rule!12797 (regex!6498 Regex!11403) (tag!7358 String!47358) (isSeparator!6498 Bool) (transformation!6498 TokenValueInjection!12884)) )
))
(declare-datatypes ((List!41783 0))(
  ( (Nil!41659) (Cons!41659 (h!47079 Rule!12796) (t!324918 List!41783)) )
))
(declare-fun rules!2768 () List!41783)

(declare-datatypes ((Token!12134 0))(
  ( (Token!12135 (value!205827 TokenValue!6728) (rule!9436 Rule!12796) (size!31261 Int) (originalCharacters!7098 List!41781)) )
))
(declare-datatypes ((List!41784 0))(
  ( (Nil!41660) (Cons!41660 (h!47080 Token!12134) (t!324919 List!41784)) )
))
(declare-datatypes ((tuple2!40926 0))(
  ( (tuple2!40927 (_1!23597 List!41784) (_2!23597 List!41781)) )
))
(declare-fun call!284698 () tuple2!40926)

(declare-fun bm!284693 () Bool)

(declare-datatypes ((tuple2!40928 0))(
  ( (tuple2!40929 (_1!23598 Token!12134) (_2!23598 List!41781)) )
))
(declare-fun lt!1369243 () tuple2!40928)

(declare-fun lexList!1855 (LexerInterface!6087 List!41783 List!41781) tuple2!40926)

(assert (=> bm!284693 (= call!284698 (lexList!1855 thiss!20629 rules!2768 (_2!23598 lt!1369243)))))

(declare-fun b!3924956 () Bool)

(declare-fun e!2427620 () Bool)

(declare-fun e!2427603 () Bool)

(assert (=> b!3924956 (= e!2427620 e!2427603)))

(declare-fun res!1587827 () Bool)

(assert (=> b!3924956 (=> res!1587827 e!2427603)))

(declare-fun lt!1369223 () Int)

(declare-fun prefix!426 () List!41781)

(declare-fun size!31262 (List!41781) Int)

(assert (=> b!3924956 (= res!1587827 (>= lt!1369223 (size!31262 prefix!426)))))

(declare-fun lt!1369248 () List!41781)

(declare-fun isPrefix!3593 (List!41781 List!41781) Bool)

(assert (=> b!3924956 (isPrefix!3593 lt!1369248 prefix!426)))

(declare-fun lt!1369240 () List!41781)

(declare-datatypes ((Unit!59940 0))(
  ( (Unit!59941) )
))
(declare-fun lt!1369225 () Unit!59940)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!271 (List!41781 List!41781 List!41781) Unit!59940)

(assert (=> b!3924956 (= lt!1369225 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!271 prefix!426 lt!1369248 lt!1369240))))

(assert (=> b!3924956 (isPrefix!3593 prefix!426 lt!1369240)))

(declare-fun lt!1369241 () Unit!59940)

(declare-fun suffix!1176 () List!41781)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2456 (List!41781 List!41781) Unit!59940)

(assert (=> b!3924956 (= lt!1369241 (lemmaConcatTwoListThenFirstIsPrefix!2456 prefix!426 suffix!1176))))

(declare-fun b!3924957 () Bool)

(declare-fun e!2427599 () Unit!59940)

(declare-fun Unit!59942 () Unit!59940)

(assert (=> b!3924957 (= e!2427599 Unit!59942)))

(declare-datatypes ((Option!8918 0))(
  ( (None!8917) (Some!8917 (v!39243 tuple2!40928)) )
))
(declare-fun lt!1369245 () Option!8918)

(declare-fun lt!1369257 () Unit!59940)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!546 (List!41781 List!41781 List!41781 List!41781) Unit!59940)

(assert (=> b!3924957 (= lt!1369257 (lemmaConcatSameAndSameSizesThenSameLists!546 lt!1369248 (_2!23598 (v!39243 lt!1369245)) lt!1369248 (_2!23598 lt!1369243)))))

(assert (=> b!3924957 (= (_2!23598 (v!39243 lt!1369245)) (_2!23598 lt!1369243))))

(declare-fun suffixResult!91 () List!41781)

(declare-fun suffixTokens!72 () List!41784)

(declare-fun lt!1369237 () Unit!59940)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!98 (LexerInterface!6087 List!41783 List!41781 List!41781 List!41784 List!41781) Unit!59940)

(assert (=> b!3924957 (= lt!1369237 (lemmaLexWithSmallerInputCannotProduceSameResults!98 thiss!20629 rules!2768 suffix!1176 (_2!23598 lt!1369243) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587824 () Bool)

(declare-fun lt!1369251 () tuple2!40926)

(assert (=> b!3924957 (= res!1587824 (not (= call!284698 lt!1369251)))))

(declare-fun e!2427612 () Bool)

(assert (=> b!3924957 (=> (not res!1587824) (not e!2427612))))

(assert (=> b!3924957 e!2427612))

(declare-fun b!3924958 () Bool)

(declare-fun res!1587833 () Bool)

(declare-fun e!2427616 () Bool)

(assert (=> b!3924958 (=> (not res!1587833) (not e!2427616))))

(declare-fun rulesInvariant!5430 (LexerInterface!6087 List!41783) Bool)

(assert (=> b!3924958 (= res!1587833 (rulesInvariant!5430 thiss!20629 rules!2768))))

(declare-fun tp!1194953 () Bool)

(declare-fun b!3924959 () Bool)

(declare-fun e!2427631 () Bool)

(declare-fun e!2427623 () Bool)

(declare-fun inv!55851 (Token!12134) Bool)

(assert (=> b!3924959 (= e!2427623 (and (inv!55851 (h!47080 suffixTokens!72)) e!2427631 tp!1194953))))

(declare-fun res!1587841 () Bool)

(assert (=> start!368080 (=> (not res!1587841) (not e!2427616))))

(get-info :version)

(assert (=> start!368080 (= res!1587841 ((_ is Lexer!6085) thiss!20629))))

(assert (=> start!368080 e!2427616))

(declare-fun e!2427606 () Bool)

(assert (=> start!368080 e!2427606))

(assert (=> start!368080 true))

(declare-fun e!2427630 () Bool)

(assert (=> start!368080 e!2427630))

(declare-fun e!2427610 () Bool)

(assert (=> start!368080 e!2427610))

(declare-fun e!2427627 () Bool)

(assert (=> start!368080 e!2427627))

(assert (=> start!368080 e!2427623))

(declare-fun e!2427609 () Bool)

(assert (=> start!368080 e!2427609))

(declare-fun b!3924960 () Bool)

(declare-fun res!1587826 () Bool)

(assert (=> b!3924960 (=> (not res!1587826) (not e!2427616))))

(declare-fun prefixTokens!80 () List!41784)

(declare-fun isEmpty!24818 (List!41784) Bool)

(assert (=> b!3924960 (= res!1587826 (not (isEmpty!24818 prefixTokens!80)))))

(declare-fun b!3924961 () Bool)

(declare-fun e!2427621 () Unit!59940)

(declare-fun Unit!59943 () Unit!59940)

(assert (=> b!3924961 (= e!2427621 Unit!59943)))

(declare-fun b!3924962 () Bool)

(declare-fun tp!1194960 () Bool)

(declare-fun e!2427613 () Bool)

(declare-fun e!2427611 () Bool)

(declare-fun inv!55848 (String!47358) Bool)

(declare-fun inv!55852 (TokenValueInjection!12884) Bool)

(assert (=> b!3924962 (= e!2427613 (and tp!1194960 (inv!55848 (tag!7358 (rule!9436 (h!47080 prefixTokens!80)))) (inv!55852 (transformation!6498 (rule!9436 (h!47080 prefixTokens!80)))) e!2427611))))

(declare-fun e!2427604 () Bool)

(assert (=> b!3924963 (= e!2427604 (and tp!1194954 tp!1194949))))

(declare-fun b!3924964 () Bool)

(declare-fun e!2427624 () Bool)

(assert (=> b!3924964 (= e!2427624 (= (size!31261 (_1!23598 (v!39243 lt!1369245))) (size!31262 (originalCharacters!7098 (_1!23598 (v!39243 lt!1369245))))))))

(declare-fun b!3924965 () Bool)

(declare-fun e!2427626 () Bool)

(assert (=> b!3924965 (= e!2427603 e!2427626)))

(declare-fun res!1587828 () Bool)

(assert (=> b!3924965 (=> res!1587828 e!2427626)))

(declare-fun lt!1369239 () List!41781)

(assert (=> b!3924965 (= res!1587828 (not (= lt!1369239 prefix!426)))))

(declare-fun lt!1369224 () List!41781)

(declare-fun ++!10753 (List!41781 List!41781) List!41781)

(assert (=> b!3924965 (= lt!1369239 (++!10753 lt!1369248 lt!1369224))))

(declare-fun getSuffix!2048 (List!41781 List!41781) List!41781)

(assert (=> b!3924965 (= lt!1369224 (getSuffix!2048 prefix!426 lt!1369248))))

(declare-fun b!3924966 () Bool)

(declare-fun tp_is_empty!19777 () Bool)

(declare-fun tp!1194955 () Bool)

(assert (=> b!3924966 (= e!2427630 (and tp_is_empty!19777 tp!1194955))))

(declare-fun b!3924967 () Bool)

(declare-fun e!2427622 () Bool)

(assert (=> b!3924967 (= e!2427616 e!2427622)))

(declare-fun res!1587838 () Bool)

(assert (=> b!3924967 (=> (not res!1587838) (not e!2427622))))

(declare-fun lt!1369229 () List!41784)

(declare-fun lt!1369254 () tuple2!40926)

(assert (=> b!3924967 (= res!1587838 (= lt!1369254 (tuple2!40927 lt!1369229 suffixResult!91)))))

(assert (=> b!3924967 (= lt!1369254 (lexList!1855 thiss!20629 rules!2768 lt!1369240))))

(declare-fun ++!10754 (List!41784 List!41784) List!41784)

(assert (=> b!3924967 (= lt!1369229 (++!10754 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3924967 (= lt!1369240 (++!10753 prefix!426 suffix!1176))))

(declare-fun b!3924968 () Bool)

(declare-fun lt!1369233 () List!41781)

(declare-fun lt!1369252 () List!41781)

(declare-fun e!2427614 () Bool)

(assert (=> b!3924968 (= e!2427614 (or (not (= lt!1369240 lt!1369233)) (= lt!1369240 lt!1369252)))))

(assert (=> b!3924968 (= lt!1369233 lt!1369252)))

(assert (=> b!3924968 (= lt!1369252 (++!10753 lt!1369248 (++!10753 lt!1369224 suffix!1176)))))

(declare-fun lt!1369234 () Unit!59940)

(declare-fun lemmaConcatAssociativity!2294 (List!41781 List!41781 List!41781) Unit!59940)

(assert (=> b!3924968 (= lt!1369234 (lemmaConcatAssociativity!2294 lt!1369248 lt!1369224 suffix!1176))))

(declare-fun b!3924969 () Bool)

(declare-fun res!1587830 () Bool)

(assert (=> b!3924969 (=> (not res!1587830) (not e!2427616))))

(declare-fun isEmpty!24819 (List!41781) Bool)

(assert (=> b!3924969 (= res!1587830 (not (isEmpty!24819 prefix!426)))))

(declare-fun b!3924970 () Bool)

(declare-fun c!681990 () Bool)

(declare-fun lt!1369244 () List!41784)

(assert (=> b!3924970 (= c!681990 (isEmpty!24818 lt!1369244))))

(declare-fun tail!6043 (List!41784) List!41784)

(assert (=> b!3924970 (= lt!1369244 (tail!6043 prefixTokens!80))))

(declare-fun e!2427598 () Unit!59940)

(assert (=> b!3924970 (= e!2427598 e!2427599)))

(declare-fun b!3924971 () Bool)

(assert (=> b!3924971 (= e!2427612 false)))

(declare-fun b!3924972 () Bool)

(assert (=> b!3924972 (= e!2427626 e!2427614)))

(declare-fun res!1587836 () Bool)

(assert (=> b!3924972 (=> res!1587836 e!2427614)))

(declare-fun lt!1369236 () List!41781)

(assert (=> b!3924972 (= res!1587836 (or (not (= lt!1369233 lt!1369240)) (not (= lt!1369233 lt!1369236))))))

(assert (=> b!3924972 (= lt!1369233 (++!10753 lt!1369239 suffix!1176))))

(declare-fun b!3924973 () Bool)

(declare-fun e!2427605 () Bool)

(assert (=> b!3924973 (= e!2427605 e!2427620)))

(declare-fun res!1587825 () Bool)

(assert (=> b!3924973 (=> res!1587825 e!2427620)))

(declare-fun lt!1369228 () Int)

(declare-fun lt!1369226 () Int)

(assert (=> b!3924973 (= res!1587825 (<= lt!1369228 lt!1369226))))

(declare-fun lt!1369256 () Unit!59940)

(declare-fun e!2427617 () Unit!59940)

(assert (=> b!3924973 (= lt!1369256 e!2427617)))

(declare-fun c!681989 () Bool)

(assert (=> b!3924973 (= c!681989 (= lt!1369228 lt!1369226))))

(declare-fun lt!1369242 () Unit!59940)

(assert (=> b!3924973 (= lt!1369242 e!2427621)))

(declare-fun c!681991 () Bool)

(assert (=> b!3924973 (= c!681991 (< lt!1369228 lt!1369226))))

(assert (=> b!3924973 (= lt!1369226 (size!31262 suffix!1176))))

(assert (=> b!3924973 (= lt!1369228 (size!31262 (_2!23598 (v!39243 lt!1369245))))))

(declare-fun b!3924974 () Bool)

(declare-fun Unit!59944 () Unit!59940)

(assert (=> b!3924974 (= e!2427617 Unit!59944)))

(declare-fun e!2427602 () Bool)

(declare-fun e!2427625 () Bool)

(declare-fun b!3924975 () Bool)

(declare-fun tp!1194957 () Bool)

(assert (=> b!3924975 (= e!2427625 (and tp!1194957 (inv!55848 (tag!7358 (rule!9436 (h!47080 suffixTokens!72)))) (inv!55852 (transformation!6498 (rule!9436 (h!47080 suffixTokens!72)))) e!2427602))))

(declare-fun b!3924976 () Bool)

(declare-fun tp!1194950 () Bool)

(assert (=> b!3924976 (= e!2427609 (and tp_is_empty!19777 tp!1194950))))

(declare-fun b!3924977 () Bool)

(declare-fun e!2427601 () Bool)

(assert (=> b!3924977 (= e!2427601 false)))

(declare-fun b!3924978 () Bool)

(declare-fun e!2427607 () Bool)

(assert (=> b!3924978 (= e!2427622 e!2427607)))

(declare-fun res!1587839 () Bool)

(assert (=> b!3924978 (=> (not res!1587839) (not e!2427607))))

(assert (=> b!3924978 (= res!1587839 (= (lexList!1855 thiss!20629 rules!2768 suffix!1176) lt!1369251))))

(assert (=> b!3924978 (= lt!1369251 (tuple2!40927 suffixTokens!72 suffixResult!91))))

(declare-fun b!3924979 () Bool)

(declare-fun Unit!59945 () Unit!59940)

(assert (=> b!3924979 (= e!2427598 Unit!59945)))

(declare-fun b!3924980 () Bool)

(declare-fun res!1587831 () Bool)

(assert (=> b!3924980 (=> res!1587831 e!2427605)))

(declare-fun lt!1369231 () tuple2!40926)

(assert (=> b!3924980 (= res!1587831 (not (= lt!1369254 (tuple2!40927 (++!10754 (Cons!41660 (_1!23598 (v!39243 lt!1369245)) Nil!41660) (_1!23597 lt!1369231)) (_2!23597 lt!1369231)))))))

(declare-fun b!3924981 () Bool)

(declare-fun e!2427619 () Bool)

(assert (=> b!3924981 (= e!2427619 (not e!2427605))))

(declare-fun res!1587835 () Bool)

(assert (=> b!3924981 (=> res!1587835 e!2427605)))

(assert (=> b!3924981 (= res!1587835 (not (= lt!1369236 lt!1369240)))))

(assert (=> b!3924981 (= lt!1369231 (lexList!1855 thiss!20629 rules!2768 (_2!23598 (v!39243 lt!1369245))))))

(declare-fun lt!1369230 () List!41781)

(declare-fun lt!1369232 () TokenValue!6728)

(assert (=> b!3924981 (and (= (size!31261 (_1!23598 (v!39243 lt!1369245))) lt!1369223) (= (originalCharacters!7098 (_1!23598 (v!39243 lt!1369245))) lt!1369248) (= (v!39243 lt!1369245) (tuple2!40929 (Token!12135 lt!1369232 (rule!9436 (_1!23598 (v!39243 lt!1369245))) lt!1369223 lt!1369248) lt!1369230)))))

(assert (=> b!3924981 (= lt!1369223 (size!31262 lt!1369248))))

(assert (=> b!3924981 e!2427624))

(declare-fun res!1587834 () Bool)

(assert (=> b!3924981 (=> (not res!1587834) (not e!2427624))))

(assert (=> b!3924981 (= res!1587834 (= (value!205827 (_1!23598 (v!39243 lt!1369245))) lt!1369232))))

(declare-fun apply!9737 (TokenValueInjection!12884 BalanceConc!25012) TokenValue!6728)

(declare-fun seqFromList!4765 (List!41781) BalanceConc!25012)

(assert (=> b!3924981 (= lt!1369232 (apply!9737 (transformation!6498 (rule!9436 (_1!23598 (v!39243 lt!1369245)))) (seqFromList!4765 lt!1369248)))))

(assert (=> b!3924981 (= (_2!23598 (v!39243 lt!1369245)) lt!1369230)))

(declare-fun lt!1369227 () Unit!59940)

(declare-fun lemmaSamePrefixThenSameSuffix!1814 (List!41781 List!41781 List!41781 List!41781 List!41781) Unit!59940)

(assert (=> b!3924981 (= lt!1369227 (lemmaSamePrefixThenSameSuffix!1814 lt!1369248 (_2!23598 (v!39243 lt!1369245)) lt!1369248 lt!1369230 lt!1369240))))

(assert (=> b!3924981 (= lt!1369230 (getSuffix!2048 lt!1369240 lt!1369248))))

(assert (=> b!3924981 (isPrefix!3593 lt!1369248 lt!1369236)))

(assert (=> b!3924981 (= lt!1369236 (++!10753 lt!1369248 (_2!23598 (v!39243 lt!1369245))))))

(declare-fun lt!1369238 () Unit!59940)

(assert (=> b!3924981 (= lt!1369238 (lemmaConcatTwoListThenFirstIsPrefix!2456 lt!1369248 (_2!23598 (v!39243 lt!1369245))))))

(declare-fun list!15481 (BalanceConc!25012) List!41781)

(declare-fun charsOf!4322 (Token!12134) BalanceConc!25012)

(assert (=> b!3924981 (= lt!1369248 (list!15481 (charsOf!4322 (_1!23598 (v!39243 lt!1369245)))))))

(declare-fun ruleValid!2446 (LexerInterface!6087 Rule!12796) Bool)

(assert (=> b!3924981 (ruleValid!2446 thiss!20629 (rule!9436 (_1!23598 (v!39243 lt!1369245))))))

(declare-fun lt!1369258 () Unit!59940)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1526 (LexerInterface!6087 Rule!12796 List!41783) Unit!59940)

(assert (=> b!3924981 (= lt!1369258 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1526 thiss!20629 (rule!9436 (_1!23598 (v!39243 lt!1369245))) rules!2768))))

(declare-fun lt!1369255 () Unit!59940)

(declare-fun lemmaCharactersSize!1155 (Token!12134) Unit!59940)

(assert (=> b!3924981 (= lt!1369255 (lemmaCharactersSize!1155 (_1!23598 (v!39243 lt!1369245))))))

(declare-fun tp!1194952 () Bool)

(declare-fun e!2427629 () Bool)

(declare-fun b!3924982 () Bool)

(assert (=> b!3924982 (= e!2427629 (and tp!1194952 (inv!55848 (tag!7358 (h!47079 rules!2768))) (inv!55852 (transformation!6498 (h!47079 rules!2768))) e!2427604))))

(declare-fun b!3924983 () Bool)

(declare-fun tp!1194956 () Bool)

(assert (=> b!3924983 (= e!2427606 (and tp_is_empty!19777 tp!1194956))))

(assert (=> b!3924984 (= e!2427602 (and tp!1194947 tp!1194959))))

(declare-fun b!3924985 () Bool)

(declare-fun Unit!59946 () Unit!59940)

(assert (=> b!3924985 (= e!2427617 Unit!59946)))

(declare-fun lt!1369259 () Unit!59940)

(assert (=> b!3924985 (= lt!1369259 (lemmaConcatTwoListThenFirstIsPrefix!2456 prefix!426 suffix!1176))))

(assert (=> b!3924985 (isPrefix!3593 prefix!426 lt!1369240)))

(declare-fun lt!1369249 () Unit!59940)

(declare-fun lemmaIsPrefixSameLengthThenSameList!789 (List!41781 List!41781 List!41781) Unit!59940)

(assert (=> b!3924985 (= lt!1369249 (lemmaIsPrefixSameLengthThenSameList!789 lt!1369248 prefix!426 lt!1369240))))

(assert (=> b!3924985 (= lt!1369248 prefix!426)))

(declare-fun lt!1369235 () Unit!59940)

(assert (=> b!3924985 (= lt!1369235 (lemmaSamePrefixThenSameSuffix!1814 lt!1369248 (_2!23598 (v!39243 lt!1369245)) prefix!426 suffix!1176 lt!1369240))))

(assert (=> b!3924985 false))

(declare-fun b!3924986 () Bool)

(declare-fun tp!1194951 () Bool)

(assert (=> b!3924986 (= e!2427610 (and e!2427629 tp!1194951))))

(declare-fun b!3924987 () Bool)

(declare-fun e!2427608 () Bool)

(declare-fun tp!1194944 () Bool)

(assert (=> b!3924987 (= e!2427627 (and (inv!55851 (h!47080 prefixTokens!80)) e!2427608 tp!1194944))))

(declare-fun b!3924988 () Bool)

(declare-fun Unit!59947 () Unit!59940)

(assert (=> b!3924988 (= e!2427599 Unit!59947)))

(declare-fun lt!1369250 () Unit!59940)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!98 (LexerInterface!6087 List!41783 List!41781 List!41781 List!41784 List!41781 List!41784) Unit!59940)

(assert (=> b!3924988 (= lt!1369250 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!98 thiss!20629 rules!2768 suffix!1176 (_2!23598 lt!1369243) suffixTokens!72 suffixResult!91 lt!1369244))))

(declare-fun res!1587840 () Bool)

(assert (=> b!3924988 (= res!1587840 (not (= call!284698 (tuple2!40927 (++!10754 lt!1369244 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3924988 (=> (not res!1587840) (not e!2427601))))

(assert (=> b!3924988 e!2427601))

(declare-fun b!3924989 () Bool)

(declare-fun res!1587837 () Bool)

(assert (=> b!3924989 (=> res!1587837 e!2427605)))

(assert (=> b!3924989 (= res!1587837 (or (not (= lt!1369231 (tuple2!40927 (_1!23597 lt!1369231) (_2!23597 lt!1369231)))) (= (_2!23598 (v!39243 lt!1369245)) suffix!1176)))))

(declare-fun b!3924990 () Bool)

(assert (=> b!3924990 (= e!2427607 e!2427619)))

(declare-fun res!1587832 () Bool)

(assert (=> b!3924990 (=> (not res!1587832) (not e!2427619))))

(assert (=> b!3924990 (= res!1587832 ((_ is Some!8917) lt!1369245))))

(declare-fun maxPrefix!3391 (LexerInterface!6087 List!41783 List!41781) Option!8918)

(assert (=> b!3924990 (= lt!1369245 (maxPrefix!3391 thiss!20629 rules!2768 lt!1369240))))

(declare-fun b!3924991 () Bool)

(declare-fun res!1587829 () Bool)

(assert (=> b!3924991 (=> res!1587829 e!2427620)))

(declare-fun head!8317 (List!41784) Token!12134)

(assert (=> b!3924991 (= res!1587829 (not (= (head!8317 prefixTokens!80) (_1!23598 (v!39243 lt!1369245)))))))

(declare-fun tp!1194958 () Bool)

(declare-fun b!3924992 () Bool)

(declare-fun inv!21 (TokenValue!6728) Bool)

(assert (=> b!3924992 (= e!2427631 (and (inv!21 (value!205827 (h!47080 suffixTokens!72))) e!2427625 tp!1194958))))

(declare-fun b!3924993 () Bool)

(declare-fun Unit!59948 () Unit!59940)

(assert (=> b!3924993 (= e!2427621 Unit!59948)))

(declare-fun lt!1369253 () Int)

(assert (=> b!3924993 (= lt!1369253 (size!31262 lt!1369240))))

(declare-fun lt!1369247 () Unit!59940)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1329 (LexerInterface!6087 List!41783 List!41781 List!41781 List!41781 Rule!12796) Unit!59940)

(assert (=> b!3924993 (= lt!1369247 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1329 thiss!20629 rules!2768 lt!1369248 lt!1369240 (_2!23598 (v!39243 lt!1369245)) (rule!9436 (_1!23598 (v!39243 lt!1369245)))))))

(declare-fun maxPrefixOneRule!2461 (LexerInterface!6087 Rule!12796 List!41781) Option!8918)

(assert (=> b!3924993 (= (maxPrefixOneRule!2461 thiss!20629 (rule!9436 (_1!23598 (v!39243 lt!1369245))) lt!1369240) (Some!8917 (tuple2!40929 (Token!12135 lt!1369232 (rule!9436 (_1!23598 (v!39243 lt!1369245))) lt!1369223 lt!1369248) (_2!23598 (v!39243 lt!1369245)))))))

(declare-fun get!13767 (Option!8918) tuple2!40928)

(assert (=> b!3924993 (= lt!1369243 (get!13767 lt!1369245))))

(declare-fun c!681988 () Bool)

(assert (=> b!3924993 (= c!681988 (< (size!31262 (_2!23598 lt!1369243)) lt!1369226))))

(declare-fun lt!1369246 () Unit!59940)

(assert (=> b!3924993 (= lt!1369246 e!2427598)))

(assert (=> b!3924993 false))

(declare-fun tp!1194945 () Bool)

(declare-fun b!3924994 () Bool)

(assert (=> b!3924994 (= e!2427608 (and (inv!21 (value!205827 (h!47080 prefixTokens!80))) e!2427613 tp!1194945))))

(assert (=> b!3924995 (= e!2427611 (and tp!1194946 tp!1194948))))

(declare-fun b!3924996 () Bool)

(declare-fun res!1587823 () Bool)

(assert (=> b!3924996 (=> (not res!1587823) (not e!2427616))))

(declare-fun isEmpty!24820 (List!41783) Bool)

(assert (=> b!3924996 (= res!1587823 (not (isEmpty!24820 rules!2768)))))

(assert (= (and start!368080 res!1587841) b!3924996))

(assert (= (and b!3924996 res!1587823) b!3924958))

(assert (= (and b!3924958 res!1587833) b!3924960))

(assert (= (and b!3924960 res!1587826) b!3924969))

(assert (= (and b!3924969 res!1587830) b!3924967))

(assert (= (and b!3924967 res!1587838) b!3924978))

(assert (= (and b!3924978 res!1587839) b!3924990))

(assert (= (and b!3924990 res!1587832) b!3924981))

(assert (= (and b!3924981 res!1587834) b!3924964))

(assert (= (and b!3924981 (not res!1587835)) b!3924980))

(assert (= (and b!3924980 (not res!1587831)) b!3924989))

(assert (= (and b!3924989 (not res!1587837)) b!3924973))

(assert (= (and b!3924973 c!681991) b!3924993))

(assert (= (and b!3924973 (not c!681991)) b!3924961))

(assert (= (and b!3924993 c!681988) b!3924970))

(assert (= (and b!3924993 (not c!681988)) b!3924979))

(assert (= (and b!3924970 c!681990) b!3924957))

(assert (= (and b!3924970 (not c!681990)) b!3924988))

(assert (= (and b!3924957 res!1587824) b!3924971))

(assert (= (and b!3924988 res!1587840) b!3924977))

(assert (= (or b!3924957 b!3924988) bm!284693))

(assert (= (and b!3924973 c!681989) b!3924985))

(assert (= (and b!3924973 (not c!681989)) b!3924974))

(assert (= (and b!3924973 (not res!1587825)) b!3924991))

(assert (= (and b!3924991 (not res!1587829)) b!3924956))

(assert (= (and b!3924956 (not res!1587827)) b!3924965))

(assert (= (and b!3924965 (not res!1587828)) b!3924972))

(assert (= (and b!3924972 (not res!1587836)) b!3924968))

(assert (= (and start!368080 ((_ is Cons!41657) suffixResult!91)) b!3924983))

(assert (= (and start!368080 ((_ is Cons!41657) suffix!1176)) b!3924966))

(assert (= b!3924982 b!3924963))

(assert (= b!3924986 b!3924982))

(assert (= (and start!368080 ((_ is Cons!41659) rules!2768)) b!3924986))

(assert (= b!3924962 b!3924995))

(assert (= b!3924994 b!3924962))

(assert (= b!3924987 b!3924994))

(assert (= (and start!368080 ((_ is Cons!41660) prefixTokens!80)) b!3924987))

(assert (= b!3924975 b!3924984))

(assert (= b!3924992 b!3924975))

(assert (= b!3924959 b!3924992))

(assert (= (and start!368080 ((_ is Cons!41660) suffixTokens!72)) b!3924959))

(assert (= (and start!368080 ((_ is Cons!41657) prefix!426)) b!3924976))

(declare-fun m!4489051 () Bool)

(assert (=> b!3924996 m!4489051))

(declare-fun m!4489053 () Bool)

(assert (=> bm!284693 m!4489053))

(declare-fun m!4489055 () Bool)

(assert (=> b!3924988 m!4489055))

(declare-fun m!4489057 () Bool)

(assert (=> b!3924988 m!4489057))

(declare-fun m!4489059 () Bool)

(assert (=> b!3924991 m!4489059))

(declare-fun m!4489061 () Bool)

(assert (=> b!3924975 m!4489061))

(declare-fun m!4489063 () Bool)

(assert (=> b!3924975 m!4489063))

(declare-fun m!4489065 () Bool)

(assert (=> b!3924970 m!4489065))

(declare-fun m!4489067 () Bool)

(assert (=> b!3924970 m!4489067))

(declare-fun m!4489069 () Bool)

(assert (=> b!3924994 m!4489069))

(declare-fun m!4489071 () Bool)

(assert (=> b!3924957 m!4489071))

(declare-fun m!4489073 () Bool)

(assert (=> b!3924957 m!4489073))

(declare-fun m!4489075 () Bool)

(assert (=> b!3924968 m!4489075))

(assert (=> b!3924968 m!4489075))

(declare-fun m!4489077 () Bool)

(assert (=> b!3924968 m!4489077))

(declare-fun m!4489079 () Bool)

(assert (=> b!3924968 m!4489079))

(declare-fun m!4489081 () Bool)

(assert (=> b!3924969 m!4489081))

(declare-fun m!4489083 () Bool)

(assert (=> b!3924965 m!4489083))

(declare-fun m!4489085 () Bool)

(assert (=> b!3924965 m!4489085))

(declare-fun m!4489087 () Bool)

(assert (=> b!3924987 m!4489087))

(declare-fun m!4489089 () Bool)

(assert (=> b!3924993 m!4489089))

(declare-fun m!4489091 () Bool)

(assert (=> b!3924993 m!4489091))

(declare-fun m!4489093 () Bool)

(assert (=> b!3924993 m!4489093))

(declare-fun m!4489095 () Bool)

(assert (=> b!3924993 m!4489095))

(declare-fun m!4489097 () Bool)

(assert (=> b!3924993 m!4489097))

(declare-fun m!4489099 () Bool)

(assert (=> b!3924972 m!4489099))

(declare-fun m!4489101 () Bool)

(assert (=> b!3924967 m!4489101))

(declare-fun m!4489103 () Bool)

(assert (=> b!3924967 m!4489103))

(declare-fun m!4489105 () Bool)

(assert (=> b!3924967 m!4489105))

(declare-fun m!4489107 () Bool)

(assert (=> b!3924980 m!4489107))

(declare-fun m!4489109 () Bool)

(assert (=> b!3924960 m!4489109))

(declare-fun m!4489111 () Bool)

(assert (=> b!3924990 m!4489111))

(declare-fun m!4489113 () Bool)

(assert (=> b!3924962 m!4489113))

(declare-fun m!4489115 () Bool)

(assert (=> b!3924962 m!4489115))

(declare-fun m!4489117 () Bool)

(assert (=> b!3924973 m!4489117))

(declare-fun m!4489119 () Bool)

(assert (=> b!3924973 m!4489119))

(declare-fun m!4489121 () Bool)

(assert (=> b!3924956 m!4489121))

(declare-fun m!4489123 () Bool)

(assert (=> b!3924956 m!4489123))

(declare-fun m!4489125 () Bool)

(assert (=> b!3924956 m!4489125))

(declare-fun m!4489127 () Bool)

(assert (=> b!3924956 m!4489127))

(declare-fun m!4489129 () Bool)

(assert (=> b!3924956 m!4489129))

(declare-fun m!4489131 () Bool)

(assert (=> b!3924959 m!4489131))

(declare-fun m!4489133 () Bool)

(assert (=> b!3924964 m!4489133))

(declare-fun m!4489135 () Bool)

(assert (=> b!3924982 m!4489135))

(declare-fun m!4489137 () Bool)

(assert (=> b!3924982 m!4489137))

(declare-fun m!4489139 () Bool)

(assert (=> b!3924958 m!4489139))

(declare-fun m!4489141 () Bool)

(assert (=> b!3924992 m!4489141))

(declare-fun m!4489143 () Bool)

(assert (=> b!3924981 m!4489143))

(declare-fun m!4489145 () Bool)

(assert (=> b!3924981 m!4489145))

(declare-fun m!4489147 () Bool)

(assert (=> b!3924981 m!4489147))

(declare-fun m!4489149 () Bool)

(assert (=> b!3924981 m!4489149))

(declare-fun m!4489151 () Bool)

(assert (=> b!3924981 m!4489151))

(declare-fun m!4489153 () Bool)

(assert (=> b!3924981 m!4489153))

(declare-fun m!4489155 () Bool)

(assert (=> b!3924981 m!4489155))

(declare-fun m!4489157 () Bool)

(assert (=> b!3924981 m!4489157))

(assert (=> b!3924981 m!4489151))

(declare-fun m!4489159 () Bool)

(assert (=> b!3924981 m!4489159))

(declare-fun m!4489161 () Bool)

(assert (=> b!3924981 m!4489161))

(declare-fun m!4489163 () Bool)

(assert (=> b!3924981 m!4489163))

(declare-fun m!4489165 () Bool)

(assert (=> b!3924981 m!4489165))

(declare-fun m!4489167 () Bool)

(assert (=> b!3924981 m!4489167))

(declare-fun m!4489169 () Bool)

(assert (=> b!3924981 m!4489169))

(assert (=> b!3924981 m!4489147))

(assert (=> b!3924985 m!4489125))

(assert (=> b!3924985 m!4489121))

(declare-fun m!4489171 () Bool)

(assert (=> b!3924985 m!4489171))

(declare-fun m!4489173 () Bool)

(assert (=> b!3924985 m!4489173))

(declare-fun m!4489175 () Bool)

(assert (=> b!3924978 m!4489175))

(check-sat (not b_next!107657) (not b_next!107663) (not b!3924986) b_and!299303 (not b!3924957) (not b!3924958) (not b!3924970) (not b_next!107661) (not b!3924959) (not b!3924972) b_and!299311 (not b!3924991) (not b!3924973) (not b!3924960) (not b!3924965) (not b!3924993) (not b!3924992) tp_is_empty!19777 (not bm!284693) (not b!3924996) (not b!3924968) (not b!3924981) (not b!3924983) (not b!3924978) (not b!3924966) (not b!3924969) b_and!299313 (not b!3924982) b_and!299309 (not b!3924980) (not b!3924976) (not b!3924956) b_and!299305 (not b!3924990) (not b!3924994) (not b!3924967) (not b!3924964) (not b!3924987) (not b!3924988) (not b!3924985) (not b_next!107655) b_and!299307 (not b!3924975) (not b!3924962) (not b_next!107653) (not b_next!107659))
(check-sat (not b_next!107657) (not b_next!107663) b_and!299303 b_and!299313 b_and!299309 (not b_next!107661) b_and!299305 b_and!299311 (not b_next!107655) b_and!299307 (not b_next!107653) (not b_next!107659))
