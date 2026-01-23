; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261646 () Bool)

(assert start!261646)

(declare-fun b!2690772 () Bool)

(declare-fun b_free!75985 () Bool)

(declare-fun b_next!76689 () Bool)

(assert (=> b!2690772 (= b_free!75985 (not b_next!76689))))

(declare-fun tp!851026 () Bool)

(declare-fun b_and!199087 () Bool)

(assert (=> b!2690772 (= tp!851026 b_and!199087)))

(declare-fun b!2690761 () Bool)

(declare-fun b_free!75987 () Bool)

(declare-fun b_next!76691 () Bool)

(assert (=> b!2690761 (= b_free!75987 (not b_next!76691))))

(declare-fun tp!851022 () Bool)

(declare-fun b_and!199089 () Bool)

(assert (=> b!2690761 (= tp!851022 b_and!199089)))

(declare-fun b!2690758 () Bool)

(declare-fun b_free!75989 () Bool)

(declare-fun b_next!76693 () Bool)

(assert (=> b!2690758 (= b_free!75989 (not b_next!76693))))

(declare-fun tp!851032 () Bool)

(declare-fun b_and!199091 () Bool)

(assert (=> b!2690758 (= tp!851032 b_and!199091)))

(declare-fun b!2690743 () Bool)

(declare-fun b_free!75991 () Bool)

(declare-fun b_next!76695 () Bool)

(assert (=> b!2690743 (= b_free!75991 (not b_next!76695))))

(declare-fun tp!851038 () Bool)

(declare-fun b_and!199093 () Bool)

(assert (=> b!2690743 (= tp!851038 b_and!199093)))

(declare-fun b_free!75993 () Bool)

(declare-fun b_next!76697 () Bool)

(assert (=> b!2690743 (= b_free!75993 (not b_next!76697))))

(declare-fun tp!851036 () Bool)

(declare-fun b_and!199095 () Bool)

(assert (=> b!2690743 (= tp!851036 b_and!199095)))

(declare-fun b!2690747 () Bool)

(declare-fun b_free!75995 () Bool)

(declare-fun b_next!76699 () Bool)

(assert (=> b!2690747 (= b_free!75995 (not b_next!76699))))

(declare-fun tp!851027 () Bool)

(declare-fun b_and!199097 () Bool)

(assert (=> b!2690747 (= tp!851027 b_and!199097)))

(declare-fun b!2690742 () Bool)

(declare-fun e!1696401 () Bool)

(declare-fun e!1696399 () Bool)

(declare-fun tp!851021 () Bool)

(assert (=> b!2690742 (= e!1696401 (and e!1696399 tp!851021))))

(declare-fun b!2690744 () Bool)

(declare-fun e!1696403 () Bool)

(declare-fun e!1696405 () Bool)

(assert (=> b!2690744 (= e!1696403 e!1696405)))

(declare-datatypes ((List!31126 0))(
  ( (Nil!31026) (Cons!31026 (h!36446 (_ BitVec 16)) (t!225060 List!31126)) )
))
(declare-datatypes ((TokenValue!4959 0))(
  ( (FloatLiteralValue!9918 (text!35158 List!31126)) (TokenValueExt!4958 (__x!19915 Int)) (Broken!24795 (value!152593 List!31126)) (Object!5058) (End!4959) (Def!4959) (Underscore!4959) (Match!4959) (Else!4959) (Error!4959) (Case!4959) (If!4959) (Extends!4959) (Abstract!4959) (Class!4959) (Val!4959) (DelimiterValue!9918 (del!5019 List!31126)) (KeywordValue!4965 (value!152594 List!31126)) (CommentValue!9918 (value!152595 List!31126)) (WhitespaceValue!9918 (value!152596 List!31126)) (IndentationValue!4959 (value!152597 List!31126)) (String!34694) (Int32!4959) (Broken!24796 (value!152598 List!31126)) (Boolean!4960) (Unit!45158) (OperatorValue!4962 (op!5019 List!31126)) (IdentifierValue!9918 (value!152599 List!31126)) (IdentifierValue!9919 (value!152600 List!31126)) (WhitespaceValue!9919 (value!152601 List!31126)) (True!9918) (False!9918) (Broken!24797 (value!152602 List!31126)) (Broken!24798 (value!152603 List!31126)) (True!9919) (RightBrace!4959) (RightBracket!4959) (Colon!4959) (Null!4959) (Comma!4959) (LeftBracket!4959) (False!9919) (LeftBrace!4959) (ImaginaryLiteralValue!4959 (text!35159 List!31126)) (StringLiteralValue!14877 (value!152604 List!31126)) (EOFValue!4959 (value!152605 List!31126)) (IdentValue!4959 (value!152606 List!31126)) (DelimiterValue!9919 (value!152607 List!31126)) (DedentValue!4959 (value!152608 List!31126)) (NewLineValue!4959 (value!152609 List!31126)) (IntegerValue!14877 (value!152610 (_ BitVec 32)) (text!35160 List!31126)) (IntegerValue!14878 (value!152611 Int) (text!35161 List!31126)) (Times!4959) (Or!4959) (Equal!4959) (Minus!4959) (Broken!24799 (value!152612 List!31126)) (And!4959) (Div!4959) (LessEqual!4959) (Mod!4959) (Concat!12848) (Not!4959) (Plus!4959) (SpaceValue!4959 (value!152613 List!31126)) (IntegerValue!14879 (value!152614 Int) (text!35162 List!31126)) (StringLiteralValue!14878 (text!35163 List!31126)) (FloatLiteralValue!9919 (text!35164 List!31126)) (BytesLiteralValue!4959 (value!152615 List!31126)) (CommentValue!9919 (value!152616 List!31126)) (StringLiteralValue!14879 (value!152617 List!31126)) (ErrorTokenValue!4959 (msg!5020 List!31126)) )
))
(declare-datatypes ((C!15936 0))(
  ( (C!15937 (val!9902 Int)) )
))
(declare-datatypes ((Regex!7889 0))(
  ( (ElementMatch!7889 (c!433767 C!15936)) (Concat!12849 (regOne!16290 Regex!7889) (regTwo!16290 Regex!7889)) (EmptyExpr!7889) (Star!7889 (reg!8218 Regex!7889)) (EmptyLang!7889) (Union!7889 (regOne!16291 Regex!7889) (regTwo!16291 Regex!7889)) )
))
(declare-datatypes ((String!34695 0))(
  ( (String!34696 (value!152618 String)) )
))
(declare-datatypes ((List!31127 0))(
  ( (Nil!31027) (Cons!31027 (h!36447 C!15936) (t!225061 List!31127)) )
))
(declare-datatypes ((IArray!19411 0))(
  ( (IArray!19412 (innerList!9763 List!31127)) )
))
(declare-datatypes ((Conc!9703 0))(
  ( (Node!9703 (left!23939 Conc!9703) (right!24269 Conc!9703) (csize!19636 Int) (cheight!9914 Int)) (Leaf!14816 (xs!12739 IArray!19411) (csize!19637 Int)) (Empty!9703) )
))
(declare-datatypes ((BalanceConc!19020 0))(
  ( (BalanceConc!19021 (c!433768 Conc!9703)) )
))
(declare-datatypes ((TokenValueInjection!9358 0))(
  ( (TokenValueInjection!9359 (toValue!6693 Int) (toChars!6552 Int)) )
))
(declare-datatypes ((Rule!9274 0))(
  ( (Rule!9275 (regex!4737 Regex!7889) (tag!5241 String!34695) (isSeparator!4737 Bool) (transformation!4737 TokenValueInjection!9358)) )
))
(declare-datatypes ((Token!8940 0))(
  ( (Token!8941 (value!152619 TokenValue!4959) (rule!7152 Rule!9274) (size!23964 Int) (originalCharacters!5501 List!31127)) )
))
(declare-datatypes ((List!31128 0))(
  ( (Nil!31028) (Cons!31028 (h!36448 Token!8940) (t!225062 List!31128)) )
))
(declare-datatypes ((IArray!19413 0))(
  ( (IArray!19414 (innerList!9764 List!31128)) )
))
(declare-datatypes ((Conc!9704 0))(
  ( (Node!9704 (left!23940 Conc!9704) (right!24270 Conc!9704) (csize!19638 Int) (cheight!9915 Int)) (Leaf!14817 (xs!12740 IArray!19413) (csize!19639 Int)) (Empty!9704) )
))
(declare-datatypes ((BalanceConc!19022 0))(
  ( (BalanceConc!19023 (c!433769 Conc!9704)) )
))
(declare-datatypes ((tuple2!30560 0))(
  ( (tuple2!30561 (_1!17865 BalanceConc!19022) (_2!17865 BalanceConc!19020)) )
))
(declare-fun e!1696415 () tuple2!30560)

(declare-datatypes ((LexerInterface!4333 0))(
  ( (LexerInterfaceExt!4330 (__x!19916 Int)) (Lexer!4331) )
))
(declare-fun thiss!12257 () LexerInterface!4333)

(declare-fun lt!949283 () BalanceConc!19022)

(declare-fun b!2690745 () Bool)

(declare-fun totalInput!354 () BalanceConc!19020)

(declare-datatypes ((tuple2!30562 0))(
  ( (tuple2!30563 (_1!17866 Token!8940) (_2!17866 BalanceConc!19020)) )
))
(declare-datatypes ((Option!6128 0))(
  ( (None!6127) (Some!6127 (v!32824 tuple2!30562)) )
))
(declare-fun lt!949270 () Option!6128)

(declare-fun lt!949276 () BalanceConc!19020)

(declare-datatypes ((List!31129 0))(
  ( (Nil!31029) (Cons!31029 (h!36449 Rule!9274) (t!225063 List!31129)) )
))
(declare-fun rules!1381 () List!31129)

(declare-fun lexTailRec!22 (LexerInterface!4333 List!31129 BalanceConc!19020 BalanceConc!19020 BalanceConc!19020 BalanceConc!19022) tuple2!30560)

(assert (=> b!2690745 (= e!1696415 (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 lt!949276 (_2!17866 (v!32824 lt!949270)) lt!949283))))

(declare-fun lt!949278 () tuple2!30560)

(declare-fun lexRec!596 (LexerInterface!4333 List!31129 BalanceConc!19020) tuple2!30560)

(assert (=> b!2690745 (= lt!949278 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))))))

(declare-fun lt!949295 () BalanceConc!19020)

(declare-fun charsOf!2985 (Token!8940) BalanceConc!19020)

(assert (=> b!2690745 (= lt!949295 (charsOf!2985 (_1!17866 (v!32824 lt!949270))))))

(declare-fun lt!949286 () List!31127)

(declare-fun list!11708 (BalanceConc!19020) List!31127)

(assert (=> b!2690745 (= lt!949286 (list!11708 lt!949295))))

(declare-fun lt!949287 () List!31127)

(assert (=> b!2690745 (= lt!949287 (list!11708 (_2!17866 (v!32824 lt!949270))))))

(declare-fun lt!949288 () List!31127)

(declare-datatypes ((Unit!45159 0))(
  ( (Unit!45160) )
))
(declare-fun lt!949271 () Unit!45159)

(declare-fun lemmaConcatAssociativity!1543 (List!31127 List!31127 List!31127) Unit!45159)

(assert (=> b!2690745 (= lt!949271 (lemmaConcatAssociativity!1543 lt!949288 lt!949286 lt!949287))))

(declare-fun lt!949273 () List!31127)

(declare-fun ++!7594 (List!31127 List!31127) List!31127)

(assert (=> b!2690745 (= lt!949273 (++!7594 lt!949288 lt!949286))))

(declare-fun res!1130548 () Bool)

(assert (=> b!2690745 (= res!1130548 (= (++!7594 lt!949273 lt!949287) (++!7594 lt!949288 (++!7594 lt!949286 lt!949287))))))

(declare-fun e!1696418 () Bool)

(assert (=> b!2690745 (=> (not res!1130548) (not e!1696418))))

(assert (=> b!2690745 e!1696418))

(declare-fun lt!949293 () List!31128)

(assert (=> b!2690745 (= lt!949293 (Cons!31028 (_1!17866 (v!32824 lt!949270)) Nil!31028))))

(declare-fun lt!949279 () List!31128)

(declare-fun list!11709 (BalanceConc!19022) List!31128)

(assert (=> b!2690745 (= lt!949279 (list!11709 (_1!17865 lt!949278)))))

(declare-fun lt!949285 () Unit!45159)

(declare-fun lt!949275 () List!31128)

(declare-fun lemmaConcatAssociativity!1544 (List!31128 List!31128 List!31128) Unit!45159)

(assert (=> b!2690745 (= lt!949285 (lemmaConcatAssociativity!1544 lt!949275 lt!949293 lt!949279))))

(declare-fun ++!7595 (List!31128 List!31128) List!31128)

(assert (=> b!2690745 (= (++!7595 (++!7595 lt!949275 lt!949293) lt!949279) (++!7595 lt!949275 (++!7595 lt!949293 lt!949279)))))

(declare-fun acc!348 () BalanceConc!19022)

(declare-fun append!764 (BalanceConc!19022 Token!8940) BalanceConc!19022)

(assert (=> b!2690745 (= lt!949283 (append!764 acc!348 (_1!17866 (v!32824 lt!949270))))))

(declare-fun lt!949289 () List!31128)

(assert (=> b!2690745 (= lt!949289 (list!11709 lt!949283))))

(declare-fun lt!949269 () Unit!45159)

(declare-fun lemmaLexThenLexPrefix!402 (LexerInterface!4333 List!31129 List!31127 List!31127 List!31128 List!31128 List!31127) Unit!45159)

(assert (=> b!2690745 (= lt!949269 (lemmaLexThenLexPrefix!402 thiss!12257 rules!1381 lt!949273 lt!949287 lt!949289 lt!949279 (list!11708 (_2!17865 lt!949278))))))

(declare-datatypes ((tuple2!30564 0))(
  ( (tuple2!30565 (_1!17867 List!31128) (_2!17867 List!31127)) )
))
(declare-fun lexList!1189 (LexerInterface!4333 List!31129 List!31127) tuple2!30564)

(assert (=> b!2690745 (= (lexList!1189 thiss!12257 rules!1381 lt!949273) (tuple2!30565 lt!949289 Nil!31027))))

(declare-fun treated!26 () BalanceConc!19020)

(declare-fun ++!7596 (BalanceConc!19020 BalanceConc!19020) BalanceConc!19020)

(assert (=> b!2690745 (= lt!949276 (++!7596 treated!26 lt!949295))))

(declare-fun lt!949274 () Option!6128)

(declare-fun maxPrefixZipperSequence!998 (LexerInterface!4333 List!31129 BalanceConc!19020) Option!6128)

(assert (=> b!2690745 (= lt!949274 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949276))))

(declare-fun c!433766 () Bool)

(get-info :version)

(assert (=> b!2690745 (= c!433766 ((_ is Some!6127) lt!949274))))

(declare-fun e!1696427 () tuple2!30560)

(assert (=> b!2690745 (= (lexRec!596 thiss!12257 rules!1381 lt!949276) e!1696427)))

(declare-fun mapNonEmpty!16041 () Bool)

(declare-fun mapRes!16041 () Bool)

(declare-fun tp!851025 () Bool)

(declare-fun tp!851039 () Bool)

(assert (=> mapNonEmpty!16041 (= mapRes!16041 (and tp!851025 tp!851039))))

(declare-datatypes ((List!31130 0))(
  ( (Nil!31030) (Cons!31030 (h!36450 Regex!7889) (t!225064 List!31130)) )
))
(declare-datatypes ((Context!4326 0))(
  ( (Context!4327 (exprs!2663 List!31130)) )
))
(declare-datatypes ((tuple3!4230 0))(
  ( (tuple3!4231 (_1!17868 Regex!7889) (_2!17868 Context!4326) (_3!2585 C!15936)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30566 0))(
  ( (tuple2!30567 (_1!17869 tuple3!4230) (_2!17869 (InoxSet Context!4326))) )
))
(declare-datatypes ((List!31131 0))(
  ( (Nil!31031) (Cons!31031 (h!36451 tuple2!30566) (t!225065 List!31131)) )
))
(declare-fun mapValue!16042 () List!31131)

(declare-datatypes ((array!12497 0))(
  ( (array!12498 (arr!5584 (Array (_ BitVec 32) (_ BitVec 64))) (size!23965 (_ BitVec 32))) )
))
(declare-datatypes ((array!12499 0))(
  ( (array!12500 (arr!5585 (Array (_ BitVec 32) List!31131)) (size!23966 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7012 0))(
  ( (LongMapFixedSize!7013 (defaultEntry!3891 Int) (mask!9187 (_ BitVec 32)) (extraKeys!3755 (_ BitVec 32)) (zeroValue!3765 List!31131) (minValue!3765 List!31131) (_size!7055 (_ BitVec 32)) (_keys!3806 array!12497) (_values!3787 array!12499) (_vacant!3567 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13833 0))(
  ( (Cell!13834 (v!32825 LongMapFixedSize!7012)) )
))
(declare-datatypes ((MutLongMap!3506 0))(
  ( (LongMap!3506 (underlying!7215 Cell!13833)) (MutLongMapExt!3505 (__x!19917 Int)) )
))
(declare-datatypes ((Cell!13835 0))(
  ( (Cell!13836 (v!32826 MutLongMap!3506)) )
))
(declare-datatypes ((Hashable!3422 0))(
  ( (HashableExt!3421 (__x!19918 Int)) )
))
(declare-datatypes ((MutableMap!3412 0))(
  ( (MutableMapExt!3411 (__x!19919 Int)) (HashMap!3412 (underlying!7216 Cell!13835) (hashF!5454 Hashable!3422) (_size!7056 (_ BitVec 32)) (defaultValue!3583 Int)) )
))
(declare-datatypes ((CacheDown!2234 0))(
  ( (CacheDown!2235 (cache!3555 MutableMap!3412)) )
))
(declare-fun cacheDown!499 () CacheDown!2234)

(declare-fun mapKey!16041 () (_ BitVec 32))

(declare-fun mapRest!16042 () (Array (_ BitVec 32) List!31131))

(assert (=> mapNonEmpty!16041 (= (arr!5585 (_values!3787 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) (store mapRest!16042 mapKey!16041 mapValue!16042))))

(declare-fun b!2690746 () Bool)

(declare-fun e!1696416 () Bool)

(declare-fun e!1696397 () Bool)

(assert (=> b!2690746 (= e!1696416 e!1696397)))

(declare-fun res!1130557 () Bool)

(assert (=> b!2690746 (=> (not res!1130557) (not e!1696397))))

(declare-fun lt!949290 () tuple2!30560)

(declare-fun lt!949277 () tuple2!30560)

(declare-fun ++!7597 (BalanceConc!19022 BalanceConc!19022) BalanceConc!19022)

(assert (=> b!2690746 (= res!1130557 (= (list!11709 (_1!17865 lt!949290)) (list!11709 (++!7597 acc!348 (_1!17865 lt!949277)))))))

(declare-fun input!780 () BalanceConc!19020)

(assert (=> b!2690746 (= lt!949277 (lexRec!596 thiss!12257 rules!1381 input!780))))

(assert (=> b!2690746 (= lt!949290 (lexRec!596 thiss!12257 rules!1381 totalInput!354))))

(declare-fun e!1696414 () Bool)

(declare-fun tp!851030 () Bool)

(declare-fun e!1696421 () Bool)

(declare-fun tp!851029 () Bool)

(declare-fun array_inv!3988 (array!12497) Bool)

(declare-fun array_inv!3989 (array!12499) Bool)

(assert (=> b!2690747 (= e!1696421 (and tp!851027 tp!851030 tp!851029 (array_inv!3988 (_keys!3806 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) (array_inv!3989 (_values!3787 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) e!1696414))))

(declare-fun b!2690748 () Bool)

(declare-fun e!1696408 () Bool)

(declare-datatypes ((tuple2!30568 0))(
  ( (tuple2!30569 (_1!17870 Context!4326) (_2!17870 C!15936)) )
))
(declare-datatypes ((tuple2!30570 0))(
  ( (tuple2!30571 (_1!17871 tuple2!30568) (_2!17871 (InoxSet Context!4326))) )
))
(declare-datatypes ((List!31132 0))(
  ( (Nil!31032) (Cons!31032 (h!36452 tuple2!30570) (t!225066 List!31132)) )
))
(declare-datatypes ((array!12501 0))(
  ( (array!12502 (arr!5586 (Array (_ BitVec 32) List!31132)) (size!23967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7014 0))(
  ( (LongMapFixedSize!7015 (defaultEntry!3892 Int) (mask!9188 (_ BitVec 32)) (extraKeys!3756 (_ BitVec 32)) (zeroValue!3766 List!31132) (minValue!3766 List!31132) (_size!7057 (_ BitVec 32)) (_keys!3807 array!12497) (_values!3788 array!12501) (_vacant!3568 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13837 0))(
  ( (Cell!13838 (v!32827 LongMapFixedSize!7014)) )
))
(declare-datatypes ((MutLongMap!3507 0))(
  ( (LongMap!3507 (underlying!7217 Cell!13837)) (MutLongMapExt!3506 (__x!19920 Int)) )
))
(declare-fun lt!949272 () MutLongMap!3507)

(assert (=> b!2690748 (= e!1696408 (and e!1696403 ((_ is LongMap!3507) lt!949272)))))

(declare-datatypes ((Hashable!3423 0))(
  ( (HashableExt!3422 (__x!19921 Int)) )
))
(declare-datatypes ((Cell!13839 0))(
  ( (Cell!13840 (v!32828 MutLongMap!3507)) )
))
(declare-datatypes ((MutableMap!3413 0))(
  ( (MutableMapExt!3412 (__x!19922 Int)) (HashMap!3413 (underlying!7218 Cell!13839) (hashF!5455 Hashable!3423) (_size!7058 (_ BitVec 32)) (defaultValue!3584 Int)) )
))
(declare-datatypes ((CacheUp!2122 0))(
  ( (CacheUp!2123 (cache!3556 MutableMap!3413)) )
))
(declare-fun cacheUp!486 () CacheUp!2122)

(assert (=> b!2690748 (= lt!949272 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))

(declare-fun b!2690749 () Bool)

(declare-fun res!1130554 () Bool)

(declare-fun e!1696400 () Bool)

(assert (=> b!2690749 (=> (not res!1130554) (not e!1696400))))

(declare-fun valid!2717 (CacheDown!2234) Bool)

(assert (=> b!2690749 (= res!1130554 (valid!2717 cacheDown!499))))

(declare-fun b!2690750 () Bool)

(declare-fun e!1696424 () Bool)

(declare-fun tp!851020 () Bool)

(declare-fun inv!42060 (Conc!9703) Bool)

(assert (=> b!2690750 (= e!1696424 (and (inv!42060 (c!433768 treated!26)) tp!851020))))

(declare-fun b!2690751 () Bool)

(declare-fun e!1696420 () Bool)

(declare-fun e!1696410 () Bool)

(declare-fun lt!949291 () MutLongMap!3506)

(assert (=> b!2690751 (= e!1696420 (and e!1696410 ((_ is LongMap!3506) lt!949291)))))

(assert (=> b!2690751 (= lt!949291 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))

(declare-fun b!2690752 () Bool)

(declare-fun e!1696402 () Bool)

(assert (=> b!2690752 (= e!1696400 e!1696402)))

(declare-fun res!1130545 () Bool)

(assert (=> b!2690752 (=> (not res!1130545) (not e!1696402))))

(declare-fun lt!949267 () List!31127)

(declare-fun lt!949281 () List!31127)

(assert (=> b!2690752 (= res!1130545 (= lt!949267 (++!7594 lt!949288 lt!949281)))))

(assert (=> b!2690752 (= lt!949267 (list!11708 totalInput!354))))

(assert (=> b!2690752 (= lt!949281 (list!11708 input!780))))

(assert (=> b!2690752 (= lt!949288 (list!11708 treated!26))))

(declare-fun b!2690753 () Bool)

(declare-fun e!1696412 () Bool)

(assert (=> b!2690753 (= e!1696397 (not e!1696412))))

(declare-fun res!1130551 () Bool)

(assert (=> b!2690753 (=> res!1130551 e!1696412)))

(declare-datatypes ((tuple3!4232 0))(
  ( (tuple3!4233 (_1!17872 Option!6128) (_2!17872 CacheUp!2122) (_3!2586 CacheDown!2234)) )
))
(declare-fun lt!949282 () tuple3!4232)

(assert (=> b!2690753 (= res!1130551 (not ((_ is Some!6127) (_1!17872 lt!949282))))))

(declare-fun maxPrefixZipperSequenceMem!10 (LexerInterface!4333 List!31129 BalanceConc!19020 CacheUp!2122 CacheDown!2234) tuple3!4232)

(assert (=> b!2690753 (= lt!949282 (maxPrefixZipperSequenceMem!10 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1696411 () Bool)

(assert (=> b!2690753 e!1696411))

(declare-fun res!1130559 () Bool)

(assert (=> b!2690753 (=> (not res!1130559) (not e!1696411))))

(assert (=> b!2690753 (= res!1130559 (= (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1696415))))

(declare-fun c!433765 () Bool)

(assert (=> b!2690753 (= c!433765 ((_ is Some!6127) lt!949270))))

(assert (=> b!2690753 (= lt!949270 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780))))

(declare-fun mapNonEmpty!16042 () Bool)

(declare-fun mapRes!16042 () Bool)

(declare-fun tp!851031 () Bool)

(declare-fun tp!851037 () Bool)

(assert (=> mapNonEmpty!16042 (= mapRes!16042 (and tp!851031 tp!851037))))

(declare-fun mapRest!16041 () (Array (_ BitVec 32) List!31132))

(declare-fun mapValue!16041 () List!31132)

(declare-fun mapKey!16042 () (_ BitVec 32))

(assert (=> mapNonEmpty!16042 (= (arr!5586 (_values!3788 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) (store mapRest!16041 mapKey!16042 mapValue!16041))))

(declare-fun b!2690754 () Bool)

(declare-fun e!1696429 () Bool)

(assert (=> b!2690754 (= e!1696405 e!1696429)))

(declare-fun b!2690755 () Bool)

(declare-fun res!1130547 () Bool)

(declare-fun e!1696426 () Bool)

(assert (=> b!2690755 (=> res!1130547 e!1696426)))

(assert (=> b!2690755 (= res!1130547 (not (valid!2717 (_3!2586 lt!949282))))))

(declare-fun b!2690756 () Bool)

(declare-fun res!1130550 () Bool)

(assert (=> b!2690756 (=> res!1130550 e!1696426)))

(declare-fun lt!949268 () BalanceConc!19020)

(assert (=> b!2690756 (= res!1130550 (not (= lt!949267 (++!7594 (list!11708 lt!949268) (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282))))))))))

(declare-fun e!1696413 () Bool)

(assert (=> b!2690743 (= e!1696413 (and tp!851038 tp!851036))))

(declare-fun res!1130553 () Bool)

(assert (=> start!261646 (=> (not res!1130553) (not e!1696400))))

(assert (=> start!261646 (= res!1130553 ((_ is Lexer!4331) thiss!12257))))

(assert (=> start!261646 e!1696400))

(declare-fun e!1696406 () Bool)

(declare-fun inv!42061 (BalanceConc!19020) Bool)

(assert (=> start!261646 (and (inv!42061 totalInput!354) e!1696406)))

(declare-fun e!1696423 () Bool)

(declare-fun inv!42062 (CacheUp!2122) Bool)

(assert (=> start!261646 (and (inv!42062 cacheUp!486) e!1696423)))

(declare-fun e!1696417 () Bool)

(declare-fun inv!42063 (BalanceConc!19022) Bool)

(assert (=> start!261646 (and (inv!42063 acc!348) e!1696417)))

(declare-fun e!1696430 () Bool)

(assert (=> start!261646 (and (inv!42061 input!780) e!1696430)))

(assert (=> start!261646 (and (inv!42061 treated!26) e!1696424)))

(assert (=> start!261646 e!1696401))

(assert (=> start!261646 true))

(declare-fun e!1696398 () Bool)

(declare-fun inv!42064 (CacheDown!2234) Bool)

(assert (=> start!261646 (and (inv!42064 cacheDown!499) e!1696398)))

(declare-fun b!2690757 () Bool)

(declare-fun res!1130549 () Bool)

(assert (=> b!2690757 (=> (not res!1130549) (not e!1696416))))

(declare-fun lt!949284 () tuple2!30560)

(declare-fun isEmpty!17707 (List!31127) Bool)

(assert (=> b!2690757 (= res!1130549 (isEmpty!17707 (list!11708 (_2!17865 lt!949284))))))

(declare-fun tp!851028 () Bool)

(declare-fun e!1696425 () Bool)

(declare-fun tp!851035 () Bool)

(declare-fun array_inv!3990 (array!12501) Bool)

(assert (=> b!2690758 (= e!1696429 (and tp!851032 tp!851028 tp!851035 (array_inv!3988 (_keys!3807 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) (array_inv!3990 (_values!3788 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) e!1696425))))

(declare-fun b!2690759 () Bool)

(declare-fun res!1130555 () Bool)

(assert (=> b!2690759 (=> (not res!1130555) (not e!1696397))))

(assert (=> b!2690759 (= res!1130555 (= (list!11708 (_2!17865 lt!949290)) (list!11708 (_2!17865 lt!949277))))))

(declare-fun b!2690760 () Bool)

(declare-fun e!1696428 () Bool)

(assert (=> b!2690760 (= e!1696398 e!1696428)))

(declare-fun e!1696407 () Bool)

(assert (=> b!2690761 (= e!1696407 (and e!1696408 tp!851022))))

(declare-fun b!2690762 () Bool)

(declare-fun tp!851040 () Bool)

(declare-fun inv!42065 (Conc!9704) Bool)

(assert (=> b!2690762 (= e!1696417 (and (inv!42065 (c!433769 acc!348)) tp!851040))))

(declare-fun b!2690763 () Bool)

(declare-fun res!1130556 () Bool)

(assert (=> b!2690763 (=> (not res!1130556) (not e!1696400))))

(declare-fun rulesInvariant!3824 (LexerInterface!4333 List!31129) Bool)

(assert (=> b!2690763 (= res!1130556 (rulesInvariant!3824 thiss!12257 rules!1381))))

(declare-fun b!2690764 () Bool)

(declare-fun prepend!1069 (BalanceConc!19022 Token!8940) BalanceConc!19022)

(assert (=> b!2690764 (= e!1696418 (= lt!949277 (tuple2!30561 (prepend!1069 (_1!17865 lt!949278) (_1!17866 (v!32824 lt!949270))) (_2!17865 lt!949278))))))

(declare-fun b!2690765 () Bool)

(assert (=> b!2690765 (= e!1696427 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949276))))

(declare-fun lt!949294 () BalanceConc!19022)

(declare-fun b!2690766 () Bool)

(assert (=> b!2690766 (= e!1696426 (= (list!11709 (_1!17865 (lexRec!596 thiss!12257 rules!1381 lt!949268))) (list!11709 lt!949294)))))

(declare-fun b!2690767 () Bool)

(declare-fun tp!851023 () Bool)

(declare-fun inv!42058 (String!34695) Bool)

(declare-fun inv!42066 (TokenValueInjection!9358) Bool)

(assert (=> b!2690767 (= e!1696399 (and tp!851023 (inv!42058 (tag!5241 (h!36449 rules!1381))) (inv!42066 (transformation!4737 (h!36449 rules!1381))) e!1696413))))

(declare-fun b!2690768 () Bool)

(declare-fun res!1130552 () Bool)

(assert (=> b!2690768 (=> (not res!1130552) (not e!1696400))))

(declare-fun valid!2718 (CacheUp!2122) Bool)

(assert (=> b!2690768 (= res!1130552 (valid!2718 cacheUp!486))))

(declare-fun mapIsEmpty!16041 () Bool)

(assert (=> mapIsEmpty!16041 mapRes!16041))

(declare-fun b!2690769 () Bool)

(assert (=> b!2690769 (= e!1696423 e!1696407)))

(declare-fun b!2690770 () Bool)

(declare-fun e!1696409 () Bool)

(assert (=> b!2690770 (= e!1696409 e!1696421)))

(declare-fun b!2690771 () Bool)

(assert (=> b!2690771 (= e!1696402 e!1696416)))

(declare-fun res!1130560 () Bool)

(assert (=> b!2690771 (=> (not res!1130560) (not e!1696416))))

(declare-fun lt!949280 () List!31128)

(assert (=> b!2690771 (= res!1130560 (= lt!949280 lt!949275))))

(assert (=> b!2690771 (= lt!949275 (list!11709 acc!348))))

(assert (=> b!2690771 (= lt!949280 (list!11709 (_1!17865 lt!949284)))))

(assert (=> b!2690771 (= lt!949284 (lexRec!596 thiss!12257 rules!1381 treated!26))))

(assert (=> b!2690772 (= e!1696428 (and e!1696420 tp!851026))))

(declare-fun mapIsEmpty!16042 () Bool)

(assert (=> mapIsEmpty!16042 mapRes!16042))

(declare-fun b!2690773 () Bool)

(declare-fun tp!851024 () Bool)

(assert (=> b!2690773 (= e!1696406 (and (inv!42060 (c!433768 totalInput!354)) tp!851024))))

(declare-fun b!2690774 () Bool)

(assert (=> b!2690774 (= e!1696412 e!1696426)))

(declare-fun res!1130558 () Bool)

(assert (=> b!2690774 (=> res!1130558 e!1696426)))

(assert (=> b!2690774 (= res!1130558 (not (valid!2718 (_2!17872 lt!949282))))))

(assert (=> b!2690774 (= lt!949294 (append!764 acc!348 (_1!17866 (v!32824 (_1!17872 lt!949282)))))))

(assert (=> b!2690774 (= lt!949268 (++!7596 treated!26 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))))

(declare-fun b!2690775 () Bool)

(declare-fun tp!851019 () Bool)

(assert (=> b!2690775 (= e!1696414 (and tp!851019 mapRes!16041))))

(declare-fun condMapEmpty!16042 () Bool)

(declare-fun mapDefault!16041 () List!31131)

(assert (=> b!2690775 (= condMapEmpty!16042 (= (arr!5585 (_values!3787 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31131)) mapDefault!16041)))))

(declare-fun b!2690776 () Bool)

(declare-fun tp!851033 () Bool)

(assert (=> b!2690776 (= e!1696430 (and (inv!42060 (c!433768 input!780)) tp!851033))))

(declare-fun b!2690777 () Bool)

(declare-fun res!1130546 () Bool)

(assert (=> b!2690777 (=> (not res!1130546) (not e!1696400))))

(declare-fun isEmpty!17708 (List!31129) Bool)

(assert (=> b!2690777 (= res!1130546 (not (isEmpty!17708 rules!1381)))))

(declare-fun b!2690778 () Bool)

(declare-fun tp!851034 () Bool)

(assert (=> b!2690778 (= e!1696425 (and tp!851034 mapRes!16042))))

(declare-fun condMapEmpty!16041 () Bool)

(declare-fun mapDefault!16042 () List!31132)

(assert (=> b!2690778 (= condMapEmpty!16041 (= (arr!5586 (_values!3788 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31132)) mapDefault!16042)))))

(declare-fun b!2690779 () Bool)

(declare-fun lt!949292 () tuple2!30560)

(assert (=> b!2690779 (= lt!949292 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949274))))))

(assert (=> b!2690779 (= e!1696427 (tuple2!30561 (prepend!1069 (_1!17865 lt!949292) (_1!17866 (v!32824 lt!949274))) (_2!17865 lt!949292)))))

(declare-fun b!2690780 () Bool)

(assert (=> b!2690780 (= e!1696410 e!1696409)))

(declare-fun b!2690781 () Bool)

(assert (=> b!2690781 (= e!1696415 (tuple2!30561 acc!348 input!780))))

(declare-fun b!2690782 () Bool)

(declare-fun lex!1954 (LexerInterface!4333 List!31129 BalanceConc!19020) tuple2!30560)

(declare-fun lexTailRecV2!866 (LexerInterface!4333 List!31129 BalanceConc!19020 BalanceConc!19020 BalanceConc!19020 BalanceConc!19022) tuple2!30560)

(assert (=> b!2690782 (= e!1696411 (= (lex!1954 thiss!12257 rules!1381 input!780) (lexTailRecV2!866 thiss!12257 rules!1381 input!780 (BalanceConc!19021 Empty!9703) input!780 (BalanceConc!19023 Empty!9704))))))

(assert (= (and start!261646 res!1130553) b!2690777))

(assert (= (and b!2690777 res!1130546) b!2690763))

(assert (= (and b!2690763 res!1130556) b!2690768))

(assert (= (and b!2690768 res!1130552) b!2690749))

(assert (= (and b!2690749 res!1130554) b!2690752))

(assert (= (and b!2690752 res!1130545) b!2690771))

(assert (= (and b!2690771 res!1130560) b!2690757))

(assert (= (and b!2690757 res!1130549) b!2690746))

(assert (= (and b!2690746 res!1130557) b!2690759))

(assert (= (and b!2690759 res!1130555) b!2690753))

(assert (= (and b!2690753 c!433765) b!2690745))

(assert (= (and b!2690753 (not c!433765)) b!2690781))

(assert (= (and b!2690745 res!1130548) b!2690764))

(assert (= (and b!2690745 c!433766) b!2690779))

(assert (= (and b!2690745 (not c!433766)) b!2690765))

(assert (= (and b!2690753 res!1130559) b!2690782))

(assert (= (and b!2690753 (not res!1130551)) b!2690774))

(assert (= (and b!2690774 (not res!1130558)) b!2690755))

(assert (= (and b!2690755 (not res!1130547)) b!2690756))

(assert (= (and b!2690756 (not res!1130550)) b!2690766))

(assert (= start!261646 b!2690773))

(assert (= (and b!2690778 condMapEmpty!16041) mapIsEmpty!16042))

(assert (= (and b!2690778 (not condMapEmpty!16041)) mapNonEmpty!16042))

(assert (= b!2690758 b!2690778))

(assert (= b!2690754 b!2690758))

(assert (= b!2690744 b!2690754))

(assert (= (and b!2690748 ((_ is LongMap!3507) (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))) b!2690744))

(assert (= b!2690761 b!2690748))

(assert (= (and b!2690769 ((_ is HashMap!3413) (cache!3556 cacheUp!486))) b!2690761))

(assert (= start!261646 b!2690769))

(assert (= start!261646 b!2690762))

(assert (= start!261646 b!2690776))

(assert (= start!261646 b!2690750))

(assert (= b!2690767 b!2690743))

(assert (= b!2690742 b!2690767))

(assert (= (and start!261646 ((_ is Cons!31029) rules!1381)) b!2690742))

(assert (= (and b!2690775 condMapEmpty!16042) mapIsEmpty!16041))

(assert (= (and b!2690775 (not condMapEmpty!16042)) mapNonEmpty!16041))

(assert (= b!2690747 b!2690775))

(assert (= b!2690770 b!2690747))

(assert (= b!2690780 b!2690770))

(assert (= (and b!2690751 ((_ is LongMap!3506) (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))) b!2690780))

(assert (= b!2690772 b!2690751))

(assert (= (and b!2690760 ((_ is HashMap!3412) (cache!3555 cacheDown!499))) b!2690772))

(assert (= start!261646 b!2690760))

(declare-fun m!3067969 () Bool)

(assert (=> b!2690749 m!3067969))

(declare-fun m!3067971 () Bool)

(assert (=> b!2690762 m!3067971))

(declare-fun m!3067973 () Bool)

(assert (=> b!2690777 m!3067973))

(declare-fun m!3067975 () Bool)

(assert (=> b!2690747 m!3067975))

(declare-fun m!3067977 () Bool)

(assert (=> b!2690747 m!3067977))

(declare-fun m!3067979 () Bool)

(assert (=> b!2690756 m!3067979))

(declare-fun m!3067981 () Bool)

(assert (=> b!2690756 m!3067981))

(assert (=> b!2690756 m!3067979))

(assert (=> b!2690756 m!3067981))

(declare-fun m!3067983 () Bool)

(assert (=> b!2690756 m!3067983))

(declare-fun m!3067985 () Bool)

(assert (=> mapNonEmpty!16042 m!3067985))

(declare-fun m!3067987 () Bool)

(assert (=> start!261646 m!3067987))

(declare-fun m!3067989 () Bool)

(assert (=> start!261646 m!3067989))

(declare-fun m!3067991 () Bool)

(assert (=> start!261646 m!3067991))

(declare-fun m!3067993 () Bool)

(assert (=> start!261646 m!3067993))

(declare-fun m!3067995 () Bool)

(assert (=> start!261646 m!3067995))

(declare-fun m!3067997 () Bool)

(assert (=> start!261646 m!3067997))

(declare-fun m!3067999 () Bool)

(assert (=> b!2690768 m!3067999))

(declare-fun m!3068001 () Bool)

(assert (=> b!2690755 m!3068001))

(declare-fun m!3068003 () Bool)

(assert (=> b!2690763 m!3068003))

(declare-fun m!3068005 () Bool)

(assert (=> b!2690759 m!3068005))

(declare-fun m!3068007 () Bool)

(assert (=> b!2690759 m!3068007))

(declare-fun m!3068009 () Bool)

(assert (=> b!2690766 m!3068009))

(declare-fun m!3068011 () Bool)

(assert (=> b!2690766 m!3068011))

(declare-fun m!3068013 () Bool)

(assert (=> b!2690766 m!3068013))

(declare-fun m!3068015 () Bool)

(assert (=> b!2690757 m!3068015))

(assert (=> b!2690757 m!3068015))

(declare-fun m!3068017 () Bool)

(assert (=> b!2690757 m!3068017))

(declare-fun m!3068019 () Bool)

(assert (=> b!2690750 m!3068019))

(declare-fun m!3068021 () Bool)

(assert (=> b!2690773 m!3068021))

(declare-fun m!3068023 () Bool)

(assert (=> b!2690782 m!3068023))

(declare-fun m!3068025 () Bool)

(assert (=> b!2690782 m!3068025))

(declare-fun m!3068027 () Bool)

(assert (=> b!2690758 m!3068027))

(declare-fun m!3068029 () Bool)

(assert (=> b!2690758 m!3068029))

(declare-fun m!3068031 () Bool)

(assert (=> mapNonEmpty!16041 m!3068031))

(declare-fun m!3068033 () Bool)

(assert (=> b!2690776 m!3068033))

(declare-fun m!3068035 () Bool)

(assert (=> b!2690771 m!3068035))

(declare-fun m!3068037 () Bool)

(assert (=> b!2690771 m!3068037))

(declare-fun m!3068039 () Bool)

(assert (=> b!2690771 m!3068039))

(declare-fun m!3068041 () Bool)

(assert (=> b!2690745 m!3068041))

(declare-fun m!3068043 () Bool)

(assert (=> b!2690745 m!3068043))

(declare-fun m!3068045 () Bool)

(assert (=> b!2690745 m!3068045))

(declare-fun m!3068047 () Bool)

(assert (=> b!2690745 m!3068047))

(declare-fun m!3068049 () Bool)

(assert (=> b!2690745 m!3068049))

(declare-fun m!3068051 () Bool)

(assert (=> b!2690745 m!3068051))

(declare-fun m!3068053 () Bool)

(assert (=> b!2690745 m!3068053))

(declare-fun m!3068055 () Bool)

(assert (=> b!2690745 m!3068055))

(declare-fun m!3068057 () Bool)

(assert (=> b!2690745 m!3068057))

(declare-fun m!3068059 () Bool)

(assert (=> b!2690745 m!3068059))

(declare-fun m!3068061 () Bool)

(assert (=> b!2690745 m!3068061))

(declare-fun m!3068063 () Bool)

(assert (=> b!2690745 m!3068063))

(assert (=> b!2690745 m!3068061))

(declare-fun m!3068065 () Bool)

(assert (=> b!2690745 m!3068065))

(declare-fun m!3068067 () Bool)

(assert (=> b!2690745 m!3068067))

(declare-fun m!3068069 () Bool)

(assert (=> b!2690745 m!3068069))

(declare-fun m!3068071 () Bool)

(assert (=> b!2690745 m!3068071))

(declare-fun m!3068073 () Bool)

(assert (=> b!2690745 m!3068073))

(declare-fun m!3068075 () Bool)

(assert (=> b!2690745 m!3068075))

(declare-fun m!3068077 () Bool)

(assert (=> b!2690745 m!3068077))

(declare-fun m!3068079 () Bool)

(assert (=> b!2690745 m!3068079))

(assert (=> b!2690745 m!3068067))

(declare-fun m!3068081 () Bool)

(assert (=> b!2690745 m!3068081))

(assert (=> b!2690745 m!3068047))

(declare-fun m!3068083 () Bool)

(assert (=> b!2690745 m!3068083))

(assert (=> b!2690745 m!3068073))

(declare-fun m!3068085 () Bool)

(assert (=> b!2690745 m!3068085))

(declare-fun m!3068087 () Bool)

(assert (=> b!2690745 m!3068087))

(declare-fun m!3068089 () Bool)

(assert (=> b!2690764 m!3068089))

(declare-fun m!3068091 () Bool)

(assert (=> b!2690779 m!3068091))

(declare-fun m!3068093 () Bool)

(assert (=> b!2690779 m!3068093))

(declare-fun m!3068095 () Bool)

(assert (=> b!2690767 m!3068095))

(declare-fun m!3068097 () Bool)

(assert (=> b!2690767 m!3068097))

(declare-fun m!3068099 () Bool)

(assert (=> b!2690774 m!3068099))

(declare-fun m!3068101 () Bool)

(assert (=> b!2690774 m!3068101))

(declare-fun m!3068103 () Bool)

(assert (=> b!2690774 m!3068103))

(assert (=> b!2690774 m!3068103))

(declare-fun m!3068105 () Bool)

(assert (=> b!2690774 m!3068105))

(declare-fun m!3068107 () Bool)

(assert (=> b!2690746 m!3068107))

(declare-fun m!3068109 () Bool)

(assert (=> b!2690746 m!3068109))

(declare-fun m!3068111 () Bool)

(assert (=> b!2690746 m!3068111))

(declare-fun m!3068113 () Bool)

(assert (=> b!2690746 m!3068113))

(assert (=> b!2690746 m!3068113))

(declare-fun m!3068115 () Bool)

(assert (=> b!2690746 m!3068115))

(declare-fun m!3068117 () Bool)

(assert (=> b!2690752 m!3068117))

(declare-fun m!3068119 () Bool)

(assert (=> b!2690752 m!3068119))

(declare-fun m!3068121 () Bool)

(assert (=> b!2690752 m!3068121))

(declare-fun m!3068123 () Bool)

(assert (=> b!2690752 m!3068123))

(declare-fun m!3068125 () Bool)

(assert (=> b!2690753 m!3068125))

(declare-fun m!3068127 () Bool)

(assert (=> b!2690753 m!3068127))

(declare-fun m!3068129 () Bool)

(assert (=> b!2690753 m!3068129))

(check-sat (not start!261646) (not b!2690771) (not b!2690759) (not b_next!76695) (not mapNonEmpty!16042) (not b!2690752) (not b!2690747) (not b!2690750) (not b_next!76697) (not b_next!76691) (not b!2690782) (not b!2690766) (not b!2690745) (not b!2690764) (not b!2690779) (not b!2690773) (not b!2690753) (not b!2690763) (not b!2690755) b_and!199089 (not b_next!76699) b_and!199097 b_and!199087 (not b!2690776) (not b!2690749) (not b!2690758) (not b!2690742) (not b!2690777) (not b!2690778) (not b!2690756) (not b!2690767) (not mapNonEmpty!16041) (not b!2690746) (not b!2690757) (not b!2690774) (not b_next!76693) (not b_next!76689) (not b!2690762) b_and!199091 (not b!2690768) (not b!2690775) b_and!199095 b_and!199093)
(check-sat (not b_next!76695) (not b_next!76697) (not b_next!76691) b_and!199089 (not b_next!76699) b_and!199097 b_and!199087 (not b_next!76693) (not b_next!76689) b_and!199091 b_and!199095 b_and!199093)
(get-model)

(declare-fun b!2690797 () Bool)

(declare-fun e!1696440 () Bool)

(declare-fun lt!949303 () tuple2!30560)

(assert (=> b!2690797 (= e!1696440 (= (list!11708 (_2!17865 lt!949303)) (list!11708 (_2!17866 (v!32824 lt!949274)))))))

(declare-fun b!2690798 () Bool)

(declare-fun e!1696442 () tuple2!30560)

(declare-fun lt!949304 () tuple2!30560)

(declare-fun lt!949302 () Option!6128)

(assert (=> b!2690798 (= e!1696442 (tuple2!30561 (prepend!1069 (_1!17865 lt!949304) (_1!17866 (v!32824 lt!949302))) (_2!17865 lt!949304)))))

(assert (=> b!2690798 (= lt!949304 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949302))))))

(declare-fun b!2690799 () Bool)

(declare-fun e!1696441 () Bool)

(declare-fun isEmpty!17709 (BalanceConc!19022) Bool)

(assert (=> b!2690799 (= e!1696441 (not (isEmpty!17709 (_1!17865 lt!949303))))))

(declare-fun d!771077 () Bool)

(declare-fun e!1696439 () Bool)

(assert (=> d!771077 e!1696439))

(declare-fun res!1130572 () Bool)

(assert (=> d!771077 (=> (not res!1130572) (not e!1696439))))

(assert (=> d!771077 (= res!1130572 e!1696440)))

(declare-fun c!433775 () Bool)

(declare-fun size!23968 (BalanceConc!19022) Int)

(assert (=> d!771077 (= c!433775 (> (size!23968 (_1!17865 lt!949303)) 0))))

(assert (=> d!771077 (= lt!949303 e!1696442)))

(declare-fun c!433774 () Bool)

(assert (=> d!771077 (= c!433774 ((_ is Some!6127) lt!949302))))

(assert (=> d!771077 (= lt!949302 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949274))))))

(assert (=> d!771077 (= (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949274))) lt!949303)))

(declare-fun b!2690800 () Bool)

(declare-fun res!1130571 () Bool)

(assert (=> b!2690800 (=> (not res!1130571) (not e!1696439))))

(assert (=> b!2690800 (= res!1130571 (= (list!11709 (_1!17865 lt!949303)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 (_2!17866 (v!32824 lt!949274)))))))))

(declare-fun b!2690801 () Bool)

(assert (=> b!2690801 (= e!1696439 (= (list!11708 (_2!17865 lt!949303)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 (_2!17866 (v!32824 lt!949274)))))))))

(declare-fun b!2690802 () Bool)

(assert (=> b!2690802 (= e!1696442 (tuple2!30561 (BalanceConc!19023 Empty!9704) (_2!17866 (v!32824 lt!949274))))))

(declare-fun b!2690803 () Bool)

(assert (=> b!2690803 (= e!1696440 e!1696441)))

(declare-fun res!1130573 () Bool)

(declare-fun size!23969 (BalanceConc!19020) Int)

(assert (=> b!2690803 (= res!1130573 (< (size!23969 (_2!17865 lt!949303)) (size!23969 (_2!17866 (v!32824 lt!949274)))))))

(assert (=> b!2690803 (=> (not res!1130573) (not e!1696441))))

(assert (= (and d!771077 c!433774) b!2690798))

(assert (= (and d!771077 (not c!433774)) b!2690802))

(assert (= (and d!771077 c!433775) b!2690803))

(assert (= (and d!771077 (not c!433775)) b!2690797))

(assert (= (and b!2690803 res!1130573) b!2690799))

(assert (= (and d!771077 res!1130572) b!2690800))

(assert (= (and b!2690800 res!1130571) b!2690801))

(declare-fun m!3068131 () Bool)

(assert (=> b!2690798 m!3068131))

(declare-fun m!3068133 () Bool)

(assert (=> b!2690798 m!3068133))

(declare-fun m!3068135 () Bool)

(assert (=> b!2690800 m!3068135))

(declare-fun m!3068137 () Bool)

(assert (=> b!2690800 m!3068137))

(assert (=> b!2690800 m!3068137))

(declare-fun m!3068139 () Bool)

(assert (=> b!2690800 m!3068139))

(declare-fun m!3068141 () Bool)

(assert (=> b!2690797 m!3068141))

(assert (=> b!2690797 m!3068137))

(declare-fun m!3068143 () Bool)

(assert (=> d!771077 m!3068143))

(declare-fun m!3068145 () Bool)

(assert (=> d!771077 m!3068145))

(declare-fun m!3068147 () Bool)

(assert (=> b!2690803 m!3068147))

(declare-fun m!3068149 () Bool)

(assert (=> b!2690803 m!3068149))

(assert (=> b!2690801 m!3068141))

(assert (=> b!2690801 m!3068137))

(assert (=> b!2690801 m!3068137))

(assert (=> b!2690801 m!3068139))

(declare-fun m!3068151 () Bool)

(assert (=> b!2690799 m!3068151))

(assert (=> b!2690779 d!771077))

(declare-fun d!771079 () Bool)

(declare-fun e!1696445 () Bool)

(assert (=> d!771079 e!1696445))

(declare-fun res!1130576 () Bool)

(assert (=> d!771079 (=> (not res!1130576) (not e!1696445))))

(declare-fun isBalanced!2937 (Conc!9704) Bool)

(declare-fun prepend!1070 (Conc!9704 Token!8940) Conc!9704)

(assert (=> d!771079 (= res!1130576 (isBalanced!2937 (prepend!1070 (c!433769 (_1!17865 lt!949292)) (_1!17866 (v!32824 lt!949274)))))))

(declare-fun lt!949307 () BalanceConc!19022)

(assert (=> d!771079 (= lt!949307 (BalanceConc!19023 (prepend!1070 (c!433769 (_1!17865 lt!949292)) (_1!17866 (v!32824 lt!949274)))))))

(assert (=> d!771079 (= (prepend!1069 (_1!17865 lt!949292) (_1!17866 (v!32824 lt!949274))) lt!949307)))

(declare-fun b!2690806 () Bool)

(assert (=> b!2690806 (= e!1696445 (= (list!11709 lt!949307) (Cons!31028 (_1!17866 (v!32824 lt!949274)) (list!11709 (_1!17865 lt!949292)))))))

(assert (= (and d!771079 res!1130576) b!2690806))

(declare-fun m!3068153 () Bool)

(assert (=> d!771079 m!3068153))

(assert (=> d!771079 m!3068153))

(declare-fun m!3068155 () Bool)

(assert (=> d!771079 m!3068155))

(declare-fun m!3068157 () Bool)

(assert (=> b!2690806 m!3068157))

(declare-fun m!3068159 () Bool)

(assert (=> b!2690806 m!3068159))

(assert (=> b!2690779 d!771079))

(declare-fun d!771081 () Bool)

(declare-fun c!433779 () Bool)

(assert (=> d!771081 (= c!433779 ((_ is Node!9704) (c!433769 acc!348)))))

(declare-fun e!1696450 () Bool)

(assert (=> d!771081 (= (inv!42065 (c!433769 acc!348)) e!1696450)))

(declare-fun b!2690813 () Bool)

(declare-fun inv!42067 (Conc!9704) Bool)

(assert (=> b!2690813 (= e!1696450 (inv!42067 (c!433769 acc!348)))))

(declare-fun b!2690814 () Bool)

(declare-fun e!1696451 () Bool)

(assert (=> b!2690814 (= e!1696450 e!1696451)))

(declare-fun res!1130579 () Bool)

(assert (=> b!2690814 (= res!1130579 (not ((_ is Leaf!14817) (c!433769 acc!348))))))

(assert (=> b!2690814 (=> res!1130579 e!1696451)))

(declare-fun b!2690815 () Bool)

(declare-fun inv!42068 (Conc!9704) Bool)

(assert (=> b!2690815 (= e!1696451 (inv!42068 (c!433769 acc!348)))))

(assert (= (and d!771081 c!433779) b!2690813))

(assert (= (and d!771081 (not c!433779)) b!2690814))

(assert (= (and b!2690814 (not res!1130579)) b!2690815))

(declare-fun m!3068161 () Bool)

(assert (=> b!2690813 m!3068161))

(declare-fun m!3068163 () Bool)

(assert (=> b!2690815 m!3068163))

(assert (=> b!2690762 d!771081))

(declare-fun d!771083 () Bool)

(assert (=> d!771083 (= (isEmpty!17707 (list!11708 (_2!17865 lt!949284))) ((_ is Nil!31027) (list!11708 (_2!17865 lt!949284))))))

(assert (=> b!2690757 d!771083))

(declare-fun d!771085 () Bool)

(declare-fun list!11710 (Conc!9703) List!31127)

(assert (=> d!771085 (= (list!11708 (_2!17865 lt!949284)) (list!11710 (c!433768 (_2!17865 lt!949284))))))

(declare-fun bs!483284 () Bool)

(assert (= bs!483284 d!771085))

(declare-fun m!3068165 () Bool)

(assert (=> bs!483284 m!3068165))

(assert (=> b!2690757 d!771085))

(declare-fun d!771087 () Bool)

(assert (=> d!771087 (= (array_inv!3988 (_keys!3807 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) (bvsge (size!23965 (_keys!3807 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2690758 d!771087))

(declare-fun d!771089 () Bool)

(assert (=> d!771089 (= (array_inv!3990 (_values!3788 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) (bvsge (size!23967 (_values!3788 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2690758 d!771089))

(declare-fun d!771091 () Bool)

(assert (=> d!771091 (= (isEmpty!17708 rules!1381) ((_ is Nil!31029) rules!1381))))

(assert (=> b!2690777 d!771091))

(declare-fun d!771093 () Bool)

(assert (=> d!771093 (= (list!11708 (_2!17865 lt!949290)) (list!11710 (c!433768 (_2!17865 lt!949290))))))

(declare-fun bs!483285 () Bool)

(assert (= bs!483285 d!771093))

(declare-fun m!3068167 () Bool)

(assert (=> bs!483285 m!3068167))

(assert (=> b!2690759 d!771093))

(declare-fun d!771095 () Bool)

(assert (=> d!771095 (= (list!11708 (_2!17865 lt!949277)) (list!11710 (c!433768 (_2!17865 lt!949277))))))

(declare-fun bs!483286 () Bool)

(assert (= bs!483286 d!771095))

(declare-fun m!3068169 () Bool)

(assert (=> bs!483286 m!3068169))

(assert (=> b!2690759 d!771095))

(declare-fun d!771097 () Bool)

(declare-fun validCacheMapUp!322 (MutableMap!3413) Bool)

(assert (=> d!771097 (= (valid!2718 (_2!17872 lt!949282)) (validCacheMapUp!322 (cache!3556 (_2!17872 lt!949282))))))

(declare-fun bs!483287 () Bool)

(assert (= bs!483287 d!771097))

(declare-fun m!3068171 () Bool)

(assert (=> bs!483287 m!3068171))

(assert (=> b!2690774 d!771097))

(declare-fun d!771099 () Bool)

(declare-fun e!1696454 () Bool)

(assert (=> d!771099 e!1696454))

(declare-fun res!1130582 () Bool)

(assert (=> d!771099 (=> (not res!1130582) (not e!1696454))))

(declare-fun append!765 (Conc!9704 Token!8940) Conc!9704)

(assert (=> d!771099 (= res!1130582 (isBalanced!2937 (append!765 (c!433769 acc!348) (_1!17866 (v!32824 (_1!17872 lt!949282))))))))

(declare-fun lt!949310 () BalanceConc!19022)

(assert (=> d!771099 (= lt!949310 (BalanceConc!19023 (append!765 (c!433769 acc!348) (_1!17866 (v!32824 (_1!17872 lt!949282))))))))

(assert (=> d!771099 (= (append!764 acc!348 (_1!17866 (v!32824 (_1!17872 lt!949282)))) lt!949310)))

(declare-fun b!2690818 () Bool)

(declare-fun $colon+!166 (List!31128 Token!8940) List!31128)

(assert (=> b!2690818 (= e!1696454 (= (list!11709 lt!949310) ($colon+!166 (list!11709 acc!348) (_1!17866 (v!32824 (_1!17872 lt!949282))))))))

(assert (= (and d!771099 res!1130582) b!2690818))

(declare-fun m!3068173 () Bool)

(assert (=> d!771099 m!3068173))

(assert (=> d!771099 m!3068173))

(declare-fun m!3068175 () Bool)

(assert (=> d!771099 m!3068175))

(declare-fun m!3068177 () Bool)

(assert (=> b!2690818 m!3068177))

(assert (=> b!2690818 m!3068035))

(assert (=> b!2690818 m!3068035))

(declare-fun m!3068179 () Bool)

(assert (=> b!2690818 m!3068179))

(assert (=> b!2690774 d!771099))

(declare-fun b!2690827 () Bool)

(declare-fun res!1130592 () Bool)

(declare-fun e!1696457 () Bool)

(assert (=> b!2690827 (=> (not res!1130592) (not e!1696457))))

(declare-fun isBalanced!2938 (Conc!9703) Bool)

(declare-fun ++!7598 (Conc!9703 Conc!9703) Conc!9703)

(assert (=> b!2690827 (= res!1130592 (isBalanced!2938 (++!7598 (c!433768 treated!26) (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))))))

(declare-fun d!771101 () Bool)

(assert (=> d!771101 e!1696457))

(declare-fun res!1130593 () Bool)

(assert (=> d!771101 (=> (not res!1130593) (not e!1696457))))

(declare-fun appendAssocInst!659 (Conc!9703 Conc!9703) Bool)

(assert (=> d!771101 (= res!1130593 (appendAssocInst!659 (c!433768 treated!26) (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282)))))))))

(declare-fun lt!949313 () BalanceConc!19020)

(assert (=> d!771101 (= lt!949313 (BalanceConc!19021 (++!7598 (c!433768 treated!26) (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))))))

(assert (=> d!771101 (= (++!7596 treated!26 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))) lt!949313)))

(declare-fun b!2690828 () Bool)

(declare-fun res!1130594 () Bool)

(assert (=> b!2690828 (=> (not res!1130594) (not e!1696457))))

(declare-fun height!1419 (Conc!9703) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2690828 (= res!1130594 (<= (height!1419 (++!7598 (c!433768 treated!26) (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) (+ (max!0 (height!1419 (c!433768 treated!26)) (height!1419 (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) 1)))))

(declare-fun b!2690830 () Bool)

(assert (=> b!2690830 (= e!1696457 (= (list!11708 lt!949313) (++!7594 (list!11708 treated!26) (list!11708 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))))))

(declare-fun b!2690829 () Bool)

(declare-fun res!1130591 () Bool)

(assert (=> b!2690829 (=> (not res!1130591) (not e!1696457))))

(assert (=> b!2690829 (= res!1130591 (>= (height!1419 (++!7598 (c!433768 treated!26) (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) (max!0 (height!1419 (c!433768 treated!26)) (height!1419 (c!433768 (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282)))))))))))

(assert (= (and d!771101 res!1130593) b!2690827))

(assert (= (and b!2690827 res!1130592) b!2690828))

(assert (= (and b!2690828 res!1130594) b!2690829))

(assert (= (and b!2690829 res!1130591) b!2690830))

(declare-fun m!3068181 () Bool)

(assert (=> b!2690830 m!3068181))

(assert (=> b!2690830 m!3068123))

(assert (=> b!2690830 m!3068103))

(declare-fun m!3068183 () Bool)

(assert (=> b!2690830 m!3068183))

(assert (=> b!2690830 m!3068123))

(assert (=> b!2690830 m!3068183))

(declare-fun m!3068185 () Bool)

(assert (=> b!2690830 m!3068185))

(declare-fun m!3068187 () Bool)

(assert (=> b!2690829 m!3068187))

(declare-fun m!3068189 () Bool)

(assert (=> b!2690829 m!3068189))

(declare-fun m!3068191 () Bool)

(assert (=> b!2690829 m!3068191))

(assert (=> b!2690829 m!3068187))

(declare-fun m!3068193 () Bool)

(assert (=> b!2690829 m!3068193))

(assert (=> b!2690829 m!3068191))

(assert (=> b!2690829 m!3068193))

(declare-fun m!3068195 () Bool)

(assert (=> b!2690829 m!3068195))

(assert (=> b!2690828 m!3068187))

(assert (=> b!2690828 m!3068189))

(assert (=> b!2690828 m!3068191))

(assert (=> b!2690828 m!3068187))

(assert (=> b!2690828 m!3068193))

(assert (=> b!2690828 m!3068191))

(assert (=> b!2690828 m!3068193))

(assert (=> b!2690828 m!3068195))

(assert (=> b!2690827 m!3068187))

(assert (=> b!2690827 m!3068187))

(declare-fun m!3068197 () Bool)

(assert (=> b!2690827 m!3068197))

(declare-fun m!3068199 () Bool)

(assert (=> d!771101 m!3068199))

(assert (=> d!771101 m!3068187))

(assert (=> b!2690774 d!771101))

(declare-fun d!771103 () Bool)

(declare-fun lt!949316 () BalanceConc!19020)

(assert (=> d!771103 (= (list!11708 lt!949316) (originalCharacters!5501 (_1!17866 (v!32824 (_1!17872 lt!949282)))))))

(declare-fun dynLambda!13441 (Int TokenValue!4959) BalanceConc!19020)

(assert (=> d!771103 (= lt!949316 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 (_1!17872 lt!949282)))))) (value!152619 (_1!17866 (v!32824 (_1!17872 lt!949282))))))))

(assert (=> d!771103 (= (charsOf!2985 (_1!17866 (v!32824 (_1!17872 lt!949282)))) lt!949316)))

(declare-fun b_lambda!82131 () Bool)

(assert (=> (not b_lambda!82131) (not d!771103)))

(declare-fun t!225068 () Bool)

(declare-fun tb!151009 () Bool)

(assert (=> (and b!2690743 (= (toChars!6552 (transformation!4737 (h!36449 rules!1381))) (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) t!225068) tb!151009))

(declare-fun b!2690835 () Bool)

(declare-fun e!1696460 () Bool)

(declare-fun tp!851043 () Bool)

(assert (=> b!2690835 (= e!1696460 (and (inv!42060 (c!433768 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 (_1!17872 lt!949282)))))) (value!152619 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) tp!851043))))

(declare-fun result!186466 () Bool)

(assert (=> tb!151009 (= result!186466 (and (inv!42061 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 (_1!17872 lt!949282)))))) (value!152619 (_1!17866 (v!32824 (_1!17872 lt!949282)))))) e!1696460))))

(assert (= tb!151009 b!2690835))

(declare-fun m!3068201 () Bool)

(assert (=> b!2690835 m!3068201))

(declare-fun m!3068203 () Bool)

(assert (=> tb!151009 m!3068203))

(assert (=> d!771103 t!225068))

(declare-fun b_and!199099 () Bool)

(assert (= b_and!199095 (and (=> t!225068 result!186466) b_and!199099)))

(declare-fun m!3068205 () Bool)

(assert (=> d!771103 m!3068205))

(declare-fun m!3068207 () Bool)

(assert (=> d!771103 m!3068207))

(assert (=> b!2690774 d!771103))

(declare-fun d!771105 () Bool)

(declare-fun validCacheMapDown!353 (MutableMap!3412) Bool)

(assert (=> d!771105 (= (valid!2717 (_3!2586 lt!949282)) (validCacheMapDown!353 (cache!3555 (_3!2586 lt!949282))))))

(declare-fun bs!483288 () Bool)

(assert (= bs!483288 d!771105))

(declare-fun m!3068209 () Bool)

(assert (=> bs!483288 m!3068209))

(assert (=> b!2690755 d!771105))

(declare-fun b!2690845 () Bool)

(declare-fun e!1696465 () List!31127)

(assert (=> b!2690845 (= e!1696465 (Cons!31027 (h!36447 (list!11708 lt!949268)) (++!7594 (t!225061 (list!11708 lt!949268)) (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282)))))))))

(declare-fun d!771107 () Bool)

(declare-fun e!1696466 () Bool)

(assert (=> d!771107 e!1696466))

(declare-fun res!1130600 () Bool)

(assert (=> d!771107 (=> (not res!1130600) (not e!1696466))))

(declare-fun lt!949319 () List!31127)

(declare-fun content!4400 (List!31127) (InoxSet C!15936))

(assert (=> d!771107 (= res!1130600 (= (content!4400 lt!949319) ((_ map or) (content!4400 (list!11708 lt!949268)) (content!4400 (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282))))))))))

(assert (=> d!771107 (= lt!949319 e!1696465)))

(declare-fun c!433786 () Bool)

(assert (=> d!771107 (= c!433786 ((_ is Nil!31027) (list!11708 lt!949268)))))

(assert (=> d!771107 (= (++!7594 (list!11708 lt!949268) (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282))))) lt!949319)))

(declare-fun b!2690847 () Bool)

(assert (=> b!2690847 (= e!1696466 (or (not (= (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282)))) Nil!31027)) (= lt!949319 (list!11708 lt!949268))))))

(declare-fun b!2690844 () Bool)

(assert (=> b!2690844 (= e!1696465 (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282)))))))

(declare-fun b!2690846 () Bool)

(declare-fun res!1130599 () Bool)

(assert (=> b!2690846 (=> (not res!1130599) (not e!1696466))))

(declare-fun size!23970 (List!31127) Int)

(assert (=> b!2690846 (= res!1130599 (= (size!23970 lt!949319) (+ (size!23970 (list!11708 lt!949268)) (size!23970 (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282))))))))))

(assert (= (and d!771107 c!433786) b!2690844))

(assert (= (and d!771107 (not c!433786)) b!2690845))

(assert (= (and d!771107 res!1130600) b!2690846))

(assert (= (and b!2690846 res!1130599) b!2690847))

(assert (=> b!2690845 m!3067981))

(declare-fun m!3068211 () Bool)

(assert (=> b!2690845 m!3068211))

(declare-fun m!3068213 () Bool)

(assert (=> d!771107 m!3068213))

(assert (=> d!771107 m!3067979))

(declare-fun m!3068215 () Bool)

(assert (=> d!771107 m!3068215))

(assert (=> d!771107 m!3067981))

(declare-fun m!3068217 () Bool)

(assert (=> d!771107 m!3068217))

(declare-fun m!3068219 () Bool)

(assert (=> b!2690846 m!3068219))

(assert (=> b!2690846 m!3067979))

(declare-fun m!3068221 () Bool)

(assert (=> b!2690846 m!3068221))

(assert (=> b!2690846 m!3067981))

(declare-fun m!3068223 () Bool)

(assert (=> b!2690846 m!3068223))

(assert (=> b!2690756 d!771107))

(declare-fun d!771109 () Bool)

(assert (=> d!771109 (= (list!11708 lt!949268) (list!11710 (c!433768 lt!949268)))))

(declare-fun bs!483289 () Bool)

(assert (= bs!483289 d!771109))

(declare-fun m!3068225 () Bool)

(assert (=> bs!483289 m!3068225))

(assert (=> b!2690756 d!771109))

(declare-fun d!771111 () Bool)

(assert (=> d!771111 (= (list!11708 (_2!17866 (v!32824 (_1!17872 lt!949282)))) (list!11710 (c!433768 (_2!17866 (v!32824 (_1!17872 lt!949282))))))))

(declare-fun bs!483290 () Bool)

(assert (= bs!483290 d!771111))

(declare-fun m!3068227 () Bool)

(assert (=> bs!483290 m!3068227))

(assert (=> b!2690756 d!771111))

(declare-fun d!771113 () Bool)

(declare-fun c!433789 () Bool)

(assert (=> d!771113 (= c!433789 ((_ is Node!9703) (c!433768 input!780)))))

(declare-fun e!1696471 () Bool)

(assert (=> d!771113 (= (inv!42060 (c!433768 input!780)) e!1696471)))

(declare-fun b!2690854 () Bool)

(declare-fun inv!42069 (Conc!9703) Bool)

(assert (=> b!2690854 (= e!1696471 (inv!42069 (c!433768 input!780)))))

(declare-fun b!2690855 () Bool)

(declare-fun e!1696472 () Bool)

(assert (=> b!2690855 (= e!1696471 e!1696472)))

(declare-fun res!1130603 () Bool)

(assert (=> b!2690855 (= res!1130603 (not ((_ is Leaf!14816) (c!433768 input!780))))))

(assert (=> b!2690855 (=> res!1130603 e!1696472)))

(declare-fun b!2690856 () Bool)

(declare-fun inv!42070 (Conc!9703) Bool)

(assert (=> b!2690856 (= e!1696472 (inv!42070 (c!433768 input!780)))))

(assert (= (and d!771113 c!433789) b!2690854))

(assert (= (and d!771113 (not c!433789)) b!2690855))

(assert (= (and b!2690855 (not res!1130603)) b!2690856))

(declare-fun m!3068229 () Bool)

(assert (=> b!2690854 m!3068229))

(declare-fun m!3068231 () Bool)

(assert (=> b!2690856 m!3068231))

(assert (=> b!2690776 d!771113))

(declare-fun b!2690865 () Bool)

(declare-fun res!1130609 () Bool)

(declare-fun e!1696477 () Bool)

(assert (=> b!2690865 (=> (not res!1130609) (not e!1696477))))

(declare-fun lt!949338 () tuple3!4232)

(assert (=> b!2690865 (= res!1130609 (valid!2718 (_2!17872 lt!949338)))))

(declare-fun b!2690866 () Bool)

(declare-fun e!1696478 () tuple3!4232)

(declare-fun lt!949340 () tuple3!4232)

(declare-fun lt!949342 () tuple3!4232)

(assert (=> b!2690866 (= e!1696478 (tuple3!4233 (ite (and ((_ is None!6127) (_1!17872 lt!949340)) ((_ is None!6127) (_1!17872 lt!949342))) None!6127 (ite ((_ is None!6127) (_1!17872 lt!949342)) (_1!17872 lt!949340) (ite ((_ is None!6127) (_1!17872 lt!949340)) (_1!17872 lt!949342) (ite (>= (size!23964 (_1!17866 (v!32824 (_1!17872 lt!949340)))) (size!23964 (_1!17866 (v!32824 (_1!17872 lt!949342))))) (_1!17872 lt!949340) (_1!17872 lt!949342))))) (_2!17872 lt!949342) (_3!2586 lt!949342)))))

(declare-fun call!173370 () tuple3!4232)

(assert (=> b!2690866 (= lt!949340 call!173370)))

(assert (=> b!2690866 (= lt!949342 (maxPrefixZipperSequenceMem!10 thiss!12257 (t!225063 rules!1381) input!780 (_2!17872 lt!949340) (_3!2586 lt!949340)))))

(declare-fun b!2690867 () Bool)

(assert (=> b!2690867 (= e!1696477 (valid!2717 (_3!2586 lt!949338)))))

(declare-fun b!2690868 () Bool)

(declare-fun lt!949339 () tuple3!4232)

(assert (=> b!2690868 (= e!1696478 (tuple3!4233 (_1!17872 lt!949339) (_2!17872 lt!949339) (_3!2586 lt!949339)))))

(assert (=> b!2690868 (= lt!949339 call!173370)))

(declare-fun bm!173365 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!5 (LexerInterface!4333 Rule!9274 BalanceConc!19020 CacheUp!2122 CacheDown!2234) tuple3!4232)

(assert (=> bm!173365 (= call!173370 (maxPrefixOneRuleZipperSequenceMem!5 thiss!12257 (h!36449 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun d!771115 () Bool)

(assert (=> d!771115 e!1696477))

(declare-fun res!1130608 () Bool)

(assert (=> d!771115 (=> (not res!1130608) (not e!1696477))))

(assert (=> d!771115 (= res!1130608 (= (_1!17872 lt!949338) (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780)))))

(assert (=> d!771115 (= lt!949338 e!1696478)))

(declare-fun c!433792 () Bool)

(assert (=> d!771115 (= c!433792 (and ((_ is Cons!31029) rules!1381) ((_ is Nil!31029) (t!225063 rules!1381))))))

(declare-fun lt!949343 () Unit!45159)

(declare-fun lt!949341 () Unit!45159)

(assert (=> d!771115 (= lt!949343 lt!949341)))

(declare-fun lt!949336 () List!31127)

(declare-fun lt!949337 () List!31127)

(declare-fun isPrefix!2466 (List!31127 List!31127) Bool)

(assert (=> d!771115 (isPrefix!2466 lt!949336 lt!949337)))

(declare-fun lemmaIsPrefixRefl!1592 (List!31127 List!31127) Unit!45159)

(assert (=> d!771115 (= lt!949341 (lemmaIsPrefixRefl!1592 lt!949336 lt!949337))))

(assert (=> d!771115 (= lt!949337 (list!11708 input!780))))

(assert (=> d!771115 (= lt!949336 (list!11708 input!780))))

(declare-fun rulesValidInductive!1648 (LexerInterface!4333 List!31129) Bool)

(assert (=> d!771115 (rulesValidInductive!1648 thiss!12257 rules!1381)))

(assert (=> d!771115 (= (maxPrefixZipperSequenceMem!10 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!949338)))

(assert (= (and d!771115 c!433792) b!2690868))

(assert (= (and d!771115 (not c!433792)) b!2690866))

(assert (= (or b!2690868 b!2690866) bm!173365))

(assert (= (and d!771115 res!1130608) b!2690865))

(assert (= (and b!2690865 res!1130609) b!2690867))

(declare-fun m!3068233 () Bool)

(assert (=> b!2690865 m!3068233))

(declare-fun m!3068235 () Bool)

(assert (=> bm!173365 m!3068235))

(declare-fun m!3068237 () Bool)

(assert (=> b!2690866 m!3068237))

(assert (=> d!771115 m!3068121))

(assert (=> d!771115 m!3068129))

(declare-fun m!3068239 () Bool)

(assert (=> d!771115 m!3068239))

(declare-fun m!3068241 () Bool)

(assert (=> d!771115 m!3068241))

(declare-fun m!3068243 () Bool)

(assert (=> d!771115 m!3068243))

(declare-fun m!3068245 () Bool)

(assert (=> b!2690867 m!3068245))

(assert (=> b!2690753 d!771115))

(declare-fun d!771117 () Bool)

(declare-fun e!1696490 () Bool)

(assert (=> d!771117 e!1696490))

(declare-fun res!1130612 () Bool)

(assert (=> d!771117 (=> (not res!1130612) (not e!1696490))))

(declare-fun lt!949395 () tuple2!30560)

(assert (=> d!771117 (= res!1130612 (= (list!11709 (_1!17865 lt!949395)) (list!11709 (_1!17865 (lexRec!596 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1696489 () tuple2!30560)

(assert (=> d!771117 (= lt!949395 e!1696489)))

(declare-fun c!433799 () Bool)

(declare-fun lt!949415 () Option!6128)

(assert (=> d!771117 (= c!433799 ((_ is Some!6127) lt!949415))))

(assert (=> d!771117 (= lt!949415 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780))))

(assert (=> d!771117 (= (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!949395)))

(declare-fun lt!949403 () Option!6128)

(declare-fun b!2690883 () Bool)

(declare-fun lt!949399 () tuple2!30560)

(assert (=> b!2690883 (= lt!949399 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949403))))))

(declare-fun e!1696488 () tuple2!30560)

(assert (=> b!2690883 (= e!1696488 (tuple2!30561 (prepend!1069 (_1!17865 lt!949399) (_1!17866 (v!32824 lt!949403))) (_2!17865 lt!949399)))))

(declare-fun b!2690884 () Bool)

(assert (=> b!2690884 (= e!1696490 (= (list!11708 (_2!17865 lt!949395)) (list!11708 (_2!17865 (lexRec!596 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2690885 () Bool)

(assert (=> b!2690885 (= e!1696489 (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 (++!7596 treated!26 (charsOf!2985 (_1!17866 (v!32824 lt!949415)))) (_2!17866 (v!32824 lt!949415)) (append!764 acc!348 (_1!17866 (v!32824 lt!949415)))))))

(declare-fun lt!949410 () tuple2!30560)

(assert (=> b!2690885 (= lt!949410 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949415))))))

(declare-fun lt!949404 () List!31127)

(assert (=> b!2690885 (= lt!949404 (list!11708 treated!26))))

(declare-fun lt!949397 () List!31127)

(assert (=> b!2690885 (= lt!949397 (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949415)))))))

(declare-fun lt!949400 () List!31127)

(assert (=> b!2690885 (= lt!949400 (list!11708 (_2!17866 (v!32824 lt!949415))))))

(declare-fun lt!949401 () Unit!45159)

(assert (=> b!2690885 (= lt!949401 (lemmaConcatAssociativity!1543 lt!949404 lt!949397 lt!949400))))

(assert (=> b!2690885 (= (++!7594 (++!7594 lt!949404 lt!949397) lt!949400) (++!7594 lt!949404 (++!7594 lt!949397 lt!949400)))))

(declare-fun lt!949414 () Unit!45159)

(assert (=> b!2690885 (= lt!949414 lt!949401)))

(declare-fun lt!949413 () Option!6128)

(assert (=> b!2690885 (= lt!949413 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780))))

(declare-fun c!433801 () Bool)

(assert (=> b!2690885 (= c!433801 ((_ is Some!6127) lt!949413))))

(declare-fun e!1696487 () tuple2!30560)

(assert (=> b!2690885 (= (lexRec!596 thiss!12257 rules!1381 input!780) e!1696487)))

(declare-fun lt!949416 () Unit!45159)

(declare-fun Unit!45161 () Unit!45159)

(assert (=> b!2690885 (= lt!949416 Unit!45161)))

(declare-fun lt!949411 () List!31128)

(assert (=> b!2690885 (= lt!949411 (list!11709 acc!348))))

(declare-fun lt!949408 () List!31128)

(assert (=> b!2690885 (= lt!949408 (Cons!31028 (_1!17866 (v!32824 lt!949415)) Nil!31028))))

(declare-fun lt!949405 () List!31128)

(assert (=> b!2690885 (= lt!949405 (list!11709 (_1!17865 lt!949410)))))

(declare-fun lt!949402 () Unit!45159)

(assert (=> b!2690885 (= lt!949402 (lemmaConcatAssociativity!1544 lt!949411 lt!949408 lt!949405))))

(assert (=> b!2690885 (= (++!7595 (++!7595 lt!949411 lt!949408) lt!949405) (++!7595 lt!949411 (++!7595 lt!949408 lt!949405)))))

(declare-fun lt!949398 () Unit!45159)

(assert (=> b!2690885 (= lt!949398 lt!949402)))

(declare-fun lt!949406 () List!31127)

(assert (=> b!2690885 (= lt!949406 (++!7594 (list!11708 treated!26) (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949415))))))))

(declare-fun lt!949396 () List!31127)

(assert (=> b!2690885 (= lt!949396 (list!11708 (_2!17866 (v!32824 lt!949415))))))

(declare-fun lt!949407 () List!31128)

(assert (=> b!2690885 (= lt!949407 (list!11709 (append!764 acc!348 (_1!17866 (v!32824 lt!949415)))))))

(declare-fun lt!949417 () Unit!45159)

(assert (=> b!2690885 (= lt!949417 (lemmaLexThenLexPrefix!402 thiss!12257 rules!1381 lt!949406 lt!949396 lt!949407 (list!11709 (_1!17865 lt!949410)) (list!11708 (_2!17865 lt!949410))))))

(assert (=> b!2690885 (= (lexList!1189 thiss!12257 rules!1381 lt!949406) (tuple2!30565 lt!949407 Nil!31027))))

(declare-fun lt!949412 () Unit!45159)

(assert (=> b!2690885 (= lt!949412 lt!949417)))

(declare-fun lt!949409 () BalanceConc!19020)

(assert (=> b!2690885 (= lt!949409 (++!7596 treated!26 (charsOf!2985 (_1!17866 (v!32824 lt!949415)))))))

(assert (=> b!2690885 (= lt!949403 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949409))))

(declare-fun c!433800 () Bool)

(assert (=> b!2690885 (= c!433800 ((_ is Some!6127) lt!949403))))

(assert (=> b!2690885 (= (lexRec!596 thiss!12257 rules!1381 (++!7596 treated!26 (charsOf!2985 (_1!17866 (v!32824 lt!949415))))) e!1696488)))

(declare-fun lt!949394 () Unit!45159)

(declare-fun Unit!45162 () Unit!45159)

(assert (=> b!2690885 (= lt!949394 Unit!45162)))

(declare-fun b!2690886 () Bool)

(assert (=> b!2690886 (= e!1696488 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949409))))

(declare-fun b!2690887 () Bool)

(assert (=> b!2690887 (= e!1696487 (tuple2!30561 (BalanceConc!19023 Empty!9704) input!780))))

(declare-fun lt!949418 () tuple2!30560)

(declare-fun b!2690888 () Bool)

(assert (=> b!2690888 (= lt!949418 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949413))))))

(assert (=> b!2690888 (= e!1696487 (tuple2!30561 (prepend!1069 (_1!17865 lt!949418) (_1!17866 (v!32824 lt!949413))) (_2!17865 lt!949418)))))

(declare-fun b!2690889 () Bool)

(assert (=> b!2690889 (= e!1696489 (tuple2!30561 acc!348 input!780))))

(assert (= (and d!771117 c!433799) b!2690885))

(assert (= (and d!771117 (not c!433799)) b!2690889))

(assert (= (and b!2690885 c!433801) b!2690888))

(assert (= (and b!2690885 (not c!433801)) b!2690887))

(assert (= (and b!2690885 c!433800) b!2690883))

(assert (= (and b!2690885 (not c!433800)) b!2690886))

(assert (= (and d!771117 res!1130612) b!2690884))

(declare-fun m!3068247 () Bool)

(assert (=> d!771117 m!3068247))

(assert (=> d!771117 m!3068107))

(declare-fun m!3068249 () Bool)

(assert (=> d!771117 m!3068249))

(assert (=> d!771117 m!3068129))

(declare-fun m!3068251 () Bool)

(assert (=> b!2690884 m!3068251))

(assert (=> b!2690884 m!3068107))

(declare-fun m!3068253 () Bool)

(assert (=> b!2690884 m!3068253))

(declare-fun m!3068255 () Bool)

(assert (=> b!2690885 m!3068255))

(declare-fun m!3068257 () Bool)

(assert (=> b!2690885 m!3068257))

(declare-fun m!3068259 () Bool)

(assert (=> b!2690885 m!3068259))

(assert (=> b!2690885 m!3068257))

(declare-fun m!3068261 () Bool)

(assert (=> b!2690885 m!3068261))

(declare-fun m!3068263 () Bool)

(assert (=> b!2690885 m!3068263))

(declare-fun m!3068265 () Bool)

(assert (=> b!2690885 m!3068265))

(assert (=> b!2690885 m!3068123))

(declare-fun m!3068267 () Bool)

(assert (=> b!2690885 m!3068267))

(declare-fun m!3068269 () Bool)

(assert (=> b!2690885 m!3068269))

(declare-fun m!3068271 () Bool)

(assert (=> b!2690885 m!3068271))

(declare-fun m!3068273 () Bool)

(assert (=> b!2690885 m!3068273))

(declare-fun m!3068275 () Bool)

(assert (=> b!2690885 m!3068275))

(assert (=> b!2690885 m!3068265))

(assert (=> b!2690885 m!3068267))

(declare-fun m!3068277 () Bool)

(assert (=> b!2690885 m!3068277))

(declare-fun m!3068279 () Bool)

(assert (=> b!2690885 m!3068279))

(declare-fun m!3068281 () Bool)

(assert (=> b!2690885 m!3068281))

(assert (=> b!2690885 m!3068265))

(assert (=> b!2690885 m!3068257))

(declare-fun m!3068283 () Bool)

(assert (=> b!2690885 m!3068283))

(assert (=> b!2690885 m!3068129))

(assert (=> b!2690885 m!3068277))

(declare-fun m!3068285 () Bool)

(assert (=> b!2690885 m!3068285))

(assert (=> b!2690885 m!3068283))

(declare-fun m!3068287 () Bool)

(assert (=> b!2690885 m!3068287))

(declare-fun m!3068289 () Bool)

(assert (=> b!2690885 m!3068289))

(declare-fun m!3068291 () Bool)

(assert (=> b!2690885 m!3068291))

(assert (=> b!2690885 m!3068035))

(declare-fun m!3068293 () Bool)

(assert (=> b!2690885 m!3068293))

(declare-fun m!3068295 () Bool)

(assert (=> b!2690885 m!3068295))

(assert (=> b!2690885 m!3068293))

(assert (=> b!2690885 m!3068261))

(assert (=> b!2690885 m!3068109))

(declare-fun m!3068297 () Bool)

(assert (=> b!2690885 m!3068297))

(assert (=> b!2690885 m!3068123))

(assert (=> b!2690885 m!3068273))

(assert (=> b!2690885 m!3068271))

(declare-fun m!3068299 () Bool)

(assert (=> b!2690885 m!3068299))

(declare-fun m!3068301 () Bool)

(assert (=> b!2690885 m!3068301))

(assert (=> b!2690885 m!3068279))

(assert (=> b!2690885 m!3068261))

(declare-fun m!3068303 () Bool)

(assert (=> b!2690885 m!3068303))

(declare-fun m!3068305 () Bool)

(assert (=> b!2690888 m!3068305))

(declare-fun m!3068307 () Bool)

(assert (=> b!2690888 m!3068307))

(declare-fun m!3068309 () Bool)

(assert (=> b!2690883 m!3068309))

(declare-fun m!3068311 () Bool)

(assert (=> b!2690883 m!3068311))

(assert (=> b!2690753 d!771117))

(declare-fun b!2690906 () Bool)

(declare-fun e!1696508 () Option!6128)

(declare-fun lt!949439 () Option!6128)

(declare-fun lt!949433 () Option!6128)

(assert (=> b!2690906 (= e!1696508 (ite (and ((_ is None!6127) lt!949439) ((_ is None!6127) lt!949433)) None!6127 (ite ((_ is None!6127) lt!949433) lt!949439 (ite ((_ is None!6127) lt!949439) lt!949433 (ite (>= (size!23964 (_1!17866 (v!32824 lt!949439))) (size!23964 (_1!17866 (v!32824 lt!949433)))) lt!949439 lt!949433)))))))

(declare-fun call!173373 () Option!6128)

(assert (=> b!2690906 (= lt!949439 call!173373)))

(assert (=> b!2690906 (= lt!949433 (maxPrefixZipperSequence!998 thiss!12257 (t!225063 rules!1381) input!780))))

(declare-fun e!1696504 () Bool)

(declare-fun lt!949436 () Option!6128)

(declare-fun b!2690907 () Bool)

(declare-fun get!9715 (Option!6128) tuple2!30562)

(declare-datatypes ((tuple2!30572 0))(
  ( (tuple2!30573 (_1!17873 Token!8940) (_2!17873 List!31127)) )
))
(declare-datatypes ((Option!6129 0))(
  ( (None!6128) (Some!6128 (v!32831 tuple2!30572)) )
))
(declare-fun get!9716 (Option!6129) tuple2!30572)

(declare-fun maxPrefix!2349 (LexerInterface!4333 List!31129 List!31127) Option!6129)

(assert (=> b!2690907 (= e!1696504 (= (list!11708 (_2!17866 (get!9715 lt!949436))) (_2!17873 (get!9716 (maxPrefix!2349 thiss!12257 rules!1381 (list!11708 input!780))))))))

(declare-fun bm!173368 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!462 (LexerInterface!4333 Rule!9274 BalanceConc!19020) Option!6128)

(assert (=> bm!173368 (= call!173373 (maxPrefixOneRuleZipperSequence!462 thiss!12257 (h!36449 rules!1381) input!780))))

(declare-fun d!771119 () Bool)

(declare-fun e!1696507 () Bool)

(assert (=> d!771119 e!1696507))

(declare-fun res!1130630 () Bool)

(assert (=> d!771119 (=> (not res!1130630) (not e!1696507))))

(declare-fun isDefined!4859 (Option!6128) Bool)

(declare-fun isDefined!4860 (Option!6129) Bool)

(declare-fun maxPrefixZipper!453 (LexerInterface!4333 List!31129 List!31127) Option!6129)

(assert (=> d!771119 (= res!1130630 (= (isDefined!4859 lt!949436) (isDefined!4860 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 input!780)))))))

(assert (=> d!771119 (= lt!949436 e!1696508)))

(declare-fun c!433804 () Bool)

(assert (=> d!771119 (= c!433804 (and ((_ is Cons!31029) rules!1381) ((_ is Nil!31029) (t!225063 rules!1381))))))

(declare-fun lt!949435 () Unit!45159)

(declare-fun lt!949437 () Unit!45159)

(assert (=> d!771119 (= lt!949435 lt!949437)))

(declare-fun lt!949438 () List!31127)

(declare-fun lt!949434 () List!31127)

(assert (=> d!771119 (isPrefix!2466 lt!949438 lt!949434)))

(assert (=> d!771119 (= lt!949437 (lemmaIsPrefixRefl!1592 lt!949438 lt!949434))))

(assert (=> d!771119 (= lt!949434 (list!11708 input!780))))

(assert (=> d!771119 (= lt!949438 (list!11708 input!780))))

(assert (=> d!771119 (rulesValidInductive!1648 thiss!12257 rules!1381)))

(assert (=> d!771119 (= (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780) lt!949436)))

(declare-fun b!2690908 () Bool)

(declare-fun e!1696506 () Bool)

(assert (=> b!2690908 (= e!1696506 (= (list!11708 (_2!17866 (get!9715 lt!949436))) (_2!17873 (get!9716 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 input!780))))))))

(declare-fun b!2690909 () Bool)

(declare-fun e!1696503 () Bool)

(assert (=> b!2690909 (= e!1696503 e!1696506)))

(declare-fun res!1130629 () Bool)

(assert (=> b!2690909 (=> (not res!1130629) (not e!1696506))))

(assert (=> b!2690909 (= res!1130629 (= (_1!17866 (get!9715 lt!949436)) (_1!17873 (get!9716 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 input!780))))))))

(declare-fun b!2690910 () Bool)

(declare-fun e!1696505 () Bool)

(assert (=> b!2690910 (= e!1696507 e!1696505)))

(declare-fun res!1130627 () Bool)

(assert (=> b!2690910 (=> res!1130627 e!1696505)))

(assert (=> b!2690910 (= res!1130627 (not (isDefined!4859 lt!949436)))))

(declare-fun b!2690911 () Bool)

(declare-fun res!1130626 () Bool)

(assert (=> b!2690911 (=> (not res!1130626) (not e!1696507))))

(assert (=> b!2690911 (= res!1130626 e!1696503)))

(declare-fun res!1130628 () Bool)

(assert (=> b!2690911 (=> res!1130628 e!1696503)))

(assert (=> b!2690911 (= res!1130628 (not (isDefined!4859 lt!949436)))))

(declare-fun b!2690912 () Bool)

(assert (=> b!2690912 (= e!1696508 call!173373)))

(declare-fun b!2690913 () Bool)

(assert (=> b!2690913 (= e!1696505 e!1696504)))

(declare-fun res!1130625 () Bool)

(assert (=> b!2690913 (=> (not res!1130625) (not e!1696504))))

(assert (=> b!2690913 (= res!1130625 (= (_1!17866 (get!9715 lt!949436)) (_1!17873 (get!9716 (maxPrefix!2349 thiss!12257 rules!1381 (list!11708 input!780))))))))

(assert (= (and d!771119 c!433804) b!2690912))

(assert (= (and d!771119 (not c!433804)) b!2690906))

(assert (= (or b!2690912 b!2690906) bm!173368))

(assert (= (and d!771119 res!1130630) b!2690911))

(assert (= (and b!2690911 (not res!1130628)) b!2690909))

(assert (= (and b!2690909 res!1130629) b!2690908))

(assert (= (and b!2690911 res!1130626) b!2690910))

(assert (= (and b!2690910 (not res!1130627)) b!2690913))

(assert (= (and b!2690913 res!1130625) b!2690907))

(declare-fun m!3068313 () Bool)

(assert (=> b!2690909 m!3068313))

(assert (=> b!2690909 m!3068121))

(assert (=> b!2690909 m!3068121))

(declare-fun m!3068315 () Bool)

(assert (=> b!2690909 m!3068315))

(assert (=> b!2690909 m!3068315))

(declare-fun m!3068317 () Bool)

(assert (=> b!2690909 m!3068317))

(declare-fun m!3068319 () Bool)

(assert (=> bm!173368 m!3068319))

(declare-fun m!3068321 () Bool)

(assert (=> b!2690906 m!3068321))

(assert (=> d!771119 m!3068315))

(declare-fun m!3068323 () Bool)

(assert (=> d!771119 m!3068323))

(assert (=> d!771119 m!3068121))

(declare-fun m!3068325 () Bool)

(assert (=> d!771119 m!3068325))

(declare-fun m!3068327 () Bool)

(assert (=> d!771119 m!3068327))

(declare-fun m!3068329 () Bool)

(assert (=> d!771119 m!3068329))

(assert (=> d!771119 m!3068243))

(assert (=> d!771119 m!3068121))

(assert (=> d!771119 m!3068315))

(assert (=> b!2690910 m!3068325))

(assert (=> b!2690913 m!3068313))

(assert (=> b!2690913 m!3068121))

(assert (=> b!2690913 m!3068121))

(declare-fun m!3068331 () Bool)

(assert (=> b!2690913 m!3068331))

(assert (=> b!2690913 m!3068331))

(declare-fun m!3068333 () Bool)

(assert (=> b!2690913 m!3068333))

(assert (=> b!2690911 m!3068325))

(assert (=> b!2690907 m!3068121))

(assert (=> b!2690907 m!3068121))

(assert (=> b!2690907 m!3068331))

(assert (=> b!2690907 m!3068331))

(assert (=> b!2690907 m!3068333))

(assert (=> b!2690907 m!3068313))

(declare-fun m!3068335 () Bool)

(assert (=> b!2690907 m!3068335))

(assert (=> b!2690908 m!3068121))

(assert (=> b!2690908 m!3068121))

(assert (=> b!2690908 m!3068315))

(assert (=> b!2690908 m!3068313))

(assert (=> b!2690908 m!3068315))

(assert (=> b!2690908 m!3068317))

(assert (=> b!2690908 m!3068335))

(assert (=> b!2690753 d!771119))

(declare-fun d!771121 () Bool)

(declare-fun c!433805 () Bool)

(assert (=> d!771121 (= c!433805 ((_ is Node!9703) (c!433768 totalInput!354)))))

(declare-fun e!1696509 () Bool)

(assert (=> d!771121 (= (inv!42060 (c!433768 totalInput!354)) e!1696509)))

(declare-fun b!2690914 () Bool)

(assert (=> b!2690914 (= e!1696509 (inv!42069 (c!433768 totalInput!354)))))

(declare-fun b!2690915 () Bool)

(declare-fun e!1696510 () Bool)

(assert (=> b!2690915 (= e!1696509 e!1696510)))

(declare-fun res!1130631 () Bool)

(assert (=> b!2690915 (= res!1130631 (not ((_ is Leaf!14816) (c!433768 totalInput!354))))))

(assert (=> b!2690915 (=> res!1130631 e!1696510)))

(declare-fun b!2690916 () Bool)

(assert (=> b!2690916 (= e!1696510 (inv!42070 (c!433768 totalInput!354)))))

(assert (= (and d!771121 c!433805) b!2690914))

(assert (= (and d!771121 (not c!433805)) b!2690915))

(assert (= (and b!2690915 (not res!1130631)) b!2690916))

(declare-fun m!3068337 () Bool)

(assert (=> b!2690914 m!3068337))

(declare-fun m!3068339 () Bool)

(assert (=> b!2690916 m!3068339))

(assert (=> b!2690773 d!771121))

(declare-fun d!771123 () Bool)

(declare-fun c!433806 () Bool)

(assert (=> d!771123 (= c!433806 ((_ is Node!9703) (c!433768 treated!26)))))

(declare-fun e!1696511 () Bool)

(assert (=> d!771123 (= (inv!42060 (c!433768 treated!26)) e!1696511)))

(declare-fun b!2690917 () Bool)

(assert (=> b!2690917 (= e!1696511 (inv!42069 (c!433768 treated!26)))))

(declare-fun b!2690918 () Bool)

(declare-fun e!1696512 () Bool)

(assert (=> b!2690918 (= e!1696511 e!1696512)))

(declare-fun res!1130632 () Bool)

(assert (=> b!2690918 (= res!1130632 (not ((_ is Leaf!14816) (c!433768 treated!26))))))

(assert (=> b!2690918 (=> res!1130632 e!1696512)))

(declare-fun b!2690919 () Bool)

(assert (=> b!2690919 (= e!1696512 (inv!42070 (c!433768 treated!26)))))

(assert (= (and d!771123 c!433806) b!2690917))

(assert (= (and d!771123 (not c!433806)) b!2690918))

(assert (= (and b!2690918 (not res!1130632)) b!2690919))

(declare-fun m!3068341 () Bool)

(assert (=> b!2690917 m!3068341))

(declare-fun m!3068343 () Bool)

(assert (=> b!2690919 m!3068343))

(assert (=> b!2690750 d!771123))

(declare-fun d!771125 () Bool)

(declare-fun list!11711 (Conc!9704) List!31128)

(assert (=> d!771125 (= (list!11709 acc!348) (list!11711 (c!433769 acc!348)))))

(declare-fun bs!483291 () Bool)

(assert (= bs!483291 d!771125))

(declare-fun m!3068345 () Bool)

(assert (=> bs!483291 m!3068345))

(assert (=> b!2690771 d!771125))

(declare-fun d!771127 () Bool)

(assert (=> d!771127 (= (list!11709 (_1!17865 lt!949284)) (list!11711 (c!433769 (_1!17865 lt!949284))))))

(declare-fun bs!483292 () Bool)

(assert (= bs!483292 d!771127))

(declare-fun m!3068347 () Bool)

(assert (=> bs!483292 m!3068347))

(assert (=> b!2690771 d!771127))

(declare-fun b!2690920 () Bool)

(declare-fun e!1696514 () Bool)

(declare-fun lt!949441 () tuple2!30560)

(assert (=> b!2690920 (= e!1696514 (= (list!11708 (_2!17865 lt!949441)) (list!11708 treated!26)))))

(declare-fun b!2690921 () Bool)

(declare-fun e!1696516 () tuple2!30560)

(declare-fun lt!949442 () tuple2!30560)

(declare-fun lt!949440 () Option!6128)

(assert (=> b!2690921 (= e!1696516 (tuple2!30561 (prepend!1069 (_1!17865 lt!949442) (_1!17866 (v!32824 lt!949440))) (_2!17865 lt!949442)))))

(assert (=> b!2690921 (= lt!949442 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949440))))))

(declare-fun b!2690922 () Bool)

(declare-fun e!1696515 () Bool)

(assert (=> b!2690922 (= e!1696515 (not (isEmpty!17709 (_1!17865 lt!949441))))))

(declare-fun d!771129 () Bool)

(declare-fun e!1696513 () Bool)

(assert (=> d!771129 e!1696513))

(declare-fun res!1130634 () Bool)

(assert (=> d!771129 (=> (not res!1130634) (not e!1696513))))

(assert (=> d!771129 (= res!1130634 e!1696514)))

(declare-fun c!433808 () Bool)

(assert (=> d!771129 (= c!433808 (> (size!23968 (_1!17865 lt!949441)) 0))))

(assert (=> d!771129 (= lt!949441 e!1696516)))

(declare-fun c!433807 () Bool)

(assert (=> d!771129 (= c!433807 ((_ is Some!6127) lt!949440))))

(assert (=> d!771129 (= lt!949440 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 treated!26))))

(assert (=> d!771129 (= (lexRec!596 thiss!12257 rules!1381 treated!26) lt!949441)))

(declare-fun b!2690923 () Bool)

(declare-fun res!1130633 () Bool)

(assert (=> b!2690923 (=> (not res!1130633) (not e!1696513))))

(assert (=> b!2690923 (= res!1130633 (= (list!11709 (_1!17865 lt!949441)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 treated!26)))))))

(declare-fun b!2690924 () Bool)

(assert (=> b!2690924 (= e!1696513 (= (list!11708 (_2!17865 lt!949441)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 treated!26)))))))

(declare-fun b!2690925 () Bool)

(assert (=> b!2690925 (= e!1696516 (tuple2!30561 (BalanceConc!19023 Empty!9704) treated!26))))

(declare-fun b!2690926 () Bool)

(assert (=> b!2690926 (= e!1696514 e!1696515)))

(declare-fun res!1130635 () Bool)

(assert (=> b!2690926 (= res!1130635 (< (size!23969 (_2!17865 lt!949441)) (size!23969 treated!26)))))

(assert (=> b!2690926 (=> (not res!1130635) (not e!1696515))))

(assert (= (and d!771129 c!433807) b!2690921))

(assert (= (and d!771129 (not c!433807)) b!2690925))

(assert (= (and d!771129 c!433808) b!2690926))

(assert (= (and d!771129 (not c!433808)) b!2690920))

(assert (= (and b!2690926 res!1130635) b!2690922))

(assert (= (and d!771129 res!1130634) b!2690923))

(assert (= (and b!2690923 res!1130633) b!2690924))

(declare-fun m!3068349 () Bool)

(assert (=> b!2690921 m!3068349))

(declare-fun m!3068351 () Bool)

(assert (=> b!2690921 m!3068351))

(declare-fun m!3068353 () Bool)

(assert (=> b!2690923 m!3068353))

(assert (=> b!2690923 m!3068123))

(assert (=> b!2690923 m!3068123))

(declare-fun m!3068355 () Bool)

(assert (=> b!2690923 m!3068355))

(declare-fun m!3068357 () Bool)

(assert (=> b!2690920 m!3068357))

(assert (=> b!2690920 m!3068123))

(declare-fun m!3068359 () Bool)

(assert (=> d!771129 m!3068359))

(declare-fun m!3068361 () Bool)

(assert (=> d!771129 m!3068361))

(declare-fun m!3068363 () Bool)

(assert (=> b!2690926 m!3068363))

(declare-fun m!3068365 () Bool)

(assert (=> b!2690926 m!3068365))

(assert (=> b!2690924 m!3068357))

(assert (=> b!2690924 m!3068123))

(assert (=> b!2690924 m!3068123))

(assert (=> b!2690924 m!3068355))

(declare-fun m!3068367 () Bool)

(assert (=> b!2690922 m!3068367))

(assert (=> b!2690771 d!771129))

(declare-fun b!2690928 () Bool)

(declare-fun e!1696517 () List!31127)

(assert (=> b!2690928 (= e!1696517 (Cons!31027 (h!36447 lt!949288) (++!7594 (t!225061 lt!949288) lt!949281)))))

(declare-fun d!771131 () Bool)

(declare-fun e!1696518 () Bool)

(assert (=> d!771131 e!1696518))

(declare-fun res!1130637 () Bool)

(assert (=> d!771131 (=> (not res!1130637) (not e!1696518))))

(declare-fun lt!949443 () List!31127)

(assert (=> d!771131 (= res!1130637 (= (content!4400 lt!949443) ((_ map or) (content!4400 lt!949288) (content!4400 lt!949281))))))

(assert (=> d!771131 (= lt!949443 e!1696517)))

(declare-fun c!433809 () Bool)

(assert (=> d!771131 (= c!433809 ((_ is Nil!31027) lt!949288))))

(assert (=> d!771131 (= (++!7594 lt!949288 lt!949281) lt!949443)))

(declare-fun b!2690930 () Bool)

(assert (=> b!2690930 (= e!1696518 (or (not (= lt!949281 Nil!31027)) (= lt!949443 lt!949288)))))

(declare-fun b!2690927 () Bool)

(assert (=> b!2690927 (= e!1696517 lt!949281)))

(declare-fun b!2690929 () Bool)

(declare-fun res!1130636 () Bool)

(assert (=> b!2690929 (=> (not res!1130636) (not e!1696518))))

(assert (=> b!2690929 (= res!1130636 (= (size!23970 lt!949443) (+ (size!23970 lt!949288) (size!23970 lt!949281))))))

(assert (= (and d!771131 c!433809) b!2690927))

(assert (= (and d!771131 (not c!433809)) b!2690928))

(assert (= (and d!771131 res!1130637) b!2690929))

(assert (= (and b!2690929 res!1130636) b!2690930))

(declare-fun m!3068369 () Bool)

(assert (=> b!2690928 m!3068369))

(declare-fun m!3068371 () Bool)

(assert (=> d!771131 m!3068371))

(declare-fun m!3068373 () Bool)

(assert (=> d!771131 m!3068373))

(declare-fun m!3068375 () Bool)

(assert (=> d!771131 m!3068375))

(declare-fun m!3068377 () Bool)

(assert (=> b!2690929 m!3068377))

(declare-fun m!3068379 () Bool)

(assert (=> b!2690929 m!3068379))

(declare-fun m!3068381 () Bool)

(assert (=> b!2690929 m!3068381))

(assert (=> b!2690752 d!771131))

(declare-fun d!771133 () Bool)

(assert (=> d!771133 (= (list!11708 totalInput!354) (list!11710 (c!433768 totalInput!354)))))

(declare-fun bs!483293 () Bool)

(assert (= bs!483293 d!771133))

(declare-fun m!3068383 () Bool)

(assert (=> bs!483293 m!3068383))

(assert (=> b!2690752 d!771133))

(declare-fun d!771135 () Bool)

(assert (=> d!771135 (= (list!11708 input!780) (list!11710 (c!433768 input!780)))))

(declare-fun bs!483294 () Bool)

(assert (= bs!483294 d!771135))

(declare-fun m!3068385 () Bool)

(assert (=> bs!483294 m!3068385))

(assert (=> b!2690752 d!771135))

(declare-fun d!771137 () Bool)

(assert (=> d!771137 (= (list!11708 treated!26) (list!11710 (c!433768 treated!26)))))

(declare-fun bs!483295 () Bool)

(assert (= bs!483295 d!771137))

(declare-fun m!3068387 () Bool)

(assert (=> bs!483295 m!3068387))

(assert (=> b!2690752 d!771137))

(declare-fun d!771139 () Bool)

(assert (=> d!771139 (= (valid!2718 cacheUp!486) (validCacheMapUp!322 (cache!3556 cacheUp!486)))))

(declare-fun bs!483296 () Bool)

(assert (= bs!483296 d!771139))

(declare-fun m!3068389 () Bool)

(assert (=> bs!483296 m!3068389))

(assert (=> b!2690768 d!771139))

(declare-fun d!771141 () Bool)

(assert (=> d!771141 (= (valid!2717 cacheDown!499) (validCacheMapDown!353 (cache!3555 cacheDown!499)))))

(declare-fun bs!483297 () Bool)

(assert (= bs!483297 d!771141))

(declare-fun m!3068391 () Bool)

(assert (=> bs!483297 m!3068391))

(assert (=> b!2690749 d!771141))

(declare-fun d!771143 () Bool)

(assert (=> d!771143 (= (list!11709 (_1!17865 (lexRec!596 thiss!12257 rules!1381 lt!949268))) (list!11711 (c!433769 (_1!17865 (lexRec!596 thiss!12257 rules!1381 lt!949268)))))))

(declare-fun bs!483298 () Bool)

(assert (= bs!483298 d!771143))

(declare-fun m!3068393 () Bool)

(assert (=> bs!483298 m!3068393))

(assert (=> b!2690766 d!771143))

(declare-fun b!2690931 () Bool)

(declare-fun e!1696520 () Bool)

(declare-fun lt!949445 () tuple2!30560)

(assert (=> b!2690931 (= e!1696520 (= (list!11708 (_2!17865 lt!949445)) (list!11708 lt!949268)))))

(declare-fun b!2690932 () Bool)

(declare-fun e!1696522 () tuple2!30560)

(declare-fun lt!949446 () tuple2!30560)

(declare-fun lt!949444 () Option!6128)

(assert (=> b!2690932 (= e!1696522 (tuple2!30561 (prepend!1069 (_1!17865 lt!949446) (_1!17866 (v!32824 lt!949444))) (_2!17865 lt!949446)))))

(assert (=> b!2690932 (= lt!949446 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949444))))))

(declare-fun b!2690933 () Bool)

(declare-fun e!1696521 () Bool)

(assert (=> b!2690933 (= e!1696521 (not (isEmpty!17709 (_1!17865 lt!949445))))))

(declare-fun d!771145 () Bool)

(declare-fun e!1696519 () Bool)

(assert (=> d!771145 e!1696519))

(declare-fun res!1130639 () Bool)

(assert (=> d!771145 (=> (not res!1130639) (not e!1696519))))

(assert (=> d!771145 (= res!1130639 e!1696520)))

(declare-fun c!433811 () Bool)

(assert (=> d!771145 (= c!433811 (> (size!23968 (_1!17865 lt!949445)) 0))))

(assert (=> d!771145 (= lt!949445 e!1696522)))

(declare-fun c!433810 () Bool)

(assert (=> d!771145 (= c!433810 ((_ is Some!6127) lt!949444))))

(assert (=> d!771145 (= lt!949444 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949268))))

(assert (=> d!771145 (= (lexRec!596 thiss!12257 rules!1381 lt!949268) lt!949445)))

(declare-fun b!2690934 () Bool)

(declare-fun res!1130638 () Bool)

(assert (=> b!2690934 (=> (not res!1130638) (not e!1696519))))

(assert (=> b!2690934 (= res!1130638 (= (list!11709 (_1!17865 lt!949445)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 lt!949268)))))))

(declare-fun b!2690935 () Bool)

(assert (=> b!2690935 (= e!1696519 (= (list!11708 (_2!17865 lt!949445)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 lt!949268)))))))

(declare-fun b!2690936 () Bool)

(assert (=> b!2690936 (= e!1696522 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949268))))

(declare-fun b!2690937 () Bool)

(assert (=> b!2690937 (= e!1696520 e!1696521)))

(declare-fun res!1130640 () Bool)

(assert (=> b!2690937 (= res!1130640 (< (size!23969 (_2!17865 lt!949445)) (size!23969 lt!949268)))))

(assert (=> b!2690937 (=> (not res!1130640) (not e!1696521))))

(assert (= (and d!771145 c!433810) b!2690932))

(assert (= (and d!771145 (not c!433810)) b!2690936))

(assert (= (and d!771145 c!433811) b!2690937))

(assert (= (and d!771145 (not c!433811)) b!2690931))

(assert (= (and b!2690937 res!1130640) b!2690933))

(assert (= (and d!771145 res!1130639) b!2690934))

(assert (= (and b!2690934 res!1130638) b!2690935))

(declare-fun m!3068395 () Bool)

(assert (=> b!2690932 m!3068395))

(declare-fun m!3068397 () Bool)

(assert (=> b!2690932 m!3068397))

(declare-fun m!3068399 () Bool)

(assert (=> b!2690934 m!3068399))

(assert (=> b!2690934 m!3067979))

(assert (=> b!2690934 m!3067979))

(declare-fun m!3068401 () Bool)

(assert (=> b!2690934 m!3068401))

(declare-fun m!3068403 () Bool)

(assert (=> b!2690931 m!3068403))

(assert (=> b!2690931 m!3067979))

(declare-fun m!3068405 () Bool)

(assert (=> d!771145 m!3068405))

(declare-fun m!3068407 () Bool)

(assert (=> d!771145 m!3068407))

(declare-fun m!3068409 () Bool)

(assert (=> b!2690937 m!3068409))

(declare-fun m!3068411 () Bool)

(assert (=> b!2690937 m!3068411))

(assert (=> b!2690935 m!3068403))

(assert (=> b!2690935 m!3067979))

(assert (=> b!2690935 m!3067979))

(assert (=> b!2690935 m!3068401))

(declare-fun m!3068413 () Bool)

(assert (=> b!2690933 m!3068413))

(assert (=> b!2690766 d!771145))

(declare-fun d!771147 () Bool)

(assert (=> d!771147 (= (list!11709 lt!949294) (list!11711 (c!433769 lt!949294)))))

(declare-fun bs!483299 () Bool)

(assert (= bs!483299 d!771147))

(declare-fun m!3068415 () Bool)

(assert (=> bs!483299 m!3068415))

(assert (=> b!2690766 d!771147))

(declare-fun d!771149 () Bool)

(assert (=> d!771149 (= (inv!42061 input!780) (isBalanced!2938 (c!433768 input!780)))))

(declare-fun bs!483300 () Bool)

(assert (= bs!483300 d!771149))

(declare-fun m!3068417 () Bool)

(assert (=> bs!483300 m!3068417))

(assert (=> start!261646 d!771149))

(declare-fun d!771151 () Bool)

(assert (=> d!771151 (= (inv!42061 treated!26) (isBalanced!2938 (c!433768 treated!26)))))

(declare-fun bs!483301 () Bool)

(assert (= bs!483301 d!771151))

(declare-fun m!3068419 () Bool)

(assert (=> bs!483301 m!3068419))

(assert (=> start!261646 d!771151))

(declare-fun d!771153 () Bool)

(declare-fun res!1130643 () Bool)

(declare-fun e!1696525 () Bool)

(assert (=> d!771153 (=> (not res!1130643) (not e!1696525))))

(assert (=> d!771153 (= res!1130643 ((_ is HashMap!3413) (cache!3556 cacheUp!486)))))

(assert (=> d!771153 (= (inv!42062 cacheUp!486) e!1696525)))

(declare-fun b!2690940 () Bool)

(assert (=> b!2690940 (= e!1696525 (validCacheMapUp!322 (cache!3556 cacheUp!486)))))

(assert (= (and d!771153 res!1130643) b!2690940))

(assert (=> b!2690940 m!3068389))

(assert (=> start!261646 d!771153))

(declare-fun d!771155 () Bool)

(declare-fun res!1130646 () Bool)

(declare-fun e!1696528 () Bool)

(assert (=> d!771155 (=> (not res!1130646) (not e!1696528))))

(assert (=> d!771155 (= res!1130646 ((_ is HashMap!3412) (cache!3555 cacheDown!499)))))

(assert (=> d!771155 (= (inv!42064 cacheDown!499) e!1696528)))

(declare-fun b!2690943 () Bool)

(assert (=> b!2690943 (= e!1696528 (validCacheMapDown!353 (cache!3555 cacheDown!499)))))

(assert (= (and d!771155 res!1130646) b!2690943))

(assert (=> b!2690943 m!3068391))

(assert (=> start!261646 d!771155))

(declare-fun d!771157 () Bool)

(assert (=> d!771157 (= (inv!42063 acc!348) (isBalanced!2937 (c!433769 acc!348)))))

(declare-fun bs!483302 () Bool)

(assert (= bs!483302 d!771157))

(declare-fun m!3068421 () Bool)

(assert (=> bs!483302 m!3068421))

(assert (=> start!261646 d!771157))

(declare-fun d!771159 () Bool)

(assert (=> d!771159 (= (inv!42061 totalInput!354) (isBalanced!2938 (c!433768 totalInput!354)))))

(declare-fun bs!483303 () Bool)

(assert (= bs!483303 d!771159))

(declare-fun m!3068423 () Bool)

(assert (=> bs!483303 m!3068423))

(assert (=> start!261646 d!771159))

(declare-fun d!771161 () Bool)

(assert (=> d!771161 (= (list!11709 (_1!17865 lt!949290)) (list!11711 (c!433769 (_1!17865 lt!949290))))))

(declare-fun bs!483304 () Bool)

(assert (= bs!483304 d!771161))

(declare-fun m!3068425 () Bool)

(assert (=> bs!483304 m!3068425))

(assert (=> b!2690746 d!771161))

(declare-fun b!2690944 () Bool)

(declare-fun e!1696530 () Bool)

(declare-fun lt!949448 () tuple2!30560)

(assert (=> b!2690944 (= e!1696530 (= (list!11708 (_2!17865 lt!949448)) (list!11708 input!780)))))

(declare-fun b!2690945 () Bool)

(declare-fun e!1696532 () tuple2!30560)

(declare-fun lt!949449 () tuple2!30560)

(declare-fun lt!949447 () Option!6128)

(assert (=> b!2690945 (= e!1696532 (tuple2!30561 (prepend!1069 (_1!17865 lt!949449) (_1!17866 (v!32824 lt!949447))) (_2!17865 lt!949449)))))

(assert (=> b!2690945 (= lt!949449 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949447))))))

(declare-fun b!2690946 () Bool)

(declare-fun e!1696531 () Bool)

(assert (=> b!2690946 (= e!1696531 (not (isEmpty!17709 (_1!17865 lt!949448))))))

(declare-fun d!771163 () Bool)

(declare-fun e!1696529 () Bool)

(assert (=> d!771163 e!1696529))

(declare-fun res!1130648 () Bool)

(assert (=> d!771163 (=> (not res!1130648) (not e!1696529))))

(assert (=> d!771163 (= res!1130648 e!1696530)))

(declare-fun c!433813 () Bool)

(assert (=> d!771163 (= c!433813 (> (size!23968 (_1!17865 lt!949448)) 0))))

(assert (=> d!771163 (= lt!949448 e!1696532)))

(declare-fun c!433812 () Bool)

(assert (=> d!771163 (= c!433812 ((_ is Some!6127) lt!949447))))

(assert (=> d!771163 (= lt!949447 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780))))

(assert (=> d!771163 (= (lexRec!596 thiss!12257 rules!1381 input!780) lt!949448)))

(declare-fun b!2690947 () Bool)

(declare-fun res!1130647 () Bool)

(assert (=> b!2690947 (=> (not res!1130647) (not e!1696529))))

(assert (=> b!2690947 (= res!1130647 (= (list!11709 (_1!17865 lt!949448)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 input!780)))))))

(declare-fun b!2690948 () Bool)

(assert (=> b!2690948 (= e!1696529 (= (list!11708 (_2!17865 lt!949448)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 input!780)))))))

(declare-fun b!2690949 () Bool)

(assert (=> b!2690949 (= e!1696532 (tuple2!30561 (BalanceConc!19023 Empty!9704) input!780))))

(declare-fun b!2690950 () Bool)

(assert (=> b!2690950 (= e!1696530 e!1696531)))

(declare-fun res!1130649 () Bool)

(assert (=> b!2690950 (= res!1130649 (< (size!23969 (_2!17865 lt!949448)) (size!23969 input!780)))))

(assert (=> b!2690950 (=> (not res!1130649) (not e!1696531))))

(assert (= (and d!771163 c!433812) b!2690945))

(assert (= (and d!771163 (not c!433812)) b!2690949))

(assert (= (and d!771163 c!433813) b!2690950))

(assert (= (and d!771163 (not c!433813)) b!2690944))

(assert (= (and b!2690950 res!1130649) b!2690946))

(assert (= (and d!771163 res!1130648) b!2690947))

(assert (= (and b!2690947 res!1130647) b!2690948))

(declare-fun m!3068427 () Bool)

(assert (=> b!2690945 m!3068427))

(declare-fun m!3068429 () Bool)

(assert (=> b!2690945 m!3068429))

(declare-fun m!3068431 () Bool)

(assert (=> b!2690947 m!3068431))

(assert (=> b!2690947 m!3068121))

(assert (=> b!2690947 m!3068121))

(declare-fun m!3068433 () Bool)

(assert (=> b!2690947 m!3068433))

(declare-fun m!3068435 () Bool)

(assert (=> b!2690944 m!3068435))

(assert (=> b!2690944 m!3068121))

(declare-fun m!3068437 () Bool)

(assert (=> d!771163 m!3068437))

(assert (=> d!771163 m!3068129))

(declare-fun m!3068439 () Bool)

(assert (=> b!2690950 m!3068439))

(declare-fun m!3068441 () Bool)

(assert (=> b!2690950 m!3068441))

(assert (=> b!2690948 m!3068435))

(assert (=> b!2690948 m!3068121))

(assert (=> b!2690948 m!3068121))

(assert (=> b!2690948 m!3068433))

(declare-fun m!3068443 () Bool)

(assert (=> b!2690946 m!3068443))

(assert (=> b!2690746 d!771163))

(declare-fun b!2690951 () Bool)

(declare-fun e!1696534 () Bool)

(declare-fun lt!949451 () tuple2!30560)

(assert (=> b!2690951 (= e!1696534 (= (list!11708 (_2!17865 lt!949451)) (list!11708 totalInput!354)))))

(declare-fun b!2690952 () Bool)

(declare-fun e!1696536 () tuple2!30560)

(declare-fun lt!949452 () tuple2!30560)

(declare-fun lt!949450 () Option!6128)

(assert (=> b!2690952 (= e!1696536 (tuple2!30561 (prepend!1069 (_1!17865 lt!949452) (_1!17866 (v!32824 lt!949450))) (_2!17865 lt!949452)))))

(assert (=> b!2690952 (= lt!949452 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949450))))))

(declare-fun b!2690953 () Bool)

(declare-fun e!1696535 () Bool)

(assert (=> b!2690953 (= e!1696535 (not (isEmpty!17709 (_1!17865 lt!949451))))))

(declare-fun d!771165 () Bool)

(declare-fun e!1696533 () Bool)

(assert (=> d!771165 e!1696533))

(declare-fun res!1130651 () Bool)

(assert (=> d!771165 (=> (not res!1130651) (not e!1696533))))

(assert (=> d!771165 (= res!1130651 e!1696534)))

(declare-fun c!433815 () Bool)

(assert (=> d!771165 (= c!433815 (> (size!23968 (_1!17865 lt!949451)) 0))))

(assert (=> d!771165 (= lt!949451 e!1696536)))

(declare-fun c!433814 () Bool)

(assert (=> d!771165 (= c!433814 ((_ is Some!6127) lt!949450))))

(assert (=> d!771165 (= lt!949450 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!771165 (= (lexRec!596 thiss!12257 rules!1381 totalInput!354) lt!949451)))

(declare-fun b!2690954 () Bool)

(declare-fun res!1130650 () Bool)

(assert (=> b!2690954 (=> (not res!1130650) (not e!1696533))))

(assert (=> b!2690954 (= res!1130650 (= (list!11709 (_1!17865 lt!949451)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 totalInput!354)))))))

(declare-fun b!2690955 () Bool)

(assert (=> b!2690955 (= e!1696533 (= (list!11708 (_2!17865 lt!949451)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 totalInput!354)))))))

(declare-fun b!2690956 () Bool)

(assert (=> b!2690956 (= e!1696536 (tuple2!30561 (BalanceConc!19023 Empty!9704) totalInput!354))))

(declare-fun b!2690957 () Bool)

(assert (=> b!2690957 (= e!1696534 e!1696535)))

(declare-fun res!1130652 () Bool)

(assert (=> b!2690957 (= res!1130652 (< (size!23969 (_2!17865 lt!949451)) (size!23969 totalInput!354)))))

(assert (=> b!2690957 (=> (not res!1130652) (not e!1696535))))

(assert (= (and d!771165 c!433814) b!2690952))

(assert (= (and d!771165 (not c!433814)) b!2690956))

(assert (= (and d!771165 c!433815) b!2690957))

(assert (= (and d!771165 (not c!433815)) b!2690951))

(assert (= (and b!2690957 res!1130652) b!2690953))

(assert (= (and d!771165 res!1130651) b!2690954))

(assert (= (and b!2690954 res!1130650) b!2690955))

(declare-fun m!3068445 () Bool)

(assert (=> b!2690952 m!3068445))

(declare-fun m!3068447 () Bool)

(assert (=> b!2690952 m!3068447))

(declare-fun m!3068449 () Bool)

(assert (=> b!2690954 m!3068449))

(assert (=> b!2690954 m!3068119))

(assert (=> b!2690954 m!3068119))

(declare-fun m!3068451 () Bool)

(assert (=> b!2690954 m!3068451))

(declare-fun m!3068453 () Bool)

(assert (=> b!2690951 m!3068453))

(assert (=> b!2690951 m!3068119))

(declare-fun m!3068455 () Bool)

(assert (=> d!771165 m!3068455))

(declare-fun m!3068457 () Bool)

(assert (=> d!771165 m!3068457))

(declare-fun m!3068459 () Bool)

(assert (=> b!2690957 m!3068459))

(declare-fun m!3068461 () Bool)

(assert (=> b!2690957 m!3068461))

(assert (=> b!2690955 m!3068453))

(assert (=> b!2690955 m!3068119))

(assert (=> b!2690955 m!3068119))

(assert (=> b!2690955 m!3068451))

(declare-fun m!3068463 () Bool)

(assert (=> b!2690953 m!3068463))

(assert (=> b!2690746 d!771165))

(declare-fun b!2690966 () Bool)

(declare-fun res!1130663 () Bool)

(declare-fun e!1696539 () Bool)

(assert (=> b!2690966 (=> (not res!1130663) (not e!1696539))))

(declare-fun ++!7599 (Conc!9704 Conc!9704) Conc!9704)

(assert (=> b!2690966 (= res!1130663 (isBalanced!2937 (++!7599 (c!433769 acc!348) (c!433769 (_1!17865 lt!949277)))))))

(declare-fun b!2690968 () Bool)

(declare-fun res!1130664 () Bool)

(assert (=> b!2690968 (=> (not res!1130664) (not e!1696539))))

(declare-fun height!1420 (Conc!9704) Int)

(assert (=> b!2690968 (= res!1130664 (>= (height!1420 (++!7599 (c!433769 acc!348) (c!433769 (_1!17865 lt!949277)))) (max!0 (height!1420 (c!433769 acc!348)) (height!1420 (c!433769 (_1!17865 lt!949277))))))))

(declare-fun b!2690969 () Bool)

(declare-fun lt!949455 () BalanceConc!19022)

(assert (=> b!2690969 (= e!1696539 (= (list!11709 lt!949455) (++!7595 (list!11709 acc!348) (list!11709 (_1!17865 lt!949277)))))))

(declare-fun d!771167 () Bool)

(assert (=> d!771167 e!1696539))

(declare-fun res!1130662 () Bool)

(assert (=> d!771167 (=> (not res!1130662) (not e!1696539))))

(declare-fun appendAssocInst!660 (Conc!9704 Conc!9704) Bool)

(assert (=> d!771167 (= res!1130662 (appendAssocInst!660 (c!433769 acc!348) (c!433769 (_1!17865 lt!949277))))))

(assert (=> d!771167 (= lt!949455 (BalanceConc!19023 (++!7599 (c!433769 acc!348) (c!433769 (_1!17865 lt!949277)))))))

(assert (=> d!771167 (= (++!7597 acc!348 (_1!17865 lt!949277)) lt!949455)))

(declare-fun b!2690967 () Bool)

(declare-fun res!1130661 () Bool)

(assert (=> b!2690967 (=> (not res!1130661) (not e!1696539))))

(assert (=> b!2690967 (= res!1130661 (<= (height!1420 (++!7599 (c!433769 acc!348) (c!433769 (_1!17865 lt!949277)))) (+ (max!0 (height!1420 (c!433769 acc!348)) (height!1420 (c!433769 (_1!17865 lt!949277)))) 1)))))

(assert (= (and d!771167 res!1130662) b!2690966))

(assert (= (and b!2690966 res!1130663) b!2690967))

(assert (= (and b!2690967 res!1130661) b!2690968))

(assert (= (and b!2690968 res!1130664) b!2690969))

(declare-fun m!3068465 () Bool)

(assert (=> b!2690966 m!3068465))

(assert (=> b!2690966 m!3068465))

(declare-fun m!3068467 () Bool)

(assert (=> b!2690966 m!3068467))

(declare-fun m!3068469 () Bool)

(assert (=> d!771167 m!3068469))

(assert (=> d!771167 m!3068465))

(assert (=> b!2690967 m!3068465))

(declare-fun m!3068471 () Bool)

(assert (=> b!2690967 m!3068471))

(declare-fun m!3068473 () Bool)

(assert (=> b!2690967 m!3068473))

(declare-fun m!3068475 () Bool)

(assert (=> b!2690967 m!3068475))

(declare-fun m!3068477 () Bool)

(assert (=> b!2690967 m!3068477))

(assert (=> b!2690967 m!3068465))

(assert (=> b!2690967 m!3068473))

(assert (=> b!2690967 m!3068475))

(declare-fun m!3068479 () Bool)

(assert (=> b!2690969 m!3068479))

(assert (=> b!2690969 m!3068035))

(declare-fun m!3068481 () Bool)

(assert (=> b!2690969 m!3068481))

(assert (=> b!2690969 m!3068035))

(assert (=> b!2690969 m!3068481))

(declare-fun m!3068483 () Bool)

(assert (=> b!2690969 m!3068483))

(assert (=> b!2690968 m!3068465))

(assert (=> b!2690968 m!3068471))

(assert (=> b!2690968 m!3068473))

(assert (=> b!2690968 m!3068475))

(assert (=> b!2690968 m!3068477))

(assert (=> b!2690968 m!3068465))

(assert (=> b!2690968 m!3068473))

(assert (=> b!2690968 m!3068475))

(assert (=> b!2690746 d!771167))

(declare-fun d!771169 () Bool)

(assert (=> d!771169 (= (list!11709 (++!7597 acc!348 (_1!17865 lt!949277))) (list!11711 (c!433769 (++!7597 acc!348 (_1!17865 lt!949277)))))))

(declare-fun bs!483305 () Bool)

(assert (= bs!483305 d!771169))

(declare-fun m!3068485 () Bool)

(assert (=> bs!483305 m!3068485))

(assert (=> b!2690746 d!771169))

(declare-fun d!771171 () Bool)

(assert (=> d!771171 (= (array_inv!3988 (_keys!3806 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) (bvsge (size!23965 (_keys!3806 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2690747 d!771171))

(declare-fun d!771173 () Bool)

(assert (=> d!771173 (= (array_inv!3989 (_values!3787 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) (bvsge (size!23966 (_values!3787 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2690747 d!771173))

(declare-fun d!771175 () Bool)

(assert (=> d!771175 (= (inv!42058 (tag!5241 (h!36449 rules!1381))) (= (mod (str.len (value!152618 (tag!5241 (h!36449 rules!1381)))) 2) 0))))

(assert (=> b!2690767 d!771175))

(declare-fun d!771177 () Bool)

(declare-fun res!1130667 () Bool)

(declare-fun e!1696542 () Bool)

(assert (=> d!771177 (=> (not res!1130667) (not e!1696542))))

(declare-fun semiInverseModEq!1959 (Int Int) Bool)

(assert (=> d!771177 (= res!1130667 (semiInverseModEq!1959 (toChars!6552 (transformation!4737 (h!36449 rules!1381))) (toValue!6693 (transformation!4737 (h!36449 rules!1381)))))))

(assert (=> d!771177 (= (inv!42066 (transformation!4737 (h!36449 rules!1381))) e!1696542)))

(declare-fun b!2690972 () Bool)

(declare-fun equivClasses!1860 (Int Int) Bool)

(assert (=> b!2690972 (= e!1696542 (equivClasses!1860 (toChars!6552 (transformation!4737 (h!36449 rules!1381))) (toValue!6693 (transformation!4737 (h!36449 rules!1381)))))))

(assert (= (and d!771177 res!1130667) b!2690972))

(declare-fun m!3068487 () Bool)

(assert (=> d!771177 m!3068487))

(declare-fun m!3068489 () Bool)

(assert (=> b!2690972 m!3068489))

(assert (=> b!2690767 d!771177))

(declare-fun b!2690983 () Bool)

(declare-fun e!1696549 () Bool)

(declare-fun lt!949458 () tuple2!30560)

(assert (=> b!2690983 (= e!1696549 (not (isEmpty!17709 (_1!17865 lt!949458))))))

(declare-fun b!2690984 () Bool)

(declare-fun res!1130674 () Bool)

(declare-fun e!1696551 () Bool)

(assert (=> b!2690984 (=> (not res!1130674) (not e!1696551))))

(assert (=> b!2690984 (= res!1130674 (= (list!11709 (_1!17865 lt!949458)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 input!780)))))))

(declare-fun b!2690985 () Bool)

(declare-fun e!1696550 () Bool)

(assert (=> b!2690985 (= e!1696550 (= (_2!17865 lt!949458) input!780))))

(declare-fun d!771179 () Bool)

(assert (=> d!771179 e!1696551))

(declare-fun res!1130676 () Bool)

(assert (=> d!771179 (=> (not res!1130676) (not e!1696551))))

(assert (=> d!771179 (= res!1130676 e!1696550)))

(declare-fun c!433821 () Bool)

(assert (=> d!771179 (= c!433821 (> (size!23968 (_1!17865 lt!949458)) 0))))

(assert (=> d!771179 (= lt!949458 (lexTailRecV2!866 thiss!12257 rules!1381 input!780 (BalanceConc!19021 Empty!9703) input!780 (BalanceConc!19023 Empty!9704)))))

(assert (=> d!771179 (= (lex!1954 thiss!12257 rules!1381 input!780) lt!949458)))

(declare-fun b!2690986 () Bool)

(assert (=> b!2690986 (= e!1696551 (= (list!11708 (_2!17865 lt!949458)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 input!780)))))))

(declare-fun b!2690987 () Bool)

(assert (=> b!2690987 (= e!1696550 e!1696549)))

(declare-fun res!1130675 () Bool)

(assert (=> b!2690987 (= res!1130675 (< (size!23969 (_2!17865 lt!949458)) (size!23969 input!780)))))

(assert (=> b!2690987 (=> (not res!1130675) (not e!1696549))))

(assert (= (and d!771179 c!433821) b!2690987))

(assert (= (and d!771179 (not c!433821)) b!2690985))

(assert (= (and b!2690987 res!1130675) b!2690983))

(assert (= (and d!771179 res!1130676) b!2690984))

(assert (= (and b!2690984 res!1130674) b!2690986))

(declare-fun m!3068491 () Bool)

(assert (=> b!2690983 m!3068491))

(declare-fun m!3068493 () Bool)

(assert (=> b!2690984 m!3068493))

(assert (=> b!2690984 m!3068121))

(assert (=> b!2690984 m!3068121))

(assert (=> b!2690984 m!3068433))

(declare-fun m!3068495 () Bool)

(assert (=> b!2690986 m!3068495))

(assert (=> b!2690986 m!3068121))

(assert (=> b!2690986 m!3068121))

(assert (=> b!2690986 m!3068433))

(declare-fun m!3068497 () Bool)

(assert (=> d!771179 m!3068497))

(assert (=> d!771179 m!3068025))

(declare-fun m!3068499 () Bool)

(assert (=> b!2690987 m!3068499))

(assert (=> b!2690987 m!3068441))

(assert (=> b!2690782 d!771179))

(declare-fun b!2691002 () Bool)

(declare-fun lt!949541 () Option!6128)

(declare-fun e!1696562 () tuple2!30560)

(declare-fun lt!949530 () BalanceConc!19020)

(assert (=> b!2691002 (= e!1696562 (lexTailRecV2!866 thiss!12257 rules!1381 input!780 lt!949530 (_2!17866 (v!32824 lt!949541)) (append!764 (BalanceConc!19023 Empty!9704) (_1!17866 (v!32824 lt!949541)))))))

(declare-fun lt!949533 () tuple2!30560)

(assert (=> b!2691002 (= lt!949533 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949541))))))

(declare-fun lt!949549 () List!31127)

(assert (=> b!2691002 (= lt!949549 (list!11708 (BalanceConc!19021 Empty!9703)))))

(declare-fun lt!949537 () List!31127)

(assert (=> b!2691002 (= lt!949537 (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949541)))))))

(declare-fun lt!949559 () List!31127)

(assert (=> b!2691002 (= lt!949559 (list!11708 (_2!17866 (v!32824 lt!949541))))))

(declare-fun lt!949534 () Unit!45159)

(assert (=> b!2691002 (= lt!949534 (lemmaConcatAssociativity!1543 lt!949549 lt!949537 lt!949559))))

(assert (=> b!2691002 (= (++!7594 (++!7594 lt!949549 lt!949537) lt!949559) (++!7594 lt!949549 (++!7594 lt!949537 lt!949559)))))

(declare-fun lt!949545 () Unit!45159)

(assert (=> b!2691002 (= lt!949545 lt!949534)))

(declare-fun lt!949548 () Option!6128)

(assert (=> b!2691002 (= lt!949548 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 input!780))))

(declare-fun c!433830 () Bool)

(assert (=> b!2691002 (= c!433830 ((_ is Some!6127) lt!949548))))

(declare-fun e!1696560 () tuple2!30560)

(assert (=> b!2691002 (= (lexRec!596 thiss!12257 rules!1381 input!780) e!1696560)))

(declare-fun lt!949555 () Unit!45159)

(declare-fun Unit!45163 () Unit!45159)

(assert (=> b!2691002 (= lt!949555 Unit!45163)))

(declare-fun lt!949556 () List!31128)

(assert (=> b!2691002 (= lt!949556 (list!11709 (BalanceConc!19023 Empty!9704)))))

(declare-fun lt!949542 () List!31128)

(assert (=> b!2691002 (= lt!949542 (Cons!31028 (_1!17866 (v!32824 lt!949541)) Nil!31028))))

(declare-fun lt!949546 () List!31128)

(assert (=> b!2691002 (= lt!949546 (list!11709 (_1!17865 lt!949533)))))

(declare-fun lt!949552 () Unit!45159)

(assert (=> b!2691002 (= lt!949552 (lemmaConcatAssociativity!1544 lt!949556 lt!949542 lt!949546))))

(assert (=> b!2691002 (= (++!7595 (++!7595 lt!949556 lt!949542) lt!949546) (++!7595 lt!949556 (++!7595 lt!949542 lt!949546)))))

(declare-fun lt!949536 () Unit!45159)

(assert (=> b!2691002 (= lt!949536 lt!949552)))

(declare-fun lt!949538 () List!31127)

(assert (=> b!2691002 (= lt!949538 (++!7594 (list!11708 (BalanceConc!19021 Empty!9703)) (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949541))))))))

(declare-fun lt!949558 () List!31127)

(assert (=> b!2691002 (= lt!949558 (list!11708 (_2!17866 (v!32824 lt!949541))))))

(declare-fun lt!949544 () List!31128)

(assert (=> b!2691002 (= lt!949544 (list!11709 (append!764 (BalanceConc!19023 Empty!9704) (_1!17866 (v!32824 lt!949541)))))))

(declare-fun lt!949532 () Unit!45159)

(assert (=> b!2691002 (= lt!949532 (lemmaLexThenLexPrefix!402 thiss!12257 rules!1381 lt!949538 lt!949558 lt!949544 (list!11709 (_1!17865 lt!949533)) (list!11708 (_2!17865 lt!949533))))))

(assert (=> b!2691002 (= (lexList!1189 thiss!12257 rules!1381 lt!949538) (tuple2!30565 lt!949544 Nil!31027))))

(declare-fun lt!949557 () Unit!45159)

(assert (=> b!2691002 (= lt!949557 lt!949532)))

(declare-fun lt!949550 () BalanceConc!19020)

(assert (=> b!2691002 (= lt!949550 (++!7596 (BalanceConc!19021 Empty!9703) (charsOf!2985 (_1!17866 (v!32824 lt!949541)))))))

(declare-fun lt!949543 () Option!6128)

(assert (=> b!2691002 (= lt!949543 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949550))))

(declare-fun c!433828 () Bool)

(assert (=> b!2691002 (= c!433828 ((_ is Some!6127) lt!949543))))

(declare-fun e!1696561 () tuple2!30560)

(assert (=> b!2691002 (= (lexRec!596 thiss!12257 rules!1381 (++!7596 (BalanceConc!19021 Empty!9703) (charsOf!2985 (_1!17866 (v!32824 lt!949541))))) e!1696561)))

(declare-fun lt!949539 () Unit!45159)

(declare-fun Unit!45164 () Unit!45159)

(assert (=> b!2691002 (= lt!949539 Unit!45164)))

(assert (=> b!2691002 (= lt!949530 (++!7596 (BalanceConc!19021 Empty!9703) (charsOf!2985 (_1!17866 (v!32824 lt!949541)))))))

(declare-fun lt!949547 () List!31127)

(assert (=> b!2691002 (= lt!949547 (list!11708 lt!949530))))

(declare-fun lt!949540 () List!31127)

(assert (=> b!2691002 (= lt!949540 (list!11708 (_2!17866 (v!32824 lt!949541))))))

(declare-fun lt!949535 () Unit!45159)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!512 (List!31127 List!31127) Unit!45159)

(assert (=> b!2691002 (= lt!949535 (lemmaConcatTwoListThenFSndIsSuffix!512 lt!949547 lt!949540))))

(declare-fun isSuffix!827 (List!31127 List!31127) Bool)

(assert (=> b!2691002 (isSuffix!827 lt!949540 (++!7594 lt!949547 lt!949540))))

(declare-fun lt!949554 () Unit!45159)

(assert (=> b!2691002 (= lt!949554 lt!949535)))

(declare-fun b!2691003 () Bool)

(assert (=> b!2691003 (= e!1696562 (tuple2!30561 (BalanceConc!19023 Empty!9704) input!780))))

(declare-fun lt!949528 () tuple2!30560)

(declare-fun e!1696563 () Bool)

(declare-fun b!2691004 () Bool)

(assert (=> b!2691004 (= e!1696563 (= (list!11708 (_2!17865 lt!949528)) (list!11708 (_2!17865 (lexRec!596 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2691005 () Bool)

(assert (=> b!2691005 (= e!1696561 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949550))))

(declare-fun d!771181 () Bool)

(assert (=> d!771181 e!1696563))

(declare-fun res!1130679 () Bool)

(assert (=> d!771181 (=> (not res!1130679) (not e!1696563))))

(assert (=> d!771181 (= res!1130679 (= (list!11709 (_1!17865 lt!949528)) (list!11709 (_1!17865 (lexRec!596 thiss!12257 rules!1381 input!780)))))))

(assert (=> d!771181 (= lt!949528 e!1696562)))

(declare-fun c!433829 () Bool)

(assert (=> d!771181 (= c!433829 ((_ is Some!6127) lt!949541))))

(declare-fun maxPrefixZipperSequenceV2!452 (LexerInterface!4333 List!31129 BalanceConc!19020 BalanceConc!19020) Option!6128)

(assert (=> d!771181 (= lt!949541 (maxPrefixZipperSequenceV2!452 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!949551 () Unit!45159)

(declare-fun lt!949529 () Unit!45159)

(assert (=> d!771181 (= lt!949551 lt!949529)))

(declare-fun lt!949560 () List!31127)

(declare-fun lt!949553 () List!31127)

(assert (=> d!771181 (isSuffix!827 lt!949560 (++!7594 lt!949553 lt!949560))))

(assert (=> d!771181 (= lt!949529 (lemmaConcatTwoListThenFSndIsSuffix!512 lt!949553 lt!949560))))

(assert (=> d!771181 (= lt!949560 (list!11708 input!780))))

(assert (=> d!771181 (= lt!949553 (list!11708 (BalanceConc!19021 Empty!9703)))))

(assert (=> d!771181 (= (lexTailRecV2!866 thiss!12257 rules!1381 input!780 (BalanceConc!19021 Empty!9703) input!780 (BalanceConc!19023 Empty!9704)) lt!949528)))

(declare-fun lt!949531 () tuple2!30560)

(declare-fun b!2691006 () Bool)

(assert (=> b!2691006 (= lt!949531 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949543))))))

(assert (=> b!2691006 (= e!1696561 (tuple2!30561 (prepend!1069 (_1!17865 lt!949531) (_1!17866 (v!32824 lt!949543))) (_2!17865 lt!949531)))))

(declare-fun b!2691007 () Bool)

(assert (=> b!2691007 (= e!1696560 (tuple2!30561 (BalanceConc!19023 Empty!9704) input!780))))

(declare-fun lt!949527 () tuple2!30560)

(declare-fun b!2691008 () Bool)

(assert (=> b!2691008 (= lt!949527 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949548))))))

(assert (=> b!2691008 (= e!1696560 (tuple2!30561 (prepend!1069 (_1!17865 lt!949527) (_1!17866 (v!32824 lt!949548))) (_2!17865 lt!949527)))))

(assert (= (and d!771181 c!433829) b!2691002))

(assert (= (and d!771181 (not c!433829)) b!2691003))

(assert (= (and b!2691002 c!433830) b!2691008))

(assert (= (and b!2691002 (not c!433830)) b!2691007))

(assert (= (and b!2691002 c!433828) b!2691006))

(assert (= (and b!2691002 (not c!433828)) b!2691005))

(assert (= (and d!771181 res!1130679) b!2691004))

(declare-fun m!3068501 () Bool)

(assert (=> b!2691006 m!3068501))

(declare-fun m!3068503 () Bool)

(assert (=> b!2691006 m!3068503))

(assert (=> d!771181 m!3068121))

(declare-fun m!3068505 () Bool)

(assert (=> d!771181 m!3068505))

(assert (=> d!771181 m!3068109))

(declare-fun m!3068507 () Bool)

(assert (=> d!771181 m!3068507))

(declare-fun m!3068509 () Bool)

(assert (=> d!771181 m!3068509))

(declare-fun m!3068511 () Bool)

(assert (=> d!771181 m!3068511))

(declare-fun m!3068513 () Bool)

(assert (=> d!771181 m!3068513))

(assert (=> d!771181 m!3068509))

(declare-fun m!3068515 () Bool)

(assert (=> d!771181 m!3068515))

(declare-fun m!3068517 () Bool)

(assert (=> d!771181 m!3068517))

(assert (=> b!2691002 m!3068129))

(declare-fun m!3068519 () Bool)

(assert (=> b!2691002 m!3068519))

(declare-fun m!3068521 () Bool)

(assert (=> b!2691002 m!3068521))

(declare-fun m!3068523 () Bool)

(assert (=> b!2691002 m!3068523))

(declare-fun m!3068525 () Bool)

(assert (=> b!2691002 m!3068525))

(declare-fun m!3068527 () Bool)

(assert (=> b!2691002 m!3068527))

(declare-fun m!3068529 () Bool)

(assert (=> b!2691002 m!3068529))

(assert (=> b!2691002 m!3068507))

(declare-fun m!3068531 () Bool)

(assert (=> b!2691002 m!3068531))

(declare-fun m!3068533 () Bool)

(assert (=> b!2691002 m!3068533))

(assert (=> b!2691002 m!3068531))

(assert (=> b!2691002 m!3068529))

(declare-fun m!3068535 () Bool)

(assert (=> b!2691002 m!3068535))

(declare-fun m!3068537 () Bool)

(assert (=> b!2691002 m!3068537))

(declare-fun m!3068539 () Bool)

(assert (=> b!2691002 m!3068539))

(declare-fun m!3068541 () Bool)

(assert (=> b!2691002 m!3068541))

(declare-fun m!3068543 () Bool)

(assert (=> b!2691002 m!3068543))

(declare-fun m!3068545 () Bool)

(assert (=> b!2691002 m!3068545))

(assert (=> b!2691002 m!3068539))

(declare-fun m!3068547 () Bool)

(assert (=> b!2691002 m!3068547))

(declare-fun m!3068549 () Bool)

(assert (=> b!2691002 m!3068549))

(declare-fun m!3068551 () Bool)

(assert (=> b!2691002 m!3068551))

(declare-fun m!3068553 () Bool)

(assert (=> b!2691002 m!3068553))

(declare-fun m!3068555 () Bool)

(assert (=> b!2691002 m!3068555))

(declare-fun m!3068557 () Bool)

(assert (=> b!2691002 m!3068557))

(assert (=> b!2691002 m!3068547))

(declare-fun m!3068559 () Bool)

(assert (=> b!2691002 m!3068559))

(declare-fun m!3068561 () Bool)

(assert (=> b!2691002 m!3068561))

(assert (=> b!2691002 m!3068559))

(declare-fun m!3068563 () Bool)

(assert (=> b!2691002 m!3068563))

(declare-fun m!3068565 () Bool)

(assert (=> b!2691002 m!3068565))

(declare-fun m!3068567 () Bool)

(assert (=> b!2691002 m!3068567))

(assert (=> b!2691002 m!3068507))

(assert (=> b!2691002 m!3068557))

(declare-fun m!3068569 () Bool)

(assert (=> b!2691002 m!3068569))

(assert (=> b!2691002 m!3068531))

(declare-fun m!3068571 () Bool)

(assert (=> b!2691002 m!3068571))

(assert (=> b!2691002 m!3068555))

(assert (=> b!2691002 m!3068109))

(declare-fun m!3068573 () Bool)

(assert (=> b!2691002 m!3068573))

(declare-fun m!3068575 () Bool)

(assert (=> b!2691002 m!3068575))

(assert (=> b!2691002 m!3068525))

(assert (=> b!2691002 m!3068541))

(assert (=> b!2691002 m!3068555))

(assert (=> b!2691002 m!3068563))

(assert (=> b!2691002 m!3068521))

(declare-fun m!3068577 () Bool)

(assert (=> b!2691002 m!3068577))

(declare-fun m!3068579 () Bool)

(assert (=> b!2691004 m!3068579))

(assert (=> b!2691004 m!3068109))

(declare-fun m!3068581 () Bool)

(assert (=> b!2691004 m!3068581))

(declare-fun m!3068583 () Bool)

(assert (=> b!2691008 m!3068583))

(declare-fun m!3068585 () Bool)

(assert (=> b!2691008 m!3068585))

(assert (=> b!2690782 d!771181))

(declare-fun d!771183 () Bool)

(declare-fun res!1130682 () Bool)

(declare-fun e!1696566 () Bool)

(assert (=> d!771183 (=> (not res!1130682) (not e!1696566))))

(declare-fun rulesValid!1765 (LexerInterface!4333 List!31129) Bool)

(assert (=> d!771183 (= res!1130682 (rulesValid!1765 thiss!12257 rules!1381))))

(assert (=> d!771183 (= (rulesInvariant!3824 thiss!12257 rules!1381) e!1696566)))

(declare-fun b!2691011 () Bool)

(declare-datatypes ((List!31133 0))(
  ( (Nil!31033) (Cons!31033 (h!36453 String!34695) (t!225075 List!31133)) )
))
(declare-fun noDuplicateTag!1761 (LexerInterface!4333 List!31129 List!31133) Bool)

(assert (=> b!2691011 (= e!1696566 (noDuplicateTag!1761 thiss!12257 rules!1381 Nil!31033))))

(assert (= (and d!771183 res!1130682) b!2691011))

(declare-fun m!3068587 () Bool)

(assert (=> d!771183 m!3068587))

(declare-fun m!3068589 () Bool)

(assert (=> b!2691011 m!3068589))

(assert (=> b!2690763 d!771183))

(declare-fun d!771185 () Bool)

(declare-fun e!1696567 () Bool)

(assert (=> d!771185 e!1696567))

(declare-fun res!1130683 () Bool)

(assert (=> d!771185 (=> (not res!1130683) (not e!1696567))))

(assert (=> d!771185 (= res!1130683 (isBalanced!2937 (prepend!1070 (c!433769 (_1!17865 lt!949278)) (_1!17866 (v!32824 lt!949270)))))))

(declare-fun lt!949561 () BalanceConc!19022)

(assert (=> d!771185 (= lt!949561 (BalanceConc!19023 (prepend!1070 (c!433769 (_1!17865 lt!949278)) (_1!17866 (v!32824 lt!949270)))))))

(assert (=> d!771185 (= (prepend!1069 (_1!17865 lt!949278) (_1!17866 (v!32824 lt!949270))) lt!949561)))

(declare-fun b!2691012 () Bool)

(assert (=> b!2691012 (= e!1696567 (= (list!11709 lt!949561) (Cons!31028 (_1!17866 (v!32824 lt!949270)) (list!11709 (_1!17865 lt!949278)))))))

(assert (= (and d!771185 res!1130683) b!2691012))

(declare-fun m!3068591 () Bool)

(assert (=> d!771185 m!3068591))

(assert (=> d!771185 m!3068591))

(declare-fun m!3068593 () Bool)

(assert (=> d!771185 m!3068593))

(declare-fun m!3068595 () Bool)

(assert (=> b!2691012 m!3068595))

(assert (=> b!2691012 m!3068079))

(assert (=> b!2690764 d!771185))

(declare-fun d!771187 () Bool)

(declare-fun e!1696571 () Bool)

(assert (=> d!771187 e!1696571))

(declare-fun res!1130684 () Bool)

(assert (=> d!771187 (=> (not res!1130684) (not e!1696571))))

(declare-fun lt!949563 () tuple2!30560)

(assert (=> d!771187 (= res!1130684 (= (list!11709 (_1!17865 lt!949563)) (list!11709 (_1!17865 (lexRec!596 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1696570 () tuple2!30560)

(assert (=> d!771187 (= lt!949563 e!1696570)))

(declare-fun c!433831 () Bool)

(declare-fun lt!949583 () Option!6128)

(assert (=> d!771187 (= c!433831 ((_ is Some!6127) lt!949583))))

(assert (=> d!771187 (= lt!949583 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))))))

(assert (=> d!771187 (= (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 lt!949276 (_2!17866 (v!32824 lt!949270)) lt!949283) lt!949563)))

(declare-fun lt!949567 () tuple2!30560)

(declare-fun b!2691013 () Bool)

(declare-fun lt!949571 () Option!6128)

(assert (=> b!2691013 (= lt!949567 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949571))))))

(declare-fun e!1696569 () tuple2!30560)

(assert (=> b!2691013 (= e!1696569 (tuple2!30561 (prepend!1069 (_1!17865 lt!949567) (_1!17866 (v!32824 lt!949571))) (_2!17865 lt!949567)))))

(declare-fun b!2691014 () Bool)

(assert (=> b!2691014 (= e!1696571 (= (list!11708 (_2!17865 lt!949563)) (list!11708 (_2!17865 (lexRec!596 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2691015 () Bool)

(assert (=> b!2691015 (= e!1696570 (lexTailRec!22 thiss!12257 rules!1381 totalInput!354 (++!7596 lt!949276 (charsOf!2985 (_1!17866 (v!32824 lt!949583)))) (_2!17866 (v!32824 lt!949583)) (append!764 lt!949283 (_1!17866 (v!32824 lt!949583)))))))

(declare-fun lt!949578 () tuple2!30560)

(assert (=> b!2691015 (= lt!949578 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949583))))))

(declare-fun lt!949572 () List!31127)

(assert (=> b!2691015 (= lt!949572 (list!11708 lt!949276))))

(declare-fun lt!949565 () List!31127)

(assert (=> b!2691015 (= lt!949565 (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949583)))))))

(declare-fun lt!949568 () List!31127)

(assert (=> b!2691015 (= lt!949568 (list!11708 (_2!17866 (v!32824 lt!949583))))))

(declare-fun lt!949569 () Unit!45159)

(assert (=> b!2691015 (= lt!949569 (lemmaConcatAssociativity!1543 lt!949572 lt!949565 lt!949568))))

(assert (=> b!2691015 (= (++!7594 (++!7594 lt!949572 lt!949565) lt!949568) (++!7594 lt!949572 (++!7594 lt!949565 lt!949568)))))

(declare-fun lt!949582 () Unit!45159)

(assert (=> b!2691015 (= lt!949582 lt!949569)))

(declare-fun lt!949581 () Option!6128)

(assert (=> b!2691015 (= lt!949581 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))))))

(declare-fun c!433833 () Bool)

(assert (=> b!2691015 (= c!433833 ((_ is Some!6127) lt!949581))))

(declare-fun e!1696568 () tuple2!30560)

(assert (=> b!2691015 (= (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))) e!1696568)))

(declare-fun lt!949584 () Unit!45159)

(declare-fun Unit!45165 () Unit!45159)

(assert (=> b!2691015 (= lt!949584 Unit!45165)))

(declare-fun lt!949579 () List!31128)

(assert (=> b!2691015 (= lt!949579 (list!11709 lt!949283))))

(declare-fun lt!949576 () List!31128)

(assert (=> b!2691015 (= lt!949576 (Cons!31028 (_1!17866 (v!32824 lt!949583)) Nil!31028))))

(declare-fun lt!949573 () List!31128)

(assert (=> b!2691015 (= lt!949573 (list!11709 (_1!17865 lt!949578)))))

(declare-fun lt!949570 () Unit!45159)

(assert (=> b!2691015 (= lt!949570 (lemmaConcatAssociativity!1544 lt!949579 lt!949576 lt!949573))))

(assert (=> b!2691015 (= (++!7595 (++!7595 lt!949579 lt!949576) lt!949573) (++!7595 lt!949579 (++!7595 lt!949576 lt!949573)))))

(declare-fun lt!949566 () Unit!45159)

(assert (=> b!2691015 (= lt!949566 lt!949570)))

(declare-fun lt!949574 () List!31127)

(assert (=> b!2691015 (= lt!949574 (++!7594 (list!11708 lt!949276) (list!11708 (charsOf!2985 (_1!17866 (v!32824 lt!949583))))))))

(declare-fun lt!949564 () List!31127)

(assert (=> b!2691015 (= lt!949564 (list!11708 (_2!17866 (v!32824 lt!949583))))))

(declare-fun lt!949575 () List!31128)

(assert (=> b!2691015 (= lt!949575 (list!11709 (append!764 lt!949283 (_1!17866 (v!32824 lt!949583)))))))

(declare-fun lt!949585 () Unit!45159)

(assert (=> b!2691015 (= lt!949585 (lemmaLexThenLexPrefix!402 thiss!12257 rules!1381 lt!949574 lt!949564 lt!949575 (list!11709 (_1!17865 lt!949578)) (list!11708 (_2!17865 lt!949578))))))

(assert (=> b!2691015 (= (lexList!1189 thiss!12257 rules!1381 lt!949574) (tuple2!30565 lt!949575 Nil!31027))))

(declare-fun lt!949580 () Unit!45159)

(assert (=> b!2691015 (= lt!949580 lt!949585)))

(declare-fun lt!949577 () BalanceConc!19020)

(assert (=> b!2691015 (= lt!949577 (++!7596 lt!949276 (charsOf!2985 (_1!17866 (v!32824 lt!949583)))))))

(assert (=> b!2691015 (= lt!949571 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949577))))

(declare-fun c!433832 () Bool)

(assert (=> b!2691015 (= c!433832 ((_ is Some!6127) lt!949571))))

(assert (=> b!2691015 (= (lexRec!596 thiss!12257 rules!1381 (++!7596 lt!949276 (charsOf!2985 (_1!17866 (v!32824 lt!949583))))) e!1696569)))

(declare-fun lt!949562 () Unit!45159)

(declare-fun Unit!45166 () Unit!45159)

(assert (=> b!2691015 (= lt!949562 Unit!45166)))

(declare-fun b!2691016 () Bool)

(assert (=> b!2691016 (= e!1696569 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949577))))

(declare-fun b!2691017 () Bool)

(assert (=> b!2691017 (= e!1696568 (tuple2!30561 (BalanceConc!19023 Empty!9704) (_2!17866 (v!32824 lt!949270))))))

(declare-fun lt!949586 () tuple2!30560)

(declare-fun b!2691018 () Bool)

(assert (=> b!2691018 (= lt!949586 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949581))))))

(assert (=> b!2691018 (= e!1696568 (tuple2!30561 (prepend!1069 (_1!17865 lt!949586) (_1!17866 (v!32824 lt!949581))) (_2!17865 lt!949586)))))

(declare-fun b!2691019 () Bool)

(assert (=> b!2691019 (= e!1696570 (tuple2!30561 lt!949283 (_2!17866 (v!32824 lt!949270))))))

(assert (= (and d!771187 c!433831) b!2691015))

(assert (= (and d!771187 (not c!433831)) b!2691019))

(assert (= (and b!2691015 c!433833) b!2691018))

(assert (= (and b!2691015 (not c!433833)) b!2691017))

(assert (= (and b!2691015 c!433832) b!2691013))

(assert (= (and b!2691015 (not c!433832)) b!2691016))

(assert (= (and d!771187 res!1130684) b!2691014))

(declare-fun m!3068597 () Bool)

(assert (=> d!771187 m!3068597))

(assert (=> d!771187 m!3068107))

(assert (=> d!771187 m!3068249))

(declare-fun m!3068599 () Bool)

(assert (=> d!771187 m!3068599))

(declare-fun m!3068601 () Bool)

(assert (=> b!2691014 m!3068601))

(assert (=> b!2691014 m!3068107))

(assert (=> b!2691014 m!3068253))

(declare-fun m!3068603 () Bool)

(assert (=> b!2691015 m!3068603))

(declare-fun m!3068605 () Bool)

(assert (=> b!2691015 m!3068605))

(declare-fun m!3068607 () Bool)

(assert (=> b!2691015 m!3068607))

(assert (=> b!2691015 m!3068605))

(declare-fun m!3068609 () Bool)

(assert (=> b!2691015 m!3068609))

(declare-fun m!3068611 () Bool)

(assert (=> b!2691015 m!3068611))

(declare-fun m!3068613 () Bool)

(assert (=> b!2691015 m!3068613))

(declare-fun m!3068615 () Bool)

(assert (=> b!2691015 m!3068615))

(declare-fun m!3068617 () Bool)

(assert (=> b!2691015 m!3068617))

(declare-fun m!3068619 () Bool)

(assert (=> b!2691015 m!3068619))

(declare-fun m!3068621 () Bool)

(assert (=> b!2691015 m!3068621))

(declare-fun m!3068623 () Bool)

(assert (=> b!2691015 m!3068623))

(declare-fun m!3068625 () Bool)

(assert (=> b!2691015 m!3068625))

(assert (=> b!2691015 m!3068613))

(assert (=> b!2691015 m!3068617))

(declare-fun m!3068627 () Bool)

(assert (=> b!2691015 m!3068627))

(declare-fun m!3068629 () Bool)

(assert (=> b!2691015 m!3068629))

(declare-fun m!3068631 () Bool)

(assert (=> b!2691015 m!3068631))

(assert (=> b!2691015 m!3068613))

(assert (=> b!2691015 m!3068605))

(declare-fun m!3068633 () Bool)

(assert (=> b!2691015 m!3068633))

(assert (=> b!2691015 m!3068599))

(assert (=> b!2691015 m!3068627))

(declare-fun m!3068635 () Bool)

(assert (=> b!2691015 m!3068635))

(assert (=> b!2691015 m!3068633))

(declare-fun m!3068637 () Bool)

(assert (=> b!2691015 m!3068637))

(declare-fun m!3068639 () Bool)

(assert (=> b!2691015 m!3068639))

(declare-fun m!3068641 () Bool)

(assert (=> b!2691015 m!3068641))

(assert (=> b!2691015 m!3068057))

(declare-fun m!3068643 () Bool)

(assert (=> b!2691015 m!3068643))

(declare-fun m!3068645 () Bool)

(assert (=> b!2691015 m!3068645))

(assert (=> b!2691015 m!3068643))

(assert (=> b!2691015 m!3068609))

(assert (=> b!2691015 m!3068041))

(declare-fun m!3068647 () Bool)

(assert (=> b!2691015 m!3068647))

(assert (=> b!2691015 m!3068615))

(assert (=> b!2691015 m!3068623))

(assert (=> b!2691015 m!3068621))

(declare-fun m!3068649 () Bool)

(assert (=> b!2691015 m!3068649))

(declare-fun m!3068651 () Bool)

(assert (=> b!2691015 m!3068651))

(assert (=> b!2691015 m!3068629))

(assert (=> b!2691015 m!3068609))

(declare-fun m!3068653 () Bool)

(assert (=> b!2691015 m!3068653))

(declare-fun m!3068655 () Bool)

(assert (=> b!2691018 m!3068655))

(declare-fun m!3068657 () Bool)

(assert (=> b!2691018 m!3068657))

(declare-fun m!3068659 () Bool)

(assert (=> b!2691013 m!3068659))

(declare-fun m!3068661 () Bool)

(assert (=> b!2691013 m!3068661))

(assert (=> b!2690745 d!771187))

(declare-fun b!2691020 () Bool)

(declare-fun e!1696573 () Bool)

(declare-fun lt!949588 () tuple2!30560)

(assert (=> b!2691020 (= e!1696573 (= (list!11708 (_2!17865 lt!949588)) (list!11708 lt!949276)))))

(declare-fun b!2691021 () Bool)

(declare-fun e!1696575 () tuple2!30560)

(declare-fun lt!949589 () tuple2!30560)

(declare-fun lt!949587 () Option!6128)

(assert (=> b!2691021 (= e!1696575 (tuple2!30561 (prepend!1069 (_1!17865 lt!949589) (_1!17866 (v!32824 lt!949587))) (_2!17865 lt!949589)))))

(assert (=> b!2691021 (= lt!949589 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949587))))))

(declare-fun b!2691022 () Bool)

(declare-fun e!1696574 () Bool)

(assert (=> b!2691022 (= e!1696574 (not (isEmpty!17709 (_1!17865 lt!949588))))))

(declare-fun d!771189 () Bool)

(declare-fun e!1696572 () Bool)

(assert (=> d!771189 e!1696572))

(declare-fun res!1130686 () Bool)

(assert (=> d!771189 (=> (not res!1130686) (not e!1696572))))

(assert (=> d!771189 (= res!1130686 e!1696573)))

(declare-fun c!433835 () Bool)

(assert (=> d!771189 (= c!433835 (> (size!23968 (_1!17865 lt!949588)) 0))))

(assert (=> d!771189 (= lt!949588 e!1696575)))

(declare-fun c!433834 () Bool)

(assert (=> d!771189 (= c!433834 ((_ is Some!6127) lt!949587))))

(assert (=> d!771189 (= lt!949587 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949276))))

(assert (=> d!771189 (= (lexRec!596 thiss!12257 rules!1381 lt!949276) lt!949588)))

(declare-fun b!2691023 () Bool)

(declare-fun res!1130685 () Bool)

(assert (=> b!2691023 (=> (not res!1130685) (not e!1696572))))

(assert (=> b!2691023 (= res!1130685 (= (list!11709 (_1!17865 lt!949588)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 lt!949276)))))))

(declare-fun b!2691024 () Bool)

(assert (=> b!2691024 (= e!1696572 (= (list!11708 (_2!17865 lt!949588)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 lt!949276)))))))

(declare-fun b!2691025 () Bool)

(assert (=> b!2691025 (= e!1696575 (tuple2!30561 (BalanceConc!19023 Empty!9704) lt!949276))))

(declare-fun b!2691026 () Bool)

(assert (=> b!2691026 (= e!1696573 e!1696574)))

(declare-fun res!1130687 () Bool)

(assert (=> b!2691026 (= res!1130687 (< (size!23969 (_2!17865 lt!949588)) (size!23969 lt!949276)))))

(assert (=> b!2691026 (=> (not res!1130687) (not e!1696574))))

(assert (= (and d!771189 c!433834) b!2691021))

(assert (= (and d!771189 (not c!433834)) b!2691025))

(assert (= (and d!771189 c!433835) b!2691026))

(assert (= (and d!771189 (not c!433835)) b!2691020))

(assert (= (and b!2691026 res!1130687) b!2691022))

(assert (= (and d!771189 res!1130686) b!2691023))

(assert (= (and b!2691023 res!1130685) b!2691024))

(declare-fun m!3068663 () Bool)

(assert (=> b!2691021 m!3068663))

(declare-fun m!3068665 () Bool)

(assert (=> b!2691021 m!3068665))

(declare-fun m!3068667 () Bool)

(assert (=> b!2691023 m!3068667))

(assert (=> b!2691023 m!3068615))

(assert (=> b!2691023 m!3068615))

(declare-fun m!3068669 () Bool)

(assert (=> b!2691023 m!3068669))

(declare-fun m!3068671 () Bool)

(assert (=> b!2691020 m!3068671))

(assert (=> b!2691020 m!3068615))

(declare-fun m!3068673 () Bool)

(assert (=> d!771189 m!3068673))

(assert (=> d!771189 m!3068069))

(declare-fun m!3068675 () Bool)

(assert (=> b!2691026 m!3068675))

(declare-fun m!3068677 () Bool)

(assert (=> b!2691026 m!3068677))

(assert (=> b!2691024 m!3068671))

(assert (=> b!2691024 m!3068615))

(assert (=> b!2691024 m!3068615))

(assert (=> b!2691024 m!3068669))

(declare-fun m!3068679 () Bool)

(assert (=> b!2691022 m!3068679))

(assert (=> b!2690745 d!771189))

(declare-fun d!771191 () Bool)

(assert (=> d!771191 (= (list!11709 (_1!17865 lt!949278)) (list!11711 (c!433769 (_1!17865 lt!949278))))))

(declare-fun bs!483306 () Bool)

(assert (= bs!483306 d!771191))

(declare-fun m!3068681 () Bool)

(assert (=> bs!483306 m!3068681))

(assert (=> b!2690745 d!771191))

(declare-fun b!2691035 () Bool)

(declare-fun e!1696581 () List!31128)

(assert (=> b!2691035 (= e!1696581 lt!949279)))

(declare-fun b!2691038 () Bool)

(declare-fun e!1696580 () Bool)

(declare-fun lt!949592 () List!31128)

(assert (=> b!2691038 (= e!1696580 (or (not (= lt!949279 Nil!31028)) (= lt!949592 lt!949293)))))

(declare-fun d!771193 () Bool)

(assert (=> d!771193 e!1696580))

(declare-fun res!1130693 () Bool)

(assert (=> d!771193 (=> (not res!1130693) (not e!1696580))))

(declare-fun content!4401 (List!31128) (InoxSet Token!8940))

(assert (=> d!771193 (= res!1130693 (= (content!4401 lt!949592) ((_ map or) (content!4401 lt!949293) (content!4401 lt!949279))))))

(assert (=> d!771193 (= lt!949592 e!1696581)))

(declare-fun c!433838 () Bool)

(assert (=> d!771193 (= c!433838 ((_ is Nil!31028) lt!949293))))

(assert (=> d!771193 (= (++!7595 lt!949293 lt!949279) lt!949592)))

(declare-fun b!2691037 () Bool)

(declare-fun res!1130692 () Bool)

(assert (=> b!2691037 (=> (not res!1130692) (not e!1696580))))

(declare-fun size!23971 (List!31128) Int)

(assert (=> b!2691037 (= res!1130692 (= (size!23971 lt!949592) (+ (size!23971 lt!949293) (size!23971 lt!949279))))))

(declare-fun b!2691036 () Bool)

(assert (=> b!2691036 (= e!1696581 (Cons!31028 (h!36448 lt!949293) (++!7595 (t!225062 lt!949293) lt!949279)))))

(assert (= (and d!771193 c!433838) b!2691035))

(assert (= (and d!771193 (not c!433838)) b!2691036))

(assert (= (and d!771193 res!1130693) b!2691037))

(assert (= (and b!2691037 res!1130692) b!2691038))

(declare-fun m!3068683 () Bool)

(assert (=> d!771193 m!3068683))

(declare-fun m!3068685 () Bool)

(assert (=> d!771193 m!3068685))

(declare-fun m!3068687 () Bool)

(assert (=> d!771193 m!3068687))

(declare-fun m!3068689 () Bool)

(assert (=> b!2691037 m!3068689))

(declare-fun m!3068691 () Bool)

(assert (=> b!2691037 m!3068691))

(declare-fun m!3068693 () Bool)

(assert (=> b!2691037 m!3068693))

(declare-fun m!3068695 () Bool)

(assert (=> b!2691036 m!3068695))

(assert (=> b!2690745 d!771193))

(declare-fun b!2691039 () Bool)

(declare-fun e!1696587 () Option!6128)

(declare-fun lt!949599 () Option!6128)

(declare-fun lt!949593 () Option!6128)

(assert (=> b!2691039 (= e!1696587 (ite (and ((_ is None!6127) lt!949599) ((_ is None!6127) lt!949593)) None!6127 (ite ((_ is None!6127) lt!949593) lt!949599 (ite ((_ is None!6127) lt!949599) lt!949593 (ite (>= (size!23964 (_1!17866 (v!32824 lt!949599))) (size!23964 (_1!17866 (v!32824 lt!949593)))) lt!949599 lt!949593)))))))

(declare-fun call!173374 () Option!6128)

(assert (=> b!2691039 (= lt!949599 call!173374)))

(assert (=> b!2691039 (= lt!949593 (maxPrefixZipperSequence!998 thiss!12257 (t!225063 rules!1381) lt!949276))))

(declare-fun b!2691040 () Bool)

(declare-fun e!1696583 () Bool)

(declare-fun lt!949596 () Option!6128)

(assert (=> b!2691040 (= e!1696583 (= (list!11708 (_2!17866 (get!9715 lt!949596))) (_2!17873 (get!9716 (maxPrefix!2349 thiss!12257 rules!1381 (list!11708 lt!949276))))))))

(declare-fun bm!173369 () Bool)

(assert (=> bm!173369 (= call!173374 (maxPrefixOneRuleZipperSequence!462 thiss!12257 (h!36449 rules!1381) lt!949276))))

(declare-fun d!771195 () Bool)

(declare-fun e!1696586 () Bool)

(assert (=> d!771195 e!1696586))

(declare-fun res!1130699 () Bool)

(assert (=> d!771195 (=> (not res!1130699) (not e!1696586))))

(assert (=> d!771195 (= res!1130699 (= (isDefined!4859 lt!949596) (isDefined!4860 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 lt!949276)))))))

(assert (=> d!771195 (= lt!949596 e!1696587)))

(declare-fun c!433839 () Bool)

(assert (=> d!771195 (= c!433839 (and ((_ is Cons!31029) rules!1381) ((_ is Nil!31029) (t!225063 rules!1381))))))

(declare-fun lt!949595 () Unit!45159)

(declare-fun lt!949597 () Unit!45159)

(assert (=> d!771195 (= lt!949595 lt!949597)))

(declare-fun lt!949598 () List!31127)

(declare-fun lt!949594 () List!31127)

(assert (=> d!771195 (isPrefix!2466 lt!949598 lt!949594)))

(assert (=> d!771195 (= lt!949597 (lemmaIsPrefixRefl!1592 lt!949598 lt!949594))))

(assert (=> d!771195 (= lt!949594 (list!11708 lt!949276))))

(assert (=> d!771195 (= lt!949598 (list!11708 lt!949276))))

(assert (=> d!771195 (rulesValidInductive!1648 thiss!12257 rules!1381)))

(assert (=> d!771195 (= (maxPrefixZipperSequence!998 thiss!12257 rules!1381 lt!949276) lt!949596)))

(declare-fun b!2691041 () Bool)

(declare-fun e!1696585 () Bool)

(assert (=> b!2691041 (= e!1696585 (= (list!11708 (_2!17866 (get!9715 lt!949596))) (_2!17873 (get!9716 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 lt!949276))))))))

(declare-fun b!2691042 () Bool)

(declare-fun e!1696582 () Bool)

(assert (=> b!2691042 (= e!1696582 e!1696585)))

(declare-fun res!1130698 () Bool)

(assert (=> b!2691042 (=> (not res!1130698) (not e!1696585))))

(assert (=> b!2691042 (= res!1130698 (= (_1!17866 (get!9715 lt!949596)) (_1!17873 (get!9716 (maxPrefixZipper!453 thiss!12257 rules!1381 (list!11708 lt!949276))))))))

(declare-fun b!2691043 () Bool)

(declare-fun e!1696584 () Bool)

(assert (=> b!2691043 (= e!1696586 e!1696584)))

(declare-fun res!1130696 () Bool)

(assert (=> b!2691043 (=> res!1130696 e!1696584)))

(assert (=> b!2691043 (= res!1130696 (not (isDefined!4859 lt!949596)))))

(declare-fun b!2691044 () Bool)

(declare-fun res!1130695 () Bool)

(assert (=> b!2691044 (=> (not res!1130695) (not e!1696586))))

(assert (=> b!2691044 (= res!1130695 e!1696582)))

(declare-fun res!1130697 () Bool)

(assert (=> b!2691044 (=> res!1130697 e!1696582)))

(assert (=> b!2691044 (= res!1130697 (not (isDefined!4859 lt!949596)))))

(declare-fun b!2691045 () Bool)

(assert (=> b!2691045 (= e!1696587 call!173374)))

(declare-fun b!2691046 () Bool)

(assert (=> b!2691046 (= e!1696584 e!1696583)))

(declare-fun res!1130694 () Bool)

(assert (=> b!2691046 (=> (not res!1130694) (not e!1696583))))

(assert (=> b!2691046 (= res!1130694 (= (_1!17866 (get!9715 lt!949596)) (_1!17873 (get!9716 (maxPrefix!2349 thiss!12257 rules!1381 (list!11708 lt!949276))))))))

(assert (= (and d!771195 c!433839) b!2691045))

(assert (= (and d!771195 (not c!433839)) b!2691039))

(assert (= (or b!2691045 b!2691039) bm!173369))

(assert (= (and d!771195 res!1130699) b!2691044))

(assert (= (and b!2691044 (not res!1130697)) b!2691042))

(assert (= (and b!2691042 res!1130698) b!2691041))

(assert (= (and b!2691044 res!1130695) b!2691043))

(assert (= (and b!2691043 (not res!1130696)) b!2691046))

(assert (= (and b!2691046 res!1130694) b!2691040))

(declare-fun m!3068697 () Bool)

(assert (=> b!2691042 m!3068697))

(assert (=> b!2691042 m!3068615))

(assert (=> b!2691042 m!3068615))

(declare-fun m!3068699 () Bool)

(assert (=> b!2691042 m!3068699))

(assert (=> b!2691042 m!3068699))

(declare-fun m!3068701 () Bool)

(assert (=> b!2691042 m!3068701))

(declare-fun m!3068703 () Bool)

(assert (=> bm!173369 m!3068703))

(declare-fun m!3068705 () Bool)

(assert (=> b!2691039 m!3068705))

(assert (=> d!771195 m!3068699))

(declare-fun m!3068707 () Bool)

(assert (=> d!771195 m!3068707))

(assert (=> d!771195 m!3068615))

(declare-fun m!3068709 () Bool)

(assert (=> d!771195 m!3068709))

(declare-fun m!3068711 () Bool)

(assert (=> d!771195 m!3068711))

(declare-fun m!3068713 () Bool)

(assert (=> d!771195 m!3068713))

(assert (=> d!771195 m!3068243))

(assert (=> d!771195 m!3068615))

(assert (=> d!771195 m!3068699))

(assert (=> b!2691043 m!3068709))

(assert (=> b!2691046 m!3068697))

(assert (=> b!2691046 m!3068615))

(assert (=> b!2691046 m!3068615))

(declare-fun m!3068715 () Bool)

(assert (=> b!2691046 m!3068715))

(assert (=> b!2691046 m!3068715))

(declare-fun m!3068717 () Bool)

(assert (=> b!2691046 m!3068717))

(assert (=> b!2691044 m!3068709))

(assert (=> b!2691040 m!3068615))

(assert (=> b!2691040 m!3068615))

(assert (=> b!2691040 m!3068715))

(assert (=> b!2691040 m!3068715))

(assert (=> b!2691040 m!3068717))

(assert (=> b!2691040 m!3068697))

(declare-fun m!3068719 () Bool)

(assert (=> b!2691040 m!3068719))

(assert (=> b!2691041 m!3068615))

(assert (=> b!2691041 m!3068615))

(assert (=> b!2691041 m!3068699))

(assert (=> b!2691041 m!3068697))

(assert (=> b!2691041 m!3068699))

(assert (=> b!2691041 m!3068701))

(assert (=> b!2691041 m!3068719))

(assert (=> b!2690745 d!771195))

(declare-fun d!771197 () Bool)

(declare-fun e!1696594 () Bool)

(assert (=> d!771197 e!1696594))

(declare-fun c!433845 () Bool)

(declare-fun lt!949608 () tuple2!30564)

(assert (=> d!771197 (= c!433845 (> (size!23971 (_1!17867 lt!949608)) 0))))

(declare-fun e!1696595 () tuple2!30564)

(assert (=> d!771197 (= lt!949608 e!1696595)))

(declare-fun c!433844 () Bool)

(declare-fun lt!949606 () Option!6129)

(assert (=> d!771197 (= c!433844 ((_ is Some!6128) lt!949606))))

(assert (=> d!771197 (= lt!949606 (maxPrefix!2349 thiss!12257 rules!1381 lt!949273))))

(assert (=> d!771197 (= (lexList!1189 thiss!12257 rules!1381 lt!949273) lt!949608)))

(declare-fun b!2691057 () Bool)

(assert (=> b!2691057 (= e!1696595 (tuple2!30565 Nil!31028 lt!949273))))

(declare-fun b!2691058 () Bool)

(assert (=> b!2691058 (= e!1696594 (= (_2!17867 lt!949608) lt!949273))))

(declare-fun b!2691059 () Bool)

(declare-fun e!1696596 () Bool)

(assert (=> b!2691059 (= e!1696594 e!1696596)))

(declare-fun res!1130702 () Bool)

(assert (=> b!2691059 (= res!1130702 (< (size!23970 (_2!17867 lt!949608)) (size!23970 lt!949273)))))

(assert (=> b!2691059 (=> (not res!1130702) (not e!1696596))))

(declare-fun b!2691060 () Bool)

(declare-fun lt!949607 () tuple2!30564)

(assert (=> b!2691060 (= e!1696595 (tuple2!30565 (Cons!31028 (_1!17873 (v!32831 lt!949606)) (_1!17867 lt!949607)) (_2!17867 lt!949607)))))

(assert (=> b!2691060 (= lt!949607 (lexList!1189 thiss!12257 rules!1381 (_2!17873 (v!32831 lt!949606))))))

(declare-fun b!2691061 () Bool)

(declare-fun isEmpty!17710 (List!31128) Bool)

(assert (=> b!2691061 (= e!1696596 (not (isEmpty!17710 (_1!17867 lt!949608))))))

(assert (= (and d!771197 c!433844) b!2691060))

(assert (= (and d!771197 (not c!433844)) b!2691057))

(assert (= (and d!771197 c!433845) b!2691059))

(assert (= (and d!771197 (not c!433845)) b!2691058))

(assert (= (and b!2691059 res!1130702) b!2691061))

(declare-fun m!3068721 () Bool)

(assert (=> d!771197 m!3068721))

(declare-fun m!3068723 () Bool)

(assert (=> d!771197 m!3068723))

(declare-fun m!3068725 () Bool)

(assert (=> b!2691059 m!3068725))

(declare-fun m!3068727 () Bool)

(assert (=> b!2691059 m!3068727))

(declare-fun m!3068729 () Bool)

(assert (=> b!2691060 m!3068729))

(declare-fun m!3068731 () Bool)

(assert (=> b!2691061 m!3068731))

(assert (=> b!2690745 d!771197))

(declare-fun b!2691062 () Bool)

(declare-fun e!1696598 () List!31128)

(assert (=> b!2691062 (= e!1696598 lt!949293)))

(declare-fun b!2691065 () Bool)

(declare-fun lt!949609 () List!31128)

(declare-fun e!1696597 () Bool)

(assert (=> b!2691065 (= e!1696597 (or (not (= lt!949293 Nil!31028)) (= lt!949609 lt!949275)))))

(declare-fun d!771199 () Bool)

(assert (=> d!771199 e!1696597))

(declare-fun res!1130704 () Bool)

(assert (=> d!771199 (=> (not res!1130704) (not e!1696597))))

(assert (=> d!771199 (= res!1130704 (= (content!4401 lt!949609) ((_ map or) (content!4401 lt!949275) (content!4401 lt!949293))))))

(assert (=> d!771199 (= lt!949609 e!1696598)))

(declare-fun c!433846 () Bool)

(assert (=> d!771199 (= c!433846 ((_ is Nil!31028) lt!949275))))

(assert (=> d!771199 (= (++!7595 lt!949275 lt!949293) lt!949609)))

(declare-fun b!2691064 () Bool)

(declare-fun res!1130703 () Bool)

(assert (=> b!2691064 (=> (not res!1130703) (not e!1696597))))

(assert (=> b!2691064 (= res!1130703 (= (size!23971 lt!949609) (+ (size!23971 lt!949275) (size!23971 lt!949293))))))

(declare-fun b!2691063 () Bool)

(assert (=> b!2691063 (= e!1696598 (Cons!31028 (h!36448 lt!949275) (++!7595 (t!225062 lt!949275) lt!949293)))))

(assert (= (and d!771199 c!433846) b!2691062))

(assert (= (and d!771199 (not c!433846)) b!2691063))

(assert (= (and d!771199 res!1130704) b!2691064))

(assert (= (and b!2691064 res!1130703) b!2691065))

(declare-fun m!3068733 () Bool)

(assert (=> d!771199 m!3068733))

(declare-fun m!3068735 () Bool)

(assert (=> d!771199 m!3068735))

(assert (=> d!771199 m!3068685))

(declare-fun m!3068737 () Bool)

(assert (=> b!2691064 m!3068737))

(declare-fun m!3068739 () Bool)

(assert (=> b!2691064 m!3068739))

(assert (=> b!2691064 m!3068691))

(declare-fun m!3068741 () Bool)

(assert (=> b!2691063 m!3068741))

(assert (=> b!2690745 d!771199))

(declare-fun b!2691067 () Bool)

(declare-fun e!1696599 () List!31127)

(assert (=> b!2691067 (= e!1696599 (Cons!31027 (h!36447 lt!949273) (++!7594 (t!225061 lt!949273) lt!949287)))))

(declare-fun d!771201 () Bool)

(declare-fun e!1696600 () Bool)

(assert (=> d!771201 e!1696600))

(declare-fun res!1130706 () Bool)

(assert (=> d!771201 (=> (not res!1130706) (not e!1696600))))

(declare-fun lt!949610 () List!31127)

(assert (=> d!771201 (= res!1130706 (= (content!4400 lt!949610) ((_ map or) (content!4400 lt!949273) (content!4400 lt!949287))))))

(assert (=> d!771201 (= lt!949610 e!1696599)))

(declare-fun c!433847 () Bool)

(assert (=> d!771201 (= c!433847 ((_ is Nil!31027) lt!949273))))

(assert (=> d!771201 (= (++!7594 lt!949273 lt!949287) lt!949610)))

(declare-fun b!2691069 () Bool)

(assert (=> b!2691069 (= e!1696600 (or (not (= lt!949287 Nil!31027)) (= lt!949610 lt!949273)))))

(declare-fun b!2691066 () Bool)

(assert (=> b!2691066 (= e!1696599 lt!949287)))

(declare-fun b!2691068 () Bool)

(declare-fun res!1130705 () Bool)

(assert (=> b!2691068 (=> (not res!1130705) (not e!1696600))))

(assert (=> b!2691068 (= res!1130705 (= (size!23970 lt!949610) (+ (size!23970 lt!949273) (size!23970 lt!949287))))))

(assert (= (and d!771201 c!433847) b!2691066))

(assert (= (and d!771201 (not c!433847)) b!2691067))

(assert (= (and d!771201 res!1130706) b!2691068))

(assert (= (and b!2691068 res!1130705) b!2691069))

(declare-fun m!3068743 () Bool)

(assert (=> b!2691067 m!3068743))

(declare-fun m!3068745 () Bool)

(assert (=> d!771201 m!3068745))

(declare-fun m!3068747 () Bool)

(assert (=> d!771201 m!3068747))

(declare-fun m!3068749 () Bool)

(assert (=> d!771201 m!3068749))

(declare-fun m!3068751 () Bool)

(assert (=> b!2691068 m!3068751))

(assert (=> b!2691068 m!3068727))

(declare-fun m!3068753 () Bool)

(assert (=> b!2691068 m!3068753))

(assert (=> b!2690745 d!771201))

(declare-fun d!771203 () Bool)

(assert (=> d!771203 (= (++!7594 (++!7594 lt!949288 lt!949286) lt!949287) (++!7594 lt!949288 (++!7594 lt!949286 lt!949287)))))

(declare-fun lt!949613 () Unit!45159)

(declare-fun choose!15905 (List!31127 List!31127 List!31127) Unit!45159)

(assert (=> d!771203 (= lt!949613 (choose!15905 lt!949288 lt!949286 lt!949287))))

(assert (=> d!771203 (= (lemmaConcatAssociativity!1543 lt!949288 lt!949286 lt!949287) lt!949613)))

(declare-fun bs!483307 () Bool)

(assert (= bs!483307 d!771203))

(declare-fun m!3068755 () Bool)

(assert (=> bs!483307 m!3068755))

(assert (=> bs!483307 m!3068055))

(assert (=> bs!483307 m!3068047))

(assert (=> bs!483307 m!3068049))

(assert (=> bs!483307 m!3068047))

(assert (=> bs!483307 m!3068055))

(declare-fun m!3068757 () Bool)

(assert (=> bs!483307 m!3068757))

(assert (=> b!2690745 d!771203))

(declare-fun d!771205 () Bool)

(assert (=> d!771205 (= (list!11708 lt!949295) (list!11710 (c!433768 lt!949295)))))

(declare-fun bs!483308 () Bool)

(assert (= bs!483308 d!771205))

(declare-fun m!3068759 () Bool)

(assert (=> bs!483308 m!3068759))

(assert (=> b!2690745 d!771205))

(declare-fun b!2691071 () Bool)

(declare-fun e!1696601 () List!31127)

(assert (=> b!2691071 (= e!1696601 (Cons!31027 (h!36447 lt!949288) (++!7594 (t!225061 lt!949288) (++!7594 lt!949286 lt!949287))))))

(declare-fun d!771207 () Bool)

(declare-fun e!1696602 () Bool)

(assert (=> d!771207 e!1696602))

(declare-fun res!1130708 () Bool)

(assert (=> d!771207 (=> (not res!1130708) (not e!1696602))))

(declare-fun lt!949614 () List!31127)

(assert (=> d!771207 (= res!1130708 (= (content!4400 lt!949614) ((_ map or) (content!4400 lt!949288) (content!4400 (++!7594 lt!949286 lt!949287)))))))

(assert (=> d!771207 (= lt!949614 e!1696601)))

(declare-fun c!433848 () Bool)

(assert (=> d!771207 (= c!433848 ((_ is Nil!31027) lt!949288))))

(assert (=> d!771207 (= (++!7594 lt!949288 (++!7594 lt!949286 lt!949287)) lt!949614)))

(declare-fun b!2691073 () Bool)

(assert (=> b!2691073 (= e!1696602 (or (not (= (++!7594 lt!949286 lt!949287) Nil!31027)) (= lt!949614 lt!949288)))))

(declare-fun b!2691070 () Bool)

(assert (=> b!2691070 (= e!1696601 (++!7594 lt!949286 lt!949287))))

(declare-fun b!2691072 () Bool)

(declare-fun res!1130707 () Bool)

(assert (=> b!2691072 (=> (not res!1130707) (not e!1696602))))

(assert (=> b!2691072 (= res!1130707 (= (size!23970 lt!949614) (+ (size!23970 lt!949288) (size!23970 (++!7594 lt!949286 lt!949287)))))))

(assert (= (and d!771207 c!433848) b!2691070))

(assert (= (and d!771207 (not c!433848)) b!2691071))

(assert (= (and d!771207 res!1130708) b!2691072))

(assert (= (and b!2691072 res!1130707) b!2691073))

(assert (=> b!2691071 m!3068047))

(declare-fun m!3068761 () Bool)

(assert (=> b!2691071 m!3068761))

(declare-fun m!3068763 () Bool)

(assert (=> d!771207 m!3068763))

(assert (=> d!771207 m!3068373))

(assert (=> d!771207 m!3068047))

(declare-fun m!3068765 () Bool)

(assert (=> d!771207 m!3068765))

(declare-fun m!3068767 () Bool)

(assert (=> b!2691072 m!3068767))

(assert (=> b!2691072 m!3068379))

(assert (=> b!2691072 m!3068047))

(declare-fun m!3068769 () Bool)

(assert (=> b!2691072 m!3068769))

(assert (=> b!2690745 d!771207))

(declare-fun d!771209 () Bool)

(declare-fun lt!949615 () BalanceConc!19020)

(assert (=> d!771209 (= (list!11708 lt!949615) (originalCharacters!5501 (_1!17866 (v!32824 lt!949270))))))

(assert (=> d!771209 (= lt!949615 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 lt!949270))))) (value!152619 (_1!17866 (v!32824 lt!949270)))))))

(assert (=> d!771209 (= (charsOf!2985 (_1!17866 (v!32824 lt!949270))) lt!949615)))

(declare-fun b_lambda!82133 () Bool)

(assert (=> (not b_lambda!82133) (not d!771209)))

(declare-fun tb!151011 () Bool)

(declare-fun t!225070 () Bool)

(assert (=> (and b!2690743 (= (toChars!6552 (transformation!4737 (h!36449 rules!1381))) (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 lt!949270)))))) t!225070) tb!151011))

(declare-fun b!2691074 () Bool)

(declare-fun e!1696603 () Bool)

(declare-fun tp!851044 () Bool)

(assert (=> b!2691074 (= e!1696603 (and (inv!42060 (c!433768 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 lt!949270))))) (value!152619 (_1!17866 (v!32824 lt!949270)))))) tp!851044))))

(declare-fun result!186470 () Bool)

(assert (=> tb!151011 (= result!186470 (and (inv!42061 (dynLambda!13441 (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 lt!949270))))) (value!152619 (_1!17866 (v!32824 lt!949270))))) e!1696603))))

(assert (= tb!151011 b!2691074))

(declare-fun m!3068771 () Bool)

(assert (=> b!2691074 m!3068771))

(declare-fun m!3068773 () Bool)

(assert (=> tb!151011 m!3068773))

(assert (=> d!771209 t!225070))

(declare-fun b_and!199101 () Bool)

(assert (= b_and!199099 (and (=> t!225070 result!186470) b_and!199101)))

(declare-fun m!3068775 () Bool)

(assert (=> d!771209 m!3068775))

(declare-fun m!3068777 () Bool)

(assert (=> d!771209 m!3068777))

(assert (=> b!2690745 d!771209))

(declare-fun d!771211 () Bool)

(assert (=> d!771211 (= (list!11709 lt!949283) (list!11711 (c!433769 lt!949283)))))

(declare-fun bs!483309 () Bool)

(assert (= bs!483309 d!771211))

(declare-fun m!3068779 () Bool)

(assert (=> bs!483309 m!3068779))

(assert (=> b!2690745 d!771211))

(declare-fun d!771213 () Bool)

(assert (=> d!771213 (= (++!7595 (++!7595 lt!949275 lt!949293) lt!949279) (++!7595 lt!949275 (++!7595 lt!949293 lt!949279)))))

(declare-fun lt!949618 () Unit!45159)

(declare-fun choose!15906 (List!31128 List!31128 List!31128) Unit!45159)

(assert (=> d!771213 (= lt!949618 (choose!15906 lt!949275 lt!949293 lt!949279))))

(assert (=> d!771213 (= (lemmaConcatAssociativity!1544 lt!949275 lt!949293 lt!949279) lt!949618)))

(declare-fun bs!483310 () Bool)

(assert (= bs!483310 d!771213))

(assert (=> bs!483310 m!3068061))

(assert (=> bs!483310 m!3068061))

(assert (=> bs!483310 m!3068063))

(assert (=> bs!483310 m!3068073))

(assert (=> bs!483310 m!3068073))

(assert (=> bs!483310 m!3068075))

(declare-fun m!3068781 () Bool)

(assert (=> bs!483310 m!3068781))

(assert (=> b!2690745 d!771213))

(declare-fun b!2691075 () Bool)

(declare-fun e!1696605 () List!31128)

(assert (=> b!2691075 (= e!1696605 (++!7595 lt!949293 lt!949279))))

(declare-fun e!1696604 () Bool)

(declare-fun b!2691078 () Bool)

(declare-fun lt!949619 () List!31128)

(assert (=> b!2691078 (= e!1696604 (or (not (= (++!7595 lt!949293 lt!949279) Nil!31028)) (= lt!949619 lt!949275)))))

(declare-fun d!771215 () Bool)

(assert (=> d!771215 e!1696604))

(declare-fun res!1130710 () Bool)

(assert (=> d!771215 (=> (not res!1130710) (not e!1696604))))

(assert (=> d!771215 (= res!1130710 (= (content!4401 lt!949619) ((_ map or) (content!4401 lt!949275) (content!4401 (++!7595 lt!949293 lt!949279)))))))

(assert (=> d!771215 (= lt!949619 e!1696605)))

(declare-fun c!433849 () Bool)

(assert (=> d!771215 (= c!433849 ((_ is Nil!31028) lt!949275))))

(assert (=> d!771215 (= (++!7595 lt!949275 (++!7595 lt!949293 lt!949279)) lt!949619)))

(declare-fun b!2691077 () Bool)

(declare-fun res!1130709 () Bool)

(assert (=> b!2691077 (=> (not res!1130709) (not e!1696604))))

(assert (=> b!2691077 (= res!1130709 (= (size!23971 lt!949619) (+ (size!23971 lt!949275) (size!23971 (++!7595 lt!949293 lt!949279)))))))

(declare-fun b!2691076 () Bool)

(assert (=> b!2691076 (= e!1696605 (Cons!31028 (h!36448 lt!949275) (++!7595 (t!225062 lt!949275) (++!7595 lt!949293 lt!949279))))))

(assert (= (and d!771215 c!433849) b!2691075))

(assert (= (and d!771215 (not c!433849)) b!2691076))

(assert (= (and d!771215 res!1130710) b!2691077))

(assert (= (and b!2691077 res!1130709) b!2691078))

(declare-fun m!3068783 () Bool)

(assert (=> d!771215 m!3068783))

(assert (=> d!771215 m!3068735))

(assert (=> d!771215 m!3068061))

(declare-fun m!3068785 () Bool)

(assert (=> d!771215 m!3068785))

(declare-fun m!3068787 () Bool)

(assert (=> b!2691077 m!3068787))

(assert (=> b!2691077 m!3068739))

(assert (=> b!2691077 m!3068061))

(declare-fun m!3068789 () Bool)

(assert (=> b!2691077 m!3068789))

(assert (=> b!2691076 m!3068061))

(declare-fun m!3068791 () Bool)

(assert (=> b!2691076 m!3068791))

(assert (=> b!2690745 d!771215))

(declare-fun b!2691079 () Bool)

(declare-fun e!1696607 () List!31128)

(assert (=> b!2691079 (= e!1696607 lt!949279)))

(declare-fun lt!949620 () List!31128)

(declare-fun b!2691082 () Bool)

(declare-fun e!1696606 () Bool)

(assert (=> b!2691082 (= e!1696606 (or (not (= lt!949279 Nil!31028)) (= lt!949620 (++!7595 lt!949275 lt!949293))))))

(declare-fun d!771217 () Bool)

(assert (=> d!771217 e!1696606))

(declare-fun res!1130712 () Bool)

(assert (=> d!771217 (=> (not res!1130712) (not e!1696606))))

(assert (=> d!771217 (= res!1130712 (= (content!4401 lt!949620) ((_ map or) (content!4401 (++!7595 lt!949275 lt!949293)) (content!4401 lt!949279))))))

(assert (=> d!771217 (= lt!949620 e!1696607)))

(declare-fun c!433850 () Bool)

(assert (=> d!771217 (= c!433850 ((_ is Nil!31028) (++!7595 lt!949275 lt!949293)))))

(assert (=> d!771217 (= (++!7595 (++!7595 lt!949275 lt!949293) lt!949279) lt!949620)))

(declare-fun b!2691081 () Bool)

(declare-fun res!1130711 () Bool)

(assert (=> b!2691081 (=> (not res!1130711) (not e!1696606))))

(assert (=> b!2691081 (= res!1130711 (= (size!23971 lt!949620) (+ (size!23971 (++!7595 lt!949275 lt!949293)) (size!23971 lt!949279))))))

(declare-fun b!2691080 () Bool)

(assert (=> b!2691080 (= e!1696607 (Cons!31028 (h!36448 (++!7595 lt!949275 lt!949293)) (++!7595 (t!225062 (++!7595 lt!949275 lt!949293)) lt!949279)))))

(assert (= (and d!771217 c!433850) b!2691079))

(assert (= (and d!771217 (not c!433850)) b!2691080))

(assert (= (and d!771217 res!1130712) b!2691081))

(assert (= (and b!2691081 res!1130711) b!2691082))

(declare-fun m!3068793 () Bool)

(assert (=> d!771217 m!3068793))

(assert (=> d!771217 m!3068073))

(declare-fun m!3068795 () Bool)

(assert (=> d!771217 m!3068795))

(assert (=> d!771217 m!3068687))

(declare-fun m!3068797 () Bool)

(assert (=> b!2691081 m!3068797))

(assert (=> b!2691081 m!3068073))

(declare-fun m!3068799 () Bool)

(assert (=> b!2691081 m!3068799))

(assert (=> b!2691081 m!3068693))

(declare-fun m!3068801 () Bool)

(assert (=> b!2691080 m!3068801))

(assert (=> b!2690745 d!771217))

(declare-fun d!771219 () Bool)

(assert (=> d!771219 (= (list!11708 (_2!17866 (v!32824 lt!949270))) (list!11710 (c!433768 (_2!17866 (v!32824 lt!949270)))))))

(declare-fun bs!483311 () Bool)

(assert (= bs!483311 d!771219))

(declare-fun m!3068803 () Bool)

(assert (=> bs!483311 m!3068803))

(assert (=> b!2690745 d!771219))

(declare-fun d!771221 () Bool)

(assert (=> d!771221 (= (lexList!1189 thiss!12257 rules!1381 lt!949273) (tuple2!30565 lt!949289 Nil!31027))))

(declare-fun lt!949623 () Unit!45159)

(declare-fun choose!15907 (LexerInterface!4333 List!31129 List!31127 List!31127 List!31128 List!31128 List!31127) Unit!45159)

(assert (=> d!771221 (= lt!949623 (choose!15907 thiss!12257 rules!1381 lt!949273 lt!949287 lt!949289 lt!949279 (list!11708 (_2!17865 lt!949278))))))

(assert (=> d!771221 (not (isEmpty!17708 rules!1381))))

(assert (=> d!771221 (= (lemmaLexThenLexPrefix!402 thiss!12257 rules!1381 lt!949273 lt!949287 lt!949289 lt!949279 (list!11708 (_2!17865 lt!949278))) lt!949623)))

(declare-fun bs!483312 () Bool)

(assert (= bs!483312 d!771221))

(assert (=> bs!483312 m!3068053))

(assert (=> bs!483312 m!3068067))

(declare-fun m!3068805 () Bool)

(assert (=> bs!483312 m!3068805))

(assert (=> bs!483312 m!3067973))

(assert (=> b!2690745 d!771221))

(declare-fun b!2691084 () Bool)

(declare-fun e!1696608 () List!31127)

(assert (=> b!2691084 (= e!1696608 (Cons!31027 (h!36447 lt!949288) (++!7594 (t!225061 lt!949288) lt!949286)))))

(declare-fun d!771223 () Bool)

(declare-fun e!1696609 () Bool)

(assert (=> d!771223 e!1696609))

(declare-fun res!1130714 () Bool)

(assert (=> d!771223 (=> (not res!1130714) (not e!1696609))))

(declare-fun lt!949624 () List!31127)

(assert (=> d!771223 (= res!1130714 (= (content!4400 lt!949624) ((_ map or) (content!4400 lt!949288) (content!4400 lt!949286))))))

(assert (=> d!771223 (= lt!949624 e!1696608)))

(declare-fun c!433851 () Bool)

(assert (=> d!771223 (= c!433851 ((_ is Nil!31027) lt!949288))))

(assert (=> d!771223 (= (++!7594 lt!949288 lt!949286) lt!949624)))

(declare-fun b!2691086 () Bool)

(assert (=> b!2691086 (= e!1696609 (or (not (= lt!949286 Nil!31027)) (= lt!949624 lt!949288)))))

(declare-fun b!2691083 () Bool)

(assert (=> b!2691083 (= e!1696608 lt!949286)))

(declare-fun b!2691085 () Bool)

(declare-fun res!1130713 () Bool)

(assert (=> b!2691085 (=> (not res!1130713) (not e!1696609))))

(assert (=> b!2691085 (= res!1130713 (= (size!23970 lt!949624) (+ (size!23970 lt!949288) (size!23970 lt!949286))))))

(assert (= (and d!771223 c!433851) b!2691083))

(assert (= (and d!771223 (not c!433851)) b!2691084))

(assert (= (and d!771223 res!1130714) b!2691085))

(assert (= (and b!2691085 res!1130713) b!2691086))

(declare-fun m!3068807 () Bool)

(assert (=> b!2691084 m!3068807))

(declare-fun m!3068809 () Bool)

(assert (=> d!771223 m!3068809))

(assert (=> d!771223 m!3068373))

(declare-fun m!3068811 () Bool)

(assert (=> d!771223 m!3068811))

(declare-fun m!3068813 () Bool)

(assert (=> b!2691085 m!3068813))

(assert (=> b!2691085 m!3068379))

(declare-fun m!3068815 () Bool)

(assert (=> b!2691085 m!3068815))

(assert (=> b!2690745 d!771223))

(declare-fun d!771225 () Bool)

(assert (=> d!771225 (= (list!11708 (_2!17865 lt!949278)) (list!11710 (c!433768 (_2!17865 lt!949278))))))

(declare-fun bs!483313 () Bool)

(assert (= bs!483313 d!771225))

(declare-fun m!3068817 () Bool)

(assert (=> bs!483313 m!3068817))

(assert (=> b!2690745 d!771225))

(declare-fun b!2691087 () Bool)

(declare-fun res!1130716 () Bool)

(declare-fun e!1696610 () Bool)

(assert (=> b!2691087 (=> (not res!1130716) (not e!1696610))))

(assert (=> b!2691087 (= res!1130716 (isBalanced!2938 (++!7598 (c!433768 treated!26) (c!433768 lt!949295))))))

(declare-fun d!771227 () Bool)

(assert (=> d!771227 e!1696610))

(declare-fun res!1130717 () Bool)

(assert (=> d!771227 (=> (not res!1130717) (not e!1696610))))

(assert (=> d!771227 (= res!1130717 (appendAssocInst!659 (c!433768 treated!26) (c!433768 lt!949295)))))

(declare-fun lt!949625 () BalanceConc!19020)

(assert (=> d!771227 (= lt!949625 (BalanceConc!19021 (++!7598 (c!433768 treated!26) (c!433768 lt!949295))))))

(assert (=> d!771227 (= (++!7596 treated!26 lt!949295) lt!949625)))

(declare-fun b!2691088 () Bool)

(declare-fun res!1130718 () Bool)

(assert (=> b!2691088 (=> (not res!1130718) (not e!1696610))))

(assert (=> b!2691088 (= res!1130718 (<= (height!1419 (++!7598 (c!433768 treated!26) (c!433768 lt!949295))) (+ (max!0 (height!1419 (c!433768 treated!26)) (height!1419 (c!433768 lt!949295))) 1)))))

(declare-fun b!2691090 () Bool)

(assert (=> b!2691090 (= e!1696610 (= (list!11708 lt!949625) (++!7594 (list!11708 treated!26) (list!11708 lt!949295))))))

(declare-fun b!2691089 () Bool)

(declare-fun res!1130715 () Bool)

(assert (=> b!2691089 (=> (not res!1130715) (not e!1696610))))

(assert (=> b!2691089 (= res!1130715 (>= (height!1419 (++!7598 (c!433768 treated!26) (c!433768 lt!949295))) (max!0 (height!1419 (c!433768 treated!26)) (height!1419 (c!433768 lt!949295)))))))

(assert (= (and d!771227 res!1130717) b!2691087))

(assert (= (and b!2691087 res!1130716) b!2691088))

(assert (= (and b!2691088 res!1130718) b!2691089))

(assert (= (and b!2691089 res!1130715) b!2691090))

(declare-fun m!3068819 () Bool)

(assert (=> b!2691090 m!3068819))

(assert (=> b!2691090 m!3068123))

(assert (=> b!2691090 m!3068045))

(assert (=> b!2691090 m!3068123))

(assert (=> b!2691090 m!3068045))

(declare-fun m!3068821 () Bool)

(assert (=> b!2691090 m!3068821))

(declare-fun m!3068823 () Bool)

(assert (=> b!2691089 m!3068823))

(declare-fun m!3068825 () Bool)

(assert (=> b!2691089 m!3068825))

(assert (=> b!2691089 m!3068191))

(assert (=> b!2691089 m!3068823))

(declare-fun m!3068827 () Bool)

(assert (=> b!2691089 m!3068827))

(assert (=> b!2691089 m!3068191))

(assert (=> b!2691089 m!3068827))

(declare-fun m!3068829 () Bool)

(assert (=> b!2691089 m!3068829))

(assert (=> b!2691088 m!3068823))

(assert (=> b!2691088 m!3068825))

(assert (=> b!2691088 m!3068191))

(assert (=> b!2691088 m!3068823))

(assert (=> b!2691088 m!3068827))

(assert (=> b!2691088 m!3068191))

(assert (=> b!2691088 m!3068827))

(assert (=> b!2691088 m!3068829))

(assert (=> b!2691087 m!3068823))

(assert (=> b!2691087 m!3068823))

(declare-fun m!3068831 () Bool)

(assert (=> b!2691087 m!3068831))

(declare-fun m!3068833 () Bool)

(assert (=> d!771227 m!3068833))

(assert (=> d!771227 m!3068823))

(assert (=> b!2690745 d!771227))

(declare-fun d!771229 () Bool)

(declare-fun e!1696611 () Bool)

(assert (=> d!771229 e!1696611))

(declare-fun res!1130719 () Bool)

(assert (=> d!771229 (=> (not res!1130719) (not e!1696611))))

(assert (=> d!771229 (= res!1130719 (isBalanced!2937 (append!765 (c!433769 acc!348) (_1!17866 (v!32824 lt!949270)))))))

(declare-fun lt!949626 () BalanceConc!19022)

(assert (=> d!771229 (= lt!949626 (BalanceConc!19023 (append!765 (c!433769 acc!348) (_1!17866 (v!32824 lt!949270)))))))

(assert (=> d!771229 (= (append!764 acc!348 (_1!17866 (v!32824 lt!949270))) lt!949626)))

(declare-fun b!2691091 () Bool)

(assert (=> b!2691091 (= e!1696611 (= (list!11709 lt!949626) ($colon+!166 (list!11709 acc!348) (_1!17866 (v!32824 lt!949270)))))))

(assert (= (and d!771229 res!1130719) b!2691091))

(declare-fun m!3068835 () Bool)

(assert (=> d!771229 m!3068835))

(assert (=> d!771229 m!3068835))

(declare-fun m!3068837 () Bool)

(assert (=> d!771229 m!3068837))

(declare-fun m!3068839 () Bool)

(assert (=> b!2691091 m!3068839))

(assert (=> b!2691091 m!3068035))

(assert (=> b!2691091 m!3068035))

(declare-fun m!3068841 () Bool)

(assert (=> b!2691091 m!3068841))

(assert (=> b!2690745 d!771229))

(declare-fun b!2691093 () Bool)

(declare-fun e!1696612 () List!31127)

(assert (=> b!2691093 (= e!1696612 (Cons!31027 (h!36447 lt!949286) (++!7594 (t!225061 lt!949286) lt!949287)))))

(declare-fun d!771231 () Bool)

(declare-fun e!1696613 () Bool)

(assert (=> d!771231 e!1696613))

(declare-fun res!1130721 () Bool)

(assert (=> d!771231 (=> (not res!1130721) (not e!1696613))))

(declare-fun lt!949627 () List!31127)

(assert (=> d!771231 (= res!1130721 (= (content!4400 lt!949627) ((_ map or) (content!4400 lt!949286) (content!4400 lt!949287))))))

(assert (=> d!771231 (= lt!949627 e!1696612)))

(declare-fun c!433852 () Bool)

(assert (=> d!771231 (= c!433852 ((_ is Nil!31027) lt!949286))))

(assert (=> d!771231 (= (++!7594 lt!949286 lt!949287) lt!949627)))

(declare-fun b!2691095 () Bool)

(assert (=> b!2691095 (= e!1696613 (or (not (= lt!949287 Nil!31027)) (= lt!949627 lt!949286)))))

(declare-fun b!2691092 () Bool)

(assert (=> b!2691092 (= e!1696612 lt!949287)))

(declare-fun b!2691094 () Bool)

(declare-fun res!1130720 () Bool)

(assert (=> b!2691094 (=> (not res!1130720) (not e!1696613))))

(assert (=> b!2691094 (= res!1130720 (= (size!23970 lt!949627) (+ (size!23970 lt!949286) (size!23970 lt!949287))))))

(assert (= (and d!771231 c!433852) b!2691092))

(assert (= (and d!771231 (not c!433852)) b!2691093))

(assert (= (and d!771231 res!1130721) b!2691094))

(assert (= (and b!2691094 res!1130720) b!2691095))

(declare-fun m!3068843 () Bool)

(assert (=> b!2691093 m!3068843))

(declare-fun m!3068845 () Bool)

(assert (=> d!771231 m!3068845))

(assert (=> d!771231 m!3068811))

(assert (=> d!771231 m!3068749))

(declare-fun m!3068847 () Bool)

(assert (=> b!2691094 m!3068847))

(assert (=> b!2691094 m!3068815))

(assert (=> b!2691094 m!3068753))

(assert (=> b!2690745 d!771231))

(declare-fun b!2691096 () Bool)

(declare-fun e!1696615 () Bool)

(declare-fun lt!949629 () tuple2!30560)

(assert (=> b!2691096 (= e!1696615 (= (list!11708 (_2!17865 lt!949629)) (list!11708 (_2!17866 (v!32824 lt!949270)))))))

(declare-fun b!2691097 () Bool)

(declare-fun e!1696617 () tuple2!30560)

(declare-fun lt!949630 () tuple2!30560)

(declare-fun lt!949628 () Option!6128)

(assert (=> b!2691097 (= e!1696617 (tuple2!30561 (prepend!1069 (_1!17865 lt!949630) (_1!17866 (v!32824 lt!949628))) (_2!17865 lt!949630)))))

(assert (=> b!2691097 (= lt!949630 (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949628))))))

(declare-fun b!2691098 () Bool)

(declare-fun e!1696616 () Bool)

(assert (=> b!2691098 (= e!1696616 (not (isEmpty!17709 (_1!17865 lt!949629))))))

(declare-fun d!771233 () Bool)

(declare-fun e!1696614 () Bool)

(assert (=> d!771233 e!1696614))

(declare-fun res!1130723 () Bool)

(assert (=> d!771233 (=> (not res!1130723) (not e!1696614))))

(assert (=> d!771233 (= res!1130723 e!1696615)))

(declare-fun c!433854 () Bool)

(assert (=> d!771233 (= c!433854 (> (size!23968 (_1!17865 lt!949629)) 0))))

(assert (=> d!771233 (= lt!949629 e!1696617)))

(declare-fun c!433853 () Bool)

(assert (=> d!771233 (= c!433853 ((_ is Some!6127) lt!949628))))

(assert (=> d!771233 (= lt!949628 (maxPrefixZipperSequence!998 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))))))

(assert (=> d!771233 (= (lexRec!596 thiss!12257 rules!1381 (_2!17866 (v!32824 lt!949270))) lt!949629)))

(declare-fun b!2691099 () Bool)

(declare-fun res!1130722 () Bool)

(assert (=> b!2691099 (=> (not res!1130722) (not e!1696614))))

(assert (=> b!2691099 (= res!1130722 (= (list!11709 (_1!17865 lt!949629)) (_1!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 (_2!17866 (v!32824 lt!949270)))))))))

(declare-fun b!2691100 () Bool)

(assert (=> b!2691100 (= e!1696614 (= (list!11708 (_2!17865 lt!949629)) (_2!17867 (lexList!1189 thiss!12257 rules!1381 (list!11708 (_2!17866 (v!32824 lt!949270)))))))))

(declare-fun b!2691101 () Bool)

(assert (=> b!2691101 (= e!1696617 (tuple2!30561 (BalanceConc!19023 Empty!9704) (_2!17866 (v!32824 lt!949270))))))

(declare-fun b!2691102 () Bool)

(assert (=> b!2691102 (= e!1696615 e!1696616)))

(declare-fun res!1130724 () Bool)

(assert (=> b!2691102 (= res!1130724 (< (size!23969 (_2!17865 lt!949629)) (size!23969 (_2!17866 (v!32824 lt!949270)))))))

(assert (=> b!2691102 (=> (not res!1130724) (not e!1696616))))

(assert (= (and d!771233 c!433853) b!2691097))

(assert (= (and d!771233 (not c!433853)) b!2691101))

(assert (= (and d!771233 c!433854) b!2691102))

(assert (= (and d!771233 (not c!433854)) b!2691096))

(assert (= (and b!2691102 res!1130724) b!2691098))

(assert (= (and d!771233 res!1130723) b!2691099))

(assert (= (and b!2691099 res!1130722) b!2691100))

(declare-fun m!3068849 () Bool)

(assert (=> b!2691097 m!3068849))

(declare-fun m!3068851 () Bool)

(assert (=> b!2691097 m!3068851))

(declare-fun m!3068853 () Bool)

(assert (=> b!2691099 m!3068853))

(assert (=> b!2691099 m!3068083))

(assert (=> b!2691099 m!3068083))

(declare-fun m!3068855 () Bool)

(assert (=> b!2691099 m!3068855))

(declare-fun m!3068857 () Bool)

(assert (=> b!2691096 m!3068857))

(assert (=> b!2691096 m!3068083))

(declare-fun m!3068859 () Bool)

(assert (=> d!771233 m!3068859))

(assert (=> d!771233 m!3068599))

(declare-fun m!3068861 () Bool)

(assert (=> b!2691102 m!3068861))

(declare-fun m!3068863 () Bool)

(assert (=> b!2691102 m!3068863))

(assert (=> b!2691100 m!3068857))

(assert (=> b!2691100 m!3068083))

(assert (=> b!2691100 m!3068083))

(assert (=> b!2691100 m!3068855))

(declare-fun m!3068865 () Bool)

(assert (=> b!2691098 m!3068865))

(assert (=> b!2690745 d!771233))

(declare-fun tp!851052 () Bool)

(declare-fun b!2691111 () Bool)

(declare-fun e!1696623 () Bool)

(declare-fun tp!851051 () Bool)

(assert (=> b!2691111 (= e!1696623 (and (inv!42060 (left!23939 (c!433768 treated!26))) tp!851051 (inv!42060 (right!24269 (c!433768 treated!26))) tp!851052))))

(declare-fun b!2691113 () Bool)

(declare-fun e!1696622 () Bool)

(declare-fun tp!851053 () Bool)

(assert (=> b!2691113 (= e!1696622 tp!851053)))

(declare-fun b!2691112 () Bool)

(declare-fun inv!42071 (IArray!19411) Bool)

(assert (=> b!2691112 (= e!1696623 (and (inv!42071 (xs!12739 (c!433768 treated!26))) e!1696622))))

(assert (=> b!2690750 (= tp!851020 (and (inv!42060 (c!433768 treated!26)) e!1696623))))

(assert (= (and b!2690750 ((_ is Node!9703) (c!433768 treated!26))) b!2691111))

(assert (= b!2691112 b!2691113))

(assert (= (and b!2690750 ((_ is Leaf!14816) (c!433768 treated!26))) b!2691112))

(declare-fun m!3068867 () Bool)

(assert (=> b!2691111 m!3068867))

(declare-fun m!3068869 () Bool)

(assert (=> b!2691111 m!3068869))

(declare-fun m!3068871 () Bool)

(assert (=> b!2691112 m!3068871))

(assert (=> b!2690750 m!3068019))

(declare-fun b!2691124 () Bool)

(declare-fun b_free!75997 () Bool)

(declare-fun b_next!76701 () Bool)

(assert (=> b!2691124 (= b_free!75997 (not b_next!76701))))

(declare-fun tp!851065 () Bool)

(declare-fun b_and!199103 () Bool)

(assert (=> b!2691124 (= tp!851065 b_and!199103)))

(declare-fun b_free!75999 () Bool)

(declare-fun b_next!76703 () Bool)

(assert (=> b!2691124 (= b_free!75999 (not b_next!76703))))

(declare-fun t!225072 () Bool)

(declare-fun tb!151013 () Bool)

(assert (=> (and b!2691124 (= (toChars!6552 (transformation!4737 (h!36449 (t!225063 rules!1381)))) (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 (_1!17872 lt!949282))))))) t!225072) tb!151013))

(declare-fun result!186476 () Bool)

(assert (= result!186476 result!186466))

(assert (=> d!771103 t!225072))

(declare-fun tb!151015 () Bool)

(declare-fun t!225074 () Bool)

(assert (=> (and b!2691124 (= (toChars!6552 (transformation!4737 (h!36449 (t!225063 rules!1381)))) (toChars!6552 (transformation!4737 (rule!7152 (_1!17866 (v!32824 lt!949270)))))) t!225074) tb!151015))

(declare-fun result!186478 () Bool)

(assert (= result!186478 result!186470))

(assert (=> d!771209 t!225074))

(declare-fun tp!851064 () Bool)

(declare-fun b_and!199105 () Bool)

(assert (=> b!2691124 (= tp!851064 (and (=> t!225072 result!186476) (=> t!225074 result!186478) b_and!199105))))

(declare-fun e!1696632 () Bool)

(assert (=> b!2691124 (= e!1696632 (and tp!851065 tp!851064))))

(declare-fun tp!851063 () Bool)

(declare-fun e!1696633 () Bool)

(declare-fun b!2691123 () Bool)

(assert (=> b!2691123 (= e!1696633 (and tp!851063 (inv!42058 (tag!5241 (h!36449 (t!225063 rules!1381)))) (inv!42066 (transformation!4737 (h!36449 (t!225063 rules!1381)))) e!1696632))))

(declare-fun b!2691122 () Bool)

(declare-fun e!1696635 () Bool)

(declare-fun tp!851062 () Bool)

(assert (=> b!2691122 (= e!1696635 (and e!1696633 tp!851062))))

(assert (=> b!2690742 (= tp!851021 e!1696635)))

(assert (= b!2691123 b!2691124))

(assert (= b!2691122 b!2691123))

(assert (= (and b!2690742 ((_ is Cons!31029) (t!225063 rules!1381))) b!2691122))

(declare-fun m!3068873 () Bool)

(assert (=> b!2691123 m!3068873))

(declare-fun m!3068875 () Bool)

(assert (=> b!2691123 m!3068875))

(declare-fun b!2691133 () Bool)

(declare-fun tp!851073 () Bool)

(declare-fun e!1696640 () Bool)

(declare-fun tp!851074 () Bool)

(assert (=> b!2691133 (= e!1696640 (and (inv!42065 (left!23940 (c!433769 acc!348))) tp!851073 (inv!42065 (right!24270 (c!433769 acc!348))) tp!851074))))

(declare-fun b!2691135 () Bool)

(declare-fun e!1696641 () Bool)

(declare-fun tp!851072 () Bool)

(assert (=> b!2691135 (= e!1696641 tp!851072)))

(declare-fun b!2691134 () Bool)

(declare-fun inv!42072 (IArray!19413) Bool)

(assert (=> b!2691134 (= e!1696640 (and (inv!42072 (xs!12740 (c!433769 acc!348))) e!1696641))))

(assert (=> b!2690762 (= tp!851040 (and (inv!42065 (c!433769 acc!348)) e!1696640))))

(assert (= (and b!2690762 ((_ is Node!9704) (c!433769 acc!348))) b!2691133))

(assert (= b!2691134 b!2691135))

(assert (= (and b!2690762 ((_ is Leaf!14817) (c!433769 acc!348))) b!2691134))

(declare-fun m!3068877 () Bool)

(assert (=> b!2691133 m!3068877))

(declare-fun m!3068879 () Bool)

(assert (=> b!2691133 m!3068879))

(declare-fun m!3068881 () Bool)

(assert (=> b!2691134 m!3068881))

(assert (=> b!2690762 m!3067971))

(declare-fun b!2691144 () Bool)

(declare-fun e!1696649 () Bool)

(declare-fun tp!851085 () Bool)

(assert (=> b!2691144 (= e!1696649 tp!851085)))

(declare-fun setIsEmpty!21123 () Bool)

(declare-fun setRes!21123 () Bool)

(assert (=> setIsEmpty!21123 setRes!21123))

(declare-fun setElem!21123 () Context!4326)

(declare-fun setNonEmpty!21123 () Bool)

(declare-fun e!1696648 () Bool)

(declare-fun tp!851086 () Bool)

(declare-fun inv!42073 (Context!4326) Bool)

(assert (=> setNonEmpty!21123 (= setRes!21123 (and tp!851086 (inv!42073 setElem!21123) e!1696648))))

(declare-fun setRest!21123 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21123 (= (_2!17871 (h!36452 (zeroValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21123 true) setRest!21123))))

(declare-fun tp!851084 () Bool)

(declare-fun b!2691145 () Bool)

(declare-fun tp_is_empty!13847 () Bool)

(declare-fun e!1696650 () Bool)

(assert (=> b!2691145 (= e!1696650 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 (zeroValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))))) e!1696649 tp_is_empty!13847 setRes!21123 tp!851084))))

(declare-fun condSetEmpty!21123 () Bool)

(assert (=> b!2691145 (= condSetEmpty!21123 (= (_2!17871 (h!36452 (zeroValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) ((as const (Array Context!4326 Bool)) false)))))

(assert (=> b!2690758 (= tp!851028 e!1696650)))

(declare-fun b!2691146 () Bool)

(declare-fun tp!851083 () Bool)

(assert (=> b!2691146 (= e!1696648 tp!851083)))

(assert (= b!2691145 b!2691144))

(assert (= (and b!2691145 condSetEmpty!21123) setIsEmpty!21123))

(assert (= (and b!2691145 (not condSetEmpty!21123)) setNonEmpty!21123))

(assert (= setNonEmpty!21123 b!2691146))

(assert (= (and b!2690758 ((_ is Cons!31032) (zeroValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) b!2691145))

(declare-fun m!3068883 () Bool)

(assert (=> setNonEmpty!21123 m!3068883))

(declare-fun m!3068885 () Bool)

(assert (=> b!2691145 m!3068885))

(declare-fun b!2691147 () Bool)

(declare-fun e!1696652 () Bool)

(declare-fun tp!851089 () Bool)

(assert (=> b!2691147 (= e!1696652 tp!851089)))

(declare-fun setIsEmpty!21124 () Bool)

(declare-fun setRes!21124 () Bool)

(assert (=> setIsEmpty!21124 setRes!21124))

(declare-fun e!1696651 () Bool)

(declare-fun setNonEmpty!21124 () Bool)

(declare-fun tp!851090 () Bool)

(declare-fun setElem!21124 () Context!4326)

(assert (=> setNonEmpty!21124 (= setRes!21124 (and tp!851090 (inv!42073 setElem!21124) e!1696651))))

(declare-fun setRest!21124 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21124 (= (_2!17871 (h!36452 (minValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21124 true) setRest!21124))))

(declare-fun e!1696653 () Bool)

(declare-fun tp!851088 () Bool)

(declare-fun b!2691148 () Bool)

(assert (=> b!2691148 (= e!1696653 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 (minValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))))) e!1696652 tp_is_empty!13847 setRes!21124 tp!851088))))

(declare-fun condSetEmpty!21124 () Bool)

(assert (=> b!2691148 (= condSetEmpty!21124 (= (_2!17871 (h!36452 (minValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) ((as const (Array Context!4326 Bool)) false)))))

(assert (=> b!2690758 (= tp!851035 e!1696653)))

(declare-fun b!2691149 () Bool)

(declare-fun tp!851087 () Bool)

(assert (=> b!2691149 (= e!1696651 tp!851087)))

(assert (= b!2691148 b!2691147))

(assert (= (and b!2691148 condSetEmpty!21124) setIsEmpty!21124))

(assert (= (and b!2691148 (not condSetEmpty!21124)) setNonEmpty!21124))

(assert (= setNonEmpty!21124 b!2691149))

(assert (= (and b!2690758 ((_ is Cons!31032) (minValue!3766 (v!32827 (underlying!7217 (v!32828 (underlying!7218 (cache!3556 cacheUp!486)))))))) b!2691148))

(declare-fun m!3068887 () Bool)

(assert (=> setNonEmpty!21124 m!3068887))

(declare-fun m!3068889 () Bool)

(assert (=> b!2691148 m!3068889))

(declare-fun b!2691150 () Bool)

(declare-fun e!1696655 () Bool)

(declare-fun tp!851093 () Bool)

(assert (=> b!2691150 (= e!1696655 tp!851093)))

(declare-fun setIsEmpty!21125 () Bool)

(declare-fun setRes!21125 () Bool)

(assert (=> setIsEmpty!21125 setRes!21125))

(declare-fun e!1696654 () Bool)

(declare-fun setElem!21125 () Context!4326)

(declare-fun tp!851094 () Bool)

(declare-fun setNonEmpty!21125 () Bool)

(assert (=> setNonEmpty!21125 (= setRes!21125 (and tp!851094 (inv!42073 setElem!21125) e!1696654))))

(declare-fun setRest!21125 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21125 (= (_2!17871 (h!36452 mapDefault!16042)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21125 true) setRest!21125))))

(declare-fun e!1696656 () Bool)

(declare-fun tp!851092 () Bool)

(declare-fun b!2691151 () Bool)

(assert (=> b!2691151 (= e!1696656 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 mapDefault!16042)))) e!1696655 tp_is_empty!13847 setRes!21125 tp!851092))))

(declare-fun condSetEmpty!21125 () Bool)

(assert (=> b!2691151 (= condSetEmpty!21125 (= (_2!17871 (h!36452 mapDefault!16042)) ((as const (Array Context!4326 Bool)) false)))))

(assert (=> b!2690778 (= tp!851034 e!1696656)))

(declare-fun b!2691152 () Bool)

(declare-fun tp!851091 () Bool)

(assert (=> b!2691152 (= e!1696654 tp!851091)))

(assert (= b!2691151 b!2691150))

(assert (= (and b!2691151 condSetEmpty!21125) setIsEmpty!21125))

(assert (= (and b!2691151 (not condSetEmpty!21125)) setNonEmpty!21125))

(assert (= setNonEmpty!21125 b!2691152))

(assert (= (and b!2690778 ((_ is Cons!31032) mapDefault!16042)) b!2691151))

(declare-fun m!3068891 () Bool)

(assert (=> setNonEmpty!21125 m!3068891))

(declare-fun m!3068893 () Bool)

(assert (=> b!2691151 m!3068893))

(declare-fun tp!851121 () Bool)

(declare-fun e!1696671 () Bool)

(declare-fun setRes!21131 () Bool)

(declare-fun setNonEmpty!21130 () Bool)

(declare-fun setElem!21131 () Context!4326)

(assert (=> setNonEmpty!21130 (= setRes!21131 (and tp!851121 (inv!42073 setElem!21131) e!1696671))))

(declare-fun mapDefault!16045 () List!31131)

(declare-fun setRest!21131 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21130 (= (_2!17869 (h!36451 mapDefault!16045)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21131 true) setRest!21131))))

(declare-fun condMapEmpty!16045 () Bool)

(assert (=> mapNonEmpty!16041 (= condMapEmpty!16045 (= mapRest!16042 ((as const (Array (_ BitVec 32) List!31131)) mapDefault!16045)))))

(declare-fun e!1696673 () Bool)

(declare-fun mapRes!16045 () Bool)

(assert (=> mapNonEmpty!16041 (= tp!851025 (and e!1696673 mapRes!16045))))

(declare-fun setIsEmpty!21130 () Bool)

(assert (=> setIsEmpty!21130 setRes!21131))

(declare-fun mapNonEmpty!16045 () Bool)

(declare-fun tp!851117 () Bool)

(declare-fun e!1696674 () Bool)

(assert (=> mapNonEmpty!16045 (= mapRes!16045 (and tp!851117 e!1696674))))

(declare-fun mapKey!16045 () (_ BitVec 32))

(declare-fun mapRest!16045 () (Array (_ BitVec 32) List!31131))

(declare-fun mapValue!16045 () List!31131)

(assert (=> mapNonEmpty!16045 (= mapRest!16042 (store mapRest!16045 mapKey!16045 mapValue!16045))))

(declare-fun mapIsEmpty!16045 () Bool)

(assert (=> mapIsEmpty!16045 mapRes!16045))

(declare-fun b!2691167 () Bool)

(declare-fun e!1696670 () Bool)

(declare-fun tp!851126 () Bool)

(assert (=> b!2691167 (= e!1696670 tp!851126)))

(declare-fun setIsEmpty!21131 () Bool)

(declare-fun setRes!21130 () Bool)

(assert (=> setIsEmpty!21131 setRes!21130))

(declare-fun setNonEmpty!21131 () Bool)

(declare-fun setElem!21130 () Context!4326)

(declare-fun tp!851125 () Bool)

(assert (=> setNonEmpty!21131 (= setRes!21130 (and tp!851125 (inv!42073 setElem!21130) e!1696670))))

(declare-fun setRest!21130 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21131 (= (_2!17869 (h!36451 mapValue!16045)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21130 true) setRest!21130))))

(declare-fun b!2691168 () Bool)

(declare-fun e!1696669 () Bool)

(declare-fun tp!851124 () Bool)

(assert (=> b!2691168 (= e!1696669 tp!851124)))

(declare-fun tp!851118 () Bool)

(declare-fun e!1696672 () Bool)

(declare-fun b!2691169 () Bool)

(declare-fun tp!851127 () Bool)

(assert (=> b!2691169 (= e!1696673 (and tp!851118 (inv!42073 (_2!17868 (_1!17869 (h!36451 mapDefault!16045)))) e!1696672 tp_is_empty!13847 setRes!21131 tp!851127))))

(declare-fun condSetEmpty!21131 () Bool)

(assert (=> b!2691169 (= condSetEmpty!21131 (= (_2!17869 (h!36451 mapDefault!16045)) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691170 () Bool)

(declare-fun tp!851120 () Bool)

(assert (=> b!2691170 (= e!1696672 tp!851120)))

(declare-fun b!2691171 () Bool)

(declare-fun tp!851123 () Bool)

(assert (=> b!2691171 (= e!1696671 tp!851123)))

(declare-fun tp!851122 () Bool)

(declare-fun tp!851119 () Bool)

(declare-fun b!2691172 () Bool)

(assert (=> b!2691172 (= e!1696674 (and tp!851119 (inv!42073 (_2!17868 (_1!17869 (h!36451 mapValue!16045)))) e!1696669 tp_is_empty!13847 setRes!21130 tp!851122))))

(declare-fun condSetEmpty!21130 () Bool)

(assert (=> b!2691172 (= condSetEmpty!21130 (= (_2!17869 (h!36451 mapValue!16045)) ((as const (Array Context!4326 Bool)) false)))))

(assert (= (and mapNonEmpty!16041 condMapEmpty!16045) mapIsEmpty!16045))

(assert (= (and mapNonEmpty!16041 (not condMapEmpty!16045)) mapNonEmpty!16045))

(assert (= b!2691172 b!2691168))

(assert (= (and b!2691172 condSetEmpty!21130) setIsEmpty!21131))

(assert (= (and b!2691172 (not condSetEmpty!21130)) setNonEmpty!21131))

(assert (= setNonEmpty!21131 b!2691167))

(assert (= (and mapNonEmpty!16045 ((_ is Cons!31031) mapValue!16045)) b!2691172))

(assert (= b!2691169 b!2691170))

(assert (= (and b!2691169 condSetEmpty!21131) setIsEmpty!21130))

(assert (= (and b!2691169 (not condSetEmpty!21131)) setNonEmpty!21130))

(assert (= setNonEmpty!21130 b!2691171))

(assert (= (and mapNonEmpty!16041 ((_ is Cons!31031) mapDefault!16045)) b!2691169))

(declare-fun m!3068895 () Bool)

(assert (=> setNonEmpty!21131 m!3068895))

(declare-fun m!3068897 () Bool)

(assert (=> setNonEmpty!21130 m!3068897))

(declare-fun m!3068899 () Bool)

(assert (=> b!2691172 m!3068899))

(declare-fun m!3068901 () Bool)

(assert (=> mapNonEmpty!16045 m!3068901))

(declare-fun m!3068903 () Bool)

(assert (=> b!2691169 m!3068903))

(declare-fun setNonEmpty!21134 () Bool)

(declare-fun e!1696681 () Bool)

(declare-fun setElem!21134 () Context!4326)

(declare-fun setRes!21134 () Bool)

(declare-fun tp!851139 () Bool)

(assert (=> setNonEmpty!21134 (= setRes!21134 (and tp!851139 (inv!42073 setElem!21134) e!1696681))))

(declare-fun setRest!21134 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21134 (= (_2!17869 (h!36451 mapValue!16042)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21134 true) setRest!21134))))

(declare-fun tp!851138 () Bool)

(declare-fun b!2691181 () Bool)

(declare-fun e!1696683 () Bool)

(declare-fun e!1696682 () Bool)

(declare-fun tp!851140 () Bool)

(assert (=> b!2691181 (= e!1696683 (and tp!851140 (inv!42073 (_2!17868 (_1!17869 (h!36451 mapValue!16042)))) e!1696682 tp_is_empty!13847 setRes!21134 tp!851138))))

(declare-fun condSetEmpty!21134 () Bool)

(assert (=> b!2691181 (= condSetEmpty!21134 (= (_2!17869 (h!36451 mapValue!16042)) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691182 () Bool)

(declare-fun tp!851141 () Bool)

(assert (=> b!2691182 (= e!1696682 tp!851141)))

(declare-fun b!2691183 () Bool)

(declare-fun tp!851142 () Bool)

(assert (=> b!2691183 (= e!1696681 tp!851142)))

(declare-fun setIsEmpty!21134 () Bool)

(assert (=> setIsEmpty!21134 setRes!21134))

(assert (=> mapNonEmpty!16041 (= tp!851039 e!1696683)))

(assert (= b!2691181 b!2691182))

(assert (= (and b!2691181 condSetEmpty!21134) setIsEmpty!21134))

(assert (= (and b!2691181 (not condSetEmpty!21134)) setNonEmpty!21134))

(assert (= setNonEmpty!21134 b!2691183))

(assert (= (and mapNonEmpty!16041 ((_ is Cons!31031) mapValue!16042)) b!2691181))

(declare-fun m!3068905 () Bool)

(assert (=> setNonEmpty!21134 m!3068905))

(declare-fun m!3068907 () Bool)

(assert (=> b!2691181 m!3068907))

(declare-fun e!1696684 () Bool)

(declare-fun tp!851144 () Bool)

(declare-fun setElem!21135 () Context!4326)

(declare-fun setNonEmpty!21135 () Bool)

(declare-fun setRes!21135 () Bool)

(assert (=> setNonEmpty!21135 (= setRes!21135 (and tp!851144 (inv!42073 setElem!21135) e!1696684))))

(declare-fun setRest!21135 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21135 (= (_2!17869 (h!36451 mapDefault!16041)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21135 true) setRest!21135))))

(declare-fun tp!851145 () Bool)

(declare-fun e!1696685 () Bool)

(declare-fun e!1696686 () Bool)

(declare-fun b!2691184 () Bool)

(declare-fun tp!851143 () Bool)

(assert (=> b!2691184 (= e!1696686 (and tp!851145 (inv!42073 (_2!17868 (_1!17869 (h!36451 mapDefault!16041)))) e!1696685 tp_is_empty!13847 setRes!21135 tp!851143))))

(declare-fun condSetEmpty!21135 () Bool)

(assert (=> b!2691184 (= condSetEmpty!21135 (= (_2!17869 (h!36451 mapDefault!16041)) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691185 () Bool)

(declare-fun tp!851146 () Bool)

(assert (=> b!2691185 (= e!1696685 tp!851146)))

(declare-fun b!2691186 () Bool)

(declare-fun tp!851147 () Bool)

(assert (=> b!2691186 (= e!1696684 tp!851147)))

(declare-fun setIsEmpty!21135 () Bool)

(assert (=> setIsEmpty!21135 setRes!21135))

(assert (=> b!2690775 (= tp!851019 e!1696686)))

(assert (= b!2691184 b!2691185))

(assert (= (and b!2691184 condSetEmpty!21135) setIsEmpty!21135))

(assert (= (and b!2691184 (not condSetEmpty!21135)) setNonEmpty!21135))

(assert (= setNonEmpty!21135 b!2691186))

(assert (= (and b!2690775 ((_ is Cons!31031) mapDefault!16041)) b!2691184))

(declare-fun m!3068909 () Bool)

(assert (=> setNonEmpty!21135 m!3068909))

(declare-fun m!3068911 () Bool)

(assert (=> b!2691184 m!3068911))

(declare-fun tp!851149 () Bool)

(declare-fun tp!851148 () Bool)

(declare-fun b!2691187 () Bool)

(declare-fun e!1696688 () Bool)

(assert (=> b!2691187 (= e!1696688 (and (inv!42060 (left!23939 (c!433768 input!780))) tp!851148 (inv!42060 (right!24269 (c!433768 input!780))) tp!851149))))

(declare-fun b!2691189 () Bool)

(declare-fun e!1696687 () Bool)

(declare-fun tp!851150 () Bool)

(assert (=> b!2691189 (= e!1696687 tp!851150)))

(declare-fun b!2691188 () Bool)

(assert (=> b!2691188 (= e!1696688 (and (inv!42071 (xs!12739 (c!433768 input!780))) e!1696687))))

(assert (=> b!2690776 (= tp!851033 (and (inv!42060 (c!433768 input!780)) e!1696688))))

(assert (= (and b!2690776 ((_ is Node!9703) (c!433768 input!780))) b!2691187))

(assert (= b!2691188 b!2691189))

(assert (= (and b!2690776 ((_ is Leaf!14816) (c!433768 input!780))) b!2691188))

(declare-fun m!3068913 () Bool)

(assert (=> b!2691187 m!3068913))

(declare-fun m!3068915 () Bool)

(assert (=> b!2691187 m!3068915))

(declare-fun m!3068917 () Bool)

(assert (=> b!2691188 m!3068917))

(assert (=> b!2690776 m!3068033))

(declare-fun setRes!21136 () Bool)

(declare-fun setNonEmpty!21136 () Bool)

(declare-fun tp!851152 () Bool)

(declare-fun setElem!21136 () Context!4326)

(declare-fun e!1696689 () Bool)

(assert (=> setNonEmpty!21136 (= setRes!21136 (and tp!851152 (inv!42073 setElem!21136) e!1696689))))

(declare-fun setRest!21136 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21136 (= (_2!17869 (h!36451 (zeroValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21136 true) setRest!21136))))

(declare-fun tp!851153 () Bool)

(declare-fun tp!851151 () Bool)

(declare-fun b!2691190 () Bool)

(declare-fun e!1696691 () Bool)

(declare-fun e!1696690 () Bool)

(assert (=> b!2691190 (= e!1696691 (and tp!851153 (inv!42073 (_2!17868 (_1!17869 (h!36451 (zeroValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))))) e!1696690 tp_is_empty!13847 setRes!21136 tp!851151))))

(declare-fun condSetEmpty!21136 () Bool)

(assert (=> b!2691190 (= condSetEmpty!21136 (= (_2!17869 (h!36451 (zeroValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691191 () Bool)

(declare-fun tp!851154 () Bool)

(assert (=> b!2691191 (= e!1696690 tp!851154)))

(declare-fun b!2691192 () Bool)

(declare-fun tp!851155 () Bool)

(assert (=> b!2691192 (= e!1696689 tp!851155)))

(declare-fun setIsEmpty!21136 () Bool)

(assert (=> setIsEmpty!21136 setRes!21136))

(assert (=> b!2690747 (= tp!851030 e!1696691)))

(assert (= b!2691190 b!2691191))

(assert (= (and b!2691190 condSetEmpty!21136) setIsEmpty!21136))

(assert (= (and b!2691190 (not condSetEmpty!21136)) setNonEmpty!21136))

(assert (= setNonEmpty!21136 b!2691192))

(assert (= (and b!2690747 ((_ is Cons!31031) (zeroValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) b!2691190))

(declare-fun m!3068919 () Bool)

(assert (=> setNonEmpty!21136 m!3068919))

(declare-fun m!3068921 () Bool)

(assert (=> b!2691190 m!3068921))

(declare-fun e!1696692 () Bool)

(declare-fun setNonEmpty!21137 () Bool)

(declare-fun setElem!21137 () Context!4326)

(declare-fun tp!851157 () Bool)

(declare-fun setRes!21137 () Bool)

(assert (=> setNonEmpty!21137 (= setRes!21137 (and tp!851157 (inv!42073 setElem!21137) e!1696692))))

(declare-fun setRest!21137 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21137 (= (_2!17869 (h!36451 (minValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21137 true) setRest!21137))))

(declare-fun e!1696694 () Bool)

(declare-fun b!2691193 () Bool)

(declare-fun tp!851156 () Bool)

(declare-fun e!1696693 () Bool)

(declare-fun tp!851158 () Bool)

(assert (=> b!2691193 (= e!1696694 (and tp!851158 (inv!42073 (_2!17868 (_1!17869 (h!36451 (minValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))))) e!1696693 tp_is_empty!13847 setRes!21137 tp!851156))))

(declare-fun condSetEmpty!21137 () Bool)

(assert (=> b!2691193 (= condSetEmpty!21137 (= (_2!17869 (h!36451 (minValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691194 () Bool)

(declare-fun tp!851159 () Bool)

(assert (=> b!2691194 (= e!1696693 tp!851159)))

(declare-fun b!2691195 () Bool)

(declare-fun tp!851160 () Bool)

(assert (=> b!2691195 (= e!1696692 tp!851160)))

(declare-fun setIsEmpty!21137 () Bool)

(assert (=> setIsEmpty!21137 setRes!21137))

(assert (=> b!2690747 (= tp!851029 e!1696694)))

(assert (= b!2691193 b!2691194))

(assert (= (and b!2691193 condSetEmpty!21137) setIsEmpty!21137))

(assert (= (and b!2691193 (not condSetEmpty!21137)) setNonEmpty!21137))

(assert (= setNonEmpty!21137 b!2691195))

(assert (= (and b!2690747 ((_ is Cons!31031) (minValue!3765 (v!32825 (underlying!7215 (v!32826 (underlying!7216 (cache!3555 cacheDown!499)))))))) b!2691193))

(declare-fun m!3068923 () Bool)

(assert (=> setNonEmpty!21137 m!3068923))

(declare-fun m!3068925 () Bool)

(assert (=> b!2691193 m!3068925))

(declare-fun b!2691206 () Bool)

(declare-fun e!1696697 () Bool)

(assert (=> b!2691206 (= e!1696697 tp_is_empty!13847)))

(declare-fun b!2691208 () Bool)

(declare-fun tp!851174 () Bool)

(assert (=> b!2691208 (= e!1696697 tp!851174)))

(assert (=> b!2690767 (= tp!851023 e!1696697)))

(declare-fun b!2691209 () Bool)

(declare-fun tp!851175 () Bool)

(declare-fun tp!851172 () Bool)

(assert (=> b!2691209 (= e!1696697 (and tp!851175 tp!851172))))

(declare-fun b!2691207 () Bool)

(declare-fun tp!851171 () Bool)

(declare-fun tp!851173 () Bool)

(assert (=> b!2691207 (= e!1696697 (and tp!851171 tp!851173))))

(assert (= (and b!2690767 ((_ is ElementMatch!7889) (regex!4737 (h!36449 rules!1381)))) b!2691206))

(assert (= (and b!2690767 ((_ is Concat!12849) (regex!4737 (h!36449 rules!1381)))) b!2691207))

(assert (= (and b!2690767 ((_ is Star!7889) (regex!4737 (h!36449 rules!1381)))) b!2691208))

(assert (= (and b!2690767 ((_ is Union!7889) (regex!4737 (h!36449 rules!1381)))) b!2691209))

(declare-fun b!2691224 () Bool)

(declare-fun e!1696711 () Bool)

(declare-fun tp!851198 () Bool)

(assert (=> b!2691224 (= e!1696711 tp!851198)))

(declare-fun tp!851200 () Bool)

(declare-fun setRes!21143 () Bool)

(declare-fun mapValue!16048 () List!31132)

(declare-fun e!1696712 () Bool)

(declare-fun b!2691225 () Bool)

(declare-fun e!1696714 () Bool)

(assert (=> b!2691225 (= e!1696714 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 mapValue!16048)))) e!1696712 tp_is_empty!13847 setRes!21143 tp!851200))))

(declare-fun condSetEmpty!21143 () Bool)

(assert (=> b!2691225 (= condSetEmpty!21143 (= (_2!17871 (h!36452 mapValue!16048)) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun setIsEmpty!21142 () Bool)

(declare-fun setRes!21142 () Bool)

(assert (=> setIsEmpty!21142 setRes!21142))

(declare-fun b!2691226 () Bool)

(declare-fun e!1696715 () Bool)

(declare-fun tp!851197 () Bool)

(assert (=> b!2691226 (= e!1696715 tp!851197)))

(declare-fun mapIsEmpty!16048 () Bool)

(declare-fun mapRes!16048 () Bool)

(assert (=> mapIsEmpty!16048 mapRes!16048))

(declare-fun b!2691227 () Bool)

(declare-fun tp!851199 () Bool)

(assert (=> b!2691227 (= e!1696712 tp!851199)))

(declare-fun condMapEmpty!16048 () Bool)

(declare-fun mapDefault!16048 () List!31132)

(assert (=> mapNonEmpty!16042 (= condMapEmpty!16048 (= mapRest!16041 ((as const (Array (_ BitVec 32) List!31132)) mapDefault!16048)))))

(declare-fun e!1696713 () Bool)

(assert (=> mapNonEmpty!16042 (= tp!851031 (and e!1696713 mapRes!16048))))

(declare-fun setIsEmpty!21143 () Bool)

(assert (=> setIsEmpty!21143 setRes!21143))

(declare-fun b!2691228 () Bool)

(declare-fun tp!851201 () Bool)

(assert (=> b!2691228 (= e!1696713 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 mapDefault!16048)))) e!1696715 tp_is_empty!13847 setRes!21142 tp!851201))))

(declare-fun condSetEmpty!21142 () Bool)

(assert (=> b!2691228 (= condSetEmpty!21142 (= (_2!17871 (h!36452 mapDefault!16048)) ((as const (Array Context!4326 Bool)) false)))))

(declare-fun b!2691229 () Bool)

(declare-fun e!1696710 () Bool)

(declare-fun tp!851194 () Bool)

(assert (=> b!2691229 (= e!1696710 tp!851194)))

(declare-fun mapNonEmpty!16048 () Bool)

(declare-fun tp!851195 () Bool)

(assert (=> mapNonEmpty!16048 (= mapRes!16048 (and tp!851195 e!1696714))))

(declare-fun mapKey!16048 () (_ BitVec 32))

(declare-fun mapRest!16048 () (Array (_ BitVec 32) List!31132))

(assert (=> mapNonEmpty!16048 (= mapRest!16041 (store mapRest!16048 mapKey!16048 mapValue!16048))))

(declare-fun tp!851202 () Bool)

(declare-fun setNonEmpty!21142 () Bool)

(declare-fun setElem!21143 () Context!4326)

(assert (=> setNonEmpty!21142 (= setRes!21143 (and tp!851202 (inv!42073 setElem!21143) e!1696710))))

(declare-fun setRest!21142 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21142 (= (_2!17871 (h!36452 mapValue!16048)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21143 true) setRest!21142))))

(declare-fun tp!851196 () Bool)

(declare-fun setNonEmpty!21143 () Bool)

(declare-fun setElem!21142 () Context!4326)

(assert (=> setNonEmpty!21143 (= setRes!21142 (and tp!851196 (inv!42073 setElem!21142) e!1696711))))

(declare-fun setRest!21143 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21143 (= (_2!17871 (h!36452 mapDefault!16048)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21142 true) setRest!21143))))

(assert (= (and mapNonEmpty!16042 condMapEmpty!16048) mapIsEmpty!16048))

(assert (= (and mapNonEmpty!16042 (not condMapEmpty!16048)) mapNonEmpty!16048))

(assert (= b!2691225 b!2691227))

(assert (= (and b!2691225 condSetEmpty!21143) setIsEmpty!21143))

(assert (= (and b!2691225 (not condSetEmpty!21143)) setNonEmpty!21142))

(assert (= setNonEmpty!21142 b!2691229))

(assert (= (and mapNonEmpty!16048 ((_ is Cons!31032) mapValue!16048)) b!2691225))

(assert (= b!2691228 b!2691226))

(assert (= (and b!2691228 condSetEmpty!21142) setIsEmpty!21142))

(assert (= (and b!2691228 (not condSetEmpty!21142)) setNonEmpty!21143))

(assert (= setNonEmpty!21143 b!2691224))

(assert (= (and mapNonEmpty!16042 ((_ is Cons!31032) mapDefault!16048)) b!2691228))

(declare-fun m!3068927 () Bool)

(assert (=> mapNonEmpty!16048 m!3068927))

(declare-fun m!3068929 () Bool)

(assert (=> setNonEmpty!21143 m!3068929))

(declare-fun m!3068931 () Bool)

(assert (=> setNonEmpty!21142 m!3068931))

(declare-fun m!3068933 () Bool)

(assert (=> b!2691225 m!3068933))

(declare-fun m!3068935 () Bool)

(assert (=> b!2691228 m!3068935))

(declare-fun b!2691230 () Bool)

(declare-fun e!1696717 () Bool)

(declare-fun tp!851205 () Bool)

(assert (=> b!2691230 (= e!1696717 tp!851205)))

(declare-fun setIsEmpty!21144 () Bool)

(declare-fun setRes!21144 () Bool)

(assert (=> setIsEmpty!21144 setRes!21144))

(declare-fun setNonEmpty!21144 () Bool)

(declare-fun e!1696716 () Bool)

(declare-fun setElem!21144 () Context!4326)

(declare-fun tp!851206 () Bool)

(assert (=> setNonEmpty!21144 (= setRes!21144 (and tp!851206 (inv!42073 setElem!21144) e!1696716))))

(declare-fun setRest!21144 () (InoxSet Context!4326))

(assert (=> setNonEmpty!21144 (= (_2!17871 (h!36452 mapValue!16041)) ((_ map or) (store ((as const (Array Context!4326 Bool)) false) setElem!21144 true) setRest!21144))))

(declare-fun e!1696718 () Bool)

(declare-fun tp!851204 () Bool)

(declare-fun b!2691231 () Bool)

(assert (=> b!2691231 (= e!1696718 (and (inv!42073 (_1!17870 (_1!17871 (h!36452 mapValue!16041)))) e!1696717 tp_is_empty!13847 setRes!21144 tp!851204))))

(declare-fun condSetEmpty!21144 () Bool)

(assert (=> b!2691231 (= condSetEmpty!21144 (= (_2!17871 (h!36452 mapValue!16041)) ((as const (Array Context!4326 Bool)) false)))))

(assert (=> mapNonEmpty!16042 (= tp!851037 e!1696718)))

(declare-fun b!2691232 () Bool)

(declare-fun tp!851203 () Bool)

(assert (=> b!2691232 (= e!1696716 tp!851203)))

(assert (= b!2691231 b!2691230))

(assert (= (and b!2691231 condSetEmpty!21144) setIsEmpty!21144))

(assert (= (and b!2691231 (not condSetEmpty!21144)) setNonEmpty!21144))

(assert (= setNonEmpty!21144 b!2691232))

(assert (= (and mapNonEmpty!16042 ((_ is Cons!31032) mapValue!16041)) b!2691231))

(declare-fun m!3068937 () Bool)

(assert (=> setNonEmpty!21144 m!3068937))

(declare-fun m!3068939 () Bool)

(assert (=> b!2691231 m!3068939))

(declare-fun tp!851208 () Bool)

(declare-fun b!2691233 () Bool)

(declare-fun tp!851207 () Bool)

(declare-fun e!1696720 () Bool)

(assert (=> b!2691233 (= e!1696720 (and (inv!42060 (left!23939 (c!433768 totalInput!354))) tp!851207 (inv!42060 (right!24269 (c!433768 totalInput!354))) tp!851208))))

(declare-fun b!2691235 () Bool)

(declare-fun e!1696719 () Bool)

(declare-fun tp!851209 () Bool)

(assert (=> b!2691235 (= e!1696719 tp!851209)))

(declare-fun b!2691234 () Bool)

(assert (=> b!2691234 (= e!1696720 (and (inv!42071 (xs!12739 (c!433768 totalInput!354))) e!1696719))))

(assert (=> b!2690773 (= tp!851024 (and (inv!42060 (c!433768 totalInput!354)) e!1696720))))

(assert (= (and b!2690773 ((_ is Node!9703) (c!433768 totalInput!354))) b!2691233))

(assert (= b!2691234 b!2691235))

(assert (= (and b!2690773 ((_ is Leaf!14816) (c!433768 totalInput!354))) b!2691234))

(declare-fun m!3068941 () Bool)

(assert (=> b!2691233 m!3068941))

(declare-fun m!3068943 () Bool)

(assert (=> b!2691233 m!3068943))

(declare-fun m!3068945 () Bool)

(assert (=> b!2691234 m!3068945))

(assert (=> b!2690773 m!3068021))

(check-sat (not b!2691043) (not b!2691208) (not b!2691148) (not b!2691187) (not d!771105) (not b!2690972) (not b!2691040) (not b!2690924) (not b!2690856) (not b!2691087) (not b!2691090) (not b!2691228) b_and!199103 (not b!2691015) (not d!771117) (not bm!173369) (not b!2691011) (not mapNonEmpty!16045) (not b!2691186) (not b!2691181) (not b!2691080) (not b!2690922) (not b!2691135) (not b!2690866) (not tb!151011) (not b!2691193) (not b!2690911) (not d!771135) (not b!2691084) (not d!771157) (not b!2691099) (not b!2690773) (not b!2691037) (not b!2691088) (not setNonEmpty!21130) (not b!2691085) (not b!2691021) (not b!2691046) (not d!771145) (not b!2691122) (not b!2691071) (not d!771093) (not d!771233) (not b!2691068) (not b!2690932) (not b!2691063) (not b!2691059) (not setNonEmpty!21143) (not d!771139) (not b!2690929) (not d!771151) (not b_lambda!82133) (not b!2690921) (not b!2690945) (not b!2690827) (not d!771177) (not b!2691014) (not b!2690797) (not b!2690916) (not d!771199) (not b!2690955) (not b_next!76695) (not b!2691026) (not b!2690798) (not b!2691231) (not b!2691225) (not d!771209) (not b!2691008) (not d!771085) (not b!2690953) (not b!2691012) (not d!771203) (not d!771211) (not b!2690909) (not b!2690846) (not b!2691081) (not d!771077) (not b!2691234) (not b!2690987) (not b!2691195) (not b!2690940) (not b!2690931) (not d!771215) (not d!771163) (not b!2690983) (not d!771133) (not b!2691169) (not b!2690937) (not b!2690801) (not d!771103) b_and!199089 (not b!2691152) (not b!2691194) (not d!771161) (not b!2691041) (not b!2691144) (not b_next!76699) (not b!2690984) (not b!2691150) (not b!2690908) (not b!2690947) (not b_next!76703) (not b!2691023) (not d!771115) (not b!2691036) (not b!2690944) (not d!771107) (not b!2691188) (not setNonEmpty!21123) (not b!2691024) (not b!2691224) (not setNonEmpty!21135) (not b!2691183) (not b!2690830) (not setNonEmpty!21142) (not b!2691113) (not d!771109) (not d!771217) (not b!2690815) (not b!2691096) (not d!771159) (not b!2691097) (not b!2690913) b_and!199101 (not mapNonEmpty!16048) (not b!2690917) (not b!2691233) (not b!2690923) (not b!2691192) (not b!2690946) (not b!2691022) (not d!771197) (not b!2691074) (not b!2691149) (not b!2691146) (not b!2691006) (not d!771195) (not b!2691209) (not tb!151009) (not d!771193) (not b!2691167) (not b!2690813) b_and!199087 (not b!2691182) (not d!771131) (not d!771143) (not d!771225) (not b!2690845) b_and!199097 (not b!2691039) (not b_next!76701) (not b!2691002) (not d!771181) (not b!2691098) (not b!2691004) (not b!2690828) (not b!2691170) (not d!771229) (not b!2690776) (not d!771111) (not d!771101) (not d!771169) (not d!771179) (not b!2691133) (not b!2691013) (not b!2690884) (not b!2690867) (not b!2690910) (not b!2691172) (not d!771125) (not d!771167) (not d!771183) (not b!2690750) (not b!2691185) (not b!2691123) (not d!771185) (not d!771149) (not b!2690968) (not setNonEmpty!21137) (not d!771205) (not b!2691112) (not b!2690906) (not b!2691229) (not b!2690948) (not d!771201) (not b!2690952) (not b!2691171) (not b!2691168) (not b!2691207) (not b!2690967) (not b!2691111) (not b!2690914) (not b!2690954) (not b!2691227) (not b!2690943) (not b!2691020) (not b!2691230) (not b!2690799) (not b!2690935) (not b!2691189) (not b!2690818) (not setNonEmpty!21124) (not b!2690907) (not b!2691076) (not d!771147) (not b_next!76697) (not b!2691184) (not b!2690806) (not b!2691100) (not b!2691151) b_and!199105 (not d!771079) (not d!771095) (not b_next!76691) (not d!771097) (not b!2690928) (not b!2690950) (not b!2691145) (not b!2691072) (not d!771231) (not setNonEmpty!21136) (not b!2691089) (not b!2690934) (not b!2690986) (not b!2691226) (not b_lambda!82131) (not b!2690966) (not d!771191) (not b!2690865) (not b!2691018) (not b!2690951) (not b!2690919) (not b!2691067) (not b!2691091) (not d!771129) (not d!771207) (not d!771119) (not b!2691044) (not b!2690800) (not b!2690803) (not b!2691190) (not b!2691102) (not b!2690883) (not b!2690920) (not b!2690888) (not b!2690829) (not b!2691191) (not d!771221) (not setNonEmpty!21134) (not d!771219) (not d!771227) (not d!771137) (not b!2691064) (not d!771099) (not b!2690835) (not b!2690926) (not b!2691093) (not setNonEmpty!21144) (not b!2690854) (not d!771189) (not b!2690957) (not b!2690762) (not d!771165) (not d!771187) (not b_next!76693) (not d!771223) (not b_next!76689) (not b!2691042) (not b!2690933) (not b!2690969) (not b!2691235) (not b!2690885) (not b!2691060) (not d!771141) (not setNonEmpty!21131) (not b!2691094) tp_is_empty!13847 (not setNonEmpty!21125) (not b!2691147) b_and!199091 (not d!771213) (not d!771127) (not bm!173365) (not b!2691134) (not b!2691061) (not bm!173368) (not b!2691077) (not b!2691232) b_and!199093)
(check-sat b_and!199103 (not b_next!76695) (not b_next!76703) b_and!199101 (not b_next!76701) (not b_next!76697) b_and!199089 (not b_next!76699) b_and!199097 b_and!199087 b_and!199105 (not b_next!76691) (not b_next!76693) (not b_next!76689) b_and!199091 b_and!199093)
