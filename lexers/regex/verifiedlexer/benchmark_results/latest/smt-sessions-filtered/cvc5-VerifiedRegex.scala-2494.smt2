; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131454 () Bool)

(assert start!131454)

(declare-fun res!644778 () Bool)

(declare-fun e!909108 () Bool)

(assert (=> start!131454 (=> (not res!644778) (not e!909108))))

(declare-datatypes ((C!7978 0))(
  ( (C!7979 (val!4559 Int)) )
))
(declare-datatypes ((List!14833 0))(
  ( (Nil!14767) (Cons!14767 (h!20168 C!7978) (t!124680 List!14833)) )
))
(declare-datatypes ((IArray!10001 0))(
  ( (IArray!10002 (innerList!5058 List!14833)) )
))
(declare-datatypes ((Conc!4998 0))(
  ( (Node!4998 (left!12594 Conc!4998) (right!12924 Conc!4998) (csize!10226 Int) (cheight!5209 Int)) (Leaf!7493 (xs!7727 IArray!10001) (csize!10227 Int)) (Empty!4998) )
))
(declare-datatypes ((BalanceConc!9936 0))(
  ( (BalanceConc!9937 (c!234085 Conc!4998)) )
))
(declare-datatypes ((List!14834 0))(
  ( (Nil!14768) (Cons!14768 (h!20169 (_ BitVec 16)) (t!124681 List!14834)) )
))
(declare-datatypes ((TokenValue!2676 0))(
  ( (FloatLiteralValue!5352 (text!19177 List!14834)) (TokenValueExt!2675 (__x!9150 Int)) (Broken!13380 (value!83324 List!14834)) (Object!2741) (End!2676) (Def!2676) (Underscore!2676) (Match!2676) (Else!2676) (Error!2676) (Case!2676) (If!2676) (Extends!2676) (Abstract!2676) (Class!2676) (Val!2676) (DelimiterValue!5352 (del!2736 List!14834)) (KeywordValue!2682 (value!83325 List!14834)) (CommentValue!5352 (value!83326 List!14834)) (WhitespaceValue!5352 (value!83327 List!14834)) (IndentationValue!2676 (value!83328 List!14834)) (String!17637) (Int32!2676) (Broken!13381 (value!83329 List!14834)) (Boolean!2677) (Unit!22256) (OperatorValue!2679 (op!2736 List!14834)) (IdentifierValue!5352 (value!83330 List!14834)) (IdentifierValue!5353 (value!83331 List!14834)) (WhitespaceValue!5353 (value!83332 List!14834)) (True!5352) (False!5352) (Broken!13382 (value!83333 List!14834)) (Broken!13383 (value!83334 List!14834)) (True!5353) (RightBrace!2676) (RightBracket!2676) (Colon!2676) (Null!2676) (Comma!2676) (LeftBracket!2676) (False!5353) (LeftBrace!2676) (ImaginaryLiteralValue!2676 (text!19178 List!14834)) (StringLiteralValue!8028 (value!83335 List!14834)) (EOFValue!2676 (value!83336 List!14834)) (IdentValue!2676 (value!83337 List!14834)) (DelimiterValue!5353 (value!83338 List!14834)) (DedentValue!2676 (value!83339 List!14834)) (NewLineValue!2676 (value!83340 List!14834)) (IntegerValue!8028 (value!83341 (_ BitVec 32)) (text!19179 List!14834)) (IntegerValue!8029 (value!83342 Int) (text!19180 List!14834)) (Times!2676) (Or!2676) (Equal!2676) (Minus!2676) (Broken!13384 (value!83343 List!14834)) (And!2676) (Div!2676) (LessEqual!2676) (Mod!2676) (Concat!6576) (Not!2676) (Plus!2676) (SpaceValue!2676 (value!83344 List!14834)) (IntegerValue!8030 (value!83345 Int) (text!19181 List!14834)) (StringLiteralValue!8029 (text!19182 List!14834)) (FloatLiteralValue!5353 (text!19183 List!14834)) (BytesLiteralValue!2676 (value!83346 List!14834)) (CommentValue!5353 (value!83347 List!14834)) (StringLiteralValue!8030 (value!83348 List!14834)) (ErrorTokenValue!2676 (msg!2737 List!14834)) )
))
(declare-datatypes ((Regex!3900 0))(
  ( (ElementMatch!3900 (c!234086 C!7978)) (Concat!6577 (regOne!8312 Regex!3900) (regTwo!8312 Regex!3900)) (EmptyExpr!3900) (Star!3900 (reg!4229 Regex!3900)) (EmptyLang!3900) (Union!3900 (regOne!8313 Regex!3900) (regTwo!8313 Regex!3900)) )
))
(declare-datatypes ((String!17638 0))(
  ( (String!17639 (value!83349 String)) )
))
(declare-datatypes ((TokenValueInjection!5012 0))(
  ( (TokenValueInjection!5013 (toValue!3885 Int) (toChars!3744 Int)) )
))
(declare-datatypes ((Rule!4972 0))(
  ( (Rule!4973 (regex!2586 Regex!3900) (tag!2848 String!17638) (isSeparator!2586 Bool) (transformation!2586 TokenValueInjection!5012)) )
))
(declare-datatypes ((Token!4834 0))(
  ( (Token!4835 (value!83350 TokenValue!2676) (rule!4349 Rule!4972) (size!12126 Int) (originalCharacters!3448 List!14833)) )
))
(declare-datatypes ((List!14835 0))(
  ( (Nil!14769) (Cons!14769 (h!20170 Token!4834) (t!124682 List!14835)) )
))
(declare-datatypes ((IArray!10003 0))(
  ( (IArray!10004 (innerList!5059 List!14835)) )
))
(declare-datatypes ((Conc!4999 0))(
  ( (Node!4999 (left!12595 Conc!4999) (right!12925 Conc!4999) (csize!10228 Int) (cheight!5210 Int)) (Leaf!7494 (xs!7728 IArray!10003) (csize!10229 Int)) (Empty!4999) )
))
(declare-datatypes ((BalanceConc!9938 0))(
  ( (BalanceConc!9939 (c!234087 Conc!4999)) )
))
(declare-datatypes ((List!14836 0))(
  ( (Nil!14770) (Cons!14770 (h!20171 Rule!4972) (t!124683 List!14836)) )
))
(declare-datatypes ((PrintableTokens!954 0))(
  ( (PrintableTokens!955 (rules!11221 List!14836) (tokens!1913 BalanceConc!9938)) )
))
(declare-fun thiss!10022 () PrintableTokens!954)

(declare-fun other!32 () PrintableTokens!954)

(assert (=> start!131454 (= res!644778 (= (rules!11221 thiss!10022) (rules!11221 other!32)))))

(assert (=> start!131454 e!909108))

(declare-fun e!909104 () Bool)

(declare-fun inv!19584 (PrintableTokens!954) Bool)

(assert (=> start!131454 (and (inv!19584 thiss!10022) e!909104)))

(declare-fun e!909109 () Bool)

(assert (=> start!131454 (and (inv!19584 other!32) e!909109)))

(declare-fun b!1423979 () Bool)

(declare-fun res!644777 () Bool)

(declare-fun e!909110 () Bool)

(assert (=> b!1423979 (=> (not res!644777) (not e!909110))))

(declare-fun isEmpty!9136 (BalanceConc!9938) Bool)

(assert (=> b!1423979 (= res!644777 (not (isEmpty!9136 (tokens!1913 thiss!10022))))))

(declare-fun b!1423980 () Bool)

(assert (=> b!1423980 (= e!909108 e!909110)))

(declare-fun res!644776 () Bool)

(assert (=> b!1423980 (=> (not res!644776) (not e!909110))))

(assert (=> b!1423980 (= res!644776 (not (isEmpty!9136 (tokens!1913 other!32))))))

(declare-datatypes ((Unit!22257 0))(
  ( (Unit!22258) )
))
(declare-fun lt!482817 () Unit!22257)

(declare-fun lemmaInvariant!282 (PrintableTokens!954) Unit!22257)

(assert (=> b!1423980 (= lt!482817 (lemmaInvariant!282 thiss!10022))))

(declare-fun lt!482821 () Unit!22257)

(assert (=> b!1423980 (= lt!482821 (lemmaInvariant!282 other!32))))

(declare-fun b!1423981 () Bool)

(declare-fun e!909106 () Bool)

(declare-fun tp!403703 () Bool)

(declare-fun inv!19585 (Conc!4999) Bool)

(assert (=> b!1423981 (= e!909106 (and (inv!19585 (c!234087 (tokens!1913 other!32))) tp!403703))))

(declare-fun b!1423982 () Bool)

(declare-fun e!909105 () Bool)

(assert (=> b!1423982 (= e!909110 (not e!909105))))

(declare-fun res!644775 () Bool)

(assert (=> b!1423982 (=> res!644775 e!909105)))

(declare-fun isEmpty!9137 (List!14836) Bool)

(assert (=> b!1423982 (= res!644775 (isEmpty!9137 (rules!11221 thiss!10022)))))

(declare-fun lt!482818 () Token!4834)

(declare-datatypes ((LexerInterface!2250 0))(
  ( (LexerInterfaceExt!2247 (__x!9151 Int)) (Lexer!2248) )
))
(declare-fun rulesProduceIndividualToken!1183 (LexerInterface!2250 List!14836 Token!4834) Bool)

(assert (=> b!1423982 (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482818)))

(declare-fun lt!482816 () Unit!22257)

(declare-fun lt!482820 () List!14835)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!368 (LexerInterface!2250 List!14836 List!14835 Token!4834) Unit!22257)

(assert (=> b!1423982 (= lt!482816 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!368 Lexer!2248 (rules!11221 thiss!10022) lt!482820 lt!482818))))

(declare-fun head!2824 (BalanceConc!9938) Token!4834)

(assert (=> b!1423982 (= lt!482818 (head!2824 (tokens!1913 other!32)))))

(declare-fun list!5861 (BalanceConc!9938) List!14835)

(assert (=> b!1423982 (= lt!482820 (list!5861 (tokens!1913 other!32)))))

(declare-fun lt!482815 () Token!4834)

(assert (=> b!1423982 (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482815)))

(declare-fun lt!482819 () Unit!22257)

(declare-fun lt!482822 () List!14835)

(assert (=> b!1423982 (= lt!482819 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!368 Lexer!2248 (rules!11221 thiss!10022) lt!482822 lt!482815))))

(declare-fun last!102 (BalanceConc!9938) Token!4834)

(assert (=> b!1423982 (= lt!482815 (last!102 (tokens!1913 thiss!10022)))))

(assert (=> b!1423982 (= lt!482822 (list!5861 (tokens!1913 thiss!10022)))))

(declare-fun b!1423983 () Bool)

(declare-fun tp!403704 () Bool)

(declare-fun inv!19586 (BalanceConc!9938) Bool)

(assert (=> b!1423983 (= e!909109 (and tp!403704 (inv!19586 (tokens!1913 other!32)) e!909106))))

(declare-fun b!1423984 () Bool)

(declare-fun e!909107 () Bool)

(declare-fun tp!403705 () Bool)

(assert (=> b!1423984 (= e!909107 (and (inv!19585 (c!234087 (tokens!1913 thiss!10022))) tp!403705))))

(declare-fun tp!403706 () Bool)

(declare-fun b!1423985 () Bool)

(assert (=> b!1423985 (= e!909104 (and tp!403706 (inv!19586 (tokens!1913 thiss!10022)) e!909107))))

(declare-fun b!1423986 () Bool)

(declare-fun rulesInvariant!2100 (LexerInterface!2250 List!14836) Bool)

(assert (=> b!1423986 (= e!909105 (rulesInvariant!2100 Lexer!2248 (rules!11221 thiss!10022)))))

(assert (= (and start!131454 res!644778) b!1423980))

(assert (= (and b!1423980 res!644776) b!1423979))

(assert (= (and b!1423979 res!644777) b!1423982))

(assert (= (and b!1423982 (not res!644775)) b!1423986))

(assert (= b!1423985 b!1423984))

(assert (= start!131454 b!1423985))

(assert (= b!1423983 b!1423981))

(assert (= start!131454 b!1423983))

(declare-fun m!1617361 () Bool)

(assert (=> b!1423985 m!1617361))

(declare-fun m!1617363 () Bool)

(assert (=> b!1423980 m!1617363))

(declare-fun m!1617365 () Bool)

(assert (=> b!1423980 m!1617365))

(declare-fun m!1617367 () Bool)

(assert (=> b!1423980 m!1617367))

(declare-fun m!1617369 () Bool)

(assert (=> b!1423979 m!1617369))

(declare-fun m!1617371 () Bool)

(assert (=> b!1423984 m!1617371))

(declare-fun m!1617373 () Bool)

(assert (=> b!1423981 m!1617373))

(declare-fun m!1617375 () Bool)

(assert (=> start!131454 m!1617375))

(declare-fun m!1617377 () Bool)

(assert (=> start!131454 m!1617377))

(declare-fun m!1617379 () Bool)

(assert (=> b!1423983 m!1617379))

(declare-fun m!1617381 () Bool)

(assert (=> b!1423986 m!1617381))

(declare-fun m!1617383 () Bool)

(assert (=> b!1423982 m!1617383))

(declare-fun m!1617385 () Bool)

(assert (=> b!1423982 m!1617385))

(declare-fun m!1617387 () Bool)

(assert (=> b!1423982 m!1617387))

(declare-fun m!1617389 () Bool)

(assert (=> b!1423982 m!1617389))

(declare-fun m!1617391 () Bool)

(assert (=> b!1423982 m!1617391))

(declare-fun m!1617393 () Bool)

(assert (=> b!1423982 m!1617393))

(declare-fun m!1617395 () Bool)

(assert (=> b!1423982 m!1617395))

(declare-fun m!1617397 () Bool)

(assert (=> b!1423982 m!1617397))

(declare-fun m!1617399 () Bool)

(assert (=> b!1423982 m!1617399))

(push 1)

(assert (not b!1423985))

(assert (not b!1423982))

(assert (not b!1423979))

(assert (not start!131454))

(assert (not b!1423984))

(assert (not b!1423986))

(assert (not b!1423980))

(assert (not b!1423983))

(assert (not b!1423981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407925 () Bool)

(declare-fun lt!482849 () Bool)

(declare-fun isEmpty!9140 (List!14835) Bool)

(assert (=> d!407925 (= lt!482849 (isEmpty!9140 (list!5861 (tokens!1913 other!32))))))

(declare-fun isEmpty!9141 (Conc!4999) Bool)

(assert (=> d!407925 (= lt!482849 (isEmpty!9141 (c!234087 (tokens!1913 other!32))))))

(assert (=> d!407925 (= (isEmpty!9136 (tokens!1913 other!32)) lt!482849)))

(declare-fun bs!339975 () Bool)

(assert (= bs!339975 d!407925))

(assert (=> bs!339975 m!1617393))

(assert (=> bs!339975 m!1617393))

(declare-fun m!1617441 () Bool)

(assert (=> bs!339975 m!1617441))

(declare-fun m!1617443 () Bool)

(assert (=> bs!339975 m!1617443))

(assert (=> b!1423980 d!407925))

(declare-fun d!407929 () Bool)

(declare-fun e!909137 () Bool)

(assert (=> d!407929 e!909137))

(declare-fun res!644802 () Bool)

(assert (=> d!407929 (=> (not res!644802) (not e!909137))))

(assert (=> d!407929 (= res!644802 (rulesInvariant!2100 Lexer!2248 (rules!11221 thiss!10022)))))

(declare-fun Unit!22262 () Unit!22257)

(assert (=> d!407929 (= (lemmaInvariant!282 thiss!10022) Unit!22262)))

(declare-fun b!1424018 () Bool)

(declare-fun res!644803 () Bool)

(assert (=> b!1424018 (=> (not res!644803) (not e!909137))))

(declare-fun rulesProduceEachTokenIndividually!823 (LexerInterface!2250 List!14836 BalanceConc!9938) Bool)

(assert (=> b!1424018 (= res!644803 (rulesProduceEachTokenIndividually!823 Lexer!2248 (rules!11221 thiss!10022) (tokens!1913 thiss!10022)))))

(declare-fun b!1424019 () Bool)

(declare-fun separableTokens!207 (LexerInterface!2250 BalanceConc!9938 List!14836) Bool)

(assert (=> b!1424019 (= e!909137 (separableTokens!207 Lexer!2248 (tokens!1913 thiss!10022) (rules!11221 thiss!10022)))))

(assert (= (and d!407929 res!644802) b!1424018))

(assert (= (and b!1424018 res!644803) b!1424019))

(assert (=> d!407929 m!1617381))

(declare-fun m!1617451 () Bool)

(assert (=> b!1424018 m!1617451))

(declare-fun m!1617453 () Bool)

(assert (=> b!1424019 m!1617453))

(assert (=> b!1423980 d!407929))

(declare-fun d!407935 () Bool)

(declare-fun e!909138 () Bool)

(assert (=> d!407935 e!909138))

(declare-fun res!644804 () Bool)

(assert (=> d!407935 (=> (not res!644804) (not e!909138))))

(assert (=> d!407935 (= res!644804 (rulesInvariant!2100 Lexer!2248 (rules!11221 other!32)))))

(declare-fun Unit!22263 () Unit!22257)

(assert (=> d!407935 (= (lemmaInvariant!282 other!32) Unit!22263)))

(declare-fun b!1424020 () Bool)

(declare-fun res!644805 () Bool)

(assert (=> b!1424020 (=> (not res!644805) (not e!909138))))

(assert (=> b!1424020 (= res!644805 (rulesProduceEachTokenIndividually!823 Lexer!2248 (rules!11221 other!32) (tokens!1913 other!32)))))

(declare-fun b!1424021 () Bool)

(assert (=> b!1424021 (= e!909138 (separableTokens!207 Lexer!2248 (tokens!1913 other!32) (rules!11221 other!32)))))

(assert (= (and d!407935 res!644804) b!1424020))

(assert (= (and b!1424020 res!644805) b!1424021))

(declare-fun m!1617455 () Bool)

(assert (=> d!407935 m!1617455))

(declare-fun m!1617457 () Bool)

(assert (=> b!1424020 m!1617457))

(declare-fun m!1617459 () Bool)

(assert (=> b!1424021 m!1617459))

(assert (=> b!1423980 d!407935))

(declare-fun d!407937 () Bool)

(declare-fun isBalanced!1481 (Conc!4999) Bool)

(assert (=> d!407937 (= (inv!19586 (tokens!1913 thiss!10022)) (isBalanced!1481 (c!234087 (tokens!1913 thiss!10022))))))

(declare-fun bs!339977 () Bool)

(assert (= bs!339977 d!407937))

(declare-fun m!1617461 () Bool)

(assert (=> bs!339977 m!1617461))

(assert (=> b!1423985 d!407937))

(declare-fun d!407939 () Bool)

(declare-fun lt!482850 () Bool)

(assert (=> d!407939 (= lt!482850 (isEmpty!9140 (list!5861 (tokens!1913 thiss!10022))))))

(assert (=> d!407939 (= lt!482850 (isEmpty!9141 (c!234087 (tokens!1913 thiss!10022))))))

(assert (=> d!407939 (= (isEmpty!9136 (tokens!1913 thiss!10022)) lt!482850)))

(declare-fun bs!339978 () Bool)

(assert (= bs!339978 d!407939))

(assert (=> bs!339978 m!1617397))

(assert (=> bs!339978 m!1617397))

(declare-fun m!1617463 () Bool)

(assert (=> bs!339978 m!1617463))

(declare-fun m!1617465 () Bool)

(assert (=> bs!339978 m!1617465))

(assert (=> b!1423979 d!407939))

(declare-fun d!407941 () Bool)

(declare-fun c!234093 () Bool)

(assert (=> d!407941 (= c!234093 (is-Node!4999 (c!234087 (tokens!1913 thiss!10022))))))

(declare-fun e!909143 () Bool)

(assert (=> d!407941 (= (inv!19585 (c!234087 (tokens!1913 thiss!10022))) e!909143)))

(declare-fun b!1424028 () Bool)

(declare-fun inv!19590 (Conc!4999) Bool)

(assert (=> b!1424028 (= e!909143 (inv!19590 (c!234087 (tokens!1913 thiss!10022))))))

(declare-fun b!1424029 () Bool)

(declare-fun e!909144 () Bool)

(assert (=> b!1424029 (= e!909143 e!909144)))

(declare-fun res!644808 () Bool)

(assert (=> b!1424029 (= res!644808 (not (is-Leaf!7494 (c!234087 (tokens!1913 thiss!10022)))))))

(assert (=> b!1424029 (=> res!644808 e!909144)))

(declare-fun b!1424030 () Bool)

(declare-fun inv!19591 (Conc!4999) Bool)

(assert (=> b!1424030 (= e!909144 (inv!19591 (c!234087 (tokens!1913 thiss!10022))))))

(assert (= (and d!407941 c!234093) b!1424028))

(assert (= (and d!407941 (not c!234093)) b!1424029))

(assert (= (and b!1424029 (not res!644808)) b!1424030))

(declare-fun m!1617467 () Bool)

(assert (=> b!1424028 m!1617467))

(declare-fun m!1617469 () Bool)

(assert (=> b!1424030 m!1617469))

(assert (=> b!1423984 d!407941))

(declare-fun d!407943 () Bool)

(declare-fun res!644815 () Bool)

(declare-fun e!909147 () Bool)

(assert (=> d!407943 (=> (not res!644815) (not e!909147))))

(assert (=> d!407943 (= res!644815 (not (isEmpty!9137 (rules!11221 thiss!10022))))))

(assert (=> d!407943 (= (inv!19584 thiss!10022) e!909147)))

(declare-fun b!1424037 () Bool)

(declare-fun res!644816 () Bool)

(assert (=> b!1424037 (=> (not res!644816) (not e!909147))))

(assert (=> b!1424037 (= res!644816 (rulesInvariant!2100 Lexer!2248 (rules!11221 thiss!10022)))))

(declare-fun b!1424038 () Bool)

(declare-fun res!644817 () Bool)

(assert (=> b!1424038 (=> (not res!644817) (not e!909147))))

(assert (=> b!1424038 (= res!644817 (rulesProduceEachTokenIndividually!823 Lexer!2248 (rules!11221 thiss!10022) (tokens!1913 thiss!10022)))))

(declare-fun b!1424039 () Bool)

(assert (=> b!1424039 (= e!909147 (separableTokens!207 Lexer!2248 (tokens!1913 thiss!10022) (rules!11221 thiss!10022)))))

(assert (= (and d!407943 res!644815) b!1424037))

(assert (= (and b!1424037 res!644816) b!1424038))

(assert (= (and b!1424038 res!644817) b!1424039))

(assert (=> d!407943 m!1617399))

(assert (=> b!1424037 m!1617381))

(assert (=> b!1424038 m!1617451))

(assert (=> b!1424039 m!1617453))

(assert (=> start!131454 d!407943))

(declare-fun d!407945 () Bool)

(declare-fun res!644818 () Bool)

(declare-fun e!909148 () Bool)

(assert (=> d!407945 (=> (not res!644818) (not e!909148))))

(assert (=> d!407945 (= res!644818 (not (isEmpty!9137 (rules!11221 other!32))))))

(assert (=> d!407945 (= (inv!19584 other!32) e!909148)))

(declare-fun b!1424040 () Bool)

(declare-fun res!644819 () Bool)

(assert (=> b!1424040 (=> (not res!644819) (not e!909148))))

(assert (=> b!1424040 (= res!644819 (rulesInvariant!2100 Lexer!2248 (rules!11221 other!32)))))

(declare-fun b!1424041 () Bool)

(declare-fun res!644820 () Bool)

(assert (=> b!1424041 (=> (not res!644820) (not e!909148))))

(assert (=> b!1424041 (= res!644820 (rulesProduceEachTokenIndividually!823 Lexer!2248 (rules!11221 other!32) (tokens!1913 other!32)))))

(declare-fun b!1424042 () Bool)

(assert (=> b!1424042 (= e!909148 (separableTokens!207 Lexer!2248 (tokens!1913 other!32) (rules!11221 other!32)))))

(assert (= (and d!407945 res!644818) b!1424040))

(assert (= (and b!1424040 res!644819) b!1424041))

(assert (= (and b!1424041 res!644820) b!1424042))

(declare-fun m!1617471 () Bool)

(assert (=> d!407945 m!1617471))

(assert (=> b!1424040 m!1617455))

(assert (=> b!1424041 m!1617457))

(assert (=> b!1424042 m!1617459))

(assert (=> start!131454 d!407945))

(declare-fun d!407947 () Bool)

(assert (=> d!407947 (= (inv!19586 (tokens!1913 other!32)) (isBalanced!1481 (c!234087 (tokens!1913 other!32))))))

(declare-fun bs!339979 () Bool)

(assert (= bs!339979 d!407947))

(declare-fun m!1617473 () Bool)

(assert (=> bs!339979 m!1617473))

(assert (=> b!1423983 d!407947))

(declare-fun d!407949 () Bool)

(declare-fun lt!482853 () Token!4834)

(declare-fun head!2826 (List!14835) Token!4834)

(assert (=> d!407949 (= lt!482853 (head!2826 (list!5861 (tokens!1913 other!32))))))

(declare-fun head!2827 (Conc!4999) Token!4834)

(assert (=> d!407949 (= lt!482853 (head!2827 (c!234087 (tokens!1913 other!32))))))

(assert (=> d!407949 (not (isEmpty!9136 (tokens!1913 other!32)))))

(assert (=> d!407949 (= (head!2824 (tokens!1913 other!32)) lt!482853)))

(declare-fun bs!339980 () Bool)

(assert (= bs!339980 d!407949))

(assert (=> bs!339980 m!1617393))

(assert (=> bs!339980 m!1617393))

(declare-fun m!1617475 () Bool)

(assert (=> bs!339980 m!1617475))

(declare-fun m!1617477 () Bool)

(assert (=> bs!339980 m!1617477))

(assert (=> bs!339980 m!1617363))

(assert (=> b!1423982 d!407949))

(declare-fun d!407951 () Bool)

(declare-fun list!5863 (Conc!4999) List!14835)

(assert (=> d!407951 (= (list!5861 (tokens!1913 thiss!10022)) (list!5863 (c!234087 (tokens!1913 thiss!10022))))))

(declare-fun bs!339981 () Bool)

(assert (= bs!339981 d!407951))

(declare-fun m!1617479 () Bool)

(assert (=> bs!339981 m!1617479))

(assert (=> b!1423982 d!407951))

(declare-fun d!407953 () Bool)

(assert (=> d!407953 (= (isEmpty!9137 (rules!11221 thiss!10022)) (is-Nil!14770 (rules!11221 thiss!10022)))))

(assert (=> b!1423982 d!407953))

(declare-fun d!407955 () Bool)

(assert (=> d!407955 (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482815)))

(declare-fun lt!482859 () Unit!22257)

(declare-fun choose!8762 (LexerInterface!2250 List!14836 List!14835 Token!4834) Unit!22257)

(assert (=> d!407955 (= lt!482859 (choose!8762 Lexer!2248 (rules!11221 thiss!10022) lt!482822 lt!482815))))

(assert (=> d!407955 (not (isEmpty!9137 (rules!11221 thiss!10022)))))

(assert (=> d!407955 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!368 Lexer!2248 (rules!11221 thiss!10022) lt!482822 lt!482815) lt!482859)))

(declare-fun bs!339983 () Bool)

(assert (= bs!339983 d!407955))

(assert (=> bs!339983 m!1617395))

(declare-fun m!1617501 () Bool)

(assert (=> bs!339983 m!1617501))

(assert (=> bs!339983 m!1617399))

(assert (=> b!1423982 d!407955))

(declare-fun d!407965 () Bool)

(declare-fun lt!482864 () Bool)

(declare-fun e!909167 () Bool)

(assert (=> d!407965 (= lt!482864 e!909167)))

(declare-fun res!644851 () Bool)

(assert (=> d!407965 (=> (not res!644851) (not e!909167))))

(declare-datatypes ((tuple2!14056 0))(
  ( (tuple2!14057 (_1!7914 BalanceConc!9938) (_2!7914 BalanceConc!9936)) )
))
(declare-fun lex!1027 (LexerInterface!2250 List!14836 BalanceConc!9936) tuple2!14056)

(declare-fun print!1036 (LexerInterface!2250 BalanceConc!9938) BalanceConc!9936)

(declare-fun singletonSeq!1194 (Token!4834) BalanceConc!9938)

(assert (=> d!407965 (= res!644851 (= (list!5861 (_1!7914 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482815))))) (list!5861 (singletonSeq!1194 lt!482815))))))

(declare-fun e!909168 () Bool)

(assert (=> d!407965 (= lt!482864 e!909168)))

(declare-fun res!644852 () Bool)

(assert (=> d!407965 (=> (not res!644852) (not e!909168))))

(declare-fun lt!482865 () tuple2!14056)

(declare-fun size!12128 (BalanceConc!9938) Int)

(assert (=> d!407965 (= res!644852 (= (size!12128 (_1!7914 lt!482865)) 1))))

(assert (=> d!407965 (= lt!482865 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482815))))))

(assert (=> d!407965 (not (isEmpty!9137 (rules!11221 thiss!10022)))))

(assert (=> d!407965 (= (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482815) lt!482864)))

(declare-fun b!1424078 () Bool)

(declare-fun res!644850 () Bool)

(assert (=> b!1424078 (=> (not res!644850) (not e!909168))))

(declare-fun apply!3761 (BalanceConc!9938 Int) Token!4834)

(assert (=> b!1424078 (= res!644850 (= (apply!3761 (_1!7914 lt!482865) 0) lt!482815))))

(declare-fun b!1424079 () Bool)

(declare-fun isEmpty!9142 (BalanceConc!9936) Bool)

(assert (=> b!1424079 (= e!909168 (isEmpty!9142 (_2!7914 lt!482865)))))

(declare-fun b!1424080 () Bool)

(assert (=> b!1424080 (= e!909167 (isEmpty!9142 (_2!7914 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482815))))))))

(assert (= (and d!407965 res!644852) b!1424078))

(assert (= (and b!1424078 res!644850) b!1424079))

(assert (= (and d!407965 res!644851) b!1424080))

(declare-fun m!1617503 () Bool)

(assert (=> d!407965 m!1617503))

(declare-fun m!1617505 () Bool)

(assert (=> d!407965 m!1617505))

(assert (=> d!407965 m!1617503))

(declare-fun m!1617507 () Bool)

(assert (=> d!407965 m!1617507))

(declare-fun m!1617509 () Bool)

(assert (=> d!407965 m!1617509))

(declare-fun m!1617511 () Bool)

(assert (=> d!407965 m!1617511))

(declare-fun m!1617513 () Bool)

(assert (=> d!407965 m!1617513))

(assert (=> d!407965 m!1617503))

(assert (=> d!407965 m!1617509))

(assert (=> d!407965 m!1617399))

(declare-fun m!1617515 () Bool)

(assert (=> b!1424078 m!1617515))

(declare-fun m!1617517 () Bool)

(assert (=> b!1424079 m!1617517))

(assert (=> b!1424080 m!1617503))

(assert (=> b!1424080 m!1617503))

(assert (=> b!1424080 m!1617509))

(assert (=> b!1424080 m!1617509))

(assert (=> b!1424080 m!1617511))

(declare-fun m!1617519 () Bool)

(assert (=> b!1424080 m!1617519))

(assert (=> b!1423982 d!407965))

(declare-fun d!407971 () Bool)

(assert (=> d!407971 (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482818)))

(declare-fun lt!482866 () Unit!22257)

(assert (=> d!407971 (= lt!482866 (choose!8762 Lexer!2248 (rules!11221 thiss!10022) lt!482820 lt!482818))))

(assert (=> d!407971 (not (isEmpty!9137 (rules!11221 thiss!10022)))))

(assert (=> d!407971 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!368 Lexer!2248 (rules!11221 thiss!10022) lt!482820 lt!482818) lt!482866)))

(declare-fun bs!339984 () Bool)

(assert (= bs!339984 d!407971))

(assert (=> bs!339984 m!1617385))

(declare-fun m!1617521 () Bool)

(assert (=> bs!339984 m!1617521))

(assert (=> bs!339984 m!1617399))

(assert (=> b!1423982 d!407971))

(declare-fun d!407973 () Bool)

(assert (=> d!407973 (= (list!5861 (tokens!1913 other!32)) (list!5863 (c!234087 (tokens!1913 other!32))))))

(declare-fun bs!339985 () Bool)

(assert (= bs!339985 d!407973))

(declare-fun m!1617523 () Bool)

(assert (=> bs!339985 m!1617523))

(assert (=> b!1423982 d!407973))

(declare-fun d!407975 () Bool)

(declare-fun lt!482867 () Bool)

(declare-fun e!909169 () Bool)

(assert (=> d!407975 (= lt!482867 e!909169)))

(declare-fun res!644854 () Bool)

(assert (=> d!407975 (=> (not res!644854) (not e!909169))))

(assert (=> d!407975 (= res!644854 (= (list!5861 (_1!7914 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482818))))) (list!5861 (singletonSeq!1194 lt!482818))))))

(declare-fun e!909170 () Bool)

(assert (=> d!407975 (= lt!482867 e!909170)))

(declare-fun res!644855 () Bool)

(assert (=> d!407975 (=> (not res!644855) (not e!909170))))

(declare-fun lt!482868 () tuple2!14056)

(assert (=> d!407975 (= res!644855 (= (size!12128 (_1!7914 lt!482868)) 1))))

(assert (=> d!407975 (= lt!482868 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482818))))))

(assert (=> d!407975 (not (isEmpty!9137 (rules!11221 thiss!10022)))))

(assert (=> d!407975 (= (rulesProduceIndividualToken!1183 Lexer!2248 (rules!11221 thiss!10022) lt!482818) lt!482867)))

(declare-fun b!1424081 () Bool)

(declare-fun res!644853 () Bool)

(assert (=> b!1424081 (=> (not res!644853) (not e!909170))))

(assert (=> b!1424081 (= res!644853 (= (apply!3761 (_1!7914 lt!482868) 0) lt!482818))))

(declare-fun b!1424082 () Bool)

(assert (=> b!1424082 (= e!909170 (isEmpty!9142 (_2!7914 lt!482868)))))

(declare-fun b!1424083 () Bool)

(assert (=> b!1424083 (= e!909169 (isEmpty!9142 (_2!7914 (lex!1027 Lexer!2248 (rules!11221 thiss!10022) (print!1036 Lexer!2248 (singletonSeq!1194 lt!482818))))))))

(assert (= (and d!407975 res!644855) b!1424081))

(assert (= (and b!1424081 res!644853) b!1424082))

(assert (= (and d!407975 res!644854) b!1424083))

(declare-fun m!1617525 () Bool)

(assert (=> d!407975 m!1617525))

(declare-fun m!1617527 () Bool)

(assert (=> d!407975 m!1617527))

(assert (=> d!407975 m!1617525))

(declare-fun m!1617529 () Bool)

(assert (=> d!407975 m!1617529))

(declare-fun m!1617531 () Bool)

(assert (=> d!407975 m!1617531))

(declare-fun m!1617533 () Bool)

(assert (=> d!407975 m!1617533))

(declare-fun m!1617535 () Bool)

(assert (=> d!407975 m!1617535))

(assert (=> d!407975 m!1617525))

(assert (=> d!407975 m!1617531))

(assert (=> d!407975 m!1617399))

(declare-fun m!1617537 () Bool)

(assert (=> b!1424081 m!1617537))

(declare-fun m!1617539 () Bool)

(assert (=> b!1424082 m!1617539))

(assert (=> b!1424083 m!1617525))

(assert (=> b!1424083 m!1617525))

(assert (=> b!1424083 m!1617531))

(assert (=> b!1424083 m!1617531))

(assert (=> b!1424083 m!1617533))

(declare-fun m!1617541 () Bool)

(assert (=> b!1424083 m!1617541))

(assert (=> b!1423982 d!407975))

(declare-fun d!407977 () Bool)

(declare-fun lt!482871 () Token!4834)

(declare-fun last!104 (List!14835) Token!4834)

(assert (=> d!407977 (= lt!482871 (last!104 (list!5861 (tokens!1913 thiss!10022))))))

(declare-fun last!105 (Conc!4999) Token!4834)

(assert (=> d!407977 (= lt!482871 (last!105 (c!234087 (tokens!1913 thiss!10022))))))

(assert (=> d!407977 (not (isEmpty!9136 (tokens!1913 thiss!10022)))))

(assert (=> d!407977 (= (last!102 (tokens!1913 thiss!10022)) lt!482871)))

(declare-fun bs!339986 () Bool)

(assert (= bs!339986 d!407977))

(assert (=> bs!339986 m!1617397))

(assert (=> bs!339986 m!1617397))

(declare-fun m!1617543 () Bool)

(assert (=> bs!339986 m!1617543))

(declare-fun m!1617545 () Bool)

(assert (=> bs!339986 m!1617545))

(assert (=> bs!339986 m!1617369))

(assert (=> b!1423982 d!407977))

(declare-fun d!407979 () Bool)

(declare-fun c!234097 () Bool)

(assert (=> d!407979 (= c!234097 (is-Node!4999 (c!234087 (tokens!1913 other!32))))))

(declare-fun e!909171 () Bool)

(assert (=> d!407979 (= (inv!19585 (c!234087 (tokens!1913 other!32))) e!909171)))

(declare-fun b!1424084 () Bool)

(assert (=> b!1424084 (= e!909171 (inv!19590 (c!234087 (tokens!1913 other!32))))))

(declare-fun b!1424085 () Bool)

(declare-fun e!909172 () Bool)

(assert (=> b!1424085 (= e!909171 e!909172)))

(declare-fun res!644856 () Bool)

(assert (=> b!1424085 (= res!644856 (not (is-Leaf!7494 (c!234087 (tokens!1913 other!32)))))))

(assert (=> b!1424085 (=> res!644856 e!909172)))

(declare-fun b!1424086 () Bool)

(assert (=> b!1424086 (= e!909172 (inv!19591 (c!234087 (tokens!1913 other!32))))))

(assert (= (and d!407979 c!234097) b!1424084))

(assert (= (and d!407979 (not c!234097)) b!1424085))

(assert (= (and b!1424085 (not res!644856)) b!1424086))

(declare-fun m!1617547 () Bool)

(assert (=> b!1424084 m!1617547))

(declare-fun m!1617549 () Bool)

(assert (=> b!1424086 m!1617549))

(assert (=> b!1423981 d!407979))

(declare-fun d!407981 () Bool)

(declare-fun res!644859 () Bool)

(declare-fun e!909175 () Bool)

(assert (=> d!407981 (=> (not res!644859) (not e!909175))))

(declare-fun rulesValid!950 (LexerInterface!2250 List!14836) Bool)

(assert (=> d!407981 (= res!644859 (rulesValid!950 Lexer!2248 (rules!11221 thiss!10022)))))

(assert (=> d!407981 (= (rulesInvariant!2100 Lexer!2248 (rules!11221 thiss!10022)) e!909175)))

(declare-fun b!1424089 () Bool)

(declare-datatypes ((List!14841 0))(
  ( (Nil!14775) (Cons!14775 (h!20176 String!17638) (t!124691 List!14841)) )
))
(declare-fun noDuplicateTag!950 (LexerInterface!2250 List!14836 List!14841) Bool)

(assert (=> b!1424089 (= e!909175 (noDuplicateTag!950 Lexer!2248 (rules!11221 thiss!10022) Nil!14775))))

(assert (= (and d!407981 res!644859) b!1424089))

(declare-fun m!1617551 () Bool)

(assert (=> d!407981 m!1617551))

(declare-fun m!1617553 () Bool)

(assert (=> b!1424089 m!1617553))

(assert (=> b!1423986 d!407981))

(declare-fun b!1424100 () Bool)

(declare-fun b_free!35127 () Bool)

(declare-fun b_next!35831 () Bool)

(assert (=> b!1424100 (= b_free!35127 (not b_next!35831))))

(declare-fun tp!403727 () Bool)

(declare-fun b_and!95143 () Bool)

(assert (=> b!1424100 (= tp!403727 b_and!95143)))

(declare-fun b_free!35129 () Bool)

(declare-fun b_next!35833 () Bool)

(assert (=> b!1424100 (= b_free!35129 (not b_next!35833))))

(declare-fun tp!403729 () Bool)

(declare-fun b_and!95145 () Bool)

(assert (=> b!1424100 (= tp!403729 b_and!95145)))

(declare-fun e!909185 () Bool)

(assert (=> b!1424100 (= e!909185 (and tp!403727 tp!403729))))

(declare-fun tp!403728 () Bool)

(declare-fun e!909187 () Bool)

(declare-fun b!1424099 () Bool)

(declare-fun inv!19581 (String!17638) Bool)

(declare-fun inv!19592 (TokenValueInjection!5012) Bool)

(assert (=> b!1424099 (= e!909187 (and tp!403728 (inv!19581 (tag!2848 (h!20171 (rules!11221 thiss!10022)))) (inv!19592 (transformation!2586 (h!20171 (rules!11221 thiss!10022)))) e!909185))))

(declare-fun b!1424098 () Bool)

(declare-fun e!909184 () Bool)

(declare-fun tp!403730 () Bool)

(assert (=> b!1424098 (= e!909184 (and e!909187 tp!403730))))

(assert (=> b!1423985 (= tp!403706 e!909184)))

(assert (= b!1424099 b!1424100))

(assert (= b!1424098 b!1424099))

(assert (= (and b!1423985 (is-Cons!14770 (rules!11221 thiss!10022))) b!1424098))

(declare-fun m!1617555 () Bool)

(assert (=> b!1424099 m!1617555))

(declare-fun m!1617557 () Bool)

(assert (=> b!1424099 m!1617557))

(declare-fun b!1424109 () Bool)

(declare-fun tp!403739 () Bool)

(declare-fun e!909192 () Bool)

(declare-fun tp!403738 () Bool)

(assert (=> b!1424109 (= e!909192 (and (inv!19585 (left!12595 (c!234087 (tokens!1913 thiss!10022)))) tp!403739 (inv!19585 (right!12925 (c!234087 (tokens!1913 thiss!10022)))) tp!403738))))

(declare-fun b!1424111 () Bool)

(declare-fun e!909193 () Bool)

(declare-fun tp!403737 () Bool)

(assert (=> b!1424111 (= e!909193 tp!403737)))

(declare-fun b!1424110 () Bool)

(declare-fun inv!19593 (IArray!10003) Bool)

(assert (=> b!1424110 (= e!909192 (and (inv!19593 (xs!7728 (c!234087 (tokens!1913 thiss!10022)))) e!909193))))

(assert (=> b!1423984 (= tp!403705 (and (inv!19585 (c!234087 (tokens!1913 thiss!10022))) e!909192))))

(assert (= (and b!1423984 (is-Node!4999 (c!234087 (tokens!1913 thiss!10022)))) b!1424109))

(assert (= b!1424110 b!1424111))

(assert (= (and b!1423984 (is-Leaf!7494 (c!234087 (tokens!1913 thiss!10022)))) b!1424110))

(declare-fun m!1617559 () Bool)

(assert (=> b!1424109 m!1617559))

(declare-fun m!1617561 () Bool)

(assert (=> b!1424109 m!1617561))

(declare-fun m!1617563 () Bool)

(assert (=> b!1424110 m!1617563))

(assert (=> b!1423984 m!1617371))

(declare-fun b!1424114 () Bool)

(declare-fun b_free!35131 () Bool)

(declare-fun b_next!35835 () Bool)

(assert (=> b!1424114 (= b_free!35131 (not b_next!35835))))

(declare-fun tp!403740 () Bool)

(declare-fun b_and!95147 () Bool)

(assert (=> b!1424114 (= tp!403740 b_and!95147)))

(declare-fun b_free!35133 () Bool)

(declare-fun b_next!35837 () Bool)

(assert (=> b!1424114 (= b_free!35133 (not b_next!35837))))

(declare-fun tp!403742 () Bool)

(declare-fun b_and!95149 () Bool)

(assert (=> b!1424114 (= tp!403742 b_and!95149)))

(declare-fun e!909195 () Bool)

(assert (=> b!1424114 (= e!909195 (and tp!403740 tp!403742))))

(declare-fun e!909197 () Bool)

(declare-fun tp!403741 () Bool)

(declare-fun b!1424113 () Bool)

(assert (=> b!1424113 (= e!909197 (and tp!403741 (inv!19581 (tag!2848 (h!20171 (rules!11221 other!32)))) (inv!19592 (transformation!2586 (h!20171 (rules!11221 other!32)))) e!909195))))

(declare-fun b!1424112 () Bool)

(declare-fun e!909194 () Bool)

(declare-fun tp!403743 () Bool)

(assert (=> b!1424112 (= e!909194 (and e!909197 tp!403743))))

(assert (=> b!1423983 (= tp!403704 e!909194)))

(assert (= b!1424113 b!1424114))

(assert (= b!1424112 b!1424113))

(assert (= (and b!1423983 (is-Cons!14770 (rules!11221 other!32))) b!1424112))

(declare-fun m!1617565 () Bool)

(assert (=> b!1424113 m!1617565))

(declare-fun m!1617567 () Bool)

(assert (=> b!1424113 m!1617567))

(declare-fun tp!403746 () Bool)

(declare-fun e!909198 () Bool)

(declare-fun tp!403745 () Bool)

(declare-fun b!1424115 () Bool)

(assert (=> b!1424115 (= e!909198 (and (inv!19585 (left!12595 (c!234087 (tokens!1913 other!32)))) tp!403746 (inv!19585 (right!12925 (c!234087 (tokens!1913 other!32)))) tp!403745))))

(declare-fun b!1424117 () Bool)

(declare-fun e!909199 () Bool)

(declare-fun tp!403744 () Bool)

(assert (=> b!1424117 (= e!909199 tp!403744)))

(declare-fun b!1424116 () Bool)

(assert (=> b!1424116 (= e!909198 (and (inv!19593 (xs!7728 (c!234087 (tokens!1913 other!32)))) e!909199))))

(assert (=> b!1423981 (= tp!403703 (and (inv!19585 (c!234087 (tokens!1913 other!32))) e!909198))))

(assert (= (and b!1423981 (is-Node!4999 (c!234087 (tokens!1913 other!32)))) b!1424115))

(assert (= b!1424116 b!1424117))

(assert (= (and b!1423981 (is-Leaf!7494 (c!234087 (tokens!1913 other!32)))) b!1424116))

(declare-fun m!1617569 () Bool)

(assert (=> b!1424115 m!1617569))

(declare-fun m!1617571 () Bool)

(assert (=> b!1424115 m!1617571))

(declare-fun m!1617573 () Bool)

(assert (=> b!1424116 m!1617573))

(assert (=> b!1423981 m!1617373))

(push 1)

(assert b_and!95149)

(assert (not b_next!35837))

(assert (not b!1424109))

(assert (not b!1424112))

(assert (not b!1423984))

(assert (not d!407951))

(assert (not b!1424041))

(assert (not d!407935))

(assert (not b!1424081))

(assert (not d!407939))

(assert (not b!1424084))

(assert (not d!407937))

(assert (not d!407925))

(assert (not b!1424028))

(assert (not b!1424018))

(assert (not b!1424039))

(assert (not b!1423981))

(assert (not b!1424040))

(assert (not b!1424098))

(assert (not b_next!35833))

(assert (not b!1424116))

(assert (not b!1424086))

(assert (not d!407943))

(assert (not b!1424082))

(assert (not b!1424042))

(assert (not d!407971))

(assert (not b!1424079))

(assert b_and!95147)

(assert (not d!407929))

(assert (not b!1424019))

(assert b_and!95145)

(assert (not d!407947))

(assert (not d!407945))

(assert (not b_next!35831))

(assert (not b!1424113))

(assert (not d!407965))

(assert b_and!95143)

(assert (not b!1424089))

(assert (not b_next!35835))

(assert (not b!1424083))

(assert (not b!1424080))

(assert (not d!407949))

(assert (not b!1424110))

(assert (not d!407973))

(assert (not b!1424030))

(assert (not b!1424038))

(assert (not d!407955))

(assert (not b!1424021))

(assert (not b!1424078))

(assert (not d!407981))

(assert (not b!1424115))

(assert (not d!407977))

(assert (not d!407975))

(assert (not b!1424117))

(assert (not b!1424037))

(assert (not b!1424111))

(assert (not b!1424099))

(assert (not b!1424020))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35833))

(assert b_and!95149)

(assert (not b_next!35837))

(assert b_and!95147)

(assert b_and!95145)

(assert (not b_next!35835))

(assert (not b_next!35831))

(assert b_and!95143)

(check-sat)

(pop 1)

