; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224504 () Bool)

(assert start!224504)

(declare-fun b!2288281 () Bool)

(declare-fun b_free!68637 () Bool)

(declare-fun b_next!69341 () Bool)

(assert (=> b!2288281 (= b_free!68637 (not b_next!69341))))

(declare-fun tp!725433 () Bool)

(declare-fun b_and!181409 () Bool)

(assert (=> b!2288281 (= tp!725433 b_and!181409)))

(declare-fun b_free!68639 () Bool)

(declare-fun b_next!69343 () Bool)

(assert (=> b!2288281 (= b_free!68639 (not b_next!69343))))

(declare-fun tp!725441 () Bool)

(declare-fun b_and!181411 () Bool)

(assert (=> b!2288281 (= tp!725441 b_and!181411)))

(declare-fun b!2288264 () Bool)

(declare-fun b_free!68641 () Bool)

(declare-fun b_next!69345 () Bool)

(assert (=> b!2288264 (= b_free!68641 (not b_next!69345))))

(declare-fun tp!725444 () Bool)

(declare-fun b_and!181413 () Bool)

(assert (=> b!2288264 (= tp!725444 b_and!181413)))

(declare-fun b_free!68643 () Bool)

(declare-fun b_next!69347 () Bool)

(assert (=> b!2288264 (= b_free!68643 (not b_next!69347))))

(declare-fun tp!725439 () Bool)

(declare-fun b_and!181415 () Bool)

(assert (=> b!2288264 (= tp!725439 b_and!181415)))

(declare-fun b!2288260 () Bool)

(declare-fun b_free!68645 () Bool)

(declare-fun b_next!69349 () Bool)

(assert (=> b!2288260 (= b_free!68645 (not b_next!69349))))

(declare-fun tp!725436 () Bool)

(declare-fun b_and!181417 () Bool)

(assert (=> b!2288260 (= tp!725436 b_and!181417)))

(declare-fun b_free!68647 () Bool)

(declare-fun b_next!69351 () Bool)

(assert (=> b!2288260 (= b_free!68647 (not b_next!69351))))

(declare-fun tp!725448 () Bool)

(declare-fun b_and!181419 () Bool)

(assert (=> b!2288260 (= tp!725448 b_and!181419)))

(declare-fun b!2288282 () Bool)

(declare-fun b_free!68649 () Bool)

(declare-fun b_next!69353 () Bool)

(assert (=> b!2288282 (= b_free!68649 (not b_next!69353))))

(declare-fun tp!725446 () Bool)

(declare-fun b_and!181421 () Bool)

(assert (=> b!2288282 (= tp!725446 b_and!181421)))

(declare-fun b_free!68651 () Bool)

(declare-fun b_next!69355 () Bool)

(assert (=> b!2288282 (= b_free!68651 (not b_next!69355))))

(declare-fun tp!725442 () Bool)

(declare-fun b_and!181423 () Bool)

(assert (=> b!2288282 (= tp!725442 b_and!181423)))

(declare-fun e!1466073 () Bool)

(declare-fun e!1466090 () Bool)

(declare-fun tp!725440 () Bool)

(declare-fun b!2288257 () Bool)

(declare-datatypes ((List!27325 0))(
  ( (Nil!27231) (Cons!27231 (h!32632 (_ BitVec 16)) (t!204377 List!27325)) )
))
(declare-datatypes ((TokenValue!4517 0))(
  ( (FloatLiteralValue!9034 (text!32064 List!27325)) (TokenValueExt!4516 (__x!18094 Int)) (Broken!22585 (value!137911 List!27325)) (Object!4610) (End!4517) (Def!4517) (Underscore!4517) (Match!4517) (Else!4517) (Error!4517) (Case!4517) (If!4517) (Extends!4517) (Abstract!4517) (Class!4517) (Val!4517) (DelimiterValue!9034 (del!4577 List!27325)) (KeywordValue!4523 (value!137912 List!27325)) (CommentValue!9034 (value!137913 List!27325)) (WhitespaceValue!9034 (value!137914 List!27325)) (IndentationValue!4517 (value!137915 List!27325)) (String!29688) (Int32!4517) (Broken!22586 (value!137916 List!27325)) (Boolean!4518) (Unit!40127) (OperatorValue!4520 (op!4577 List!27325)) (IdentifierValue!9034 (value!137917 List!27325)) (IdentifierValue!9035 (value!137918 List!27325)) (WhitespaceValue!9035 (value!137919 List!27325)) (True!9034) (False!9034) (Broken!22587 (value!137920 List!27325)) (Broken!22588 (value!137921 List!27325)) (True!9035) (RightBrace!4517) (RightBracket!4517) (Colon!4517) (Null!4517) (Comma!4517) (LeftBracket!4517) (False!9035) (LeftBrace!4517) (ImaginaryLiteralValue!4517 (text!32065 List!27325)) (StringLiteralValue!13551 (value!137922 List!27325)) (EOFValue!4517 (value!137923 List!27325)) (IdentValue!4517 (value!137924 List!27325)) (DelimiterValue!9035 (value!137925 List!27325)) (DedentValue!4517 (value!137926 List!27325)) (NewLineValue!4517 (value!137927 List!27325)) (IntegerValue!13551 (value!137928 (_ BitVec 32)) (text!32066 List!27325)) (IntegerValue!13552 (value!137929 Int) (text!32067 List!27325)) (Times!4517) (Or!4517) (Equal!4517) (Minus!4517) (Broken!22589 (value!137930 List!27325)) (And!4517) (Div!4517) (LessEqual!4517) (Mod!4517) (Concat!11220) (Not!4517) (Plus!4517) (SpaceValue!4517 (value!137931 List!27325)) (IntegerValue!13553 (value!137932 Int) (text!32068 List!27325)) (StringLiteralValue!13552 (text!32069 List!27325)) (FloatLiteralValue!9035 (text!32070 List!27325)) (BytesLiteralValue!4517 (value!137933 List!27325)) (CommentValue!9035 (value!137934 List!27325)) (StringLiteralValue!13553 (value!137935 List!27325)) (ErrorTokenValue!4517 (msg!4578 List!27325)) )
))
(declare-datatypes ((C!13552 0))(
  ( (C!13553 (val!7824 Int)) )
))
(declare-datatypes ((List!27326 0))(
  ( (Nil!27232) (Cons!27232 (h!32633 C!13552) (t!204378 List!27326)) )
))
(declare-datatypes ((IArray!17721 0))(
  ( (IArray!17722 (innerList!8918 List!27326)) )
))
(declare-datatypes ((Conc!8858 0))(
  ( (Node!8858 (left!20648 Conc!8858) (right!20978 Conc!8858) (csize!17946 Int) (cheight!9069 Int)) (Leaf!13021 (xs!11800 IArray!17721) (csize!17947 Int)) (Empty!8858) )
))
(declare-datatypes ((BalanceConc!17444 0))(
  ( (BalanceConc!17445 (c!362948 Conc!8858)) )
))
(declare-datatypes ((String!29689 0))(
  ( (String!29690 (value!137936 String)) )
))
(declare-datatypes ((Regex!6703 0))(
  ( (ElementMatch!6703 (c!362949 C!13552)) (Concat!11221 (regOne!13918 Regex!6703) (regTwo!13918 Regex!6703)) (EmptyExpr!6703) (Star!6703 (reg!7032 Regex!6703)) (EmptyLang!6703) (Union!6703 (regOne!13919 Regex!6703) (regTwo!13919 Regex!6703)) )
))
(declare-datatypes ((TokenValueInjection!8574 0))(
  ( (TokenValueInjection!8575 (toValue!6145 Int) (toChars!6004 Int)) )
))
(declare-datatypes ((Rule!8510 0))(
  ( (Rule!8511 (regex!4355 Regex!6703) (tag!4845 String!29689) (isSeparator!4355 Bool) (transformation!4355 TokenValueInjection!8574)) )
))
(declare-fun otherR!12 () Rule!8510)

(declare-fun inv!36828 (String!29689) Bool)

(declare-fun inv!36831 (TokenValueInjection!8574) Bool)

(assert (=> b!2288257 (= e!1466073 (and tp!725440 (inv!36828 (tag!4845 otherR!12)) (inv!36831 (transformation!4355 otherR!12)) e!1466090))))

(declare-fun e!1466089 () Bool)

(declare-fun e!1466080 () Bool)

(declare-fun b!2288258 () Bool)

(declare-fun tp!725435 () Bool)

(declare-datatypes ((List!27327 0))(
  ( (Nil!27233) (Cons!27233 (h!32634 Rule!8510) (t!204379 List!27327)) )
))
(declare-fun rules!1750 () List!27327)

(assert (=> b!2288258 (= e!1466080 (and tp!725435 (inv!36828 (tag!4845 (h!32634 rules!1750))) (inv!36831 (transformation!4355 (h!32634 rules!1750))) e!1466089))))

(declare-fun b!2288259 () Bool)

(declare-fun res!978276 () Bool)

(declare-fun e!1466087 () Bool)

(assert (=> b!2288259 (=> (not res!978276) (not e!1466087))))

(declare-fun isEmpty!15497 (List!27327) Bool)

(assert (=> b!2288259 (= res!978276 (not (isEmpty!15497 rules!1750)))))

(declare-fun e!1466092 () Bool)

(assert (=> b!2288260 (= e!1466092 (and tp!725436 tp!725448))))

(declare-fun b!2288261 () Bool)

(declare-fun e!1466094 () Bool)

(declare-fun tp_is_empty!10627 () Bool)

(declare-fun tp!725449 () Bool)

(assert (=> b!2288261 (= e!1466094 (and tp_is_empty!10627 tp!725449))))

(declare-fun b!2288262 () Bool)

(declare-fun e!1466082 () Bool)

(declare-fun tp!725447 () Bool)

(assert (=> b!2288262 (= e!1466082 (and e!1466080 tp!725447))))

(declare-fun e!1466079 () Bool)

(declare-datatypes ((Token!8188 0))(
  ( (Token!8189 (value!137937 TokenValue!4517) (rule!6685 Rule!8510) (size!21432 Int) (originalCharacters!5125 List!27326)) )
))
(declare-datatypes ((List!27328 0))(
  ( (Nil!27234) (Cons!27234 (h!32635 Token!8188) (t!204380 List!27328)) )
))
(declare-fun tokens!456 () List!27328)

(declare-fun tp!725437 () Bool)

(declare-fun b!2288263 () Bool)

(declare-fun e!1466093 () Bool)

(declare-fun inv!36832 (Token!8188) Bool)

(assert (=> b!2288263 (= e!1466079 (and (inv!36832 (h!32635 tokens!456)) e!1466093 tp!725437))))

(declare-fun res!978262 () Bool)

(assert (=> start!224504 (=> (not res!978262) (not e!1466087))))

(declare-datatypes ((LexerInterface!3952 0))(
  ( (LexerInterfaceExt!3949 (__x!18095 Int)) (Lexer!3950) )
))
(declare-fun thiss!16613 () LexerInterface!3952)

(get-info :version)

(assert (=> start!224504 (= res!978262 ((_ is Lexer!3950) thiss!16613))))

(assert (=> start!224504 e!1466087))

(assert (=> start!224504 true))

(declare-fun e!1466085 () Bool)

(assert (=> start!224504 e!1466085))

(assert (=> start!224504 e!1466073))

(assert (=> start!224504 e!1466094))

(declare-fun e!1466083 () Bool)

(assert (=> start!224504 e!1466083))

(assert (=> start!224504 e!1466082))

(declare-fun e!1466074 () Bool)

(assert (=> start!224504 e!1466074))

(assert (=> start!224504 e!1466079))

(assert (=> b!2288264 (= e!1466089 (and tp!725444 tp!725439))))

(declare-fun b!2288265 () Bool)

(declare-fun e!1466091 () Bool)

(declare-fun e!1466095 () Bool)

(assert (=> b!2288265 (= e!1466091 e!1466095)))

(declare-fun res!978264 () Bool)

(assert (=> b!2288265 (=> res!978264 e!1466095)))

(declare-fun lt!849038 () Int)

(declare-fun lt!849039 () Int)

(assert (=> b!2288265 (= res!978264 (= lt!849038 lt!849039))))

(declare-fun lt!849037 () List!27326)

(declare-fun size!21433 (List!27326) Int)

(assert (=> b!2288265 (= lt!849039 (size!21433 lt!849037))))

(declare-fun otherP!12 () List!27326)

(assert (=> b!2288265 (= lt!849038 (size!21433 otherP!12))))

(declare-datatypes ((tuple2!27018 0))(
  ( (tuple2!27019 (_1!16019 Token!8188) (_2!16019 List!27326)) )
))
(declare-fun lt!849035 () tuple2!27018)

(declare-fun lt!849032 () List!27326)

(assert (=> b!2288265 (= (_2!16019 lt!849035) lt!849032)))

(declare-datatypes ((Unit!40128 0))(
  ( (Unit!40129) )
))
(declare-fun lt!849030 () Unit!40128)

(declare-fun input!1722 () List!27326)

(declare-fun lemmaSamePrefixThenSameSuffix!1046 (List!27326 List!27326 List!27326 List!27326 List!27326) Unit!40128)

(assert (=> b!2288265 (= lt!849030 (lemmaSamePrefixThenSameSuffix!1046 lt!849037 (_2!16019 lt!849035) lt!849037 lt!849032 input!1722))))

(declare-fun getSuffix!1136 (List!27326 List!27326) List!27326)

(assert (=> b!2288265 (= lt!849032 (getSuffix!1136 input!1722 lt!849037))))

(declare-fun isPrefix!2345 (List!27326 List!27326) Bool)

(declare-fun ++!6655 (List!27326 List!27326) List!27326)

(assert (=> b!2288265 (isPrefix!2345 lt!849037 (++!6655 lt!849037 (_2!16019 lt!849035)))))

(declare-fun lt!849034 () Unit!40128)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1550 (List!27326 List!27326) Unit!40128)

(assert (=> b!2288265 (= lt!849034 (lemmaConcatTwoListThenFirstIsPrefix!1550 lt!849037 (_2!16019 lt!849035)))))

(declare-fun list!10652 (BalanceConc!17444) List!27326)

(declare-fun charsOf!2743 (Token!8188) BalanceConc!17444)

(assert (=> b!2288265 (= lt!849037 (list!10652 (charsOf!2743 (h!32635 tokens!456))))))

(declare-fun b!2288266 () Bool)

(declare-fun e!1466081 () Bool)

(assert (=> b!2288266 (= e!1466087 e!1466081)))

(declare-fun res!978274 () Bool)

(assert (=> b!2288266 (=> (not res!978274) (not e!1466081))))

(declare-fun suffix!886 () List!27326)

(declare-datatypes ((IArray!17723 0))(
  ( (IArray!17724 (innerList!8919 List!27328)) )
))
(declare-datatypes ((Conc!8859 0))(
  ( (Node!8859 (left!20649 Conc!8859) (right!20979 Conc!8859) (csize!17948 Int) (cheight!9070 Int)) (Leaf!13022 (xs!11801 IArray!17723) (csize!17949 Int)) (Empty!8859) )
))
(declare-datatypes ((BalanceConc!17446 0))(
  ( (BalanceConc!17447 (c!362950 Conc!8859)) )
))
(declare-datatypes ((tuple2!27020 0))(
  ( (tuple2!27021 (_1!16020 BalanceConc!17446) (_2!16020 BalanceConc!17444)) )
))
(declare-fun lt!849029 () tuple2!27020)

(declare-datatypes ((tuple2!27022 0))(
  ( (tuple2!27023 (_1!16021 List!27328) (_2!16021 List!27326)) )
))
(declare-fun list!10653 (BalanceConc!17446) List!27328)

(assert (=> b!2288266 (= res!978274 (= (tuple2!27023 (list!10653 (_1!16020 lt!849029)) (list!10652 (_2!16020 lt!849029))) (tuple2!27023 tokens!456 suffix!886)))))

(declare-fun lex!1791 (LexerInterface!3952 List!27327 BalanceConc!17444) tuple2!27020)

(declare-fun seqFromList!3059 (List!27326) BalanceConc!17444)

(assert (=> b!2288266 (= lt!849029 (lex!1791 thiss!16613 rules!1750 (seqFromList!3059 input!1722)))))

(declare-fun b!2288267 () Bool)

(declare-fun res!978265 () Bool)

(declare-fun e!1466097 () Bool)

(assert (=> b!2288267 (=> res!978265 e!1466097)))

(assert (=> b!2288267 (= res!978265 ((_ is Nil!27234) tokens!456))))

(declare-fun r!2363 () Rule!8510)

(declare-fun b!2288268 () Bool)

(declare-fun tp!725432 () Bool)

(assert (=> b!2288268 (= e!1466074 (and tp!725432 (inv!36828 (tag!4845 r!2363)) (inv!36831 (transformation!4355 r!2363)) e!1466092))))

(declare-fun b!2288269 () Bool)

(declare-fun e!1466100 () Bool)

(declare-fun size!21434 (BalanceConc!17444) Int)

(declare-fun head!4978 (List!27328) Token!8188)

(assert (=> b!2288269 (= e!1466100 (<= (size!21434 (charsOf!2743 (head!4978 tokens!456))) (size!21433 otherP!12)))))

(declare-fun b!2288270 () Bool)

(declare-fun e!1466101 () Bool)

(declare-fun matchR!2960 (Regex!6703 List!27326) Bool)

(assert (=> b!2288270 (= e!1466101 (not (matchR!2960 (regex!4355 r!2363) (list!10652 (charsOf!2743 (head!4978 tokens!456))))))))

(declare-fun b!2288271 () Bool)

(declare-fun e!1466077 () Bool)

(assert (=> b!2288271 (= e!1466077 (= (rule!6685 (head!4978 tokens!456)) r!2363))))

(declare-fun b!2288272 () Bool)

(declare-fun tp!725434 () Bool)

(assert (=> b!2288272 (= e!1466083 (and tp_is_empty!10627 tp!725434))))

(declare-fun b!2288273 () Bool)

(declare-fun e!1466086 () Bool)

(assert (=> b!2288273 (= e!1466081 e!1466086)))

(declare-fun res!978270 () Bool)

(assert (=> b!2288273 (=> (not res!978270) (not e!1466086))))

(assert (=> b!2288273 (= res!978270 e!1466100)))

(declare-fun res!978268 () Bool)

(assert (=> b!2288273 (=> res!978268 e!1466100)))

(declare-fun lt!849036 () Bool)

(assert (=> b!2288273 (= res!978268 lt!849036)))

(declare-fun isEmpty!15498 (List!27328) Bool)

(assert (=> b!2288273 (= lt!849036 (isEmpty!15498 tokens!456))))

(declare-fun b!2288274 () Bool)

(assert (=> b!2288274 (= e!1466097 e!1466091)))

(declare-fun res!978278 () Bool)

(assert (=> b!2288274 (=> res!978278 e!1466091)))

(assert (=> b!2288274 (= res!978278 (not (= (h!32635 tokens!456) (_1!16019 lt!849035))))))

(declare-datatypes ((Option!5345 0))(
  ( (None!5344) (Some!5344 (v!30420 tuple2!27018)) )
))
(declare-fun get!8212 (Option!5345) tuple2!27018)

(declare-fun maxPrefix!2216 (LexerInterface!3952 List!27327 List!27326) Option!5345)

(assert (=> b!2288274 (= lt!849035 (get!8212 (maxPrefix!2216 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2288275 () Bool)

(declare-fun res!978267 () Bool)

(assert (=> b!2288275 (=> (not res!978267) (not e!1466087))))

(declare-fun rulesInvariant!3454 (LexerInterface!3952 List!27327) Bool)

(assert (=> b!2288275 (= res!978267 (rulesInvariant!3454 thiss!16613 rules!1750))))

(declare-fun b!2288276 () Bool)

(declare-fun res!978271 () Bool)

(assert (=> b!2288276 (=> (not res!978271) (not e!1466087))))

(declare-fun contains!4731 (List!27327 Rule!8510) Bool)

(assert (=> b!2288276 (= res!978271 (contains!4731 rules!1750 r!2363))))

(declare-fun b!2288277 () Bool)

(declare-fun e!1466075 () Bool)

(assert (=> b!2288277 (= e!1466086 (not e!1466075))))

(declare-fun res!978263 () Bool)

(assert (=> b!2288277 (=> res!978263 e!1466075)))

(assert (=> b!2288277 (= res!978263 e!1466101)))

(declare-fun res!978273 () Bool)

(assert (=> b!2288277 (=> (not res!978273) (not e!1466101))))

(assert (=> b!2288277 (= res!978273 (not lt!849036))))

(declare-fun ruleValid!1445 (LexerInterface!3952 Rule!8510) Bool)

(assert (=> b!2288277 (ruleValid!1445 thiss!16613 r!2363)))

(declare-fun lt!849033 () Unit!40128)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!850 (LexerInterface!3952 Rule!8510 List!27327) Unit!40128)

(assert (=> b!2288277 (= lt!849033 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!850 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2288278 () Bool)

(declare-fun res!978275 () Bool)

(assert (=> b!2288278 (=> (not res!978275) (not e!1466087))))

(assert (=> b!2288278 (= res!978275 (contains!4731 rules!1750 otherR!12))))

(declare-fun e!1466078 () Bool)

(declare-fun tp!725445 () Bool)

(declare-fun e!1466098 () Bool)

(declare-fun b!2288279 () Bool)

(assert (=> b!2288279 (= e!1466098 (and tp!725445 (inv!36828 (tag!4845 (rule!6685 (h!32635 tokens!456)))) (inv!36831 (transformation!4355 (rule!6685 (h!32635 tokens!456)))) e!1466078))))

(declare-fun b!2288280 () Bool)

(declare-fun tp!725438 () Bool)

(declare-fun inv!21 (TokenValue!4517) Bool)

(assert (=> b!2288280 (= e!1466093 (and (inv!21 (value!137937 (h!32635 tokens!456))) e!1466098 tp!725438))))

(assert (=> b!2288281 (= e!1466090 (and tp!725433 tp!725441))))

(assert (=> b!2288282 (= e!1466078 (and tp!725446 tp!725442))))

(declare-fun b!2288283 () Bool)

(declare-fun res!978269 () Bool)

(assert (=> b!2288283 (=> (not res!978269) (not e!1466086))))

(assert (=> b!2288283 (= res!978269 (isPrefix!2345 otherP!12 input!1722))))

(declare-fun b!2288284 () Bool)

(assert (=> b!2288284 (= e!1466095 true)))

(declare-fun maxPrefixOneRule!1386 (LexerInterface!3952 Rule!8510 List!27326) Option!5345)

(declare-fun apply!6627 (TokenValueInjection!8574 BalanceConc!17444) TokenValue!4517)

(assert (=> b!2288284 (= (maxPrefixOneRule!1386 thiss!16613 r!2363 input!1722) (Some!5344 (tuple2!27019 (Token!8189 (apply!6627 (transformation!4355 r!2363) (seqFromList!3059 lt!849037)) r!2363 lt!849039 lt!849037) (_2!16019 lt!849035))))))

(declare-fun lt!849031 () Unit!40128)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!579 (LexerInterface!3952 List!27327 List!27326 List!27326 List!27326 Rule!8510) Unit!40128)

(assert (=> b!2288284 (= lt!849031 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!579 thiss!16613 rules!1750 lt!849037 input!1722 (_2!16019 lt!849035) r!2363))))

(declare-fun b!2288285 () Bool)

(declare-fun res!978266 () Bool)

(assert (=> b!2288285 (=> (not res!978266) (not e!1466086))))

(assert (=> b!2288285 (= res!978266 e!1466077)))

(declare-fun res!978279 () Bool)

(assert (=> b!2288285 (=> res!978279 e!1466077)))

(assert (=> b!2288285 (= res!978279 lt!849036)))

(declare-fun b!2288286 () Bool)

(declare-fun res!978272 () Bool)

(assert (=> b!2288286 (=> (not res!978272) (not e!1466086))))

(assert (=> b!2288286 (= res!978272 (not (= r!2363 otherR!12)))))

(declare-fun b!2288287 () Bool)

(declare-fun tp!725443 () Bool)

(assert (=> b!2288287 (= e!1466085 (and tp_is_empty!10627 tp!725443))))

(declare-fun b!2288288 () Bool)

(assert (=> b!2288288 (= e!1466075 e!1466097)))

(declare-fun res!978277 () Bool)

(assert (=> b!2288288 (=> res!978277 e!1466097)))

(declare-fun getIndex!368 (List!27327 Rule!8510) Int)

(assert (=> b!2288288 (= res!978277 (<= (getIndex!368 rules!1750 r!2363) (getIndex!368 rules!1750 otherR!12)))))

(assert (=> b!2288288 (ruleValid!1445 thiss!16613 otherR!12)))

(declare-fun lt!849040 () Unit!40128)

(assert (=> b!2288288 (= lt!849040 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!850 thiss!16613 otherR!12 rules!1750))))

(assert (= (and start!224504 res!978262) b!2288259))

(assert (= (and b!2288259 res!978276) b!2288275))

(assert (= (and b!2288275 res!978267) b!2288276))

(assert (= (and b!2288276 res!978271) b!2288278))

(assert (= (and b!2288278 res!978275) b!2288266))

(assert (= (and b!2288266 res!978274) b!2288273))

(assert (= (and b!2288273 (not res!978268)) b!2288269))

(assert (= (and b!2288273 res!978270) b!2288285))

(assert (= (and b!2288285 (not res!978279)) b!2288271))

(assert (= (and b!2288285 res!978266) b!2288283))

(assert (= (and b!2288283 res!978269) b!2288286))

(assert (= (and b!2288286 res!978272) b!2288277))

(assert (= (and b!2288277 res!978273) b!2288270))

(assert (= (and b!2288277 (not res!978263)) b!2288288))

(assert (= (and b!2288288 (not res!978277)) b!2288267))

(assert (= (and b!2288267 (not res!978265)) b!2288274))

(assert (= (and b!2288274 (not res!978278)) b!2288265))

(assert (= (and b!2288265 (not res!978264)) b!2288284))

(assert (= (and start!224504 ((_ is Cons!27232) input!1722)) b!2288287))

(assert (= b!2288257 b!2288281))

(assert (= start!224504 b!2288257))

(assert (= (and start!224504 ((_ is Cons!27232) suffix!886)) b!2288261))

(assert (= (and start!224504 ((_ is Cons!27232) otherP!12)) b!2288272))

(assert (= b!2288258 b!2288264))

(assert (= b!2288262 b!2288258))

(assert (= (and start!224504 ((_ is Cons!27233) rules!1750)) b!2288262))

(assert (= b!2288268 b!2288260))

(assert (= start!224504 b!2288268))

(assert (= b!2288279 b!2288282))

(assert (= b!2288280 b!2288279))

(assert (= b!2288263 b!2288280))

(assert (= (and start!224504 ((_ is Cons!27234) tokens!456)) b!2288263))

(declare-fun m!2716003 () Bool)

(assert (=> b!2288276 m!2716003))

(declare-fun m!2716005 () Bool)

(assert (=> b!2288257 m!2716005))

(declare-fun m!2716007 () Bool)

(assert (=> b!2288257 m!2716007))

(declare-fun m!2716009 () Bool)

(assert (=> b!2288270 m!2716009))

(assert (=> b!2288270 m!2716009))

(declare-fun m!2716011 () Bool)

(assert (=> b!2288270 m!2716011))

(assert (=> b!2288270 m!2716011))

(declare-fun m!2716013 () Bool)

(assert (=> b!2288270 m!2716013))

(assert (=> b!2288270 m!2716013))

(declare-fun m!2716015 () Bool)

(assert (=> b!2288270 m!2716015))

(assert (=> b!2288271 m!2716009))

(declare-fun m!2716017 () Bool)

(assert (=> b!2288277 m!2716017))

(declare-fun m!2716019 () Bool)

(assert (=> b!2288277 m!2716019))

(assert (=> b!2288269 m!2716009))

(assert (=> b!2288269 m!2716009))

(assert (=> b!2288269 m!2716011))

(assert (=> b!2288269 m!2716011))

(declare-fun m!2716021 () Bool)

(assert (=> b!2288269 m!2716021))

(declare-fun m!2716023 () Bool)

(assert (=> b!2288269 m!2716023))

(declare-fun m!2716025 () Bool)

(assert (=> b!2288258 m!2716025))

(declare-fun m!2716027 () Bool)

(assert (=> b!2288258 m!2716027))

(declare-fun m!2716029 () Bool)

(assert (=> b!2288273 m!2716029))

(declare-fun m!2716031 () Bool)

(assert (=> b!2288268 m!2716031))

(declare-fun m!2716033 () Bool)

(assert (=> b!2288268 m!2716033))

(declare-fun m!2716035 () Bool)

(assert (=> b!2288275 m!2716035))

(declare-fun m!2716037 () Bool)

(assert (=> b!2288279 m!2716037))

(declare-fun m!2716039 () Bool)

(assert (=> b!2288279 m!2716039))

(declare-fun m!2716041 () Bool)

(assert (=> b!2288263 m!2716041))

(declare-fun m!2716043 () Bool)

(assert (=> b!2288265 m!2716043))

(assert (=> b!2288265 m!2716023))

(declare-fun m!2716045 () Bool)

(assert (=> b!2288265 m!2716045))

(declare-fun m!2716047 () Bool)

(assert (=> b!2288265 m!2716047))

(declare-fun m!2716049 () Bool)

(assert (=> b!2288265 m!2716049))

(declare-fun m!2716051 () Bool)

(assert (=> b!2288265 m!2716051))

(assert (=> b!2288265 m!2716049))

(declare-fun m!2716053 () Bool)

(assert (=> b!2288265 m!2716053))

(declare-fun m!2716055 () Bool)

(assert (=> b!2288265 m!2716055))

(assert (=> b!2288265 m!2716043))

(declare-fun m!2716057 () Bool)

(assert (=> b!2288265 m!2716057))

(declare-fun m!2716059 () Bool)

(assert (=> b!2288284 m!2716059))

(declare-fun m!2716061 () Bool)

(assert (=> b!2288284 m!2716061))

(assert (=> b!2288284 m!2716061))

(declare-fun m!2716063 () Bool)

(assert (=> b!2288284 m!2716063))

(declare-fun m!2716065 () Bool)

(assert (=> b!2288284 m!2716065))

(declare-fun m!2716067 () Bool)

(assert (=> b!2288280 m!2716067))

(declare-fun m!2716069 () Bool)

(assert (=> b!2288288 m!2716069))

(declare-fun m!2716071 () Bool)

(assert (=> b!2288288 m!2716071))

(declare-fun m!2716073 () Bool)

(assert (=> b!2288288 m!2716073))

(declare-fun m!2716075 () Bool)

(assert (=> b!2288288 m!2716075))

(declare-fun m!2716077 () Bool)

(assert (=> b!2288283 m!2716077))

(declare-fun m!2716079 () Bool)

(assert (=> b!2288274 m!2716079))

(assert (=> b!2288274 m!2716079))

(declare-fun m!2716081 () Bool)

(assert (=> b!2288274 m!2716081))

(declare-fun m!2716083 () Bool)

(assert (=> b!2288266 m!2716083))

(declare-fun m!2716085 () Bool)

(assert (=> b!2288266 m!2716085))

(declare-fun m!2716087 () Bool)

(assert (=> b!2288266 m!2716087))

(assert (=> b!2288266 m!2716087))

(declare-fun m!2716089 () Bool)

(assert (=> b!2288266 m!2716089))

(declare-fun m!2716091 () Bool)

(assert (=> b!2288278 m!2716091))

(declare-fun m!2716093 () Bool)

(assert (=> b!2288259 m!2716093))

(check-sat b_and!181423 (not b!2288258) tp_is_empty!10627 b_and!181411 b_and!181409 (not b!2288265) (not b_next!69355) (not b_next!69351) (not b_next!69343) b_and!181421 (not b!2288269) (not b!2288271) (not b!2288261) (not b!2288263) (not b!2288284) (not b_next!69347) (not b!2288279) b_and!181419 (not b!2288266) (not b!2288276) (not b!2288274) (not b!2288287) b_and!181415 (not b!2288257) (not b_next!69345) (not b!2288280) (not b_next!69353) (not b!2288288) (not b_next!69349) b_and!181417 (not b!2288278) (not b!2288262) (not b!2288270) (not b!2288277) (not b!2288273) (not b!2288283) (not b_next!69341) b_and!181413 (not b!2288275) (not b!2288268) (not b!2288272) (not b!2288259))
(check-sat b_and!181423 (not b_next!69347) b_and!181411 b_and!181409 b_and!181419 (not b_next!69355) (not b_next!69353) (not b_next!69341) (not b_next!69351) b_and!181413 (not b_next!69343) b_and!181421 b_and!181415 (not b_next!69345) (not b_next!69349) b_and!181417)
