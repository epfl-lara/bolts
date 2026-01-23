; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411598 () Bool)

(assert start!411598)

(declare-fun b!4284035 () Bool)

(declare-fun b_free!126875 () Bool)

(declare-fun b_next!127579 () Bool)

(assert (=> b!4284035 (= b_free!126875 (not b_next!127579))))

(declare-fun tp!1310865 () Bool)

(declare-fun b_and!338077 () Bool)

(assert (=> b!4284035 (= tp!1310865 b_and!338077)))

(declare-fun b!4284055 () Bool)

(declare-fun b_free!126877 () Bool)

(declare-fun b_next!127581 () Bool)

(assert (=> b!4284055 (= b_free!126877 (not b_next!127581))))

(declare-fun tp!1310878 () Bool)

(declare-fun b_and!338079 () Bool)

(assert (=> b!4284055 (= tp!1310878 b_and!338079)))

(declare-fun b!4284038 () Bool)

(declare-fun b_free!126879 () Bool)

(declare-fun b_next!127583 () Bool)

(assert (=> b!4284038 (= b_free!126879 (not b_next!127583))))

(declare-fun tp!1310863 () Bool)

(declare-fun b_and!338081 () Bool)

(assert (=> b!4284038 (= tp!1310863 b_and!338081)))

(declare-fun b!4284034 () Bool)

(declare-fun b_free!126881 () Bool)

(declare-fun b_next!127585 () Bool)

(assert (=> b!4284034 (= b_free!126881 (not b_next!127585))))

(declare-fun tp!1310875 () Bool)

(declare-fun b_and!338083 () Bool)

(assert (=> b!4284034 (= tp!1310875 b_and!338083)))

(declare-fun b!4284037 () Bool)

(declare-fun b_free!126883 () Bool)

(declare-fun b_next!127587 () Bool)

(assert (=> b!4284037 (= b_free!126883 (not b_next!127587))))

(declare-fun tp!1310871 () Bool)

(declare-fun b_and!338085 () Bool)

(assert (=> b!4284037 (= tp!1310871 b_and!338085)))

(declare-fun b_free!126885 () Bool)

(declare-fun b_next!127589 () Bool)

(assert (=> b!4284037 (= b_free!126885 (not b_next!127589))))

(declare-fun tp!1310866 () Bool)

(declare-fun b_and!338087 () Bool)

(assert (=> b!4284037 (= tp!1310866 b_and!338087)))

(declare-fun b!4284054 () Bool)

(declare-fun b_free!126887 () Bool)

(declare-fun b_next!127591 () Bool)

(assert (=> b!4284054 (= b_free!126887 (not b_next!127591))))

(declare-fun tp!1310868 () Bool)

(declare-fun b_and!338089 () Bool)

(assert (=> b!4284054 (= tp!1310868 b_and!338089)))

(declare-fun b!4284053 () Bool)

(declare-fun b_free!126889 () Bool)

(declare-fun b_next!127593 () Bool)

(assert (=> b!4284053 (= b_free!126889 (not b_next!127593))))

(declare-fun tp!1310861 () Bool)

(declare-fun b_and!338091 () Bool)

(assert (=> b!4284053 (= tp!1310861 b_and!338091)))

(declare-fun mapIsEmpty!19353 () Bool)

(declare-fun mapRes!19354 () Bool)

(assert (=> mapIsEmpty!19353 mapRes!19354))

(declare-fun b!4284033 () Bool)

(declare-datatypes ((List!47589 0))(
  ( (Nil!47465) (Cons!47465 (h!52885 (_ BitVec 16)) (t!354178 List!47589)) )
))
(declare-datatypes ((TokenValue!8311 0))(
  ( (FloatLiteralValue!16622 (text!58622 List!47589)) (TokenValueExt!8310 (__x!28845 Int)) (Broken!41555 (value!250820 List!47589)) (Object!8434) (End!8311) (Def!8311) (Underscore!8311) (Match!8311) (Else!8311) (Error!8311) (Case!8311) (If!8311) (Extends!8311) (Abstract!8311) (Class!8311) (Val!8311) (DelimiterValue!16622 (del!8371 List!47589)) (KeywordValue!8317 (value!250821 List!47589)) (CommentValue!16622 (value!250822 List!47589)) (WhitespaceValue!16622 (value!250823 List!47589)) (IndentationValue!8311 (value!250824 List!47589)) (String!55550) (Int32!8311) (Broken!41556 (value!250825 List!47589)) (Boolean!8312) (Unit!66367) (OperatorValue!8314 (op!8371 List!47589)) (IdentifierValue!16622 (value!250826 List!47589)) (IdentifierValue!16623 (value!250827 List!47589)) (WhitespaceValue!16623 (value!250828 List!47589)) (True!16622) (False!16622) (Broken!41557 (value!250829 List!47589)) (Broken!41558 (value!250830 List!47589)) (True!16623) (RightBrace!8311) (RightBracket!8311) (Colon!8311) (Null!8311) (Comma!8311) (LeftBracket!8311) (False!16623) (LeftBrace!8311) (ImaginaryLiteralValue!8311 (text!58623 List!47589)) (StringLiteralValue!24933 (value!250831 List!47589)) (EOFValue!8311 (value!250832 List!47589)) (IdentValue!8311 (value!250833 List!47589)) (DelimiterValue!16623 (value!250834 List!47589)) (DedentValue!8311 (value!250835 List!47589)) (NewLineValue!8311 (value!250836 List!47589)) (IntegerValue!24933 (value!250837 (_ BitVec 32)) (text!58624 List!47589)) (IntegerValue!24934 (value!250838 Int) (text!58625 List!47589)) (Times!8311) (Or!8311) (Equal!8311) (Minus!8311) (Broken!41559 (value!250839 List!47589)) (And!8311) (Div!8311) (LessEqual!8311) (Mod!8311) (Concat!21220) (Not!8311) (Plus!8311) (SpaceValue!8311 (value!250840 List!47589)) (IntegerValue!24935 (value!250841 Int) (text!58626 List!47589)) (StringLiteralValue!24934 (text!58627 List!47589)) (FloatLiteralValue!16623 (text!58628 List!47589)) (BytesLiteralValue!8311 (value!250842 List!47589)) (CommentValue!16623 (value!250843 List!47589)) (StringLiteralValue!24935 (value!250844 List!47589)) (ErrorTokenValue!8311 (msg!8372 List!47589)) )
))
(declare-datatypes ((C!26016 0))(
  ( (C!26017 (val!15334 Int)) )
))
(declare-datatypes ((Regex!12909 0))(
  ( (ElementMatch!12909 (c!730029 C!26016)) (Concat!21221 (regOne!26330 Regex!12909) (regTwo!26330 Regex!12909)) (EmptyExpr!12909) (Star!12909 (reg!13238 Regex!12909)) (EmptyLang!12909) (Union!12909 (regOne!26331 Regex!12909) (regTwo!26331 Regex!12909)) )
))
(declare-datatypes ((String!55551 0))(
  ( (String!55552 (value!250845 String)) )
))
(declare-datatypes ((List!47590 0))(
  ( (Nil!47466) (Cons!47466 (h!52886 C!26016) (t!354179 List!47590)) )
))
(declare-datatypes ((IArray!28767 0))(
  ( (IArray!28768 (innerList!14441 List!47590)) )
))
(declare-datatypes ((Conc!14353 0))(
  ( (Node!14353 (left!35336 Conc!14353) (right!35666 Conc!14353) (csize!28936 Int) (cheight!14564 Int)) (Leaf!22209 (xs!17659 IArray!28767) (csize!28937 Int)) (Empty!14353) )
))
(declare-datatypes ((BalanceConc!28196 0))(
  ( (BalanceConc!28197 (c!730030 Conc!14353)) )
))
(declare-datatypes ((TokenValueInjection!15930 0))(
  ( (TokenValueInjection!15931 (toValue!10852 Int) (toChars!10711 Int)) )
))
(declare-datatypes ((Rule!15802 0))(
  ( (Rule!15803 (regex!8001 Regex!12909) (tag!8865 String!55551) (isSeparator!8001 Bool) (transformation!8001 TokenValueInjection!15930)) )
))
(declare-datatypes ((Token!14612 0))(
  ( (Token!14613 (value!250846 TokenValue!8311) (rule!11129 Rule!15802) (size!34784 Int) (originalCharacters!8337 List!47590)) )
))
(declare-datatypes ((tuple2!44844 0))(
  ( (tuple2!44845 (_1!25568 Token!14612) (_2!25568 BalanceConc!28196)) )
))
(declare-datatypes ((Option!10127 0))(
  ( (None!10126) (Some!10126 (v!41363 tuple2!44844)) )
))
(declare-fun e!2659933 () Option!10127)

(declare-fun rule!232 () Rule!15802)

(declare-datatypes ((array!15352 0))(
  ( (array!15353 (arr!6854 (Array (_ BitVec 32) (_ BitVec 64))) (size!34785 (_ BitVec 32))) )
))
(declare-datatypes ((List!47591 0))(
  ( (Nil!47467) (Cons!47467 (h!52887 Regex!12909) (t!354180 List!47591)) )
))
(declare-datatypes ((Context!5598 0))(
  ( (Context!5599 (exprs!3299 List!47591)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44846 0))(
  ( (tuple2!44847 (_1!25569 (InoxSet Context!5598)) (_2!25569 Int)) )
))
(declare-datatypes ((tuple2!44848 0))(
  ( (tuple2!44849 (_1!25570 tuple2!44846) (_2!25570 Int)) )
))
(declare-datatypes ((List!47592 0))(
  ( (Nil!47468) (Cons!47468 (h!52888 tuple2!44848) (t!354181 List!47592)) )
))
(declare-datatypes ((array!15354 0))(
  ( (array!15355 (arr!6855 (Array (_ BitVec 32) List!47592)) (size!34786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8556 0))(
  ( (LongMapFixedSize!8557 (defaultEntry!4663 Int) (mask!12702 (_ BitVec 32)) (extraKeys!4527 (_ BitVec 32)) (zeroValue!4537 List!47592) (minValue!4537 List!47592) (_size!8599 (_ BitVec 32)) (_keys!4578 array!15352) (_values!4559 array!15354) (_vacant!4339 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!44850 0))(
  ( (tuple2!44851 (_1!25571 Context!5598) (_2!25571 C!26016)) )
))
(declare-datatypes ((tuple2!44852 0))(
  ( (tuple2!44853 (_1!25572 tuple2!44850) (_2!25572 (InoxSet Context!5598))) )
))
(declare-datatypes ((List!47593 0))(
  ( (Nil!47469) (Cons!47469 (h!52889 tuple2!44852) (t!354182 List!47593)) )
))
(declare-datatypes ((array!15356 0))(
  ( (array!15357 (arr!6856 (Array (_ BitVec 32) List!47593)) (size!34787 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5344 0))(
  ( (tuple3!5345 (_1!25573 Regex!12909) (_2!25573 Context!5598) (_3!3146 C!26016)) )
))
(declare-datatypes ((tuple2!44854 0))(
  ( (tuple2!44855 (_1!25574 tuple3!5344) (_2!25574 (InoxSet Context!5598))) )
))
(declare-datatypes ((List!47594 0))(
  ( (Nil!47470) (Cons!47470 (h!52890 tuple2!44854) (t!354183 List!47594)) )
))
(declare-datatypes ((array!15358 0))(
  ( (array!15359 (arr!6857 (Array (_ BitVec 32) List!47594)) (size!34788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8558 0))(
  ( (LongMapFixedSize!8559 (defaultEntry!4664 Int) (mask!12703 (_ BitVec 32)) (extraKeys!4528 (_ BitVec 32)) (zeroValue!4538 List!47594) (minValue!4538 List!47594) (_size!8600 (_ BitVec 32)) (_keys!4579 array!15352) (_values!4560 array!15358) (_vacant!4340 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16921 0))(
  ( (Cell!16922 (v!41364 LongMapFixedSize!8558)) )
))
(declare-datatypes ((MutLongMap!4278 0))(
  ( (LongMap!4278 (underlying!8785 Cell!16921)) (MutLongMapExt!4277 (__x!28846 Int)) )
))
(declare-datatypes ((tuple2!44856 0))(
  ( (tuple2!44857 (_1!25575 BalanceConc!28196) (_2!25575 BalanceConc!28196)) )
))
(declare-datatypes ((Hashable!4194 0))(
  ( (HashableExt!4193 (__x!28847 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8560 0))(
  ( (LongMapFixedSize!8561 (defaultEntry!4665 Int) (mask!12704 (_ BitVec 32)) (extraKeys!4529 (_ BitVec 32)) (zeroValue!4539 List!47593) (minValue!4539 List!47593) (_size!8601 (_ BitVec 32)) (_keys!4580 array!15352) (_values!4561 array!15356) (_vacant!4341 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16923 0))(
  ( (Cell!16924 (v!41365 LongMapFixedSize!8560)) )
))
(declare-datatypes ((MutLongMap!4279 0))(
  ( (LongMap!4279 (underlying!8786 Cell!16923)) (MutLongMapExt!4278 (__x!28848 Int)) )
))
(declare-datatypes ((Cell!16925 0))(
  ( (Cell!16926 (v!41366 MutLongMap!4279)) )
))
(declare-datatypes ((MutableMap!4184 0))(
  ( (MutableMapExt!4183 (__x!28849 Int)) (HashMap!4184 (underlying!8787 Cell!16925) (hashF!6226 Hashable!4194) (_size!8602 (_ BitVec 32)) (defaultValue!4355 Int)) )
))
(declare-datatypes ((CacheUp!2730 0))(
  ( (CacheUp!2731 (cache!4324 MutableMap!4184)) )
))
(declare-datatypes ((Hashable!4195 0))(
  ( (HashableExt!4194 (__x!28850 Int)) )
))
(declare-datatypes ((Cell!16927 0))(
  ( (Cell!16928 (v!41367 MutLongMap!4278)) )
))
(declare-datatypes ((MutableMap!4185 0))(
  ( (MutableMapExt!4184 (__x!28851 Int)) (HashMap!4185 (underlying!8788 Cell!16927) (hashF!6227 Hashable!4195) (_size!8603 (_ BitVec 32)) (defaultValue!4356 Int)) )
))
(declare-datatypes ((CacheDown!2852 0))(
  ( (CacheDown!2853 (cache!4325 MutableMap!4185)) )
))
(declare-datatypes ((Hashable!4196 0))(
  ( (HashableExt!4195 (__x!28852 Int)) )
))
(declare-datatypes ((Cell!16929 0))(
  ( (Cell!16930 (v!41368 LongMapFixedSize!8556)) )
))
(declare-datatypes ((MutLongMap!4280 0))(
  ( (LongMap!4280 (underlying!8789 Cell!16929)) (MutLongMapExt!4279 (__x!28853 Int)) )
))
(declare-datatypes ((Cell!16931 0))(
  ( (Cell!16932 (v!41369 MutLongMap!4280)) )
))
(declare-datatypes ((MutableMap!4186 0))(
  ( (MutableMapExt!4185 (__x!28854 Int)) (HashMap!4186 (underlying!8790 Cell!16931) (hashF!6228 Hashable!4196) (_size!8604 (_ BitVec 32)) (defaultValue!4357 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!394 0))(
  ( (CacheFindLongestMatch!395 (cache!4326 MutableMap!4186) (totalInput!4296 BalanceConc!28196)) )
))
(declare-datatypes ((tuple4!948 0))(
  ( (tuple4!949 (_1!25576 tuple2!44856) (_2!25576 CacheUp!2730) (_3!3147 CacheDown!2852) (_4!474 CacheFindLongestMatch!394)) )
))
(declare-fun lt!1515549 () tuple4!948)

(declare-fun apply!10824 (TokenValueInjection!15930 BalanceConc!28196) TokenValue!8311)

(declare-fun size!34789 (BalanceConc!28196) Int)

(declare-fun list!17319 (BalanceConc!28196) List!47590)

(assert (=> b!4284033 (= e!2659933 (Some!10126 (tuple2!44845 (Token!14613 (apply!10824 (transformation!8001 rule!232) (_1!25575 (_1!25576 lt!1515549))) rule!232 (size!34789 (_1!25575 (_1!25576 lt!1515549))) (list!17319 (_1!25575 (_1!25576 lt!1515549)))) (_2!25575 (_1!25576 lt!1515549)))))))

(declare-datatypes ((Unit!66368 0))(
  ( (Unit!66369) )
))
(declare-fun lt!1515548 () Unit!66368)

(declare-fun lt!1515550 () List!47590)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1676 (Regex!12909 List!47590) Unit!66368)

(assert (=> b!4284033 (= lt!1515548 (longestMatchIsAcceptedByMatchOrIsEmpty!1676 (regex!8001 rule!232) lt!1515550))))

(declare-datatypes ((tuple2!44858 0))(
  ( (tuple2!44859 (_1!25577 List!47590) (_2!25577 List!47590)) )
))
(declare-fun lt!1515546 () tuple2!44858)

(declare-fun findLongestMatchInner!1713 (Regex!12909 List!47590 Int List!47590 List!47590 Int) tuple2!44858)

(declare-fun size!34790 (List!47590) Int)

(assert (=> b!4284033 (= lt!1515546 (findLongestMatchInner!1713 (regex!8001 rule!232) Nil!47466 (size!34790 Nil!47466) lt!1515550 lt!1515550 (size!34790 lt!1515550)))))

(declare-fun res!1757927 () Bool)

(declare-fun isEmpty!28010 (List!47590) Bool)

(assert (=> b!4284033 (= res!1757927 (isEmpty!28010 (_1!25577 lt!1515546)))))

(declare-fun e!2659922 () Bool)

(assert (=> b!4284033 (=> res!1757927 e!2659922)))

(assert (=> b!4284033 e!2659922))

(declare-fun lt!1515551 () Unit!66368)

(declare-fun lemmaSemiInverse!2544 (TokenValueInjection!15930 BalanceConc!28196) Unit!66368)

(assert (=> b!4284033 (= lt!1515551 (lemmaSemiInverse!2544 (transformation!8001 rule!232) (_1!25575 (_1!25576 lt!1515549))))))

(declare-fun tp!1310877 () Bool)

(declare-fun tp!1310881 () Bool)

(declare-fun e!2659943 () Bool)

(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!394)

(declare-fun e!2659949 () Bool)

(declare-fun array_inv!4909 (array!15352) Bool)

(declare-fun array_inv!4910 (array!15354) Bool)

(assert (=> b!4284034 (= e!2659943 (and tp!1310875 tp!1310877 tp!1310881 (array_inv!4909 (_keys!4578 (v!41368 (underlying!8789 (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))))) (array_inv!4910 (_values!4559 (v!41368 (underlying!8789 (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))))) e!2659949))))

(declare-fun e!2659923 () Bool)

(declare-fun e!2659924 () Bool)

(assert (=> b!4284035 (= e!2659923 (and e!2659924 tp!1310865))))

(declare-fun b!4284036 () Bool)

(declare-fun e!2659931 () Bool)

(declare-fun e!2659938 () Bool)

(assert (=> b!4284036 (= e!2659931 e!2659938)))

(declare-fun res!1757933 () Bool)

(assert (=> b!4284036 (=> (not res!1757933) (not e!2659938))))

(declare-fun totalInput!528 () BalanceConc!28196)

(declare-fun isSuffix!1008 (List!47590 List!47590) Bool)

(assert (=> b!4284036 (= res!1757933 (isSuffix!1008 lt!1515550 (list!17319 totalInput!528)))))

(declare-fun input!1632 () BalanceConc!28196)

(assert (=> b!4284036 (= lt!1515550 (list!17319 input!1632))))

(declare-fun e!2659948 () Bool)

(assert (=> b!4284037 (= e!2659948 (and tp!1310871 tp!1310866))))

(declare-fun e!2659932 () Bool)

(declare-fun e!2659953 () Bool)

(assert (=> b!4284038 (= e!2659932 (and e!2659953 tp!1310863))))

(declare-fun b!4284039 () Bool)

(declare-fun e!2659939 () Bool)

(declare-fun e!2659942 () Bool)

(assert (=> b!4284039 (= e!2659939 e!2659942)))

(declare-fun b!4284040 () Bool)

(assert (=> b!4284040 (= e!2659942 e!2659943)))

(declare-fun b!4284041 () Bool)

(declare-fun e!2659940 () Bool)

(assert (=> b!4284041 (= e!2659938 e!2659940)))

(declare-fun res!1757930 () Bool)

(assert (=> b!4284041 (=> (not res!1757930) (not e!2659940))))

(declare-fun findLongestMatchWithZipperSequenceV2!117 (Regex!12909 BalanceConc!28196 BalanceConc!28196) tuple2!44856)

(assert (=> b!4284041 (= res!1757930 (= (_1!25576 lt!1515549) (findLongestMatchWithZipperSequenceV2!117 (regex!8001 rule!232) input!1632 totalInput!528)))))

(declare-fun cacheDown!738 () CacheDown!2852)

(declare-fun cacheUp!725 () CacheUp!2730)

(declare-fun findLongestMatchWithZipperSequenceV2Mem!40 (Regex!12909 BalanceConc!28196 BalanceConc!28196 CacheUp!2730 CacheDown!2852 CacheFindLongestMatch!394) tuple4!948)

(assert (=> b!4284041 (= lt!1515549 (findLongestMatchWithZipperSequenceV2Mem!40 (regex!8001 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4284042 () Bool)

(declare-fun e!2659947 () Bool)

(declare-fun tp!1310862 () Bool)

(declare-fun inv!62904 (Conc!14353) Bool)

(assert (=> b!4284042 (= e!2659947 (and (inv!62904 (c!730030 totalInput!528)) tp!1310862))))

(declare-fun b!4284043 () Bool)

(declare-fun e!2659956 () Bool)

(assert (=> b!4284043 (= e!2659956 e!2659923)))

(declare-fun mapIsEmpty!19354 () Bool)

(declare-fun mapRes!19353 () Bool)

(assert (=> mapIsEmpty!19354 mapRes!19353))

(declare-fun b!4284044 () Bool)

(declare-fun matchR!6483 (Regex!12909 List!47590) Bool)

(assert (=> b!4284044 (= e!2659922 (matchR!6483 (regex!8001 rule!232) (_1!25577 lt!1515546)))))

(declare-fun e!2659946 () Bool)

(declare-fun tp!1310884 () Bool)

(declare-fun b!4284045 () Bool)

(declare-fun inv!62902 (String!55551) Bool)

(declare-fun inv!62905 (TokenValueInjection!15930) Bool)

(assert (=> b!4284045 (= e!2659946 (and tp!1310884 (inv!62902 (tag!8865 rule!232)) (inv!62905 (transformation!8001 rule!232)) e!2659948))))

(declare-fun mapIsEmpty!19355 () Bool)

(declare-fun mapRes!19355 () Bool)

(assert (=> mapIsEmpty!19355 mapRes!19355))

(declare-fun b!4284046 () Bool)

(declare-fun res!1757926 () Bool)

(assert (=> b!4284046 (=> (not res!1757926) (not e!2659931))))

(declare-datatypes ((LexerInterface!7595 0))(
  ( (LexerInterfaceExt!7592 (__x!28855 Int)) (Lexer!7593) )
))
(declare-fun thiss!16356 () LexerInterface!7595)

(declare-fun ruleValid!3618 (LexerInterface!7595 Rule!15802) Bool)

(assert (=> b!4284046 (= res!1757926 (ruleValid!3618 thiss!16356 rule!232))))

(declare-fun b!4284047 () Bool)

(declare-fun e!2659925 () Bool)

(declare-fun tp!1310876 () Bool)

(assert (=> b!4284047 (= e!2659925 (and tp!1310876 mapRes!19354))))

(declare-fun condMapEmpty!19353 () Bool)

(declare-fun mapDefault!19353 () List!47594)

(assert (=> b!4284047 (= condMapEmpty!19353 (= (arr!6857 (_values!4560 (v!41364 (underlying!8785 (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47594)) mapDefault!19353)))))

(declare-fun b!4284048 () Bool)

(declare-fun res!1757929 () Bool)

(assert (=> b!4284048 (=> (not res!1757929) (not e!2659938))))

(assert (=> b!4284048 (= res!1757929 (= (totalInput!4296 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun b!4284049 () Bool)

(declare-fun e!2659937 () Bool)

(declare-fun e!2659952 () Bool)

(declare-fun inv!62906 (BalanceConc!28196) Bool)

(assert (=> b!4284049 (= e!2659937 (and e!2659932 (inv!62906 (totalInput!4296 cacheFindLongestMatch!156)) e!2659952))))

(declare-fun b!4284050 () Bool)

(declare-fun e!2659927 () Bool)

(declare-fun e!2659930 () Bool)

(assert (=> b!4284050 (= e!2659927 e!2659930)))

(declare-fun b!4284051 () Bool)

(declare-fun e!2659954 () Bool)

(assert (=> b!4284051 (= e!2659954 e!2659927)))

(declare-fun b!4284052 () Bool)

(declare-fun res!1757932 () Bool)

(assert (=> b!4284052 (=> (not res!1757932) (not e!2659931))))

(declare-fun valid!3322 (CacheDown!2852) Bool)

(assert (=> b!4284052 (= res!1757932 (valid!3322 cacheDown!738))))

(declare-fun tp!1310860 () Bool)

(declare-fun tp!1310882 () Bool)

(declare-fun array_inv!4911 (array!15358) Bool)

(assert (=> b!4284053 (= e!2659930 (and tp!1310861 tp!1310860 tp!1310882 (array_inv!4909 (_keys!4579 (v!41364 (underlying!8785 (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))))) (array_inv!4911 (_values!4560 (v!41364 (underlying!8785 (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))))) e!2659925))))

(declare-fun e!2659941 () Bool)

(declare-fun e!2659928 () Bool)

(assert (=> b!4284054 (= e!2659941 (and e!2659928 tp!1310868))))

(declare-fun tp!1310869 () Bool)

(declare-fun e!2659945 () Bool)

(declare-fun e!2659934 () Bool)

(declare-fun tp!1310874 () Bool)

(declare-fun array_inv!4912 (array!15356) Bool)

(assert (=> b!4284055 (= e!2659934 (and tp!1310878 tp!1310869 tp!1310874 (array_inv!4909 (_keys!4580 (v!41365 (underlying!8786 (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))))) (array_inv!4912 (_values!4561 (v!41365 (underlying!8786 (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))))) e!2659945))))

(declare-fun mapNonEmpty!19353 () Bool)

(declare-fun tp!1310858 () Bool)

(declare-fun tp!1310870 () Bool)

(assert (=> mapNonEmpty!19353 (= mapRes!19353 (and tp!1310858 tp!1310870))))

(declare-fun mapRest!19354 () (Array (_ BitVec 32) List!47593))

(declare-fun mapKey!19355 () (_ BitVec 32))

(declare-fun mapValue!19355 () List!47593)

(assert (=> mapNonEmpty!19353 (= (arr!6856 (_values!4561 (v!41365 (underlying!8786 (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))))) (store mapRest!19354 mapKey!19355 mapValue!19355))))

(declare-fun res!1757931 () Bool)

(assert (=> start!411598 (=> (not res!1757931) (not e!2659931))))

(get-info :version)

(assert (=> start!411598 (= res!1757931 ((_ is Lexer!7593) thiss!16356))))

(assert (=> start!411598 e!2659931))

(assert (=> start!411598 true))

(assert (=> start!411598 e!2659946))

(declare-fun e!2659950 () Bool)

(assert (=> start!411598 (and (inv!62906 input!1632) e!2659950)))

(declare-fun inv!62907 (CacheDown!2852) Bool)

(assert (=> start!411598 (and (inv!62907 cacheDown!738) e!2659956)))

(declare-fun inv!62908 (CacheFindLongestMatch!394) Bool)

(assert (=> start!411598 (and (inv!62908 cacheFindLongestMatch!156) e!2659937)))

(assert (=> start!411598 (and (inv!62906 totalInput!528) e!2659947)))

(declare-fun e!2659926 () Bool)

(declare-fun inv!62909 (CacheUp!2730) Bool)

(assert (=> start!411598 (and (inv!62909 cacheUp!725) e!2659926)))

(declare-fun b!4284056 () Bool)

(declare-fun e!2659935 () Bool)

(declare-fun lt!1515547 () MutLongMap!4279)

(assert (=> b!4284056 (= e!2659928 (and e!2659935 ((_ is LongMap!4279) lt!1515547)))))

(assert (=> b!4284056 (= lt!1515547 (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))))

(declare-fun b!4284057 () Bool)

(declare-fun tp!1310873 () Bool)

(assert (=> b!4284057 (= e!2659950 (and (inv!62904 (c!730030 input!1632)) tp!1310873))))

(declare-fun mapNonEmpty!19354 () Bool)

(declare-fun tp!1310867 () Bool)

(declare-fun tp!1310880 () Bool)

(assert (=> mapNonEmpty!19354 (= mapRes!19354 (and tp!1310867 tp!1310880))))

(declare-fun mapValue!19353 () List!47594)

(declare-fun mapKey!19353 () (_ BitVec 32))

(declare-fun mapRest!19355 () (Array (_ BitVec 32) List!47594))

(assert (=> mapNonEmpty!19354 (= (arr!6857 (_values!4560 (v!41364 (underlying!8785 (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))))) (store mapRest!19355 mapKey!19353 mapValue!19353))))

(declare-fun b!4284058 () Bool)

(declare-fun tp!1310872 () Bool)

(assert (=> b!4284058 (= e!2659949 (and tp!1310872 mapRes!19355))))

(declare-fun condMapEmpty!19355 () Bool)

(declare-fun mapDefault!19354 () List!47592)

(assert (=> b!4284058 (= condMapEmpty!19355 (= (arr!6855 (_values!4559 (v!41368 (underlying!8789 (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47592)) mapDefault!19354)))))

(declare-fun b!4284059 () Bool)

(declare-fun res!1757928 () Bool)

(assert (=> b!4284059 (=> (not res!1757928) (not e!2659931))))

(declare-fun valid!3323 (CacheUp!2730) Bool)

(assert (=> b!4284059 (= res!1757928 (valid!3323 cacheUp!725))))

(declare-fun b!4284060 () Bool)

(declare-fun lt!1515552 () MutLongMap!4278)

(assert (=> b!4284060 (= e!2659924 (and e!2659954 ((_ is LongMap!4278) lt!1515552)))))

(assert (=> b!4284060 (= lt!1515552 (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))))

(declare-fun b!4284061 () Bool)

(assert (=> b!4284061 (= e!2659926 e!2659941)))

(declare-fun b!4284062 () Bool)

(declare-fun tp!1310879 () Bool)

(assert (=> b!4284062 (= e!2659945 (and tp!1310879 mapRes!19353))))

(declare-fun condMapEmpty!19354 () Bool)

(declare-fun mapDefault!19355 () List!47593)

(assert (=> b!4284062 (= condMapEmpty!19354 (= (arr!6856 (_values!4561 (v!41365 (underlying!8786 (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47593)) mapDefault!19355)))))

(declare-fun b!4284063 () Bool)

(declare-fun tp!1310859 () Bool)

(assert (=> b!4284063 (= e!2659952 (and (inv!62904 (c!730030 (totalInput!4296 cacheFindLongestMatch!156))) tp!1310859))))

(declare-fun b!4284064 () Bool)

(assert (=> b!4284064 (= e!2659940 false)))

(declare-fun lt!1515545 () Option!10127)

(assert (=> b!4284064 (= lt!1515545 e!2659933)))

(declare-fun c!730028 () Bool)

(declare-fun isEmpty!28011 (BalanceConc!28196) Bool)

(assert (=> b!4284064 (= c!730028 (isEmpty!28011 (_1!25575 (_1!25576 lt!1515549))))))

(declare-fun b!4284065 () Bool)

(declare-fun e!2659936 () Bool)

(assert (=> b!4284065 (= e!2659935 e!2659936)))

(declare-fun b!4284066 () Bool)

(declare-fun res!1757925 () Bool)

(assert (=> b!4284066 (=> (not res!1757925) (not e!2659931))))

(declare-fun valid!3324 (CacheFindLongestMatch!394) Bool)

(assert (=> b!4284066 (= res!1757925 (valid!3324 cacheFindLongestMatch!156))))

(declare-fun b!4284067 () Bool)

(assert (=> b!4284067 (= e!2659933 None!10126)))

(declare-fun b!4284068 () Bool)

(assert (=> b!4284068 (= e!2659936 e!2659934)))

(declare-fun mapNonEmpty!19355 () Bool)

(declare-fun tp!1310864 () Bool)

(declare-fun tp!1310883 () Bool)

(assert (=> mapNonEmpty!19355 (= mapRes!19355 (and tp!1310864 tp!1310883))))

(declare-fun mapKey!19354 () (_ BitVec 32))

(declare-fun mapRest!19353 () (Array (_ BitVec 32) List!47592))

(declare-fun mapValue!19354 () List!47592)

(assert (=> mapNonEmpty!19355 (= (arr!6855 (_values!4559 (v!41368 (underlying!8789 (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))))) (store mapRest!19353 mapKey!19354 mapValue!19354))))

(declare-fun b!4284069 () Bool)

(declare-fun lt!1515544 () MutLongMap!4280)

(assert (=> b!4284069 (= e!2659953 (and e!2659939 ((_ is LongMap!4280) lt!1515544)))))

(assert (=> b!4284069 (= lt!1515544 (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))))

(assert (= (and start!411598 res!1757931) b!4284046))

(assert (= (and b!4284046 res!1757926) b!4284059))

(assert (= (and b!4284059 res!1757928) b!4284052))

(assert (= (and b!4284052 res!1757932) b!4284066))

(assert (= (and b!4284066 res!1757925) b!4284036))

(assert (= (and b!4284036 res!1757933) b!4284048))

(assert (= (and b!4284048 res!1757929) b!4284041))

(assert (= (and b!4284041 res!1757930) b!4284064))

(assert (= (and b!4284064 c!730028) b!4284067))

(assert (= (and b!4284064 (not c!730028)) b!4284033))

(assert (= (and b!4284033 (not res!1757927)) b!4284044))

(assert (= b!4284045 b!4284037))

(assert (= start!411598 b!4284045))

(assert (= start!411598 b!4284057))

(assert (= (and b!4284047 condMapEmpty!19353) mapIsEmpty!19353))

(assert (= (and b!4284047 (not condMapEmpty!19353)) mapNonEmpty!19354))

(assert (= b!4284053 b!4284047))

(assert (= b!4284050 b!4284053))

(assert (= b!4284051 b!4284050))

(assert (= (and b!4284060 ((_ is LongMap!4278) (v!41367 (underlying!8788 (cache!4325 cacheDown!738))))) b!4284051))

(assert (= b!4284035 b!4284060))

(assert (= (and b!4284043 ((_ is HashMap!4185) (cache!4325 cacheDown!738))) b!4284035))

(assert (= start!411598 b!4284043))

(assert (= (and b!4284058 condMapEmpty!19355) mapIsEmpty!19355))

(assert (= (and b!4284058 (not condMapEmpty!19355)) mapNonEmpty!19355))

(assert (= b!4284034 b!4284058))

(assert (= b!4284040 b!4284034))

(assert (= b!4284039 b!4284040))

(assert (= (and b!4284069 ((_ is LongMap!4280) (v!41369 (underlying!8790 (cache!4326 cacheFindLongestMatch!156))))) b!4284039))

(assert (= b!4284038 b!4284069))

(assert (= (and b!4284049 ((_ is HashMap!4186) (cache!4326 cacheFindLongestMatch!156))) b!4284038))

(assert (= b!4284049 b!4284063))

(assert (= start!411598 b!4284049))

(assert (= start!411598 b!4284042))

(assert (= (and b!4284062 condMapEmpty!19354) mapIsEmpty!19354))

(assert (= (and b!4284062 (not condMapEmpty!19354)) mapNonEmpty!19353))

(assert (= b!4284055 b!4284062))

(assert (= b!4284068 b!4284055))

(assert (= b!4284065 b!4284068))

(assert (= (and b!4284056 ((_ is LongMap!4279) (v!41366 (underlying!8787 (cache!4324 cacheUp!725))))) b!4284065))

(assert (= b!4284054 b!4284056))

(assert (= (and b!4284061 ((_ is HashMap!4184) (cache!4324 cacheUp!725))) b!4284054))

(assert (= start!411598 b!4284061))

(declare-fun m!4880361 () Bool)

(assert (=> b!4284057 m!4880361))

(declare-fun m!4880363 () Bool)

(assert (=> b!4284066 m!4880363))

(declare-fun m!4880365 () Bool)

(assert (=> b!4284042 m!4880365))

(declare-fun m!4880367 () Bool)

(assert (=> b!4284044 m!4880367))

(declare-fun m!4880369 () Bool)

(assert (=> mapNonEmpty!19354 m!4880369))

(declare-fun m!4880371 () Bool)

(assert (=> b!4284034 m!4880371))

(declare-fun m!4880373 () Bool)

(assert (=> b!4284034 m!4880373))

(declare-fun m!4880375 () Bool)

(assert (=> b!4284046 m!4880375))

(declare-fun m!4880377 () Bool)

(assert (=> b!4284041 m!4880377))

(declare-fun m!4880379 () Bool)

(assert (=> b!4284041 m!4880379))

(declare-fun m!4880381 () Bool)

(assert (=> mapNonEmpty!19355 m!4880381))

(declare-fun m!4880383 () Bool)

(assert (=> b!4284064 m!4880383))

(declare-fun m!4880385 () Bool)

(assert (=> start!411598 m!4880385))

(declare-fun m!4880387 () Bool)

(assert (=> start!411598 m!4880387))

(declare-fun m!4880389 () Bool)

(assert (=> start!411598 m!4880389))

(declare-fun m!4880391 () Bool)

(assert (=> start!411598 m!4880391))

(declare-fun m!4880393 () Bool)

(assert (=> start!411598 m!4880393))

(declare-fun m!4880395 () Bool)

(assert (=> b!4284033 m!4880395))

(declare-fun m!4880397 () Bool)

(assert (=> b!4284033 m!4880397))

(declare-fun m!4880399 () Bool)

(assert (=> b!4284033 m!4880399))

(assert (=> b!4284033 m!4880397))

(assert (=> b!4284033 m!4880399))

(declare-fun m!4880401 () Bool)

(assert (=> b!4284033 m!4880401))

(declare-fun m!4880403 () Bool)

(assert (=> b!4284033 m!4880403))

(declare-fun m!4880405 () Bool)

(assert (=> b!4284033 m!4880405))

(declare-fun m!4880407 () Bool)

(assert (=> b!4284033 m!4880407))

(declare-fun m!4880409 () Bool)

(assert (=> b!4284033 m!4880409))

(declare-fun m!4880411 () Bool)

(assert (=> b!4284033 m!4880411))

(declare-fun m!4880413 () Bool)

(assert (=> b!4284059 m!4880413))

(declare-fun m!4880415 () Bool)

(assert (=> b!4284063 m!4880415))

(declare-fun m!4880417 () Bool)

(assert (=> mapNonEmpty!19353 m!4880417))

(declare-fun m!4880419 () Bool)

(assert (=> b!4284036 m!4880419))

(assert (=> b!4284036 m!4880419))

(declare-fun m!4880421 () Bool)

(assert (=> b!4284036 m!4880421))

(declare-fun m!4880423 () Bool)

(assert (=> b!4284036 m!4880423))

(declare-fun m!4880425 () Bool)

(assert (=> b!4284049 m!4880425))

(declare-fun m!4880427 () Bool)

(assert (=> b!4284053 m!4880427))

(declare-fun m!4880429 () Bool)

(assert (=> b!4284053 m!4880429))

(declare-fun m!4880431 () Bool)

(assert (=> b!4284055 m!4880431))

(declare-fun m!4880433 () Bool)

(assert (=> b!4284055 m!4880433))

(declare-fun m!4880435 () Bool)

(assert (=> b!4284045 m!4880435))

(declare-fun m!4880437 () Bool)

(assert (=> b!4284045 m!4880437))

(declare-fun m!4880439 () Bool)

(assert (=> b!4284052 m!4880439))

(check-sat (not b!4284034) (not b!4284063) (not b!4284044) (not b!4284053) b_and!338077 (not b!4284057) (not b!4284055) (not b!4284047) (not b_next!127581) (not b_next!127579) b_and!338081 (not b_next!127591) b_and!338091 (not b!4284042) (not b!4284052) (not b!4284059) (not b_next!127589) b_and!338079 (not b_next!127587) (not b!4284049) (not b_next!127583) b_and!338089 (not b!4284045) (not b!4284064) (not b!4284066) (not mapNonEmpty!19355) (not start!411598) b_and!338087 (not mapNonEmpty!19354) (not b!4284058) (not b!4284046) (not b!4284036) (not b!4284062) b_and!338085 (not mapNonEmpty!19353) (not b!4284033) b_and!338083 (not b_next!127585) (not b_next!127593) (not b!4284041))
(check-sat (not b_next!127587) b_and!338077 b_and!338087 b_and!338085 (not b_next!127581) (not b_next!127579) b_and!338081 (not b_next!127591) b_and!338091 (not b_next!127593) (not b_next!127589) b_and!338079 (not b_next!127583) b_and!338089 b_and!338083 (not b_next!127585))
