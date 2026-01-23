; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262046 () Bool)

(assert start!262046)

(declare-fun b!2695226 () Bool)

(declare-fun b_free!76105 () Bool)

(declare-fun b_next!76809 () Bool)

(assert (=> b!2695226 (= b_free!76105 (not b_next!76809))))

(declare-fun tp!852507 () Bool)

(declare-fun b_and!199235 () Bool)

(assert (=> b!2695226 (= tp!852507 b_and!199235)))

(declare-fun b!2695216 () Bool)

(declare-fun b_free!76107 () Bool)

(declare-fun b_next!76811 () Bool)

(assert (=> b!2695216 (= b_free!76107 (not b_next!76811))))

(declare-fun tp!852514 () Bool)

(declare-fun b_and!199237 () Bool)

(assert (=> b!2695216 (= tp!852514 b_and!199237)))

(declare-fun b!2695223 () Bool)

(declare-fun b_free!76109 () Bool)

(declare-fun b_next!76813 () Bool)

(assert (=> b!2695223 (= b_free!76109 (not b_next!76813))))

(declare-fun tp!852506 () Bool)

(declare-fun b_and!199239 () Bool)

(assert (=> b!2695223 (= tp!852506 b_and!199239)))

(declare-fun b!2695214 () Bool)

(declare-fun b_free!76111 () Bool)

(declare-fun b_next!76815 () Bool)

(assert (=> b!2695214 (= b_free!76111 (not b_next!76815))))

(declare-fun tp!852502 () Bool)

(declare-fun b_and!199241 () Bool)

(assert (=> b!2695214 (= tp!852502 b_and!199241)))

(declare-fun b!2695221 () Bool)

(declare-fun b_free!76113 () Bool)

(declare-fun b_next!76817 () Bool)

(assert (=> b!2695221 (= b_free!76113 (not b_next!76817))))

(declare-fun tp!852508 () Bool)

(declare-fun b_and!199243 () Bool)

(assert (=> b!2695221 (= tp!852508 b_and!199243)))

(declare-fun b_free!76115 () Bool)

(declare-fun b_next!76819 () Bool)

(assert (=> b!2695221 (= b_free!76115 (not b_next!76819))))

(declare-fun tp!852510 () Bool)

(declare-fun b_and!199245 () Bool)

(assert (=> b!2695221 (= tp!852510 b_and!199245)))

(declare-fun b!2695213 () Bool)

(declare-fun e!1699372 () Bool)

(declare-datatypes ((C!15952 0))(
  ( (C!15953 (val!9910 Int)) )
))
(declare-datatypes ((List!31186 0))(
  ( (Nil!31086) (Cons!31086 (h!36506 C!15952) (t!225193 List!31186)) )
))
(declare-datatypes ((IArray!19443 0))(
  ( (IArray!19444 (innerList!9779 List!31186)) )
))
(declare-datatypes ((Conc!9719 0))(
  ( (Node!9719 (left!23961 Conc!9719) (right!24291 Conc!9719) (csize!19668 Int) (cheight!9930 Int)) (Leaf!14836 (xs!12759 IArray!19443) (csize!19669 Int)) (Empty!9719) )
))
(declare-datatypes ((BalanceConc!19052 0))(
  ( (BalanceConc!19053 (c!434547 Conc!9719)) )
))
(declare-fun input!780 () BalanceConc!19052)

(declare-fun tp!852497 () Bool)

(declare-fun inv!42144 (Conc!9719) Bool)

(assert (=> b!2695213 (= e!1699372 (and (inv!42144 (c!434547 input!780)) tp!852497))))

(declare-datatypes ((Regex!7897 0))(
  ( (ElementMatch!7897 (c!434548 C!15952)) (Concat!12864 (regOne!16306 Regex!7897) (regTwo!16306 Regex!7897)) (EmptyExpr!7897) (Star!7897 (reg!8226 Regex!7897)) (EmptyLang!7897) (Union!7897 (regOne!16307 Regex!7897) (regTwo!16307 Regex!7897)) )
))
(declare-datatypes ((array!12557 0))(
  ( (array!12558 (arr!5608 (Array (_ BitVec 32) (_ BitVec 64))) (size!24014 (_ BitVec 32))) )
))
(declare-datatypes ((List!31187 0))(
  ( (Nil!31087) (Cons!31087 (h!36507 Regex!7897) (t!225194 List!31187)) )
))
(declare-datatypes ((Context!4342 0))(
  ( (Context!4343 (exprs!2671 List!31187)) )
))
(declare-datatypes ((tuple3!4266 0))(
  ( (tuple3!4267 (_1!17934 Regex!7897) (_2!17934 Context!4342) (_3!2603 C!15952)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30662 0))(
  ( (tuple2!30663 (_1!17935 tuple3!4266) (_2!17935 (InoxSet Context!4342))) )
))
(declare-datatypes ((List!31188 0))(
  ( (Nil!31088) (Cons!31088 (h!36508 tuple2!30662) (t!225195 List!31188)) )
))
(declare-datatypes ((array!12559 0))(
  ( (array!12560 (arr!5609 (Array (_ BitVec 32) List!31188)) (size!24015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7044 0))(
  ( (LongMapFixedSize!7045 (defaultEntry!3907 Int) (mask!9207 (_ BitVec 32)) (extraKeys!3771 (_ BitVec 32)) (zeroValue!3781 List!31188) (minValue!3781 List!31188) (_size!7087 (_ BitVec 32)) (_keys!3822 array!12557) (_values!3803 array!12559) (_vacant!3583 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13897 0))(
  ( (Cell!13898 (v!32878 LongMapFixedSize!7044)) )
))
(declare-datatypes ((MutLongMap!3522 0))(
  ( (LongMap!3522 (underlying!7247 Cell!13897)) (MutLongMapExt!3521 (__x!19979 Int)) )
))
(declare-datatypes ((Cell!13899 0))(
  ( (Cell!13900 (v!32879 MutLongMap!3522)) )
))
(declare-datatypes ((Hashable!3438 0))(
  ( (HashableExt!3437 (__x!19980 Int)) )
))
(declare-datatypes ((MutableMap!3428 0))(
  ( (MutableMapExt!3427 (__x!19981 Int)) (HashMap!3428 (underlying!7248 Cell!13899) (hashF!5470 Hashable!3438) (_size!7088 (_ BitVec 32)) (defaultValue!3599 Int)) )
))
(declare-datatypes ((CacheDown!2250 0))(
  ( (CacheDown!2251 (cache!3571 MutableMap!3428)) )
))
(declare-fun cacheDown!499 () CacheDown!2250)

(declare-fun e!1699381 () Bool)

(declare-fun e!1699391 () Bool)

(declare-fun tp!852504 () Bool)

(declare-fun tp!852505 () Bool)

(declare-fun array_inv!4006 (array!12557) Bool)

(declare-fun array_inv!4007 (array!12559) Bool)

(assert (=> b!2695214 (= e!1699391 (and tp!852502 tp!852505 tp!852504 (array_inv!4006 (_keys!3822 (v!32878 (underlying!7247 (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))))) (array_inv!4007 (_values!3803 (v!32878 (underlying!7247 (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))))) e!1699381))))

(declare-fun e!1699367 () Bool)

(declare-fun tp!852513 () Bool)

(declare-fun b!2695215 () Bool)

(declare-fun e!1699368 () Bool)

(declare-datatypes ((List!31189 0))(
  ( (Nil!31089) (Cons!31089 (h!36509 (_ BitVec 16)) (t!225196 List!31189)) )
))
(declare-datatypes ((TokenValue!4967 0))(
  ( (FloatLiteralValue!9934 (text!35214 List!31189)) (TokenValueExt!4966 (__x!19982 Int)) (Broken!24835 (value!152821 List!31189)) (Object!5066) (End!4967) (Def!4967) (Underscore!4967) (Match!4967) (Else!4967) (Error!4967) (Case!4967) (If!4967) (Extends!4967) (Abstract!4967) (Class!4967) (Val!4967) (DelimiterValue!9934 (del!5027 List!31189)) (KeywordValue!4973 (value!152822 List!31189)) (CommentValue!9934 (value!152823 List!31189)) (WhitespaceValue!9934 (value!152824 List!31189)) (IndentationValue!4967 (value!152825 List!31189)) (String!34734) (Int32!4967) (Broken!24836 (value!152826 List!31189)) (Boolean!4968) (Unit!45206) (OperatorValue!4970 (op!5027 List!31189)) (IdentifierValue!9934 (value!152827 List!31189)) (IdentifierValue!9935 (value!152828 List!31189)) (WhitespaceValue!9935 (value!152829 List!31189)) (True!9934) (False!9934) (Broken!24837 (value!152830 List!31189)) (Broken!24838 (value!152831 List!31189)) (True!9935) (RightBrace!4967) (RightBracket!4967) (Colon!4967) (Null!4967) (Comma!4967) (LeftBracket!4967) (False!9935) (LeftBrace!4967) (ImaginaryLiteralValue!4967 (text!35215 List!31189)) (StringLiteralValue!14901 (value!152832 List!31189)) (EOFValue!4967 (value!152833 List!31189)) (IdentValue!4967 (value!152834 List!31189)) (DelimiterValue!9935 (value!152835 List!31189)) (DedentValue!4967 (value!152836 List!31189)) (NewLineValue!4967 (value!152837 List!31189)) (IntegerValue!14901 (value!152838 (_ BitVec 32)) (text!35216 List!31189)) (IntegerValue!14902 (value!152839 Int) (text!35217 List!31189)) (Times!4967) (Or!4967) (Equal!4967) (Minus!4967) (Broken!24839 (value!152840 List!31189)) (And!4967) (Div!4967) (LessEqual!4967) (Mod!4967) (Concat!12865) (Not!4967) (Plus!4967) (SpaceValue!4967 (value!152841 List!31189)) (IntegerValue!14903 (value!152842 Int) (text!35218 List!31189)) (StringLiteralValue!14902 (text!35219 List!31189)) (FloatLiteralValue!9935 (text!35220 List!31189)) (BytesLiteralValue!4967 (value!152843 List!31189)) (CommentValue!9935 (value!152844 List!31189)) (StringLiteralValue!14903 (value!152845 List!31189)) (ErrorTokenValue!4967 (msg!5028 List!31189)) )
))
(declare-datatypes ((String!34735 0))(
  ( (String!34736 (value!152846 String)) )
))
(declare-datatypes ((TokenValueInjection!9374 0))(
  ( (TokenValueInjection!9375 (toValue!6703 Int) (toChars!6562 Int)) )
))
(declare-datatypes ((Rule!9290 0))(
  ( (Rule!9291 (regex!4745 Regex!7897) (tag!5249 String!34735) (isSeparator!4745 Bool) (transformation!4745 TokenValueInjection!9374)) )
))
(declare-datatypes ((List!31190 0))(
  ( (Nil!31090) (Cons!31090 (h!36510 Rule!9290) (t!225197 List!31190)) )
))
(declare-fun rules!1381 () List!31190)

(declare-fun inv!42137 (String!34735) Bool)

(declare-fun inv!42145 (TokenValueInjection!9374) Bool)

(assert (=> b!2695215 (= e!1699367 (and tp!852513 (inv!42137 (tag!5249 (h!36510 rules!1381))) (inv!42145 (transformation!4745 (h!36510 rules!1381))) e!1699368))))

(declare-fun mapIsEmpty!16115 () Bool)

(declare-fun mapRes!16116 () Bool)

(assert (=> mapIsEmpty!16115 mapRes!16116))

(declare-fun e!1699389 () Bool)

(declare-fun e!1699383 () Bool)

(assert (=> b!2695216 (= e!1699389 (and e!1699383 tp!852514))))

(declare-fun b!2695217 () Bool)

(declare-fun e!1699385 () Bool)

(declare-fun e!1699370 () Bool)

(declare-datatypes ((tuple2!30664 0))(
  ( (tuple2!30665 (_1!17936 Context!4342) (_2!17936 C!15952)) )
))
(declare-datatypes ((tuple2!30666 0))(
  ( (tuple2!30667 (_1!17937 tuple2!30664) (_2!17937 (InoxSet Context!4342))) )
))
(declare-datatypes ((List!31191 0))(
  ( (Nil!31091) (Cons!31091 (h!36511 tuple2!30666) (t!225198 List!31191)) )
))
(declare-datatypes ((array!12561 0))(
  ( (array!12562 (arr!5610 (Array (_ BitVec 32) List!31191)) (size!24016 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7046 0))(
  ( (LongMapFixedSize!7047 (defaultEntry!3908 Int) (mask!9208 (_ BitVec 32)) (extraKeys!3772 (_ BitVec 32)) (zeroValue!3782 List!31191) (minValue!3782 List!31191) (_size!7089 (_ BitVec 32)) (_keys!3823 array!12557) (_values!3804 array!12561) (_vacant!3584 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13901 0))(
  ( (Cell!13902 (v!32880 LongMapFixedSize!7046)) )
))
(declare-datatypes ((MutLongMap!3523 0))(
  ( (LongMap!3523 (underlying!7249 Cell!13901)) (MutLongMapExt!3522 (__x!19983 Int)) )
))
(declare-fun lt!952045 () MutLongMap!3523)

(get-info :version)

(assert (=> b!2695217 (= e!1699385 (and e!1699370 ((_ is LongMap!3523) lt!952045)))))

(declare-datatypes ((Hashable!3439 0))(
  ( (HashableExt!3438 (__x!19984 Int)) )
))
(declare-datatypes ((Cell!13903 0))(
  ( (Cell!13904 (v!32881 MutLongMap!3523)) )
))
(declare-datatypes ((MutableMap!3429 0))(
  ( (MutableMapExt!3428 (__x!19985 Int)) (HashMap!3429 (underlying!7250 Cell!13903) (hashF!5471 Hashable!3439) (_size!7090 (_ BitVec 32)) (defaultValue!3600 Int)) )
))
(declare-datatypes ((CacheUp!2138 0))(
  ( (CacheUp!2139 (cache!3572 MutableMap!3429)) )
))
(declare-fun cacheUp!486 () CacheUp!2138)

(assert (=> b!2695217 (= lt!952045 (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))))

(declare-datatypes ((LexerInterface!4341 0))(
  ( (LexerInterfaceExt!4338 (__x!19986 Int)) (Lexer!4339) )
))
(declare-fun thiss!12257 () LexerInterface!4341)

(declare-fun b!2695218 () Bool)

(declare-fun e!1699376 () Bool)

(declare-datatypes ((Token!8956 0))(
  ( (Token!8957 (value!152847 TokenValue!4967) (rule!7162 Rule!9290) (size!24017 Int) (originalCharacters!5509 List!31186)) )
))
(declare-datatypes ((List!31192 0))(
  ( (Nil!31092) (Cons!31092 (h!36512 Token!8956) (t!225199 List!31192)) )
))
(declare-datatypes ((IArray!19445 0))(
  ( (IArray!19446 (innerList!9780 List!31192)) )
))
(declare-datatypes ((Conc!9720 0))(
  ( (Node!9720 (left!23962 Conc!9720) (right!24292 Conc!9720) (csize!19670 Int) (cheight!9931 Int)) (Leaf!14837 (xs!12760 IArray!19445) (csize!19671 Int)) (Empty!9720) )
))
(declare-datatypes ((BalanceConc!19054 0))(
  ( (BalanceConc!19055 (c!434549 Conc!9720)) )
))
(declare-datatypes ((tuple2!30668 0))(
  ( (tuple2!30669 (_1!17938 BalanceConc!19054) (_2!17938 BalanceConc!19052)) )
))
(declare-fun lex!1958 (LexerInterface!4341 List!31190 BalanceConc!19052) tuple2!30668)

(declare-fun lexTailRecV2!870 (LexerInterface!4341 List!31190 BalanceConc!19052 BalanceConc!19052 BalanceConc!19052 BalanceConc!19054) tuple2!30668)

(assert (=> b!2695218 (= e!1699376 (= (lex!1958 thiss!12257 rules!1381 input!780) (lexTailRecV2!870 thiss!12257 rules!1381 input!780 (BalanceConc!19053 Empty!9719) input!780 (BalanceConc!19055 Empty!9720))))))

(declare-fun b!2695219 () Bool)

(declare-fun e!1699396 () tuple2!30668)

(declare-fun acc!348 () BalanceConc!19054)

(assert (=> b!2695219 (= e!1699396 (tuple2!30669 acc!348 input!780))))

(declare-fun b!2695220 () Bool)

(declare-fun res!1132317 () Bool)

(declare-fun e!1699382 () Bool)

(assert (=> b!2695220 (=> (not res!1132317) (not e!1699382))))

(declare-fun valid!2732 (CacheDown!2250) Bool)

(assert (=> b!2695220 (= res!1132317 (valid!2732 cacheDown!499))))

(assert (=> b!2695221 (= e!1699368 (and tp!852508 tp!852510))))

(declare-fun b!2695222 () Bool)

(declare-fun e!1699384 () Bool)

(assert (=> b!2695222 (= e!1699382 e!1699384)))

(declare-fun res!1132318 () Bool)

(assert (=> b!2695222 (=> (not res!1132318) (not e!1699384))))

(declare-fun lt!952041 () List!31186)

(declare-fun totalInput!354 () BalanceConc!19052)

(declare-fun list!11733 (BalanceConc!19052) List!31186)

(declare-fun ++!7626 (List!31186 List!31186) List!31186)

(assert (=> b!2695222 (= res!1132318 (= (list!11733 totalInput!354) (++!7626 lt!952041 (list!11733 input!780))))))

(declare-fun treated!26 () BalanceConc!19052)

(assert (=> b!2695222 (= lt!952041 (list!11733 treated!26))))

(declare-fun tp!852500 () Bool)

(declare-fun e!1699375 () Bool)

(declare-fun tp!852511 () Bool)

(declare-fun e!1699377 () Bool)

(declare-fun array_inv!4008 (array!12561) Bool)

(assert (=> b!2695223 (= e!1699375 (and tp!852506 tp!852511 tp!852500 (array_inv!4006 (_keys!3823 (v!32880 (underlying!7249 (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))))) (array_inv!4008 (_values!3804 (v!32880 (underlying!7249 (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))))) e!1699377))))

(declare-fun mapNonEmpty!16115 () Bool)

(declare-fun mapRes!16115 () Bool)

(declare-fun tp!852496 () Bool)

(declare-fun tp!852503 () Bool)

(assert (=> mapNonEmpty!16115 (= mapRes!16115 (and tp!852496 tp!852503))))

(declare-fun mapKey!16115 () (_ BitVec 32))

(declare-fun mapValue!16116 () List!31191)

(declare-fun mapRest!16116 () (Array (_ BitVec 32) List!31191))

(assert (=> mapNonEmpty!16115 (= (arr!5610 (_values!3804 (v!32880 (underlying!7249 (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))))) (store mapRest!16116 mapKey!16115 mapValue!16116))))

(declare-fun b!2695224 () Bool)

(declare-fun e!1699380 () Bool)

(declare-fun tp!852499 () Bool)

(assert (=> b!2695224 (= e!1699380 (and (inv!42144 (c!434547 treated!26)) tp!852499))))

(declare-fun mapNonEmpty!16116 () Bool)

(declare-fun tp!852494 () Bool)

(declare-fun tp!852515 () Bool)

(assert (=> mapNonEmpty!16116 (= mapRes!16116 (and tp!852494 tp!852515))))

(declare-fun mapKey!16116 () (_ BitVec 32))

(declare-fun mapValue!16115 () List!31188)

(declare-fun mapRest!16115 () (Array (_ BitVec 32) List!31188))

(assert (=> mapNonEmpty!16116 (= (arr!5609 (_values!3803 (v!32878 (underlying!7247 (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))))) (store mapRest!16115 mapKey!16116 mapValue!16115))))

(declare-fun res!1132321 () Bool)

(assert (=> start!262046 (=> (not res!1132321) (not e!1699382))))

(assert (=> start!262046 (= res!1132321 ((_ is Lexer!4339) thiss!12257))))

(assert (=> start!262046 e!1699382))

(declare-fun e!1699378 () Bool)

(declare-fun inv!42146 (BalanceConc!19052) Bool)

(assert (=> start!262046 (and (inv!42146 totalInput!354) e!1699378)))

(declare-fun e!1699386 () Bool)

(declare-fun inv!42147 (CacheUp!2138) Bool)

(assert (=> start!262046 (and (inv!42147 cacheUp!486) e!1699386)))

(declare-fun e!1699373 () Bool)

(declare-fun inv!42148 (BalanceConc!19054) Bool)

(assert (=> start!262046 (and (inv!42148 acc!348) e!1699373)))

(assert (=> start!262046 (and (inv!42146 input!780) e!1699372)))

(assert (=> start!262046 (and (inv!42146 treated!26) e!1699380)))

(declare-fun e!1699371 () Bool)

(assert (=> start!262046 e!1699371))

(assert (=> start!262046 true))

(declare-fun e!1699390 () Bool)

(declare-fun inv!42149 (CacheDown!2250) Bool)

(assert (=> start!262046 (and (inv!42149 cacheDown!499) e!1699390)))

(declare-fun b!2695225 () Bool)

(declare-fun tp!852498 () Bool)

(declare-fun inv!42150 (Conc!9720) Bool)

(assert (=> b!2695225 (= e!1699373 (and (inv!42150 (c!434549 acc!348)) tp!852498))))

(declare-fun e!1699379 () Bool)

(assert (=> b!2695226 (= e!1699379 (and e!1699385 tp!852507))))

(declare-fun b!2695227 () Bool)

(declare-fun res!1132329 () Bool)

(assert (=> b!2695227 (=> (not res!1132329) (not e!1699382))))

(declare-fun rulesInvariant!3830 (LexerInterface!4341 List!31190) Bool)

(assert (=> b!2695227 (= res!1132329 (rulesInvariant!3830 thiss!12257 rules!1381))))

(declare-fun b!2695228 () Bool)

(declare-fun e!1699374 () Bool)

(declare-fun lt!952031 () MutLongMap!3522)

(assert (=> b!2695228 (= e!1699383 (and e!1699374 ((_ is LongMap!3522) lt!952031)))))

(assert (=> b!2695228 (= lt!952031 (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))))

(declare-fun b!2695229 () Bool)

(declare-fun e!1699395 () Bool)

(assert (=> b!2695229 (= e!1699395 e!1699375)))

(declare-fun b!2695230 () Bool)

(declare-fun res!1132324 () Bool)

(assert (=> b!2695230 (=> (not res!1132324) (not e!1699382))))

(declare-fun valid!2733 (CacheUp!2138) Bool)

(assert (=> b!2695230 (= res!1132324 (valid!2733 cacheUp!486))))

(declare-fun b!2695231 () Bool)

(assert (=> b!2695231 (= e!1699390 e!1699389)))

(declare-fun b!2695232 () Bool)

(declare-fun tp!852512 () Bool)

(assert (=> b!2695232 (= e!1699381 (and tp!852512 mapRes!16116))))

(declare-fun condMapEmpty!16115 () Bool)

(declare-fun mapDefault!16115 () List!31188)

(assert (=> b!2695232 (= condMapEmpty!16115 (= (arr!5609 (_values!3803 (v!32878 (underlying!7247 (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31188)) mapDefault!16115)))))

(declare-fun b!2695233 () Bool)

(declare-fun e!1699394 () Bool)

(declare-fun e!1699387 () Bool)

(assert (=> b!2695233 (= e!1699394 (not e!1699387))))

(declare-fun res!1132327 () Bool)

(assert (=> b!2695233 (=> res!1132327 e!1699387)))

(declare-datatypes ((tuple2!30670 0))(
  ( (tuple2!30671 (_1!17939 Token!8956) (_2!17939 BalanceConc!19052)) )
))
(declare-datatypes ((Option!6140 0))(
  ( (None!6139) (Some!6139 (v!32882 tuple2!30670)) )
))
(declare-datatypes ((tuple3!4268 0))(
  ( (tuple3!4269 (_1!17940 Option!6140) (_2!17940 CacheUp!2138) (_3!2604 CacheDown!2250)) )
))
(declare-fun lt!952030 () tuple3!4268)

(assert (=> b!2695233 (= res!1132327 (not ((_ is Some!6139) (_1!17940 lt!952030))))))

(declare-fun maxPrefixZipperSequenceMem!16 (LexerInterface!4341 List!31190 BalanceConc!19052 CacheUp!2138 CacheDown!2250) tuple3!4268)

(assert (=> b!2695233 (= lt!952030 (maxPrefixZipperSequenceMem!16 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(assert (=> b!2695233 e!1699376))

(declare-fun res!1132328 () Bool)

(assert (=> b!2695233 (=> (not res!1132328) (not e!1699376))))

(declare-fun lexTailRec!28 (LexerInterface!4341 List!31190 BalanceConc!19052 BalanceConc!19052 BalanceConc!19052 BalanceConc!19054) tuple2!30668)

(assert (=> b!2695233 (= res!1132328 (= (lexTailRec!28 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1699396))))

(declare-fun c!434545 () Bool)

(declare-fun lt!952039 () Option!6140)

(assert (=> b!2695233 (= c!434545 ((_ is Some!6139) lt!952039))))

(declare-fun maxPrefixZipperSequence!1004 (LexerInterface!4341 List!31190 BalanceConc!19052) Option!6140)

(assert (=> b!2695233 (= lt!952039 (maxPrefixZipperSequence!1004 thiss!12257 rules!1381 input!780))))

(declare-fun b!2695234 () Bool)

(declare-fun e!1699369 () Bool)

(assert (=> b!2695234 (= e!1699384 e!1699369)))

(declare-fun res!1132325 () Bool)

(assert (=> b!2695234 (=> (not res!1132325) (not e!1699369))))

(declare-fun lt!952052 () List!31192)

(declare-fun lt!952036 () List!31192)

(assert (=> b!2695234 (= res!1132325 (= lt!952052 lt!952036))))

(declare-fun list!11734 (BalanceConc!19054) List!31192)

(assert (=> b!2695234 (= lt!952036 (list!11734 acc!348))))

(declare-fun lt!952035 () tuple2!30668)

(assert (=> b!2695234 (= lt!952052 (list!11734 (_1!17938 lt!952035)))))

(declare-fun lexRec!604 (LexerInterface!4341 List!31190 BalanceConc!19052) tuple2!30668)

(assert (=> b!2695234 (= lt!952035 (lexRec!604 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2695235 () Bool)

(declare-fun tp!852495 () Bool)

(assert (=> b!2695235 (= e!1699378 (and (inv!42144 (c!434547 totalInput!354)) tp!852495))))

(declare-fun b!2695236 () Bool)

(assert (=> b!2695236 (= e!1699369 e!1699394)))

(declare-fun res!1132326 () Bool)

(assert (=> b!2695236 (=> (not res!1132326) (not e!1699394))))

(declare-fun lt!952028 () tuple2!30668)

(declare-fun lt!952042 () tuple2!30668)

(declare-fun ++!7627 (BalanceConc!19054 BalanceConc!19054) BalanceConc!19054)

(assert (=> b!2695236 (= res!1132326 (= (list!11734 (_1!17938 lt!952042)) (list!11734 (++!7627 acc!348 (_1!17938 lt!952028)))))))

(assert (=> b!2695236 (= lt!952028 (lexRec!604 thiss!12257 rules!1381 input!780))))

(assert (=> b!2695236 (= lt!952042 (lexRec!604 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2695237 () Bool)

(declare-fun e!1699366 () tuple2!30668)

(declare-fun lt!952046 () BalanceConc!19052)

(assert (=> b!2695237 (= e!1699366 (tuple2!30669 (BalanceConc!19055 Empty!9720) lt!952046))))

(declare-fun b!2695238 () Bool)

(declare-fun tp!852501 () Bool)

(assert (=> b!2695238 (= e!1699371 (and e!1699367 tp!852501))))

(declare-fun b!2695239 () Bool)

(assert (=> b!2695239 (= e!1699386 e!1699379)))

(declare-fun b!2695240 () Bool)

(assert (=> b!2695240 (= e!1699387 true)))

(declare-datatypes ((tuple3!4270 0))(
  ( (tuple3!4271 (_1!17941 tuple2!30668) (_2!17941 CacheUp!2138) (_3!2605 CacheDown!2250)) )
))
(declare-fun lt!952048 () tuple3!4270)

(declare-fun lexTailRecMem!10 (LexerInterface!4341 List!31190 BalanceConc!19052 BalanceConc!19052 BalanceConc!19052 BalanceConc!19054 CacheUp!2138 CacheDown!2250) tuple3!4270)

(declare-fun ++!7628 (BalanceConc!19052 BalanceConc!19052) BalanceConc!19052)

(declare-fun charsOf!2991 (Token!8956) BalanceConc!19052)

(declare-fun append!775 (BalanceConc!19054 Token!8956) BalanceConc!19054)

(assert (=> b!2695240 (= lt!952048 (lexTailRecMem!10 thiss!12257 rules!1381 totalInput!354 (++!7628 treated!26 (charsOf!2991 (_1!17939 (v!32882 (_1!17940 lt!952030))))) (_2!17939 (v!32882 (_1!17940 lt!952030))) (append!775 acc!348 (_1!17939 (v!32882 (_1!17940 lt!952030)))) (_2!17940 lt!952030) (_3!2604 lt!952030)))))

(declare-fun lt!952044 () BalanceConc!19054)

(declare-fun b!2695241 () Bool)

(assert (=> b!2695241 (= e!1699396 (lexTailRec!28 thiss!12257 rules!1381 totalInput!354 lt!952046 (_2!17939 (v!32882 lt!952039)) lt!952044))))

(declare-fun lt!952037 () tuple2!30668)

(assert (=> b!2695241 (= lt!952037 (lexRec!604 thiss!12257 rules!1381 (_2!17939 (v!32882 lt!952039))))))

(declare-fun lt!952043 () BalanceConc!19052)

(assert (=> b!2695241 (= lt!952043 (charsOf!2991 (_1!17939 (v!32882 lt!952039))))))

(declare-fun lt!952040 () List!31186)

(assert (=> b!2695241 (= lt!952040 (list!11733 lt!952043))))

(declare-fun lt!952029 () List!31186)

(assert (=> b!2695241 (= lt!952029 (list!11733 (_2!17939 (v!32882 lt!952039))))))

(declare-datatypes ((Unit!45207 0))(
  ( (Unit!45208) )
))
(declare-fun lt!952051 () Unit!45207)

(declare-fun lemmaConcatAssociativity!1554 (List!31186 List!31186 List!31186) Unit!45207)

(assert (=> b!2695241 (= lt!952051 (lemmaConcatAssociativity!1554 lt!952041 lt!952040 lt!952029))))

(declare-fun lt!952027 () List!31186)

(assert (=> b!2695241 (= lt!952027 (++!7626 lt!952041 lt!952040))))

(declare-fun res!1132323 () Bool)

(assert (=> b!2695241 (= res!1132323 (= (++!7626 lt!952027 lt!952029) (++!7626 lt!952041 (++!7626 lt!952040 lt!952029))))))

(declare-fun e!1699393 () Bool)

(assert (=> b!2695241 (=> (not res!1132323) (not e!1699393))))

(assert (=> b!2695241 e!1699393))

(declare-fun lt!952047 () List!31192)

(assert (=> b!2695241 (= lt!952047 (Cons!31092 (_1!17939 (v!32882 lt!952039)) Nil!31092))))

(declare-fun lt!952050 () List!31192)

(assert (=> b!2695241 (= lt!952050 (list!11734 (_1!17938 lt!952037)))))

(declare-fun lt!952032 () Unit!45207)

(declare-fun lemmaConcatAssociativity!1555 (List!31192 List!31192 List!31192) Unit!45207)

(assert (=> b!2695241 (= lt!952032 (lemmaConcatAssociativity!1555 lt!952036 lt!952047 lt!952050))))

(declare-fun ++!7629 (List!31192 List!31192) List!31192)

(assert (=> b!2695241 (= (++!7629 (++!7629 lt!952036 lt!952047) lt!952050) (++!7629 lt!952036 (++!7629 lt!952047 lt!952050)))))

(assert (=> b!2695241 (= lt!952044 (append!775 acc!348 (_1!17939 (v!32882 lt!952039))))))

(declare-fun lt!952049 () List!31192)

(assert (=> b!2695241 (= lt!952049 (list!11734 lt!952044))))

(declare-fun lt!952038 () Unit!45207)

(declare-fun lemmaLexThenLexPrefix!407 (LexerInterface!4341 List!31190 List!31186 List!31186 List!31192 List!31192 List!31186) Unit!45207)

(assert (=> b!2695241 (= lt!952038 (lemmaLexThenLexPrefix!407 thiss!12257 rules!1381 lt!952027 lt!952029 lt!952049 lt!952050 (list!11733 (_2!17938 lt!952037))))))

(declare-datatypes ((tuple2!30672 0))(
  ( (tuple2!30673 (_1!17942 List!31192) (_2!17942 List!31186)) )
))
(declare-fun lexList!1194 (LexerInterface!4341 List!31190 List!31186) tuple2!30672)

(assert (=> b!2695241 (= (lexList!1194 thiss!12257 rules!1381 lt!952027) (tuple2!30673 lt!952049 Nil!31086))))

(assert (=> b!2695241 (= lt!952046 (++!7628 treated!26 lt!952043))))

(declare-fun lt!952034 () Option!6140)

(assert (=> b!2695241 (= lt!952034 (maxPrefixZipperSequence!1004 thiss!12257 rules!1381 lt!952046))))

(declare-fun c!434546 () Bool)

(assert (=> b!2695241 (= c!434546 ((_ is Some!6139) lt!952034))))

(assert (=> b!2695241 (= (lexRec!604 thiss!12257 rules!1381 lt!952046) e!1699366)))

(declare-fun b!2695242 () Bool)

(declare-fun e!1699392 () Bool)

(assert (=> b!2695242 (= e!1699392 e!1699391)))

(declare-fun b!2695243 () Bool)

(declare-fun res!1132319 () Bool)

(assert (=> b!2695243 (=> (not res!1132319) (not e!1699394))))

(assert (=> b!2695243 (= res!1132319 (= (list!11733 (_2!17938 lt!952042)) (list!11733 (_2!17938 lt!952028))))))

(declare-fun b!2695244 () Bool)

(declare-fun prepend!1079 (BalanceConc!19054 Token!8956) BalanceConc!19054)

(assert (=> b!2695244 (= e!1699393 (= lt!952028 (tuple2!30669 (prepend!1079 (_1!17938 lt!952037) (_1!17939 (v!32882 lt!952039))) (_2!17938 lt!952037))))))

(declare-fun b!2695245 () Bool)

(declare-fun res!1132320 () Bool)

(assert (=> b!2695245 (=> (not res!1132320) (not e!1699382))))

(declare-fun isEmpty!17733 (List!31190) Bool)

(assert (=> b!2695245 (= res!1132320 (not (isEmpty!17733 rules!1381)))))

(declare-fun b!2695246 () Bool)

(declare-fun tp!852509 () Bool)

(assert (=> b!2695246 (= e!1699377 (and tp!852509 mapRes!16115))))

(declare-fun condMapEmpty!16116 () Bool)

(declare-fun mapDefault!16116 () List!31191)

(assert (=> b!2695246 (= condMapEmpty!16116 (= (arr!5610 (_values!3804 (v!32880 (underlying!7249 (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31191)) mapDefault!16116)))))

(declare-fun b!2695247 () Bool)

(declare-fun lt!952033 () tuple2!30668)

(assert (=> b!2695247 (= lt!952033 (lexRec!604 thiss!12257 rules!1381 (_2!17939 (v!32882 lt!952034))))))

(assert (=> b!2695247 (= e!1699366 (tuple2!30669 (prepend!1079 (_1!17938 lt!952033) (_1!17939 (v!32882 lt!952034))) (_2!17938 lt!952033)))))

(declare-fun b!2695248 () Bool)

(assert (=> b!2695248 (= e!1699370 e!1699395)))

(declare-fun b!2695249 () Bool)

(assert (=> b!2695249 (= e!1699374 e!1699392)))

(declare-fun mapIsEmpty!16116 () Bool)

(assert (=> mapIsEmpty!16116 mapRes!16115))

(declare-fun b!2695250 () Bool)

(declare-fun res!1132322 () Bool)

(assert (=> b!2695250 (=> (not res!1132322) (not e!1699369))))

(declare-fun isEmpty!17734 (List!31186) Bool)

(assert (=> b!2695250 (= res!1132322 (isEmpty!17734 (list!11733 (_2!17938 lt!952035))))))

(assert (= (and start!262046 res!1132321) b!2695245))

(assert (= (and b!2695245 res!1132320) b!2695227))

(assert (= (and b!2695227 res!1132329) b!2695230))

(assert (= (and b!2695230 res!1132324) b!2695220))

(assert (= (and b!2695220 res!1132317) b!2695222))

(assert (= (and b!2695222 res!1132318) b!2695234))

(assert (= (and b!2695234 res!1132325) b!2695250))

(assert (= (and b!2695250 res!1132322) b!2695236))

(assert (= (and b!2695236 res!1132326) b!2695243))

(assert (= (and b!2695243 res!1132319) b!2695233))

(assert (= (and b!2695233 c!434545) b!2695241))

(assert (= (and b!2695233 (not c!434545)) b!2695219))

(assert (= (and b!2695241 res!1132323) b!2695244))

(assert (= (and b!2695241 c!434546) b!2695247))

(assert (= (and b!2695241 (not c!434546)) b!2695237))

(assert (= (and b!2695233 res!1132328) b!2695218))

(assert (= (and b!2695233 (not res!1132327)) b!2695240))

(assert (= start!262046 b!2695235))

(assert (= (and b!2695246 condMapEmpty!16116) mapIsEmpty!16116))

(assert (= (and b!2695246 (not condMapEmpty!16116)) mapNonEmpty!16115))

(assert (= b!2695223 b!2695246))

(assert (= b!2695229 b!2695223))

(assert (= b!2695248 b!2695229))

(assert (= (and b!2695217 ((_ is LongMap!3523) (v!32881 (underlying!7250 (cache!3572 cacheUp!486))))) b!2695248))

(assert (= b!2695226 b!2695217))

(assert (= (and b!2695239 ((_ is HashMap!3429) (cache!3572 cacheUp!486))) b!2695226))

(assert (= start!262046 b!2695239))

(assert (= start!262046 b!2695225))

(assert (= start!262046 b!2695213))

(assert (= start!262046 b!2695224))

(assert (= b!2695215 b!2695221))

(assert (= b!2695238 b!2695215))

(assert (= (and start!262046 ((_ is Cons!31090) rules!1381)) b!2695238))

(assert (= (and b!2695232 condMapEmpty!16115) mapIsEmpty!16115))

(assert (= (and b!2695232 (not condMapEmpty!16115)) mapNonEmpty!16116))

(assert (= b!2695214 b!2695232))

(assert (= b!2695242 b!2695214))

(assert (= b!2695249 b!2695242))

(assert (= (and b!2695228 ((_ is LongMap!3522) (v!32879 (underlying!7248 (cache!3571 cacheDown!499))))) b!2695249))

(assert (= b!2695216 b!2695228))

(assert (= (and b!2695231 ((_ is HashMap!3428) (cache!3571 cacheDown!499))) b!2695216))

(assert (= start!262046 b!2695231))

(declare-fun m!3076053 () Bool)

(assert (=> b!2695227 m!3076053))

(declare-fun m!3076055 () Bool)

(assert (=> b!2695215 m!3076055))

(declare-fun m!3076057 () Bool)

(assert (=> b!2695215 m!3076057))

(declare-fun m!3076059 () Bool)

(assert (=> b!2695224 m!3076059))

(declare-fun m!3076061 () Bool)

(assert (=> mapNonEmpty!16116 m!3076061))

(declare-fun m!3076063 () Bool)

(assert (=> b!2695218 m!3076063))

(declare-fun m!3076065 () Bool)

(assert (=> b!2695218 m!3076065))

(declare-fun m!3076067 () Bool)

(assert (=> b!2695213 m!3076067))

(declare-fun m!3076069 () Bool)

(assert (=> b!2695234 m!3076069))

(declare-fun m!3076071 () Bool)

(assert (=> b!2695234 m!3076071))

(declare-fun m!3076073 () Bool)

(assert (=> b!2695234 m!3076073))

(declare-fun m!3076075 () Bool)

(assert (=> b!2695245 m!3076075))

(declare-fun m!3076077 () Bool)

(assert (=> b!2695247 m!3076077))

(declare-fun m!3076079 () Bool)

(assert (=> b!2695247 m!3076079))

(declare-fun m!3076081 () Bool)

(assert (=> b!2695243 m!3076081))

(declare-fun m!3076083 () Bool)

(assert (=> b!2695243 m!3076083))

(declare-fun m!3076085 () Bool)

(assert (=> b!2695240 m!3076085))

(assert (=> b!2695240 m!3076085))

(declare-fun m!3076087 () Bool)

(assert (=> b!2695240 m!3076087))

(declare-fun m!3076089 () Bool)

(assert (=> b!2695240 m!3076089))

(assert (=> b!2695240 m!3076087))

(assert (=> b!2695240 m!3076089))

(declare-fun m!3076091 () Bool)

(assert (=> b!2695240 m!3076091))

(declare-fun m!3076093 () Bool)

(assert (=> b!2695220 m!3076093))

(declare-fun m!3076095 () Bool)

(assert (=> b!2695225 m!3076095))

(declare-fun m!3076097 () Bool)

(assert (=> b!2695214 m!3076097))

(declare-fun m!3076099 () Bool)

(assert (=> b!2695214 m!3076099))

(declare-fun m!3076101 () Bool)

(assert (=> b!2695250 m!3076101))

(assert (=> b!2695250 m!3076101))

(declare-fun m!3076103 () Bool)

(assert (=> b!2695250 m!3076103))

(declare-fun m!3076105 () Bool)

(assert (=> mapNonEmpty!16115 m!3076105))

(declare-fun m!3076107 () Bool)

(assert (=> start!262046 m!3076107))

(declare-fun m!3076109 () Bool)

(assert (=> start!262046 m!3076109))

(declare-fun m!3076111 () Bool)

(assert (=> start!262046 m!3076111))

(declare-fun m!3076113 () Bool)

(assert (=> start!262046 m!3076113))

(declare-fun m!3076115 () Bool)

(assert (=> start!262046 m!3076115))

(declare-fun m!3076117 () Bool)

(assert (=> start!262046 m!3076117))

(declare-fun m!3076119 () Bool)

(assert (=> b!2695222 m!3076119))

(declare-fun m!3076121 () Bool)

(assert (=> b!2695222 m!3076121))

(assert (=> b!2695222 m!3076121))

(declare-fun m!3076123 () Bool)

(assert (=> b!2695222 m!3076123))

(declare-fun m!3076125 () Bool)

(assert (=> b!2695222 m!3076125))

(declare-fun m!3076127 () Bool)

(assert (=> b!2695223 m!3076127))

(declare-fun m!3076129 () Bool)

(assert (=> b!2695223 m!3076129))

(declare-fun m!3076131 () Bool)

(assert (=> b!2695244 m!3076131))

(declare-fun m!3076133 () Bool)

(assert (=> b!2695233 m!3076133))

(declare-fun m!3076135 () Bool)

(assert (=> b!2695233 m!3076135))

(declare-fun m!3076137 () Bool)

(assert (=> b!2695233 m!3076137))

(declare-fun m!3076139 () Bool)

(assert (=> b!2695241 m!3076139))

(declare-fun m!3076141 () Bool)

(assert (=> b!2695241 m!3076141))

(declare-fun m!3076143 () Bool)

(assert (=> b!2695241 m!3076143))

(declare-fun m!3076145 () Bool)

(assert (=> b!2695241 m!3076145))

(declare-fun m!3076147 () Bool)

(assert (=> b!2695241 m!3076147))

(declare-fun m!3076149 () Bool)

(assert (=> b!2695241 m!3076149))

(declare-fun m!3076151 () Bool)

(assert (=> b!2695241 m!3076151))

(declare-fun m!3076153 () Bool)

(assert (=> b!2695241 m!3076153))

(declare-fun m!3076155 () Bool)

(assert (=> b!2695241 m!3076155))

(declare-fun m!3076157 () Bool)

(assert (=> b!2695241 m!3076157))

(declare-fun m!3076159 () Bool)

(assert (=> b!2695241 m!3076159))

(declare-fun m!3076161 () Bool)

(assert (=> b!2695241 m!3076161))

(declare-fun m!3076163 () Bool)

(assert (=> b!2695241 m!3076163))

(declare-fun m!3076165 () Bool)

(assert (=> b!2695241 m!3076165))

(declare-fun m!3076167 () Bool)

(assert (=> b!2695241 m!3076167))

(declare-fun m!3076169 () Bool)

(assert (=> b!2695241 m!3076169))

(declare-fun m!3076171 () Bool)

(assert (=> b!2695241 m!3076171))

(assert (=> b!2695241 m!3076143))

(declare-fun m!3076173 () Bool)

(assert (=> b!2695241 m!3076173))

(declare-fun m!3076175 () Bool)

(assert (=> b!2695241 m!3076175))

(assert (=> b!2695241 m!3076159))

(declare-fun m!3076177 () Bool)

(assert (=> b!2695241 m!3076177))

(declare-fun m!3076179 () Bool)

(assert (=> b!2695241 m!3076179))

(declare-fun m!3076181 () Bool)

(assert (=> b!2695241 m!3076181))

(assert (=> b!2695241 m!3076179))

(declare-fun m!3076183 () Bool)

(assert (=> b!2695241 m!3076183))

(assert (=> b!2695241 m!3076149))

(declare-fun m!3076185 () Bool)

(assert (=> b!2695241 m!3076185))

(declare-fun m!3076187 () Bool)

(assert (=> b!2695235 m!3076187))

(declare-fun m!3076189 () Bool)

(assert (=> b!2695230 m!3076189))

(declare-fun m!3076191 () Bool)

(assert (=> b!2695236 m!3076191))

(declare-fun m!3076193 () Bool)

(assert (=> b!2695236 m!3076193))

(assert (=> b!2695236 m!3076191))

(declare-fun m!3076195 () Bool)

(assert (=> b!2695236 m!3076195))

(declare-fun m!3076197 () Bool)

(assert (=> b!2695236 m!3076197))

(declare-fun m!3076199 () Bool)

(assert (=> b!2695236 m!3076199))

(check-sat (not b!2695246) (not b!2695250) (not b!2695225) (not b_next!76811) (not b!2695235) b_and!199243 (not b!2695218) (not b!2695244) (not b!2695232) (not b!2695247) (not b!2695223) b_and!199237 (not b!2695243) (not b!2695236) b_and!199241 (not mapNonEmpty!16116) b_and!199239 (not b!2695213) (not b_next!76809) (not b_next!76817) (not b_next!76819) (not b!2695234) (not start!262046) (not b_next!76813) (not b!2695227) b_and!199235 (not b!2695222) (not b_next!76815) (not b!2695240) (not b!2695230) (not b!2695214) (not b!2695233) (not b!2695224) (not b!2695245) (not b!2695241) (not mapNonEmpty!16115) (not b!2695238) (not b!2695220) b_and!199245 (not b!2695215))
(check-sat b_and!199237 b_and!199241 (not b_next!76811) b_and!199243 (not b_next!76815) b_and!199245 b_and!199239 (not b_next!76809) (not b_next!76817) (not b_next!76819) (not b_next!76813) b_and!199235)
