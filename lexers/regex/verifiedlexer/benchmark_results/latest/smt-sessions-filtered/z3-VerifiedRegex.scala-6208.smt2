; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300426 () Bool)

(assert start!300426)

(declare-fun b!3200087 () Bool)

(declare-fun b_free!85001 () Bool)

(declare-fun b_next!85705 () Bool)

(assert (=> b!3200087 (= b_free!85001 (not b_next!85705))))

(declare-fun tp!1011428 () Bool)

(declare-fun b_and!212687 () Bool)

(assert (=> b!3200087 (= tp!1011428 b_and!212687)))

(declare-fun b_free!85003 () Bool)

(declare-fun b_next!85707 () Bool)

(assert (=> b!3200087 (= b_free!85003 (not b_next!85707))))

(declare-fun tp!1011430 () Bool)

(declare-fun b_and!212689 () Bool)

(assert (=> b!3200087 (= tp!1011430 b_and!212689)))

(declare-fun b!3200078 () Bool)

(declare-fun b_free!85005 () Bool)

(declare-fun b_next!85709 () Bool)

(assert (=> b!3200078 (= b_free!85005 (not b_next!85709))))

(declare-fun tp!1011438 () Bool)

(declare-fun b_and!212691 () Bool)

(assert (=> b!3200078 (= tp!1011438 b_and!212691)))

(declare-fun b_free!85007 () Bool)

(declare-fun b_next!85711 () Bool)

(assert (=> b!3200078 (= b_free!85007 (not b_next!85711))))

(declare-fun tp!1011432 () Bool)

(declare-fun b_and!212693 () Bool)

(assert (=> b!3200078 (= tp!1011432 b_and!212693)))

(declare-fun b!3200070 () Bool)

(declare-fun b_free!85009 () Bool)

(declare-fun b_next!85713 () Bool)

(assert (=> b!3200070 (= b_free!85009 (not b_next!85713))))

(declare-fun tp!1011439 () Bool)

(declare-fun b_and!212695 () Bool)

(assert (=> b!3200070 (= tp!1011439 b_and!212695)))

(declare-fun b_free!85011 () Bool)

(declare-fun b_next!85715 () Bool)

(assert (=> b!3200070 (= b_free!85011 (not b_next!85715))))

(declare-fun tp!1011440 () Bool)

(declare-fun b_and!212697 () Bool)

(assert (=> b!3200070 (= tp!1011440 b_and!212697)))

(declare-fun e!1994981 () Bool)

(declare-fun b!3200065 () Bool)

(declare-datatypes ((C!20096 0))(
  ( (C!20097 (val!12096 Int)) )
))
(declare-datatypes ((Regex!9955 0))(
  ( (ElementMatch!9955 (c!537316 C!20096)) (Concat!15381 (regOne!20422 Regex!9955) (regTwo!20422 Regex!9955)) (EmptyExpr!9955) (Star!9955 (reg!10284 Regex!9955)) (EmptyLang!9955) (Union!9955 (regOne!20423 Regex!9955) (regTwo!20423 Regex!9955)) )
))
(declare-datatypes ((List!36184 0))(
  ( (Nil!36060) (Cons!36060 (h!41480 (_ BitVec 16)) (t!237391 List!36184)) )
))
(declare-datatypes ((TokenValue!5426 0))(
  ( (FloatLiteralValue!10852 (text!38427 List!36184)) (TokenValueExt!5425 (__x!23069 Int)) (Broken!27130 (value!168520 List!36184)) (Object!5549) (End!5426) (Def!5426) (Underscore!5426) (Match!5426) (Else!5426) (Error!5426) (Case!5426) (If!5426) (Extends!5426) (Abstract!5426) (Class!5426) (Val!5426) (DelimiterValue!10852 (del!5486 List!36184)) (KeywordValue!5432 (value!168521 List!36184)) (CommentValue!10852 (value!168522 List!36184)) (WhitespaceValue!10852 (value!168523 List!36184)) (IndentationValue!5426 (value!168524 List!36184)) (String!40463) (Int32!5426) (Broken!27131 (value!168525 List!36184)) (Boolean!5427) (Unit!50465) (OperatorValue!5429 (op!5486 List!36184)) (IdentifierValue!10852 (value!168526 List!36184)) (IdentifierValue!10853 (value!168527 List!36184)) (WhitespaceValue!10853 (value!168528 List!36184)) (True!10852) (False!10852) (Broken!27132 (value!168529 List!36184)) (Broken!27133 (value!168530 List!36184)) (True!10853) (RightBrace!5426) (RightBracket!5426) (Colon!5426) (Null!5426) (Comma!5426) (LeftBracket!5426) (False!10853) (LeftBrace!5426) (ImaginaryLiteralValue!5426 (text!38428 List!36184)) (StringLiteralValue!16278 (value!168531 List!36184)) (EOFValue!5426 (value!168532 List!36184)) (IdentValue!5426 (value!168533 List!36184)) (DelimiterValue!10853 (value!168534 List!36184)) (DedentValue!5426 (value!168535 List!36184)) (NewLineValue!5426 (value!168536 List!36184)) (IntegerValue!16278 (value!168537 (_ BitVec 32)) (text!38429 List!36184)) (IntegerValue!16279 (value!168538 Int) (text!38430 List!36184)) (Times!5426) (Or!5426) (Equal!5426) (Minus!5426) (Broken!27134 (value!168539 List!36184)) (And!5426) (Div!5426) (LessEqual!5426) (Mod!5426) (Concat!15382) (Not!5426) (Plus!5426) (SpaceValue!5426 (value!168540 List!36184)) (IntegerValue!16280 (value!168541 Int) (text!38431 List!36184)) (StringLiteralValue!16279 (text!38432 List!36184)) (FloatLiteralValue!10853 (text!38433 List!36184)) (BytesLiteralValue!5426 (value!168542 List!36184)) (CommentValue!10853 (value!168543 List!36184)) (StringLiteralValue!16280 (value!168544 List!36184)) (ErrorTokenValue!5426 (msg!5487 List!36184)) )
))
(declare-datatypes ((List!36185 0))(
  ( (Nil!36061) (Cons!36061 (h!41481 C!20096) (t!237392 List!36185)) )
))
(declare-datatypes ((IArray!21539 0))(
  ( (IArray!21540 (innerList!10827 List!36185)) )
))
(declare-datatypes ((Conc!10767 0))(
  ( (Node!10767 (left!28023 Conc!10767) (right!28353 Conc!10767) (csize!21764 Int) (cheight!10978 Int)) (Leaf!16976 (xs!13885 IArray!21539) (csize!21765 Int)) (Empty!10767) )
))
(declare-datatypes ((BalanceConc!21148 0))(
  ( (BalanceConc!21149 (c!537317 Conc!10767)) )
))
(declare-datatypes ((String!40464 0))(
  ( (String!40465 (value!168545 String)) )
))
(declare-datatypes ((TokenValueInjection!10280 0))(
  ( (TokenValueInjection!10281 (toValue!7272 Int) (toChars!7131 Int)) )
))
(declare-datatypes ((Rule!10192 0))(
  ( (Rule!10193 (regex!5196 Regex!9955) (tag!5718 String!40464) (isSeparator!5196 Bool) (transformation!5196 TokenValueInjection!10280)) )
))
(declare-datatypes ((Token!9758 0))(
  ( (Token!9759 (value!168546 TokenValue!5426) (rule!7632 Rule!10192) (size!27162 Int) (originalCharacters!5910 List!36185)) )
))
(declare-datatypes ((List!36186 0))(
  ( (Nil!36062) (Cons!36062 (h!41482 Token!9758) (t!237393 List!36186)) )
))
(declare-fun tokens!494 () List!36186)

(declare-fun e!1994982 () Bool)

(declare-fun tp!1011435 () Bool)

(declare-fun inv!48914 (String!40464) Bool)

(declare-fun inv!48917 (TokenValueInjection!10280) Bool)

(assert (=> b!3200065 (= e!1994981 (and tp!1011435 (inv!48914 (tag!5718 (rule!7632 (h!41482 tokens!494)))) (inv!48917 (transformation!5196 (rule!7632 (h!41482 tokens!494)))) e!1994982))))

(declare-fun b!3200066 () Bool)

(declare-fun e!1994989 () Bool)

(declare-fun e!1994993 () Bool)

(assert (=> b!3200066 (= e!1994989 e!1994993)))

(declare-fun res!1302008 () Bool)

(assert (=> b!3200066 (=> (not res!1302008) (not e!1994993))))

(declare-fun lt!1078979 () Rule!10192)

(declare-fun lt!1078983 () List!36185)

(declare-fun matchR!4589 (Regex!9955 List!36185) Bool)

(assert (=> b!3200066 (= res!1302008 (matchR!4589 (regex!5196 lt!1078979) lt!1078983))))

(declare-datatypes ((Option!7087 0))(
  ( (None!7086) (Some!7086 (v!35616 Rule!10192)) )
))
(declare-fun lt!1078975 () Option!7087)

(declare-fun get!11471 (Option!7087) Rule!10192)

(assert (=> b!3200066 (= lt!1078979 (get!11471 lt!1078975))))

(declare-fun b!3200067 () Bool)

(declare-fun e!1995002 () Bool)

(declare-fun e!1994992 () Bool)

(declare-fun tp!1011431 () Bool)

(assert (=> b!3200067 (= e!1995002 (and e!1994992 tp!1011431))))

(declare-fun b!3200068 () Bool)

(declare-fun res!1301992 () Bool)

(declare-fun e!1995004 () Bool)

(assert (=> b!3200068 (=> (not res!1301992) (not e!1995004))))

(declare-fun separatorToken!241 () Token!9758)

(assert (=> b!3200068 (= res!1301992 (isSeparator!5196 (rule!7632 separatorToken!241)))))

(declare-fun b!3200069 () Bool)

(declare-fun e!1994996 () Bool)

(assert (=> b!3200069 (= e!1994996 false)))

(declare-fun e!1994984 () Bool)

(assert (=> b!3200070 (= e!1994984 (and tp!1011439 tp!1011440))))

(declare-fun b!3200071 () Bool)

(declare-fun res!1302011 () Bool)

(assert (=> b!3200071 (=> (not res!1302011) (not e!1995004))))

(declare-datatypes ((LexerInterface!4785 0))(
  ( (LexerInterfaceExt!4782 (__x!23070 Int)) (Lexer!4783) )
))
(declare-fun thiss!18206 () LexerInterface!4785)

(declare-datatypes ((List!36187 0))(
  ( (Nil!36063) (Cons!36063 (h!41483 Rule!10192) (t!237394 List!36187)) )
))
(declare-fun rules!2135 () List!36187)

(declare-fun rulesProduceIndividualToken!2277 (LexerInterface!4785 List!36187 Token!9758) Bool)

(assert (=> b!3200071 (= res!1302011 (rulesProduceIndividualToken!2277 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3200072 () Bool)

(declare-fun res!1302000 () Bool)

(assert (=> b!3200072 (=> (not res!1302000) (not e!1995004))))

(declare-fun lambda!117127 () Int)

(declare-fun forall!7348 (List!36186 Int) Bool)

(assert (=> b!3200072 (= res!1302000 (forall!7348 tokens!494 lambda!117127))))

(declare-fun tp!1011433 () Bool)

(declare-fun b!3200073 () Bool)

(declare-fun e!1995000 () Bool)

(assert (=> b!3200073 (= e!1994992 (and tp!1011433 (inv!48914 (tag!5718 (h!41483 rules!2135))) (inv!48917 (transformation!5196 (h!41483 rules!2135))) e!1995000))))

(declare-fun b!3200074 () Bool)

(declare-fun e!1994983 () Bool)

(assert (=> b!3200074 (= e!1995004 (not e!1994983))))

(declare-fun res!1302005 () Bool)

(assert (=> b!3200074 (=> res!1302005 e!1994983)))

(declare-fun lt!1078988 () List!36185)

(declare-fun lt!1078997 () List!36185)

(assert (=> b!3200074 (= res!1302005 (not (= lt!1078988 lt!1078997)))))

(declare-fun printList!1335 (LexerInterface!4785 List!36186) List!36185)

(assert (=> b!3200074 (= lt!1078997 (printList!1335 thiss!18206 (Cons!36062 (h!41482 tokens!494) Nil!36062)))))

(declare-fun lt!1078977 () BalanceConc!21148)

(declare-fun list!12821 (BalanceConc!21148) List!36185)

(assert (=> b!3200074 (= lt!1078988 (list!12821 lt!1078977))))

(declare-datatypes ((IArray!21541 0))(
  ( (IArray!21542 (innerList!10828 List!36186)) )
))
(declare-datatypes ((Conc!10768 0))(
  ( (Node!10768 (left!28024 Conc!10768) (right!28354 Conc!10768) (csize!21766 Int) (cheight!10979 Int)) (Leaf!16977 (xs!13886 IArray!21541) (csize!21767 Int)) (Empty!10768) )
))
(declare-datatypes ((BalanceConc!21150 0))(
  ( (BalanceConc!21151 (c!537318 Conc!10768)) )
))
(declare-fun lt!1078999 () BalanceConc!21150)

(declare-fun printTailRec!1282 (LexerInterface!4785 BalanceConc!21150 Int BalanceConc!21148) BalanceConc!21148)

(assert (=> b!3200074 (= lt!1078977 (printTailRec!1282 thiss!18206 lt!1078999 0 (BalanceConc!21149 Empty!10767)))))

(declare-fun print!1850 (LexerInterface!4785 BalanceConc!21150) BalanceConc!21148)

(assert (=> b!3200074 (= lt!1078977 (print!1850 thiss!18206 lt!1078999))))

(declare-fun singletonSeq!2292 (Token!9758) BalanceConc!21150)

(assert (=> b!3200074 (= lt!1078999 (singletonSeq!2292 (h!41482 tokens!494)))))

(declare-fun b!3200075 () Bool)

(declare-fun res!1302003 () Bool)

(assert (=> b!3200075 (=> (not res!1302003) (not e!1995004))))

(declare-fun rulesInvariant!4182 (LexerInterface!4785 List!36187) Bool)

(assert (=> b!3200075 (= res!1302003 (rulesInvariant!4182 thiss!18206 rules!2135))))

(declare-fun b!3200076 () Bool)

(declare-fun res!1302010 () Bool)

(declare-fun e!1994991 () Bool)

(assert (=> b!3200076 (=> res!1302010 e!1994991)))

(assert (=> b!3200076 (= res!1302010 (not (rulesProduceIndividualToken!2277 thiss!18206 rules!2135 (h!41482 tokens!494))))))

(declare-fun b!3200077 () Bool)

(assert (=> b!3200077 (= e!1994993 (= (rule!7632 separatorToken!241) lt!1078979))))

(assert (=> b!3200078 (= e!1994982 (and tp!1011438 tp!1011432))))

(declare-fun b!3200079 () Bool)

(declare-fun e!1995003 () Bool)

(declare-fun e!1994985 () Bool)

(assert (=> b!3200079 (= e!1995003 e!1994985)))

(declare-fun res!1301994 () Bool)

(assert (=> b!3200079 (=> res!1301994 e!1994985)))

(declare-fun lt!1078987 () List!36185)

(declare-fun ++!8640 (List!36185 List!36185) List!36185)

(declare-fun charsOf!3212 (Token!9758) BalanceConc!21148)

(declare-fun printWithSeparatorTokenList!130 (LexerInterface!4785 List!36186 Token!9758) List!36185)

(assert (=> b!3200079 (= res!1301994 (not (= lt!1078987 (++!8640 (++!8640 (list!12821 (charsOf!3212 (h!41482 (t!237393 tokens!494)))) lt!1078983) (printWithSeparatorTokenList!130 thiss!18206 (t!237393 (t!237393 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1078985 () List!36185)

(assert (=> b!3200079 (= lt!1078985 (++!8640 lt!1078983 lt!1078987))))

(assert (=> b!3200079 (= lt!1078983 (list!12821 (charsOf!3212 separatorToken!241)))))

(assert (=> b!3200079 (= lt!1078987 (printWithSeparatorTokenList!130 thiss!18206 (t!237393 tokens!494) separatorToken!241))))

(declare-fun lt!1079000 () List!36185)

(assert (=> b!3200079 (= lt!1079000 (printWithSeparatorTokenList!130 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3200080 () Bool)

(assert (=> b!3200080 (= e!1994983 e!1994991)))

(declare-fun res!1301993 () Bool)

(assert (=> b!3200080 (=> res!1301993 e!1994991)))

(declare-fun lt!1078993 () List!36185)

(assert (=> b!3200080 (= res!1301993 (or (not (= lt!1078997 lt!1078993)) (not (= lt!1078988 lt!1078993))))))

(assert (=> b!3200080 (= lt!1078993 (list!12821 (charsOf!3212 (h!41482 tokens!494))))))

(declare-fun e!1994994 () Bool)

(declare-fun tp!1011434 () Bool)

(declare-fun b!3200081 () Bool)

(assert (=> b!3200081 (= e!1994994 (and tp!1011434 (inv!48914 (tag!5718 (rule!7632 separatorToken!241))) (inv!48917 (transformation!5196 (rule!7632 separatorToken!241))) e!1994984))))

(declare-fun b!3200082 () Bool)

(declare-fun e!1994999 () Bool)

(declare-fun e!1994980 () Bool)

(assert (=> b!3200082 (= e!1994999 e!1994980)))

(declare-fun res!1301997 () Bool)

(assert (=> b!3200082 (=> res!1301997 e!1994980)))

(declare-fun lt!1078980 () List!36185)

(assert (=> b!3200082 (= res!1301997 (not (= lt!1079000 lt!1078980)))))

(declare-fun lt!1078991 () List!36185)

(assert (=> b!3200082 (= lt!1078991 lt!1078980)))

(assert (=> b!3200082 (= lt!1078980 (++!8640 lt!1078993 lt!1078985))))

(declare-datatypes ((Unit!50466 0))(
  ( (Unit!50467) )
))
(declare-fun lt!1078986 () Unit!50466)

(declare-fun lemmaConcatAssociativity!1714 (List!36185 List!36185 List!36185) Unit!50466)

(assert (=> b!3200082 (= lt!1078986 (lemmaConcatAssociativity!1714 lt!1078993 lt!1078983 lt!1078987))))

(declare-fun b!3200083 () Bool)

(declare-fun e!1994990 () Bool)

(declare-fun e!1994988 () Bool)

(assert (=> b!3200083 (= e!1994990 e!1994988)))

(declare-fun res!1301998 () Bool)

(assert (=> b!3200083 (=> (not res!1301998) (not e!1994988))))

(declare-fun lt!1078974 () Rule!10192)

(assert (=> b!3200083 (= res!1301998 (matchR!4589 (regex!5196 lt!1078974) lt!1078993))))

(declare-fun lt!1078995 () Option!7087)

(assert (=> b!3200083 (= lt!1078974 (get!11471 lt!1078995))))

(declare-fun e!1994987 () Bool)

(declare-fun e!1994997 () Bool)

(declare-fun tp!1011437 () Bool)

(declare-fun b!3200084 () Bool)

(declare-fun inv!48918 (Token!9758) Bool)

(assert (=> b!3200084 (= e!1994997 (and (inv!48918 (h!41482 tokens!494)) e!1994987 tp!1011437))))

(declare-fun b!3200085 () Bool)

(declare-fun e!1994978 () Unit!50466)

(declare-fun Unit!50468 () Unit!50466)

(assert (=> b!3200085 (= e!1994978 Unit!50468)))

(declare-fun lt!1078976 () C!20096)

(declare-fun lt!1078981 () Unit!50466)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!360 (Regex!9955 List!36185 C!20096) Unit!50466)

(assert (=> b!3200085 (= lt!1078981 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!360 (regex!5196 (rule!7632 separatorToken!241)) lt!1078983 lt!1078976))))

(declare-fun res!1302001 () Bool)

(assert (=> b!3200085 (= res!1302001 (not (matchR!4589 (regex!5196 (rule!7632 separatorToken!241)) lt!1078983)))))

(assert (=> b!3200085 (=> (not res!1302001) (not e!1994996))))

(assert (=> b!3200085 e!1994996))

(declare-fun b!3200086 () Bool)

(declare-fun tp!1011429 () Bool)

(declare-fun inv!21 (TokenValue!5426) Bool)

(assert (=> b!3200086 (= e!1994987 (and (inv!21 (value!168546 (h!41482 tokens!494))) e!1994981 tp!1011429))))

(assert (=> b!3200087 (= e!1995000 (and tp!1011428 tp!1011430))))

(declare-fun b!3200088 () Bool)

(declare-fun res!1302006 () Bool)

(assert (=> b!3200088 (=> (not res!1302006) (not e!1995004))))

(declare-fun rulesProduceEachTokenIndividually!1236 (LexerInterface!4785 List!36187 BalanceConc!21150) Bool)

(declare-fun seqFromList!3463 (List!36186) BalanceConc!21150)

(assert (=> b!3200088 (= res!1302006 (rulesProduceEachTokenIndividually!1236 thiss!18206 rules!2135 (seqFromList!3463 tokens!494)))))

(declare-fun b!3200089 () Bool)

(assert (=> b!3200089 (= e!1994980 true)))

(declare-fun lt!1078996 () BalanceConc!21150)

(assert (=> b!3200089 (= lt!1078996 (singletonSeq!2292 separatorToken!241))))

(declare-fun lt!1078998 () Unit!50466)

(assert (=> b!3200089 (= lt!1078998 e!1994978)))

(declare-fun c!537315 () Bool)

(declare-fun contains!6413 (List!36185 C!20096) Bool)

(declare-fun usedCharacters!512 (Regex!9955) List!36185)

(assert (=> b!3200089 (= c!537315 (not (contains!6413 (usedCharacters!512 (regex!5196 (rule!7632 separatorToken!241))) lt!1078976)))))

(declare-fun head!7011 (List!36185) C!20096)

(assert (=> b!3200089 (= lt!1078976 (head!7011 lt!1078983))))

(assert (=> b!3200089 e!1994989))

(declare-fun res!1302007 () Bool)

(assert (=> b!3200089 (=> (not res!1302007) (not e!1994989))))

(declare-fun isDefined!5524 (Option!7087) Bool)

(assert (=> b!3200089 (= res!1302007 (isDefined!5524 lt!1078975))))

(declare-fun getRuleFromTag!901 (LexerInterface!4785 List!36187 String!40464) Option!7087)

(assert (=> b!3200089 (= lt!1078975 (getRuleFromTag!901 thiss!18206 rules!2135 (tag!5718 (rule!7632 separatorToken!241))))))

(declare-fun lt!1078990 () Unit!50466)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!901 (LexerInterface!4785 List!36187 List!36185 Token!9758) Unit!50466)

(assert (=> b!3200089 (= lt!1078990 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!901 thiss!18206 rules!2135 lt!1078983 separatorToken!241))))

(declare-fun lt!1078989 () BalanceConc!21148)

(declare-datatypes ((tuple2!35438 0))(
  ( (tuple2!35439 (_1!20853 Token!9758) (_2!20853 List!36185)) )
))
(declare-datatypes ((Option!7088 0))(
  ( (None!7087) (Some!7087 (v!35617 tuple2!35438)) )
))
(declare-fun maxPrefixOneRule!1564 (LexerInterface!4785 Rule!10192 List!36185) Option!7088)

(declare-fun apply!8132 (TokenValueInjection!10280 BalanceConc!21148) TokenValue!5426)

(declare-fun size!27163 (List!36185) Int)

(assert (=> b!3200089 (= (maxPrefixOneRule!1564 thiss!18206 (rule!7632 (h!41482 tokens!494)) lt!1078993) (Some!7087 (tuple2!35439 (Token!9759 (apply!8132 (transformation!5196 (rule!7632 (h!41482 tokens!494))) lt!1078989) (rule!7632 (h!41482 tokens!494)) (size!27163 lt!1078993) lt!1078993) Nil!36061)))))

(declare-fun lt!1078978 () Unit!50466)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!677 (LexerInterface!4785 List!36187 List!36185 List!36185 List!36185 Rule!10192) Unit!50466)

(assert (=> b!3200089 (= lt!1078978 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!677 thiss!18206 rules!2135 lt!1078993 lt!1078993 Nil!36061 (rule!7632 (h!41482 tokens!494))))))

(assert (=> b!3200089 e!1994990))

(declare-fun res!1301996 () Bool)

(assert (=> b!3200089 (=> (not res!1301996) (not e!1994990))))

(assert (=> b!3200089 (= res!1301996 (isDefined!5524 lt!1078995))))

(assert (=> b!3200089 (= lt!1078995 (getRuleFromTag!901 thiss!18206 rules!2135 (tag!5718 (rule!7632 (h!41482 tokens!494)))))))

(declare-fun lt!1078994 () Unit!50466)

(assert (=> b!3200089 (= lt!1078994 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!901 thiss!18206 rules!2135 lt!1078993 (h!41482 tokens!494)))))

(declare-fun lt!1078984 () Unit!50466)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!824 (LexerInterface!4785 List!36187 List!36186 Token!9758) Unit!50466)

(assert (=> b!3200089 (= lt!1078984 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!824 thiss!18206 rules!2135 tokens!494 (h!41482 tokens!494)))))

(declare-fun res!1302004 () Bool)

(assert (=> start!300426 (=> (not res!1302004) (not e!1995004))))

(get-info :version)

(assert (=> start!300426 (= res!1302004 ((_ is Lexer!4783) thiss!18206))))

(assert (=> start!300426 e!1995004))

(assert (=> start!300426 true))

(assert (=> start!300426 e!1995002))

(assert (=> start!300426 e!1994997))

(declare-fun e!1994976 () Bool)

(assert (=> start!300426 (and (inv!48918 separatorToken!241) e!1994976)))

(declare-fun b!3200090 () Bool)

(declare-fun res!1301991 () Bool)

(assert (=> b!3200090 (=> (not res!1301991) (not e!1995004))))

(assert (=> b!3200090 (= res!1301991 (and (not ((_ is Nil!36062) tokens!494)) (not ((_ is Nil!36062) (t!237393 tokens!494)))))))

(declare-fun b!3200091 () Bool)

(declare-fun res!1301995 () Bool)

(assert (=> b!3200091 (=> (not res!1301995) (not e!1995004))))

(declare-fun isEmpty!20152 (List!36187) Bool)

(assert (=> b!3200091 (= res!1301995 (not (isEmpty!20152 rules!2135)))))

(declare-fun b!3200092 () Bool)

(declare-fun tp!1011436 () Bool)

(assert (=> b!3200092 (= e!1994976 (and (inv!21 (value!168546 separatorToken!241)) e!1994994 tp!1011436))))

(declare-fun b!3200093 () Bool)

(assert (=> b!3200093 (= e!1994985 e!1994999)))

(declare-fun res!1302002 () Bool)

(assert (=> b!3200093 (=> res!1302002 e!1994999)))

(assert (=> b!3200093 (= res!1302002 (not (= lt!1079000 lt!1078991)))))

(assert (=> b!3200093 (= lt!1078991 (++!8640 (++!8640 lt!1078993 lt!1078983) lt!1078987))))

(declare-fun b!3200094 () Bool)

(declare-fun e!1994986 () Bool)

(assert (=> b!3200094 (= e!1994991 e!1994986)))

(declare-fun res!1301999 () Bool)

(assert (=> b!3200094 (=> res!1301999 e!1994986)))

(declare-fun isEmpty!20153 (BalanceConc!21150) Bool)

(declare-datatypes ((tuple2!35440 0))(
  ( (tuple2!35441 (_1!20854 BalanceConc!21150) (_2!20854 BalanceConc!21148)) )
))
(declare-fun lex!2115 (LexerInterface!4785 List!36187 BalanceConc!21148) tuple2!35440)

(assert (=> b!3200094 (= res!1301999 (isEmpty!20153 (_1!20854 (lex!2115 thiss!18206 rules!2135 lt!1078989))))))

(declare-fun seqFromList!3464 (List!36185) BalanceConc!21148)

(assert (=> b!3200094 (= lt!1078989 (seqFromList!3464 lt!1078993))))

(declare-fun b!3200095 () Bool)

(assert (=> b!3200095 (= e!1994986 e!1995003)))

(declare-fun res!1302009 () Bool)

(assert (=> b!3200095 (=> res!1302009 e!1995003)))

(assert (=> b!3200095 (= res!1302009 (or (isSeparator!5196 (rule!7632 (h!41482 tokens!494))) (isSeparator!5196 (rule!7632 (h!41482 (t!237393 tokens!494))))))))

(declare-fun lt!1078992 () Unit!50466)

(declare-fun forallContained!1167 (List!36186 Int Token!9758) Unit!50466)

(assert (=> b!3200095 (= lt!1078992 (forallContained!1167 tokens!494 lambda!117127 (h!41482 (t!237393 tokens!494))))))

(declare-fun lt!1078982 () Unit!50466)

(assert (=> b!3200095 (= lt!1078982 (forallContained!1167 tokens!494 lambda!117127 (h!41482 tokens!494)))))

(declare-fun b!3200096 () Bool)

(declare-fun Unit!50469 () Unit!50466)

(assert (=> b!3200096 (= e!1994978 Unit!50469)))

(declare-fun b!3200097 () Bool)

(declare-fun res!1302012 () Bool)

(assert (=> b!3200097 (=> (not res!1302012) (not e!1995004))))

(declare-fun sepAndNonSepRulesDisjointChars!1390 (List!36187 List!36187) Bool)

(assert (=> b!3200097 (= res!1302012 (sepAndNonSepRulesDisjointChars!1390 rules!2135 rules!2135))))

(declare-fun b!3200098 () Bool)

(assert (=> b!3200098 (= e!1994988 (= (rule!7632 (h!41482 tokens!494)) lt!1078974))))

(assert (= (and start!300426 res!1302004) b!3200091))

(assert (= (and b!3200091 res!1301995) b!3200075))

(assert (= (and b!3200075 res!1302003) b!3200088))

(assert (= (and b!3200088 res!1302006) b!3200071))

(assert (= (and b!3200071 res!1302011) b!3200068))

(assert (= (and b!3200068 res!1301992) b!3200072))

(assert (= (and b!3200072 res!1302000) b!3200097))

(assert (= (and b!3200097 res!1302012) b!3200090))

(assert (= (and b!3200090 res!1301991) b!3200074))

(assert (= (and b!3200074 (not res!1302005)) b!3200080))

(assert (= (and b!3200080 (not res!1301993)) b!3200076))

(assert (= (and b!3200076 (not res!1302010)) b!3200094))

(assert (= (and b!3200094 (not res!1301999)) b!3200095))

(assert (= (and b!3200095 (not res!1302009)) b!3200079))

(assert (= (and b!3200079 (not res!1301994)) b!3200093))

(assert (= (and b!3200093 (not res!1302002)) b!3200082))

(assert (= (and b!3200082 (not res!1301997)) b!3200089))

(assert (= (and b!3200089 res!1301996) b!3200083))

(assert (= (and b!3200083 res!1301998) b!3200098))

(assert (= (and b!3200089 res!1302007) b!3200066))

(assert (= (and b!3200066 res!1302008) b!3200077))

(assert (= (and b!3200089 c!537315) b!3200085))

(assert (= (and b!3200089 (not c!537315)) b!3200096))

(assert (= (and b!3200085 res!1302001) b!3200069))

(assert (= b!3200073 b!3200087))

(assert (= b!3200067 b!3200073))

(assert (= (and start!300426 ((_ is Cons!36063) rules!2135)) b!3200067))

(assert (= b!3200065 b!3200078))

(assert (= b!3200086 b!3200065))

(assert (= b!3200084 b!3200086))

(assert (= (and start!300426 ((_ is Cons!36062) tokens!494)) b!3200084))

(assert (= b!3200081 b!3200070))

(assert (= b!3200092 b!3200081))

(assert (= start!300426 b!3200092))

(declare-fun m!3462013 () Bool)

(assert (=> b!3200088 m!3462013))

(assert (=> b!3200088 m!3462013))

(declare-fun m!3462015 () Bool)

(assert (=> b!3200088 m!3462015))

(declare-fun m!3462017 () Bool)

(assert (=> b!3200084 m!3462017))

(declare-fun m!3462019 () Bool)

(assert (=> b!3200066 m!3462019))

(declare-fun m!3462021 () Bool)

(assert (=> b!3200066 m!3462021))

(declare-fun m!3462023 () Bool)

(assert (=> b!3200071 m!3462023))

(declare-fun m!3462025 () Bool)

(assert (=> b!3200081 m!3462025))

(declare-fun m!3462027 () Bool)

(assert (=> b!3200081 m!3462027))

(declare-fun m!3462029 () Bool)

(assert (=> b!3200097 m!3462029))

(declare-fun m!3462031 () Bool)

(assert (=> b!3200076 m!3462031))

(declare-fun m!3462033 () Bool)

(assert (=> b!3200092 m!3462033))

(declare-fun m!3462035 () Bool)

(assert (=> b!3200089 m!3462035))

(declare-fun m!3462037 () Bool)

(assert (=> b!3200089 m!3462037))

(declare-fun m!3462039 () Bool)

(assert (=> b!3200089 m!3462039))

(declare-fun m!3462041 () Bool)

(assert (=> b!3200089 m!3462041))

(declare-fun m!3462043 () Bool)

(assert (=> b!3200089 m!3462043))

(declare-fun m!3462045 () Bool)

(assert (=> b!3200089 m!3462045))

(declare-fun m!3462047 () Bool)

(assert (=> b!3200089 m!3462047))

(declare-fun m!3462049 () Bool)

(assert (=> b!3200089 m!3462049))

(assert (=> b!3200089 m!3462039))

(declare-fun m!3462051 () Bool)

(assert (=> b!3200089 m!3462051))

(declare-fun m!3462053 () Bool)

(assert (=> b!3200089 m!3462053))

(declare-fun m!3462055 () Bool)

(assert (=> b!3200089 m!3462055))

(declare-fun m!3462057 () Bool)

(assert (=> b!3200089 m!3462057))

(declare-fun m!3462059 () Bool)

(assert (=> b!3200089 m!3462059))

(declare-fun m!3462061 () Bool)

(assert (=> b!3200089 m!3462061))

(declare-fun m!3462063 () Bool)

(assert (=> b!3200089 m!3462063))

(declare-fun m!3462065 () Bool)

(assert (=> b!3200085 m!3462065))

(declare-fun m!3462067 () Bool)

(assert (=> b!3200085 m!3462067))

(declare-fun m!3462069 () Bool)

(assert (=> b!3200073 m!3462069))

(declare-fun m!3462071 () Bool)

(assert (=> b!3200073 m!3462071))

(declare-fun m!3462073 () Bool)

(assert (=> b!3200093 m!3462073))

(assert (=> b!3200093 m!3462073))

(declare-fun m!3462075 () Bool)

(assert (=> b!3200093 m!3462075))

(declare-fun m!3462077 () Bool)

(assert (=> b!3200082 m!3462077))

(declare-fun m!3462079 () Bool)

(assert (=> b!3200082 m!3462079))

(declare-fun m!3462081 () Bool)

(assert (=> b!3200072 m!3462081))

(declare-fun m!3462083 () Bool)

(assert (=> b!3200095 m!3462083))

(declare-fun m!3462085 () Bool)

(assert (=> b!3200095 m!3462085))

(declare-fun m!3462087 () Bool)

(assert (=> b!3200065 m!3462087))

(declare-fun m!3462089 () Bool)

(assert (=> b!3200065 m!3462089))

(declare-fun m!3462091 () Bool)

(assert (=> b!3200094 m!3462091))

(declare-fun m!3462093 () Bool)

(assert (=> b!3200094 m!3462093))

(declare-fun m!3462095 () Bool)

(assert (=> b!3200094 m!3462095))

(declare-fun m!3462097 () Bool)

(assert (=> start!300426 m!3462097))

(declare-fun m!3462099 () Bool)

(assert (=> b!3200074 m!3462099))

(declare-fun m!3462101 () Bool)

(assert (=> b!3200074 m!3462101))

(declare-fun m!3462103 () Bool)

(assert (=> b!3200074 m!3462103))

(declare-fun m!3462105 () Bool)

(assert (=> b!3200074 m!3462105))

(declare-fun m!3462107 () Bool)

(assert (=> b!3200074 m!3462107))

(declare-fun m!3462109 () Bool)

(assert (=> b!3200075 m!3462109))

(declare-fun m!3462111 () Bool)

(assert (=> b!3200086 m!3462111))

(declare-fun m!3462113 () Bool)

(assert (=> b!3200079 m!3462113))

(declare-fun m!3462115 () Bool)

(assert (=> b!3200079 m!3462115))

(declare-fun m!3462117 () Bool)

(assert (=> b!3200079 m!3462117))

(assert (=> b!3200079 m!3462113))

(declare-fun m!3462119 () Bool)

(assert (=> b!3200079 m!3462119))

(declare-fun m!3462121 () Bool)

(assert (=> b!3200079 m!3462121))

(declare-fun m!3462123 () Bool)

(assert (=> b!3200079 m!3462123))

(assert (=> b!3200079 m!3462121))

(declare-fun m!3462125 () Bool)

(assert (=> b!3200079 m!3462125))

(declare-fun m!3462127 () Bool)

(assert (=> b!3200079 m!3462127))

(assert (=> b!3200079 m!3462119))

(assert (=> b!3200079 m!3462123))

(declare-fun m!3462129 () Bool)

(assert (=> b!3200079 m!3462129))

(assert (=> b!3200079 m!3462115))

(declare-fun m!3462131 () Bool)

(assert (=> b!3200079 m!3462131))

(declare-fun m!3462133 () Bool)

(assert (=> b!3200091 m!3462133))

(declare-fun m!3462135 () Bool)

(assert (=> b!3200080 m!3462135))

(assert (=> b!3200080 m!3462135))

(declare-fun m!3462137 () Bool)

(assert (=> b!3200080 m!3462137))

(declare-fun m!3462139 () Bool)

(assert (=> b!3200083 m!3462139))

(declare-fun m!3462141 () Bool)

(assert (=> b!3200083 m!3462141))

(check-sat (not b!3200089) b_and!212687 (not b!3200086) (not b_next!85707) b_and!212693 (not b!3200075) (not b_next!85715) (not b!3200073) (not start!300426) (not b!3200095) (not b_next!85709) (not b!3200081) (not b!3200091) (not b!3200079) (not b_next!85713) (not b!3200093) (not b!3200092) (not b!3200076) (not b!3200084) (not b!3200074) (not b!3200065) (not b_next!85711) (not b!3200094) (not b!3200083) b_and!212697 b_and!212691 (not b!3200097) (not b!3200072) (not b!3200066) b_and!212689 (not b!3200085) (not b_next!85705) (not b!3200067) (not b!3200080) (not b!3200082) b_and!212695 (not b!3200088) (not b!3200071))
(check-sat (not b_next!85709) b_and!212687 (not b_next!85713) (not b_next!85707) b_and!212693 (not b_next!85715) (not b_next!85711) b_and!212697 b_and!212691 b_and!212689 (not b_next!85705) b_and!212695)
