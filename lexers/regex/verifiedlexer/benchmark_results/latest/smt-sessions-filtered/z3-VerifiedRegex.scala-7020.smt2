; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372744 () Bool)

(assert start!372744)

(declare-fun b!3962838 () Bool)

(declare-fun b_free!109485 () Bool)

(declare-fun b_next!110189 () Bool)

(assert (=> b!3962838 (= b_free!109485 (not b_next!110189))))

(declare-fun tp!1207948 () Bool)

(declare-fun b_and!304315 () Bool)

(assert (=> b!3962838 (= tp!1207948 b_and!304315)))

(declare-fun b_free!109487 () Bool)

(declare-fun b_next!110191 () Bool)

(assert (=> b!3962838 (= b_free!109487 (not b_next!110191))))

(declare-fun tp!1207949 () Bool)

(declare-fun b_and!304317 () Bool)

(assert (=> b!3962838 (= tp!1207949 b_and!304317)))

(declare-fun b!3962862 () Bool)

(declare-fun b_free!109489 () Bool)

(declare-fun b_next!110193 () Bool)

(assert (=> b!3962862 (= b_free!109489 (not b_next!110193))))

(declare-fun tp!1207943 () Bool)

(declare-fun b_and!304319 () Bool)

(assert (=> b!3962862 (= tp!1207943 b_and!304319)))

(declare-fun b_free!109491 () Bool)

(declare-fun b_next!110195 () Bool)

(assert (=> b!3962862 (= b_free!109491 (not b_next!110195))))

(declare-fun tp!1207945 () Bool)

(declare-fun b_and!304321 () Bool)

(assert (=> b!3962862 (= tp!1207945 b_and!304321)))

(declare-fun b!3962846 () Bool)

(declare-fun b_free!109493 () Bool)

(declare-fun b_next!110197 () Bool)

(assert (=> b!3962846 (= b_free!109493 (not b_next!110197))))

(declare-fun tp!1207941 () Bool)

(declare-fun b_and!304323 () Bool)

(assert (=> b!3962846 (= tp!1207941 b_and!304323)))

(declare-fun b_free!109495 () Bool)

(declare-fun b_next!110199 () Bool)

(assert (=> b!3962846 (= b_free!109495 (not b_next!110199))))

(declare-fun tp!1207947 () Bool)

(declare-fun b_and!304325 () Bool)

(assert (=> b!3962846 (= tp!1207947 b_and!304325)))

(declare-fun b!3962827 () Bool)

(declare-fun e!2454188 () Bool)

(declare-fun e!2454174 () Bool)

(assert (=> b!3962827 (= e!2454188 e!2454174)))

(declare-fun res!1603942 () Bool)

(assert (=> b!3962827 (=> res!1603942 e!2454174)))

(declare-datatypes ((C!23252 0))(
  ( (C!23253 (val!13720 Int)) )
))
(declare-datatypes ((List!42363 0))(
  ( (Nil!42239) (Cons!42239 (h!47659 C!23252) (t!330026 List!42363)) )
))
(declare-fun lt!1386939 () List!42363)

(declare-fun lt!1386933 () List!42363)

(declare-fun lt!1386938 () List!42363)

(assert (=> b!3962827 (= res!1603942 (or (not (= lt!1386933 lt!1386938)) (not (= lt!1386933 lt!1386939))))))

(declare-fun lt!1386949 () List!42363)

(declare-fun suffix!1176 () List!42363)

(declare-fun ++!11013 (List!42363 List!42363) List!42363)

(assert (=> b!3962827 (= lt!1386933 (++!11013 lt!1386949 suffix!1176))))

(declare-fun b!3962828 () Bool)

(declare-fun e!2454179 () Bool)

(declare-fun e!2454185 () Bool)

(declare-fun tp!1207942 () Bool)

(assert (=> b!3962828 (= e!2454179 (and e!2454185 tp!1207942))))

(declare-fun b!3962829 () Bool)

(declare-fun e!2454156 () Bool)

(declare-fun tp!1207952 () Bool)

(declare-datatypes ((List!42364 0))(
  ( (Nil!42240) (Cons!42240 (h!47660 (_ BitVec 16)) (t!330027 List!42364)) )
))
(declare-datatypes ((TokenValue!6858 0))(
  ( (FloatLiteralValue!13716 (text!48451 List!42364)) (TokenValueExt!6857 (__x!25933 Int)) (Broken!34290 (value!209506 List!42364)) (Object!6981) (End!6858) (Def!6858) (Underscore!6858) (Match!6858) (Else!6858) (Error!6858) (Case!6858) (If!6858) (Extends!6858) (Abstract!6858) (Class!6858) (Val!6858) (DelimiterValue!13716 (del!6918 List!42364)) (KeywordValue!6864 (value!209507 List!42364)) (CommentValue!13716 (value!209508 List!42364)) (WhitespaceValue!13716 (value!209509 List!42364)) (IndentationValue!6858 (value!209510 List!42364)) (String!48007) (Int32!6858) (Broken!34291 (value!209511 List!42364)) (Boolean!6859) (Unit!60814) (OperatorValue!6861 (op!6918 List!42364)) (IdentifierValue!13716 (value!209512 List!42364)) (IdentifierValue!13717 (value!209513 List!42364)) (WhitespaceValue!13717 (value!209514 List!42364)) (True!13716) (False!13716) (Broken!34292 (value!209515 List!42364)) (Broken!34293 (value!209516 List!42364)) (True!13717) (RightBrace!6858) (RightBracket!6858) (Colon!6858) (Null!6858) (Comma!6858) (LeftBracket!6858) (False!13717) (LeftBrace!6858) (ImaginaryLiteralValue!6858 (text!48452 List!42364)) (StringLiteralValue!20574 (value!209517 List!42364)) (EOFValue!6858 (value!209518 List!42364)) (IdentValue!6858 (value!209519 List!42364)) (DelimiterValue!13717 (value!209520 List!42364)) (DedentValue!6858 (value!209521 List!42364)) (NewLineValue!6858 (value!209522 List!42364)) (IntegerValue!20574 (value!209523 (_ BitVec 32)) (text!48453 List!42364)) (IntegerValue!20575 (value!209524 Int) (text!48454 List!42364)) (Times!6858) (Or!6858) (Equal!6858) (Minus!6858) (Broken!34294 (value!209525 List!42364)) (And!6858) (Div!6858) (LessEqual!6858) (Mod!6858) (Concat!18391) (Not!6858) (Plus!6858) (SpaceValue!6858 (value!209526 List!42364)) (IntegerValue!20576 (value!209527 Int) (text!48455 List!42364)) (StringLiteralValue!20575 (text!48456 List!42364)) (FloatLiteralValue!13717 (text!48457 List!42364)) (BytesLiteralValue!6858 (value!209528 List!42364)) (CommentValue!13717 (value!209529 List!42364)) (StringLiteralValue!20576 (value!209530 List!42364)) (ErrorTokenValue!6858 (msg!6919 List!42364)) )
))
(declare-datatypes ((Regex!11533 0))(
  ( (ElementMatch!11533 (c!687564 C!23252)) (Concat!18392 (regOne!23578 Regex!11533) (regTwo!23578 Regex!11533)) (EmptyExpr!11533) (Star!11533 (reg!11862 Regex!11533)) (EmptyLang!11533) (Union!11533 (regOne!23579 Regex!11533) (regTwo!23579 Regex!11533)) )
))
(declare-datatypes ((String!48008 0))(
  ( (String!48009 (value!209531 String)) )
))
(declare-datatypes ((IArray!25683 0))(
  ( (IArray!25684 (innerList!12899 List!42363)) )
))
(declare-datatypes ((Conc!12839 0))(
  ( (Node!12839 (left!32035 Conc!12839) (right!32365 Conc!12839) (csize!25908 Int) (cheight!13050 Int)) (Leaf!19860 (xs!16145 IArray!25683) (csize!25909 Int)) (Empty!12839) )
))
(declare-datatypes ((BalanceConc!25272 0))(
  ( (BalanceConc!25273 (c!687565 Conc!12839)) )
))
(declare-datatypes ((TokenValueInjection!13144 0))(
  ( (TokenValueInjection!13145 (toValue!9108 Int) (toChars!8967 Int)) )
))
(declare-datatypes ((Rule!13056 0))(
  ( (Rule!13057 (regex!6628 Regex!11533) (tag!7488 String!48008) (isSeparator!6628 Bool) (transformation!6628 TokenValueInjection!13144)) )
))
(declare-datatypes ((Token!12394 0))(
  ( (Token!12395 (value!209532 TokenValue!6858) (rule!9610 Rule!13056) (size!31622 Int) (originalCharacters!7228 List!42363)) )
))
(declare-datatypes ((List!42365 0))(
  ( (Nil!42241) (Cons!42241 (h!47661 Token!12394) (t!330028 List!42365)) )
))
(declare-fun suffixTokens!72 () List!42365)

(declare-fun e!2454170 () Bool)

(declare-fun inv!21 (TokenValue!6858) Bool)

(assert (=> b!3962829 (= e!2454170 (and (inv!21 (value!209532 (h!47661 suffixTokens!72))) e!2454156 tp!1207952))))

(declare-fun res!1603953 () Bool)

(declare-fun e!2454151 () Bool)

(assert (=> start!372744 (=> (not res!1603953) (not e!2454151))))

(declare-datatypes ((LexerInterface!6217 0))(
  ( (LexerInterfaceExt!6214 (__x!25934 Int)) (Lexer!6215) )
))
(declare-fun thiss!20629 () LexerInterface!6217)

(get-info :version)

(assert (=> start!372744 (= res!1603953 ((_ is Lexer!6215) thiss!20629))))

(assert (=> start!372744 e!2454151))

(declare-fun e!2454164 () Bool)

(assert (=> start!372744 e!2454164))

(assert (=> start!372744 true))

(declare-fun e!2454153 () Bool)

(assert (=> start!372744 e!2454153))

(assert (=> start!372744 e!2454179))

(declare-fun e!2454171 () Bool)

(assert (=> start!372744 e!2454171))

(declare-fun e!2454150 () Bool)

(assert (=> start!372744 e!2454150))

(declare-fun e!2454169 () Bool)

(assert (=> start!372744 e!2454169))

(declare-fun b!3962830 () Bool)

(declare-fun e!2454178 () Bool)

(declare-datatypes ((tuple2!41534 0))(
  ( (tuple2!41535 (_1!23901 Token!12394) (_2!23901 List!42363)) )
))
(declare-datatypes ((Option!9048 0))(
  ( (None!9047) (Some!9047 (v!39393 tuple2!41534)) )
))
(declare-fun lt!1386960 () Option!9048)

(declare-fun isEmpty!25268 (List!42363) Bool)

(assert (=> b!3962830 (= e!2454178 (not (isEmpty!25268 (_2!23901 (v!39393 lt!1386960)))))))

(declare-fun b!3962831 () Bool)

(declare-fun e!2454173 () Bool)

(assert (=> b!3962831 (= e!2454173 false)))

(declare-fun b!3962832 () Bool)

(declare-fun e!2454167 () Bool)

(declare-fun e!2454181 () Bool)

(assert (=> b!3962832 (= e!2454167 e!2454181)))

(declare-fun res!1603951 () Bool)

(assert (=> b!3962832 (=> (not res!1603951) (not e!2454181))))

(assert (=> b!3962832 (= res!1603951 ((_ is Some!9047) lt!1386960))))

(declare-datatypes ((List!42366 0))(
  ( (Nil!42242) (Cons!42242 (h!47662 Rule!13056) (t!330029 List!42366)) )
))
(declare-fun rules!2768 () List!42366)

(declare-fun maxPrefix!3521 (LexerInterface!6217 List!42366 List!42363) Option!9048)

(assert (=> b!3962832 (= lt!1386960 (maxPrefix!3521 thiss!20629 rules!2768 lt!1386938))))

(declare-fun b!3962833 () Bool)

(declare-fun tp_is_empty!20037 () Bool)

(declare-fun tp!1207939 () Bool)

(assert (=> b!3962833 (= e!2454153 (and tp_is_empty!20037 tp!1207939))))

(declare-fun b!3962834 () Bool)

(declare-fun tp!1207940 () Bool)

(declare-fun inv!56466 (Token!12394) Bool)

(assert (=> b!3962834 (= e!2454150 (and (inv!56466 (h!47661 suffixTokens!72)) e!2454170 tp!1207940))))

(declare-fun b!3962835 () Bool)

(declare-fun e!2454183 () Bool)

(declare-fun e!2454180 () Bool)

(assert (=> b!3962835 (= e!2454183 e!2454180)))

(declare-fun res!1603932 () Bool)

(assert (=> b!3962835 (=> res!1603932 e!2454180)))

(declare-fun lt!1386921 () Int)

(declare-fun lt!1386961 () Int)

(assert (=> b!3962835 (= res!1603932 (<= lt!1386921 lt!1386961))))

(declare-datatypes ((Unit!60815 0))(
  ( (Unit!60816) )
))
(declare-fun lt!1386945 () Unit!60815)

(declare-fun e!2454182 () Unit!60815)

(assert (=> b!3962835 (= lt!1386945 e!2454182)))

(declare-fun c!687562 () Bool)

(assert (=> b!3962835 (= c!687562 (= lt!1386921 lt!1386961))))

(declare-fun lt!1386937 () Unit!60815)

(declare-fun e!2454157 () Unit!60815)

(assert (=> b!3962835 (= lt!1386937 e!2454157)))

(declare-fun c!687561 () Bool)

(assert (=> b!3962835 (= c!687561 (< lt!1386921 lt!1386961))))

(declare-fun size!31623 (List!42363) Int)

(assert (=> b!3962835 (= lt!1386961 (size!31623 suffix!1176))))

(assert (=> b!3962835 (= lt!1386921 (size!31623 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun b!3962836 () Bool)

(declare-fun e!2454152 () Bool)

(assert (=> b!3962836 (= e!2454151 e!2454152)))

(declare-fun res!1603943 () Bool)

(assert (=> b!3962836 (=> (not res!1603943) (not e!2454152))))

(declare-fun lt!1386958 () List!42365)

(declare-fun suffixResult!91 () List!42363)

(declare-datatypes ((tuple2!41536 0))(
  ( (tuple2!41537 (_1!23902 List!42365) (_2!23902 List!42363)) )
))
(declare-fun lt!1386956 () tuple2!41536)

(assert (=> b!3962836 (= res!1603943 (= lt!1386956 (tuple2!41537 lt!1386958 suffixResult!91)))))

(declare-fun lexList!1985 (LexerInterface!6217 List!42366 List!42363) tuple2!41536)

(assert (=> b!3962836 (= lt!1386956 (lexList!1985 thiss!20629 rules!2768 lt!1386938))))

(declare-fun prefixTokens!80 () List!42365)

(declare-fun ++!11014 (List!42365 List!42365) List!42365)

(assert (=> b!3962836 (= lt!1386958 (++!11014 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42363)

(assert (=> b!3962836 (= lt!1386938 (++!11013 prefix!426 suffix!1176))))

(declare-fun b!3962837 () Bool)

(declare-fun tp!1207954 () Bool)

(assert (=> b!3962837 (= e!2454169 (and tp_is_empty!20037 tp!1207954))))

(declare-fun e!2454161 () Bool)

(assert (=> b!3962838 (= e!2454161 (and tp!1207948 tp!1207949))))

(declare-fun b!3962839 () Bool)

(declare-fun tp!1207946 () Bool)

(assert (=> b!3962839 (= e!2454164 (and tp_is_empty!20037 tp!1207946))))

(declare-fun b!3962840 () Bool)

(declare-fun res!1603936 () Bool)

(assert (=> b!3962840 (=> (not res!1603936) (not e!2454151))))

(declare-fun rulesInvariant!5560 (LexerInterface!6217 List!42366) Bool)

(assert (=> b!3962840 (= res!1603936 (rulesInvariant!5560 thiss!20629 rules!2768))))

(declare-fun tp!1207950 () Bool)

(declare-fun e!2454187 () Bool)

(declare-fun b!3962841 () Bool)

(declare-fun inv!56463 (String!48008) Bool)

(declare-fun inv!56467 (TokenValueInjection!13144) Bool)

(assert (=> b!3962841 (= e!2454156 (and tp!1207950 (inv!56463 (tag!7488 (rule!9610 (h!47661 suffixTokens!72)))) (inv!56467 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) e!2454187))))

(declare-fun b!3962842 () Bool)

(declare-fun e!2454176 () Bool)

(assert (=> b!3962842 (= e!2454176 e!2454183)))

(declare-fun res!1603933 () Bool)

(assert (=> b!3962842 (=> res!1603933 e!2454183)))

(declare-fun lt!1386928 () List!42365)

(declare-fun lt!1386942 () tuple2!41536)

(assert (=> b!3962842 (= res!1603933 (not (= lt!1386956 (tuple2!41537 (++!11014 lt!1386928 (_1!23902 lt!1386942)) (_2!23902 lt!1386942)))))))

(assert (=> b!3962842 (= lt!1386928 (Cons!42241 (_1!23901 (v!39393 lt!1386960)) Nil!42241))))

(declare-fun b!3962843 () Bool)

(declare-fun e!2454165 () Bool)

(declare-fun tp!1207944 () Bool)

(assert (=> b!3962843 (= e!2454185 (and tp!1207944 (inv!56463 (tag!7488 (h!47662 rules!2768))) (inv!56467 (transformation!6628 (h!47662 rules!2768))) e!2454165))))

(declare-fun b!3962844 () Bool)

(declare-fun res!1603939 () Bool)

(assert (=> b!3962844 (=> res!1603939 e!2454183)))

(assert (=> b!3962844 (= res!1603939 (or (not (= lt!1386942 (tuple2!41537 (_1!23902 lt!1386942) (_2!23902 lt!1386942)))) (= (_2!23901 (v!39393 lt!1386960)) suffix!1176)))))

(declare-fun b!3962845 () Bool)

(declare-fun Unit!60817 () Unit!60815)

(assert (=> b!3962845 (= e!2454182 Unit!60817)))

(assert (=> b!3962846 (= e!2454165 (and tp!1207941 tp!1207947))))

(declare-fun b!3962847 () Bool)

(declare-fun Unit!60818 () Unit!60815)

(assert (=> b!3962847 (= e!2454182 Unit!60818)))

(declare-fun lt!1386923 () Unit!60815)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2576 (List!42363 List!42363) Unit!60815)

(assert (=> b!3962847 (= lt!1386923 (lemmaConcatTwoListThenFirstIsPrefix!2576 prefix!426 suffix!1176))))

(declare-fun isPrefix!3717 (List!42363 List!42363) Bool)

(assert (=> b!3962847 (isPrefix!3717 prefix!426 lt!1386938)))

(declare-fun lt!1386936 () List!42363)

(declare-fun lt!1386927 () Unit!60815)

(declare-fun lemmaIsPrefixSameLengthThenSameList!839 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> b!3962847 (= lt!1386927 (lemmaIsPrefixSameLengthThenSameList!839 lt!1386936 prefix!426 lt!1386938))))

(assert (=> b!3962847 (= lt!1386936 prefix!426)))

(declare-fun lt!1386962 () Unit!60815)

(declare-fun lemmaSamePrefixThenSameSuffix!1926 (List!42363 List!42363 List!42363 List!42363 List!42363) Unit!60815)

(assert (=> b!3962847 (= lt!1386962 (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) prefix!426 suffix!1176 lt!1386938))))

(assert (=> b!3962847 false))

(declare-fun b!3962848 () Bool)

(declare-fun e!2454154 () Bool)

(assert (=> b!3962848 (= e!2454154 e!2454188)))

(declare-fun res!1603954 () Bool)

(assert (=> b!3962848 (=> res!1603954 e!2454188)))

(assert (=> b!3962848 (= res!1603954 (not (= lt!1386949 prefix!426)))))

(declare-fun lt!1386954 () List!42363)

(assert (=> b!3962848 (= lt!1386949 (++!11013 lt!1386936 lt!1386954))))

(declare-fun getSuffix!2168 (List!42363 List!42363) List!42363)

(assert (=> b!3962848 (= lt!1386954 (getSuffix!2168 prefix!426 lt!1386936))))

(declare-fun b!3962849 () Bool)

(declare-fun res!1603949 () Bool)

(assert (=> b!3962849 (=> (not res!1603949) (not e!2454151))))

(declare-fun isEmpty!25269 (List!42365) Bool)

(assert (=> b!3962849 (= res!1603949 (not (isEmpty!25269 prefixTokens!80)))))

(declare-fun b!3962850 () Bool)

(declare-fun e!2454163 () Bool)

(assert (=> b!3962850 (= e!2454163 (= (size!31622 (_1!23901 (v!39393 lt!1386960))) (size!31623 (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960))))))))

(declare-fun b!3962851 () Bool)

(declare-fun e!2454168 () Unit!60815)

(declare-fun Unit!60819 () Unit!60815)

(assert (=> b!3962851 (= e!2454168 Unit!60819)))

(declare-fun b!3962852 () Bool)

(declare-fun res!1603952 () Bool)

(assert (=> b!3962852 (=> res!1603952 e!2454178)))

(declare-fun lt!1386952 () tuple2!41536)

(assert (=> b!3962852 (= res!1603952 (or (not (= prefixTokens!80 lt!1386928)) (not (= lt!1386942 lt!1386952))))))

(declare-fun b!3962853 () Bool)

(declare-fun e!2454184 () Unit!60815)

(declare-fun Unit!60820 () Unit!60815)

(assert (=> b!3962853 (= e!2454184 Unit!60820)))

(declare-fun lt!1386935 () Unit!60815)

(declare-fun lt!1386959 () tuple2!41534)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!622 (List!42363 List!42363 List!42363 List!42363) Unit!60815)

(assert (=> b!3962853 (= lt!1386935 (lemmaConcatSameAndSameSizesThenSameLists!622 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 (_2!23901 lt!1386959)))))

(assert (=> b!3962853 (= (_2!23901 (v!39393 lt!1386960)) (_2!23901 lt!1386959))))

(declare-fun lt!1386947 () Unit!60815)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!156 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42365 List!42363) Unit!60815)

(assert (=> b!3962853 (= lt!1386947 (lemmaLexWithSmallerInputCannotProduceSameResults!156 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603946 () Bool)

(declare-fun call!285448 () tuple2!41536)

(assert (=> b!3962853 (= res!1603946 (not (= call!285448 lt!1386952)))))

(assert (=> b!3962853 (=> (not res!1603946) (not e!2454173))))

(assert (=> b!3962853 e!2454173))

(declare-fun b!3962854 () Bool)

(assert (=> b!3962854 (= e!2454152 e!2454167)))

(declare-fun res!1603938 () Bool)

(assert (=> b!3962854 (=> (not res!1603938) (not e!2454167))))

(assert (=> b!3962854 (= res!1603938 (= (lexList!1985 thiss!20629 rules!2768 suffix!1176) lt!1386952))))

(assert (=> b!3962854 (= lt!1386952 (tuple2!41537 suffixTokens!72 suffixResult!91))))

(declare-fun b!3962855 () Bool)

(declare-fun e!2454159 () Bool)

(assert (=> b!3962855 (= e!2454174 e!2454159)))

(declare-fun res!1603937 () Bool)

(assert (=> b!3962855 (=> res!1603937 e!2454159)))

(declare-fun lt!1386934 () List!42363)

(assert (=> b!3962855 (= res!1603937 (or (not (= lt!1386938 lt!1386933)) (not (= lt!1386938 lt!1386934)) (not (= lt!1386939 lt!1386934))))))

(assert (=> b!3962855 (= lt!1386933 lt!1386934)))

(declare-fun lt!1386950 () List!42363)

(assert (=> b!3962855 (= lt!1386934 (++!11013 lt!1386936 lt!1386950))))

(assert (=> b!3962855 (= lt!1386950 (++!11013 lt!1386954 suffix!1176))))

(declare-fun lt!1386955 () Unit!60815)

(declare-fun lemmaConcatAssociativity!2362 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> b!3962855 (= lt!1386955 (lemmaConcatAssociativity!2362 lt!1386936 lt!1386954 suffix!1176))))

(declare-fun e!2454162 () Bool)

(declare-fun b!3962856 () Bool)

(declare-fun tp!1207938 () Bool)

(assert (=> b!3962856 (= e!2454171 (and (inv!56466 (h!47661 prefixTokens!80)) e!2454162 tp!1207938))))

(declare-fun b!3962857 () Bool)

(declare-fun Unit!60821 () Unit!60815)

(assert (=> b!3962857 (= e!2454157 Unit!60821)))

(declare-fun b!3962858 () Bool)

(declare-fun res!1603947 () Bool)

(assert (=> b!3962858 (=> (not res!1603947) (not e!2454151))))

(declare-fun isEmpty!25270 (List!42366) Bool)

(assert (=> b!3962858 (= res!1603947 (not (isEmpty!25270 rules!2768)))))

(declare-fun b!3962859 () Bool)

(declare-fun e!2454177 () Bool)

(assert (=> b!3962859 (= e!2454177 e!2454178)))

(declare-fun res!1603941 () Bool)

(assert (=> b!3962859 (=> res!1603941 e!2454178)))

(declare-fun lt!1386957 () List!42365)

(assert (=> b!3962859 (= res!1603941 (not (= lt!1386942 (tuple2!41537 (++!11014 lt!1386957 suffixTokens!72) suffixResult!91))))))

(declare-fun tail!6169 (List!42365) List!42365)

(assert (=> b!3962859 (= lt!1386957 (tail!6169 prefixTokens!80))))

(assert (=> b!3962859 (isPrefix!3717 lt!1386954 lt!1386950)))

(declare-fun lt!1386946 () Unit!60815)

(assert (=> b!3962859 (= lt!1386946 (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386954 suffix!1176))))

(declare-fun b!3962860 () Bool)

(declare-fun Unit!60822 () Unit!60815)

(assert (=> b!3962860 (= e!2454157 Unit!60822)))

(declare-fun lt!1386963 () Int)

(assert (=> b!3962860 (= lt!1386963 (size!31623 lt!1386938))))

(declare-fun lt!1386941 () Unit!60815)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1397 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42363 Rule!13056) Unit!60815)

(assert (=> b!3962860 (= lt!1386941 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1397 thiss!20629 rules!2768 lt!1386936 lt!1386938 (_2!23901 (v!39393 lt!1386960)) (rule!9610 (_1!23901 (v!39393 lt!1386960)))))))

(declare-fun lt!1386940 () Int)

(declare-fun lt!1386926 () TokenValue!6858)

(declare-fun maxPrefixOneRule!2571 (LexerInterface!6217 Rule!13056 List!42363) Option!9048)

(assert (=> b!3962860 (= (maxPrefixOneRule!2571 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) lt!1386938) (Some!9047 (tuple2!41535 (Token!12395 lt!1386926 (rule!9610 (_1!23901 (v!39393 lt!1386960))) lt!1386940 lt!1386936) (_2!23901 (v!39393 lt!1386960)))))))

(declare-fun get!13932 (Option!9048) tuple2!41534)

(assert (=> b!3962860 (= lt!1386959 (get!13932 lt!1386960))))

(declare-fun c!687563 () Bool)

(assert (=> b!3962860 (= c!687563 (< (size!31623 (_2!23901 lt!1386959)) lt!1386961))))

(declare-fun lt!1386929 () Unit!60815)

(assert (=> b!3962860 (= lt!1386929 e!2454168)))

(assert (=> b!3962860 false))

(declare-fun b!3962861 () Bool)

(declare-fun res!1603948 () Bool)

(assert (=> b!3962861 (=> res!1603948 e!2454180)))

(declare-fun head!8437 (List!42365) Token!12394)

(assert (=> b!3962861 (= res!1603948 (not (= (head!8437 prefixTokens!80) (_1!23901 (v!39393 lt!1386960)))))))

(assert (=> b!3962862 (= e!2454187 (and tp!1207943 tp!1207945))))

(declare-fun bm!285443 () Bool)

(assert (=> bm!285443 (= call!285448 (lexList!1985 thiss!20629 rules!2768 (_2!23901 lt!1386959)))))

(declare-fun b!3962863 () Bool)

(declare-fun c!687560 () Bool)

(declare-fun lt!1386931 () List!42365)

(assert (=> b!3962863 (= c!687560 (isEmpty!25269 lt!1386931))))

(assert (=> b!3962863 (= lt!1386931 (tail!6169 prefixTokens!80))))

(assert (=> b!3962863 (= e!2454168 e!2454184)))

(declare-fun tp!1207951 () Bool)

(declare-fun e!2454158 () Bool)

(declare-fun b!3962864 () Bool)

(assert (=> b!3962864 (= e!2454158 (and tp!1207951 (inv!56463 (tag!7488 (rule!9610 (h!47661 prefixTokens!80)))) (inv!56467 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) e!2454161))))

(declare-fun b!3962865 () Bool)

(declare-fun e!2454160 () Bool)

(assert (=> b!3962865 (= e!2454160 false)))

(declare-fun b!3962866 () Bool)

(assert (=> b!3962866 (= e!2454180 e!2454154)))

(declare-fun res!1603950 () Bool)

(assert (=> b!3962866 (=> res!1603950 e!2454154)))

(assert (=> b!3962866 (= res!1603950 (>= lt!1386940 (size!31623 prefix!426)))))

(assert (=> b!3962866 (isPrefix!3717 lt!1386936 prefix!426)))

(declare-fun lt!1386944 () Unit!60815)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!313 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> b!3962866 (= lt!1386944 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!313 prefix!426 lt!1386936 lt!1386938))))

(assert (=> b!3962866 (isPrefix!3717 prefix!426 lt!1386938)))

(declare-fun lt!1386932 () Unit!60815)

(assert (=> b!3962866 (= lt!1386932 (lemmaConcatTwoListThenFirstIsPrefix!2576 prefix!426 suffix!1176))))

(declare-fun b!3962867 () Bool)

(declare-fun Unit!60823 () Unit!60815)

(assert (=> b!3962867 (= e!2454184 Unit!60823)))

(declare-fun lt!1386951 () Unit!60815)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!156 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42365 List!42363 List!42365) Unit!60815)

(assert (=> b!3962867 (= lt!1386951 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!156 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91 lt!1386931))))

(declare-fun res!1603940 () Bool)

(assert (=> b!3962867 (= res!1603940 (not (= call!285448 (tuple2!41537 (++!11014 lt!1386931 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3962867 (=> (not res!1603940) (not e!2454160))))

(assert (=> b!3962867 e!2454160))

(declare-fun b!3962868 () Bool)

(assert (=> b!3962868 (= e!2454181 (not e!2454176))))

(declare-fun res!1603945 () Bool)

(assert (=> b!3962868 (=> res!1603945 e!2454176)))

(assert (=> b!3962868 (= res!1603945 (not (= lt!1386939 lt!1386938)))))

(assert (=> b!3962868 (= lt!1386942 (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun lt!1386948 () List!42363)

(assert (=> b!3962868 (and (= (size!31622 (_1!23901 (v!39393 lt!1386960))) lt!1386940) (= (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960))) lt!1386936) (= (v!39393 lt!1386960) (tuple2!41535 (Token!12395 lt!1386926 (rule!9610 (_1!23901 (v!39393 lt!1386960))) lt!1386940 lt!1386936) lt!1386948)))))

(assert (=> b!3962868 (= lt!1386940 (size!31623 lt!1386936))))

(assert (=> b!3962868 e!2454163))

(declare-fun res!1603931 () Bool)

(assert (=> b!3962868 (=> (not res!1603931) (not e!2454163))))

(assert (=> b!3962868 (= res!1603931 (= (value!209532 (_1!23901 (v!39393 lt!1386960))) lt!1386926))))

(declare-fun apply!9859 (TokenValueInjection!13144 BalanceConc!25272) TokenValue!6858)

(declare-fun seqFromList!4887 (List!42363) BalanceConc!25272)

(assert (=> b!3962868 (= lt!1386926 (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (seqFromList!4887 lt!1386936)))))

(assert (=> b!3962868 (= (_2!23901 (v!39393 lt!1386960)) lt!1386948)))

(declare-fun lt!1386922 () Unit!60815)

(assert (=> b!3962868 (= lt!1386922 (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386948 lt!1386938))))

(assert (=> b!3962868 (= lt!1386948 (getSuffix!2168 lt!1386938 lt!1386936))))

(assert (=> b!3962868 (isPrefix!3717 lt!1386936 lt!1386939)))

(assert (=> b!3962868 (= lt!1386939 (++!11013 lt!1386936 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun lt!1386943 () Unit!60815)

(assert (=> b!3962868 (= lt!1386943 (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386936 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun list!15676 (BalanceConc!25272) List!42363)

(declare-fun charsOf!4446 (Token!12394) BalanceConc!25272)

(assert (=> b!3962868 (= lt!1386936 (list!15676 (charsOf!4446 (_1!23901 (v!39393 lt!1386960)))))))

(declare-fun ruleValid!2570 (LexerInterface!6217 Rule!13056) Bool)

(assert (=> b!3962868 (ruleValid!2570 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))))))

(declare-fun lt!1386953 () Unit!60815)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1646 (LexerInterface!6217 Rule!13056 List!42366) Unit!60815)

(assert (=> b!3962868 (= lt!1386953 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1646 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) rules!2768))))

(declare-fun lt!1386924 () Unit!60815)

(declare-fun lemmaCharactersSize!1281 (Token!12394) Unit!60815)

(assert (=> b!3962868 (= lt!1386924 (lemmaCharactersSize!1281 (_1!23901 (v!39393 lt!1386960))))))

(declare-fun b!3962869 () Bool)

(declare-fun res!1603944 () Bool)

(assert (=> b!3962869 (=> (not res!1603944) (not e!2454151))))

(assert (=> b!3962869 (= res!1603944 (not (isEmpty!25268 prefix!426)))))

(declare-fun tp!1207953 () Bool)

(declare-fun b!3962870 () Bool)

(assert (=> b!3962870 (= e!2454162 (and (inv!21 (value!209532 (h!47661 prefixTokens!80))) e!2454158 tp!1207953))))

(declare-fun b!3962871 () Bool)

(declare-fun res!1603934 () Bool)

(assert (=> b!3962871 (=> res!1603934 e!2454178)))

(assert (=> b!3962871 (= res!1603934 (not (isEmpty!25269 lt!1386957)))))

(declare-fun b!3962872 () Bool)

(assert (=> b!3962872 (= e!2454159 e!2454177)))

(declare-fun res!1603935 () Bool)

(assert (=> b!3962872 (=> res!1603935 e!2454177)))

(assert (=> b!3962872 (= res!1603935 (not (= lt!1386950 (_2!23901 (v!39393 lt!1386960)))))))

(assert (=> b!3962872 (= (_2!23901 (v!39393 lt!1386960)) lt!1386950)))

(declare-fun lt!1386925 () Unit!60815)

(assert (=> b!3962872 (= lt!1386925 (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386950 lt!1386938))))

(assert (=> b!3962872 (isPrefix!3717 lt!1386936 lt!1386934)))

(declare-fun lt!1386930 () Unit!60815)

(assert (=> b!3962872 (= lt!1386930 (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386936 lt!1386950))))

(assert (= (and start!372744 res!1603953) b!3962858))

(assert (= (and b!3962858 res!1603947) b!3962840))

(assert (= (and b!3962840 res!1603936) b!3962849))

(assert (= (and b!3962849 res!1603949) b!3962869))

(assert (= (and b!3962869 res!1603944) b!3962836))

(assert (= (and b!3962836 res!1603943) b!3962854))

(assert (= (and b!3962854 res!1603938) b!3962832))

(assert (= (and b!3962832 res!1603951) b!3962868))

(assert (= (and b!3962868 res!1603931) b!3962850))

(assert (= (and b!3962868 (not res!1603945)) b!3962842))

(assert (= (and b!3962842 (not res!1603933)) b!3962844))

(assert (= (and b!3962844 (not res!1603939)) b!3962835))

(assert (= (and b!3962835 c!687561) b!3962860))

(assert (= (and b!3962835 (not c!687561)) b!3962857))

(assert (= (and b!3962860 c!687563) b!3962863))

(assert (= (and b!3962860 (not c!687563)) b!3962851))

(assert (= (and b!3962863 c!687560) b!3962853))

(assert (= (and b!3962863 (not c!687560)) b!3962867))

(assert (= (and b!3962853 res!1603946) b!3962831))

(assert (= (and b!3962867 res!1603940) b!3962865))

(assert (= (or b!3962853 b!3962867) bm!285443))

(assert (= (and b!3962835 c!687562) b!3962847))

(assert (= (and b!3962835 (not c!687562)) b!3962845))

(assert (= (and b!3962835 (not res!1603932)) b!3962861))

(assert (= (and b!3962861 (not res!1603948)) b!3962866))

(assert (= (and b!3962866 (not res!1603950)) b!3962848))

(assert (= (and b!3962848 (not res!1603954)) b!3962827))

(assert (= (and b!3962827 (not res!1603942)) b!3962855))

(assert (= (and b!3962855 (not res!1603937)) b!3962872))

(assert (= (and b!3962872 (not res!1603935)) b!3962859))

(assert (= (and b!3962859 (not res!1603941)) b!3962871))

(assert (= (and b!3962871 (not res!1603934)) b!3962852))

(assert (= (and b!3962852 (not res!1603952)) b!3962830))

(assert (= (and start!372744 ((_ is Cons!42239) suffixResult!91)) b!3962839))

(assert (= (and start!372744 ((_ is Cons!42239) suffix!1176)) b!3962833))

(assert (= b!3962843 b!3962846))

(assert (= b!3962828 b!3962843))

(assert (= (and start!372744 ((_ is Cons!42242) rules!2768)) b!3962828))

(assert (= b!3962864 b!3962838))

(assert (= b!3962870 b!3962864))

(assert (= b!3962856 b!3962870))

(assert (= (and start!372744 ((_ is Cons!42241) prefixTokens!80)) b!3962856))

(assert (= b!3962841 b!3962862))

(assert (= b!3962829 b!3962841))

(assert (= b!3962834 b!3962829))

(assert (= (and start!372744 ((_ is Cons!42241) suffixTokens!72)) b!3962834))

(assert (= (and start!372744 ((_ is Cons!42239) prefix!426)) b!3962837))

(declare-fun m!4531883 () Bool)

(assert (=> b!3962835 m!4531883))

(declare-fun m!4531885 () Bool)

(assert (=> b!3962835 m!4531885))

(declare-fun m!4531887 () Bool)

(assert (=> b!3962854 m!4531887))

(declare-fun m!4531889 () Bool)

(assert (=> b!3962830 m!4531889))

(declare-fun m!4531891 () Bool)

(assert (=> b!3962863 m!4531891))

(declare-fun m!4531893 () Bool)

(assert (=> b!3962863 m!4531893))

(declare-fun m!4531895 () Bool)

(assert (=> b!3962856 m!4531895))

(declare-fun m!4531897 () Bool)

(assert (=> b!3962853 m!4531897))

(declare-fun m!4531899 () Bool)

(assert (=> b!3962853 m!4531899))

(declare-fun m!4531901 () Bool)

(assert (=> b!3962870 m!4531901))

(declare-fun m!4531903 () Bool)

(assert (=> b!3962868 m!4531903))

(declare-fun m!4531905 () Bool)

(assert (=> b!3962868 m!4531905))

(declare-fun m!4531907 () Bool)

(assert (=> b!3962868 m!4531907))

(declare-fun m!4531909 () Bool)

(assert (=> b!3962868 m!4531909))

(declare-fun m!4531911 () Bool)

(assert (=> b!3962868 m!4531911))

(declare-fun m!4531913 () Bool)

(assert (=> b!3962868 m!4531913))

(declare-fun m!4531915 () Bool)

(assert (=> b!3962868 m!4531915))

(assert (=> b!3962868 m!4531903))

(declare-fun m!4531917 () Bool)

(assert (=> b!3962868 m!4531917))

(declare-fun m!4531919 () Bool)

(assert (=> b!3962868 m!4531919))

(declare-fun m!4531921 () Bool)

(assert (=> b!3962868 m!4531921))

(declare-fun m!4531923 () Bool)

(assert (=> b!3962868 m!4531923))

(declare-fun m!4531925 () Bool)

(assert (=> b!3962868 m!4531925))

(declare-fun m!4531927 () Bool)

(assert (=> b!3962868 m!4531927))

(assert (=> b!3962868 m!4531923))

(declare-fun m!4531929 () Bool)

(assert (=> b!3962868 m!4531929))

(declare-fun m!4531931 () Bool)

(assert (=> b!3962871 m!4531931))

(declare-fun m!4531933 () Bool)

(assert (=> b!3962849 m!4531933))

(declare-fun m!4531935 () Bool)

(assert (=> b!3962832 m!4531935))

(declare-fun m!4531937 () Bool)

(assert (=> b!3962859 m!4531937))

(assert (=> b!3962859 m!4531893))

(declare-fun m!4531939 () Bool)

(assert (=> b!3962859 m!4531939))

(declare-fun m!4531941 () Bool)

(assert (=> b!3962859 m!4531941))

(declare-fun m!4531943 () Bool)

(assert (=> b!3962843 m!4531943))

(declare-fun m!4531945 () Bool)

(assert (=> b!3962843 m!4531945))

(declare-fun m!4531947 () Bool)

(assert (=> b!3962827 m!4531947))

(declare-fun m!4531949 () Bool)

(assert (=> b!3962872 m!4531949))

(declare-fun m!4531951 () Bool)

(assert (=> b!3962872 m!4531951))

(declare-fun m!4531953 () Bool)

(assert (=> b!3962872 m!4531953))

(declare-fun m!4531955 () Bool)

(assert (=> b!3962866 m!4531955))

(declare-fun m!4531957 () Bool)

(assert (=> b!3962866 m!4531957))

(declare-fun m!4531959 () Bool)

(assert (=> b!3962866 m!4531959))

(declare-fun m!4531961 () Bool)

(assert (=> b!3962866 m!4531961))

(declare-fun m!4531963 () Bool)

(assert (=> b!3962866 m!4531963))

(declare-fun m!4531965 () Bool)

(assert (=> b!3962855 m!4531965))

(declare-fun m!4531967 () Bool)

(assert (=> b!3962855 m!4531967))

(declare-fun m!4531969 () Bool)

(assert (=> b!3962855 m!4531969))

(declare-fun m!4531971 () Bool)

(assert (=> b!3962829 m!4531971))

(declare-fun m!4531973 () Bool)

(assert (=> b!3962864 m!4531973))

(declare-fun m!4531975 () Bool)

(assert (=> b!3962864 m!4531975))

(declare-fun m!4531977 () Bool)

(assert (=> b!3962850 m!4531977))

(declare-fun m!4531979 () Bool)

(assert (=> b!3962840 m!4531979))

(declare-fun m!4531981 () Bool)

(assert (=> b!3962836 m!4531981))

(declare-fun m!4531983 () Bool)

(assert (=> b!3962836 m!4531983))

(declare-fun m!4531985 () Bool)

(assert (=> b!3962836 m!4531985))

(declare-fun m!4531987 () Bool)

(assert (=> b!3962861 m!4531987))

(declare-fun m!4531989 () Bool)

(assert (=> b!3962867 m!4531989))

(declare-fun m!4531991 () Bool)

(assert (=> b!3962867 m!4531991))

(declare-fun m!4531993 () Bool)

(assert (=> b!3962869 m!4531993))

(declare-fun m!4531995 () Bool)

(assert (=> b!3962841 m!4531995))

(declare-fun m!4531997 () Bool)

(assert (=> b!3962841 m!4531997))

(declare-fun m!4531999 () Bool)

(assert (=> b!3962860 m!4531999))

(declare-fun m!4532001 () Bool)

(assert (=> b!3962860 m!4532001))

(declare-fun m!4532003 () Bool)

(assert (=> b!3962860 m!4532003))

(declare-fun m!4532005 () Bool)

(assert (=> b!3962860 m!4532005))

(declare-fun m!4532007 () Bool)

(assert (=> b!3962860 m!4532007))

(declare-fun m!4532009 () Bool)

(assert (=> bm!285443 m!4532009))

(assert (=> b!3962847 m!4531959))

(assert (=> b!3962847 m!4531957))

(declare-fun m!4532011 () Bool)

(assert (=> b!3962847 m!4532011))

(declare-fun m!4532013 () Bool)

(assert (=> b!3962847 m!4532013))

(declare-fun m!4532015 () Bool)

(assert (=> b!3962858 m!4532015))

(declare-fun m!4532017 () Bool)

(assert (=> b!3962848 m!4532017))

(declare-fun m!4532019 () Bool)

(assert (=> b!3962848 m!4532019))

(declare-fun m!4532021 () Bool)

(assert (=> b!3962842 m!4532021))

(declare-fun m!4532023 () Bool)

(assert (=> b!3962834 m!4532023))

(check-sat (not b_next!110197) (not b!3962842) (not b!3962864) (not b_next!110193) (not b!3962833) (not b!3962868) b_and!304319 (not b!3962829) (not b!3962834) b_and!304325 (not b!3962848) b_and!304323 (not b!3962830) (not b!3962850) (not b!3962839) (not b!3962855) (not b!3962871) (not b!3962837) (not b!3962872) (not b!3962836) (not b!3962827) (not b_next!110191) (not b!3962869) (not b!3962861) (not b!3962870) (not b!3962858) (not b!3962860) (not b!3962835) b_and!304317 tp_is_empty!20037 (not b!3962863) (not b!3962840) (not b_next!110199) (not b_next!110195) (not b!3962856) (not b!3962832) b_and!304321 (not b!3962843) (not b!3962867) (not b_next!110189) b_and!304315 (not b!3962841) (not b!3962859) (not bm!285443) (not b!3962866) (not b!3962853) (not b!3962854) (not b!3962847) (not b!3962849) (not b!3962828))
(check-sat (not b_next!110197) b_and!304323 (not b_next!110193) b_and!304319 (not b_next!110191) b_and!304317 b_and!304321 (not b_next!110189) b_and!304315 b_and!304325 (not b_next!110199) (not b_next!110195))
(get-model)

(declare-fun d!1173961 () Bool)

(assert (=> d!1173961 (= (head!8437 prefixTokens!80) (h!47661 prefixTokens!80))))

(assert (=> b!3962861 d!1173961))

(declare-fun d!1173963 () Bool)

(declare-fun res!1603961 () Bool)

(declare-fun e!2454191 () Bool)

(assert (=> d!1173963 (=> (not res!1603961) (not e!2454191))))

(declare-fun rulesValid!2588 (LexerInterface!6217 List!42366) Bool)

(assert (=> d!1173963 (= res!1603961 (rulesValid!2588 thiss!20629 rules!2768))))

(assert (=> d!1173963 (= (rulesInvariant!5560 thiss!20629 rules!2768) e!2454191)))

(declare-fun b!3962875 () Bool)

(declare-datatypes ((List!42367 0))(
  ( (Nil!42243) (Cons!42243 (h!47663 String!48008) (t!330126 List!42367)) )
))
(declare-fun noDuplicateTag!2589 (LexerInterface!6217 List!42366 List!42367) Bool)

(assert (=> b!3962875 (= e!2454191 (noDuplicateTag!2589 thiss!20629 rules!2768 Nil!42243))))

(assert (= (and d!1173963 res!1603961) b!3962875))

(declare-fun m!4532025 () Bool)

(assert (=> d!1173963 m!4532025))

(declare-fun m!4532027 () Bool)

(assert (=> b!3962875 m!4532027))

(assert (=> b!3962840 d!1173963))

(declare-fun d!1173965 () Bool)

(assert (=> d!1173965 (= (maxPrefixOneRule!2571 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) lt!1386938) (Some!9047 (tuple2!41535 (Token!12395 (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (seqFromList!4887 lt!1386936)) (rule!9610 (_1!23901 (v!39393 lt!1386960))) (size!31623 lt!1386936) lt!1386936) (_2!23901 (v!39393 lt!1386960)))))))

(declare-fun lt!1386966 () Unit!60815)

(declare-fun choose!23676 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42363 Rule!13056) Unit!60815)

(assert (=> d!1173965 (= lt!1386966 (choose!23676 thiss!20629 rules!2768 lt!1386936 lt!1386938 (_2!23901 (v!39393 lt!1386960)) (rule!9610 (_1!23901 (v!39393 lt!1386960)))))))

(assert (=> d!1173965 (not (isEmpty!25270 rules!2768))))

(assert (=> d!1173965 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1397 thiss!20629 rules!2768 lt!1386936 lt!1386938 (_2!23901 (v!39393 lt!1386960)) (rule!9610 (_1!23901 (v!39393 lt!1386960)))) lt!1386966)))

(declare-fun bs!587305 () Bool)

(assert (= bs!587305 d!1173965))

(assert (=> bs!587305 m!4531903))

(assert (=> bs!587305 m!4531905))

(declare-fun m!4532029 () Bool)

(assert (=> bs!587305 m!4532029))

(assert (=> bs!587305 m!4531903))

(assert (=> bs!587305 m!4532015))

(assert (=> bs!587305 m!4531929))

(assert (=> bs!587305 m!4532005))

(assert (=> b!3962860 d!1173965))

(declare-fun d!1173967 () Bool)

(declare-fun lt!1386969 () Int)

(assert (=> d!1173967 (>= lt!1386969 0)))

(declare-fun e!2454194 () Int)

(assert (=> d!1173967 (= lt!1386969 e!2454194)))

(declare-fun c!687568 () Bool)

(assert (=> d!1173967 (= c!687568 ((_ is Nil!42239) (_2!23901 lt!1386959)))))

(assert (=> d!1173967 (= (size!31623 (_2!23901 lt!1386959)) lt!1386969)))

(declare-fun b!3962880 () Bool)

(assert (=> b!3962880 (= e!2454194 0)))

(declare-fun b!3962881 () Bool)

(assert (=> b!3962881 (= e!2454194 (+ 1 (size!31623 (t!330026 (_2!23901 lt!1386959)))))))

(assert (= (and d!1173967 c!687568) b!3962880))

(assert (= (and d!1173967 (not c!687568)) b!3962881))

(declare-fun m!4532031 () Bool)

(assert (=> b!3962881 m!4532031))

(assert (=> b!3962860 d!1173967))

(declare-fun b!3963006 () Bool)

(declare-fun e!2454268 () Bool)

(declare-fun lt!1387018 () Option!9048)

(assert (=> b!3963006 (= e!2454268 (= (size!31622 (_1!23901 (get!13932 lt!1387018))) (size!31623 (originalCharacters!7228 (_1!23901 (get!13932 lt!1387018))))))))

(declare-fun b!3963007 () Bool)

(declare-fun res!1604024 () Bool)

(assert (=> b!3963007 (=> (not res!1604024) (not e!2454268))))

(assert (=> b!3963007 (= res!1604024 (= (rule!9610 (_1!23901 (get!13932 lt!1387018))) (rule!9610 (_1!23901 (v!39393 lt!1386960)))))))

(declare-fun b!3963008 () Bool)

(declare-fun e!2454267 () Bool)

(declare-fun matchR!5541 (Regex!11533 List!42363) Bool)

(declare-datatypes ((tuple2!41538 0))(
  ( (tuple2!41539 (_1!23903 List!42363) (_2!23903 List!42363)) )
))
(declare-fun findLongestMatchInner!1297 (Regex!11533 List!42363 Int List!42363 List!42363 Int) tuple2!41538)

(assert (=> b!3963008 (= e!2454267 (matchR!5541 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (_1!23903 (findLongestMatchInner!1297 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) Nil!42239 (size!31623 Nil!42239) lt!1386938 lt!1386938 (size!31623 lt!1386938)))))))

(declare-fun b!3963009 () Bool)

(declare-fun res!1604029 () Bool)

(assert (=> b!3963009 (=> (not res!1604029) (not e!2454268))))

(assert (=> b!3963009 (= res!1604029 (< (size!31623 (_2!23901 (get!13932 lt!1387018))) (size!31623 lt!1386938)))))

(declare-fun b!3963010 () Bool)

(declare-fun res!1604025 () Bool)

(assert (=> b!3963010 (=> (not res!1604025) (not e!2454268))))

(assert (=> b!3963010 (= res!1604025 (= (++!11013 (list!15676 (charsOf!4446 (_1!23901 (get!13932 lt!1387018)))) (_2!23901 (get!13932 lt!1387018))) lt!1386938))))

(declare-fun b!3963011 () Bool)

(declare-fun e!2454266 () Option!9048)

(assert (=> b!3963011 (= e!2454266 None!9047)))

(declare-fun b!3963012 () Bool)

(declare-fun res!1604026 () Bool)

(assert (=> b!3963012 (=> (not res!1604026) (not e!2454268))))

(assert (=> b!3963012 (= res!1604026 (= (value!209532 (_1!23901 (get!13932 lt!1387018))) (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (get!13932 lt!1387018)))) (seqFromList!4887 (originalCharacters!7228 (_1!23901 (get!13932 lt!1387018)))))))))

(declare-fun b!3963013 () Bool)

(declare-fun lt!1387017 () tuple2!41538)

(declare-fun size!31624 (BalanceConc!25272) Int)

(assert (=> b!3963013 (= e!2454266 (Some!9047 (tuple2!41535 (Token!12395 (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (seqFromList!4887 (_1!23903 lt!1387017))) (rule!9610 (_1!23901 (v!39393 lt!1386960))) (size!31624 (seqFromList!4887 (_1!23903 lt!1387017))) (_1!23903 lt!1387017)) (_2!23903 lt!1387017))))))

(declare-fun lt!1387015 () Unit!60815)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1270 (Regex!11533 List!42363) Unit!60815)

(assert (=> b!3963013 (= lt!1387015 (longestMatchIsAcceptedByMatchOrIsEmpty!1270 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) lt!1386938))))

(declare-fun res!1604023 () Bool)

(assert (=> b!3963013 (= res!1604023 (isEmpty!25268 (_1!23903 (findLongestMatchInner!1297 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) Nil!42239 (size!31623 Nil!42239) lt!1386938 lt!1386938 (size!31623 lt!1386938)))))))

(assert (=> b!3963013 (=> res!1604023 e!2454267)))

(assert (=> b!3963013 e!2454267))

(declare-fun lt!1387016 () Unit!60815)

(assert (=> b!3963013 (= lt!1387016 lt!1387015)))

(declare-fun lt!1387019 () Unit!60815)

(declare-fun lemmaSemiInverse!1805 (TokenValueInjection!13144 BalanceConc!25272) Unit!60815)

(assert (=> b!3963013 (= lt!1387019 (lemmaSemiInverse!1805 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (seqFromList!4887 (_1!23903 lt!1387017))))))

(declare-fun b!3963014 () Bool)

(declare-fun e!2454265 () Bool)

(assert (=> b!3963014 (= e!2454265 e!2454268)))

(declare-fun res!1604028 () Bool)

(assert (=> b!3963014 (=> (not res!1604028) (not e!2454268))))

(assert (=> b!3963014 (= res!1604028 (matchR!5541 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (list!15676 (charsOf!4446 (_1!23901 (get!13932 lt!1387018))))))))

(declare-fun d!1173969 () Bool)

(assert (=> d!1173969 e!2454265))

(declare-fun res!1604027 () Bool)

(assert (=> d!1173969 (=> res!1604027 e!2454265)))

(declare-fun isEmpty!25271 (Option!9048) Bool)

(assert (=> d!1173969 (= res!1604027 (isEmpty!25271 lt!1387018))))

(assert (=> d!1173969 (= lt!1387018 e!2454266)))

(declare-fun c!687599 () Bool)

(assert (=> d!1173969 (= c!687599 (isEmpty!25268 (_1!23903 lt!1387017)))))

(declare-fun findLongestMatch!1210 (Regex!11533 List!42363) tuple2!41538)

(assert (=> d!1173969 (= lt!1387017 (findLongestMatch!1210 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) lt!1386938))))

(assert (=> d!1173969 (ruleValid!2570 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))))))

(assert (=> d!1173969 (= (maxPrefixOneRule!2571 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) lt!1386938) lt!1387018)))

(assert (= (and d!1173969 c!687599) b!3963011))

(assert (= (and d!1173969 (not c!687599)) b!3963013))

(assert (= (and b!3963013 (not res!1604023)) b!3963008))

(assert (= (and d!1173969 (not res!1604027)) b!3963014))

(assert (= (and b!3963014 res!1604028) b!3963010))

(assert (= (and b!3963010 res!1604025) b!3963009))

(assert (= (and b!3963009 res!1604029) b!3963007))

(assert (= (and b!3963007 res!1604024) b!3963012))

(assert (= (and b!3963012 res!1604026) b!3963006))

(declare-fun m!4532157 () Bool)

(assert (=> b!3963006 m!4532157))

(declare-fun m!4532159 () Bool)

(assert (=> b!3963006 m!4532159))

(assert (=> b!3963013 m!4532007))

(declare-fun m!4532161 () Bool)

(assert (=> b!3963013 m!4532161))

(declare-fun m!4532163 () Bool)

(assert (=> b!3963013 m!4532163))

(assert (=> b!3963013 m!4532161))

(declare-fun m!4532165 () Bool)

(assert (=> b!3963013 m!4532165))

(declare-fun m!4532167 () Bool)

(assert (=> b!3963013 m!4532167))

(assert (=> b!3963013 m!4532165))

(assert (=> b!3963013 m!4532007))

(declare-fun m!4532169 () Bool)

(assert (=> b!3963013 m!4532169))

(declare-fun m!4532171 () Bool)

(assert (=> b!3963013 m!4532171))

(assert (=> b!3963013 m!4532161))

(declare-fun m!4532173 () Bool)

(assert (=> b!3963013 m!4532173))

(assert (=> b!3963013 m!4532161))

(declare-fun m!4532175 () Bool)

(assert (=> b!3963013 m!4532175))

(assert (=> b!3963014 m!4532157))

(declare-fun m!4532177 () Bool)

(assert (=> b!3963014 m!4532177))

(assert (=> b!3963014 m!4532177))

(declare-fun m!4532179 () Bool)

(assert (=> b!3963014 m!4532179))

(assert (=> b!3963014 m!4532179))

(declare-fun m!4532181 () Bool)

(assert (=> b!3963014 m!4532181))

(assert (=> b!3963012 m!4532157))

(declare-fun m!4532183 () Bool)

(assert (=> b!3963012 m!4532183))

(assert (=> b!3963012 m!4532183))

(declare-fun m!4532185 () Bool)

(assert (=> b!3963012 m!4532185))

(assert (=> b!3963008 m!4532165))

(assert (=> b!3963008 m!4532007))

(assert (=> b!3963008 m!4532165))

(assert (=> b!3963008 m!4532007))

(assert (=> b!3963008 m!4532169))

(declare-fun m!4532187 () Bool)

(assert (=> b!3963008 m!4532187))

(assert (=> b!3963010 m!4532157))

(assert (=> b!3963010 m!4532177))

(assert (=> b!3963010 m!4532177))

(assert (=> b!3963010 m!4532179))

(assert (=> b!3963010 m!4532179))

(declare-fun m!4532189 () Bool)

(assert (=> b!3963010 m!4532189))

(declare-fun m!4532191 () Bool)

(assert (=> d!1173969 m!4532191))

(declare-fun m!4532193 () Bool)

(assert (=> d!1173969 m!4532193))

(declare-fun m!4532195 () Bool)

(assert (=> d!1173969 m!4532195))

(assert (=> d!1173969 m!4531919))

(assert (=> b!3963009 m!4532157))

(declare-fun m!4532197 () Bool)

(assert (=> b!3963009 m!4532197))

(assert (=> b!3963009 m!4532007))

(assert (=> b!3963007 m!4532157))

(assert (=> b!3962860 d!1173969))

(declare-fun d!1174021 () Bool)

(declare-fun lt!1387020 () Int)

(assert (=> d!1174021 (>= lt!1387020 0)))

(declare-fun e!2454269 () Int)

(assert (=> d!1174021 (= lt!1387020 e!2454269)))

(declare-fun c!687600 () Bool)

(assert (=> d!1174021 (= c!687600 ((_ is Nil!42239) lt!1386938))))

(assert (=> d!1174021 (= (size!31623 lt!1386938) lt!1387020)))

(declare-fun b!3963015 () Bool)

(assert (=> b!3963015 (= e!2454269 0)))

(declare-fun b!3963016 () Bool)

(assert (=> b!3963016 (= e!2454269 (+ 1 (size!31623 (t!330026 lt!1386938))))))

(assert (= (and d!1174021 c!687600) b!3963015))

(assert (= (and d!1174021 (not c!687600)) b!3963016))

(declare-fun m!4532199 () Bool)

(assert (=> b!3963016 m!4532199))

(assert (=> b!3962860 d!1174021))

(declare-fun d!1174023 () Bool)

(assert (=> d!1174023 (= (get!13932 lt!1386960) (v!39393 lt!1386960))))

(assert (=> b!3962860 d!1174023))

(declare-fun b!3963026 () Bool)

(declare-fun e!2454274 () List!42365)

(assert (=> b!3963026 (= e!2454274 (Cons!42241 (h!47661 lt!1386928) (++!11014 (t!330028 lt!1386928) (_1!23902 lt!1386942))))))

(declare-fun e!2454275 () Bool)

(declare-fun lt!1387023 () List!42365)

(declare-fun b!3963028 () Bool)

(assert (=> b!3963028 (= e!2454275 (or (not (= (_1!23902 lt!1386942) Nil!42241)) (= lt!1387023 lt!1386928)))))

(declare-fun b!3963025 () Bool)

(assert (=> b!3963025 (= e!2454274 (_1!23902 lt!1386942))))

(declare-fun d!1174025 () Bool)

(assert (=> d!1174025 e!2454275))

(declare-fun res!1604034 () Bool)

(assert (=> d!1174025 (=> (not res!1604034) (not e!2454275))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6413 (List!42365) (InoxSet Token!12394))

(assert (=> d!1174025 (= res!1604034 (= (content!6413 lt!1387023) ((_ map or) (content!6413 lt!1386928) (content!6413 (_1!23902 lt!1386942)))))))

(assert (=> d!1174025 (= lt!1387023 e!2454274)))

(declare-fun c!687603 () Bool)

(assert (=> d!1174025 (= c!687603 ((_ is Nil!42241) lt!1386928))))

(assert (=> d!1174025 (= (++!11014 lt!1386928 (_1!23902 lt!1386942)) lt!1387023)))

(declare-fun b!3963027 () Bool)

(declare-fun res!1604035 () Bool)

(assert (=> b!3963027 (=> (not res!1604035) (not e!2454275))))

(declare-fun size!31625 (List!42365) Int)

(assert (=> b!3963027 (= res!1604035 (= (size!31625 lt!1387023) (+ (size!31625 lt!1386928) (size!31625 (_1!23902 lt!1386942)))))))

(assert (= (and d!1174025 c!687603) b!3963025))

(assert (= (and d!1174025 (not c!687603)) b!3963026))

(assert (= (and d!1174025 res!1604034) b!3963027))

(assert (= (and b!3963027 res!1604035) b!3963028))

(declare-fun m!4532201 () Bool)

(assert (=> b!3963026 m!4532201))

(declare-fun m!4532203 () Bool)

(assert (=> d!1174025 m!4532203))

(declare-fun m!4532205 () Bool)

(assert (=> d!1174025 m!4532205))

(declare-fun m!4532207 () Bool)

(assert (=> d!1174025 m!4532207))

(declare-fun m!4532209 () Bool)

(assert (=> b!3963027 m!4532209))

(declare-fun m!4532211 () Bool)

(assert (=> b!3963027 m!4532211))

(declare-fun m!4532213 () Bool)

(assert (=> b!3963027 m!4532213))

(assert (=> b!3962842 d!1174025))

(declare-fun d!1174027 () Bool)

(assert (=> d!1174027 (= (isEmpty!25269 lt!1386931) ((_ is Nil!42241) lt!1386931))))

(assert (=> b!3962863 d!1174027))

(declare-fun d!1174029 () Bool)

(assert (=> d!1174029 (= (tail!6169 prefixTokens!80) (t!330028 prefixTokens!80))))

(assert (=> b!3962863 d!1174029))

(declare-fun d!1174031 () Bool)

(assert (=> d!1174031 (= (inv!56463 (tag!7488 (h!47662 rules!2768))) (= (mod (str.len (value!209531 (tag!7488 (h!47662 rules!2768)))) 2) 0))))

(assert (=> b!3962843 d!1174031))

(declare-fun d!1174033 () Bool)

(declare-fun res!1604038 () Bool)

(declare-fun e!2454278 () Bool)

(assert (=> d!1174033 (=> (not res!1604038) (not e!2454278))))

(declare-fun semiInverseModEq!2855 (Int Int) Bool)

(assert (=> d!1174033 (= res!1604038 (semiInverseModEq!2855 (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toValue!9108 (transformation!6628 (h!47662 rules!2768)))))))

(assert (=> d!1174033 (= (inv!56467 (transformation!6628 (h!47662 rules!2768))) e!2454278)))

(declare-fun b!3963031 () Bool)

(declare-fun equivClasses!2754 (Int Int) Bool)

(assert (=> b!3963031 (= e!2454278 (equivClasses!2754 (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toValue!9108 (transformation!6628 (h!47662 rules!2768)))))))

(assert (= (and d!1174033 res!1604038) b!3963031))

(declare-fun m!4532215 () Bool)

(assert (=> d!1174033 m!4532215))

(declare-fun m!4532217 () Bool)

(assert (=> b!3963031 m!4532217))

(assert (=> b!3962843 d!1174033))

(declare-fun d!1174035 () Bool)

(assert (=> d!1174035 (= (inv!56463 (tag!7488 (rule!9610 (h!47661 suffixTokens!72)))) (= (mod (str.len (value!209531 (tag!7488 (rule!9610 (h!47661 suffixTokens!72))))) 2) 0))))

(assert (=> b!3962841 d!1174035))

(declare-fun d!1174037 () Bool)

(declare-fun res!1604039 () Bool)

(declare-fun e!2454279 () Bool)

(assert (=> d!1174037 (=> (not res!1604039) (not e!2454279))))

(assert (=> d!1174037 (= res!1604039 (semiInverseModEq!2855 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toValue!9108 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))))))

(assert (=> d!1174037 (= (inv!56467 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) e!2454279)))

(declare-fun b!3963032 () Bool)

(assert (=> b!3963032 (= e!2454279 (equivClasses!2754 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toValue!9108 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))))))

(assert (= (and d!1174037 res!1604039) b!3963032))

(declare-fun m!4532219 () Bool)

(assert (=> d!1174037 m!4532219))

(declare-fun m!4532221 () Bool)

(assert (=> b!3963032 m!4532221))

(assert (=> b!3962841 d!1174037))

(declare-fun b!3963043 () Bool)

(declare-fun e!2454286 () tuple2!41536)

(assert (=> b!3963043 (= e!2454286 (tuple2!41537 Nil!42241 (_2!23901 lt!1386959)))))

(declare-fun b!3963044 () Bool)

(declare-fun e!2454287 () Bool)

(declare-fun lt!1387031 () tuple2!41536)

(assert (=> b!3963044 (= e!2454287 (= (_2!23902 lt!1387031) (_2!23901 lt!1386959)))))

(declare-fun b!3963045 () Bool)

(declare-fun e!2454288 () Bool)

(assert (=> b!3963045 (= e!2454288 (not (isEmpty!25269 (_1!23902 lt!1387031))))))

(declare-fun d!1174039 () Bool)

(assert (=> d!1174039 e!2454287))

(declare-fun c!687609 () Bool)

(assert (=> d!1174039 (= c!687609 (> (size!31625 (_1!23902 lt!1387031)) 0))))

(assert (=> d!1174039 (= lt!1387031 e!2454286)))

(declare-fun c!687608 () Bool)

(declare-fun lt!1387032 () Option!9048)

(assert (=> d!1174039 (= c!687608 ((_ is Some!9047) lt!1387032))))

(assert (=> d!1174039 (= lt!1387032 (maxPrefix!3521 thiss!20629 rules!2768 (_2!23901 lt!1386959)))))

(assert (=> d!1174039 (= (lexList!1985 thiss!20629 rules!2768 (_2!23901 lt!1386959)) lt!1387031)))

(declare-fun b!3963046 () Bool)

(declare-fun lt!1387030 () tuple2!41536)

(assert (=> b!3963046 (= e!2454286 (tuple2!41537 (Cons!42241 (_1!23901 (v!39393 lt!1387032)) (_1!23902 lt!1387030)) (_2!23902 lt!1387030)))))

(assert (=> b!3963046 (= lt!1387030 (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1387032))))))

(declare-fun b!3963047 () Bool)

(assert (=> b!3963047 (= e!2454287 e!2454288)))

(declare-fun res!1604042 () Bool)

(assert (=> b!3963047 (= res!1604042 (< (size!31623 (_2!23902 lt!1387031)) (size!31623 (_2!23901 lt!1386959))))))

(assert (=> b!3963047 (=> (not res!1604042) (not e!2454288))))

(assert (= (and d!1174039 c!687608) b!3963046))

(assert (= (and d!1174039 (not c!687608)) b!3963043))

(assert (= (and d!1174039 c!687609) b!3963047))

(assert (= (and d!1174039 (not c!687609)) b!3963044))

(assert (= (and b!3963047 res!1604042) b!3963045))

(declare-fun m!4532223 () Bool)

(assert (=> b!3963045 m!4532223))

(declare-fun m!4532225 () Bool)

(assert (=> d!1174039 m!4532225))

(declare-fun m!4532227 () Bool)

(assert (=> d!1174039 m!4532227))

(declare-fun m!4532229 () Bool)

(assert (=> b!3963046 m!4532229))

(declare-fun m!4532231 () Bool)

(assert (=> b!3963047 m!4532231))

(assert (=> b!3963047 m!4532003))

(assert (=> bm!285443 d!1174039))

(declare-fun d!1174041 () Bool)

(assert (=> d!1174041 (isPrefix!3717 lt!1386936 prefix!426)))

(declare-fun lt!1387035 () Unit!60815)

(declare-fun choose!23678 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> d!1174041 (= lt!1387035 (choose!23678 prefix!426 lt!1386936 lt!1386938))))

(assert (=> d!1174041 (isPrefix!3717 prefix!426 lt!1386938)))

(assert (=> d!1174041 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!313 prefix!426 lt!1386936 lt!1386938) lt!1387035)))

(declare-fun bs!587309 () Bool)

(assert (= bs!587309 d!1174041))

(assert (=> bs!587309 m!4531961))

(declare-fun m!4532233 () Bool)

(assert (=> bs!587309 m!4532233))

(assert (=> bs!587309 m!4531957))

(assert (=> b!3962866 d!1174041))

(declare-fun d!1174043 () Bool)

(assert (=> d!1174043 (isPrefix!3717 prefix!426 (++!11013 prefix!426 suffix!1176))))

(declare-fun lt!1387048 () Unit!60815)

(declare-fun choose!23679 (List!42363 List!42363) Unit!60815)

(assert (=> d!1174043 (= lt!1387048 (choose!23679 prefix!426 suffix!1176))))

(assert (=> d!1174043 (= (lemmaConcatTwoListThenFirstIsPrefix!2576 prefix!426 suffix!1176) lt!1387048)))

(declare-fun bs!587310 () Bool)

(assert (= bs!587310 d!1174043))

(assert (=> bs!587310 m!4531985))

(assert (=> bs!587310 m!4531985))

(declare-fun m!4532235 () Bool)

(assert (=> bs!587310 m!4532235))

(declare-fun m!4532237 () Bool)

(assert (=> bs!587310 m!4532237))

(assert (=> b!3962866 d!1174043))

(declare-fun b!3963076 () Bool)

(declare-fun e!2454303 () Bool)

(declare-fun tail!6171 (List!42363) List!42363)

(assert (=> b!3963076 (= e!2454303 (isPrefix!3717 (tail!6171 prefix!426) (tail!6171 lt!1386938)))))

(declare-fun b!3963074 () Bool)

(declare-fun e!2454304 () Bool)

(assert (=> b!3963074 (= e!2454304 e!2454303)))

(declare-fun res!1604065 () Bool)

(assert (=> b!3963074 (=> (not res!1604065) (not e!2454303))))

(assert (=> b!3963074 (= res!1604065 (not ((_ is Nil!42239) lt!1386938)))))

(declare-fun b!3963075 () Bool)

(declare-fun res!1604066 () Bool)

(assert (=> b!3963075 (=> (not res!1604066) (not e!2454303))))

(declare-fun head!8439 (List!42363) C!23252)

(assert (=> b!3963075 (= res!1604066 (= (head!8439 prefix!426) (head!8439 lt!1386938)))))

(declare-fun d!1174045 () Bool)

(declare-fun e!2454305 () Bool)

(assert (=> d!1174045 e!2454305))

(declare-fun res!1604067 () Bool)

(assert (=> d!1174045 (=> res!1604067 e!2454305)))

(declare-fun lt!1387051 () Bool)

(assert (=> d!1174045 (= res!1604067 (not lt!1387051))))

(assert (=> d!1174045 (= lt!1387051 e!2454304)))

(declare-fun res!1604068 () Bool)

(assert (=> d!1174045 (=> res!1604068 e!2454304)))

(assert (=> d!1174045 (= res!1604068 ((_ is Nil!42239) prefix!426))))

(assert (=> d!1174045 (= (isPrefix!3717 prefix!426 lt!1386938) lt!1387051)))

(declare-fun b!3963077 () Bool)

(assert (=> b!3963077 (= e!2454305 (>= (size!31623 lt!1386938) (size!31623 prefix!426)))))

(assert (= (and d!1174045 (not res!1604068)) b!3963074))

(assert (= (and b!3963074 res!1604065) b!3963075))

(assert (= (and b!3963075 res!1604066) b!3963076))

(assert (= (and d!1174045 (not res!1604067)) b!3963077))

(declare-fun m!4532239 () Bool)

(assert (=> b!3963076 m!4532239))

(declare-fun m!4532241 () Bool)

(assert (=> b!3963076 m!4532241))

(assert (=> b!3963076 m!4532239))

(assert (=> b!3963076 m!4532241))

(declare-fun m!4532243 () Bool)

(assert (=> b!3963076 m!4532243))

(declare-fun m!4532245 () Bool)

(assert (=> b!3963075 m!4532245))

(declare-fun m!4532247 () Bool)

(assert (=> b!3963075 m!4532247))

(assert (=> b!3963077 m!4532007))

(assert (=> b!3963077 m!4531955))

(assert (=> b!3962866 d!1174045))

(declare-fun d!1174047 () Bool)

(declare-fun lt!1387052 () Int)

(assert (=> d!1174047 (>= lt!1387052 0)))

(declare-fun e!2454306 () Int)

(assert (=> d!1174047 (= lt!1387052 e!2454306)))

(declare-fun c!687612 () Bool)

(assert (=> d!1174047 (= c!687612 ((_ is Nil!42239) prefix!426))))

(assert (=> d!1174047 (= (size!31623 prefix!426) lt!1387052)))

(declare-fun b!3963078 () Bool)

(assert (=> b!3963078 (= e!2454306 0)))

(declare-fun b!3963079 () Bool)

(assert (=> b!3963079 (= e!2454306 (+ 1 (size!31623 (t!330026 prefix!426))))))

(assert (= (and d!1174047 c!687612) b!3963078))

(assert (= (and d!1174047 (not c!687612)) b!3963079))

(declare-fun m!4532249 () Bool)

(assert (=> b!3963079 m!4532249))

(assert (=> b!3962866 d!1174047))

(declare-fun b!3963082 () Bool)

(declare-fun e!2454307 () Bool)

(assert (=> b!3963082 (= e!2454307 (isPrefix!3717 (tail!6171 lt!1386936) (tail!6171 prefix!426)))))

(declare-fun b!3963080 () Bool)

(declare-fun e!2454308 () Bool)

(assert (=> b!3963080 (= e!2454308 e!2454307)))

(declare-fun res!1604069 () Bool)

(assert (=> b!3963080 (=> (not res!1604069) (not e!2454307))))

(assert (=> b!3963080 (= res!1604069 (not ((_ is Nil!42239) prefix!426)))))

(declare-fun b!3963081 () Bool)

(declare-fun res!1604070 () Bool)

(assert (=> b!3963081 (=> (not res!1604070) (not e!2454307))))

(assert (=> b!3963081 (= res!1604070 (= (head!8439 lt!1386936) (head!8439 prefix!426)))))

(declare-fun d!1174049 () Bool)

(declare-fun e!2454309 () Bool)

(assert (=> d!1174049 e!2454309))

(declare-fun res!1604071 () Bool)

(assert (=> d!1174049 (=> res!1604071 e!2454309)))

(declare-fun lt!1387053 () Bool)

(assert (=> d!1174049 (= res!1604071 (not lt!1387053))))

(assert (=> d!1174049 (= lt!1387053 e!2454308)))

(declare-fun res!1604072 () Bool)

(assert (=> d!1174049 (=> res!1604072 e!2454308)))

(assert (=> d!1174049 (= res!1604072 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174049 (= (isPrefix!3717 lt!1386936 prefix!426) lt!1387053)))

(declare-fun b!3963083 () Bool)

(assert (=> b!3963083 (= e!2454309 (>= (size!31623 prefix!426) (size!31623 lt!1386936)))))

(assert (= (and d!1174049 (not res!1604072)) b!3963080))

(assert (= (and b!3963080 res!1604069) b!3963081))

(assert (= (and b!3963081 res!1604070) b!3963082))

(assert (= (and d!1174049 (not res!1604071)) b!3963083))

(declare-fun m!4532251 () Bool)

(assert (=> b!3963082 m!4532251))

(assert (=> b!3963082 m!4532239))

(assert (=> b!3963082 m!4532251))

(assert (=> b!3963082 m!4532239))

(declare-fun m!4532253 () Bool)

(assert (=> b!3963082 m!4532253))

(declare-fun m!4532255 () Bool)

(assert (=> b!3963081 m!4532255))

(assert (=> b!3963081 m!4532245))

(assert (=> b!3963083 m!4531955))

(assert (=> b!3963083 m!4531929))

(assert (=> b!3962866 d!1174049))

(declare-fun d!1174051 () Bool)

(assert (=> d!1174051 (= (inv!56463 (tag!7488 (rule!9610 (h!47661 prefixTokens!80)))) (= (mod (str.len (value!209531 (tag!7488 (rule!9610 (h!47661 prefixTokens!80))))) 2) 0))))

(assert (=> b!3962864 d!1174051))

(declare-fun d!1174053 () Bool)

(declare-fun res!1604073 () Bool)

(declare-fun e!2454310 () Bool)

(assert (=> d!1174053 (=> (not res!1604073) (not e!2454310))))

(assert (=> d!1174053 (= res!1604073 (semiInverseModEq!2855 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toValue!9108 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))))))

(assert (=> d!1174053 (= (inv!56467 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) e!2454310)))

(declare-fun b!3963084 () Bool)

(assert (=> b!3963084 (= e!2454310 (equivClasses!2754 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toValue!9108 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))))))

(assert (= (and d!1174053 res!1604073) b!3963084))

(declare-fun m!4532257 () Bool)

(assert (=> d!1174053 m!4532257))

(declare-fun m!4532259 () Bool)

(assert (=> b!3963084 m!4532259))

(assert (=> b!3962864 d!1174053))

(declare-fun d!1174055 () Bool)

(declare-fun lt!1387061 () List!42363)

(assert (=> d!1174055 (= (++!11013 lt!1386936 lt!1387061) lt!1386938)))

(declare-fun e!2454317 () List!42363)

(assert (=> d!1174055 (= lt!1387061 e!2454317)))

(declare-fun c!687616 () Bool)

(assert (=> d!1174055 (= c!687616 ((_ is Cons!42239) lt!1386936))))

(assert (=> d!1174055 (>= (size!31623 lt!1386938) (size!31623 lt!1386936))))

(assert (=> d!1174055 (= (getSuffix!2168 lt!1386938 lt!1386936) lt!1387061)))

(declare-fun b!3963098 () Bool)

(assert (=> b!3963098 (= e!2454317 (getSuffix!2168 (tail!6171 lt!1386938) (t!330026 lt!1386936)))))

(declare-fun b!3963099 () Bool)

(assert (=> b!3963099 (= e!2454317 lt!1386938)))

(assert (= (and d!1174055 c!687616) b!3963098))

(assert (= (and d!1174055 (not c!687616)) b!3963099))

(declare-fun m!4532283 () Bool)

(assert (=> d!1174055 m!4532283))

(assert (=> d!1174055 m!4532007))

(assert (=> d!1174055 m!4531929))

(assert (=> b!3963098 m!4532241))

(assert (=> b!3963098 m!4532241))

(declare-fun m!4532287 () Bool)

(assert (=> b!3963098 m!4532287))

(assert (=> b!3962868 d!1174055))

(declare-fun d!1174057 () Bool)

(assert (=> d!1174057 (= (_2!23901 (v!39393 lt!1386960)) lt!1386948)))

(declare-fun lt!1387065 () Unit!60815)

(declare-fun choose!23682 (List!42363 List!42363 List!42363 List!42363 List!42363) Unit!60815)

(assert (=> d!1174057 (= lt!1387065 (choose!23682 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386948 lt!1386938))))

(assert (=> d!1174057 (isPrefix!3717 lt!1386936 lt!1386938)))

(assert (=> d!1174057 (= (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386948 lt!1386938) lt!1387065)))

(declare-fun bs!587311 () Bool)

(assert (= bs!587311 d!1174057))

(declare-fun m!4532313 () Bool)

(assert (=> bs!587311 m!4532313))

(declare-fun m!4532315 () Bool)

(assert (=> bs!587311 m!4532315))

(assert (=> b!3962868 d!1174057))

(declare-fun b!3963106 () Bool)

(declare-fun e!2454320 () Bool)

(assert (=> b!3963106 (= e!2454320 (isPrefix!3717 (tail!6171 lt!1386936) (tail!6171 lt!1386939)))))

(declare-fun b!3963104 () Bool)

(declare-fun e!2454321 () Bool)

(assert (=> b!3963104 (= e!2454321 e!2454320)))

(declare-fun res!1604083 () Bool)

(assert (=> b!3963104 (=> (not res!1604083) (not e!2454320))))

(assert (=> b!3963104 (= res!1604083 (not ((_ is Nil!42239) lt!1386939)))))

(declare-fun b!3963105 () Bool)

(declare-fun res!1604084 () Bool)

(assert (=> b!3963105 (=> (not res!1604084) (not e!2454320))))

(assert (=> b!3963105 (= res!1604084 (= (head!8439 lt!1386936) (head!8439 lt!1386939)))))

(declare-fun d!1174063 () Bool)

(declare-fun e!2454322 () Bool)

(assert (=> d!1174063 e!2454322))

(declare-fun res!1604085 () Bool)

(assert (=> d!1174063 (=> res!1604085 e!2454322)))

(declare-fun lt!1387066 () Bool)

(assert (=> d!1174063 (= res!1604085 (not lt!1387066))))

(assert (=> d!1174063 (= lt!1387066 e!2454321)))

(declare-fun res!1604086 () Bool)

(assert (=> d!1174063 (=> res!1604086 e!2454321)))

(assert (=> d!1174063 (= res!1604086 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174063 (= (isPrefix!3717 lt!1386936 lt!1386939) lt!1387066)))

(declare-fun b!3963107 () Bool)

(assert (=> b!3963107 (= e!2454322 (>= (size!31623 lt!1386939) (size!31623 lt!1386936)))))

(assert (= (and d!1174063 (not res!1604086)) b!3963104))

(assert (= (and b!3963104 res!1604083) b!3963105))

(assert (= (and b!3963105 res!1604084) b!3963106))

(assert (= (and d!1174063 (not res!1604085)) b!3963107))

(assert (=> b!3963106 m!4532251))

(declare-fun m!4532317 () Bool)

(assert (=> b!3963106 m!4532317))

(assert (=> b!3963106 m!4532251))

(assert (=> b!3963106 m!4532317))

(declare-fun m!4532319 () Bool)

(assert (=> b!3963106 m!4532319))

(assert (=> b!3963105 m!4532255))

(declare-fun m!4532321 () Bool)

(assert (=> b!3963105 m!4532321))

(declare-fun m!4532323 () Bool)

(assert (=> b!3963107 m!4532323))

(assert (=> b!3963107 m!4531929))

(assert (=> b!3962868 d!1174063))

(declare-fun d!1174065 () Bool)

(declare-fun fromListB!2255 (List!42363) BalanceConc!25272)

(assert (=> d!1174065 (= (seqFromList!4887 lt!1386936) (fromListB!2255 lt!1386936))))

(declare-fun bs!587312 () Bool)

(assert (= bs!587312 d!1174065))

(declare-fun m!4532325 () Bool)

(assert (=> bs!587312 m!4532325))

(assert (=> b!3962868 d!1174065))

(declare-fun d!1174067 () Bool)

(declare-fun e!2454336 () Bool)

(assert (=> d!1174067 e!2454336))

(declare-fun res!1604099 () Bool)

(assert (=> d!1174067 (=> (not res!1604099) (not e!2454336))))

(declare-fun lt!1387074 () List!42363)

(declare-fun content!6415 (List!42363) (InoxSet C!23252))

(assert (=> d!1174067 (= res!1604099 (= (content!6415 lt!1387074) ((_ map or) (content!6415 lt!1386936) (content!6415 (_2!23901 (v!39393 lt!1386960))))))))

(declare-fun e!2454337 () List!42363)

(assert (=> d!1174067 (= lt!1387074 e!2454337)))

(declare-fun c!687623 () Bool)

(assert (=> d!1174067 (= c!687623 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174067 (= (++!11013 lt!1386936 (_2!23901 (v!39393 lt!1386960))) lt!1387074)))

(declare-fun b!3963131 () Bool)

(declare-fun res!1604098 () Bool)

(assert (=> b!3963131 (=> (not res!1604098) (not e!2454336))))

(assert (=> b!3963131 (= res!1604098 (= (size!31623 lt!1387074) (+ (size!31623 lt!1386936) (size!31623 (_2!23901 (v!39393 lt!1386960))))))))

(declare-fun b!3963130 () Bool)

(assert (=> b!3963130 (= e!2454337 (Cons!42239 (h!47659 lt!1386936) (++!11013 (t!330026 lt!1386936) (_2!23901 (v!39393 lt!1386960)))))))

(declare-fun b!3963129 () Bool)

(assert (=> b!3963129 (= e!2454337 (_2!23901 (v!39393 lt!1386960)))))

(declare-fun b!3963132 () Bool)

(assert (=> b!3963132 (= e!2454336 (or (not (= (_2!23901 (v!39393 lt!1386960)) Nil!42239)) (= lt!1387074 lt!1386936)))))

(assert (= (and d!1174067 c!687623) b!3963129))

(assert (= (and d!1174067 (not c!687623)) b!3963130))

(assert (= (and d!1174067 res!1604099) b!3963131))

(assert (= (and b!3963131 res!1604098) b!3963132))

(declare-fun m!4532349 () Bool)

(assert (=> d!1174067 m!4532349))

(declare-fun m!4532351 () Bool)

(assert (=> d!1174067 m!4532351))

(declare-fun m!4532353 () Bool)

(assert (=> d!1174067 m!4532353))

(declare-fun m!4532355 () Bool)

(assert (=> b!3963131 m!4532355))

(assert (=> b!3963131 m!4531929))

(assert (=> b!3963131 m!4531885))

(declare-fun m!4532357 () Bool)

(assert (=> b!3963130 m!4532357))

(assert (=> b!3962868 d!1174067))

(declare-fun d!1174083 () Bool)

(declare-fun dynLambda!18035 (Int BalanceConc!25272) TokenValue!6858)

(assert (=> d!1174083 (= (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (seqFromList!4887 lt!1386936)) (dynLambda!18035 (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))) (seqFromList!4887 lt!1386936)))))

(declare-fun b_lambda!115885 () Bool)

(assert (=> (not b_lambda!115885) (not d!1174083)))

(declare-fun tb!238935 () Bool)

(declare-fun t!330037 () Bool)

(assert (=> (and b!3962838 (= (toValue!9108 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330037) tb!238935))

(declare-fun result!289346 () Bool)

(assert (=> tb!238935 (= result!289346 (inv!21 (dynLambda!18035 (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))) (seqFromList!4887 lt!1386936))))))

(declare-fun m!4532359 () Bool)

(assert (=> tb!238935 m!4532359))

(assert (=> d!1174083 t!330037))

(declare-fun b_and!304333 () Bool)

(assert (= b_and!304315 (and (=> t!330037 result!289346) b_and!304333)))

(declare-fun t!330039 () Bool)

(declare-fun tb!238937 () Bool)

(assert (=> (and b!3962862 (= (toValue!9108 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330039) tb!238937))

(declare-fun result!289350 () Bool)

(assert (= result!289350 result!289346))

(assert (=> d!1174083 t!330039))

(declare-fun b_and!304335 () Bool)

(assert (= b_and!304319 (and (=> t!330039 result!289350) b_and!304335)))

(declare-fun tb!238939 () Bool)

(declare-fun t!330041 () Bool)

(assert (=> (and b!3962846 (= (toValue!9108 (transformation!6628 (h!47662 rules!2768))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330041) tb!238939))

(declare-fun result!289352 () Bool)

(assert (= result!289352 result!289346))

(assert (=> d!1174083 t!330041))

(declare-fun b_and!304337 () Bool)

(assert (= b_and!304323 (and (=> t!330041 result!289352) b_and!304337)))

(assert (=> d!1174083 m!4531903))

(declare-fun m!4532365 () Bool)

(assert (=> d!1174083 m!4532365))

(assert (=> b!3962868 d!1174083))

(declare-fun d!1174087 () Bool)

(declare-fun list!15677 (Conc!12839) List!42363)

(assert (=> d!1174087 (= (list!15676 (charsOf!4446 (_1!23901 (v!39393 lt!1386960)))) (list!15677 (c!687565 (charsOf!4446 (_1!23901 (v!39393 lt!1386960))))))))

(declare-fun bs!587315 () Bool)

(assert (= bs!587315 d!1174087))

(declare-fun m!4532367 () Bool)

(assert (=> bs!587315 m!4532367))

(assert (=> b!3962868 d!1174087))

(declare-fun d!1174089 () Bool)

(assert (=> d!1174089 (ruleValid!2570 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))))))

(declare-fun lt!1387084 () Unit!60815)

(declare-fun choose!23683 (LexerInterface!6217 Rule!13056 List!42366) Unit!60815)

(assert (=> d!1174089 (= lt!1387084 (choose!23683 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) rules!2768))))

(declare-fun contains!8431 (List!42366 Rule!13056) Bool)

(assert (=> d!1174089 (contains!8431 rules!2768 (rule!9610 (_1!23901 (v!39393 lt!1386960))))))

(assert (=> d!1174089 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1646 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960))) rules!2768) lt!1387084)))

(declare-fun bs!587317 () Bool)

(assert (= bs!587317 d!1174089))

(assert (=> bs!587317 m!4531919))

(declare-fun m!4532373 () Bool)

(assert (=> bs!587317 m!4532373))

(declare-fun m!4532375 () Bool)

(assert (=> bs!587317 m!4532375))

(assert (=> b!3962868 d!1174089))

(declare-fun d!1174095 () Bool)

(declare-fun res!1604104 () Bool)

(declare-fun e!2454344 () Bool)

(assert (=> d!1174095 (=> (not res!1604104) (not e!2454344))))

(declare-fun validRegex!5249 (Regex!11533) Bool)

(assert (=> d!1174095 (= res!1604104 (validRegex!5249 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))))))

(assert (=> d!1174095 (= (ruleValid!2570 thiss!20629 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) e!2454344)))

(declare-fun b!3963141 () Bool)

(declare-fun res!1604105 () Bool)

(assert (=> b!3963141 (=> (not res!1604105) (not e!2454344))))

(declare-fun nullable!4050 (Regex!11533) Bool)

(assert (=> b!3963141 (= res!1604105 (not (nullable!4050 (regex!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))))))

(declare-fun b!3963142 () Bool)

(assert (=> b!3963142 (= e!2454344 (not (= (tag!7488 (rule!9610 (_1!23901 (v!39393 lt!1386960)))) (String!48009 ""))))))

(assert (= (and d!1174095 res!1604104) b!3963141))

(assert (= (and b!3963141 res!1604105) b!3963142))

(declare-fun m!4532377 () Bool)

(assert (=> d!1174095 m!4532377))

(declare-fun m!4532379 () Bool)

(assert (=> b!3963141 m!4532379))

(assert (=> b!3962868 d!1174095))

(declare-fun b!3963143 () Bool)

(declare-fun e!2454345 () tuple2!41536)

(assert (=> b!3963143 (= e!2454345 (tuple2!41537 Nil!42241 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun b!3963144 () Bool)

(declare-fun e!2454346 () Bool)

(declare-fun lt!1387086 () tuple2!41536)

(assert (=> b!3963144 (= e!2454346 (= (_2!23902 lt!1387086) (_2!23901 (v!39393 lt!1386960))))))

(declare-fun b!3963145 () Bool)

(declare-fun e!2454347 () Bool)

(assert (=> b!3963145 (= e!2454347 (not (isEmpty!25269 (_1!23902 lt!1387086))))))

(declare-fun d!1174097 () Bool)

(assert (=> d!1174097 e!2454346))

(declare-fun c!687626 () Bool)

(assert (=> d!1174097 (= c!687626 (> (size!31625 (_1!23902 lt!1387086)) 0))))

(assert (=> d!1174097 (= lt!1387086 e!2454345)))

(declare-fun c!687625 () Bool)

(declare-fun lt!1387087 () Option!9048)

(assert (=> d!1174097 (= c!687625 ((_ is Some!9047) lt!1387087))))

(assert (=> d!1174097 (= lt!1387087 (maxPrefix!3521 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1386960))))))

(assert (=> d!1174097 (= (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1386960))) lt!1387086)))

(declare-fun b!3963146 () Bool)

(declare-fun lt!1387085 () tuple2!41536)

(assert (=> b!3963146 (= e!2454345 (tuple2!41537 (Cons!42241 (_1!23901 (v!39393 lt!1387087)) (_1!23902 lt!1387085)) (_2!23902 lt!1387085)))))

(assert (=> b!3963146 (= lt!1387085 (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1387087))))))

(declare-fun b!3963147 () Bool)

(assert (=> b!3963147 (= e!2454346 e!2454347)))

(declare-fun res!1604106 () Bool)

(assert (=> b!3963147 (= res!1604106 (< (size!31623 (_2!23902 lt!1387086)) (size!31623 (_2!23901 (v!39393 lt!1386960)))))))

(assert (=> b!3963147 (=> (not res!1604106) (not e!2454347))))

(assert (= (and d!1174097 c!687625) b!3963146))

(assert (= (and d!1174097 (not c!687625)) b!3963143))

(assert (= (and d!1174097 c!687626) b!3963147))

(assert (= (and d!1174097 (not c!687626)) b!3963144))

(assert (= (and b!3963147 res!1604106) b!3963145))

(declare-fun m!4532381 () Bool)

(assert (=> b!3963145 m!4532381))

(declare-fun m!4532383 () Bool)

(assert (=> d!1174097 m!4532383))

(declare-fun m!4532385 () Bool)

(assert (=> d!1174097 m!4532385))

(declare-fun m!4532387 () Bool)

(assert (=> b!3963146 m!4532387))

(declare-fun m!4532389 () Bool)

(assert (=> b!3963147 m!4532389))

(assert (=> b!3963147 m!4531885))

(assert (=> b!3962868 d!1174097))

(declare-fun d!1174099 () Bool)

(assert (=> d!1174099 (isPrefix!3717 lt!1386936 (++!11013 lt!1386936 (_2!23901 (v!39393 lt!1386960))))))

(declare-fun lt!1387088 () Unit!60815)

(assert (=> d!1174099 (= lt!1387088 (choose!23679 lt!1386936 (_2!23901 (v!39393 lt!1386960))))))

(assert (=> d!1174099 (= (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386936 (_2!23901 (v!39393 lt!1386960))) lt!1387088)))

(declare-fun bs!587318 () Bool)

(assert (= bs!587318 d!1174099))

(assert (=> bs!587318 m!4531909))

(assert (=> bs!587318 m!4531909))

(declare-fun m!4532391 () Bool)

(assert (=> bs!587318 m!4532391))

(declare-fun m!4532393 () Bool)

(assert (=> bs!587318 m!4532393))

(assert (=> b!3962868 d!1174099))

(declare-fun d!1174101 () Bool)

(declare-fun lt!1387089 () Int)

(assert (=> d!1174101 (>= lt!1387089 0)))

(declare-fun e!2454348 () Int)

(assert (=> d!1174101 (= lt!1387089 e!2454348)))

(declare-fun c!687627 () Bool)

(assert (=> d!1174101 (= c!687627 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174101 (= (size!31623 lt!1386936) lt!1387089)))

(declare-fun b!3963148 () Bool)

(assert (=> b!3963148 (= e!2454348 0)))

(declare-fun b!3963149 () Bool)

(assert (=> b!3963149 (= e!2454348 (+ 1 (size!31623 (t!330026 lt!1386936))))))

(assert (= (and d!1174101 c!687627) b!3963148))

(assert (= (and d!1174101 (not c!687627)) b!3963149))

(declare-fun m!4532395 () Bool)

(assert (=> b!3963149 m!4532395))

(assert (=> b!3962868 d!1174101))

(declare-fun d!1174103 () Bool)

(declare-fun lt!1387092 () BalanceConc!25272)

(assert (=> d!1174103 (= (list!15676 lt!1387092) (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960))))))

(declare-fun dynLambda!18036 (Int TokenValue!6858) BalanceConc!25272)

(assert (=> d!1174103 (= lt!1387092 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))) (value!209532 (_1!23901 (v!39393 lt!1386960)))))))

(assert (=> d!1174103 (= (charsOf!4446 (_1!23901 (v!39393 lt!1386960))) lt!1387092)))

(declare-fun b_lambda!115887 () Bool)

(assert (=> (not b_lambda!115887) (not d!1174103)))

(declare-fun t!330043 () Bool)

(declare-fun tb!238941 () Bool)

(assert (=> (and b!3962838 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330043) tb!238941))

(declare-fun b!3963154 () Bool)

(declare-fun e!2454351 () Bool)

(declare-fun tp!1207960 () Bool)

(declare-fun inv!56470 (Conc!12839) Bool)

(assert (=> b!3963154 (= e!2454351 (and (inv!56470 (c!687565 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))) (value!209532 (_1!23901 (v!39393 lt!1386960)))))) tp!1207960))))

(declare-fun result!289354 () Bool)

(declare-fun inv!56471 (BalanceConc!25272) Bool)

(assert (=> tb!238941 (= result!289354 (and (inv!56471 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960))))) (value!209532 (_1!23901 (v!39393 lt!1386960))))) e!2454351))))

(assert (= tb!238941 b!3963154))

(declare-fun m!4532397 () Bool)

(assert (=> b!3963154 m!4532397))

(declare-fun m!4532399 () Bool)

(assert (=> tb!238941 m!4532399))

(assert (=> d!1174103 t!330043))

(declare-fun b_and!304339 () Bool)

(assert (= b_and!304317 (and (=> t!330043 result!289354) b_and!304339)))

(declare-fun tb!238943 () Bool)

(declare-fun t!330045 () Bool)

(assert (=> (and b!3962862 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330045) tb!238943))

(declare-fun result!289358 () Bool)

(assert (= result!289358 result!289354))

(assert (=> d!1174103 t!330045))

(declare-fun b_and!304341 () Bool)

(assert (= b_and!304321 (and (=> t!330045 result!289358) b_and!304341)))

(declare-fun tb!238945 () Bool)

(declare-fun t!330047 () Bool)

(assert (=> (and b!3962846 (= (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330047) tb!238945))

(declare-fun result!289360 () Bool)

(assert (= result!289360 result!289354))

(assert (=> d!1174103 t!330047))

(declare-fun b_and!304343 () Bool)

(assert (= b_and!304325 (and (=> t!330047 result!289360) b_and!304343)))

(declare-fun m!4532401 () Bool)

(assert (=> d!1174103 m!4532401))

(declare-fun m!4532403 () Bool)

(assert (=> d!1174103 m!4532403))

(assert (=> b!3962868 d!1174103))

(declare-fun d!1174105 () Bool)

(assert (=> d!1174105 (= (size!31622 (_1!23901 (v!39393 lt!1386960))) (size!31623 (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960)))))))

(declare-fun Unit!60824 () Unit!60815)

(assert (=> d!1174105 (= (lemmaCharactersSize!1281 (_1!23901 (v!39393 lt!1386960))) Unit!60824)))

(declare-fun bs!587319 () Bool)

(assert (= bs!587319 d!1174105))

(assert (=> bs!587319 m!4531977))

(assert (=> b!3962868 d!1174105))

(declare-fun d!1174107 () Bool)

(declare-fun e!2454352 () Bool)

(assert (=> d!1174107 e!2454352))

(declare-fun res!1604108 () Bool)

(assert (=> d!1174107 (=> (not res!1604108) (not e!2454352))))

(declare-fun lt!1387093 () List!42363)

(assert (=> d!1174107 (= res!1604108 (= (content!6415 lt!1387093) ((_ map or) (content!6415 lt!1386936) (content!6415 lt!1386954))))))

(declare-fun e!2454353 () List!42363)

(assert (=> d!1174107 (= lt!1387093 e!2454353)))

(declare-fun c!687628 () Bool)

(assert (=> d!1174107 (= c!687628 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174107 (= (++!11013 lt!1386936 lt!1386954) lt!1387093)))

(declare-fun b!3963157 () Bool)

(declare-fun res!1604107 () Bool)

(assert (=> b!3963157 (=> (not res!1604107) (not e!2454352))))

(assert (=> b!3963157 (= res!1604107 (= (size!31623 lt!1387093) (+ (size!31623 lt!1386936) (size!31623 lt!1386954))))))

(declare-fun b!3963156 () Bool)

(assert (=> b!3963156 (= e!2454353 (Cons!42239 (h!47659 lt!1386936) (++!11013 (t!330026 lt!1386936) lt!1386954)))))

(declare-fun b!3963155 () Bool)

(assert (=> b!3963155 (= e!2454353 lt!1386954)))

(declare-fun b!3963158 () Bool)

(assert (=> b!3963158 (= e!2454352 (or (not (= lt!1386954 Nil!42239)) (= lt!1387093 lt!1386936)))))

(assert (= (and d!1174107 c!687628) b!3963155))

(assert (= (and d!1174107 (not c!687628)) b!3963156))

(assert (= (and d!1174107 res!1604108) b!3963157))

(assert (= (and b!3963157 res!1604107) b!3963158))

(declare-fun m!4532405 () Bool)

(assert (=> d!1174107 m!4532405))

(assert (=> d!1174107 m!4532351))

(declare-fun m!4532407 () Bool)

(assert (=> d!1174107 m!4532407))

(declare-fun m!4532409 () Bool)

(assert (=> b!3963157 m!4532409))

(assert (=> b!3963157 m!4531929))

(declare-fun m!4532411 () Bool)

(assert (=> b!3963157 m!4532411))

(declare-fun m!4532413 () Bool)

(assert (=> b!3963156 m!4532413))

(assert (=> b!3962848 d!1174107))

(declare-fun d!1174109 () Bool)

(declare-fun lt!1387094 () List!42363)

(assert (=> d!1174109 (= (++!11013 lt!1386936 lt!1387094) prefix!426)))

(declare-fun e!2454354 () List!42363)

(assert (=> d!1174109 (= lt!1387094 e!2454354)))

(declare-fun c!687629 () Bool)

(assert (=> d!1174109 (= c!687629 ((_ is Cons!42239) lt!1386936))))

(assert (=> d!1174109 (>= (size!31623 prefix!426) (size!31623 lt!1386936))))

(assert (=> d!1174109 (= (getSuffix!2168 prefix!426 lt!1386936) lt!1387094)))

(declare-fun b!3963159 () Bool)

(assert (=> b!3963159 (= e!2454354 (getSuffix!2168 (tail!6171 prefix!426) (t!330026 lt!1386936)))))

(declare-fun b!3963160 () Bool)

(assert (=> b!3963160 (= e!2454354 prefix!426)))

(assert (= (and d!1174109 c!687629) b!3963159))

(assert (= (and d!1174109 (not c!687629)) b!3963160))

(declare-fun m!4532415 () Bool)

(assert (=> d!1174109 m!4532415))

(assert (=> d!1174109 m!4531955))

(assert (=> d!1174109 m!4531929))

(assert (=> b!3963159 m!4532239))

(assert (=> b!3963159 m!4532239))

(declare-fun m!4532417 () Bool)

(assert (=> b!3963159 m!4532417))

(assert (=> b!3962848 d!1174109))

(declare-fun d!1174111 () Bool)

(declare-fun e!2454355 () Bool)

(assert (=> d!1174111 e!2454355))

(declare-fun res!1604110 () Bool)

(assert (=> d!1174111 (=> (not res!1604110) (not e!2454355))))

(declare-fun lt!1387095 () List!42363)

(assert (=> d!1174111 (= res!1604110 (= (content!6415 lt!1387095) ((_ map or) (content!6415 lt!1386949) (content!6415 suffix!1176))))))

(declare-fun e!2454356 () List!42363)

(assert (=> d!1174111 (= lt!1387095 e!2454356)))

(declare-fun c!687630 () Bool)

(assert (=> d!1174111 (= c!687630 ((_ is Nil!42239) lt!1386949))))

(assert (=> d!1174111 (= (++!11013 lt!1386949 suffix!1176) lt!1387095)))

(declare-fun b!3963163 () Bool)

(declare-fun res!1604109 () Bool)

(assert (=> b!3963163 (=> (not res!1604109) (not e!2454355))))

(assert (=> b!3963163 (= res!1604109 (= (size!31623 lt!1387095) (+ (size!31623 lt!1386949) (size!31623 suffix!1176))))))

(declare-fun b!3963162 () Bool)

(assert (=> b!3963162 (= e!2454356 (Cons!42239 (h!47659 lt!1386949) (++!11013 (t!330026 lt!1386949) suffix!1176)))))

(declare-fun b!3963161 () Bool)

(assert (=> b!3963161 (= e!2454356 suffix!1176)))

(declare-fun b!3963164 () Bool)

(assert (=> b!3963164 (= e!2454355 (or (not (= suffix!1176 Nil!42239)) (= lt!1387095 lt!1386949)))))

(assert (= (and d!1174111 c!687630) b!3963161))

(assert (= (and d!1174111 (not c!687630)) b!3963162))

(assert (= (and d!1174111 res!1604110) b!3963163))

(assert (= (and b!3963163 res!1604109) b!3963164))

(declare-fun m!4532419 () Bool)

(assert (=> d!1174111 m!4532419))

(declare-fun m!4532421 () Bool)

(assert (=> d!1174111 m!4532421))

(declare-fun m!4532423 () Bool)

(assert (=> d!1174111 m!4532423))

(declare-fun m!4532425 () Bool)

(assert (=> b!3963163 m!4532425))

(declare-fun m!4532427 () Bool)

(assert (=> b!3963163 m!4532427))

(assert (=> b!3963163 m!4531883))

(declare-fun m!4532429 () Bool)

(assert (=> b!3963162 m!4532429))

(assert (=> b!3962827 d!1174111))

(declare-fun d!1174113 () Bool)

(assert (=> d!1174113 (not (= (lexList!1985 thiss!20629 rules!2768 (_2!23901 lt!1386959)) (tuple2!41537 (++!11014 lt!1386931 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1387102 () Unit!60815)

(declare-fun choose!23687 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42365 List!42363 List!42365) Unit!60815)

(assert (=> d!1174113 (= lt!1387102 (choose!23687 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91 lt!1386931))))

(assert (=> d!1174113 (not (isEmpty!25270 rules!2768))))

(assert (=> d!1174113 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!156 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91 lt!1386931) lt!1387102)))

(declare-fun bs!587321 () Bool)

(assert (= bs!587321 d!1174113))

(assert (=> bs!587321 m!4532009))

(assert (=> bs!587321 m!4531991))

(declare-fun m!4532443 () Bool)

(assert (=> bs!587321 m!4532443))

(assert (=> bs!587321 m!4532015))

(assert (=> b!3962867 d!1174113))

(declare-fun b!3963170 () Bool)

(declare-fun e!2454359 () List!42365)

(assert (=> b!3963170 (= e!2454359 (Cons!42241 (h!47661 lt!1386931) (++!11014 (t!330028 lt!1386931) suffixTokens!72)))))

(declare-fun lt!1387103 () List!42365)

(declare-fun b!3963172 () Bool)

(declare-fun e!2454360 () Bool)

(assert (=> b!3963172 (= e!2454360 (or (not (= suffixTokens!72 Nil!42241)) (= lt!1387103 lt!1386931)))))

(declare-fun b!3963169 () Bool)

(assert (=> b!3963169 (= e!2454359 suffixTokens!72)))

(declare-fun d!1174119 () Bool)

(assert (=> d!1174119 e!2454360))

(declare-fun res!1604113 () Bool)

(assert (=> d!1174119 (=> (not res!1604113) (not e!2454360))))

(assert (=> d!1174119 (= res!1604113 (= (content!6413 lt!1387103) ((_ map or) (content!6413 lt!1386931) (content!6413 suffixTokens!72))))))

(assert (=> d!1174119 (= lt!1387103 e!2454359)))

(declare-fun c!687632 () Bool)

(assert (=> d!1174119 (= c!687632 ((_ is Nil!42241) lt!1386931))))

(assert (=> d!1174119 (= (++!11014 lt!1386931 suffixTokens!72) lt!1387103)))

(declare-fun b!3963171 () Bool)

(declare-fun res!1604114 () Bool)

(assert (=> b!3963171 (=> (not res!1604114) (not e!2454360))))

(assert (=> b!3963171 (= res!1604114 (= (size!31625 lt!1387103) (+ (size!31625 lt!1386931) (size!31625 suffixTokens!72))))))

(assert (= (and d!1174119 c!687632) b!3963169))

(assert (= (and d!1174119 (not c!687632)) b!3963170))

(assert (= (and d!1174119 res!1604113) b!3963171))

(assert (= (and b!3963171 res!1604114) b!3963172))

(declare-fun m!4532445 () Bool)

(assert (=> b!3963170 m!4532445))

(declare-fun m!4532447 () Bool)

(assert (=> d!1174119 m!4532447))

(declare-fun m!4532449 () Bool)

(assert (=> d!1174119 m!4532449))

(declare-fun m!4532451 () Bool)

(assert (=> d!1174119 m!4532451))

(declare-fun m!4532453 () Bool)

(assert (=> b!3963171 m!4532453))

(declare-fun m!4532455 () Bool)

(assert (=> b!3963171 m!4532455))

(declare-fun m!4532457 () Bool)

(assert (=> b!3963171 m!4532457))

(assert (=> b!3962867 d!1174119))

(assert (=> b!3962847 d!1174043))

(assert (=> b!3962847 d!1174045))

(declare-fun d!1174121 () Bool)

(assert (=> d!1174121 (= lt!1386936 prefix!426)))

(declare-fun lt!1387106 () Unit!60815)

(declare-fun choose!23688 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> d!1174121 (= lt!1387106 (choose!23688 lt!1386936 prefix!426 lt!1386938))))

(assert (=> d!1174121 (isPrefix!3717 lt!1386936 lt!1386938)))

(assert (=> d!1174121 (= (lemmaIsPrefixSameLengthThenSameList!839 lt!1386936 prefix!426 lt!1386938) lt!1387106)))

(declare-fun bs!587322 () Bool)

(assert (= bs!587322 d!1174121))

(declare-fun m!4532459 () Bool)

(assert (=> bs!587322 m!4532459))

(assert (=> bs!587322 m!4532315))

(assert (=> b!3962847 d!1174121))

(declare-fun d!1174123 () Bool)

(assert (=> d!1174123 (= (_2!23901 (v!39393 lt!1386960)) suffix!1176)))

(declare-fun lt!1387107 () Unit!60815)

(assert (=> d!1174123 (= lt!1387107 (choose!23682 lt!1386936 (_2!23901 (v!39393 lt!1386960)) prefix!426 suffix!1176 lt!1386938))))

(assert (=> d!1174123 (isPrefix!3717 lt!1386936 lt!1386938)))

(assert (=> d!1174123 (= (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) prefix!426 suffix!1176 lt!1386938) lt!1387107)))

(declare-fun bs!587323 () Bool)

(assert (= bs!587323 d!1174123))

(declare-fun m!4532461 () Bool)

(assert (=> bs!587323 m!4532461))

(assert (=> bs!587323 m!4532315))

(assert (=> b!3962847 d!1174123))

(declare-fun d!1174125 () Bool)

(declare-fun lt!1387108 () Int)

(assert (=> d!1174125 (>= lt!1387108 0)))

(declare-fun e!2454361 () Int)

(assert (=> d!1174125 (= lt!1387108 e!2454361)))

(declare-fun c!687633 () Bool)

(assert (=> d!1174125 (= c!687633 ((_ is Nil!42239) (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960)))))))

(assert (=> d!1174125 (= (size!31623 (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960)))) lt!1387108)))

(declare-fun b!3963173 () Bool)

(assert (=> b!3963173 (= e!2454361 0)))

(declare-fun b!3963174 () Bool)

(assert (=> b!3963174 (= e!2454361 (+ 1 (size!31623 (t!330026 (originalCharacters!7228 (_1!23901 (v!39393 lt!1386960)))))))))

(assert (= (and d!1174125 c!687633) b!3963173))

(assert (= (and d!1174125 (not c!687633)) b!3963174))

(declare-fun m!4532463 () Bool)

(assert (=> b!3963174 m!4532463))

(assert (=> b!3962850 d!1174125))

(declare-fun d!1174127 () Bool)

(declare-fun c!687638 () Bool)

(assert (=> d!1174127 (= c!687638 ((_ is IntegerValue!20574) (value!209532 (h!47661 suffixTokens!72))))))

(declare-fun e!2454369 () Bool)

(assert (=> d!1174127 (= (inv!21 (value!209532 (h!47661 suffixTokens!72))) e!2454369)))

(declare-fun b!3963185 () Bool)

(declare-fun e!2454370 () Bool)

(assert (=> b!3963185 (= e!2454369 e!2454370)))

(declare-fun c!687639 () Bool)

(assert (=> b!3963185 (= c!687639 ((_ is IntegerValue!20575) (value!209532 (h!47661 suffixTokens!72))))))

(declare-fun b!3963186 () Bool)

(declare-fun inv!16 (TokenValue!6858) Bool)

(assert (=> b!3963186 (= e!2454369 (inv!16 (value!209532 (h!47661 suffixTokens!72))))))

(declare-fun b!3963187 () Bool)

(declare-fun e!2454368 () Bool)

(declare-fun inv!15 (TokenValue!6858) Bool)

(assert (=> b!3963187 (= e!2454368 (inv!15 (value!209532 (h!47661 suffixTokens!72))))))

(declare-fun b!3963188 () Bool)

(declare-fun inv!17 (TokenValue!6858) Bool)

(assert (=> b!3963188 (= e!2454370 (inv!17 (value!209532 (h!47661 suffixTokens!72))))))

(declare-fun b!3963189 () Bool)

(declare-fun res!1604117 () Bool)

(assert (=> b!3963189 (=> res!1604117 e!2454368)))

(assert (=> b!3963189 (= res!1604117 (not ((_ is IntegerValue!20576) (value!209532 (h!47661 suffixTokens!72)))))))

(assert (=> b!3963189 (= e!2454370 e!2454368)))

(assert (= (and d!1174127 c!687638) b!3963186))

(assert (= (and d!1174127 (not c!687638)) b!3963185))

(assert (= (and b!3963185 c!687639) b!3963188))

(assert (= (and b!3963185 (not c!687639)) b!3963189))

(assert (= (and b!3963189 (not res!1604117)) b!3963187))

(declare-fun m!4532465 () Bool)

(assert (=> b!3963186 m!4532465))

(declare-fun m!4532467 () Bool)

(assert (=> b!3963187 m!4532467))

(declare-fun m!4532469 () Bool)

(assert (=> b!3963188 m!4532469))

(assert (=> b!3962829 d!1174127))

(declare-fun d!1174129 () Bool)

(assert (=> d!1174129 (= (isEmpty!25269 lt!1386957) ((_ is Nil!42241) lt!1386957))))

(assert (=> b!3962871 d!1174129))

(declare-fun d!1174131 () Bool)

(assert (=> d!1174131 (= (isEmpty!25268 prefix!426) ((_ is Nil!42239) prefix!426))))

(assert (=> b!3962869 d!1174131))

(declare-fun d!1174133 () Bool)

(assert (=> d!1174133 (= (isEmpty!25269 prefixTokens!80) ((_ is Nil!42241) prefixTokens!80))))

(assert (=> b!3962849 d!1174133))

(declare-fun d!1174135 () Bool)

(declare-fun c!687640 () Bool)

(assert (=> d!1174135 (= c!687640 ((_ is IntegerValue!20574) (value!209532 (h!47661 prefixTokens!80))))))

(declare-fun e!2454372 () Bool)

(assert (=> d!1174135 (= (inv!21 (value!209532 (h!47661 prefixTokens!80))) e!2454372)))

(declare-fun b!3963190 () Bool)

(declare-fun e!2454373 () Bool)

(assert (=> b!3963190 (= e!2454372 e!2454373)))

(declare-fun c!687641 () Bool)

(assert (=> b!3963190 (= c!687641 ((_ is IntegerValue!20575) (value!209532 (h!47661 prefixTokens!80))))))

(declare-fun b!3963191 () Bool)

(assert (=> b!3963191 (= e!2454372 (inv!16 (value!209532 (h!47661 prefixTokens!80))))))

(declare-fun b!3963192 () Bool)

(declare-fun e!2454371 () Bool)

(assert (=> b!3963192 (= e!2454371 (inv!15 (value!209532 (h!47661 prefixTokens!80))))))

(declare-fun b!3963193 () Bool)

(assert (=> b!3963193 (= e!2454373 (inv!17 (value!209532 (h!47661 prefixTokens!80))))))

(declare-fun b!3963194 () Bool)

(declare-fun res!1604118 () Bool)

(assert (=> b!3963194 (=> res!1604118 e!2454371)))

(assert (=> b!3963194 (= res!1604118 (not ((_ is IntegerValue!20576) (value!209532 (h!47661 prefixTokens!80)))))))

(assert (=> b!3963194 (= e!2454373 e!2454371)))

(assert (= (and d!1174135 c!687640) b!3963191))

(assert (= (and d!1174135 (not c!687640)) b!3963190))

(assert (= (and b!3963190 c!687641) b!3963193))

(assert (= (and b!3963190 (not c!687641)) b!3963194))

(assert (= (and b!3963194 (not res!1604118)) b!3963192))

(declare-fun m!4532471 () Bool)

(assert (=> b!3963191 m!4532471))

(declare-fun m!4532473 () Bool)

(assert (=> b!3963192 m!4532473))

(declare-fun m!4532475 () Bool)

(assert (=> b!3963193 m!4532475))

(assert (=> b!3962870 d!1174135))

(declare-fun d!1174137 () Bool)

(assert (=> d!1174137 (and (= lt!1386936 lt!1386936) (= (_2!23901 (v!39393 lt!1386960)) (_2!23901 lt!1386959)))))

(declare-fun lt!1387111 () Unit!60815)

(declare-fun choose!23689 (List!42363 List!42363 List!42363 List!42363) Unit!60815)

(assert (=> d!1174137 (= lt!1387111 (choose!23689 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 (_2!23901 lt!1386959)))))

(assert (=> d!1174137 (= (++!11013 lt!1386936 (_2!23901 (v!39393 lt!1386960))) (++!11013 lt!1386936 (_2!23901 lt!1386959)))))

(assert (=> d!1174137 (= (lemmaConcatSameAndSameSizesThenSameLists!622 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 (_2!23901 lt!1386959)) lt!1387111)))

(declare-fun bs!587324 () Bool)

(assert (= bs!587324 d!1174137))

(declare-fun m!4532477 () Bool)

(assert (=> bs!587324 m!4532477))

(assert (=> bs!587324 m!4531909))

(declare-fun m!4532479 () Bool)

(assert (=> bs!587324 m!4532479))

(assert (=> b!3962853 d!1174137))

(declare-fun d!1174139 () Bool)

(assert (=> d!1174139 (not (= (lexList!1985 thiss!20629 rules!2768 (_2!23901 lt!1386959)) (tuple2!41537 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1387136 () Unit!60815)

(declare-fun choose!23690 (LexerInterface!6217 List!42366 List!42363 List!42363 List!42365 List!42363) Unit!60815)

(assert (=> d!1174139 (= lt!1387136 (choose!23690 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91))))

(assert (=> d!1174139 (not (isEmpty!25270 rules!2768))))

(assert (=> d!1174139 (= (lemmaLexWithSmallerInputCannotProduceSameResults!156 thiss!20629 rules!2768 suffix!1176 (_2!23901 lt!1386959) suffixTokens!72 suffixResult!91) lt!1387136)))

(declare-fun bs!587326 () Bool)

(assert (= bs!587326 d!1174139))

(assert (=> bs!587326 m!4532009))

(declare-fun m!4532525 () Bool)

(assert (=> bs!587326 m!4532525))

(assert (=> bs!587326 m!4532015))

(assert (=> b!3962853 d!1174139))

(declare-fun b!3963298 () Bool)

(declare-fun e!2454427 () Bool)

(declare-fun e!2454428 () Bool)

(assert (=> b!3963298 (= e!2454427 e!2454428)))

(declare-fun res!1604188 () Bool)

(assert (=> b!3963298 (=> (not res!1604188) (not e!2454428))))

(declare-fun lt!1387176 () Option!9048)

(declare-fun isDefined!7003 (Option!9048) Bool)

(assert (=> b!3963298 (= res!1604188 (isDefined!7003 lt!1387176))))

(declare-fun b!3963299 () Bool)

(declare-fun e!2454426 () Option!9048)

(declare-fun call!285454 () Option!9048)

(assert (=> b!3963299 (= e!2454426 call!285454)))

(declare-fun b!3963300 () Bool)

(declare-fun res!1604184 () Bool)

(assert (=> b!3963300 (=> (not res!1604184) (not e!2454428))))

(assert (=> b!3963300 (= res!1604184 (matchR!5541 (regex!6628 (rule!9610 (_1!23901 (get!13932 lt!1387176)))) (list!15676 (charsOf!4446 (_1!23901 (get!13932 lt!1387176))))))))

(declare-fun b!3963301 () Bool)

(declare-fun res!1604187 () Bool)

(assert (=> b!3963301 (=> (not res!1604187) (not e!2454428))))

(assert (=> b!3963301 (= res!1604187 (< (size!31623 (_2!23901 (get!13932 lt!1387176))) (size!31623 lt!1386938)))))

(declare-fun b!3963302 () Bool)

(declare-fun res!1604189 () Bool)

(assert (=> b!3963302 (=> (not res!1604189) (not e!2454428))))

(assert (=> b!3963302 (= res!1604189 (= (++!11013 (list!15676 (charsOf!4446 (_1!23901 (get!13932 lt!1387176)))) (_2!23901 (get!13932 lt!1387176))) lt!1386938))))

(declare-fun b!3963303 () Bool)

(assert (=> b!3963303 (= e!2454428 (contains!8431 rules!2768 (rule!9610 (_1!23901 (get!13932 lt!1387176)))))))

(declare-fun d!1174147 () Bool)

(assert (=> d!1174147 e!2454427))

(declare-fun res!1604186 () Bool)

(assert (=> d!1174147 (=> res!1604186 e!2454427)))

(assert (=> d!1174147 (= res!1604186 (isEmpty!25271 lt!1387176))))

(assert (=> d!1174147 (= lt!1387176 e!2454426)))

(declare-fun c!687659 () Bool)

(assert (=> d!1174147 (= c!687659 (and ((_ is Cons!42242) rules!2768) ((_ is Nil!42242) (t!330029 rules!2768))))))

(declare-fun lt!1387175 () Unit!60815)

(declare-fun lt!1387178 () Unit!60815)

(assert (=> d!1174147 (= lt!1387175 lt!1387178)))

(assert (=> d!1174147 (isPrefix!3717 lt!1386938 lt!1386938)))

(declare-fun lemmaIsPrefixRefl!2344 (List!42363 List!42363) Unit!60815)

(assert (=> d!1174147 (= lt!1387178 (lemmaIsPrefixRefl!2344 lt!1386938 lt!1386938))))

(declare-fun rulesValidInductive!2402 (LexerInterface!6217 List!42366) Bool)

(assert (=> d!1174147 (rulesValidInductive!2402 thiss!20629 rules!2768)))

(assert (=> d!1174147 (= (maxPrefix!3521 thiss!20629 rules!2768 lt!1386938) lt!1387176)))

(declare-fun b!3963304 () Bool)

(declare-fun res!1604190 () Bool)

(assert (=> b!3963304 (=> (not res!1604190) (not e!2454428))))

(assert (=> b!3963304 (= res!1604190 (= (list!15676 (charsOf!4446 (_1!23901 (get!13932 lt!1387176)))) (originalCharacters!7228 (_1!23901 (get!13932 lt!1387176)))))))

(declare-fun bm!285449 () Bool)

(assert (=> bm!285449 (= call!285454 (maxPrefixOneRule!2571 thiss!20629 (h!47662 rules!2768) lt!1386938))))

(declare-fun b!3963305 () Bool)

(declare-fun res!1604185 () Bool)

(assert (=> b!3963305 (=> (not res!1604185) (not e!2454428))))

(assert (=> b!3963305 (= res!1604185 (= (value!209532 (_1!23901 (get!13932 lt!1387176))) (apply!9859 (transformation!6628 (rule!9610 (_1!23901 (get!13932 lt!1387176)))) (seqFromList!4887 (originalCharacters!7228 (_1!23901 (get!13932 lt!1387176)))))))))

(declare-fun b!3963306 () Bool)

(declare-fun lt!1387177 () Option!9048)

(declare-fun lt!1387174 () Option!9048)

(assert (=> b!3963306 (= e!2454426 (ite (and ((_ is None!9047) lt!1387177) ((_ is None!9047) lt!1387174)) None!9047 (ite ((_ is None!9047) lt!1387174) lt!1387177 (ite ((_ is None!9047) lt!1387177) lt!1387174 (ite (>= (size!31622 (_1!23901 (v!39393 lt!1387177))) (size!31622 (_1!23901 (v!39393 lt!1387174)))) lt!1387177 lt!1387174)))))))

(assert (=> b!3963306 (= lt!1387177 call!285454)))

(assert (=> b!3963306 (= lt!1387174 (maxPrefix!3521 thiss!20629 (t!330029 rules!2768) lt!1386938))))

(assert (= (and d!1174147 c!687659) b!3963299))

(assert (= (and d!1174147 (not c!687659)) b!3963306))

(assert (= (or b!3963299 b!3963306) bm!285449))

(assert (= (and d!1174147 (not res!1604186)) b!3963298))

(assert (= (and b!3963298 res!1604188) b!3963304))

(assert (= (and b!3963304 res!1604190) b!3963301))

(assert (= (and b!3963301 res!1604187) b!3963302))

(assert (= (and b!3963302 res!1604189) b!3963305))

(assert (= (and b!3963305 res!1604185) b!3963300))

(assert (= (and b!3963300 res!1604184) b!3963303))

(declare-fun m!4532657 () Bool)

(assert (=> b!3963304 m!4532657))

(declare-fun m!4532659 () Bool)

(assert (=> b!3963304 m!4532659))

(assert (=> b!3963304 m!4532659))

(declare-fun m!4532661 () Bool)

(assert (=> b!3963304 m!4532661))

(declare-fun m!4532663 () Bool)

(assert (=> d!1174147 m!4532663))

(declare-fun m!4532665 () Bool)

(assert (=> d!1174147 m!4532665))

(declare-fun m!4532667 () Bool)

(assert (=> d!1174147 m!4532667))

(declare-fun m!4532669 () Bool)

(assert (=> d!1174147 m!4532669))

(declare-fun m!4532671 () Bool)

(assert (=> bm!285449 m!4532671))

(assert (=> b!3963305 m!4532657))

(declare-fun m!4532673 () Bool)

(assert (=> b!3963305 m!4532673))

(assert (=> b!3963305 m!4532673))

(declare-fun m!4532675 () Bool)

(assert (=> b!3963305 m!4532675))

(declare-fun m!4532677 () Bool)

(assert (=> b!3963298 m!4532677))

(assert (=> b!3963303 m!4532657))

(declare-fun m!4532679 () Bool)

(assert (=> b!3963303 m!4532679))

(declare-fun m!4532681 () Bool)

(assert (=> b!3963306 m!4532681))

(assert (=> b!3963300 m!4532657))

(assert (=> b!3963300 m!4532659))

(assert (=> b!3963300 m!4532659))

(assert (=> b!3963300 m!4532661))

(assert (=> b!3963300 m!4532661))

(declare-fun m!4532683 () Bool)

(assert (=> b!3963300 m!4532683))

(assert (=> b!3963302 m!4532657))

(assert (=> b!3963302 m!4532659))

(assert (=> b!3963302 m!4532659))

(assert (=> b!3963302 m!4532661))

(assert (=> b!3963302 m!4532661))

(declare-fun m!4532685 () Bool)

(assert (=> b!3963302 m!4532685))

(assert (=> b!3963301 m!4532657))

(declare-fun m!4532687 () Bool)

(assert (=> b!3963301 m!4532687))

(assert (=> b!3963301 m!4532007))

(assert (=> b!3962832 d!1174147))

(declare-fun d!1174205 () Bool)

(assert (=> d!1174205 (= (isEmpty!25268 (_2!23901 (v!39393 lt!1386960))) ((_ is Nil!42239) (_2!23901 (v!39393 lt!1386960))))))

(assert (=> b!3962830 d!1174205))

(declare-fun d!1174207 () Bool)

(assert (=> d!1174207 (= (_2!23901 (v!39393 lt!1386960)) lt!1386950)))

(declare-fun lt!1387179 () Unit!60815)

(assert (=> d!1174207 (= lt!1387179 (choose!23682 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386950 lt!1386938))))

(assert (=> d!1174207 (isPrefix!3717 lt!1386936 lt!1386938)))

(assert (=> d!1174207 (= (lemmaSamePrefixThenSameSuffix!1926 lt!1386936 (_2!23901 (v!39393 lt!1386960)) lt!1386936 lt!1386950 lt!1386938) lt!1387179)))

(declare-fun bs!587336 () Bool)

(assert (= bs!587336 d!1174207))

(declare-fun m!4532689 () Bool)

(assert (=> bs!587336 m!4532689))

(assert (=> bs!587336 m!4532315))

(assert (=> b!3962872 d!1174207))

(declare-fun b!3963309 () Bool)

(declare-fun e!2454429 () Bool)

(assert (=> b!3963309 (= e!2454429 (isPrefix!3717 (tail!6171 lt!1386936) (tail!6171 lt!1386934)))))

(declare-fun b!3963307 () Bool)

(declare-fun e!2454430 () Bool)

(assert (=> b!3963307 (= e!2454430 e!2454429)))

(declare-fun res!1604191 () Bool)

(assert (=> b!3963307 (=> (not res!1604191) (not e!2454429))))

(assert (=> b!3963307 (= res!1604191 (not ((_ is Nil!42239) lt!1386934)))))

(declare-fun b!3963308 () Bool)

(declare-fun res!1604192 () Bool)

(assert (=> b!3963308 (=> (not res!1604192) (not e!2454429))))

(assert (=> b!3963308 (= res!1604192 (= (head!8439 lt!1386936) (head!8439 lt!1386934)))))

(declare-fun d!1174209 () Bool)

(declare-fun e!2454431 () Bool)

(assert (=> d!1174209 e!2454431))

(declare-fun res!1604193 () Bool)

(assert (=> d!1174209 (=> res!1604193 e!2454431)))

(declare-fun lt!1387180 () Bool)

(assert (=> d!1174209 (= res!1604193 (not lt!1387180))))

(assert (=> d!1174209 (= lt!1387180 e!2454430)))

(declare-fun res!1604194 () Bool)

(assert (=> d!1174209 (=> res!1604194 e!2454430)))

(assert (=> d!1174209 (= res!1604194 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174209 (= (isPrefix!3717 lt!1386936 lt!1386934) lt!1387180)))

(declare-fun b!3963310 () Bool)

(assert (=> b!3963310 (= e!2454431 (>= (size!31623 lt!1386934) (size!31623 lt!1386936)))))

(assert (= (and d!1174209 (not res!1604194)) b!3963307))

(assert (= (and b!3963307 res!1604191) b!3963308))

(assert (= (and b!3963308 res!1604192) b!3963309))

(assert (= (and d!1174209 (not res!1604193)) b!3963310))

(assert (=> b!3963309 m!4532251))

(declare-fun m!4532691 () Bool)

(assert (=> b!3963309 m!4532691))

(assert (=> b!3963309 m!4532251))

(assert (=> b!3963309 m!4532691))

(declare-fun m!4532693 () Bool)

(assert (=> b!3963309 m!4532693))

(assert (=> b!3963308 m!4532255))

(declare-fun m!4532695 () Bool)

(assert (=> b!3963308 m!4532695))

(declare-fun m!4532697 () Bool)

(assert (=> b!3963310 m!4532697))

(assert (=> b!3963310 m!4531929))

(assert (=> b!3962872 d!1174209))

(declare-fun d!1174211 () Bool)

(assert (=> d!1174211 (isPrefix!3717 lt!1386936 (++!11013 lt!1386936 lt!1386950))))

(declare-fun lt!1387181 () Unit!60815)

(assert (=> d!1174211 (= lt!1387181 (choose!23679 lt!1386936 lt!1386950))))

(assert (=> d!1174211 (= (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386936 lt!1386950) lt!1387181)))

(declare-fun bs!587337 () Bool)

(assert (= bs!587337 d!1174211))

(assert (=> bs!587337 m!4531965))

(assert (=> bs!587337 m!4531965))

(declare-fun m!4532699 () Bool)

(assert (=> bs!587337 m!4532699))

(declare-fun m!4532701 () Bool)

(assert (=> bs!587337 m!4532701))

(assert (=> b!3962872 d!1174211))

(declare-fun d!1174213 () Bool)

(declare-fun res!1604199 () Bool)

(declare-fun e!2454434 () Bool)

(assert (=> d!1174213 (=> (not res!1604199) (not e!2454434))))

(assert (=> d!1174213 (= res!1604199 (not (isEmpty!25268 (originalCharacters!7228 (h!47661 suffixTokens!72)))))))

(assert (=> d!1174213 (= (inv!56466 (h!47661 suffixTokens!72)) e!2454434)))

(declare-fun b!3963315 () Bool)

(declare-fun res!1604200 () Bool)

(assert (=> b!3963315 (=> (not res!1604200) (not e!2454434))))

(assert (=> b!3963315 (= res!1604200 (= (originalCharacters!7228 (h!47661 suffixTokens!72)) (list!15676 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (value!209532 (h!47661 suffixTokens!72))))))))

(declare-fun b!3963316 () Bool)

(assert (=> b!3963316 (= e!2454434 (= (size!31622 (h!47661 suffixTokens!72)) (size!31623 (originalCharacters!7228 (h!47661 suffixTokens!72)))))))

(assert (= (and d!1174213 res!1604199) b!3963315))

(assert (= (and b!3963315 res!1604200) b!3963316))

(declare-fun b_lambda!115895 () Bool)

(assert (=> (not b_lambda!115895) (not b!3963315)))

(declare-fun t!330067 () Bool)

(declare-fun tb!238965 () Bool)

(assert (=> (and b!3962838 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330067) tb!238965))

(declare-fun b!3963317 () Bool)

(declare-fun e!2454435 () Bool)

(declare-fun tp!1207963 () Bool)

(assert (=> b!3963317 (= e!2454435 (and (inv!56470 (c!687565 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (value!209532 (h!47661 suffixTokens!72))))) tp!1207963))))

(declare-fun result!289382 () Bool)

(assert (=> tb!238965 (= result!289382 (and (inv!56471 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (value!209532 (h!47661 suffixTokens!72)))) e!2454435))))

(assert (= tb!238965 b!3963317))

(declare-fun m!4532703 () Bool)

(assert (=> b!3963317 m!4532703))

(declare-fun m!4532705 () Bool)

(assert (=> tb!238965 m!4532705))

(assert (=> b!3963315 t!330067))

(declare-fun b_and!304363 () Bool)

(assert (= b_and!304339 (and (=> t!330067 result!289382) b_and!304363)))

(declare-fun t!330069 () Bool)

(declare-fun tb!238967 () Bool)

(assert (=> (and b!3962862 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330069) tb!238967))

(declare-fun result!289384 () Bool)

(assert (= result!289384 result!289382))

(assert (=> b!3963315 t!330069))

(declare-fun b_and!304365 () Bool)

(assert (= b_and!304341 (and (=> t!330069 result!289384) b_and!304365)))

(declare-fun t!330071 () Bool)

(declare-fun tb!238969 () Bool)

(assert (=> (and b!3962846 (= (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330071) tb!238969))

(declare-fun result!289386 () Bool)

(assert (= result!289386 result!289382))

(assert (=> b!3963315 t!330071))

(declare-fun b_and!304367 () Bool)

(assert (= b_and!304343 (and (=> t!330071 result!289386) b_and!304367)))

(declare-fun m!4532707 () Bool)

(assert (=> d!1174213 m!4532707))

(declare-fun m!4532709 () Bool)

(assert (=> b!3963315 m!4532709))

(assert (=> b!3963315 m!4532709))

(declare-fun m!4532711 () Bool)

(assert (=> b!3963315 m!4532711))

(declare-fun m!4532713 () Bool)

(assert (=> b!3963316 m!4532713))

(assert (=> b!3962834 d!1174213))

(declare-fun d!1174215 () Bool)

(declare-fun res!1604201 () Bool)

(declare-fun e!2454436 () Bool)

(assert (=> d!1174215 (=> (not res!1604201) (not e!2454436))))

(assert (=> d!1174215 (= res!1604201 (not (isEmpty!25268 (originalCharacters!7228 (h!47661 prefixTokens!80)))))))

(assert (=> d!1174215 (= (inv!56466 (h!47661 prefixTokens!80)) e!2454436)))

(declare-fun b!3963318 () Bool)

(declare-fun res!1604202 () Bool)

(assert (=> b!3963318 (=> (not res!1604202) (not e!2454436))))

(assert (=> b!3963318 (= res!1604202 (= (originalCharacters!7228 (h!47661 prefixTokens!80)) (list!15676 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (value!209532 (h!47661 prefixTokens!80))))))))

(declare-fun b!3963319 () Bool)

(assert (=> b!3963319 (= e!2454436 (= (size!31622 (h!47661 prefixTokens!80)) (size!31623 (originalCharacters!7228 (h!47661 prefixTokens!80)))))))

(assert (= (and d!1174215 res!1604201) b!3963318))

(assert (= (and b!3963318 res!1604202) b!3963319))

(declare-fun b_lambda!115897 () Bool)

(assert (=> (not b_lambda!115897) (not b!3963318)))

(declare-fun t!330073 () Bool)

(declare-fun tb!238971 () Bool)

(assert (=> (and b!3962838 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330073) tb!238971))

(declare-fun b!3963320 () Bool)

(declare-fun e!2454437 () Bool)

(declare-fun tp!1207964 () Bool)

(assert (=> b!3963320 (= e!2454437 (and (inv!56470 (c!687565 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (value!209532 (h!47661 prefixTokens!80))))) tp!1207964))))

(declare-fun result!289388 () Bool)

(assert (=> tb!238971 (= result!289388 (and (inv!56471 (dynLambda!18036 (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (value!209532 (h!47661 prefixTokens!80)))) e!2454437))))

(assert (= tb!238971 b!3963320))

(declare-fun m!4532715 () Bool)

(assert (=> b!3963320 m!4532715))

(declare-fun m!4532717 () Bool)

(assert (=> tb!238971 m!4532717))

(assert (=> b!3963318 t!330073))

(declare-fun b_and!304369 () Bool)

(assert (= b_and!304363 (and (=> t!330073 result!289388) b_and!304369)))

(declare-fun t!330075 () Bool)

(declare-fun tb!238973 () Bool)

(assert (=> (and b!3962862 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330075) tb!238973))

(declare-fun result!289390 () Bool)

(assert (= result!289390 result!289388))

(assert (=> b!3963318 t!330075))

(declare-fun b_and!304371 () Bool)

(assert (= b_and!304365 (and (=> t!330075 result!289390) b_and!304371)))

(declare-fun t!330077 () Bool)

(declare-fun tb!238975 () Bool)

(assert (=> (and b!3962846 (= (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330077) tb!238975))

(declare-fun result!289392 () Bool)

(assert (= result!289392 result!289388))

(assert (=> b!3963318 t!330077))

(declare-fun b_and!304373 () Bool)

(assert (= b_and!304367 (and (=> t!330077 result!289392) b_and!304373)))

(declare-fun m!4532719 () Bool)

(assert (=> d!1174215 m!4532719))

(declare-fun m!4532721 () Bool)

(assert (=> b!3963318 m!4532721))

(assert (=> b!3963318 m!4532721))

(declare-fun m!4532723 () Bool)

(assert (=> b!3963318 m!4532723))

(declare-fun m!4532725 () Bool)

(assert (=> b!3963319 m!4532725))

(assert (=> b!3962856 d!1174215))

(declare-fun d!1174217 () Bool)

(declare-fun lt!1387185 () Int)

(assert (=> d!1174217 (>= lt!1387185 0)))

(declare-fun e!2454438 () Int)

(assert (=> d!1174217 (= lt!1387185 e!2454438)))

(declare-fun c!687660 () Bool)

(assert (=> d!1174217 (= c!687660 ((_ is Nil!42239) suffix!1176))))

(assert (=> d!1174217 (= (size!31623 suffix!1176) lt!1387185)))

(declare-fun b!3963321 () Bool)

(assert (=> b!3963321 (= e!2454438 0)))

(declare-fun b!3963322 () Bool)

(assert (=> b!3963322 (= e!2454438 (+ 1 (size!31623 (t!330026 suffix!1176))))))

(assert (= (and d!1174217 c!687660) b!3963321))

(assert (= (and d!1174217 (not c!687660)) b!3963322))

(declare-fun m!4532729 () Bool)

(assert (=> b!3963322 m!4532729))

(assert (=> b!3962835 d!1174217))

(declare-fun d!1174221 () Bool)

(declare-fun lt!1387187 () Int)

(assert (=> d!1174221 (>= lt!1387187 0)))

(declare-fun e!2454441 () Int)

(assert (=> d!1174221 (= lt!1387187 e!2454441)))

(declare-fun c!687662 () Bool)

(assert (=> d!1174221 (= c!687662 ((_ is Nil!42239) (_2!23901 (v!39393 lt!1386960))))))

(assert (=> d!1174221 (= (size!31623 (_2!23901 (v!39393 lt!1386960))) lt!1387187)))

(declare-fun b!3963327 () Bool)

(assert (=> b!3963327 (= e!2454441 0)))

(declare-fun b!3963328 () Bool)

(assert (=> b!3963328 (= e!2454441 (+ 1 (size!31623 (t!330026 (_2!23901 (v!39393 lt!1386960))))))))

(assert (= (and d!1174221 c!687662) b!3963327))

(assert (= (and d!1174221 (not c!687662)) b!3963328))

(declare-fun m!4532731 () Bool)

(assert (=> b!3963328 m!4532731))

(assert (=> b!3962835 d!1174221))

(declare-fun b!3963329 () Bool)

(declare-fun e!2454442 () tuple2!41536)

(assert (=> b!3963329 (= e!2454442 (tuple2!41537 Nil!42241 suffix!1176))))

(declare-fun b!3963330 () Bool)

(declare-fun e!2454443 () Bool)

(declare-fun lt!1387189 () tuple2!41536)

(assert (=> b!3963330 (= e!2454443 (= (_2!23902 lt!1387189) suffix!1176))))

(declare-fun b!3963331 () Bool)

(declare-fun e!2454444 () Bool)

(assert (=> b!3963331 (= e!2454444 (not (isEmpty!25269 (_1!23902 lt!1387189))))))

(declare-fun d!1174223 () Bool)

(assert (=> d!1174223 e!2454443))

(declare-fun c!687664 () Bool)

(assert (=> d!1174223 (= c!687664 (> (size!31625 (_1!23902 lt!1387189)) 0))))

(assert (=> d!1174223 (= lt!1387189 e!2454442)))

(declare-fun c!687663 () Bool)

(declare-fun lt!1387190 () Option!9048)

(assert (=> d!1174223 (= c!687663 ((_ is Some!9047) lt!1387190))))

(assert (=> d!1174223 (= lt!1387190 (maxPrefix!3521 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1174223 (= (lexList!1985 thiss!20629 rules!2768 suffix!1176) lt!1387189)))

(declare-fun b!3963332 () Bool)

(declare-fun lt!1387188 () tuple2!41536)

(assert (=> b!3963332 (= e!2454442 (tuple2!41537 (Cons!42241 (_1!23901 (v!39393 lt!1387190)) (_1!23902 lt!1387188)) (_2!23902 lt!1387188)))))

(assert (=> b!3963332 (= lt!1387188 (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1387190))))))

(declare-fun b!3963333 () Bool)

(assert (=> b!3963333 (= e!2454443 e!2454444)))

(declare-fun res!1604205 () Bool)

(assert (=> b!3963333 (= res!1604205 (< (size!31623 (_2!23902 lt!1387189)) (size!31623 suffix!1176)))))

(assert (=> b!3963333 (=> (not res!1604205) (not e!2454444))))

(assert (= (and d!1174223 c!687663) b!3963332))

(assert (= (and d!1174223 (not c!687663)) b!3963329))

(assert (= (and d!1174223 c!687664) b!3963333))

(assert (= (and d!1174223 (not c!687664)) b!3963330))

(assert (= (and b!3963333 res!1604205) b!3963331))

(declare-fun m!4532743 () Bool)

(assert (=> b!3963331 m!4532743))

(declare-fun m!4532745 () Bool)

(assert (=> d!1174223 m!4532745))

(declare-fun m!4532747 () Bool)

(assert (=> d!1174223 m!4532747))

(declare-fun m!4532749 () Bool)

(assert (=> b!3963332 m!4532749))

(declare-fun m!4532751 () Bool)

(assert (=> b!3963333 m!4532751))

(assert (=> b!3963333 m!4531883))

(assert (=> b!3962854 d!1174223))

(declare-fun d!1174225 () Bool)

(declare-fun e!2454447 () Bool)

(assert (=> d!1174225 e!2454447))

(declare-fun res!1604207 () Bool)

(assert (=> d!1174225 (=> (not res!1604207) (not e!2454447))))

(declare-fun lt!1387191 () List!42363)

(assert (=> d!1174225 (= res!1604207 (= (content!6415 lt!1387191) ((_ map or) (content!6415 lt!1386936) (content!6415 lt!1386950))))))

(declare-fun e!2454448 () List!42363)

(assert (=> d!1174225 (= lt!1387191 e!2454448)))

(declare-fun c!687665 () Bool)

(assert (=> d!1174225 (= c!687665 ((_ is Nil!42239) lt!1386936))))

(assert (=> d!1174225 (= (++!11013 lt!1386936 lt!1386950) lt!1387191)))

(declare-fun b!3963340 () Bool)

(declare-fun res!1604206 () Bool)

(assert (=> b!3963340 (=> (not res!1604206) (not e!2454447))))

(assert (=> b!3963340 (= res!1604206 (= (size!31623 lt!1387191) (+ (size!31623 lt!1386936) (size!31623 lt!1386950))))))

(declare-fun b!3963339 () Bool)

(assert (=> b!3963339 (= e!2454448 (Cons!42239 (h!47659 lt!1386936) (++!11013 (t!330026 lt!1386936) lt!1386950)))))

(declare-fun b!3963338 () Bool)

(assert (=> b!3963338 (= e!2454448 lt!1386950)))

(declare-fun b!3963341 () Bool)

(assert (=> b!3963341 (= e!2454447 (or (not (= lt!1386950 Nil!42239)) (= lt!1387191 lt!1386936)))))

(assert (= (and d!1174225 c!687665) b!3963338))

(assert (= (and d!1174225 (not c!687665)) b!3963339))

(assert (= (and d!1174225 res!1604207) b!3963340))

(assert (= (and b!3963340 res!1604206) b!3963341))

(declare-fun m!4532753 () Bool)

(assert (=> d!1174225 m!4532753))

(assert (=> d!1174225 m!4532351))

(declare-fun m!4532755 () Bool)

(assert (=> d!1174225 m!4532755))

(declare-fun m!4532757 () Bool)

(assert (=> b!3963340 m!4532757))

(assert (=> b!3963340 m!4531929))

(declare-fun m!4532759 () Bool)

(assert (=> b!3963340 m!4532759))

(declare-fun m!4532761 () Bool)

(assert (=> b!3963339 m!4532761))

(assert (=> b!3962855 d!1174225))

(declare-fun d!1174227 () Bool)

(declare-fun e!2454452 () Bool)

(assert (=> d!1174227 e!2454452))

(declare-fun res!1604209 () Bool)

(assert (=> d!1174227 (=> (not res!1604209) (not e!2454452))))

(declare-fun lt!1387192 () List!42363)

(assert (=> d!1174227 (= res!1604209 (= (content!6415 lt!1387192) ((_ map or) (content!6415 lt!1386954) (content!6415 suffix!1176))))))

(declare-fun e!2454453 () List!42363)

(assert (=> d!1174227 (= lt!1387192 e!2454453)))

(declare-fun c!687666 () Bool)

(assert (=> d!1174227 (= c!687666 ((_ is Nil!42239) lt!1386954))))

(assert (=> d!1174227 (= (++!11013 lt!1386954 suffix!1176) lt!1387192)))

(declare-fun b!3963355 () Bool)

(declare-fun res!1604208 () Bool)

(assert (=> b!3963355 (=> (not res!1604208) (not e!2454452))))

(assert (=> b!3963355 (= res!1604208 (= (size!31623 lt!1387192) (+ (size!31623 lt!1386954) (size!31623 suffix!1176))))))

(declare-fun b!3963354 () Bool)

(assert (=> b!3963354 (= e!2454453 (Cons!42239 (h!47659 lt!1386954) (++!11013 (t!330026 lt!1386954) suffix!1176)))))

(declare-fun b!3963353 () Bool)

(assert (=> b!3963353 (= e!2454453 suffix!1176)))

(declare-fun b!3963356 () Bool)

(assert (=> b!3963356 (= e!2454452 (or (not (= suffix!1176 Nil!42239)) (= lt!1387192 lt!1386954)))))

(assert (= (and d!1174227 c!687666) b!3963353))

(assert (= (and d!1174227 (not c!687666)) b!3963354))

(assert (= (and d!1174227 res!1604209) b!3963355))

(assert (= (and b!3963355 res!1604208) b!3963356))

(declare-fun m!4532763 () Bool)

(assert (=> d!1174227 m!4532763))

(assert (=> d!1174227 m!4532407))

(assert (=> d!1174227 m!4532423))

(declare-fun m!4532765 () Bool)

(assert (=> b!3963355 m!4532765))

(assert (=> b!3963355 m!4532411))

(assert (=> b!3963355 m!4531883))

(declare-fun m!4532767 () Bool)

(assert (=> b!3963354 m!4532767))

(assert (=> b!3962855 d!1174227))

(declare-fun d!1174229 () Bool)

(assert (=> d!1174229 (= (++!11013 (++!11013 lt!1386936 lt!1386954) suffix!1176) (++!11013 lt!1386936 (++!11013 lt!1386954 suffix!1176)))))

(declare-fun lt!1387195 () Unit!60815)

(declare-fun choose!23692 (List!42363 List!42363 List!42363) Unit!60815)

(assert (=> d!1174229 (= lt!1387195 (choose!23692 lt!1386936 lt!1386954 suffix!1176))))

(assert (=> d!1174229 (= (lemmaConcatAssociativity!2362 lt!1386936 lt!1386954 suffix!1176) lt!1387195)))

(declare-fun bs!587339 () Bool)

(assert (= bs!587339 d!1174229))

(assert (=> bs!587339 m!4532017))

(declare-fun m!4532769 () Bool)

(assert (=> bs!587339 m!4532769))

(assert (=> bs!587339 m!4531967))

(declare-fun m!4532771 () Bool)

(assert (=> bs!587339 m!4532771))

(assert (=> bs!587339 m!4532017))

(assert (=> bs!587339 m!4531967))

(declare-fun m!4532773 () Bool)

(assert (=> bs!587339 m!4532773))

(assert (=> b!3962855 d!1174229))

(declare-fun d!1174231 () Bool)

(assert (=> d!1174231 (= (isEmpty!25270 rules!2768) ((_ is Nil!42242) rules!2768))))

(assert (=> b!3962858 d!1174231))

(declare-fun b!3963374 () Bool)

(declare-fun e!2454468 () List!42365)

(assert (=> b!3963374 (= e!2454468 (Cons!42241 (h!47661 lt!1386957) (++!11014 (t!330028 lt!1386957) suffixTokens!72)))))

(declare-fun lt!1387196 () List!42365)

(declare-fun e!2454469 () Bool)

(declare-fun b!3963376 () Bool)

(assert (=> b!3963376 (= e!2454469 (or (not (= suffixTokens!72 Nil!42241)) (= lt!1387196 lt!1386957)))))

(declare-fun b!3963373 () Bool)

(assert (=> b!3963373 (= e!2454468 suffixTokens!72)))

(declare-fun d!1174233 () Bool)

(assert (=> d!1174233 e!2454469))

(declare-fun res!1604210 () Bool)

(assert (=> d!1174233 (=> (not res!1604210) (not e!2454469))))

(assert (=> d!1174233 (= res!1604210 (= (content!6413 lt!1387196) ((_ map or) (content!6413 lt!1386957) (content!6413 suffixTokens!72))))))

(assert (=> d!1174233 (= lt!1387196 e!2454468)))

(declare-fun c!687667 () Bool)

(assert (=> d!1174233 (= c!687667 ((_ is Nil!42241) lt!1386957))))

(assert (=> d!1174233 (= (++!11014 lt!1386957 suffixTokens!72) lt!1387196)))

(declare-fun b!3963375 () Bool)

(declare-fun res!1604211 () Bool)

(assert (=> b!3963375 (=> (not res!1604211) (not e!2454469))))

(assert (=> b!3963375 (= res!1604211 (= (size!31625 lt!1387196) (+ (size!31625 lt!1386957) (size!31625 suffixTokens!72))))))

(assert (= (and d!1174233 c!687667) b!3963373))

(assert (= (and d!1174233 (not c!687667)) b!3963374))

(assert (= (and d!1174233 res!1604210) b!3963375))

(assert (= (and b!3963375 res!1604211) b!3963376))

(declare-fun m!4532779 () Bool)

(assert (=> b!3963374 m!4532779))

(declare-fun m!4532781 () Bool)

(assert (=> d!1174233 m!4532781))

(declare-fun m!4532783 () Bool)

(assert (=> d!1174233 m!4532783))

(assert (=> d!1174233 m!4532451))

(declare-fun m!4532785 () Bool)

(assert (=> b!3963375 m!4532785))

(declare-fun m!4532787 () Bool)

(assert (=> b!3963375 m!4532787))

(assert (=> b!3963375 m!4532457))

(assert (=> b!3962859 d!1174233))

(assert (=> b!3962859 d!1174029))

(declare-fun b!3963388 () Bool)

(declare-fun e!2454474 () Bool)

(assert (=> b!3963388 (= e!2454474 (isPrefix!3717 (tail!6171 lt!1386954) (tail!6171 lt!1386950)))))

(declare-fun b!3963386 () Bool)

(declare-fun e!2454475 () Bool)

(assert (=> b!3963386 (= e!2454475 e!2454474)))

(declare-fun res!1604212 () Bool)

(assert (=> b!3963386 (=> (not res!1604212) (not e!2454474))))

(assert (=> b!3963386 (= res!1604212 (not ((_ is Nil!42239) lt!1386950)))))

(declare-fun b!3963387 () Bool)

(declare-fun res!1604213 () Bool)

(assert (=> b!3963387 (=> (not res!1604213) (not e!2454474))))

(assert (=> b!3963387 (= res!1604213 (= (head!8439 lt!1386954) (head!8439 lt!1386950)))))

(declare-fun d!1174235 () Bool)

(declare-fun e!2454476 () Bool)

(assert (=> d!1174235 e!2454476))

(declare-fun res!1604214 () Bool)

(assert (=> d!1174235 (=> res!1604214 e!2454476)))

(declare-fun lt!1387197 () Bool)

(assert (=> d!1174235 (= res!1604214 (not lt!1387197))))

(assert (=> d!1174235 (= lt!1387197 e!2454475)))

(declare-fun res!1604215 () Bool)

(assert (=> d!1174235 (=> res!1604215 e!2454475)))

(assert (=> d!1174235 (= res!1604215 ((_ is Nil!42239) lt!1386954))))

(assert (=> d!1174235 (= (isPrefix!3717 lt!1386954 lt!1386950) lt!1387197)))

(declare-fun b!3963389 () Bool)

(assert (=> b!3963389 (= e!2454476 (>= (size!31623 lt!1386950) (size!31623 lt!1386954)))))

(assert (= (and d!1174235 (not res!1604215)) b!3963386))

(assert (= (and b!3963386 res!1604212) b!3963387))

(assert (= (and b!3963387 res!1604213) b!3963388))

(assert (= (and d!1174235 (not res!1604214)) b!3963389))

(declare-fun m!4532789 () Bool)

(assert (=> b!3963388 m!4532789))

(declare-fun m!4532791 () Bool)

(assert (=> b!3963388 m!4532791))

(assert (=> b!3963388 m!4532789))

(assert (=> b!3963388 m!4532791))

(declare-fun m!4532793 () Bool)

(assert (=> b!3963388 m!4532793))

(declare-fun m!4532795 () Bool)

(assert (=> b!3963387 m!4532795))

(declare-fun m!4532797 () Bool)

(assert (=> b!3963387 m!4532797))

(assert (=> b!3963389 m!4532759))

(assert (=> b!3963389 m!4532411))

(assert (=> b!3962859 d!1174235))

(declare-fun d!1174237 () Bool)

(assert (=> d!1174237 (isPrefix!3717 lt!1386954 (++!11013 lt!1386954 suffix!1176))))

(declare-fun lt!1387198 () Unit!60815)

(assert (=> d!1174237 (= lt!1387198 (choose!23679 lt!1386954 suffix!1176))))

(assert (=> d!1174237 (= (lemmaConcatTwoListThenFirstIsPrefix!2576 lt!1386954 suffix!1176) lt!1387198)))

(declare-fun bs!587340 () Bool)

(assert (= bs!587340 d!1174237))

(assert (=> bs!587340 m!4531967))

(assert (=> bs!587340 m!4531967))

(declare-fun m!4532799 () Bool)

(assert (=> bs!587340 m!4532799))

(declare-fun m!4532801 () Bool)

(assert (=> bs!587340 m!4532801))

(assert (=> b!3962859 d!1174237))

(declare-fun b!3963392 () Bool)

(declare-fun e!2454481 () tuple2!41536)

(assert (=> b!3963392 (= e!2454481 (tuple2!41537 Nil!42241 lt!1386938))))

(declare-fun b!3963393 () Bool)

(declare-fun e!2454482 () Bool)

(declare-fun lt!1387200 () tuple2!41536)

(assert (=> b!3963393 (= e!2454482 (= (_2!23902 lt!1387200) lt!1386938))))

(declare-fun b!3963394 () Bool)

(declare-fun e!2454483 () Bool)

(assert (=> b!3963394 (= e!2454483 (not (isEmpty!25269 (_1!23902 lt!1387200))))))

(declare-fun d!1174239 () Bool)

(assert (=> d!1174239 e!2454482))

(declare-fun c!687669 () Bool)

(assert (=> d!1174239 (= c!687669 (> (size!31625 (_1!23902 lt!1387200)) 0))))

(assert (=> d!1174239 (= lt!1387200 e!2454481)))

(declare-fun c!687668 () Bool)

(declare-fun lt!1387201 () Option!9048)

(assert (=> d!1174239 (= c!687668 ((_ is Some!9047) lt!1387201))))

(assert (=> d!1174239 (= lt!1387201 (maxPrefix!3521 thiss!20629 rules!2768 lt!1386938))))

(assert (=> d!1174239 (= (lexList!1985 thiss!20629 rules!2768 lt!1386938) lt!1387200)))

(declare-fun b!3963395 () Bool)

(declare-fun lt!1387199 () tuple2!41536)

(assert (=> b!3963395 (= e!2454481 (tuple2!41537 (Cons!42241 (_1!23901 (v!39393 lt!1387201)) (_1!23902 lt!1387199)) (_2!23902 lt!1387199)))))

(assert (=> b!3963395 (= lt!1387199 (lexList!1985 thiss!20629 rules!2768 (_2!23901 (v!39393 lt!1387201))))))

(declare-fun b!3963396 () Bool)

(assert (=> b!3963396 (= e!2454482 e!2454483)))

(declare-fun res!1604216 () Bool)

(assert (=> b!3963396 (= res!1604216 (< (size!31623 (_2!23902 lt!1387200)) (size!31623 lt!1386938)))))

(assert (=> b!3963396 (=> (not res!1604216) (not e!2454483))))

(assert (= (and d!1174239 c!687668) b!3963395))

(assert (= (and d!1174239 (not c!687668)) b!3963392))

(assert (= (and d!1174239 c!687669) b!3963396))

(assert (= (and d!1174239 (not c!687669)) b!3963393))

(assert (= (and b!3963396 res!1604216) b!3963394))

(declare-fun m!4532803 () Bool)

(assert (=> b!3963394 m!4532803))

(declare-fun m!4532805 () Bool)

(assert (=> d!1174239 m!4532805))

(assert (=> d!1174239 m!4531935))

(declare-fun m!4532807 () Bool)

(assert (=> b!3963395 m!4532807))

(declare-fun m!4532809 () Bool)

(assert (=> b!3963396 m!4532809))

(assert (=> b!3963396 m!4532007))

(assert (=> b!3962836 d!1174239))

(declare-fun b!3963402 () Bool)

(declare-fun e!2454490 () List!42365)

(assert (=> b!3963402 (= e!2454490 (Cons!42241 (h!47661 prefixTokens!80) (++!11014 (t!330028 prefixTokens!80) suffixTokens!72)))))

(declare-fun lt!1387202 () List!42365)

(declare-fun b!3963404 () Bool)

(declare-fun e!2454491 () Bool)

(assert (=> b!3963404 (= e!2454491 (or (not (= suffixTokens!72 Nil!42241)) (= lt!1387202 prefixTokens!80)))))

(declare-fun b!3963401 () Bool)

(assert (=> b!3963401 (= e!2454490 suffixTokens!72)))

(declare-fun d!1174241 () Bool)

(assert (=> d!1174241 e!2454491))

(declare-fun res!1604217 () Bool)

(assert (=> d!1174241 (=> (not res!1604217) (not e!2454491))))

(assert (=> d!1174241 (= res!1604217 (= (content!6413 lt!1387202) ((_ map or) (content!6413 prefixTokens!80) (content!6413 suffixTokens!72))))))

(assert (=> d!1174241 (= lt!1387202 e!2454490)))

(declare-fun c!687670 () Bool)

(assert (=> d!1174241 (= c!687670 ((_ is Nil!42241) prefixTokens!80))))

(assert (=> d!1174241 (= (++!11014 prefixTokens!80 suffixTokens!72) lt!1387202)))

(declare-fun b!3963403 () Bool)

(declare-fun res!1604218 () Bool)

(assert (=> b!3963403 (=> (not res!1604218) (not e!2454491))))

(assert (=> b!3963403 (= res!1604218 (= (size!31625 lt!1387202) (+ (size!31625 prefixTokens!80) (size!31625 suffixTokens!72))))))

(assert (= (and d!1174241 c!687670) b!3963401))

(assert (= (and d!1174241 (not c!687670)) b!3963402))

(assert (= (and d!1174241 res!1604217) b!3963403))

(assert (= (and b!3963403 res!1604218) b!3963404))

(declare-fun m!4532811 () Bool)

(assert (=> b!3963402 m!4532811))

(declare-fun m!4532813 () Bool)

(assert (=> d!1174241 m!4532813))

(declare-fun m!4532815 () Bool)

(assert (=> d!1174241 m!4532815))

(assert (=> d!1174241 m!4532451))

(declare-fun m!4532817 () Bool)

(assert (=> b!3963403 m!4532817))

(declare-fun m!4532819 () Bool)

(assert (=> b!3963403 m!4532819))

(assert (=> b!3963403 m!4532457))

(assert (=> b!3962836 d!1174241))

(declare-fun d!1174243 () Bool)

(declare-fun e!2454492 () Bool)

(assert (=> d!1174243 e!2454492))

(declare-fun res!1604220 () Bool)

(assert (=> d!1174243 (=> (not res!1604220) (not e!2454492))))

(declare-fun lt!1387203 () List!42363)

(assert (=> d!1174243 (= res!1604220 (= (content!6415 lt!1387203) ((_ map or) (content!6415 prefix!426) (content!6415 suffix!1176))))))

(declare-fun e!2454493 () List!42363)

(assert (=> d!1174243 (= lt!1387203 e!2454493)))

(declare-fun c!687671 () Bool)

(assert (=> d!1174243 (= c!687671 ((_ is Nil!42239) prefix!426))))

(assert (=> d!1174243 (= (++!11013 prefix!426 suffix!1176) lt!1387203)))

(declare-fun b!3963407 () Bool)

(declare-fun res!1604219 () Bool)

(assert (=> b!3963407 (=> (not res!1604219) (not e!2454492))))

(assert (=> b!3963407 (= res!1604219 (= (size!31623 lt!1387203) (+ (size!31623 prefix!426) (size!31623 suffix!1176))))))

(declare-fun b!3963406 () Bool)

(assert (=> b!3963406 (= e!2454493 (Cons!42239 (h!47659 prefix!426) (++!11013 (t!330026 prefix!426) suffix!1176)))))

(declare-fun b!3963405 () Bool)

(assert (=> b!3963405 (= e!2454493 suffix!1176)))

(declare-fun b!3963408 () Bool)

(assert (=> b!3963408 (= e!2454492 (or (not (= suffix!1176 Nil!42239)) (= lt!1387203 prefix!426)))))

(assert (= (and d!1174243 c!687671) b!3963405))

(assert (= (and d!1174243 (not c!687671)) b!3963406))

(assert (= (and d!1174243 res!1604220) b!3963407))

(assert (= (and b!3963407 res!1604219) b!3963408))

(declare-fun m!4532821 () Bool)

(assert (=> d!1174243 m!4532821))

(declare-fun m!4532823 () Bool)

(assert (=> d!1174243 m!4532823))

(assert (=> d!1174243 m!4532423))

(declare-fun m!4532825 () Bool)

(assert (=> b!3963407 m!4532825))

(assert (=> b!3963407 m!4531955))

(assert (=> b!3963407 m!4531883))

(declare-fun m!4532827 () Bool)

(assert (=> b!3963406 m!4532827))

(assert (=> b!3962836 d!1174243))

(declare-fun b!3963417 () Bool)

(declare-fun e!2454502 () Bool)

(declare-fun tp!1208019 () Bool)

(assert (=> b!3963417 (= e!2454502 (and tp_is_empty!20037 tp!1208019))))

(assert (=> b!3962829 (= tp!1207952 e!2454502)))

(assert (= (and b!3962829 ((_ is Cons!42239) (originalCharacters!7228 (h!47661 suffixTokens!72)))) b!3963417))

(declare-fun b!3963437 () Bool)

(declare-fun b_free!109509 () Bool)

(declare-fun b_next!110213 () Bool)

(assert (=> b!3963437 (= b_free!109509 (not b_next!110213))))

(declare-fun t!330103 () Bool)

(declare-fun tb!239001 () Bool)

(assert (=> (and b!3963437 (= (toValue!9108 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330103) tb!239001))

(declare-fun result!289430 () Bool)

(assert (= result!289430 result!289346))

(assert (=> d!1174083 t!330103))

(declare-fun tp!1208040 () Bool)

(declare-fun b_and!304387 () Bool)

(assert (=> b!3963437 (= tp!1208040 (and (=> t!330103 result!289430) b_and!304387))))

(declare-fun b_free!109511 () Bool)

(declare-fun b_next!110215 () Bool)

(assert (=> b!3963437 (= b_free!109511 (not b_next!110215))))

(declare-fun tb!239003 () Bool)

(declare-fun t!330105 () Bool)

(assert (=> (and b!3963437 (= (toChars!8967 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330105) tb!239003))

(declare-fun result!289432 () Bool)

(assert (= result!289432 result!289354))

(assert (=> d!1174103 t!330105))

(declare-fun tb!239005 () Bool)

(declare-fun t!330107 () Bool)

(assert (=> (and b!3963437 (= (toChars!8967 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330107) tb!239005))

(declare-fun result!289434 () Bool)

(assert (= result!289434 result!289382))

(assert (=> b!3963315 t!330107))

(declare-fun t!330109 () Bool)

(declare-fun tb!239007 () Bool)

(assert (=> (and b!3963437 (= (toChars!8967 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330109) tb!239007))

(declare-fun result!289436 () Bool)

(assert (= result!289436 result!289388))

(assert (=> b!3963318 t!330109))

(declare-fun b_and!304389 () Bool)

(declare-fun tp!1208042 () Bool)

(assert (=> b!3963437 (= tp!1208042 (and (=> t!330105 result!289432) (=> t!330107 result!289434) (=> t!330109 result!289436) b_and!304389))))

(declare-fun e!2454521 () Bool)

(assert (=> b!3963437 (= e!2454521 (and tp!1208040 tp!1208042))))

(declare-fun tp!1208039 () Bool)

(declare-fun e!2454522 () Bool)

(declare-fun b!3963436 () Bool)

(assert (=> b!3963436 (= e!2454522 (and tp!1208039 (inv!56463 (tag!7488 (h!47662 (t!330029 rules!2768)))) (inv!56467 (transformation!6628 (h!47662 (t!330029 rules!2768)))) e!2454521))))

(declare-fun b!3963435 () Bool)

(declare-fun e!2454520 () Bool)

(declare-fun tp!1208041 () Bool)

(assert (=> b!3963435 (= e!2454520 (and e!2454522 tp!1208041))))

(assert (=> b!3962828 (= tp!1207942 e!2454520)))

(assert (= b!3963436 b!3963437))

(assert (= b!3963435 b!3963436))

(assert (= (and b!3962828 ((_ is Cons!42242) (t!330029 rules!2768))) b!3963435))

(declare-fun m!4532845 () Bool)

(assert (=> b!3963436 m!4532845))

(declare-fun m!4532847 () Bool)

(assert (=> b!3963436 m!4532847))

(declare-fun b!3963439 () Bool)

(declare-fun e!2454524 () Bool)

(declare-fun tp!1208044 () Bool)

(assert (=> b!3963439 (= e!2454524 (and tp_is_empty!20037 tp!1208044))))

(assert (=> b!3962839 (= tp!1207946 e!2454524)))

(assert (= (and b!3962839 ((_ is Cons!42239) (t!330026 suffixResult!91))) b!3963439))

(declare-fun b!3963440 () Bool)

(declare-fun e!2454525 () Bool)

(declare-fun tp!1208045 () Bool)

(assert (=> b!3963440 (= e!2454525 (and tp_is_empty!20037 tp!1208045))))

(assert (=> b!3962870 (= tp!1207953 e!2454525)))

(assert (= (and b!3962870 ((_ is Cons!42239) (originalCharacters!7228 (h!47661 prefixTokens!80)))) b!3963440))

(declare-fun e!2454528 () Bool)

(assert (=> b!3962843 (= tp!1207944 e!2454528)))

(declare-fun b!3963454 () Bool)

(declare-fun tp!1208060 () Bool)

(declare-fun tp!1208058 () Bool)

(assert (=> b!3963454 (= e!2454528 (and tp!1208060 tp!1208058))))

(declare-fun b!3963451 () Bool)

(assert (=> b!3963451 (= e!2454528 tp_is_empty!20037)))

(declare-fun b!3963453 () Bool)

(declare-fun tp!1208059 () Bool)

(assert (=> b!3963453 (= e!2454528 tp!1208059)))

(declare-fun b!3963452 () Bool)

(declare-fun tp!1208056 () Bool)

(declare-fun tp!1208057 () Bool)

(assert (=> b!3963452 (= e!2454528 (and tp!1208056 tp!1208057))))

(assert (= (and b!3962843 ((_ is ElementMatch!11533) (regex!6628 (h!47662 rules!2768)))) b!3963451))

(assert (= (and b!3962843 ((_ is Concat!18392) (regex!6628 (h!47662 rules!2768)))) b!3963452))

(assert (= (and b!3962843 ((_ is Star!11533) (regex!6628 (h!47662 rules!2768)))) b!3963453))

(assert (= (and b!3962843 ((_ is Union!11533) (regex!6628 (h!47662 rules!2768)))) b!3963454))

(declare-fun e!2454529 () Bool)

(assert (=> b!3962841 (= tp!1207950 e!2454529)))

(declare-fun b!3963458 () Bool)

(declare-fun tp!1208065 () Bool)

(declare-fun tp!1208063 () Bool)

(assert (=> b!3963458 (= e!2454529 (and tp!1208065 tp!1208063))))

(declare-fun b!3963455 () Bool)

(assert (=> b!3963455 (= e!2454529 tp_is_empty!20037)))

(declare-fun b!3963457 () Bool)

(declare-fun tp!1208064 () Bool)

(assert (=> b!3963457 (= e!2454529 tp!1208064)))

(declare-fun b!3963456 () Bool)

(declare-fun tp!1208061 () Bool)

(declare-fun tp!1208062 () Bool)

(assert (=> b!3963456 (= e!2454529 (and tp!1208061 tp!1208062))))

(assert (= (and b!3962841 ((_ is ElementMatch!11533) (regex!6628 (rule!9610 (h!47661 suffixTokens!72))))) b!3963455))

(assert (= (and b!3962841 ((_ is Concat!18392) (regex!6628 (rule!9610 (h!47661 suffixTokens!72))))) b!3963456))

(assert (= (and b!3962841 ((_ is Star!11533) (regex!6628 (rule!9610 (h!47661 suffixTokens!72))))) b!3963457))

(assert (= (and b!3962841 ((_ is Union!11533) (regex!6628 (rule!9610 (h!47661 suffixTokens!72))))) b!3963458))

(declare-fun b!3963472 () Bool)

(declare-fun b_free!109513 () Bool)

(declare-fun b_next!110217 () Bool)

(assert (=> b!3963472 (= b_free!109513 (not b_next!110217))))

(declare-fun tb!239009 () Bool)

(declare-fun t!330111 () Bool)

(assert (=> (and b!3963472 (= (toValue!9108 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330111) tb!239009))

(declare-fun result!289442 () Bool)

(assert (= result!289442 result!289346))

(assert (=> d!1174083 t!330111))

(declare-fun tp!1208079 () Bool)

(declare-fun b_and!304391 () Bool)

(assert (=> b!3963472 (= tp!1208079 (and (=> t!330111 result!289442) b_and!304391))))

(declare-fun b_free!109515 () Bool)

(declare-fun b_next!110219 () Bool)

(assert (=> b!3963472 (= b_free!109515 (not b_next!110219))))

(declare-fun t!330113 () Bool)

(declare-fun tb!239011 () Bool)

(assert (=> (and b!3963472 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330113) tb!239011))

(declare-fun result!289444 () Bool)

(assert (= result!289444 result!289354))

(assert (=> d!1174103 t!330113))

(declare-fun t!330115 () Bool)

(declare-fun tb!239013 () Bool)

(assert (=> (and b!3963472 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330115) tb!239013))

(declare-fun result!289446 () Bool)

(assert (= result!289446 result!289382))

(assert (=> b!3963315 t!330115))

(declare-fun t!330117 () Bool)

(declare-fun tb!239015 () Bool)

(assert (=> (and b!3963472 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330117) tb!239015))

(declare-fun result!289448 () Bool)

(assert (= result!289448 result!289388))

(assert (=> b!3963318 t!330117))

(declare-fun b_and!304393 () Bool)

(declare-fun tp!1208077 () Bool)

(assert (=> b!3963472 (= tp!1208077 (and (=> t!330113 result!289444) (=> t!330115 result!289446) (=> t!330117 result!289448) b_and!304393))))

(declare-fun b!3963469 () Bool)

(declare-fun e!2454543 () Bool)

(declare-fun e!2454546 () Bool)

(declare-fun tp!1208080 () Bool)

(assert (=> b!3963469 (= e!2454543 (and (inv!56466 (h!47661 (t!330028 suffixTokens!72))) e!2454546 tp!1208080))))

(declare-fun b!3963471 () Bool)

(declare-fun e!2454542 () Bool)

(declare-fun e!2454545 () Bool)

(declare-fun tp!1208076 () Bool)

(assert (=> b!3963471 (= e!2454542 (and tp!1208076 (inv!56463 (tag!7488 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (inv!56467 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) e!2454545))))

(declare-fun b!3963470 () Bool)

(declare-fun tp!1208078 () Bool)

(assert (=> b!3963470 (= e!2454546 (and (inv!21 (value!209532 (h!47661 (t!330028 suffixTokens!72)))) e!2454542 tp!1208078))))

(assert (=> b!3962834 (= tp!1207940 e!2454543)))

(assert (=> b!3963472 (= e!2454545 (and tp!1208079 tp!1208077))))

(assert (= b!3963471 b!3963472))

(assert (= b!3963470 b!3963471))

(assert (= b!3963469 b!3963470))

(assert (= (and b!3962834 ((_ is Cons!42241) (t!330028 suffixTokens!72))) b!3963469))

(declare-fun m!4532849 () Bool)

(assert (=> b!3963469 m!4532849))

(declare-fun m!4532851 () Bool)

(assert (=> b!3963471 m!4532851))

(declare-fun m!4532853 () Bool)

(assert (=> b!3963471 m!4532853))

(declare-fun m!4532855 () Bool)

(assert (=> b!3963470 m!4532855))

(declare-fun b!3963476 () Bool)

(declare-fun b_free!109517 () Bool)

(declare-fun b_next!110221 () Bool)

(assert (=> b!3963476 (= b_free!109517 (not b_next!110221))))

(declare-fun t!330119 () Bool)

(declare-fun tb!239017 () Bool)

(assert (=> (and b!3963476 (= (toValue!9108 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toValue!9108 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330119) tb!239017))

(declare-fun result!289450 () Bool)

(assert (= result!289450 result!289346))

(assert (=> d!1174083 t!330119))

(declare-fun b_and!304395 () Bool)

(declare-fun tp!1208084 () Bool)

(assert (=> b!3963476 (= tp!1208084 (and (=> t!330119 result!289450) b_and!304395))))

(declare-fun b_free!109519 () Bool)

(declare-fun b_next!110223 () Bool)

(assert (=> b!3963476 (= b_free!109519 (not b_next!110223))))

(declare-fun t!330121 () Bool)

(declare-fun tb!239019 () Bool)

(assert (=> (and b!3963476 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toChars!8967 (transformation!6628 (rule!9610 (_1!23901 (v!39393 lt!1386960)))))) t!330121) tb!239019))

(declare-fun result!289452 () Bool)

(assert (= result!289452 result!289354))

(assert (=> d!1174103 t!330121))

(declare-fun t!330123 () Bool)

(declare-fun tb!239021 () Bool)

(assert (=> (and b!3963476 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72))))) t!330123) tb!239021))

(declare-fun result!289454 () Bool)

(assert (= result!289454 result!289382))

(assert (=> b!3963315 t!330123))

(declare-fun t!330125 () Bool)

(declare-fun tb!239023 () Bool)

(assert (=> (and b!3963476 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80))))) t!330125) tb!239023))

(declare-fun result!289456 () Bool)

(assert (= result!289456 result!289388))

(assert (=> b!3963318 t!330125))

(declare-fun tp!1208082 () Bool)

(declare-fun b_and!304397 () Bool)

(assert (=> b!3963476 (= tp!1208082 (and (=> t!330121 result!289452) (=> t!330123 result!289454) (=> t!330125 result!289456) b_and!304397))))

(declare-fun tp!1208085 () Bool)

(declare-fun e!2454549 () Bool)

(declare-fun b!3963473 () Bool)

(declare-fun e!2454552 () Bool)

(assert (=> b!3963473 (= e!2454549 (and (inv!56466 (h!47661 (t!330028 prefixTokens!80))) e!2454552 tp!1208085))))

(declare-fun b!3963475 () Bool)

(declare-fun tp!1208081 () Bool)

(declare-fun e!2454551 () Bool)

(declare-fun e!2454548 () Bool)

(assert (=> b!3963475 (= e!2454548 (and tp!1208081 (inv!56463 (tag!7488 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (inv!56467 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) e!2454551))))

(declare-fun tp!1208083 () Bool)

(declare-fun b!3963474 () Bool)

(assert (=> b!3963474 (= e!2454552 (and (inv!21 (value!209532 (h!47661 (t!330028 prefixTokens!80)))) e!2454548 tp!1208083))))

(assert (=> b!3962856 (= tp!1207938 e!2454549)))

(assert (=> b!3963476 (= e!2454551 (and tp!1208084 tp!1208082))))

(assert (= b!3963475 b!3963476))

(assert (= b!3963474 b!3963475))

(assert (= b!3963473 b!3963474))

(assert (= (and b!3962856 ((_ is Cons!42241) (t!330028 prefixTokens!80))) b!3963473))

(declare-fun m!4532857 () Bool)

(assert (=> b!3963473 m!4532857))

(declare-fun m!4532859 () Bool)

(assert (=> b!3963475 m!4532859))

(declare-fun m!4532861 () Bool)

(assert (=> b!3963475 m!4532861))

(declare-fun m!4532863 () Bool)

(assert (=> b!3963474 m!4532863))

(declare-fun b!3963477 () Bool)

(declare-fun e!2454554 () Bool)

(declare-fun tp!1208086 () Bool)

(assert (=> b!3963477 (= e!2454554 (and tp_is_empty!20037 tp!1208086))))

(assert (=> b!3962833 (= tp!1207939 e!2454554)))

(assert (= (and b!3962833 ((_ is Cons!42239) (t!330026 suffix!1176))) b!3963477))

(declare-fun e!2454555 () Bool)

(assert (=> b!3962864 (= tp!1207951 e!2454555)))

(declare-fun b!3963481 () Bool)

(declare-fun tp!1208091 () Bool)

(declare-fun tp!1208089 () Bool)

(assert (=> b!3963481 (= e!2454555 (and tp!1208091 tp!1208089))))

(declare-fun b!3963478 () Bool)

(assert (=> b!3963478 (= e!2454555 tp_is_empty!20037)))

(declare-fun b!3963480 () Bool)

(declare-fun tp!1208090 () Bool)

(assert (=> b!3963480 (= e!2454555 tp!1208090)))

(declare-fun b!3963479 () Bool)

(declare-fun tp!1208087 () Bool)

(declare-fun tp!1208088 () Bool)

(assert (=> b!3963479 (= e!2454555 (and tp!1208087 tp!1208088))))

(assert (= (and b!3962864 ((_ is ElementMatch!11533) (regex!6628 (rule!9610 (h!47661 prefixTokens!80))))) b!3963478))

(assert (= (and b!3962864 ((_ is Concat!18392) (regex!6628 (rule!9610 (h!47661 prefixTokens!80))))) b!3963479))

(assert (= (and b!3962864 ((_ is Star!11533) (regex!6628 (rule!9610 (h!47661 prefixTokens!80))))) b!3963480))

(assert (= (and b!3962864 ((_ is Union!11533) (regex!6628 (rule!9610 (h!47661 prefixTokens!80))))) b!3963481))

(declare-fun b!3963482 () Bool)

(declare-fun e!2454556 () Bool)

(declare-fun tp!1208092 () Bool)

(assert (=> b!3963482 (= e!2454556 (and tp_is_empty!20037 tp!1208092))))

(assert (=> b!3962837 (= tp!1207954 e!2454556)))

(assert (= (and b!3962837 ((_ is Cons!42239) (t!330026 prefix!426))) b!3963482))

(declare-fun b_lambda!115903 () Bool)

(assert (= b_lambda!115895 (or (and b!3962846 b_free!109495 (= (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))))) (and b!3963437 b_free!109511 (= (toChars!8967 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))))) (and b!3963472 b_free!109515 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))))) (and b!3962838 b_free!109487 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))))) (and b!3963476 b_free!109519 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))))) (and b!3962862 b_free!109491) b_lambda!115903)))

(declare-fun b_lambda!115905 () Bool)

(assert (= b_lambda!115897 (or (and b!3962862 b_free!109491 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 suffixTokens!72)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))))) (and b!3962838 b_free!109487) (and b!3963437 b_free!109511 (= (toChars!8967 (transformation!6628 (h!47662 (t!330029 rules!2768)))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))))) (and b!3963476 b_free!109519 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 prefixTokens!80))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))))) (and b!3963472 b_free!109515 (= (toChars!8967 (transformation!6628 (rule!9610 (h!47661 (t!330028 suffixTokens!72))))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))))) (and b!3962846 b_free!109495 (= (toChars!8967 (transformation!6628 (h!47662 rules!2768))) (toChars!8967 (transformation!6628 (rule!9610 (h!47661 prefixTokens!80)))))) b_lambda!115905)))

(check-sat (not b_next!110197) (not d!1174103) (not b!3963454) (not b!3963469) b_and!304371 (not b!3963456) (not d!1174241) (not b!3963082) (not b!3963474) (not b!3963374) (not b!3963332) (not b!3963174) (not d!1174223) (not b!3963106) (not b!3963319) (not b!3963141) (not d!1174057) (not b!3963012) (not b!3963193) (not b!3963076) (not d!1174107) (not b!3963480) (not b!3963355) (not tb!238935) (not b_next!110215) (not tb!238971) (not d!1174099) (not b_next!110213) (not d!1174119) (not b!3963026) (not tb!238941) (not b_lambda!115905) (not b!3963031) b_and!304395 (not b!3963016) (not d!1174089) (not b!3963394) (not d!1174239) (not b!3963388) (not d!1174139) (not d!1174227) b_and!304391 (not b!3963046) (not b!3963389) (not d!1173965) (not b!3963027) (not b!3963032) (not b!3963145) (not b!3963481) (not b!3963475) (not b_next!110193) b_and!304333 (not b!3963186) (not b!3963098) b_and!304337 (not d!1174055) (not b_lambda!115885) (not d!1174137) (not b!3963477) (not b!3963396) (not b!3963154) (not b!3963191) (not d!1174229) (not b!3963303) (not d!1174147) (not b!3963316) (not b!3963436) (not d!1174043) (not b!3963439) (not d!1174039) (not b!3963298) (not b!3963130) (not b!3963157) b_and!304389 (not b!3963406) (not d!1174087) (not b!3963156) (not b!3963309) (not b_next!110191) (not b!3963045) (not b!3963008) (not b_next!110217) (not b!3963482) (not b!3963339) b_and!304393 (not d!1174123) (not d!1174097) (not b!3963322) tp_is_empty!20037 (not b!3963131) b_and!304369 (not b!3963300) (not b!3963473) (not b!3963470) (not b!3963075) (not b!3963105) (not b!3963328) (not b!3963301) (not b_lambda!115903) (not b!3963354) (not d!1174033) (not b!3963435) (not d!1174095) (not b_next!110195) (not d!1174213) (not d!1173969) (not b_next!110199) (not b!3963147) (not b!3963162) (not b!3963079) (not b_lambda!115887) (not d!1174025) (not b!3963320) (not d!1174067) (not d!1174041) (not b_next!110219) b_and!304335 (not d!1174225) (not b!3963331) (not b!3963047) (not b!3963009) (not b!3963159) (not b!3963375) (not b!3963340) (not d!1174065) (not b!3963403) (not b!3963310) (not b!3963317) (not b!3963188) (not b!3963440) (not d!1174053) (not b_next!110189) b_and!304387 (not d!1174113) (not b!3963302) (not b!3963318) (not b!3962875) (not d!1173963) (not d!1174233) (not b!3963192) (not b_next!110223) (not d!1174111) (not b!3963083) (not b!3963471) (not b!3963013) (not b!3963407) (not b!3963417) (not b!3963014) (not b!3963452) (not tb!238965) (not b!3963306) (not b!3963187) (not d!1174105) (not b!3963308) (not b!3963171) (not b!3963457) (not b!3963163) (not b!3963315) (not b!3963149) (not b!3963479) (not b!3963081) (not d!1174109) (not d!1174037) (not d!1174211) (not b!3963170) (not b!3963387) (not b!3963006) b_and!304373 (not d!1174207) (not b!3962881) (not d!1174121) (not b!3963304) (not b_next!110221) (not b!3963458) (not d!1174243) (not bm!285449) (not b!3963305) (not d!1174237) (not b!3963084) (not b!3963402) (not b!3963077) b_and!304397 (not b!3963395) (not d!1174215) (not b!3963107) (not b!3963146) (not b!3963007) (not b!3963453) (not b!3963010) (not b!3963333))
(check-sat (not b_next!110215) (not b_next!110213) b_and!304395 b_and!304391 (not b_next!110193) b_and!304389 b_and!304369 (not b_next!110223) b_and!304397 (not b_next!110197) b_and!304371 b_and!304333 b_and!304337 (not b_next!110191) b_and!304393 (not b_next!110217) (not b_next!110199) (not b_next!110195) (not b_next!110219) b_and!304335 (not b_next!110189) b_and!304387 b_and!304373 (not b_next!110221))
