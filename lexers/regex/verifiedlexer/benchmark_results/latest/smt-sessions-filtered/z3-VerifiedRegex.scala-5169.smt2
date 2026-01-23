; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266246 () Bool)

(assert start!266246)

(declare-fun b!2746374 () Bool)

(declare-fun b_free!77377 () Bool)

(declare-fun b_next!78081 () Bool)

(assert (=> b!2746374 (= b_free!77377 (not b_next!78081))))

(declare-fun tp!865192 () Bool)

(declare-fun b_and!202097 () Bool)

(assert (=> b!2746374 (= tp!865192 b_and!202097)))

(declare-fun b!2746371 () Bool)

(declare-fun b_free!77379 () Bool)

(declare-fun b_next!78083 () Bool)

(assert (=> b!2746371 (= b_free!77379 (not b_next!78083))))

(declare-fun tp!865208 () Bool)

(declare-fun b_and!202099 () Bool)

(assert (=> b!2746371 (= tp!865208 b_and!202099)))

(declare-fun b!2746376 () Bool)

(declare-fun b_free!77381 () Bool)

(declare-fun b_next!78085 () Bool)

(assert (=> b!2746376 (= b_free!77381 (not b_next!78085))))

(declare-fun tp!865205 () Bool)

(declare-fun b_and!202101 () Bool)

(assert (=> b!2746376 (= tp!865205 b_and!202101)))

(declare-fun b!2746378 () Bool)

(declare-fun b_free!77383 () Bool)

(declare-fun b_next!78087 () Bool)

(assert (=> b!2746378 (= b_free!77383 (not b_next!78087))))

(declare-fun tp!865193 () Bool)

(declare-fun b_and!202103 () Bool)

(assert (=> b!2746378 (= tp!865193 b_and!202103)))

(declare-fun b_free!77385 () Bool)

(declare-fun b_next!78089 () Bool)

(assert (=> b!2746378 (= b_free!77385 (not b_next!78089))))

(declare-fun tp!865204 () Bool)

(declare-fun b_and!202105 () Bool)

(assert (=> b!2746378 (= tp!865204 b_and!202105)))

(declare-fun b!2746390 () Bool)

(declare-fun b_free!77387 () Bool)

(declare-fun b_next!78091 () Bool)

(assert (=> b!2746390 (= b_free!77387 (not b_next!78091))))

(declare-fun tp!865203 () Bool)

(declare-fun b_and!202107 () Bool)

(assert (=> b!2746390 (= tp!865203 b_and!202107)))

(declare-fun b!2746368 () Bool)

(declare-fun e!1730304 () Bool)

(declare-datatypes ((List!31743 0))(
  ( (Nil!31643) (Cons!31643 (h!37063 (_ BitVec 16)) (t!227831 List!31743)) )
))
(declare-datatypes ((TokenValue!5070 0))(
  ( (FloatLiteralValue!10140 (text!35935 List!31743)) (TokenValueExt!5069 (__x!20473 Int)) (Broken!25350 (value!155741 List!31743)) (Object!5169) (End!5070) (Def!5070) (Underscore!5070) (Match!5070) (Else!5070) (Error!5070) (Case!5070) (If!5070) (Extends!5070) (Abstract!5070) (Class!5070) (Val!5070) (DelimiterValue!10140 (del!5130 List!31743)) (KeywordValue!5076 (value!155742 List!31743)) (CommentValue!10140 (value!155743 List!31743)) (WhitespaceValue!10140 (value!155744 List!31743)) (IndentationValue!5070 (value!155745 List!31743)) (String!35255) (Int32!5070) (Broken!25351 (value!155746 List!31743)) (Boolean!5071) (Unit!45536) (OperatorValue!5073 (op!5130 List!31743)) (IdentifierValue!10140 (value!155747 List!31743)) (IdentifierValue!10141 (value!155748 List!31743)) (WhitespaceValue!10141 (value!155749 List!31743)) (True!10140) (False!10140) (Broken!25352 (value!155750 List!31743)) (Broken!25353 (value!155751 List!31743)) (True!10141) (RightBrace!5070) (RightBracket!5070) (Colon!5070) (Null!5070) (Comma!5070) (LeftBracket!5070) (False!10141) (LeftBrace!5070) (ImaginaryLiteralValue!5070 (text!35936 List!31743)) (StringLiteralValue!15210 (value!155752 List!31743)) (EOFValue!5070 (value!155753 List!31743)) (IdentValue!5070 (value!155754 List!31743)) (DelimiterValue!10141 (value!155755 List!31743)) (DedentValue!5070 (value!155756 List!31743)) (NewLineValue!5070 (value!155757 List!31743)) (IntegerValue!15210 (value!155758 (_ BitVec 32)) (text!35937 List!31743)) (IntegerValue!15211 (value!155759 Int) (text!35938 List!31743)) (Times!5070) (Or!5070) (Equal!5070) (Minus!5070) (Broken!25354 (value!155760 List!31743)) (And!5070) (Div!5070) (LessEqual!5070) (Mod!5070) (Concat!13073) (Not!5070) (Plus!5070) (SpaceValue!5070 (value!155761 List!31743)) (IntegerValue!15212 (value!155762 Int) (text!35939 List!31743)) (StringLiteralValue!15211 (text!35940 List!31743)) (FloatLiteralValue!10141 (text!35941 List!31743)) (BytesLiteralValue!5070 (value!155763 List!31743)) (CommentValue!10141 (value!155764 List!31743)) (StringLiteralValue!15212 (value!155765 List!31743)) (ErrorTokenValue!5070 (msg!5131 List!31743)) )
))
(declare-datatypes ((C!16164 0))(
  ( (C!16165 (val!10016 Int)) )
))
(declare-datatypes ((List!31744 0))(
  ( (Nil!31644) (Cons!31644 (h!37064 C!16164) (t!227832 List!31744)) )
))
(declare-datatypes ((IArray!19787 0))(
  ( (IArray!19788 (innerList!9951 List!31744)) )
))
(declare-datatypes ((Conc!9891 0))(
  ( (Node!9891 (left!24246 Conc!9891) (right!24576 Conc!9891) (csize!20012 Int) (cheight!10102 Int)) (Leaf!15061 (xs!12998 IArray!19787) (csize!20013 Int)) (Empty!9891) )
))
(declare-datatypes ((BalanceConc!19396 0))(
  ( (BalanceConc!19397 (c!444871 Conc!9891)) )
))
(declare-datatypes ((TokenValueInjection!9580 0))(
  ( (TokenValueInjection!9581 (toValue!6846 Int) (toChars!6705 Int)) )
))
(declare-datatypes ((Regex!8003 0))(
  ( (ElementMatch!8003 (c!444872 C!16164)) (Concat!13074 (regOne!16518 Regex!8003) (regTwo!16518 Regex!8003)) (EmptyExpr!8003) (Star!8003 (reg!8332 Regex!8003)) (EmptyLang!8003) (Union!8003 (regOne!16519 Regex!8003) (regTwo!16519 Regex!8003)) )
))
(declare-datatypes ((String!35256 0))(
  ( (String!35257 (value!155766 String)) )
))
(declare-datatypes ((Rule!9496 0))(
  ( (Rule!9497 (regex!4848 Regex!8003) (tag!5352 String!35256) (isSeparator!4848 Bool) (transformation!4848 TokenValueInjection!9580)) )
))
(declare-datatypes ((List!31745 0))(
  ( (Nil!31645) (Cons!31645 (h!37065 Rule!9496) (t!227833 List!31745)) )
))
(declare-fun rulesArg!249 () List!31745)

(get-info :version)

(assert (=> b!2746368 (= e!1730304 (not (or (and ((_ is Cons!31645) rulesArg!249) ((_ is Nil!31645) (t!227833 rulesArg!249))) ((_ is Cons!31645) rulesArg!249))))))

(declare-fun lt!971770 () List!31744)

(declare-fun isPrefix!2520 (List!31744 List!31744) Bool)

(assert (=> b!2746368 (isPrefix!2520 lt!971770 lt!971770)))

(declare-datatypes ((Unit!45537 0))(
  ( (Unit!45538) )
))
(declare-fun lt!971773 () Unit!45537)

(declare-fun lemmaIsPrefixRefl!1646 (List!31744 List!31744) Unit!45537)

(assert (=> b!2746368 (= lt!971773 (lemmaIsPrefixRefl!1646 lt!971770 lt!971770))))

(declare-fun input!1326 () BalanceConc!19396)

(declare-fun list!12000 (BalanceConc!19396) List!31744)

(assert (=> b!2746368 (= lt!971770 (list!12000 input!1326))))

(declare-fun mapNonEmpty!16505 () Bool)

(declare-fun mapRes!16506 () Bool)

(declare-fun tp!865206 () Bool)

(declare-fun tp!865201 () Bool)

(assert (=> mapNonEmpty!16505 (= mapRes!16506 (and tp!865206 tp!865201))))

(declare-datatypes ((List!31746 0))(
  ( (Nil!31646) (Cons!31646 (h!37066 Regex!8003) (t!227834 List!31746)) )
))
(declare-datatypes ((Context!4442 0))(
  ( (Context!4443 (exprs!2721 List!31746)) )
))
(declare-datatypes ((tuple2!31478 0))(
  ( (tuple2!31479 (_1!18427 Context!4442) (_2!18427 C!16164)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31480 0))(
  ( (tuple2!31481 (_1!18428 tuple2!31478) (_2!18428 (InoxSet Context!4442))) )
))
(declare-datatypes ((List!31747 0))(
  ( (Nil!31647) (Cons!31647 (h!37067 tuple2!31480) (t!227835 List!31747)) )
))
(declare-fun mapRest!16505 () (Array (_ BitVec 32) List!31747))

(declare-fun mapValue!16505 () List!31747)

(declare-datatypes ((array!12893 0))(
  ( (array!12894 (arr!5755 (Array (_ BitVec 32) (_ BitVec 64))) (size!24432 (_ BitVec 32))) )
))
(declare-datatypes ((array!12895 0))(
  ( (array!12896 (arr!5756 (Array (_ BitVec 32) List!31747)) (size!24433 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7238 0))(
  ( (LongMapFixedSize!7239 (defaultEntry!4004 Int) (mask!9357 (_ BitVec 32)) (extraKeys!3868 (_ BitVec 32)) (zeroValue!3878 List!31747) (minValue!3878 List!31747) (_size!7281 (_ BitVec 32)) (_keys!3919 array!12893) (_values!3900 array!12895) (_vacant!3680 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14285 0))(
  ( (Cell!14286 (v!33271 LongMapFixedSize!7238)) )
))
(declare-datatypes ((MutLongMap!3619 0))(
  ( (LongMap!3619 (underlying!7441 Cell!14285)) (MutLongMapExt!3618 (__x!20474 Int)) )
))
(declare-datatypes ((Cell!14287 0))(
  ( (Cell!14288 (v!33272 MutLongMap!3619)) )
))
(declare-datatypes ((Hashable!3535 0))(
  ( (HashableExt!3534 (__x!20475 Int)) )
))
(declare-datatypes ((MutableMap!3525 0))(
  ( (MutableMapExt!3524 (__x!20476 Int)) (HashMap!3525 (underlying!7442 Cell!14287) (hashF!5567 Hashable!3535) (_size!7282 (_ BitVec 32)) (defaultValue!3696 Int)) )
))
(declare-datatypes ((CacheUp!2232 0))(
  ( (CacheUp!2233 (cache!3668 MutableMap!3525)) )
))
(declare-fun cacheUp!633 () CacheUp!2232)

(declare-fun mapKey!16506 () (_ BitVec 32))

(assert (=> mapNonEmpty!16505 (= (arr!5756 (_values!3900 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) (store mapRest!16505 mapKey!16506 mapValue!16505))))

(declare-fun b!2746369 () Bool)

(declare-fun e!1730300 () Bool)

(declare-fun tp!865196 () Bool)

(assert (=> b!2746369 (= e!1730300 (and tp!865196 mapRes!16506))))

(declare-fun condMapEmpty!16506 () Bool)

(declare-fun mapDefault!16505 () List!31747)

(assert (=> b!2746369 (= condMapEmpty!16506 (= (arr!5756 (_values!3900 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31747)) mapDefault!16505)))))

(declare-fun b!2746370 () Bool)

(declare-fun res!1152455 () Bool)

(assert (=> b!2746370 (=> (not res!1152455) (not e!1730304))))

(declare-fun isEmpty!18045 (List!31745) Bool)

(assert (=> b!2746370 (= res!1152455 (not (isEmpty!18045 rulesArg!249)))))

(declare-fun res!1152453 () Bool)

(assert (=> start!266246 (=> (not res!1152453) (not e!1730304))))

(declare-datatypes ((LexerInterface!4441 0))(
  ( (LexerInterfaceExt!4438 (__x!20477 Int)) (Lexer!4439) )
))
(declare-fun thiss!15207 () LexerInterface!4441)

(assert (=> start!266246 (= res!1152453 ((_ is Lexer!4439) thiss!15207))))

(assert (=> start!266246 e!1730304))

(declare-datatypes ((tuple3!4436 0))(
  ( (tuple3!4437 (_1!18429 Regex!8003) (_2!18429 Context!4442) (_3!2688 C!16164)) )
))
(declare-datatypes ((tuple2!31482 0))(
  ( (tuple2!31483 (_1!18430 tuple3!4436) (_2!18430 (InoxSet Context!4442))) )
))
(declare-datatypes ((List!31748 0))(
  ( (Nil!31648) (Cons!31648 (h!37068 tuple2!31482) (t!227836 List!31748)) )
))
(declare-datatypes ((array!12897 0))(
  ( (array!12898 (arr!5757 (Array (_ BitVec 32) List!31748)) (size!24434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7240 0))(
  ( (LongMapFixedSize!7241 (defaultEntry!4005 Int) (mask!9358 (_ BitVec 32)) (extraKeys!3869 (_ BitVec 32)) (zeroValue!3879 List!31748) (minValue!3879 List!31748) (_size!7283 (_ BitVec 32)) (_keys!3920 array!12893) (_values!3901 array!12897) (_vacant!3681 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14289 0))(
  ( (Cell!14290 (v!33273 LongMapFixedSize!7240)) )
))
(declare-datatypes ((MutLongMap!3620 0))(
  ( (LongMap!3620 (underlying!7443 Cell!14289)) (MutLongMapExt!3619 (__x!20478 Int)) )
))
(declare-datatypes ((Cell!14291 0))(
  ( (Cell!14292 (v!33274 MutLongMap!3620)) )
))
(declare-datatypes ((Hashable!3536 0))(
  ( (HashableExt!3535 (__x!20479 Int)) )
))
(declare-datatypes ((MutableMap!3526 0))(
  ( (MutableMapExt!3525 (__x!20480 Int)) (HashMap!3526 (underlying!7444 Cell!14291) (hashF!5568 Hashable!3536) (_size!7284 (_ BitVec 32)) (defaultValue!3697 Int)) )
))
(declare-datatypes ((CacheDown!2350 0))(
  ( (CacheDown!2351 (cache!3669 MutableMap!3526)) )
))
(declare-fun cacheDown!646 () CacheDown!2350)

(declare-fun e!1730289 () Bool)

(declare-fun inv!42996 (CacheDown!2350) Bool)

(assert (=> start!266246 (and (inv!42996 cacheDown!646) e!1730289)))

(declare-fun e!1730293 () Bool)

(declare-fun inv!42997 (BalanceConc!19396) Bool)

(assert (=> start!266246 (and (inv!42997 input!1326) e!1730293)))

(declare-fun e!1730297 () Bool)

(assert (=> start!266246 e!1730297))

(declare-fun e!1730296 () Bool)

(declare-fun inv!42998 (CacheUp!2232) Bool)

(assert (=> start!266246 (and (inv!42998 cacheUp!633) e!1730296)))

(assert (=> start!266246 true))

(declare-fun tp!865197 () Bool)

(declare-fun e!1730291 () Bool)

(declare-fun tp!865191 () Bool)

(declare-fun e!1730307 () Bool)

(declare-fun array_inv!4114 (array!12893) Bool)

(declare-fun array_inv!4115 (array!12897) Bool)

(assert (=> b!2746371 (= e!1730291 (and tp!865208 tp!865197 tp!865191 (array_inv!4114 (_keys!3920 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) (array_inv!4115 (_values!3901 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) e!1730307))))

(declare-fun b!2746372 () Bool)

(declare-fun e!1730292 () Bool)

(declare-fun e!1730290 () Bool)

(assert (=> b!2746372 (= e!1730292 e!1730290)))

(declare-fun b!2746373 () Bool)

(declare-fun res!1152456 () Bool)

(assert (=> b!2746373 (=> (not res!1152456) (not e!1730304))))

(declare-fun valid!2807 (CacheDown!2350) Bool)

(assert (=> b!2746373 (= res!1152456 (valid!2807 cacheDown!646))))

(declare-fun tp!865195 () Bool)

(declare-fun tp!865198 () Bool)

(declare-fun e!1730303 () Bool)

(declare-fun array_inv!4116 (array!12895) Bool)

(assert (=> b!2746374 (= e!1730303 (and tp!865192 tp!865198 tp!865195 (array_inv!4114 (_keys!3919 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) (array_inv!4116 (_values!3900 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) e!1730300))))

(declare-fun b!2746375 () Bool)

(declare-fun e!1730299 () Bool)

(declare-fun e!1730302 () Bool)

(assert (=> b!2746375 (= e!1730299 e!1730302)))

(declare-fun e!1730309 () Bool)

(declare-fun e!1730294 () Bool)

(assert (=> b!2746376 (= e!1730309 (and e!1730294 tp!865205))))

(declare-fun b!2746377 () Bool)

(declare-fun e!1730298 () Bool)

(declare-fun tp!865194 () Bool)

(assert (=> b!2746377 (= e!1730297 (and e!1730298 tp!865194))))

(declare-fun e!1730310 () Bool)

(assert (=> b!2746378 (= e!1730310 (and tp!865193 tp!865204))))

(declare-fun mapIsEmpty!16505 () Bool)

(declare-fun mapRes!16505 () Bool)

(assert (=> mapIsEmpty!16505 mapRes!16505))

(declare-fun b!2746379 () Bool)

(declare-fun tp!865199 () Bool)

(assert (=> b!2746379 (= e!1730307 (and tp!865199 mapRes!16505))))

(declare-fun condMapEmpty!16505 () Bool)

(declare-fun mapDefault!16506 () List!31748)

(assert (=> b!2746379 (= condMapEmpty!16505 (= (arr!5757 (_values!3901 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31748)) mapDefault!16506)))))

(declare-fun b!2746380 () Bool)

(declare-fun res!1152454 () Bool)

(assert (=> b!2746380 (=> (not res!1152454) (not e!1730304))))

(declare-fun valid!2808 (CacheUp!2232) Bool)

(assert (=> b!2746380 (= res!1152454 (valid!2808 cacheUp!633))))

(declare-fun mapIsEmpty!16506 () Bool)

(assert (=> mapIsEmpty!16506 mapRes!16506))

(declare-fun b!2746381 () Bool)

(declare-fun lt!971772 () MutLongMap!3620)

(assert (=> b!2746381 (= e!1730294 (and e!1730292 ((_ is LongMap!3620) lt!971772)))))

(assert (=> b!2746381 (= lt!971772 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))

(declare-fun b!2746382 () Bool)

(assert (=> b!2746382 (= e!1730290 e!1730291)))

(declare-fun b!2746383 () Bool)

(assert (=> b!2746383 (= e!1730289 e!1730309)))

(declare-fun b!2746384 () Bool)

(assert (=> b!2746384 (= e!1730302 e!1730303)))

(declare-fun b!2746385 () Bool)

(declare-fun tp!865207 () Bool)

(declare-fun inv!42999 (Conc!9891) Bool)

(assert (=> b!2746385 (= e!1730293 (and (inv!42999 (c!444871 input!1326)) tp!865207))))

(declare-fun b!2746386 () Bool)

(declare-fun e!1730305 () Bool)

(assert (=> b!2746386 (= e!1730296 e!1730305)))

(declare-fun b!2746387 () Bool)

(declare-fun res!1152457 () Bool)

(assert (=> b!2746387 (=> (not res!1152457) (not e!1730304))))

(declare-fun rulesValidInductive!1711 (LexerInterface!4441 List!31745) Bool)

(assert (=> b!2746387 (= res!1152457 (rulesValidInductive!1711 thiss!15207 rulesArg!249))))

(declare-fun b!2746388 () Bool)

(declare-fun e!1730301 () Bool)

(declare-fun lt!971771 () MutLongMap!3619)

(assert (=> b!2746388 (= e!1730301 (and e!1730299 ((_ is LongMap!3619) lt!971771)))))

(assert (=> b!2746388 (= lt!971771 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))

(declare-fun b!2746389 () Bool)

(declare-fun tp!865200 () Bool)

(declare-fun inv!42995 (String!35256) Bool)

(declare-fun inv!43000 (TokenValueInjection!9580) Bool)

(assert (=> b!2746389 (= e!1730298 (and tp!865200 (inv!42995 (tag!5352 (h!37065 rulesArg!249))) (inv!43000 (transformation!4848 (h!37065 rulesArg!249))) e!1730310))))

(assert (=> b!2746390 (= e!1730305 (and e!1730301 tp!865203))))

(declare-fun mapNonEmpty!16506 () Bool)

(declare-fun tp!865202 () Bool)

(declare-fun tp!865190 () Bool)

(assert (=> mapNonEmpty!16506 (= mapRes!16505 (and tp!865202 tp!865190))))

(declare-fun mapValue!16506 () List!31748)

(declare-fun mapRest!16506 () (Array (_ BitVec 32) List!31748))

(declare-fun mapKey!16505 () (_ BitVec 32))

(assert (=> mapNonEmpty!16506 (= (arr!5757 (_values!3901 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) (store mapRest!16506 mapKey!16505 mapValue!16506))))

(assert (= (and start!266246 res!1152453) b!2746387))

(assert (= (and b!2746387 res!1152457) b!2746370))

(assert (= (and b!2746370 res!1152455) b!2746380))

(assert (= (and b!2746380 res!1152454) b!2746373))

(assert (= (and b!2746373 res!1152456) b!2746368))

(assert (= (and b!2746379 condMapEmpty!16505) mapIsEmpty!16505))

(assert (= (and b!2746379 (not condMapEmpty!16505)) mapNonEmpty!16506))

(assert (= b!2746371 b!2746379))

(assert (= b!2746382 b!2746371))

(assert (= b!2746372 b!2746382))

(assert (= (and b!2746381 ((_ is LongMap!3620) (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))) b!2746372))

(assert (= b!2746376 b!2746381))

(assert (= (and b!2746383 ((_ is HashMap!3526) (cache!3669 cacheDown!646))) b!2746376))

(assert (= start!266246 b!2746383))

(assert (= start!266246 b!2746385))

(assert (= b!2746389 b!2746378))

(assert (= b!2746377 b!2746389))

(assert (= (and start!266246 ((_ is Cons!31645) rulesArg!249)) b!2746377))

(assert (= (and b!2746369 condMapEmpty!16506) mapIsEmpty!16506))

(assert (= (and b!2746369 (not condMapEmpty!16506)) mapNonEmpty!16505))

(assert (= b!2746374 b!2746369))

(assert (= b!2746384 b!2746374))

(assert (= b!2746375 b!2746384))

(assert (= (and b!2746388 ((_ is LongMap!3619) (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))) b!2746375))

(assert (= b!2746390 b!2746388))

(assert (= (and b!2746386 ((_ is HashMap!3525) (cache!3668 cacheUp!633))) b!2746390))

(assert (= start!266246 b!2746386))

(declare-fun m!3162869 () Bool)

(assert (=> mapNonEmpty!16505 m!3162869))

(declare-fun m!3162871 () Bool)

(assert (=> b!2746387 m!3162871))

(declare-fun m!3162873 () Bool)

(assert (=> b!2746380 m!3162873))

(declare-fun m!3162875 () Bool)

(assert (=> b!2746373 m!3162875))

(declare-fun m!3162877 () Bool)

(assert (=> start!266246 m!3162877))

(declare-fun m!3162879 () Bool)

(assert (=> start!266246 m!3162879))

(declare-fun m!3162881 () Bool)

(assert (=> start!266246 m!3162881))

(declare-fun m!3162883 () Bool)

(assert (=> mapNonEmpty!16506 m!3162883))

(declare-fun m!3162885 () Bool)

(assert (=> b!2746370 m!3162885))

(declare-fun m!3162887 () Bool)

(assert (=> b!2746368 m!3162887))

(declare-fun m!3162889 () Bool)

(assert (=> b!2746368 m!3162889))

(declare-fun m!3162891 () Bool)

(assert (=> b!2746368 m!3162891))

(declare-fun m!3162893 () Bool)

(assert (=> b!2746385 m!3162893))

(declare-fun m!3162895 () Bool)

(assert (=> b!2746374 m!3162895))

(declare-fun m!3162897 () Bool)

(assert (=> b!2746374 m!3162897))

(declare-fun m!3162899 () Bool)

(assert (=> b!2746371 m!3162899))

(declare-fun m!3162901 () Bool)

(assert (=> b!2746371 m!3162901))

(declare-fun m!3162903 () Bool)

(assert (=> b!2746389 m!3162903))

(declare-fun m!3162905 () Bool)

(assert (=> b!2746389 m!3162905))

(check-sat (not mapNonEmpty!16505) b_and!202099 (not b!2746374) (not b!2746389) (not b!2746385) (not b!2746373) (not b!2746380) (not b!2746387) (not b!2746371) b_and!202103 (not start!266246) (not b_next!78085) b_and!202105 b_and!202101 (not b!2746369) b_and!202107 (not b!2746370) (not mapNonEmpty!16506) (not b_next!78081) (not b!2746377) (not b!2746368) (not b_next!78083) (not b_next!78087) (not b_next!78089) (not b!2746379) b_and!202097 (not b_next!78091))
(check-sat b_and!202099 b_and!202107 (not b_next!78081) (not b_next!78089) b_and!202103 (not b_next!78085) b_and!202105 b_and!202101 (not b_next!78083) (not b_next!78087) b_and!202097 (not b_next!78091))
(get-model)

(declare-fun b!2746399 () Bool)

(declare-fun e!1730319 () Bool)

(declare-fun e!1730318 () Bool)

(assert (=> b!2746399 (= e!1730319 e!1730318)))

(declare-fun res!1152468 () Bool)

(assert (=> b!2746399 (=> (not res!1152468) (not e!1730318))))

(assert (=> b!2746399 (= res!1152468 (not ((_ is Nil!31644) lt!971770)))))

(declare-fun b!2746400 () Bool)

(declare-fun res!1152466 () Bool)

(assert (=> b!2746400 (=> (not res!1152466) (not e!1730318))))

(declare-fun head!6116 (List!31744) C!16164)

(assert (=> b!2746400 (= res!1152466 (= (head!6116 lt!971770) (head!6116 lt!971770)))))

(declare-fun b!2746401 () Bool)

(declare-fun tail!4354 (List!31744) List!31744)

(assert (=> b!2746401 (= e!1730318 (isPrefix!2520 (tail!4354 lt!971770) (tail!4354 lt!971770)))))

(declare-fun d!796072 () Bool)

(declare-fun e!1730317 () Bool)

(assert (=> d!796072 e!1730317))

(declare-fun res!1152467 () Bool)

(assert (=> d!796072 (=> res!1152467 e!1730317)))

(declare-fun lt!971776 () Bool)

(assert (=> d!796072 (= res!1152467 (not lt!971776))))

(assert (=> d!796072 (= lt!971776 e!1730319)))

(declare-fun res!1152469 () Bool)

(assert (=> d!796072 (=> res!1152469 e!1730319)))

(assert (=> d!796072 (= res!1152469 ((_ is Nil!31644) lt!971770))))

(assert (=> d!796072 (= (isPrefix!2520 lt!971770 lt!971770) lt!971776)))

(declare-fun b!2746402 () Bool)

(declare-fun size!24435 (List!31744) Int)

(assert (=> b!2746402 (= e!1730317 (>= (size!24435 lt!971770) (size!24435 lt!971770)))))

(assert (= (and d!796072 (not res!1152469)) b!2746399))

(assert (= (and b!2746399 res!1152468) b!2746400))

(assert (= (and b!2746400 res!1152466) b!2746401))

(assert (= (and d!796072 (not res!1152467)) b!2746402))

(declare-fun m!3162907 () Bool)

(assert (=> b!2746400 m!3162907))

(assert (=> b!2746400 m!3162907))

(declare-fun m!3162909 () Bool)

(assert (=> b!2746401 m!3162909))

(assert (=> b!2746401 m!3162909))

(assert (=> b!2746401 m!3162909))

(assert (=> b!2746401 m!3162909))

(declare-fun m!3162911 () Bool)

(assert (=> b!2746401 m!3162911))

(declare-fun m!3162913 () Bool)

(assert (=> b!2746402 m!3162913))

(assert (=> b!2746402 m!3162913))

(assert (=> b!2746368 d!796072))

(declare-fun d!796074 () Bool)

(assert (=> d!796074 (isPrefix!2520 lt!971770 lt!971770)))

(declare-fun lt!971779 () Unit!45537)

(declare-fun choose!16069 (List!31744 List!31744) Unit!45537)

(assert (=> d!796074 (= lt!971779 (choose!16069 lt!971770 lt!971770))))

(assert (=> d!796074 (= (lemmaIsPrefixRefl!1646 lt!971770 lt!971770) lt!971779)))

(declare-fun bs!490290 () Bool)

(assert (= bs!490290 d!796074))

(assert (=> bs!490290 m!3162887))

(declare-fun m!3162915 () Bool)

(assert (=> bs!490290 m!3162915))

(assert (=> b!2746368 d!796074))

(declare-fun d!796076 () Bool)

(declare-fun list!12001 (Conc!9891) List!31744)

(assert (=> d!796076 (= (list!12000 input!1326) (list!12001 (c!444871 input!1326)))))

(declare-fun bs!490291 () Bool)

(assert (= bs!490291 d!796076))

(declare-fun m!3162917 () Bool)

(assert (=> bs!490291 m!3162917))

(assert (=> b!2746368 d!796076))

(declare-fun d!796078 () Bool)

(assert (=> d!796078 true))

(declare-fun lt!971782 () Bool)

(declare-fun lambda!100864 () Int)

(declare-fun forall!6582 (List!31745 Int) Bool)

(assert (=> d!796078 (= lt!971782 (forall!6582 rulesArg!249 lambda!100864))))

(declare-fun e!1730324 () Bool)

(assert (=> d!796078 (= lt!971782 e!1730324)))

(declare-fun res!1152475 () Bool)

(assert (=> d!796078 (=> res!1152475 e!1730324)))

(assert (=> d!796078 (= res!1152475 (not ((_ is Cons!31645) rulesArg!249)))))

(assert (=> d!796078 (= (rulesValidInductive!1711 thiss!15207 rulesArg!249) lt!971782)))

(declare-fun b!2746407 () Bool)

(declare-fun e!1730325 () Bool)

(assert (=> b!2746407 (= e!1730324 e!1730325)))

(declare-fun res!1152474 () Bool)

(assert (=> b!2746407 (=> (not res!1152474) (not e!1730325))))

(declare-fun ruleValid!1590 (LexerInterface!4441 Rule!9496) Bool)

(assert (=> b!2746407 (= res!1152474 (ruleValid!1590 thiss!15207 (h!37065 rulesArg!249)))))

(declare-fun b!2746408 () Bool)

(assert (=> b!2746408 (= e!1730325 (rulesValidInductive!1711 thiss!15207 (t!227833 rulesArg!249)))))

(assert (= (and d!796078 (not res!1152475)) b!2746407))

(assert (= (and b!2746407 res!1152474) b!2746408))

(declare-fun m!3162919 () Bool)

(assert (=> d!796078 m!3162919))

(declare-fun m!3162921 () Bool)

(assert (=> b!2746407 m!3162921))

(declare-fun m!3162923 () Bool)

(assert (=> b!2746408 m!3162923))

(assert (=> b!2746387 d!796078))

(declare-fun d!796080 () Bool)

(declare-fun validCacheMapDown!371 (MutableMap!3526) Bool)

(assert (=> d!796080 (= (valid!2807 cacheDown!646) (validCacheMapDown!371 (cache!3669 cacheDown!646)))))

(declare-fun bs!490292 () Bool)

(assert (= bs!490292 d!796080))

(declare-fun m!3162925 () Bool)

(assert (=> bs!490292 m!3162925))

(assert (=> b!2746373 d!796080))

(declare-fun d!796082 () Bool)

(assert (=> d!796082 (= (array_inv!4114 (_keys!3919 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) (bvsge (size!24432 (_keys!3919 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746374 d!796082))

(declare-fun d!796084 () Bool)

(assert (=> d!796084 (= (array_inv!4116 (_values!3900 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) (bvsge (size!24433 (_values!3900 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746374 d!796084))

(declare-fun d!796086 () Bool)

(assert (=> d!796086 (= (inv!42995 (tag!5352 (h!37065 rulesArg!249))) (= (mod (str.len (value!155766 (tag!5352 (h!37065 rulesArg!249)))) 2) 0))))

(assert (=> b!2746389 d!796086))

(declare-fun d!796088 () Bool)

(declare-fun res!1152478 () Bool)

(declare-fun e!1730328 () Bool)

(assert (=> d!796088 (=> (not res!1152478) (not e!1730328))))

(declare-fun semiInverseModEq!2002 (Int Int) Bool)

(assert (=> d!796088 (= res!1152478 (semiInverseModEq!2002 (toChars!6705 (transformation!4848 (h!37065 rulesArg!249))) (toValue!6846 (transformation!4848 (h!37065 rulesArg!249)))))))

(assert (=> d!796088 (= (inv!43000 (transformation!4848 (h!37065 rulesArg!249))) e!1730328)))

(declare-fun b!2746413 () Bool)

(declare-fun equivClasses!1903 (Int Int) Bool)

(assert (=> b!2746413 (= e!1730328 (equivClasses!1903 (toChars!6705 (transformation!4848 (h!37065 rulesArg!249))) (toValue!6846 (transformation!4848 (h!37065 rulesArg!249)))))))

(assert (= (and d!796088 res!1152478) b!2746413))

(declare-fun m!3162927 () Bool)

(assert (=> d!796088 m!3162927))

(declare-fun m!3162929 () Bool)

(assert (=> b!2746413 m!3162929))

(assert (=> b!2746389 d!796088))

(declare-fun d!796090 () Bool)

(declare-fun validCacheMapUp!340 (MutableMap!3525) Bool)

(assert (=> d!796090 (= (valid!2808 cacheUp!633) (validCacheMapUp!340 (cache!3668 cacheUp!633)))))

(declare-fun bs!490293 () Bool)

(assert (= bs!490293 d!796090))

(declare-fun m!3162931 () Bool)

(assert (=> bs!490293 m!3162931))

(assert (=> b!2746380 d!796090))

(declare-fun d!796092 () Bool)

(assert (=> d!796092 (= (isEmpty!18045 rulesArg!249) ((_ is Nil!31645) rulesArg!249))))

(assert (=> b!2746370 d!796092))

(declare-fun d!796094 () Bool)

(declare-fun c!444875 () Bool)

(assert (=> d!796094 (= c!444875 ((_ is Node!9891) (c!444871 input!1326)))))

(declare-fun e!1730333 () Bool)

(assert (=> d!796094 (= (inv!42999 (c!444871 input!1326)) e!1730333)))

(declare-fun b!2746420 () Bool)

(declare-fun inv!43001 (Conc!9891) Bool)

(assert (=> b!2746420 (= e!1730333 (inv!43001 (c!444871 input!1326)))))

(declare-fun b!2746421 () Bool)

(declare-fun e!1730334 () Bool)

(assert (=> b!2746421 (= e!1730333 e!1730334)))

(declare-fun res!1152481 () Bool)

(assert (=> b!2746421 (= res!1152481 (not ((_ is Leaf!15061) (c!444871 input!1326))))))

(assert (=> b!2746421 (=> res!1152481 e!1730334)))

(declare-fun b!2746422 () Bool)

(declare-fun inv!43002 (Conc!9891) Bool)

(assert (=> b!2746422 (= e!1730334 (inv!43002 (c!444871 input!1326)))))

(assert (= (and d!796094 c!444875) b!2746420))

(assert (= (and d!796094 (not c!444875)) b!2746421))

(assert (= (and b!2746421 (not res!1152481)) b!2746422))

(declare-fun m!3162933 () Bool)

(assert (=> b!2746420 m!3162933))

(declare-fun m!3162935 () Bool)

(assert (=> b!2746422 m!3162935))

(assert (=> b!2746385 d!796094))

(declare-fun d!796096 () Bool)

(assert (=> d!796096 (= (array_inv!4114 (_keys!3920 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) (bvsge (size!24432 (_keys!3920 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746371 d!796096))

(declare-fun d!796098 () Bool)

(assert (=> d!796098 (= (array_inv!4115 (_values!3901 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) (bvsge (size!24434 (_values!3901 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746371 d!796098))

(declare-fun d!796100 () Bool)

(declare-fun res!1152484 () Bool)

(declare-fun e!1730337 () Bool)

(assert (=> d!796100 (=> (not res!1152484) (not e!1730337))))

(assert (=> d!796100 (= res!1152484 ((_ is HashMap!3526) (cache!3669 cacheDown!646)))))

(assert (=> d!796100 (= (inv!42996 cacheDown!646) e!1730337)))

(declare-fun b!2746425 () Bool)

(assert (=> b!2746425 (= e!1730337 (validCacheMapDown!371 (cache!3669 cacheDown!646)))))

(assert (= (and d!796100 res!1152484) b!2746425))

(assert (=> b!2746425 m!3162925))

(assert (=> start!266246 d!796100))

(declare-fun d!796102 () Bool)

(declare-fun isBalanced!3014 (Conc!9891) Bool)

(assert (=> d!796102 (= (inv!42997 input!1326) (isBalanced!3014 (c!444871 input!1326)))))

(declare-fun bs!490294 () Bool)

(assert (= bs!490294 d!796102))

(declare-fun m!3162937 () Bool)

(assert (=> bs!490294 m!3162937))

(assert (=> start!266246 d!796102))

(declare-fun d!796104 () Bool)

(declare-fun res!1152487 () Bool)

(declare-fun e!1730340 () Bool)

(assert (=> d!796104 (=> (not res!1152487) (not e!1730340))))

(assert (=> d!796104 (= res!1152487 ((_ is HashMap!3525) (cache!3668 cacheUp!633)))))

(assert (=> d!796104 (= (inv!42998 cacheUp!633) e!1730340)))

(declare-fun b!2746428 () Bool)

(assert (=> b!2746428 (= e!1730340 (validCacheMapUp!340 (cache!3668 cacheUp!633)))))

(assert (= (and d!796104 res!1152487) b!2746428))

(assert (=> b!2746428 m!3162931))

(assert (=> start!266246 d!796104))

(declare-fun setElem!21695 () Context!4442)

(declare-fun tp!865232 () Bool)

(declare-fun e!1730353 () Bool)

(declare-fun setRes!21695 () Bool)

(declare-fun setNonEmpty!21695 () Bool)

(declare-fun inv!43003 (Context!4442) Bool)

(assert (=> setNonEmpty!21695 (= setRes!21695 (and tp!865232 (inv!43003 setElem!21695) e!1730353))))

(declare-fun mapDefault!16509 () List!31747)

(declare-fun setRest!21696 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21695 (= (_2!18428 (h!37067 mapDefault!16509)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21695 true) setRest!21696))))

(declare-fun setIsEmpty!21695 () Bool)

(assert (=> setIsEmpty!21695 setRes!21695))

(declare-fun b!2746443 () Bool)

(declare-fun e!1730356 () Bool)

(declare-fun tp!865229 () Bool)

(assert (=> b!2746443 (= e!1730356 tp!865229)))

(declare-fun condMapEmpty!16509 () Bool)

(assert (=> mapNonEmpty!16505 (= condMapEmpty!16509 (= mapRest!16505 ((as const (Array (_ BitVec 32) List!31747)) mapDefault!16509)))))

(declare-fun e!1730357 () Bool)

(declare-fun mapRes!16509 () Bool)

(assert (=> mapNonEmpty!16505 (= tp!865206 (and e!1730357 mapRes!16509))))

(declare-fun mapNonEmpty!16509 () Bool)

(declare-fun tp!865233 () Bool)

(declare-fun e!1730355 () Bool)

(assert (=> mapNonEmpty!16509 (= mapRes!16509 (and tp!865233 e!1730355))))

(declare-fun mapRest!16509 () (Array (_ BitVec 32) List!31747))

(declare-fun mapValue!16509 () List!31747)

(declare-fun mapKey!16509 () (_ BitVec 32))

(assert (=> mapNonEmpty!16509 (= mapRest!16505 (store mapRest!16509 mapKey!16509 mapValue!16509))))

(declare-fun b!2746444 () Bool)

(declare-fun e!1730354 () Bool)

(declare-fun tp!865231 () Bool)

(assert (=> b!2746444 (= e!1730354 tp!865231)))

(declare-fun mapIsEmpty!16509 () Bool)

(assert (=> mapIsEmpty!16509 mapRes!16509))

(declare-fun setRes!21696 () Bool)

(declare-fun b!2746445 () Bool)

(declare-fun tp_is_empty!13935 () Bool)

(declare-fun tp!865230 () Bool)

(assert (=> b!2746445 (= e!1730355 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 mapValue!16509)))) e!1730356 tp_is_empty!13935 setRes!21696 tp!865230))))

(declare-fun condSetEmpty!21696 () Bool)

(assert (=> b!2746445 (= condSetEmpty!21696 (= (_2!18428 (h!37067 mapValue!16509)) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun b!2746446 () Bool)

(declare-fun tp!865227 () Bool)

(assert (=> b!2746446 (= e!1730353 tp!865227)))

(declare-fun b!2746447 () Bool)

(declare-fun tp!865235 () Bool)

(declare-fun e!1730358 () Bool)

(assert (=> b!2746447 (= e!1730357 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 mapDefault!16509)))) e!1730358 tp_is_empty!13935 setRes!21695 tp!865235))))

(declare-fun condSetEmpty!21695 () Bool)

(assert (=> b!2746447 (= condSetEmpty!21695 (= (_2!18428 (h!37067 mapDefault!16509)) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun setIsEmpty!21696 () Bool)

(assert (=> setIsEmpty!21696 setRes!21696))

(declare-fun b!2746448 () Bool)

(declare-fun tp!865228 () Bool)

(assert (=> b!2746448 (= e!1730358 tp!865228)))

(declare-fun setElem!21696 () Context!4442)

(declare-fun setNonEmpty!21696 () Bool)

(declare-fun tp!865234 () Bool)

(assert (=> setNonEmpty!21696 (= setRes!21696 (and tp!865234 (inv!43003 setElem!21696) e!1730354))))

(declare-fun setRest!21695 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21696 (= (_2!18428 (h!37067 mapValue!16509)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21696 true) setRest!21695))))

(assert (= (and mapNonEmpty!16505 condMapEmpty!16509) mapIsEmpty!16509))

(assert (= (and mapNonEmpty!16505 (not condMapEmpty!16509)) mapNonEmpty!16509))

(assert (= b!2746445 b!2746443))

(assert (= (and b!2746445 condSetEmpty!21696) setIsEmpty!21696))

(assert (= (and b!2746445 (not condSetEmpty!21696)) setNonEmpty!21696))

(assert (= setNonEmpty!21696 b!2746444))

(assert (= (and mapNonEmpty!16509 ((_ is Cons!31647) mapValue!16509)) b!2746445))

(assert (= b!2746447 b!2746448))

(assert (= (and b!2746447 condSetEmpty!21695) setIsEmpty!21695))

(assert (= (and b!2746447 (not condSetEmpty!21695)) setNonEmpty!21695))

(assert (= setNonEmpty!21695 b!2746446))

(assert (= (and mapNonEmpty!16505 ((_ is Cons!31647) mapDefault!16509)) b!2746447))

(declare-fun m!3162939 () Bool)

(assert (=> b!2746445 m!3162939))

(declare-fun m!3162941 () Bool)

(assert (=> mapNonEmpty!16509 m!3162941))

(declare-fun m!3162943 () Bool)

(assert (=> b!2746447 m!3162943))

(declare-fun m!3162945 () Bool)

(assert (=> setNonEmpty!21695 m!3162945))

(declare-fun m!3162947 () Bool)

(assert (=> setNonEmpty!21696 m!3162947))

(declare-fun e!1730366 () Bool)

(assert (=> mapNonEmpty!16505 (= tp!865201 e!1730366)))

(declare-fun b!2746457 () Bool)

(declare-fun e!1730367 () Bool)

(declare-fun tp!865247 () Bool)

(assert (=> b!2746457 (= e!1730367 tp!865247)))

(declare-fun setIsEmpty!21699 () Bool)

(declare-fun setRes!21699 () Bool)

(assert (=> setIsEmpty!21699 setRes!21699))

(declare-fun b!2746458 () Bool)

(declare-fun e!1730365 () Bool)

(declare-fun tp!865245 () Bool)

(assert (=> b!2746458 (= e!1730365 tp!865245)))

(declare-fun tp!865244 () Bool)

(declare-fun setElem!21699 () Context!4442)

(declare-fun setNonEmpty!21699 () Bool)

(assert (=> setNonEmpty!21699 (= setRes!21699 (and tp!865244 (inv!43003 setElem!21699) e!1730365))))

(declare-fun setRest!21699 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21699 (= (_2!18428 (h!37067 mapValue!16505)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21699 true) setRest!21699))))

(declare-fun b!2746459 () Bool)

(declare-fun tp!865246 () Bool)

(assert (=> b!2746459 (= e!1730366 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 mapValue!16505)))) e!1730367 tp_is_empty!13935 setRes!21699 tp!865246))))

(declare-fun condSetEmpty!21699 () Bool)

(assert (=> b!2746459 (= condSetEmpty!21699 (= (_2!18428 (h!37067 mapValue!16505)) ((as const (Array Context!4442 Bool)) false)))))

(assert (= b!2746459 b!2746457))

(assert (= (and b!2746459 condSetEmpty!21699) setIsEmpty!21699))

(assert (= (and b!2746459 (not condSetEmpty!21699)) setNonEmpty!21699))

(assert (= setNonEmpty!21699 b!2746458))

(assert (= (and mapNonEmpty!16505 ((_ is Cons!31647) mapValue!16505)) b!2746459))

(declare-fun m!3162949 () Bool)

(assert (=> setNonEmpty!21699 m!3162949))

(declare-fun m!3162951 () Bool)

(assert (=> b!2746459 m!3162951))

(declare-fun e!1730369 () Bool)

(assert (=> b!2746369 (= tp!865196 e!1730369)))

(declare-fun b!2746460 () Bool)

(declare-fun e!1730370 () Bool)

(declare-fun tp!865251 () Bool)

(assert (=> b!2746460 (= e!1730370 tp!865251)))

(declare-fun setIsEmpty!21700 () Bool)

(declare-fun setRes!21700 () Bool)

(assert (=> setIsEmpty!21700 setRes!21700))

(declare-fun b!2746461 () Bool)

(declare-fun e!1730368 () Bool)

(declare-fun tp!865249 () Bool)

(assert (=> b!2746461 (= e!1730368 tp!865249)))

(declare-fun setNonEmpty!21700 () Bool)

(declare-fun setElem!21700 () Context!4442)

(declare-fun tp!865248 () Bool)

(assert (=> setNonEmpty!21700 (= setRes!21700 (and tp!865248 (inv!43003 setElem!21700) e!1730368))))

(declare-fun setRest!21700 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21700 (= (_2!18428 (h!37067 mapDefault!16505)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21700 true) setRest!21700))))

(declare-fun tp!865250 () Bool)

(declare-fun b!2746462 () Bool)

(assert (=> b!2746462 (= e!1730369 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 mapDefault!16505)))) e!1730370 tp_is_empty!13935 setRes!21700 tp!865250))))

(declare-fun condSetEmpty!21700 () Bool)

(assert (=> b!2746462 (= condSetEmpty!21700 (= (_2!18428 (h!37067 mapDefault!16505)) ((as const (Array Context!4442 Bool)) false)))))

(assert (= b!2746462 b!2746460))

(assert (= (and b!2746462 condSetEmpty!21700) setIsEmpty!21700))

(assert (= (and b!2746462 (not condSetEmpty!21700)) setNonEmpty!21700))

(assert (= setNonEmpty!21700 b!2746461))

(assert (= (and b!2746369 ((_ is Cons!31647) mapDefault!16505)) b!2746462))

(declare-fun m!3162953 () Bool)

(assert (=> setNonEmpty!21700 m!3162953))

(declare-fun m!3162955 () Bool)

(assert (=> b!2746462 m!3162955))

(declare-fun e!1730372 () Bool)

(assert (=> b!2746374 (= tp!865198 e!1730372)))

(declare-fun b!2746463 () Bool)

(declare-fun e!1730373 () Bool)

(declare-fun tp!865255 () Bool)

(assert (=> b!2746463 (= e!1730373 tp!865255)))

(declare-fun setIsEmpty!21701 () Bool)

(declare-fun setRes!21701 () Bool)

(assert (=> setIsEmpty!21701 setRes!21701))

(declare-fun b!2746464 () Bool)

(declare-fun e!1730371 () Bool)

(declare-fun tp!865253 () Bool)

(assert (=> b!2746464 (= e!1730371 tp!865253)))

(declare-fun setNonEmpty!21701 () Bool)

(declare-fun tp!865252 () Bool)

(declare-fun setElem!21701 () Context!4442)

(assert (=> setNonEmpty!21701 (= setRes!21701 (and tp!865252 (inv!43003 setElem!21701) e!1730371))))

(declare-fun setRest!21701 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21701 (= (_2!18428 (h!37067 (zeroValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21701 true) setRest!21701))))

(declare-fun tp!865254 () Bool)

(declare-fun b!2746465 () Bool)

(assert (=> b!2746465 (= e!1730372 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 (zeroValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))))) e!1730373 tp_is_empty!13935 setRes!21701 tp!865254))))

(declare-fun condSetEmpty!21701 () Bool)

(assert (=> b!2746465 (= condSetEmpty!21701 (= (_2!18428 (h!37067 (zeroValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) ((as const (Array Context!4442 Bool)) false)))))

(assert (= b!2746465 b!2746463))

(assert (= (and b!2746465 condSetEmpty!21701) setIsEmpty!21701))

(assert (= (and b!2746465 (not condSetEmpty!21701)) setNonEmpty!21701))

(assert (= setNonEmpty!21701 b!2746464))

(assert (= (and b!2746374 ((_ is Cons!31647) (zeroValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) b!2746465))

(declare-fun m!3162957 () Bool)

(assert (=> setNonEmpty!21701 m!3162957))

(declare-fun m!3162959 () Bool)

(assert (=> b!2746465 m!3162959))

(declare-fun e!1730375 () Bool)

(assert (=> b!2746374 (= tp!865195 e!1730375)))

(declare-fun b!2746466 () Bool)

(declare-fun e!1730376 () Bool)

(declare-fun tp!865259 () Bool)

(assert (=> b!2746466 (= e!1730376 tp!865259)))

(declare-fun setIsEmpty!21702 () Bool)

(declare-fun setRes!21702 () Bool)

(assert (=> setIsEmpty!21702 setRes!21702))

(declare-fun b!2746467 () Bool)

(declare-fun e!1730374 () Bool)

(declare-fun tp!865257 () Bool)

(assert (=> b!2746467 (= e!1730374 tp!865257)))

(declare-fun tp!865256 () Bool)

(declare-fun setNonEmpty!21702 () Bool)

(declare-fun setElem!21702 () Context!4442)

(assert (=> setNonEmpty!21702 (= setRes!21702 (and tp!865256 (inv!43003 setElem!21702) e!1730374))))

(declare-fun setRest!21702 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21702 (= (_2!18428 (h!37067 (minValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21702 true) setRest!21702))))

(declare-fun tp!865258 () Bool)

(declare-fun b!2746468 () Bool)

(assert (=> b!2746468 (= e!1730375 (and (inv!43003 (_1!18427 (_1!18428 (h!37067 (minValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))))) e!1730376 tp_is_empty!13935 setRes!21702 tp!865258))))

(declare-fun condSetEmpty!21702 () Bool)

(assert (=> b!2746468 (= condSetEmpty!21702 (= (_2!18428 (h!37067 (minValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) ((as const (Array Context!4442 Bool)) false)))))

(assert (= b!2746468 b!2746466))

(assert (= (and b!2746468 condSetEmpty!21702) setIsEmpty!21702))

(assert (= (and b!2746468 (not condSetEmpty!21702)) setNonEmpty!21702))

(assert (= setNonEmpty!21702 b!2746467))

(assert (= (and b!2746374 ((_ is Cons!31647) (minValue!3878 (v!33271 (underlying!7441 (v!33272 (underlying!7442 (cache!3668 cacheUp!633)))))))) b!2746468))

(declare-fun m!3162961 () Bool)

(assert (=> setNonEmpty!21702 m!3162961))

(declare-fun m!3162963 () Bool)

(assert (=> b!2746468 m!3162963))

(declare-fun b!2746482 () Bool)

(declare-fun e!1730379 () Bool)

(declare-fun tp!865270 () Bool)

(declare-fun tp!865273 () Bool)

(assert (=> b!2746482 (= e!1730379 (and tp!865270 tp!865273))))

(declare-fun b!2746480 () Bool)

(declare-fun tp!865272 () Bool)

(declare-fun tp!865274 () Bool)

(assert (=> b!2746480 (= e!1730379 (and tp!865272 tp!865274))))

(declare-fun b!2746479 () Bool)

(assert (=> b!2746479 (= e!1730379 tp_is_empty!13935)))

(declare-fun b!2746481 () Bool)

(declare-fun tp!865271 () Bool)

(assert (=> b!2746481 (= e!1730379 tp!865271)))

(assert (=> b!2746389 (= tp!865200 e!1730379)))

(assert (= (and b!2746389 ((_ is ElementMatch!8003) (regex!4848 (h!37065 rulesArg!249)))) b!2746479))

(assert (= (and b!2746389 ((_ is Concat!13074) (regex!4848 (h!37065 rulesArg!249)))) b!2746480))

(assert (= (and b!2746389 ((_ is Star!8003) (regex!4848 (h!37065 rulesArg!249)))) b!2746481))

(assert (= (and b!2746389 ((_ is Union!8003) (regex!4848 (h!37065 rulesArg!249)))) b!2746482))

(declare-fun setRes!21705 () Bool)

(declare-fun e!1730387 () Bool)

(declare-fun tp!865289 () Bool)

(declare-fun b!2746491 () Bool)

(declare-fun tp!865288 () Bool)

(declare-fun e!1730386 () Bool)

(assert (=> b!2746491 (= e!1730386 (and tp!865289 (inv!43003 (_2!18429 (_1!18430 (h!37068 mapDefault!16506)))) e!1730387 tp_is_empty!13935 setRes!21705 tp!865288))))

(declare-fun condSetEmpty!21705 () Bool)

(assert (=> b!2746491 (= condSetEmpty!21705 (= (_2!18430 (h!37068 mapDefault!16506)) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun setElem!21705 () Context!4442)

(declare-fun tp!865287 () Bool)

(declare-fun setNonEmpty!21705 () Bool)

(declare-fun e!1730388 () Bool)

(assert (=> setNonEmpty!21705 (= setRes!21705 (and tp!865287 (inv!43003 setElem!21705) e!1730388))))

(declare-fun setRest!21705 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21705 (= (_2!18430 (h!37068 mapDefault!16506)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21705 true) setRest!21705))))

(declare-fun b!2746492 () Bool)

(declare-fun tp!865285 () Bool)

(assert (=> b!2746492 (= e!1730387 tp!865285)))

(assert (=> b!2746379 (= tp!865199 e!1730386)))

(declare-fun b!2746493 () Bool)

(declare-fun tp!865286 () Bool)

(assert (=> b!2746493 (= e!1730388 tp!865286)))

(declare-fun setIsEmpty!21705 () Bool)

(assert (=> setIsEmpty!21705 setRes!21705))

(assert (= b!2746491 b!2746492))

(assert (= (and b!2746491 condSetEmpty!21705) setIsEmpty!21705))

(assert (= (and b!2746491 (not condSetEmpty!21705)) setNonEmpty!21705))

(assert (= setNonEmpty!21705 b!2746493))

(assert (= (and b!2746379 ((_ is Cons!31648) mapDefault!16506)) b!2746491))

(declare-fun m!3162965 () Bool)

(assert (=> b!2746491 m!3162965))

(declare-fun m!3162967 () Bool)

(assert (=> setNonEmpty!21705 m!3162967))

(declare-fun b!2746502 () Bool)

(declare-fun tp!865296 () Bool)

(declare-fun tp!865298 () Bool)

(declare-fun e!1730394 () Bool)

(assert (=> b!2746502 (= e!1730394 (and (inv!42999 (left!24246 (c!444871 input!1326))) tp!865296 (inv!42999 (right!24576 (c!444871 input!1326))) tp!865298))))

(declare-fun b!2746504 () Bool)

(declare-fun e!1730393 () Bool)

(declare-fun tp!865297 () Bool)

(assert (=> b!2746504 (= e!1730393 tp!865297)))

(declare-fun b!2746503 () Bool)

(declare-fun inv!43004 (IArray!19787) Bool)

(assert (=> b!2746503 (= e!1730394 (and (inv!43004 (xs!12998 (c!444871 input!1326))) e!1730393))))

(assert (=> b!2746385 (= tp!865207 (and (inv!42999 (c!444871 input!1326)) e!1730394))))

(assert (= (and b!2746385 ((_ is Node!9891) (c!444871 input!1326))) b!2746502))

(assert (= b!2746503 b!2746504))

(assert (= (and b!2746385 ((_ is Leaf!15061) (c!444871 input!1326))) b!2746503))

(declare-fun m!3162969 () Bool)

(assert (=> b!2746502 m!3162969))

(declare-fun m!3162971 () Bool)

(assert (=> b!2746502 m!3162971))

(declare-fun m!3162973 () Bool)

(assert (=> b!2746503 m!3162973))

(assert (=> b!2746385 m!3162893))

(declare-fun b!2746505 () Bool)

(declare-fun setRes!21706 () Bool)

(declare-fun e!1730396 () Bool)

(declare-fun tp!865303 () Bool)

(declare-fun tp!865302 () Bool)

(declare-fun e!1730395 () Bool)

(assert (=> b!2746505 (= e!1730395 (and tp!865303 (inv!43003 (_2!18429 (_1!18430 (h!37068 (zeroValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))))) e!1730396 tp_is_empty!13935 setRes!21706 tp!865302))))

(declare-fun condSetEmpty!21706 () Bool)

(assert (=> b!2746505 (= condSetEmpty!21706 (= (_2!18430 (h!37068 (zeroValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun e!1730397 () Bool)

(declare-fun setElem!21706 () Context!4442)

(declare-fun tp!865301 () Bool)

(declare-fun setNonEmpty!21706 () Bool)

(assert (=> setNonEmpty!21706 (= setRes!21706 (and tp!865301 (inv!43003 setElem!21706) e!1730397))))

(declare-fun setRest!21706 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21706 (= (_2!18430 (h!37068 (zeroValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21706 true) setRest!21706))))

(declare-fun b!2746506 () Bool)

(declare-fun tp!865299 () Bool)

(assert (=> b!2746506 (= e!1730396 tp!865299)))

(assert (=> b!2746371 (= tp!865197 e!1730395)))

(declare-fun b!2746507 () Bool)

(declare-fun tp!865300 () Bool)

(assert (=> b!2746507 (= e!1730397 tp!865300)))

(declare-fun setIsEmpty!21706 () Bool)

(assert (=> setIsEmpty!21706 setRes!21706))

(assert (= b!2746505 b!2746506))

(assert (= (and b!2746505 condSetEmpty!21706) setIsEmpty!21706))

(assert (= (and b!2746505 (not condSetEmpty!21706)) setNonEmpty!21706))

(assert (= setNonEmpty!21706 b!2746507))

(assert (= (and b!2746371 ((_ is Cons!31648) (zeroValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) b!2746505))

(declare-fun m!3162975 () Bool)

(assert (=> b!2746505 m!3162975))

(declare-fun m!3162977 () Bool)

(assert (=> setNonEmpty!21706 m!3162977))

(declare-fun e!1730399 () Bool)

(declare-fun setRes!21707 () Bool)

(declare-fun tp!865308 () Bool)

(declare-fun e!1730398 () Bool)

(declare-fun tp!865307 () Bool)

(declare-fun b!2746508 () Bool)

(assert (=> b!2746508 (= e!1730398 (and tp!865308 (inv!43003 (_2!18429 (_1!18430 (h!37068 (minValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))))) e!1730399 tp_is_empty!13935 setRes!21707 tp!865307))))

(declare-fun condSetEmpty!21707 () Bool)

(assert (=> b!2746508 (= condSetEmpty!21707 (= (_2!18430 (h!37068 (minValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun e!1730400 () Bool)

(declare-fun tp!865306 () Bool)

(declare-fun setElem!21707 () Context!4442)

(declare-fun setNonEmpty!21707 () Bool)

(assert (=> setNonEmpty!21707 (= setRes!21707 (and tp!865306 (inv!43003 setElem!21707) e!1730400))))

(declare-fun setRest!21707 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21707 (= (_2!18430 (h!37068 (minValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21707 true) setRest!21707))))

(declare-fun b!2746509 () Bool)

(declare-fun tp!865304 () Bool)

(assert (=> b!2746509 (= e!1730399 tp!865304)))

(assert (=> b!2746371 (= tp!865191 e!1730398)))

(declare-fun b!2746510 () Bool)

(declare-fun tp!865305 () Bool)

(assert (=> b!2746510 (= e!1730400 tp!865305)))

(declare-fun setIsEmpty!21707 () Bool)

(assert (=> setIsEmpty!21707 setRes!21707))

(assert (= b!2746508 b!2746509))

(assert (= (and b!2746508 condSetEmpty!21707) setIsEmpty!21707))

(assert (= (and b!2746508 (not condSetEmpty!21707)) setNonEmpty!21707))

(assert (= setNonEmpty!21707 b!2746510))

(assert (= (and b!2746371 ((_ is Cons!31648) (minValue!3879 (v!33273 (underlying!7443 (v!33274 (underlying!7444 (cache!3669 cacheDown!646)))))))) b!2746508))

(declare-fun m!3162979 () Bool)

(assert (=> b!2746508 m!3162979))

(declare-fun m!3162981 () Bool)

(assert (=> setNonEmpty!21707 m!3162981))

(declare-fun b!2746521 () Bool)

(declare-fun b_free!77389 () Bool)

(declare-fun b_next!78093 () Bool)

(assert (=> b!2746521 (= b_free!77389 (not b_next!78093))))

(declare-fun tp!865318 () Bool)

(declare-fun b_and!202109 () Bool)

(assert (=> b!2746521 (= tp!865318 b_and!202109)))

(declare-fun b_free!77391 () Bool)

(declare-fun b_next!78095 () Bool)

(assert (=> b!2746521 (= b_free!77391 (not b_next!78095))))

(declare-fun tp!865320 () Bool)

(declare-fun b_and!202111 () Bool)

(assert (=> b!2746521 (= tp!865320 b_and!202111)))

(declare-fun e!1730412 () Bool)

(assert (=> b!2746521 (= e!1730412 (and tp!865318 tp!865320))))

(declare-fun b!2746520 () Bool)

(declare-fun tp!865317 () Bool)

(declare-fun e!1730411 () Bool)

(assert (=> b!2746520 (= e!1730411 (and tp!865317 (inv!42995 (tag!5352 (h!37065 (t!227833 rulesArg!249)))) (inv!43000 (transformation!4848 (h!37065 (t!227833 rulesArg!249)))) e!1730412))))

(declare-fun b!2746519 () Bool)

(declare-fun e!1730409 () Bool)

(declare-fun tp!865319 () Bool)

(assert (=> b!2746519 (= e!1730409 (and e!1730411 tp!865319))))

(assert (=> b!2746377 (= tp!865194 e!1730409)))

(assert (= b!2746520 b!2746521))

(assert (= b!2746519 b!2746520))

(assert (= (and b!2746377 ((_ is Cons!31645) (t!227833 rulesArg!249))) b!2746519))

(declare-fun m!3162983 () Bool)

(assert (=> b!2746520 m!3162983))

(declare-fun m!3162985 () Bool)

(assert (=> b!2746520 m!3162985))

(declare-fun mapIsEmpty!16512 () Bool)

(declare-fun mapRes!16512 () Bool)

(assert (=> mapIsEmpty!16512 mapRes!16512))

(declare-fun setIsEmpty!21712 () Bool)

(declare-fun setRes!21713 () Bool)

(assert (=> setIsEmpty!21712 setRes!21713))

(declare-fun e!1730427 () Bool)

(declare-fun e!1730430 () Bool)

(declare-fun tp!865343 () Bool)

(declare-fun b!2746536 () Bool)

(declare-fun mapDefault!16512 () List!31748)

(declare-fun setRes!21712 () Bool)

(declare-fun tp!865349 () Bool)

(assert (=> b!2746536 (= e!1730427 (and tp!865349 (inv!43003 (_2!18429 (_1!18430 (h!37068 mapDefault!16512)))) e!1730430 tp_is_empty!13935 setRes!21712 tp!865343))))

(declare-fun condSetEmpty!21712 () Bool)

(assert (=> b!2746536 (= condSetEmpty!21712 (= (_2!18430 (h!37068 mapDefault!16512)) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun setElem!21712 () Context!4442)

(declare-fun tp!865344 () Bool)

(declare-fun e!1730425 () Bool)

(declare-fun setNonEmpty!21712 () Bool)

(assert (=> setNonEmpty!21712 (= setRes!21713 (and tp!865344 (inv!43003 setElem!21712) e!1730425))))

(declare-fun mapValue!16512 () List!31748)

(declare-fun setRest!21713 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21712 (= (_2!18430 (h!37068 mapValue!16512)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21712 true) setRest!21713))))

(declare-fun b!2746537 () Bool)

(declare-fun tp!865345 () Bool)

(assert (=> b!2746537 (= e!1730425 tp!865345)))

(declare-fun b!2746538 () Bool)

(declare-fun e!1730428 () Bool)

(declare-fun tp!865347 () Bool)

(assert (=> b!2746538 (= e!1730428 tp!865347)))

(declare-fun b!2746539 () Bool)

(declare-fun tp!865352 () Bool)

(assert (=> b!2746539 (= e!1730430 tp!865352)))

(declare-fun mapNonEmpty!16512 () Bool)

(declare-fun tp!865346 () Bool)

(declare-fun e!1730426 () Bool)

(assert (=> mapNonEmpty!16512 (= mapRes!16512 (and tp!865346 e!1730426))))

(declare-fun mapRest!16512 () (Array (_ BitVec 32) List!31748))

(declare-fun mapKey!16512 () (_ BitVec 32))

(assert (=> mapNonEmpty!16512 (= mapRest!16506 (store mapRest!16512 mapKey!16512 mapValue!16512))))

(declare-fun condMapEmpty!16512 () Bool)

(assert (=> mapNonEmpty!16506 (= condMapEmpty!16512 (= mapRest!16506 ((as const (Array (_ BitVec 32) List!31748)) mapDefault!16512)))))

(assert (=> mapNonEmpty!16506 (= tp!865202 (and e!1730427 mapRes!16512))))

(declare-fun setIsEmpty!21713 () Bool)

(assert (=> setIsEmpty!21713 setRes!21712))

(declare-fun b!2746540 () Bool)

(declare-fun e!1730429 () Bool)

(declare-fun tp!865350 () Bool)

(assert (=> b!2746540 (= e!1730429 tp!865350)))

(declare-fun setElem!21713 () Context!4442)

(declare-fun tp!865348 () Bool)

(declare-fun setNonEmpty!21713 () Bool)

(assert (=> setNonEmpty!21713 (= setRes!21712 (and tp!865348 (inv!43003 setElem!21713) e!1730428))))

(declare-fun setRest!21712 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21713 (= (_2!18430 (h!37068 mapDefault!16512)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21713 true) setRest!21712))))

(declare-fun tp!865353 () Bool)

(declare-fun tp!865351 () Bool)

(declare-fun b!2746541 () Bool)

(assert (=> b!2746541 (= e!1730426 (and tp!865353 (inv!43003 (_2!18429 (_1!18430 (h!37068 mapValue!16512)))) e!1730429 tp_is_empty!13935 setRes!21713 tp!865351))))

(declare-fun condSetEmpty!21713 () Bool)

(assert (=> b!2746541 (= condSetEmpty!21713 (= (_2!18430 (h!37068 mapValue!16512)) ((as const (Array Context!4442 Bool)) false)))))

(assert (= (and mapNonEmpty!16506 condMapEmpty!16512) mapIsEmpty!16512))

(assert (= (and mapNonEmpty!16506 (not condMapEmpty!16512)) mapNonEmpty!16512))

(assert (= b!2746541 b!2746540))

(assert (= (and b!2746541 condSetEmpty!21713) setIsEmpty!21712))

(assert (= (and b!2746541 (not condSetEmpty!21713)) setNonEmpty!21712))

(assert (= setNonEmpty!21712 b!2746537))

(assert (= (and mapNonEmpty!16512 ((_ is Cons!31648) mapValue!16512)) b!2746541))

(assert (= b!2746536 b!2746539))

(assert (= (and b!2746536 condSetEmpty!21712) setIsEmpty!21713))

(assert (= (and b!2746536 (not condSetEmpty!21712)) setNonEmpty!21713))

(assert (= setNonEmpty!21713 b!2746538))

(assert (= (and mapNonEmpty!16506 ((_ is Cons!31648) mapDefault!16512)) b!2746536))

(declare-fun m!3162987 () Bool)

(assert (=> setNonEmpty!21712 m!3162987))

(declare-fun m!3162989 () Bool)

(assert (=> b!2746541 m!3162989))

(declare-fun m!3162991 () Bool)

(assert (=> b!2746536 m!3162991))

(declare-fun m!3162993 () Bool)

(assert (=> setNonEmpty!21713 m!3162993))

(declare-fun m!3162995 () Bool)

(assert (=> mapNonEmpty!16512 m!3162995))

(declare-fun tp!865358 () Bool)

(declare-fun e!1730431 () Bool)

(declare-fun e!1730432 () Bool)

(declare-fun b!2746542 () Bool)

(declare-fun setRes!21714 () Bool)

(declare-fun tp!865357 () Bool)

(assert (=> b!2746542 (= e!1730431 (and tp!865358 (inv!43003 (_2!18429 (_1!18430 (h!37068 mapValue!16506)))) e!1730432 tp_is_empty!13935 setRes!21714 tp!865357))))

(declare-fun condSetEmpty!21714 () Bool)

(assert (=> b!2746542 (= condSetEmpty!21714 (= (_2!18430 (h!37068 mapValue!16506)) ((as const (Array Context!4442 Bool)) false)))))

(declare-fun setNonEmpty!21714 () Bool)

(declare-fun tp!865356 () Bool)

(declare-fun e!1730433 () Bool)

(declare-fun setElem!21714 () Context!4442)

(assert (=> setNonEmpty!21714 (= setRes!21714 (and tp!865356 (inv!43003 setElem!21714) e!1730433))))

(declare-fun setRest!21714 () (InoxSet Context!4442))

(assert (=> setNonEmpty!21714 (= (_2!18430 (h!37068 mapValue!16506)) ((_ map or) (store ((as const (Array Context!4442 Bool)) false) setElem!21714 true) setRest!21714))))

(declare-fun b!2746543 () Bool)

(declare-fun tp!865354 () Bool)

(assert (=> b!2746543 (= e!1730432 tp!865354)))

(assert (=> mapNonEmpty!16506 (= tp!865190 e!1730431)))

(declare-fun b!2746544 () Bool)

(declare-fun tp!865355 () Bool)

(assert (=> b!2746544 (= e!1730433 tp!865355)))

(declare-fun setIsEmpty!21714 () Bool)

(assert (=> setIsEmpty!21714 setRes!21714))

(assert (= b!2746542 b!2746543))

(assert (= (and b!2746542 condSetEmpty!21714) setIsEmpty!21714))

(assert (= (and b!2746542 (not condSetEmpty!21714)) setNonEmpty!21714))

(assert (= setNonEmpty!21714 b!2746544))

(assert (= (and mapNonEmpty!16506 ((_ is Cons!31648) mapValue!16506)) b!2746542))

(declare-fun m!3162997 () Bool)

(assert (=> b!2746542 m!3162997))

(declare-fun m!3162999 () Bool)

(assert (=> setNonEmpty!21714 m!3162999))

(check-sat (not d!796078) (not b!2746463) (not setNonEmpty!21713) (not b!2746482) (not b!2746508) b_and!202099 (not b!2746448) (not b!2746492) (not setNonEmpty!21699) (not setNonEmpty!21695) (not b!2746428) (not d!796080) (not b!2746481) (not b!2746537) (not b!2746420) (not b!2746538) (not b!2746445) (not b!2746543) (not mapNonEmpty!16509) (not setNonEmpty!21705) (not b!2746509) (not b!2746408) (not b!2746457) b_and!202107 (not b!2746468) (not b!2746542) (not b!2746504) (not b!2746425) (not b!2746507) b_and!202109 (not b!2746465) (not b!2746466) (not d!796076) (not b!2746503) (not b!2746536) (not b!2746461) (not b!2746385) (not setNonEmpty!21706) (not b_next!78081) (not d!796090) (not b!2746459) (not b!2746541) (not b!2746443) (not b_next!78083) (not b_next!78087) (not b_next!78089) (not b!2746444) (not b!2746520) (not setNonEmpty!21702) (not b!2746413) (not b!2746519) (not b!2746540) (not b!2746401) (not mapNonEmpty!16512) b_and!202097 (not b!2746422) (not b_next!78091) (not b!2746462) (not b!2746458) (not b!2746464) b_and!202103 (not b!2746400) (not b!2746402) (not setNonEmpty!21696) (not b!2746460) (not b!2746491) (not b_next!78093) (not setNonEmpty!21714) (not setNonEmpty!21701) (not b_next!78085) tp_is_empty!13935 (not b!2746407) (not b!2746467) (not b!2746502) (not d!796074) (not b!2746506) (not d!796102) b_and!202105 (not setNonEmpty!21712) (not b!2746544) (not b!2746447) b_and!202111 (not d!796088) (not b!2746446) b_and!202101 (not b!2746539) (not b!2746510) (not b!2746493) (not b!2746480) (not setNonEmpty!21700) (not b!2746505) (not setNonEmpty!21707) (not b_next!78095))
(check-sat b_and!202099 b_and!202107 b_and!202109 (not b_next!78081) (not b_next!78089) b_and!202103 (not b_next!78093) (not b_next!78085) b_and!202105 (not b_next!78095) (not b_next!78083) (not b_next!78087) b_and!202097 (not b_next!78091) b_and!202111 b_and!202101)
