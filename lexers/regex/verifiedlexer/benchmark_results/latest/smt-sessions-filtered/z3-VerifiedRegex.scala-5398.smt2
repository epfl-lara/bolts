; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274782 () Bool)

(assert start!274782)

(declare-fun b!2829355 () Bool)

(declare-fun b_free!81185 () Bool)

(declare-fun b_next!81889 () Bool)

(assert (=> b!2829355 (= b_free!81185 (not b_next!81889))))

(declare-fun tp!903635 () Bool)

(declare-fun b_and!206843 () Bool)

(assert (=> b!2829355 (= tp!903635 b_and!206843)))

(declare-fun b!2829331 () Bool)

(declare-fun b_free!81187 () Bool)

(declare-fun b_next!81891 () Bool)

(assert (=> b!2829331 (= b_free!81187 (not b_next!81891))))

(declare-fun tp!903643 () Bool)

(declare-fun b_and!206845 () Bool)

(assert (=> b!2829331 (= tp!903643 b_and!206845)))

(declare-fun b!2829350 () Bool)

(declare-fun b_free!81189 () Bool)

(declare-fun b_next!81893 () Bool)

(assert (=> b!2829350 (= b_free!81189 (not b_next!81893))))

(declare-fun tp!903644 () Bool)

(declare-fun b_and!206847 () Bool)

(assert (=> b!2829350 (= tp!903644 b_and!206847)))

(declare-fun b_free!81191 () Bool)

(declare-fun b_next!81895 () Bool)

(assert (=> b!2829350 (= b_free!81191 (not b_next!81895))))

(declare-fun tp!903646 () Bool)

(declare-fun b_and!206849 () Bool)

(assert (=> b!2829350 (= tp!903646 b_and!206849)))

(declare-fun b!2829341 () Bool)

(declare-fun b_free!81193 () Bool)

(declare-fun b_next!81897 () Bool)

(assert (=> b!2829341 (= b_free!81193 (not b_next!81897))))

(declare-fun tp!903638 () Bool)

(declare-fun b_and!206851 () Bool)

(assert (=> b!2829341 (= tp!903638 b_and!206851)))

(declare-fun b!2829344 () Bool)

(declare-fun b_free!81195 () Bool)

(declare-fun b_next!81899 () Bool)

(assert (=> b!2829344 (= b_free!81195 (not b_next!81899))))

(declare-fun tp!903636 () Bool)

(declare-fun b_and!206853 () Bool)

(assert (=> b!2829344 (= tp!903636 b_and!206853)))

(declare-fun b!2829330 () Bool)

(declare-fun e!1790927 () Bool)

(declare-fun e!1790935 () Bool)

(assert (=> b!2829330 (= e!1790927 e!1790935)))

(declare-fun res!1177848 () Bool)

(assert (=> b!2829330 (=> res!1177848 e!1790935)))

(declare-datatypes ((C!16928 0))(
  ( (C!16929 (val!10476 Int)) )
))
(declare-datatypes ((List!33385 0))(
  ( (Nil!33261) (Cons!33261 (h!38681 C!16928) (t!231234 List!33385)) )
))
(declare-datatypes ((IArray!20643 0))(
  ( (IArray!20644 (innerList!10379 List!33385)) )
))
(declare-datatypes ((Conc!10319 0))(
  ( (Node!10319 (left!25121 Conc!10319) (right!25451 Conc!10319) (csize!20868 Int) (cheight!10530 Int)) (Leaf!15718 (xs!13431 IArray!20643) (csize!20869 Int)) (Empty!10319) )
))
(declare-datatypes ((BalanceConc!20276 0))(
  ( (BalanceConc!20277 (c!457751 Conc!10319)) )
))
(declare-datatypes ((List!33386 0))(
  ( (Nil!33262) (Cons!33262 (h!38682 (_ BitVec 16)) (t!231235 List!33386)) )
))
(declare-datatypes ((TokenValue!5212 0))(
  ( (FloatLiteralValue!10424 (text!36929 List!33386)) (TokenValueExt!5211 (__x!22109 Int)) (Broken!26060 (value!160330 List!33386)) (Object!5335) (End!5212) (Def!5212) (Underscore!5212) (Match!5212) (Else!5212) (Error!5212) (Case!5212) (If!5212) (Extends!5212) (Abstract!5212) (Class!5212) (Val!5212) (DelimiterValue!10424 (del!5272 List!33386)) (KeywordValue!5218 (value!160331 List!33386)) (CommentValue!10424 (value!160332 List!33386)) (WhitespaceValue!10424 (value!160333 List!33386)) (IndentationValue!5212 (value!160334 List!33386)) (String!36581) (Int32!5212) (Broken!26061 (value!160335 List!33386)) (Boolean!5213) (Unit!47300) (OperatorValue!5215 (op!5272 List!33386)) (IdentifierValue!10424 (value!160336 List!33386)) (IdentifierValue!10425 (value!160337 List!33386)) (WhitespaceValue!10425 (value!160338 List!33386)) (True!10424) (False!10424) (Broken!26062 (value!160339 List!33386)) (Broken!26063 (value!160340 List!33386)) (True!10425) (RightBrace!5212) (RightBracket!5212) (Colon!5212) (Null!5212) (Comma!5212) (LeftBracket!5212) (False!10425) (LeftBrace!5212) (ImaginaryLiteralValue!5212 (text!36930 List!33386)) (StringLiteralValue!15636 (value!160341 List!33386)) (EOFValue!5212 (value!160342 List!33386)) (IdentValue!5212 (value!160343 List!33386)) (DelimiterValue!10425 (value!160344 List!33386)) (DedentValue!5212 (value!160345 List!33386)) (NewLineValue!5212 (value!160346 List!33386)) (IntegerValue!15636 (value!160347 (_ BitVec 32)) (text!36931 List!33386)) (IntegerValue!15637 (value!160348 Int) (text!36932 List!33386)) (Times!5212) (Or!5212) (Equal!5212) (Minus!5212) (Broken!26064 (value!160349 List!33386)) (And!5212) (Div!5212) (LessEqual!5212) (Mod!5212) (Concat!13585) (Not!5212) (Plus!5212) (SpaceValue!5212 (value!160350 List!33386)) (IntegerValue!15638 (value!160351 Int) (text!36933 List!33386)) (StringLiteralValue!15637 (text!36934 List!33386)) (FloatLiteralValue!10425 (text!36935 List!33386)) (BytesLiteralValue!5212 (value!160352 List!33386)) (CommentValue!10425 (value!160353 List!33386)) (StringLiteralValue!15638 (value!160354 List!33386)) (ErrorTokenValue!5212 (msg!5273 List!33386)) )
))
(declare-datatypes ((TokenValueInjection!9852 0))(
  ( (TokenValueInjection!9853 (toValue!7008 Int) (toChars!6867 Int)) )
))
(declare-datatypes ((Regex!8373 0))(
  ( (ElementMatch!8373 (c!457752 C!16928)) (Concat!13586 (regOne!17258 Regex!8373) (regTwo!17258 Regex!8373)) (EmptyExpr!8373) (Star!8373 (reg!8702 Regex!8373)) (EmptyLang!8373) (Union!8373 (regOne!17259 Regex!8373) (regTwo!17259 Regex!8373)) )
))
(declare-datatypes ((String!36582 0))(
  ( (String!36583 (value!160355 String)) )
))
(declare-datatypes ((Rule!9764 0))(
  ( (Rule!9765 (regex!4982 Regex!8373) (tag!5486 String!36582) (isSeparator!4982 Bool) (transformation!4982 TokenValueInjection!9852)) )
))
(declare-datatypes ((Token!9366 0))(
  ( (Token!9367 (value!160356 TokenValue!5212) (rule!7410 Rule!9764) (size!25892 Int) (originalCharacters!5714 List!33385)) )
))
(declare-datatypes ((List!33387 0))(
  ( (Nil!33263) (Cons!33263 (h!38683 Token!9366) (t!231236 List!33387)) )
))
(declare-datatypes ((IArray!20645 0))(
  ( (IArray!20646 (innerList!10380 List!33387)) )
))
(declare-datatypes ((Conc!10320 0))(
  ( (Node!10320 (left!25122 Conc!10320) (right!25452 Conc!10320) (csize!20870 Int) (cheight!10531 Int)) (Leaf!15719 (xs!13432 IArray!20645) (csize!20871 Int)) (Empty!10320) )
))
(declare-datatypes ((BalanceConc!20278 0))(
  ( (BalanceConc!20279 (c!457753 Conc!10320)) )
))
(declare-fun v!6247 () BalanceConc!20278)

(declare-fun lt!1009090 () Token!9366)

(declare-fun contains!6074 (BalanceConc!20278 Token!9366) Bool)

(assert (=> b!2829330 (= res!1177848 (not (contains!6074 v!6247 lt!1009090)))))

(declare-fun from!827 () Int)

(declare-fun apply!7765 (BalanceConc!20278 Int) Token!9366)

(assert (=> b!2829330 (= lt!1009090 (apply!7765 v!6247 (+ 1 from!827)))))

(declare-fun e!1790925 () Bool)

(declare-fun e!1790932 () Bool)

(assert (=> b!2829331 (= e!1790925 (and e!1790932 tp!903643))))

(declare-fun b!2829332 () Bool)

(declare-fun e!1790920 () Bool)

(assert (=> b!2829332 (= e!1790920 (not e!1790927))))

(declare-fun res!1177849 () Bool)

(assert (=> b!2829332 (=> res!1177849 e!1790927)))

(declare-fun lt!1009085 () Token!9366)

(assert (=> b!2829332 (= res!1177849 (not (contains!6074 v!6247 lt!1009085)))))

(assert (=> b!2829332 (= lt!1009085 (apply!7765 v!6247 from!827))))

(declare-fun lt!1009081 () List!33387)

(declare-fun lt!1009092 () List!33387)

(declare-fun tail!4461 (List!33387) List!33387)

(declare-fun drop!1785 (List!33387 Int) List!33387)

(assert (=> b!2829332 (= (tail!4461 lt!1009081) (drop!1785 lt!1009092 (+ 2 from!827)))))

(declare-datatypes ((Unit!47301 0))(
  ( (Unit!47302) )
))
(declare-fun lt!1009083 () Unit!47301)

(declare-fun lemmaDropTail!871 (List!33387 Int) Unit!47301)

(assert (=> b!2829332 (= lt!1009083 (lemmaDropTail!871 lt!1009092 (+ 1 from!827)))))

(declare-fun lt!1009087 () List!33387)

(assert (=> b!2829332 (= (tail!4461 lt!1009087) lt!1009081)))

(declare-fun lt!1009088 () Unit!47301)

(assert (=> b!2829332 (= lt!1009088 (lemmaDropTail!871 lt!1009092 from!827))))

(declare-fun head!6236 (List!33387) Token!9366)

(declare-fun apply!7766 (List!33387 Int) Token!9366)

(assert (=> b!2829332 (= (head!6236 lt!1009081) (apply!7766 lt!1009092 (+ 1 from!827)))))

(assert (=> b!2829332 (= lt!1009081 (drop!1785 lt!1009092 (+ 1 from!827)))))

(declare-fun lt!1009091 () Unit!47301)

(declare-fun lemmaDropApply!983 (List!33387 Int) Unit!47301)

(assert (=> b!2829332 (= lt!1009091 (lemmaDropApply!983 lt!1009092 (+ 1 from!827)))))

(assert (=> b!2829332 (= (head!6236 lt!1009087) (apply!7766 lt!1009092 from!827))))

(assert (=> b!2829332 (= lt!1009087 (drop!1785 lt!1009092 from!827))))

(declare-fun lt!1009082 () Unit!47301)

(assert (=> b!2829332 (= lt!1009082 (lemmaDropApply!983 lt!1009092 from!827))))

(declare-fun list!12457 (BalanceConc!20278) List!33387)

(assert (=> b!2829332 (= lt!1009092 (list!12457 v!6247))))

(declare-fun b!2829333 () Bool)

(declare-fun e!1790933 () Bool)

(declare-fun e!1790934 () Bool)

(assert (=> b!2829333 (= e!1790933 e!1790934)))

(declare-fun mapIsEmpty!18506 () Bool)

(declare-fun mapRes!18506 () Bool)

(assert (=> mapIsEmpty!18506 mapRes!18506))

(declare-fun b!2829334 () Bool)

(declare-fun e!1790940 () Bool)

(declare-fun tp!903629 () Bool)

(assert (=> b!2829334 (= e!1790940 (and tp!903629 mapRes!18506))))

(declare-fun condMapEmpty!18506 () Bool)

(declare-datatypes ((List!33388 0))(
  ( (Nil!33264) (Cons!33264 (h!38684 Regex!8373) (t!231237 List!33388)) )
))
(declare-datatypes ((Context!4954 0))(
  ( (Context!4955 (exprs!2977 List!33388)) )
))
(declare-datatypes ((tuple2!33448 0))(
  ( (tuple2!33449 (_1!19819 Context!4954) (_2!19819 C!16928)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33450 0))(
  ( (tuple2!33451 (_1!19820 tuple2!33448) (_2!19820 (InoxSet Context!4954))) )
))
(declare-datatypes ((List!33389 0))(
  ( (Nil!33265) (Cons!33265 (h!38685 tuple2!33450) (t!231238 List!33389)) )
))
(declare-datatypes ((array!14483 0))(
  ( (array!14484 (arr!6453 (Array (_ BitVec 32) List!33389)) (size!25893 (_ BitVec 32))) )
))
(declare-datatypes ((array!14485 0))(
  ( (array!14486 (arr!6454 (Array (_ BitVec 32) (_ BitVec 64))) (size!25894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8146 0))(
  ( (LongMapFixedSize!8147 (defaultEntry!4458 Int) (mask!10040 (_ BitVec 32)) (extraKeys!4322 (_ BitVec 32)) (zeroValue!4332 List!33389) (minValue!4332 List!33389) (_size!8189 (_ BitVec 32)) (_keys!4373 array!14485) (_values!4354 array!14483) (_vacant!4134 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3989 0))(
  ( (HashableExt!3988 (__x!22110 Int)) )
))
(declare-datatypes ((Cell!16101 0))(
  ( (Cell!16102 (v!34303 LongMapFixedSize!8146)) )
))
(declare-datatypes ((MutLongMap!4073 0))(
  ( (LongMap!4073 (underlying!8375 Cell!16101)) (MutLongMapExt!4072 (__x!22111 Int)) )
))
(declare-datatypes ((Cell!16103 0))(
  ( (Cell!16104 (v!34304 MutLongMap!4073)) )
))
(declare-datatypes ((MutableMap!3979 0))(
  ( (MutableMapExt!3978 (__x!22112 Int)) (HashMap!3979 (underlying!8376 Cell!16103) (hashF!6021 Hashable!3989) (_size!8190 (_ BitVec 32)) (defaultValue!4150 Int)) )
))
(declare-datatypes ((CacheUp!2676 0))(
  ( (CacheUp!2677 (cache!4114 MutableMap!3979)) )
))
(declare-fun cacheUp!420 () CacheUp!2676)

(declare-fun mapDefault!18507 () List!33389)

(assert (=> b!2829334 (= condMapEmpty!18506 (= (arr!6453 (_values!4354 (v!34303 (underlying!8375 (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33389)) mapDefault!18507)))))

(declare-fun b!2829335 () Bool)

(declare-fun e!1790939 () Bool)

(assert (=> b!2829335 (= e!1790935 e!1790939)))

(declare-fun res!1177850 () Bool)

(assert (=> b!2829335 (=> res!1177850 e!1790939)))

(declare-datatypes ((List!33390 0))(
  ( (Nil!33266) (Cons!33266 (h!38686 Rule!9764) (t!231239 List!33390)) )
))
(declare-fun rules!1102 () List!33390)

(declare-datatypes ((LexerInterface!4573 0))(
  ( (LexerInterfaceExt!4570 (__x!22113 Int)) (Lexer!4571) )
))
(declare-fun thiss!11212 () LexerInterface!4573)

(declare-datatypes ((tuple3!5250 0))(
  ( (tuple3!5251 (_1!19821 Regex!8373) (_2!19821 Context!4954) (_3!3095 C!16928)) )
))
(declare-datatypes ((Hashable!3990 0))(
  ( (HashableExt!3989 (__x!22114 Int)) )
))
(declare-datatypes ((tuple2!33452 0))(
  ( (tuple2!33453 (_1!19822 tuple3!5250) (_2!19822 (InoxSet Context!4954))) )
))
(declare-datatypes ((List!33391 0))(
  ( (Nil!33267) (Cons!33267 (h!38687 tuple2!33452) (t!231240 List!33391)) )
))
(declare-datatypes ((array!14487 0))(
  ( (array!14488 (arr!6455 (Array (_ BitVec 32) List!33391)) (size!25895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8148 0))(
  ( (LongMapFixedSize!8149 (defaultEntry!4459 Int) (mask!10041 (_ BitVec 32)) (extraKeys!4323 (_ BitVec 32)) (zeroValue!4333 List!33391) (minValue!4333 List!33391) (_size!8191 (_ BitVec 32)) (_keys!4374 array!14485) (_values!4355 array!14487) (_vacant!4135 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16105 0))(
  ( (Cell!16106 (v!34305 LongMapFixedSize!8148)) )
))
(declare-datatypes ((MutLongMap!4074 0))(
  ( (LongMap!4074 (underlying!8377 Cell!16105)) (MutLongMapExt!4073 (__x!22115 Int)) )
))
(declare-datatypes ((Cell!16107 0))(
  ( (Cell!16108 (v!34306 MutLongMap!4074)) )
))
(declare-datatypes ((MutableMap!3980 0))(
  ( (MutableMapExt!3979 (__x!22116 Int)) (HashMap!3980 (underlying!8378 Cell!16107) (hashF!6022 Hashable!3990) (_size!8192 (_ BitVec 32)) (defaultValue!4151 Int)) )
))
(declare-datatypes ((CacheDown!2798 0))(
  ( (CacheDown!2799 (cache!4115 MutableMap!3980)) )
))
(declare-fun cacheDown!433 () CacheDown!2798)

(declare-datatypes ((tuple3!5252 0))(
  ( (tuple3!5253 (_1!19823 Bool) (_2!19823 CacheUp!2676) (_3!3096 CacheDown!2798)) )
))
(declare-fun separableTokensPredicateMem!3 (LexerInterface!4573 Token!9366 Token!9366 List!33390 CacheUp!2676 CacheDown!2798) tuple3!5252)

(assert (=> b!2829335 (= res!1177850 (not (_1!19823 (separableTokensPredicateMem!3 thiss!11212 lt!1009085 lt!1009090 rules!1102 cacheUp!420 cacheDown!433))))))

(declare-fun e!1790930 () Bool)

(assert (=> b!2829335 e!1790930))

(declare-fun res!1177847 () Bool)

(assert (=> b!2829335 (=> (not res!1177847) (not e!1790930))))

(declare-fun rulesProduceIndividualToken!2110 (LexerInterface!4573 List!33390 Token!9366) Bool)

(assert (=> b!2829335 (= res!1177847 (rulesProduceIndividualToken!2110 thiss!11212 rules!1102 lt!1009090))))

(declare-fun lt!1009084 () Unit!47301)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!728 (LexerInterface!4573 List!33390 List!33387 Token!9366) Unit!47301)

(assert (=> b!2829335 (= lt!1009084 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!728 thiss!11212 rules!1102 lt!1009092 lt!1009090))))

(assert (=> b!2829335 (rulesProduceIndividualToken!2110 thiss!11212 rules!1102 lt!1009085)))

(declare-fun lt!1009080 () Unit!47301)

(assert (=> b!2829335 (= lt!1009080 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!728 thiss!11212 rules!1102 lt!1009092 lt!1009085))))

(declare-fun mapNonEmpty!18506 () Bool)

(declare-fun tp!903641 () Bool)

(declare-fun tp!903645 () Bool)

(assert (=> mapNonEmpty!18506 (= mapRes!18506 (and tp!903641 tp!903645))))

(declare-fun mapValue!18507 () List!33389)

(declare-fun mapKey!18506 () (_ BitVec 32))

(declare-fun mapRest!18506 () (Array (_ BitVec 32) List!33389))

(assert (=> mapNonEmpty!18506 (= (arr!6453 (_values!4354 (v!34303 (underlying!8375 (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))))) (store mapRest!18506 mapKey!18506 mapValue!18507))))

(declare-fun mapNonEmpty!18507 () Bool)

(declare-fun mapRes!18507 () Bool)

(declare-fun tp!903634 () Bool)

(declare-fun tp!903631 () Bool)

(assert (=> mapNonEmpty!18507 (= mapRes!18507 (and tp!903634 tp!903631))))

(declare-fun mapKey!18507 () (_ BitVec 32))

(declare-fun mapRest!18507 () (Array (_ BitVec 32) List!33391))

(declare-fun mapValue!18506 () List!33391)

(assert (=> mapNonEmpty!18507 (= (arr!6455 (_values!4355 (v!34305 (underlying!8377 (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))))) (store mapRest!18507 mapKey!18507 mapValue!18506))))

(declare-fun b!2829336 () Bool)

(declare-fun e!1790937 () Bool)

(declare-fun e!1790944 () Bool)

(assert (=> b!2829336 (= e!1790937 e!1790944)))

(declare-fun b!2829337 () Bool)

(declare-fun e!1790922 () Bool)

(assert (=> b!2829337 (= e!1790922 e!1790937)))

(declare-fun tp!903630 () Bool)

(declare-fun e!1790928 () Bool)

(declare-fun e!1790931 () Bool)

(declare-fun b!2829338 () Bool)

(declare-fun inv!45223 (String!36582) Bool)

(declare-fun inv!45224 (TokenValueInjection!9852) Bool)

(assert (=> b!2829338 (= e!1790931 (and tp!903630 (inv!45223 (tag!5486 (h!38686 rules!1102))) (inv!45224 (transformation!4982 (h!38686 rules!1102))) e!1790928))))

(declare-fun b!2829339 () Bool)

(declare-fun res!1177852 () Bool)

(assert (=> b!2829339 (=> (not res!1177852) (not e!1790920))))

(declare-fun rulesInvariant!3990 (LexerInterface!4573 List!33390) Bool)

(assert (=> b!2829339 (= res!1177852 (rulesInvariant!3990 thiss!11212 rules!1102))))

(declare-fun b!2829340 () Bool)

(declare-fun e!1790929 () Bool)

(assert (=> b!2829340 (= e!1790929 e!1790920)))

(declare-fun res!1177854 () Bool)

(assert (=> b!2829340 (=> (not res!1177854) (not e!1790920))))

(declare-fun lt!1009089 () Int)

(assert (=> b!2829340 (= res!1177854 (<= from!827 lt!1009089))))

(declare-fun size!25896 (BalanceConc!20278) Int)

(assert (=> b!2829340 (= lt!1009089 (size!25896 v!6247))))

(declare-fun tp!903639 () Bool)

(declare-fun tp!903633 () Bool)

(declare-fun e!1790941 () Bool)

(declare-fun array_inv!4619 (array!14485) Bool)

(declare-fun array_inv!4620 (array!14483) Bool)

(assert (=> b!2829341 (= e!1790941 (and tp!903638 tp!903633 tp!903639 (array_inv!4619 (_keys!4373 (v!34303 (underlying!8375 (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))))) (array_inv!4620 (_values!4354 (v!34303 (underlying!8375 (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))))) e!1790940))))

(declare-fun b!2829342 () Bool)

(declare-fun res!1177846 () Bool)

(assert (=> b!2829342 (=> (not res!1177846) (not e!1790920))))

(assert (=> b!2829342 (= res!1177846 (< from!827 (- lt!1009089 1)))))

(declare-fun mapIsEmpty!18507 () Bool)

(assert (=> mapIsEmpty!18507 mapRes!18507))

(declare-fun b!2829343 () Bool)

(declare-fun e!1790938 () Bool)

(assert (=> b!2829343 (= e!1790938 e!1790941)))

(declare-fun e!1790923 () Bool)

(assert (=> b!2829344 (= e!1790934 (and e!1790923 tp!903636))))

(declare-fun b!2829345 () Bool)

(declare-fun e!1790924 () Bool)

(declare-fun lt!1009093 () MutLongMap!4073)

(get-info :version)

(assert (=> b!2829345 (= e!1790923 (and e!1790924 ((_ is LongMap!4073) lt!1009093)))))

(assert (=> b!2829345 (= lt!1009093 (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))))

(declare-fun b!2829346 () Bool)

(declare-fun e!1790942 () Bool)

(declare-fun tp!903632 () Bool)

(declare-fun inv!45225 (Conc!10320) Bool)

(assert (=> b!2829346 (= e!1790942 (and (inv!45225 (c!457753 v!6247)) tp!903632))))

(declare-fun b!2829347 () Bool)

(declare-fun size!25897 (BalanceConc!20276) Int)

(declare-fun charsOf!3089 (Token!9366) BalanceConc!20276)

(assert (=> b!2829347 (= e!1790930 (> (size!25897 (charsOf!3089 lt!1009090)) 0))))

(declare-fun b!2829348 () Bool)

(declare-fun res!1177853 () Bool)

(assert (=> b!2829348 (=> res!1177853 e!1790927)))

(declare-fun contains!6075 (List!33387 Token!9366) Bool)

(assert (=> b!2829348 (= res!1177853 (not (contains!6075 lt!1009092 lt!1009085)))))

(declare-fun b!2829349 () Bool)

(declare-fun res!1177855 () Bool)

(assert (=> b!2829349 (=> (not res!1177855) (not e!1790920))))

(declare-fun isEmpty!18381 (List!33390) Bool)

(assert (=> b!2829349 (= res!1177855 (not (isEmpty!18381 rules!1102)))))

(assert (=> b!2829350 (= e!1790928 (and tp!903644 tp!903646))))

(declare-fun b!2829351 () Bool)

(assert (=> b!2829351 (= e!1790939 (and (>= (+ 1 from!827) 0) (<= (+ 1 from!827) lt!1009089)))))

(declare-fun b!2829352 () Bool)

(declare-fun res!1177845 () Bool)

(assert (=> b!2829352 (=> res!1177845 e!1790935)))

(assert (=> b!2829352 (= res!1177845 (not (contains!6075 lt!1009092 lt!1009090)))))

(declare-fun b!2829353 () Bool)

(declare-fun res!1177851 () Bool)

(assert (=> b!2829353 (=> (not res!1177851) (not e!1790920))))

(declare-fun rulesProduceEachTokenIndividually!1093 (LexerInterface!4573 List!33390 BalanceConc!20278) Bool)

(assert (=> b!2829353 (= res!1177851 (rulesProduceEachTokenIndividually!1093 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2829354 () Bool)

(declare-fun e!1790926 () Bool)

(declare-fun tp!903642 () Bool)

(assert (=> b!2829354 (= e!1790926 (and e!1790931 tp!903642))))

(declare-fun tp!903640 () Bool)

(declare-fun tp!903637 () Bool)

(declare-fun e!1790945 () Bool)

(declare-fun array_inv!4621 (array!14487) Bool)

(assert (=> b!2829355 (= e!1790944 (and tp!903635 tp!903640 tp!903637 (array_inv!4619 (_keys!4374 (v!34305 (underlying!8377 (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))))) (array_inv!4621 (_values!4355 (v!34305 (underlying!8377 (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))))) e!1790945))))

(declare-fun res!1177856 () Bool)

(assert (=> start!274782 (=> (not res!1177856) (not e!1790929))))

(assert (=> start!274782 (= res!1177856 (and ((_ is Lexer!4571) thiss!11212) (>= from!827 0)))))

(assert (=> start!274782 e!1790929))

(assert (=> start!274782 e!1790926))

(declare-fun inv!45226 (BalanceConc!20278) Bool)

(assert (=> start!274782 (and (inv!45226 v!6247) e!1790942)))

(assert (=> start!274782 true))

(declare-fun e!1790921 () Bool)

(declare-fun inv!45227 (CacheDown!2798) Bool)

(assert (=> start!274782 (and (inv!45227 cacheDown!433) e!1790921)))

(declare-fun inv!45228 (CacheUp!2676) Bool)

(assert (=> start!274782 (and (inv!45228 cacheUp!420) e!1790933)))

(declare-fun b!2829356 () Bool)

(assert (=> b!2829356 (= e!1790921 e!1790925)))

(declare-fun b!2829357 () Bool)

(declare-fun lt!1009086 () MutLongMap!4074)

(assert (=> b!2829357 (= e!1790932 (and e!1790922 ((_ is LongMap!4074) lt!1009086)))))

(assert (=> b!2829357 (= lt!1009086 (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))))

(declare-fun b!2829358 () Bool)

(declare-fun tp!903628 () Bool)

(assert (=> b!2829358 (= e!1790945 (and tp!903628 mapRes!18507))))

(declare-fun condMapEmpty!18507 () Bool)

(declare-fun mapDefault!18506 () List!33391)

(assert (=> b!2829358 (= condMapEmpty!18507 (= (arr!6455 (_values!4355 (v!34305 (underlying!8377 (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33391)) mapDefault!18506)))))

(declare-fun b!2829359 () Bool)

(assert (=> b!2829359 (= e!1790924 e!1790938)))

(assert (= (and start!274782 res!1177856) b!2829340))

(assert (= (and b!2829340 res!1177854) b!2829349))

(assert (= (and b!2829349 res!1177855) b!2829339))

(assert (= (and b!2829339 res!1177852) b!2829353))

(assert (= (and b!2829353 res!1177851) b!2829342))

(assert (= (and b!2829342 res!1177846) b!2829332))

(assert (= (and b!2829332 (not res!1177849)) b!2829348))

(assert (= (and b!2829348 (not res!1177853)) b!2829330))

(assert (= (and b!2829330 (not res!1177848)) b!2829352))

(assert (= (and b!2829352 (not res!1177845)) b!2829335))

(assert (= (and b!2829335 res!1177847) b!2829347))

(assert (= (and b!2829335 (not res!1177850)) b!2829351))

(assert (= b!2829338 b!2829350))

(assert (= b!2829354 b!2829338))

(assert (= (and start!274782 ((_ is Cons!33266) rules!1102)) b!2829354))

(assert (= start!274782 b!2829346))

(assert (= (and b!2829358 condMapEmpty!18507) mapIsEmpty!18507))

(assert (= (and b!2829358 (not condMapEmpty!18507)) mapNonEmpty!18507))

(assert (= b!2829355 b!2829358))

(assert (= b!2829336 b!2829355))

(assert (= b!2829337 b!2829336))

(assert (= (and b!2829357 ((_ is LongMap!4074) (v!34306 (underlying!8378 (cache!4115 cacheDown!433))))) b!2829337))

(assert (= b!2829331 b!2829357))

(assert (= (and b!2829356 ((_ is HashMap!3980) (cache!4115 cacheDown!433))) b!2829331))

(assert (= start!274782 b!2829356))

(assert (= (and b!2829334 condMapEmpty!18506) mapIsEmpty!18506))

(assert (= (and b!2829334 (not condMapEmpty!18506)) mapNonEmpty!18506))

(assert (= b!2829341 b!2829334))

(assert (= b!2829343 b!2829341))

(assert (= b!2829359 b!2829343))

(assert (= (and b!2829345 ((_ is LongMap!4073) (v!34304 (underlying!8376 (cache!4114 cacheUp!420))))) b!2829359))

(assert (= b!2829344 b!2829345))

(assert (= (and b!2829333 ((_ is HashMap!3979) (cache!4114 cacheUp!420))) b!2829344))

(assert (= start!274782 b!2829333))

(declare-fun m!3258829 () Bool)

(assert (=> b!2829332 m!3258829))

(declare-fun m!3258831 () Bool)

(assert (=> b!2829332 m!3258831))

(declare-fun m!3258833 () Bool)

(assert (=> b!2829332 m!3258833))

(declare-fun m!3258835 () Bool)

(assert (=> b!2829332 m!3258835))

(declare-fun m!3258837 () Bool)

(assert (=> b!2829332 m!3258837))

(declare-fun m!3258839 () Bool)

(assert (=> b!2829332 m!3258839))

(declare-fun m!3258841 () Bool)

(assert (=> b!2829332 m!3258841))

(declare-fun m!3258843 () Bool)

(assert (=> b!2829332 m!3258843))

(declare-fun m!3258845 () Bool)

(assert (=> b!2829332 m!3258845))

(declare-fun m!3258847 () Bool)

(assert (=> b!2829332 m!3258847))

(declare-fun m!3258849 () Bool)

(assert (=> b!2829332 m!3258849))

(declare-fun m!3258851 () Bool)

(assert (=> b!2829332 m!3258851))

(declare-fun m!3258853 () Bool)

(assert (=> b!2829332 m!3258853))

(declare-fun m!3258855 () Bool)

(assert (=> b!2829332 m!3258855))

(declare-fun m!3258857 () Bool)

(assert (=> b!2829332 m!3258857))

(declare-fun m!3258859 () Bool)

(assert (=> b!2829332 m!3258859))

(declare-fun m!3258861 () Bool)

(assert (=> b!2829353 m!3258861))

(declare-fun m!3258863 () Bool)

(assert (=> b!2829347 m!3258863))

(assert (=> b!2829347 m!3258863))

(declare-fun m!3258865 () Bool)

(assert (=> b!2829347 m!3258865))

(declare-fun m!3258867 () Bool)

(assert (=> b!2829346 m!3258867))

(declare-fun m!3258869 () Bool)

(assert (=> mapNonEmpty!18507 m!3258869))

(declare-fun m!3258871 () Bool)

(assert (=> b!2829349 m!3258871))

(declare-fun m!3258873 () Bool)

(assert (=> b!2829330 m!3258873))

(declare-fun m!3258875 () Bool)

(assert (=> b!2829330 m!3258875))

(declare-fun m!3258877 () Bool)

(assert (=> start!274782 m!3258877))

(declare-fun m!3258879 () Bool)

(assert (=> start!274782 m!3258879))

(declare-fun m!3258881 () Bool)

(assert (=> start!274782 m!3258881))

(declare-fun m!3258883 () Bool)

(assert (=> mapNonEmpty!18506 m!3258883))

(declare-fun m!3258885 () Bool)

(assert (=> b!2829340 m!3258885))

(declare-fun m!3258887 () Bool)

(assert (=> b!2829339 m!3258887))

(declare-fun m!3258889 () Bool)

(assert (=> b!2829352 m!3258889))

(declare-fun m!3258891 () Bool)

(assert (=> b!2829335 m!3258891))

(declare-fun m!3258893 () Bool)

(assert (=> b!2829335 m!3258893))

(declare-fun m!3258895 () Bool)

(assert (=> b!2829335 m!3258895))

(declare-fun m!3258897 () Bool)

(assert (=> b!2829335 m!3258897))

(declare-fun m!3258899 () Bool)

(assert (=> b!2829335 m!3258899))

(declare-fun m!3258901 () Bool)

(assert (=> b!2829341 m!3258901))

(declare-fun m!3258903 () Bool)

(assert (=> b!2829341 m!3258903))

(declare-fun m!3258905 () Bool)

(assert (=> b!2829348 m!3258905))

(declare-fun m!3258907 () Bool)

(assert (=> b!2829338 m!3258907))

(declare-fun m!3258909 () Bool)

(assert (=> b!2829338 m!3258909))

(declare-fun m!3258911 () Bool)

(assert (=> b!2829355 m!3258911))

(declare-fun m!3258913 () Bool)

(assert (=> b!2829355 m!3258913))

(check-sat (not b!2829346) (not b!2829348) (not b_next!81889) (not b_next!81891) b_and!206853 b_and!206845 (not b_next!81899) (not b_next!81893) (not b!2829353) b_and!206851 b_and!206843 b_and!206847 (not b_next!81897) (not b!2829352) (not mapNonEmpty!18507) (not b!2829340) (not b!2829339) (not b!2829358) (not mapNonEmpty!18506) (not b!2829347) (not b!2829354) b_and!206849 (not b!2829355) (not b!2829338) (not b!2829334) (not b!2829349) (not b_next!81895) (not b!2829330) (not b!2829341) (not b!2829332) (not start!274782) (not b!2829335))
(check-sat (not b_next!81897) (not b_next!81889) (not b_next!81891) b_and!206849 b_and!206853 b_and!206845 (not b_next!81899) (not b_next!81895) (not b_next!81893) b_and!206851 b_and!206843 b_and!206847)
