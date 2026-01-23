; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261124 () Bool)

(assert start!261124)

(declare-fun b!2681090 () Bool)

(declare-fun b_free!75753 () Bool)

(declare-fun b_next!76457 () Bool)

(assert (=> b!2681090 (= b_free!75753 (not b_next!76457))))

(declare-fun tp!848172 () Bool)

(declare-fun b_and!198549 () Bool)

(assert (=> b!2681090 (= tp!848172 b_and!198549)))

(declare-fun b!2681121 () Bool)

(declare-fun b_free!75755 () Bool)

(declare-fun b_next!76459 () Bool)

(assert (=> b!2681121 (= b_free!75755 (not b_next!76459))))

(declare-fun tp!848158 () Bool)

(declare-fun b_and!198551 () Bool)

(assert (=> b!2681121 (= tp!848158 b_and!198551)))

(declare-fun b!2681089 () Bool)

(declare-fun b_free!75757 () Bool)

(declare-fun b_next!76461 () Bool)

(assert (=> b!2681089 (= b_free!75757 (not b_next!76461))))

(declare-fun tp!848155 () Bool)

(declare-fun b_and!198553 () Bool)

(assert (=> b!2681089 (= tp!848155 b_and!198553)))

(declare-fun b_free!75759 () Bool)

(declare-fun b_next!76463 () Bool)

(assert (=> b!2681089 (= b_free!75759 (not b_next!76463))))

(declare-fun tp!848156 () Bool)

(declare-fun b_and!198555 () Bool)

(assert (=> b!2681089 (= tp!848156 b_and!198555)))

(declare-fun b!2681105 () Bool)

(declare-fun b_free!75761 () Bool)

(declare-fun b_next!76465 () Bool)

(assert (=> b!2681105 (= b_free!75761 (not b_next!76465))))

(declare-fun tp!848170 () Bool)

(declare-fun b_and!198557 () Bool)

(assert (=> b!2681105 (= tp!848170 b_and!198557)))

(declare-fun b!2681102 () Bool)

(declare-fun b_free!75763 () Bool)

(declare-fun b_next!76467 () Bool)

(assert (=> b!2681102 (= b_free!75763 (not b_next!76467))))

(declare-fun tp!848171 () Bool)

(declare-fun b_and!198559 () Bool)

(assert (=> b!2681102 (= tp!848171 b_and!198559)))

(declare-fun b!2681087 () Bool)

(declare-fun res!1126956 () Bool)

(declare-fun e!1690331 () Bool)

(assert (=> b!2681087 (=> (not res!1126956) (not e!1690331))))

(declare-datatypes ((LexerInterface!4318 0))(
  ( (LexerInterfaceExt!4315 (__x!19795 Int)) (Lexer!4316) )
))
(declare-fun thiss!12257 () LexerInterface!4318)

(declare-datatypes ((List!31014 0))(
  ( (Nil!30914) (Cons!30914 (h!36334 (_ BitVec 16)) (t!224515 List!31014)) )
))
(declare-datatypes ((TokenValue!4944 0))(
  ( (FloatLiteralValue!9888 (text!35053 List!31014)) (TokenValueExt!4943 (__x!19796 Int)) (Broken!24720 (value!152164 List!31014)) (Object!5043) (End!4944) (Def!4944) (Underscore!4944) (Match!4944) (Else!4944) (Error!4944) (Case!4944) (If!4944) (Extends!4944) (Abstract!4944) (Class!4944) (Val!4944) (DelimiterValue!9888 (del!5004 List!31014)) (KeywordValue!4950 (value!152165 List!31014)) (CommentValue!9888 (value!152166 List!31014)) (WhitespaceValue!9888 (value!152167 List!31014)) (IndentationValue!4944 (value!152168 List!31014)) (String!34617) (Int32!4944) (Broken!24721 (value!152169 List!31014)) (Boolean!4945) (Unit!45079) (OperatorValue!4947 (op!5004 List!31014)) (IdentifierValue!9888 (value!152170 List!31014)) (IdentifierValue!9889 (value!152171 List!31014)) (WhitespaceValue!9889 (value!152172 List!31014)) (True!9888) (False!9888) (Broken!24722 (value!152173 List!31014)) (Broken!24723 (value!152174 List!31014)) (True!9889) (RightBrace!4944) (RightBracket!4944) (Colon!4944) (Null!4944) (Comma!4944) (LeftBracket!4944) (False!9889) (LeftBrace!4944) (ImaginaryLiteralValue!4944 (text!35054 List!31014)) (StringLiteralValue!14832 (value!152175 List!31014)) (EOFValue!4944 (value!152176 List!31014)) (IdentValue!4944 (value!152177 List!31014)) (DelimiterValue!9889 (value!152178 List!31014)) (DedentValue!4944 (value!152179 List!31014)) (NewLineValue!4944 (value!152180 List!31014)) (IntegerValue!14832 (value!152181 (_ BitVec 32)) (text!35055 List!31014)) (IntegerValue!14833 (value!152182 Int) (text!35056 List!31014)) (Times!4944) (Or!4944) (Equal!4944) (Minus!4944) (Broken!24724 (value!152183 List!31014)) (And!4944) (Div!4944) (LessEqual!4944) (Mod!4944) (Concat!12817) (Not!4944) (Plus!4944) (SpaceValue!4944 (value!152184 List!31014)) (IntegerValue!14834 (value!152185 Int) (text!35057 List!31014)) (StringLiteralValue!14833 (text!35058 List!31014)) (FloatLiteralValue!9889 (text!35059 List!31014)) (BytesLiteralValue!4944 (value!152186 List!31014)) (CommentValue!9889 (value!152187 List!31014)) (StringLiteralValue!14834 (value!152188 List!31014)) (ErrorTokenValue!4944 (msg!5005 List!31014)) )
))
(declare-datatypes ((C!15904 0))(
  ( (C!15905 (val!9886 Int)) )
))
(declare-datatypes ((Regex!7873 0))(
  ( (ElementMatch!7873 (c!431838 C!15904)) (Concat!12818 (regOne!16258 Regex!7873) (regTwo!16258 Regex!7873)) (EmptyExpr!7873) (Star!7873 (reg!8202 Regex!7873)) (EmptyLang!7873) (Union!7873 (regOne!16259 Regex!7873) (regTwo!16259 Regex!7873)) )
))
(declare-datatypes ((List!31015 0))(
  ( (Nil!30915) (Cons!30915 (h!36335 C!15904) (t!224516 List!31015)) )
))
(declare-datatypes ((IArray!19351 0))(
  ( (IArray!19352 (innerList!9733 List!31015)) )
))
(declare-datatypes ((Conc!9673 0))(
  ( (Node!9673 (left!23897 Conc!9673) (right!24227 Conc!9673) (csize!19576 Int) (cheight!9884 Int)) (Leaf!14778 (xs!12703 IArray!19351) (csize!19577 Int)) (Empty!9673) )
))
(declare-datatypes ((BalanceConc!18960 0))(
  ( (BalanceConc!18961 (c!431839 Conc!9673)) )
))
(declare-datatypes ((TokenValueInjection!9328 0))(
  ( (TokenValueInjection!9329 (toValue!6676 Int) (toChars!6535 Int)) )
))
(declare-datatypes ((String!34618 0))(
  ( (String!34619 (value!152189 String)) )
))
(declare-datatypes ((Rule!9244 0))(
  ( (Rule!9245 (regex!4722 Regex!7873) (tag!5226 String!34618) (isSeparator!4722 Bool) (transformation!4722 TokenValueInjection!9328)) )
))
(declare-datatypes ((List!31016 0))(
  ( (Nil!30916) (Cons!30916 (h!36336 Rule!9244) (t!224517 List!31016)) )
))
(declare-fun rules!1381 () List!31016)

(declare-fun rulesInvariant!3815 (LexerInterface!4318 List!31016) Bool)

(assert (=> b!2681087 (= res!1126956 (rulesInvariant!3815 thiss!12257 rules!1381))))

(declare-fun b!2681088 () Bool)

(declare-fun e!1690354 () Bool)

(declare-fun e!1690328 () Bool)

(assert (=> b!2681088 (= e!1690354 e!1690328)))

(declare-fun e!1690327 () Bool)

(assert (=> b!2681089 (= e!1690327 (and tp!848155 tp!848156))))

(declare-fun res!1126953 () Bool)

(assert (=> start!261124 (=> (not res!1126953) (not e!1690331))))

(get-info :version)

(assert (=> start!261124 (= res!1126953 ((_ is Lexer!4316) thiss!12257))))

(assert (=> start!261124 e!1690331))

(declare-fun totalInput!354 () BalanceConc!18960)

(declare-fun e!1690336 () Bool)

(declare-fun inv!41937 (BalanceConc!18960) Bool)

(assert (=> start!261124 (and (inv!41937 totalInput!354) e!1690336)))

(declare-datatypes ((List!31017 0))(
  ( (Nil!30917) (Cons!30917 (h!36337 Regex!7873) (t!224518 List!31017)) )
))
(declare-datatypes ((Context!4294 0))(
  ( (Context!4295 (exprs!2647 List!31017)) )
))
(declare-datatypes ((tuple2!30380 0))(
  ( (tuple2!30381 (_1!17749 Context!4294) (_2!17749 C!15904)) )
))
(declare-datatypes ((array!12393 0))(
  ( (array!12394 (arr!5538 (Array (_ BitVec 32) (_ BitVec 64))) (size!23884 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30382 0))(
  ( (tuple2!30383 (_1!17750 tuple2!30380) (_2!17750 (InoxSet Context!4294))) )
))
(declare-datatypes ((List!31018 0))(
  ( (Nil!30918) (Cons!30918 (h!36338 tuple2!30382) (t!224519 List!31018)) )
))
(declare-datatypes ((array!12395 0))(
  ( (array!12396 (arr!5539 (Array (_ BitVec 32) List!31018)) (size!23885 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3392 0))(
  ( (HashableExt!3391 (__x!19797 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6952 0))(
  ( (LongMapFixedSize!6953 (defaultEntry!3861 Int) (mask!9149 (_ BitVec 32)) (extraKeys!3725 (_ BitVec 32)) (zeroValue!3735 List!31018) (minValue!3735 List!31018) (_size!6995 (_ BitVec 32)) (_keys!3776 array!12393) (_values!3757 array!12395) (_vacant!3537 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13713 0))(
  ( (Cell!13714 (v!32734 LongMapFixedSize!6952)) )
))
(declare-datatypes ((MutLongMap!3476 0))(
  ( (LongMap!3476 (underlying!7155 Cell!13713)) (MutLongMapExt!3475 (__x!19798 Int)) )
))
(declare-datatypes ((Cell!13715 0))(
  ( (Cell!13716 (v!32735 MutLongMap!3476)) )
))
(declare-datatypes ((MutableMap!3382 0))(
  ( (MutableMapExt!3381 (__x!19799 Int)) (HashMap!3382 (underlying!7156 Cell!13715) (hashF!5424 Hashable!3392) (_size!6996 (_ BitVec 32)) (defaultValue!3553 Int)) )
))
(declare-datatypes ((CacheUp!2094 0))(
  ( (CacheUp!2095 (cache!3525 MutableMap!3382)) )
))
(declare-fun cacheUp!486 () CacheUp!2094)

(declare-fun e!1690357 () Bool)

(declare-fun inv!41938 (CacheUp!2094) Bool)

(assert (=> start!261124 (and (inv!41938 cacheUp!486) e!1690357)))

(declare-datatypes ((Token!8910 0))(
  ( (Token!8911 (value!152190 TokenValue!4944) (rule!7132 Rule!9244) (size!23886 Int) (originalCharacters!5486 List!31015)) )
))
(declare-datatypes ((List!31019 0))(
  ( (Nil!30919) (Cons!30919 (h!36339 Token!8910) (t!224520 List!31019)) )
))
(declare-datatypes ((IArray!19353 0))(
  ( (IArray!19354 (innerList!9734 List!31019)) )
))
(declare-datatypes ((Conc!9674 0))(
  ( (Node!9674 (left!23898 Conc!9674) (right!24228 Conc!9674) (csize!19578 Int) (cheight!9885 Int)) (Leaf!14779 (xs!12704 IArray!19353) (csize!19579 Int)) (Empty!9674) )
))
(declare-datatypes ((BalanceConc!18962 0))(
  ( (BalanceConc!18963 (c!431840 Conc!9674)) )
))
(declare-fun acc!348 () BalanceConc!18962)

(declare-fun e!1690351 () Bool)

(declare-fun inv!41939 (BalanceConc!18962) Bool)

(assert (=> start!261124 (and (inv!41939 acc!348) e!1690351)))

(declare-fun input!780 () BalanceConc!18960)

(declare-fun e!1690332 () Bool)

(assert (=> start!261124 (and (inv!41937 input!780) e!1690332)))

(declare-fun treated!26 () BalanceConc!18960)

(declare-fun e!1690338 () Bool)

(assert (=> start!261124 (and (inv!41937 treated!26) e!1690338)))

(declare-fun e!1690337 () Bool)

(assert (=> start!261124 e!1690337))

(assert (=> start!261124 true))

(declare-datatypes ((tuple3!4178 0))(
  ( (tuple3!4179 (_1!17751 Regex!7873) (_2!17751 Context!4294) (_3!2559 C!15904)) )
))
(declare-datatypes ((tuple2!30384 0))(
  ( (tuple2!30385 (_1!17752 tuple3!4178) (_2!17752 (InoxSet Context!4294))) )
))
(declare-datatypes ((List!31020 0))(
  ( (Nil!30920) (Cons!30920 (h!36340 tuple2!30384) (t!224521 List!31020)) )
))
(declare-datatypes ((array!12397 0))(
  ( (array!12398 (arr!5540 (Array (_ BitVec 32) List!31020)) (size!23887 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6954 0))(
  ( (LongMapFixedSize!6955 (defaultEntry!3862 Int) (mask!9150 (_ BitVec 32)) (extraKeys!3726 (_ BitVec 32)) (zeroValue!3736 List!31020) (minValue!3736 List!31020) (_size!6997 (_ BitVec 32)) (_keys!3777 array!12393) (_values!3758 array!12397) (_vacant!3538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13717 0))(
  ( (Cell!13718 (v!32736 LongMapFixedSize!6954)) )
))
(declare-datatypes ((MutLongMap!3477 0))(
  ( (LongMap!3477 (underlying!7157 Cell!13717)) (MutLongMapExt!3476 (__x!19800 Int)) )
))
(declare-datatypes ((Cell!13719 0))(
  ( (Cell!13720 (v!32737 MutLongMap!3477)) )
))
(declare-datatypes ((Hashable!3393 0))(
  ( (HashableExt!3392 (__x!19801 Int)) )
))
(declare-datatypes ((MutableMap!3383 0))(
  ( (MutableMapExt!3382 (__x!19802 Int)) (HashMap!3383 (underlying!7158 Cell!13719) (hashF!5425 Hashable!3393) (_size!6998 (_ BitVec 32)) (defaultValue!3554 Int)) )
))
(declare-datatypes ((CacheDown!2202 0))(
  ( (CacheDown!2203 (cache!3526 MutableMap!3383)) )
))
(declare-fun cacheDown!499 () CacheDown!2202)

(declare-fun e!1690353 () Bool)

(declare-fun inv!41940 (CacheDown!2202) Bool)

(assert (=> start!261124 (and (inv!41940 cacheDown!499) e!1690353)))

(declare-fun e!1690350 () Bool)

(declare-fun e!1690344 () Bool)

(assert (=> b!2681090 (= e!1690350 (and e!1690344 tp!848172))))

(declare-fun b!2681091 () Bool)

(declare-fun res!1126954 () Bool)

(declare-fun e!1690346 () Bool)

(assert (=> b!2681091 (=> (not res!1126954) (not e!1690346))))

(declare-datatypes ((tuple2!30386 0))(
  ( (tuple2!30387 (_1!17753 BalanceConc!18962) (_2!17753 BalanceConc!18960)) )
))
(declare-fun lt!944365 () tuple2!30386)

(declare-fun isEmpty!17673 (List!31015) Bool)

(declare-fun list!11674 (BalanceConc!18960) List!31015)

(assert (=> b!2681091 (= res!1126954 (isEmpty!17673 (list!11674 (_2!17753 lt!944365))))))

(declare-fun b!2681092 () Bool)

(declare-fun e!1690348 () Bool)

(declare-fun e!1690356 () Bool)

(assert (=> b!2681092 (= e!1690348 e!1690356)))

(declare-fun b!2681093 () Bool)

(declare-fun res!1126960 () Bool)

(assert (=> b!2681093 (=> (not res!1126960) (not e!1690331))))

(declare-fun isEmpty!17674 (List!31016) Bool)

(assert (=> b!2681093 (= res!1126960 (not (isEmpty!17674 rules!1381)))))

(declare-fun mapIsEmpty!15917 () Bool)

(declare-fun mapRes!15918 () Bool)

(assert (=> mapIsEmpty!15917 mapRes!15918))

(declare-fun b!2681094 () Bool)

(declare-fun e!1690335 () Bool)

(assert (=> b!2681094 (= e!1690335 e!1690346)))

(declare-fun res!1126962 () Bool)

(assert (=> b!2681094 (=> (not res!1126962) (not e!1690346))))

(declare-fun lt!944363 () List!31019)

(declare-fun lt!944366 () List!31019)

(assert (=> b!2681094 (= res!1126962 (= lt!944363 lt!944366))))

(declare-fun list!11675 (BalanceConc!18962) List!31019)

(assert (=> b!2681094 (= lt!944366 (list!11675 acc!348))))

(assert (=> b!2681094 (= lt!944363 (list!11675 (_1!17753 lt!944365)))))

(declare-fun lexRec!585 (LexerInterface!4318 List!31016 BalanceConc!18960) tuple2!30386)

(assert (=> b!2681094 (= lt!944365 (lexRec!585 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2681095 () Bool)

(declare-fun e!1690333 () tuple2!30386)

(assert (=> b!2681095 (= e!1690333 (tuple2!30387 acc!348 input!780))))

(declare-fun e!1690340 () Bool)

(declare-fun b!2681096 () Bool)

(declare-fun tp!848164 () Bool)

(declare-fun inv!41934 (String!34618) Bool)

(declare-fun inv!41941 (TokenValueInjection!9328) Bool)

(assert (=> b!2681096 (= e!1690340 (and tp!848164 (inv!41934 (tag!5226 (h!36336 rules!1381))) (inv!41941 (transformation!4722 (h!36336 rules!1381))) e!1690327))))

(declare-fun b!2681097 () Bool)

(declare-fun tp!848152 () Bool)

(declare-fun inv!41942 (Conc!9673) Bool)

(assert (=> b!2681097 (= e!1690336 (and (inv!41942 (c!431839 totalInput!354)) tp!848152))))

(declare-fun b!2681098 () Bool)

(declare-fun e!1690329 () Bool)

(assert (=> b!2681098 (= e!1690329 (not true))))

(declare-fun lexTailRec!10 (LexerInterface!4318 List!31016 BalanceConc!18960 BalanceConc!18960 BalanceConc!18960 BalanceConc!18962) tuple2!30386)

(assert (=> b!2681098 (= (lexTailRec!10 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1690333)))

(declare-fun c!431837 () Bool)

(declare-datatypes ((tuple2!30388 0))(
  ( (tuple2!30389 (_1!17754 Token!8910) (_2!17754 BalanceConc!18960)) )
))
(declare-datatypes ((Option!6110 0))(
  ( (None!6109) (Some!6109 (v!32738 tuple2!30388)) )
))
(declare-fun lt!944371 () Option!6110)

(assert (=> b!2681098 (= c!431837 ((_ is Some!6109) lt!944371))))

(declare-fun maxPrefixZipperSequence!986 (LexerInterface!4318 List!31016 BalanceConc!18960) Option!6110)

(assert (=> b!2681098 (= lt!944371 (maxPrefixZipperSequence!986 thiss!12257 rules!1381 input!780))))

(declare-fun b!2681099 () Bool)

(declare-fun tp!848159 () Bool)

(assert (=> b!2681099 (= e!1690332 (and (inv!41942 (c!431839 input!780)) tp!848159))))

(declare-fun b!2681100 () Bool)

(declare-fun e!1690355 () Bool)

(declare-fun tp!848165 () Bool)

(declare-fun mapRes!15917 () Bool)

(assert (=> b!2681100 (= e!1690355 (and tp!848165 mapRes!15917))))

(declare-fun condMapEmpty!15917 () Bool)

(declare-fun mapDefault!15917 () List!31018)

(assert (=> b!2681100 (= condMapEmpty!15917 (= (arr!5539 (_values!3757 (v!32734 (underlying!7155 (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31018)) mapDefault!15917)))))

(declare-fun b!2681101 () Bool)

(declare-fun res!1126955 () Bool)

(assert (=> b!2681101 (=> (not res!1126955) (not e!1690329))))

(declare-fun lt!944358 () tuple2!30386)

(declare-fun lt!944353 () tuple2!30386)

(assert (=> b!2681101 (= res!1126955 (= (list!11674 (_2!17753 lt!944358)) (list!11674 (_2!17753 lt!944353))))))

(declare-fun e!1690330 () Bool)

(declare-fun e!1690341 () Bool)

(assert (=> b!2681102 (= e!1690330 (and e!1690341 tp!848171))))

(declare-fun b!2681103 () Bool)

(declare-fun e!1690345 () Bool)

(assert (=> b!2681103 (= e!1690345 e!1690348)))

(declare-fun b!2681104 () Bool)

(declare-fun e!1690339 () tuple2!30386)

(declare-fun lt!944351 () BalanceConc!18960)

(assert (=> b!2681104 (= e!1690339 (tuple2!30387 (BalanceConc!18963 Empty!9674) lt!944351))))

(declare-fun tp!848163 () Bool)

(declare-fun e!1690343 () Bool)

(declare-fun tp!848166 () Bool)

(declare-fun array_inv!3953 (array!12393) Bool)

(declare-fun array_inv!3954 (array!12395) Bool)

(assert (=> b!2681105 (= e!1690343 (and tp!848170 tp!848166 tp!848163 (array_inv!3953 (_keys!3776 (v!32734 (underlying!7155 (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))))) (array_inv!3954 (_values!3757 (v!32734 (underlying!7155 (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))))) e!1690355))))

(declare-fun lt!944352 () Option!6110)

(declare-fun lt!944356 () tuple2!30386)

(declare-fun b!2681106 () Bool)

(assert (=> b!2681106 (= lt!944356 (lexRec!585 thiss!12257 rules!1381 (_2!17754 (v!32738 lt!944352))))))

(declare-fun prepend!1055 (BalanceConc!18962 Token!8910) BalanceConc!18962)

(assert (=> b!2681106 (= e!1690339 (tuple2!30387 (prepend!1055 (_1!17753 lt!944356) (_1!17754 (v!32738 lt!944352))) (_2!17753 lt!944356)))))

(declare-fun b!2681107 () Bool)

(assert (=> b!2681107 (= e!1690357 e!1690330)))

(declare-fun mapIsEmpty!15918 () Bool)

(assert (=> mapIsEmpty!15918 mapRes!15917))

(declare-fun b!2681108 () Bool)

(assert (=> b!2681108 (= e!1690353 e!1690350)))

(declare-fun b!2681109 () Bool)

(declare-fun tp!848162 () Bool)

(assert (=> b!2681109 (= e!1690338 (and (inv!41942 (c!431839 treated!26)) tp!848162))))

(declare-fun e!1690347 () Bool)

(declare-fun lt!944368 () tuple2!30386)

(declare-fun b!2681110 () Bool)

(assert (=> b!2681110 (= e!1690347 (= lt!944353 (tuple2!30387 (prepend!1055 (_1!17753 lt!944368) (_1!17754 (v!32738 lt!944371))) (_2!17753 lt!944368))))))

(declare-fun b!2681111 () Bool)

(assert (=> b!2681111 (= e!1690331 e!1690335)))

(declare-fun res!1126957 () Bool)

(assert (=> b!2681111 (=> (not res!1126957) (not e!1690335))))

(declare-fun lt!944355 () List!31015)

(declare-fun ++!7545 (List!31015 List!31015) List!31015)

(assert (=> b!2681111 (= res!1126957 (= (list!11674 totalInput!354) (++!7545 lt!944355 (list!11674 input!780))))))

(assert (=> b!2681111 (= lt!944355 (list!11674 treated!26))))

(declare-fun b!2681112 () Bool)

(declare-fun lt!944357 () BalanceConc!18962)

(assert (=> b!2681112 (= e!1690333 (lexTailRec!10 thiss!12257 rules!1381 totalInput!354 lt!944351 (_2!17754 (v!32738 lt!944371)) lt!944357))))

(assert (=> b!2681112 (= lt!944368 (lexRec!585 thiss!12257 rules!1381 (_2!17754 (v!32738 lt!944371))))))

(declare-fun lt!944361 () BalanceConc!18960)

(declare-fun charsOf!2974 (Token!8910) BalanceConc!18960)

(assert (=> b!2681112 (= lt!944361 (charsOf!2974 (_1!17754 (v!32738 lt!944371))))))

(declare-fun lt!944362 () List!31015)

(assert (=> b!2681112 (= lt!944362 (list!11674 lt!944361))))

(declare-fun lt!944372 () List!31015)

(assert (=> b!2681112 (= lt!944372 (list!11674 (_2!17754 (v!32738 lt!944371))))))

(declare-datatypes ((Unit!45080 0))(
  ( (Unit!45081) )
))
(declare-fun lt!944349 () Unit!45080)

(declare-fun lemmaConcatAssociativity!1524 (List!31015 List!31015 List!31015) Unit!45080)

(assert (=> b!2681112 (= lt!944349 (lemmaConcatAssociativity!1524 lt!944355 lt!944362 lt!944372))))

(declare-fun lt!944359 () List!31015)

(assert (=> b!2681112 (= lt!944359 (++!7545 lt!944355 lt!944362))))

(declare-fun res!1126958 () Bool)

(assert (=> b!2681112 (= res!1126958 (= (++!7545 lt!944359 lt!944372) (++!7545 lt!944355 (++!7545 lt!944362 lt!944372))))))

(assert (=> b!2681112 (=> (not res!1126958) (not e!1690347))))

(assert (=> b!2681112 e!1690347))

(declare-fun lt!944354 () List!31019)

(assert (=> b!2681112 (= lt!944354 (Cons!30919 (_1!17754 (v!32738 lt!944371)) Nil!30919))))

(declare-fun lt!944360 () List!31019)

(assert (=> b!2681112 (= lt!944360 (list!11675 (_1!17753 lt!944368)))))

(declare-fun lt!944369 () Unit!45080)

(declare-fun lemmaConcatAssociativity!1525 (List!31019 List!31019 List!31019) Unit!45080)

(assert (=> b!2681112 (= lt!944369 (lemmaConcatAssociativity!1525 lt!944366 lt!944354 lt!944360))))

(declare-fun ++!7546 (List!31019 List!31019) List!31019)

(assert (=> b!2681112 (= (++!7546 (++!7546 lt!944366 lt!944354) lt!944360) (++!7546 lt!944366 (++!7546 lt!944354 lt!944360)))))

(declare-fun append!748 (BalanceConc!18962 Token!8910) BalanceConc!18962)

(assert (=> b!2681112 (= lt!944357 (append!748 acc!348 (_1!17754 (v!32738 lt!944371))))))

(declare-fun lt!944364 () List!31019)

(assert (=> b!2681112 (= lt!944364 (list!11675 lt!944357))))

(declare-fun lt!944370 () Unit!45080)

(declare-fun lemmaLexThenLexPrefix!393 (LexerInterface!4318 List!31016 List!31015 List!31015 List!31019 List!31019 List!31015) Unit!45080)

(assert (=> b!2681112 (= lt!944370 (lemmaLexThenLexPrefix!393 thiss!12257 rules!1381 lt!944359 lt!944372 lt!944364 lt!944360 (list!11674 (_2!17753 lt!944368))))))

(declare-datatypes ((tuple2!30390 0))(
  ( (tuple2!30391 (_1!17755 List!31019) (_2!17755 List!31015)) )
))
(declare-fun lexList!1180 (LexerInterface!4318 List!31016 List!31015) tuple2!30390)

(assert (=> b!2681112 (= (lexList!1180 thiss!12257 rules!1381 lt!944359) (tuple2!30391 lt!944364 Nil!30915))))

(declare-fun ++!7547 (BalanceConc!18960 BalanceConc!18960) BalanceConc!18960)

(assert (=> b!2681112 (= lt!944351 (++!7547 treated!26 lt!944361))))

(assert (=> b!2681112 (= lt!944352 (maxPrefixZipperSequence!986 thiss!12257 rules!1381 lt!944351))))

(declare-fun c!431836 () Bool)

(assert (=> b!2681112 (= c!431836 ((_ is Some!6109) lt!944352))))

(assert (=> b!2681112 (= (lexRec!585 thiss!12257 rules!1381 lt!944351) e!1690339)))

(declare-fun b!2681113 () Bool)

(declare-fun res!1126963 () Bool)

(assert (=> b!2681113 (=> (not res!1126963) (not e!1690331))))

(declare-fun valid!2691 (CacheDown!2202) Bool)

(assert (=> b!2681113 (= res!1126963 (valid!2691 cacheDown!499))))

(declare-fun b!2681114 () Bool)

(declare-fun lt!944350 () MutLongMap!3477)

(assert (=> b!2681114 (= e!1690344 (and e!1690345 ((_ is LongMap!3477) lt!944350)))))

(assert (=> b!2681114 (= lt!944350 (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))))

(declare-fun b!2681115 () Bool)

(declare-fun res!1126961 () Bool)

(assert (=> b!2681115 (=> (not res!1126961) (not e!1690331))))

(declare-fun valid!2692 (CacheUp!2094) Bool)

(assert (=> b!2681115 (= res!1126961 (valid!2692 cacheUp!486))))

(declare-fun b!2681116 () Bool)

(declare-fun e!1690342 () Bool)

(declare-fun tp!848160 () Bool)

(assert (=> b!2681116 (= e!1690342 (and tp!848160 mapRes!15918))))

(declare-fun condMapEmpty!15918 () Bool)

(declare-fun mapDefault!15918 () List!31020)

(assert (=> b!2681116 (= condMapEmpty!15918 (= (arr!5540 (_values!3758 (v!32736 (underlying!7157 (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31020)) mapDefault!15918)))))

(declare-fun b!2681117 () Bool)

(declare-fun tp!848151 () Bool)

(declare-fun inv!41943 (Conc!9674) Bool)

(assert (=> b!2681117 (= e!1690351 (and (inv!41943 (c!431840 acc!348)) tp!848151))))

(declare-fun b!2681118 () Bool)

(declare-fun lt!944367 () MutLongMap!3476)

(assert (=> b!2681118 (= e!1690341 (and e!1690354 ((_ is LongMap!3476) lt!944367)))))

(assert (=> b!2681118 (= lt!944367 (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))))

(declare-fun mapNonEmpty!15917 () Bool)

(declare-fun tp!848153 () Bool)

(declare-fun tp!848167 () Bool)

(assert (=> mapNonEmpty!15917 (= mapRes!15917 (and tp!848153 tp!848167))))

(declare-fun mapRest!15918 () (Array (_ BitVec 32) List!31018))

(declare-fun mapValue!15918 () List!31018)

(declare-fun mapKey!15917 () (_ BitVec 32))

(assert (=> mapNonEmpty!15917 (= (arr!5539 (_values!3757 (v!32734 (underlying!7155 (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))))) (store mapRest!15918 mapKey!15917 mapValue!15918))))

(declare-fun b!2681119 () Bool)

(declare-fun tp!848157 () Bool)

(assert (=> b!2681119 (= e!1690337 (and e!1690340 tp!848157))))

(declare-fun b!2681120 () Bool)

(assert (=> b!2681120 (= e!1690346 e!1690329)))

(declare-fun res!1126959 () Bool)

(assert (=> b!2681120 (=> (not res!1126959) (not e!1690329))))

(declare-fun ++!7548 (BalanceConc!18962 BalanceConc!18962) BalanceConc!18962)

(assert (=> b!2681120 (= res!1126959 (= (list!11675 (_1!17753 lt!944358)) (list!11675 (++!7548 acc!348 (_1!17753 lt!944353)))))))

(assert (=> b!2681120 (= lt!944353 (lexRec!585 thiss!12257 rules!1381 input!780))))

(assert (=> b!2681120 (= lt!944358 (lexRec!585 thiss!12257 rules!1381 totalInput!354))))

(declare-fun mapNonEmpty!15918 () Bool)

(declare-fun tp!848154 () Bool)

(declare-fun tp!848161 () Bool)

(assert (=> mapNonEmpty!15918 (= mapRes!15918 (and tp!848154 tp!848161))))

(declare-fun mapKey!15918 () (_ BitVec 32))

(declare-fun mapRest!15917 () (Array (_ BitVec 32) List!31020))

(declare-fun mapValue!15917 () List!31020)

(assert (=> mapNonEmpty!15918 (= (arr!5540 (_values!3758 (v!32736 (underlying!7157 (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))))) (store mapRest!15917 mapKey!15918 mapValue!15917))))

(declare-fun tp!848169 () Bool)

(declare-fun tp!848168 () Bool)

(declare-fun array_inv!3955 (array!12397) Bool)

(assert (=> b!2681121 (= e!1690356 (and tp!848158 tp!848169 tp!848168 (array_inv!3953 (_keys!3777 (v!32736 (underlying!7157 (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))))) (array_inv!3955 (_values!3758 (v!32736 (underlying!7157 (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))))) e!1690342))))

(declare-fun b!2681122 () Bool)

(assert (=> b!2681122 (= e!1690328 e!1690343)))

(assert (= (and start!261124 res!1126953) b!2681093))

(assert (= (and b!2681093 res!1126960) b!2681087))

(assert (= (and b!2681087 res!1126956) b!2681115))

(assert (= (and b!2681115 res!1126961) b!2681113))

(assert (= (and b!2681113 res!1126963) b!2681111))

(assert (= (and b!2681111 res!1126957) b!2681094))

(assert (= (and b!2681094 res!1126962) b!2681091))

(assert (= (and b!2681091 res!1126954) b!2681120))

(assert (= (and b!2681120 res!1126959) b!2681101))

(assert (= (and b!2681101 res!1126955) b!2681098))

(assert (= (and b!2681098 c!431837) b!2681112))

(assert (= (and b!2681098 (not c!431837)) b!2681095))

(assert (= (and b!2681112 res!1126958) b!2681110))

(assert (= (and b!2681112 c!431836) b!2681106))

(assert (= (and b!2681112 (not c!431836)) b!2681104))

(assert (= start!261124 b!2681097))

(assert (= (and b!2681100 condMapEmpty!15917) mapIsEmpty!15918))

(assert (= (and b!2681100 (not condMapEmpty!15917)) mapNonEmpty!15917))

(assert (= b!2681105 b!2681100))

(assert (= b!2681122 b!2681105))

(assert (= b!2681088 b!2681122))

(assert (= (and b!2681118 ((_ is LongMap!3476) (v!32735 (underlying!7156 (cache!3525 cacheUp!486))))) b!2681088))

(assert (= b!2681102 b!2681118))

(assert (= (and b!2681107 ((_ is HashMap!3382) (cache!3525 cacheUp!486))) b!2681102))

(assert (= start!261124 b!2681107))

(assert (= start!261124 b!2681117))

(assert (= start!261124 b!2681099))

(assert (= start!261124 b!2681109))

(assert (= b!2681096 b!2681089))

(assert (= b!2681119 b!2681096))

(assert (= (and start!261124 ((_ is Cons!30916) rules!1381)) b!2681119))

(assert (= (and b!2681116 condMapEmpty!15918) mapIsEmpty!15917))

(assert (= (and b!2681116 (not condMapEmpty!15918)) mapNonEmpty!15918))

(assert (= b!2681121 b!2681116))

(assert (= b!2681092 b!2681121))

(assert (= b!2681103 b!2681092))

(assert (= (and b!2681114 ((_ is LongMap!3477) (v!32737 (underlying!7158 (cache!3526 cacheDown!499))))) b!2681103))

(assert (= b!2681090 b!2681114))

(assert (= (and b!2681108 ((_ is HashMap!3383) (cache!3526 cacheDown!499))) b!2681090))

(assert (= start!261124 b!2681108))

(declare-fun m!3049181 () Bool)

(assert (=> b!2681110 m!3049181))

(declare-fun m!3049183 () Bool)

(assert (=> b!2681087 m!3049183))

(declare-fun m!3049185 () Bool)

(assert (=> b!2681111 m!3049185))

(declare-fun m!3049187 () Bool)

(assert (=> b!2681111 m!3049187))

(assert (=> b!2681111 m!3049187))

(declare-fun m!3049189 () Bool)

(assert (=> b!2681111 m!3049189))

(declare-fun m!3049191 () Bool)

(assert (=> b!2681111 m!3049191))

(declare-fun m!3049193 () Bool)

(assert (=> b!2681113 m!3049193))

(declare-fun m!3049195 () Bool)

(assert (=> b!2681091 m!3049195))

(assert (=> b!2681091 m!3049195))

(declare-fun m!3049197 () Bool)

(assert (=> b!2681091 m!3049197))

(declare-fun m!3049199 () Bool)

(assert (=> b!2681099 m!3049199))

(declare-fun m!3049201 () Bool)

(assert (=> b!2681093 m!3049201))

(declare-fun m!3049203 () Bool)

(assert (=> b!2681106 m!3049203))

(declare-fun m!3049205 () Bool)

(assert (=> b!2681106 m!3049205))

(declare-fun m!3049207 () Bool)

(assert (=> b!2681098 m!3049207))

(declare-fun m!3049209 () Bool)

(assert (=> b!2681098 m!3049209))

(declare-fun m!3049211 () Bool)

(assert (=> b!2681109 m!3049211))

(declare-fun m!3049213 () Bool)

(assert (=> b!2681112 m!3049213))

(declare-fun m!3049215 () Bool)

(assert (=> b!2681112 m!3049215))

(declare-fun m!3049217 () Bool)

(assert (=> b!2681112 m!3049217))

(declare-fun m!3049219 () Bool)

(assert (=> b!2681112 m!3049219))

(declare-fun m!3049221 () Bool)

(assert (=> b!2681112 m!3049221))

(declare-fun m!3049223 () Bool)

(assert (=> b!2681112 m!3049223))

(declare-fun m!3049225 () Bool)

(assert (=> b!2681112 m!3049225))

(declare-fun m!3049227 () Bool)

(assert (=> b!2681112 m!3049227))

(declare-fun m!3049229 () Bool)

(assert (=> b!2681112 m!3049229))

(declare-fun m!3049231 () Bool)

(assert (=> b!2681112 m!3049231))

(declare-fun m!3049233 () Bool)

(assert (=> b!2681112 m!3049233))

(declare-fun m!3049235 () Bool)

(assert (=> b!2681112 m!3049235))

(declare-fun m!3049237 () Bool)

(assert (=> b!2681112 m!3049237))

(declare-fun m!3049239 () Bool)

(assert (=> b!2681112 m!3049239))

(assert (=> b!2681112 m!3049227))

(declare-fun m!3049241 () Bool)

(assert (=> b!2681112 m!3049241))

(declare-fun m!3049243 () Bool)

(assert (=> b!2681112 m!3049243))

(assert (=> b!2681112 m!3049221))

(declare-fun m!3049245 () Bool)

(assert (=> b!2681112 m!3049245))

(declare-fun m!3049247 () Bool)

(assert (=> b!2681112 m!3049247))

(declare-fun m!3049249 () Bool)

(assert (=> b!2681112 m!3049249))

(declare-fun m!3049251 () Bool)

(assert (=> b!2681112 m!3049251))

(declare-fun m!3049253 () Bool)

(assert (=> b!2681112 m!3049253))

(assert (=> b!2681112 m!3049233))

(declare-fun m!3049255 () Bool)

(assert (=> b!2681112 m!3049255))

(assert (=> b!2681112 m!3049235))

(declare-fun m!3049257 () Bool)

(assert (=> b!2681112 m!3049257))

(declare-fun m!3049259 () Bool)

(assert (=> b!2681112 m!3049259))

(declare-fun m!3049261 () Bool)

(assert (=> b!2681121 m!3049261))

(declare-fun m!3049263 () Bool)

(assert (=> b!2681121 m!3049263))

(declare-fun m!3049265 () Bool)

(assert (=> start!261124 m!3049265))

(declare-fun m!3049267 () Bool)

(assert (=> start!261124 m!3049267))

(declare-fun m!3049269 () Bool)

(assert (=> start!261124 m!3049269))

(declare-fun m!3049271 () Bool)

(assert (=> start!261124 m!3049271))

(declare-fun m!3049273 () Bool)

(assert (=> start!261124 m!3049273))

(declare-fun m!3049275 () Bool)

(assert (=> start!261124 m!3049275))

(declare-fun m!3049277 () Bool)

(assert (=> b!2681117 m!3049277))

(declare-fun m!3049279 () Bool)

(assert (=> b!2681097 m!3049279))

(declare-fun m!3049281 () Bool)

(assert (=> b!2681094 m!3049281))

(declare-fun m!3049283 () Bool)

(assert (=> b!2681094 m!3049283))

(declare-fun m!3049285 () Bool)

(assert (=> b!2681094 m!3049285))

(declare-fun m!3049287 () Bool)

(assert (=> b!2681105 m!3049287))

(declare-fun m!3049289 () Bool)

(assert (=> b!2681105 m!3049289))

(declare-fun m!3049291 () Bool)

(assert (=> mapNonEmpty!15918 m!3049291))

(declare-fun m!3049293 () Bool)

(assert (=> mapNonEmpty!15917 m!3049293))

(declare-fun m!3049295 () Bool)

(assert (=> b!2681096 m!3049295))

(declare-fun m!3049297 () Bool)

(assert (=> b!2681096 m!3049297))

(declare-fun m!3049299 () Bool)

(assert (=> b!2681115 m!3049299))

(declare-fun m!3049301 () Bool)

(assert (=> b!2681120 m!3049301))

(declare-fun m!3049303 () Bool)

(assert (=> b!2681120 m!3049303))

(declare-fun m!3049305 () Bool)

(assert (=> b!2681120 m!3049305))

(declare-fun m!3049307 () Bool)

(assert (=> b!2681120 m!3049307))

(declare-fun m!3049309 () Bool)

(assert (=> b!2681120 m!3049309))

(assert (=> b!2681120 m!3049303))

(declare-fun m!3049311 () Bool)

(assert (=> b!2681101 m!3049311))

(declare-fun m!3049313 () Bool)

(assert (=> b!2681101 m!3049313))

(check-sat (not b!2681106) b_and!198557 (not mapNonEmpty!15918) (not b!2681093) (not b!2681113) (not b!2681117) (not b_next!76465) (not b!2681112) (not b!2681087) (not b!2681096) b_and!198551 (not b_next!76463) (not b!2681105) (not b!2681110) (not b!2681091) (not b_next!76467) (not b!2681116) (not b!2681109) (not b!2681101) (not b!2681121) (not b!2681111) (not b!2681100) (not b!2681099) (not b!2681115) (not b!2681098) (not mapNonEmpty!15917) (not b_next!76461) b_and!198559 b_and!198549 (not b!2681120) b_and!198553 (not b!2681094) (not b_next!76459) (not start!261124) b_and!198555 (not b!2681097) (not b!2681119) (not b_next!76457))
(check-sat (not b_next!76463) (not b_next!76467) b_and!198557 (not b_next!76461) (not b_next!76465) b_and!198551 (not b_next!76457) b_and!198559 b_and!198549 b_and!198553 (not b_next!76459) b_and!198555)
