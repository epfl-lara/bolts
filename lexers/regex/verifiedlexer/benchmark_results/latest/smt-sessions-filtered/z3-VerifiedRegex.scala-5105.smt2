; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261128 () Bool)

(assert start!261128)

(declare-fun b!2681324 () Bool)

(declare-fun b_free!75777 () Bool)

(declare-fun b_next!76481 () Bool)

(assert (=> b!2681324 (= b_free!75777 (not b_next!76481))))

(declare-fun tp!848296 () Bool)

(declare-fun b_and!198573 () Bool)

(assert (=> b!2681324 (= tp!848296 b_and!198573)))

(declare-fun b!2681309 () Bool)

(declare-fun b_free!75779 () Bool)

(declare-fun b_next!76483 () Bool)

(assert (=> b!2681309 (= b_free!75779 (not b_next!76483))))

(declare-fun tp!848295 () Bool)

(declare-fun b_and!198575 () Bool)

(assert (=> b!2681309 (= tp!848295 b_and!198575)))

(declare-fun b!2681316 () Bool)

(declare-fun b_free!75781 () Bool)

(declare-fun b_next!76485 () Bool)

(assert (=> b!2681316 (= b_free!75781 (not b_next!76485))))

(declare-fun tp!848298 () Bool)

(declare-fun b_and!198577 () Bool)

(assert (=> b!2681316 (= tp!848298 b_and!198577)))

(declare-fun b!2681340 () Bool)

(declare-fun b_free!75783 () Bool)

(declare-fun b_next!76487 () Bool)

(assert (=> b!2681340 (= b_free!75783 (not b_next!76487))))

(declare-fun tp!848288 () Bool)

(declare-fun b_and!198579 () Bool)

(assert (=> b!2681340 (= tp!848288 b_and!198579)))

(declare-fun b!2681308 () Bool)

(declare-fun b_free!75785 () Bool)

(declare-fun b_next!76489 () Bool)

(assert (=> b!2681308 (= b_free!75785 (not b_next!76489))))

(declare-fun tp!848289 () Bool)

(declare-fun b_and!198581 () Bool)

(assert (=> b!2681308 (= tp!848289 b_and!198581)))

(declare-fun b_free!75787 () Bool)

(declare-fun b_next!76491 () Bool)

(assert (=> b!2681308 (= b_free!75787 (not b_next!76491))))

(declare-fun tp!848283 () Bool)

(declare-fun b_and!198583 () Bool)

(assert (=> b!2681308 (= tp!848283 b_and!198583)))

(declare-fun e!1690549 () Bool)

(assert (=> b!2681308 (= e!1690549 (and tp!848289 tp!848283))))

(declare-fun e!1690519 () Bool)

(declare-fun e!1690545 () Bool)

(assert (=> b!2681309 (= e!1690519 (and e!1690545 tp!848295))))

(declare-fun b!2681310 () Bool)

(declare-fun e!1690535 () Bool)

(declare-datatypes ((C!15908 0))(
  ( (C!15909 (val!9888 Int)) )
))
(declare-datatypes ((List!31023 0))(
  ( (Nil!30923) (Cons!30923 (h!36343 C!15908) (t!224524 List!31023)) )
))
(declare-datatypes ((IArray!19355 0))(
  ( (IArray!19356 (innerList!9735 List!31023)) )
))
(declare-datatypes ((Conc!9675 0))(
  ( (Node!9675 (left!23900 Conc!9675) (right!24230 Conc!9675) (csize!19580 Int) (cheight!9886 Int)) (Leaf!14781 (xs!12705 IArray!19355) (csize!19581 Int)) (Empty!9675) )
))
(declare-datatypes ((BalanceConc!18964 0))(
  ( (BalanceConc!18965 (c!431856 Conc!9675)) )
))
(declare-fun treated!26 () BalanceConc!18964)

(declare-fun tp!848304 () Bool)

(declare-fun inv!41947 (Conc!9675) Bool)

(assert (=> b!2681310 (= e!1690535 (and (inv!41947 (c!431856 treated!26)) tp!848304))))

(declare-fun b!2681311 () Bool)

(declare-fun e!1690548 () Bool)

(declare-fun input!780 () BalanceConc!18964)

(declare-fun tp!848300 () Bool)

(assert (=> b!2681311 (= e!1690548 (and (inv!41947 (c!431856 input!780)) tp!848300))))

(declare-fun b!2681312 () Bool)

(declare-datatypes ((List!31024 0))(
  ( (Nil!30924) (Cons!30924 (h!36344 (_ BitVec 16)) (t!224525 List!31024)) )
))
(declare-datatypes ((TokenValue!4945 0))(
  ( (FloatLiteralValue!9890 (text!35060 List!31024)) (TokenValueExt!4944 (__x!19806 Int)) (Broken!24725 (value!152194 List!31024)) (Object!5044) (End!4945) (Def!4945) (Underscore!4945) (Match!4945) (Else!4945) (Error!4945) (Case!4945) (If!4945) (Extends!4945) (Abstract!4945) (Class!4945) (Val!4945) (DelimiterValue!9890 (del!5005 List!31024)) (KeywordValue!4951 (value!152195 List!31024)) (CommentValue!9890 (value!152196 List!31024)) (WhitespaceValue!9890 (value!152197 List!31024)) (IndentationValue!4945 (value!152198 List!31024)) (String!34624) (Int32!4945) (Broken!24726 (value!152199 List!31024)) (Boolean!4946) (Unit!45082) (OperatorValue!4948 (op!5005 List!31024)) (IdentifierValue!9890 (value!152200 List!31024)) (IdentifierValue!9891 (value!152201 List!31024)) (WhitespaceValue!9891 (value!152202 List!31024)) (True!9890) (False!9890) (Broken!24727 (value!152203 List!31024)) (Broken!24728 (value!152204 List!31024)) (True!9891) (RightBrace!4945) (RightBracket!4945) (Colon!4945) (Null!4945) (Comma!4945) (LeftBracket!4945) (False!9891) (LeftBrace!4945) (ImaginaryLiteralValue!4945 (text!35061 List!31024)) (StringLiteralValue!14835 (value!152205 List!31024)) (EOFValue!4945 (value!152206 List!31024)) (IdentValue!4945 (value!152207 List!31024)) (DelimiterValue!9891 (value!152208 List!31024)) (DedentValue!4945 (value!152209 List!31024)) (NewLineValue!4945 (value!152210 List!31024)) (IntegerValue!14835 (value!152211 (_ BitVec 32)) (text!35062 List!31024)) (IntegerValue!14836 (value!152212 Int) (text!35063 List!31024)) (Times!4945) (Or!4945) (Equal!4945) (Minus!4945) (Broken!24729 (value!152213 List!31024)) (And!4945) (Div!4945) (LessEqual!4945) (Mod!4945) (Concat!12820) (Not!4945) (Plus!4945) (SpaceValue!4945 (value!152214 List!31024)) (IntegerValue!14837 (value!152215 Int) (text!35064 List!31024)) (StringLiteralValue!14836 (text!35065 List!31024)) (FloatLiteralValue!9891 (text!35066 List!31024)) (BytesLiteralValue!4945 (value!152216 List!31024)) (CommentValue!9891 (value!152217 List!31024)) (StringLiteralValue!14837 (value!152218 List!31024)) (ErrorTokenValue!4945 (msg!5006 List!31024)) )
))
(declare-datatypes ((Regex!7875 0))(
  ( (ElementMatch!7875 (c!431857 C!15908)) (Concat!12821 (regOne!16262 Regex!7875) (regTwo!16262 Regex!7875)) (EmptyExpr!7875) (Star!7875 (reg!8204 Regex!7875)) (EmptyLang!7875) (Union!7875 (regOne!16263 Regex!7875) (regTwo!16263 Regex!7875)) )
))
(declare-datatypes ((String!34625 0))(
  ( (String!34626 (value!152219 String)) )
))
(declare-datatypes ((TokenValueInjection!9330 0))(
  ( (TokenValueInjection!9331 (toValue!6677 Int) (toChars!6536 Int)) )
))
(declare-datatypes ((Rule!9246 0))(
  ( (Rule!9247 (regex!4723 Regex!7875) (tag!5227 String!34625) (isSeparator!4723 Bool) (transformation!4723 TokenValueInjection!9330)) )
))
(declare-datatypes ((Token!8912 0))(
  ( (Token!8913 (value!152220 TokenValue!4945) (rule!7133 Rule!9246) (size!23890 Int) (originalCharacters!5487 List!31023)) )
))
(declare-datatypes ((List!31025 0))(
  ( (Nil!30925) (Cons!30925 (h!36345 Token!8912) (t!224526 List!31025)) )
))
(declare-datatypes ((IArray!19357 0))(
  ( (IArray!19358 (innerList!9736 List!31025)) )
))
(declare-datatypes ((Conc!9676 0))(
  ( (Node!9676 (left!23901 Conc!9676) (right!24231 Conc!9676) (csize!19582 Int) (cheight!9887 Int)) (Leaf!14782 (xs!12706 IArray!19357) (csize!19583 Int)) (Empty!9676) )
))
(declare-datatypes ((BalanceConc!18966 0))(
  ( (BalanceConc!18967 (c!431858 Conc!9676)) )
))
(declare-datatypes ((tuple2!30394 0))(
  ( (tuple2!30395 (_1!17758 BalanceConc!18966) (_2!17758 BalanceConc!18964)) )
))
(declare-fun e!1690526 () tuple2!30394)

(declare-fun acc!348 () BalanceConc!18966)

(assert (=> b!2681312 (= e!1690526 (tuple2!30395 acc!348 input!780))))

(declare-fun b!2681313 () Bool)

(declare-fun e!1690532 () Bool)

(declare-fun e!1690528 () Bool)

(assert (=> b!2681313 (= e!1690532 e!1690528)))

(declare-fun res!1127034 () Bool)

(assert (=> b!2681313 (=> (not res!1127034) (not e!1690528))))

(declare-fun totalInput!354 () BalanceConc!18964)

(declare-fun lt!944502 () List!31023)

(declare-fun list!11676 (BalanceConc!18964) List!31023)

(declare-fun ++!7549 (List!31023 List!31023) List!31023)

(assert (=> b!2681313 (= res!1127034 (= (list!11676 totalInput!354) (++!7549 lt!944502 (list!11676 input!780))))))

(assert (=> b!2681313 (= lt!944502 (list!11676 treated!26))))

(declare-fun b!2681314 () Bool)

(declare-fun e!1690521 () Bool)

(assert (=> b!2681314 (= e!1690521 (not true))))

(declare-fun e!1690546 () Bool)

(assert (=> b!2681314 e!1690546))

(declare-fun res!1127027 () Bool)

(assert (=> b!2681314 (=> (not res!1127027) (not e!1690546))))

(declare-datatypes ((LexerInterface!4319 0))(
  ( (LexerInterfaceExt!4316 (__x!19807 Int)) (Lexer!4317) )
))
(declare-fun thiss!12257 () LexerInterface!4319)

(declare-datatypes ((List!31026 0))(
  ( (Nil!30926) (Cons!30926 (h!36346 Rule!9246) (t!224527 List!31026)) )
))
(declare-fun rules!1381 () List!31026)

(declare-fun lexTailRec!11 (LexerInterface!4319 List!31026 BalanceConc!18964 BalanceConc!18964 BalanceConc!18964 BalanceConc!18966) tuple2!30394)

(assert (=> b!2681314 (= res!1127027 (= (lexTailRec!11 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1690526))))

(declare-fun c!431854 () Bool)

(declare-datatypes ((tuple2!30396 0))(
  ( (tuple2!30397 (_1!17759 Token!8912) (_2!17759 BalanceConc!18964)) )
))
(declare-datatypes ((Option!6111 0))(
  ( (None!6110) (Some!6110 (v!32741 tuple2!30396)) )
))
(declare-fun lt!944495 () Option!6111)

(get-info :version)

(assert (=> b!2681314 (= c!431854 ((_ is Some!6110) lt!944495))))

(declare-fun maxPrefixZipperSequence!987 (LexerInterface!4319 List!31026 BalanceConc!18964) Option!6111)

(assert (=> b!2681314 (= lt!944495 (maxPrefixZipperSequence!987 thiss!12257 rules!1381 input!780))))

(declare-fun b!2681315 () Bool)

(declare-fun e!1690527 () Bool)

(declare-fun tp!848299 () Bool)

(declare-fun inv!41946 (String!34625) Bool)

(declare-fun inv!41948 (TokenValueInjection!9330) Bool)

(assert (=> b!2681315 (= e!1690527 (and tp!848299 (inv!41946 (tag!5227 (h!36346 rules!1381))) (inv!41948 (transformation!4723 (h!36346 rules!1381))) e!1690549))))

(declare-datatypes ((List!31027 0))(
  ( (Nil!30927) (Cons!30927 (h!36347 Regex!7875) (t!224528 List!31027)) )
))
(declare-datatypes ((Context!4298 0))(
  ( (Context!4299 (exprs!2649 List!31027)) )
))
(declare-datatypes ((tuple2!30398 0))(
  ( (tuple2!30399 (_1!17760 Context!4298) (_2!17760 C!15908)) )
))
(declare-datatypes ((array!12403 0))(
  ( (array!12404 (arr!5543 (Array (_ BitVec 32) (_ BitVec 64))) (size!23891 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30400 0))(
  ( (tuple2!30401 (_1!17761 tuple2!30398) (_2!17761 (InoxSet Context!4298))) )
))
(declare-datatypes ((List!31028 0))(
  ( (Nil!30928) (Cons!30928 (h!36348 tuple2!30400) (t!224529 List!31028)) )
))
(declare-datatypes ((array!12405 0))(
  ( (array!12406 (arr!5544 (Array (_ BitVec 32) List!31028)) (size!23892 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3395 0))(
  ( (HashableExt!3394 (__x!19808 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6958 0))(
  ( (LongMapFixedSize!6959 (defaultEntry!3864 Int) (mask!9153 (_ BitVec 32)) (extraKeys!3728 (_ BitVec 32)) (zeroValue!3738 List!31028) (minValue!3738 List!31028) (_size!7001 (_ BitVec 32)) (_keys!3779 array!12403) (_values!3760 array!12405) (_vacant!3540 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13725 0))(
  ( (Cell!13726 (v!32742 LongMapFixedSize!6958)) )
))
(declare-datatypes ((MutLongMap!3479 0))(
  ( (LongMap!3479 (underlying!7161 Cell!13725)) (MutLongMapExt!3478 (__x!19809 Int)) )
))
(declare-datatypes ((Cell!13727 0))(
  ( (Cell!13728 (v!32743 MutLongMap!3479)) )
))
(declare-datatypes ((MutableMap!3385 0))(
  ( (MutableMapExt!3384 (__x!19810 Int)) (HashMap!3385 (underlying!7162 Cell!13727) (hashF!5427 Hashable!3395) (_size!7002 (_ BitVec 32)) (defaultValue!3556 Int)) )
))
(declare-datatypes ((CacheUp!2096 0))(
  ( (CacheUp!2097 (cache!3528 MutableMap!3385)) )
))
(declare-fun cacheUp!486 () CacheUp!2096)

(declare-fun tp!848286 () Bool)

(declare-fun e!1690534 () Bool)

(declare-fun tp!848292 () Bool)

(declare-fun e!1690547 () Bool)

(declare-fun array_inv!3956 (array!12403) Bool)

(declare-fun array_inv!3957 (array!12405) Bool)

(assert (=> b!2681316 (= e!1690534 (and tp!848298 tp!848286 tp!848292 (array_inv!3956 (_keys!3779 (v!32742 (underlying!7161 (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))))) (array_inv!3957 (_values!3760 (v!32742 (underlying!7161 (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))))) e!1690547))))

(declare-fun b!2681317 () Bool)

(declare-fun res!1127030 () Bool)

(assert (=> b!2681317 (=> (not res!1127030) (not e!1690532))))

(declare-datatypes ((tuple3!4182 0))(
  ( (tuple3!4183 (_1!17762 Regex!7875) (_2!17762 Context!4298) (_3!2561 C!15908)) )
))
(declare-datatypes ((tuple2!30402 0))(
  ( (tuple2!30403 (_1!17763 tuple3!4182) (_2!17763 (InoxSet Context!4298))) )
))
(declare-datatypes ((List!31029 0))(
  ( (Nil!30929) (Cons!30929 (h!36349 tuple2!30402) (t!224530 List!31029)) )
))
(declare-datatypes ((array!12407 0))(
  ( (array!12408 (arr!5545 (Array (_ BitVec 32) List!31029)) (size!23893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6960 0))(
  ( (LongMapFixedSize!6961 (defaultEntry!3865 Int) (mask!9154 (_ BitVec 32)) (extraKeys!3729 (_ BitVec 32)) (zeroValue!3739 List!31029) (minValue!3739 List!31029) (_size!7003 (_ BitVec 32)) (_keys!3780 array!12403) (_values!3761 array!12407) (_vacant!3541 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13729 0))(
  ( (Cell!13730 (v!32744 LongMapFixedSize!6960)) )
))
(declare-datatypes ((MutLongMap!3480 0))(
  ( (LongMap!3480 (underlying!7163 Cell!13729)) (MutLongMapExt!3479 (__x!19811 Int)) )
))
(declare-datatypes ((Cell!13731 0))(
  ( (Cell!13732 (v!32745 MutLongMap!3480)) )
))
(declare-datatypes ((Hashable!3396 0))(
  ( (HashableExt!3395 (__x!19812 Int)) )
))
(declare-datatypes ((MutableMap!3386 0))(
  ( (MutableMapExt!3385 (__x!19813 Int)) (HashMap!3386 (underlying!7164 Cell!13731) (hashF!5428 Hashable!3396) (_size!7004 (_ BitVec 32)) (defaultValue!3557 Int)) )
))
(declare-datatypes ((CacheDown!2206 0))(
  ( (CacheDown!2207 (cache!3529 MutableMap!3386)) )
))
(declare-fun cacheDown!499 () CacheDown!2206)

(declare-fun valid!2693 (CacheDown!2206) Bool)

(assert (=> b!2681317 (= res!1127030 (valid!2693 cacheDown!499))))

(declare-fun mapNonEmpty!15929 () Bool)

(declare-fun mapRes!15930 () Bool)

(declare-fun tp!848293 () Bool)

(declare-fun tp!848291 () Bool)

(assert (=> mapNonEmpty!15929 (= mapRes!15930 (and tp!848293 tp!848291))))

(declare-fun mapRest!15930 () (Array (_ BitVec 32) List!31028))

(declare-fun mapValue!15930 () List!31028)

(declare-fun mapKey!15930 () (_ BitVec 32))

(assert (=> mapNonEmpty!15929 (= (arr!5544 (_values!3760 (v!32742 (underlying!7161 (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))))) (store mapRest!15930 mapKey!15930 mapValue!15930))))

(declare-fun lt!944503 () BalanceConc!18964)

(declare-fun b!2681318 () Bool)

(declare-fun lt!944507 () BalanceConc!18966)

(assert (=> b!2681318 (= e!1690526 (lexTailRec!11 thiss!12257 rules!1381 totalInput!354 lt!944503 (_2!17759 (v!32741 lt!944495)) lt!944507))))

(declare-fun lt!944511 () tuple2!30394)

(declare-fun lexRec!586 (LexerInterface!4319 List!31026 BalanceConc!18964) tuple2!30394)

(assert (=> b!2681318 (= lt!944511 (lexRec!586 thiss!12257 rules!1381 (_2!17759 (v!32741 lt!944495))))))

(declare-fun lt!944515 () BalanceConc!18964)

(declare-fun charsOf!2975 (Token!8912) BalanceConc!18964)

(assert (=> b!2681318 (= lt!944515 (charsOf!2975 (_1!17759 (v!32741 lt!944495))))))

(declare-fun lt!944505 () List!31023)

(assert (=> b!2681318 (= lt!944505 (list!11676 lt!944515))))

(declare-fun lt!944514 () List!31023)

(assert (=> b!2681318 (= lt!944514 (list!11676 (_2!17759 (v!32741 lt!944495))))))

(declare-datatypes ((Unit!45083 0))(
  ( (Unit!45084) )
))
(declare-fun lt!944496 () Unit!45083)

(declare-fun lemmaConcatAssociativity!1526 (List!31023 List!31023 List!31023) Unit!45083)

(assert (=> b!2681318 (= lt!944496 (lemmaConcatAssociativity!1526 lt!944502 lt!944505 lt!944514))))

(declare-fun lt!944508 () List!31023)

(assert (=> b!2681318 (= lt!944508 (++!7549 lt!944502 lt!944505))))

(declare-fun res!1127032 () Bool)

(assert (=> b!2681318 (= res!1127032 (= (++!7549 lt!944508 lt!944514) (++!7549 lt!944502 (++!7549 lt!944505 lt!944514))))))

(declare-fun e!1690536 () Bool)

(assert (=> b!2681318 (=> (not res!1127032) (not e!1690536))))

(assert (=> b!2681318 e!1690536))

(declare-fun lt!944504 () List!31025)

(assert (=> b!2681318 (= lt!944504 (Cons!30925 (_1!17759 (v!32741 lt!944495)) Nil!30925))))

(declare-fun lt!944509 () List!31025)

(declare-fun list!11677 (BalanceConc!18966) List!31025)

(assert (=> b!2681318 (= lt!944509 (list!11677 (_1!17758 lt!944511)))))

(declare-fun lt!944493 () Unit!45083)

(declare-fun lt!944512 () List!31025)

(declare-fun lemmaConcatAssociativity!1527 (List!31025 List!31025 List!31025) Unit!45083)

(assert (=> b!2681318 (= lt!944493 (lemmaConcatAssociativity!1527 lt!944512 lt!944504 lt!944509))))

(declare-fun ++!7550 (List!31025 List!31025) List!31025)

(assert (=> b!2681318 (= (++!7550 (++!7550 lt!944512 lt!944504) lt!944509) (++!7550 lt!944512 (++!7550 lt!944504 lt!944509)))))

(declare-fun append!749 (BalanceConc!18966 Token!8912) BalanceConc!18966)

(assert (=> b!2681318 (= lt!944507 (append!749 acc!348 (_1!17759 (v!32741 lt!944495))))))

(declare-fun lt!944500 () List!31025)

(assert (=> b!2681318 (= lt!944500 (list!11677 lt!944507))))

(declare-fun lt!944510 () Unit!45083)

(declare-fun lemmaLexThenLexPrefix!394 (LexerInterface!4319 List!31026 List!31023 List!31023 List!31025 List!31025 List!31023) Unit!45083)

(assert (=> b!2681318 (= lt!944510 (lemmaLexThenLexPrefix!394 thiss!12257 rules!1381 lt!944508 lt!944514 lt!944500 lt!944509 (list!11676 (_2!17758 lt!944511))))))

(declare-datatypes ((tuple2!30404 0))(
  ( (tuple2!30405 (_1!17764 List!31025) (_2!17764 List!31023)) )
))
(declare-fun lexList!1181 (LexerInterface!4319 List!31026 List!31023) tuple2!30404)

(assert (=> b!2681318 (= (lexList!1181 thiss!12257 rules!1381 lt!944508) (tuple2!30405 lt!944500 Nil!30923))))

(declare-fun ++!7551 (BalanceConc!18964 BalanceConc!18964) BalanceConc!18964)

(assert (=> b!2681318 (= lt!944503 (++!7551 treated!26 lt!944515))))

(declare-fun lt!944498 () Option!6111)

(assert (=> b!2681318 (= lt!944498 (maxPrefixZipperSequence!987 thiss!12257 rules!1381 lt!944503))))

(declare-fun c!431855 () Bool)

(assert (=> b!2681318 (= c!431855 ((_ is Some!6110) lt!944498))))

(declare-fun e!1690541 () tuple2!30394)

(assert (=> b!2681318 (= (lexRec!586 thiss!12257 rules!1381 lt!944503) e!1690541)))

(declare-fun b!2681320 () Bool)

(declare-fun e!1690533 () Bool)

(declare-fun e!1690525 () Bool)

(assert (=> b!2681320 (= e!1690533 e!1690525)))

(declare-fun b!2681321 () Bool)

(declare-fun res!1127026 () Bool)

(declare-fun e!1690524 () Bool)

(assert (=> b!2681321 (=> (not res!1127026) (not e!1690524))))

(declare-fun lt!944501 () tuple2!30394)

(declare-fun isEmpty!17675 (List!31023) Bool)

(assert (=> b!2681321 (= res!1127026 (isEmpty!17675 (list!11676 (_2!17758 lt!944501))))))

(declare-fun b!2681322 () Bool)

(declare-fun e!1690523 () Bool)

(declare-fun e!1690529 () Bool)

(assert (=> b!2681322 (= e!1690523 e!1690529)))

(declare-fun b!2681323 () Bool)

(declare-fun e!1690530 () Bool)

(declare-fun tp!848302 () Bool)

(declare-fun inv!41949 (Conc!9676) Bool)

(assert (=> b!2681323 (= e!1690530 (and (inv!41949 (c!431858 acc!348)) tp!848302))))

(declare-fun tp!848284 () Bool)

(declare-fun e!1690539 () Bool)

(declare-fun tp!848301 () Bool)

(declare-fun array_inv!3958 (array!12407) Bool)

(assert (=> b!2681324 (= e!1690529 (and tp!848296 tp!848284 tp!848301 (array_inv!3956 (_keys!3780 (v!32744 (underlying!7163 (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))))) (array_inv!3958 (_values!3761 (v!32744 (underlying!7163 (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))))) e!1690539))))

(declare-fun b!2681325 () Bool)

(declare-fun tp!848297 () Bool)

(assert (=> b!2681325 (= e!1690547 (and tp!848297 mapRes!15930))))

(declare-fun condMapEmpty!15930 () Bool)

(declare-fun mapDefault!15929 () List!31028)

(assert (=> b!2681325 (= condMapEmpty!15930 (= (arr!5544 (_values!3760 (v!32742 (underlying!7161 (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31028)) mapDefault!15929)))))

(declare-fun lt!944516 () tuple2!30394)

(declare-fun b!2681326 () Bool)

(assert (=> b!2681326 (= lt!944516 (lexRec!586 thiss!12257 rules!1381 (_2!17759 (v!32741 lt!944498))))))

(declare-fun prepend!1056 (BalanceConc!18966 Token!8912) BalanceConc!18966)

(assert (=> b!2681326 (= e!1690541 (tuple2!30395 (prepend!1056 (_1!17758 lt!944516) (_1!17759 (v!32741 lt!944498))) (_2!17758 lt!944516)))))

(declare-fun b!2681327 () Bool)

(assert (=> b!2681327 (= e!1690525 e!1690534)))

(declare-fun b!2681328 () Bool)

(declare-fun lt!944499 () MutLongMap!3479)

(assert (=> b!2681328 (= e!1690545 (and e!1690533 ((_ is LongMap!3479) lt!944499)))))

(assert (=> b!2681328 (= lt!944499 (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))))

(declare-fun b!2681329 () Bool)

(assert (=> b!2681329 (= e!1690524 e!1690521)))

(declare-fun res!1127029 () Bool)

(assert (=> b!2681329 (=> (not res!1127029) (not e!1690521))))

(declare-fun lt!944506 () tuple2!30394)

(declare-fun lt!944494 () tuple2!30394)

(declare-fun ++!7552 (BalanceConc!18966 BalanceConc!18966) BalanceConc!18966)

(assert (=> b!2681329 (= res!1127029 (= (list!11677 (_1!17758 lt!944494)) (list!11677 (++!7552 acc!348 (_1!17758 lt!944506)))))))

(assert (=> b!2681329 (= lt!944506 (lexRec!586 thiss!12257 rules!1381 input!780))))

(assert (=> b!2681329 (= lt!944494 (lexRec!586 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2681330 () Bool)

(declare-fun e!1690520 () Bool)

(declare-fun tp!848303 () Bool)

(assert (=> b!2681330 (= e!1690520 (and (inv!41947 (c!431856 totalInput!354)) tp!848303))))

(declare-fun b!2681331 () Bool)

(declare-fun e!1690542 () Bool)

(assert (=> b!2681331 (= e!1690542 e!1690523)))

(declare-fun b!2681332 () Bool)

(declare-fun res!1127028 () Bool)

(assert (=> b!2681332 (=> (not res!1127028) (not e!1690532))))

(declare-fun rulesInvariant!3816 (LexerInterface!4319 List!31026) Bool)

(assert (=> b!2681332 (= res!1127028 (rulesInvariant!3816 thiss!12257 rules!1381))))

(declare-fun b!2681333 () Bool)

(declare-fun res!1127035 () Bool)

(assert (=> b!2681333 (=> (not res!1127035) (not e!1690532))))

(declare-fun valid!2694 (CacheUp!2096) Bool)

(assert (=> b!2681333 (= res!1127035 (valid!2694 cacheUp!486))))

(declare-fun b!2681334 () Bool)

(assert (=> b!2681334 (= e!1690536 (= lt!944506 (tuple2!30395 (prepend!1056 (_1!17758 lt!944511) (_1!17759 (v!32741 lt!944495))) (_2!17758 lt!944511))))))

(declare-fun b!2681335 () Bool)

(assert (=> b!2681335 (= e!1690528 e!1690524)))

(declare-fun res!1127033 () Bool)

(assert (=> b!2681335 (=> (not res!1127033) (not e!1690524))))

(declare-fun lt!944513 () List!31025)

(assert (=> b!2681335 (= res!1127033 (= lt!944513 lt!944512))))

(assert (=> b!2681335 (= lt!944512 (list!11677 acc!348))))

(assert (=> b!2681335 (= lt!944513 (list!11677 (_1!17758 lt!944501)))))

(assert (=> b!2681335 (= lt!944501 (lexRec!586 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2681336 () Bool)

(declare-fun lex!1942 (LexerInterface!4319 List!31026 BalanceConc!18964) tuple2!30394)

(declare-fun lexTailRecV2!854 (LexerInterface!4319 List!31026 BalanceConc!18964 BalanceConc!18964 BalanceConc!18964 BalanceConc!18966) tuple2!30394)

(assert (=> b!2681336 (= e!1690546 (= (lex!1942 thiss!12257 rules!1381 input!780) (lexTailRecV2!854 thiss!12257 rules!1381 input!780 (BalanceConc!18965 Empty!9675) input!780 (BalanceConc!18967 Empty!9676))))))

(declare-fun b!2681337 () Bool)

(declare-fun e!1690537 () Bool)

(declare-fun tp!848285 () Bool)

(assert (=> b!2681337 (= e!1690537 (and e!1690527 tp!848285))))

(declare-fun b!2681338 () Bool)

(declare-fun tp!848294 () Bool)

(declare-fun mapRes!15929 () Bool)

(assert (=> b!2681338 (= e!1690539 (and tp!848294 mapRes!15929))))

(declare-fun condMapEmpty!15929 () Bool)

(declare-fun mapDefault!15930 () List!31029)

(assert (=> b!2681338 (= condMapEmpty!15929 (= (arr!5545 (_values!3761 (v!32744 (underlying!7163 (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31029)) mapDefault!15930)))))

(declare-fun b!2681319 () Bool)

(declare-fun e!1690540 () Bool)

(declare-fun lt!944497 () MutLongMap!3480)

(assert (=> b!2681319 (= e!1690540 (and e!1690542 ((_ is LongMap!3480) lt!944497)))))

(assert (=> b!2681319 (= lt!944497 (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))))

(declare-fun res!1127031 () Bool)

(assert (=> start!261128 (=> (not res!1127031) (not e!1690532))))

(assert (=> start!261128 (= res!1127031 ((_ is Lexer!4317) thiss!12257))))

(assert (=> start!261128 e!1690532))

(declare-fun inv!41950 (BalanceConc!18964) Bool)

(assert (=> start!261128 (and (inv!41950 totalInput!354) e!1690520)))

(declare-fun e!1690543 () Bool)

(declare-fun inv!41951 (CacheUp!2096) Bool)

(assert (=> start!261128 (and (inv!41951 cacheUp!486) e!1690543)))

(declare-fun inv!41952 (BalanceConc!18966) Bool)

(assert (=> start!261128 (and (inv!41952 acc!348) e!1690530)))

(assert (=> start!261128 (and (inv!41950 input!780) e!1690548)))

(assert (=> start!261128 (and (inv!41950 treated!26) e!1690535)))

(assert (=> start!261128 e!1690537))

(assert (=> start!261128 true))

(declare-fun e!1690518 () Bool)

(declare-fun inv!41953 (CacheDown!2206) Bool)

(assert (=> start!261128 (and (inv!41953 cacheDown!499) e!1690518)))

(declare-fun mapNonEmpty!15930 () Bool)

(declare-fun tp!848287 () Bool)

(declare-fun tp!848290 () Bool)

(assert (=> mapNonEmpty!15930 (= mapRes!15929 (and tp!848287 tp!848290))))

(declare-fun mapRest!15929 () (Array (_ BitVec 32) List!31029))

(declare-fun mapValue!15929 () List!31029)

(declare-fun mapKey!15929 () (_ BitVec 32))

(assert (=> mapNonEmpty!15930 (= (arr!5545 (_values!3761 (v!32744 (underlying!7163 (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))))) (store mapRest!15929 mapKey!15929 mapValue!15929))))

(declare-fun b!2681339 () Bool)

(declare-fun e!1690531 () Bool)

(assert (=> b!2681339 (= e!1690518 e!1690531)))

(assert (=> b!2681340 (= e!1690531 (and e!1690540 tp!848288))))

(declare-fun mapIsEmpty!15929 () Bool)

(assert (=> mapIsEmpty!15929 mapRes!15930))

(declare-fun b!2681341 () Bool)

(assert (=> b!2681341 (= e!1690541 (tuple2!30395 (BalanceConc!18967 Empty!9676) lt!944503))))

(declare-fun mapIsEmpty!15930 () Bool)

(assert (=> mapIsEmpty!15930 mapRes!15929))

(declare-fun b!2681342 () Bool)

(assert (=> b!2681342 (= e!1690543 e!1690519)))

(declare-fun b!2681343 () Bool)

(declare-fun res!1127025 () Bool)

(assert (=> b!2681343 (=> (not res!1127025) (not e!1690532))))

(declare-fun isEmpty!17676 (List!31026) Bool)

(assert (=> b!2681343 (= res!1127025 (not (isEmpty!17676 rules!1381)))))

(declare-fun b!2681344 () Bool)

(declare-fun res!1127024 () Bool)

(assert (=> b!2681344 (=> (not res!1127024) (not e!1690521))))

(assert (=> b!2681344 (= res!1127024 (= (list!11676 (_2!17758 lt!944494)) (list!11676 (_2!17758 lt!944506))))))

(assert (= (and start!261128 res!1127031) b!2681343))

(assert (= (and b!2681343 res!1127025) b!2681332))

(assert (= (and b!2681332 res!1127028) b!2681333))

(assert (= (and b!2681333 res!1127035) b!2681317))

(assert (= (and b!2681317 res!1127030) b!2681313))

(assert (= (and b!2681313 res!1127034) b!2681335))

(assert (= (and b!2681335 res!1127033) b!2681321))

(assert (= (and b!2681321 res!1127026) b!2681329))

(assert (= (and b!2681329 res!1127029) b!2681344))

(assert (= (and b!2681344 res!1127024) b!2681314))

(assert (= (and b!2681314 c!431854) b!2681318))

(assert (= (and b!2681314 (not c!431854)) b!2681312))

(assert (= (and b!2681318 res!1127032) b!2681334))

(assert (= (and b!2681318 c!431855) b!2681326))

(assert (= (and b!2681318 (not c!431855)) b!2681341))

(assert (= (and b!2681314 res!1127027) b!2681336))

(assert (= start!261128 b!2681330))

(assert (= (and b!2681325 condMapEmpty!15930) mapIsEmpty!15929))

(assert (= (and b!2681325 (not condMapEmpty!15930)) mapNonEmpty!15929))

(assert (= b!2681316 b!2681325))

(assert (= b!2681327 b!2681316))

(assert (= b!2681320 b!2681327))

(assert (= (and b!2681328 ((_ is LongMap!3479) (v!32743 (underlying!7162 (cache!3528 cacheUp!486))))) b!2681320))

(assert (= b!2681309 b!2681328))

(assert (= (and b!2681342 ((_ is HashMap!3385) (cache!3528 cacheUp!486))) b!2681309))

(assert (= start!261128 b!2681342))

(assert (= start!261128 b!2681323))

(assert (= start!261128 b!2681311))

(assert (= start!261128 b!2681310))

(assert (= b!2681315 b!2681308))

(assert (= b!2681337 b!2681315))

(assert (= (and start!261128 ((_ is Cons!30926) rules!1381)) b!2681337))

(assert (= (and b!2681338 condMapEmpty!15929) mapIsEmpty!15930))

(assert (= (and b!2681338 (not condMapEmpty!15929)) mapNonEmpty!15930))

(assert (= b!2681324 b!2681338))

(assert (= b!2681322 b!2681324))

(assert (= b!2681331 b!2681322))

(assert (= (and b!2681319 ((_ is LongMap!3480) (v!32745 (underlying!7164 (cache!3529 cacheDown!499))))) b!2681331))

(assert (= b!2681340 b!2681319))

(assert (= (and b!2681339 ((_ is HashMap!3386) (cache!3529 cacheDown!499))) b!2681340))

(assert (= start!261128 b!2681339))

(declare-fun m!3049453 () Bool)

(assert (=> b!2681318 m!3049453))

(declare-fun m!3049455 () Bool)

(assert (=> b!2681318 m!3049455))

(declare-fun m!3049457 () Bool)

(assert (=> b!2681318 m!3049457))

(declare-fun m!3049459 () Bool)

(assert (=> b!2681318 m!3049459))

(declare-fun m!3049461 () Bool)

(assert (=> b!2681318 m!3049461))

(assert (=> b!2681318 m!3049453))

(declare-fun m!3049463 () Bool)

(assert (=> b!2681318 m!3049463))

(declare-fun m!3049465 () Bool)

(assert (=> b!2681318 m!3049465))

(declare-fun m!3049467 () Bool)

(assert (=> b!2681318 m!3049467))

(declare-fun m!3049469 () Bool)

(assert (=> b!2681318 m!3049469))

(declare-fun m!3049471 () Bool)

(assert (=> b!2681318 m!3049471))

(declare-fun m!3049473 () Bool)

(assert (=> b!2681318 m!3049473))

(assert (=> b!2681318 m!3049473))

(declare-fun m!3049475 () Bool)

(assert (=> b!2681318 m!3049475))

(declare-fun m!3049477 () Bool)

(assert (=> b!2681318 m!3049477))

(declare-fun m!3049479 () Bool)

(assert (=> b!2681318 m!3049479))

(declare-fun m!3049481 () Bool)

(assert (=> b!2681318 m!3049481))

(declare-fun m!3049483 () Bool)

(assert (=> b!2681318 m!3049483))

(declare-fun m!3049485 () Bool)

(assert (=> b!2681318 m!3049485))

(declare-fun m!3049487 () Bool)

(assert (=> b!2681318 m!3049487))

(declare-fun m!3049489 () Bool)

(assert (=> b!2681318 m!3049489))

(declare-fun m!3049491 () Bool)

(assert (=> b!2681318 m!3049491))

(declare-fun m!3049493 () Bool)

(assert (=> b!2681318 m!3049493))

(declare-fun m!3049495 () Bool)

(assert (=> b!2681318 m!3049495))

(declare-fun m!3049497 () Bool)

(assert (=> b!2681318 m!3049497))

(assert (=> b!2681318 m!3049477))

(declare-fun m!3049499 () Bool)

(assert (=> b!2681318 m!3049499))

(assert (=> b!2681318 m!3049465))

(declare-fun m!3049501 () Bool)

(assert (=> b!2681316 m!3049501))

(declare-fun m!3049503 () Bool)

(assert (=> b!2681316 m!3049503))

(declare-fun m!3049505 () Bool)

(assert (=> b!2681324 m!3049505))

(declare-fun m!3049507 () Bool)

(assert (=> b!2681324 m!3049507))

(declare-fun m!3049509 () Bool)

(assert (=> b!2681326 m!3049509))

(declare-fun m!3049511 () Bool)

(assert (=> b!2681326 m!3049511))

(declare-fun m!3049513 () Bool)

(assert (=> mapNonEmpty!15929 m!3049513))

(declare-fun m!3049515 () Bool)

(assert (=> b!2681310 m!3049515))

(declare-fun m!3049517 () Bool)

(assert (=> b!2681311 m!3049517))

(declare-fun m!3049519 () Bool)

(assert (=> b!2681317 m!3049519))

(declare-fun m!3049521 () Bool)

(assert (=> b!2681314 m!3049521))

(declare-fun m!3049523 () Bool)

(assert (=> b!2681314 m!3049523))

(declare-fun m!3049525 () Bool)

(assert (=> b!2681333 m!3049525))

(declare-fun m!3049527 () Bool)

(assert (=> b!2681315 m!3049527))

(declare-fun m!3049529 () Bool)

(assert (=> b!2681315 m!3049529))

(declare-fun m!3049531 () Bool)

(assert (=> b!2681329 m!3049531))

(declare-fun m!3049533 () Bool)

(assert (=> b!2681329 m!3049533))

(declare-fun m!3049535 () Bool)

(assert (=> b!2681329 m!3049535))

(declare-fun m!3049537 () Bool)

(assert (=> b!2681329 m!3049537))

(assert (=> b!2681329 m!3049533))

(declare-fun m!3049539 () Bool)

(assert (=> b!2681329 m!3049539))

(declare-fun m!3049541 () Bool)

(assert (=> b!2681334 m!3049541))

(declare-fun m!3049543 () Bool)

(assert (=> start!261128 m!3049543))

(declare-fun m!3049545 () Bool)

(assert (=> start!261128 m!3049545))

(declare-fun m!3049547 () Bool)

(assert (=> start!261128 m!3049547))

(declare-fun m!3049549 () Bool)

(assert (=> start!261128 m!3049549))

(declare-fun m!3049551 () Bool)

(assert (=> start!261128 m!3049551))

(declare-fun m!3049553 () Bool)

(assert (=> start!261128 m!3049553))

(declare-fun m!3049555 () Bool)

(assert (=> b!2681343 m!3049555))

(declare-fun m!3049557 () Bool)

(assert (=> b!2681336 m!3049557))

(declare-fun m!3049559 () Bool)

(assert (=> b!2681336 m!3049559))

(declare-fun m!3049561 () Bool)

(assert (=> b!2681323 m!3049561))

(declare-fun m!3049563 () Bool)

(assert (=> b!2681344 m!3049563))

(declare-fun m!3049565 () Bool)

(assert (=> b!2681344 m!3049565))

(declare-fun m!3049567 () Bool)

(assert (=> b!2681332 m!3049567))

(declare-fun m!3049569 () Bool)

(assert (=> b!2681321 m!3049569))

(assert (=> b!2681321 m!3049569))

(declare-fun m!3049571 () Bool)

(assert (=> b!2681321 m!3049571))

(declare-fun m!3049573 () Bool)

(assert (=> b!2681313 m!3049573))

(declare-fun m!3049575 () Bool)

(assert (=> b!2681313 m!3049575))

(assert (=> b!2681313 m!3049575))

(declare-fun m!3049577 () Bool)

(assert (=> b!2681313 m!3049577))

(declare-fun m!3049579 () Bool)

(assert (=> b!2681313 m!3049579))

(declare-fun m!3049581 () Bool)

(assert (=> b!2681335 m!3049581))

(declare-fun m!3049583 () Bool)

(assert (=> b!2681335 m!3049583))

(declare-fun m!3049585 () Bool)

(assert (=> b!2681335 m!3049585))

(declare-fun m!3049587 () Bool)

(assert (=> b!2681330 m!3049587))

(declare-fun m!3049589 () Bool)

(assert (=> mapNonEmpty!15930 m!3049589))

(check-sat (not b_next!76487) (not b!2681338) (not b!2681316) (not b!2681310) (not b!2681334) (not b!2681318) (not b_next!76485) (not b!2681311) (not b_next!76489) (not b!2681326) b_and!198573 (not b!2681343) (not b!2681315) (not b!2681323) (not b!2681329) (not b!2681335) (not b_next!76491) (not b!2681317) b_and!198583 (not b!2681336) (not b!2681344) (not b!2681313) b_and!198577 (not b!2681314) (not b!2681321) (not b!2681333) b_and!198575 (not start!261128) (not b!2681332) (not b!2681337) (not b!2681325) b_and!198579 (not b!2681324) (not mapNonEmpty!15930) b_and!198581 (not mapNonEmpty!15929) (not b_next!76481) (not b_next!76483) (not b!2681330))
(check-sat (not b_next!76487) (not b_next!76491) b_and!198583 b_and!198577 b_and!198575 b_and!198579 (not b_next!76483) (not b_next!76485) (not b_next!76489) b_and!198573 b_and!198581 (not b_next!76481))
