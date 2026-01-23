; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19834 () Bool)

(assert start!19834)

(declare-fun b!183402 () Bool)

(declare-fun b_free!7169 () Bool)

(declare-fun b_next!7169 () Bool)

(assert (=> b!183402 (= b_free!7169 (not b_next!7169))))

(declare-fun tp!86975 () Bool)

(declare-fun b_and!12581 () Bool)

(assert (=> b!183402 (= tp!86975 b_and!12581)))

(declare-fun b_free!7171 () Bool)

(declare-fun b_next!7171 () Bool)

(assert (=> b!183402 (= b_free!7171 (not b_next!7171))))

(declare-fun tp!86970 () Bool)

(declare-fun b_and!12583 () Bool)

(assert (=> b!183402 (= tp!86970 b_and!12583)))

(declare-fun b!183382 () Bool)

(declare-fun b_free!7173 () Bool)

(declare-fun b_next!7173 () Bool)

(assert (=> b!183382 (= b_free!7173 (not b_next!7173))))

(declare-fun tp!86967 () Bool)

(declare-fun b_and!12585 () Bool)

(assert (=> b!183382 (= tp!86967 b_and!12585)))

(declare-fun b_free!7175 () Bool)

(declare-fun b_next!7175 () Bool)

(assert (=> b!183382 (= b_free!7175 (not b_next!7175))))

(declare-fun tp!86972 () Bool)

(declare-fun b_and!12587 () Bool)

(assert (=> b!183382 (= tp!86972 b_and!12587)))

(declare-fun b!183405 () Bool)

(declare-fun b_free!7177 () Bool)

(declare-fun b_next!7177 () Bool)

(assert (=> b!183405 (= b_free!7177 (not b_next!7177))))

(declare-fun tp!86963 () Bool)

(declare-fun b_and!12589 () Bool)

(assert (=> b!183405 (= tp!86963 b_and!12589)))

(declare-fun b_free!7179 () Bool)

(declare-fun b_next!7179 () Bool)

(assert (=> b!183405 (= b_free!7179 (not b_next!7179))))

(declare-fun tp!86974 () Bool)

(declare-fun b_and!12591 () Bool)

(assert (=> b!183405 (= tp!86974 b_and!12591)))

(declare-fun bs!18206 () Bool)

(declare-fun b!183388 () Bool)

(declare-fun b!183401 () Bool)

(assert (= bs!18206 (and b!183388 b!183401)))

(declare-fun lambda!5470 () Int)

(declare-fun lambda!5469 () Int)

(assert (=> bs!18206 (not (= lambda!5470 lambda!5469))))

(declare-fun b!183416 () Bool)

(declare-fun e!111993 () Bool)

(assert (=> b!183416 (= e!111993 true)))

(declare-fun b!183415 () Bool)

(declare-fun e!111992 () Bool)

(assert (=> b!183415 (= e!111992 e!111993)))

(declare-fun b!183414 () Bool)

(declare-fun e!111991 () Bool)

(assert (=> b!183414 (= e!111991 e!111992)))

(assert (=> b!183388 e!111991))

(assert (= b!183415 b!183416))

(assert (= b!183414 b!183415))

(declare-datatypes ((List!3083 0))(
  ( (Nil!3073) (Cons!3073 (h!8470 (_ BitVec 16)) (t!28445 List!3083)) )
))
(declare-datatypes ((TokenValue!581 0))(
  ( (FloatLiteralValue!1162 (text!4512 List!3083)) (TokenValueExt!580 (__x!2649 Int)) (Broken!2905 (value!20221 List!3083)) (Object!590) (End!581) (Def!581) (Underscore!581) (Match!581) (Else!581) (Error!581) (Case!581) (If!581) (Extends!581) (Abstract!581) (Class!581) (Val!581) (DelimiterValue!1162 (del!641 List!3083)) (KeywordValue!587 (value!20222 List!3083)) (CommentValue!1162 (value!20223 List!3083)) (WhitespaceValue!1162 (value!20224 List!3083)) (IndentationValue!581 (value!20225 List!3083)) (String!3984) (Int32!581) (Broken!2906 (value!20226 List!3083)) (Boolean!582) (Unit!2831) (OperatorValue!584 (op!641 List!3083)) (IdentifierValue!1162 (value!20227 List!3083)) (IdentifierValue!1163 (value!20228 List!3083)) (WhitespaceValue!1163 (value!20229 List!3083)) (True!1162) (False!1162) (Broken!2907 (value!20230 List!3083)) (Broken!2908 (value!20231 List!3083)) (True!1163) (RightBrace!581) (RightBracket!581) (Colon!581) (Null!581) (Comma!581) (LeftBracket!581) (False!1163) (LeftBrace!581) (ImaginaryLiteralValue!581 (text!4513 List!3083)) (StringLiteralValue!1743 (value!20232 List!3083)) (EOFValue!581 (value!20233 List!3083)) (IdentValue!581 (value!20234 List!3083)) (DelimiterValue!1163 (value!20235 List!3083)) (DedentValue!581 (value!20236 List!3083)) (NewLineValue!581 (value!20237 List!3083)) (IntegerValue!1743 (value!20238 (_ BitVec 32)) (text!4514 List!3083)) (IntegerValue!1744 (value!20239 Int) (text!4515 List!3083)) (Times!581) (Or!581) (Equal!581) (Minus!581) (Broken!2909 (value!20240 List!3083)) (And!581) (Div!581) (LessEqual!581) (Mod!581) (Concat!1364) (Not!581) (Plus!581) (SpaceValue!581 (value!20241 List!3083)) (IntegerValue!1745 (value!20242 Int) (text!4516 List!3083)) (StringLiteralValue!1744 (text!4517 List!3083)) (FloatLiteralValue!1163 (text!4518 List!3083)) (BytesLiteralValue!581 (value!20243 List!3083)) (CommentValue!1163 (value!20244 List!3083)) (StringLiteralValue!1745 (value!20245 List!3083)) (ErrorTokenValue!581 (msg!642 List!3083)) )
))
(declare-datatypes ((C!2488 0))(
  ( (C!2489 (val!1130 Int)) )
))
(declare-datatypes ((List!3084 0))(
  ( (Nil!3074) (Cons!3074 (h!8471 C!2488) (t!28446 List!3084)) )
))
(declare-datatypes ((IArray!1881 0))(
  ( (IArray!1882 (innerList!998 List!3084)) )
))
(declare-datatypes ((Conc!940 0))(
  ( (Node!940 (left!2394 Conc!940) (right!2724 Conc!940) (csize!2110 Int) (cheight!1151 Int)) (Leaf!1559 (xs!3535 IArray!1881) (csize!2111 Int)) (Empty!940) )
))
(declare-datatypes ((BalanceConc!1888 0))(
  ( (BalanceConc!1889 (c!35641 Conc!940)) )
))
(declare-datatypes ((TokenValueInjection!934 0))(
  ( (TokenValueInjection!935 (toValue!1230 Int) (toChars!1089 Int)) )
))
(declare-datatypes ((String!3985 0))(
  ( (String!3986 (value!20246 String)) )
))
(declare-datatypes ((Regex!783 0))(
  ( (ElementMatch!783 (c!35642 C!2488)) (Concat!1365 (regOne!2078 Regex!783) (regTwo!2078 Regex!783)) (EmptyExpr!783) (Star!783 (reg!1112 Regex!783)) (EmptyLang!783) (Union!783 (regOne!2079 Regex!783) (regTwo!2079 Regex!783)) )
))
(declare-datatypes ((Rule!918 0))(
  ( (Rule!919 (regex!559 Regex!783) (tag!737 String!3985) (isSeparator!559 Bool) (transformation!559 TokenValueInjection!934)) )
))
(declare-datatypes ((List!3085 0))(
  ( (Nil!3075) (Cons!3075 (h!8472 Rule!918) (t!28447 List!3085)) )
))
(declare-fun rules!1920 () List!3085)

(get-info :version)

(assert (= (and b!183388 ((_ is Cons!3075) rules!1920)) b!183414))

(declare-fun order!1831 () Int)

(declare-fun order!1829 () Int)

(declare-fun dynLambda!1251 (Int Int) Int)

(declare-fun dynLambda!1252 (Int Int) Int)

(assert (=> b!183416 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5470))))

(declare-fun order!1833 () Int)

(declare-fun dynLambda!1253 (Int Int) Int)

(assert (=> b!183416 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5470))))

(assert (=> b!183388 true))

(declare-fun b!183371 () Bool)

(declare-fun res!83326 () Bool)

(declare-fun e!111961 () Bool)

(assert (=> b!183371 (=> (not res!83326) (not e!111961))))

(declare-datatypes ((LexerInterface!445 0))(
  ( (LexerInterfaceExt!442 (__x!2650 Int)) (Lexer!443) )
))
(declare-fun thiss!17480 () LexerInterface!445)

(declare-datatypes ((Token!862 0))(
  ( (Token!863 (value!20247 TokenValue!581) (rule!1074 Rule!918) (size!2495 Int) (originalCharacters!602 List!3084)) )
))
(declare-fun separatorToken!170 () Token!862)

(declare-fun rulesProduceIndividualToken!194 (LexerInterface!445 List!3085 Token!862) Bool)

(assert (=> b!183371 (= res!83326 (rulesProduceIndividualToken!194 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!183372 () Bool)

(declare-fun res!83324 () Bool)

(assert (=> b!183372 (=> (not res!83324) (not e!111961))))

(declare-datatypes ((List!3086 0))(
  ( (Nil!3076) (Cons!3076 (h!8473 Token!862) (t!28448 List!3086)) )
))
(declare-fun tokens!465 () List!3086)

(assert (=> b!183372 (= res!83324 ((_ is Cons!3076) tokens!465))))

(declare-fun b!183373 () Bool)

(declare-fun e!111968 () Bool)

(declare-fun e!111965 () Bool)

(assert (=> b!183373 (= e!111968 e!111965)))

(declare-fun res!83321 () Bool)

(assert (=> b!183373 (=> res!83321 e!111965)))

(declare-fun isEmpty!1431 (List!3086) Bool)

(assert (=> b!183373 (= res!83321 (not (isEmpty!1431 (t!28448 tokens!465))))))

(declare-fun lt!60892 () List!3084)

(declare-datatypes ((tuple2!3082 0))(
  ( (tuple2!3083 (_1!1757 Token!862) (_2!1757 List!3084)) )
))
(declare-datatypes ((Option!396 0))(
  ( (None!395) (Some!395 (v!13882 tuple2!3082)) )
))
(declare-fun lt!60905 () Option!396)

(declare-fun maxPrefix!175 (LexerInterface!445 List!3085 List!3084) Option!396)

(assert (=> b!183373 (= lt!60905 (maxPrefix!175 thiss!17480 rules!1920 lt!60892))))

(declare-fun lt!60901 () tuple2!3082)

(assert (=> b!183373 (= lt!60892 (_2!1757 lt!60901))))

(declare-fun lt!60902 () List!3084)

(declare-datatypes ((Unit!2832 0))(
  ( (Unit!2833) )
))
(declare-fun lt!60906 () Unit!2832)

(declare-fun lt!60913 () List!3084)

(declare-fun lemmaSamePrefixThenSameSuffix!80 (List!3084 List!3084 List!3084 List!3084 List!3084) Unit!2832)

(assert (=> b!183373 (= lt!60906 (lemmaSamePrefixThenSameSuffix!80 lt!60913 lt!60892 lt!60913 (_2!1757 lt!60901) lt!60902))))

(declare-fun get!871 (Option!396) tuple2!3082)

(assert (=> b!183373 (= lt!60901 (get!871 (maxPrefix!175 thiss!17480 rules!1920 lt!60902)))))

(declare-fun lt!60894 () List!3084)

(declare-fun isPrefix!255 (List!3084 List!3084) Bool)

(assert (=> b!183373 (isPrefix!255 lt!60913 lt!60894)))

(declare-fun lt!60896 () Unit!2832)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!150 (List!3084 List!3084) Unit!2832)

(assert (=> b!183373 (= lt!60896 (lemmaConcatTwoListThenFirstIsPrefix!150 lt!60913 lt!60892))))

(declare-fun e!111957 () Bool)

(assert (=> b!183373 e!111957))

(declare-fun res!83339 () Bool)

(assert (=> b!183373 (=> res!83339 e!111957)))

(assert (=> b!183373 (= res!83339 (isEmpty!1431 tokens!465))))

(declare-fun lt!60914 () Unit!2832)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!20 (LexerInterface!445 List!3085 List!3086 Token!862) Unit!2832)

(assert (=> b!183373 (= lt!60914 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!20 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!183374 () Bool)

(declare-fun e!111973 () Bool)

(declare-fun e!111970 () Bool)

(declare-fun tp!86971 () Bool)

(declare-fun inv!21 (TokenValue!581) Bool)

(assert (=> b!183374 (= e!111970 (and (inv!21 (value!20247 separatorToken!170)) e!111973 tp!86971))))

(declare-fun tp!86965 () Bool)

(declare-fun e!111958 () Bool)

(declare-fun b!183376 () Bool)

(declare-fun inv!3902 (String!3985) Bool)

(declare-fun inv!3905 (TokenValueInjection!934) Bool)

(assert (=> b!183376 (= e!111973 (and tp!86965 (inv!3902 (tag!737 (rule!1074 separatorToken!170))) (inv!3905 (transformation!559 (rule!1074 separatorToken!170))) e!111958))))

(declare-fun e!111972 () Bool)

(declare-fun tp!86966 () Bool)

(declare-fun b!183377 () Bool)

(declare-fun e!111983 () Bool)

(declare-fun inv!3906 (Token!862) Bool)

(assert (=> b!183377 (= e!111983 (and (inv!3906 (h!8473 tokens!465)) e!111972 tp!86966))))

(declare-fun b!183378 () Bool)

(declare-fun e!111962 () Bool)

(declare-fun e!111964 () Bool)

(declare-fun tp!86973 () Bool)

(assert (=> b!183378 (= e!111964 (and tp!86973 (inv!3902 (tag!737 (rule!1074 (h!8473 tokens!465)))) (inv!3905 (transformation!559 (rule!1074 (h!8473 tokens!465)))) e!111962))))

(declare-fun b!183379 () Bool)

(declare-fun e!111966 () Bool)

(declare-fun e!111984 () Bool)

(assert (=> b!183379 (= e!111966 e!111984)))

(declare-fun res!83335 () Bool)

(assert (=> b!183379 (=> res!83335 e!111984)))

(declare-fun e!111971 () Bool)

(assert (=> b!183379 (= res!83335 e!111971)))

(declare-fun res!83325 () Bool)

(assert (=> b!183379 (=> (not res!83325) (not e!111971))))

(declare-fun lt!60900 () Bool)

(assert (=> b!183379 (= res!83325 (not lt!60900))))

(assert (=> b!183379 (= lt!60900 (= lt!60902 lt!60894))))

(declare-fun b!183380 () Bool)

(declare-fun res!83331 () Bool)

(declare-fun e!111960 () Bool)

(assert (=> b!183380 (=> (not res!83331) (not e!111960))))

(declare-fun lt!60910 () List!3084)

(declare-fun list!1129 (BalanceConc!1888) List!3084)

(declare-fun seqFromList!495 (List!3084) BalanceConc!1888)

(assert (=> b!183380 (= res!83331 (= (list!1129 (seqFromList!495 lt!60902)) lt!60910))))

(declare-fun e!111978 () Bool)

(declare-fun e!111967 () Bool)

(declare-fun b!183381 () Bool)

(declare-fun tp!86969 () Bool)

(assert (=> b!183381 (= e!111978 (and tp!86969 (inv!3902 (tag!737 (h!8472 rules!1920))) (inv!3905 (transformation!559 (h!8472 rules!1920))) e!111967))))

(assert (=> b!183382 (= e!111962 (and tp!86967 tp!86972))))

(declare-fun b!183383 () Bool)

(declare-fun e!111980 () Bool)

(declare-fun matchR!121 (Regex!783 List!3084) Bool)

(assert (=> b!183383 (= e!111980 (matchR!121 (regex!559 (rule!1074 (h!8473 tokens!465))) lt!60913))))

(declare-fun b!183384 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!135 (LexerInterface!445 List!3085 List!3086) Bool)

(assert (=> b!183384 (= e!111965 (rulesProduceEachTokenIndividuallyList!135 thiss!17480 rules!1920 (t!28448 tokens!465)))))

(declare-fun b!183385 () Bool)

(assert (=> b!183385 (= e!111961 e!111960)))

(declare-fun res!83338 () Bool)

(assert (=> b!183385 (=> (not res!83338) (not e!111960))))

(assert (=> b!183385 (= res!83338 (= lt!60902 lt!60910))))

(declare-datatypes ((IArray!1883 0))(
  ( (IArray!1884 (innerList!999 List!3086)) )
))
(declare-datatypes ((Conc!941 0))(
  ( (Node!941 (left!2395 Conc!941) (right!2725 Conc!941) (csize!2112 Int) (cheight!1152 Int)) (Leaf!1560 (xs!3536 IArray!1883) (csize!2113 Int)) (Empty!941) )
))
(declare-datatypes ((BalanceConc!1890 0))(
  ( (BalanceConc!1891 (c!35643 Conc!941)) )
))
(declare-fun lt!60903 () BalanceConc!1890)

(declare-fun printWithSeparatorTokenWhenNeededRec!128 (LexerInterface!445 List!3085 BalanceConc!1890 Token!862 Int) BalanceConc!1888)

(assert (=> b!183385 (= lt!60910 (list!1129 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 lt!60903 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!138 (LexerInterface!445 List!3085 List!3086 Token!862) List!3084)

(assert (=> b!183385 (= lt!60902 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!183386 () Bool)

(declare-fun e!111975 () Bool)

(assert (=> b!183386 (= e!111957 e!111975)))

(declare-fun res!83334 () Bool)

(assert (=> b!183386 (=> (not res!83334) (not e!111975))))

(declare-fun lt!60897 () Option!396)

(declare-fun isDefined!247 (Option!396) Bool)

(assert (=> b!183386 (= res!83334 (isDefined!247 lt!60897))))

(assert (=> b!183386 (= lt!60897 (maxPrefix!175 thiss!17480 rules!1920 lt!60902))))

(declare-fun lt!60909 () List!3084)

(declare-fun b!183387 () Bool)

(declare-fun ++!726 (List!3084 List!3084) List!3084)

(assert (=> b!183387 (= e!111971 (not (= lt!60902 (++!726 lt!60913 lt!60909))))))

(declare-fun e!111963 () Bool)

(declare-fun e!111974 () Bool)

(assert (=> b!183388 (= e!111963 e!111974)))

(declare-fun res!83332 () Bool)

(assert (=> b!183388 (=> res!83332 e!111974)))

(declare-datatypes ((tuple2!3084 0))(
  ( (tuple2!3085 (_1!1758 Token!862) (_2!1758 BalanceConc!1888)) )
))
(declare-datatypes ((Option!397 0))(
  ( (None!396) (Some!396 (v!13883 tuple2!3084)) )
))
(declare-fun isDefined!248 (Option!397) Bool)

(declare-fun maxPrefixZipperSequence!138 (LexerInterface!445 List!3085 BalanceConc!1888) Option!397)

(assert (=> b!183388 (= res!83332 (not (isDefined!248 (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))

(declare-fun lt!60904 () Unit!2832)

(declare-fun forallContained!126 (List!3086 Int Token!862) Unit!2832)

(assert (=> b!183388 (= lt!60904 (forallContained!126 tokens!465 lambda!5470 (h!8473 tokens!465)))))

(assert (=> b!183388 (= lt!60913 (originalCharacters!602 (h!8473 tokens!465)))))

(declare-fun b!183389 () Bool)

(assert (=> b!183389 (= e!111974 e!111968)))

(declare-fun res!83322 () Bool)

(assert (=> b!183389 (=> res!83322 e!111968)))

(assert (=> b!183389 (= res!83322 (not lt!60900))))

(assert (=> b!183389 e!111980))

(declare-fun res!83333 () Bool)

(assert (=> b!183389 (=> (not res!83333) (not e!111980))))

(declare-fun lt!60899 () tuple2!3082)

(assert (=> b!183389 (= res!83333 (= (_1!1757 lt!60899) (h!8473 tokens!465)))))

(declare-fun lt!60890 () Option!396)

(assert (=> b!183389 (= lt!60899 (get!871 lt!60890))))

(assert (=> b!183389 (isDefined!247 lt!60890)))

(assert (=> b!183389 (= lt!60890 (maxPrefix!175 thiss!17480 rules!1920 lt!60913))))

(declare-fun b!183390 () Bool)

(declare-fun e!111959 () Bool)

(assert (=> b!183390 (= e!111959 e!111961)))

(declare-fun res!83328 () Bool)

(assert (=> b!183390 (=> (not res!83328) (not e!111961))))

(declare-fun rulesProduceEachTokenIndividually!237 (LexerInterface!445 List!3085 BalanceConc!1890) Bool)

(assert (=> b!183390 (= res!83328 (rulesProduceEachTokenIndividually!237 thiss!17480 rules!1920 lt!60903))))

(declare-fun seqFromList!496 (List!3086) BalanceConc!1890)

(assert (=> b!183390 (= lt!60903 (seqFromList!496 tokens!465))))

(declare-fun b!183391 () Bool)

(declare-fun res!83329 () Bool)

(assert (=> b!183391 (=> res!83329 e!111965)))

(declare-fun lt!60895 () List!3086)

(assert (=> b!183391 (= res!83329 (not (= tokens!465 lt!60895)))))

(declare-fun b!183392 () Bool)

(assert (=> b!183392 (= e!111984 e!111963)))

(declare-fun res!83317 () Bool)

(assert (=> b!183392 (=> res!83317 e!111963)))

(declare-fun lt!60891 () List!3084)

(declare-fun lt!60893 () List!3084)

(assert (=> b!183392 (= res!83317 (or (not (= lt!60893 lt!60891)) (not (= lt!60891 lt!60913)) (not (= lt!60893 lt!60913))))))

(declare-fun printList!129 (LexerInterface!445 List!3086) List!3084)

(assert (=> b!183392 (= lt!60891 (printList!129 thiss!17480 lt!60895))))

(declare-fun lt!60908 () BalanceConc!1888)

(assert (=> b!183392 (= lt!60893 (list!1129 lt!60908))))

(assert (=> b!183392 (= lt!60895 (Cons!3076 (h!8473 tokens!465) Nil!3076))))

(declare-fun lt!60912 () BalanceConc!1890)

(declare-fun printTailRec!139 (LexerInterface!445 BalanceConc!1890 Int BalanceConc!1888) BalanceConc!1888)

(assert (=> b!183392 (= lt!60908 (printTailRec!139 thiss!17480 lt!60912 0 (BalanceConc!1889 Empty!940)))))

(declare-fun print!176 (LexerInterface!445 BalanceConc!1890) BalanceConc!1888)

(assert (=> b!183392 (= lt!60908 (print!176 thiss!17480 lt!60912))))

(declare-fun singletonSeq!111 (Token!862) BalanceConc!1890)

(assert (=> b!183392 (= lt!60912 (singletonSeq!111 (h!8473 tokens!465)))))

(declare-fun b!183393 () Bool)

(declare-fun res!83318 () Bool)

(assert (=> b!183393 (=> (not res!83318) (not e!111959))))

(declare-fun rulesInvariant!411 (LexerInterface!445 List!3085) Bool)

(assert (=> b!183393 (= res!83318 (rulesInvariant!411 thiss!17480 rules!1920))))

(declare-fun b!183394 () Bool)

(declare-fun head!640 (List!3086) Token!862)

(assert (=> b!183394 (= e!111975 (= (_1!1757 (get!871 lt!60897)) (head!640 tokens!465)))))

(declare-fun b!183395 () Bool)

(declare-fun res!83323 () Bool)

(assert (=> b!183395 (=> (not res!83323) (not e!111961))))

(assert (=> b!183395 (= res!83323 (isSeparator!559 (rule!1074 separatorToken!170)))))

(declare-fun b!183396 () Bool)

(declare-fun res!83336 () Bool)

(assert (=> b!183396 (=> res!83336 e!111963)))

(declare-fun isEmpty!1432 (BalanceConc!1890) Bool)

(declare-datatypes ((tuple2!3086 0))(
  ( (tuple2!3087 (_1!1759 BalanceConc!1890) (_2!1759 BalanceConc!1888)) )
))
(declare-fun lex!245 (LexerInterface!445 List!3085 BalanceConc!1888) tuple2!3086)

(assert (=> b!183396 (= res!83336 (isEmpty!1432 (_1!1759 (lex!245 thiss!17480 rules!1920 (seqFromList!495 lt!60913)))))))

(declare-fun b!183397 () Bool)

(declare-fun tp!86964 () Bool)

(assert (=> b!183397 (= e!111972 (and (inv!21 (value!20247 (h!8473 tokens!465))) e!111964 tp!86964))))

(declare-fun b!183398 () Bool)

(declare-fun res!83340 () Bool)

(assert (=> b!183398 (=> (not res!83340) (not e!111959))))

(declare-fun isEmpty!1433 (List!3085) Bool)

(assert (=> b!183398 (= res!83340 (not (isEmpty!1433 rules!1920)))))

(declare-fun b!183399 () Bool)

(declare-fun res!83319 () Bool)

(assert (=> b!183399 (=> res!83319 e!111963)))

(assert (=> b!183399 (= res!83319 (not (rulesProduceIndividualToken!194 thiss!17480 rules!1920 (h!8473 tokens!465))))))

(declare-fun b!183400 () Bool)

(declare-fun res!83337 () Bool)

(assert (=> b!183400 (=> (not res!83337) (not e!111980))))

(declare-fun isEmpty!1434 (List!3084) Bool)

(assert (=> b!183400 (= res!83337 (isEmpty!1434 (_2!1757 lt!60899)))))

(declare-fun res!83341 () Bool)

(assert (=> b!183401 (=> (not res!83341) (not e!111961))))

(declare-fun forall!633 (List!3086 Int) Bool)

(assert (=> b!183401 (= res!83341 (forall!633 tokens!465 lambda!5469))))

(assert (=> b!183402 (= e!111967 (and tp!86975 tp!86970))))

(declare-fun res!83320 () Bool)

(assert (=> start!19834 (=> (not res!83320) (not e!111959))))

(assert (=> start!19834 (= res!83320 ((_ is Lexer!443) thiss!17480))))

(assert (=> start!19834 e!111959))

(assert (=> start!19834 true))

(declare-fun e!111979 () Bool)

(assert (=> start!19834 e!111979))

(assert (=> start!19834 (and (inv!3906 separatorToken!170) e!111970)))

(assert (=> start!19834 e!111983))

(declare-fun b!183375 () Bool)

(declare-fun res!83327 () Bool)

(assert (=> b!183375 (=> (not res!83327) (not e!111961))))

(declare-fun sepAndNonSepRulesDisjointChars!148 (List!3085 List!3085) Bool)

(assert (=> b!183375 (= res!83327 (sepAndNonSepRulesDisjointChars!148 rules!1920 rules!1920))))

(declare-fun b!183403 () Bool)

(declare-fun tp!86968 () Bool)

(assert (=> b!183403 (= e!111979 (and e!111978 tp!86968))))

(declare-fun b!183404 () Bool)

(assert (=> b!183404 (= e!111960 (not e!111966))))

(declare-fun res!83330 () Bool)

(assert (=> b!183404 (=> res!83330 e!111966)))

(assert (=> b!183404 (= res!83330 (not (= lt!60909 (list!1129 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 (seqFromList!496 (t!28448 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!60898 () List!3084)

(assert (=> b!183404 (= lt!60898 lt!60894)))

(assert (=> b!183404 (= lt!60894 (++!726 lt!60913 lt!60892))))

(declare-fun lt!60907 () List!3084)

(assert (=> b!183404 (= lt!60898 (++!726 (++!726 lt!60913 lt!60907) lt!60909))))

(declare-fun lt!60911 () Unit!2832)

(declare-fun lemmaConcatAssociativity!248 (List!3084 List!3084 List!3084) Unit!2832)

(assert (=> b!183404 (= lt!60911 (lemmaConcatAssociativity!248 lt!60913 lt!60907 lt!60909))))

(declare-fun charsOf!214 (Token!862) BalanceConc!1888)

(assert (=> b!183404 (= lt!60913 (list!1129 (charsOf!214 (h!8473 tokens!465))))))

(assert (=> b!183404 (= lt!60892 (++!726 lt!60907 lt!60909))))

(assert (=> b!183404 (= lt!60909 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (t!28448 tokens!465) separatorToken!170))))

(assert (=> b!183404 (= lt!60907 (list!1129 (charsOf!214 separatorToken!170)))))

(assert (=> b!183405 (= e!111958 (and tp!86963 tp!86974))))

(assert (= (and start!19834 res!83320) b!183398))

(assert (= (and b!183398 res!83340) b!183393))

(assert (= (and b!183393 res!83318) b!183390))

(assert (= (and b!183390 res!83328) b!183371))

(assert (= (and b!183371 res!83326) b!183395))

(assert (= (and b!183395 res!83323) b!183401))

(assert (= (and b!183401 res!83341) b!183375))

(assert (= (and b!183375 res!83327) b!183372))

(assert (= (and b!183372 res!83324) b!183385))

(assert (= (and b!183385 res!83338) b!183380))

(assert (= (and b!183380 res!83331) b!183404))

(assert (= (and b!183404 (not res!83330)) b!183379))

(assert (= (and b!183379 res!83325) b!183387))

(assert (= (and b!183379 (not res!83335)) b!183392))

(assert (= (and b!183392 (not res!83317)) b!183399))

(assert (= (and b!183399 (not res!83319)) b!183396))

(assert (= (and b!183396 (not res!83336)) b!183388))

(assert (= (and b!183388 (not res!83332)) b!183389))

(assert (= (and b!183389 res!83333) b!183400))

(assert (= (and b!183400 res!83337) b!183383))

(assert (= (and b!183389 (not res!83322)) b!183373))

(assert (= (and b!183373 (not res!83339)) b!183386))

(assert (= (and b!183386 res!83334) b!183394))

(assert (= (and b!183373 (not res!83321)) b!183391))

(assert (= (and b!183391 (not res!83329)) b!183384))

(assert (= b!183381 b!183402))

(assert (= b!183403 b!183381))

(assert (= (and start!19834 ((_ is Cons!3075) rules!1920)) b!183403))

(assert (= b!183376 b!183405))

(assert (= b!183374 b!183376))

(assert (= start!19834 b!183374))

(assert (= b!183378 b!183382))

(assert (= b!183397 b!183378))

(assert (= b!183377 b!183397))

(assert (= (and start!19834 ((_ is Cons!3076) tokens!465)) b!183377))

(declare-fun m!186569 () Bool)

(assert (=> b!183390 m!186569))

(declare-fun m!186571 () Bool)

(assert (=> b!183390 m!186571))

(declare-fun m!186573 () Bool)

(assert (=> b!183392 m!186573))

(declare-fun m!186575 () Bool)

(assert (=> b!183392 m!186575))

(declare-fun m!186577 () Bool)

(assert (=> b!183392 m!186577))

(declare-fun m!186579 () Bool)

(assert (=> b!183392 m!186579))

(declare-fun m!186581 () Bool)

(assert (=> b!183392 m!186581))

(declare-fun m!186583 () Bool)

(assert (=> b!183394 m!186583))

(declare-fun m!186585 () Bool)

(assert (=> b!183394 m!186585))

(declare-fun m!186587 () Bool)

(assert (=> b!183397 m!186587))

(declare-fun m!186589 () Bool)

(assert (=> b!183386 m!186589))

(declare-fun m!186591 () Bool)

(assert (=> b!183386 m!186591))

(declare-fun m!186593 () Bool)

(assert (=> b!183381 m!186593))

(declare-fun m!186595 () Bool)

(assert (=> b!183381 m!186595))

(declare-fun m!186597 () Bool)

(assert (=> b!183387 m!186597))

(declare-fun m!186599 () Bool)

(assert (=> b!183378 m!186599))

(declare-fun m!186601 () Bool)

(assert (=> b!183378 m!186601))

(declare-fun m!186603 () Bool)

(assert (=> b!183396 m!186603))

(assert (=> b!183396 m!186603))

(declare-fun m!186605 () Bool)

(assert (=> b!183396 m!186605))

(declare-fun m!186607 () Bool)

(assert (=> b!183396 m!186607))

(declare-fun m!186609 () Bool)

(assert (=> b!183371 m!186609))

(declare-fun m!186611 () Bool)

(assert (=> b!183376 m!186611))

(declare-fun m!186613 () Bool)

(assert (=> b!183376 m!186613))

(declare-fun m!186615 () Bool)

(assert (=> b!183380 m!186615))

(assert (=> b!183380 m!186615))

(declare-fun m!186617 () Bool)

(assert (=> b!183380 m!186617))

(declare-fun m!186619 () Bool)

(assert (=> start!19834 m!186619))

(declare-fun m!186621 () Bool)

(assert (=> b!183383 m!186621))

(declare-fun m!186623 () Bool)

(assert (=> b!183399 m!186623))

(declare-fun m!186625 () Bool)

(assert (=> b!183393 m!186625))

(declare-fun m!186627 () Bool)

(assert (=> b!183398 m!186627))

(declare-fun m!186629 () Bool)

(assert (=> b!183404 m!186629))

(declare-fun m!186631 () Bool)

(assert (=> b!183404 m!186631))

(declare-fun m!186633 () Bool)

(assert (=> b!183404 m!186633))

(declare-fun m!186635 () Bool)

(assert (=> b!183404 m!186635))

(declare-fun m!186637 () Bool)

(assert (=> b!183404 m!186637))

(assert (=> b!183404 m!186635))

(declare-fun m!186639 () Bool)

(assert (=> b!183404 m!186639))

(assert (=> b!183404 m!186629))

(declare-fun m!186641 () Bool)

(assert (=> b!183404 m!186641))

(assert (=> b!183404 m!186631))

(declare-fun m!186643 () Bool)

(assert (=> b!183404 m!186643))

(declare-fun m!186645 () Bool)

(assert (=> b!183404 m!186645))

(declare-fun m!186647 () Bool)

(assert (=> b!183404 m!186647))

(declare-fun m!186649 () Bool)

(assert (=> b!183404 m!186649))

(assert (=> b!183404 m!186645))

(declare-fun m!186651 () Bool)

(assert (=> b!183404 m!186651))

(assert (=> b!183404 m!186641))

(declare-fun m!186653 () Bool)

(assert (=> b!183404 m!186653))

(declare-fun m!186655 () Bool)

(assert (=> b!183373 m!186655))

(assert (=> b!183373 m!186591))

(declare-fun m!186657 () Bool)

(assert (=> b!183373 m!186657))

(declare-fun m!186659 () Bool)

(assert (=> b!183373 m!186659))

(declare-fun m!186661 () Bool)

(assert (=> b!183373 m!186661))

(assert (=> b!183373 m!186591))

(declare-fun m!186663 () Bool)

(assert (=> b!183373 m!186663))

(declare-fun m!186665 () Bool)

(assert (=> b!183373 m!186665))

(declare-fun m!186667 () Bool)

(assert (=> b!183373 m!186667))

(declare-fun m!186669 () Bool)

(assert (=> b!183373 m!186669))

(declare-fun m!186671 () Bool)

(assert (=> b!183388 m!186671))

(assert (=> b!183388 m!186671))

(declare-fun m!186673 () Bool)

(assert (=> b!183388 m!186673))

(assert (=> b!183388 m!186673))

(declare-fun m!186675 () Bool)

(assert (=> b!183388 m!186675))

(declare-fun m!186677 () Bool)

(assert (=> b!183388 m!186677))

(declare-fun m!186679 () Bool)

(assert (=> b!183375 m!186679))

(declare-fun m!186681 () Bool)

(assert (=> b!183374 m!186681))

(declare-fun m!186683 () Bool)

(assert (=> b!183401 m!186683))

(declare-fun m!186685 () Bool)

(assert (=> b!183389 m!186685))

(declare-fun m!186687 () Bool)

(assert (=> b!183389 m!186687))

(declare-fun m!186689 () Bool)

(assert (=> b!183389 m!186689))

(declare-fun m!186691 () Bool)

(assert (=> b!183377 m!186691))

(declare-fun m!186693 () Bool)

(assert (=> b!183384 m!186693))

(declare-fun m!186695 () Bool)

(assert (=> b!183385 m!186695))

(assert (=> b!183385 m!186695))

(declare-fun m!186697 () Bool)

(assert (=> b!183385 m!186697))

(declare-fun m!186699 () Bool)

(assert (=> b!183385 m!186699))

(declare-fun m!186701 () Bool)

(assert (=> b!183400 m!186701))

(check-sat (not b!183378) (not b_next!7179) (not b!183381) b_and!12589 (not b!183396) b_and!12591 (not b!183389) (not b!183377) (not b!183404) (not b!183397) (not b!183373) (not b!183398) (not b!183414) (not b!183403) b_and!12585 (not b!183394) (not b!183384) (not b!183385) (not b_next!7177) b_and!12581 b_and!12587 (not b!183387) (not b!183392) (not b!183399) (not b_next!7173) (not b!183386) (not b!183388) (not b!183374) (not b_next!7175) (not b!183380) (not b!183401) (not b!183383) (not b_next!7169) (not b_next!7171) (not b!183400) (not b!183393) (not b!183375) (not start!19834) (not b!183371) (not b!183390) b_and!12583 (not b!183376))
(check-sat b_and!12585 (not b_next!7179) b_and!12589 (not b_next!7173) (not b_next!7175) b_and!12591 b_and!12583 (not b_next!7177) b_and!12581 b_and!12587 (not b_next!7169) (not b_next!7171))
(get-model)

(declare-fun b!183471 () Bool)

(declare-fun e!112020 () List!3084)

(assert (=> b!183471 (= e!112020 lt!60909)))

(declare-fun b!183473 () Bool)

(declare-fun res!83391 () Bool)

(declare-fun e!112019 () Bool)

(assert (=> b!183473 (=> (not res!83391) (not e!112019))))

(declare-fun lt!60935 () List!3084)

(declare-fun size!2499 (List!3084) Int)

(assert (=> b!183473 (= res!83391 (= (size!2499 lt!60935) (+ (size!2499 lt!60913) (size!2499 lt!60909))))))

(declare-fun b!183474 () Bool)

(assert (=> b!183474 (= e!112019 (or (not (= lt!60909 Nil!3074)) (= lt!60935 lt!60913)))))

(declare-fun d!46287 () Bool)

(assert (=> d!46287 e!112019))

(declare-fun res!83390 () Bool)

(assert (=> d!46287 (=> (not res!83390) (not e!112019))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!420 (List!3084) (InoxSet C!2488))

(assert (=> d!46287 (= res!83390 (= (content!420 lt!60935) ((_ map or) (content!420 lt!60913) (content!420 lt!60909))))))

(assert (=> d!46287 (= lt!60935 e!112020)))

(declare-fun c!35649 () Bool)

(assert (=> d!46287 (= c!35649 ((_ is Nil!3074) lt!60913))))

(assert (=> d!46287 (= (++!726 lt!60913 lt!60909) lt!60935)))

(declare-fun b!183472 () Bool)

(assert (=> b!183472 (= e!112020 (Cons!3074 (h!8471 lt!60913) (++!726 (t!28446 lt!60913) lt!60909)))))

(assert (= (and d!46287 c!35649) b!183471))

(assert (= (and d!46287 (not c!35649)) b!183472))

(assert (= (and d!46287 res!83390) b!183473))

(assert (= (and b!183473 res!83391) b!183474))

(declare-fun m!186761 () Bool)

(assert (=> b!183473 m!186761))

(declare-fun m!186763 () Bool)

(assert (=> b!183473 m!186763))

(declare-fun m!186765 () Bool)

(assert (=> b!183473 m!186765))

(declare-fun m!186767 () Bool)

(assert (=> d!46287 m!186767))

(declare-fun m!186769 () Bool)

(assert (=> d!46287 m!186769))

(declare-fun m!186771 () Bool)

(assert (=> d!46287 m!186771))

(declare-fun m!186773 () Bool)

(assert (=> b!183472 m!186773))

(assert (=> b!183387 d!46287))

(declare-fun d!46289 () Bool)

(declare-fun isEmpty!1437 (Option!396) Bool)

(assert (=> d!46289 (= (isDefined!247 lt!60897) (not (isEmpty!1437 lt!60897)))))

(declare-fun bs!18209 () Bool)

(assert (= bs!18209 d!46289))

(declare-fun m!186775 () Bool)

(assert (=> bs!18209 m!186775))

(assert (=> b!183386 d!46289))

(declare-fun b!183508 () Bool)

(declare-fun e!112038 () Option!396)

(declare-fun lt!60951 () Option!396)

(declare-fun lt!60949 () Option!396)

(assert (=> b!183508 (= e!112038 (ite (and ((_ is None!395) lt!60951) ((_ is None!395) lt!60949)) None!395 (ite ((_ is None!395) lt!60949) lt!60951 (ite ((_ is None!395) lt!60951) lt!60949 (ite (>= (size!2495 (_1!1757 (v!13882 lt!60951))) (size!2495 (_1!1757 (v!13882 lt!60949)))) lt!60951 lt!60949)))))))

(declare-fun call!8326 () Option!396)

(assert (=> b!183508 (= lt!60951 call!8326)))

(assert (=> b!183508 (= lt!60949 (maxPrefix!175 thiss!17480 (t!28447 rules!1920) lt!60902))))

(declare-fun b!183509 () Bool)

(declare-fun res!83415 () Bool)

(declare-fun e!112036 () Bool)

(assert (=> b!183509 (=> (not res!83415) (not e!112036))))

(declare-fun lt!60950 () Option!396)

(assert (=> b!183509 (= res!83415 (matchR!121 (regex!559 (rule!1074 (_1!1757 (get!871 lt!60950)))) (list!1129 (charsOf!214 (_1!1757 (get!871 lt!60950))))))))

(declare-fun b!183510 () Bool)

(declare-fun contains!496 (List!3085 Rule!918) Bool)

(assert (=> b!183510 (= e!112036 (contains!496 rules!1920 (rule!1074 (_1!1757 (get!871 lt!60950)))))))

(declare-fun b!183512 () Bool)

(declare-fun res!83418 () Bool)

(assert (=> b!183512 (=> (not res!83418) (not e!112036))))

(assert (=> b!183512 (= res!83418 (= (list!1129 (charsOf!214 (_1!1757 (get!871 lt!60950)))) (originalCharacters!602 (_1!1757 (get!871 lt!60950)))))))

(declare-fun b!183513 () Bool)

(declare-fun res!83419 () Bool)

(assert (=> b!183513 (=> (not res!83419) (not e!112036))))

(assert (=> b!183513 (= res!83419 (< (size!2499 (_2!1757 (get!871 lt!60950))) (size!2499 lt!60902)))))

(declare-fun b!183514 () Bool)

(declare-fun res!83416 () Bool)

(assert (=> b!183514 (=> (not res!83416) (not e!112036))))

(assert (=> b!183514 (= res!83416 (= (++!726 (list!1129 (charsOf!214 (_1!1757 (get!871 lt!60950)))) (_2!1757 (get!871 lt!60950))) lt!60902))))

(declare-fun b!183515 () Bool)

(declare-fun res!83421 () Bool)

(assert (=> b!183515 (=> (not res!83421) (not e!112036))))

(declare-fun apply!462 (TokenValueInjection!934 BalanceConc!1888) TokenValue!581)

(assert (=> b!183515 (= res!83421 (= (value!20247 (_1!1757 (get!871 lt!60950))) (apply!462 (transformation!559 (rule!1074 (_1!1757 (get!871 lt!60950)))) (seqFromList!495 (originalCharacters!602 (_1!1757 (get!871 lt!60950)))))))))

(declare-fun bm!8321 () Bool)

(declare-fun maxPrefixOneRule!85 (LexerInterface!445 Rule!918 List!3084) Option!396)

(assert (=> bm!8321 (= call!8326 (maxPrefixOneRule!85 thiss!17480 (h!8472 rules!1920) lt!60902))))

(declare-fun b!183516 () Bool)

(declare-fun e!112037 () Bool)

(assert (=> b!183516 (= e!112037 e!112036)))

(declare-fun res!83417 () Bool)

(assert (=> b!183516 (=> (not res!83417) (not e!112036))))

(assert (=> b!183516 (= res!83417 (isDefined!247 lt!60950))))

(declare-fun b!183511 () Bool)

(assert (=> b!183511 (= e!112038 call!8326)))

(declare-fun d!46291 () Bool)

(assert (=> d!46291 e!112037))

(declare-fun res!83420 () Bool)

(assert (=> d!46291 (=> res!83420 e!112037)))

(assert (=> d!46291 (= res!83420 (isEmpty!1437 lt!60950))))

(assert (=> d!46291 (= lt!60950 e!112038)))

(declare-fun c!35655 () Bool)

(assert (=> d!46291 (= c!35655 (and ((_ is Cons!3075) rules!1920) ((_ is Nil!3075) (t!28447 rules!1920))))))

(declare-fun lt!60953 () Unit!2832)

(declare-fun lt!60952 () Unit!2832)

(assert (=> d!46291 (= lt!60953 lt!60952)))

(assert (=> d!46291 (isPrefix!255 lt!60902 lt!60902)))

(declare-fun lemmaIsPrefixRefl!151 (List!3084 List!3084) Unit!2832)

(assert (=> d!46291 (= lt!60952 (lemmaIsPrefixRefl!151 lt!60902 lt!60902))))

(declare-fun rulesValidInductive!140 (LexerInterface!445 List!3085) Bool)

(assert (=> d!46291 (rulesValidInductive!140 thiss!17480 rules!1920)))

(assert (=> d!46291 (= (maxPrefix!175 thiss!17480 rules!1920 lt!60902) lt!60950)))

(assert (= (and d!46291 c!35655) b!183511))

(assert (= (and d!46291 (not c!35655)) b!183508))

(assert (= (or b!183511 b!183508) bm!8321))

(assert (= (and d!46291 (not res!83420)) b!183516))

(assert (= (and b!183516 res!83417) b!183512))

(assert (= (and b!183512 res!83418) b!183513))

(assert (= (and b!183513 res!83419) b!183514))

(assert (= (and b!183514 res!83416) b!183515))

(assert (= (and b!183515 res!83421) b!183509))

(assert (= (and b!183509 res!83415) b!183510))

(declare-fun m!186799 () Bool)

(assert (=> b!183509 m!186799))

(declare-fun m!186801 () Bool)

(assert (=> b!183509 m!186801))

(assert (=> b!183509 m!186801))

(declare-fun m!186803 () Bool)

(assert (=> b!183509 m!186803))

(assert (=> b!183509 m!186803))

(declare-fun m!186805 () Bool)

(assert (=> b!183509 m!186805))

(declare-fun m!186807 () Bool)

(assert (=> b!183508 m!186807))

(declare-fun m!186809 () Bool)

(assert (=> bm!8321 m!186809))

(assert (=> b!183512 m!186799))

(assert (=> b!183512 m!186801))

(assert (=> b!183512 m!186801))

(assert (=> b!183512 m!186803))

(declare-fun m!186811 () Bool)

(assert (=> d!46291 m!186811))

(declare-fun m!186813 () Bool)

(assert (=> d!46291 m!186813))

(declare-fun m!186815 () Bool)

(assert (=> d!46291 m!186815))

(declare-fun m!186817 () Bool)

(assert (=> d!46291 m!186817))

(assert (=> b!183513 m!186799))

(declare-fun m!186819 () Bool)

(assert (=> b!183513 m!186819))

(declare-fun m!186821 () Bool)

(assert (=> b!183513 m!186821))

(assert (=> b!183510 m!186799))

(declare-fun m!186823 () Bool)

(assert (=> b!183510 m!186823))

(assert (=> b!183515 m!186799))

(declare-fun m!186825 () Bool)

(assert (=> b!183515 m!186825))

(assert (=> b!183515 m!186825))

(declare-fun m!186827 () Bool)

(assert (=> b!183515 m!186827))

(assert (=> b!183514 m!186799))

(assert (=> b!183514 m!186801))

(assert (=> b!183514 m!186801))

(assert (=> b!183514 m!186803))

(assert (=> b!183514 m!186803))

(declare-fun m!186829 () Bool)

(assert (=> b!183514 m!186829))

(declare-fun m!186831 () Bool)

(assert (=> b!183516 m!186831))

(assert (=> b!183386 d!46291))

(declare-fun d!46299 () Bool)

(declare-fun list!1132 (Conc!940) List!3084)

(assert (=> d!46299 (= (list!1129 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 lt!60903 separatorToken!170 0)) (list!1132 (c!35641 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 lt!60903 separatorToken!170 0))))))

(declare-fun bs!18212 () Bool)

(assert (= bs!18212 d!46299))

(declare-fun m!186833 () Bool)

(assert (=> bs!18212 m!186833))

(assert (=> b!183385 d!46299))

(declare-fun bs!18218 () Bool)

(declare-fun d!46301 () Bool)

(assert (= bs!18218 (and d!46301 b!183401)))

(declare-fun lambda!5481 () Int)

(assert (=> bs!18218 (= lambda!5481 lambda!5469)))

(declare-fun bs!18219 () Bool)

(assert (= bs!18219 (and d!46301 b!183388)))

(assert (=> bs!18219 (not (= lambda!5481 lambda!5470))))

(declare-fun bs!18220 () Bool)

(declare-fun b!183579 () Bool)

(assert (= bs!18220 (and b!183579 b!183401)))

(declare-fun lambda!5482 () Int)

(assert (=> bs!18220 (not (= lambda!5482 lambda!5469))))

(declare-fun bs!18221 () Bool)

(assert (= bs!18221 (and b!183579 b!183388)))

(assert (=> bs!18221 (= lambda!5482 lambda!5470)))

(declare-fun bs!18222 () Bool)

(assert (= bs!18222 (and b!183579 d!46301)))

(assert (=> bs!18222 (not (= lambda!5482 lambda!5481))))

(declare-fun b!183582 () Bool)

(declare-fun e!112083 () Bool)

(assert (=> b!183582 (= e!112083 true)))

(declare-fun b!183581 () Bool)

(declare-fun e!112082 () Bool)

(assert (=> b!183581 (= e!112082 e!112083)))

(declare-fun b!183580 () Bool)

(declare-fun e!112081 () Bool)

(assert (=> b!183580 (= e!112081 e!112082)))

(assert (=> b!183579 e!112081))

(assert (= b!183581 b!183582))

(assert (= b!183580 b!183581))

(assert (= (and b!183579 ((_ is Cons!3075) rules!1920)) b!183580))

(assert (=> b!183582 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5482))))

(assert (=> b!183582 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5482))))

(assert (=> b!183579 true))

(declare-fun b!183571 () Bool)

(declare-fun e!112080 () BalanceConc!1888)

(assert (=> b!183571 (= e!112080 (BalanceConc!1889 Empty!940))))

(declare-fun call!8352 () Token!862)

(assert (=> b!183571 (= (print!176 thiss!17480 (singletonSeq!111 call!8352)) (printTailRec!139 thiss!17480 (singletonSeq!111 call!8352) 0 (BalanceConc!1889 Empty!940)))))

(declare-fun lt!61030 () Unit!2832)

(declare-fun Unit!2838 () Unit!2832)

(assert (=> b!183571 (= lt!61030 Unit!2838)))

(declare-fun lt!61033 () Unit!2832)

(declare-fun call!8356 () BalanceConc!1888)

(declare-fun lt!61028 () BalanceConc!1888)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!50 (LexerInterface!445 List!3085 List!3084 List!3084) Unit!2832)

(assert (=> b!183571 (= lt!61033 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!50 thiss!17480 rules!1920 (list!1129 call!8356) (list!1129 lt!61028)))))

(assert (=> b!183571 false))

(declare-fun lt!61025 () Unit!2832)

(declare-fun Unit!2839 () Unit!2832)

(assert (=> b!183571 (= lt!61025 Unit!2839)))

(declare-fun b!183572 () Bool)

(declare-fun e!112079 () Bool)

(declare-fun size!2500 (BalanceConc!1890) Int)

(assert (=> b!183572 (= e!112079 (<= 0 (size!2500 lt!60903)))))

(declare-fun c!35675 () Bool)

(declare-fun bm!8347 () Bool)

(assert (=> bm!8347 (= call!8356 (charsOf!214 (ite c!35675 separatorToken!170 call!8352)))))

(declare-fun b!183573 () Bool)

(declare-fun e!112078 () BalanceConc!1888)

(declare-fun call!8353 () BalanceConc!1888)

(assert (=> b!183573 (= e!112078 call!8353)))

(declare-fun bm!8348 () Bool)

(declare-fun call!8354 () Token!862)

(assert (=> bm!8348 (= call!8352 call!8354)))

(declare-fun b!183574 () Bool)

(declare-fun e!112077 () Bool)

(assert (=> b!183574 (= c!35675 e!112077)))

(declare-fun res!83437 () Bool)

(assert (=> b!183574 (=> (not res!83437) (not e!112077))))

(declare-fun lt!61035 () Option!397)

(assert (=> b!183574 (= res!83437 ((_ is Some!396) lt!61035))))

(assert (=> b!183574 (= e!112078 e!112080)))

(declare-fun b!183575 () Bool)

(declare-fun ++!728 (BalanceConc!1888 BalanceConc!1888) BalanceConc!1888)

(assert (=> b!183575 (= e!112080 (++!728 call!8353 lt!61028))))

(declare-fun b!183576 () Bool)

(declare-fun e!112076 () BalanceConc!1888)

(assert (=> b!183576 (= e!112076 (BalanceConc!1889 Empty!940))))

(declare-fun lt!61029 () BalanceConc!1888)

(declare-fun dropList!102 (BalanceConc!1890 Int) List!3086)

(assert (=> d!46301 (= (list!1129 lt!61029) (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (dropList!102 lt!60903 0) separatorToken!170))))

(assert (=> d!46301 (= lt!61029 e!112076)))

(declare-fun c!35674 () Bool)

(assert (=> d!46301 (= c!35674 (>= 0 (size!2500 lt!60903)))))

(declare-fun lt!61027 () Unit!2832)

(declare-fun lemmaContentSubsetPreservesForall!46 (List!3086 List!3086 Int) Unit!2832)

(declare-fun list!1133 (BalanceConc!1890) List!3086)

(assert (=> d!46301 (= lt!61027 (lemmaContentSubsetPreservesForall!46 (list!1133 lt!60903) (dropList!102 lt!60903 0) lambda!5481))))

(assert (=> d!46301 e!112079))

(declare-fun res!83438 () Bool)

(assert (=> d!46301 (=> (not res!83438) (not e!112079))))

(assert (=> d!46301 (= res!83438 (>= 0 0))))

(assert (=> d!46301 (= (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 lt!60903 separatorToken!170 0) lt!61029)))

(declare-fun bm!8349 () Bool)

(declare-fun c!35676 () Bool)

(declare-fun call!8355 () BalanceConc!1888)

(assert (=> bm!8349 (= call!8353 (++!728 call!8355 (ite c!35676 lt!61028 call!8356)))))

(declare-fun b!183577 () Bool)

(assert (=> b!183577 (= e!112077 (not (= (_1!1758 (v!13883 lt!61035)) call!8354)))))

(declare-fun bm!8350 () Bool)

(declare-fun apply!463 (BalanceConc!1890 Int) Token!862)

(assert (=> bm!8350 (= call!8354 (apply!463 lt!60903 0))))

(declare-fun b!183578 () Bool)

(declare-fun e!112075 () Bool)

(assert (=> b!183578 (= e!112075 (= (_1!1758 (v!13883 lt!61035)) (apply!463 lt!60903 0)))))

(assert (=> b!183579 (= e!112076 e!112078)))

(declare-fun lt!61034 () List!3086)

(assert (=> b!183579 (= lt!61034 (list!1133 lt!60903))))

(declare-fun lt!61031 () Unit!2832)

(declare-fun lemmaDropApply!142 (List!3086 Int) Unit!2832)

(assert (=> b!183579 (= lt!61031 (lemmaDropApply!142 lt!61034 0))))

(declare-fun drop!155 (List!3086 Int) List!3086)

(declare-fun apply!464 (List!3086 Int) Token!862)

(assert (=> b!183579 (= (head!640 (drop!155 lt!61034 0)) (apply!464 lt!61034 0))))

(declare-fun lt!61026 () Unit!2832)

(assert (=> b!183579 (= lt!61026 lt!61031)))

(declare-fun lt!61032 () List!3086)

(assert (=> b!183579 (= lt!61032 (list!1133 lt!60903))))

(declare-fun lt!61024 () Unit!2832)

(declare-fun lemmaDropTail!134 (List!3086 Int) Unit!2832)

(assert (=> b!183579 (= lt!61024 (lemmaDropTail!134 lt!61032 0))))

(declare-fun tail!368 (List!3086) List!3086)

(assert (=> b!183579 (= (tail!368 (drop!155 lt!61032 0)) (drop!155 lt!61032 (+ 0 1)))))

(declare-fun lt!61036 () Unit!2832)

(assert (=> b!183579 (= lt!61036 lt!61024)))

(declare-fun lt!61037 () Unit!2832)

(assert (=> b!183579 (= lt!61037 (forallContained!126 (list!1133 lt!60903) lambda!5482 (apply!463 lt!60903 0)))))

(assert (=> b!183579 (= lt!61028 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 lt!60903 separatorToken!170 (+ 0 1)))))

(assert (=> b!183579 (= lt!61035 (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (++!728 (charsOf!214 (apply!463 lt!60903 0)) lt!61028)))))

(declare-fun res!83439 () Bool)

(assert (=> b!183579 (= res!83439 ((_ is Some!396) lt!61035))))

(assert (=> b!183579 (=> (not res!83439) (not e!112075))))

(assert (=> b!183579 (= c!35676 e!112075)))

(declare-fun bm!8351 () Bool)

(assert (=> bm!8351 (= call!8355 (charsOf!214 (ite c!35676 call!8354 call!8352)))))

(assert (= (and d!46301 res!83438) b!183572))

(assert (= (and d!46301 c!35674) b!183576))

(assert (= (and d!46301 (not c!35674)) b!183579))

(assert (= (and b!183579 res!83439) b!183578))

(assert (= (and b!183579 c!35676) b!183573))

(assert (= (and b!183579 (not c!35676)) b!183574))

(assert (= (and b!183574 res!83437) b!183577))

(assert (= (and b!183574 c!35675) b!183575))

(assert (= (and b!183574 (not c!35675)) b!183571))

(assert (= (or b!183575 b!183571) bm!8348))

(assert (= (or b!183575 b!183571) bm!8347))

(assert (= (or b!183573 bm!8348 b!183577) bm!8350))

(assert (= (or b!183573 b!183575) bm!8351))

(assert (= (or b!183573 b!183575) bm!8349))

(declare-fun m!186895 () Bool)

(assert (=> bm!8347 m!186895))

(declare-fun m!186897 () Bool)

(assert (=> bm!8349 m!186897))

(declare-fun m!186899 () Bool)

(assert (=> b!183572 m!186899))

(declare-fun m!186901 () Bool)

(assert (=> b!183571 m!186901))

(declare-fun m!186903 () Bool)

(assert (=> b!183571 m!186903))

(declare-fun m!186905 () Bool)

(assert (=> b!183571 m!186905))

(declare-fun m!186907 () Bool)

(assert (=> b!183571 m!186907))

(declare-fun m!186909 () Bool)

(assert (=> b!183571 m!186909))

(assert (=> b!183571 m!186901))

(assert (=> b!183571 m!186907))

(assert (=> b!183571 m!186907))

(declare-fun m!186911 () Bool)

(assert (=> b!183571 m!186911))

(assert (=> b!183571 m!186903))

(declare-fun m!186913 () Bool)

(assert (=> bm!8350 m!186913))

(declare-fun m!186915 () Bool)

(assert (=> d!46301 m!186915))

(declare-fun m!186917 () Bool)

(assert (=> d!46301 m!186917))

(assert (=> d!46301 m!186899))

(declare-fun m!186919 () Bool)

(assert (=> d!46301 m!186919))

(assert (=> d!46301 m!186915))

(declare-fun m!186921 () Bool)

(assert (=> d!46301 m!186921))

(assert (=> d!46301 m!186915))

(declare-fun m!186923 () Bool)

(assert (=> d!46301 m!186923))

(assert (=> d!46301 m!186919))

(assert (=> b!183578 m!186913))

(declare-fun m!186925 () Bool)

(assert (=> b!183579 m!186925))

(declare-fun m!186927 () Bool)

(assert (=> b!183579 m!186927))

(declare-fun m!186929 () Bool)

(assert (=> b!183579 m!186929))

(assert (=> b!183579 m!186925))

(declare-fun m!186931 () Bool)

(assert (=> b!183579 m!186931))

(assert (=> b!183579 m!186919))

(assert (=> b!183579 m!186919))

(assert (=> b!183579 m!186913))

(declare-fun m!186933 () Bool)

(assert (=> b!183579 m!186933))

(declare-fun m!186935 () Bool)

(assert (=> b!183579 m!186935))

(declare-fun m!186937 () Bool)

(assert (=> b!183579 m!186937))

(declare-fun m!186939 () Bool)

(assert (=> b!183579 m!186939))

(declare-fun m!186941 () Bool)

(assert (=> b!183579 m!186941))

(assert (=> b!183579 m!186939))

(declare-fun m!186943 () Bool)

(assert (=> b!183579 m!186943))

(declare-fun m!186945 () Bool)

(assert (=> b!183579 m!186945))

(declare-fun m!186947 () Bool)

(assert (=> b!183579 m!186947))

(assert (=> b!183579 m!186935))

(assert (=> b!183579 m!186913))

(assert (=> b!183579 m!186929))

(assert (=> b!183579 m!186913))

(declare-fun m!186949 () Bool)

(assert (=> b!183579 m!186949))

(declare-fun m!186951 () Bool)

(assert (=> b!183575 m!186951))

(declare-fun m!186953 () Bool)

(assert (=> bm!8351 m!186953))

(assert (=> b!183385 d!46301))

(declare-fun bs!18227 () Bool)

(declare-fun b!183635 () Bool)

(assert (= bs!18227 (and b!183635 b!183401)))

(declare-fun lambda!5488 () Int)

(assert (=> bs!18227 (not (= lambda!5488 lambda!5469))))

(declare-fun bs!18228 () Bool)

(assert (= bs!18228 (and b!183635 b!183388)))

(assert (=> bs!18228 (= lambda!5488 lambda!5470)))

(declare-fun bs!18229 () Bool)

(assert (= bs!18229 (and b!183635 d!46301)))

(assert (=> bs!18229 (not (= lambda!5488 lambda!5481))))

(declare-fun bs!18230 () Bool)

(assert (= bs!18230 (and b!183635 b!183579)))

(assert (=> bs!18230 (= lambda!5488 lambda!5482)))

(declare-fun b!183642 () Bool)

(declare-fun e!112116 () Bool)

(assert (=> b!183642 (= e!112116 true)))

(declare-fun b!183641 () Bool)

(declare-fun e!112115 () Bool)

(assert (=> b!183641 (= e!112115 e!112116)))

(declare-fun b!183640 () Bool)

(declare-fun e!112114 () Bool)

(assert (=> b!183640 (= e!112114 e!112115)))

(assert (=> b!183635 e!112114))

(assert (= b!183641 b!183642))

(assert (= b!183640 b!183641))

(assert (= (and b!183635 ((_ is Cons!3075) rules!1920)) b!183640))

(assert (=> b!183642 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5488))))

(assert (=> b!183642 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5488))))

(assert (=> b!183635 true))

(declare-fun b!183630 () Bool)

(declare-fun e!112112 () List!3084)

(assert (=> b!183630 (= e!112112 Nil!3074)))

(declare-fun d!46305 () Bool)

(declare-fun c!35700 () Bool)

(assert (=> d!46305 (= c!35700 ((_ is Cons!3076) tokens!465))))

(assert (=> d!46305 (= (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!112112)))

(declare-fun bm!8377 () Bool)

(declare-fun call!8382 () List!3084)

(declare-fun call!8384 () List!3084)

(assert (=> bm!8377 (= call!8382 call!8384)))

(declare-fun c!35701 () Bool)

(declare-fun c!35703 () Bool)

(assert (=> bm!8377 (= c!35701 c!35703)))

(declare-fun b!183631 () Bool)

(declare-fun e!112113 () List!3084)

(assert (=> b!183631 (= e!112113 Nil!3074)))

(assert (=> b!183631 (= (print!176 thiss!17480 (singletonSeq!111 (h!8473 tokens!465))) (printTailRec!139 thiss!17480 (singletonSeq!111 (h!8473 tokens!465)) 0 (BalanceConc!1889 Empty!940)))))

(declare-fun lt!61071 () Unit!2832)

(declare-fun Unit!2842 () Unit!2832)

(assert (=> b!183631 (= lt!61071 Unit!2842)))

(declare-fun lt!61069 () List!3084)

(declare-fun lt!61068 () Unit!2832)

(assert (=> b!183631 (= lt!61068 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!50 thiss!17480 rules!1920 call!8382 lt!61069))))

(assert (=> b!183631 false))

(declare-fun lt!61070 () Unit!2832)

(declare-fun Unit!2843 () Unit!2832)

(assert (=> b!183631 (= lt!61070 Unit!2843)))

(declare-fun b!183632 () Bool)

(declare-fun call!8383 () List!3084)

(assert (=> b!183632 (= e!112113 (++!726 call!8383 lt!61069))))

(declare-fun bm!8378 () Bool)

(declare-fun call!8385 () BalanceConc!1888)

(assert (=> bm!8378 (= call!8385 (charsOf!214 (h!8473 tokens!465)))))

(declare-fun b!183633 () Bool)

(declare-fun e!112110 () List!3084)

(declare-fun call!8386 () BalanceConc!1888)

(assert (=> b!183633 (= e!112110 (list!1129 call!8386))))

(declare-fun b!183634 () Bool)

(declare-fun e!112111 () BalanceConc!1888)

(assert (=> b!183634 (= e!112111 (charsOf!214 separatorToken!170))))

(declare-fun e!112109 () List!3084)

(assert (=> b!183635 (= e!112112 e!112109)))

(declare-fun lt!61073 () Unit!2832)

(assert (=> b!183635 (= lt!61073 (forallContained!126 tokens!465 lambda!5488 (h!8473 tokens!465)))))

(assert (=> b!183635 (= lt!61069 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (t!28448 tokens!465) separatorToken!170))))

(declare-fun lt!61072 () Option!396)

(assert (=> b!183635 (= lt!61072 (maxPrefix!175 thiss!17480 rules!1920 (++!726 (list!1129 (charsOf!214 (h!8473 tokens!465))) lt!61069)))))

(declare-fun c!35699 () Bool)

(assert (=> b!183635 (= c!35699 (and ((_ is Some!395) lt!61072) (= (_1!1757 (v!13882 lt!61072)) (h!8473 tokens!465))))))

(declare-fun bm!8379 () Bool)

(declare-fun c!35702 () Bool)

(assert (=> bm!8379 (= c!35702 c!35699)))

(assert (=> bm!8379 (= call!8383 (++!726 e!112110 (ite c!35699 lt!61069 call!8382)))))

(declare-fun bm!8380 () Bool)

(assert (=> bm!8380 (= call!8384 (list!1129 (ite c!35699 call!8385 e!112111)))))

(declare-fun bm!8381 () Bool)

(assert (=> bm!8381 (= call!8386 call!8385)))

(declare-fun b!183636 () Bool)

(assert (=> b!183636 (= e!112110 call!8384)))

(declare-fun b!183637 () Bool)

(assert (=> b!183637 (= c!35703 (and ((_ is Some!395) lt!61072) (not (= (_1!1757 (v!13882 lt!61072)) (h!8473 tokens!465)))))))

(assert (=> b!183637 (= e!112109 e!112113)))

(declare-fun b!183638 () Bool)

(assert (=> b!183638 (= e!112109 call!8383)))

(declare-fun b!183639 () Bool)

(assert (=> b!183639 (= e!112111 call!8386)))

(assert (= (and d!46305 c!35700) b!183635))

(assert (= (and d!46305 (not c!35700)) b!183630))

(assert (= (and b!183635 c!35699) b!183638))

(assert (= (and b!183635 (not c!35699)) b!183637))

(assert (= (and b!183637 c!35703) b!183632))

(assert (= (and b!183637 (not c!35703)) b!183631))

(assert (= (or b!183632 b!183631) bm!8381))

(assert (= (or b!183632 b!183631) bm!8377))

(assert (= (and bm!8377 c!35701) b!183634))

(assert (= (and bm!8377 (not c!35701)) b!183639))

(assert (= (or b!183638 bm!8381) bm!8378))

(assert (= (or b!183638 bm!8377) bm!8380))

(assert (= (or b!183638 b!183632) bm!8379))

(assert (= (and bm!8379 c!35702) b!183636))

(assert (= (and bm!8379 (not c!35702)) b!183633))

(declare-fun m!186975 () Bool)

(assert (=> b!183633 m!186975))

(declare-fun m!186977 () Bool)

(assert (=> bm!8379 m!186977))

(declare-fun m!186979 () Bool)

(assert (=> b!183632 m!186979))

(declare-fun m!186981 () Bool)

(assert (=> b!183635 m!186981))

(declare-fun m!186983 () Bool)

(assert (=> b!183635 m!186983))

(declare-fun m!186985 () Bool)

(assert (=> b!183635 m!186985))

(assert (=> b!183635 m!186645))

(assert (=> b!183635 m!186651))

(assert (=> b!183635 m!186983))

(assert (=> b!183635 m!186647))

(assert (=> b!183635 m!186645))

(assert (=> b!183635 m!186651))

(assert (=> bm!8378 m!186645))

(declare-fun m!186987 () Bool)

(assert (=> bm!8380 m!186987))

(assert (=> b!183634 m!186635))

(assert (=> b!183631 m!186581))

(assert (=> b!183631 m!186581))

(declare-fun m!186989 () Bool)

(assert (=> b!183631 m!186989))

(assert (=> b!183631 m!186581))

(declare-fun m!186991 () Bool)

(assert (=> b!183631 m!186991))

(declare-fun m!186993 () Bool)

(assert (=> b!183631 m!186993))

(assert (=> b!183385 d!46305))

(declare-fun bs!18263 () Bool)

(declare-fun d!46309 () Bool)

(assert (= bs!18263 (and d!46309 d!46301)))

(declare-fun lambda!5499 () Int)

(assert (=> bs!18263 (not (= lambda!5499 lambda!5481))))

(declare-fun bs!18264 () Bool)

(assert (= bs!18264 (and d!46309 b!183388)))

(assert (=> bs!18264 (= lambda!5499 lambda!5470)))

(declare-fun bs!18265 () Bool)

(assert (= bs!18265 (and d!46309 b!183635)))

(assert (=> bs!18265 (= lambda!5499 lambda!5488)))

(declare-fun bs!18266 () Bool)

(assert (= bs!18266 (and d!46309 b!183401)))

(assert (=> bs!18266 (not (= lambda!5499 lambda!5469))))

(declare-fun bs!18267 () Bool)

(assert (= bs!18267 (and d!46309 b!183579)))

(assert (=> bs!18267 (= lambda!5499 lambda!5482)))

(declare-fun b!183725 () Bool)

(declare-fun e!112170 () Bool)

(assert (=> b!183725 (= e!112170 true)))

(declare-fun b!183724 () Bool)

(declare-fun e!112169 () Bool)

(assert (=> b!183724 (= e!112169 e!112170)))

(declare-fun b!183723 () Bool)

(declare-fun e!112168 () Bool)

(assert (=> b!183723 (= e!112168 e!112169)))

(assert (=> d!46309 e!112168))

(assert (= b!183724 b!183725))

(assert (= b!183723 b!183724))

(assert (= (and d!46309 ((_ is Cons!3075) rules!1920)) b!183723))

(assert (=> b!183725 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5499))))

(assert (=> b!183725 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5499))))

(assert (=> d!46309 true))

(declare-fun lt!61118 () Bool)

(assert (=> d!46309 (= lt!61118 (forall!633 (t!28448 tokens!465) lambda!5499))))

(declare-fun e!112166 () Bool)

(assert (=> d!46309 (= lt!61118 e!112166)))

(declare-fun res!83476 () Bool)

(assert (=> d!46309 (=> res!83476 e!112166)))

(assert (=> d!46309 (= res!83476 (not ((_ is Cons!3076) (t!28448 tokens!465))))))

(assert (=> d!46309 (not (isEmpty!1433 rules!1920))))

(assert (=> d!46309 (= (rulesProduceEachTokenIndividuallyList!135 thiss!17480 rules!1920 (t!28448 tokens!465)) lt!61118)))

(declare-fun b!183721 () Bool)

(declare-fun e!112167 () Bool)

(assert (=> b!183721 (= e!112166 e!112167)))

(declare-fun res!83477 () Bool)

(assert (=> b!183721 (=> (not res!83477) (not e!112167))))

(assert (=> b!183721 (= res!83477 (rulesProduceIndividualToken!194 thiss!17480 rules!1920 (h!8473 (t!28448 tokens!465))))))

(declare-fun b!183722 () Bool)

(assert (=> b!183722 (= e!112167 (rulesProduceEachTokenIndividuallyList!135 thiss!17480 rules!1920 (t!28448 (t!28448 tokens!465))))))

(assert (= (and d!46309 (not res!83476)) b!183721))

(assert (= (and b!183721 res!83477) b!183722))

(declare-fun m!187201 () Bool)

(assert (=> d!46309 m!187201))

(assert (=> d!46309 m!186627))

(declare-fun m!187203 () Bool)

(assert (=> b!183721 m!187203))

(declare-fun m!187205 () Bool)

(assert (=> b!183722 m!187205))

(assert (=> b!183384 d!46309))

(declare-fun d!46351 () Bool)

(declare-fun e!112203 () Bool)

(assert (=> d!46351 e!112203))

(declare-fun c!35729 () Bool)

(assert (=> d!46351 (= c!35729 ((_ is EmptyExpr!783) (regex!559 (rule!1074 (h!8473 tokens!465)))))))

(declare-fun lt!61132 () Bool)

(declare-fun e!112200 () Bool)

(assert (=> d!46351 (= lt!61132 e!112200)))

(declare-fun c!35728 () Bool)

(assert (=> d!46351 (= c!35728 (isEmpty!1434 lt!60913))))

(declare-fun validRegex!192 (Regex!783) Bool)

(assert (=> d!46351 (validRegex!192 (regex!559 (rule!1074 (h!8473 tokens!465))))))

(assert (=> d!46351 (= (matchR!121 (regex!559 (rule!1074 (h!8473 tokens!465))) lt!60913) lt!61132)))

(declare-fun b!183775 () Bool)

(declare-fun derivativeStep!85 (Regex!783 C!2488) Regex!783)

(declare-fun head!641 (List!3084) C!2488)

(declare-fun tail!369 (List!3084) List!3084)

(assert (=> b!183775 (= e!112200 (matchR!121 (derivativeStep!85 (regex!559 (rule!1074 (h!8473 tokens!465))) (head!641 lt!60913)) (tail!369 lt!60913)))))

(declare-fun b!183776 () Bool)

(declare-fun res!83515 () Bool)

(declare-fun e!112197 () Bool)

(assert (=> b!183776 (=> res!83515 e!112197)))

(assert (=> b!183776 (= res!83515 (not (isEmpty!1434 (tail!369 lt!60913))))))

(declare-fun b!183777 () Bool)

(declare-fun e!112201 () Bool)

(assert (=> b!183777 (= e!112201 e!112197)))

(declare-fun res!83516 () Bool)

(assert (=> b!183777 (=> res!83516 e!112197)))

(declare-fun call!8401 () Bool)

(assert (=> b!183777 (= res!83516 call!8401)))

(declare-fun b!183778 () Bool)

(declare-fun res!83517 () Bool)

(declare-fun e!112202 () Bool)

(assert (=> b!183778 (=> res!83517 e!112202)))

(declare-fun e!112198 () Bool)

(assert (=> b!183778 (= res!83517 e!112198)))

(declare-fun res!83520 () Bool)

(assert (=> b!183778 (=> (not res!83520) (not e!112198))))

(assert (=> b!183778 (= res!83520 lt!61132)))

(declare-fun b!183779 () Bool)

(declare-fun res!83513 () Bool)

(assert (=> b!183779 (=> (not res!83513) (not e!112198))))

(assert (=> b!183779 (= res!83513 (not call!8401))))

(declare-fun b!183780 () Bool)

(assert (=> b!183780 (= e!112202 e!112201)))

(declare-fun res!83518 () Bool)

(assert (=> b!183780 (=> (not res!83518) (not e!112201))))

(assert (=> b!183780 (= res!83518 (not lt!61132))))

(declare-fun b!183781 () Bool)

(declare-fun nullable!119 (Regex!783) Bool)

(assert (=> b!183781 (= e!112200 (nullable!119 (regex!559 (rule!1074 (h!8473 tokens!465)))))))

(declare-fun b!183782 () Bool)

(assert (=> b!183782 (= e!112198 (= (head!641 lt!60913) (c!35642 (regex!559 (rule!1074 (h!8473 tokens!465))))))))

(declare-fun b!183783 () Bool)

(assert (=> b!183783 (= e!112203 (= lt!61132 call!8401))))

(declare-fun b!183784 () Bool)

(declare-fun res!83514 () Bool)

(assert (=> b!183784 (=> res!83514 e!112202)))

(assert (=> b!183784 (= res!83514 (not ((_ is ElementMatch!783) (regex!559 (rule!1074 (h!8473 tokens!465))))))))

(declare-fun e!112199 () Bool)

(assert (=> b!183784 (= e!112199 e!112202)))

(declare-fun b!183785 () Bool)

(assert (=> b!183785 (= e!112203 e!112199)))

(declare-fun c!35727 () Bool)

(assert (=> b!183785 (= c!35727 ((_ is EmptyLang!783) (regex!559 (rule!1074 (h!8473 tokens!465)))))))

(declare-fun b!183786 () Bool)

(assert (=> b!183786 (= e!112199 (not lt!61132))))

(declare-fun b!183787 () Bool)

(assert (=> b!183787 (= e!112197 (not (= (head!641 lt!60913) (c!35642 (regex!559 (rule!1074 (h!8473 tokens!465)))))))))

(declare-fun b!183788 () Bool)

(declare-fun res!83519 () Bool)

(assert (=> b!183788 (=> (not res!83519) (not e!112198))))

(assert (=> b!183788 (= res!83519 (isEmpty!1434 (tail!369 lt!60913)))))

(declare-fun bm!8396 () Bool)

(assert (=> bm!8396 (= call!8401 (isEmpty!1434 lt!60913))))

(assert (= (and d!46351 c!35728) b!183781))

(assert (= (and d!46351 (not c!35728)) b!183775))

(assert (= (and d!46351 c!35729) b!183783))

(assert (= (and d!46351 (not c!35729)) b!183785))

(assert (= (and b!183785 c!35727) b!183786))

(assert (= (and b!183785 (not c!35727)) b!183784))

(assert (= (and b!183784 (not res!83514)) b!183778))

(assert (= (and b!183778 res!83520) b!183779))

(assert (= (and b!183779 res!83513) b!183788))

(assert (= (and b!183788 res!83519) b!183782))

(assert (= (and b!183778 (not res!83517)) b!183780))

(assert (= (and b!183780 res!83518) b!183777))

(assert (= (and b!183777 (not res!83516)) b!183776))

(assert (= (and b!183776 (not res!83515)) b!183787))

(assert (= (or b!183783 b!183777 b!183779) bm!8396))

(declare-fun m!187255 () Bool)

(assert (=> d!46351 m!187255))

(declare-fun m!187257 () Bool)

(assert (=> d!46351 m!187257))

(declare-fun m!187259 () Bool)

(assert (=> b!183782 m!187259))

(declare-fun m!187261 () Bool)

(assert (=> b!183788 m!187261))

(assert (=> b!183788 m!187261))

(declare-fun m!187263 () Bool)

(assert (=> b!183788 m!187263))

(assert (=> b!183787 m!187259))

(assert (=> b!183776 m!187261))

(assert (=> b!183776 m!187261))

(assert (=> b!183776 m!187263))

(assert (=> b!183775 m!187259))

(assert (=> b!183775 m!187259))

(declare-fun m!187265 () Bool)

(assert (=> b!183775 m!187265))

(assert (=> b!183775 m!187261))

(assert (=> b!183775 m!187265))

(assert (=> b!183775 m!187261))

(declare-fun m!187267 () Bool)

(assert (=> b!183775 m!187267))

(assert (=> bm!8396 m!187255))

(declare-fun m!187269 () Bool)

(assert (=> b!183781 m!187269))

(assert (=> b!183383 d!46351))

(declare-fun d!46363 () Bool)

(declare-fun fromListB!192 (List!3086) BalanceConc!1890)

(assert (=> d!46363 (= (seqFromList!496 (t!28448 tokens!465)) (fromListB!192 (t!28448 tokens!465)))))

(declare-fun bs!18269 () Bool)

(assert (= bs!18269 d!46363))

(declare-fun m!187271 () Bool)

(assert (=> bs!18269 m!187271))

(assert (=> b!183404 d!46363))

(declare-fun d!46365 () Bool)

(assert (=> d!46365 (= (list!1129 (charsOf!214 separatorToken!170)) (list!1132 (c!35641 (charsOf!214 separatorToken!170))))))

(declare-fun bs!18270 () Bool)

(assert (= bs!18270 d!46365))

(declare-fun m!187273 () Bool)

(assert (=> bs!18270 m!187273))

(assert (=> b!183404 d!46365))

(declare-fun d!46367 () Bool)

(assert (=> d!46367 (= (list!1129 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 (seqFromList!496 (t!28448 tokens!465)) separatorToken!170 0)) (list!1132 (c!35641 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 (seqFromList!496 (t!28448 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18271 () Bool)

(assert (= bs!18271 d!46367))

(declare-fun m!187275 () Bool)

(assert (=> bs!18271 m!187275))

(assert (=> b!183404 d!46367))

(declare-fun bs!18272 () Bool)

(declare-fun d!46369 () Bool)

(assert (= bs!18272 (and d!46369 d!46309)))

(declare-fun lambda!5500 () Int)

(assert (=> bs!18272 (not (= lambda!5500 lambda!5499))))

(declare-fun bs!18273 () Bool)

(assert (= bs!18273 (and d!46369 d!46301)))

(assert (=> bs!18273 (= lambda!5500 lambda!5481)))

(declare-fun bs!18274 () Bool)

(assert (= bs!18274 (and d!46369 b!183388)))

(assert (=> bs!18274 (not (= lambda!5500 lambda!5470))))

(declare-fun bs!18275 () Bool)

(assert (= bs!18275 (and d!46369 b!183635)))

(assert (=> bs!18275 (not (= lambda!5500 lambda!5488))))

(declare-fun bs!18276 () Bool)

(assert (= bs!18276 (and d!46369 b!183401)))

(assert (=> bs!18276 (= lambda!5500 lambda!5469)))

(declare-fun bs!18277 () Bool)

(assert (= bs!18277 (and d!46369 b!183579)))

(assert (=> bs!18277 (not (= lambda!5500 lambda!5482))))

(declare-fun bs!18278 () Bool)

(declare-fun b!183797 () Bool)

(assert (= bs!18278 (and b!183797 d!46369)))

(declare-fun lambda!5501 () Int)

(assert (=> bs!18278 (not (= lambda!5501 lambda!5500))))

(declare-fun bs!18279 () Bool)

(assert (= bs!18279 (and b!183797 d!46309)))

(assert (=> bs!18279 (= lambda!5501 lambda!5499)))

(declare-fun bs!18280 () Bool)

(assert (= bs!18280 (and b!183797 d!46301)))

(assert (=> bs!18280 (not (= lambda!5501 lambda!5481))))

(declare-fun bs!18281 () Bool)

(assert (= bs!18281 (and b!183797 b!183388)))

(assert (=> bs!18281 (= lambda!5501 lambda!5470)))

(declare-fun bs!18282 () Bool)

(assert (= bs!18282 (and b!183797 b!183635)))

(assert (=> bs!18282 (= lambda!5501 lambda!5488)))

(declare-fun bs!18283 () Bool)

(assert (= bs!18283 (and b!183797 b!183401)))

(assert (=> bs!18283 (not (= lambda!5501 lambda!5469))))

(declare-fun bs!18284 () Bool)

(assert (= bs!18284 (and b!183797 b!183579)))

(assert (=> bs!18284 (= lambda!5501 lambda!5482)))

(declare-fun b!183800 () Bool)

(declare-fun e!112212 () Bool)

(assert (=> b!183800 (= e!112212 true)))

(declare-fun b!183799 () Bool)

(declare-fun e!112211 () Bool)

(assert (=> b!183799 (= e!112211 e!112212)))

(declare-fun b!183798 () Bool)

(declare-fun e!112210 () Bool)

(assert (=> b!183798 (= e!112210 e!112211)))

(assert (=> b!183797 e!112210))

(assert (= b!183799 b!183800))

(assert (= b!183798 b!183799))

(assert (= (and b!183797 ((_ is Cons!3075) rules!1920)) b!183798))

(assert (=> b!183800 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5501))))

(assert (=> b!183800 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5501))))

(assert (=> b!183797 true))

(declare-fun b!183789 () Bool)

(declare-fun e!112209 () BalanceConc!1888)

(assert (=> b!183789 (= e!112209 (BalanceConc!1889 Empty!940))))

(declare-fun call!8402 () Token!862)

(assert (=> b!183789 (= (print!176 thiss!17480 (singletonSeq!111 call!8402)) (printTailRec!139 thiss!17480 (singletonSeq!111 call!8402) 0 (BalanceConc!1889 Empty!940)))))

(declare-fun lt!61139 () Unit!2832)

(declare-fun Unit!2846 () Unit!2832)

(assert (=> b!183789 (= lt!61139 Unit!2846)))

(declare-fun lt!61137 () BalanceConc!1888)

(declare-fun lt!61142 () Unit!2832)

(declare-fun call!8406 () BalanceConc!1888)

(assert (=> b!183789 (= lt!61142 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!50 thiss!17480 rules!1920 (list!1129 call!8406) (list!1129 lt!61137)))))

(assert (=> b!183789 false))

(declare-fun lt!61134 () Unit!2832)

(declare-fun Unit!2847 () Unit!2832)

(assert (=> b!183789 (= lt!61134 Unit!2847)))

(declare-fun b!183790 () Bool)

(declare-fun e!112208 () Bool)

(assert (=> b!183790 (= e!112208 (<= 0 (size!2500 (seqFromList!496 (t!28448 tokens!465)))))))

(declare-fun c!35731 () Bool)

(declare-fun bm!8397 () Bool)

(assert (=> bm!8397 (= call!8406 (charsOf!214 (ite c!35731 separatorToken!170 call!8402)))))

(declare-fun b!183791 () Bool)

(declare-fun e!112207 () BalanceConc!1888)

(declare-fun call!8403 () BalanceConc!1888)

(assert (=> b!183791 (= e!112207 call!8403)))

(declare-fun bm!8398 () Bool)

(declare-fun call!8404 () Token!862)

(assert (=> bm!8398 (= call!8402 call!8404)))

(declare-fun b!183792 () Bool)

(declare-fun e!112206 () Bool)

(assert (=> b!183792 (= c!35731 e!112206)))

(declare-fun res!83521 () Bool)

(assert (=> b!183792 (=> (not res!83521) (not e!112206))))

(declare-fun lt!61144 () Option!397)

(assert (=> b!183792 (= res!83521 ((_ is Some!396) lt!61144))))

(assert (=> b!183792 (= e!112207 e!112209)))

(declare-fun b!183793 () Bool)

(assert (=> b!183793 (= e!112209 (++!728 call!8403 lt!61137))))

(declare-fun b!183794 () Bool)

(declare-fun e!112205 () BalanceConc!1888)

(assert (=> b!183794 (= e!112205 (BalanceConc!1889 Empty!940))))

(declare-fun lt!61138 () BalanceConc!1888)

(assert (=> d!46369 (= (list!1129 lt!61138) (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (dropList!102 (seqFromList!496 (t!28448 tokens!465)) 0) separatorToken!170))))

(assert (=> d!46369 (= lt!61138 e!112205)))

(declare-fun c!35730 () Bool)

(assert (=> d!46369 (= c!35730 (>= 0 (size!2500 (seqFromList!496 (t!28448 tokens!465)))))))

(declare-fun lt!61136 () Unit!2832)

(assert (=> d!46369 (= lt!61136 (lemmaContentSubsetPreservesForall!46 (list!1133 (seqFromList!496 (t!28448 tokens!465))) (dropList!102 (seqFromList!496 (t!28448 tokens!465)) 0) lambda!5500))))

(assert (=> d!46369 e!112208))

(declare-fun res!83522 () Bool)

(assert (=> d!46369 (=> (not res!83522) (not e!112208))))

(assert (=> d!46369 (= res!83522 (>= 0 0))))

(assert (=> d!46369 (= (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 (seqFromList!496 (t!28448 tokens!465)) separatorToken!170 0) lt!61138)))

(declare-fun call!8405 () BalanceConc!1888)

(declare-fun bm!8399 () Bool)

(declare-fun c!35732 () Bool)

(assert (=> bm!8399 (= call!8403 (++!728 call!8405 (ite c!35732 lt!61137 call!8406)))))

(declare-fun b!183795 () Bool)

(assert (=> b!183795 (= e!112206 (not (= (_1!1758 (v!13883 lt!61144)) call!8404)))))

(declare-fun bm!8400 () Bool)

(assert (=> bm!8400 (= call!8404 (apply!463 (seqFromList!496 (t!28448 tokens!465)) 0))))

(declare-fun b!183796 () Bool)

(declare-fun e!112204 () Bool)

(assert (=> b!183796 (= e!112204 (= (_1!1758 (v!13883 lt!61144)) (apply!463 (seqFromList!496 (t!28448 tokens!465)) 0)))))

(assert (=> b!183797 (= e!112205 e!112207)))

(declare-fun lt!61143 () List!3086)

(assert (=> b!183797 (= lt!61143 (list!1133 (seqFromList!496 (t!28448 tokens!465))))))

(declare-fun lt!61140 () Unit!2832)

(assert (=> b!183797 (= lt!61140 (lemmaDropApply!142 lt!61143 0))))

(assert (=> b!183797 (= (head!640 (drop!155 lt!61143 0)) (apply!464 lt!61143 0))))

(declare-fun lt!61135 () Unit!2832)

(assert (=> b!183797 (= lt!61135 lt!61140)))

(declare-fun lt!61141 () List!3086)

(assert (=> b!183797 (= lt!61141 (list!1133 (seqFromList!496 (t!28448 tokens!465))))))

(declare-fun lt!61133 () Unit!2832)

(assert (=> b!183797 (= lt!61133 (lemmaDropTail!134 lt!61141 0))))

(assert (=> b!183797 (= (tail!368 (drop!155 lt!61141 0)) (drop!155 lt!61141 (+ 0 1)))))

(declare-fun lt!61145 () Unit!2832)

(assert (=> b!183797 (= lt!61145 lt!61133)))

(declare-fun lt!61146 () Unit!2832)

(assert (=> b!183797 (= lt!61146 (forallContained!126 (list!1133 (seqFromList!496 (t!28448 tokens!465))) lambda!5501 (apply!463 (seqFromList!496 (t!28448 tokens!465)) 0)))))

(assert (=> b!183797 (= lt!61137 (printWithSeparatorTokenWhenNeededRec!128 thiss!17480 rules!1920 (seqFromList!496 (t!28448 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!183797 (= lt!61144 (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (++!728 (charsOf!214 (apply!463 (seqFromList!496 (t!28448 tokens!465)) 0)) lt!61137)))))

(declare-fun res!83523 () Bool)

(assert (=> b!183797 (= res!83523 ((_ is Some!396) lt!61144))))

(assert (=> b!183797 (=> (not res!83523) (not e!112204))))

(assert (=> b!183797 (= c!35732 e!112204)))

(declare-fun bm!8401 () Bool)

(assert (=> bm!8401 (= call!8405 (charsOf!214 (ite c!35732 call!8404 call!8402)))))

(assert (= (and d!46369 res!83522) b!183790))

(assert (= (and d!46369 c!35730) b!183794))

(assert (= (and d!46369 (not c!35730)) b!183797))

(assert (= (and b!183797 res!83523) b!183796))

(assert (= (and b!183797 c!35732) b!183791))

(assert (= (and b!183797 (not c!35732)) b!183792))

(assert (= (and b!183792 res!83521) b!183795))

(assert (= (and b!183792 c!35731) b!183793))

(assert (= (and b!183792 (not c!35731)) b!183789))

(assert (= (or b!183793 b!183789) bm!8398))

(assert (= (or b!183793 b!183789) bm!8397))

(assert (= (or b!183791 bm!8398 b!183795) bm!8400))

(assert (= (or b!183791 b!183793) bm!8401))

(assert (= (or b!183791 b!183793) bm!8399))

(declare-fun m!187277 () Bool)

(assert (=> bm!8397 m!187277))

(declare-fun m!187279 () Bool)

(assert (=> bm!8399 m!187279))

(assert (=> b!183790 m!186629))

(declare-fun m!187281 () Bool)

(assert (=> b!183790 m!187281))

(declare-fun m!187283 () Bool)

(assert (=> b!183789 m!187283))

(declare-fun m!187285 () Bool)

(assert (=> b!183789 m!187285))

(declare-fun m!187287 () Bool)

(assert (=> b!183789 m!187287))

(declare-fun m!187289 () Bool)

(assert (=> b!183789 m!187289))

(declare-fun m!187291 () Bool)

(assert (=> b!183789 m!187291))

(assert (=> b!183789 m!187283))

(assert (=> b!183789 m!187289))

(assert (=> b!183789 m!187289))

(declare-fun m!187293 () Bool)

(assert (=> b!183789 m!187293))

(assert (=> b!183789 m!187285))

(assert (=> bm!8400 m!186629))

(declare-fun m!187295 () Bool)

(assert (=> bm!8400 m!187295))

(declare-fun m!187297 () Bool)

(assert (=> d!46369 m!187297))

(declare-fun m!187299 () Bool)

(assert (=> d!46369 m!187299))

(assert (=> d!46369 m!186629))

(assert (=> d!46369 m!187281))

(declare-fun m!187301 () Bool)

(assert (=> d!46369 m!187301))

(assert (=> d!46369 m!187297))

(declare-fun m!187303 () Bool)

(assert (=> d!46369 m!187303))

(assert (=> d!46369 m!186629))

(assert (=> d!46369 m!187297))

(declare-fun m!187305 () Bool)

(assert (=> d!46369 m!187305))

(assert (=> d!46369 m!186629))

(assert (=> d!46369 m!187301))

(assert (=> b!183796 m!186629))

(assert (=> b!183796 m!187295))

(declare-fun m!187307 () Bool)

(assert (=> b!183797 m!187307))

(declare-fun m!187309 () Bool)

(assert (=> b!183797 m!187309))

(declare-fun m!187311 () Bool)

(assert (=> b!183797 m!187311))

(assert (=> b!183797 m!187307))

(declare-fun m!187313 () Bool)

(assert (=> b!183797 m!187313))

(assert (=> b!183797 m!186629))

(assert (=> b!183797 m!187301))

(assert (=> b!183797 m!187301))

(assert (=> b!183797 m!187295))

(declare-fun m!187315 () Bool)

(assert (=> b!183797 m!187315))

(declare-fun m!187317 () Bool)

(assert (=> b!183797 m!187317))

(declare-fun m!187319 () Bool)

(assert (=> b!183797 m!187319))

(declare-fun m!187321 () Bool)

(assert (=> b!183797 m!187321))

(declare-fun m!187323 () Bool)

(assert (=> b!183797 m!187323))

(assert (=> b!183797 m!187321))

(declare-fun m!187325 () Bool)

(assert (=> b!183797 m!187325))

(declare-fun m!187327 () Bool)

(assert (=> b!183797 m!187327))

(assert (=> b!183797 m!186629))

(declare-fun m!187329 () Bool)

(assert (=> b!183797 m!187329))

(assert (=> b!183797 m!187317))

(assert (=> b!183797 m!187295))

(assert (=> b!183797 m!187311))

(assert (=> b!183797 m!186629))

(assert (=> b!183797 m!187295))

(declare-fun m!187331 () Bool)

(assert (=> b!183797 m!187331))

(declare-fun m!187333 () Bool)

(assert (=> b!183793 m!187333))

(declare-fun m!187335 () Bool)

(assert (=> bm!8401 m!187335))

(assert (=> b!183404 d!46369))

(declare-fun d!46371 () Bool)

(declare-fun lt!61149 () BalanceConc!1888)

(assert (=> d!46371 (= (list!1129 lt!61149) (originalCharacters!602 separatorToken!170))))

(declare-fun dynLambda!1256 (Int TokenValue!581) BalanceConc!1888)

(assert (=> d!46371 (= lt!61149 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (value!20247 separatorToken!170)))))

(assert (=> d!46371 (= (charsOf!214 separatorToken!170) lt!61149)))

(declare-fun b_lambda!4417 () Bool)

(assert (=> (not b_lambda!4417) (not d!46371)))

(declare-fun t!28480 () Bool)

(declare-fun tb!7629 () Bool)

(assert (=> (and b!183402 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170)))) t!28480) tb!7629))

(declare-fun b!183805 () Bool)

(declare-fun e!112215 () Bool)

(declare-fun tp!86982 () Bool)

(declare-fun inv!3909 (Conc!940) Bool)

(assert (=> b!183805 (= e!112215 (and (inv!3909 (c!35641 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (value!20247 separatorToken!170)))) tp!86982))))

(declare-fun result!10470 () Bool)

(declare-fun inv!3910 (BalanceConc!1888) Bool)

(assert (=> tb!7629 (= result!10470 (and (inv!3910 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (value!20247 separatorToken!170))) e!112215))))

(assert (= tb!7629 b!183805))

(declare-fun m!187337 () Bool)

(assert (=> b!183805 m!187337))

(declare-fun m!187339 () Bool)

(assert (=> tb!7629 m!187339))

(assert (=> d!46371 t!28480))

(declare-fun b_and!12617 () Bool)

(assert (= b_and!12583 (and (=> t!28480 result!10470) b_and!12617)))

(declare-fun t!28482 () Bool)

(declare-fun tb!7631 () Bool)

(assert (=> (and b!183382 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170)))) t!28482) tb!7631))

(declare-fun result!10474 () Bool)

(assert (= result!10474 result!10470))

(assert (=> d!46371 t!28482))

(declare-fun b_and!12619 () Bool)

(assert (= b_and!12587 (and (=> t!28482 result!10474) b_and!12619)))

(declare-fun t!28484 () Bool)

(declare-fun tb!7633 () Bool)

(assert (=> (and b!183405 (= (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170)))) t!28484) tb!7633))

(declare-fun result!10476 () Bool)

(assert (= result!10476 result!10470))

(assert (=> d!46371 t!28484))

(declare-fun b_and!12621 () Bool)

(assert (= b_and!12591 (and (=> t!28484 result!10476) b_and!12621)))

(declare-fun m!187341 () Bool)

(assert (=> d!46371 m!187341))

(declare-fun m!187343 () Bool)

(assert (=> d!46371 m!187343))

(assert (=> b!183404 d!46371))

(declare-fun d!46373 () Bool)

(assert (=> d!46373 (= (++!726 (++!726 lt!60913 lt!60907) lt!60909) (++!726 lt!60913 (++!726 lt!60907 lt!60909)))))

(declare-fun lt!61152 () Unit!2832)

(declare-fun choose!1890 (List!3084 List!3084 List!3084) Unit!2832)

(assert (=> d!46373 (= lt!61152 (choose!1890 lt!60913 lt!60907 lt!60909))))

(assert (=> d!46373 (= (lemmaConcatAssociativity!248 lt!60913 lt!60907 lt!60909) lt!61152)))

(declare-fun bs!18285 () Bool)

(assert (= bs!18285 d!46373))

(assert (=> bs!18285 m!186631))

(assert (=> bs!18285 m!186633))

(assert (=> bs!18285 m!186633))

(declare-fun m!187345 () Bool)

(assert (=> bs!18285 m!187345))

(assert (=> bs!18285 m!186631))

(assert (=> bs!18285 m!186643))

(declare-fun m!187347 () Bool)

(assert (=> bs!18285 m!187347))

(assert (=> b!183404 d!46373))

(declare-fun d!46375 () Bool)

(declare-fun lt!61153 () BalanceConc!1888)

(assert (=> d!46375 (= (list!1129 lt!61153) (originalCharacters!602 (h!8473 tokens!465)))))

(assert (=> d!46375 (= lt!61153 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (value!20247 (h!8473 tokens!465))))))

(assert (=> d!46375 (= (charsOf!214 (h!8473 tokens!465)) lt!61153)))

(declare-fun b_lambda!4419 () Bool)

(assert (=> (not b_lambda!4419) (not d!46375)))

(declare-fun t!28486 () Bool)

(declare-fun tb!7635 () Bool)

(assert (=> (and b!183402 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465))))) t!28486) tb!7635))

(declare-fun b!183806 () Bool)

(declare-fun e!112216 () Bool)

(declare-fun tp!86983 () Bool)

(assert (=> b!183806 (= e!112216 (and (inv!3909 (c!35641 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (value!20247 (h!8473 tokens!465))))) tp!86983))))

(declare-fun result!10478 () Bool)

(assert (=> tb!7635 (= result!10478 (and (inv!3910 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (value!20247 (h!8473 tokens!465)))) e!112216))))

(assert (= tb!7635 b!183806))

(declare-fun m!187349 () Bool)

(assert (=> b!183806 m!187349))

(declare-fun m!187351 () Bool)

(assert (=> tb!7635 m!187351))

(assert (=> d!46375 t!28486))

(declare-fun b_and!12623 () Bool)

(assert (= b_and!12617 (and (=> t!28486 result!10478) b_and!12623)))

(declare-fun t!28488 () Bool)

(declare-fun tb!7637 () Bool)

(assert (=> (and b!183382 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465))))) t!28488) tb!7637))

(declare-fun result!10480 () Bool)

(assert (= result!10480 result!10478))

(assert (=> d!46375 t!28488))

(declare-fun b_and!12625 () Bool)

(assert (= b_and!12619 (and (=> t!28488 result!10480) b_and!12625)))

(declare-fun t!28490 () Bool)

(declare-fun tb!7639 () Bool)

(assert (=> (and b!183405 (= (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465))))) t!28490) tb!7639))

(declare-fun result!10482 () Bool)

(assert (= result!10482 result!10478))

(assert (=> d!46375 t!28490))

(declare-fun b_and!12627 () Bool)

(assert (= b_and!12621 (and (=> t!28490 result!10482) b_and!12627)))

(declare-fun m!187353 () Bool)

(assert (=> d!46375 m!187353))

(declare-fun m!187355 () Bool)

(assert (=> d!46375 m!187355))

(assert (=> b!183404 d!46375))

(declare-fun b!183807 () Bool)

(declare-fun e!112218 () List!3084)

(assert (=> b!183807 (= e!112218 lt!60892)))

(declare-fun b!183809 () Bool)

(declare-fun res!83525 () Bool)

(declare-fun e!112217 () Bool)

(assert (=> b!183809 (=> (not res!83525) (not e!112217))))

(declare-fun lt!61154 () List!3084)

(assert (=> b!183809 (= res!83525 (= (size!2499 lt!61154) (+ (size!2499 lt!60913) (size!2499 lt!60892))))))

(declare-fun b!183810 () Bool)

(assert (=> b!183810 (= e!112217 (or (not (= lt!60892 Nil!3074)) (= lt!61154 lt!60913)))))

(declare-fun d!46377 () Bool)

(assert (=> d!46377 e!112217))

(declare-fun res!83524 () Bool)

(assert (=> d!46377 (=> (not res!83524) (not e!112217))))

(assert (=> d!46377 (= res!83524 (= (content!420 lt!61154) ((_ map or) (content!420 lt!60913) (content!420 lt!60892))))))

(assert (=> d!46377 (= lt!61154 e!112218)))

(declare-fun c!35733 () Bool)

(assert (=> d!46377 (= c!35733 ((_ is Nil!3074) lt!60913))))

(assert (=> d!46377 (= (++!726 lt!60913 lt!60892) lt!61154)))

(declare-fun b!183808 () Bool)

(assert (=> b!183808 (= e!112218 (Cons!3074 (h!8471 lt!60913) (++!726 (t!28446 lt!60913) lt!60892)))))

(assert (= (and d!46377 c!35733) b!183807))

(assert (= (and d!46377 (not c!35733)) b!183808))

(assert (= (and d!46377 res!83524) b!183809))

(assert (= (and b!183809 res!83525) b!183810))

(declare-fun m!187357 () Bool)

(assert (=> b!183809 m!187357))

(assert (=> b!183809 m!186763))

(declare-fun m!187359 () Bool)

(assert (=> b!183809 m!187359))

(declare-fun m!187361 () Bool)

(assert (=> d!46377 m!187361))

(assert (=> d!46377 m!186769))

(declare-fun m!187363 () Bool)

(assert (=> d!46377 m!187363))

(declare-fun m!187365 () Bool)

(assert (=> b!183808 m!187365))

(assert (=> b!183404 d!46377))

(declare-fun b!183811 () Bool)

(declare-fun e!112220 () List!3084)

(assert (=> b!183811 (= e!112220 lt!60909)))

(declare-fun b!183813 () Bool)

(declare-fun res!83527 () Bool)

(declare-fun e!112219 () Bool)

(assert (=> b!183813 (=> (not res!83527) (not e!112219))))

(declare-fun lt!61155 () List!3084)

(assert (=> b!183813 (= res!83527 (= (size!2499 lt!61155) (+ (size!2499 (++!726 lt!60913 lt!60907)) (size!2499 lt!60909))))))

(declare-fun b!183814 () Bool)

(assert (=> b!183814 (= e!112219 (or (not (= lt!60909 Nil!3074)) (= lt!61155 (++!726 lt!60913 lt!60907))))))

(declare-fun d!46379 () Bool)

(assert (=> d!46379 e!112219))

(declare-fun res!83526 () Bool)

(assert (=> d!46379 (=> (not res!83526) (not e!112219))))

(assert (=> d!46379 (= res!83526 (= (content!420 lt!61155) ((_ map or) (content!420 (++!726 lt!60913 lt!60907)) (content!420 lt!60909))))))

(assert (=> d!46379 (= lt!61155 e!112220)))

(declare-fun c!35734 () Bool)

(assert (=> d!46379 (= c!35734 ((_ is Nil!3074) (++!726 lt!60913 lt!60907)))))

(assert (=> d!46379 (= (++!726 (++!726 lt!60913 lt!60907) lt!60909) lt!61155)))

(declare-fun b!183812 () Bool)

(assert (=> b!183812 (= e!112220 (Cons!3074 (h!8471 (++!726 lt!60913 lt!60907)) (++!726 (t!28446 (++!726 lt!60913 lt!60907)) lt!60909)))))

(assert (= (and d!46379 c!35734) b!183811))

(assert (= (and d!46379 (not c!35734)) b!183812))

(assert (= (and d!46379 res!83526) b!183813))

(assert (= (and b!183813 res!83527) b!183814))

(declare-fun m!187367 () Bool)

(assert (=> b!183813 m!187367))

(assert (=> b!183813 m!186631))

(declare-fun m!187369 () Bool)

(assert (=> b!183813 m!187369))

(assert (=> b!183813 m!186765))

(declare-fun m!187371 () Bool)

(assert (=> d!46379 m!187371))

(assert (=> d!46379 m!186631))

(declare-fun m!187373 () Bool)

(assert (=> d!46379 m!187373))

(assert (=> d!46379 m!186771))

(declare-fun m!187375 () Bool)

(assert (=> b!183812 m!187375))

(assert (=> b!183404 d!46379))

(declare-fun b!183815 () Bool)

(declare-fun e!112222 () List!3084)

(assert (=> b!183815 (= e!112222 lt!60907)))

(declare-fun b!183817 () Bool)

(declare-fun res!83529 () Bool)

(declare-fun e!112221 () Bool)

(assert (=> b!183817 (=> (not res!83529) (not e!112221))))

(declare-fun lt!61156 () List!3084)

(assert (=> b!183817 (= res!83529 (= (size!2499 lt!61156) (+ (size!2499 lt!60913) (size!2499 lt!60907))))))

(declare-fun b!183818 () Bool)

(assert (=> b!183818 (= e!112221 (or (not (= lt!60907 Nil!3074)) (= lt!61156 lt!60913)))))

(declare-fun d!46381 () Bool)

(assert (=> d!46381 e!112221))

(declare-fun res!83528 () Bool)

(assert (=> d!46381 (=> (not res!83528) (not e!112221))))

(assert (=> d!46381 (= res!83528 (= (content!420 lt!61156) ((_ map or) (content!420 lt!60913) (content!420 lt!60907))))))

(assert (=> d!46381 (= lt!61156 e!112222)))

(declare-fun c!35735 () Bool)

(assert (=> d!46381 (= c!35735 ((_ is Nil!3074) lt!60913))))

(assert (=> d!46381 (= (++!726 lt!60913 lt!60907) lt!61156)))

(declare-fun b!183816 () Bool)

(assert (=> b!183816 (= e!112222 (Cons!3074 (h!8471 lt!60913) (++!726 (t!28446 lt!60913) lt!60907)))))

(assert (= (and d!46381 c!35735) b!183815))

(assert (= (and d!46381 (not c!35735)) b!183816))

(assert (= (and d!46381 res!83528) b!183817))

(assert (= (and b!183817 res!83529) b!183818))

(declare-fun m!187377 () Bool)

(assert (=> b!183817 m!187377))

(assert (=> b!183817 m!186763))

(declare-fun m!187379 () Bool)

(assert (=> b!183817 m!187379))

(declare-fun m!187381 () Bool)

(assert (=> d!46381 m!187381))

(assert (=> d!46381 m!186769))

(declare-fun m!187383 () Bool)

(assert (=> d!46381 m!187383))

(declare-fun m!187385 () Bool)

(assert (=> b!183816 m!187385))

(assert (=> b!183404 d!46381))

(declare-fun bs!18286 () Bool)

(declare-fun b!183824 () Bool)

(assert (= bs!18286 (and b!183824 d!46369)))

(declare-fun lambda!5502 () Int)

(assert (=> bs!18286 (not (= lambda!5502 lambda!5500))))

(declare-fun bs!18287 () Bool)

(assert (= bs!18287 (and b!183824 d!46309)))

(assert (=> bs!18287 (= lambda!5502 lambda!5499)))

(declare-fun bs!18288 () Bool)

(assert (= bs!18288 (and b!183824 d!46301)))

(assert (=> bs!18288 (not (= lambda!5502 lambda!5481))))

(declare-fun bs!18289 () Bool)

(assert (= bs!18289 (and b!183824 b!183388)))

(assert (=> bs!18289 (= lambda!5502 lambda!5470)))

(declare-fun bs!18290 () Bool)

(assert (= bs!18290 (and b!183824 b!183635)))

(assert (=> bs!18290 (= lambda!5502 lambda!5488)))

(declare-fun bs!18291 () Bool)

(assert (= bs!18291 (and b!183824 b!183401)))

(assert (=> bs!18291 (not (= lambda!5502 lambda!5469))))

(declare-fun bs!18292 () Bool)

(assert (= bs!18292 (and b!183824 b!183797)))

(assert (=> bs!18292 (= lambda!5502 lambda!5501)))

(declare-fun bs!18293 () Bool)

(assert (= bs!18293 (and b!183824 b!183579)))

(assert (=> bs!18293 (= lambda!5502 lambda!5482)))

(declare-fun b!183831 () Bool)

(declare-fun e!112230 () Bool)

(assert (=> b!183831 (= e!112230 true)))

(declare-fun b!183830 () Bool)

(declare-fun e!112229 () Bool)

(assert (=> b!183830 (= e!112229 e!112230)))

(declare-fun b!183829 () Bool)

(declare-fun e!112228 () Bool)

(assert (=> b!183829 (= e!112228 e!112229)))

(assert (=> b!183824 e!112228))

(assert (= b!183830 b!183831))

(assert (= b!183829 b!183830))

(assert (= (and b!183824 ((_ is Cons!3075) rules!1920)) b!183829))

(assert (=> b!183831 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5502))))

(assert (=> b!183831 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5502))))

(assert (=> b!183824 true))

(declare-fun b!183819 () Bool)

(declare-fun e!112226 () List!3084)

(assert (=> b!183819 (= e!112226 Nil!3074)))

(declare-fun d!46383 () Bool)

(declare-fun c!35737 () Bool)

(assert (=> d!46383 (= c!35737 ((_ is Cons!3076) (t!28448 tokens!465)))))

(assert (=> d!46383 (= (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (t!28448 tokens!465) separatorToken!170) e!112226)))

(declare-fun bm!8402 () Bool)

(declare-fun call!8407 () List!3084)

(declare-fun call!8409 () List!3084)

(assert (=> bm!8402 (= call!8407 call!8409)))

(declare-fun c!35738 () Bool)

(declare-fun c!35740 () Bool)

(assert (=> bm!8402 (= c!35738 c!35740)))

(declare-fun b!183820 () Bool)

(declare-fun e!112227 () List!3084)

(assert (=> b!183820 (= e!112227 Nil!3074)))

(assert (=> b!183820 (= (print!176 thiss!17480 (singletonSeq!111 (h!8473 (t!28448 tokens!465)))) (printTailRec!139 thiss!17480 (singletonSeq!111 (h!8473 (t!28448 tokens!465))) 0 (BalanceConc!1889 Empty!940)))))

(declare-fun lt!61160 () Unit!2832)

(declare-fun Unit!2848 () Unit!2832)

(assert (=> b!183820 (= lt!61160 Unit!2848)))

(declare-fun lt!61158 () List!3084)

(declare-fun lt!61157 () Unit!2832)

(assert (=> b!183820 (= lt!61157 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!50 thiss!17480 rules!1920 call!8407 lt!61158))))

(assert (=> b!183820 false))

(declare-fun lt!61159 () Unit!2832)

(declare-fun Unit!2849 () Unit!2832)

(assert (=> b!183820 (= lt!61159 Unit!2849)))

(declare-fun b!183821 () Bool)

(declare-fun call!8408 () List!3084)

(assert (=> b!183821 (= e!112227 (++!726 call!8408 lt!61158))))

(declare-fun bm!8403 () Bool)

(declare-fun call!8410 () BalanceConc!1888)

(assert (=> bm!8403 (= call!8410 (charsOf!214 (h!8473 (t!28448 tokens!465))))))

(declare-fun b!183822 () Bool)

(declare-fun e!112224 () List!3084)

(declare-fun call!8411 () BalanceConc!1888)

(assert (=> b!183822 (= e!112224 (list!1129 call!8411))))

(declare-fun b!183823 () Bool)

(declare-fun e!112225 () BalanceConc!1888)

(assert (=> b!183823 (= e!112225 (charsOf!214 separatorToken!170))))

(declare-fun e!112223 () List!3084)

(assert (=> b!183824 (= e!112226 e!112223)))

(declare-fun lt!61162 () Unit!2832)

(assert (=> b!183824 (= lt!61162 (forallContained!126 (t!28448 tokens!465) lambda!5502 (h!8473 (t!28448 tokens!465))))))

(assert (=> b!183824 (= lt!61158 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 (t!28448 (t!28448 tokens!465)) separatorToken!170))))

(declare-fun lt!61161 () Option!396)

(assert (=> b!183824 (= lt!61161 (maxPrefix!175 thiss!17480 rules!1920 (++!726 (list!1129 (charsOf!214 (h!8473 (t!28448 tokens!465)))) lt!61158)))))

(declare-fun c!35736 () Bool)

(assert (=> b!183824 (= c!35736 (and ((_ is Some!395) lt!61161) (= (_1!1757 (v!13882 lt!61161)) (h!8473 (t!28448 tokens!465)))))))

(declare-fun bm!8404 () Bool)

(declare-fun c!35739 () Bool)

(assert (=> bm!8404 (= c!35739 c!35736)))

(assert (=> bm!8404 (= call!8408 (++!726 e!112224 (ite c!35736 lt!61158 call!8407)))))

(declare-fun bm!8405 () Bool)

(assert (=> bm!8405 (= call!8409 (list!1129 (ite c!35736 call!8410 e!112225)))))

(declare-fun bm!8406 () Bool)

(assert (=> bm!8406 (= call!8411 call!8410)))

(declare-fun b!183825 () Bool)

(assert (=> b!183825 (= e!112224 call!8409)))

(declare-fun b!183826 () Bool)

(assert (=> b!183826 (= c!35740 (and ((_ is Some!395) lt!61161) (not (= (_1!1757 (v!13882 lt!61161)) (h!8473 (t!28448 tokens!465))))))))

(assert (=> b!183826 (= e!112223 e!112227)))

(declare-fun b!183827 () Bool)

(assert (=> b!183827 (= e!112223 call!8408)))

(declare-fun b!183828 () Bool)

(assert (=> b!183828 (= e!112225 call!8411)))

(assert (= (and d!46383 c!35737) b!183824))

(assert (= (and d!46383 (not c!35737)) b!183819))

(assert (= (and b!183824 c!35736) b!183827))

(assert (= (and b!183824 (not c!35736)) b!183826))

(assert (= (and b!183826 c!35740) b!183821))

(assert (= (and b!183826 (not c!35740)) b!183820))

(assert (= (or b!183821 b!183820) bm!8406))

(assert (= (or b!183821 b!183820) bm!8402))

(assert (= (and bm!8402 c!35738) b!183823))

(assert (= (and bm!8402 (not c!35738)) b!183828))

(assert (= (or b!183827 bm!8406) bm!8403))

(assert (= (or b!183827 bm!8402) bm!8405))

(assert (= (or b!183827 b!183821) bm!8404))

(assert (= (and bm!8404 c!35739) b!183825))

(assert (= (and bm!8404 (not c!35739)) b!183822))

(declare-fun m!187387 () Bool)

(assert (=> b!183822 m!187387))

(declare-fun m!187389 () Bool)

(assert (=> bm!8404 m!187389))

(declare-fun m!187391 () Bool)

(assert (=> b!183821 m!187391))

(declare-fun m!187393 () Bool)

(assert (=> b!183824 m!187393))

(declare-fun m!187395 () Bool)

(assert (=> b!183824 m!187395))

(declare-fun m!187397 () Bool)

(assert (=> b!183824 m!187397))

(declare-fun m!187399 () Bool)

(assert (=> b!183824 m!187399))

(declare-fun m!187401 () Bool)

(assert (=> b!183824 m!187401))

(assert (=> b!183824 m!187395))

(declare-fun m!187403 () Bool)

(assert (=> b!183824 m!187403))

(assert (=> b!183824 m!187399))

(assert (=> b!183824 m!187401))

(assert (=> bm!8403 m!187399))

(declare-fun m!187405 () Bool)

(assert (=> bm!8405 m!187405))

(assert (=> b!183823 m!186635))

(declare-fun m!187407 () Bool)

(assert (=> b!183820 m!187407))

(assert (=> b!183820 m!187407))

(declare-fun m!187409 () Bool)

(assert (=> b!183820 m!187409))

(assert (=> b!183820 m!187407))

(declare-fun m!187411 () Bool)

(assert (=> b!183820 m!187411))

(declare-fun m!187413 () Bool)

(assert (=> b!183820 m!187413))

(assert (=> b!183404 d!46383))

(declare-fun b!183832 () Bool)

(declare-fun e!112232 () List!3084)

(assert (=> b!183832 (= e!112232 lt!60909)))

(declare-fun b!183834 () Bool)

(declare-fun res!83531 () Bool)

(declare-fun e!112231 () Bool)

(assert (=> b!183834 (=> (not res!83531) (not e!112231))))

(declare-fun lt!61163 () List!3084)

(assert (=> b!183834 (= res!83531 (= (size!2499 lt!61163) (+ (size!2499 lt!60907) (size!2499 lt!60909))))))

(declare-fun b!183835 () Bool)

(assert (=> b!183835 (= e!112231 (or (not (= lt!60909 Nil!3074)) (= lt!61163 lt!60907)))))

(declare-fun d!46385 () Bool)

(assert (=> d!46385 e!112231))

(declare-fun res!83530 () Bool)

(assert (=> d!46385 (=> (not res!83530) (not e!112231))))

(assert (=> d!46385 (= res!83530 (= (content!420 lt!61163) ((_ map or) (content!420 lt!60907) (content!420 lt!60909))))))

(assert (=> d!46385 (= lt!61163 e!112232)))

(declare-fun c!35741 () Bool)

(assert (=> d!46385 (= c!35741 ((_ is Nil!3074) lt!60907))))

(assert (=> d!46385 (= (++!726 lt!60907 lt!60909) lt!61163)))

(declare-fun b!183833 () Bool)

(assert (=> b!183833 (= e!112232 (Cons!3074 (h!8471 lt!60907) (++!726 (t!28446 lt!60907) lt!60909)))))

(assert (= (and d!46385 c!35741) b!183832))

(assert (= (and d!46385 (not c!35741)) b!183833))

(assert (= (and d!46385 res!83530) b!183834))

(assert (= (and b!183834 res!83531) b!183835))

(declare-fun m!187415 () Bool)

(assert (=> b!183834 m!187415))

(assert (=> b!183834 m!187379))

(assert (=> b!183834 m!186765))

(declare-fun m!187417 () Bool)

(assert (=> d!46385 m!187417))

(assert (=> d!46385 m!187383))

(assert (=> d!46385 m!186771))

(declare-fun m!187419 () Bool)

(assert (=> b!183833 m!187419))

(assert (=> b!183404 d!46385))

(declare-fun d!46387 () Bool)

(assert (=> d!46387 (= (list!1129 (charsOf!214 (h!8473 tokens!465))) (list!1132 (c!35641 (charsOf!214 (h!8473 tokens!465)))))))

(declare-fun bs!18294 () Bool)

(assert (= bs!18294 d!46387))

(declare-fun m!187421 () Bool)

(assert (=> bs!18294 m!187421))

(assert (=> b!183404 d!46387))

(declare-fun d!46389 () Bool)

(declare-fun lt!61174 () Bool)

(declare-fun e!112244 () Bool)

(assert (=> d!46389 (= lt!61174 e!112244)))

(declare-fun res!83544 () Bool)

(assert (=> d!46389 (=> (not res!83544) (not e!112244))))

(assert (=> d!46389 (= res!83544 (= (list!1133 (_1!1759 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 separatorToken!170))))) (list!1133 (singletonSeq!111 separatorToken!170))))))

(declare-fun e!112243 () Bool)

(assert (=> d!46389 (= lt!61174 e!112243)))

(declare-fun res!83546 () Bool)

(assert (=> d!46389 (=> (not res!83546) (not e!112243))))

(declare-fun lt!61175 () tuple2!3086)

(assert (=> d!46389 (= res!83546 (= (size!2500 (_1!1759 lt!61175)) 1))))

(assert (=> d!46389 (= lt!61175 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 separatorToken!170))))))

(assert (=> d!46389 (not (isEmpty!1433 rules!1920))))

(assert (=> d!46389 (= (rulesProduceIndividualToken!194 thiss!17480 rules!1920 separatorToken!170) lt!61174)))

(declare-fun b!183848 () Bool)

(declare-fun res!83545 () Bool)

(assert (=> b!183848 (=> (not res!83545) (not e!112243))))

(assert (=> b!183848 (= res!83545 (= (apply!463 (_1!1759 lt!61175) 0) separatorToken!170))))

(declare-fun b!183849 () Bool)

(declare-fun isEmpty!1439 (BalanceConc!1888) Bool)

(assert (=> b!183849 (= e!112243 (isEmpty!1439 (_2!1759 lt!61175)))))

(declare-fun b!183850 () Bool)

(assert (=> b!183850 (= e!112244 (isEmpty!1439 (_2!1759 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 separatorToken!170))))))))

(assert (= (and d!46389 res!83546) b!183848))

(assert (= (and b!183848 res!83545) b!183849))

(assert (= (and d!46389 res!83544) b!183850))

(declare-fun m!187441 () Bool)

(assert (=> d!46389 m!187441))

(declare-fun m!187443 () Bool)

(assert (=> d!46389 m!187443))

(declare-fun m!187445 () Bool)

(assert (=> d!46389 m!187445))

(assert (=> d!46389 m!186627))

(declare-fun m!187447 () Bool)

(assert (=> d!46389 m!187447))

(declare-fun m!187449 () Bool)

(assert (=> d!46389 m!187449))

(assert (=> d!46389 m!187447))

(assert (=> d!46389 m!187443))

(assert (=> d!46389 m!187447))

(declare-fun m!187451 () Bool)

(assert (=> d!46389 m!187451))

(declare-fun m!187453 () Bool)

(assert (=> b!183848 m!187453))

(declare-fun m!187455 () Bool)

(assert (=> b!183849 m!187455))

(assert (=> b!183850 m!187447))

(assert (=> b!183850 m!187447))

(assert (=> b!183850 m!187443))

(assert (=> b!183850 m!187443))

(assert (=> b!183850 m!187445))

(declare-fun m!187457 () Bool)

(assert (=> b!183850 m!187457))

(assert (=> b!183371 d!46389))

(declare-fun d!46407 () Bool)

(declare-fun e!112256 () Bool)

(assert (=> d!46407 e!112256))

(declare-fun res!83552 () Bool)

(assert (=> d!46407 (=> (not res!83552) (not e!112256))))

(declare-fun lt!61178 () BalanceConc!1890)

(assert (=> d!46407 (= res!83552 (= (list!1133 lt!61178) (Cons!3076 (h!8473 tokens!465) Nil!3076)))))

(declare-fun singleton!51 (Token!862) BalanceConc!1890)

(assert (=> d!46407 (= lt!61178 (singleton!51 (h!8473 tokens!465)))))

(assert (=> d!46407 (= (singletonSeq!111 (h!8473 tokens!465)) lt!61178)))

(declare-fun b!183868 () Bool)

(declare-fun isBalanced!256 (Conc!941) Bool)

(assert (=> b!183868 (= e!112256 (isBalanced!256 (c!35643 lt!61178)))))

(assert (= (and d!46407 res!83552) b!183868))

(declare-fun m!187465 () Bool)

(assert (=> d!46407 m!187465))

(declare-fun m!187467 () Bool)

(assert (=> d!46407 m!187467))

(declare-fun m!187469 () Bool)

(assert (=> b!183868 m!187469))

(assert (=> b!183392 d!46407))

(declare-fun d!46411 () Bool)

(declare-fun c!35750 () Bool)

(assert (=> d!46411 (= c!35750 ((_ is Cons!3076) lt!60895))))

(declare-fun e!112259 () List!3084)

(assert (=> d!46411 (= (printList!129 thiss!17480 lt!60895) e!112259)))

(declare-fun b!183873 () Bool)

(assert (=> b!183873 (= e!112259 (++!726 (list!1129 (charsOf!214 (h!8473 lt!60895))) (printList!129 thiss!17480 (t!28448 lt!60895))))))

(declare-fun b!183874 () Bool)

(assert (=> b!183874 (= e!112259 Nil!3074)))

(assert (= (and d!46411 c!35750) b!183873))

(assert (= (and d!46411 (not c!35750)) b!183874))

(declare-fun m!187471 () Bool)

(assert (=> b!183873 m!187471))

(assert (=> b!183873 m!187471))

(declare-fun m!187473 () Bool)

(assert (=> b!183873 m!187473))

(declare-fun m!187475 () Bool)

(assert (=> b!183873 m!187475))

(assert (=> b!183873 m!187473))

(assert (=> b!183873 m!187475))

(declare-fun m!187477 () Bool)

(assert (=> b!183873 m!187477))

(assert (=> b!183392 d!46411))

(declare-fun d!46413 () Bool)

(declare-fun lt!61195 () BalanceConc!1888)

(declare-fun printListTailRec!70 (LexerInterface!445 List!3086 List!3084) List!3084)

(assert (=> d!46413 (= (list!1129 lt!61195) (printListTailRec!70 thiss!17480 (dropList!102 lt!60912 0) (list!1129 (BalanceConc!1889 Empty!940))))))

(declare-fun e!112264 () BalanceConc!1888)

(assert (=> d!46413 (= lt!61195 e!112264)))

(declare-fun c!35753 () Bool)

(assert (=> d!46413 (= c!35753 (>= 0 (size!2500 lt!60912)))))

(declare-fun e!112265 () Bool)

(assert (=> d!46413 e!112265))

(declare-fun res!83555 () Bool)

(assert (=> d!46413 (=> (not res!83555) (not e!112265))))

(assert (=> d!46413 (= res!83555 (>= 0 0))))

(assert (=> d!46413 (= (printTailRec!139 thiss!17480 lt!60912 0 (BalanceConc!1889 Empty!940)) lt!61195)))

(declare-fun b!183881 () Bool)

(assert (=> b!183881 (= e!112265 (<= 0 (size!2500 lt!60912)))))

(declare-fun b!183882 () Bool)

(assert (=> b!183882 (= e!112264 (BalanceConc!1889 Empty!940))))

(declare-fun b!183883 () Bool)

(assert (=> b!183883 (= e!112264 (printTailRec!139 thiss!17480 lt!60912 (+ 0 1) (++!728 (BalanceConc!1889 Empty!940) (charsOf!214 (apply!463 lt!60912 0)))))))

(declare-fun lt!61197 () List!3086)

(assert (=> b!183883 (= lt!61197 (list!1133 lt!60912))))

(declare-fun lt!61193 () Unit!2832)

(assert (=> b!183883 (= lt!61193 (lemmaDropApply!142 lt!61197 0))))

(assert (=> b!183883 (= (head!640 (drop!155 lt!61197 0)) (apply!464 lt!61197 0))))

(declare-fun lt!61198 () Unit!2832)

(assert (=> b!183883 (= lt!61198 lt!61193)))

(declare-fun lt!61199 () List!3086)

(assert (=> b!183883 (= lt!61199 (list!1133 lt!60912))))

(declare-fun lt!61196 () Unit!2832)

(assert (=> b!183883 (= lt!61196 (lemmaDropTail!134 lt!61199 0))))

(assert (=> b!183883 (= (tail!368 (drop!155 lt!61199 0)) (drop!155 lt!61199 (+ 0 1)))))

(declare-fun lt!61194 () Unit!2832)

(assert (=> b!183883 (= lt!61194 lt!61196)))

(assert (= (and d!46413 res!83555) b!183881))

(assert (= (and d!46413 c!35753) b!183882))

(assert (= (and d!46413 (not c!35753)) b!183883))

(declare-fun m!187479 () Bool)

(assert (=> d!46413 m!187479))

(declare-fun m!187481 () Bool)

(assert (=> d!46413 m!187481))

(declare-fun m!187483 () Bool)

(assert (=> d!46413 m!187483))

(declare-fun m!187485 () Bool)

(assert (=> d!46413 m!187485))

(assert (=> d!46413 m!187483))

(assert (=> d!46413 m!187485))

(declare-fun m!187487 () Bool)

(assert (=> d!46413 m!187487))

(assert (=> b!183881 m!187479))

(declare-fun m!187489 () Bool)

(assert (=> b!183883 m!187489))

(declare-fun m!187491 () Bool)

(assert (=> b!183883 m!187491))

(declare-fun m!187493 () Bool)

(assert (=> b!183883 m!187493))

(declare-fun m!187495 () Bool)

(assert (=> b!183883 m!187495))

(declare-fun m!187497 () Bool)

(assert (=> b!183883 m!187497))

(declare-fun m!187499 () Bool)

(assert (=> b!183883 m!187499))

(declare-fun m!187501 () Bool)

(assert (=> b!183883 m!187501))

(declare-fun m!187503 () Bool)

(assert (=> b!183883 m!187503))

(assert (=> b!183883 m!187489))

(declare-fun m!187505 () Bool)

(assert (=> b!183883 m!187505))

(declare-fun m!187507 () Bool)

(assert (=> b!183883 m!187507))

(declare-fun m!187509 () Bool)

(assert (=> b!183883 m!187509))

(declare-fun m!187511 () Bool)

(assert (=> b!183883 m!187511))

(assert (=> b!183883 m!187509))

(assert (=> b!183883 m!187503))

(declare-fun m!187513 () Bool)

(assert (=> b!183883 m!187513))

(assert (=> b!183883 m!187507))

(assert (=> b!183883 m!187501))

(assert (=> b!183392 d!46413))

(declare-fun d!46415 () Bool)

(assert (=> d!46415 (= (list!1129 lt!60908) (list!1132 (c!35641 lt!60908)))))

(declare-fun bs!18299 () Bool)

(assert (= bs!18299 d!46415))

(declare-fun m!187515 () Bool)

(assert (=> bs!18299 m!187515))

(assert (=> b!183392 d!46415))

(declare-fun d!46417 () Bool)

(declare-fun lt!61202 () BalanceConc!1888)

(assert (=> d!46417 (= (list!1129 lt!61202) (printList!129 thiss!17480 (list!1133 lt!60912)))))

(assert (=> d!46417 (= lt!61202 (printTailRec!139 thiss!17480 lt!60912 0 (BalanceConc!1889 Empty!940)))))

(assert (=> d!46417 (= (print!176 thiss!17480 lt!60912) lt!61202)))

(declare-fun bs!18300 () Bool)

(assert (= bs!18300 d!46417))

(declare-fun m!187517 () Bool)

(assert (=> bs!18300 m!187517))

(assert (=> bs!18300 m!187499))

(assert (=> bs!18300 m!187499))

(declare-fun m!187519 () Bool)

(assert (=> bs!18300 m!187519))

(assert (=> bs!18300 m!186575))

(assert (=> b!183392 d!46417))

(declare-fun bs!18304 () Bool)

(declare-fun d!46419 () Bool)

(assert (= bs!18304 (and d!46419 d!46369)))

(declare-fun lambda!5507 () Int)

(assert (=> bs!18304 (not (= lambda!5507 lambda!5500))))

(declare-fun bs!18305 () Bool)

(assert (= bs!18305 (and d!46419 d!46301)))

(assert (=> bs!18305 (not (= lambda!5507 lambda!5481))))

(declare-fun bs!18306 () Bool)

(assert (= bs!18306 (and d!46419 b!183388)))

(assert (=> bs!18306 (= lambda!5507 lambda!5470)))

(declare-fun bs!18307 () Bool)

(assert (= bs!18307 (and d!46419 b!183635)))

(assert (=> bs!18307 (= lambda!5507 lambda!5488)))

(declare-fun bs!18308 () Bool)

(assert (= bs!18308 (and d!46419 b!183401)))

(assert (=> bs!18308 (not (= lambda!5507 lambda!5469))))

(declare-fun bs!18309 () Bool)

(assert (= bs!18309 (and d!46419 b!183797)))

(assert (=> bs!18309 (= lambda!5507 lambda!5501)))

(declare-fun bs!18310 () Bool)

(assert (= bs!18310 (and d!46419 b!183579)))

(assert (=> bs!18310 (= lambda!5507 lambda!5482)))

(declare-fun bs!18311 () Bool)

(assert (= bs!18311 (and d!46419 b!183824)))

(assert (=> bs!18311 (= lambda!5507 lambda!5502)))

(declare-fun bs!18312 () Bool)

(assert (= bs!18312 (and d!46419 d!46309)))

(assert (=> bs!18312 (= lambda!5507 lambda!5499)))

(declare-fun b!183921 () Bool)

(declare-fun e!112292 () Bool)

(assert (=> b!183921 (= e!112292 true)))

(declare-fun b!183920 () Bool)

(declare-fun e!112291 () Bool)

(assert (=> b!183920 (= e!112291 e!112292)))

(declare-fun b!183919 () Bool)

(declare-fun e!112290 () Bool)

(assert (=> b!183919 (= e!112290 e!112291)))

(assert (=> d!46419 e!112290))

(assert (= b!183920 b!183921))

(assert (= b!183919 b!183920))

(assert (= (and d!46419 ((_ is Cons!3075) rules!1920)) b!183919))

(assert (=> b!183921 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5507))))

(assert (=> b!183921 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 rules!1920)))) (dynLambda!1252 order!1831 lambda!5507))))

(assert (=> d!46419 true))

(declare-fun e!112289 () Bool)

(assert (=> d!46419 e!112289))

(declare-fun res!83574 () Bool)

(assert (=> d!46419 (=> (not res!83574) (not e!112289))))

(declare-fun lt!61238 () Bool)

(assert (=> d!46419 (= res!83574 (= lt!61238 (forall!633 (list!1133 lt!60903) lambda!5507)))))

(declare-fun forall!635 (BalanceConc!1890 Int) Bool)

(assert (=> d!46419 (= lt!61238 (forall!635 lt!60903 lambda!5507))))

(assert (=> d!46419 (not (isEmpty!1433 rules!1920))))

(assert (=> d!46419 (= (rulesProduceEachTokenIndividually!237 thiss!17480 rules!1920 lt!60903) lt!61238)))

(declare-fun b!183918 () Bool)

(assert (=> b!183918 (= e!112289 (= lt!61238 (rulesProduceEachTokenIndividuallyList!135 thiss!17480 rules!1920 (list!1133 lt!60903))))))

(assert (= (and d!46419 res!83574) b!183918))

(assert (=> d!46419 m!186919))

(assert (=> d!46419 m!186919))

(declare-fun m!187599 () Bool)

(assert (=> d!46419 m!187599))

(declare-fun m!187601 () Bool)

(assert (=> d!46419 m!187601))

(assert (=> d!46419 m!186627))

(assert (=> b!183918 m!186919))

(assert (=> b!183918 m!186919))

(declare-fun m!187603 () Bool)

(assert (=> b!183918 m!187603))

(assert (=> b!183390 d!46419))

(declare-fun d!46439 () Bool)

(assert (=> d!46439 (= (seqFromList!496 tokens!465) (fromListB!192 tokens!465))))

(declare-fun bs!18313 () Bool)

(assert (= bs!18313 d!46439))

(declare-fun m!187605 () Bool)

(assert (=> bs!18313 m!187605))

(assert (=> b!183390 d!46439))

(declare-fun d!46441 () Bool)

(assert (=> d!46441 (= (get!871 lt!60890) (v!13882 lt!60890))))

(assert (=> b!183389 d!46441))

(declare-fun d!46443 () Bool)

(assert (=> d!46443 (= (isDefined!247 lt!60890) (not (isEmpty!1437 lt!60890)))))

(declare-fun bs!18314 () Bool)

(assert (= bs!18314 d!46443))

(declare-fun m!187607 () Bool)

(assert (=> bs!18314 m!187607))

(assert (=> b!183389 d!46443))

(declare-fun b!183922 () Bool)

(declare-fun e!112295 () Option!396)

(declare-fun lt!61241 () Option!396)

(declare-fun lt!61239 () Option!396)

(assert (=> b!183922 (= e!112295 (ite (and ((_ is None!395) lt!61241) ((_ is None!395) lt!61239)) None!395 (ite ((_ is None!395) lt!61239) lt!61241 (ite ((_ is None!395) lt!61241) lt!61239 (ite (>= (size!2495 (_1!1757 (v!13882 lt!61241))) (size!2495 (_1!1757 (v!13882 lt!61239)))) lt!61241 lt!61239)))))))

(declare-fun call!8412 () Option!396)

(assert (=> b!183922 (= lt!61241 call!8412)))

(assert (=> b!183922 (= lt!61239 (maxPrefix!175 thiss!17480 (t!28447 rules!1920) lt!60913))))

(declare-fun b!183923 () Bool)

(declare-fun res!83575 () Bool)

(declare-fun e!112293 () Bool)

(assert (=> b!183923 (=> (not res!83575) (not e!112293))))

(declare-fun lt!61240 () Option!396)

(assert (=> b!183923 (= res!83575 (matchR!121 (regex!559 (rule!1074 (_1!1757 (get!871 lt!61240)))) (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61240))))))))

(declare-fun b!183924 () Bool)

(assert (=> b!183924 (= e!112293 (contains!496 rules!1920 (rule!1074 (_1!1757 (get!871 lt!61240)))))))

(declare-fun b!183926 () Bool)

(declare-fun res!83578 () Bool)

(assert (=> b!183926 (=> (not res!83578) (not e!112293))))

(assert (=> b!183926 (= res!83578 (= (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61240)))) (originalCharacters!602 (_1!1757 (get!871 lt!61240)))))))

(declare-fun b!183927 () Bool)

(declare-fun res!83579 () Bool)

(assert (=> b!183927 (=> (not res!83579) (not e!112293))))

(assert (=> b!183927 (= res!83579 (< (size!2499 (_2!1757 (get!871 lt!61240))) (size!2499 lt!60913)))))

(declare-fun b!183928 () Bool)

(declare-fun res!83576 () Bool)

(assert (=> b!183928 (=> (not res!83576) (not e!112293))))

(assert (=> b!183928 (= res!83576 (= (++!726 (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61240)))) (_2!1757 (get!871 lt!61240))) lt!60913))))

(declare-fun b!183929 () Bool)

(declare-fun res!83581 () Bool)

(assert (=> b!183929 (=> (not res!83581) (not e!112293))))

(assert (=> b!183929 (= res!83581 (= (value!20247 (_1!1757 (get!871 lt!61240))) (apply!462 (transformation!559 (rule!1074 (_1!1757 (get!871 lt!61240)))) (seqFromList!495 (originalCharacters!602 (_1!1757 (get!871 lt!61240)))))))))

(declare-fun bm!8407 () Bool)

(assert (=> bm!8407 (= call!8412 (maxPrefixOneRule!85 thiss!17480 (h!8472 rules!1920) lt!60913))))

(declare-fun b!183930 () Bool)

(declare-fun e!112294 () Bool)

(assert (=> b!183930 (= e!112294 e!112293)))

(declare-fun res!83577 () Bool)

(assert (=> b!183930 (=> (not res!83577) (not e!112293))))

(assert (=> b!183930 (= res!83577 (isDefined!247 lt!61240))))

(declare-fun b!183925 () Bool)

(assert (=> b!183925 (= e!112295 call!8412)))

(declare-fun d!46445 () Bool)

(assert (=> d!46445 e!112294))

(declare-fun res!83580 () Bool)

(assert (=> d!46445 (=> res!83580 e!112294)))

(assert (=> d!46445 (= res!83580 (isEmpty!1437 lt!61240))))

(assert (=> d!46445 (= lt!61240 e!112295)))

(declare-fun c!35762 () Bool)

(assert (=> d!46445 (= c!35762 (and ((_ is Cons!3075) rules!1920) ((_ is Nil!3075) (t!28447 rules!1920))))))

(declare-fun lt!61243 () Unit!2832)

(declare-fun lt!61242 () Unit!2832)

(assert (=> d!46445 (= lt!61243 lt!61242)))

(assert (=> d!46445 (isPrefix!255 lt!60913 lt!60913)))

(assert (=> d!46445 (= lt!61242 (lemmaIsPrefixRefl!151 lt!60913 lt!60913))))

(assert (=> d!46445 (rulesValidInductive!140 thiss!17480 rules!1920)))

(assert (=> d!46445 (= (maxPrefix!175 thiss!17480 rules!1920 lt!60913) lt!61240)))

(assert (= (and d!46445 c!35762) b!183925))

(assert (= (and d!46445 (not c!35762)) b!183922))

(assert (= (or b!183925 b!183922) bm!8407))

(assert (= (and d!46445 (not res!83580)) b!183930))

(assert (= (and b!183930 res!83577) b!183926))

(assert (= (and b!183926 res!83578) b!183927))

(assert (= (and b!183927 res!83579) b!183928))

(assert (= (and b!183928 res!83576) b!183929))

(assert (= (and b!183929 res!83581) b!183923))

(assert (= (and b!183923 res!83575) b!183924))

(declare-fun m!187609 () Bool)

(assert (=> b!183923 m!187609))

(declare-fun m!187611 () Bool)

(assert (=> b!183923 m!187611))

(assert (=> b!183923 m!187611))

(declare-fun m!187613 () Bool)

(assert (=> b!183923 m!187613))

(assert (=> b!183923 m!187613))

(declare-fun m!187615 () Bool)

(assert (=> b!183923 m!187615))

(declare-fun m!187617 () Bool)

(assert (=> b!183922 m!187617))

(declare-fun m!187619 () Bool)

(assert (=> bm!8407 m!187619))

(assert (=> b!183926 m!187609))

(assert (=> b!183926 m!187611))

(assert (=> b!183926 m!187611))

(assert (=> b!183926 m!187613))

(declare-fun m!187621 () Bool)

(assert (=> d!46445 m!187621))

(declare-fun m!187623 () Bool)

(assert (=> d!46445 m!187623))

(declare-fun m!187625 () Bool)

(assert (=> d!46445 m!187625))

(assert (=> d!46445 m!186817))

(assert (=> b!183927 m!187609))

(declare-fun m!187627 () Bool)

(assert (=> b!183927 m!187627))

(assert (=> b!183927 m!186763))

(assert (=> b!183924 m!187609))

(declare-fun m!187629 () Bool)

(assert (=> b!183924 m!187629))

(assert (=> b!183929 m!187609))

(declare-fun m!187631 () Bool)

(assert (=> b!183929 m!187631))

(assert (=> b!183929 m!187631))

(declare-fun m!187633 () Bool)

(assert (=> b!183929 m!187633))

(assert (=> b!183928 m!187609))

(assert (=> b!183928 m!187611))

(assert (=> b!183928 m!187611))

(assert (=> b!183928 m!187613))

(assert (=> b!183928 m!187613))

(declare-fun m!187635 () Bool)

(assert (=> b!183928 m!187635))

(declare-fun m!187637 () Bool)

(assert (=> b!183930 m!187637))

(assert (=> b!183389 d!46445))

(declare-fun d!46447 () Bool)

(declare-fun isEmpty!1441 (Option!397) Bool)

(assert (=> d!46447 (= (isDefined!248 (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465))))) (not (isEmpty!1441 (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))

(declare-fun bs!18315 () Bool)

(assert (= bs!18315 d!46447))

(assert (=> bs!18315 m!186673))

(declare-fun m!187639 () Bool)

(assert (=> bs!18315 m!187639))

(assert (=> b!183388 d!46447))

(declare-fun b!183978 () Bool)

(declare-fun e!112334 () Option!397)

(declare-fun lt!61290 () Option!397)

(declare-fun lt!61284 () Option!397)

(assert (=> b!183978 (= e!112334 (ite (and ((_ is None!396) lt!61290) ((_ is None!396) lt!61284)) None!396 (ite ((_ is None!396) lt!61284) lt!61290 (ite ((_ is None!396) lt!61290) lt!61284 (ite (>= (size!2495 (_1!1758 (v!13883 lt!61290))) (size!2495 (_1!1758 (v!13883 lt!61284)))) lt!61290 lt!61284)))))))

(declare-fun call!8418 () Option!397)

(assert (=> b!183978 (= lt!61290 call!8418)))

(assert (=> b!183978 (= lt!61284 (maxPrefixZipperSequence!138 thiss!17480 (t!28447 rules!1920) (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))

(declare-fun b!183979 () Bool)

(declare-fun e!112332 () Bool)

(declare-fun e!112336 () Bool)

(assert (=> b!183979 (= e!112332 e!112336)))

(declare-fun res!83623 () Bool)

(assert (=> b!183979 (=> (not res!83623) (not e!112336))))

(declare-fun lt!61287 () Option!397)

(declare-fun get!873 (Option!397) tuple2!3084)

(assert (=> b!183979 (= res!83623 (= (_1!1758 (get!873 lt!61287)) (_1!1757 (get!871 (maxPrefix!175 thiss!17480 rules!1920 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))))

(declare-fun b!183980 () Bool)

(declare-fun res!83621 () Bool)

(declare-fun e!112333 () Bool)

(assert (=> b!183980 (=> (not res!83621) (not e!112333))))

(declare-fun e!112337 () Bool)

(assert (=> b!183980 (= res!83621 e!112337)))

(declare-fun res!83620 () Bool)

(assert (=> b!183980 (=> res!83620 e!112337)))

(assert (=> b!183980 (= res!83620 (not (isDefined!248 lt!61287)))))

(declare-fun d!46449 () Bool)

(assert (=> d!46449 e!112333))

(declare-fun res!83624 () Bool)

(assert (=> d!46449 (=> (not res!83624) (not e!112333))))

(declare-fun maxPrefixZipper!55 (LexerInterface!445 List!3085 List!3084) Option!396)

(assert (=> d!46449 (= res!83624 (= (isDefined!248 lt!61287) (isDefined!247 (maxPrefixZipper!55 thiss!17480 rules!1920 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465))))))))))

(assert (=> d!46449 (= lt!61287 e!112334)))

(declare-fun c!35768 () Bool)

(assert (=> d!46449 (= c!35768 (and ((_ is Cons!3075) rules!1920) ((_ is Nil!3075) (t!28447 rules!1920))))))

(declare-fun lt!61288 () Unit!2832)

(declare-fun lt!61285 () Unit!2832)

(assert (=> d!46449 (= lt!61288 lt!61285)))

(declare-fun lt!61286 () List!3084)

(declare-fun lt!61289 () List!3084)

(assert (=> d!46449 (isPrefix!255 lt!61286 lt!61289)))

(assert (=> d!46449 (= lt!61285 (lemmaIsPrefixRefl!151 lt!61286 lt!61289))))

(assert (=> d!46449 (= lt!61289 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))

(assert (=> d!46449 (= lt!61286 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))

(assert (=> d!46449 (rulesValidInductive!140 thiss!17480 rules!1920)))

(assert (=> d!46449 (= (maxPrefixZipperSequence!138 thiss!17480 rules!1920 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))) lt!61287)))

(declare-fun b!183981 () Bool)

(assert (=> b!183981 (= e!112336 (= (list!1129 (_2!1758 (get!873 lt!61287))) (_2!1757 (get!871 (maxPrefix!175 thiss!17480 rules!1920 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))))

(declare-fun b!183982 () Bool)

(assert (=> b!183982 (= e!112333 e!112332)))

(declare-fun res!83622 () Bool)

(assert (=> b!183982 (=> res!83622 e!112332)))

(assert (=> b!183982 (= res!83622 (not (isDefined!248 lt!61287)))))

(declare-fun b!183983 () Bool)

(declare-fun e!112335 () Bool)

(assert (=> b!183983 (= e!112335 (= (list!1129 (_2!1758 (get!873 lt!61287))) (_2!1757 (get!871 (maxPrefixZipper!55 thiss!17480 rules!1920 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))))

(declare-fun b!183984 () Bool)

(assert (=> b!183984 (= e!112334 call!8418)))

(declare-fun b!183985 () Bool)

(assert (=> b!183985 (= e!112337 e!112335)))

(declare-fun res!83619 () Bool)

(assert (=> b!183985 (=> (not res!83619) (not e!112335))))

(assert (=> b!183985 (= res!83619 (= (_1!1758 (get!873 lt!61287)) (_1!1757 (get!871 (maxPrefixZipper!55 thiss!17480 rules!1920 (list!1129 (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))))))

(declare-fun bm!8413 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!56 (LexerInterface!445 Rule!918 BalanceConc!1888) Option!397)

(assert (=> bm!8413 (= call!8418 (maxPrefixOneRuleZipperSequence!56 thiss!17480 (h!8472 rules!1920) (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465)))))))

(assert (= (and d!46449 c!35768) b!183984))

(assert (= (and d!46449 (not c!35768)) b!183978))

(assert (= (or b!183984 b!183978) bm!8413))

(assert (= (and d!46449 res!83624) b!183980))

(assert (= (and b!183980 (not res!83620)) b!183985))

(assert (= (and b!183985 res!83619) b!183983))

(assert (= (and b!183980 res!83621) b!183982))

(assert (= (and b!183982 (not res!83622)) b!183979))

(assert (= (and b!183979 res!83623) b!183981))

(declare-fun m!187699 () Bool)

(assert (=> b!183983 m!187699))

(assert (=> b!183983 m!186671))

(declare-fun m!187701 () Bool)

(assert (=> b!183983 m!187701))

(declare-fun m!187703 () Bool)

(assert (=> b!183983 m!187703))

(assert (=> b!183983 m!187701))

(declare-fun m!187705 () Bool)

(assert (=> b!183983 m!187705))

(assert (=> b!183983 m!187705))

(declare-fun m!187707 () Bool)

(assert (=> b!183983 m!187707))

(assert (=> bm!8413 m!186671))

(declare-fun m!187709 () Bool)

(assert (=> bm!8413 m!187709))

(assert (=> b!183981 m!187699))

(assert (=> b!183981 m!186671))

(assert (=> b!183981 m!187701))

(declare-fun m!187711 () Bool)

(assert (=> b!183981 m!187711))

(declare-fun m!187713 () Bool)

(assert (=> b!183981 m!187713))

(assert (=> b!183981 m!187703))

(assert (=> b!183981 m!187701))

(assert (=> b!183981 m!187711))

(assert (=> d!46449 m!186817))

(assert (=> d!46449 m!187705))

(declare-fun m!187717 () Bool)

(assert (=> d!46449 m!187717))

(declare-fun m!187721 () Bool)

(assert (=> d!46449 m!187721))

(assert (=> d!46449 m!186671))

(assert (=> d!46449 m!187701))

(declare-fun m!187723 () Bool)

(assert (=> d!46449 m!187723))

(declare-fun m!187725 () Bool)

(assert (=> d!46449 m!187725))

(assert (=> d!46449 m!187701))

(assert (=> d!46449 m!187705))

(assert (=> b!183980 m!187725))

(assert (=> b!183982 m!187725))

(assert (=> b!183978 m!186671))

(declare-fun m!187727 () Bool)

(assert (=> b!183978 m!187727))

(assert (=> b!183979 m!187703))

(assert (=> b!183979 m!186671))

(assert (=> b!183979 m!187701))

(assert (=> b!183979 m!187701))

(assert (=> b!183979 m!187711))

(assert (=> b!183979 m!187711))

(assert (=> b!183979 m!187713))

(assert (=> b!183985 m!187703))

(assert (=> b!183985 m!186671))

(assert (=> b!183985 m!187701))

(assert (=> b!183985 m!187701))

(assert (=> b!183985 m!187705))

(assert (=> b!183985 m!187705))

(assert (=> b!183985 m!187707))

(assert (=> b!183388 d!46449))

(declare-fun d!46469 () Bool)

(declare-fun fromListB!193 (List!3084) BalanceConc!1888)

(assert (=> d!46469 (= (seqFromList!495 (originalCharacters!602 (h!8473 tokens!465))) (fromListB!193 (originalCharacters!602 (h!8473 tokens!465))))))

(declare-fun bs!18317 () Bool)

(assert (= bs!18317 d!46469))

(declare-fun m!187733 () Bool)

(assert (=> bs!18317 m!187733))

(assert (=> b!183388 d!46469))

(declare-fun d!46471 () Bool)

(declare-fun dynLambda!1257 (Int Token!862) Bool)

(assert (=> d!46471 (dynLambda!1257 lambda!5470 (h!8473 tokens!465))))

(declare-fun lt!61293 () Unit!2832)

(declare-fun choose!1895 (List!3086 Int Token!862) Unit!2832)

(assert (=> d!46471 (= lt!61293 (choose!1895 tokens!465 lambda!5470 (h!8473 tokens!465)))))

(declare-fun e!112350 () Bool)

(assert (=> d!46471 e!112350))

(declare-fun res!83637 () Bool)

(assert (=> d!46471 (=> (not res!83637) (not e!112350))))

(assert (=> d!46471 (= res!83637 (forall!633 tokens!465 lambda!5470))))

(assert (=> d!46471 (= (forallContained!126 tokens!465 lambda!5470 (h!8473 tokens!465)) lt!61293)))

(declare-fun b!183998 () Bool)

(declare-fun contains!498 (List!3086 Token!862) Bool)

(assert (=> b!183998 (= e!112350 (contains!498 tokens!465 (h!8473 tokens!465)))))

(assert (= (and d!46471 res!83637) b!183998))

(declare-fun b_lambda!4423 () Bool)

(assert (=> (not b_lambda!4423) (not d!46471)))

(declare-fun m!187739 () Bool)

(assert (=> d!46471 m!187739))

(declare-fun m!187741 () Bool)

(assert (=> d!46471 m!187741))

(declare-fun m!187743 () Bool)

(assert (=> d!46471 m!187743))

(declare-fun m!187745 () Bool)

(assert (=> b!183998 m!187745))

(assert (=> b!183388 d!46471))

(declare-fun d!46475 () Bool)

(assert (=> d!46475 (= (isEmpty!1433 rules!1920) ((_ is Nil!3075) rules!1920))))

(assert (=> b!183398 d!46475))

(declare-fun d!46477 () Bool)

(declare-fun c!35773 () Bool)

(assert (=> d!46477 (= c!35773 ((_ is IntegerValue!1743) (value!20247 (h!8473 tokens!465))))))

(declare-fun e!112358 () Bool)

(assert (=> d!46477 (= (inv!21 (value!20247 (h!8473 tokens!465))) e!112358)))

(declare-fun b!184009 () Bool)

(declare-fun res!83640 () Bool)

(declare-fun e!112357 () Bool)

(assert (=> b!184009 (=> res!83640 e!112357)))

(assert (=> b!184009 (= res!83640 (not ((_ is IntegerValue!1745) (value!20247 (h!8473 tokens!465)))))))

(declare-fun e!112359 () Bool)

(assert (=> b!184009 (= e!112359 e!112357)))

(declare-fun b!184010 () Bool)

(declare-fun inv!15 (TokenValue!581) Bool)

(assert (=> b!184010 (= e!112357 (inv!15 (value!20247 (h!8473 tokens!465))))))

(declare-fun b!184011 () Bool)

(declare-fun inv!16 (TokenValue!581) Bool)

(assert (=> b!184011 (= e!112358 (inv!16 (value!20247 (h!8473 tokens!465))))))

(declare-fun b!184012 () Bool)

(assert (=> b!184012 (= e!112358 e!112359)))

(declare-fun c!35774 () Bool)

(assert (=> b!184012 (= c!35774 ((_ is IntegerValue!1744) (value!20247 (h!8473 tokens!465))))))

(declare-fun b!184013 () Bool)

(declare-fun inv!17 (TokenValue!581) Bool)

(assert (=> b!184013 (= e!112359 (inv!17 (value!20247 (h!8473 tokens!465))))))

(assert (= (and d!46477 c!35773) b!184011))

(assert (= (and d!46477 (not c!35773)) b!184012))

(assert (= (and b!184012 c!35774) b!184013))

(assert (= (and b!184012 (not c!35774)) b!184009))

(assert (= (and b!184009 (not res!83640)) b!184010))

(declare-fun m!187747 () Bool)

(assert (=> b!184010 m!187747))

(declare-fun m!187749 () Bool)

(assert (=> b!184011 m!187749))

(declare-fun m!187751 () Bool)

(assert (=> b!184013 m!187751))

(assert (=> b!183397 d!46477))

(declare-fun d!46479 () Bool)

(assert (=> d!46479 (= (inv!3902 (tag!737 (rule!1074 separatorToken!170))) (= (mod (str.len (value!20246 (tag!737 (rule!1074 separatorToken!170)))) 2) 0))))

(assert (=> b!183376 d!46479))

(declare-fun d!46481 () Bool)

(declare-fun res!83643 () Bool)

(declare-fun e!112362 () Bool)

(assert (=> d!46481 (=> (not res!83643) (not e!112362))))

(declare-fun semiInverseModEq!193 (Int Int) Bool)

(assert (=> d!46481 (= res!83643 (semiInverseModEq!193 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toValue!1230 (transformation!559 (rule!1074 separatorToken!170)))))))

(assert (=> d!46481 (= (inv!3905 (transformation!559 (rule!1074 separatorToken!170))) e!112362)))

(declare-fun b!184016 () Bool)

(declare-fun equivClasses!176 (Int Int) Bool)

(assert (=> b!184016 (= e!112362 (equivClasses!176 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toValue!1230 (transformation!559 (rule!1074 separatorToken!170)))))))

(assert (= (and d!46481 res!83643) b!184016))

(declare-fun m!187753 () Bool)

(assert (=> d!46481 m!187753))

(declare-fun m!187755 () Bool)

(assert (=> b!184016 m!187755))

(assert (=> b!183376 d!46481))

(declare-fun d!46483 () Bool)

(declare-fun res!83648 () Bool)

(declare-fun e!112367 () Bool)

(assert (=> d!46483 (=> res!83648 e!112367)))

(assert (=> d!46483 (= res!83648 (not ((_ is Cons!3075) rules!1920)))))

(assert (=> d!46483 (= (sepAndNonSepRulesDisjointChars!148 rules!1920 rules!1920) e!112367)))

(declare-fun b!184021 () Bool)

(declare-fun e!112368 () Bool)

(assert (=> b!184021 (= e!112367 e!112368)))

(declare-fun res!83649 () Bool)

(assert (=> b!184021 (=> (not res!83649) (not e!112368))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!52 (Rule!918 List!3085) Bool)

(assert (=> b!184021 (= res!83649 (ruleDisjointCharsFromAllFromOtherType!52 (h!8472 rules!1920) rules!1920))))

(declare-fun b!184022 () Bool)

(assert (=> b!184022 (= e!112368 (sepAndNonSepRulesDisjointChars!148 rules!1920 (t!28447 rules!1920)))))

(assert (= (and d!46483 (not res!83648)) b!184021))

(assert (= (and b!184021 res!83649) b!184022))

(declare-fun m!187757 () Bool)

(assert (=> b!184021 m!187757))

(declare-fun m!187759 () Bool)

(assert (=> b!184022 m!187759))

(assert (=> b!183375 d!46483))

(declare-fun lt!61296 () Bool)

(declare-fun d!46485 () Bool)

(assert (=> d!46485 (= lt!61296 (isEmpty!1431 (list!1133 (_1!1759 (lex!245 thiss!17480 rules!1920 (seqFromList!495 lt!60913))))))))

(declare-fun isEmpty!1442 (Conc!941) Bool)

(assert (=> d!46485 (= lt!61296 (isEmpty!1442 (c!35643 (_1!1759 (lex!245 thiss!17480 rules!1920 (seqFromList!495 lt!60913))))))))

(assert (=> d!46485 (= (isEmpty!1432 (_1!1759 (lex!245 thiss!17480 rules!1920 (seqFromList!495 lt!60913)))) lt!61296)))

(declare-fun bs!18318 () Bool)

(assert (= bs!18318 d!46485))

(declare-fun m!187761 () Bool)

(assert (=> bs!18318 m!187761))

(assert (=> bs!18318 m!187761))

(declare-fun m!187763 () Bool)

(assert (=> bs!18318 m!187763))

(declare-fun m!187765 () Bool)

(assert (=> bs!18318 m!187765))

(assert (=> b!183396 d!46485))

(declare-fun b!184042 () Bool)

(declare-fun res!83663 () Bool)

(declare-fun e!112386 () Bool)

(assert (=> b!184042 (=> (not res!83663) (not e!112386))))

(declare-fun lt!61302 () tuple2!3086)

(declare-datatypes ((tuple2!3090 0))(
  ( (tuple2!3091 (_1!1761 List!3086) (_2!1761 List!3084)) )
))
(declare-fun lexList!127 (LexerInterface!445 List!3085 List!3084) tuple2!3090)

(assert (=> b!184042 (= res!83663 (= (list!1133 (_1!1759 lt!61302)) (_1!1761 (lexList!127 thiss!17480 rules!1920 (list!1129 (seqFromList!495 lt!60913))))))))

(declare-fun b!184043 () Bool)

(declare-fun e!112385 () Bool)

(assert (=> b!184043 (= e!112385 (not (isEmpty!1432 (_1!1759 lt!61302))))))

(declare-fun b!184044 () Bool)

(assert (=> b!184044 (= e!112386 (= (list!1129 (_2!1759 lt!61302)) (_2!1761 (lexList!127 thiss!17480 rules!1920 (list!1129 (seqFromList!495 lt!60913))))))))

(declare-fun d!46487 () Bool)

(assert (=> d!46487 e!112386))

(declare-fun res!83662 () Bool)

(assert (=> d!46487 (=> (not res!83662) (not e!112386))))

(declare-fun e!112384 () Bool)

(assert (=> d!46487 (= res!83662 e!112384)))

(declare-fun c!35777 () Bool)

(assert (=> d!46487 (= c!35777 (> (size!2500 (_1!1759 lt!61302)) 0))))

(declare-fun lexTailRecV2!114 (LexerInterface!445 List!3085 BalanceConc!1888 BalanceConc!1888 BalanceConc!1888 BalanceConc!1890) tuple2!3086)

(assert (=> d!46487 (= lt!61302 (lexTailRecV2!114 thiss!17480 rules!1920 (seqFromList!495 lt!60913) (BalanceConc!1889 Empty!940) (seqFromList!495 lt!60913) (BalanceConc!1891 Empty!941)))))

(assert (=> d!46487 (= (lex!245 thiss!17480 rules!1920 (seqFromList!495 lt!60913)) lt!61302)))

(declare-fun b!184045 () Bool)

(assert (=> b!184045 (= e!112384 (= (_2!1759 lt!61302) (seqFromList!495 lt!60913)))))

(declare-fun b!184046 () Bool)

(assert (=> b!184046 (= e!112384 e!112385)))

(declare-fun res!83664 () Bool)

(declare-fun size!2501 (BalanceConc!1888) Int)

(assert (=> b!184046 (= res!83664 (< (size!2501 (_2!1759 lt!61302)) (size!2501 (seqFromList!495 lt!60913))))))

(assert (=> b!184046 (=> (not res!83664) (not e!112385))))

(assert (= (and d!46487 c!35777) b!184046))

(assert (= (and d!46487 (not c!35777)) b!184045))

(assert (= (and b!184046 res!83664) b!184043))

(assert (= (and d!46487 res!83662) b!184042))

(assert (= (and b!184042 res!83663) b!184044))

(declare-fun m!187773 () Bool)

(assert (=> b!184042 m!187773))

(assert (=> b!184042 m!186603))

(declare-fun m!187775 () Bool)

(assert (=> b!184042 m!187775))

(assert (=> b!184042 m!187775))

(declare-fun m!187777 () Bool)

(assert (=> b!184042 m!187777))

(declare-fun m!187779 () Bool)

(assert (=> b!184044 m!187779))

(assert (=> b!184044 m!186603))

(assert (=> b!184044 m!187775))

(assert (=> b!184044 m!187775))

(assert (=> b!184044 m!187777))

(declare-fun m!187781 () Bool)

(assert (=> b!184043 m!187781))

(declare-fun m!187783 () Bool)

(assert (=> d!46487 m!187783))

(assert (=> d!46487 m!186603))

(assert (=> d!46487 m!186603))

(declare-fun m!187785 () Bool)

(assert (=> d!46487 m!187785))

(declare-fun m!187787 () Bool)

(assert (=> b!184046 m!187787))

(assert (=> b!184046 m!186603))

(declare-fun m!187789 () Bool)

(assert (=> b!184046 m!187789))

(assert (=> b!183396 d!46487))

(declare-fun d!46491 () Bool)

(assert (=> d!46491 (= (seqFromList!495 lt!60913) (fromListB!193 lt!60913))))

(declare-fun bs!18328 () Bool)

(assert (= bs!18328 d!46491))

(declare-fun m!187791 () Bool)

(assert (=> bs!18328 m!187791))

(assert (=> b!183396 d!46491))

(declare-fun d!46493 () Bool)

(declare-fun c!35780 () Bool)

(assert (=> d!46493 (= c!35780 ((_ is IntegerValue!1743) (value!20247 separatorToken!170)))))

(declare-fun e!112390 () Bool)

(assert (=> d!46493 (= (inv!21 (value!20247 separatorToken!170)) e!112390)))

(declare-fun b!184051 () Bool)

(declare-fun res!83665 () Bool)

(declare-fun e!112389 () Bool)

(assert (=> b!184051 (=> res!83665 e!112389)))

(assert (=> b!184051 (= res!83665 (not ((_ is IntegerValue!1745) (value!20247 separatorToken!170))))))

(declare-fun e!112391 () Bool)

(assert (=> b!184051 (= e!112391 e!112389)))

(declare-fun b!184052 () Bool)

(assert (=> b!184052 (= e!112389 (inv!15 (value!20247 separatorToken!170)))))

(declare-fun b!184053 () Bool)

(assert (=> b!184053 (= e!112390 (inv!16 (value!20247 separatorToken!170)))))

(declare-fun b!184054 () Bool)

(assert (=> b!184054 (= e!112390 e!112391)))

(declare-fun c!35781 () Bool)

(assert (=> b!184054 (= c!35781 ((_ is IntegerValue!1744) (value!20247 separatorToken!170)))))

(declare-fun b!184055 () Bool)

(assert (=> b!184055 (= e!112391 (inv!17 (value!20247 separatorToken!170)))))

(assert (= (and d!46493 c!35780) b!184053))

(assert (= (and d!46493 (not c!35780)) b!184054))

(assert (= (and b!184054 c!35781) b!184055))

(assert (= (and b!184054 (not c!35781)) b!184051))

(assert (= (and b!184051 (not res!83665)) b!184052))

(declare-fun m!187793 () Bool)

(assert (=> b!184052 m!187793))

(declare-fun m!187795 () Bool)

(assert (=> b!184053 m!187795))

(declare-fun m!187797 () Bool)

(assert (=> b!184055 m!187797))

(assert (=> b!183374 d!46493))

(declare-fun b!184068 () Bool)

(declare-fun e!112402 () Option!396)

(declare-fun lt!61307 () Option!396)

(declare-fun lt!61305 () Option!396)

(assert (=> b!184068 (= e!112402 (ite (and ((_ is None!395) lt!61307) ((_ is None!395) lt!61305)) None!395 (ite ((_ is None!395) lt!61305) lt!61307 (ite ((_ is None!395) lt!61307) lt!61305 (ite (>= (size!2495 (_1!1757 (v!13882 lt!61307))) (size!2495 (_1!1757 (v!13882 lt!61305)))) lt!61307 lt!61305)))))))

(declare-fun call!8419 () Option!396)

(assert (=> b!184068 (= lt!61307 call!8419)))

(assert (=> b!184068 (= lt!61305 (maxPrefix!175 thiss!17480 (t!28447 rules!1920) lt!60892))))

(declare-fun b!184071 () Bool)

(declare-fun res!83670 () Bool)

(declare-fun e!112398 () Bool)

(assert (=> b!184071 (=> (not res!83670) (not e!112398))))

(declare-fun lt!61306 () Option!396)

(assert (=> b!184071 (= res!83670 (matchR!121 (regex!559 (rule!1074 (_1!1757 (get!871 lt!61306)))) (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61306))))))))

(declare-fun b!184072 () Bool)

(assert (=> b!184072 (= e!112398 (contains!496 rules!1920 (rule!1074 (_1!1757 (get!871 lt!61306)))))))

(declare-fun b!184074 () Bool)

(declare-fun res!83675 () Bool)

(assert (=> b!184074 (=> (not res!83675) (not e!112398))))

(assert (=> b!184074 (= res!83675 (= (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61306)))) (originalCharacters!602 (_1!1757 (get!871 lt!61306)))))))

(declare-fun b!184075 () Bool)

(declare-fun res!83676 () Bool)

(assert (=> b!184075 (=> (not res!83676) (not e!112398))))

(assert (=> b!184075 (= res!83676 (< (size!2499 (_2!1757 (get!871 lt!61306))) (size!2499 lt!60892)))))

(declare-fun b!184076 () Bool)

(declare-fun res!83671 () Bool)

(assert (=> b!184076 (=> (not res!83671) (not e!112398))))

(assert (=> b!184076 (= res!83671 (= (++!726 (list!1129 (charsOf!214 (_1!1757 (get!871 lt!61306)))) (_2!1757 (get!871 lt!61306))) lt!60892))))

(declare-fun b!184077 () Bool)

(declare-fun res!83680 () Bool)

(assert (=> b!184077 (=> (not res!83680) (not e!112398))))

(assert (=> b!184077 (= res!83680 (= (value!20247 (_1!1757 (get!871 lt!61306))) (apply!462 (transformation!559 (rule!1074 (_1!1757 (get!871 lt!61306)))) (seqFromList!495 (originalCharacters!602 (_1!1757 (get!871 lt!61306)))))))))

(declare-fun bm!8414 () Bool)

(assert (=> bm!8414 (= call!8419 (maxPrefixOneRule!85 thiss!17480 (h!8472 rules!1920) lt!60892))))

(declare-fun b!184080 () Bool)

(declare-fun e!112401 () Bool)

(assert (=> b!184080 (= e!112401 e!112398)))

(declare-fun res!83674 () Bool)

(assert (=> b!184080 (=> (not res!83674) (not e!112398))))

(assert (=> b!184080 (= res!83674 (isDefined!247 lt!61306))))

(declare-fun b!184073 () Bool)

(assert (=> b!184073 (= e!112402 call!8419)))

(declare-fun d!46495 () Bool)

(assert (=> d!46495 e!112401))

(declare-fun res!83679 () Bool)

(assert (=> d!46495 (=> res!83679 e!112401)))

(assert (=> d!46495 (= res!83679 (isEmpty!1437 lt!61306))))

(assert (=> d!46495 (= lt!61306 e!112402)))

(declare-fun c!35786 () Bool)

(assert (=> d!46495 (= c!35786 (and ((_ is Cons!3075) rules!1920) ((_ is Nil!3075) (t!28447 rules!1920))))))

(declare-fun lt!61309 () Unit!2832)

(declare-fun lt!61308 () Unit!2832)

(assert (=> d!46495 (= lt!61309 lt!61308)))

(assert (=> d!46495 (isPrefix!255 lt!60892 lt!60892)))

(assert (=> d!46495 (= lt!61308 (lemmaIsPrefixRefl!151 lt!60892 lt!60892))))

(assert (=> d!46495 (rulesValidInductive!140 thiss!17480 rules!1920)))

(assert (=> d!46495 (= (maxPrefix!175 thiss!17480 rules!1920 lt!60892) lt!61306)))

(assert (= (and d!46495 c!35786) b!184073))

(assert (= (and d!46495 (not c!35786)) b!184068))

(assert (= (or b!184073 b!184068) bm!8414))

(assert (= (and d!46495 (not res!83679)) b!184080))

(assert (= (and b!184080 res!83674) b!184074))

(assert (= (and b!184074 res!83675) b!184075))

(assert (= (and b!184075 res!83676) b!184076))

(assert (= (and b!184076 res!83671) b!184077))

(assert (= (and b!184077 res!83680) b!184071))

(assert (= (and b!184071 res!83670) b!184072))

(declare-fun m!187799 () Bool)

(assert (=> b!184071 m!187799))

(declare-fun m!187801 () Bool)

(assert (=> b!184071 m!187801))

(assert (=> b!184071 m!187801))

(declare-fun m!187803 () Bool)

(assert (=> b!184071 m!187803))

(assert (=> b!184071 m!187803))

(declare-fun m!187805 () Bool)

(assert (=> b!184071 m!187805))

(declare-fun m!187807 () Bool)

(assert (=> b!184068 m!187807))

(declare-fun m!187809 () Bool)

(assert (=> bm!8414 m!187809))

(assert (=> b!184074 m!187799))

(assert (=> b!184074 m!187801))

(assert (=> b!184074 m!187801))

(assert (=> b!184074 m!187803))

(declare-fun m!187811 () Bool)

(assert (=> d!46495 m!187811))

(declare-fun m!187813 () Bool)

(assert (=> d!46495 m!187813))

(declare-fun m!187815 () Bool)

(assert (=> d!46495 m!187815))

(assert (=> d!46495 m!186817))

(assert (=> b!184075 m!187799))

(declare-fun m!187817 () Bool)

(assert (=> b!184075 m!187817))

(assert (=> b!184075 m!187359))

(assert (=> b!184072 m!187799))

(declare-fun m!187819 () Bool)

(assert (=> b!184072 m!187819))

(assert (=> b!184077 m!187799))

(declare-fun m!187821 () Bool)

(assert (=> b!184077 m!187821))

(assert (=> b!184077 m!187821))

(declare-fun m!187823 () Bool)

(assert (=> b!184077 m!187823))

(assert (=> b!184076 m!187799))

(assert (=> b!184076 m!187801))

(assert (=> b!184076 m!187801))

(assert (=> b!184076 m!187803))

(assert (=> b!184076 m!187803))

(declare-fun m!187825 () Bool)

(assert (=> b!184076 m!187825))

(declare-fun m!187827 () Bool)

(assert (=> b!184080 m!187827))

(assert (=> b!183373 d!46495))

(declare-fun d!46497 () Bool)

(assert (=> d!46497 (= (isEmpty!1431 (t!28448 tokens!465)) ((_ is Nil!3076) (t!28448 tokens!465)))))

(assert (=> b!183373 d!46497))

(declare-fun d!46499 () Bool)

(assert (=> d!46499 (= lt!60892 (_2!1757 lt!60901))))

(declare-fun lt!61313 () Unit!2832)

(declare-fun choose!1896 (List!3084 List!3084 List!3084 List!3084 List!3084) Unit!2832)

(assert (=> d!46499 (= lt!61313 (choose!1896 lt!60913 lt!60892 lt!60913 (_2!1757 lt!60901) lt!60902))))

(assert (=> d!46499 (isPrefix!255 lt!60913 lt!60902)))

(assert (=> d!46499 (= (lemmaSamePrefixThenSameSuffix!80 lt!60913 lt!60892 lt!60913 (_2!1757 lt!60901) lt!60902) lt!61313)))

(declare-fun bs!18329 () Bool)

(assert (= bs!18329 d!46499))

(declare-fun m!187829 () Bool)

(assert (=> bs!18329 m!187829))

(declare-fun m!187831 () Bool)

(assert (=> bs!18329 m!187831))

(assert (=> b!183373 d!46499))

(declare-fun d!46501 () Bool)

(assert (=> d!46501 (= (isEmpty!1431 tokens!465) ((_ is Nil!3076) tokens!465))))

(assert (=> b!183373 d!46501))

(declare-fun d!46503 () Bool)

(declare-fun e!112460 () Bool)

(assert (=> d!46503 e!112460))

(declare-fun res!83701 () Bool)

(assert (=> d!46503 (=> res!83701 e!112460)))

(assert (=> d!46503 (= res!83701 (isEmpty!1431 tokens!465))))

(declare-fun lt!61316 () Unit!2832)

(declare-fun choose!1897 (LexerInterface!445 List!3085 List!3086 Token!862) Unit!2832)

(assert (=> d!46503 (= lt!61316 (choose!1897 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!46503 (not (isEmpty!1433 rules!1920))))

(assert (=> d!46503 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!20 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!61316)))

(declare-fun b!184163 () Bool)

(declare-fun e!112461 () Bool)

(assert (=> b!184163 (= e!112460 e!112461)))

(declare-fun res!83702 () Bool)

(assert (=> b!184163 (=> (not res!83702) (not e!112461))))

(assert (=> b!184163 (= res!83702 (isDefined!247 (maxPrefix!175 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!184164 () Bool)

(assert (=> b!184164 (= e!112461 (= (_1!1757 (get!871 (maxPrefix!175 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!138 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!640 tokens!465)))))

(assert (= (and d!46503 (not res!83701)) b!184163))

(assert (= (and b!184163 res!83702) b!184164))

(assert (=> d!46503 m!186669))

(declare-fun m!187857 () Bool)

(assert (=> d!46503 m!187857))

(assert (=> d!46503 m!186627))

(assert (=> b!184163 m!186699))

(assert (=> b!184163 m!186699))

(declare-fun m!187859 () Bool)

(assert (=> b!184163 m!187859))

(assert (=> b!184163 m!187859))

(declare-fun m!187861 () Bool)

(assert (=> b!184163 m!187861))

(assert (=> b!184164 m!186699))

(assert (=> b!184164 m!186699))

(assert (=> b!184164 m!187859))

(assert (=> b!184164 m!187859))

(declare-fun m!187863 () Bool)

(assert (=> b!184164 m!187863))

(assert (=> b!184164 m!186585))

(assert (=> b!183373 d!46503))

(declare-fun b!184173 () Bool)

(declare-fun e!112470 () Bool)

(declare-fun e!112468 () Bool)

(assert (=> b!184173 (= e!112470 e!112468)))

(declare-fun res!83711 () Bool)

(assert (=> b!184173 (=> (not res!83711) (not e!112468))))

(assert (=> b!184173 (= res!83711 (not ((_ is Nil!3074) lt!60894)))))

(declare-fun d!46509 () Bool)

(declare-fun e!112469 () Bool)

(assert (=> d!46509 e!112469))

(declare-fun res!83713 () Bool)

(assert (=> d!46509 (=> res!83713 e!112469)))

(declare-fun lt!61319 () Bool)

(assert (=> d!46509 (= res!83713 (not lt!61319))))

(assert (=> d!46509 (= lt!61319 e!112470)))

(declare-fun res!83714 () Bool)

(assert (=> d!46509 (=> res!83714 e!112470)))

(assert (=> d!46509 (= res!83714 ((_ is Nil!3074) lt!60913))))

(assert (=> d!46509 (= (isPrefix!255 lt!60913 lt!60894) lt!61319)))

(declare-fun b!184174 () Bool)

(declare-fun res!83712 () Bool)

(assert (=> b!184174 (=> (not res!83712) (not e!112468))))

(assert (=> b!184174 (= res!83712 (= (head!641 lt!60913) (head!641 lt!60894)))))

(declare-fun b!184176 () Bool)

(assert (=> b!184176 (= e!112469 (>= (size!2499 lt!60894) (size!2499 lt!60913)))))

(declare-fun b!184175 () Bool)

(assert (=> b!184175 (= e!112468 (isPrefix!255 (tail!369 lt!60913) (tail!369 lt!60894)))))

(assert (= (and d!46509 (not res!83714)) b!184173))

(assert (= (and b!184173 res!83711) b!184174))

(assert (= (and b!184174 res!83712) b!184175))

(assert (= (and d!46509 (not res!83713)) b!184176))

(assert (=> b!184174 m!187259))

(declare-fun m!187865 () Bool)

(assert (=> b!184174 m!187865))

(declare-fun m!187867 () Bool)

(assert (=> b!184176 m!187867))

(assert (=> b!184176 m!186763))

(assert (=> b!184175 m!187261))

(declare-fun m!187869 () Bool)

(assert (=> b!184175 m!187869))

(assert (=> b!184175 m!187261))

(assert (=> b!184175 m!187869))

(declare-fun m!187871 () Bool)

(assert (=> b!184175 m!187871))

(assert (=> b!183373 d!46509))

(declare-fun d!46511 () Bool)

(assert (=> d!46511 (isPrefix!255 lt!60913 (++!726 lt!60913 lt!60892))))

(declare-fun lt!61322 () Unit!2832)

(declare-fun choose!1898 (List!3084 List!3084) Unit!2832)

(assert (=> d!46511 (= lt!61322 (choose!1898 lt!60913 lt!60892))))

(assert (=> d!46511 (= (lemmaConcatTwoListThenFirstIsPrefix!150 lt!60913 lt!60892) lt!61322)))

(declare-fun bs!18332 () Bool)

(assert (= bs!18332 d!46511))

(assert (=> bs!18332 m!186639))

(assert (=> bs!18332 m!186639))

(declare-fun m!187873 () Bool)

(assert (=> bs!18332 m!187873))

(declare-fun m!187875 () Bool)

(assert (=> bs!18332 m!187875))

(assert (=> b!183373 d!46511))

(declare-fun d!46513 () Bool)

(assert (=> d!46513 (= (get!871 (maxPrefix!175 thiss!17480 rules!1920 lt!60902)) (v!13882 (maxPrefix!175 thiss!17480 rules!1920 lt!60902)))))

(assert (=> b!183373 d!46513))

(assert (=> b!183373 d!46291))

(declare-fun d!46515 () Bool)

(declare-fun res!83719 () Bool)

(declare-fun e!112473 () Bool)

(assert (=> d!46515 (=> (not res!83719) (not e!112473))))

(assert (=> d!46515 (= res!83719 (not (isEmpty!1434 (originalCharacters!602 separatorToken!170))))))

(assert (=> d!46515 (= (inv!3906 separatorToken!170) e!112473)))

(declare-fun b!184181 () Bool)

(declare-fun res!83720 () Bool)

(assert (=> b!184181 (=> (not res!83720) (not e!112473))))

(assert (=> b!184181 (= res!83720 (= (originalCharacters!602 separatorToken!170) (list!1129 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (value!20247 separatorToken!170)))))))

(declare-fun b!184182 () Bool)

(assert (=> b!184182 (= e!112473 (= (size!2495 separatorToken!170) (size!2499 (originalCharacters!602 separatorToken!170))))))

(assert (= (and d!46515 res!83719) b!184181))

(assert (= (and b!184181 res!83720) b!184182))

(declare-fun b_lambda!4437 () Bool)

(assert (=> (not b_lambda!4437) (not b!184181)))

(assert (=> b!184181 t!28480))

(declare-fun b_and!12637 () Bool)

(assert (= b_and!12623 (and (=> t!28480 result!10470) b_and!12637)))

(assert (=> b!184181 t!28482))

(declare-fun b_and!12639 () Bool)

(assert (= b_and!12625 (and (=> t!28482 result!10474) b_and!12639)))

(assert (=> b!184181 t!28484))

(declare-fun b_and!12641 () Bool)

(assert (= b_and!12627 (and (=> t!28484 result!10476) b_and!12641)))

(declare-fun m!187877 () Bool)

(assert (=> d!46515 m!187877))

(assert (=> b!184181 m!187343))

(assert (=> b!184181 m!187343))

(declare-fun m!187879 () Bool)

(assert (=> b!184181 m!187879))

(declare-fun m!187881 () Bool)

(assert (=> b!184182 m!187881))

(assert (=> start!19834 d!46515))

(declare-fun d!46517 () Bool)

(assert (=> d!46517 (= (get!871 lt!60897) (v!13882 lt!60897))))

(assert (=> b!183394 d!46517))

(declare-fun d!46519 () Bool)

(assert (=> d!46519 (= (head!640 tokens!465) (h!8473 tokens!465))))

(assert (=> b!183394 d!46519))

(declare-fun d!46521 () Bool)

(declare-fun res!83723 () Bool)

(declare-fun e!112476 () Bool)

(assert (=> d!46521 (=> (not res!83723) (not e!112476))))

(declare-fun rulesValid!159 (LexerInterface!445 List!3085) Bool)

(assert (=> d!46521 (= res!83723 (rulesValid!159 thiss!17480 rules!1920))))

(assert (=> d!46521 (= (rulesInvariant!411 thiss!17480 rules!1920) e!112476)))

(declare-fun b!184185 () Bool)

(declare-datatypes ((List!3088 0))(
  ( (Nil!3078) (Cons!3078 (h!8475 String!3985) (t!28518 List!3088)) )
))
(declare-fun noDuplicateTag!159 (LexerInterface!445 List!3085 List!3088) Bool)

(assert (=> b!184185 (= e!112476 (noDuplicateTag!159 thiss!17480 rules!1920 Nil!3078))))

(assert (= (and d!46521 res!83723) b!184185))

(declare-fun m!187883 () Bool)

(assert (=> d!46521 m!187883))

(declare-fun m!187885 () Bool)

(assert (=> b!184185 m!187885))

(assert (=> b!183393 d!46521))

(declare-fun d!46523 () Bool)

(assert (=> d!46523 (= (inv!3902 (tag!737 (h!8472 rules!1920))) (= (mod (str.len (value!20246 (tag!737 (h!8472 rules!1920)))) 2) 0))))

(assert (=> b!183381 d!46523))

(declare-fun d!46525 () Bool)

(declare-fun res!83724 () Bool)

(declare-fun e!112477 () Bool)

(assert (=> d!46525 (=> (not res!83724) (not e!112477))))

(assert (=> d!46525 (= res!83724 (semiInverseModEq!193 (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toValue!1230 (transformation!559 (h!8472 rules!1920)))))))

(assert (=> d!46525 (= (inv!3905 (transformation!559 (h!8472 rules!1920))) e!112477)))

(declare-fun b!184186 () Bool)

(assert (=> b!184186 (= e!112477 (equivClasses!176 (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toValue!1230 (transformation!559 (h!8472 rules!1920)))))))

(assert (= (and d!46525 res!83724) b!184186))

(declare-fun m!187887 () Bool)

(assert (=> d!46525 m!187887))

(declare-fun m!187889 () Bool)

(assert (=> b!184186 m!187889))

(assert (=> b!183381 d!46525))

(declare-fun d!46527 () Bool)

(declare-fun res!83729 () Bool)

(declare-fun e!112482 () Bool)

(assert (=> d!46527 (=> res!83729 e!112482)))

(assert (=> d!46527 (= res!83729 ((_ is Nil!3076) tokens!465))))

(assert (=> d!46527 (= (forall!633 tokens!465 lambda!5469) e!112482)))

(declare-fun b!184191 () Bool)

(declare-fun e!112483 () Bool)

(assert (=> b!184191 (= e!112482 e!112483)))

(declare-fun res!83730 () Bool)

(assert (=> b!184191 (=> (not res!83730) (not e!112483))))

(assert (=> b!184191 (= res!83730 (dynLambda!1257 lambda!5469 (h!8473 tokens!465)))))

(declare-fun b!184192 () Bool)

(assert (=> b!184192 (= e!112483 (forall!633 (t!28448 tokens!465) lambda!5469))))

(assert (= (and d!46527 (not res!83729)) b!184191))

(assert (= (and b!184191 res!83730) b!184192))

(declare-fun b_lambda!4439 () Bool)

(assert (=> (not b_lambda!4439) (not b!184191)))

(declare-fun m!187891 () Bool)

(assert (=> b!184191 m!187891))

(declare-fun m!187893 () Bool)

(assert (=> b!184192 m!187893))

(assert (=> b!183401 d!46527))

(declare-fun d!46529 () Bool)

(assert (=> d!46529 (= (list!1129 (seqFromList!495 lt!60902)) (list!1132 (c!35641 (seqFromList!495 lt!60902))))))

(declare-fun bs!18333 () Bool)

(assert (= bs!18333 d!46529))

(declare-fun m!187895 () Bool)

(assert (=> bs!18333 m!187895))

(assert (=> b!183380 d!46529))

(declare-fun d!46531 () Bool)

(assert (=> d!46531 (= (seqFromList!495 lt!60902) (fromListB!193 lt!60902))))

(declare-fun bs!18334 () Bool)

(assert (= bs!18334 d!46531))

(declare-fun m!187897 () Bool)

(assert (=> bs!18334 m!187897))

(assert (=> b!183380 d!46531))

(declare-fun d!46533 () Bool)

(assert (=> d!46533 (= (isEmpty!1434 (_2!1757 lt!60899)) ((_ is Nil!3074) (_2!1757 lt!60899)))))

(assert (=> b!183400 d!46533))

(declare-fun d!46535 () Bool)

(declare-fun lt!61323 () Bool)

(declare-fun e!112485 () Bool)

(assert (=> d!46535 (= lt!61323 e!112485)))

(declare-fun res!83731 () Bool)

(assert (=> d!46535 (=> (not res!83731) (not e!112485))))

(assert (=> d!46535 (= res!83731 (= (list!1133 (_1!1759 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 (h!8473 tokens!465)))))) (list!1133 (singletonSeq!111 (h!8473 tokens!465)))))))

(declare-fun e!112484 () Bool)

(assert (=> d!46535 (= lt!61323 e!112484)))

(declare-fun res!83733 () Bool)

(assert (=> d!46535 (=> (not res!83733) (not e!112484))))

(declare-fun lt!61324 () tuple2!3086)

(assert (=> d!46535 (= res!83733 (= (size!2500 (_1!1759 lt!61324)) 1))))

(assert (=> d!46535 (= lt!61324 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 (h!8473 tokens!465)))))))

(assert (=> d!46535 (not (isEmpty!1433 rules!1920))))

(assert (=> d!46535 (= (rulesProduceIndividualToken!194 thiss!17480 rules!1920 (h!8473 tokens!465)) lt!61323)))

(declare-fun b!184193 () Bool)

(declare-fun res!83732 () Bool)

(assert (=> b!184193 (=> (not res!83732) (not e!112484))))

(assert (=> b!184193 (= res!83732 (= (apply!463 (_1!1759 lt!61324) 0) (h!8473 tokens!465)))))

(declare-fun b!184194 () Bool)

(assert (=> b!184194 (= e!112484 (isEmpty!1439 (_2!1759 lt!61324)))))

(declare-fun b!184195 () Bool)

(assert (=> b!184195 (= e!112485 (isEmpty!1439 (_2!1759 (lex!245 thiss!17480 rules!1920 (print!176 thiss!17480 (singletonSeq!111 (h!8473 tokens!465)))))))))

(assert (= (and d!46535 res!83733) b!184193))

(assert (= (and b!184193 res!83732) b!184194))

(assert (= (and d!46535 res!83731) b!184195))

(declare-fun m!187899 () Bool)

(assert (=> d!46535 m!187899))

(assert (=> d!46535 m!186989))

(declare-fun m!187901 () Bool)

(assert (=> d!46535 m!187901))

(assert (=> d!46535 m!186627))

(assert (=> d!46535 m!186581))

(declare-fun m!187903 () Bool)

(assert (=> d!46535 m!187903))

(assert (=> d!46535 m!186581))

(assert (=> d!46535 m!186989))

(assert (=> d!46535 m!186581))

(declare-fun m!187905 () Bool)

(assert (=> d!46535 m!187905))

(declare-fun m!187907 () Bool)

(assert (=> b!184193 m!187907))

(declare-fun m!187909 () Bool)

(assert (=> b!184194 m!187909))

(assert (=> b!184195 m!186581))

(assert (=> b!184195 m!186581))

(assert (=> b!184195 m!186989))

(assert (=> b!184195 m!186989))

(assert (=> b!184195 m!187901))

(declare-fun m!187911 () Bool)

(assert (=> b!184195 m!187911))

(assert (=> b!183399 d!46535))

(declare-fun d!46537 () Bool)

(assert (=> d!46537 (= (inv!3902 (tag!737 (rule!1074 (h!8473 tokens!465)))) (= (mod (str.len (value!20246 (tag!737 (rule!1074 (h!8473 tokens!465))))) 2) 0))))

(assert (=> b!183378 d!46537))

(declare-fun d!46539 () Bool)

(declare-fun res!83734 () Bool)

(declare-fun e!112486 () Bool)

(assert (=> d!46539 (=> (not res!83734) (not e!112486))))

(assert (=> d!46539 (= res!83734 (semiInverseModEq!193 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toValue!1230 (transformation!559 (rule!1074 (h!8473 tokens!465))))))))

(assert (=> d!46539 (= (inv!3905 (transformation!559 (rule!1074 (h!8473 tokens!465)))) e!112486)))

(declare-fun b!184196 () Bool)

(assert (=> b!184196 (= e!112486 (equivClasses!176 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toValue!1230 (transformation!559 (rule!1074 (h!8473 tokens!465))))))))

(assert (= (and d!46539 res!83734) b!184196))

(declare-fun m!187913 () Bool)

(assert (=> d!46539 m!187913))

(declare-fun m!187915 () Bool)

(assert (=> b!184196 m!187915))

(assert (=> b!183378 d!46539))

(declare-fun d!46541 () Bool)

(declare-fun res!83735 () Bool)

(declare-fun e!112487 () Bool)

(assert (=> d!46541 (=> (not res!83735) (not e!112487))))

(assert (=> d!46541 (= res!83735 (not (isEmpty!1434 (originalCharacters!602 (h!8473 tokens!465)))))))

(assert (=> d!46541 (= (inv!3906 (h!8473 tokens!465)) e!112487)))

(declare-fun b!184197 () Bool)

(declare-fun res!83736 () Bool)

(assert (=> b!184197 (=> (not res!83736) (not e!112487))))

(assert (=> b!184197 (= res!83736 (= (originalCharacters!602 (h!8473 tokens!465)) (list!1129 (dynLambda!1256 (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (value!20247 (h!8473 tokens!465))))))))

(declare-fun b!184198 () Bool)

(assert (=> b!184198 (= e!112487 (= (size!2495 (h!8473 tokens!465)) (size!2499 (originalCharacters!602 (h!8473 tokens!465)))))))

(assert (= (and d!46541 res!83735) b!184197))

(assert (= (and b!184197 res!83736) b!184198))

(declare-fun b_lambda!4441 () Bool)

(assert (=> (not b_lambda!4441) (not b!184197)))

(assert (=> b!184197 t!28486))

(declare-fun b_and!12643 () Bool)

(assert (= b_and!12637 (and (=> t!28486 result!10478) b_and!12643)))

(assert (=> b!184197 t!28488))

(declare-fun b_and!12645 () Bool)

(assert (= b_and!12639 (and (=> t!28488 result!10480) b_and!12645)))

(assert (=> b!184197 t!28490))

(declare-fun b_and!12647 () Bool)

(assert (= b_and!12641 (and (=> t!28490 result!10482) b_and!12647)))

(declare-fun m!187917 () Bool)

(assert (=> d!46541 m!187917))

(assert (=> b!184197 m!187355))

(assert (=> b!184197 m!187355))

(declare-fun m!187919 () Bool)

(assert (=> b!184197 m!187919))

(declare-fun m!187921 () Bool)

(assert (=> b!184198 m!187921))

(assert (=> b!183377 d!46541))

(declare-fun b!184203 () Bool)

(declare-fun e!112490 () Bool)

(declare-fun tp_is_empty!1683 () Bool)

(declare-fun tp!87042 () Bool)

(assert (=> b!184203 (= e!112490 (and tp_is_empty!1683 tp!87042))))

(assert (=> b!183397 (= tp!86964 e!112490)))

(assert (= (and b!183397 ((_ is Cons!3074) (originalCharacters!602 (h!8473 tokens!465)))) b!184203))

(declare-fun e!112493 () Bool)

(assert (=> b!183376 (= tp!86965 e!112493)))

(declare-fun b!184217 () Bool)

(declare-fun tp!87056 () Bool)

(declare-fun tp!87055 () Bool)

(assert (=> b!184217 (= e!112493 (and tp!87056 tp!87055))))

(declare-fun b!184214 () Bool)

(assert (=> b!184214 (= e!112493 tp_is_empty!1683)))

(declare-fun b!184215 () Bool)

(declare-fun tp!87053 () Bool)

(declare-fun tp!87054 () Bool)

(assert (=> b!184215 (= e!112493 (and tp!87053 tp!87054))))

(declare-fun b!184216 () Bool)

(declare-fun tp!87057 () Bool)

(assert (=> b!184216 (= e!112493 tp!87057)))

(assert (= (and b!183376 ((_ is ElementMatch!783) (regex!559 (rule!1074 separatorToken!170)))) b!184214))

(assert (= (and b!183376 ((_ is Concat!1365) (regex!559 (rule!1074 separatorToken!170)))) b!184215))

(assert (= (and b!183376 ((_ is Star!783) (regex!559 (rule!1074 separatorToken!170)))) b!184216))

(assert (= (and b!183376 ((_ is Union!783) (regex!559 (rule!1074 separatorToken!170)))) b!184217))

(declare-fun b!184220 () Bool)

(declare-fun e!112496 () Bool)

(assert (=> b!184220 (= e!112496 true)))

(declare-fun b!184219 () Bool)

(declare-fun e!112495 () Bool)

(assert (=> b!184219 (= e!112495 e!112496)))

(declare-fun b!184218 () Bool)

(declare-fun e!112494 () Bool)

(assert (=> b!184218 (= e!112494 e!112495)))

(assert (=> b!183414 e!112494))

(assert (= b!184219 b!184220))

(assert (= b!184218 b!184219))

(assert (= (and b!183414 ((_ is Cons!3075) (t!28447 rules!1920))) b!184218))

(assert (=> b!184220 (< (dynLambda!1251 order!1829 (toValue!1230 (transformation!559 (h!8472 (t!28447 rules!1920))))) (dynLambda!1252 order!1831 lambda!5470))))

(assert (=> b!184220 (< (dynLambda!1253 order!1833 (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920))))) (dynLambda!1252 order!1831 lambda!5470))))

(declare-fun b!184221 () Bool)

(declare-fun e!112497 () Bool)

(declare-fun tp!87058 () Bool)

(assert (=> b!184221 (= e!112497 (and tp_is_empty!1683 tp!87058))))

(assert (=> b!183374 (= tp!86971 e!112497)))

(assert (= (and b!183374 ((_ is Cons!3074) (originalCharacters!602 separatorToken!170))) b!184221))

(declare-fun b!184232 () Bool)

(declare-fun b_free!7189 () Bool)

(declare-fun b_next!7189 () Bool)

(assert (=> b!184232 (= b_free!7189 (not b_next!7189))))

(declare-fun tp!87068 () Bool)

(declare-fun b_and!12649 () Bool)

(assert (=> b!184232 (= tp!87068 b_and!12649)))

(declare-fun b_free!7191 () Bool)

(declare-fun b_next!7191 () Bool)

(assert (=> b!184232 (= b_free!7191 (not b_next!7191))))

(declare-fun tb!7649 () Bool)

(declare-fun t!28510 () Bool)

(assert (=> (and b!184232 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170)))) t!28510) tb!7649))

(declare-fun result!10506 () Bool)

(assert (= result!10506 result!10470))

(assert (=> d!46371 t!28510))

(declare-fun t!28512 () Bool)

(declare-fun tb!7651 () Bool)

(assert (=> (and b!184232 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465))))) t!28512) tb!7651))

(declare-fun result!10508 () Bool)

(assert (= result!10508 result!10478))

(assert (=> d!46375 t!28512))

(assert (=> b!184181 t!28510))

(assert (=> b!184197 t!28512))

(declare-fun tp!87067 () Bool)

(declare-fun b_and!12651 () Bool)

(assert (=> b!184232 (= tp!87067 (and (=> t!28510 result!10506) (=> t!28512 result!10508) b_and!12651))))

(declare-fun e!112506 () Bool)

(assert (=> b!184232 (= e!112506 (and tp!87068 tp!87067))))

(declare-fun b!184231 () Bool)

(declare-fun tp!87069 () Bool)

(declare-fun e!112508 () Bool)

(assert (=> b!184231 (= e!112508 (and tp!87069 (inv!3902 (tag!737 (h!8472 (t!28447 rules!1920)))) (inv!3905 (transformation!559 (h!8472 (t!28447 rules!1920)))) e!112506))))

(declare-fun b!184230 () Bool)

(declare-fun e!112507 () Bool)

(declare-fun tp!87070 () Bool)

(assert (=> b!184230 (= e!112507 (and e!112508 tp!87070))))

(assert (=> b!183403 (= tp!86968 e!112507)))

(assert (= b!184231 b!184232))

(assert (= b!184230 b!184231))

(assert (= (and b!183403 ((_ is Cons!3075) (t!28447 rules!1920))) b!184230))

(declare-fun m!187923 () Bool)

(assert (=> b!184231 m!187923))

(declare-fun m!187925 () Bool)

(assert (=> b!184231 m!187925))

(declare-fun e!112510 () Bool)

(assert (=> b!183381 (= tp!86969 e!112510)))

(declare-fun b!184236 () Bool)

(declare-fun tp!87074 () Bool)

(declare-fun tp!87073 () Bool)

(assert (=> b!184236 (= e!112510 (and tp!87074 tp!87073))))

(declare-fun b!184233 () Bool)

(assert (=> b!184233 (= e!112510 tp_is_empty!1683)))

(declare-fun b!184234 () Bool)

(declare-fun tp!87071 () Bool)

(declare-fun tp!87072 () Bool)

(assert (=> b!184234 (= e!112510 (and tp!87071 tp!87072))))

(declare-fun b!184235 () Bool)

(declare-fun tp!87075 () Bool)

(assert (=> b!184235 (= e!112510 tp!87075)))

(assert (= (and b!183381 ((_ is ElementMatch!783) (regex!559 (h!8472 rules!1920)))) b!184233))

(assert (= (and b!183381 ((_ is Concat!1365) (regex!559 (h!8472 rules!1920)))) b!184234))

(assert (= (and b!183381 ((_ is Star!783) (regex!559 (h!8472 rules!1920)))) b!184235))

(assert (= (and b!183381 ((_ is Union!783) (regex!559 (h!8472 rules!1920)))) b!184236))

(declare-fun e!112511 () Bool)

(assert (=> b!183378 (= tp!86973 e!112511)))

(declare-fun b!184240 () Bool)

(declare-fun tp!87079 () Bool)

(declare-fun tp!87078 () Bool)

(assert (=> b!184240 (= e!112511 (and tp!87079 tp!87078))))

(declare-fun b!184237 () Bool)

(assert (=> b!184237 (= e!112511 tp_is_empty!1683)))

(declare-fun b!184238 () Bool)

(declare-fun tp!87076 () Bool)

(declare-fun tp!87077 () Bool)

(assert (=> b!184238 (= e!112511 (and tp!87076 tp!87077))))

(declare-fun b!184239 () Bool)

(declare-fun tp!87080 () Bool)

(assert (=> b!184239 (= e!112511 tp!87080)))

(assert (= (and b!183378 ((_ is ElementMatch!783) (regex!559 (rule!1074 (h!8473 tokens!465))))) b!184237))

(assert (= (and b!183378 ((_ is Concat!1365) (regex!559 (rule!1074 (h!8473 tokens!465))))) b!184238))

(assert (= (and b!183378 ((_ is Star!783) (regex!559 (rule!1074 (h!8473 tokens!465))))) b!184239))

(assert (= (and b!183378 ((_ is Union!783) (regex!559 (rule!1074 (h!8473 tokens!465))))) b!184240))

(declare-fun b!184254 () Bool)

(declare-fun b_free!7193 () Bool)

(declare-fun b_next!7193 () Bool)

(assert (=> b!184254 (= b_free!7193 (not b_next!7193))))

(declare-fun tp!87093 () Bool)

(declare-fun b_and!12653 () Bool)

(assert (=> b!184254 (= tp!87093 b_and!12653)))

(declare-fun b_free!7195 () Bool)

(declare-fun b_next!7195 () Bool)

(assert (=> b!184254 (= b_free!7195 (not b_next!7195))))

(declare-fun t!28514 () Bool)

(declare-fun tb!7653 () Bool)

(assert (=> (and b!184254 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170)))) t!28514) tb!7653))

(declare-fun result!10512 () Bool)

(assert (= result!10512 result!10470))

(assert (=> d!46371 t!28514))

(declare-fun t!28516 () Bool)

(declare-fun tb!7655 () Bool)

(assert (=> (and b!184254 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465))))) t!28516) tb!7655))

(declare-fun result!10514 () Bool)

(assert (= result!10514 result!10478))

(assert (=> d!46375 t!28516))

(assert (=> b!184181 t!28514))

(assert (=> b!184197 t!28516))

(declare-fun b_and!12655 () Bool)

(declare-fun tp!87094 () Bool)

(assert (=> b!184254 (= tp!87094 (and (=> t!28514 result!10512) (=> t!28516 result!10514) b_and!12655))))

(declare-fun e!112529 () Bool)

(assert (=> b!183377 (= tp!86966 e!112529)))

(declare-fun e!112526 () Bool)

(declare-fun e!112527 () Bool)

(declare-fun tp!87092 () Bool)

(declare-fun b!184252 () Bool)

(assert (=> b!184252 (= e!112526 (and (inv!21 (value!20247 (h!8473 (t!28448 tokens!465)))) e!112527 tp!87092))))

(declare-fun e!112524 () Bool)

(assert (=> b!184254 (= e!112524 (and tp!87093 tp!87094))))

(declare-fun tp!87095 () Bool)

(declare-fun b!184253 () Bool)

(assert (=> b!184253 (= e!112527 (and tp!87095 (inv!3902 (tag!737 (rule!1074 (h!8473 (t!28448 tokens!465))))) (inv!3905 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) e!112524))))

(declare-fun b!184251 () Bool)

(declare-fun tp!87091 () Bool)

(assert (=> b!184251 (= e!112529 (and (inv!3906 (h!8473 (t!28448 tokens!465))) e!112526 tp!87091))))

(assert (= b!184253 b!184254))

(assert (= b!184252 b!184253))

(assert (= b!184251 b!184252))

(assert (= (and b!183377 ((_ is Cons!3076) (t!28448 tokens!465))) b!184251))

(declare-fun m!187927 () Bool)

(assert (=> b!184252 m!187927))

(declare-fun m!187929 () Bool)

(assert (=> b!184253 m!187929))

(declare-fun m!187931 () Bool)

(assert (=> b!184253 m!187931))

(declare-fun m!187933 () Bool)

(assert (=> b!184251 m!187933))

(declare-fun b_lambda!4443 () Bool)

(assert (= b_lambda!4417 (or (and b!184232 b_free!7191 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!183382 b_free!7175 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!184254 b_free!7195 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!183405 b_free!7179) (and b!183402 b_free!7171 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) b_lambda!4443)))

(declare-fun b_lambda!4445 () Bool)

(assert (= b_lambda!4419 (or (and b!183382 b_free!7175) (and b!184254 b_free!7195 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!184232 b_free!7191 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!183405 b_free!7179 (= (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!183402 b_free!7171 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) b_lambda!4445)))

(declare-fun b_lambda!4447 () Bool)

(assert (= b_lambda!4423 (or b!183388 b_lambda!4447)))

(declare-fun bs!18335 () Bool)

(declare-fun d!46543 () Bool)

(assert (= bs!18335 (and d!46543 b!183388)))

(assert (=> bs!18335 (= (dynLambda!1257 lambda!5470 (h!8473 tokens!465)) (rulesProduceIndividualToken!194 thiss!17480 rules!1920 (h!8473 tokens!465)))))

(assert (=> bs!18335 m!186623))

(assert (=> d!46471 d!46543))

(declare-fun b_lambda!4449 () Bool)

(assert (= b_lambda!4441 (or (and b!183382 b_free!7175) (and b!184254 b_free!7195 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!184232 b_free!7191 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!183405 b_free!7179 (= (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) (and b!183402 b_free!7171 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))))) b_lambda!4449)))

(declare-fun b_lambda!4451 () Bool)

(assert (= b_lambda!4437 (or (and b!184232 b_free!7191 (= (toChars!1089 (transformation!559 (h!8472 (t!28447 rules!1920)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!183382 b_free!7175 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 tokens!465)))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!184254 b_free!7195 (= (toChars!1089 (transformation!559 (rule!1074 (h!8473 (t!28448 tokens!465))))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) (and b!183405 b_free!7179) (and b!183402 b_free!7171 (= (toChars!1089 (transformation!559 (h!8472 rules!1920))) (toChars!1089 (transformation!559 (rule!1074 separatorToken!170))))) b_lambda!4451)))

(declare-fun b_lambda!4453 () Bool)

(assert (= b_lambda!4439 (or b!183401 b_lambda!4453)))

(declare-fun bs!18336 () Bool)

(declare-fun d!46545 () Bool)

(assert (= bs!18336 (and d!46545 b!183401)))

(assert (=> bs!18336 (= (dynLambda!1257 lambda!5469 (h!8473 tokens!465)) (not (isSeparator!559 (rule!1074 (h!8473 tokens!465)))))))

(assert (=> b!184191 d!46545))

(check-sat (not b!183850) (not d!46407) (not b!184053) (not b!183473) (not b!184230) (not d!46417) (not b!184068) (not b!184055) (not b!184239) (not d!46515) (not b_lambda!4445) b_and!12585 (not d!46469) (not d!46363) (not b_next!7189) (not b!184071) (not b!184164) (not d!46379) (not bm!8321) (not d!46287) (not bm!8407) (not b_next!7179) (not d!46487) (not b!183823) (not b!183798) (not b!183721) (not b!183809) (not b!183929) (not b_next!7195) (not b!183834) (not b!183722) (not b!183634) (not b!183805) (not b!183930) (not b!184238) (not d!46531) (not b!183848) (not b!183571) (not bm!8414) (not b!184011) (not b!183633) (not b!184252) b_and!12589 (not bm!8379) (not b_lambda!4443) (not b!184234) (not b!184231) (not d!46439) (not bm!8403) (not b_lambda!4451) (not d!46499) (not bm!8401) (not b!183821) (not d!46511) (not d!46387) (not d!46541) (not b!183978) (not bm!8400) (not b!184215) (not b!184042) (not b!184217) (not b!184240) (not b!183575) (not b!183515) (not d!46301) (not b!183514) b_and!12653 (not bm!8351) (not b!184044) (not b!183782) (not b!183924) (not b_next!7177) (not d!46471) (not b!183509) (not b!183806) (not b!184182) b_and!12581 (not d!46381) (not b_next!7173) (not b!183928) (not b!183797) (not b!183578) (not b!183572) (not bs!18335) (not b!183982) (not d!46373) (not b!183829) (not b!184192) (not b!183472) (not b!184186) (not d!46299) (not b!184021) (not bm!8399) (not d!46367) (not d!46495) (not b!183922) (not b!184216) (not b!184198) (not b!184185) (not bm!8350) (not b!184235) b_and!12649 (not d!46503) (not d!46535) (not b!184080) (not b!183789) b_and!12643 (not d!46385) (not b!183796) (not b!183516) b_and!12645 (not d!46539) (not b!183512) b_and!12655 (not b!183926) (not b!183983) (not d!46521) (not b!183927) (not b!184236) (not b!184013) (not d!46449) (not b_lambda!4447) (not b!183980) (not b!183508) (not b!184072) (not d!46419) (not b!183781) (not b_next!7175) (not b!183873) (not b!183793) (not b!184075) (not b!183833) (not d!46365) (not tb!7629) (not b!183918) (not b!184016) (not b!183923) (not b!183998) (not d!46447) (not b!183822) (not b!183775) (not b!183513) (not d!46491) (not b!184194) (not b!183640) (not bm!8413) (not b!184253) (not b_next!7191) (not b!184046) (not b!184196) (not b!184175) (not b!183883) (not b!184074) (not b!184193) (not b!183813) (not b_next!7169) (not d!46445) (not b_next!7171) (not b!183787) (not b!183919) (not d!46415) (not d!46413) (not bm!8405) (not b!184043) (not b!183812) (not b!184195) (not b!184218) (not d!46309) (not bm!8397) (not b!184010) (not bm!8347) tp_is_empty!1683 (not b!184174) (not b!183979) (not b!183635) (not b!183849) (not b!183981) (not bm!8404) (not b!184221) (not b!183788) (not d!46525) (not d!46371) (not b!183808) (not b!184163) (not b!183985) (not b!183868) (not bm!8378) (not b!184022) (not d!46351) (not b!184076) (not d!46291) (not b_next!7193) (not b!183817) (not b!183631) b_and!12651 (not b!183816) (not b!184197) (not b_lambda!4453) (not d!46485) (not b_lambda!4449) (not b!184176) (not b!183580) (not b!183632) (not d!46443) (not b!183820) (not d!46375) (not b!183723) (not b!184181) (not b!183824) (not b!183790) (not b!184052) (not d!46377) (not bm!8396) (not b!183579) (not b!184251) (not b!184077) (not d!46289) (not d!46529) (not tb!7635) (not d!46389) (not d!46369) (not bm!8349) (not b!183776) (not b!183881) (not d!46481) (not b!184203) (not b!183510) b_and!12647 (not bm!8380))
(check-sat (not b_next!7179) (not b_next!7195) b_and!12589 b_and!12653 (not b_next!7173) b_and!12645 b_and!12655 (not b_next!7175) (not b_next!7191) b_and!12647 b_and!12585 (not b_next!7189) (not b_next!7177) b_and!12581 b_and!12643 b_and!12649 (not b_next!7169) (not b_next!7171) (not b_next!7193) b_and!12651)
