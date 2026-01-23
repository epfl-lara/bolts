; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266096 () Bool)

(assert start!266096)

(declare-fun b!2745077 () Bool)

(declare-fun b_free!77265 () Bool)

(declare-fun b_next!77969 () Bool)

(assert (=> b!2745077 (= b_free!77265 (not b_next!77969))))

(declare-fun tp!864147 () Bool)

(declare-fun b_and!201985 () Bool)

(assert (=> b!2745077 (= tp!864147 b_and!201985)))

(declare-fun b_free!77267 () Bool)

(declare-fun b_next!77971 () Bool)

(assert (=> b!2745077 (= b_free!77267 (not b_next!77971))))

(declare-fun tp!864160 () Bool)

(declare-fun b_and!201987 () Bool)

(assert (=> b!2745077 (= tp!864160 b_and!201987)))

(declare-fun b!2745084 () Bool)

(declare-fun b_free!77269 () Bool)

(declare-fun b_next!77973 () Bool)

(assert (=> b!2745084 (= b_free!77269 (not b_next!77973))))

(declare-fun tp!864150 () Bool)

(declare-fun b_and!201989 () Bool)

(assert (=> b!2745084 (= tp!864150 b_and!201989)))

(declare-fun b!2745088 () Bool)

(declare-fun b_free!77271 () Bool)

(declare-fun b_next!77975 () Bool)

(assert (=> b!2745088 (= b_free!77271 (not b_next!77975))))

(declare-fun tp!864151 () Bool)

(declare-fun b_and!201991 () Bool)

(assert (=> b!2745088 (= tp!864151 b_and!201991)))

(declare-fun b!2745093 () Bool)

(declare-fun b_free!77273 () Bool)

(declare-fun b_next!77977 () Bool)

(assert (=> b!2745093 (= b_free!77273 (not b_next!77977))))

(declare-fun tp!864155 () Bool)

(declare-fun b_and!201993 () Bool)

(assert (=> b!2745093 (= tp!864155 b_and!201993)))

(declare-fun b!2745082 () Bool)

(declare-fun b_free!77275 () Bool)

(declare-fun b_next!77979 () Bool)

(assert (=> b!2745082 (= b_free!77275 (not b_next!77979))))

(declare-fun tp!864154 () Bool)

(declare-fun b_and!201995 () Bool)

(assert (=> b!2745082 (= tp!864154 b_and!201995)))

(declare-fun b!2745072 () Bool)

(declare-fun res!1152105 () Bool)

(declare-fun e!1729185 () Bool)

(assert (=> b!2745072 (=> (not res!1152105) (not e!1729185))))

(declare-datatypes ((List!31695 0))(
  ( (Nil!31595) (Cons!31595 (h!37015 (_ BitVec 16)) (t!227783 List!31695)) )
))
(declare-datatypes ((TokenValue!5062 0))(
  ( (FloatLiteralValue!10124 (text!35879 List!31695)) (TokenValueExt!5061 (__x!20409 Int)) (Broken!25310 (value!155516 List!31695)) (Object!5161) (End!5062) (Def!5062) (Underscore!5062) (Match!5062) (Else!5062) (Error!5062) (Case!5062) (If!5062) (Extends!5062) (Abstract!5062) (Class!5062) (Val!5062) (DelimiterValue!10124 (del!5122 List!31695)) (KeywordValue!5068 (value!155517 List!31695)) (CommentValue!10124 (value!155518 List!31695)) (WhitespaceValue!10124 (value!155519 List!31695)) (IndentationValue!5062 (value!155520 List!31695)) (String!35215) (Int32!5062) (Broken!25311 (value!155521 List!31695)) (Boolean!5063) (Unit!45518) (OperatorValue!5065 (op!5122 List!31695)) (IdentifierValue!10124 (value!155522 List!31695)) (IdentifierValue!10125 (value!155523 List!31695)) (WhitespaceValue!10125 (value!155524 List!31695)) (True!10124) (False!10124) (Broken!25312 (value!155525 List!31695)) (Broken!25313 (value!155526 List!31695)) (True!10125) (RightBrace!5062) (RightBracket!5062) (Colon!5062) (Null!5062) (Comma!5062) (LeftBracket!5062) (False!10125) (LeftBrace!5062) (ImaginaryLiteralValue!5062 (text!35880 List!31695)) (StringLiteralValue!15186 (value!155527 List!31695)) (EOFValue!5062 (value!155528 List!31695)) (IdentValue!5062 (value!155529 List!31695)) (DelimiterValue!10125 (value!155530 List!31695)) (DedentValue!5062 (value!155531 List!31695)) (NewLineValue!5062 (value!155532 List!31695)) (IntegerValue!15186 (value!155533 (_ BitVec 32)) (text!35881 List!31695)) (IntegerValue!15187 (value!155534 Int) (text!35882 List!31695)) (Times!5062) (Or!5062) (Equal!5062) (Minus!5062) (Broken!25314 (value!155535 List!31695)) (And!5062) (Div!5062) (LessEqual!5062) (Mod!5062) (Concat!13057) (Not!5062) (Plus!5062) (SpaceValue!5062 (value!155536 List!31695)) (IntegerValue!15188 (value!155537 Int) (text!35883 List!31695)) (StringLiteralValue!15187 (text!35884 List!31695)) (FloatLiteralValue!10125 (text!35885 List!31695)) (BytesLiteralValue!5062 (value!155538 List!31695)) (CommentValue!10125 (value!155539 List!31695)) (StringLiteralValue!15188 (value!155540 List!31695)) (ErrorTokenValue!5062 (msg!5123 List!31695)) )
))
(declare-datatypes ((C!16148 0))(
  ( (C!16149 (val!10008 Int)) )
))
(declare-datatypes ((List!31696 0))(
  ( (Nil!31596) (Cons!31596 (h!37016 C!16148) (t!227784 List!31696)) )
))
(declare-datatypes ((IArray!19771 0))(
  ( (IArray!19772 (innerList!9943 List!31696)) )
))
(declare-datatypes ((Conc!9883 0))(
  ( (Node!9883 (left!24226 Conc!9883) (right!24556 Conc!9883) (csize!19996 Int) (cheight!10094 Int)) (Leaf!15049 (xs!12990 IArray!19771) (csize!19997 Int)) (Empty!9883) )
))
(declare-datatypes ((BalanceConc!19380 0))(
  ( (BalanceConc!19381 (c!444819 Conc!9883)) )
))
(declare-datatypes ((TokenValueInjection!9564 0))(
  ( (TokenValueInjection!9565 (toValue!6838 Int) (toChars!6697 Int)) )
))
(declare-datatypes ((String!35216 0))(
  ( (String!35217 (value!155541 String)) )
))
(declare-datatypes ((Regex!7995 0))(
  ( (ElementMatch!7995 (c!444820 C!16148)) (Concat!13058 (regOne!16502 Regex!7995) (regTwo!16502 Regex!7995)) (EmptyExpr!7995) (Star!7995 (reg!8324 Regex!7995)) (EmptyLang!7995) (Union!7995 (regOne!16503 Regex!7995) (regTwo!16503 Regex!7995)) )
))
(declare-datatypes ((Rule!9480 0))(
  ( (Rule!9481 (regex!4840 Regex!7995) (tag!5344 String!35216) (isSeparator!4840 Bool) (transformation!4840 TokenValueInjection!9564)) )
))
(declare-datatypes ((List!31697 0))(
  ( (Nil!31597) (Cons!31597 (h!37017 Rule!9480) (t!227785 List!31697)) )
))
(declare-fun rulesArg!249 () List!31697)

(declare-fun isEmpty!18034 (List!31697) Bool)

(assert (=> b!2745072 (= res!1152105 (not (isEmpty!18034 rulesArg!249)))))

(declare-fun b!2745073 () Bool)

(declare-fun e!1729187 () Bool)

(declare-fun e!1729202 () Bool)

(declare-datatypes ((List!31698 0))(
  ( (Nil!31598) (Cons!31598 (h!37018 Regex!7995) (t!227786 List!31698)) )
))
(declare-datatypes ((Context!4426 0))(
  ( (Context!4427 (exprs!2713 List!31698)) )
))
(declare-datatypes ((tuple3!4404 0))(
  ( (tuple3!4405 (_1!18374 Regex!7995) (_2!18374 Context!4426) (_3!2672 C!16148)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31404 0))(
  ( (tuple2!31405 (_1!18375 tuple3!4404) (_2!18375 (InoxSet Context!4426))) )
))
(declare-datatypes ((List!31699 0))(
  ( (Nil!31599) (Cons!31599 (h!37019 tuple2!31404) (t!227787 List!31699)) )
))
(declare-datatypes ((array!12833 0))(
  ( (array!12834 (arr!5731 (Array (_ BitVec 32) List!31699)) (size!24395 (_ BitVec 32))) )
))
(declare-datatypes ((array!12835 0))(
  ( (array!12836 (arr!5732 (Array (_ BitVec 32) (_ BitVec 64))) (size!24396 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7206 0))(
  ( (LongMapFixedSize!7207 (defaultEntry!3988 Int) (mask!9337 (_ BitVec 32)) (extraKeys!3852 (_ BitVec 32)) (zeroValue!3862 List!31699) (minValue!3862 List!31699) (_size!7249 (_ BitVec 32)) (_keys!3903 array!12835) (_values!3884 array!12833) (_vacant!3664 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14221 0))(
  ( (Cell!14222 (v!33232 LongMapFixedSize!7206)) )
))
(declare-datatypes ((MutLongMap!3603 0))(
  ( (LongMap!3603 (underlying!7409 Cell!14221)) (MutLongMapExt!3602 (__x!20410 Int)) )
))
(declare-fun lt!971496 () MutLongMap!3603)

(get-info :version)

(assert (=> b!2745073 (= e!1729187 (and e!1729202 ((_ is LongMap!3603) lt!971496)))))

(declare-datatypes ((Cell!14223 0))(
  ( (Cell!14224 (v!33233 MutLongMap!3603)) )
))
(declare-datatypes ((Hashable!3519 0))(
  ( (HashableExt!3518 (__x!20411 Int)) )
))
(declare-datatypes ((MutableMap!3509 0))(
  ( (MutableMapExt!3508 (__x!20412 Int)) (HashMap!3509 (underlying!7410 Cell!14223) (hashF!5551 Hashable!3519) (_size!7250 (_ BitVec 32)) (defaultValue!3680 Int)) )
))
(declare-datatypes ((CacheDown!2334 0))(
  ( (CacheDown!2335 (cache!3652 MutableMap!3509)) )
))
(declare-fun cacheDown!646 () CacheDown!2334)

(assert (=> b!2745073 (= lt!971496 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))

(declare-fun res!1152106 () Bool)

(assert (=> start!266096 (=> (not res!1152106) (not e!1729185))))

(declare-datatypes ((LexerInterface!4433 0))(
  ( (LexerInterfaceExt!4430 (__x!20413 Int)) (Lexer!4431) )
))
(declare-fun thiss!15207 () LexerInterface!4433)

(assert (=> start!266096 (= res!1152106 ((_ is Lexer!4431) thiss!15207))))

(assert (=> start!266096 e!1729185))

(assert (=> start!266096 true))

(declare-fun e!1729192 () Bool)

(assert (=> start!266096 e!1729192))

(declare-datatypes ((tuple2!31406 0))(
  ( (tuple2!31407 (_1!18376 Context!4426) (_2!18376 C!16148)) )
))
(declare-datatypes ((tuple2!31408 0))(
  ( (tuple2!31409 (_1!18377 tuple2!31406) (_2!18377 (InoxSet Context!4426))) )
))
(declare-datatypes ((List!31700 0))(
  ( (Nil!31600) (Cons!31600 (h!37020 tuple2!31408) (t!227788 List!31700)) )
))
(declare-datatypes ((array!12837 0))(
  ( (array!12838 (arr!5733 (Array (_ BitVec 32) List!31700)) (size!24397 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7208 0))(
  ( (LongMapFixedSize!7209 (defaultEntry!3989 Int) (mask!9338 (_ BitVec 32)) (extraKeys!3853 (_ BitVec 32)) (zeroValue!3863 List!31700) (minValue!3863 List!31700) (_size!7251 (_ BitVec 32)) (_keys!3904 array!12835) (_values!3885 array!12837) (_vacant!3665 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14225 0))(
  ( (Cell!14226 (v!33234 LongMapFixedSize!7208)) )
))
(declare-datatypes ((MutLongMap!3604 0))(
  ( (LongMap!3604 (underlying!7411 Cell!14225)) (MutLongMapExt!3603 (__x!20414 Int)) )
))
(declare-datatypes ((Cell!14227 0))(
  ( (Cell!14228 (v!33235 MutLongMap!3604)) )
))
(declare-datatypes ((Hashable!3520 0))(
  ( (HashableExt!3519 (__x!20415 Int)) )
))
(declare-datatypes ((MutableMap!3510 0))(
  ( (MutableMapExt!3509 (__x!20416 Int)) (HashMap!3510 (underlying!7412 Cell!14227) (hashF!5552 Hashable!3520) (_size!7252 (_ BitVec 32)) (defaultValue!3681 Int)) )
))
(declare-datatypes ((CacheUp!2216 0))(
  ( (CacheUp!2217 (cache!3653 MutableMap!3510)) )
))
(declare-fun cacheUp!633 () CacheUp!2216)

(declare-fun e!1729195 () Bool)

(declare-fun inv!42946 (CacheUp!2216) Bool)

(assert (=> start!266096 (and (inv!42946 cacheUp!633) e!1729195)))

(declare-fun e!1729201 () Bool)

(declare-fun inv!42947 (CacheDown!2334) Bool)

(assert (=> start!266096 (and (inv!42947 cacheDown!646) e!1729201)))

(declare-fun b!2745074 () Bool)

(declare-fun res!1152104 () Bool)

(assert (=> b!2745074 (=> (not res!1152104) (not e!1729185))))

(declare-fun valid!2794 (CacheDown!2334) Bool)

(assert (=> b!2745074 (= res!1152104 (valid!2794 cacheDown!646))))

(declare-fun b!2745075 () Bool)

(declare-fun e!1729190 () Bool)

(assert (=> b!2745075 (= e!1729201 e!1729190)))

(declare-fun b!2745076 () Bool)

(declare-fun e!1729199 () Bool)

(declare-fun e!1729204 () Bool)

(assert (=> b!2745076 (= e!1729199 e!1729204)))

(declare-fun mapIsEmpty!16433 () Bool)

(declare-fun mapRes!16434 () Bool)

(assert (=> mapIsEmpty!16433 mapRes!16434))

(declare-fun e!1729188 () Bool)

(assert (=> b!2745077 (= e!1729188 (and tp!864147 tp!864160))))

(declare-fun b!2745078 () Bool)

(declare-fun res!1152103 () Bool)

(assert (=> b!2745078 (=> (not res!1152103) (not e!1729185))))

(declare-fun rulesValidInductive!1703 (LexerInterface!4433 List!31697) Bool)

(assert (=> b!2745078 (= res!1152103 (rulesValidInductive!1703 thiss!15207 rulesArg!249))))

(declare-fun b!2745079 () Bool)

(declare-fun e!1729191 () Bool)

(declare-fun e!1729200 () Bool)

(assert (=> b!2745079 (= e!1729191 e!1729200)))

(declare-fun mapIsEmpty!16434 () Bool)

(declare-fun mapRes!16433 () Bool)

(assert (=> mapIsEmpty!16434 mapRes!16433))

(declare-fun b!2745080 () Bool)

(declare-fun e!1729196 () Bool)

(declare-fun lt!971495 () MutLongMap!3604)

(assert (=> b!2745080 (= e!1729196 (and e!1729199 ((_ is LongMap!3604) lt!971495)))))

(assert (=> b!2745080 (= lt!971495 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))

(declare-fun b!2745081 () Bool)

(declare-fun e!1729194 () Bool)

(assert (=> b!2745081 (= e!1729195 e!1729194)))

(declare-fun mapNonEmpty!16433 () Bool)

(declare-fun tp!864159 () Bool)

(declare-fun tp!864149 () Bool)

(assert (=> mapNonEmpty!16433 (= mapRes!16434 (and tp!864159 tp!864149))))

(declare-fun mapKey!16434 () (_ BitVec 32))

(declare-fun mapRest!16433 () (Array (_ BitVec 32) List!31700))

(declare-fun mapValue!16434 () List!31700)

(assert (=> mapNonEmpty!16433 (= (arr!5733 (_values!3885 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) (store mapRest!16433 mapKey!16434 mapValue!16434))))

(declare-fun e!1729203 () Bool)

(declare-fun tp!864156 () Bool)

(declare-fun tp!864144 () Bool)

(declare-fun array_inv!4094 (array!12835) Bool)

(declare-fun array_inv!4095 (array!12833) Bool)

(assert (=> b!2745082 (= e!1729200 (and tp!864154 tp!864156 tp!864144 (array_inv!4094 (_keys!3903 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) (array_inv!4095 (_values!3884 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) e!1729203))))

(declare-fun b!2745083 () Bool)

(declare-fun e!1729189 () Bool)

(assert (=> b!2745083 (= e!1729204 e!1729189)))

(declare-fun tp!864152 () Bool)

(declare-fun e!1729197 () Bool)

(declare-fun tp!864146 () Bool)

(declare-fun array_inv!4096 (array!12837) Bool)

(assert (=> b!2745084 (= e!1729189 (and tp!864150 tp!864152 tp!864146 (array_inv!4094 (_keys!3904 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) (array_inv!4096 (_values!3885 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) e!1729197))))

(declare-fun b!2745085 () Bool)

(assert (=> b!2745085 (= e!1729202 e!1729191)))

(declare-fun tp!864161 () Bool)

(declare-fun b!2745086 () Bool)

(declare-fun e!1729205 () Bool)

(declare-fun inv!42945 (String!35216) Bool)

(declare-fun inv!42948 (TokenValueInjection!9564) Bool)

(assert (=> b!2745086 (= e!1729205 (and tp!864161 (inv!42945 (tag!5344 (h!37017 rulesArg!249))) (inv!42948 (transformation!4840 (h!37017 rulesArg!249))) e!1729188))))

(declare-fun b!2745087 () Bool)

(declare-fun tp!864157 () Bool)

(assert (=> b!2745087 (= e!1729192 (and e!1729205 tp!864157))))

(declare-fun mapNonEmpty!16434 () Bool)

(declare-fun tp!864145 () Bool)

(declare-fun tp!864148 () Bool)

(assert (=> mapNonEmpty!16434 (= mapRes!16433 (and tp!864145 tp!864148))))

(declare-fun mapValue!16433 () List!31699)

(declare-fun mapRest!16434 () (Array (_ BitVec 32) List!31699))

(declare-fun mapKey!16433 () (_ BitVec 32))

(assert (=> mapNonEmpty!16434 (= (arr!5731 (_values!3884 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) (store mapRest!16434 mapKey!16433 mapValue!16433))))

(assert (=> b!2745088 (= e!1729194 (and e!1729196 tp!864151))))

(declare-fun b!2745089 () Bool)

(declare-fun size!24398 (List!31697) Int)

(assert (=> b!2745089 (= e!1729185 (< (size!24398 rulesArg!249) 0))))

(declare-fun b!2745090 () Bool)

(declare-fun tp!864158 () Bool)

(assert (=> b!2745090 (= e!1729203 (and tp!864158 mapRes!16433))))

(declare-fun condMapEmpty!16433 () Bool)

(declare-fun mapDefault!16434 () List!31699)

(assert (=> b!2745090 (= condMapEmpty!16433 (= (arr!5731 (_values!3884 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31699)) mapDefault!16434)))))

(declare-fun b!2745091 () Bool)

(declare-fun res!1152107 () Bool)

(assert (=> b!2745091 (=> (not res!1152107) (not e!1729185))))

(declare-fun valid!2795 (CacheUp!2216) Bool)

(assert (=> b!2745091 (= res!1152107 (valid!2795 cacheUp!633))))

(declare-fun b!2745092 () Bool)

(declare-fun tp!864153 () Bool)

(assert (=> b!2745092 (= e!1729197 (and tp!864153 mapRes!16434))))

(declare-fun condMapEmpty!16434 () Bool)

(declare-fun mapDefault!16433 () List!31700)

(assert (=> b!2745092 (= condMapEmpty!16434 (= (arr!5733 (_values!3885 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31700)) mapDefault!16433)))))

(assert (=> b!2745093 (= e!1729190 (and e!1729187 tp!864155))))

(assert (= (and start!266096 res!1152106) b!2745078))

(assert (= (and b!2745078 res!1152103) b!2745072))

(assert (= (and b!2745072 res!1152105) b!2745091))

(assert (= (and b!2745091 res!1152107) b!2745074))

(assert (= (and b!2745074 res!1152104) b!2745089))

(assert (= b!2745086 b!2745077))

(assert (= b!2745087 b!2745086))

(assert (= (and start!266096 ((_ is Cons!31597) rulesArg!249)) b!2745087))

(assert (= (and b!2745092 condMapEmpty!16434) mapIsEmpty!16433))

(assert (= (and b!2745092 (not condMapEmpty!16434)) mapNonEmpty!16433))

(assert (= b!2745084 b!2745092))

(assert (= b!2745083 b!2745084))

(assert (= b!2745076 b!2745083))

(assert (= (and b!2745080 ((_ is LongMap!3604) (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))) b!2745076))

(assert (= b!2745088 b!2745080))

(assert (= (and b!2745081 ((_ is HashMap!3510) (cache!3653 cacheUp!633))) b!2745088))

(assert (= start!266096 b!2745081))

(assert (= (and b!2745090 condMapEmpty!16433) mapIsEmpty!16434))

(assert (= (and b!2745090 (not condMapEmpty!16433)) mapNonEmpty!16434))

(assert (= b!2745082 b!2745090))

(assert (= b!2745079 b!2745082))

(assert (= b!2745085 b!2745079))

(assert (= (and b!2745073 ((_ is LongMap!3603) (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))) b!2745085))

(assert (= b!2745093 b!2745073))

(assert (= (and b!2745075 ((_ is HashMap!3509) (cache!3652 cacheDown!646))) b!2745093))

(assert (= start!266096 b!2745075))

(declare-fun m!3162015 () Bool)

(assert (=> b!2745074 m!3162015))

(declare-fun m!3162017 () Bool)

(assert (=> b!2745091 m!3162017))

(declare-fun m!3162019 () Bool)

(assert (=> mapNonEmpty!16433 m!3162019))

(declare-fun m!3162021 () Bool)

(assert (=> b!2745089 m!3162021))

(declare-fun m!3162023 () Bool)

(assert (=> b!2745082 m!3162023))

(declare-fun m!3162025 () Bool)

(assert (=> b!2745082 m!3162025))

(declare-fun m!3162027 () Bool)

(assert (=> b!2745084 m!3162027))

(declare-fun m!3162029 () Bool)

(assert (=> b!2745084 m!3162029))

(declare-fun m!3162031 () Bool)

(assert (=> b!2745078 m!3162031))

(declare-fun m!3162033 () Bool)

(assert (=> mapNonEmpty!16434 m!3162033))

(declare-fun m!3162035 () Bool)

(assert (=> start!266096 m!3162035))

(declare-fun m!3162037 () Bool)

(assert (=> start!266096 m!3162037))

(declare-fun m!3162039 () Bool)

(assert (=> b!2745072 m!3162039))

(declare-fun m!3162041 () Bool)

(assert (=> b!2745086 m!3162041))

(declare-fun m!3162043 () Bool)

(assert (=> b!2745086 m!3162043))

(check-sat b_and!201993 (not b_next!77979) (not b!2745089) (not b!2745074) b_and!201987 (not b!2745072) b_and!201985 b_and!201995 (not b!2745092) (not b!2745078) (not b_next!77971) (not b_next!77975) (not b_next!77977) (not mapNonEmpty!16434) (not b_next!77969) (not b!2745082) (not b_next!77973) (not start!266096) (not b!2745087) (not b!2745084) (not b!2745090) b_and!201991 (not b!2745091) b_and!201989 (not mapNonEmpty!16433) (not b!2745086))
(check-sat b_and!201993 (not b_next!77979) (not b_next!77969) (not b_next!77973) b_and!201987 b_and!201985 b_and!201991 b_and!201995 b_and!201989 (not b_next!77971) (not b_next!77975) (not b_next!77977))
(get-model)

(declare-fun d!795916 () Bool)

(assert (=> d!795916 (= (inv!42945 (tag!5344 (h!37017 rulesArg!249))) (= (mod (str.len (value!155541 (tag!5344 (h!37017 rulesArg!249)))) 2) 0))))

(assert (=> b!2745086 d!795916))

(declare-fun d!795918 () Bool)

(declare-fun res!1152110 () Bool)

(declare-fun e!1729208 () Bool)

(assert (=> d!795918 (=> (not res!1152110) (not e!1729208))))

(declare-fun semiInverseModEq!1998 (Int Int) Bool)

(assert (=> d!795918 (= res!1152110 (semiInverseModEq!1998 (toChars!6697 (transformation!4840 (h!37017 rulesArg!249))) (toValue!6838 (transformation!4840 (h!37017 rulesArg!249)))))))

(assert (=> d!795918 (= (inv!42948 (transformation!4840 (h!37017 rulesArg!249))) e!1729208)))

(declare-fun b!2745096 () Bool)

(declare-fun equivClasses!1899 (Int Int) Bool)

(assert (=> b!2745096 (= e!1729208 (equivClasses!1899 (toChars!6697 (transformation!4840 (h!37017 rulesArg!249))) (toValue!6838 (transformation!4840 (h!37017 rulesArg!249)))))))

(assert (= (and d!795918 res!1152110) b!2745096))

(declare-fun m!3162045 () Bool)

(assert (=> d!795918 m!3162045))

(declare-fun m!3162047 () Bool)

(assert (=> b!2745096 m!3162047))

(assert (=> b!2745086 d!795918))

(declare-fun d!795920 () Bool)

(assert (=> d!795920 (= (isEmpty!18034 rulesArg!249) ((_ is Nil!31597) rulesArg!249))))

(assert (=> b!2745072 d!795920))

(declare-fun d!795922 () Bool)

(declare-fun res!1152113 () Bool)

(declare-fun e!1729211 () Bool)

(assert (=> d!795922 (=> (not res!1152113) (not e!1729211))))

(assert (=> d!795922 (= res!1152113 ((_ is HashMap!3510) (cache!3653 cacheUp!633)))))

(assert (=> d!795922 (= (inv!42946 cacheUp!633) e!1729211)))

(declare-fun b!2745099 () Bool)

(declare-fun validCacheMapUp!336 (MutableMap!3510) Bool)

(assert (=> b!2745099 (= e!1729211 (validCacheMapUp!336 (cache!3653 cacheUp!633)))))

(assert (= (and d!795922 res!1152113) b!2745099))

(declare-fun m!3162049 () Bool)

(assert (=> b!2745099 m!3162049))

(assert (=> start!266096 d!795922))

(declare-fun d!795924 () Bool)

(declare-fun res!1152116 () Bool)

(declare-fun e!1729214 () Bool)

(assert (=> d!795924 (=> (not res!1152116) (not e!1729214))))

(assert (=> d!795924 (= res!1152116 ((_ is HashMap!3509) (cache!3652 cacheDown!646)))))

(assert (=> d!795924 (= (inv!42947 cacheDown!646) e!1729214)))

(declare-fun b!2745102 () Bool)

(declare-fun validCacheMapDown!367 (MutableMap!3509) Bool)

(assert (=> b!2745102 (= e!1729214 (validCacheMapDown!367 (cache!3652 cacheDown!646)))))

(assert (= (and d!795924 res!1152116) b!2745102))

(declare-fun m!3162051 () Bool)

(assert (=> b!2745102 m!3162051))

(assert (=> start!266096 d!795924))

(declare-fun d!795926 () Bool)

(assert (=> d!795926 (= (valid!2794 cacheDown!646) (validCacheMapDown!367 (cache!3652 cacheDown!646)))))

(declare-fun bs!490261 () Bool)

(assert (= bs!490261 d!795926))

(assert (=> bs!490261 m!3162051))

(assert (=> b!2745074 d!795926))

(declare-fun d!795928 () Bool)

(assert (=> d!795928 (= (array_inv!4094 (_keys!3903 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) (bvsge (size!24396 (_keys!3903 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745082 d!795928))

(declare-fun d!795930 () Bool)

(assert (=> d!795930 (= (array_inv!4095 (_values!3884 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) (bvsge (size!24395 (_values!3884 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745082 d!795930))

(declare-fun d!795932 () Bool)

(assert (=> d!795932 true))

(declare-fun lt!971499 () Bool)

(declare-fun lambda!100852 () Int)

(declare-fun forall!6578 (List!31697 Int) Bool)

(assert (=> d!795932 (= lt!971499 (forall!6578 rulesArg!249 lambda!100852))))

(declare-fun e!1729220 () Bool)

(assert (=> d!795932 (= lt!971499 e!1729220)))

(declare-fun res!1152122 () Bool)

(assert (=> d!795932 (=> res!1152122 e!1729220)))

(assert (=> d!795932 (= res!1152122 (not ((_ is Cons!31597) rulesArg!249)))))

(assert (=> d!795932 (= (rulesValidInductive!1703 thiss!15207 rulesArg!249) lt!971499)))

(declare-fun b!2745107 () Bool)

(declare-fun e!1729219 () Bool)

(assert (=> b!2745107 (= e!1729220 e!1729219)))

(declare-fun res!1152121 () Bool)

(assert (=> b!2745107 (=> (not res!1152121) (not e!1729219))))

(declare-fun ruleValid!1586 (LexerInterface!4433 Rule!9480) Bool)

(assert (=> b!2745107 (= res!1152121 (ruleValid!1586 thiss!15207 (h!37017 rulesArg!249)))))

(declare-fun b!2745108 () Bool)

(assert (=> b!2745108 (= e!1729219 (rulesValidInductive!1703 thiss!15207 (t!227785 rulesArg!249)))))

(assert (= (and d!795932 (not res!1152122)) b!2745107))

(assert (= (and b!2745107 res!1152121) b!2745108))

(declare-fun m!3162053 () Bool)

(assert (=> d!795932 m!3162053))

(declare-fun m!3162055 () Bool)

(assert (=> b!2745107 m!3162055))

(declare-fun m!3162057 () Bool)

(assert (=> b!2745108 m!3162057))

(assert (=> b!2745078 d!795932))

(declare-fun d!795934 () Bool)

(assert (=> d!795934 (= (valid!2795 cacheUp!633) (validCacheMapUp!336 (cache!3653 cacheUp!633)))))

(declare-fun bs!490262 () Bool)

(assert (= bs!490262 d!795934))

(assert (=> bs!490262 m!3162049))

(assert (=> b!2745091 d!795934))

(declare-fun d!795936 () Bool)

(declare-fun lt!971502 () Int)

(assert (=> d!795936 (>= lt!971502 0)))

(declare-fun e!1729223 () Int)

(assert (=> d!795936 (= lt!971502 e!1729223)))

(declare-fun c!444823 () Bool)

(assert (=> d!795936 (= c!444823 ((_ is Nil!31597) rulesArg!249))))

(assert (=> d!795936 (= (size!24398 rulesArg!249) lt!971502)))

(declare-fun b!2745115 () Bool)

(assert (=> b!2745115 (= e!1729223 0)))

(declare-fun b!2745116 () Bool)

(assert (=> b!2745116 (= e!1729223 (+ 1 (size!24398 (t!227785 rulesArg!249))))))

(assert (= (and d!795936 c!444823) b!2745115))

(assert (= (and d!795936 (not c!444823)) b!2745116))

(declare-fun m!3162059 () Bool)

(assert (=> b!2745116 m!3162059))

(assert (=> b!2745089 d!795936))

(declare-fun d!795938 () Bool)

(assert (=> d!795938 (= (array_inv!4094 (_keys!3904 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) (bvsge (size!24396 (_keys!3904 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745084 d!795938))

(declare-fun d!795940 () Bool)

(assert (=> d!795940 (= (array_inv!4096 (_values!3885 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) (bvsge (size!24397 (_values!3885 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745084 d!795940))

(declare-fun b!2745125 () Bool)

(declare-fun e!1729230 () Bool)

(declare-fun tp!864172 () Bool)

(assert (=> b!2745125 (= e!1729230 tp!864172)))

(declare-fun e!1729232 () Bool)

(declare-fun tp!864175 () Bool)

(declare-fun setNonEmpty!21597 () Bool)

(declare-fun setRes!21597 () Bool)

(declare-fun setElem!21597 () Context!4426)

(declare-fun inv!42949 (Context!4426) Bool)

(assert (=> setNonEmpty!21597 (= setRes!21597 (and tp!864175 (inv!42949 setElem!21597) e!1729232))))

(declare-fun setRest!21597 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21597 (= (_2!18375 (h!37019 mapDefault!16434)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21597 true) setRest!21597))))

(declare-fun setIsEmpty!21597 () Bool)

(assert (=> setIsEmpty!21597 setRes!21597))

(declare-fun e!1729231 () Bool)

(declare-fun tp!864174 () Bool)

(declare-fun b!2745126 () Bool)

(declare-fun tp_is_empty!13927 () Bool)

(declare-fun tp!864173 () Bool)

(assert (=> b!2745126 (= e!1729231 (and tp!864174 (inv!42949 (_2!18374 (_1!18375 (h!37019 mapDefault!16434)))) e!1729230 tp_is_empty!13927 setRes!21597 tp!864173))))

(declare-fun condSetEmpty!21597 () Bool)

(assert (=> b!2745126 (= condSetEmpty!21597 (= (_2!18375 (h!37019 mapDefault!16434)) ((as const (Array Context!4426 Bool)) false)))))

(assert (=> b!2745090 (= tp!864158 e!1729231)))

(declare-fun b!2745127 () Bool)

(declare-fun tp!864176 () Bool)

(assert (=> b!2745127 (= e!1729232 tp!864176)))

(assert (= b!2745126 b!2745125))

(assert (= (and b!2745126 condSetEmpty!21597) setIsEmpty!21597))

(assert (= (and b!2745126 (not condSetEmpty!21597)) setNonEmpty!21597))

(assert (= setNonEmpty!21597 b!2745127))

(assert (= (and b!2745090 ((_ is Cons!31599) mapDefault!16434)) b!2745126))

(declare-fun m!3162061 () Bool)

(assert (=> setNonEmpty!21597 m!3162061))

(declare-fun m!3162063 () Bool)

(assert (=> b!2745126 m!3162063))

(declare-fun e!1729235 () Bool)

(assert (=> b!2745086 (= tp!864161 e!1729235)))

(declare-fun b!2745138 () Bool)

(assert (=> b!2745138 (= e!1729235 tp_is_empty!13927)))

(declare-fun b!2745139 () Bool)

(declare-fun tp!864190 () Bool)

(declare-fun tp!864188 () Bool)

(assert (=> b!2745139 (= e!1729235 (and tp!864190 tp!864188))))

(declare-fun b!2745141 () Bool)

(declare-fun tp!864191 () Bool)

(declare-fun tp!864189 () Bool)

(assert (=> b!2745141 (= e!1729235 (and tp!864191 tp!864189))))

(declare-fun b!2745140 () Bool)

(declare-fun tp!864187 () Bool)

(assert (=> b!2745140 (= e!1729235 tp!864187)))

(assert (= (and b!2745086 ((_ is ElementMatch!7995) (regex!4840 (h!37017 rulesArg!249)))) b!2745138))

(assert (= (and b!2745086 ((_ is Concat!13058) (regex!4840 (h!37017 rulesArg!249)))) b!2745139))

(assert (= (and b!2745086 ((_ is Star!7995) (regex!4840 (h!37017 rulesArg!249)))) b!2745140))

(assert (= (and b!2745086 ((_ is Union!7995) (regex!4840 (h!37017 rulesArg!249)))) b!2745141))

(declare-fun b!2745152 () Bool)

(declare-fun b_free!77277 () Bool)

(declare-fun b_next!77981 () Bool)

(assert (=> b!2745152 (= b_free!77277 (not b_next!77981))))

(declare-fun tp!864201 () Bool)

(declare-fun b_and!201997 () Bool)

(assert (=> b!2745152 (= tp!864201 b_and!201997)))

(declare-fun b_free!77279 () Bool)

(declare-fun b_next!77983 () Bool)

(assert (=> b!2745152 (= b_free!77279 (not b_next!77983))))

(declare-fun tp!864202 () Bool)

(declare-fun b_and!201999 () Bool)

(assert (=> b!2745152 (= tp!864202 b_and!201999)))

(declare-fun e!1729245 () Bool)

(assert (=> b!2745152 (= e!1729245 (and tp!864201 tp!864202))))

(declare-fun tp!864203 () Bool)

(declare-fun e!1729247 () Bool)

(declare-fun b!2745151 () Bool)

(assert (=> b!2745151 (= e!1729247 (and tp!864203 (inv!42945 (tag!5344 (h!37017 (t!227785 rulesArg!249)))) (inv!42948 (transformation!4840 (h!37017 (t!227785 rulesArg!249)))) e!1729245))))

(declare-fun b!2745150 () Bool)

(declare-fun e!1729246 () Bool)

(declare-fun tp!864200 () Bool)

(assert (=> b!2745150 (= e!1729246 (and e!1729247 tp!864200))))

(assert (=> b!2745087 (= tp!864157 e!1729246)))

(assert (= b!2745151 b!2745152))

(assert (= b!2745150 b!2745151))

(assert (= (and b!2745087 ((_ is Cons!31597) (t!227785 rulesArg!249))) b!2745150))

(declare-fun m!3162065 () Bool)

(assert (=> b!2745151 m!3162065))

(declare-fun m!3162067 () Bool)

(assert (=> b!2745151 m!3162067))

(declare-fun b!2745153 () Bool)

(declare-fun e!1729248 () Bool)

(declare-fun tp!864204 () Bool)

(assert (=> b!2745153 (= e!1729248 tp!864204)))

(declare-fun setRes!21598 () Bool)

(declare-fun tp!864207 () Bool)

(declare-fun setElem!21598 () Context!4426)

(declare-fun e!1729250 () Bool)

(declare-fun setNonEmpty!21598 () Bool)

(assert (=> setNonEmpty!21598 (= setRes!21598 (and tp!864207 (inv!42949 setElem!21598) e!1729250))))

(declare-fun setRest!21598 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21598 (= (_2!18375 (h!37019 (zeroValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21598 true) setRest!21598))))

(declare-fun setIsEmpty!21598 () Bool)

(assert (=> setIsEmpty!21598 setRes!21598))

(declare-fun tp!864205 () Bool)

(declare-fun b!2745154 () Bool)

(declare-fun tp!864206 () Bool)

(declare-fun e!1729249 () Bool)

(assert (=> b!2745154 (= e!1729249 (and tp!864206 (inv!42949 (_2!18374 (_1!18375 (h!37019 (zeroValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))))) e!1729248 tp_is_empty!13927 setRes!21598 tp!864205))))

(declare-fun condSetEmpty!21598 () Bool)

(assert (=> b!2745154 (= condSetEmpty!21598 (= (_2!18375 (h!37019 (zeroValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) ((as const (Array Context!4426 Bool)) false)))))

(assert (=> b!2745082 (= tp!864156 e!1729249)))

(declare-fun b!2745155 () Bool)

(declare-fun tp!864208 () Bool)

(assert (=> b!2745155 (= e!1729250 tp!864208)))

(assert (= b!2745154 b!2745153))

(assert (= (and b!2745154 condSetEmpty!21598) setIsEmpty!21598))

(assert (= (and b!2745154 (not condSetEmpty!21598)) setNonEmpty!21598))

(assert (= setNonEmpty!21598 b!2745155))

(assert (= (and b!2745082 ((_ is Cons!31599) (zeroValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) b!2745154))

(declare-fun m!3162069 () Bool)

(assert (=> setNonEmpty!21598 m!3162069))

(declare-fun m!3162071 () Bool)

(assert (=> b!2745154 m!3162071))

(declare-fun b!2745156 () Bool)

(declare-fun e!1729251 () Bool)

(declare-fun tp!864209 () Bool)

(assert (=> b!2745156 (= e!1729251 tp!864209)))

(declare-fun setElem!21599 () Context!4426)

(declare-fun e!1729253 () Bool)

(declare-fun setNonEmpty!21599 () Bool)

(declare-fun tp!864212 () Bool)

(declare-fun setRes!21599 () Bool)

(assert (=> setNonEmpty!21599 (= setRes!21599 (and tp!864212 (inv!42949 setElem!21599) e!1729253))))

(declare-fun setRest!21599 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21599 (= (_2!18375 (h!37019 (minValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21599 true) setRest!21599))))

(declare-fun setIsEmpty!21599 () Bool)

(assert (=> setIsEmpty!21599 setRes!21599))

(declare-fun tp!864211 () Bool)

(declare-fun b!2745157 () Bool)

(declare-fun e!1729252 () Bool)

(declare-fun tp!864210 () Bool)

(assert (=> b!2745157 (= e!1729252 (and tp!864211 (inv!42949 (_2!18374 (_1!18375 (h!37019 (minValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))))) e!1729251 tp_is_empty!13927 setRes!21599 tp!864210))))

(declare-fun condSetEmpty!21599 () Bool)

(assert (=> b!2745157 (= condSetEmpty!21599 (= (_2!18375 (h!37019 (minValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) ((as const (Array Context!4426 Bool)) false)))))

(assert (=> b!2745082 (= tp!864144 e!1729252)))

(declare-fun b!2745158 () Bool)

(declare-fun tp!864213 () Bool)

(assert (=> b!2745158 (= e!1729253 tp!864213)))

(assert (= b!2745157 b!2745156))

(assert (= (and b!2745157 condSetEmpty!21599) setIsEmpty!21599))

(assert (= (and b!2745157 (not condSetEmpty!21599)) setNonEmpty!21599))

(assert (= setNonEmpty!21599 b!2745158))

(assert (= (and b!2745082 ((_ is Cons!31599) (minValue!3862 (v!33232 (underlying!7409 (v!33233 (underlying!7410 (cache!3652 cacheDown!646)))))))) b!2745157))

(declare-fun m!3162073 () Bool)

(assert (=> setNonEmpty!21599 m!3162073))

(declare-fun m!3162075 () Bool)

(assert (=> b!2745157 m!3162075))

(declare-fun mapValue!16437 () List!31700)

(declare-fun b!2745173 () Bool)

(declare-fun setRes!21604 () Bool)

(declare-fun tp!864240 () Bool)

(declare-fun e!1729270 () Bool)

(declare-fun e!1729271 () Bool)

(assert (=> b!2745173 (= e!1729271 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 mapValue!16437)))) e!1729270 tp_is_empty!13927 setRes!21604 tp!864240))))

(declare-fun condSetEmpty!21604 () Bool)

(assert (=> b!2745173 (= condSetEmpty!21604 (= (_2!18377 (h!37020 mapValue!16437)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun b!2745174 () Bool)

(declare-fun e!1729269 () Bool)

(declare-fun tp!864238 () Bool)

(assert (=> b!2745174 (= e!1729269 tp!864238)))

(declare-fun mapNonEmpty!16437 () Bool)

(declare-fun mapRes!16437 () Bool)

(declare-fun tp!864232 () Bool)

(assert (=> mapNonEmpty!16437 (= mapRes!16437 (and tp!864232 e!1729271))))

(declare-fun mapRest!16437 () (Array (_ BitVec 32) List!31700))

(declare-fun mapKey!16437 () (_ BitVec 32))

(assert (=> mapNonEmpty!16437 (= mapRest!16433 (store mapRest!16437 mapKey!16437 mapValue!16437))))

(declare-fun b!2745175 () Bool)

(declare-fun tp!864234 () Bool)

(assert (=> b!2745175 (= e!1729270 tp!864234)))

(declare-fun setNonEmpty!21604 () Bool)

(declare-fun tp!864235 () Bool)

(declare-fun e!1729267 () Bool)

(declare-fun setElem!21604 () Context!4426)

(assert (=> setNonEmpty!21604 (= setRes!21604 (and tp!864235 (inv!42949 setElem!21604) e!1729267))))

(declare-fun setRest!21605 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21604 (= (_2!18377 (h!37020 mapValue!16437)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21604 true) setRest!21605))))

(declare-fun mapIsEmpty!16437 () Bool)

(assert (=> mapIsEmpty!16437 mapRes!16437))

(declare-fun setElem!21605 () Context!4426)

(declare-fun tp!864236 () Bool)

(declare-fun setRes!21605 () Bool)

(declare-fun setNonEmpty!21605 () Bool)

(assert (=> setNonEmpty!21605 (= setRes!21605 (and tp!864236 (inv!42949 setElem!21605) e!1729269))))

(declare-fun mapDefault!16437 () List!31700)

(declare-fun setRest!21604 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21605 (= (_2!18377 (h!37020 mapDefault!16437)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21605 true) setRest!21604))))

(declare-fun condMapEmpty!16437 () Bool)

(assert (=> mapNonEmpty!16433 (= condMapEmpty!16437 (= mapRest!16433 ((as const (Array (_ BitVec 32) List!31700)) mapDefault!16437)))))

(declare-fun e!1729266 () Bool)

(assert (=> mapNonEmpty!16433 (= tp!864159 (and e!1729266 mapRes!16437))))

(declare-fun setIsEmpty!21604 () Bool)

(assert (=> setIsEmpty!21604 setRes!21604))

(declare-fun b!2745176 () Bool)

(declare-fun tp!864237 () Bool)

(assert (=> b!2745176 (= e!1729267 tp!864237)))

(declare-fun b!2745177 () Bool)

(declare-fun e!1729268 () Bool)

(declare-fun tp!864233 () Bool)

(assert (=> b!2745177 (= e!1729268 tp!864233)))

(declare-fun b!2745178 () Bool)

(declare-fun tp!864239 () Bool)

(assert (=> b!2745178 (= e!1729266 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 mapDefault!16437)))) e!1729268 tp_is_empty!13927 setRes!21605 tp!864239))))

(declare-fun condSetEmpty!21605 () Bool)

(assert (=> b!2745178 (= condSetEmpty!21605 (= (_2!18377 (h!37020 mapDefault!16437)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun setIsEmpty!21605 () Bool)

(assert (=> setIsEmpty!21605 setRes!21605))

(assert (= (and mapNonEmpty!16433 condMapEmpty!16437) mapIsEmpty!16437))

(assert (= (and mapNonEmpty!16433 (not condMapEmpty!16437)) mapNonEmpty!16437))

(assert (= b!2745173 b!2745175))

(assert (= (and b!2745173 condSetEmpty!21604) setIsEmpty!21604))

(assert (= (and b!2745173 (not condSetEmpty!21604)) setNonEmpty!21604))

(assert (= setNonEmpty!21604 b!2745176))

(assert (= (and mapNonEmpty!16437 ((_ is Cons!31600) mapValue!16437)) b!2745173))

(assert (= b!2745178 b!2745177))

(assert (= (and b!2745178 condSetEmpty!21605) setIsEmpty!21605))

(assert (= (and b!2745178 (not condSetEmpty!21605)) setNonEmpty!21605))

(assert (= setNonEmpty!21605 b!2745174))

(assert (= (and mapNonEmpty!16433 ((_ is Cons!31600) mapDefault!16437)) b!2745178))

(declare-fun m!3162077 () Bool)

(assert (=> setNonEmpty!21604 m!3162077))

(declare-fun m!3162079 () Bool)

(assert (=> setNonEmpty!21605 m!3162079))

(declare-fun m!3162081 () Bool)

(assert (=> b!2745173 m!3162081))

(declare-fun m!3162083 () Bool)

(assert (=> b!2745178 m!3162083))

(declare-fun m!3162085 () Bool)

(assert (=> mapNonEmpty!16437 m!3162085))

(declare-fun tp!864251 () Bool)

(declare-fun e!1729278 () Bool)

(declare-fun e!1729279 () Bool)

(declare-fun b!2745187 () Bool)

(declare-fun setRes!21608 () Bool)

(assert (=> b!2745187 (= e!1729279 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 mapValue!16434)))) e!1729278 tp_is_empty!13927 setRes!21608 tp!864251))))

(declare-fun condSetEmpty!21608 () Bool)

(assert (=> b!2745187 (= condSetEmpty!21608 (= (_2!18377 (h!37020 mapValue!16434)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun e!1729280 () Bool)

(declare-fun tp!864250 () Bool)

(declare-fun setNonEmpty!21608 () Bool)

(declare-fun setElem!21608 () Context!4426)

(assert (=> setNonEmpty!21608 (= setRes!21608 (and tp!864250 (inv!42949 setElem!21608) e!1729280))))

(declare-fun setRest!21608 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21608 (= (_2!18377 (h!37020 mapValue!16434)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21608 true) setRest!21608))))

(assert (=> mapNonEmpty!16433 (= tp!864149 e!1729279)))

(declare-fun b!2745188 () Bool)

(declare-fun tp!864252 () Bool)

(assert (=> b!2745188 (= e!1729280 tp!864252)))

(declare-fun b!2745189 () Bool)

(declare-fun tp!864249 () Bool)

(assert (=> b!2745189 (= e!1729278 tp!864249)))

(declare-fun setIsEmpty!21608 () Bool)

(assert (=> setIsEmpty!21608 setRes!21608))

(assert (= b!2745187 b!2745189))

(assert (= (and b!2745187 condSetEmpty!21608) setIsEmpty!21608))

(assert (= (and b!2745187 (not condSetEmpty!21608)) setNonEmpty!21608))

(assert (= setNonEmpty!21608 b!2745188))

(assert (= (and mapNonEmpty!16433 ((_ is Cons!31600) mapValue!16434)) b!2745187))

(declare-fun m!3162087 () Bool)

(assert (=> b!2745187 m!3162087))

(declare-fun m!3162089 () Bool)

(assert (=> setNonEmpty!21608 m!3162089))

(declare-fun tp!864255 () Bool)

(declare-fun e!1729281 () Bool)

(declare-fun setRes!21609 () Bool)

(declare-fun e!1729282 () Bool)

(declare-fun b!2745190 () Bool)

(assert (=> b!2745190 (= e!1729282 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 mapDefault!16433)))) e!1729281 tp_is_empty!13927 setRes!21609 tp!864255))))

(declare-fun condSetEmpty!21609 () Bool)

(assert (=> b!2745190 (= condSetEmpty!21609 (= (_2!18377 (h!37020 mapDefault!16433)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun setElem!21609 () Context!4426)

(declare-fun tp!864254 () Bool)

(declare-fun setNonEmpty!21609 () Bool)

(declare-fun e!1729283 () Bool)

(assert (=> setNonEmpty!21609 (= setRes!21609 (and tp!864254 (inv!42949 setElem!21609) e!1729283))))

(declare-fun setRest!21609 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21609 (= (_2!18377 (h!37020 mapDefault!16433)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21609 true) setRest!21609))))

(assert (=> b!2745092 (= tp!864153 e!1729282)))

(declare-fun b!2745191 () Bool)

(declare-fun tp!864256 () Bool)

(assert (=> b!2745191 (= e!1729283 tp!864256)))

(declare-fun b!2745192 () Bool)

(declare-fun tp!864253 () Bool)

(assert (=> b!2745192 (= e!1729281 tp!864253)))

(declare-fun setIsEmpty!21609 () Bool)

(assert (=> setIsEmpty!21609 setRes!21609))

(assert (= b!2745190 b!2745192))

(assert (= (and b!2745190 condSetEmpty!21609) setIsEmpty!21609))

(assert (= (and b!2745190 (not condSetEmpty!21609)) setNonEmpty!21609))

(assert (= setNonEmpty!21609 b!2745191))

(assert (= (and b!2745092 ((_ is Cons!31600) mapDefault!16433)) b!2745190))

(declare-fun m!3162091 () Bool)

(assert (=> b!2745190 m!3162091))

(declare-fun m!3162093 () Bool)

(assert (=> setNonEmpty!21609 m!3162093))

(declare-fun setNonEmpty!21614 () Bool)

(declare-fun tp!864289 () Bool)

(declare-fun setRes!21615 () Bool)

(declare-fun e!1729301 () Bool)

(declare-fun setElem!21615 () Context!4426)

(assert (=> setNonEmpty!21614 (= setRes!21615 (and tp!864289 (inv!42949 setElem!21615) e!1729301))))

(declare-fun mapDefault!16440 () List!31699)

(declare-fun setRest!21615 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21614 (= (_2!18375 (h!37019 mapDefault!16440)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21615 true) setRest!21615))))

(declare-fun b!2745207 () Bool)

(declare-fun e!1729300 () Bool)

(declare-fun tp!864286 () Bool)

(assert (=> b!2745207 (= e!1729300 tp!864286)))

(declare-fun setIsEmpty!21614 () Bool)

(declare-fun setRes!21614 () Bool)

(assert (=> setIsEmpty!21614 setRes!21614))

(declare-fun setIsEmpty!21615 () Bool)

(assert (=> setIsEmpty!21615 setRes!21615))

(declare-fun condMapEmpty!16440 () Bool)

(assert (=> mapNonEmpty!16434 (= condMapEmpty!16440 (= mapRest!16434 ((as const (Array (_ BitVec 32) List!31699)) mapDefault!16440)))))

(declare-fun e!1729296 () Bool)

(declare-fun mapRes!16440 () Bool)

(assert (=> mapNonEmpty!16434 (= tp!864145 (and e!1729296 mapRes!16440))))

(declare-fun tp!864279 () Bool)

(declare-fun tp!864280 () Bool)

(declare-fun b!2745208 () Bool)

(assert (=> b!2745208 (= e!1729296 (and tp!864279 (inv!42949 (_2!18374 (_1!18375 (h!37019 mapDefault!16440)))) e!1729300 tp_is_empty!13927 setRes!21615 tp!864280))))

(declare-fun condSetEmpty!21614 () Bool)

(assert (=> b!2745208 (= condSetEmpty!21614 (= (_2!18375 (h!37019 mapDefault!16440)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun setElem!21614 () Context!4426)

(declare-fun setNonEmpty!21615 () Bool)

(declare-fun e!1729297 () Bool)

(declare-fun tp!864288 () Bool)

(assert (=> setNonEmpty!21615 (= setRes!21614 (and tp!864288 (inv!42949 setElem!21614) e!1729297))))

(declare-fun mapValue!16440 () List!31699)

(declare-fun setRest!21614 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21615 (= (_2!18375 (h!37019 mapValue!16440)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21614 true) setRest!21614))))

(declare-fun b!2745209 () Bool)

(declare-fun tp!864283 () Bool)

(assert (=> b!2745209 (= e!1729297 tp!864283)))

(declare-fun e!1729298 () Bool)

(declare-fun b!2745210 () Bool)

(declare-fun e!1729299 () Bool)

(declare-fun tp!864287 () Bool)

(declare-fun tp!864282 () Bool)

(assert (=> b!2745210 (= e!1729299 (and tp!864282 (inv!42949 (_2!18374 (_1!18375 (h!37019 mapValue!16440)))) e!1729298 tp_is_empty!13927 setRes!21614 tp!864287))))

(declare-fun condSetEmpty!21615 () Bool)

(assert (=> b!2745210 (= condSetEmpty!21615 (= (_2!18375 (h!37019 mapValue!16440)) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun mapNonEmpty!16440 () Bool)

(declare-fun tp!864285 () Bool)

(assert (=> mapNonEmpty!16440 (= mapRes!16440 (and tp!864285 e!1729299))))

(declare-fun mapKey!16440 () (_ BitVec 32))

(declare-fun mapRest!16440 () (Array (_ BitVec 32) List!31699))

(assert (=> mapNonEmpty!16440 (= mapRest!16434 (store mapRest!16440 mapKey!16440 mapValue!16440))))

(declare-fun b!2745211 () Bool)

(declare-fun tp!864284 () Bool)

(assert (=> b!2745211 (= e!1729298 tp!864284)))

(declare-fun b!2745212 () Bool)

(declare-fun tp!864281 () Bool)

(assert (=> b!2745212 (= e!1729301 tp!864281)))

(declare-fun mapIsEmpty!16440 () Bool)

(assert (=> mapIsEmpty!16440 mapRes!16440))

(assert (= (and mapNonEmpty!16434 condMapEmpty!16440) mapIsEmpty!16440))

(assert (= (and mapNonEmpty!16434 (not condMapEmpty!16440)) mapNonEmpty!16440))

(assert (= b!2745210 b!2745211))

(assert (= (and b!2745210 condSetEmpty!21615) setIsEmpty!21614))

(assert (= (and b!2745210 (not condSetEmpty!21615)) setNonEmpty!21615))

(assert (= setNonEmpty!21615 b!2745209))

(assert (= (and mapNonEmpty!16440 ((_ is Cons!31599) mapValue!16440)) b!2745210))

(assert (= b!2745208 b!2745207))

(assert (= (and b!2745208 condSetEmpty!21614) setIsEmpty!21615))

(assert (= (and b!2745208 (not condSetEmpty!21614)) setNonEmpty!21614))

(assert (= setNonEmpty!21614 b!2745212))

(assert (= (and mapNonEmpty!16434 ((_ is Cons!31599) mapDefault!16440)) b!2745208))

(declare-fun m!3162095 () Bool)

(assert (=> b!2745208 m!3162095))

(declare-fun m!3162097 () Bool)

(assert (=> b!2745210 m!3162097))

(declare-fun m!3162099 () Bool)

(assert (=> setNonEmpty!21615 m!3162099))

(declare-fun m!3162101 () Bool)

(assert (=> setNonEmpty!21614 m!3162101))

(declare-fun m!3162103 () Bool)

(assert (=> mapNonEmpty!16440 m!3162103))

(declare-fun b!2745213 () Bool)

(declare-fun e!1729302 () Bool)

(declare-fun tp!864290 () Bool)

(assert (=> b!2745213 (= e!1729302 tp!864290)))

(declare-fun tp!864293 () Bool)

(declare-fun setRes!21616 () Bool)

(declare-fun e!1729304 () Bool)

(declare-fun setElem!21616 () Context!4426)

(declare-fun setNonEmpty!21616 () Bool)

(assert (=> setNonEmpty!21616 (= setRes!21616 (and tp!864293 (inv!42949 setElem!21616) e!1729304))))

(declare-fun setRest!21616 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21616 (= (_2!18375 (h!37019 mapValue!16433)) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21616 true) setRest!21616))))

(declare-fun setIsEmpty!21616 () Bool)

(assert (=> setIsEmpty!21616 setRes!21616))

(declare-fun b!2745214 () Bool)

(declare-fun tp!864292 () Bool)

(declare-fun tp!864291 () Bool)

(declare-fun e!1729303 () Bool)

(assert (=> b!2745214 (= e!1729303 (and tp!864292 (inv!42949 (_2!18374 (_1!18375 (h!37019 mapValue!16433)))) e!1729302 tp_is_empty!13927 setRes!21616 tp!864291))))

(declare-fun condSetEmpty!21616 () Bool)

(assert (=> b!2745214 (= condSetEmpty!21616 (= (_2!18375 (h!37019 mapValue!16433)) ((as const (Array Context!4426 Bool)) false)))))

(assert (=> mapNonEmpty!16434 (= tp!864148 e!1729303)))

(declare-fun b!2745215 () Bool)

(declare-fun tp!864294 () Bool)

(assert (=> b!2745215 (= e!1729304 tp!864294)))

(assert (= b!2745214 b!2745213))

(assert (= (and b!2745214 condSetEmpty!21616) setIsEmpty!21616))

(assert (= (and b!2745214 (not condSetEmpty!21616)) setNonEmpty!21616))

(assert (= setNonEmpty!21616 b!2745215))

(assert (= (and mapNonEmpty!16434 ((_ is Cons!31599) mapValue!16433)) b!2745214))

(declare-fun m!3162105 () Bool)

(assert (=> setNonEmpty!21616 m!3162105))

(declare-fun m!3162107 () Bool)

(assert (=> b!2745214 m!3162107))

(declare-fun e!1729305 () Bool)

(declare-fun setRes!21617 () Bool)

(declare-fun e!1729306 () Bool)

(declare-fun tp!864297 () Bool)

(declare-fun b!2745216 () Bool)

(assert (=> b!2745216 (= e!1729306 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 (zeroValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))))) e!1729305 tp_is_empty!13927 setRes!21617 tp!864297))))

(declare-fun condSetEmpty!21617 () Bool)

(assert (=> b!2745216 (= condSetEmpty!21617 (= (_2!18377 (h!37020 (zeroValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun tp!864296 () Bool)

(declare-fun setNonEmpty!21617 () Bool)

(declare-fun setElem!21617 () Context!4426)

(declare-fun e!1729307 () Bool)

(assert (=> setNonEmpty!21617 (= setRes!21617 (and tp!864296 (inv!42949 setElem!21617) e!1729307))))

(declare-fun setRest!21617 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21617 (= (_2!18377 (h!37020 (zeroValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21617 true) setRest!21617))))

(assert (=> b!2745084 (= tp!864152 e!1729306)))

(declare-fun b!2745217 () Bool)

(declare-fun tp!864298 () Bool)

(assert (=> b!2745217 (= e!1729307 tp!864298)))

(declare-fun b!2745218 () Bool)

(declare-fun tp!864295 () Bool)

(assert (=> b!2745218 (= e!1729305 tp!864295)))

(declare-fun setIsEmpty!21617 () Bool)

(assert (=> setIsEmpty!21617 setRes!21617))

(assert (= b!2745216 b!2745218))

(assert (= (and b!2745216 condSetEmpty!21617) setIsEmpty!21617))

(assert (= (and b!2745216 (not condSetEmpty!21617)) setNonEmpty!21617))

(assert (= setNonEmpty!21617 b!2745217))

(assert (= (and b!2745084 ((_ is Cons!31600) (zeroValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) b!2745216))

(declare-fun m!3162109 () Bool)

(assert (=> b!2745216 m!3162109))

(declare-fun m!3162111 () Bool)

(assert (=> setNonEmpty!21617 m!3162111))

(declare-fun e!1729308 () Bool)

(declare-fun b!2745219 () Bool)

(declare-fun e!1729309 () Bool)

(declare-fun setRes!21618 () Bool)

(declare-fun tp!864301 () Bool)

(assert (=> b!2745219 (= e!1729309 (and (inv!42949 (_1!18376 (_1!18377 (h!37020 (minValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))))) e!1729308 tp_is_empty!13927 setRes!21618 tp!864301))))

(declare-fun condSetEmpty!21618 () Bool)

(assert (=> b!2745219 (= condSetEmpty!21618 (= (_2!18377 (h!37020 (minValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) ((as const (Array Context!4426 Bool)) false)))))

(declare-fun setNonEmpty!21618 () Bool)

(declare-fun setElem!21618 () Context!4426)

(declare-fun tp!864300 () Bool)

(declare-fun e!1729310 () Bool)

(assert (=> setNonEmpty!21618 (= setRes!21618 (and tp!864300 (inv!42949 setElem!21618) e!1729310))))

(declare-fun setRest!21618 () (InoxSet Context!4426))

(assert (=> setNonEmpty!21618 (= (_2!18377 (h!37020 (minValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4426 Bool)) false) setElem!21618 true) setRest!21618))))

(assert (=> b!2745084 (= tp!864146 e!1729309)))

(declare-fun b!2745220 () Bool)

(declare-fun tp!864302 () Bool)

(assert (=> b!2745220 (= e!1729310 tp!864302)))

(declare-fun b!2745221 () Bool)

(declare-fun tp!864299 () Bool)

(assert (=> b!2745221 (= e!1729308 tp!864299)))

(declare-fun setIsEmpty!21618 () Bool)

(assert (=> setIsEmpty!21618 setRes!21618))

(assert (= b!2745219 b!2745221))

(assert (= (and b!2745219 condSetEmpty!21618) setIsEmpty!21618))

(assert (= (and b!2745219 (not condSetEmpty!21618)) setNonEmpty!21618))

(assert (= setNonEmpty!21618 b!2745220))

(assert (= (and b!2745084 ((_ is Cons!31600) (minValue!3863 (v!33234 (underlying!7411 (v!33235 (underlying!7412 (cache!3653 cacheUp!633)))))))) b!2745219))

(declare-fun m!3162113 () Bool)

(assert (=> b!2745219 m!3162113))

(declare-fun m!3162115 () Bool)

(assert (=> setNonEmpty!21618 m!3162115))

(check-sat (not setNonEmpty!21615) (not b!2745189) b_and!201989 (not b!2745192) (not b!2745154) b_and!201993 (not b!2745174) (not setNonEmpty!21616) (not setNonEmpty!21597) (not b!2745219) (not d!795918) (not setNonEmpty!21608) (not b_next!77981) (not setNonEmpty!21618) (not b!2745156) (not b!2745175) (not b!2745213) (not b!2745173) (not b_next!77979) (not d!795932) (not setNonEmpty!21604) (not b!2745211) (not b!2745140) (not b_next!77969) (not b!2745187) (not d!795926) (not b!2745155) (not b_next!77983) (not b!2745158) (not b!2745215) (not b!2745220) (not b!2745153) (not b!2745218) (not b!2745116) (not b!2745191) (not b_next!77973) (not setNonEmpty!21599) (not b!2745126) b_and!201987 (not b!2745216) (not d!795934) (not b!2745221) (not b!2745150) (not b!2745212) (not b!2745141) (not b!2745096) b_and!201985 tp_is_empty!13927 b_and!201991 b_and!201997 (not b!2745210) (not b!2745208) (not setNonEmpty!21598) (not b!2745177) (not b!2745125) (not b!2745127) b_and!201995 (not setNonEmpty!21605) (not setNonEmpty!21614) (not b!2745209) (not b!2745102) (not b!2745207) (not setNonEmpty!21617) (not setNonEmpty!21609) (not b_next!77971) (not mapNonEmpty!16440) (not mapNonEmpty!16437) (not b_next!77975) (not b!2745217) (not b!2745139) (not b!2745151) (not b!2745107) (not b!2745157) b_and!201999 (not b!2745214) (not b!2745178) (not b!2745108) (not b_next!77977) (not b!2745190) (not b!2745188) (not b!2745176) (not b!2745099))
(check-sat b_and!201993 (not b_next!77981) (not b_next!77979) (not b_next!77969) (not b_next!77983) (not b_next!77973) b_and!201987 b_and!201985 b_and!201995 b_and!201989 (not b_next!77971) (not b_next!77975) b_and!201999 (not b_next!77977) b_and!201991 b_and!201997)
