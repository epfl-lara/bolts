; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261288 () Bool)

(assert start!261288)

(declare-fun b!2683319 () Bool)

(declare-fun b_free!75905 () Bool)

(declare-fun b_next!76609 () Bool)

(assert (=> b!2683319 (= b_free!75905 (not b_next!76609))))

(declare-fun tp!849295 () Bool)

(declare-fun b_and!198707 () Bool)

(assert (=> b!2683319 (= tp!849295 b_and!198707)))

(declare-fun b_free!75907 () Bool)

(declare-fun b_next!76611 () Bool)

(assert (=> b!2683319 (= b_free!75907 (not b_next!76611))))

(declare-fun tp!849297 () Bool)

(declare-fun b_and!198709 () Bool)

(assert (=> b!2683319 (= tp!849297 b_and!198709)))

(declare-fun b!2683350 () Bool)

(declare-fun b_free!75909 () Bool)

(declare-fun b_next!76613 () Bool)

(assert (=> b!2683350 (= b_free!75909 (not b_next!76613))))

(declare-fun tp!849296 () Bool)

(declare-fun b_and!198711 () Bool)

(assert (=> b!2683350 (= tp!849296 b_and!198711)))

(declare-fun b!2683340 () Bool)

(declare-fun b_free!75911 () Bool)

(declare-fun b_next!76615 () Bool)

(assert (=> b!2683340 (= b_free!75911 (not b_next!76615))))

(declare-fun tp!849301 () Bool)

(declare-fun b_and!198713 () Bool)

(assert (=> b!2683340 (= tp!849301 b_and!198713)))

(declare-fun b!2683348 () Bool)

(declare-fun b_free!75913 () Bool)

(declare-fun b_next!76617 () Bool)

(assert (=> b!2683348 (= b_free!75913 (not b_next!76617))))

(declare-fun tp!849283 () Bool)

(declare-fun b_and!198715 () Bool)

(assert (=> b!2683348 (= tp!849283 b_and!198715)))

(declare-fun b!2683324 () Bool)

(declare-fun b_free!75915 () Bool)

(declare-fun b_next!76619 () Bool)

(assert (=> b!2683324 (= b_free!75915 (not b_next!76619))))

(declare-fun tp!849298 () Bool)

(declare-fun b_and!198717 () Bool)

(assert (=> b!2683324 (= tp!849298 b_and!198717)))

(declare-fun b!2683314 () Bool)

(declare-datatypes ((List!31094 0))(
  ( (Nil!30994) (Cons!30994 (h!36414 (_ BitVec 16)) (t!224607 List!31094)) )
))
(declare-datatypes ((TokenValue!4955 0))(
  ( (FloatLiteralValue!9910 (text!35130 List!31094)) (TokenValueExt!4954 (__x!19883 Int)) (Broken!24775 (value!152479 List!31094)) (Object!5054) (End!4955) (Def!4955) (Underscore!4955) (Match!4955) (Else!4955) (Error!4955) (Case!4955) (If!4955) (Extends!4955) (Abstract!4955) (Class!4955) (Val!4955) (DelimiterValue!9910 (del!5015 List!31094)) (KeywordValue!4961 (value!152480 List!31094)) (CommentValue!9910 (value!152481 List!31094)) (WhitespaceValue!9910 (value!152482 List!31094)) (IndentationValue!4955 (value!152483 List!31094)) (String!34674) (Int32!4955) (Broken!24776 (value!152484 List!31094)) (Boolean!4956) (Unit!45114) (OperatorValue!4958 (op!5015 List!31094)) (IdentifierValue!9910 (value!152485 List!31094)) (IdentifierValue!9911 (value!152486 List!31094)) (WhitespaceValue!9911 (value!152487 List!31094)) (True!9910) (False!9910) (Broken!24777 (value!152488 List!31094)) (Broken!24778 (value!152489 List!31094)) (True!9911) (RightBrace!4955) (RightBracket!4955) (Colon!4955) (Null!4955) (Comma!4955) (LeftBracket!4955) (False!9911) (LeftBrace!4955) (ImaginaryLiteralValue!4955 (text!35131 List!31094)) (StringLiteralValue!14865 (value!152490 List!31094)) (EOFValue!4955 (value!152491 List!31094)) (IdentValue!4955 (value!152492 List!31094)) (DelimiterValue!9911 (value!152493 List!31094)) (DedentValue!4955 (value!152494 List!31094)) (NewLineValue!4955 (value!152495 List!31094)) (IntegerValue!14865 (value!152496 (_ BitVec 32)) (text!35132 List!31094)) (IntegerValue!14866 (value!152497 Int) (text!35133 List!31094)) (Times!4955) (Or!4955) (Equal!4955) (Minus!4955) (Broken!24779 (value!152498 List!31094)) (And!4955) (Div!4955) (LessEqual!4955) (Mod!4955) (Concat!12840) (Not!4955) (Plus!4955) (SpaceValue!4955 (value!152499 List!31094)) (IntegerValue!14867 (value!152500 Int) (text!35134 List!31094)) (StringLiteralValue!14866 (text!35135 List!31094)) (FloatLiteralValue!9911 (text!35136 List!31094)) (BytesLiteralValue!4955 (value!152501 List!31094)) (CommentValue!9911 (value!152502 List!31094)) (StringLiteralValue!14867 (value!152503 List!31094)) (ErrorTokenValue!4955 (msg!5016 List!31094)) )
))
(declare-datatypes ((C!15928 0))(
  ( (C!15929 (val!9898 Int)) )
))
(declare-datatypes ((Regex!7885 0))(
  ( (ElementMatch!7885 (c!432117 C!15928)) (Concat!12841 (regOne!16282 Regex!7885) (regTwo!16282 Regex!7885)) (EmptyExpr!7885) (Star!7885 (reg!8214 Regex!7885)) (EmptyLang!7885) (Union!7885 (regOne!16283 Regex!7885) (regTwo!16283 Regex!7885)) )
))
(declare-datatypes ((String!34675 0))(
  ( (String!34676 (value!152504 String)) )
))
(declare-datatypes ((List!31095 0))(
  ( (Nil!30995) (Cons!30995 (h!36415 C!15928) (t!224608 List!31095)) )
))
(declare-datatypes ((IArray!19395 0))(
  ( (IArray!19396 (innerList!9755 List!31095)) )
))
(declare-datatypes ((Conc!9695 0))(
  ( (Node!9695 (left!23927 Conc!9695) (right!24257 Conc!9695) (csize!19620 Int) (cheight!9906 Int)) (Leaf!14806 (xs!12725 IArray!19395) (csize!19621 Int)) (Empty!9695) )
))
(declare-datatypes ((BalanceConc!19004 0))(
  ( (BalanceConc!19005 (c!432118 Conc!9695)) )
))
(declare-datatypes ((TokenValueInjection!9350 0))(
  ( (TokenValueInjection!9351 (toValue!6687 Int) (toChars!6546 Int)) )
))
(declare-datatypes ((Rule!9266 0))(
  ( (Rule!9267 (regex!4733 Regex!7885) (tag!5237 String!34675) (isSeparator!4733 Bool) (transformation!4733 TokenValueInjection!9350)) )
))
(declare-datatypes ((Token!8932 0))(
  ( (Token!8933 (value!152505 TokenValue!4955) (rule!7143 Rule!9266) (size!23937 Int) (originalCharacters!5497 List!31095)) )
))
(declare-datatypes ((List!31096 0))(
  ( (Nil!30996) (Cons!30996 (h!36416 Token!8932) (t!224609 List!31096)) )
))
(declare-datatypes ((IArray!19397 0))(
  ( (IArray!19398 (innerList!9756 List!31096)) )
))
(declare-datatypes ((Conc!9696 0))(
  ( (Node!9696 (left!23928 Conc!9696) (right!24258 Conc!9696) (csize!19622 Int) (cheight!9907 Int)) (Leaf!14807 (xs!12726 IArray!19397) (csize!19623 Int)) (Empty!9696) )
))
(declare-datatypes ((BalanceConc!19006 0))(
  ( (BalanceConc!19007 (c!432119 Conc!9696)) )
))
(declare-datatypes ((tuple2!30502 0))(
  ( (tuple2!30503 (_1!17827 BalanceConc!19006) (_2!17827 BalanceConc!19004)) )
))
(declare-fun e!1692086 () tuple2!30502)

(declare-fun acc!348 () BalanceConc!19006)

(declare-fun input!780 () BalanceConc!19004)

(assert (=> b!2683314 (= e!1692086 (tuple2!30503 acc!348 input!780))))

(declare-fun b!2683315 () Bool)

(declare-fun e!1692085 () Bool)

(declare-fun tp!849284 () Bool)

(declare-fun mapRes!16001 () Bool)

(assert (=> b!2683315 (= e!1692085 (and tp!849284 mapRes!16001))))

(declare-fun condMapEmpty!16001 () Bool)

(declare-datatypes ((List!31097 0))(
  ( (Nil!30997) (Cons!30997 (h!36417 Regex!7885) (t!224610 List!31097)) )
))
(declare-datatypes ((Context!4318 0))(
  ( (Context!4319 (exprs!2659 List!31097)) )
))
(declare-datatypes ((tuple2!30504 0))(
  ( (tuple2!30505 (_1!17828 Context!4318) (_2!17828 C!15928)) )
))
(declare-datatypes ((array!12467 0))(
  ( (array!12468 (arr!5572 (Array (_ BitVec 32) (_ BitVec 64))) (size!23938 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30506 0))(
  ( (tuple2!30507 (_1!17829 tuple2!30504) (_2!17829 (InoxSet Context!4318))) )
))
(declare-datatypes ((List!31098 0))(
  ( (Nil!30998) (Cons!30998 (h!36418 tuple2!30506) (t!224611 List!31098)) )
))
(declare-datatypes ((array!12469 0))(
  ( (array!12470 (arr!5573 (Array (_ BitVec 32) List!31098)) (size!23939 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3414 0))(
  ( (HashableExt!3413 (__x!19884 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6996 0))(
  ( (LongMapFixedSize!6997 (defaultEntry!3883 Int) (mask!9177 (_ BitVec 32)) (extraKeys!3747 (_ BitVec 32)) (zeroValue!3757 List!31098) (minValue!3757 List!31098) (_size!7039 (_ BitVec 32)) (_keys!3798 array!12467) (_values!3779 array!12469) (_vacant!3559 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13801 0))(
  ( (Cell!13802 (v!32794 LongMapFixedSize!6996)) )
))
(declare-datatypes ((MutLongMap!3498 0))(
  ( (LongMap!3498 (underlying!7199 Cell!13801)) (MutLongMapExt!3497 (__x!19885 Int)) )
))
(declare-datatypes ((Cell!13803 0))(
  ( (Cell!13804 (v!32795 MutLongMap!3498)) )
))
(declare-datatypes ((MutableMap!3404 0))(
  ( (MutableMapExt!3403 (__x!19886 Int)) (HashMap!3404 (underlying!7200 Cell!13803) (hashF!5446 Hashable!3414) (_size!7040 (_ BitVec 32)) (defaultValue!3575 Int)) )
))
(declare-datatypes ((CacheUp!2114 0))(
  ( (CacheUp!2115 (cache!3547 MutableMap!3404)) )
))
(declare-fun cacheUp!486 () CacheUp!2114)

(declare-fun mapDefault!16002 () List!31098)

(assert (=> b!2683315 (= condMapEmpty!16001 (= (arr!5573 (_values!3779 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31098)) mapDefault!16002)))))

(declare-fun b!2683316 () Bool)

(declare-fun e!1692073 () Bool)

(declare-fun e!1692082 () Bool)

(assert (=> b!2683316 (= e!1692073 (not e!1692082))))

(declare-fun res!1127718 () Bool)

(assert (=> b!2683316 (=> res!1127718 e!1692082)))

(declare-datatypes ((tuple3!4212 0))(
  ( (tuple3!4213 (_1!17830 Regex!7885) (_2!17830 Context!4318) (_3!2576 C!15928)) )
))
(declare-datatypes ((tuple2!30508 0))(
  ( (tuple2!30509 (_1!17831 tuple3!4212) (_2!17831 (InoxSet Context!4318))) )
))
(declare-datatypes ((List!31099 0))(
  ( (Nil!30999) (Cons!30999 (h!36419 tuple2!30508) (t!224612 List!31099)) )
))
(declare-datatypes ((array!12471 0))(
  ( (array!12472 (arr!5574 (Array (_ BitVec 32) List!31099)) (size!23940 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6998 0))(
  ( (LongMapFixedSize!6999 (defaultEntry!3884 Int) (mask!9178 (_ BitVec 32)) (extraKeys!3748 (_ BitVec 32)) (zeroValue!3758 List!31099) (minValue!3758 List!31099) (_size!7041 (_ BitVec 32)) (_keys!3799 array!12467) (_values!3780 array!12471) (_vacant!3560 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!30510 0))(
  ( (tuple2!30511 (_1!17832 Token!8932) (_2!17832 BalanceConc!19004)) )
))
(declare-datatypes ((Option!6122 0))(
  ( (None!6121) (Some!6121 (v!32796 tuple2!30510)) )
))
(declare-datatypes ((Cell!13805 0))(
  ( (Cell!13806 (v!32797 LongMapFixedSize!6998)) )
))
(declare-datatypes ((MutLongMap!3499 0))(
  ( (LongMap!3499 (underlying!7201 Cell!13805)) (MutLongMapExt!3498 (__x!19887 Int)) )
))
(declare-datatypes ((Cell!13807 0))(
  ( (Cell!13808 (v!32798 MutLongMap!3499)) )
))
(declare-datatypes ((Hashable!3415 0))(
  ( (HashableExt!3414 (__x!19888 Int)) )
))
(declare-datatypes ((MutableMap!3405 0))(
  ( (MutableMapExt!3404 (__x!19889 Int)) (HashMap!3405 (underlying!7202 Cell!13807) (hashF!5447 Hashable!3415) (_size!7042 (_ BitVec 32)) (defaultValue!3576 Int)) )
))
(declare-datatypes ((CacheDown!2226 0))(
  ( (CacheDown!2227 (cache!3548 MutableMap!3405)) )
))
(declare-datatypes ((tuple3!4214 0))(
  ( (tuple3!4215 (_1!17833 Option!6122) (_2!17833 CacheUp!2114) (_3!2577 CacheDown!2226)) )
))
(declare-fun lt!945930 () tuple3!4214)

(get-info :version)

(assert (=> b!2683316 (= res!1127718 (not ((_ is Some!6121) (_1!17833 lt!945930))))))

(declare-datatypes ((List!31100 0))(
  ( (Nil!31000) (Cons!31000 (h!36420 Rule!9266) (t!224613 List!31100)) )
))
(declare-fun rules!1381 () List!31100)

(declare-datatypes ((LexerInterface!4329 0))(
  ( (LexerInterfaceExt!4326 (__x!19890 Int)) (Lexer!4327) )
))
(declare-fun thiss!12257 () LexerInterface!4329)

(declare-fun cacheDown!499 () CacheDown!2226)

(declare-fun maxPrefixZipperSequenceMem!6 (LexerInterface!4329 List!31100 BalanceConc!19004 CacheUp!2114 CacheDown!2226) tuple3!4214)

(assert (=> b!2683316 (= lt!945930 (maxPrefixZipperSequenceMem!6 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1692091 () Bool)

(assert (=> b!2683316 e!1692091))

(declare-fun res!1127725 () Bool)

(assert (=> b!2683316 (=> (not res!1127725) (not e!1692091))))

(declare-fun totalInput!354 () BalanceConc!19004)

(declare-fun treated!26 () BalanceConc!19004)

(declare-fun lexTailRec!18 (LexerInterface!4329 List!31100 BalanceConc!19004 BalanceConc!19004 BalanceConc!19004 BalanceConc!19006) tuple2!30502)

(assert (=> b!2683316 (= res!1127725 (= (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1692086))))

(declare-fun c!432115 () Bool)

(declare-fun lt!945931 () Option!6122)

(assert (=> b!2683316 (= c!432115 ((_ is Some!6121) lt!945931))))

(declare-fun maxPrefixZipperSequence!994 (LexerInterface!4329 List!31100 BalanceConc!19004) Option!6122)

(assert (=> b!2683316 (= lt!945931 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780))))

(declare-fun e!1692098 () Bool)

(declare-fun b!2683317 () Bool)

(declare-fun e!1692092 () Bool)

(declare-fun tp!849280 () Bool)

(declare-fun inv!42018 (String!34675) Bool)

(declare-fun inv!42021 (TokenValueInjection!9350) Bool)

(assert (=> b!2683317 (= e!1692098 (and tp!849280 (inv!42018 (tag!5237 (h!36420 rules!1381))) (inv!42021 (transformation!4733 (h!36420 rules!1381))) e!1692092))))

(declare-fun b!2683318 () Bool)

(declare-fun e!1692081 () Bool)

(declare-fun tp!849299 () Bool)

(declare-fun mapRes!16002 () Bool)

(assert (=> b!2683318 (= e!1692081 (and tp!849299 mapRes!16002))))

(declare-fun condMapEmpty!16002 () Bool)

(declare-fun mapDefault!16001 () List!31099)

(assert (=> b!2683318 (= condMapEmpty!16002 (= (arr!5574 (_values!3780 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31099)) mapDefault!16001)))))

(assert (=> b!2683319 (= e!1692092 (and tp!849295 tp!849297))))

(declare-fun b!2683320 () Bool)

(declare-fun e!1692070 () Bool)

(declare-fun valid!2706 (CacheDown!2226) Bool)

(assert (=> b!2683320 (= e!1692070 (valid!2706 (_3!2577 lt!945930)))))

(declare-fun lt!945932 () BalanceConc!19004)

(declare-fun lt!945910 () BalanceConc!19006)

(declare-fun b!2683321 () Bool)

(assert (=> b!2683321 (= e!1692086 (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 lt!945932 (_2!17832 (v!32796 lt!945931)) lt!945910))))

(declare-fun lt!945914 () tuple2!30502)

(declare-fun lexRec!592 (LexerInterface!4329 List!31100 BalanceConc!19004) tuple2!30502)

(assert (=> b!2683321 (= lt!945914 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))))))

(declare-fun lt!945917 () BalanceConc!19004)

(declare-fun charsOf!2982 (Token!8932) BalanceConc!19004)

(assert (=> b!2683321 (= lt!945917 (charsOf!2982 (_1!17832 (v!32796 lt!945931))))))

(declare-fun lt!945921 () List!31095)

(declare-fun list!11694 (BalanceConc!19004) List!31095)

(assert (=> b!2683321 (= lt!945921 (list!11694 lt!945917))))

(declare-fun lt!945912 () List!31095)

(assert (=> b!2683321 (= lt!945912 (list!11694 (_2!17832 (v!32796 lt!945931))))))

(declare-fun lt!945927 () List!31095)

(declare-datatypes ((Unit!45115 0))(
  ( (Unit!45116) )
))
(declare-fun lt!945908 () Unit!45115)

(declare-fun lemmaConcatAssociativity!1536 (List!31095 List!31095 List!31095) Unit!45115)

(assert (=> b!2683321 (= lt!945908 (lemmaConcatAssociativity!1536 lt!945927 lt!945921 lt!945912))))

(declare-fun lt!945926 () List!31095)

(declare-fun ++!7577 (List!31095 List!31095) List!31095)

(assert (=> b!2683321 (= lt!945926 (++!7577 lt!945927 lt!945921))))

(declare-fun res!1127717 () Bool)

(assert (=> b!2683321 (= res!1127717 (= (++!7577 lt!945926 lt!945912) (++!7577 lt!945927 (++!7577 lt!945921 lt!945912))))))

(declare-fun e!1692093 () Bool)

(assert (=> b!2683321 (=> (not res!1127717) (not e!1692093))))

(assert (=> b!2683321 e!1692093))

(declare-fun lt!945913 () List!31096)

(assert (=> b!2683321 (= lt!945913 (Cons!30996 (_1!17832 (v!32796 lt!945931)) Nil!30996))))

(declare-fun lt!945934 () List!31096)

(declare-fun list!11695 (BalanceConc!19006) List!31096)

(assert (=> b!2683321 (= lt!945934 (list!11695 (_1!17827 lt!945914)))))

(declare-fun lt!945923 () Unit!45115)

(declare-fun lt!945911 () List!31096)

(declare-fun lemmaConcatAssociativity!1537 (List!31096 List!31096 List!31096) Unit!45115)

(assert (=> b!2683321 (= lt!945923 (lemmaConcatAssociativity!1537 lt!945911 lt!945913 lt!945934))))

(declare-fun ++!7578 (List!31096 List!31096) List!31096)

(assert (=> b!2683321 (= (++!7578 (++!7578 lt!945911 lt!945913) lt!945934) (++!7578 lt!945911 (++!7578 lt!945913 lt!945934)))))

(declare-fun append!758 (BalanceConc!19006 Token!8932) BalanceConc!19006)

(assert (=> b!2683321 (= lt!945910 (append!758 acc!348 (_1!17832 (v!32796 lt!945931))))))

(declare-fun lt!945918 () List!31096)

(assert (=> b!2683321 (= lt!945918 (list!11695 lt!945910))))

(declare-fun lt!945925 () Unit!45115)

(declare-fun lemmaLexThenLexPrefix!399 (LexerInterface!4329 List!31100 List!31095 List!31095 List!31096 List!31096 List!31095) Unit!45115)

(assert (=> b!2683321 (= lt!945925 (lemmaLexThenLexPrefix!399 thiss!12257 rules!1381 lt!945926 lt!945912 lt!945918 lt!945934 (list!11694 (_2!17827 lt!945914))))))

(declare-datatypes ((tuple2!30512 0))(
  ( (tuple2!30513 (_1!17834 List!31096) (_2!17834 List!31095)) )
))
(declare-fun lexList!1186 (LexerInterface!4329 List!31100 List!31095) tuple2!30512)

(assert (=> b!2683321 (= (lexList!1186 thiss!12257 rules!1381 lt!945926) (tuple2!30513 lt!945918 Nil!30995))))

(declare-fun ++!7579 (BalanceConc!19004 BalanceConc!19004) BalanceConc!19004)

(assert (=> b!2683321 (= lt!945932 (++!7579 treated!26 lt!945917))))

(declare-fun lt!945933 () Option!6122)

(assert (=> b!2683321 (= lt!945933 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!945932))))

(declare-fun c!432116 () Bool)

(assert (=> b!2683321 (= c!432116 ((_ is Some!6121) lt!945933))))

(declare-fun e!1692083 () tuple2!30502)

(assert (=> b!2683321 (= (lexRec!592 thiss!12257 rules!1381 lt!945932) e!1692083)))

(declare-fun b!2683322 () Bool)

(declare-fun e!1692079 () Bool)

(declare-fun e!1692088 () Bool)

(assert (=> b!2683322 (= e!1692079 e!1692088)))

(declare-fun res!1127719 () Bool)

(assert (=> b!2683322 (=> (not res!1127719) (not e!1692088))))

(assert (=> b!2683322 (= res!1127719 (= (list!11694 totalInput!354) (++!7577 lt!945927 (list!11694 input!780))))))

(assert (=> b!2683322 (= lt!945927 (list!11694 treated!26))))

(declare-fun b!2683323 () Bool)

(declare-fun lex!1950 (LexerInterface!4329 List!31100 BalanceConc!19004) tuple2!30502)

(declare-fun lexTailRecV2!862 (LexerInterface!4329 List!31100 BalanceConc!19004 BalanceConc!19004 BalanceConc!19004 BalanceConc!19006) tuple2!30502)

(assert (=> b!2683323 (= e!1692091 (= (lex!1950 thiss!12257 rules!1381 input!780) (lexTailRecV2!862 thiss!12257 rules!1381 input!780 (BalanceConc!19005 Empty!9695) input!780 (BalanceConc!19007 Empty!9696))))))

(declare-fun e!1692090 () Bool)

(declare-fun tp!849292 () Bool)

(declare-fun tp!849290 () Bool)

(declare-fun array_inv!3979 (array!12467) Bool)

(declare-fun array_inv!3980 (array!12469) Bool)

(assert (=> b!2683324 (= e!1692090 (and tp!849298 tp!849290 tp!849292 (array_inv!3979 (_keys!3798 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) (array_inv!3980 (_values!3779 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) e!1692085))))

(declare-fun b!2683325 () Bool)

(declare-fun e!1692084 () Bool)

(assert (=> b!2683325 (= e!1692088 e!1692084)))

(declare-fun res!1127720 () Bool)

(assert (=> b!2683325 (=> (not res!1127720) (not e!1692084))))

(declare-fun lt!945928 () List!31096)

(assert (=> b!2683325 (= res!1127720 (= lt!945928 lt!945911))))

(assert (=> b!2683325 (= lt!945911 (list!11695 acc!348))))

(declare-fun lt!945929 () tuple2!30502)

(assert (=> b!2683325 (= lt!945928 (list!11695 (_1!17827 lt!945929)))))

(assert (=> b!2683325 (= lt!945929 (lexRec!592 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2683326 () Bool)

(declare-fun e!1692077 () Bool)

(declare-fun tp!849287 () Bool)

(declare-fun inv!42022 (Conc!9695) Bool)

(assert (=> b!2683326 (= e!1692077 (and (inv!42022 (c!432118 totalInput!354)) tp!849287))))

(declare-fun b!2683327 () Bool)

(declare-fun res!1127727 () Bool)

(assert (=> b!2683327 (=> (not res!1127727) (not e!1692073))))

(declare-fun lt!945919 () tuple2!30502)

(declare-fun lt!945920 () tuple2!30502)

(assert (=> b!2683327 (= res!1127727 (= (list!11694 (_2!17827 lt!945919)) (list!11694 (_2!17827 lt!945920))))))

(declare-fun b!2683328 () Bool)

(declare-fun e!1692066 () Bool)

(declare-fun e!1692097 () Bool)

(assert (=> b!2683328 (= e!1692066 e!1692097)))

(declare-fun b!2683329 () Bool)

(declare-fun lt!945915 () tuple2!30502)

(assert (=> b!2683329 (= lt!945915 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945933))))))

(declare-fun prepend!1063 (BalanceConc!19006 Token!8932) BalanceConc!19006)

(assert (=> b!2683329 (= e!1692083 (tuple2!30503 (prepend!1063 (_1!17827 lt!945915) (_1!17832 (v!32796 lt!945933))) (_2!17827 lt!945915)))))

(declare-fun b!2683330 () Bool)

(assert (=> b!2683330 (= e!1692082 e!1692070)))

(declare-fun res!1127730 () Bool)

(assert (=> b!2683330 (=> res!1127730 e!1692070)))

(declare-fun valid!2707 (CacheUp!2114) Bool)

(assert (=> b!2683330 (= res!1127730 (not (valid!2707 (_2!17833 lt!945930))))))

(declare-fun lt!945909 () BalanceConc!19006)

(assert (=> b!2683330 (= lt!945909 (append!758 acc!348 (_1!17832 (v!32796 (_1!17833 lt!945930)))))))

(declare-fun lt!945916 () BalanceConc!19004)

(assert (=> b!2683330 (= lt!945916 (++!7579 treated!26 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))))

(declare-fun b!2683331 () Bool)

(declare-fun e!1692069 () Bool)

(declare-fun e!1692074 () Bool)

(assert (=> b!2683331 (= e!1692069 e!1692074)))

(declare-fun b!2683332 () Bool)

(declare-fun res!1127722 () Bool)

(assert (=> b!2683332 (=> (not res!1127722) (not e!1692079))))

(assert (=> b!2683332 (= res!1127722 (valid!2707 cacheUp!486))))

(declare-fun b!2683333 () Bool)

(declare-fun e!1692096 () Bool)

(declare-fun tp!849293 () Bool)

(assert (=> b!2683333 (= e!1692096 (and e!1692098 tp!849293))))

(declare-fun b!2683334 () Bool)

(declare-fun e!1692089 () Bool)

(assert (=> b!2683334 (= e!1692074 e!1692089)))

(declare-fun b!2683335 () Bool)

(declare-fun e!1692094 () Bool)

(assert (=> b!2683335 (= e!1692094 e!1692090)))

(declare-fun mapNonEmpty!16001 () Bool)

(declare-fun tp!849291 () Bool)

(declare-fun tp!849281 () Bool)

(assert (=> mapNonEmpty!16001 (= mapRes!16001 (and tp!849291 tp!849281))))

(declare-fun mapRest!16001 () (Array (_ BitVec 32) List!31098))

(declare-fun mapValue!16001 () List!31098)

(declare-fun mapKey!16002 () (_ BitVec 32))

(assert (=> mapNonEmpty!16001 (= (arr!5573 (_values!3779 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) (store mapRest!16001 mapKey!16002 mapValue!16001))))

(declare-fun b!2683336 () Bool)

(assert (=> b!2683336 (= e!1692083 (tuple2!30503 (BalanceConc!19007 Empty!9696) lt!945932))))

(declare-fun b!2683337 () Bool)

(declare-fun e!1692065 () Bool)

(declare-fun lt!945922 () MutLongMap!3499)

(assert (=> b!2683337 (= e!1692065 (and e!1692069 ((_ is LongMap!3499) lt!945922)))))

(assert (=> b!2683337 (= lt!945922 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))

(declare-fun b!2683338 () Bool)

(assert (=> b!2683338 (= e!1692084 e!1692073)))

(declare-fun res!1127728 () Bool)

(assert (=> b!2683338 (=> (not res!1127728) (not e!1692073))))

(declare-fun ++!7580 (BalanceConc!19006 BalanceConc!19006) BalanceConc!19006)

(assert (=> b!2683338 (= res!1127728 (= (list!11695 (_1!17827 lt!945919)) (list!11695 (++!7580 acc!348 (_1!17827 lt!945920)))))))

(assert (=> b!2683338 (= lt!945920 (lexRec!592 thiss!12257 rules!1381 input!780))))

(assert (=> b!2683338 (= lt!945919 (lexRec!592 thiss!12257 rules!1381 totalInput!354))))

(declare-fun mapNonEmpty!16002 () Bool)

(declare-fun tp!849294 () Bool)

(declare-fun tp!849285 () Bool)

(assert (=> mapNonEmpty!16002 (= mapRes!16002 (and tp!849294 tp!849285))))

(declare-fun mapRest!16002 () (Array (_ BitVec 32) List!31099))

(declare-fun mapKey!16001 () (_ BitVec 32))

(declare-fun mapValue!16002 () List!31099)

(assert (=> mapNonEmpty!16002 (= (arr!5574 (_values!3780 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) (store mapRest!16002 mapKey!16001 mapValue!16002))))

(declare-fun mapIsEmpty!16001 () Bool)

(assert (=> mapIsEmpty!16001 mapRes!16002))

(declare-fun b!2683339 () Bool)

(declare-fun e!1692067 () Bool)

(declare-fun e!1692087 () Bool)

(assert (=> b!2683339 (= e!1692067 e!1692087)))

(declare-fun tp!849288 () Bool)

(declare-fun tp!849286 () Bool)

(declare-fun array_inv!3981 (array!12471) Bool)

(assert (=> b!2683340 (= e!1692089 (and tp!849301 tp!849288 tp!849286 (array_inv!3979 (_keys!3799 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) (array_inv!3981 (_values!3780 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) e!1692081))))

(declare-fun b!2683341 () Bool)

(declare-fun res!1127726 () Bool)

(assert (=> b!2683341 (=> (not res!1127726) (not e!1692079))))

(declare-fun rulesInvariant!3821 (LexerInterface!4329 List!31100) Bool)

(assert (=> b!2683341 (= res!1127726 (rulesInvariant!3821 thiss!12257 rules!1381))))

(declare-fun b!2683342 () Bool)

(declare-fun res!1127729 () Bool)

(assert (=> b!2683342 (=> (not res!1127729) (not e!1692084))))

(declare-fun isEmpty!17691 (List!31095) Bool)

(assert (=> b!2683342 (= res!1127729 (isEmpty!17691 (list!11694 (_2!17827 lt!945929))))))

(declare-fun b!2683343 () Bool)

(declare-fun e!1692075 () Bool)

(assert (=> b!2683343 (= e!1692075 e!1692094)))

(declare-fun b!2683344 () Bool)

(declare-fun e!1692072 () Bool)

(declare-fun lt!945924 () MutLongMap!3498)

(assert (=> b!2683344 (= e!1692072 (and e!1692075 ((_ is LongMap!3498) lt!945924)))))

(assert (=> b!2683344 (= lt!945924 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))

(declare-fun mapIsEmpty!16002 () Bool)

(assert (=> mapIsEmpty!16002 mapRes!16001))

(declare-fun res!1127723 () Bool)

(assert (=> start!261288 (=> (not res!1127723) (not e!1692079))))

(assert (=> start!261288 (= res!1127723 ((_ is Lexer!4327) thiss!12257))))

(assert (=> start!261288 e!1692079))

(declare-fun inv!42023 (BalanceConc!19004) Bool)

(assert (=> start!261288 (and (inv!42023 totalInput!354) e!1692077)))

(declare-fun inv!42024 (CacheUp!2114) Bool)

(assert (=> start!261288 (and (inv!42024 cacheUp!486) e!1692067)))

(declare-fun e!1692068 () Bool)

(declare-fun inv!42025 (BalanceConc!19006) Bool)

(assert (=> start!261288 (and (inv!42025 acc!348) e!1692068)))

(declare-fun e!1692076 () Bool)

(assert (=> start!261288 (and (inv!42023 input!780) e!1692076)))

(declare-fun e!1692095 () Bool)

(assert (=> start!261288 (and (inv!42023 treated!26) e!1692095)))

(assert (=> start!261288 e!1692096))

(assert (=> start!261288 true))

(declare-fun inv!42026 (CacheDown!2226) Bool)

(assert (=> start!261288 (and (inv!42026 cacheDown!499) e!1692066)))

(declare-fun b!2683345 () Bool)

(declare-fun res!1127724 () Bool)

(assert (=> b!2683345 (=> (not res!1127724) (not e!1692079))))

(assert (=> b!2683345 (= res!1127724 (valid!2706 cacheDown!499))))

(declare-fun b!2683346 () Bool)

(assert (=> b!2683346 (= e!1692093 (= lt!945920 (tuple2!30503 (prepend!1063 (_1!17827 lt!945914) (_1!17832 (v!32796 lt!945931))) (_2!17827 lt!945914))))))

(declare-fun b!2683347 () Bool)

(declare-fun tp!849282 () Bool)

(declare-fun inv!42027 (Conc!9696) Bool)

(assert (=> b!2683347 (= e!1692068 (and (inv!42027 (c!432119 acc!348)) tp!849282))))

(assert (=> b!2683348 (= e!1692087 (and e!1692072 tp!849283))))

(declare-fun b!2683349 () Bool)

(declare-fun tp!849289 () Bool)

(assert (=> b!2683349 (= e!1692076 (and (inv!42022 (c!432118 input!780)) tp!849289))))

(assert (=> b!2683350 (= e!1692097 (and e!1692065 tp!849296))))

(declare-fun b!2683351 () Bool)

(declare-fun tp!849300 () Bool)

(assert (=> b!2683351 (= e!1692095 (and (inv!42022 (c!432118 treated!26)) tp!849300))))

(declare-fun b!2683352 () Bool)

(declare-fun res!1127721 () Bool)

(assert (=> b!2683352 (=> (not res!1127721) (not e!1692079))))

(declare-fun isEmpty!17692 (List!31100) Bool)

(assert (=> b!2683352 (= res!1127721 (not (isEmpty!17692 rules!1381)))))

(assert (= (and start!261288 res!1127723) b!2683352))

(assert (= (and b!2683352 res!1127721) b!2683341))

(assert (= (and b!2683341 res!1127726) b!2683332))

(assert (= (and b!2683332 res!1127722) b!2683345))

(assert (= (and b!2683345 res!1127724) b!2683322))

(assert (= (and b!2683322 res!1127719) b!2683325))

(assert (= (and b!2683325 res!1127720) b!2683342))

(assert (= (and b!2683342 res!1127729) b!2683338))

(assert (= (and b!2683338 res!1127728) b!2683327))

(assert (= (and b!2683327 res!1127727) b!2683316))

(assert (= (and b!2683316 c!432115) b!2683321))

(assert (= (and b!2683316 (not c!432115)) b!2683314))

(assert (= (and b!2683321 res!1127717) b!2683346))

(assert (= (and b!2683321 c!432116) b!2683329))

(assert (= (and b!2683321 (not c!432116)) b!2683336))

(assert (= (and b!2683316 res!1127725) b!2683323))

(assert (= (and b!2683316 (not res!1127718)) b!2683330))

(assert (= (and b!2683330 (not res!1127730)) b!2683320))

(assert (= start!261288 b!2683326))

(assert (= (and b!2683315 condMapEmpty!16001) mapIsEmpty!16002))

(assert (= (and b!2683315 (not condMapEmpty!16001)) mapNonEmpty!16001))

(assert (= b!2683324 b!2683315))

(assert (= b!2683335 b!2683324))

(assert (= b!2683343 b!2683335))

(assert (= (and b!2683344 ((_ is LongMap!3498) (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))) b!2683343))

(assert (= b!2683348 b!2683344))

(assert (= (and b!2683339 ((_ is HashMap!3404) (cache!3547 cacheUp!486))) b!2683348))

(assert (= start!261288 b!2683339))

(assert (= start!261288 b!2683347))

(assert (= start!261288 b!2683349))

(assert (= start!261288 b!2683351))

(assert (= b!2683317 b!2683319))

(assert (= b!2683333 b!2683317))

(assert (= (and start!261288 ((_ is Cons!31000) rules!1381)) b!2683333))

(assert (= (and b!2683318 condMapEmpty!16002) mapIsEmpty!16001))

(assert (= (and b!2683318 (not condMapEmpty!16002)) mapNonEmpty!16002))

(assert (= b!2683340 b!2683318))

(assert (= b!2683334 b!2683340))

(assert (= b!2683331 b!2683334))

(assert (= (and b!2683337 ((_ is LongMap!3499) (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))) b!2683331))

(assert (= b!2683350 b!2683337))

(assert (= (and b!2683328 ((_ is HashMap!3405) (cache!3548 cacheDown!499))) b!2683350))

(assert (= start!261288 b!2683328))

(declare-fun m!3052389 () Bool)

(assert (=> b!2683320 m!3052389))

(declare-fun m!3052391 () Bool)

(assert (=> b!2683326 m!3052391))

(declare-fun m!3052393 () Bool)

(assert (=> b!2683325 m!3052393))

(declare-fun m!3052395 () Bool)

(assert (=> b!2683325 m!3052395))

(declare-fun m!3052397 () Bool)

(assert (=> b!2683325 m!3052397))

(declare-fun m!3052399 () Bool)

(assert (=> b!2683341 m!3052399))

(declare-fun m!3052401 () Bool)

(assert (=> mapNonEmpty!16001 m!3052401))

(declare-fun m!3052403 () Bool)

(assert (=> b!2683324 m!3052403))

(declare-fun m!3052405 () Bool)

(assert (=> b!2683324 m!3052405))

(declare-fun m!3052407 () Bool)

(assert (=> b!2683342 m!3052407))

(assert (=> b!2683342 m!3052407))

(declare-fun m!3052409 () Bool)

(assert (=> b!2683342 m!3052409))

(declare-fun m!3052411 () Bool)

(assert (=> b!2683316 m!3052411))

(declare-fun m!3052413 () Bool)

(assert (=> b!2683316 m!3052413))

(declare-fun m!3052415 () Bool)

(assert (=> b!2683316 m!3052415))

(declare-fun m!3052417 () Bool)

(assert (=> start!261288 m!3052417))

(declare-fun m!3052419 () Bool)

(assert (=> start!261288 m!3052419))

(declare-fun m!3052421 () Bool)

(assert (=> start!261288 m!3052421))

(declare-fun m!3052423 () Bool)

(assert (=> start!261288 m!3052423))

(declare-fun m!3052425 () Bool)

(assert (=> start!261288 m!3052425))

(declare-fun m!3052427 () Bool)

(assert (=> start!261288 m!3052427))

(declare-fun m!3052429 () Bool)

(assert (=> b!2683345 m!3052429))

(declare-fun m!3052431 () Bool)

(assert (=> b!2683349 m!3052431))

(declare-fun m!3052433 () Bool)

(assert (=> b!2683327 m!3052433))

(declare-fun m!3052435 () Bool)

(assert (=> b!2683327 m!3052435))

(declare-fun m!3052437 () Bool)

(assert (=> b!2683352 m!3052437))

(declare-fun m!3052439 () Bool)

(assert (=> b!2683346 m!3052439))

(declare-fun m!3052441 () Bool)

(assert (=> b!2683347 m!3052441))

(declare-fun m!3052443 () Bool)

(assert (=> b!2683329 m!3052443))

(declare-fun m!3052445 () Bool)

(assert (=> b!2683329 m!3052445))

(declare-fun m!3052447 () Bool)

(assert (=> b!2683351 m!3052447))

(declare-fun m!3052449 () Bool)

(assert (=> b!2683323 m!3052449))

(declare-fun m!3052451 () Bool)

(assert (=> b!2683323 m!3052451))

(declare-fun m!3052453 () Bool)

(assert (=> b!2683332 m!3052453))

(declare-fun m!3052455 () Bool)

(assert (=> b!2683338 m!3052455))

(declare-fun m!3052457 () Bool)

(assert (=> b!2683338 m!3052457))

(declare-fun m!3052459 () Bool)

(assert (=> b!2683338 m!3052459))

(declare-fun m!3052461 () Bool)

(assert (=> b!2683338 m!3052461))

(declare-fun m!3052463 () Bool)

(assert (=> b!2683338 m!3052463))

(assert (=> b!2683338 m!3052459))

(declare-fun m!3052465 () Bool)

(assert (=> b!2683321 m!3052465))

(declare-fun m!3052467 () Bool)

(assert (=> b!2683321 m!3052467))

(declare-fun m!3052469 () Bool)

(assert (=> b!2683321 m!3052469))

(declare-fun m!3052471 () Bool)

(assert (=> b!2683321 m!3052471))

(declare-fun m!3052473 () Bool)

(assert (=> b!2683321 m!3052473))

(declare-fun m!3052475 () Bool)

(assert (=> b!2683321 m!3052475))

(declare-fun m!3052477 () Bool)

(assert (=> b!2683321 m!3052477))

(assert (=> b!2683321 m!3052475))

(declare-fun m!3052479 () Bool)

(assert (=> b!2683321 m!3052479))

(declare-fun m!3052481 () Bool)

(assert (=> b!2683321 m!3052481))

(assert (=> b!2683321 m!3052467))

(declare-fun m!3052483 () Bool)

(assert (=> b!2683321 m!3052483))

(declare-fun m!3052485 () Bool)

(assert (=> b!2683321 m!3052485))

(assert (=> b!2683321 m!3052473))

(declare-fun m!3052487 () Bool)

(assert (=> b!2683321 m!3052487))

(declare-fun m!3052489 () Bool)

(assert (=> b!2683321 m!3052489))

(declare-fun m!3052491 () Bool)

(assert (=> b!2683321 m!3052491))

(declare-fun m!3052493 () Bool)

(assert (=> b!2683321 m!3052493))

(declare-fun m!3052495 () Bool)

(assert (=> b!2683321 m!3052495))

(assert (=> b!2683321 m!3052469))

(declare-fun m!3052497 () Bool)

(assert (=> b!2683321 m!3052497))

(declare-fun m!3052499 () Bool)

(assert (=> b!2683321 m!3052499))

(declare-fun m!3052501 () Bool)

(assert (=> b!2683321 m!3052501))

(declare-fun m!3052503 () Bool)

(assert (=> b!2683321 m!3052503))

(declare-fun m!3052505 () Bool)

(assert (=> b!2683321 m!3052505))

(declare-fun m!3052507 () Bool)

(assert (=> b!2683321 m!3052507))

(declare-fun m!3052509 () Bool)

(assert (=> b!2683321 m!3052509))

(declare-fun m!3052511 () Bool)

(assert (=> b!2683321 m!3052511))

(declare-fun m!3052513 () Bool)

(assert (=> b!2683317 m!3052513))

(declare-fun m!3052515 () Bool)

(assert (=> b!2683317 m!3052515))

(declare-fun m!3052517 () Bool)

(assert (=> b!2683330 m!3052517))

(declare-fun m!3052519 () Bool)

(assert (=> b!2683330 m!3052519))

(declare-fun m!3052521 () Bool)

(assert (=> b!2683330 m!3052521))

(assert (=> b!2683330 m!3052521))

(declare-fun m!3052523 () Bool)

(assert (=> b!2683330 m!3052523))

(declare-fun m!3052525 () Bool)

(assert (=> b!2683322 m!3052525))

(declare-fun m!3052527 () Bool)

(assert (=> b!2683322 m!3052527))

(assert (=> b!2683322 m!3052527))

(declare-fun m!3052529 () Bool)

(assert (=> b!2683322 m!3052529))

(declare-fun m!3052531 () Bool)

(assert (=> b!2683322 m!3052531))

(declare-fun m!3052533 () Bool)

(assert (=> mapNonEmpty!16002 m!3052533))

(declare-fun m!3052535 () Bool)

(assert (=> b!2683340 m!3052535))

(declare-fun m!3052537 () Bool)

(assert (=> b!2683340 m!3052537))

(check-sat b_and!198713 (not b!2683317) (not b_next!76619) (not b!2683352) (not b!2683323) (not b!2683340) b_and!198711 (not mapNonEmpty!16001) (not b!2683315) (not b!2683322) (not b!2683345) (not b_next!76615) (not b!2683332) (not start!261288) (not b!2683318) (not b_next!76611) (not b_next!76617) (not b!2683330) (not b!2683349) (not b!2683324) (not b!2683351) (not b!2683321) (not b_next!76613) b_and!198709 (not b!2683342) (not b!2683341) (not b!2683346) b_and!198707 b_and!198715 (not b!2683347) (not b_next!76609) (not b!2683320) (not b!2683316) b_and!198717 (not b!2683329) (not b!2683338) (not b!2683325) (not b!2683327) (not b!2683333) (not b!2683326) (not mapNonEmpty!16002))
(check-sat b_and!198713 (not b_next!76615) (not b_next!76611) (not b_next!76619) (not b_next!76617) (not b_next!76609) b_and!198717 b_and!198711 (not b_next!76613) b_and!198709 b_and!198707 b_and!198715)
(get-model)

(declare-fun d!766873 () Bool)

(assert (=> d!766873 (= (inv!42018 (tag!5237 (h!36420 rules!1381))) (= (mod (str.len (value!152504 (tag!5237 (h!36420 rules!1381)))) 2) 0))))

(assert (=> b!2683317 d!766873))

(declare-fun d!766875 () Bool)

(declare-fun res!1127737 () Bool)

(declare-fun e!1692101 () Bool)

(assert (=> d!766875 (=> (not res!1127737) (not e!1692101))))

(declare-fun semiInverseModEq!1957 (Int Int) Bool)

(assert (=> d!766875 (= res!1127737 (semiInverseModEq!1957 (toChars!6546 (transformation!4733 (h!36420 rules!1381))) (toValue!6687 (transformation!4733 (h!36420 rules!1381)))))))

(assert (=> d!766875 (= (inv!42021 (transformation!4733 (h!36420 rules!1381))) e!1692101)))

(declare-fun b!2683355 () Bool)

(declare-fun equivClasses!1858 (Int Int) Bool)

(assert (=> b!2683355 (= e!1692101 (equivClasses!1858 (toChars!6546 (transformation!4733 (h!36420 rules!1381))) (toValue!6687 (transformation!4733 (h!36420 rules!1381)))))))

(assert (= (and d!766875 res!1127737) b!2683355))

(declare-fun m!3052539 () Bool)

(assert (=> d!766875 m!3052539))

(declare-fun m!3052541 () Bool)

(assert (=> b!2683355 m!3052541))

(assert (=> b!2683317 d!766875))

(declare-fun d!766877 () Bool)

(declare-fun list!11696 (Conc!9696) List!31096)

(assert (=> d!766877 (= (list!11695 (_1!17827 lt!945919)) (list!11696 (c!432119 (_1!17827 lt!945919))))))

(declare-fun bs!480231 () Bool)

(assert (= bs!480231 d!766877))

(declare-fun m!3052543 () Bool)

(assert (=> bs!480231 m!3052543))

(assert (=> b!2683338 d!766877))

(declare-fun d!766879 () Bool)

(assert (=> d!766879 (= (list!11695 (++!7580 acc!348 (_1!17827 lt!945920))) (list!11696 (c!432119 (++!7580 acc!348 (_1!17827 lt!945920)))))))

(declare-fun bs!480232 () Bool)

(assert (= bs!480232 d!766879))

(declare-fun m!3052545 () Bool)

(assert (=> bs!480232 m!3052545))

(assert (=> b!2683338 d!766879))

(declare-fun b!2683370 () Bool)

(declare-fun e!1692113 () Bool)

(declare-fun e!1692111 () Bool)

(assert (=> b!2683370 (= e!1692113 e!1692111)))

(declare-fun res!1127744 () Bool)

(declare-fun lt!945942 () tuple2!30502)

(declare-fun size!23941 (BalanceConc!19004) Int)

(assert (=> b!2683370 (= res!1127744 (< (size!23941 (_2!17827 lt!945942)) (size!23941 input!780)))))

(assert (=> b!2683370 (=> (not res!1127744) (not e!1692111))))

(declare-fun b!2683371 () Bool)

(declare-fun isEmpty!17693 (BalanceConc!19006) Bool)

(assert (=> b!2683371 (= e!1692111 (not (isEmpty!17693 (_1!17827 lt!945942))))))

(declare-fun b!2683372 () Bool)

(declare-fun e!1692110 () tuple2!30502)

(assert (=> b!2683372 (= e!1692110 (tuple2!30503 (BalanceConc!19007 Empty!9696) input!780))))

(declare-fun b!2683373 () Bool)

(declare-fun e!1692112 () Bool)

(assert (=> b!2683373 (= e!1692112 (= (list!11694 (_2!17827 lt!945942)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 input!780)))))))

(declare-fun d!766881 () Bool)

(assert (=> d!766881 e!1692112))

(declare-fun res!1127746 () Bool)

(assert (=> d!766881 (=> (not res!1127746) (not e!1692112))))

(assert (=> d!766881 (= res!1127746 e!1692113)))

(declare-fun c!432125 () Bool)

(declare-fun size!23942 (BalanceConc!19006) Int)

(assert (=> d!766881 (= c!432125 (> (size!23942 (_1!17827 lt!945942)) 0))))

(assert (=> d!766881 (= lt!945942 e!1692110)))

(declare-fun c!432124 () Bool)

(declare-fun lt!945941 () Option!6122)

(assert (=> d!766881 (= c!432124 ((_ is Some!6121) lt!945941))))

(assert (=> d!766881 (= lt!945941 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780))))

(assert (=> d!766881 (= (lexRec!592 thiss!12257 rules!1381 input!780) lt!945942)))

(declare-fun b!2683374 () Bool)

(declare-fun lt!945943 () tuple2!30502)

(assert (=> b!2683374 (= e!1692110 (tuple2!30503 (prepend!1063 (_1!17827 lt!945943) (_1!17832 (v!32796 lt!945941))) (_2!17827 lt!945943)))))

(assert (=> b!2683374 (= lt!945943 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945941))))))

(declare-fun b!2683375 () Bool)

(declare-fun res!1127745 () Bool)

(assert (=> b!2683375 (=> (not res!1127745) (not e!1692112))))

(assert (=> b!2683375 (= res!1127745 (= (list!11695 (_1!17827 lt!945942)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 input!780)))))))

(declare-fun b!2683376 () Bool)

(assert (=> b!2683376 (= e!1692113 (= (list!11694 (_2!17827 lt!945942)) (list!11694 input!780)))))

(assert (= (and d!766881 c!432124) b!2683374))

(assert (= (and d!766881 (not c!432124)) b!2683372))

(assert (= (and d!766881 c!432125) b!2683370))

(assert (= (and d!766881 (not c!432125)) b!2683376))

(assert (= (and b!2683370 res!1127744) b!2683371))

(assert (= (and d!766881 res!1127746) b!2683375))

(assert (= (and b!2683375 res!1127745) b!2683373))

(declare-fun m!3052547 () Bool)

(assert (=> d!766881 m!3052547))

(assert (=> d!766881 m!3052415))

(declare-fun m!3052549 () Bool)

(assert (=> b!2683376 m!3052549))

(assert (=> b!2683376 m!3052527))

(declare-fun m!3052551 () Bool)

(assert (=> b!2683371 m!3052551))

(assert (=> b!2683373 m!3052549))

(assert (=> b!2683373 m!3052527))

(assert (=> b!2683373 m!3052527))

(declare-fun m!3052553 () Bool)

(assert (=> b!2683373 m!3052553))

(declare-fun m!3052555 () Bool)

(assert (=> b!2683375 m!3052555))

(assert (=> b!2683375 m!3052527))

(assert (=> b!2683375 m!3052527))

(assert (=> b!2683375 m!3052553))

(declare-fun m!3052557 () Bool)

(assert (=> b!2683374 m!3052557))

(declare-fun m!3052559 () Bool)

(assert (=> b!2683374 m!3052559))

(declare-fun m!3052561 () Bool)

(assert (=> b!2683370 m!3052561))

(declare-fun m!3052563 () Bool)

(assert (=> b!2683370 m!3052563))

(assert (=> b!2683338 d!766881))

(declare-fun b!2683385 () Bool)

(declare-fun res!1127758 () Bool)

(declare-fun e!1692116 () Bool)

(assert (=> b!2683385 (=> (not res!1127758) (not e!1692116))))

(declare-fun isBalanced!2933 (Conc!9696) Bool)

(declare-fun ++!7581 (Conc!9696 Conc!9696) Conc!9696)

(assert (=> b!2683385 (= res!1127758 (isBalanced!2933 (++!7581 (c!432119 acc!348) (c!432119 (_1!17827 lt!945920)))))))

(declare-fun b!2683387 () Bool)

(declare-fun res!1127756 () Bool)

(assert (=> b!2683387 (=> (not res!1127756) (not e!1692116))))

(declare-fun height!1415 (Conc!9696) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2683387 (= res!1127756 (>= (height!1415 (++!7581 (c!432119 acc!348) (c!432119 (_1!17827 lt!945920)))) (max!0 (height!1415 (c!432119 acc!348)) (height!1415 (c!432119 (_1!17827 lt!945920))))))))

(declare-fun d!766883 () Bool)

(assert (=> d!766883 e!1692116))

(declare-fun res!1127757 () Bool)

(assert (=> d!766883 (=> (not res!1127757) (not e!1692116))))

(declare-fun appendAssocInst!655 (Conc!9696 Conc!9696) Bool)

(assert (=> d!766883 (= res!1127757 (appendAssocInst!655 (c!432119 acc!348) (c!432119 (_1!17827 lt!945920))))))

(declare-fun lt!945946 () BalanceConc!19006)

(assert (=> d!766883 (= lt!945946 (BalanceConc!19007 (++!7581 (c!432119 acc!348) (c!432119 (_1!17827 lt!945920)))))))

(assert (=> d!766883 (= (++!7580 acc!348 (_1!17827 lt!945920)) lt!945946)))

(declare-fun b!2683388 () Bool)

(assert (=> b!2683388 (= e!1692116 (= (list!11695 lt!945946) (++!7578 (list!11695 acc!348) (list!11695 (_1!17827 lt!945920)))))))

(declare-fun b!2683386 () Bool)

(declare-fun res!1127755 () Bool)

(assert (=> b!2683386 (=> (not res!1127755) (not e!1692116))))

(assert (=> b!2683386 (= res!1127755 (<= (height!1415 (++!7581 (c!432119 acc!348) (c!432119 (_1!17827 lt!945920)))) (+ (max!0 (height!1415 (c!432119 acc!348)) (height!1415 (c!432119 (_1!17827 lt!945920)))) 1)))))

(assert (= (and d!766883 res!1127757) b!2683385))

(assert (= (and b!2683385 res!1127758) b!2683386))

(assert (= (and b!2683386 res!1127755) b!2683387))

(assert (= (and b!2683387 res!1127756) b!2683388))

(declare-fun m!3052565 () Bool)

(assert (=> b!2683387 m!3052565))

(declare-fun m!3052567 () Bool)

(assert (=> b!2683387 m!3052567))

(declare-fun m!3052569 () Bool)

(assert (=> b!2683387 m!3052569))

(declare-fun m!3052571 () Bool)

(assert (=> b!2683387 m!3052571))

(assert (=> b!2683387 m!3052565))

(assert (=> b!2683387 m!3052571))

(declare-fun m!3052573 () Bool)

(assert (=> b!2683387 m!3052573))

(assert (=> b!2683387 m!3052567))

(assert (=> b!2683385 m!3052571))

(assert (=> b!2683385 m!3052571))

(declare-fun m!3052575 () Bool)

(assert (=> b!2683385 m!3052575))

(assert (=> b!2683386 m!3052565))

(assert (=> b!2683386 m!3052567))

(assert (=> b!2683386 m!3052569))

(assert (=> b!2683386 m!3052571))

(assert (=> b!2683386 m!3052565))

(assert (=> b!2683386 m!3052571))

(assert (=> b!2683386 m!3052573))

(assert (=> b!2683386 m!3052567))

(declare-fun m!3052577 () Bool)

(assert (=> d!766883 m!3052577))

(assert (=> d!766883 m!3052571))

(declare-fun m!3052579 () Bool)

(assert (=> b!2683388 m!3052579))

(assert (=> b!2683388 m!3052393))

(declare-fun m!3052581 () Bool)

(assert (=> b!2683388 m!3052581))

(assert (=> b!2683388 m!3052393))

(assert (=> b!2683388 m!3052581))

(declare-fun m!3052583 () Bool)

(assert (=> b!2683388 m!3052583))

(assert (=> b!2683338 d!766883))

(declare-fun b!2683389 () Bool)

(declare-fun e!1692120 () Bool)

(declare-fun e!1692118 () Bool)

(assert (=> b!2683389 (= e!1692120 e!1692118)))

(declare-fun res!1127759 () Bool)

(declare-fun lt!945948 () tuple2!30502)

(assert (=> b!2683389 (= res!1127759 (< (size!23941 (_2!17827 lt!945948)) (size!23941 totalInput!354)))))

(assert (=> b!2683389 (=> (not res!1127759) (not e!1692118))))

(declare-fun b!2683390 () Bool)

(assert (=> b!2683390 (= e!1692118 (not (isEmpty!17693 (_1!17827 lt!945948))))))

(declare-fun b!2683391 () Bool)

(declare-fun e!1692117 () tuple2!30502)

(assert (=> b!2683391 (= e!1692117 (tuple2!30503 (BalanceConc!19007 Empty!9696) totalInput!354))))

(declare-fun e!1692119 () Bool)

(declare-fun b!2683392 () Bool)

(assert (=> b!2683392 (= e!1692119 (= (list!11694 (_2!17827 lt!945948)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 totalInput!354)))))))

(declare-fun d!766885 () Bool)

(assert (=> d!766885 e!1692119))

(declare-fun res!1127761 () Bool)

(assert (=> d!766885 (=> (not res!1127761) (not e!1692119))))

(assert (=> d!766885 (= res!1127761 e!1692120)))

(declare-fun c!432130 () Bool)

(assert (=> d!766885 (= c!432130 (> (size!23942 (_1!17827 lt!945948)) 0))))

(assert (=> d!766885 (= lt!945948 e!1692117)))

(declare-fun c!432129 () Bool)

(declare-fun lt!945947 () Option!6122)

(assert (=> d!766885 (= c!432129 ((_ is Some!6121) lt!945947))))

(assert (=> d!766885 (= lt!945947 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!766885 (= (lexRec!592 thiss!12257 rules!1381 totalInput!354) lt!945948)))

(declare-fun b!2683393 () Bool)

(declare-fun lt!945949 () tuple2!30502)

(assert (=> b!2683393 (= e!1692117 (tuple2!30503 (prepend!1063 (_1!17827 lt!945949) (_1!17832 (v!32796 lt!945947))) (_2!17827 lt!945949)))))

(assert (=> b!2683393 (= lt!945949 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945947))))))

(declare-fun b!2683394 () Bool)

(declare-fun res!1127760 () Bool)

(assert (=> b!2683394 (=> (not res!1127760) (not e!1692119))))

(assert (=> b!2683394 (= res!1127760 (= (list!11695 (_1!17827 lt!945948)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 totalInput!354)))))))

(declare-fun b!2683395 () Bool)

(assert (=> b!2683395 (= e!1692120 (= (list!11694 (_2!17827 lt!945948)) (list!11694 totalInput!354)))))

(assert (= (and d!766885 c!432129) b!2683393))

(assert (= (and d!766885 (not c!432129)) b!2683391))

(assert (= (and d!766885 c!432130) b!2683389))

(assert (= (and d!766885 (not c!432130)) b!2683395))

(assert (= (and b!2683389 res!1127759) b!2683390))

(assert (= (and d!766885 res!1127761) b!2683394))

(assert (= (and b!2683394 res!1127760) b!2683392))

(declare-fun m!3052585 () Bool)

(assert (=> d!766885 m!3052585))

(declare-fun m!3052587 () Bool)

(assert (=> d!766885 m!3052587))

(declare-fun m!3052589 () Bool)

(assert (=> b!2683395 m!3052589))

(assert (=> b!2683395 m!3052525))

(declare-fun m!3052591 () Bool)

(assert (=> b!2683390 m!3052591))

(assert (=> b!2683392 m!3052589))

(assert (=> b!2683392 m!3052525))

(assert (=> b!2683392 m!3052525))

(declare-fun m!3052593 () Bool)

(assert (=> b!2683392 m!3052593))

(declare-fun m!3052595 () Bool)

(assert (=> b!2683394 m!3052595))

(assert (=> b!2683394 m!3052525))

(assert (=> b!2683394 m!3052525))

(assert (=> b!2683394 m!3052593))

(declare-fun m!3052597 () Bool)

(assert (=> b!2683393 m!3052597))

(declare-fun m!3052599 () Bool)

(assert (=> b!2683393 m!3052599))

(declare-fun m!3052601 () Bool)

(assert (=> b!2683389 m!3052601))

(declare-fun m!3052603 () Bool)

(assert (=> b!2683389 m!3052603))

(assert (=> b!2683338 d!766885))

(declare-fun d!766887 () Bool)

(declare-fun e!1692125 () Bool)

(assert (=> d!766887 e!1692125))

(declare-fun res!1127767 () Bool)

(assert (=> d!766887 (=> (not res!1127767) (not e!1692125))))

(declare-fun lt!945966 () tuple3!4214)

(assert (=> d!766887 (= res!1127767 (= (_1!17833 lt!945966) (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780)))))

(declare-fun e!1692126 () tuple3!4214)

(assert (=> d!766887 (= lt!945966 e!1692126)))

(declare-fun c!432133 () Bool)

(assert (=> d!766887 (= c!432133 (and ((_ is Cons!31000) rules!1381) ((_ is Nil!31000) (t!224613 rules!1381))))))

(declare-fun lt!945971 () Unit!45115)

(declare-fun lt!945967 () Unit!45115)

(assert (=> d!766887 (= lt!945971 lt!945967)))

(declare-fun lt!945972 () List!31095)

(declare-fun lt!945973 () List!31095)

(declare-fun isPrefix!2464 (List!31095 List!31095) Bool)

(assert (=> d!766887 (isPrefix!2464 lt!945972 lt!945973)))

(declare-fun lemmaIsPrefixRefl!1590 (List!31095 List!31095) Unit!45115)

(assert (=> d!766887 (= lt!945967 (lemmaIsPrefixRefl!1590 lt!945972 lt!945973))))

(assert (=> d!766887 (= lt!945973 (list!11694 input!780))))

(assert (=> d!766887 (= lt!945972 (list!11694 input!780))))

(declare-fun rulesValidInductive!1646 (LexerInterface!4329 List!31100) Bool)

(assert (=> d!766887 (rulesValidInductive!1646 thiss!12257 rules!1381)))

(assert (=> d!766887 (= (maxPrefixZipperSequenceMem!6 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!945966)))

(declare-fun b!2683404 () Bool)

(assert (=> b!2683404 (= e!1692125 (valid!2706 (_3!2577 lt!945966)))))

(declare-fun b!2683405 () Bool)

(declare-fun res!1127766 () Bool)

(assert (=> b!2683405 (=> (not res!1127766) (not e!1692125))))

(assert (=> b!2683405 (= res!1127766 (valid!2707 (_2!17833 lt!945966)))))

(declare-fun b!2683406 () Bool)

(declare-fun lt!945969 () tuple3!4214)

(declare-fun lt!945968 () tuple3!4214)

(assert (=> b!2683406 (= e!1692126 (tuple3!4215 (ite (and ((_ is None!6121) (_1!17833 lt!945969)) ((_ is None!6121) (_1!17833 lt!945968))) None!6121 (ite ((_ is None!6121) (_1!17833 lt!945968)) (_1!17833 lt!945969) (ite ((_ is None!6121) (_1!17833 lt!945969)) (_1!17833 lt!945968) (ite (>= (size!23937 (_1!17832 (v!32796 (_1!17833 lt!945969)))) (size!23937 (_1!17832 (v!32796 (_1!17833 lt!945968))))) (_1!17833 lt!945969) (_1!17833 lt!945968))))) (_2!17833 lt!945968) (_3!2577 lt!945968)))))

(declare-fun call!172782 () tuple3!4214)

(assert (=> b!2683406 (= lt!945969 call!172782)))

(assert (=> b!2683406 (= lt!945968 (maxPrefixZipperSequenceMem!6 thiss!12257 (t!224613 rules!1381) input!780 (_2!17833 lt!945969) (_3!2577 lt!945969)))))

(declare-fun b!2683407 () Bool)

(declare-fun lt!945970 () tuple3!4214)

(assert (=> b!2683407 (= e!1692126 (tuple3!4215 (_1!17833 lt!945970) (_2!17833 lt!945970) (_3!2577 lt!945970)))))

(assert (=> b!2683407 (= lt!945970 call!172782)))

(declare-fun bm!172777 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!3 (LexerInterface!4329 Rule!9266 BalanceConc!19004 CacheUp!2114 CacheDown!2226) tuple3!4214)

(assert (=> bm!172777 (= call!172782 (maxPrefixOneRuleZipperSequenceMem!3 thiss!12257 (h!36420 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(assert (= (and d!766887 c!432133) b!2683407))

(assert (= (and d!766887 (not c!432133)) b!2683406))

(assert (= (or b!2683407 b!2683406) bm!172777))

(assert (= (and d!766887 res!1127767) b!2683405))

(assert (= (and b!2683405 res!1127766) b!2683404))

(declare-fun m!3052605 () Bool)

(assert (=> d!766887 m!3052605))

(assert (=> d!766887 m!3052415))

(declare-fun m!3052607 () Bool)

(assert (=> d!766887 m!3052607))

(declare-fun m!3052609 () Bool)

(assert (=> d!766887 m!3052609))

(assert (=> d!766887 m!3052527))

(declare-fun m!3052611 () Bool)

(assert (=> b!2683405 m!3052611))

(declare-fun m!3052613 () Bool)

(assert (=> bm!172777 m!3052613))

(declare-fun m!3052615 () Bool)

(assert (=> b!2683406 m!3052615))

(declare-fun m!3052617 () Bool)

(assert (=> b!2683404 m!3052617))

(assert (=> b!2683316 d!766887))

(declare-fun e!1692138 () Bool)

(declare-fun b!2683422 () Bool)

(declare-fun lt!946028 () tuple2!30502)

(assert (=> b!2683422 (= e!1692138 (= (list!11694 (_2!17827 lt!946028)) (list!11694 (_2!17827 (lexRec!592 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2683423 () Bool)

(declare-fun e!1692135 () tuple2!30502)

(assert (=> b!2683423 (= e!1692135 (tuple2!30503 acc!348 input!780))))

(declare-fun b!2683424 () Bool)

(declare-fun lt!946034 () Option!6122)

(declare-fun lt!946041 () tuple2!30502)

(assert (=> b!2683424 (= lt!946041 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946034))))))

(declare-fun e!1692136 () tuple2!30502)

(assert (=> b!2683424 (= e!1692136 (tuple2!30503 (prepend!1063 (_1!17827 lt!946041) (_1!17832 (v!32796 lt!946034))) (_2!17827 lt!946041)))))

(declare-fun d!766889 () Bool)

(assert (=> d!766889 e!1692138))

(declare-fun res!1127770 () Bool)

(assert (=> d!766889 (=> (not res!1127770) (not e!1692138))))

(assert (=> d!766889 (= res!1127770 (= (list!11695 (_1!17827 lt!946028)) (list!11695 (_1!17827 (lexRec!592 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!766889 (= lt!946028 e!1692135)))

(declare-fun c!432142 () Bool)

(declare-fun lt!946024 () Option!6122)

(assert (=> d!766889 (= c!432142 ((_ is Some!6121) lt!946024))))

(assert (=> d!766889 (= lt!946024 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780))))

(assert (=> d!766889 (= (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!946028)))

(declare-fun b!2683425 () Bool)

(assert (=> b!2683425 (= e!1692135 (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 (++!7579 treated!26 (charsOf!2982 (_1!17832 (v!32796 lt!946024)))) (_2!17832 (v!32796 lt!946024)) (append!758 acc!348 (_1!17832 (v!32796 lt!946024)))))))

(declare-fun lt!946044 () tuple2!30502)

(assert (=> b!2683425 (= lt!946044 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946024))))))

(declare-fun lt!946025 () List!31095)

(assert (=> b!2683425 (= lt!946025 (list!11694 treated!26))))

(declare-fun lt!946029 () List!31095)

(assert (=> b!2683425 (= lt!946029 (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946024)))))))

(declare-fun lt!946026 () List!31095)

(assert (=> b!2683425 (= lt!946026 (list!11694 (_2!17832 (v!32796 lt!946024))))))

(declare-fun lt!946042 () Unit!45115)

(assert (=> b!2683425 (= lt!946042 (lemmaConcatAssociativity!1536 lt!946025 lt!946029 lt!946026))))

(assert (=> b!2683425 (= (++!7577 (++!7577 lt!946025 lt!946029) lt!946026) (++!7577 lt!946025 (++!7577 lt!946029 lt!946026)))))

(declare-fun lt!946027 () Unit!45115)

(assert (=> b!2683425 (= lt!946027 lt!946042)))

(declare-fun lt!946033 () Option!6122)

(assert (=> b!2683425 (= lt!946033 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780))))

(declare-fun c!432141 () Bool)

(assert (=> b!2683425 (= c!432141 ((_ is Some!6121) lt!946033))))

(declare-fun e!1692137 () tuple2!30502)

(assert (=> b!2683425 (= (lexRec!592 thiss!12257 rules!1381 input!780) e!1692137)))

(declare-fun lt!946045 () Unit!45115)

(declare-fun Unit!45117 () Unit!45115)

(assert (=> b!2683425 (= lt!946045 Unit!45117)))

(declare-fun lt!946048 () List!31096)

(assert (=> b!2683425 (= lt!946048 (list!11695 acc!348))))

(declare-fun lt!946037 () List!31096)

(assert (=> b!2683425 (= lt!946037 (Cons!30996 (_1!17832 (v!32796 lt!946024)) Nil!30996))))

(declare-fun lt!946030 () List!31096)

(assert (=> b!2683425 (= lt!946030 (list!11695 (_1!17827 lt!946044)))))

(declare-fun lt!946039 () Unit!45115)

(assert (=> b!2683425 (= lt!946039 (lemmaConcatAssociativity!1537 lt!946048 lt!946037 lt!946030))))

(assert (=> b!2683425 (= (++!7578 (++!7578 lt!946048 lt!946037) lt!946030) (++!7578 lt!946048 (++!7578 lt!946037 lt!946030)))))

(declare-fun lt!946043 () Unit!45115)

(assert (=> b!2683425 (= lt!946043 lt!946039)))

(declare-fun lt!946035 () List!31095)

(assert (=> b!2683425 (= lt!946035 (++!7577 (list!11694 treated!26) (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946024))))))))

(declare-fun lt!946036 () List!31095)

(assert (=> b!2683425 (= lt!946036 (list!11694 (_2!17832 (v!32796 lt!946024))))))

(declare-fun lt!946032 () List!31096)

(assert (=> b!2683425 (= lt!946032 (list!11695 (append!758 acc!348 (_1!17832 (v!32796 lt!946024)))))))

(declare-fun lt!946038 () Unit!45115)

(assert (=> b!2683425 (= lt!946038 (lemmaLexThenLexPrefix!399 thiss!12257 rules!1381 lt!946035 lt!946036 lt!946032 (list!11695 (_1!17827 lt!946044)) (list!11694 (_2!17827 lt!946044))))))

(assert (=> b!2683425 (= (lexList!1186 thiss!12257 rules!1381 lt!946035) (tuple2!30513 lt!946032 Nil!30995))))

(declare-fun lt!946046 () Unit!45115)

(assert (=> b!2683425 (= lt!946046 lt!946038)))

(declare-fun lt!946047 () BalanceConc!19004)

(assert (=> b!2683425 (= lt!946047 (++!7579 treated!26 (charsOf!2982 (_1!17832 (v!32796 lt!946024)))))))

(assert (=> b!2683425 (= lt!946034 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!946047))))

(declare-fun c!432140 () Bool)

(assert (=> b!2683425 (= c!432140 ((_ is Some!6121) lt!946034))))

(assert (=> b!2683425 (= (lexRec!592 thiss!12257 rules!1381 (++!7579 treated!26 (charsOf!2982 (_1!17832 (v!32796 lt!946024))))) e!1692136)))

(declare-fun lt!946040 () Unit!45115)

(declare-fun Unit!45118 () Unit!45115)

(assert (=> b!2683425 (= lt!946040 Unit!45118)))

(declare-fun b!2683426 () Bool)

(assert (=> b!2683426 (= e!1692136 (tuple2!30503 (BalanceConc!19007 Empty!9696) lt!946047))))

(declare-fun b!2683427 () Bool)

(assert (=> b!2683427 (= e!1692137 (tuple2!30503 (BalanceConc!19007 Empty!9696) input!780))))

(declare-fun b!2683428 () Bool)

(declare-fun lt!946031 () tuple2!30502)

(assert (=> b!2683428 (= lt!946031 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946033))))))

(assert (=> b!2683428 (= e!1692137 (tuple2!30503 (prepend!1063 (_1!17827 lt!946031) (_1!17832 (v!32796 lt!946033))) (_2!17827 lt!946031)))))

(assert (= (and d!766889 c!432142) b!2683425))

(assert (= (and d!766889 (not c!432142)) b!2683423))

(assert (= (and b!2683425 c!432141) b!2683428))

(assert (= (and b!2683425 (not c!432141)) b!2683427))

(assert (= (and b!2683425 c!432140) b!2683424))

(assert (= (and b!2683425 (not c!432140)) b!2683426))

(assert (= (and d!766889 res!1127770) b!2683422))

(declare-fun m!3052619 () Bool)

(assert (=> b!2683428 m!3052619))

(declare-fun m!3052621 () Bool)

(assert (=> b!2683428 m!3052621))

(declare-fun m!3052623 () Bool)

(assert (=> d!766889 m!3052623))

(assert (=> d!766889 m!3052455))

(declare-fun m!3052625 () Bool)

(assert (=> d!766889 m!3052625))

(assert (=> d!766889 m!3052415))

(declare-fun m!3052627 () Bool)

(assert (=> b!2683424 m!3052627))

(declare-fun m!3052629 () Bool)

(assert (=> b!2683424 m!3052629))

(declare-fun m!3052631 () Bool)

(assert (=> b!2683425 m!3052631))

(declare-fun m!3052633 () Bool)

(assert (=> b!2683425 m!3052633))

(declare-fun m!3052635 () Bool)

(assert (=> b!2683425 m!3052635))

(declare-fun m!3052637 () Bool)

(assert (=> b!2683425 m!3052637))

(declare-fun m!3052639 () Bool)

(assert (=> b!2683425 m!3052639))

(assert (=> b!2683425 m!3052635))

(declare-fun m!3052641 () Bool)

(assert (=> b!2683425 m!3052641))

(declare-fun m!3052643 () Bool)

(assert (=> b!2683425 m!3052643))

(declare-fun m!3052645 () Bool)

(assert (=> b!2683425 m!3052645))

(declare-fun m!3052647 () Bool)

(assert (=> b!2683425 m!3052647))

(assert (=> b!2683425 m!3052637))

(assert (=> b!2683425 m!3052631))

(declare-fun m!3052649 () Bool)

(assert (=> b!2683425 m!3052649))

(assert (=> b!2683425 m!3052393))

(declare-fun m!3052651 () Bool)

(assert (=> b!2683425 m!3052651))

(assert (=> b!2683425 m!3052463))

(declare-fun m!3052653 () Bool)

(assert (=> b!2683425 m!3052653))

(declare-fun m!3052655 () Bool)

(assert (=> b!2683425 m!3052655))

(assert (=> b!2683425 m!3052653))

(assert (=> b!2683425 m!3052643))

(declare-fun m!3052657 () Bool)

(assert (=> b!2683425 m!3052657))

(assert (=> b!2683425 m!3052651))

(declare-fun m!3052659 () Bool)

(assert (=> b!2683425 m!3052659))

(assert (=> b!2683425 m!3052531))

(assert (=> b!2683425 m!3052643))

(declare-fun m!3052661 () Bool)

(assert (=> b!2683425 m!3052661))

(declare-fun m!3052663 () Bool)

(assert (=> b!2683425 m!3052663))

(assert (=> b!2683425 m!3052531))

(assert (=> b!2683425 m!3052657))

(declare-fun m!3052665 () Bool)

(assert (=> b!2683425 m!3052665))

(declare-fun m!3052667 () Bool)

(assert (=> b!2683425 m!3052667))

(declare-fun m!3052669 () Bool)

(assert (=> b!2683425 m!3052669))

(assert (=> b!2683425 m!3052661))

(declare-fun m!3052671 () Bool)

(assert (=> b!2683425 m!3052671))

(assert (=> b!2683425 m!3052663))

(declare-fun m!3052673 () Bool)

(assert (=> b!2683425 m!3052673))

(declare-fun m!3052675 () Bool)

(assert (=> b!2683425 m!3052675))

(assert (=> b!2683425 m!3052661))

(assert (=> b!2683425 m!3052651))

(declare-fun m!3052677 () Bool)

(assert (=> b!2683425 m!3052677))

(declare-fun m!3052679 () Bool)

(assert (=> b!2683425 m!3052679))

(assert (=> b!2683425 m!3052415))

(assert (=> b!2683425 m!3052667))

(declare-fun m!3052681 () Bool)

(assert (=> b!2683422 m!3052681))

(assert (=> b!2683422 m!3052455))

(declare-fun m!3052683 () Bool)

(assert (=> b!2683422 m!3052683))

(assert (=> b!2683316 d!766889))

(declare-fun b!2683445 () Bool)

(declare-fun e!1692154 () Bool)

(declare-fun e!1692152 () Bool)

(assert (=> b!2683445 (= e!1692154 e!1692152)))

(declare-fun res!1127783 () Bool)

(assert (=> b!2683445 (=> res!1127783 e!1692152)))

(declare-fun lt!946064 () Option!6122)

(declare-fun isDefined!4855 (Option!6122) Bool)

(assert (=> b!2683445 (= res!1127783 (not (isDefined!4855 lt!946064)))))

(declare-fun e!1692151 () Bool)

(declare-fun b!2683446 () Bool)

(declare-fun get!9709 (Option!6122) tuple2!30510)

(declare-datatypes ((tuple2!30514 0))(
  ( (tuple2!30515 (_1!17835 Token!8932) (_2!17835 List!31095)) )
))
(declare-datatypes ((Option!6123 0))(
  ( (None!6122) (Some!6122 (v!32801 tuple2!30514)) )
))
(declare-fun get!9710 (Option!6123) tuple2!30514)

(declare-fun maxPrefix!2347 (LexerInterface!4329 List!31100 List!31095) Option!6123)

(assert (=> b!2683446 (= e!1692151 (= (list!11694 (_2!17832 (get!9709 lt!946064))) (_2!17835 (get!9710 (maxPrefix!2347 thiss!12257 rules!1381 (list!11694 input!780))))))))

(declare-fun b!2683447 () Bool)

(declare-fun e!1692156 () Bool)

(declare-fun maxPrefixZipper!451 (LexerInterface!4329 List!31100 List!31095) Option!6123)

(assert (=> b!2683447 (= e!1692156 (= (list!11694 (_2!17832 (get!9709 lt!946064))) (_2!17835 (get!9710 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 input!780))))))))

(declare-fun call!172785 () Option!6122)

(declare-fun bm!172780 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!460 (LexerInterface!4329 Rule!9266 BalanceConc!19004) Option!6122)

(assert (=> bm!172780 (= call!172785 (maxPrefixOneRuleZipperSequence!460 thiss!12257 (h!36420 rules!1381) input!780))))

(declare-fun d!766891 () Bool)

(assert (=> d!766891 e!1692154))

(declare-fun res!1127787 () Bool)

(assert (=> d!766891 (=> (not res!1127787) (not e!1692154))))

(declare-fun isDefined!4856 (Option!6123) Bool)

(assert (=> d!766891 (= res!1127787 (= (isDefined!4855 lt!946064) (isDefined!4856 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 input!780)))))))

(declare-fun e!1692155 () Option!6122)

(assert (=> d!766891 (= lt!946064 e!1692155)))

(declare-fun c!432145 () Bool)

(assert (=> d!766891 (= c!432145 (and ((_ is Cons!31000) rules!1381) ((_ is Nil!31000) (t!224613 rules!1381))))))

(declare-fun lt!946063 () Unit!45115)

(declare-fun lt!946068 () Unit!45115)

(assert (=> d!766891 (= lt!946063 lt!946068)))

(declare-fun lt!946069 () List!31095)

(declare-fun lt!946066 () List!31095)

(assert (=> d!766891 (isPrefix!2464 lt!946069 lt!946066)))

(assert (=> d!766891 (= lt!946068 (lemmaIsPrefixRefl!1590 lt!946069 lt!946066))))

(assert (=> d!766891 (= lt!946066 (list!11694 input!780))))

(assert (=> d!766891 (= lt!946069 (list!11694 input!780))))

(assert (=> d!766891 (rulesValidInductive!1646 thiss!12257 rules!1381)))

(assert (=> d!766891 (= (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780) lt!946064)))

(declare-fun b!2683448 () Bool)

(declare-fun res!1127784 () Bool)

(assert (=> b!2683448 (=> (not res!1127784) (not e!1692154))))

(declare-fun e!1692153 () Bool)

(assert (=> b!2683448 (= res!1127784 e!1692153)))

(declare-fun res!1127788 () Bool)

(assert (=> b!2683448 (=> res!1127788 e!1692153)))

(assert (=> b!2683448 (= res!1127788 (not (isDefined!4855 lt!946064)))))

(declare-fun b!2683449 () Bool)

(declare-fun lt!946065 () Option!6122)

(declare-fun lt!946067 () Option!6122)

(assert (=> b!2683449 (= e!1692155 (ite (and ((_ is None!6121) lt!946065) ((_ is None!6121) lt!946067)) None!6121 (ite ((_ is None!6121) lt!946067) lt!946065 (ite ((_ is None!6121) lt!946065) lt!946067 (ite (>= (size!23937 (_1!17832 (v!32796 lt!946065))) (size!23937 (_1!17832 (v!32796 lt!946067)))) lt!946065 lt!946067)))))))

(assert (=> b!2683449 (= lt!946065 call!172785)))

(assert (=> b!2683449 (= lt!946067 (maxPrefixZipperSequence!994 thiss!12257 (t!224613 rules!1381) input!780))))

(declare-fun b!2683450 () Bool)

(assert (=> b!2683450 (= e!1692152 e!1692151)))

(declare-fun res!1127785 () Bool)

(assert (=> b!2683450 (=> (not res!1127785) (not e!1692151))))

(assert (=> b!2683450 (= res!1127785 (= (_1!17832 (get!9709 lt!946064)) (_1!17835 (get!9710 (maxPrefix!2347 thiss!12257 rules!1381 (list!11694 input!780))))))))

(declare-fun b!2683451 () Bool)

(assert (=> b!2683451 (= e!1692155 call!172785)))

(declare-fun b!2683452 () Bool)

(assert (=> b!2683452 (= e!1692153 e!1692156)))

(declare-fun res!1127786 () Bool)

(assert (=> b!2683452 (=> (not res!1127786) (not e!1692156))))

(assert (=> b!2683452 (= res!1127786 (= (_1!17832 (get!9709 lt!946064)) (_1!17835 (get!9710 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 input!780))))))))

(assert (= (and d!766891 c!432145) b!2683451))

(assert (= (and d!766891 (not c!432145)) b!2683449))

(assert (= (or b!2683451 b!2683449) bm!172780))

(assert (= (and d!766891 res!1127787) b!2683448))

(assert (= (and b!2683448 (not res!1127788)) b!2683452))

(assert (= (and b!2683452 res!1127786) b!2683447))

(assert (= (and b!2683448 res!1127784) b!2683445))

(assert (= (and b!2683445 (not res!1127783)) b!2683450))

(assert (= (and b!2683450 res!1127785) b!2683446))

(assert (=> b!2683447 m!3052527))

(declare-fun m!3052685 () Bool)

(assert (=> b!2683447 m!3052685))

(assert (=> b!2683447 m!3052527))

(declare-fun m!3052687 () Bool)

(assert (=> b!2683447 m!3052687))

(declare-fun m!3052689 () Bool)

(assert (=> b!2683447 m!3052689))

(assert (=> b!2683447 m!3052687))

(declare-fun m!3052691 () Bool)

(assert (=> b!2683447 m!3052691))

(assert (=> b!2683452 m!3052689))

(assert (=> b!2683452 m!3052527))

(assert (=> b!2683452 m!3052527))

(assert (=> b!2683452 m!3052687))

(assert (=> b!2683452 m!3052687))

(assert (=> b!2683452 m!3052691))

(assert (=> b!2683446 m!3052527))

(assert (=> b!2683446 m!3052685))

(declare-fun m!3052693 () Bool)

(assert (=> b!2683446 m!3052693))

(declare-fun m!3052695 () Bool)

(assert (=> b!2683446 m!3052695))

(assert (=> b!2683446 m!3052527))

(assert (=> b!2683446 m!3052693))

(assert (=> b!2683446 m!3052689))

(assert (=> d!766891 m!3052527))

(declare-fun m!3052697 () Bool)

(assert (=> d!766891 m!3052697))

(assert (=> d!766891 m!3052527))

(assert (=> d!766891 m!3052687))

(assert (=> d!766891 m!3052687))

(declare-fun m!3052699 () Bool)

(assert (=> d!766891 m!3052699))

(declare-fun m!3052701 () Bool)

(assert (=> d!766891 m!3052701))

(assert (=> d!766891 m!3052609))

(declare-fun m!3052703 () Bool)

(assert (=> d!766891 m!3052703))

(assert (=> b!2683448 m!3052697))

(assert (=> b!2683445 m!3052697))

(assert (=> b!2683450 m!3052689))

(assert (=> b!2683450 m!3052527))

(assert (=> b!2683450 m!3052527))

(assert (=> b!2683450 m!3052693))

(assert (=> b!2683450 m!3052693))

(assert (=> b!2683450 m!3052695))

(declare-fun m!3052705 () Bool)

(assert (=> b!2683449 m!3052705))

(declare-fun m!3052707 () Bool)

(assert (=> bm!172780 m!3052707))

(assert (=> b!2683316 d!766891))

(declare-fun d!766893 () Bool)

(assert (=> d!766893 (= (isEmpty!17691 (list!11694 (_2!17827 lt!945929))) ((_ is Nil!30995) (list!11694 (_2!17827 lt!945929))))))

(assert (=> b!2683342 d!766893))

(declare-fun d!766895 () Bool)

(declare-fun list!11697 (Conc!9695) List!31095)

(assert (=> d!766895 (= (list!11694 (_2!17827 lt!945929)) (list!11697 (c!432118 (_2!17827 lt!945929))))))

(declare-fun bs!480233 () Bool)

(assert (= bs!480233 d!766895))

(declare-fun m!3052709 () Bool)

(assert (=> bs!480233 m!3052709))

(assert (=> b!2683342 d!766895))

(declare-fun d!766897 () Bool)

(assert (=> d!766897 (= (array_inv!3979 (_keys!3798 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) (bvsge (size!23938 (_keys!3798 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2683324 d!766897))

(declare-fun d!766899 () Bool)

(assert (=> d!766899 (= (array_inv!3980 (_values!3779 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) (bvsge (size!23939 (_values!3779 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2683324 d!766899))

(declare-fun d!766901 () Bool)

(declare-fun res!1127791 () Bool)

(declare-fun e!1692159 () Bool)

(assert (=> d!766901 (=> (not res!1127791) (not e!1692159))))

(declare-fun rulesValid!1763 (LexerInterface!4329 List!31100) Bool)

(assert (=> d!766901 (= res!1127791 (rulesValid!1763 thiss!12257 rules!1381))))

(assert (=> d!766901 (= (rulesInvariant!3821 thiss!12257 rules!1381) e!1692159)))

(declare-fun b!2683455 () Bool)

(declare-datatypes ((List!31101 0))(
  ( (Nil!31001) (Cons!31001 (h!36421 String!34675) (t!224622 List!31101)) )
))
(declare-fun noDuplicateTag!1759 (LexerInterface!4329 List!31100 List!31101) Bool)

(assert (=> b!2683455 (= e!1692159 (noDuplicateTag!1759 thiss!12257 rules!1381 Nil!31001))))

(assert (= (and d!766901 res!1127791) b!2683455))

(declare-fun m!3052711 () Bool)

(assert (=> d!766901 m!3052711))

(declare-fun m!3052713 () Bool)

(assert (=> b!2683455 m!3052713))

(assert (=> b!2683341 d!766901))

(declare-fun b!2683466 () Bool)

(declare-fun e!1692167 () Bool)

(declare-fun lt!946072 () tuple2!30502)

(assert (=> b!2683466 (= e!1692167 (= (_2!17827 lt!946072) input!780))))

(declare-fun b!2683467 () Bool)

(declare-fun e!1692168 () Bool)

(assert (=> b!2683467 (= e!1692168 (not (isEmpty!17693 (_1!17827 lt!946072))))))

(declare-fun e!1692166 () Bool)

(declare-fun b!2683468 () Bool)

(assert (=> b!2683468 (= e!1692166 (= (list!11694 (_2!17827 lt!946072)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 input!780)))))))

(declare-fun b!2683469 () Bool)

(declare-fun res!1127799 () Bool)

(assert (=> b!2683469 (=> (not res!1127799) (not e!1692166))))

(assert (=> b!2683469 (= res!1127799 (= (list!11695 (_1!17827 lt!946072)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 input!780)))))))

(declare-fun d!766903 () Bool)

(assert (=> d!766903 e!1692166))

(declare-fun res!1127798 () Bool)

(assert (=> d!766903 (=> (not res!1127798) (not e!1692166))))

(assert (=> d!766903 (= res!1127798 e!1692167)))

(declare-fun c!432148 () Bool)

(assert (=> d!766903 (= c!432148 (> (size!23942 (_1!17827 lt!946072)) 0))))

(assert (=> d!766903 (= lt!946072 (lexTailRecV2!862 thiss!12257 rules!1381 input!780 (BalanceConc!19005 Empty!9695) input!780 (BalanceConc!19007 Empty!9696)))))

(assert (=> d!766903 (= (lex!1950 thiss!12257 rules!1381 input!780) lt!946072)))

(declare-fun b!2683470 () Bool)

(assert (=> b!2683470 (= e!1692167 e!1692168)))

(declare-fun res!1127800 () Bool)

(assert (=> b!2683470 (= res!1127800 (< (size!23941 (_2!17827 lt!946072)) (size!23941 input!780)))))

(assert (=> b!2683470 (=> (not res!1127800) (not e!1692168))))

(assert (= (and d!766903 c!432148) b!2683470))

(assert (= (and d!766903 (not c!432148)) b!2683466))

(assert (= (and b!2683470 res!1127800) b!2683467))

(assert (= (and d!766903 res!1127798) b!2683469))

(assert (= (and b!2683469 res!1127799) b!2683468))

(declare-fun m!3052715 () Bool)

(assert (=> b!2683468 m!3052715))

(assert (=> b!2683468 m!3052527))

(assert (=> b!2683468 m!3052527))

(assert (=> b!2683468 m!3052553))

(declare-fun m!3052717 () Bool)

(assert (=> b!2683469 m!3052717))

(assert (=> b!2683469 m!3052527))

(assert (=> b!2683469 m!3052527))

(assert (=> b!2683469 m!3052553))

(declare-fun m!3052719 () Bool)

(assert (=> b!2683470 m!3052719))

(assert (=> b!2683470 m!3052563))

(declare-fun m!3052721 () Bool)

(assert (=> d!766903 m!3052721))

(assert (=> d!766903 m!3052451))

(declare-fun m!3052723 () Bool)

(assert (=> b!2683467 m!3052723))

(assert (=> b!2683323 d!766903))

(declare-fun e!1692177 () tuple2!30502)

(declare-fun lt!946174 () Option!6122)

(declare-fun lt!946165 () BalanceConc!19004)

(declare-fun b!2683485 () Bool)

(assert (=> b!2683485 (= e!1692177 (lexTailRecV2!862 thiss!12257 rules!1381 input!780 lt!946165 (_2!17832 (v!32796 lt!946174)) (append!758 (BalanceConc!19007 Empty!9696) (_1!17832 (v!32796 lt!946174)))))))

(declare-fun lt!946153 () tuple2!30502)

(assert (=> b!2683485 (= lt!946153 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946174))))))

(declare-fun lt!946142 () List!31095)

(assert (=> b!2683485 (= lt!946142 (list!11694 (BalanceConc!19005 Empty!9695)))))

(declare-fun lt!946172 () List!31095)

(assert (=> b!2683485 (= lt!946172 (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946174)))))))

(declare-fun lt!946152 () List!31095)

(assert (=> b!2683485 (= lt!946152 (list!11694 (_2!17832 (v!32796 lt!946174))))))

(declare-fun lt!946163 () Unit!45115)

(assert (=> b!2683485 (= lt!946163 (lemmaConcatAssociativity!1536 lt!946142 lt!946172 lt!946152))))

(assert (=> b!2683485 (= (++!7577 (++!7577 lt!946142 lt!946172) lt!946152) (++!7577 lt!946142 (++!7577 lt!946172 lt!946152)))))

(declare-fun lt!946166 () Unit!45115)

(assert (=> b!2683485 (= lt!946166 lt!946163)))

(declare-fun lt!946171 () Option!6122)

(assert (=> b!2683485 (= lt!946171 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 input!780))))

(declare-fun c!432155 () Bool)

(assert (=> b!2683485 (= c!432155 ((_ is Some!6121) lt!946171))))

(declare-fun e!1692180 () tuple2!30502)

(assert (=> b!2683485 (= (lexRec!592 thiss!12257 rules!1381 input!780) e!1692180)))

(declare-fun lt!946147 () Unit!45115)

(declare-fun Unit!45119 () Unit!45115)

(assert (=> b!2683485 (= lt!946147 Unit!45119)))

(declare-fun lt!946162 () List!31096)

(assert (=> b!2683485 (= lt!946162 (list!11695 (BalanceConc!19007 Empty!9696)))))

(declare-fun lt!946145 () List!31096)

(assert (=> b!2683485 (= lt!946145 (Cons!30996 (_1!17832 (v!32796 lt!946174)) Nil!30996))))

(declare-fun lt!946148 () List!31096)

(assert (=> b!2683485 (= lt!946148 (list!11695 (_1!17827 lt!946153)))))

(declare-fun lt!946154 () Unit!45115)

(assert (=> b!2683485 (= lt!946154 (lemmaConcatAssociativity!1537 lt!946162 lt!946145 lt!946148))))

(assert (=> b!2683485 (= (++!7578 (++!7578 lt!946162 lt!946145) lt!946148) (++!7578 lt!946162 (++!7578 lt!946145 lt!946148)))))

(declare-fun lt!946146 () Unit!45115)

(assert (=> b!2683485 (= lt!946146 lt!946154)))

(declare-fun lt!946144 () List!31095)

(assert (=> b!2683485 (= lt!946144 (++!7577 (list!11694 (BalanceConc!19005 Empty!9695)) (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946174))))))))

(declare-fun lt!946173 () List!31095)

(assert (=> b!2683485 (= lt!946173 (list!11694 (_2!17832 (v!32796 lt!946174))))))

(declare-fun lt!946169 () List!31096)

(assert (=> b!2683485 (= lt!946169 (list!11695 (append!758 (BalanceConc!19007 Empty!9696) (_1!17832 (v!32796 lt!946174)))))))

(declare-fun lt!946151 () Unit!45115)

(assert (=> b!2683485 (= lt!946151 (lemmaLexThenLexPrefix!399 thiss!12257 rules!1381 lt!946144 lt!946173 lt!946169 (list!11695 (_1!17827 lt!946153)) (list!11694 (_2!17827 lt!946153))))))

(assert (=> b!2683485 (= (lexList!1186 thiss!12257 rules!1381 lt!946144) (tuple2!30513 lt!946169 Nil!30995))))

(declare-fun lt!946150 () Unit!45115)

(assert (=> b!2683485 (= lt!946150 lt!946151)))

(declare-fun lt!946156 () BalanceConc!19004)

(assert (=> b!2683485 (= lt!946156 (++!7579 (BalanceConc!19005 Empty!9695) (charsOf!2982 (_1!17832 (v!32796 lt!946174)))))))

(declare-fun lt!946143 () Option!6122)

(assert (=> b!2683485 (= lt!946143 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!946156))))

(declare-fun c!432157 () Bool)

(assert (=> b!2683485 (= c!432157 ((_ is Some!6121) lt!946143))))

(declare-fun e!1692178 () tuple2!30502)

(assert (=> b!2683485 (= (lexRec!592 thiss!12257 rules!1381 (++!7579 (BalanceConc!19005 Empty!9695) (charsOf!2982 (_1!17832 (v!32796 lt!946174))))) e!1692178)))

(declare-fun lt!946167 () Unit!45115)

(declare-fun Unit!45120 () Unit!45115)

(assert (=> b!2683485 (= lt!946167 Unit!45120)))

(assert (=> b!2683485 (= lt!946165 (++!7579 (BalanceConc!19005 Empty!9695) (charsOf!2982 (_1!17832 (v!32796 lt!946174)))))))

(declare-fun lt!946170 () List!31095)

(assert (=> b!2683485 (= lt!946170 (list!11694 lt!946165))))

(declare-fun lt!946160 () List!31095)

(assert (=> b!2683485 (= lt!946160 (list!11694 (_2!17832 (v!32796 lt!946174))))))

(declare-fun lt!946168 () Unit!45115)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!510 (List!31095 List!31095) Unit!45115)

(assert (=> b!2683485 (= lt!946168 (lemmaConcatTwoListThenFSndIsSuffix!510 lt!946170 lt!946160))))

(declare-fun isSuffix!825 (List!31095 List!31095) Bool)

(assert (=> b!2683485 (isSuffix!825 lt!946160 (++!7577 lt!946170 lt!946160))))

(declare-fun lt!946158 () Unit!45115)

(assert (=> b!2683485 (= lt!946158 lt!946168)))

(declare-fun b!2683486 () Bool)

(declare-fun lt!946149 () tuple2!30502)

(assert (=> b!2683486 (= lt!946149 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946143))))))

(assert (=> b!2683486 (= e!1692178 (tuple2!30503 (prepend!1063 (_1!17827 lt!946149) (_1!17832 (v!32796 lt!946143))) (_2!17827 lt!946149)))))

(declare-fun b!2683487 () Bool)

(assert (=> b!2683487 (= e!1692177 (tuple2!30503 (BalanceConc!19007 Empty!9696) input!780))))

(declare-fun e!1692179 () Bool)

(declare-fun b!2683488 () Bool)

(declare-fun lt!946155 () tuple2!30502)

(assert (=> b!2683488 (= e!1692179 (= (list!11694 (_2!17827 lt!946155)) (list!11694 (_2!17827 (lexRec!592 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2683489 () Bool)

(assert (=> b!2683489 (= e!1692180 (tuple2!30503 (BalanceConc!19007 Empty!9696) input!780))))

(declare-fun b!2683491 () Bool)

(assert (=> b!2683491 (= e!1692178 (tuple2!30503 (BalanceConc!19007 Empty!9696) lt!946156))))

(declare-fun b!2683490 () Bool)

(declare-fun lt!946159 () tuple2!30502)

(assert (=> b!2683490 (= lt!946159 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946171))))))

(assert (=> b!2683490 (= e!1692180 (tuple2!30503 (prepend!1063 (_1!17827 lt!946159) (_1!17832 (v!32796 lt!946171))) (_2!17827 lt!946159)))))

(declare-fun d!766905 () Bool)

(assert (=> d!766905 e!1692179))

(declare-fun res!1127803 () Bool)

(assert (=> d!766905 (=> (not res!1127803) (not e!1692179))))

(assert (=> d!766905 (= res!1127803 (= (list!11695 (_1!17827 lt!946155)) (list!11695 (_1!17827 (lexRec!592 thiss!12257 rules!1381 input!780)))))))

(assert (=> d!766905 (= lt!946155 e!1692177)))

(declare-fun c!432156 () Bool)

(assert (=> d!766905 (= c!432156 ((_ is Some!6121) lt!946174))))

(declare-fun maxPrefixZipperSequenceV2!450 (LexerInterface!4329 List!31100 BalanceConc!19004 BalanceConc!19004) Option!6122)

(assert (=> d!766905 (= lt!946174 (maxPrefixZipperSequenceV2!450 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!946161 () Unit!45115)

(declare-fun lt!946157 () Unit!45115)

(assert (=> d!766905 (= lt!946161 lt!946157)))

(declare-fun lt!946164 () List!31095)

(declare-fun lt!946141 () List!31095)

(assert (=> d!766905 (isSuffix!825 lt!946164 (++!7577 lt!946141 lt!946164))))

(assert (=> d!766905 (= lt!946157 (lemmaConcatTwoListThenFSndIsSuffix!510 lt!946141 lt!946164))))

(assert (=> d!766905 (= lt!946164 (list!11694 input!780))))

(assert (=> d!766905 (= lt!946141 (list!11694 (BalanceConc!19005 Empty!9695)))))

(assert (=> d!766905 (= (lexTailRecV2!862 thiss!12257 rules!1381 input!780 (BalanceConc!19005 Empty!9695) input!780 (BalanceConc!19007 Empty!9696)) lt!946155)))

(assert (= (and d!766905 c!432156) b!2683485))

(assert (= (and d!766905 (not c!432156)) b!2683487))

(assert (= (and b!2683485 c!432155) b!2683490))

(assert (= (and b!2683485 (not c!432155)) b!2683489))

(assert (= (and b!2683485 c!432157) b!2683486))

(assert (= (and b!2683485 (not c!432157)) b!2683491))

(assert (= (and d!766905 res!1127803) b!2683488))

(declare-fun m!3052725 () Bool)

(assert (=> b!2683485 m!3052725))

(declare-fun m!3052727 () Bool)

(assert (=> b!2683485 m!3052727))

(declare-fun m!3052729 () Bool)

(assert (=> b!2683485 m!3052729))

(declare-fun m!3052731 () Bool)

(assert (=> b!2683485 m!3052731))

(declare-fun m!3052733 () Bool)

(assert (=> b!2683485 m!3052733))

(declare-fun m!3052735 () Bool)

(assert (=> b!2683485 m!3052735))

(declare-fun m!3052737 () Bool)

(assert (=> b!2683485 m!3052737))

(declare-fun m!3052739 () Bool)

(assert (=> b!2683485 m!3052739))

(declare-fun m!3052741 () Bool)

(assert (=> b!2683485 m!3052741))

(declare-fun m!3052743 () Bool)

(assert (=> b!2683485 m!3052743))

(declare-fun m!3052745 () Bool)

(assert (=> b!2683485 m!3052745))

(declare-fun m!3052747 () Bool)

(assert (=> b!2683485 m!3052747))

(assert (=> b!2683485 m!3052741))

(assert (=> b!2683485 m!3052725))

(declare-fun m!3052749 () Bool)

(assert (=> b!2683485 m!3052749))

(declare-fun m!3052751 () Bool)

(assert (=> b!2683485 m!3052751))

(declare-fun m!3052753 () Bool)

(assert (=> b!2683485 m!3052753))

(declare-fun m!3052755 () Bool)

(assert (=> b!2683485 m!3052755))

(declare-fun m!3052757 () Bool)

(assert (=> b!2683485 m!3052757))

(declare-fun m!3052759 () Bool)

(assert (=> b!2683485 m!3052759))

(assert (=> b!2683485 m!3052747))

(assert (=> b!2683485 m!3052729))

(assert (=> b!2683485 m!3052747))

(assert (=> b!2683485 m!3052731))

(declare-fun m!3052761 () Bool)

(assert (=> b!2683485 m!3052761))

(declare-fun m!3052763 () Bool)

(assert (=> b!2683485 m!3052763))

(declare-fun m!3052765 () Bool)

(assert (=> b!2683485 m!3052765))

(assert (=> b!2683485 m!3052415))

(assert (=> b!2683485 m!3052761))

(declare-fun m!3052767 () Bool)

(assert (=> b!2683485 m!3052767))

(assert (=> b!2683485 m!3052735))

(declare-fun m!3052769 () Bool)

(assert (=> b!2683485 m!3052769))

(declare-fun m!3052771 () Bool)

(assert (=> b!2683485 m!3052771))

(declare-fun m!3052773 () Bool)

(assert (=> b!2683485 m!3052773))

(assert (=> b!2683485 m!3052757))

(assert (=> b!2683485 m!3052463))

(assert (=> b!2683485 m!3052767))

(declare-fun m!3052775 () Bool)

(assert (=> b!2683485 m!3052775))

(declare-fun m!3052777 () Bool)

(assert (=> b!2683485 m!3052777))

(declare-fun m!3052779 () Bool)

(assert (=> b!2683485 m!3052779))

(declare-fun m!3052781 () Bool)

(assert (=> b!2683485 m!3052781))

(assert (=> b!2683485 m!3052777))

(assert (=> b!2683485 m!3052777))

(declare-fun m!3052783 () Bool)

(assert (=> b!2683485 m!3052783))

(assert (=> b!2683485 m!3052781))

(assert (=> b!2683485 m!3052773))

(declare-fun m!3052785 () Bool)

(assert (=> b!2683485 m!3052785))

(declare-fun m!3052787 () Bool)

(assert (=> b!2683486 m!3052787))

(declare-fun m!3052789 () Bool)

(assert (=> b!2683486 m!3052789))

(declare-fun m!3052791 () Bool)

(assert (=> b!2683490 m!3052791))

(declare-fun m!3052793 () Bool)

(assert (=> b!2683490 m!3052793))

(declare-fun m!3052795 () Bool)

(assert (=> d!766905 m!3052795))

(declare-fun m!3052797 () Bool)

(assert (=> d!766905 m!3052797))

(declare-fun m!3052799 () Bool)

(assert (=> d!766905 m!3052799))

(declare-fun m!3052801 () Bool)

(assert (=> d!766905 m!3052801))

(assert (=> d!766905 m!3052527))

(assert (=> d!766905 m!3052463))

(assert (=> d!766905 m!3052729))

(declare-fun m!3052803 () Bool)

(assert (=> d!766905 m!3052803))

(assert (=> d!766905 m!3052801))

(declare-fun m!3052805 () Bool)

(assert (=> d!766905 m!3052805))

(declare-fun m!3052807 () Bool)

(assert (=> b!2683488 m!3052807))

(assert (=> b!2683488 m!3052463))

(declare-fun m!3052809 () Bool)

(assert (=> b!2683488 m!3052809))

(assert (=> b!2683323 d!766905))

(declare-fun b!2683500 () Bool)

(declare-fun e!1692186 () List!31095)

(assert (=> b!2683500 (= e!1692186 lt!945912)))

(declare-fun b!2683501 () Bool)

(assert (=> b!2683501 (= e!1692186 (Cons!30995 (h!36415 lt!945921) (++!7577 (t!224608 lt!945921) lt!945912)))))

(declare-fun d!766907 () Bool)

(declare-fun e!1692185 () Bool)

(assert (=> d!766907 e!1692185))

(declare-fun res!1127808 () Bool)

(assert (=> d!766907 (=> (not res!1127808) (not e!1692185))))

(declare-fun lt!946177 () List!31095)

(declare-fun content!4394 (List!31095) (InoxSet C!15928))

(assert (=> d!766907 (= res!1127808 (= (content!4394 lt!946177) ((_ map or) (content!4394 lt!945921) (content!4394 lt!945912))))))

(assert (=> d!766907 (= lt!946177 e!1692186)))

(declare-fun c!432160 () Bool)

(assert (=> d!766907 (= c!432160 ((_ is Nil!30995) lt!945921))))

(assert (=> d!766907 (= (++!7577 lt!945921 lt!945912) lt!946177)))

(declare-fun b!2683502 () Bool)

(declare-fun res!1127809 () Bool)

(assert (=> b!2683502 (=> (not res!1127809) (not e!1692185))))

(declare-fun size!23943 (List!31095) Int)

(assert (=> b!2683502 (= res!1127809 (= (size!23943 lt!946177) (+ (size!23943 lt!945921) (size!23943 lt!945912))))))

(declare-fun b!2683503 () Bool)

(assert (=> b!2683503 (= e!1692185 (or (not (= lt!945912 Nil!30995)) (= lt!946177 lt!945921)))))

(assert (= (and d!766907 c!432160) b!2683500))

(assert (= (and d!766907 (not c!432160)) b!2683501))

(assert (= (and d!766907 res!1127808) b!2683502))

(assert (= (and b!2683502 res!1127809) b!2683503))

(declare-fun m!3052811 () Bool)

(assert (=> b!2683501 m!3052811))

(declare-fun m!3052813 () Bool)

(assert (=> d!766907 m!3052813))

(declare-fun m!3052815 () Bool)

(assert (=> d!766907 m!3052815))

(declare-fun m!3052817 () Bool)

(assert (=> d!766907 m!3052817))

(declare-fun m!3052819 () Bool)

(assert (=> b!2683502 m!3052819))

(declare-fun m!3052821 () Bool)

(assert (=> b!2683502 m!3052821))

(declare-fun m!3052823 () Bool)

(assert (=> b!2683502 m!3052823))

(assert (=> b!2683321 d!766907))

(declare-fun b!2683504 () Bool)

(declare-fun e!1692190 () Bool)

(declare-fun e!1692188 () Bool)

(assert (=> b!2683504 (= e!1692190 e!1692188)))

(declare-fun res!1127810 () Bool)

(assert (=> b!2683504 (=> res!1127810 e!1692188)))

(declare-fun lt!946179 () Option!6122)

(assert (=> b!2683504 (= res!1127810 (not (isDefined!4855 lt!946179)))))

(declare-fun e!1692187 () Bool)

(declare-fun b!2683505 () Bool)

(assert (=> b!2683505 (= e!1692187 (= (list!11694 (_2!17832 (get!9709 lt!946179))) (_2!17835 (get!9710 (maxPrefix!2347 thiss!12257 rules!1381 (list!11694 lt!945932))))))))

(declare-fun e!1692192 () Bool)

(declare-fun b!2683506 () Bool)

(assert (=> b!2683506 (= e!1692192 (= (list!11694 (_2!17832 (get!9709 lt!946179))) (_2!17835 (get!9710 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 lt!945932))))))))

(declare-fun bm!172781 () Bool)

(declare-fun call!172786 () Option!6122)

(assert (=> bm!172781 (= call!172786 (maxPrefixOneRuleZipperSequence!460 thiss!12257 (h!36420 rules!1381) lt!945932))))

(declare-fun d!766909 () Bool)

(assert (=> d!766909 e!1692190))

(declare-fun res!1127814 () Bool)

(assert (=> d!766909 (=> (not res!1127814) (not e!1692190))))

(assert (=> d!766909 (= res!1127814 (= (isDefined!4855 lt!946179) (isDefined!4856 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 lt!945932)))))))

(declare-fun e!1692191 () Option!6122)

(assert (=> d!766909 (= lt!946179 e!1692191)))

(declare-fun c!432161 () Bool)

(assert (=> d!766909 (= c!432161 (and ((_ is Cons!31000) rules!1381) ((_ is Nil!31000) (t!224613 rules!1381))))))

(declare-fun lt!946178 () Unit!45115)

(declare-fun lt!946183 () Unit!45115)

(assert (=> d!766909 (= lt!946178 lt!946183)))

(declare-fun lt!946184 () List!31095)

(declare-fun lt!946181 () List!31095)

(assert (=> d!766909 (isPrefix!2464 lt!946184 lt!946181)))

(assert (=> d!766909 (= lt!946183 (lemmaIsPrefixRefl!1590 lt!946184 lt!946181))))

(assert (=> d!766909 (= lt!946181 (list!11694 lt!945932))))

(assert (=> d!766909 (= lt!946184 (list!11694 lt!945932))))

(assert (=> d!766909 (rulesValidInductive!1646 thiss!12257 rules!1381)))

(assert (=> d!766909 (= (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!945932) lt!946179)))

(declare-fun b!2683507 () Bool)

(declare-fun res!1127811 () Bool)

(assert (=> b!2683507 (=> (not res!1127811) (not e!1692190))))

(declare-fun e!1692189 () Bool)

(assert (=> b!2683507 (= res!1127811 e!1692189)))

(declare-fun res!1127815 () Bool)

(assert (=> b!2683507 (=> res!1127815 e!1692189)))

(assert (=> b!2683507 (= res!1127815 (not (isDefined!4855 lt!946179)))))

(declare-fun b!2683508 () Bool)

(declare-fun lt!946180 () Option!6122)

(declare-fun lt!946182 () Option!6122)

(assert (=> b!2683508 (= e!1692191 (ite (and ((_ is None!6121) lt!946180) ((_ is None!6121) lt!946182)) None!6121 (ite ((_ is None!6121) lt!946182) lt!946180 (ite ((_ is None!6121) lt!946180) lt!946182 (ite (>= (size!23937 (_1!17832 (v!32796 lt!946180))) (size!23937 (_1!17832 (v!32796 lt!946182)))) lt!946180 lt!946182)))))))

(assert (=> b!2683508 (= lt!946180 call!172786)))

(assert (=> b!2683508 (= lt!946182 (maxPrefixZipperSequence!994 thiss!12257 (t!224613 rules!1381) lt!945932))))

(declare-fun b!2683509 () Bool)

(assert (=> b!2683509 (= e!1692188 e!1692187)))

(declare-fun res!1127812 () Bool)

(assert (=> b!2683509 (=> (not res!1127812) (not e!1692187))))

(assert (=> b!2683509 (= res!1127812 (= (_1!17832 (get!9709 lt!946179)) (_1!17835 (get!9710 (maxPrefix!2347 thiss!12257 rules!1381 (list!11694 lt!945932))))))))

(declare-fun b!2683510 () Bool)

(assert (=> b!2683510 (= e!1692191 call!172786)))

(declare-fun b!2683511 () Bool)

(assert (=> b!2683511 (= e!1692189 e!1692192)))

(declare-fun res!1127813 () Bool)

(assert (=> b!2683511 (=> (not res!1127813) (not e!1692192))))

(assert (=> b!2683511 (= res!1127813 (= (_1!17832 (get!9709 lt!946179)) (_1!17835 (get!9710 (maxPrefixZipper!451 thiss!12257 rules!1381 (list!11694 lt!945932))))))))

(assert (= (and d!766909 c!432161) b!2683510))

(assert (= (and d!766909 (not c!432161)) b!2683508))

(assert (= (or b!2683510 b!2683508) bm!172781))

(assert (= (and d!766909 res!1127814) b!2683507))

(assert (= (and b!2683507 (not res!1127815)) b!2683511))

(assert (= (and b!2683511 res!1127813) b!2683506))

(assert (= (and b!2683507 res!1127811) b!2683504))

(assert (= (and b!2683504 (not res!1127810)) b!2683509))

(assert (= (and b!2683509 res!1127812) b!2683505))

(declare-fun m!3052825 () Bool)

(assert (=> b!2683506 m!3052825))

(declare-fun m!3052827 () Bool)

(assert (=> b!2683506 m!3052827))

(assert (=> b!2683506 m!3052825))

(declare-fun m!3052829 () Bool)

(assert (=> b!2683506 m!3052829))

(declare-fun m!3052831 () Bool)

(assert (=> b!2683506 m!3052831))

(assert (=> b!2683506 m!3052829))

(declare-fun m!3052833 () Bool)

(assert (=> b!2683506 m!3052833))

(assert (=> b!2683511 m!3052831))

(assert (=> b!2683511 m!3052825))

(assert (=> b!2683511 m!3052825))

(assert (=> b!2683511 m!3052829))

(assert (=> b!2683511 m!3052829))

(assert (=> b!2683511 m!3052833))

(assert (=> b!2683505 m!3052825))

(assert (=> b!2683505 m!3052827))

(declare-fun m!3052835 () Bool)

(assert (=> b!2683505 m!3052835))

(declare-fun m!3052837 () Bool)

(assert (=> b!2683505 m!3052837))

(assert (=> b!2683505 m!3052825))

(assert (=> b!2683505 m!3052835))

(assert (=> b!2683505 m!3052831))

(assert (=> d!766909 m!3052825))

(declare-fun m!3052839 () Bool)

(assert (=> d!766909 m!3052839))

(assert (=> d!766909 m!3052825))

(assert (=> d!766909 m!3052829))

(assert (=> d!766909 m!3052829))

(declare-fun m!3052841 () Bool)

(assert (=> d!766909 m!3052841))

(declare-fun m!3052843 () Bool)

(assert (=> d!766909 m!3052843))

(assert (=> d!766909 m!3052609))

(declare-fun m!3052845 () Bool)

(assert (=> d!766909 m!3052845))

(assert (=> b!2683507 m!3052839))

(assert (=> b!2683504 m!3052839))

(assert (=> b!2683509 m!3052831))

(assert (=> b!2683509 m!3052825))

(assert (=> b!2683509 m!3052825))

(assert (=> b!2683509 m!3052835))

(assert (=> b!2683509 m!3052835))

(assert (=> b!2683509 m!3052837))

(declare-fun m!3052847 () Bool)

(assert (=> b!2683508 m!3052847))

(declare-fun m!3052849 () Bool)

(assert (=> bm!172781 m!3052849))

(assert (=> b!2683321 d!766909))

(declare-fun b!2683522 () Bool)

(declare-fun e!1692199 () Bool)

(declare-fun e!1692201 () Bool)

(assert (=> b!2683522 (= e!1692199 e!1692201)))

(declare-fun res!1127818 () Bool)

(declare-fun lt!946193 () tuple2!30512)

(assert (=> b!2683522 (= res!1127818 (< (size!23943 (_2!17834 lt!946193)) (size!23943 lt!945926)))))

(assert (=> b!2683522 (=> (not res!1127818) (not e!1692201))))

(declare-fun d!766911 () Bool)

(assert (=> d!766911 e!1692199))

(declare-fun c!432167 () Bool)

(declare-fun size!23944 (List!31096) Int)

(assert (=> d!766911 (= c!432167 (> (size!23944 (_1!17834 lt!946193)) 0))))

(declare-fun e!1692200 () tuple2!30512)

(assert (=> d!766911 (= lt!946193 e!1692200)))

(declare-fun c!432166 () Bool)

(declare-fun lt!946192 () Option!6123)

(assert (=> d!766911 (= c!432166 ((_ is Some!6122) lt!946192))))

(assert (=> d!766911 (= lt!946192 (maxPrefix!2347 thiss!12257 rules!1381 lt!945926))))

(assert (=> d!766911 (= (lexList!1186 thiss!12257 rules!1381 lt!945926) lt!946193)))

(declare-fun b!2683523 () Bool)

(assert (=> b!2683523 (= e!1692200 (tuple2!30513 Nil!30996 lt!945926))))

(declare-fun b!2683524 () Bool)

(declare-fun isEmpty!17694 (List!31096) Bool)

(assert (=> b!2683524 (= e!1692201 (not (isEmpty!17694 (_1!17834 lt!946193))))))

(declare-fun b!2683525 () Bool)

(assert (=> b!2683525 (= e!1692199 (= (_2!17834 lt!946193) lt!945926))))

(declare-fun b!2683526 () Bool)

(declare-fun lt!946191 () tuple2!30512)

(assert (=> b!2683526 (= e!1692200 (tuple2!30513 (Cons!30996 (_1!17835 (v!32801 lt!946192)) (_1!17834 lt!946191)) (_2!17834 lt!946191)))))

(assert (=> b!2683526 (= lt!946191 (lexList!1186 thiss!12257 rules!1381 (_2!17835 (v!32801 lt!946192))))))

(assert (= (and d!766911 c!432166) b!2683526))

(assert (= (and d!766911 (not c!432166)) b!2683523))

(assert (= (and d!766911 c!432167) b!2683522))

(assert (= (and d!766911 (not c!432167)) b!2683525))

(assert (= (and b!2683522 res!1127818) b!2683524))

(declare-fun m!3052851 () Bool)

(assert (=> b!2683522 m!3052851))

(declare-fun m!3052853 () Bool)

(assert (=> b!2683522 m!3052853))

(declare-fun m!3052855 () Bool)

(assert (=> d!766911 m!3052855))

(declare-fun m!3052857 () Bool)

(assert (=> d!766911 m!3052857))

(declare-fun m!3052859 () Bool)

(assert (=> b!2683524 m!3052859))

(declare-fun m!3052861 () Bool)

(assert (=> b!2683526 m!3052861))

(assert (=> b!2683321 d!766911))

(declare-fun d!766913 () Bool)

(declare-fun e!1692204 () Bool)

(assert (=> d!766913 e!1692204))

(declare-fun res!1127827 () Bool)

(assert (=> d!766913 (=> (not res!1127827) (not e!1692204))))

(declare-fun appendAssocInst!656 (Conc!9695 Conc!9695) Bool)

(assert (=> d!766913 (= res!1127827 (appendAssocInst!656 (c!432118 treated!26) (c!432118 lt!945917)))))

(declare-fun lt!946196 () BalanceConc!19004)

(declare-fun ++!7582 (Conc!9695 Conc!9695) Conc!9695)

(assert (=> d!766913 (= lt!946196 (BalanceConc!19005 (++!7582 (c!432118 treated!26) (c!432118 lt!945917))))))

(assert (=> d!766913 (= (++!7579 treated!26 lt!945917) lt!946196)))

(declare-fun b!2683538 () Bool)

(assert (=> b!2683538 (= e!1692204 (= (list!11694 lt!946196) (++!7577 (list!11694 treated!26) (list!11694 lt!945917))))))

(declare-fun b!2683536 () Bool)

(declare-fun res!1127828 () Bool)

(assert (=> b!2683536 (=> (not res!1127828) (not e!1692204))))

(declare-fun height!1416 (Conc!9695) Int)

(assert (=> b!2683536 (= res!1127828 (<= (height!1416 (++!7582 (c!432118 treated!26) (c!432118 lt!945917))) (+ (max!0 (height!1416 (c!432118 treated!26)) (height!1416 (c!432118 lt!945917))) 1)))))

(declare-fun b!2683537 () Bool)

(declare-fun res!1127829 () Bool)

(assert (=> b!2683537 (=> (not res!1127829) (not e!1692204))))

(assert (=> b!2683537 (= res!1127829 (>= (height!1416 (++!7582 (c!432118 treated!26) (c!432118 lt!945917))) (max!0 (height!1416 (c!432118 treated!26)) (height!1416 (c!432118 lt!945917)))))))

(declare-fun b!2683535 () Bool)

(declare-fun res!1127830 () Bool)

(assert (=> b!2683535 (=> (not res!1127830) (not e!1692204))))

(declare-fun isBalanced!2934 (Conc!9695) Bool)

(assert (=> b!2683535 (= res!1127830 (isBalanced!2934 (++!7582 (c!432118 treated!26) (c!432118 lt!945917))))))

(assert (= (and d!766913 res!1127827) b!2683535))

(assert (= (and b!2683535 res!1127830) b!2683536))

(assert (= (and b!2683536 res!1127828) b!2683537))

(assert (= (and b!2683537 res!1127829) b!2683538))

(declare-fun m!3052863 () Bool)

(assert (=> b!2683538 m!3052863))

(assert (=> b!2683538 m!3052531))

(assert (=> b!2683538 m!3052495))

(assert (=> b!2683538 m!3052531))

(assert (=> b!2683538 m!3052495))

(declare-fun m!3052865 () Bool)

(assert (=> b!2683538 m!3052865))

(declare-fun m!3052867 () Bool)

(assert (=> b!2683535 m!3052867))

(assert (=> b!2683535 m!3052867))

(declare-fun m!3052869 () Bool)

(assert (=> b!2683535 m!3052869))

(declare-fun m!3052871 () Bool)

(assert (=> d!766913 m!3052871))

(assert (=> d!766913 m!3052867))

(declare-fun m!3052873 () Bool)

(assert (=> b!2683536 m!3052873))

(declare-fun m!3052875 () Bool)

(assert (=> b!2683536 m!3052875))

(declare-fun m!3052877 () Bool)

(assert (=> b!2683536 m!3052877))

(assert (=> b!2683536 m!3052873))

(assert (=> b!2683536 m!3052867))

(assert (=> b!2683536 m!3052867))

(declare-fun m!3052879 () Bool)

(assert (=> b!2683536 m!3052879))

(assert (=> b!2683536 m!3052875))

(assert (=> b!2683537 m!3052873))

(assert (=> b!2683537 m!3052875))

(assert (=> b!2683537 m!3052877))

(assert (=> b!2683537 m!3052873))

(assert (=> b!2683537 m!3052867))

(assert (=> b!2683537 m!3052867))

(assert (=> b!2683537 m!3052879))

(assert (=> b!2683537 m!3052875))

(assert (=> b!2683321 d!766913))

(declare-fun b!2683547 () Bool)

(declare-fun e!1692210 () List!31096)

(assert (=> b!2683547 (= e!1692210 lt!945934)))

(declare-fun b!2683549 () Bool)

(declare-fun res!1127836 () Bool)

(declare-fun e!1692209 () Bool)

(assert (=> b!2683549 (=> (not res!1127836) (not e!1692209))))

(declare-fun lt!946199 () List!31096)

(assert (=> b!2683549 (= res!1127836 (= (size!23944 lt!946199) (+ (size!23944 lt!945913) (size!23944 lt!945934))))))

(declare-fun d!766915 () Bool)

(assert (=> d!766915 e!1692209))

(declare-fun res!1127835 () Bool)

(assert (=> d!766915 (=> (not res!1127835) (not e!1692209))))

(declare-fun content!4395 (List!31096) (InoxSet Token!8932))

(assert (=> d!766915 (= res!1127835 (= (content!4395 lt!946199) ((_ map or) (content!4395 lt!945913) (content!4395 lt!945934))))))

(assert (=> d!766915 (= lt!946199 e!1692210)))

(declare-fun c!432173 () Bool)

(assert (=> d!766915 (= c!432173 ((_ is Nil!30996) lt!945913))))

(assert (=> d!766915 (= (++!7578 lt!945913 lt!945934) lt!946199)))

(declare-fun b!2683550 () Bool)

(assert (=> b!2683550 (= e!1692209 (or (not (= lt!945934 Nil!30996)) (= lt!946199 lt!945913)))))

(declare-fun b!2683548 () Bool)

(assert (=> b!2683548 (= e!1692210 (Cons!30996 (h!36416 lt!945913) (++!7578 (t!224609 lt!945913) lt!945934)))))

(assert (= (and d!766915 c!432173) b!2683547))

(assert (= (and d!766915 (not c!432173)) b!2683548))

(assert (= (and d!766915 res!1127835) b!2683549))

(assert (= (and b!2683549 res!1127836) b!2683550))

(declare-fun m!3052881 () Bool)

(assert (=> b!2683549 m!3052881))

(declare-fun m!3052883 () Bool)

(assert (=> b!2683549 m!3052883))

(declare-fun m!3052885 () Bool)

(assert (=> b!2683549 m!3052885))

(declare-fun m!3052887 () Bool)

(assert (=> d!766915 m!3052887))

(declare-fun m!3052889 () Bool)

(assert (=> d!766915 m!3052889))

(declare-fun m!3052891 () Bool)

(assert (=> d!766915 m!3052891))

(declare-fun m!3052893 () Bool)

(assert (=> b!2683548 m!3052893))

(assert (=> b!2683321 d!766915))

(declare-fun d!766917 () Bool)

(assert (=> d!766917 (= (list!11694 (_2!17832 (v!32796 lt!945931))) (list!11697 (c!432118 (_2!17832 (v!32796 lt!945931)))))))

(declare-fun bs!480234 () Bool)

(assert (= bs!480234 d!766917))

(declare-fun m!3052895 () Bool)

(assert (=> bs!480234 m!3052895))

(assert (=> b!2683321 d!766917))

(declare-fun b!2683551 () Bool)

(declare-fun e!1692212 () List!31096)

(assert (=> b!2683551 (= e!1692212 (++!7578 lt!945913 lt!945934))))

(declare-fun b!2683553 () Bool)

(declare-fun res!1127838 () Bool)

(declare-fun e!1692211 () Bool)

(assert (=> b!2683553 (=> (not res!1127838) (not e!1692211))))

(declare-fun lt!946200 () List!31096)

(assert (=> b!2683553 (= res!1127838 (= (size!23944 lt!946200) (+ (size!23944 lt!945911) (size!23944 (++!7578 lt!945913 lt!945934)))))))

(declare-fun d!766919 () Bool)

(assert (=> d!766919 e!1692211))

(declare-fun res!1127837 () Bool)

(assert (=> d!766919 (=> (not res!1127837) (not e!1692211))))

(assert (=> d!766919 (= res!1127837 (= (content!4395 lt!946200) ((_ map or) (content!4395 lt!945911) (content!4395 (++!7578 lt!945913 lt!945934)))))))

(assert (=> d!766919 (= lt!946200 e!1692212)))

(declare-fun c!432174 () Bool)

(assert (=> d!766919 (= c!432174 ((_ is Nil!30996) lt!945911))))

(assert (=> d!766919 (= (++!7578 lt!945911 (++!7578 lt!945913 lt!945934)) lt!946200)))

(declare-fun b!2683554 () Bool)

(assert (=> b!2683554 (= e!1692211 (or (not (= (++!7578 lt!945913 lt!945934) Nil!30996)) (= lt!946200 lt!945911)))))

(declare-fun b!2683552 () Bool)

(assert (=> b!2683552 (= e!1692212 (Cons!30996 (h!36416 lt!945911) (++!7578 (t!224609 lt!945911) (++!7578 lt!945913 lt!945934))))))

(assert (= (and d!766919 c!432174) b!2683551))

(assert (= (and d!766919 (not c!432174)) b!2683552))

(assert (= (and d!766919 res!1127837) b!2683553))

(assert (= (and b!2683553 res!1127838) b!2683554))

(declare-fun m!3052897 () Bool)

(assert (=> b!2683553 m!3052897))

(declare-fun m!3052899 () Bool)

(assert (=> b!2683553 m!3052899))

(assert (=> b!2683553 m!3052475))

(declare-fun m!3052901 () Bool)

(assert (=> b!2683553 m!3052901))

(declare-fun m!3052903 () Bool)

(assert (=> d!766919 m!3052903))

(declare-fun m!3052905 () Bool)

(assert (=> d!766919 m!3052905))

(assert (=> d!766919 m!3052475))

(declare-fun m!3052907 () Bool)

(assert (=> d!766919 m!3052907))

(assert (=> b!2683552 m!3052475))

(declare-fun m!3052909 () Bool)

(assert (=> b!2683552 m!3052909))

(assert (=> b!2683321 d!766919))

(declare-fun d!766921 () Bool)

(declare-fun e!1692215 () Bool)

(assert (=> d!766921 e!1692215))

(declare-fun res!1127841 () Bool)

(assert (=> d!766921 (=> (not res!1127841) (not e!1692215))))

(declare-fun append!759 (Conc!9696 Token!8932) Conc!9696)

(assert (=> d!766921 (= res!1127841 (isBalanced!2933 (append!759 (c!432119 acc!348) (_1!17832 (v!32796 lt!945931)))))))

(declare-fun lt!946203 () BalanceConc!19006)

(assert (=> d!766921 (= lt!946203 (BalanceConc!19007 (append!759 (c!432119 acc!348) (_1!17832 (v!32796 lt!945931)))))))

(assert (=> d!766921 (= (append!758 acc!348 (_1!17832 (v!32796 lt!945931))) lt!946203)))

(declare-fun b!2683557 () Bool)

(declare-fun $colon+!164 (List!31096 Token!8932) List!31096)

(assert (=> b!2683557 (= e!1692215 (= (list!11695 lt!946203) ($colon+!164 (list!11695 acc!348) (_1!17832 (v!32796 lt!945931)))))))

(assert (= (and d!766921 res!1127841) b!2683557))

(declare-fun m!3052911 () Bool)

(assert (=> d!766921 m!3052911))

(assert (=> d!766921 m!3052911))

(declare-fun m!3052913 () Bool)

(assert (=> d!766921 m!3052913))

(declare-fun m!3052915 () Bool)

(assert (=> b!2683557 m!3052915))

(assert (=> b!2683557 m!3052393))

(assert (=> b!2683557 m!3052393))

(declare-fun m!3052917 () Bool)

(assert (=> b!2683557 m!3052917))

(assert (=> b!2683321 d!766921))

(declare-fun b!2683558 () Bool)

(declare-fun e!1692217 () List!31096)

(assert (=> b!2683558 (= e!1692217 lt!945934)))

(declare-fun b!2683560 () Bool)

(declare-fun res!1127843 () Bool)

(declare-fun e!1692216 () Bool)

(assert (=> b!2683560 (=> (not res!1127843) (not e!1692216))))

(declare-fun lt!946204 () List!31096)

(assert (=> b!2683560 (= res!1127843 (= (size!23944 lt!946204) (+ (size!23944 (++!7578 lt!945911 lt!945913)) (size!23944 lt!945934))))))

(declare-fun d!766923 () Bool)

(assert (=> d!766923 e!1692216))

(declare-fun res!1127842 () Bool)

(assert (=> d!766923 (=> (not res!1127842) (not e!1692216))))

(assert (=> d!766923 (= res!1127842 (= (content!4395 lt!946204) ((_ map or) (content!4395 (++!7578 lt!945911 lt!945913)) (content!4395 lt!945934))))))

(assert (=> d!766923 (= lt!946204 e!1692217)))

(declare-fun c!432176 () Bool)

(assert (=> d!766923 (= c!432176 ((_ is Nil!30996) (++!7578 lt!945911 lt!945913)))))

(assert (=> d!766923 (= (++!7578 (++!7578 lt!945911 lt!945913) lt!945934) lt!946204)))

(declare-fun b!2683561 () Bool)

(assert (=> b!2683561 (= e!1692216 (or (not (= lt!945934 Nil!30996)) (= lt!946204 (++!7578 lt!945911 lt!945913))))))

(declare-fun b!2683559 () Bool)

(assert (=> b!2683559 (= e!1692217 (Cons!30996 (h!36416 (++!7578 lt!945911 lt!945913)) (++!7578 (t!224609 (++!7578 lt!945911 lt!945913)) lt!945934)))))

(assert (= (and d!766923 c!432176) b!2683558))

(assert (= (and d!766923 (not c!432176)) b!2683559))

(assert (= (and d!766923 res!1127842) b!2683560))

(assert (= (and b!2683560 res!1127843) b!2683561))

(declare-fun m!3052919 () Bool)

(assert (=> b!2683560 m!3052919))

(assert (=> b!2683560 m!3052473))

(declare-fun m!3052921 () Bool)

(assert (=> b!2683560 m!3052921))

(assert (=> b!2683560 m!3052885))

(declare-fun m!3052923 () Bool)

(assert (=> d!766923 m!3052923))

(assert (=> d!766923 m!3052473))

(declare-fun m!3052925 () Bool)

(assert (=> d!766923 m!3052925))

(assert (=> d!766923 m!3052891))

(declare-fun m!3052927 () Bool)

(assert (=> b!2683559 m!3052927))

(assert (=> b!2683321 d!766923))

(declare-fun d!766925 () Bool)

(assert (=> d!766925 (= (lexList!1186 thiss!12257 rules!1381 lt!945926) (tuple2!30513 lt!945918 Nil!30995))))

(declare-fun lt!946207 () Unit!45115)

(declare-fun choose!15888 (LexerInterface!4329 List!31100 List!31095 List!31095 List!31096 List!31096 List!31095) Unit!45115)

(assert (=> d!766925 (= lt!946207 (choose!15888 thiss!12257 rules!1381 lt!945926 lt!945912 lt!945918 lt!945934 (list!11694 (_2!17827 lt!945914))))))

(assert (=> d!766925 (not (isEmpty!17692 rules!1381))))

(assert (=> d!766925 (= (lemmaLexThenLexPrefix!399 thiss!12257 rules!1381 lt!945926 lt!945912 lt!945918 lt!945934 (list!11694 (_2!17827 lt!945914))) lt!946207)))

(declare-fun bs!480235 () Bool)

(assert (= bs!480235 d!766925))

(assert (=> bs!480235 m!3052485))

(assert (=> bs!480235 m!3052467))

(declare-fun m!3052929 () Bool)

(assert (=> bs!480235 m!3052929))

(assert (=> bs!480235 m!3052437))

(assert (=> b!2683321 d!766925))

(declare-fun b!2683562 () Bool)

(declare-fun e!1692219 () List!31096)

(assert (=> b!2683562 (= e!1692219 lt!945913)))

(declare-fun b!2683564 () Bool)

(declare-fun res!1127845 () Bool)

(declare-fun e!1692218 () Bool)

(assert (=> b!2683564 (=> (not res!1127845) (not e!1692218))))

(declare-fun lt!946208 () List!31096)

(assert (=> b!2683564 (= res!1127845 (= (size!23944 lt!946208) (+ (size!23944 lt!945911) (size!23944 lt!945913))))))

(declare-fun d!766927 () Bool)

(assert (=> d!766927 e!1692218))

(declare-fun res!1127844 () Bool)

(assert (=> d!766927 (=> (not res!1127844) (not e!1692218))))

(assert (=> d!766927 (= res!1127844 (= (content!4395 lt!946208) ((_ map or) (content!4395 lt!945911) (content!4395 lt!945913))))))

(assert (=> d!766927 (= lt!946208 e!1692219)))

(declare-fun c!432177 () Bool)

(assert (=> d!766927 (= c!432177 ((_ is Nil!30996) lt!945911))))

(assert (=> d!766927 (= (++!7578 lt!945911 lt!945913) lt!946208)))

(declare-fun b!2683565 () Bool)

(assert (=> b!2683565 (= e!1692218 (or (not (= lt!945913 Nil!30996)) (= lt!946208 lt!945911)))))

(declare-fun b!2683563 () Bool)

(assert (=> b!2683563 (= e!1692219 (Cons!30996 (h!36416 lt!945911) (++!7578 (t!224609 lt!945911) lt!945913)))))

(assert (= (and d!766927 c!432177) b!2683562))

(assert (= (and d!766927 (not c!432177)) b!2683563))

(assert (= (and d!766927 res!1127844) b!2683564))

(assert (= (and b!2683564 res!1127845) b!2683565))

(declare-fun m!3052931 () Bool)

(assert (=> b!2683564 m!3052931))

(assert (=> b!2683564 m!3052899))

(assert (=> b!2683564 m!3052883))

(declare-fun m!3052933 () Bool)

(assert (=> d!766927 m!3052933))

(assert (=> d!766927 m!3052905))

(assert (=> d!766927 m!3052889))

(declare-fun m!3052935 () Bool)

(assert (=> b!2683563 m!3052935))

(assert (=> b!2683321 d!766927))

(declare-fun d!766929 () Bool)

(declare-fun lt!946211 () BalanceConc!19004)

(assert (=> d!766929 (= (list!11694 lt!946211) (originalCharacters!5497 (_1!17832 (v!32796 lt!945931))))))

(declare-fun dynLambda!13429 (Int TokenValue!4955) BalanceConc!19004)

(assert (=> d!766929 (= lt!946211 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 lt!945931))))) (value!152505 (_1!17832 (v!32796 lt!945931)))))))

(assert (=> d!766929 (= (charsOf!2982 (_1!17832 (v!32796 lt!945931))) lt!946211)))

(declare-fun b_lambda!81897 () Bool)

(assert (=> (not b_lambda!81897) (not d!766929)))

(declare-fun tb!150601 () Bool)

(declare-fun t!224615 () Bool)

(assert (=> (and b!2683319 (= (toChars!6546 (transformation!4733 (h!36420 rules!1381))) (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 lt!945931)))))) t!224615) tb!150601))

(declare-fun b!2683570 () Bool)

(declare-fun e!1692222 () Bool)

(declare-fun tp!849304 () Bool)

(assert (=> b!2683570 (= e!1692222 (and (inv!42022 (c!432118 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 lt!945931))))) (value!152505 (_1!17832 (v!32796 lt!945931)))))) tp!849304))))

(declare-fun result!186010 () Bool)

(assert (=> tb!150601 (= result!186010 (and (inv!42023 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 lt!945931))))) (value!152505 (_1!17832 (v!32796 lt!945931))))) e!1692222))))

(assert (= tb!150601 b!2683570))

(declare-fun m!3052937 () Bool)

(assert (=> b!2683570 m!3052937))

(declare-fun m!3052939 () Bool)

(assert (=> tb!150601 m!3052939))

(assert (=> d!766929 t!224615))

(declare-fun b_and!198719 () Bool)

(assert (= b_and!198709 (and (=> t!224615 result!186010) b_and!198719)))

(declare-fun m!3052941 () Bool)

(assert (=> d!766929 m!3052941))

(declare-fun m!3052943 () Bool)

(assert (=> d!766929 m!3052943))

(assert (=> b!2683321 d!766929))

(declare-fun b!2683571 () Bool)

(declare-fun e!1692224 () List!31095)

(assert (=> b!2683571 (= e!1692224 lt!945912)))

(declare-fun b!2683572 () Bool)

(assert (=> b!2683572 (= e!1692224 (Cons!30995 (h!36415 lt!945926) (++!7577 (t!224608 lt!945926) lt!945912)))))

(declare-fun d!766931 () Bool)

(declare-fun e!1692223 () Bool)

(assert (=> d!766931 e!1692223))

(declare-fun res!1127846 () Bool)

(assert (=> d!766931 (=> (not res!1127846) (not e!1692223))))

(declare-fun lt!946212 () List!31095)

(assert (=> d!766931 (= res!1127846 (= (content!4394 lt!946212) ((_ map or) (content!4394 lt!945926) (content!4394 lt!945912))))))

(assert (=> d!766931 (= lt!946212 e!1692224)))

(declare-fun c!432178 () Bool)

(assert (=> d!766931 (= c!432178 ((_ is Nil!30995) lt!945926))))

(assert (=> d!766931 (= (++!7577 lt!945926 lt!945912) lt!946212)))

(declare-fun b!2683573 () Bool)

(declare-fun res!1127847 () Bool)

(assert (=> b!2683573 (=> (not res!1127847) (not e!1692223))))

(assert (=> b!2683573 (= res!1127847 (= (size!23943 lt!946212) (+ (size!23943 lt!945926) (size!23943 lt!945912))))))

(declare-fun b!2683574 () Bool)

(assert (=> b!2683574 (= e!1692223 (or (not (= lt!945912 Nil!30995)) (= lt!946212 lt!945926)))))

(assert (= (and d!766931 c!432178) b!2683571))

(assert (= (and d!766931 (not c!432178)) b!2683572))

(assert (= (and d!766931 res!1127846) b!2683573))

(assert (= (and b!2683573 res!1127847) b!2683574))

(declare-fun m!3052945 () Bool)

(assert (=> b!2683572 m!3052945))

(declare-fun m!3052947 () Bool)

(assert (=> d!766931 m!3052947))

(declare-fun m!3052949 () Bool)

(assert (=> d!766931 m!3052949))

(assert (=> d!766931 m!3052817))

(declare-fun m!3052951 () Bool)

(assert (=> b!2683573 m!3052951))

(assert (=> b!2683573 m!3052853))

(assert (=> b!2683573 m!3052823))

(assert (=> b!2683321 d!766931))

(declare-fun d!766933 () Bool)

(assert (=> d!766933 (= (++!7577 (++!7577 lt!945927 lt!945921) lt!945912) (++!7577 lt!945927 (++!7577 lt!945921 lt!945912)))))

(declare-fun lt!946215 () Unit!45115)

(declare-fun choose!15889 (List!31095 List!31095 List!31095) Unit!45115)

(assert (=> d!766933 (= lt!946215 (choose!15889 lt!945927 lt!945921 lt!945912))))

(assert (=> d!766933 (= (lemmaConcatAssociativity!1536 lt!945927 lt!945921 lt!945912) lt!946215)))

(declare-fun bs!480236 () Bool)

(assert (= bs!480236 d!766933))

(assert (=> bs!480236 m!3052469))

(assert (=> bs!480236 m!3052471))

(assert (=> bs!480236 m!3052469))

(assert (=> bs!480236 m!3052503))

(declare-fun m!3052953 () Bool)

(assert (=> bs!480236 m!3052953))

(assert (=> bs!480236 m!3052503))

(declare-fun m!3052955 () Bool)

(assert (=> bs!480236 m!3052955))

(assert (=> b!2683321 d!766933))

(declare-fun b!2683575 () Bool)

(declare-fun e!1692228 () Bool)

(declare-fun e!1692226 () Bool)

(assert (=> b!2683575 (= e!1692228 e!1692226)))

(declare-fun res!1127848 () Bool)

(declare-fun lt!946217 () tuple2!30502)

(assert (=> b!2683575 (= res!1127848 (< (size!23941 (_2!17827 lt!946217)) (size!23941 (_2!17832 (v!32796 lt!945931)))))))

(assert (=> b!2683575 (=> (not res!1127848) (not e!1692226))))

(declare-fun b!2683576 () Bool)

(assert (=> b!2683576 (= e!1692226 (not (isEmpty!17693 (_1!17827 lt!946217))))))

(declare-fun b!2683577 () Bool)

(declare-fun e!1692225 () tuple2!30502)

(assert (=> b!2683577 (= e!1692225 (tuple2!30503 (BalanceConc!19007 Empty!9696) (_2!17832 (v!32796 lt!945931))))))

(declare-fun b!2683578 () Bool)

(declare-fun e!1692227 () Bool)

(assert (=> b!2683578 (= e!1692227 (= (list!11694 (_2!17827 lt!946217)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 (_2!17832 (v!32796 lt!945931)))))))))

(declare-fun d!766935 () Bool)

(assert (=> d!766935 e!1692227))

(declare-fun res!1127850 () Bool)

(assert (=> d!766935 (=> (not res!1127850) (not e!1692227))))

(assert (=> d!766935 (= res!1127850 e!1692228)))

(declare-fun c!432180 () Bool)

(assert (=> d!766935 (= c!432180 (> (size!23942 (_1!17827 lt!946217)) 0))))

(assert (=> d!766935 (= lt!946217 e!1692225)))

(declare-fun c!432179 () Bool)

(declare-fun lt!946216 () Option!6122)

(assert (=> d!766935 (= c!432179 ((_ is Some!6121) lt!946216))))

(assert (=> d!766935 (= lt!946216 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))))))

(assert (=> d!766935 (= (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))) lt!946217)))

(declare-fun b!2683579 () Bool)

(declare-fun lt!946218 () tuple2!30502)

(assert (=> b!2683579 (= e!1692225 (tuple2!30503 (prepend!1063 (_1!17827 lt!946218) (_1!17832 (v!32796 lt!946216))) (_2!17827 lt!946218)))))

(assert (=> b!2683579 (= lt!946218 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946216))))))

(declare-fun b!2683580 () Bool)

(declare-fun res!1127849 () Bool)

(assert (=> b!2683580 (=> (not res!1127849) (not e!1692227))))

(assert (=> b!2683580 (= res!1127849 (= (list!11695 (_1!17827 lt!946217)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 (_2!17832 (v!32796 lt!945931)))))))))

(declare-fun b!2683581 () Bool)

(assert (=> b!2683581 (= e!1692228 (= (list!11694 (_2!17827 lt!946217)) (list!11694 (_2!17832 (v!32796 lt!945931)))))))

(assert (= (and d!766935 c!432179) b!2683579))

(assert (= (and d!766935 (not c!432179)) b!2683577))

(assert (= (and d!766935 c!432180) b!2683575))

(assert (= (and d!766935 (not c!432180)) b!2683581))

(assert (= (and b!2683575 res!1127848) b!2683576))

(assert (= (and d!766935 res!1127850) b!2683580))

(assert (= (and b!2683580 res!1127849) b!2683578))

(declare-fun m!3052957 () Bool)

(assert (=> d!766935 m!3052957))

(declare-fun m!3052959 () Bool)

(assert (=> d!766935 m!3052959))

(declare-fun m!3052961 () Bool)

(assert (=> b!2683581 m!3052961))

(assert (=> b!2683581 m!3052509))

(declare-fun m!3052963 () Bool)

(assert (=> b!2683576 m!3052963))

(assert (=> b!2683578 m!3052961))

(assert (=> b!2683578 m!3052509))

(assert (=> b!2683578 m!3052509))

(declare-fun m!3052965 () Bool)

(assert (=> b!2683578 m!3052965))

(declare-fun m!3052967 () Bool)

(assert (=> b!2683580 m!3052967))

(assert (=> b!2683580 m!3052509))

(assert (=> b!2683580 m!3052509))

(assert (=> b!2683580 m!3052965))

(declare-fun m!3052969 () Bool)

(assert (=> b!2683579 m!3052969))

(declare-fun m!3052971 () Bool)

(assert (=> b!2683579 m!3052971))

(declare-fun m!3052973 () Bool)

(assert (=> b!2683575 m!3052973))

(declare-fun m!3052975 () Bool)

(assert (=> b!2683575 m!3052975))

(assert (=> b!2683321 d!766935))

(declare-fun b!2683582 () Bool)

(declare-fun e!1692232 () Bool)

(declare-fun e!1692230 () Bool)

(assert (=> b!2683582 (= e!1692232 e!1692230)))

(declare-fun res!1127851 () Bool)

(declare-fun lt!946220 () tuple2!30502)

(assert (=> b!2683582 (= res!1127851 (< (size!23941 (_2!17827 lt!946220)) (size!23941 lt!945932)))))

(assert (=> b!2683582 (=> (not res!1127851) (not e!1692230))))

(declare-fun b!2683583 () Bool)

(assert (=> b!2683583 (= e!1692230 (not (isEmpty!17693 (_1!17827 lt!946220))))))

(declare-fun b!2683584 () Bool)

(declare-fun e!1692229 () tuple2!30502)

(assert (=> b!2683584 (= e!1692229 (tuple2!30503 (BalanceConc!19007 Empty!9696) lt!945932))))

(declare-fun b!2683585 () Bool)

(declare-fun e!1692231 () Bool)

(assert (=> b!2683585 (= e!1692231 (= (list!11694 (_2!17827 lt!946220)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 lt!945932)))))))

(declare-fun d!766937 () Bool)

(assert (=> d!766937 e!1692231))

(declare-fun res!1127853 () Bool)

(assert (=> d!766937 (=> (not res!1127853) (not e!1692231))))

(assert (=> d!766937 (= res!1127853 e!1692232)))

(declare-fun c!432182 () Bool)

(assert (=> d!766937 (= c!432182 (> (size!23942 (_1!17827 lt!946220)) 0))))

(assert (=> d!766937 (= lt!946220 e!1692229)))

(declare-fun c!432181 () Bool)

(declare-fun lt!946219 () Option!6122)

(assert (=> d!766937 (= c!432181 ((_ is Some!6121) lt!946219))))

(assert (=> d!766937 (= lt!946219 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!945932))))

(assert (=> d!766937 (= (lexRec!592 thiss!12257 rules!1381 lt!945932) lt!946220)))

(declare-fun b!2683586 () Bool)

(declare-fun lt!946221 () tuple2!30502)

(assert (=> b!2683586 (= e!1692229 (tuple2!30503 (prepend!1063 (_1!17827 lt!946221) (_1!17832 (v!32796 lt!946219))) (_2!17827 lt!946221)))))

(assert (=> b!2683586 (= lt!946221 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946219))))))

(declare-fun b!2683587 () Bool)

(declare-fun res!1127852 () Bool)

(assert (=> b!2683587 (=> (not res!1127852) (not e!1692231))))

(assert (=> b!2683587 (= res!1127852 (= (list!11695 (_1!17827 lt!946220)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 lt!945932)))))))

(declare-fun b!2683588 () Bool)

(assert (=> b!2683588 (= e!1692232 (= (list!11694 (_2!17827 lt!946220)) (list!11694 lt!945932)))))

(assert (= (and d!766937 c!432181) b!2683586))

(assert (= (and d!766937 (not c!432181)) b!2683584))

(assert (= (and d!766937 c!432182) b!2683582))

(assert (= (and d!766937 (not c!432182)) b!2683588))

(assert (= (and b!2683582 res!1127851) b!2683583))

(assert (= (and d!766937 res!1127853) b!2683587))

(assert (= (and b!2683587 res!1127852) b!2683585))

(declare-fun m!3052977 () Bool)

(assert (=> d!766937 m!3052977))

(assert (=> d!766937 m!3052491))

(declare-fun m!3052979 () Bool)

(assert (=> b!2683588 m!3052979))

(assert (=> b!2683588 m!3052825))

(declare-fun m!3052981 () Bool)

(assert (=> b!2683583 m!3052981))

(assert (=> b!2683585 m!3052979))

(assert (=> b!2683585 m!3052825))

(assert (=> b!2683585 m!3052825))

(declare-fun m!3052983 () Bool)

(assert (=> b!2683585 m!3052983))

(declare-fun m!3052985 () Bool)

(assert (=> b!2683587 m!3052985))

(assert (=> b!2683587 m!3052825))

(assert (=> b!2683587 m!3052825))

(assert (=> b!2683587 m!3052983))

(declare-fun m!3052987 () Bool)

(assert (=> b!2683586 m!3052987))

(declare-fun m!3052989 () Bool)

(assert (=> b!2683586 m!3052989))

(declare-fun m!3052991 () Bool)

(assert (=> b!2683582 m!3052991))

(declare-fun m!3052993 () Bool)

(assert (=> b!2683582 m!3052993))

(assert (=> b!2683321 d!766937))

(declare-fun b!2683589 () Bool)

(declare-fun e!1692234 () List!31095)

(assert (=> b!2683589 (= e!1692234 (++!7577 lt!945921 lt!945912))))

(declare-fun b!2683590 () Bool)

(assert (=> b!2683590 (= e!1692234 (Cons!30995 (h!36415 lt!945927) (++!7577 (t!224608 lt!945927) (++!7577 lt!945921 lt!945912))))))

(declare-fun d!766939 () Bool)

(declare-fun e!1692233 () Bool)

(assert (=> d!766939 e!1692233))

(declare-fun res!1127854 () Bool)

(assert (=> d!766939 (=> (not res!1127854) (not e!1692233))))

(declare-fun lt!946222 () List!31095)

(assert (=> d!766939 (= res!1127854 (= (content!4394 lt!946222) ((_ map or) (content!4394 lt!945927) (content!4394 (++!7577 lt!945921 lt!945912)))))))

(assert (=> d!766939 (= lt!946222 e!1692234)))

(declare-fun c!432183 () Bool)

(assert (=> d!766939 (= c!432183 ((_ is Nil!30995) lt!945927))))

(assert (=> d!766939 (= (++!7577 lt!945927 (++!7577 lt!945921 lt!945912)) lt!946222)))

(declare-fun b!2683591 () Bool)

(declare-fun res!1127855 () Bool)

(assert (=> b!2683591 (=> (not res!1127855) (not e!1692233))))

(assert (=> b!2683591 (= res!1127855 (= (size!23943 lt!946222) (+ (size!23943 lt!945927) (size!23943 (++!7577 lt!945921 lt!945912)))))))

(declare-fun b!2683592 () Bool)

(assert (=> b!2683592 (= e!1692233 (or (not (= (++!7577 lt!945921 lt!945912) Nil!30995)) (= lt!946222 lt!945927)))))

(assert (= (and d!766939 c!432183) b!2683589))

(assert (= (and d!766939 (not c!432183)) b!2683590))

(assert (= (and d!766939 res!1127854) b!2683591))

(assert (= (and b!2683591 res!1127855) b!2683592))

(assert (=> b!2683590 m!3052469))

(declare-fun m!3052995 () Bool)

(assert (=> b!2683590 m!3052995))

(declare-fun m!3052997 () Bool)

(assert (=> d!766939 m!3052997))

(declare-fun m!3052999 () Bool)

(assert (=> d!766939 m!3052999))

(assert (=> d!766939 m!3052469))

(declare-fun m!3053001 () Bool)

(assert (=> d!766939 m!3053001))

(declare-fun m!3053003 () Bool)

(assert (=> b!2683591 m!3053003))

(declare-fun m!3053005 () Bool)

(assert (=> b!2683591 m!3053005))

(assert (=> b!2683591 m!3052469))

(declare-fun m!3053007 () Bool)

(assert (=> b!2683591 m!3053007))

(assert (=> b!2683321 d!766939))

(declare-fun d!766941 () Bool)

(assert (=> d!766941 (= (list!11695 lt!945910) (list!11696 (c!432119 lt!945910)))))

(declare-fun bs!480237 () Bool)

(assert (= bs!480237 d!766941))

(declare-fun m!3053009 () Bool)

(assert (=> bs!480237 m!3053009))

(assert (=> b!2683321 d!766941))

(declare-fun d!766943 () Bool)

(assert (=> d!766943 (= (list!11694 lt!945917) (list!11697 (c!432118 lt!945917)))))

(declare-fun bs!480238 () Bool)

(assert (= bs!480238 d!766943))

(declare-fun m!3053011 () Bool)

(assert (=> bs!480238 m!3053011))

(assert (=> b!2683321 d!766943))

(declare-fun b!2683593 () Bool)

(declare-fun e!1692238 () Bool)

(declare-fun lt!946227 () tuple2!30502)

(assert (=> b!2683593 (= e!1692238 (= (list!11694 (_2!17827 lt!946227)) (list!11694 (_2!17827 (lexRec!592 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2683594 () Bool)

(declare-fun e!1692235 () tuple2!30502)

(assert (=> b!2683594 (= e!1692235 (tuple2!30503 lt!945910 (_2!17832 (v!32796 lt!945931))))))

(declare-fun b!2683595 () Bool)

(declare-fun lt!946233 () Option!6122)

(declare-fun lt!946240 () tuple2!30502)

(assert (=> b!2683595 (= lt!946240 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946233))))))

(declare-fun e!1692236 () tuple2!30502)

(assert (=> b!2683595 (= e!1692236 (tuple2!30503 (prepend!1063 (_1!17827 lt!946240) (_1!17832 (v!32796 lt!946233))) (_2!17827 lt!946240)))))

(declare-fun d!766945 () Bool)

(assert (=> d!766945 e!1692238))

(declare-fun res!1127856 () Bool)

(assert (=> d!766945 (=> (not res!1127856) (not e!1692238))))

(assert (=> d!766945 (= res!1127856 (= (list!11695 (_1!17827 lt!946227)) (list!11695 (_1!17827 (lexRec!592 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!766945 (= lt!946227 e!1692235)))

(declare-fun c!432186 () Bool)

(declare-fun lt!946223 () Option!6122)

(assert (=> d!766945 (= c!432186 ((_ is Some!6121) lt!946223))))

(assert (=> d!766945 (= lt!946223 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))))))

(assert (=> d!766945 (= (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 lt!945932 (_2!17832 (v!32796 lt!945931)) lt!945910) lt!946227)))

(declare-fun b!2683596 () Bool)

(assert (=> b!2683596 (= e!1692235 (lexTailRec!18 thiss!12257 rules!1381 totalInput!354 (++!7579 lt!945932 (charsOf!2982 (_1!17832 (v!32796 lt!946223)))) (_2!17832 (v!32796 lt!946223)) (append!758 lt!945910 (_1!17832 (v!32796 lt!946223)))))))

(declare-fun lt!946243 () tuple2!30502)

(assert (=> b!2683596 (= lt!946243 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946223))))))

(declare-fun lt!946224 () List!31095)

(assert (=> b!2683596 (= lt!946224 (list!11694 lt!945932))))

(declare-fun lt!946228 () List!31095)

(assert (=> b!2683596 (= lt!946228 (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946223)))))))

(declare-fun lt!946225 () List!31095)

(assert (=> b!2683596 (= lt!946225 (list!11694 (_2!17832 (v!32796 lt!946223))))))

(declare-fun lt!946241 () Unit!45115)

(assert (=> b!2683596 (= lt!946241 (lemmaConcatAssociativity!1536 lt!946224 lt!946228 lt!946225))))

(assert (=> b!2683596 (= (++!7577 (++!7577 lt!946224 lt!946228) lt!946225) (++!7577 lt!946224 (++!7577 lt!946228 lt!946225)))))

(declare-fun lt!946226 () Unit!45115)

(assert (=> b!2683596 (= lt!946226 lt!946241)))

(declare-fun lt!946232 () Option!6122)

(assert (=> b!2683596 (= lt!946232 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))))))

(declare-fun c!432185 () Bool)

(assert (=> b!2683596 (= c!432185 ((_ is Some!6121) lt!946232))))

(declare-fun e!1692237 () tuple2!30502)

(assert (=> b!2683596 (= (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945931))) e!1692237)))

(declare-fun lt!946244 () Unit!45115)

(declare-fun Unit!45121 () Unit!45115)

(assert (=> b!2683596 (= lt!946244 Unit!45121)))

(declare-fun lt!946247 () List!31096)

(assert (=> b!2683596 (= lt!946247 (list!11695 lt!945910))))

(declare-fun lt!946236 () List!31096)

(assert (=> b!2683596 (= lt!946236 (Cons!30996 (_1!17832 (v!32796 lt!946223)) Nil!30996))))

(declare-fun lt!946229 () List!31096)

(assert (=> b!2683596 (= lt!946229 (list!11695 (_1!17827 lt!946243)))))

(declare-fun lt!946238 () Unit!45115)

(assert (=> b!2683596 (= lt!946238 (lemmaConcatAssociativity!1537 lt!946247 lt!946236 lt!946229))))

(assert (=> b!2683596 (= (++!7578 (++!7578 lt!946247 lt!946236) lt!946229) (++!7578 lt!946247 (++!7578 lt!946236 lt!946229)))))

(declare-fun lt!946242 () Unit!45115)

(assert (=> b!2683596 (= lt!946242 lt!946238)))

(declare-fun lt!946234 () List!31095)

(assert (=> b!2683596 (= lt!946234 (++!7577 (list!11694 lt!945932) (list!11694 (charsOf!2982 (_1!17832 (v!32796 lt!946223))))))))

(declare-fun lt!946235 () List!31095)

(assert (=> b!2683596 (= lt!946235 (list!11694 (_2!17832 (v!32796 lt!946223))))))

(declare-fun lt!946231 () List!31096)

(assert (=> b!2683596 (= lt!946231 (list!11695 (append!758 lt!945910 (_1!17832 (v!32796 lt!946223)))))))

(declare-fun lt!946237 () Unit!45115)

(assert (=> b!2683596 (= lt!946237 (lemmaLexThenLexPrefix!399 thiss!12257 rules!1381 lt!946234 lt!946235 lt!946231 (list!11695 (_1!17827 lt!946243)) (list!11694 (_2!17827 lt!946243))))))

(assert (=> b!2683596 (= (lexList!1186 thiss!12257 rules!1381 lt!946234) (tuple2!30513 lt!946231 Nil!30995))))

(declare-fun lt!946245 () Unit!45115)

(assert (=> b!2683596 (= lt!946245 lt!946237)))

(declare-fun lt!946246 () BalanceConc!19004)

(assert (=> b!2683596 (= lt!946246 (++!7579 lt!945932 (charsOf!2982 (_1!17832 (v!32796 lt!946223)))))))

(assert (=> b!2683596 (= lt!946233 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 lt!946246))))

(declare-fun c!432184 () Bool)

(assert (=> b!2683596 (= c!432184 ((_ is Some!6121) lt!946233))))

(assert (=> b!2683596 (= (lexRec!592 thiss!12257 rules!1381 (++!7579 lt!945932 (charsOf!2982 (_1!17832 (v!32796 lt!946223))))) e!1692236)))

(declare-fun lt!946239 () Unit!45115)

(declare-fun Unit!45122 () Unit!45115)

(assert (=> b!2683596 (= lt!946239 Unit!45122)))

(declare-fun b!2683597 () Bool)

(assert (=> b!2683597 (= e!1692236 (tuple2!30503 (BalanceConc!19007 Empty!9696) lt!946246))))

(declare-fun b!2683598 () Bool)

(assert (=> b!2683598 (= e!1692237 (tuple2!30503 (BalanceConc!19007 Empty!9696) (_2!17832 (v!32796 lt!945931))))))

(declare-fun lt!946230 () tuple2!30502)

(declare-fun b!2683599 () Bool)

(assert (=> b!2683599 (= lt!946230 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946232))))))

(assert (=> b!2683599 (= e!1692237 (tuple2!30503 (prepend!1063 (_1!17827 lt!946230) (_1!17832 (v!32796 lt!946232))) (_2!17827 lt!946230)))))

(assert (= (and d!766945 c!432186) b!2683596))

(assert (= (and d!766945 (not c!432186)) b!2683594))

(assert (= (and b!2683596 c!432185) b!2683599))

(assert (= (and b!2683596 (not c!432185)) b!2683598))

(assert (= (and b!2683596 c!432184) b!2683595))

(assert (= (and b!2683596 (not c!432184)) b!2683597))

(assert (= (and d!766945 res!1127856) b!2683593))

(declare-fun m!3053013 () Bool)

(assert (=> b!2683599 m!3053013))

(declare-fun m!3053015 () Bool)

(assert (=> b!2683599 m!3053015))

(declare-fun m!3053017 () Bool)

(assert (=> d!766945 m!3053017))

(assert (=> d!766945 m!3052455))

(assert (=> d!766945 m!3052625))

(assert (=> d!766945 m!3052959))

(declare-fun m!3053019 () Bool)

(assert (=> b!2683595 m!3053019))

(declare-fun m!3053021 () Bool)

(assert (=> b!2683595 m!3053021))

(declare-fun m!3053023 () Bool)

(assert (=> b!2683596 m!3053023))

(declare-fun m!3053025 () Bool)

(assert (=> b!2683596 m!3053025))

(declare-fun m!3053027 () Bool)

(assert (=> b!2683596 m!3053027))

(declare-fun m!3053029 () Bool)

(assert (=> b!2683596 m!3053029))

(declare-fun m!3053031 () Bool)

(assert (=> b!2683596 m!3053031))

(assert (=> b!2683596 m!3053027))

(declare-fun m!3053033 () Bool)

(assert (=> b!2683596 m!3053033))

(declare-fun m!3053035 () Bool)

(assert (=> b!2683596 m!3053035))

(declare-fun m!3053037 () Bool)

(assert (=> b!2683596 m!3053037))

(declare-fun m!3053039 () Bool)

(assert (=> b!2683596 m!3053039))

(assert (=> b!2683596 m!3053029))

(assert (=> b!2683596 m!3053023))

(declare-fun m!3053041 () Bool)

(assert (=> b!2683596 m!3053041))

(assert (=> b!2683596 m!3052497))

(declare-fun m!3053043 () Bool)

(assert (=> b!2683596 m!3053043))

(assert (=> b!2683596 m!3052489))

(declare-fun m!3053045 () Bool)

(assert (=> b!2683596 m!3053045))

(declare-fun m!3053047 () Bool)

(assert (=> b!2683596 m!3053047))

(assert (=> b!2683596 m!3053045))

(assert (=> b!2683596 m!3053035))

(declare-fun m!3053049 () Bool)

(assert (=> b!2683596 m!3053049))

(assert (=> b!2683596 m!3053043))

(declare-fun m!3053051 () Bool)

(assert (=> b!2683596 m!3053051))

(assert (=> b!2683596 m!3052825))

(assert (=> b!2683596 m!3053035))

(declare-fun m!3053053 () Bool)

(assert (=> b!2683596 m!3053053))

(declare-fun m!3053055 () Bool)

(assert (=> b!2683596 m!3053055))

(assert (=> b!2683596 m!3052825))

(assert (=> b!2683596 m!3053049))

(declare-fun m!3053057 () Bool)

(assert (=> b!2683596 m!3053057))

(declare-fun m!3053059 () Bool)

(assert (=> b!2683596 m!3053059))

(declare-fun m!3053061 () Bool)

(assert (=> b!2683596 m!3053061))

(assert (=> b!2683596 m!3053053))

(declare-fun m!3053063 () Bool)

(assert (=> b!2683596 m!3053063))

(assert (=> b!2683596 m!3053055))

(declare-fun m!3053065 () Bool)

(assert (=> b!2683596 m!3053065))

(declare-fun m!3053067 () Bool)

(assert (=> b!2683596 m!3053067))

(assert (=> b!2683596 m!3053053))

(assert (=> b!2683596 m!3053043))

(declare-fun m!3053069 () Bool)

(assert (=> b!2683596 m!3053069))

(declare-fun m!3053071 () Bool)

(assert (=> b!2683596 m!3053071))

(assert (=> b!2683596 m!3052959))

(assert (=> b!2683596 m!3053059))

(declare-fun m!3053073 () Bool)

(assert (=> b!2683593 m!3053073))

(assert (=> b!2683593 m!3052455))

(assert (=> b!2683593 m!3052683))

(assert (=> b!2683321 d!766945))

(declare-fun b!2683600 () Bool)

(declare-fun e!1692240 () List!31095)

(assert (=> b!2683600 (= e!1692240 lt!945921)))

(declare-fun b!2683601 () Bool)

(assert (=> b!2683601 (= e!1692240 (Cons!30995 (h!36415 lt!945927) (++!7577 (t!224608 lt!945927) lt!945921)))))

(declare-fun d!766947 () Bool)

(declare-fun e!1692239 () Bool)

(assert (=> d!766947 e!1692239))

(declare-fun res!1127857 () Bool)

(assert (=> d!766947 (=> (not res!1127857) (not e!1692239))))

(declare-fun lt!946248 () List!31095)

(assert (=> d!766947 (= res!1127857 (= (content!4394 lt!946248) ((_ map or) (content!4394 lt!945927) (content!4394 lt!945921))))))

(assert (=> d!766947 (= lt!946248 e!1692240)))

(declare-fun c!432187 () Bool)

(assert (=> d!766947 (= c!432187 ((_ is Nil!30995) lt!945927))))

(assert (=> d!766947 (= (++!7577 lt!945927 lt!945921) lt!946248)))

(declare-fun b!2683602 () Bool)

(declare-fun res!1127858 () Bool)

(assert (=> b!2683602 (=> (not res!1127858) (not e!1692239))))

(assert (=> b!2683602 (= res!1127858 (= (size!23943 lt!946248) (+ (size!23943 lt!945927) (size!23943 lt!945921))))))

(declare-fun b!2683603 () Bool)

(assert (=> b!2683603 (= e!1692239 (or (not (= lt!945921 Nil!30995)) (= lt!946248 lt!945927)))))

(assert (= (and d!766947 c!432187) b!2683600))

(assert (= (and d!766947 (not c!432187)) b!2683601))

(assert (= (and d!766947 res!1127857) b!2683602))

(assert (= (and b!2683602 res!1127858) b!2683603))

(declare-fun m!3053075 () Bool)

(assert (=> b!2683601 m!3053075))

(declare-fun m!3053077 () Bool)

(assert (=> d!766947 m!3053077))

(assert (=> d!766947 m!3052999))

(assert (=> d!766947 m!3052815))

(declare-fun m!3053079 () Bool)

(assert (=> b!2683602 m!3053079))

(assert (=> b!2683602 m!3053005))

(assert (=> b!2683602 m!3052821))

(assert (=> b!2683321 d!766947))

(declare-fun d!766949 () Bool)

(assert (=> d!766949 (= (list!11694 (_2!17827 lt!945914)) (list!11697 (c!432118 (_2!17827 lt!945914))))))

(declare-fun bs!480239 () Bool)

(assert (= bs!480239 d!766949))

(declare-fun m!3053081 () Bool)

(assert (=> bs!480239 m!3053081))

(assert (=> b!2683321 d!766949))

(declare-fun d!766951 () Bool)

(assert (=> d!766951 (= (list!11695 (_1!17827 lt!945914)) (list!11696 (c!432119 (_1!17827 lt!945914))))))

(declare-fun bs!480240 () Bool)

(assert (= bs!480240 d!766951))

(declare-fun m!3053083 () Bool)

(assert (=> bs!480240 m!3053083))

(assert (=> b!2683321 d!766951))

(declare-fun d!766953 () Bool)

(assert (=> d!766953 (= (++!7578 (++!7578 lt!945911 lt!945913) lt!945934) (++!7578 lt!945911 (++!7578 lt!945913 lt!945934)))))

(declare-fun lt!946251 () Unit!45115)

(declare-fun choose!15890 (List!31096 List!31096 List!31096) Unit!45115)

(assert (=> d!766953 (= lt!946251 (choose!15890 lt!945911 lt!945913 lt!945934))))

(assert (=> d!766953 (= (lemmaConcatAssociativity!1537 lt!945911 lt!945913 lt!945934) lt!946251)))

(declare-fun bs!480241 () Bool)

(assert (= bs!480241 d!766953))

(assert (=> bs!480241 m!3052473))

(assert (=> bs!480241 m!3052475))

(assert (=> bs!480241 m!3052477))

(declare-fun m!3053085 () Bool)

(assert (=> bs!480241 m!3053085))

(assert (=> bs!480241 m!3052475))

(assert (=> bs!480241 m!3052473))

(assert (=> bs!480241 m!3052487))

(assert (=> b!2683321 d!766953))

(declare-fun d!766955 () Bool)

(assert (=> d!766955 (= (array_inv!3979 (_keys!3799 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) (bvsge (size!23938 (_keys!3799 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2683340 d!766955))

(declare-fun d!766957 () Bool)

(assert (=> d!766957 (= (array_inv!3981 (_values!3780 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) (bvsge (size!23940 (_values!3780 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2683340 d!766957))

(declare-fun d!766959 () Bool)

(assert (=> d!766959 (= (list!11694 totalInput!354) (list!11697 (c!432118 totalInput!354)))))

(declare-fun bs!480242 () Bool)

(assert (= bs!480242 d!766959))

(declare-fun m!3053087 () Bool)

(assert (=> bs!480242 m!3053087))

(assert (=> b!2683322 d!766959))

(declare-fun b!2683604 () Bool)

(declare-fun e!1692242 () List!31095)

(assert (=> b!2683604 (= e!1692242 (list!11694 input!780))))

(declare-fun b!2683605 () Bool)

(assert (=> b!2683605 (= e!1692242 (Cons!30995 (h!36415 lt!945927) (++!7577 (t!224608 lt!945927) (list!11694 input!780))))))

(declare-fun d!766961 () Bool)

(declare-fun e!1692241 () Bool)

(assert (=> d!766961 e!1692241))

(declare-fun res!1127859 () Bool)

(assert (=> d!766961 (=> (not res!1127859) (not e!1692241))))

(declare-fun lt!946252 () List!31095)

(assert (=> d!766961 (= res!1127859 (= (content!4394 lt!946252) ((_ map or) (content!4394 lt!945927) (content!4394 (list!11694 input!780)))))))

(assert (=> d!766961 (= lt!946252 e!1692242)))

(declare-fun c!432188 () Bool)

(assert (=> d!766961 (= c!432188 ((_ is Nil!30995) lt!945927))))

(assert (=> d!766961 (= (++!7577 lt!945927 (list!11694 input!780)) lt!946252)))

(declare-fun b!2683606 () Bool)

(declare-fun res!1127860 () Bool)

(assert (=> b!2683606 (=> (not res!1127860) (not e!1692241))))

(assert (=> b!2683606 (= res!1127860 (= (size!23943 lt!946252) (+ (size!23943 lt!945927) (size!23943 (list!11694 input!780)))))))

(declare-fun b!2683607 () Bool)

(assert (=> b!2683607 (= e!1692241 (or (not (= (list!11694 input!780) Nil!30995)) (= lt!946252 lt!945927)))))

(assert (= (and d!766961 c!432188) b!2683604))

(assert (= (and d!766961 (not c!432188)) b!2683605))

(assert (= (and d!766961 res!1127859) b!2683606))

(assert (= (and b!2683606 res!1127860) b!2683607))

(assert (=> b!2683605 m!3052527))

(declare-fun m!3053089 () Bool)

(assert (=> b!2683605 m!3053089))

(declare-fun m!3053091 () Bool)

(assert (=> d!766961 m!3053091))

(assert (=> d!766961 m!3052999))

(assert (=> d!766961 m!3052527))

(declare-fun m!3053093 () Bool)

(assert (=> d!766961 m!3053093))

(declare-fun m!3053095 () Bool)

(assert (=> b!2683606 m!3053095))

(assert (=> b!2683606 m!3053005))

(assert (=> b!2683606 m!3052527))

(declare-fun m!3053097 () Bool)

(assert (=> b!2683606 m!3053097))

(assert (=> b!2683322 d!766961))

(declare-fun d!766963 () Bool)

(assert (=> d!766963 (= (list!11694 input!780) (list!11697 (c!432118 input!780)))))

(declare-fun bs!480243 () Bool)

(assert (= bs!480243 d!766963))

(declare-fun m!3053099 () Bool)

(assert (=> bs!480243 m!3053099))

(assert (=> b!2683322 d!766963))

(declare-fun d!766965 () Bool)

(assert (=> d!766965 (= (list!11694 treated!26) (list!11697 (c!432118 treated!26)))))

(declare-fun bs!480244 () Bool)

(assert (= bs!480244 d!766965))

(declare-fun m!3053101 () Bool)

(assert (=> bs!480244 m!3053101))

(assert (=> b!2683322 d!766965))

(declare-fun d!766967 () Bool)

(declare-fun validCacheMapDown!351 (MutableMap!3405) Bool)

(assert (=> d!766967 (= (valid!2706 (_3!2577 lt!945930)) (validCacheMapDown!351 (cache!3548 (_3!2577 lt!945930))))))

(declare-fun bs!480245 () Bool)

(assert (= bs!480245 d!766967))

(declare-fun m!3053103 () Bool)

(assert (=> bs!480245 m!3053103))

(assert (=> b!2683320 d!766967))

(declare-fun b!2683608 () Bool)

(declare-fun e!1692246 () Bool)

(declare-fun e!1692244 () Bool)

(assert (=> b!2683608 (= e!1692246 e!1692244)))

(declare-fun res!1127861 () Bool)

(declare-fun lt!946254 () tuple2!30502)

(assert (=> b!2683608 (= res!1127861 (< (size!23941 (_2!17827 lt!946254)) (size!23941 (_2!17832 (v!32796 lt!945933)))))))

(assert (=> b!2683608 (=> (not res!1127861) (not e!1692244))))

(declare-fun b!2683609 () Bool)

(assert (=> b!2683609 (= e!1692244 (not (isEmpty!17693 (_1!17827 lt!946254))))))

(declare-fun b!2683610 () Bool)

(declare-fun e!1692243 () tuple2!30502)

(assert (=> b!2683610 (= e!1692243 (tuple2!30503 (BalanceConc!19007 Empty!9696) (_2!17832 (v!32796 lt!945933))))))

(declare-fun e!1692245 () Bool)

(declare-fun b!2683611 () Bool)

(assert (=> b!2683611 (= e!1692245 (= (list!11694 (_2!17827 lt!946254)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 (_2!17832 (v!32796 lt!945933)))))))))

(declare-fun d!766969 () Bool)

(assert (=> d!766969 e!1692245))

(declare-fun res!1127863 () Bool)

(assert (=> d!766969 (=> (not res!1127863) (not e!1692245))))

(assert (=> d!766969 (= res!1127863 e!1692246)))

(declare-fun c!432190 () Bool)

(assert (=> d!766969 (= c!432190 (> (size!23942 (_1!17827 lt!946254)) 0))))

(assert (=> d!766969 (= lt!946254 e!1692243)))

(declare-fun c!432189 () Bool)

(declare-fun lt!946253 () Option!6122)

(assert (=> d!766969 (= c!432189 ((_ is Some!6121) lt!946253))))

(assert (=> d!766969 (= lt!946253 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945933))))))

(assert (=> d!766969 (= (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!945933))) lt!946254)))

(declare-fun b!2683612 () Bool)

(declare-fun lt!946255 () tuple2!30502)

(assert (=> b!2683612 (= e!1692243 (tuple2!30503 (prepend!1063 (_1!17827 lt!946255) (_1!17832 (v!32796 lt!946253))) (_2!17827 lt!946255)))))

(assert (=> b!2683612 (= lt!946255 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946253))))))

(declare-fun b!2683613 () Bool)

(declare-fun res!1127862 () Bool)

(assert (=> b!2683613 (=> (not res!1127862) (not e!1692245))))

(assert (=> b!2683613 (= res!1127862 (= (list!11695 (_1!17827 lt!946254)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 (_2!17832 (v!32796 lt!945933)))))))))

(declare-fun b!2683614 () Bool)

(assert (=> b!2683614 (= e!1692246 (= (list!11694 (_2!17827 lt!946254)) (list!11694 (_2!17832 (v!32796 lt!945933)))))))

(assert (= (and d!766969 c!432189) b!2683612))

(assert (= (and d!766969 (not c!432189)) b!2683610))

(assert (= (and d!766969 c!432190) b!2683608))

(assert (= (and d!766969 (not c!432190)) b!2683614))

(assert (= (and b!2683608 res!1127861) b!2683609))

(assert (= (and d!766969 res!1127863) b!2683613))

(assert (= (and b!2683613 res!1127862) b!2683611))

(declare-fun m!3053105 () Bool)

(assert (=> d!766969 m!3053105))

(declare-fun m!3053107 () Bool)

(assert (=> d!766969 m!3053107))

(declare-fun m!3053109 () Bool)

(assert (=> b!2683614 m!3053109))

(declare-fun m!3053111 () Bool)

(assert (=> b!2683614 m!3053111))

(declare-fun m!3053113 () Bool)

(assert (=> b!2683609 m!3053113))

(assert (=> b!2683611 m!3053109))

(assert (=> b!2683611 m!3053111))

(assert (=> b!2683611 m!3053111))

(declare-fun m!3053115 () Bool)

(assert (=> b!2683611 m!3053115))

(declare-fun m!3053117 () Bool)

(assert (=> b!2683613 m!3053117))

(assert (=> b!2683613 m!3053111))

(assert (=> b!2683613 m!3053111))

(assert (=> b!2683613 m!3053115))

(declare-fun m!3053119 () Bool)

(assert (=> b!2683612 m!3053119))

(declare-fun m!3053121 () Bool)

(assert (=> b!2683612 m!3053121))

(declare-fun m!3053123 () Bool)

(assert (=> b!2683608 m!3053123))

(declare-fun m!3053125 () Bool)

(assert (=> b!2683608 m!3053125))

(assert (=> b!2683329 d!766969))

(declare-fun d!766971 () Bool)

(declare-fun e!1692249 () Bool)

(assert (=> d!766971 e!1692249))

(declare-fun res!1127866 () Bool)

(assert (=> d!766971 (=> (not res!1127866) (not e!1692249))))

(declare-fun prepend!1064 (Conc!9696 Token!8932) Conc!9696)

(assert (=> d!766971 (= res!1127866 (isBalanced!2933 (prepend!1064 (c!432119 (_1!17827 lt!945915)) (_1!17832 (v!32796 lt!945933)))))))

(declare-fun lt!946258 () BalanceConc!19006)

(assert (=> d!766971 (= lt!946258 (BalanceConc!19007 (prepend!1064 (c!432119 (_1!17827 lt!945915)) (_1!17832 (v!32796 lt!945933)))))))

(assert (=> d!766971 (= (prepend!1063 (_1!17827 lt!945915) (_1!17832 (v!32796 lt!945933))) lt!946258)))

(declare-fun b!2683617 () Bool)

(assert (=> b!2683617 (= e!1692249 (= (list!11695 lt!946258) (Cons!30996 (_1!17832 (v!32796 lt!945933)) (list!11695 (_1!17827 lt!945915)))))))

(assert (= (and d!766971 res!1127866) b!2683617))

(declare-fun m!3053127 () Bool)

(assert (=> d!766971 m!3053127))

(assert (=> d!766971 m!3053127))

(declare-fun m!3053129 () Bool)

(assert (=> d!766971 m!3053129))

(declare-fun m!3053131 () Bool)

(assert (=> b!2683617 m!3053131))

(declare-fun m!3053133 () Bool)

(assert (=> b!2683617 m!3053133))

(assert (=> b!2683329 d!766971))

(declare-fun d!766973 () Bool)

(declare-fun c!432194 () Bool)

(assert (=> d!766973 (= c!432194 ((_ is Node!9696) (c!432119 acc!348)))))

(declare-fun e!1692254 () Bool)

(assert (=> d!766973 (= (inv!42027 (c!432119 acc!348)) e!1692254)))

(declare-fun b!2683624 () Bool)

(declare-fun inv!42028 (Conc!9696) Bool)

(assert (=> b!2683624 (= e!1692254 (inv!42028 (c!432119 acc!348)))))

(declare-fun b!2683625 () Bool)

(declare-fun e!1692255 () Bool)

(assert (=> b!2683625 (= e!1692254 e!1692255)))

(declare-fun res!1127869 () Bool)

(assert (=> b!2683625 (= res!1127869 (not ((_ is Leaf!14807) (c!432119 acc!348))))))

(assert (=> b!2683625 (=> res!1127869 e!1692255)))

(declare-fun b!2683626 () Bool)

(declare-fun inv!42029 (Conc!9696) Bool)

(assert (=> b!2683626 (= e!1692255 (inv!42029 (c!432119 acc!348)))))

(assert (= (and d!766973 c!432194) b!2683624))

(assert (= (and d!766973 (not c!432194)) b!2683625))

(assert (= (and b!2683625 (not res!1127869)) b!2683626))

(declare-fun m!3053135 () Bool)

(assert (=> b!2683624 m!3053135))

(declare-fun m!3053137 () Bool)

(assert (=> b!2683626 m!3053137))

(assert (=> b!2683347 d!766973))

(declare-fun d!766975 () Bool)

(declare-fun validCacheMapUp!320 (MutableMap!3404) Bool)

(assert (=> d!766975 (= (valid!2707 (_2!17833 lt!945930)) (validCacheMapUp!320 (cache!3547 (_2!17833 lt!945930))))))

(declare-fun bs!480246 () Bool)

(assert (= bs!480246 d!766975))

(declare-fun m!3053139 () Bool)

(assert (=> bs!480246 m!3053139))

(assert (=> b!2683330 d!766975))

(declare-fun d!766977 () Bool)

(declare-fun e!1692256 () Bool)

(assert (=> d!766977 e!1692256))

(declare-fun res!1127870 () Bool)

(assert (=> d!766977 (=> (not res!1127870) (not e!1692256))))

(assert (=> d!766977 (= res!1127870 (isBalanced!2933 (append!759 (c!432119 acc!348) (_1!17832 (v!32796 (_1!17833 lt!945930))))))))

(declare-fun lt!946259 () BalanceConc!19006)

(assert (=> d!766977 (= lt!946259 (BalanceConc!19007 (append!759 (c!432119 acc!348) (_1!17832 (v!32796 (_1!17833 lt!945930))))))))

(assert (=> d!766977 (= (append!758 acc!348 (_1!17832 (v!32796 (_1!17833 lt!945930)))) lt!946259)))

(declare-fun b!2683627 () Bool)

(assert (=> b!2683627 (= e!1692256 (= (list!11695 lt!946259) ($colon+!164 (list!11695 acc!348) (_1!17832 (v!32796 (_1!17833 lt!945930))))))))

(assert (= (and d!766977 res!1127870) b!2683627))

(declare-fun m!3053141 () Bool)

(assert (=> d!766977 m!3053141))

(assert (=> d!766977 m!3053141))

(declare-fun m!3053143 () Bool)

(assert (=> d!766977 m!3053143))

(declare-fun m!3053145 () Bool)

(assert (=> b!2683627 m!3053145))

(assert (=> b!2683627 m!3052393))

(assert (=> b!2683627 m!3052393))

(declare-fun m!3053147 () Bool)

(assert (=> b!2683627 m!3053147))

(assert (=> b!2683330 d!766977))

(declare-fun d!766979 () Bool)

(declare-fun e!1692257 () Bool)

(assert (=> d!766979 e!1692257))

(declare-fun res!1127871 () Bool)

(assert (=> d!766979 (=> (not res!1127871) (not e!1692257))))

(assert (=> d!766979 (= res!1127871 (appendAssocInst!656 (c!432118 treated!26) (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930)))))))))

(declare-fun lt!946260 () BalanceConc!19004)

(assert (=> d!766979 (= lt!946260 (BalanceConc!19005 (++!7582 (c!432118 treated!26) (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))))))

(assert (=> d!766979 (= (++!7579 treated!26 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))) lt!946260)))

(declare-fun b!2683631 () Bool)

(assert (=> b!2683631 (= e!1692257 (= (list!11694 lt!946260) (++!7577 (list!11694 treated!26) (list!11694 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))))))

(declare-fun b!2683629 () Bool)

(declare-fun res!1127872 () Bool)

(assert (=> b!2683629 (=> (not res!1127872) (not e!1692257))))

(assert (=> b!2683629 (= res!1127872 (<= (height!1416 (++!7582 (c!432118 treated!26) (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) (+ (max!0 (height!1416 (c!432118 treated!26)) (height!1416 (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) 1)))))

(declare-fun b!2683630 () Bool)

(declare-fun res!1127873 () Bool)

(assert (=> b!2683630 (=> (not res!1127873) (not e!1692257))))

(assert (=> b!2683630 (= res!1127873 (>= (height!1416 (++!7582 (c!432118 treated!26) (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) (max!0 (height!1416 (c!432118 treated!26)) (height!1416 (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930)))))))))))

(declare-fun b!2683628 () Bool)

(declare-fun res!1127874 () Bool)

(assert (=> b!2683628 (=> (not res!1127874) (not e!1692257))))

(assert (=> b!2683628 (= res!1127874 (isBalanced!2934 (++!7582 (c!432118 treated!26) (c!432118 (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930))))))))))

(assert (= (and d!766979 res!1127871) b!2683628))

(assert (= (and b!2683628 res!1127874) b!2683629))

(assert (= (and b!2683629 res!1127872) b!2683630))

(assert (= (and b!2683630 res!1127873) b!2683631))

(declare-fun m!3053149 () Bool)

(assert (=> b!2683631 m!3053149))

(assert (=> b!2683631 m!3052531))

(assert (=> b!2683631 m!3052521))

(declare-fun m!3053151 () Bool)

(assert (=> b!2683631 m!3053151))

(assert (=> b!2683631 m!3052531))

(assert (=> b!2683631 m!3053151))

(declare-fun m!3053153 () Bool)

(assert (=> b!2683631 m!3053153))

(declare-fun m!3053155 () Bool)

(assert (=> b!2683628 m!3053155))

(assert (=> b!2683628 m!3053155))

(declare-fun m!3053157 () Bool)

(assert (=> b!2683628 m!3053157))

(declare-fun m!3053159 () Bool)

(assert (=> d!766979 m!3053159))

(assert (=> d!766979 m!3053155))

(assert (=> b!2683629 m!3052873))

(declare-fun m!3053161 () Bool)

(assert (=> b!2683629 m!3053161))

(declare-fun m!3053163 () Bool)

(assert (=> b!2683629 m!3053163))

(assert (=> b!2683629 m!3052873))

(assert (=> b!2683629 m!3053155))

(assert (=> b!2683629 m!3053155))

(declare-fun m!3053165 () Bool)

(assert (=> b!2683629 m!3053165))

(assert (=> b!2683629 m!3053161))

(assert (=> b!2683630 m!3052873))

(assert (=> b!2683630 m!3053161))

(assert (=> b!2683630 m!3053163))

(assert (=> b!2683630 m!3052873))

(assert (=> b!2683630 m!3053155))

(assert (=> b!2683630 m!3053155))

(assert (=> b!2683630 m!3053165))

(assert (=> b!2683630 m!3053161))

(assert (=> b!2683330 d!766979))

(declare-fun d!766981 () Bool)

(declare-fun lt!946261 () BalanceConc!19004)

(assert (=> d!766981 (= (list!11694 lt!946261) (originalCharacters!5497 (_1!17832 (v!32796 (_1!17833 lt!945930)))))))

(assert (=> d!766981 (= lt!946261 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 (_1!17833 lt!945930)))))) (value!152505 (_1!17832 (v!32796 (_1!17833 lt!945930))))))))

(assert (=> d!766981 (= (charsOf!2982 (_1!17832 (v!32796 (_1!17833 lt!945930)))) lt!946261)))

(declare-fun b_lambda!81899 () Bool)

(assert (=> (not b_lambda!81899) (not d!766981)))

(declare-fun t!224617 () Bool)

(declare-fun tb!150603 () Bool)

(assert (=> (and b!2683319 (= (toChars!6546 (transformation!4733 (h!36420 rules!1381))) (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) t!224617) tb!150603))

(declare-fun b!2683632 () Bool)

(declare-fun e!1692258 () Bool)

(declare-fun tp!849305 () Bool)

(assert (=> b!2683632 (= e!1692258 (and (inv!42022 (c!432118 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 (_1!17833 lt!945930)))))) (value!152505 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) tp!849305))))

(declare-fun result!186014 () Bool)

(assert (=> tb!150603 (= result!186014 (and (inv!42023 (dynLambda!13429 (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 (_1!17833 lt!945930)))))) (value!152505 (_1!17832 (v!32796 (_1!17833 lt!945930)))))) e!1692258))))

(assert (= tb!150603 b!2683632))

(declare-fun m!3053167 () Bool)

(assert (=> b!2683632 m!3053167))

(declare-fun m!3053169 () Bool)

(assert (=> tb!150603 m!3053169))

(assert (=> d!766981 t!224617))

(declare-fun b_and!198721 () Bool)

(assert (= b_and!198719 (and (=> t!224617 result!186014) b_and!198721)))

(declare-fun m!3053171 () Bool)

(assert (=> d!766981 m!3053171))

(declare-fun m!3053173 () Bool)

(assert (=> d!766981 m!3053173))

(assert (=> b!2683330 d!766981))

(declare-fun d!766983 () Bool)

(assert (=> d!766983 (= (valid!2706 cacheDown!499) (validCacheMapDown!351 (cache!3548 cacheDown!499)))))

(declare-fun bs!480247 () Bool)

(assert (= bs!480247 d!766983))

(declare-fun m!3053175 () Bool)

(assert (=> bs!480247 m!3053175))

(assert (=> b!2683345 d!766983))

(declare-fun d!766985 () Bool)

(declare-fun e!1692259 () Bool)

(assert (=> d!766985 e!1692259))

(declare-fun res!1127875 () Bool)

(assert (=> d!766985 (=> (not res!1127875) (not e!1692259))))

(assert (=> d!766985 (= res!1127875 (isBalanced!2933 (prepend!1064 (c!432119 (_1!17827 lt!945914)) (_1!17832 (v!32796 lt!945931)))))))

(declare-fun lt!946262 () BalanceConc!19006)

(assert (=> d!766985 (= lt!946262 (BalanceConc!19007 (prepend!1064 (c!432119 (_1!17827 lt!945914)) (_1!17832 (v!32796 lt!945931)))))))

(assert (=> d!766985 (= (prepend!1063 (_1!17827 lt!945914) (_1!17832 (v!32796 lt!945931))) lt!946262)))

(declare-fun b!2683633 () Bool)

(assert (=> b!2683633 (= e!1692259 (= (list!11695 lt!946262) (Cons!30996 (_1!17832 (v!32796 lt!945931)) (list!11695 (_1!17827 lt!945914)))))))

(assert (= (and d!766985 res!1127875) b!2683633))

(declare-fun m!3053177 () Bool)

(assert (=> d!766985 m!3053177))

(assert (=> d!766985 m!3053177))

(declare-fun m!3053179 () Bool)

(assert (=> d!766985 m!3053179))

(declare-fun m!3053181 () Bool)

(assert (=> b!2683633 m!3053181))

(assert (=> b!2683633 m!3052481))

(assert (=> b!2683346 d!766985))

(declare-fun d!766987 () Bool)

(assert (=> d!766987 (= (list!11694 (_2!17827 lt!945919)) (list!11697 (c!432118 (_2!17827 lt!945919))))))

(declare-fun bs!480248 () Bool)

(assert (= bs!480248 d!766987))

(declare-fun m!3053183 () Bool)

(assert (=> bs!480248 m!3053183))

(assert (=> b!2683327 d!766987))

(declare-fun d!766989 () Bool)

(assert (=> d!766989 (= (list!11694 (_2!17827 lt!945920)) (list!11697 (c!432118 (_2!17827 lt!945920))))))

(declare-fun bs!480249 () Bool)

(assert (= bs!480249 d!766989))

(declare-fun m!3053185 () Bool)

(assert (=> bs!480249 m!3053185))

(assert (=> b!2683327 d!766989))

(declare-fun d!766991 () Bool)

(assert (=> d!766991 (= (list!11695 acc!348) (list!11696 (c!432119 acc!348)))))

(declare-fun bs!480250 () Bool)

(assert (= bs!480250 d!766991))

(declare-fun m!3053187 () Bool)

(assert (=> bs!480250 m!3053187))

(assert (=> b!2683325 d!766991))

(declare-fun d!766993 () Bool)

(assert (=> d!766993 (= (list!11695 (_1!17827 lt!945929)) (list!11696 (c!432119 (_1!17827 lt!945929))))))

(declare-fun bs!480251 () Bool)

(assert (= bs!480251 d!766993))

(declare-fun m!3053189 () Bool)

(assert (=> bs!480251 m!3053189))

(assert (=> b!2683325 d!766993))

(declare-fun b!2683634 () Bool)

(declare-fun e!1692263 () Bool)

(declare-fun e!1692261 () Bool)

(assert (=> b!2683634 (= e!1692263 e!1692261)))

(declare-fun res!1127876 () Bool)

(declare-fun lt!946264 () tuple2!30502)

(assert (=> b!2683634 (= res!1127876 (< (size!23941 (_2!17827 lt!946264)) (size!23941 treated!26)))))

(assert (=> b!2683634 (=> (not res!1127876) (not e!1692261))))

(declare-fun b!2683635 () Bool)

(assert (=> b!2683635 (= e!1692261 (not (isEmpty!17693 (_1!17827 lt!946264))))))

(declare-fun b!2683636 () Bool)

(declare-fun e!1692260 () tuple2!30502)

(assert (=> b!2683636 (= e!1692260 (tuple2!30503 (BalanceConc!19007 Empty!9696) treated!26))))

(declare-fun b!2683637 () Bool)

(declare-fun e!1692262 () Bool)

(assert (=> b!2683637 (= e!1692262 (= (list!11694 (_2!17827 lt!946264)) (_2!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 treated!26)))))))

(declare-fun d!766995 () Bool)

(assert (=> d!766995 e!1692262))

(declare-fun res!1127878 () Bool)

(assert (=> d!766995 (=> (not res!1127878) (not e!1692262))))

(assert (=> d!766995 (= res!1127878 e!1692263)))

(declare-fun c!432196 () Bool)

(assert (=> d!766995 (= c!432196 (> (size!23942 (_1!17827 lt!946264)) 0))))

(assert (=> d!766995 (= lt!946264 e!1692260)))

(declare-fun c!432195 () Bool)

(declare-fun lt!946263 () Option!6122)

(assert (=> d!766995 (= c!432195 ((_ is Some!6121) lt!946263))))

(assert (=> d!766995 (= lt!946263 (maxPrefixZipperSequence!994 thiss!12257 rules!1381 treated!26))))

(assert (=> d!766995 (= (lexRec!592 thiss!12257 rules!1381 treated!26) lt!946264)))

(declare-fun b!2683638 () Bool)

(declare-fun lt!946265 () tuple2!30502)

(assert (=> b!2683638 (= e!1692260 (tuple2!30503 (prepend!1063 (_1!17827 lt!946265) (_1!17832 (v!32796 lt!946263))) (_2!17827 lt!946265)))))

(assert (=> b!2683638 (= lt!946265 (lexRec!592 thiss!12257 rules!1381 (_2!17832 (v!32796 lt!946263))))))

(declare-fun b!2683639 () Bool)

(declare-fun res!1127877 () Bool)

(assert (=> b!2683639 (=> (not res!1127877) (not e!1692262))))

(assert (=> b!2683639 (= res!1127877 (= (list!11695 (_1!17827 lt!946264)) (_1!17834 (lexList!1186 thiss!12257 rules!1381 (list!11694 treated!26)))))))

(declare-fun b!2683640 () Bool)

(assert (=> b!2683640 (= e!1692263 (= (list!11694 (_2!17827 lt!946264)) (list!11694 treated!26)))))

(assert (= (and d!766995 c!432195) b!2683638))

(assert (= (and d!766995 (not c!432195)) b!2683636))

(assert (= (and d!766995 c!432196) b!2683634))

(assert (= (and d!766995 (not c!432196)) b!2683640))

(assert (= (and b!2683634 res!1127876) b!2683635))

(assert (= (and d!766995 res!1127878) b!2683639))

(assert (= (and b!2683639 res!1127877) b!2683637))

(declare-fun m!3053191 () Bool)

(assert (=> d!766995 m!3053191))

(declare-fun m!3053193 () Bool)

(assert (=> d!766995 m!3053193))

(declare-fun m!3053195 () Bool)

(assert (=> b!2683640 m!3053195))

(assert (=> b!2683640 m!3052531))

(declare-fun m!3053197 () Bool)

(assert (=> b!2683635 m!3053197))

(assert (=> b!2683637 m!3053195))

(assert (=> b!2683637 m!3052531))

(assert (=> b!2683637 m!3052531))

(declare-fun m!3053199 () Bool)

(assert (=> b!2683637 m!3053199))

(declare-fun m!3053201 () Bool)

(assert (=> b!2683639 m!3053201))

(assert (=> b!2683639 m!3052531))

(assert (=> b!2683639 m!3052531))

(assert (=> b!2683639 m!3053199))

(declare-fun m!3053203 () Bool)

(assert (=> b!2683638 m!3053203))

(declare-fun m!3053205 () Bool)

(assert (=> b!2683638 m!3053205))

(declare-fun m!3053207 () Bool)

(assert (=> b!2683634 m!3053207))

(declare-fun m!3053209 () Bool)

(assert (=> b!2683634 m!3053209))

(assert (=> b!2683325 d!766995))

(declare-fun d!766997 () Bool)

(declare-fun c!432199 () Bool)

(assert (=> d!766997 (= c!432199 ((_ is Node!9695) (c!432118 totalInput!354)))))

(declare-fun e!1692268 () Bool)

(assert (=> d!766997 (= (inv!42022 (c!432118 totalInput!354)) e!1692268)))

(declare-fun b!2683647 () Bool)

(declare-fun inv!42030 (Conc!9695) Bool)

(assert (=> b!2683647 (= e!1692268 (inv!42030 (c!432118 totalInput!354)))))

(declare-fun b!2683648 () Bool)

(declare-fun e!1692269 () Bool)

(assert (=> b!2683648 (= e!1692268 e!1692269)))

(declare-fun res!1127881 () Bool)

(assert (=> b!2683648 (= res!1127881 (not ((_ is Leaf!14806) (c!432118 totalInput!354))))))

(assert (=> b!2683648 (=> res!1127881 e!1692269)))

(declare-fun b!2683649 () Bool)

(declare-fun inv!42031 (Conc!9695) Bool)

(assert (=> b!2683649 (= e!1692269 (inv!42031 (c!432118 totalInput!354)))))

(assert (= (and d!766997 c!432199) b!2683647))

(assert (= (and d!766997 (not c!432199)) b!2683648))

(assert (= (and b!2683648 (not res!1127881)) b!2683649))

(declare-fun m!3053211 () Bool)

(assert (=> b!2683647 m!3053211))

(declare-fun m!3053213 () Bool)

(assert (=> b!2683649 m!3053213))

(assert (=> b!2683326 d!766997))

(declare-fun d!766999 () Bool)

(assert (=> d!766999 (= (isEmpty!17692 rules!1381) ((_ is Nil!31000) rules!1381))))

(assert (=> b!2683352 d!766999))

(declare-fun d!767001 () Bool)

(assert (=> d!767001 (= (inv!42023 input!780) (isBalanced!2934 (c!432118 input!780)))))

(declare-fun bs!480252 () Bool)

(assert (= bs!480252 d!767001))

(declare-fun m!3053215 () Bool)

(assert (=> bs!480252 m!3053215))

(assert (=> start!261288 d!767001))

(declare-fun d!767003 () Bool)

(assert (=> d!767003 (= (inv!42023 treated!26) (isBalanced!2934 (c!432118 treated!26)))))

(declare-fun bs!480253 () Bool)

(assert (= bs!480253 d!767003))

(declare-fun m!3053217 () Bool)

(assert (=> bs!480253 m!3053217))

(assert (=> start!261288 d!767003))

(declare-fun d!767005 () Bool)

(declare-fun res!1127884 () Bool)

(declare-fun e!1692272 () Bool)

(assert (=> d!767005 (=> (not res!1127884) (not e!1692272))))

(assert (=> d!767005 (= res!1127884 ((_ is HashMap!3404) (cache!3547 cacheUp!486)))))

(assert (=> d!767005 (= (inv!42024 cacheUp!486) e!1692272)))

(declare-fun b!2683652 () Bool)

(assert (=> b!2683652 (= e!1692272 (validCacheMapUp!320 (cache!3547 cacheUp!486)))))

(assert (= (and d!767005 res!1127884) b!2683652))

(declare-fun m!3053219 () Bool)

(assert (=> b!2683652 m!3053219))

(assert (=> start!261288 d!767005))

(declare-fun d!767007 () Bool)

(declare-fun res!1127887 () Bool)

(declare-fun e!1692275 () Bool)

(assert (=> d!767007 (=> (not res!1127887) (not e!1692275))))

(assert (=> d!767007 (= res!1127887 ((_ is HashMap!3405) (cache!3548 cacheDown!499)))))

(assert (=> d!767007 (= (inv!42026 cacheDown!499) e!1692275)))

(declare-fun b!2683655 () Bool)

(assert (=> b!2683655 (= e!1692275 (validCacheMapDown!351 (cache!3548 cacheDown!499)))))

(assert (= (and d!767007 res!1127887) b!2683655))

(assert (=> b!2683655 m!3053175))

(assert (=> start!261288 d!767007))

(declare-fun d!767009 () Bool)

(assert (=> d!767009 (= (inv!42025 acc!348) (isBalanced!2933 (c!432119 acc!348)))))

(declare-fun bs!480254 () Bool)

(assert (= bs!480254 d!767009))

(declare-fun m!3053221 () Bool)

(assert (=> bs!480254 m!3053221))

(assert (=> start!261288 d!767009))

(declare-fun d!767011 () Bool)

(assert (=> d!767011 (= (inv!42023 totalInput!354) (isBalanced!2934 (c!432118 totalInput!354)))))

(declare-fun bs!480255 () Bool)

(assert (= bs!480255 d!767011))

(declare-fun m!3053223 () Bool)

(assert (=> bs!480255 m!3053223))

(assert (=> start!261288 d!767011))

(declare-fun d!767013 () Bool)

(declare-fun c!432200 () Bool)

(assert (=> d!767013 (= c!432200 ((_ is Node!9695) (c!432118 treated!26)))))

(declare-fun e!1692276 () Bool)

(assert (=> d!767013 (= (inv!42022 (c!432118 treated!26)) e!1692276)))

(declare-fun b!2683656 () Bool)

(assert (=> b!2683656 (= e!1692276 (inv!42030 (c!432118 treated!26)))))

(declare-fun b!2683657 () Bool)

(declare-fun e!1692277 () Bool)

(assert (=> b!2683657 (= e!1692276 e!1692277)))

(declare-fun res!1127888 () Bool)

(assert (=> b!2683657 (= res!1127888 (not ((_ is Leaf!14806) (c!432118 treated!26))))))

(assert (=> b!2683657 (=> res!1127888 e!1692277)))

(declare-fun b!2683658 () Bool)

(assert (=> b!2683658 (= e!1692277 (inv!42031 (c!432118 treated!26)))))

(assert (= (and d!767013 c!432200) b!2683656))

(assert (= (and d!767013 (not c!432200)) b!2683657))

(assert (= (and b!2683657 (not res!1127888)) b!2683658))

(declare-fun m!3053225 () Bool)

(assert (=> b!2683656 m!3053225))

(declare-fun m!3053227 () Bool)

(assert (=> b!2683658 m!3053227))

(assert (=> b!2683351 d!767013))

(declare-fun d!767015 () Bool)

(declare-fun c!432201 () Bool)

(assert (=> d!767015 (= c!432201 ((_ is Node!9695) (c!432118 input!780)))))

(declare-fun e!1692278 () Bool)

(assert (=> d!767015 (= (inv!42022 (c!432118 input!780)) e!1692278)))

(declare-fun b!2683659 () Bool)

(assert (=> b!2683659 (= e!1692278 (inv!42030 (c!432118 input!780)))))

(declare-fun b!2683660 () Bool)

(declare-fun e!1692279 () Bool)

(assert (=> b!2683660 (= e!1692278 e!1692279)))

(declare-fun res!1127889 () Bool)

(assert (=> b!2683660 (= res!1127889 (not ((_ is Leaf!14806) (c!432118 input!780))))))

(assert (=> b!2683660 (=> res!1127889 e!1692279)))

(declare-fun b!2683661 () Bool)

(assert (=> b!2683661 (= e!1692279 (inv!42031 (c!432118 input!780)))))

(assert (= (and d!767015 c!432201) b!2683659))

(assert (= (and d!767015 (not c!432201)) b!2683660))

(assert (= (and b!2683660 (not res!1127889)) b!2683661))

(declare-fun m!3053229 () Bool)

(assert (=> b!2683659 m!3053229))

(declare-fun m!3053231 () Bool)

(assert (=> b!2683661 m!3053231))

(assert (=> b!2683349 d!767015))

(declare-fun d!767017 () Bool)

(assert (=> d!767017 (= (valid!2707 cacheUp!486) (validCacheMapUp!320 (cache!3547 cacheUp!486)))))

(declare-fun bs!480256 () Bool)

(assert (= bs!480256 d!767017))

(assert (=> bs!480256 m!3053219))

(assert (=> b!2683332 d!767017))

(declare-fun tp_is_empty!13843 () Bool)

(declare-fun tp!849331 () Bool)

(declare-fun e!1692297 () Bool)

(declare-fun mapDefault!16005 () List!31099)

(declare-fun e!1692295 () Bool)

(declare-fun tp!849338 () Bool)

(declare-fun b!2683676 () Bool)

(declare-fun setRes!21000 () Bool)

(declare-fun inv!42032 (Context!4318) Bool)

(assert (=> b!2683676 (= e!1692295 (and tp!849331 (inv!42032 (_2!17830 (_1!17831 (h!36419 mapDefault!16005)))) e!1692297 tp_is_empty!13843 setRes!21000 tp!849338))))

(declare-fun condSetEmpty!21000 () Bool)

(assert (=> b!2683676 (= condSetEmpty!21000 (= (_2!17831 (h!36419 mapDefault!16005)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun condMapEmpty!16005 () Bool)

(assert (=> mapNonEmpty!16002 (= condMapEmpty!16005 (= mapRest!16002 ((as const (Array (_ BitVec 32) List!31099)) mapDefault!16005)))))

(declare-fun mapRes!16005 () Bool)

(assert (=> mapNonEmpty!16002 (= tp!849294 (and e!1692295 mapRes!16005))))

(declare-fun b!2683677 () Bool)

(declare-fun e!1692293 () Bool)

(declare-fun tp!849329 () Bool)

(assert (=> b!2683677 (= e!1692293 tp!849329)))

(declare-fun setElem!20999 () Context!4318)

(declare-fun setNonEmpty!20999 () Bool)

(declare-fun e!1692292 () Bool)

(declare-fun tp!849337 () Bool)

(assert (=> setNonEmpty!20999 (= setRes!21000 (and tp!849337 (inv!42032 setElem!20999) e!1692292))))

(declare-fun setRest!20999 () (InoxSet Context!4318))

(assert (=> setNonEmpty!20999 (= (_2!17831 (h!36419 mapDefault!16005)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!20999 true) setRest!20999))))

(declare-fun mapNonEmpty!16005 () Bool)

(declare-fun tp!849328 () Bool)

(declare-fun e!1692294 () Bool)

(assert (=> mapNonEmpty!16005 (= mapRes!16005 (and tp!849328 e!1692294))))

(declare-fun mapValue!16005 () List!31099)

(declare-fun mapKey!16005 () (_ BitVec 32))

(declare-fun mapRest!16005 () (Array (_ BitVec 32) List!31099))

(assert (=> mapNonEmpty!16005 (= mapRest!16002 (store mapRest!16005 mapKey!16005 mapValue!16005))))

(declare-fun b!2683678 () Bool)

(declare-fun tp!849332 () Bool)

(assert (=> b!2683678 (= e!1692292 tp!849332)))

(declare-fun setIsEmpty!20999 () Bool)

(declare-fun setRes!20999 () Bool)

(assert (=> setIsEmpty!20999 setRes!20999))

(declare-fun tp!849335 () Bool)

(declare-fun tp!849333 () Bool)

(declare-fun e!1692296 () Bool)

(declare-fun b!2683679 () Bool)

(assert (=> b!2683679 (= e!1692294 (and tp!849333 (inv!42032 (_2!17830 (_1!17831 (h!36419 mapValue!16005)))) e!1692296 tp_is_empty!13843 setRes!20999 tp!849335))))

(declare-fun condSetEmpty!20999 () Bool)

(assert (=> b!2683679 (= condSetEmpty!20999 (= (_2!17831 (h!36419 mapValue!16005)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun tp!849336 () Bool)

(declare-fun setNonEmpty!21000 () Bool)

(declare-fun setElem!21000 () Context!4318)

(assert (=> setNonEmpty!21000 (= setRes!20999 (and tp!849336 (inv!42032 setElem!21000) e!1692293))))

(declare-fun setRest!21000 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21000 (= (_2!17831 (h!36419 mapValue!16005)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21000 true) setRest!21000))))

(declare-fun mapIsEmpty!16005 () Bool)

(assert (=> mapIsEmpty!16005 mapRes!16005))

(declare-fun b!2683680 () Bool)

(declare-fun tp!849330 () Bool)

(assert (=> b!2683680 (= e!1692296 tp!849330)))

(declare-fun b!2683681 () Bool)

(declare-fun tp!849334 () Bool)

(assert (=> b!2683681 (= e!1692297 tp!849334)))

(declare-fun setIsEmpty!21000 () Bool)

(assert (=> setIsEmpty!21000 setRes!21000))

(assert (= (and mapNonEmpty!16002 condMapEmpty!16005) mapIsEmpty!16005))

(assert (= (and mapNonEmpty!16002 (not condMapEmpty!16005)) mapNonEmpty!16005))

(assert (= b!2683679 b!2683680))

(assert (= (and b!2683679 condSetEmpty!20999) setIsEmpty!20999))

(assert (= (and b!2683679 (not condSetEmpty!20999)) setNonEmpty!21000))

(assert (= setNonEmpty!21000 b!2683677))

(assert (= (and mapNonEmpty!16005 ((_ is Cons!30999) mapValue!16005)) b!2683679))

(assert (= b!2683676 b!2683681))

(assert (= (and b!2683676 condSetEmpty!21000) setIsEmpty!21000))

(assert (= (and b!2683676 (not condSetEmpty!21000)) setNonEmpty!20999))

(assert (= setNonEmpty!20999 b!2683678))

(assert (= (and mapNonEmpty!16002 ((_ is Cons!30999) mapDefault!16005)) b!2683676))

(declare-fun m!3053233 () Bool)

(assert (=> mapNonEmpty!16005 m!3053233))

(declare-fun m!3053235 () Bool)

(assert (=> b!2683679 m!3053235))

(declare-fun m!3053237 () Bool)

(assert (=> setNonEmpty!21000 m!3053237))

(declare-fun m!3053239 () Bool)

(assert (=> setNonEmpty!20999 m!3053239))

(declare-fun m!3053241 () Bool)

(assert (=> b!2683676 m!3053241))

(declare-fun setIsEmpty!21003 () Bool)

(declare-fun setRes!21003 () Bool)

(assert (=> setIsEmpty!21003 setRes!21003))

(declare-fun e!1692305 () Bool)

(assert (=> mapNonEmpty!16002 (= tp!849285 e!1692305)))

(declare-fun b!2683690 () Bool)

(declare-fun e!1692306 () Bool)

(declare-fun tp!849351 () Bool)

(assert (=> b!2683690 (= e!1692306 tp!849351)))

(declare-fun setNonEmpty!21003 () Bool)

(declare-fun tp!849350 () Bool)

(declare-fun setElem!21003 () Context!4318)

(assert (=> setNonEmpty!21003 (= setRes!21003 (and tp!849350 (inv!42032 setElem!21003) e!1692306))))

(declare-fun setRest!21003 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21003 (= (_2!17831 (h!36419 mapValue!16002)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21003 true) setRest!21003))))

(declare-fun b!2683691 () Bool)

(declare-fun e!1692304 () Bool)

(declare-fun tp!849352 () Bool)

(assert (=> b!2683691 (= e!1692304 tp!849352)))

(declare-fun tp!849353 () Bool)

(declare-fun tp!849349 () Bool)

(declare-fun b!2683692 () Bool)

(assert (=> b!2683692 (= e!1692305 (and tp!849353 (inv!42032 (_2!17830 (_1!17831 (h!36419 mapValue!16002)))) e!1692304 tp_is_empty!13843 setRes!21003 tp!849349))))

(declare-fun condSetEmpty!21003 () Bool)

(assert (=> b!2683692 (= condSetEmpty!21003 (= (_2!17831 (h!36419 mapValue!16002)) ((as const (Array Context!4318 Bool)) false)))))

(assert (= b!2683692 b!2683691))

(assert (= (and b!2683692 condSetEmpty!21003) setIsEmpty!21003))

(assert (= (and b!2683692 (not condSetEmpty!21003)) setNonEmpty!21003))

(assert (= setNonEmpty!21003 b!2683690))

(assert (= (and mapNonEmpty!16002 ((_ is Cons!30999) mapValue!16002)) b!2683692))

(declare-fun m!3053243 () Bool)

(assert (=> setNonEmpty!21003 m!3053243))

(declare-fun m!3053245 () Bool)

(assert (=> b!2683692 m!3053245))

(declare-fun e!1692312 () Bool)

(declare-fun tp!849360 () Bool)

(declare-fun tp!849361 () Bool)

(declare-fun b!2683701 () Bool)

(assert (=> b!2683701 (= e!1692312 (and (inv!42027 (left!23928 (c!432119 acc!348))) tp!849361 (inv!42027 (right!24258 (c!432119 acc!348))) tp!849360))))

(declare-fun b!2683703 () Bool)

(declare-fun e!1692311 () Bool)

(declare-fun tp!849362 () Bool)

(assert (=> b!2683703 (= e!1692311 tp!849362)))

(declare-fun b!2683702 () Bool)

(declare-fun inv!42033 (IArray!19397) Bool)

(assert (=> b!2683702 (= e!1692312 (and (inv!42033 (xs!12726 (c!432119 acc!348))) e!1692311))))

(assert (=> b!2683347 (= tp!849282 (and (inv!42027 (c!432119 acc!348)) e!1692312))))

(assert (= (and b!2683347 ((_ is Node!9696) (c!432119 acc!348))) b!2683701))

(assert (= b!2683702 b!2683703))

(assert (= (and b!2683347 ((_ is Leaf!14807) (c!432119 acc!348))) b!2683702))

(declare-fun m!3053247 () Bool)

(assert (=> b!2683701 m!3053247))

(declare-fun m!3053249 () Bool)

(assert (=> b!2683701 m!3053249))

(declare-fun m!3053251 () Bool)

(assert (=> b!2683702 m!3053251))

(assert (=> b!2683347 m!3052441))

(declare-fun b!2683714 () Bool)

(declare-fun e!1692315 () Bool)

(assert (=> b!2683714 (= e!1692315 tp_is_empty!13843)))

(declare-fun b!2683717 () Bool)

(declare-fun tp!849377 () Bool)

(declare-fun tp!849374 () Bool)

(assert (=> b!2683717 (= e!1692315 (and tp!849377 tp!849374))))

(assert (=> b!2683317 (= tp!849280 e!1692315)))

(declare-fun b!2683715 () Bool)

(declare-fun tp!849375 () Bool)

(declare-fun tp!849373 () Bool)

(assert (=> b!2683715 (= e!1692315 (and tp!849375 tp!849373))))

(declare-fun b!2683716 () Bool)

(declare-fun tp!849376 () Bool)

(assert (=> b!2683716 (= e!1692315 tp!849376)))

(assert (= (and b!2683317 ((_ is ElementMatch!7885) (regex!4733 (h!36420 rules!1381)))) b!2683714))

(assert (= (and b!2683317 ((_ is Concat!12841) (regex!4733 (h!36420 rules!1381)))) b!2683715))

(assert (= (and b!2683317 ((_ is Star!7885) (regex!4733 (h!36420 rules!1381)))) b!2683716))

(assert (= (and b!2683317 ((_ is Union!7885) (regex!4733 (h!36420 rules!1381)))) b!2683717))

(declare-fun setIsEmpty!21004 () Bool)

(declare-fun setRes!21004 () Bool)

(assert (=> setIsEmpty!21004 setRes!21004))

(declare-fun e!1692317 () Bool)

(assert (=> b!2683318 (= tp!849299 e!1692317)))

(declare-fun b!2683718 () Bool)

(declare-fun e!1692318 () Bool)

(declare-fun tp!849380 () Bool)

(assert (=> b!2683718 (= e!1692318 tp!849380)))

(declare-fun setElem!21004 () Context!4318)

(declare-fun tp!849379 () Bool)

(declare-fun setNonEmpty!21004 () Bool)

(assert (=> setNonEmpty!21004 (= setRes!21004 (and tp!849379 (inv!42032 setElem!21004) e!1692318))))

(declare-fun setRest!21004 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21004 (= (_2!17831 (h!36419 mapDefault!16001)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21004 true) setRest!21004))))

(declare-fun b!2683719 () Bool)

(declare-fun e!1692316 () Bool)

(declare-fun tp!849381 () Bool)

(assert (=> b!2683719 (= e!1692316 tp!849381)))

(declare-fun tp!849382 () Bool)

(declare-fun b!2683720 () Bool)

(declare-fun tp!849378 () Bool)

(assert (=> b!2683720 (= e!1692317 (and tp!849382 (inv!42032 (_2!17830 (_1!17831 (h!36419 mapDefault!16001)))) e!1692316 tp_is_empty!13843 setRes!21004 tp!849378))))

(declare-fun condSetEmpty!21004 () Bool)

(assert (=> b!2683720 (= condSetEmpty!21004 (= (_2!17831 (h!36419 mapDefault!16001)) ((as const (Array Context!4318 Bool)) false)))))

(assert (= b!2683720 b!2683719))

(assert (= (and b!2683720 condSetEmpty!21004) setIsEmpty!21004))

(assert (= (and b!2683720 (not condSetEmpty!21004)) setNonEmpty!21004))

(assert (= setNonEmpty!21004 b!2683718))

(assert (= (and b!2683318 ((_ is Cons!30999) mapDefault!16001)) b!2683720))

(declare-fun m!3053253 () Bool)

(assert (=> setNonEmpty!21004 m!3053253))

(declare-fun m!3053255 () Bool)

(assert (=> b!2683720 m!3053255))

(declare-fun setIsEmpty!21009 () Bool)

(declare-fun setRes!21009 () Bool)

(assert (=> setIsEmpty!21009 setRes!21009))

(declare-fun mapNonEmpty!16008 () Bool)

(declare-fun mapRes!16008 () Bool)

(declare-fun tp!849405 () Bool)

(declare-fun e!1692335 () Bool)

(assert (=> mapNonEmpty!16008 (= mapRes!16008 (and tp!849405 e!1692335))))

(declare-fun mapRest!16008 () (Array (_ BitVec 32) List!31098))

(declare-fun mapKey!16008 () (_ BitVec 32))

(declare-fun mapValue!16008 () List!31098)

(assert (=> mapNonEmpty!16008 (= mapRest!16001 (store mapRest!16008 mapKey!16008 mapValue!16008))))

(declare-fun mapIsEmpty!16008 () Bool)

(assert (=> mapIsEmpty!16008 mapRes!16008))

(declare-fun condMapEmpty!16008 () Bool)

(declare-fun mapDefault!16008 () List!31098)

(assert (=> mapNonEmpty!16001 (= condMapEmpty!16008 (= mapRest!16001 ((as const (Array (_ BitVec 32) List!31098)) mapDefault!16008)))))

(declare-fun e!1692332 () Bool)

(assert (=> mapNonEmpty!16001 (= tp!849291 (and e!1692332 mapRes!16008))))

(declare-fun b!2683735 () Bool)

(declare-fun e!1692331 () Bool)

(declare-fun tp!849404 () Bool)

(assert (=> b!2683735 (= e!1692332 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 mapDefault!16008)))) e!1692331 tp_is_empty!13843 setRes!21009 tp!849404))))

(declare-fun condSetEmpty!21010 () Bool)

(assert (=> b!2683735 (= condSetEmpty!21010 (= (_2!17829 (h!36418 mapDefault!16008)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun setIsEmpty!21010 () Bool)

(declare-fun setRes!21010 () Bool)

(assert (=> setIsEmpty!21010 setRes!21010))

(declare-fun b!2683736 () Bool)

(declare-fun tp!849407 () Bool)

(assert (=> b!2683736 (= e!1692331 tp!849407)))

(declare-fun b!2683737 () Bool)

(declare-fun e!1692336 () Bool)

(declare-fun tp!849402 () Bool)

(assert (=> b!2683737 (= e!1692336 tp!849402)))

(declare-fun tp!849408 () Bool)

(declare-fun setElem!21009 () Context!4318)

(declare-fun setNonEmpty!21009 () Bool)

(assert (=> setNonEmpty!21009 (= setRes!21010 (and tp!849408 (inv!42032 setElem!21009) e!1692336))))

(declare-fun setRest!21009 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21009 (= (_2!17829 (h!36418 mapValue!16008)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21009 true) setRest!21009))))

(declare-fun e!1692334 () Bool)

(declare-fun tp!849401 () Bool)

(declare-fun b!2683738 () Bool)

(assert (=> b!2683738 (= e!1692335 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 mapValue!16008)))) e!1692334 tp_is_empty!13843 setRes!21010 tp!849401))))

(declare-fun condSetEmpty!21009 () Bool)

(assert (=> b!2683738 (= condSetEmpty!21009 (= (_2!17829 (h!36418 mapValue!16008)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun b!2683739 () Bool)

(declare-fun tp!849406 () Bool)

(assert (=> b!2683739 (= e!1692334 tp!849406)))

(declare-fun setElem!21010 () Context!4318)

(declare-fun tp!849409 () Bool)

(declare-fun e!1692333 () Bool)

(declare-fun setNonEmpty!21010 () Bool)

(assert (=> setNonEmpty!21010 (= setRes!21009 (and tp!849409 (inv!42032 setElem!21010) e!1692333))))

(declare-fun setRest!21010 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21010 (= (_2!17829 (h!36418 mapDefault!16008)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21010 true) setRest!21010))))

(declare-fun b!2683740 () Bool)

(declare-fun tp!849403 () Bool)

(assert (=> b!2683740 (= e!1692333 tp!849403)))

(assert (= (and mapNonEmpty!16001 condMapEmpty!16008) mapIsEmpty!16008))

(assert (= (and mapNonEmpty!16001 (not condMapEmpty!16008)) mapNonEmpty!16008))

(assert (= b!2683738 b!2683739))

(assert (= (and b!2683738 condSetEmpty!21009) setIsEmpty!21010))

(assert (= (and b!2683738 (not condSetEmpty!21009)) setNonEmpty!21009))

(assert (= setNonEmpty!21009 b!2683737))

(assert (= (and mapNonEmpty!16008 ((_ is Cons!30998) mapValue!16008)) b!2683738))

(assert (= b!2683735 b!2683736))

(assert (= (and b!2683735 condSetEmpty!21010) setIsEmpty!21009))

(assert (= (and b!2683735 (not condSetEmpty!21010)) setNonEmpty!21010))

(assert (= setNonEmpty!21010 b!2683740))

(assert (= (and mapNonEmpty!16001 ((_ is Cons!30998) mapDefault!16008)) b!2683735))

(declare-fun m!3053257 () Bool)

(assert (=> setNonEmpty!21010 m!3053257))

(declare-fun m!3053259 () Bool)

(assert (=> b!2683738 m!3053259))

(declare-fun m!3053261 () Bool)

(assert (=> setNonEmpty!21009 m!3053261))

(declare-fun m!3053263 () Bool)

(assert (=> b!2683735 m!3053263))

(declare-fun m!3053265 () Bool)

(assert (=> mapNonEmpty!16008 m!3053265))

(declare-fun e!1692345 () Bool)

(declare-fun e!1692343 () Bool)

(declare-fun b!2683749 () Bool)

(declare-fun setRes!21013 () Bool)

(declare-fun tp!849418 () Bool)

(assert (=> b!2683749 (= e!1692343 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 mapValue!16001)))) e!1692345 tp_is_empty!13843 setRes!21013 tp!849418))))

(declare-fun condSetEmpty!21013 () Bool)

(assert (=> b!2683749 (= condSetEmpty!21013 (= (_2!17829 (h!36418 mapValue!16001)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun b!2683750 () Bool)

(declare-fun e!1692344 () Bool)

(declare-fun tp!849421 () Bool)

(assert (=> b!2683750 (= e!1692344 tp!849421)))

(declare-fun setIsEmpty!21013 () Bool)

(assert (=> setIsEmpty!21013 setRes!21013))

(declare-fun setElem!21013 () Context!4318)

(declare-fun tp!849420 () Bool)

(declare-fun setNonEmpty!21013 () Bool)

(assert (=> setNonEmpty!21013 (= setRes!21013 (and tp!849420 (inv!42032 setElem!21013) e!1692344))))

(declare-fun setRest!21013 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21013 (= (_2!17829 (h!36418 mapValue!16001)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21013 true) setRest!21013))))

(assert (=> mapNonEmpty!16001 (= tp!849281 e!1692343)))

(declare-fun b!2683751 () Bool)

(declare-fun tp!849419 () Bool)

(assert (=> b!2683751 (= e!1692345 tp!849419)))

(assert (= b!2683749 b!2683751))

(assert (= (and b!2683749 condSetEmpty!21013) setIsEmpty!21013))

(assert (= (and b!2683749 (not condSetEmpty!21013)) setNonEmpty!21013))

(assert (= setNonEmpty!21013 b!2683750))

(assert (= (and mapNonEmpty!16001 ((_ is Cons!30998) mapValue!16001)) b!2683749))

(declare-fun m!3053267 () Bool)

(assert (=> b!2683749 m!3053267))

(declare-fun m!3053269 () Bool)

(assert (=> setNonEmpty!21013 m!3053269))

(declare-fun e!1692346 () Bool)

(declare-fun e!1692348 () Bool)

(declare-fun setRes!21014 () Bool)

(declare-fun b!2683752 () Bool)

(declare-fun tp!849422 () Bool)

(assert (=> b!2683752 (= e!1692346 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 mapDefault!16002)))) e!1692348 tp_is_empty!13843 setRes!21014 tp!849422))))

(declare-fun condSetEmpty!21014 () Bool)

(assert (=> b!2683752 (= condSetEmpty!21014 (= (_2!17829 (h!36418 mapDefault!16002)) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun b!2683753 () Bool)

(declare-fun e!1692347 () Bool)

(declare-fun tp!849425 () Bool)

(assert (=> b!2683753 (= e!1692347 tp!849425)))

(declare-fun setIsEmpty!21014 () Bool)

(assert (=> setIsEmpty!21014 setRes!21014))

(declare-fun setElem!21014 () Context!4318)

(declare-fun tp!849424 () Bool)

(declare-fun setNonEmpty!21014 () Bool)

(assert (=> setNonEmpty!21014 (= setRes!21014 (and tp!849424 (inv!42032 setElem!21014) e!1692347))))

(declare-fun setRest!21014 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21014 (= (_2!17829 (h!36418 mapDefault!16002)) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21014 true) setRest!21014))))

(assert (=> b!2683315 (= tp!849284 e!1692346)))

(declare-fun b!2683754 () Bool)

(declare-fun tp!849423 () Bool)

(assert (=> b!2683754 (= e!1692348 tp!849423)))

(assert (= b!2683752 b!2683754))

(assert (= (and b!2683752 condSetEmpty!21014) setIsEmpty!21014))

(assert (= (and b!2683752 (not condSetEmpty!21014)) setNonEmpty!21014))

(assert (= setNonEmpty!21014 b!2683753))

(assert (= (and b!2683315 ((_ is Cons!30998) mapDefault!16002)) b!2683752))

(declare-fun m!3053271 () Bool)

(assert (=> b!2683752 m!3053271))

(declare-fun m!3053273 () Bool)

(assert (=> setNonEmpty!21014 m!3053273))

(declare-fun b!2683763 () Bool)

(declare-fun e!1692354 () Bool)

(declare-fun tp!849433 () Bool)

(declare-fun tp!849432 () Bool)

(assert (=> b!2683763 (= e!1692354 (and (inv!42022 (left!23927 (c!432118 totalInput!354))) tp!849432 (inv!42022 (right!24257 (c!432118 totalInput!354))) tp!849433))))

(declare-fun b!2683765 () Bool)

(declare-fun e!1692353 () Bool)

(declare-fun tp!849434 () Bool)

(assert (=> b!2683765 (= e!1692353 tp!849434)))

(declare-fun b!2683764 () Bool)

(declare-fun inv!42034 (IArray!19395) Bool)

(assert (=> b!2683764 (= e!1692354 (and (inv!42034 (xs!12725 (c!432118 totalInput!354))) e!1692353))))

(assert (=> b!2683326 (= tp!849287 (and (inv!42022 (c!432118 totalInput!354)) e!1692354))))

(assert (= (and b!2683326 ((_ is Node!9695) (c!432118 totalInput!354))) b!2683763))

(assert (= b!2683764 b!2683765))

(assert (= (and b!2683326 ((_ is Leaf!14806) (c!432118 totalInput!354))) b!2683764))

(declare-fun m!3053275 () Bool)

(assert (=> b!2683763 m!3053275))

(declare-fun m!3053277 () Bool)

(assert (=> b!2683763 m!3053277))

(declare-fun m!3053279 () Bool)

(assert (=> b!2683764 m!3053279))

(assert (=> b!2683326 m!3052391))

(declare-fun e!1692357 () Bool)

(declare-fun setRes!21015 () Bool)

(declare-fun e!1692355 () Bool)

(declare-fun tp!849435 () Bool)

(declare-fun b!2683766 () Bool)

(assert (=> b!2683766 (= e!1692355 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 (zeroValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))))) e!1692357 tp_is_empty!13843 setRes!21015 tp!849435))))

(declare-fun condSetEmpty!21015 () Bool)

(assert (=> b!2683766 (= condSetEmpty!21015 (= (_2!17829 (h!36418 (zeroValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun b!2683767 () Bool)

(declare-fun e!1692356 () Bool)

(declare-fun tp!849438 () Bool)

(assert (=> b!2683767 (= e!1692356 tp!849438)))

(declare-fun setIsEmpty!21015 () Bool)

(assert (=> setIsEmpty!21015 setRes!21015))

(declare-fun setElem!21015 () Context!4318)

(declare-fun setNonEmpty!21015 () Bool)

(declare-fun tp!849437 () Bool)

(assert (=> setNonEmpty!21015 (= setRes!21015 (and tp!849437 (inv!42032 setElem!21015) e!1692356))))

(declare-fun setRest!21015 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21015 (= (_2!17829 (h!36418 (zeroValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21015 true) setRest!21015))))

(assert (=> b!2683324 (= tp!849290 e!1692355)))

(declare-fun b!2683768 () Bool)

(declare-fun tp!849436 () Bool)

(assert (=> b!2683768 (= e!1692357 tp!849436)))

(assert (= b!2683766 b!2683768))

(assert (= (and b!2683766 condSetEmpty!21015) setIsEmpty!21015))

(assert (= (and b!2683766 (not condSetEmpty!21015)) setNonEmpty!21015))

(assert (= setNonEmpty!21015 b!2683767))

(assert (= (and b!2683324 ((_ is Cons!30998) (zeroValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) b!2683766))

(declare-fun m!3053281 () Bool)

(assert (=> b!2683766 m!3053281))

(declare-fun m!3053283 () Bool)

(assert (=> setNonEmpty!21015 m!3053283))

(declare-fun b!2683769 () Bool)

(declare-fun e!1692360 () Bool)

(declare-fun tp!849439 () Bool)

(declare-fun setRes!21016 () Bool)

(declare-fun e!1692358 () Bool)

(assert (=> b!2683769 (= e!1692358 (and (inv!42032 (_1!17828 (_1!17829 (h!36418 (minValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))))) e!1692360 tp_is_empty!13843 setRes!21016 tp!849439))))

(declare-fun condSetEmpty!21016 () Bool)

(assert (=> b!2683769 (= condSetEmpty!21016 (= (_2!17829 (h!36418 (minValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) ((as const (Array Context!4318 Bool)) false)))))

(declare-fun b!2683770 () Bool)

(declare-fun e!1692359 () Bool)

(declare-fun tp!849442 () Bool)

(assert (=> b!2683770 (= e!1692359 tp!849442)))

(declare-fun setIsEmpty!21016 () Bool)

(assert (=> setIsEmpty!21016 setRes!21016))

(declare-fun setNonEmpty!21016 () Bool)

(declare-fun setElem!21016 () Context!4318)

(declare-fun tp!849441 () Bool)

(assert (=> setNonEmpty!21016 (= setRes!21016 (and tp!849441 (inv!42032 setElem!21016) e!1692359))))

(declare-fun setRest!21016 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21016 (= (_2!17829 (h!36418 (minValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21016 true) setRest!21016))))

(assert (=> b!2683324 (= tp!849292 e!1692358)))

(declare-fun b!2683771 () Bool)

(declare-fun tp!849440 () Bool)

(assert (=> b!2683771 (= e!1692360 tp!849440)))

(assert (= b!2683769 b!2683771))

(assert (= (and b!2683769 condSetEmpty!21016) setIsEmpty!21016))

(assert (= (and b!2683769 (not condSetEmpty!21016)) setNonEmpty!21016))

(assert (= setNonEmpty!21016 b!2683770))

(assert (= (and b!2683324 ((_ is Cons!30998) (minValue!3757 (v!32794 (underlying!7199 (v!32795 (underlying!7200 (cache!3547 cacheUp!486)))))))) b!2683769))

(declare-fun m!3053285 () Bool)

(assert (=> b!2683769 m!3053285))

(declare-fun m!3053287 () Bool)

(assert (=> setNonEmpty!21016 m!3053287))

(declare-fun b!2683782 () Bool)

(declare-fun b_free!75917 () Bool)

(declare-fun b_next!76621 () Bool)

(assert (=> b!2683782 (= b_free!75917 (not b_next!76621))))

(declare-fun tp!849452 () Bool)

(declare-fun b_and!198723 () Bool)

(assert (=> b!2683782 (= tp!849452 b_and!198723)))

(declare-fun b_free!75919 () Bool)

(declare-fun b_next!76623 () Bool)

(assert (=> b!2683782 (= b_free!75919 (not b_next!76623))))

(declare-fun tb!150605 () Bool)

(declare-fun t!224619 () Bool)

(assert (=> (and b!2683782 (= (toChars!6546 (transformation!4733 (h!36420 (t!224613 rules!1381)))) (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 lt!945931)))))) t!224619) tb!150605))

(declare-fun result!186032 () Bool)

(assert (= result!186032 result!186010))

(assert (=> d!766929 t!224619))

(declare-fun tb!150607 () Bool)

(declare-fun t!224621 () Bool)

(assert (=> (and b!2683782 (= (toChars!6546 (transformation!4733 (h!36420 (t!224613 rules!1381)))) (toChars!6546 (transformation!4733 (rule!7143 (_1!17832 (v!32796 (_1!17833 lt!945930))))))) t!224621) tb!150607))

(declare-fun result!186034 () Bool)

(assert (= result!186034 result!186014))

(assert (=> d!766981 t!224621))

(declare-fun tp!849454 () Bool)

(declare-fun b_and!198725 () Bool)

(assert (=> b!2683782 (= tp!849454 (and (=> t!224619 result!186032) (=> t!224621 result!186034) b_and!198725))))

(declare-fun e!1692372 () Bool)

(assert (=> b!2683782 (= e!1692372 (and tp!849452 tp!849454))))

(declare-fun e!1692371 () Bool)

(declare-fun b!2683781 () Bool)

(declare-fun tp!849453 () Bool)

(assert (=> b!2683781 (= e!1692371 (and tp!849453 (inv!42018 (tag!5237 (h!36420 (t!224613 rules!1381)))) (inv!42021 (transformation!4733 (h!36420 (t!224613 rules!1381)))) e!1692372))))

(declare-fun b!2683780 () Bool)

(declare-fun e!1692370 () Bool)

(declare-fun tp!849451 () Bool)

(assert (=> b!2683780 (= e!1692370 (and e!1692371 tp!849451))))

(assert (=> b!2683333 (= tp!849293 e!1692370)))

(assert (= b!2683781 b!2683782))

(assert (= b!2683780 b!2683781))

(assert (= (and b!2683333 ((_ is Cons!31000) (t!224613 rules!1381))) b!2683780))

(declare-fun m!3053289 () Bool)

(assert (=> b!2683781 m!3053289))

(declare-fun m!3053291 () Bool)

(assert (=> b!2683781 m!3053291))

(declare-fun tp!849456 () Bool)

(declare-fun e!1692374 () Bool)

(declare-fun b!2683783 () Bool)

(declare-fun tp!849455 () Bool)

(assert (=> b!2683783 (= e!1692374 (and (inv!42022 (left!23927 (c!432118 treated!26))) tp!849455 (inv!42022 (right!24257 (c!432118 treated!26))) tp!849456))))

(declare-fun b!2683785 () Bool)

(declare-fun e!1692373 () Bool)

(declare-fun tp!849457 () Bool)

(assert (=> b!2683785 (= e!1692373 tp!849457)))

(declare-fun b!2683784 () Bool)

(assert (=> b!2683784 (= e!1692374 (and (inv!42034 (xs!12725 (c!432118 treated!26))) e!1692373))))

(assert (=> b!2683351 (= tp!849300 (and (inv!42022 (c!432118 treated!26)) e!1692374))))

(assert (= (and b!2683351 ((_ is Node!9695) (c!432118 treated!26))) b!2683783))

(assert (= b!2683784 b!2683785))

(assert (= (and b!2683351 ((_ is Leaf!14806) (c!432118 treated!26))) b!2683784))

(declare-fun m!3053293 () Bool)

(assert (=> b!2683783 m!3053293))

(declare-fun m!3053295 () Bool)

(assert (=> b!2683783 m!3053295))

(declare-fun m!3053297 () Bool)

(assert (=> b!2683784 m!3053297))

(assert (=> b!2683351 m!3052447))

(declare-fun tp!849459 () Bool)

(declare-fun tp!849458 () Bool)

(declare-fun e!1692376 () Bool)

(declare-fun b!2683786 () Bool)

(assert (=> b!2683786 (= e!1692376 (and (inv!42022 (left!23927 (c!432118 input!780))) tp!849458 (inv!42022 (right!24257 (c!432118 input!780))) tp!849459))))

(declare-fun b!2683788 () Bool)

(declare-fun e!1692375 () Bool)

(declare-fun tp!849460 () Bool)

(assert (=> b!2683788 (= e!1692375 tp!849460)))

(declare-fun b!2683787 () Bool)

(assert (=> b!2683787 (= e!1692376 (and (inv!42034 (xs!12725 (c!432118 input!780))) e!1692375))))

(assert (=> b!2683349 (= tp!849289 (and (inv!42022 (c!432118 input!780)) e!1692376))))

(assert (= (and b!2683349 ((_ is Node!9695) (c!432118 input!780))) b!2683786))

(assert (= b!2683787 b!2683788))

(assert (= (and b!2683349 ((_ is Leaf!14806) (c!432118 input!780))) b!2683787))

(declare-fun m!3053299 () Bool)

(assert (=> b!2683786 m!3053299))

(declare-fun m!3053301 () Bool)

(assert (=> b!2683786 m!3053301))

(declare-fun m!3053303 () Bool)

(assert (=> b!2683787 m!3053303))

(assert (=> b!2683349 m!3052431))

(declare-fun setIsEmpty!21017 () Bool)

(declare-fun setRes!21017 () Bool)

(assert (=> setIsEmpty!21017 setRes!21017))

(declare-fun e!1692378 () Bool)

(assert (=> b!2683340 (= tp!849288 e!1692378)))

(declare-fun b!2683789 () Bool)

(declare-fun e!1692379 () Bool)

(declare-fun tp!849463 () Bool)

(assert (=> b!2683789 (= e!1692379 tp!849463)))

(declare-fun tp!849462 () Bool)

(declare-fun setElem!21017 () Context!4318)

(declare-fun setNonEmpty!21017 () Bool)

(assert (=> setNonEmpty!21017 (= setRes!21017 (and tp!849462 (inv!42032 setElem!21017) e!1692379))))

(declare-fun setRest!21017 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21017 (= (_2!17831 (h!36419 (zeroValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21017 true) setRest!21017))))

(declare-fun b!2683790 () Bool)

(declare-fun e!1692377 () Bool)

(declare-fun tp!849464 () Bool)

(assert (=> b!2683790 (= e!1692377 tp!849464)))

(declare-fun tp!849461 () Bool)

(declare-fun b!2683791 () Bool)

(declare-fun tp!849465 () Bool)

(assert (=> b!2683791 (= e!1692378 (and tp!849465 (inv!42032 (_2!17830 (_1!17831 (h!36419 (zeroValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))))) e!1692377 tp_is_empty!13843 setRes!21017 tp!849461))))

(declare-fun condSetEmpty!21017 () Bool)

(assert (=> b!2683791 (= condSetEmpty!21017 (= (_2!17831 (h!36419 (zeroValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) ((as const (Array Context!4318 Bool)) false)))))

(assert (= b!2683791 b!2683790))

(assert (= (and b!2683791 condSetEmpty!21017) setIsEmpty!21017))

(assert (= (and b!2683791 (not condSetEmpty!21017)) setNonEmpty!21017))

(assert (= setNonEmpty!21017 b!2683789))

(assert (= (and b!2683340 ((_ is Cons!30999) (zeroValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) b!2683791))

(declare-fun m!3053305 () Bool)

(assert (=> setNonEmpty!21017 m!3053305))

(declare-fun m!3053307 () Bool)

(assert (=> b!2683791 m!3053307))

(declare-fun setIsEmpty!21018 () Bool)

(declare-fun setRes!21018 () Bool)

(assert (=> setIsEmpty!21018 setRes!21018))

(declare-fun e!1692381 () Bool)

(assert (=> b!2683340 (= tp!849286 e!1692381)))

(declare-fun b!2683792 () Bool)

(declare-fun e!1692382 () Bool)

(declare-fun tp!849468 () Bool)

(assert (=> b!2683792 (= e!1692382 tp!849468)))

(declare-fun setNonEmpty!21018 () Bool)

(declare-fun setElem!21018 () Context!4318)

(declare-fun tp!849467 () Bool)

(assert (=> setNonEmpty!21018 (= setRes!21018 (and tp!849467 (inv!42032 setElem!21018) e!1692382))))

(declare-fun setRest!21018 () (InoxSet Context!4318))

(assert (=> setNonEmpty!21018 (= (_2!17831 (h!36419 (minValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4318 Bool)) false) setElem!21018 true) setRest!21018))))

(declare-fun b!2683793 () Bool)

(declare-fun e!1692380 () Bool)

(declare-fun tp!849469 () Bool)

(assert (=> b!2683793 (= e!1692380 tp!849469)))

(declare-fun tp!849466 () Bool)

(declare-fun b!2683794 () Bool)

(declare-fun tp!849470 () Bool)

(assert (=> b!2683794 (= e!1692381 (and tp!849470 (inv!42032 (_2!17830 (_1!17831 (h!36419 (minValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))))) e!1692380 tp_is_empty!13843 setRes!21018 tp!849466))))

(declare-fun condSetEmpty!21018 () Bool)

(assert (=> b!2683794 (= condSetEmpty!21018 (= (_2!17831 (h!36419 (minValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) ((as const (Array Context!4318 Bool)) false)))))

(assert (= b!2683794 b!2683793))

(assert (= (and b!2683794 condSetEmpty!21018) setIsEmpty!21018))

(assert (= (and b!2683794 (not condSetEmpty!21018)) setNonEmpty!21018))

(assert (= setNonEmpty!21018 b!2683792))

(assert (= (and b!2683340 ((_ is Cons!30999) (minValue!3758 (v!32797 (underlying!7201 (v!32798 (underlying!7202 (cache!3548 cacheDown!499)))))))) b!2683794))

(declare-fun m!3053309 () Bool)

(assert (=> setNonEmpty!21018 m!3053309))

(declare-fun m!3053311 () Bool)

(assert (=> b!2683794 m!3053311))

(check-sat (not b!2683375) (not b!2683573) (not b!2683509) (not b!2683658) b_and!198713 (not b!2683596) (not b!2683593) (not b!2683701) (not d!766959) (not b!2683522) tp_is_empty!13843 (not b!2683768) (not b!2683428) (not d!766901) (not b!2683716) (not b!2683450) (not b!2683794) (not d!766933) (not b!2683605) (not d!766895) (not d!766981) (not d!766927) (not b!2683764) (not b!2683647) (not b!2683634) (not b!2683719) (not d!766961) (not b!2683446) (not b!2683751) (not b_next!76615) (not d!766969) (not d!767011) (not b!2683614) (not b!2683557) (not b_next!76611) (not b!2683387) (not b!2683467) (not b!2683406) (not d!766921) (not d!766905) (not b_next!76619) (not b!2683749) (not b!2683422) (not b!2683404) (not d!767017) (not b!2683718) (not b!2683505) (not d!767003) (not b!2683506) (not bm!172781) (not b!2683677) (not b!2683386) (not b!2683750) (not d!766875) (not b!2683631) (not d!766953) (not d!766947) (not b!2683652) (not b!2683632) (not b!2683470) (not d!766987) (not b!2683526) (not d!766977) (not b!2683371) (not b!2683599) (not b!2683507) (not b!2683468) (not mapNonEmpty!16005) (not d!766943) (not b!2683392) (not b!2683715) (not b!2683720) (not b!2683370) (not b!2683611) (not d!766925) (not b!2683627) (not b!2683656) (not b!2683661) (not b!2683395) b_and!198721 (not b_next!76617) (not b!2683590) (not b!2683740) (not b!2683637) (not b!2683739) (not b!2683559) (not b!2683763) (not b!2683524) (not d!766929) (not d!766923) (not b!2683628) (not b!2683585) (not d!766937) (not b!2683633) (not b!2683355) (not b_next!76623) (not b!2683349) (not b!2683769) (not setNonEmpty!21010) (not b!2683508) (not d!766889) b_and!198725 (not b!2683781) (not b!2683780) (not d!766939) (not bm!172780) (not b!2683351) (not setNonEmpty!21004) (not b!2683765) (not b!2683538) (not b!2683385) (not b!2683609) (not b!2683613) (not b!2683501) (not setNonEmpty!21013) (not setNonEmpty!21016) (not b_next!76613) (not d!766965) (not b!2683469) (not d!766891) (not b!2683770) (not d!766907) (not b!2683784) (not b!2683789) (not d!766919) (not b!2683579) (not d!766883) (not b!2683575) (not b!2683394) (not b!2683735) (not b!2683537) (not b!2683617) (not b!2683447) (not b!2683564) (not d!766877) (not b!2683490) (not b!2683736) (not bm!172777) (not b!2683374) (not b!2683536) (not d!766935) (not d!766915) (not tb!150601) (not b!2683608) (not b!2683549) (not b!2683587) (not d!767009) (not tb!150603) (not b!2683753) (not b!2683591) (not b!2683676) (not b!2683486) (not d!766991) (not b!2683680) (not b!2683570) (not b!2683445) (not b!2683792) (not b!2683393) (not b!2683601) (not d!766963) (not d!766995) (not d!766913) (not b!2683560) (not b!2683787) (not d!766975) (not b!2683752) b_and!198707 b_and!198715 (not b!2683572) (not b!2683553) (not b!2683552) (not b!2683595) (not b!2683635) (not setNonEmpty!21017) (not b!2683640) (not d!766917) (not b!2683347) (not b!2683586) (not b_next!76609) (not b!2683511) (not b!2683678) (not b!2683376) (not b!2683649) (not b!2683785) (not b!2683767) (not b!2683448) (not b!2683502) (not d!766903) b_and!198717 (not setNonEmpty!21000) (not b!2683639) (not b!2683535) (not b!2683626) (not b!2683581) (not b!2683790) (not b!2683583) (not setNonEmpty!21003) (not d!766885) (not b!2683485) b_and!198723 (not b!2683578) (not d!767001) (not b!2683659) (not b!2683791) (not b!2683389) (not d!766967) (not b!2683754) (not b!2683449) (not d!766881) (not b!2683629) (not setNonEmpty!21009) (not b!2683702) (not d!766993) (not b!2683602) (not d!766985) (not b!2683786) (not b!2683488) (not d!766979) (not d!766941) (not b!2683655) (not b!2683690) (not b!2683788) (not b!2683424) (not b!2683638) (not b!2683582) (not b!2683612) (not b!2683405) (not b!2683390) b_and!198711 (not d!766911) (not b!2683388) (not setNonEmpty!20999) (not b!2683563) (not b!2683425) (not mapNonEmpty!16008) (not b!2683783) (not b!2683681) (not b!2683576) (not b!2683703) (not d!766909) (not d!766931) (not b!2683455) (not b!2683630) (not d!766951) (not b!2683326) (not b!2683504) (not d!766983) (not b!2683580) (not d!766971) (not setNonEmpty!21018) (not b!2683588) (not b!2683624) (not b!2683738) (not b_lambda!81899) (not d!766887) (not d!766989) (not b!2683771) (not b_lambda!81897) (not b!2683548) (not b!2683452) (not b!2683373) (not d!766879) (not d!766945) (not b!2683717) (not b_next!76621) (not b!2683793) (not b!2683679) (not d!766949) (not b!2683766) (not setNonEmpty!21015) (not b!2683606) (not setNonEmpty!21014) (not b!2683737) (not b!2683691) (not b!2683692))
(check-sat b_and!198713 (not b_next!76615) (not b_next!76611) (not b_next!76619) (not b_next!76623) b_and!198725 (not b_next!76613) (not b_next!76609) b_and!198717 b_and!198723 b_and!198711 (not b_next!76621) (not b_next!76617) b_and!198721 b_and!198707 b_and!198715)
