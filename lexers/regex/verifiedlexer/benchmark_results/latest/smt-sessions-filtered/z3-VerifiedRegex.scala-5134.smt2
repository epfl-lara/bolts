; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262820 () Bool)

(assert start!262820)

(declare-fun b!2707214 () Bool)

(declare-fun b_free!76441 () Bool)

(declare-fun b_next!77145 () Bool)

(assert (=> b!2707214 (= b_free!76441 (not b_next!77145))))

(declare-fun tp!856288 () Bool)

(declare-fun b_and!199873 () Bool)

(assert (=> b!2707214 (= tp!856288 b_and!199873)))

(declare-fun b_free!76443 () Bool)

(declare-fun b_next!77147 () Bool)

(assert (=> b!2707214 (= b_free!76443 (not b_next!77147))))

(declare-fun tp!856283 () Bool)

(declare-fun b_and!199875 () Bool)

(assert (=> b!2707214 (= tp!856283 b_and!199875)))

(declare-fun tp!856287 () Bool)

(declare-fun b!2707198 () Bool)

(declare-fun e!1706945 () Bool)

(declare-datatypes ((List!31381 0))(
  ( (Nil!31281) (Cons!31281 (h!36701 (_ BitVec 16)) (t!225829 List!31381)) )
))
(declare-datatypes ((TokenValue!5003 0))(
  ( (FloatLiteralValue!10006 (text!35466 List!31381)) (TokenValueExt!5002 (__x!20141 Int)) (Broken!25015 (value!153845 List!31381)) (Object!5102) (End!5003) (Def!5003) (Underscore!5003) (Match!5003) (Else!5003) (Error!5003) (Case!5003) (If!5003) (Extends!5003) (Abstract!5003) (Class!5003) (Val!5003) (DelimiterValue!10006 (del!5063 List!31381)) (KeywordValue!5009 (value!153846 List!31381)) (CommentValue!10006 (value!153847 List!31381)) (WhitespaceValue!10006 (value!153848 List!31381)) (IndentationValue!5003 (value!153849 List!31381)) (String!34914) (Int32!5003) (Broken!25016 (value!153850 List!31381)) (Boolean!5004) (Unit!45318) (OperatorValue!5006 (op!5063 List!31381)) (IdentifierValue!10006 (value!153851 List!31381)) (IdentifierValue!10007 (value!153852 List!31381)) (WhitespaceValue!10007 (value!153853 List!31381)) (True!10006) (False!10006) (Broken!25017 (value!153854 List!31381)) (Broken!25018 (value!153855 List!31381)) (True!10007) (RightBrace!5003) (RightBracket!5003) (Colon!5003) (Null!5003) (Comma!5003) (LeftBracket!5003) (False!10007) (LeftBrace!5003) (ImaginaryLiteralValue!5003 (text!35467 List!31381)) (StringLiteralValue!15009 (value!153856 List!31381)) (EOFValue!5003 (value!153857 List!31381)) (IdentValue!5003 (value!153858 List!31381)) (DelimiterValue!10007 (value!153859 List!31381)) (DedentValue!5003 (value!153860 List!31381)) (NewLineValue!5003 (value!153861 List!31381)) (IntegerValue!15009 (value!153862 (_ BitVec 32)) (text!35468 List!31381)) (IntegerValue!15010 (value!153863 Int) (text!35469 List!31381)) (Times!5003) (Or!5003) (Equal!5003) (Minus!5003) (Broken!25019 (value!153864 List!31381)) (And!5003) (Div!5003) (LessEqual!5003) (Mod!5003) (Concat!12936) (Not!5003) (Plus!5003) (SpaceValue!5003 (value!153865 List!31381)) (IntegerValue!15011 (value!153866 Int) (text!35470 List!31381)) (StringLiteralValue!15010 (text!35471 List!31381)) (FloatLiteralValue!10007 (text!35472 List!31381)) (BytesLiteralValue!5003 (value!153867 List!31381)) (CommentValue!10007 (value!153868 List!31381)) (StringLiteralValue!15011 (value!153869 List!31381)) (ErrorTokenValue!5003 (msg!5064 List!31381)) )
))
(declare-datatypes ((C!16024 0))(
  ( (C!16025 (val!9946 Int)) )
))
(declare-datatypes ((List!31382 0))(
  ( (Nil!31282) (Cons!31282 (h!36702 C!16024) (t!225830 List!31382)) )
))
(declare-datatypes ((IArray!19583 0))(
  ( (IArray!19584 (innerList!9849 List!31382)) )
))
(declare-datatypes ((Conc!9789 0))(
  ( (Node!9789 (left!24057 Conc!9789) (right!24387 Conc!9789) (csize!19808 Int) (cheight!10000 Int)) (Leaf!14924 (xs!12841 IArray!19583) (csize!19809 Int)) (Empty!9789) )
))
(declare-datatypes ((BalanceConc!19192 0))(
  ( (BalanceConc!19193 (c!436786 Conc!9789)) )
))
(declare-datatypes ((Regex!7933 0))(
  ( (ElementMatch!7933 (c!436787 C!16024)) (Concat!12937 (regOne!16378 Regex!7933) (regTwo!16378 Regex!7933)) (EmptyExpr!7933) (Star!7933 (reg!8262 Regex!7933)) (EmptyLang!7933) (Union!7933 (regOne!16379 Regex!7933) (regTwo!16379 Regex!7933)) )
))
(declare-datatypes ((String!34915 0))(
  ( (String!34916 (value!153870 String)) )
))
(declare-datatypes ((TokenValueInjection!9446 0))(
  ( (TokenValueInjection!9447 (toValue!6747 Int) (toChars!6606 Int)) )
))
(declare-datatypes ((Rule!9362 0))(
  ( (Rule!9363 (regex!4781 Regex!7933) (tag!5285 String!34915) (isSeparator!4781 Bool) (transformation!4781 TokenValueInjection!9446)) )
))
(declare-datatypes ((List!31383 0))(
  ( (Nil!31283) (Cons!31283 (h!36703 Rule!9362) (t!225831 List!31383)) )
))
(declare-fun rules!1182 () List!31383)

(declare-fun e!1706948 () Bool)

(declare-fun inv!42411 (String!34915) Bool)

(declare-fun inv!42417 (TokenValueInjection!9446) Bool)

(assert (=> b!2707198 (= e!1706945 (and tp!856287 (inv!42411 (tag!5285 (h!36703 rules!1182))) (inv!42417 (transformation!4781 (h!36703 rules!1182))) e!1706948))))

(declare-fun b!2707199 () Bool)

(declare-fun res!1136928 () Bool)

(declare-fun e!1706946 () Bool)

(assert (=> b!2707199 (=> (not res!1136928) (not e!1706946))))

(declare-datatypes ((LexerInterface!4377 0))(
  ( (LexerInterfaceExt!4374 (__x!20142 Int)) (Lexer!4375) )
))
(declare-fun thiss!11556 () LexerInterface!4377)

(declare-fun rulesInvariant!3862 (LexerInterface!4377 List!31383) Bool)

(assert (=> b!2707199 (= res!1136928 (rulesInvariant!3862 thiss!11556 rules!1182))))

(declare-fun b!2707200 () Bool)

(declare-fun e!1706942 () Bool)

(declare-datatypes ((Token!9024 0))(
  ( (Token!9025 (value!153871 TokenValue!5003) (rule!7201 Rule!9362) (size!24127 Int) (originalCharacters!5543 List!31382)) )
))
(declare-datatypes ((List!31384 0))(
  ( (Nil!31284) (Cons!31284 (h!36704 Token!9024) (t!225832 List!31384)) )
))
(declare-datatypes ((IArray!19585 0))(
  ( (IArray!19586 (innerList!9850 List!31384)) )
))
(declare-datatypes ((Conc!9790 0))(
  ( (Node!9790 (left!24058 Conc!9790) (right!24388 Conc!9790) (csize!19810 Int) (cheight!10001 Int)) (Leaf!14925 (xs!12842 IArray!19585) (csize!19811 Int)) (Empty!9790) )
))
(declare-datatypes ((BalanceConc!19194 0))(
  ( (BalanceConc!19195 (c!436788 Conc!9790)) )
))
(declare-fun acc!331 () BalanceConc!19194)

(declare-fun tp!856282 () Bool)

(declare-fun inv!42418 (Conc!9790) Bool)

(assert (=> b!2707200 (= e!1706942 (and (inv!42418 (c!436788 acc!331)) tp!856282))))

(declare-fun b!2707201 () Bool)

(declare-fun e!1706947 () Bool)

(assert (=> b!2707201 (= e!1706947 (not true))))

(declare-fun lt!957295 () BalanceConc!19192)

(declare-fun treated!9 () BalanceConc!19192)

(declare-fun lt!957297 () BalanceConc!19192)

(declare-fun ++!7718 (BalanceConc!19192 BalanceConc!19192) BalanceConc!19192)

(assert (=> b!2707201 (= lt!957295 (++!7718 treated!9 lt!957297))))

(declare-fun lt!957309 () List!31384)

(declare-fun lt!957291 () List!31382)

(declare-datatypes ((tuple2!30910 0))(
  ( (tuple2!30911 (_1!18087 List!31384) (_2!18087 List!31382)) )
))
(declare-fun lexList!1208 (LexerInterface!4377 List!31383 List!31382) tuple2!30910)

(assert (=> b!2707201 (= (lexList!1208 thiss!11556 rules!1182 lt!957291) (tuple2!30911 lt!957309 Nil!31282))))

(declare-datatypes ((Unit!45319 0))(
  ( (Unit!45320) )
))
(declare-fun lt!957301 () Unit!45319)

(declare-fun lt!957292 () List!31382)

(declare-datatypes ((tuple2!30912 0))(
  ( (tuple2!30913 (_1!18088 BalanceConc!19194) (_2!18088 BalanceConc!19192)) )
))
(declare-fun lt!957294 () tuple2!30912)

(declare-fun lt!957298 () List!31384)

(declare-fun lemmaLexThenLexPrefix!416 (LexerInterface!4377 List!31383 List!31382 List!31382 List!31384 List!31384 List!31382) Unit!45319)

(declare-fun list!11820 (BalanceConc!19192) List!31382)

(assert (=> b!2707201 (= lt!957301 (lemmaLexThenLexPrefix!416 thiss!11556 rules!1182 lt!957291 lt!957292 lt!957309 lt!957298 (list!11820 (_2!18088 lt!957294))))))

(declare-datatypes ((tuple2!30914 0))(
  ( (tuple2!30915 (_1!18089 Token!9024) (_2!18089 BalanceConc!19192)) )
))
(declare-datatypes ((Option!6167 0))(
  ( (None!6166) (Some!6166 (v!32978 tuple2!30914)) )
))
(declare-fun lt!957293 () Option!6167)

(declare-fun list!11821 (BalanceConc!19194) List!31384)

(declare-fun append!790 (BalanceConc!19194 Token!9024) BalanceConc!19194)

(assert (=> b!2707201 (= lt!957309 (list!11821 (append!790 acc!331 (_1!18089 (v!32978 lt!957293)))))))

(declare-fun lt!957296 () List!31384)

(declare-fun lt!957306 () List!31384)

(declare-fun ++!7719 (List!31384 List!31384) List!31384)

(assert (=> b!2707201 (= (++!7719 (++!7719 lt!957296 lt!957306) lt!957298) (++!7719 lt!957296 (++!7719 lt!957306 lt!957298)))))

(declare-fun lt!957308 () Unit!45319)

(declare-fun lemmaConcatAssociativity!1579 (List!31384 List!31384 List!31384) Unit!45319)

(assert (=> b!2707201 (= lt!957308 (lemmaConcatAssociativity!1579 lt!957296 lt!957306 lt!957298))))

(assert (=> b!2707201 (= lt!957298 (list!11821 (_1!18088 lt!957294)))))

(assert (=> b!2707201 (= lt!957306 (Cons!31284 (_1!18089 (v!32978 lt!957293)) Nil!31284))))

(declare-fun e!1706941 () Bool)

(assert (=> b!2707201 e!1706941))

(declare-fun res!1136932 () Bool)

(assert (=> b!2707201 (=> (not res!1136932) (not e!1706941))))

(declare-fun lt!957304 () List!31382)

(declare-fun lt!957299 () List!31382)

(declare-fun ++!7720 (List!31382 List!31382) List!31382)

(assert (=> b!2707201 (= res!1136932 (= (++!7720 lt!957291 lt!957292) (++!7720 lt!957299 (++!7720 lt!957304 lt!957292))))))

(assert (=> b!2707201 (= lt!957291 (++!7720 lt!957299 lt!957304))))

(declare-fun lt!957307 () Unit!45319)

(declare-fun lemmaConcatAssociativity!1580 (List!31382 List!31382 List!31382) Unit!45319)

(assert (=> b!2707201 (= lt!957307 (lemmaConcatAssociativity!1580 lt!957299 lt!957304 lt!957292))))

(assert (=> b!2707201 (= lt!957292 (list!11820 (_2!18089 (v!32978 lt!957293))))))

(assert (=> b!2707201 (= lt!957304 (list!11820 lt!957297))))

(declare-fun charsOf!3004 (Token!9024) BalanceConc!19192)

(assert (=> b!2707201 (= lt!957297 (charsOf!3004 (_1!18089 (v!32978 lt!957293))))))

(declare-fun lexRec!637 (LexerInterface!4377 List!31383 BalanceConc!19192) tuple2!30912)

(assert (=> b!2707201 (= lt!957294 (lexRec!637 thiss!11556 rules!1182 (_2!18089 (v!32978 lt!957293))))))

(declare-fun b!2707202 () Bool)

(declare-fun e!1706944 () Bool)

(declare-fun tp!856289 () Bool)

(assert (=> b!2707202 (= e!1706944 (and e!1706945 tp!856289))))

(declare-fun res!1136925 () Bool)

(assert (=> start!262820 (=> (not res!1136925) (not e!1706946))))

(get-info :version)

(assert (=> start!262820 (= res!1136925 ((_ is Lexer!4375) thiss!11556))))

(assert (=> start!262820 e!1706946))

(declare-fun e!1706950 () Bool)

(declare-fun inv!42419 (BalanceConc!19192) Bool)

(assert (=> start!262820 (and (inv!42419 treated!9) e!1706950)))

(declare-fun input!603 () BalanceConc!19192)

(declare-fun e!1706953 () Bool)

(assert (=> start!262820 (and (inv!42419 input!603) e!1706953)))

(assert (=> start!262820 true))

(assert (=> start!262820 e!1706944))

(declare-fun totalInput!328 () BalanceConc!19192)

(declare-fun e!1706943 () Bool)

(assert (=> start!262820 (and (inv!42419 totalInput!328) e!1706943)))

(declare-fun inv!42420 (BalanceConc!19194) Bool)

(assert (=> start!262820 (and (inv!42420 acc!331) e!1706942)))

(declare-fun b!2707203 () Bool)

(declare-fun tp!856284 () Bool)

(declare-fun inv!42421 (Conc!9789) Bool)

(assert (=> b!2707203 (= e!1706943 (and (inv!42421 (c!436786 totalInput!328)) tp!856284))))

(declare-fun b!2707204 () Bool)

(declare-fun e!1706952 () Bool)

(assert (=> b!2707204 (= e!1706952 e!1706947)))

(declare-fun res!1136933 () Bool)

(assert (=> b!2707204 (=> (not res!1136933) (not e!1706947))))

(assert (=> b!2707204 (= res!1136933 ((_ is Some!6166) lt!957293))))

(declare-fun maxPrefixZipperSequence!1025 (LexerInterface!4377 List!31383 BalanceConc!19192) Option!6167)

(assert (=> b!2707204 (= lt!957293 (maxPrefixZipperSequence!1025 thiss!11556 rules!1182 input!603))))

(declare-fun b!2707205 () Bool)

(declare-fun e!1706940 () Bool)

(assert (=> b!2707205 (= e!1706946 e!1706940)))

(declare-fun res!1136931 () Bool)

(assert (=> b!2707205 (=> (not res!1136931) (not e!1706940))))

(assert (=> b!2707205 (= res!1136931 (= (list!11820 totalInput!328) (++!7720 lt!957299 (list!11820 input!603))))))

(assert (=> b!2707205 (= lt!957299 (list!11820 treated!9))))

(declare-fun b!2707206 () Bool)

(declare-fun res!1136929 () Bool)

(assert (=> b!2707206 (=> (not res!1136929) (not e!1706946))))

(declare-fun isEmpty!17815 (List!31383) Bool)

(assert (=> b!2707206 (= res!1136929 (not (isEmpty!17815 rules!1182)))))

(declare-fun b!2707207 () Bool)

(declare-fun e!1706951 () Bool)

(assert (=> b!2707207 (= e!1706951 e!1706952)))

(declare-fun res!1136926 () Bool)

(assert (=> b!2707207 (=> (not res!1136926) (not e!1706952))))

(declare-fun lt!957300 () tuple2!30912)

(declare-fun lt!957303 () tuple2!30912)

(declare-fun ++!7721 (BalanceConc!19194 BalanceConc!19194) BalanceConc!19194)

(assert (=> b!2707207 (= res!1136926 (= (list!11821 (_1!18088 lt!957300)) (list!11821 (++!7721 acc!331 (_1!18088 lt!957303)))))))

(assert (=> b!2707207 (= lt!957303 (lexRec!637 thiss!11556 rules!1182 input!603))))

(assert (=> b!2707207 (= lt!957300 (lexRec!637 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2707208 () Bool)

(declare-fun res!1136927 () Bool)

(assert (=> b!2707208 (=> (not res!1136927) (not e!1706952))))

(assert (=> b!2707208 (= res!1136927 (= (list!11820 (_2!18088 lt!957300)) (list!11820 (_2!18088 lt!957303))))))

(declare-fun b!2707209 () Bool)

(declare-fun prepend!1101 (BalanceConc!19194 Token!9024) BalanceConc!19194)

(assert (=> b!2707209 (= e!1706941 (= lt!957303 (tuple2!30913 (prepend!1101 (_1!18088 lt!957294) (_1!18089 (v!32978 lt!957293))) (_2!18088 lt!957294))))))

(declare-fun b!2707210 () Bool)

(declare-fun res!1136930 () Bool)

(assert (=> b!2707210 (=> (not res!1136930) (not e!1706951))))

(declare-fun lt!957305 () tuple2!30912)

(declare-fun isEmpty!17816 (List!31382) Bool)

(assert (=> b!2707210 (= res!1136930 (isEmpty!17816 (list!11820 (_2!18088 lt!957305))))))

(declare-fun b!2707211 () Bool)

(assert (=> b!2707211 (= e!1706940 e!1706951)))

(declare-fun res!1136924 () Bool)

(assert (=> b!2707211 (=> (not res!1136924) (not e!1706951))))

(declare-fun lt!957302 () List!31384)

(assert (=> b!2707211 (= res!1136924 (= lt!957302 lt!957296))))

(assert (=> b!2707211 (= lt!957296 (list!11821 acc!331))))

(assert (=> b!2707211 (= lt!957302 (list!11821 (_1!18088 lt!957305)))))

(assert (=> b!2707211 (= lt!957305 (lexRec!637 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2707212 () Bool)

(declare-fun tp!856286 () Bool)

(assert (=> b!2707212 (= e!1706953 (and (inv!42421 (c!436786 input!603)) tp!856286))))

(declare-fun b!2707213 () Bool)

(declare-fun tp!856285 () Bool)

(assert (=> b!2707213 (= e!1706950 (and (inv!42421 (c!436786 treated!9)) tp!856285))))

(assert (=> b!2707214 (= e!1706948 (and tp!856288 tp!856283))))

(assert (= (and start!262820 res!1136925) b!2707206))

(assert (= (and b!2707206 res!1136929) b!2707199))

(assert (= (and b!2707199 res!1136928) b!2707205))

(assert (= (and b!2707205 res!1136931) b!2707211))

(assert (= (and b!2707211 res!1136924) b!2707210))

(assert (= (and b!2707210 res!1136930) b!2707207))

(assert (= (and b!2707207 res!1136926) b!2707208))

(assert (= (and b!2707208 res!1136927) b!2707204))

(assert (= (and b!2707204 res!1136933) b!2707201))

(assert (= (and b!2707201 res!1136932) b!2707209))

(assert (= start!262820 b!2707213))

(assert (= start!262820 b!2707212))

(assert (= b!2707198 b!2707214))

(assert (= b!2707202 b!2707198))

(assert (= (and start!262820 ((_ is Cons!31283) rules!1182)) b!2707202))

(assert (= start!262820 b!2707203))

(assert (= start!262820 b!2707200))

(declare-fun m!3097641 () Bool)

(assert (=> b!2707205 m!3097641))

(declare-fun m!3097643 () Bool)

(assert (=> b!2707205 m!3097643))

(assert (=> b!2707205 m!3097643))

(declare-fun m!3097645 () Bool)

(assert (=> b!2707205 m!3097645))

(declare-fun m!3097647 () Bool)

(assert (=> b!2707205 m!3097647))

(declare-fun m!3097649 () Bool)

(assert (=> b!2707199 m!3097649))

(declare-fun m!3097651 () Bool)

(assert (=> b!2707210 m!3097651))

(assert (=> b!2707210 m!3097651))

(declare-fun m!3097653 () Bool)

(assert (=> b!2707210 m!3097653))

(declare-fun m!3097655 () Bool)

(assert (=> b!2707206 m!3097655))

(declare-fun m!3097657 () Bool)

(assert (=> b!2707208 m!3097657))

(declare-fun m!3097659 () Bool)

(assert (=> b!2707208 m!3097659))

(declare-fun m!3097661 () Bool)

(assert (=> b!2707212 m!3097661))

(declare-fun m!3097663 () Bool)

(assert (=> start!262820 m!3097663))

(declare-fun m!3097665 () Bool)

(assert (=> start!262820 m!3097665))

(declare-fun m!3097667 () Bool)

(assert (=> start!262820 m!3097667))

(declare-fun m!3097669 () Bool)

(assert (=> start!262820 m!3097669))

(declare-fun m!3097671 () Bool)

(assert (=> b!2707211 m!3097671))

(declare-fun m!3097673 () Bool)

(assert (=> b!2707211 m!3097673))

(declare-fun m!3097675 () Bool)

(assert (=> b!2707211 m!3097675))

(declare-fun m!3097677 () Bool)

(assert (=> b!2707203 m!3097677))

(declare-fun m!3097679 () Bool)

(assert (=> b!2707209 m!3097679))

(declare-fun m!3097681 () Bool)

(assert (=> b!2707198 m!3097681))

(declare-fun m!3097683 () Bool)

(assert (=> b!2707198 m!3097683))

(declare-fun m!3097685 () Bool)

(assert (=> b!2707201 m!3097685))

(declare-fun m!3097687 () Bool)

(assert (=> b!2707201 m!3097687))

(declare-fun m!3097689 () Bool)

(assert (=> b!2707201 m!3097689))

(declare-fun m!3097691 () Bool)

(assert (=> b!2707201 m!3097691))

(declare-fun m!3097693 () Bool)

(assert (=> b!2707201 m!3097693))

(declare-fun m!3097695 () Bool)

(assert (=> b!2707201 m!3097695))

(declare-fun m!3097697 () Bool)

(assert (=> b!2707201 m!3097697))

(declare-fun m!3097699 () Bool)

(assert (=> b!2707201 m!3097699))

(declare-fun m!3097701 () Bool)

(assert (=> b!2707201 m!3097701))

(declare-fun m!3097703 () Bool)

(assert (=> b!2707201 m!3097703))

(declare-fun m!3097705 () Bool)

(assert (=> b!2707201 m!3097705))

(assert (=> b!2707201 m!3097693))

(declare-fun m!3097707 () Bool)

(assert (=> b!2707201 m!3097707))

(declare-fun m!3097709 () Bool)

(assert (=> b!2707201 m!3097709))

(assert (=> b!2707201 m!3097689))

(declare-fun m!3097711 () Bool)

(assert (=> b!2707201 m!3097711))

(declare-fun m!3097713 () Bool)

(assert (=> b!2707201 m!3097713))

(assert (=> b!2707201 m!3097711))

(declare-fun m!3097715 () Bool)

(assert (=> b!2707201 m!3097715))

(assert (=> b!2707201 m!3097697))

(declare-fun m!3097717 () Bool)

(assert (=> b!2707201 m!3097717))

(declare-fun m!3097719 () Bool)

(assert (=> b!2707201 m!3097719))

(assert (=> b!2707201 m!3097685))

(declare-fun m!3097721 () Bool)

(assert (=> b!2707201 m!3097721))

(declare-fun m!3097723 () Bool)

(assert (=> b!2707201 m!3097723))

(declare-fun m!3097725 () Bool)

(assert (=> b!2707201 m!3097725))

(declare-fun m!3097727 () Bool)

(assert (=> b!2707207 m!3097727))

(declare-fun m!3097729 () Bool)

(assert (=> b!2707207 m!3097729))

(declare-fun m!3097731 () Bool)

(assert (=> b!2707207 m!3097731))

(declare-fun m!3097733 () Bool)

(assert (=> b!2707207 m!3097733))

(assert (=> b!2707207 m!3097733))

(declare-fun m!3097735 () Bool)

(assert (=> b!2707207 m!3097735))

(declare-fun m!3097737 () Bool)

(assert (=> b!2707213 m!3097737))

(declare-fun m!3097739 () Bool)

(assert (=> b!2707204 m!3097739))

(declare-fun m!3097741 () Bool)

(assert (=> b!2707200 m!3097741))

(check-sat (not b!2707206) (not b_next!77145) (not b!2707200) (not b!2707208) (not b!2707199) (not b_next!77147) (not b!2707209) b_and!199873 (not start!262820) (not b!2707210) (not b!2707203) (not b!2707202) (not b!2707211) (not b!2707205) (not b!2707201) (not b!2707213) b_and!199875 (not b!2707204) (not b!2707198) (not b!2707207) (not b!2707212))
(check-sat b_and!199875 b_and!199873 (not b_next!77147) (not b_next!77145))
