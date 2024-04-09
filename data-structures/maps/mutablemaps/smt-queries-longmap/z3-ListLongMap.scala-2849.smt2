; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41112 () Bool)

(assert start!41112)

(declare-fun b_free!10995 () Bool)

(declare-fun b_next!10995 () Bool)

(assert (=> start!41112 (= b_free!10995 (not b_next!10995))))

(declare-fun tp!38817 () Bool)

(declare-fun b_and!19231 () Bool)

(assert (=> start!41112 (= tp!38817 b_and!19231)))

(declare-fun b!458364 () Bool)

(declare-fun e!267606 () Bool)

(declare-fun e!267604 () Bool)

(assert (=> b!458364 (= e!267606 (not e!267604))))

(declare-fun res!273917 () Bool)

(assert (=> b!458364 (=> res!273917 e!267604)))

(declare-datatypes ((array!28433 0))(
  ( (array!28434 (arr!13655 (Array (_ BitVec 32) (_ BitVec 64))) (size!14007 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28433)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458364 (= res!273917 (not (validKeyInArray!0 (select (arr!13655 _keys!709) from!863))))))

(declare-datatypes ((V!17549 0))(
  ( (V!17550 (val!6211 Int)) )
))
(declare-datatypes ((tuple2!8150 0))(
  ( (tuple2!8151 (_1!4085 (_ BitVec 64)) (_2!4085 V!17549)) )
))
(declare-datatypes ((List!8254 0))(
  ( (Nil!8251) (Cons!8250 (h!9106 tuple2!8150) (t!14136 List!8254)) )
))
(declare-datatypes ((ListLongMap!7077 0))(
  ( (ListLongMap!7078 (toList!3554 List!8254)) )
))
(declare-fun lt!207389 () ListLongMap!7077)

(declare-fun lt!207388 () ListLongMap!7077)

(assert (=> b!458364 (= lt!207389 lt!207388)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!207392 () ListLongMap!7077)

(declare-fun v!412 () V!17549)

(declare-fun +!1574 (ListLongMap!7077 tuple2!8150) ListLongMap!7077)

(assert (=> b!458364 (= lt!207388 (+!1574 lt!207392 (tuple2!8151 k0!794 v!412)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17549)

(declare-datatypes ((ValueCell!5823 0))(
  ( (ValueCellFull!5823 (v!8481 V!17549)) (EmptyCell!5823) )
))
(declare-datatypes ((array!28435 0))(
  ( (array!28436 (arr!13656 (Array (_ BitVec 32) ValueCell!5823)) (size!14008 (_ BitVec 32))) )
))
(declare-fun lt!207391 () array!28435)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!207394 () array!28433)

(declare-fun minValue!515 () V!17549)

(declare-fun getCurrentListMapNoExtraKeys!1726 (array!28433 array!28435 (_ BitVec 32) (_ BitVec 32) V!17549 V!17549 (_ BitVec 32) Int) ListLongMap!7077)

(assert (=> b!458364 (= lt!207389 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!28435)

(assert (=> b!458364 (= lt!207392 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13261 0))(
  ( (Unit!13262) )
))
(declare-fun lt!207395 () Unit!13261)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!733 (array!28433 array!28435 (_ BitVec 32) (_ BitVec 32) V!17549 V!17549 (_ BitVec 32) (_ BitVec 64) V!17549 (_ BitVec 32) Int) Unit!13261)

(assert (=> b!458364 (= lt!207395 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!733 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458365 () Bool)

(declare-fun res!273927 () Bool)

(declare-fun e!267609 () Bool)

(assert (=> b!458365 (=> (not res!273927) (not e!267609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458365 (= res!273927 (validMask!0 mask!1025))))

(declare-fun b!458366 () Bool)

(declare-fun res!273921 () Bool)

(assert (=> b!458366 (=> (not res!273921) (not e!267609))))

(assert (=> b!458366 (= res!273921 (or (= (select (arr!13655 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13655 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458368 () Bool)

(declare-fun res!273928 () Bool)

(declare-fun e!267610 () Bool)

(assert (=> b!458368 (=> (not res!273928) (not e!267610))))

(assert (=> b!458368 (= res!273928 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!20146 () Bool)

(declare-fun mapRes!20146 () Bool)

(assert (=> mapIsEmpty!20146 mapRes!20146))

(declare-fun b!458369 () Bool)

(declare-fun res!273920 () Bool)

(assert (=> b!458369 (=> (not res!273920) (not e!267609))))

(assert (=> b!458369 (= res!273920 (validKeyInArray!0 k0!794))))

(declare-fun b!458370 () Bool)

(declare-fun e!267612 () Bool)

(declare-fun e!267605 () Bool)

(assert (=> b!458370 (= e!267612 (and e!267605 mapRes!20146))))

(declare-fun condMapEmpty!20146 () Bool)

(declare-fun mapDefault!20146 () ValueCell!5823)

(assert (=> b!458370 (= condMapEmpty!20146 (= (arr!13656 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5823)) mapDefault!20146)))))

(declare-fun b!458371 () Bool)

(declare-fun res!273922 () Bool)

(assert (=> b!458371 (=> (not res!273922) (not e!267610))))

(declare-datatypes ((List!8255 0))(
  ( (Nil!8252) (Cons!8251 (h!9107 (_ BitVec 64)) (t!14137 List!8255)) )
))
(declare-fun arrayNoDuplicates!0 (array!28433 (_ BitVec 32) List!8255) Bool)

(assert (=> b!458371 (= res!273922 (arrayNoDuplicates!0 lt!207394 #b00000000000000000000000000000000 Nil!8252))))

(declare-fun b!458372 () Bool)

(declare-fun res!273914 () Bool)

(assert (=> b!458372 (=> (not res!273914) (not e!267609))))

(declare-fun arrayContainsKey!0 (array!28433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458372 (= res!273914 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!458373 () Bool)

(declare-fun e!267608 () Bool)

(assert (=> b!458373 (= e!267604 e!267608)))

(declare-fun res!273919 () Bool)

(assert (=> b!458373 (=> res!273919 e!267608)))

(assert (=> b!458373 (= res!273919 (or (not (= (select (arr!13655 _keys!709) from!863) k0!794)) (bvsge from!863 (size!14007 _keys!709)) (bvsge (size!14007 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun lt!207393 () ListLongMap!7077)

(declare-fun get!6741 (ValueCell!5823 V!17549) V!17549)

(declare-fun dynLambda!885 (Int (_ BitVec 64)) V!17549)

(assert (=> b!458373 (= lt!207393 (+!1574 lt!207388 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458374 () Bool)

(declare-fun tp_is_empty!12333 () Bool)

(assert (=> b!458374 (= e!267605 tp_is_empty!12333)))

(declare-fun b!458375 () Bool)

(declare-fun res!273925 () Bool)

(assert (=> b!458375 (=> (not res!273925) (not e!267609))))

(assert (=> b!458375 (= res!273925 (and (= (size!14008 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14007 _keys!709) (size!14008 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458376 () Bool)

(assert (=> b!458376 (= e!267609 e!267610)))

(declare-fun res!273926 () Bool)

(assert (=> b!458376 (=> (not res!273926) (not e!267610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28433 (_ BitVec 32)) Bool)

(assert (=> b!458376 (= res!273926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207394 mask!1025))))

(assert (=> b!458376 (= lt!207394 (array!28434 (store (arr!13655 _keys!709) i!563 k0!794) (size!14007 _keys!709)))))

(declare-fun mapNonEmpty!20146 () Bool)

(declare-fun tp!38818 () Bool)

(declare-fun e!267611 () Bool)

(assert (=> mapNonEmpty!20146 (= mapRes!20146 (and tp!38818 e!267611))))

(declare-fun mapKey!20146 () (_ BitVec 32))

(declare-fun mapRest!20146 () (Array (_ BitVec 32) ValueCell!5823))

(declare-fun mapValue!20146 () ValueCell!5823)

(assert (=> mapNonEmpty!20146 (= (arr!13656 _values!549) (store mapRest!20146 mapKey!20146 mapValue!20146))))

(declare-fun b!458377 () Bool)

(assert (=> b!458377 (= e!267610 e!267606)))

(declare-fun res!273918 () Bool)

(assert (=> b!458377 (=> (not res!273918) (not e!267606))))

(assert (=> b!458377 (= res!273918 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!458377 (= lt!207393 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!458377 (= lt!207391 (array!28436 (store (arr!13656 _values!549) i!563 (ValueCellFull!5823 v!412)) (size!14008 _values!549)))))

(declare-fun lt!207390 () ListLongMap!7077)

(assert (=> b!458377 (= lt!207390 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!273916 () Bool)

(assert (=> start!41112 (=> (not res!273916) (not e!267609))))

(assert (=> start!41112 (= res!273916 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14007 _keys!709))))))

(assert (=> start!41112 e!267609))

(assert (=> start!41112 tp_is_empty!12333))

(assert (=> start!41112 tp!38817))

(assert (=> start!41112 true))

(declare-fun array_inv!9876 (array!28435) Bool)

(assert (=> start!41112 (and (array_inv!9876 _values!549) e!267612)))

(declare-fun array_inv!9877 (array!28433) Bool)

(assert (=> start!41112 (array_inv!9877 _keys!709)))

(declare-fun b!458367 () Bool)

(assert (=> b!458367 (= e!267611 tp_is_empty!12333)))

(declare-fun b!458378 () Bool)

(declare-fun res!273923 () Bool)

(assert (=> b!458378 (=> (not res!273923) (not e!267609))))

(assert (=> b!458378 (= res!273923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!458379 () Bool)

(assert (=> b!458379 (= e!267608 (arrayContainsKey!0 _keys!709 k0!794 from!863))))

(declare-fun b!458380 () Bool)

(declare-fun res!273915 () Bool)

(assert (=> b!458380 (=> (not res!273915) (not e!267609))))

(assert (=> b!458380 (= res!273915 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8252))))

(declare-fun b!458381 () Bool)

(declare-fun res!273924 () Bool)

(assert (=> b!458381 (=> (not res!273924) (not e!267609))))

(assert (=> b!458381 (= res!273924 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14007 _keys!709))))))

(assert (= (and start!41112 res!273916) b!458365))

(assert (= (and b!458365 res!273927) b!458375))

(assert (= (and b!458375 res!273925) b!458378))

(assert (= (and b!458378 res!273923) b!458380))

(assert (= (and b!458380 res!273915) b!458381))

(assert (= (and b!458381 res!273924) b!458369))

(assert (= (and b!458369 res!273920) b!458366))

(assert (= (and b!458366 res!273921) b!458372))

(assert (= (and b!458372 res!273914) b!458376))

(assert (= (and b!458376 res!273926) b!458371))

(assert (= (and b!458371 res!273922) b!458368))

(assert (= (and b!458368 res!273928) b!458377))

(assert (= (and b!458377 res!273918) b!458364))

(assert (= (and b!458364 (not res!273917)) b!458373))

(assert (= (and b!458373 (not res!273919)) b!458379))

(assert (= (and b!458370 condMapEmpty!20146) mapIsEmpty!20146))

(assert (= (and b!458370 (not condMapEmpty!20146)) mapNonEmpty!20146))

(get-info :version)

(assert (= (and mapNonEmpty!20146 ((_ is ValueCellFull!5823) mapValue!20146)) b!458367))

(assert (= (and b!458370 ((_ is ValueCellFull!5823) mapDefault!20146)) b!458374))

(assert (= start!41112 b!458370))

(declare-fun b_lambda!9825 () Bool)

(assert (=> (not b_lambda!9825) (not b!458373)))

(declare-fun t!14135 () Bool)

(declare-fun tb!3839 () Bool)

(assert (=> (and start!41112 (= defaultEntry!557 defaultEntry!557) t!14135) tb!3839))

(declare-fun result!7213 () Bool)

(assert (=> tb!3839 (= result!7213 tp_is_empty!12333)))

(assert (=> b!458373 t!14135))

(declare-fun b_and!19233 () Bool)

(assert (= b_and!19231 (and (=> t!14135 result!7213) b_and!19233)))

(declare-fun m!441727 () Bool)

(assert (=> b!458373 m!441727))

(declare-fun m!441729 () Bool)

(assert (=> b!458373 m!441729))

(declare-fun m!441731 () Bool)

(assert (=> b!458373 m!441731))

(assert (=> b!458373 m!441731))

(assert (=> b!458373 m!441729))

(declare-fun m!441733 () Bool)

(assert (=> b!458373 m!441733))

(declare-fun m!441735 () Bool)

(assert (=> b!458373 m!441735))

(declare-fun m!441737 () Bool)

(assert (=> b!458377 m!441737))

(declare-fun m!441739 () Bool)

(assert (=> b!458377 m!441739))

(declare-fun m!441741 () Bool)

(assert (=> b!458377 m!441741))

(declare-fun m!441743 () Bool)

(assert (=> b!458379 m!441743))

(declare-fun m!441745 () Bool)

(assert (=> start!41112 m!441745))

(declare-fun m!441747 () Bool)

(assert (=> start!41112 m!441747))

(declare-fun m!441749 () Bool)

(assert (=> b!458380 m!441749))

(assert (=> b!458364 m!441727))

(declare-fun m!441751 () Bool)

(assert (=> b!458364 m!441751))

(declare-fun m!441753 () Bool)

(assert (=> b!458364 m!441753))

(declare-fun m!441755 () Bool)

(assert (=> b!458364 m!441755))

(assert (=> b!458364 m!441727))

(declare-fun m!441757 () Bool)

(assert (=> b!458364 m!441757))

(declare-fun m!441759 () Bool)

(assert (=> b!458364 m!441759))

(declare-fun m!441761 () Bool)

(assert (=> b!458372 m!441761))

(declare-fun m!441763 () Bool)

(assert (=> b!458378 m!441763))

(declare-fun m!441765 () Bool)

(assert (=> b!458369 m!441765))

(declare-fun m!441767 () Bool)

(assert (=> b!458365 m!441767))

(declare-fun m!441769 () Bool)

(assert (=> b!458371 m!441769))

(declare-fun m!441771 () Bool)

(assert (=> b!458376 m!441771))

(declare-fun m!441773 () Bool)

(assert (=> b!458376 m!441773))

(declare-fun m!441775 () Bool)

(assert (=> b!458366 m!441775))

(declare-fun m!441777 () Bool)

(assert (=> mapNonEmpty!20146 m!441777))

(check-sat (not b!458365) (not mapNonEmpty!20146) (not b!458373) b_and!19233 tp_is_empty!12333 (not b!458376) (not b!458377) (not b_lambda!9825) (not b!458380) (not start!41112) (not b!458379) (not b!458372) (not b!458369) (not b_next!10995) (not b!458378) (not b!458371) (not b!458364))
(check-sat b_and!19233 (not b_next!10995))
(get-model)

(declare-fun b_lambda!9829 () Bool)

(assert (= b_lambda!9825 (or (and start!41112 b_free!10995) b_lambda!9829)))

(check-sat (not b!458380) (not b!458365) (not mapNonEmpty!20146) (not b!458373) b_and!19233 tp_is_empty!12333 (not b!458376) (not b!458377) (not b_lambda!9829) (not start!41112) (not b!458379) (not b!458372) (not b!458369) (not b_next!10995) (not b!458378) (not b!458371) (not b!458364))
(check-sat b_and!19233 (not b_next!10995))
(get-model)

(declare-fun b!458448 () Bool)

(declare-fun e!267648 () Bool)

(declare-fun e!267646 () Bool)

(assert (=> b!458448 (= e!267648 e!267646)))

(declare-fun lt!207427 () (_ BitVec 64))

(assert (=> b!458448 (= lt!207427 (select (arr!13655 lt!207394) #b00000000000000000000000000000000))))

(declare-fun lt!207426 () Unit!13261)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28433 (_ BitVec 64) (_ BitVec 32)) Unit!13261)

(assert (=> b!458448 (= lt!207426 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!207394 lt!207427 #b00000000000000000000000000000000))))

(assert (=> b!458448 (arrayContainsKey!0 lt!207394 lt!207427 #b00000000000000000000000000000000)))

(declare-fun lt!207428 () Unit!13261)

(assert (=> b!458448 (= lt!207428 lt!207426)))

(declare-fun res!273978 () Bool)

(declare-datatypes ((SeekEntryResult!3523 0))(
  ( (MissingZero!3523 (index!16271 (_ BitVec 32))) (Found!3523 (index!16272 (_ BitVec 32))) (Intermediate!3523 (undefined!4335 Bool) (index!16273 (_ BitVec 32)) (x!42788 (_ BitVec 32))) (Undefined!3523) (MissingVacant!3523 (index!16274 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28433 (_ BitVec 32)) SeekEntryResult!3523)

(assert (=> b!458448 (= res!273978 (= (seekEntryOrOpen!0 (select (arr!13655 lt!207394) #b00000000000000000000000000000000) lt!207394 mask!1025) (Found!3523 #b00000000000000000000000000000000)))))

(assert (=> b!458448 (=> (not res!273978) (not e!267646))))

(declare-fun b!458449 () Bool)

(declare-fun e!267647 () Bool)

(assert (=> b!458449 (= e!267647 e!267648)))

(declare-fun c!56343 () Bool)

(assert (=> b!458449 (= c!56343 (validKeyInArray!0 (select (arr!13655 lt!207394) #b00000000000000000000000000000000)))))

(declare-fun d!74621 () Bool)

(declare-fun res!273979 () Bool)

(assert (=> d!74621 (=> res!273979 e!267647)))

(assert (=> d!74621 (= res!273979 (bvsge #b00000000000000000000000000000000 (size!14007 lt!207394)))))

(assert (=> d!74621 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207394 mask!1025) e!267647)))

(declare-fun b!458450 () Bool)

(declare-fun call!30131 () Bool)

(assert (=> b!458450 (= e!267646 call!30131)))

(declare-fun b!458451 () Bool)

(assert (=> b!458451 (= e!267648 call!30131)))

(declare-fun bm!30128 () Bool)

(assert (=> bm!30128 (= call!30131 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!207394 mask!1025))))

(assert (= (and d!74621 (not res!273979)) b!458449))

(assert (= (and b!458449 c!56343) b!458448))

(assert (= (and b!458449 (not c!56343)) b!458451))

(assert (= (and b!458448 res!273978) b!458450))

(assert (= (or b!458450 b!458451) bm!30128))

(declare-fun m!441831 () Bool)

(assert (=> b!458448 m!441831))

(declare-fun m!441833 () Bool)

(assert (=> b!458448 m!441833))

(declare-fun m!441835 () Bool)

(assert (=> b!458448 m!441835))

(assert (=> b!458448 m!441831))

(declare-fun m!441837 () Bool)

(assert (=> b!458448 m!441837))

(assert (=> b!458449 m!441831))

(assert (=> b!458449 m!441831))

(declare-fun m!441839 () Bool)

(assert (=> b!458449 m!441839))

(declare-fun m!441841 () Bool)

(assert (=> bm!30128 m!441841))

(assert (=> b!458376 d!74621))

(declare-fun d!74623 () Bool)

(assert (=> d!74623 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!458365 d!74623))

(declare-fun lt!207445 () ListLongMap!7077)

(declare-fun b!458476 () Bool)

(declare-fun e!267666 () Bool)

(assert (=> b!458476 (= e!267666 (= lt!207445 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458477 () Bool)

(declare-fun lt!207447 () Unit!13261)

(declare-fun lt!207449 () Unit!13261)

(assert (=> b!458477 (= lt!207447 lt!207449)))

(declare-fun lt!207444 () ListLongMap!7077)

(declare-fun lt!207446 () V!17549)

(declare-fun lt!207448 () (_ BitVec 64))

(declare-fun lt!207443 () (_ BitVec 64))

(declare-fun contains!2508 (ListLongMap!7077 (_ BitVec 64)) Bool)

(assert (=> b!458477 (not (contains!2508 (+!1574 lt!207444 (tuple2!8151 lt!207448 lt!207446)) lt!207443))))

(declare-fun addStillNotContains!151 (ListLongMap!7077 (_ BitVec 64) V!17549 (_ BitVec 64)) Unit!13261)

(assert (=> b!458477 (= lt!207449 (addStillNotContains!151 lt!207444 lt!207448 lt!207446 lt!207443))))

(assert (=> b!458477 (= lt!207443 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458477 (= lt!207446 (get!6741 (select (arr!13656 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458477 (= lt!207448 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30134 () ListLongMap!7077)

(assert (=> b!458477 (= lt!207444 call!30134)))

(declare-fun e!267667 () ListLongMap!7077)

(assert (=> b!458477 (= e!267667 (+!1574 call!30134 (tuple2!8151 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6741 (select (arr!13656 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458478 () Bool)

(declare-fun e!267665 () ListLongMap!7077)

(assert (=> b!458478 (= e!267665 e!267667)))

(declare-fun c!56354 () Bool)

(assert (=> b!458478 (= c!56354 (validKeyInArray!0 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!458479 () Bool)

(declare-fun e!267664 () Bool)

(declare-fun e!267669 () Bool)

(assert (=> b!458479 (= e!267664 e!267669)))

(declare-fun c!56353 () Bool)

(declare-fun e!267668 () Bool)

(assert (=> b!458479 (= c!56353 e!267668)))

(declare-fun res!273989 () Bool)

(assert (=> b!458479 (=> (not res!273989) (not e!267668))))

(assert (=> b!458479 (= res!273989 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(declare-fun bm!30131 () Bool)

(assert (=> bm!30131 (= call!30134 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458480 () Bool)

(declare-fun isEmpty!568 (ListLongMap!7077) Bool)

(assert (=> b!458480 (= e!267666 (isEmpty!568 lt!207445))))

(declare-fun b!458481 () Bool)

(declare-fun e!267663 () Bool)

(assert (=> b!458481 (= e!267669 e!267663)))

(assert (=> b!458481 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(declare-fun res!273991 () Bool)

(assert (=> b!458481 (= res!273991 (contains!2508 lt!207445 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458481 (=> (not res!273991) (not e!267663))))

(declare-fun d!74625 () Bool)

(assert (=> d!74625 e!267664))

(declare-fun res!273988 () Bool)

(assert (=> d!74625 (=> (not res!273988) (not e!267664))))

(assert (=> d!74625 (= res!273988 (not (contains!2508 lt!207445 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74625 (= lt!207445 e!267665)))

(declare-fun c!56355 () Bool)

(assert (=> d!74625 (= c!56355 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(assert (=> d!74625 (validMask!0 mask!1025)))

(assert (=> d!74625 (= (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207445)))

(declare-fun b!458482 () Bool)

(assert (=> b!458482 (= e!267667 call!30134)))

(declare-fun b!458483 () Bool)

(assert (=> b!458483 (= e!267665 (ListLongMap!7078 Nil!8251))))

(declare-fun b!458484 () Bool)

(declare-fun res!273990 () Bool)

(assert (=> b!458484 (=> (not res!273990) (not e!267664))))

(assert (=> b!458484 (= res!273990 (not (contains!2508 lt!207445 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458485 () Bool)

(assert (=> b!458485 (= e!267669 e!267666)))

(declare-fun c!56352 () Bool)

(assert (=> b!458485 (= c!56352 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(declare-fun b!458486 () Bool)

(assert (=> b!458486 (= e!267668 (validKeyInArray!0 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458486 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!458487 () Bool)

(assert (=> b!458487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(assert (=> b!458487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14008 _values!549)))))

(declare-fun apply!316 (ListLongMap!7077 (_ BitVec 64)) V!17549)

(assert (=> b!458487 (= e!267663 (= (apply!316 lt!207445 (select (arr!13655 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6741 (select (arr!13656 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!74625 c!56355) b!458483))

(assert (= (and d!74625 (not c!56355)) b!458478))

(assert (= (and b!458478 c!56354) b!458477))

(assert (= (and b!458478 (not c!56354)) b!458482))

(assert (= (or b!458477 b!458482) bm!30131))

(assert (= (and d!74625 res!273988) b!458484))

(assert (= (and b!458484 res!273990) b!458479))

(assert (= (and b!458479 res!273989) b!458486))

(assert (= (and b!458479 c!56353) b!458481))

(assert (= (and b!458479 (not c!56353)) b!458485))

(assert (= (and b!458481 res!273991) b!458487))

(assert (= (and b!458485 c!56352) b!458476))

(assert (= (and b!458485 (not c!56352)) b!458480))

(declare-fun b_lambda!9831 () Bool)

(assert (=> (not b_lambda!9831) (not b!458477)))

(assert (=> b!458477 t!14135))

(declare-fun b_and!19239 () Bool)

(assert (= b_and!19233 (and (=> t!14135 result!7213) b_and!19239)))

(declare-fun b_lambda!9833 () Bool)

(assert (=> (not b_lambda!9833) (not b!458487)))

(assert (=> b!458487 t!14135))

(declare-fun b_and!19241 () Bool)

(assert (= b_and!19239 (and (=> t!14135 result!7213) b_and!19241)))

(declare-fun m!441843 () Bool)

(assert (=> bm!30131 m!441843))

(declare-fun m!441845 () Bool)

(assert (=> b!458477 m!441845))

(declare-fun m!441847 () Bool)

(assert (=> b!458477 m!441847))

(declare-fun m!441849 () Bool)

(assert (=> b!458477 m!441849))

(declare-fun m!441851 () Bool)

(assert (=> b!458477 m!441851))

(declare-fun m!441853 () Bool)

(assert (=> b!458477 m!441853))

(declare-fun m!441855 () Bool)

(assert (=> b!458477 m!441855))

(assert (=> b!458477 m!441729))

(assert (=> b!458477 m!441845))

(assert (=> b!458477 m!441729))

(declare-fun m!441857 () Bool)

(assert (=> b!458477 m!441857))

(assert (=> b!458477 m!441847))

(declare-fun m!441859 () Bool)

(assert (=> b!458484 m!441859))

(assert (=> b!458476 m!441843))

(assert (=> b!458486 m!441853))

(assert (=> b!458486 m!441853))

(declare-fun m!441861 () Bool)

(assert (=> b!458486 m!441861))

(declare-fun m!441863 () Bool)

(assert (=> d!74625 m!441863))

(assert (=> d!74625 m!441767))

(assert (=> b!458478 m!441853))

(assert (=> b!458478 m!441853))

(assert (=> b!458478 m!441861))

(assert (=> b!458481 m!441853))

(assert (=> b!458481 m!441853))

(declare-fun m!441865 () Bool)

(assert (=> b!458481 m!441865))

(assert (=> b!458487 m!441845))

(assert (=> b!458487 m!441845))

(assert (=> b!458487 m!441729))

(assert (=> b!458487 m!441857))

(assert (=> b!458487 m!441729))

(assert (=> b!458487 m!441853))

(assert (=> b!458487 m!441853))

(declare-fun m!441867 () Bool)

(assert (=> b!458487 m!441867))

(declare-fun m!441869 () Bool)

(assert (=> b!458480 m!441869))

(assert (=> b!458364 d!74625))

(declare-fun b!458488 () Bool)

(declare-fun lt!207452 () ListLongMap!7077)

(declare-fun e!267673 () Bool)

(assert (=> b!458488 (= e!267673 (= lt!207452 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458489 () Bool)

(declare-fun lt!207454 () Unit!13261)

(declare-fun lt!207456 () Unit!13261)

(assert (=> b!458489 (= lt!207454 lt!207456)))

(declare-fun lt!207451 () ListLongMap!7077)

(declare-fun lt!207455 () (_ BitVec 64))

(declare-fun lt!207453 () V!17549)

(declare-fun lt!207450 () (_ BitVec 64))

(assert (=> b!458489 (not (contains!2508 (+!1574 lt!207451 (tuple2!8151 lt!207455 lt!207453)) lt!207450))))

(assert (=> b!458489 (= lt!207456 (addStillNotContains!151 lt!207451 lt!207455 lt!207453 lt!207450))))

(assert (=> b!458489 (= lt!207450 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458489 (= lt!207453 (get!6741 (select (arr!13656 lt!207391) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458489 (= lt!207455 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30135 () ListLongMap!7077)

(assert (=> b!458489 (= lt!207451 call!30135)))

(declare-fun e!267674 () ListLongMap!7077)

(assert (=> b!458489 (= e!267674 (+!1574 call!30135 (tuple2!8151 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863)) (get!6741 (select (arr!13656 lt!207391) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458490 () Bool)

(declare-fun e!267672 () ListLongMap!7077)

(assert (=> b!458490 (= e!267672 e!267674)))

(declare-fun c!56358 () Bool)

(assert (=> b!458490 (= c!56358 (validKeyInArray!0 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!458491 () Bool)

(declare-fun e!267671 () Bool)

(declare-fun e!267676 () Bool)

(assert (=> b!458491 (= e!267671 e!267676)))

(declare-fun c!56357 () Bool)

(declare-fun e!267675 () Bool)

(assert (=> b!458491 (= c!56357 e!267675)))

(declare-fun res!273993 () Bool)

(assert (=> b!458491 (=> (not res!273993) (not e!267675))))

(assert (=> b!458491 (= res!273993 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 lt!207394)))))

(declare-fun bm!30132 () Bool)

(assert (=> bm!30132 (= call!30135 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458492 () Bool)

(assert (=> b!458492 (= e!267673 (isEmpty!568 lt!207452))))

(declare-fun b!458493 () Bool)

(declare-fun e!267670 () Bool)

(assert (=> b!458493 (= e!267676 e!267670)))

(assert (=> b!458493 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 lt!207394)))))

(declare-fun res!273995 () Bool)

(assert (=> b!458493 (= res!273995 (contains!2508 lt!207452 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458493 (=> (not res!273995) (not e!267670))))

(declare-fun d!74627 () Bool)

(assert (=> d!74627 e!267671))

(declare-fun res!273992 () Bool)

(assert (=> d!74627 (=> (not res!273992) (not e!267671))))

(assert (=> d!74627 (= res!273992 (not (contains!2508 lt!207452 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74627 (= lt!207452 e!267672)))

(declare-fun c!56359 () Bool)

(assert (=> d!74627 (= c!56359 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14007 lt!207394)))))

(assert (=> d!74627 (validMask!0 mask!1025)))

(assert (=> d!74627 (= (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207452)))

(declare-fun b!458494 () Bool)

(assert (=> b!458494 (= e!267674 call!30135)))

(declare-fun b!458495 () Bool)

(assert (=> b!458495 (= e!267672 (ListLongMap!7078 Nil!8251))))

(declare-fun b!458496 () Bool)

(declare-fun res!273994 () Bool)

(assert (=> b!458496 (=> (not res!273994) (not e!267671))))

(assert (=> b!458496 (= res!273994 (not (contains!2508 lt!207452 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458497 () Bool)

(assert (=> b!458497 (= e!267676 e!267673)))

(declare-fun c!56356 () Bool)

(assert (=> b!458497 (= c!56356 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 lt!207394)))))

(declare-fun b!458498 () Bool)

(assert (=> b!458498 (= e!267675 (validKeyInArray!0 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458498 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!458499 () Bool)

(assert (=> b!458499 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14007 lt!207394)))))

(assert (=> b!458499 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14008 lt!207391)))))

(assert (=> b!458499 (= e!267670 (= (apply!316 lt!207452 (select (arr!13655 lt!207394) (bvadd #b00000000000000000000000000000001 from!863))) (get!6741 (select (arr!13656 lt!207391) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!74627 c!56359) b!458495))

(assert (= (and d!74627 (not c!56359)) b!458490))

(assert (= (and b!458490 c!56358) b!458489))

(assert (= (and b!458490 (not c!56358)) b!458494))

(assert (= (or b!458489 b!458494) bm!30132))

(assert (= (and d!74627 res!273992) b!458496))

(assert (= (and b!458496 res!273994) b!458491))

(assert (= (and b!458491 res!273993) b!458498))

(assert (= (and b!458491 c!56357) b!458493))

(assert (= (and b!458491 (not c!56357)) b!458497))

(assert (= (and b!458493 res!273995) b!458499))

(assert (= (and b!458497 c!56356) b!458488))

(assert (= (and b!458497 (not c!56356)) b!458492))

(declare-fun b_lambda!9835 () Bool)

(assert (=> (not b_lambda!9835) (not b!458489)))

(assert (=> b!458489 t!14135))

(declare-fun b_and!19243 () Bool)

(assert (= b_and!19241 (and (=> t!14135 result!7213) b_and!19243)))

(declare-fun b_lambda!9837 () Bool)

(assert (=> (not b_lambda!9837) (not b!458499)))

(assert (=> b!458499 t!14135))

(declare-fun b_and!19245 () Bool)

(assert (= b_and!19243 (and (=> t!14135 result!7213) b_and!19245)))

(declare-fun m!441871 () Bool)

(assert (=> bm!30132 m!441871))

(declare-fun m!441873 () Bool)

(assert (=> b!458489 m!441873))

(declare-fun m!441875 () Bool)

(assert (=> b!458489 m!441875))

(declare-fun m!441877 () Bool)

(assert (=> b!458489 m!441877))

(declare-fun m!441879 () Bool)

(assert (=> b!458489 m!441879))

(declare-fun m!441881 () Bool)

(assert (=> b!458489 m!441881))

(declare-fun m!441883 () Bool)

(assert (=> b!458489 m!441883))

(assert (=> b!458489 m!441729))

(assert (=> b!458489 m!441873))

(assert (=> b!458489 m!441729))

(declare-fun m!441885 () Bool)

(assert (=> b!458489 m!441885))

(assert (=> b!458489 m!441875))

(declare-fun m!441887 () Bool)

(assert (=> b!458496 m!441887))

(assert (=> b!458488 m!441871))

(assert (=> b!458498 m!441881))

(assert (=> b!458498 m!441881))

(declare-fun m!441889 () Bool)

(assert (=> b!458498 m!441889))

(declare-fun m!441891 () Bool)

(assert (=> d!74627 m!441891))

(assert (=> d!74627 m!441767))

(assert (=> b!458490 m!441881))

(assert (=> b!458490 m!441881))

(assert (=> b!458490 m!441889))

(assert (=> b!458493 m!441881))

(assert (=> b!458493 m!441881))

(declare-fun m!441893 () Bool)

(assert (=> b!458493 m!441893))

(assert (=> b!458499 m!441873))

(assert (=> b!458499 m!441873))

(assert (=> b!458499 m!441729))

(assert (=> b!458499 m!441885))

(assert (=> b!458499 m!441729))

(assert (=> b!458499 m!441881))

(assert (=> b!458499 m!441881))

(declare-fun m!441895 () Bool)

(assert (=> b!458499 m!441895))

(declare-fun m!441897 () Bool)

(assert (=> b!458492 m!441897))

(assert (=> b!458364 d!74627))

(declare-fun d!74629 () Bool)

(declare-fun e!267679 () Bool)

(assert (=> d!74629 e!267679))

(declare-fun res!274001 () Bool)

(assert (=> d!74629 (=> (not res!274001) (not e!267679))))

(declare-fun lt!207465 () ListLongMap!7077)

(assert (=> d!74629 (= res!274001 (contains!2508 lt!207465 (_1!4085 (tuple2!8151 k0!794 v!412))))))

(declare-fun lt!207467 () List!8254)

(assert (=> d!74629 (= lt!207465 (ListLongMap!7078 lt!207467))))

(declare-fun lt!207468 () Unit!13261)

(declare-fun lt!207466 () Unit!13261)

(assert (=> d!74629 (= lt!207468 lt!207466)))

(declare-datatypes ((Option!378 0))(
  ( (Some!377 (v!8486 V!17549)) (None!376) )
))
(declare-fun getValueByKey!372 (List!8254 (_ BitVec 64)) Option!378)

(assert (=> d!74629 (= (getValueByKey!372 lt!207467 (_1!4085 (tuple2!8151 k0!794 v!412))) (Some!377 (_2!4085 (tuple2!8151 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!196 (List!8254 (_ BitVec 64) V!17549) Unit!13261)

(assert (=> d!74629 (= lt!207466 (lemmaContainsTupThenGetReturnValue!196 lt!207467 (_1!4085 (tuple2!8151 k0!794 v!412)) (_2!4085 (tuple2!8151 k0!794 v!412))))))

(declare-fun insertStrictlySorted!198 (List!8254 (_ BitVec 64) V!17549) List!8254)

(assert (=> d!74629 (= lt!207467 (insertStrictlySorted!198 (toList!3554 lt!207392) (_1!4085 (tuple2!8151 k0!794 v!412)) (_2!4085 (tuple2!8151 k0!794 v!412))))))

(assert (=> d!74629 (= (+!1574 lt!207392 (tuple2!8151 k0!794 v!412)) lt!207465)))

(declare-fun b!458504 () Bool)

(declare-fun res!274000 () Bool)

(assert (=> b!458504 (=> (not res!274000) (not e!267679))))

(assert (=> b!458504 (= res!274000 (= (getValueByKey!372 (toList!3554 lt!207465) (_1!4085 (tuple2!8151 k0!794 v!412))) (Some!377 (_2!4085 (tuple2!8151 k0!794 v!412)))))))

(declare-fun b!458505 () Bool)

(declare-fun contains!2509 (List!8254 tuple2!8150) Bool)

(assert (=> b!458505 (= e!267679 (contains!2509 (toList!3554 lt!207465) (tuple2!8151 k0!794 v!412)))))

(assert (= (and d!74629 res!274001) b!458504))

(assert (= (and b!458504 res!274000) b!458505))

(declare-fun m!441899 () Bool)

(assert (=> d!74629 m!441899))

(declare-fun m!441901 () Bool)

(assert (=> d!74629 m!441901))

(declare-fun m!441903 () Bool)

(assert (=> d!74629 m!441903))

(declare-fun m!441905 () Bool)

(assert (=> d!74629 m!441905))

(declare-fun m!441907 () Bool)

(assert (=> b!458504 m!441907))

(declare-fun m!441909 () Bool)

(assert (=> b!458505 m!441909))

(assert (=> b!458364 d!74629))

(declare-fun d!74631 () Bool)

(assert (=> d!74631 (= (validKeyInArray!0 (select (arr!13655 _keys!709) from!863)) (and (not (= (select (arr!13655 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13655 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!458364 d!74631))

(declare-fun d!74633 () Bool)

(declare-fun e!267684 () Bool)

(assert (=> d!74633 e!267684))

(declare-fun res!274004 () Bool)

(assert (=> d!74633 (=> (not res!274004) (not e!267684))))

(assert (=> d!74633 (= res!274004 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14007 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14008 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14007 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14008 _values!549))))))))

(declare-fun lt!207471 () Unit!13261)

(declare-fun choose!1341 (array!28433 array!28435 (_ BitVec 32) (_ BitVec 32) V!17549 V!17549 (_ BitVec 32) (_ BitVec 64) V!17549 (_ BitVec 32) Int) Unit!13261)

(assert (=> d!74633 (= lt!207471 (choose!1341 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74633 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!14007 _keys!709)))))

(assert (=> d!74633 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!733 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207471)))

(declare-fun call!30141 () ListLongMap!7077)

(declare-fun call!30140 () ListLongMap!7077)

(declare-fun e!267685 () Bool)

(declare-fun b!458512 () Bool)

(assert (=> b!458512 (= e!267685 (= call!30140 (+!1574 call!30141 (tuple2!8151 k0!794 v!412))))))

(declare-fun bm!30137 () Bool)

(assert (=> bm!30137 (= call!30141 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458513 () Bool)

(assert (=> b!458513 (= e!267684 e!267685)))

(declare-fun c!56362 () Bool)

(assert (=> b!458513 (= c!56362 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun bm!30138 () Bool)

(assert (=> bm!30138 (= call!30140 (getCurrentListMapNoExtraKeys!1726 (array!28434 (store (arr!13655 _keys!709) i!563 k0!794) (size!14007 _keys!709)) (array!28436 (store (arr!13656 _values!549) i!563 (ValueCellFull!5823 v!412)) (size!14008 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458514 () Bool)

(assert (=> b!458514 (= e!267685 (= call!30140 call!30141))))

(assert (= (and d!74633 res!274004) b!458513))

(assert (= (and b!458513 c!56362) b!458512))

(assert (= (and b!458513 (not c!56362)) b!458514))

(assert (= (or b!458512 b!458514) bm!30137))

(assert (= (or b!458512 b!458514) bm!30138))

(declare-fun m!441911 () Bool)

(assert (=> d!74633 m!441911))

(declare-fun m!441913 () Bool)

(assert (=> b!458512 m!441913))

(assert (=> bm!30137 m!441753))

(assert (=> bm!30138 m!441773))

(assert (=> bm!30138 m!441739))

(declare-fun m!441915 () Bool)

(assert (=> bm!30138 m!441915))

(assert (=> b!458364 d!74633))

(declare-fun d!74635 () Bool)

(declare-fun e!267686 () Bool)

(assert (=> d!74635 e!267686))

(declare-fun res!274006 () Bool)

(assert (=> d!74635 (=> (not res!274006) (not e!267686))))

(declare-fun lt!207472 () ListLongMap!7077)

(assert (=> d!74635 (= res!274006 (contains!2508 lt!207472 (_1!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!207474 () List!8254)

(assert (=> d!74635 (= lt!207472 (ListLongMap!7078 lt!207474))))

(declare-fun lt!207475 () Unit!13261)

(declare-fun lt!207473 () Unit!13261)

(assert (=> d!74635 (= lt!207475 lt!207473)))

(assert (=> d!74635 (= (getValueByKey!372 lt!207474 (_1!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!377 (_2!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74635 (= lt!207473 (lemmaContainsTupThenGetReturnValue!196 lt!207474 (_1!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74635 (= lt!207474 (insertStrictlySorted!198 (toList!3554 lt!207388) (_1!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74635 (= (+!1574 lt!207388 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!207472)))

(declare-fun b!458515 () Bool)

(declare-fun res!274005 () Bool)

(assert (=> b!458515 (=> (not res!274005) (not e!267686))))

(assert (=> b!458515 (= res!274005 (= (getValueByKey!372 (toList!3554 lt!207472) (_1!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!377 (_2!4085 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!458516 () Bool)

(assert (=> b!458516 (= e!267686 (contains!2509 (toList!3554 lt!207472) (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74635 res!274006) b!458515))

(assert (= (and b!458515 res!274005) b!458516))

(declare-fun m!441917 () Bool)

(assert (=> d!74635 m!441917))

(declare-fun m!441919 () Bool)

(assert (=> d!74635 m!441919))

(declare-fun m!441921 () Bool)

(assert (=> d!74635 m!441921))

(declare-fun m!441923 () Bool)

(assert (=> d!74635 m!441923))

(declare-fun m!441925 () Bool)

(assert (=> b!458515 m!441925))

(declare-fun m!441927 () Bool)

(assert (=> b!458516 m!441927))

(assert (=> b!458373 d!74635))

(declare-fun d!74637 () Bool)

(declare-fun c!56365 () Bool)

(assert (=> d!74637 (= c!56365 ((_ is ValueCellFull!5823) (select (arr!13656 _values!549) from!863)))))

(declare-fun e!267689 () V!17549)

(assert (=> d!74637 (= (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!267689)))

(declare-fun b!458521 () Bool)

(declare-fun get!6742 (ValueCell!5823 V!17549) V!17549)

(assert (=> b!458521 (= e!267689 (get!6742 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458522 () Bool)

(declare-fun get!6743 (ValueCell!5823 V!17549) V!17549)

(assert (=> b!458522 (= e!267689 (get!6743 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74637 c!56365) b!458521))

(assert (= (and d!74637 (not c!56365)) b!458522))

(assert (=> b!458521 m!441731))

(assert (=> b!458521 m!441729))

(declare-fun m!441929 () Bool)

(assert (=> b!458521 m!441929))

(assert (=> b!458522 m!441731))

(assert (=> b!458522 m!441729))

(declare-fun m!441931 () Bool)

(assert (=> b!458522 m!441931))

(assert (=> b!458373 d!74637))

(declare-fun d!74639 () Bool)

(declare-fun res!274011 () Bool)

(declare-fun e!267694 () Bool)

(assert (=> d!74639 (=> res!274011 e!267694)))

(assert (=> d!74639 (= res!274011 (= (select (arr!13655 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74639 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!267694)))

(declare-fun b!458527 () Bool)

(declare-fun e!267695 () Bool)

(assert (=> b!458527 (= e!267694 e!267695)))

(declare-fun res!274012 () Bool)

(assert (=> b!458527 (=> (not res!274012) (not e!267695))))

(assert (=> b!458527 (= res!274012 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!14007 _keys!709)))))

(declare-fun b!458528 () Bool)

(assert (=> b!458528 (= e!267695 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74639 (not res!274011)) b!458527))

(assert (= (and b!458527 res!274012) b!458528))

(declare-fun m!441933 () Bool)

(assert (=> d!74639 m!441933))

(declare-fun m!441935 () Bool)

(assert (=> b!458528 m!441935))

(assert (=> b!458372 d!74639))

(declare-fun d!74641 () Bool)

(assert (=> d!74641 (= (array_inv!9876 _values!549) (bvsge (size!14008 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!41112 d!74641))

(declare-fun d!74643 () Bool)

(assert (=> d!74643 (= (array_inv!9877 _keys!709) (bvsge (size!14007 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!41112 d!74643))

(declare-fun b!458539 () Bool)

(declare-fun e!267705 () Bool)

(declare-fun call!30144 () Bool)

(assert (=> b!458539 (= e!267705 call!30144)))

(declare-fun d!74645 () Bool)

(declare-fun res!274021 () Bool)

(declare-fun e!267706 () Bool)

(assert (=> d!74645 (=> res!274021 e!267706)))

(assert (=> d!74645 (= res!274021 (bvsge #b00000000000000000000000000000000 (size!14007 lt!207394)))))

(assert (=> d!74645 (= (arrayNoDuplicates!0 lt!207394 #b00000000000000000000000000000000 Nil!8252) e!267706)))

(declare-fun b!458540 () Bool)

(declare-fun e!267707 () Bool)

(assert (=> b!458540 (= e!267707 e!267705)))

(declare-fun c!56368 () Bool)

(assert (=> b!458540 (= c!56368 (validKeyInArray!0 (select (arr!13655 lt!207394) #b00000000000000000000000000000000)))))

(declare-fun b!458541 () Bool)

(declare-fun e!267704 () Bool)

(declare-fun contains!2510 (List!8255 (_ BitVec 64)) Bool)

(assert (=> b!458541 (= e!267704 (contains!2510 Nil!8252 (select (arr!13655 lt!207394) #b00000000000000000000000000000000)))))

(declare-fun b!458542 () Bool)

(assert (=> b!458542 (= e!267706 e!267707)))

(declare-fun res!274019 () Bool)

(assert (=> b!458542 (=> (not res!274019) (not e!267707))))

(assert (=> b!458542 (= res!274019 (not e!267704))))

(declare-fun res!274020 () Bool)

(assert (=> b!458542 (=> (not res!274020) (not e!267704))))

(assert (=> b!458542 (= res!274020 (validKeyInArray!0 (select (arr!13655 lt!207394) #b00000000000000000000000000000000)))))

(declare-fun b!458543 () Bool)

(assert (=> b!458543 (= e!267705 call!30144)))

(declare-fun bm!30141 () Bool)

(assert (=> bm!30141 (= call!30144 (arrayNoDuplicates!0 lt!207394 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56368 (Cons!8251 (select (arr!13655 lt!207394) #b00000000000000000000000000000000) Nil!8252) Nil!8252)))))

(assert (= (and d!74645 (not res!274021)) b!458542))

(assert (= (and b!458542 res!274020) b!458541))

(assert (= (and b!458542 res!274019) b!458540))

(assert (= (and b!458540 c!56368) b!458539))

(assert (= (and b!458540 (not c!56368)) b!458543))

(assert (= (or b!458539 b!458543) bm!30141))

(assert (=> b!458540 m!441831))

(assert (=> b!458540 m!441831))

(assert (=> b!458540 m!441839))

(assert (=> b!458541 m!441831))

(assert (=> b!458541 m!441831))

(declare-fun m!441937 () Bool)

(assert (=> b!458541 m!441937))

(assert (=> b!458542 m!441831))

(assert (=> b!458542 m!441831))

(assert (=> b!458542 m!441839))

(assert (=> bm!30141 m!441831))

(declare-fun m!441939 () Bool)

(assert (=> bm!30141 m!441939))

(assert (=> b!458371 d!74645))

(declare-fun b!458544 () Bool)

(declare-fun e!267709 () Bool)

(declare-fun call!30145 () Bool)

(assert (=> b!458544 (= e!267709 call!30145)))

(declare-fun d!74647 () Bool)

(declare-fun res!274024 () Bool)

(declare-fun e!267710 () Bool)

(assert (=> d!74647 (=> res!274024 e!267710)))

(assert (=> d!74647 (= res!274024 (bvsge #b00000000000000000000000000000000 (size!14007 _keys!709)))))

(assert (=> d!74647 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8252) e!267710)))

(declare-fun b!458545 () Bool)

(declare-fun e!267711 () Bool)

(assert (=> b!458545 (= e!267711 e!267709)))

(declare-fun c!56369 () Bool)

(assert (=> b!458545 (= c!56369 (validKeyInArray!0 (select (arr!13655 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!458546 () Bool)

(declare-fun e!267708 () Bool)

(assert (=> b!458546 (= e!267708 (contains!2510 Nil!8252 (select (arr!13655 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!458547 () Bool)

(assert (=> b!458547 (= e!267710 e!267711)))

(declare-fun res!274022 () Bool)

(assert (=> b!458547 (=> (not res!274022) (not e!267711))))

(assert (=> b!458547 (= res!274022 (not e!267708))))

(declare-fun res!274023 () Bool)

(assert (=> b!458547 (=> (not res!274023) (not e!267708))))

(assert (=> b!458547 (= res!274023 (validKeyInArray!0 (select (arr!13655 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!458548 () Bool)

(assert (=> b!458548 (= e!267709 call!30145)))

(declare-fun bm!30142 () Bool)

(assert (=> bm!30142 (= call!30145 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56369 (Cons!8251 (select (arr!13655 _keys!709) #b00000000000000000000000000000000) Nil!8252) Nil!8252)))))

(assert (= (and d!74647 (not res!274024)) b!458547))

(assert (= (and b!458547 res!274023) b!458546))

(assert (= (and b!458547 res!274022) b!458545))

(assert (= (and b!458545 c!56369) b!458544))

(assert (= (and b!458545 (not c!56369)) b!458548))

(assert (= (or b!458544 b!458548) bm!30142))

(assert (=> b!458545 m!441933))

(assert (=> b!458545 m!441933))

(declare-fun m!441941 () Bool)

(assert (=> b!458545 m!441941))

(assert (=> b!458546 m!441933))

(assert (=> b!458546 m!441933))

(declare-fun m!441943 () Bool)

(assert (=> b!458546 m!441943))

(assert (=> b!458547 m!441933))

(assert (=> b!458547 m!441933))

(assert (=> b!458547 m!441941))

(assert (=> bm!30142 m!441933))

(declare-fun m!441945 () Bool)

(assert (=> bm!30142 m!441945))

(assert (=> b!458380 d!74647))

(declare-fun d!74649 () Bool)

(declare-fun res!274025 () Bool)

(declare-fun e!267712 () Bool)

(assert (=> d!74649 (=> res!274025 e!267712)))

(assert (=> d!74649 (= res!274025 (= (select (arr!13655 _keys!709) from!863) k0!794))))

(assert (=> d!74649 (= (arrayContainsKey!0 _keys!709 k0!794 from!863) e!267712)))

(declare-fun b!458549 () Bool)

(declare-fun e!267713 () Bool)

(assert (=> b!458549 (= e!267712 e!267713)))

(declare-fun res!274026 () Bool)

(assert (=> b!458549 (=> (not res!274026) (not e!267713))))

(assert (=> b!458549 (= res!274026 (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!14007 _keys!709)))))

(declare-fun b!458550 () Bool)

(assert (=> b!458550 (= e!267713 (arrayContainsKey!0 _keys!709 k0!794 (bvadd from!863 #b00000000000000000000000000000001)))))

(assert (= (and d!74649 (not res!274025)) b!458549))

(assert (= (and b!458549 res!274026) b!458550))

(assert (=> d!74649 m!441727))

(declare-fun m!441947 () Bool)

(assert (=> b!458550 m!441947))

(assert (=> b!458379 d!74649))

(declare-fun d!74651 () Bool)

(assert (=> d!74651 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!458369 d!74651))

(declare-fun b!458551 () Bool)

(declare-fun e!267716 () Bool)

(declare-fun e!267714 () Bool)

(assert (=> b!458551 (= e!267716 e!267714)))

(declare-fun lt!207477 () (_ BitVec 64))

(assert (=> b!458551 (= lt!207477 (select (arr!13655 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!207476 () Unit!13261)

(assert (=> b!458551 (= lt!207476 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!207477 #b00000000000000000000000000000000))))

(assert (=> b!458551 (arrayContainsKey!0 _keys!709 lt!207477 #b00000000000000000000000000000000)))

(declare-fun lt!207478 () Unit!13261)

(assert (=> b!458551 (= lt!207478 lt!207476)))

(declare-fun res!274027 () Bool)

(assert (=> b!458551 (= res!274027 (= (seekEntryOrOpen!0 (select (arr!13655 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3523 #b00000000000000000000000000000000)))))

(assert (=> b!458551 (=> (not res!274027) (not e!267714))))

(declare-fun b!458552 () Bool)

(declare-fun e!267715 () Bool)

(assert (=> b!458552 (= e!267715 e!267716)))

(declare-fun c!56370 () Bool)

(assert (=> b!458552 (= c!56370 (validKeyInArray!0 (select (arr!13655 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74653 () Bool)

(declare-fun res!274028 () Bool)

(assert (=> d!74653 (=> res!274028 e!267715)))

(assert (=> d!74653 (= res!274028 (bvsge #b00000000000000000000000000000000 (size!14007 _keys!709)))))

(assert (=> d!74653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!267715)))

(declare-fun b!458553 () Bool)

(declare-fun call!30146 () Bool)

(assert (=> b!458553 (= e!267714 call!30146)))

(declare-fun b!458554 () Bool)

(assert (=> b!458554 (= e!267716 call!30146)))

(declare-fun bm!30143 () Bool)

(assert (=> bm!30143 (= call!30146 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(assert (= (and d!74653 (not res!274028)) b!458552))

(assert (= (and b!458552 c!56370) b!458551))

(assert (= (and b!458552 (not c!56370)) b!458554))

(assert (= (and b!458551 res!274027) b!458553))

(assert (= (or b!458553 b!458554) bm!30143))

(assert (=> b!458551 m!441933))

(declare-fun m!441949 () Bool)

(assert (=> b!458551 m!441949))

(declare-fun m!441951 () Bool)

(assert (=> b!458551 m!441951))

(assert (=> b!458551 m!441933))

(declare-fun m!441953 () Bool)

(assert (=> b!458551 m!441953))

(assert (=> b!458552 m!441933))

(assert (=> b!458552 m!441933))

(assert (=> b!458552 m!441941))

(declare-fun m!441955 () Bool)

(assert (=> bm!30143 m!441955))

(assert (=> b!458378 d!74653))

(declare-fun lt!207481 () ListLongMap!7077)

(declare-fun b!458555 () Bool)

(declare-fun e!267720 () Bool)

(assert (=> b!458555 (= e!267720 (= lt!207481 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458556 () Bool)

(declare-fun lt!207483 () Unit!13261)

(declare-fun lt!207485 () Unit!13261)

(assert (=> b!458556 (= lt!207483 lt!207485)))

(declare-fun lt!207479 () (_ BitVec 64))

(declare-fun lt!207480 () ListLongMap!7077)

(declare-fun lt!207484 () (_ BitVec 64))

(declare-fun lt!207482 () V!17549)

(assert (=> b!458556 (not (contains!2508 (+!1574 lt!207480 (tuple2!8151 lt!207484 lt!207482)) lt!207479))))

(assert (=> b!458556 (= lt!207485 (addStillNotContains!151 lt!207480 lt!207484 lt!207482 lt!207479))))

(assert (=> b!458556 (= lt!207479 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458556 (= lt!207482 (get!6741 (select (arr!13656 lt!207391) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458556 (= lt!207484 (select (arr!13655 lt!207394) from!863))))

(declare-fun call!30147 () ListLongMap!7077)

(assert (=> b!458556 (= lt!207480 call!30147)))

(declare-fun e!267721 () ListLongMap!7077)

(assert (=> b!458556 (= e!267721 (+!1574 call!30147 (tuple2!8151 (select (arr!13655 lt!207394) from!863) (get!6741 (select (arr!13656 lt!207391) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458557 () Bool)

(declare-fun e!267719 () ListLongMap!7077)

(assert (=> b!458557 (= e!267719 e!267721)))

(declare-fun c!56373 () Bool)

(assert (=> b!458557 (= c!56373 (validKeyInArray!0 (select (arr!13655 lt!207394) from!863)))))

(declare-fun b!458558 () Bool)

(declare-fun e!267718 () Bool)

(declare-fun e!267723 () Bool)

(assert (=> b!458558 (= e!267718 e!267723)))

(declare-fun c!56372 () Bool)

(declare-fun e!267722 () Bool)

(assert (=> b!458558 (= c!56372 e!267722)))

(declare-fun res!274030 () Bool)

(assert (=> b!458558 (=> (not res!274030) (not e!267722))))

(assert (=> b!458558 (= res!274030 (bvslt from!863 (size!14007 lt!207394)))))

(declare-fun bm!30144 () Bool)

(assert (=> bm!30144 (= call!30147 (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458559 () Bool)

(assert (=> b!458559 (= e!267720 (isEmpty!568 lt!207481))))

(declare-fun b!458560 () Bool)

(declare-fun e!267717 () Bool)

(assert (=> b!458560 (= e!267723 e!267717)))

(assert (=> b!458560 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14007 lt!207394)))))

(declare-fun res!274032 () Bool)

(assert (=> b!458560 (= res!274032 (contains!2508 lt!207481 (select (arr!13655 lt!207394) from!863)))))

(assert (=> b!458560 (=> (not res!274032) (not e!267717))))

(declare-fun d!74655 () Bool)

(assert (=> d!74655 e!267718))

(declare-fun res!274029 () Bool)

(assert (=> d!74655 (=> (not res!274029) (not e!267718))))

(assert (=> d!74655 (= res!274029 (not (contains!2508 lt!207481 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74655 (= lt!207481 e!267719)))

(declare-fun c!56374 () Bool)

(assert (=> d!74655 (= c!56374 (bvsge from!863 (size!14007 lt!207394)))))

(assert (=> d!74655 (validMask!0 mask!1025)))

(assert (=> d!74655 (= (getCurrentListMapNoExtraKeys!1726 lt!207394 lt!207391 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!207481)))

(declare-fun b!458561 () Bool)

(assert (=> b!458561 (= e!267721 call!30147)))

(declare-fun b!458562 () Bool)

(assert (=> b!458562 (= e!267719 (ListLongMap!7078 Nil!8251))))

(declare-fun b!458563 () Bool)

(declare-fun res!274031 () Bool)

(assert (=> b!458563 (=> (not res!274031) (not e!267718))))

(assert (=> b!458563 (= res!274031 (not (contains!2508 lt!207481 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458564 () Bool)

(assert (=> b!458564 (= e!267723 e!267720)))

(declare-fun c!56371 () Bool)

(assert (=> b!458564 (= c!56371 (bvslt from!863 (size!14007 lt!207394)))))

(declare-fun b!458565 () Bool)

(assert (=> b!458565 (= e!267722 (validKeyInArray!0 (select (arr!13655 lt!207394) from!863)))))

(assert (=> b!458565 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!458566 () Bool)

(assert (=> b!458566 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14007 lt!207394)))))

(assert (=> b!458566 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14008 lt!207391)))))

(assert (=> b!458566 (= e!267717 (= (apply!316 lt!207481 (select (arr!13655 lt!207394) from!863)) (get!6741 (select (arr!13656 lt!207391) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!74655 c!56374) b!458562))

(assert (= (and d!74655 (not c!56374)) b!458557))

(assert (= (and b!458557 c!56373) b!458556))

(assert (= (and b!458557 (not c!56373)) b!458561))

(assert (= (or b!458556 b!458561) bm!30144))

(assert (= (and d!74655 res!274029) b!458563))

(assert (= (and b!458563 res!274031) b!458558))

(assert (= (and b!458558 res!274030) b!458565))

(assert (= (and b!458558 c!56372) b!458560))

(assert (= (and b!458558 (not c!56372)) b!458564))

(assert (= (and b!458560 res!274032) b!458566))

(assert (= (and b!458564 c!56371) b!458555))

(assert (= (and b!458564 (not c!56371)) b!458559))

(declare-fun b_lambda!9839 () Bool)

(assert (=> (not b_lambda!9839) (not b!458556)))

(assert (=> b!458556 t!14135))

(declare-fun b_and!19247 () Bool)

(assert (= b_and!19245 (and (=> t!14135 result!7213) b_and!19247)))

(declare-fun b_lambda!9841 () Bool)

(assert (=> (not b_lambda!9841) (not b!458566)))

(assert (=> b!458566 t!14135))

(declare-fun b_and!19249 () Bool)

(assert (= b_and!19247 (and (=> t!14135 result!7213) b_and!19249)))

(declare-fun m!441957 () Bool)

(assert (=> bm!30144 m!441957))

(declare-fun m!441959 () Bool)

(assert (=> b!458556 m!441959))

(declare-fun m!441961 () Bool)

(assert (=> b!458556 m!441961))

(declare-fun m!441963 () Bool)

(assert (=> b!458556 m!441963))

(declare-fun m!441965 () Bool)

(assert (=> b!458556 m!441965))

(declare-fun m!441967 () Bool)

(assert (=> b!458556 m!441967))

(declare-fun m!441969 () Bool)

(assert (=> b!458556 m!441969))

(assert (=> b!458556 m!441729))

(assert (=> b!458556 m!441959))

(assert (=> b!458556 m!441729))

(declare-fun m!441971 () Bool)

(assert (=> b!458556 m!441971))

(assert (=> b!458556 m!441961))

(declare-fun m!441973 () Bool)

(assert (=> b!458563 m!441973))

(assert (=> b!458555 m!441957))

(assert (=> b!458565 m!441967))

(assert (=> b!458565 m!441967))

(declare-fun m!441975 () Bool)

(assert (=> b!458565 m!441975))

(declare-fun m!441977 () Bool)

(assert (=> d!74655 m!441977))

(assert (=> d!74655 m!441767))

(assert (=> b!458557 m!441967))

(assert (=> b!458557 m!441967))

(assert (=> b!458557 m!441975))

(assert (=> b!458560 m!441967))

(assert (=> b!458560 m!441967))

(declare-fun m!441979 () Bool)

(assert (=> b!458560 m!441979))

(assert (=> b!458566 m!441959))

(assert (=> b!458566 m!441959))

(assert (=> b!458566 m!441729))

(assert (=> b!458566 m!441971))

(assert (=> b!458566 m!441729))

(assert (=> b!458566 m!441967))

(assert (=> b!458566 m!441967))

(declare-fun m!441981 () Bool)

(assert (=> b!458566 m!441981))

(declare-fun m!441983 () Bool)

(assert (=> b!458559 m!441983))

(assert (=> b!458377 d!74655))

(declare-fun e!267727 () Bool)

(declare-fun b!458567 () Bool)

(declare-fun lt!207488 () ListLongMap!7077)

(assert (=> b!458567 (= e!267727 (= lt!207488 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458568 () Bool)

(declare-fun lt!207490 () Unit!13261)

(declare-fun lt!207492 () Unit!13261)

(assert (=> b!458568 (= lt!207490 lt!207492)))

(declare-fun lt!207491 () (_ BitVec 64))

(declare-fun lt!207487 () ListLongMap!7077)

(declare-fun lt!207489 () V!17549)

(declare-fun lt!207486 () (_ BitVec 64))

(assert (=> b!458568 (not (contains!2508 (+!1574 lt!207487 (tuple2!8151 lt!207491 lt!207489)) lt!207486))))

(assert (=> b!458568 (= lt!207492 (addStillNotContains!151 lt!207487 lt!207491 lt!207489 lt!207486))))

(assert (=> b!458568 (= lt!207486 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458568 (= lt!207489 (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458568 (= lt!207491 (select (arr!13655 _keys!709) from!863))))

(declare-fun call!30148 () ListLongMap!7077)

(assert (=> b!458568 (= lt!207487 call!30148)))

(declare-fun e!267728 () ListLongMap!7077)

(assert (=> b!458568 (= e!267728 (+!1574 call!30148 (tuple2!8151 (select (arr!13655 _keys!709) from!863) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458569 () Bool)

(declare-fun e!267726 () ListLongMap!7077)

(assert (=> b!458569 (= e!267726 e!267728)))

(declare-fun c!56377 () Bool)

(assert (=> b!458569 (= c!56377 (validKeyInArray!0 (select (arr!13655 _keys!709) from!863)))))

(declare-fun b!458570 () Bool)

(declare-fun e!267725 () Bool)

(declare-fun e!267730 () Bool)

(assert (=> b!458570 (= e!267725 e!267730)))

(declare-fun c!56376 () Bool)

(declare-fun e!267729 () Bool)

(assert (=> b!458570 (= c!56376 e!267729)))

(declare-fun res!274034 () Bool)

(assert (=> b!458570 (=> (not res!274034) (not e!267729))))

(assert (=> b!458570 (= res!274034 (bvslt from!863 (size!14007 _keys!709)))))

(declare-fun bm!30145 () Bool)

(assert (=> bm!30145 (= call!30148 (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458571 () Bool)

(assert (=> b!458571 (= e!267727 (isEmpty!568 lt!207488))))

(declare-fun b!458572 () Bool)

(declare-fun e!267724 () Bool)

(assert (=> b!458572 (= e!267730 e!267724)))

(assert (=> b!458572 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14007 _keys!709)))))

(declare-fun res!274036 () Bool)

(assert (=> b!458572 (= res!274036 (contains!2508 lt!207488 (select (arr!13655 _keys!709) from!863)))))

(assert (=> b!458572 (=> (not res!274036) (not e!267724))))

(declare-fun d!74657 () Bool)

(assert (=> d!74657 e!267725))

(declare-fun res!274033 () Bool)

(assert (=> d!74657 (=> (not res!274033) (not e!267725))))

(assert (=> d!74657 (= res!274033 (not (contains!2508 lt!207488 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74657 (= lt!207488 e!267726)))

(declare-fun c!56378 () Bool)

(assert (=> d!74657 (= c!56378 (bvsge from!863 (size!14007 _keys!709)))))

(assert (=> d!74657 (validMask!0 mask!1025)))

(assert (=> d!74657 (= (getCurrentListMapNoExtraKeys!1726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!207488)))

(declare-fun b!458573 () Bool)

(assert (=> b!458573 (= e!267728 call!30148)))

(declare-fun b!458574 () Bool)

(assert (=> b!458574 (= e!267726 (ListLongMap!7078 Nil!8251))))

(declare-fun b!458575 () Bool)

(declare-fun res!274035 () Bool)

(assert (=> b!458575 (=> (not res!274035) (not e!267725))))

(assert (=> b!458575 (= res!274035 (not (contains!2508 lt!207488 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458576 () Bool)

(assert (=> b!458576 (= e!267730 e!267727)))

(declare-fun c!56375 () Bool)

(assert (=> b!458576 (= c!56375 (bvslt from!863 (size!14007 _keys!709)))))

(declare-fun b!458577 () Bool)

(assert (=> b!458577 (= e!267729 (validKeyInArray!0 (select (arr!13655 _keys!709) from!863)))))

(assert (=> b!458577 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!458578 () Bool)

(assert (=> b!458578 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14007 _keys!709)))))

(assert (=> b!458578 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14008 _values!549)))))

(assert (=> b!458578 (= e!267724 (= (apply!316 lt!207488 (select (arr!13655 _keys!709) from!863)) (get!6741 (select (arr!13656 _values!549) from!863) (dynLambda!885 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!74657 c!56378) b!458574))

(assert (= (and d!74657 (not c!56378)) b!458569))

(assert (= (and b!458569 c!56377) b!458568))

(assert (= (and b!458569 (not c!56377)) b!458573))

(assert (= (or b!458568 b!458573) bm!30145))

(assert (= (and d!74657 res!274033) b!458575))

(assert (= (and b!458575 res!274035) b!458570))

(assert (= (and b!458570 res!274034) b!458577))

(assert (= (and b!458570 c!56376) b!458572))

(assert (= (and b!458570 (not c!56376)) b!458576))

(assert (= (and b!458572 res!274036) b!458578))

(assert (= (and b!458576 c!56375) b!458567))

(assert (= (and b!458576 (not c!56375)) b!458571))

(declare-fun b_lambda!9843 () Bool)

(assert (=> (not b_lambda!9843) (not b!458568)))

(assert (=> b!458568 t!14135))

(declare-fun b_and!19251 () Bool)

(assert (= b_and!19249 (and (=> t!14135 result!7213) b_and!19251)))

(declare-fun b_lambda!9845 () Bool)

(assert (=> (not b_lambda!9845) (not b!458578)))

(assert (=> b!458578 t!14135))

(declare-fun b_and!19253 () Bool)

(assert (= b_and!19251 (and (=> t!14135 result!7213) b_and!19253)))

(declare-fun m!441985 () Bool)

(assert (=> bm!30145 m!441985))

(assert (=> b!458568 m!441731))

(declare-fun m!441987 () Bool)

(assert (=> b!458568 m!441987))

(declare-fun m!441989 () Bool)

(assert (=> b!458568 m!441989))

(declare-fun m!441991 () Bool)

(assert (=> b!458568 m!441991))

(assert (=> b!458568 m!441727))

(declare-fun m!441993 () Bool)

(assert (=> b!458568 m!441993))

(assert (=> b!458568 m!441729))

(assert (=> b!458568 m!441731))

(assert (=> b!458568 m!441729))

(assert (=> b!458568 m!441733))

(assert (=> b!458568 m!441987))

(declare-fun m!441995 () Bool)

(assert (=> b!458575 m!441995))

(assert (=> b!458567 m!441985))

(assert (=> b!458577 m!441727))

(assert (=> b!458577 m!441727))

(assert (=> b!458577 m!441757))

(declare-fun m!441997 () Bool)

(assert (=> d!74657 m!441997))

(assert (=> d!74657 m!441767))

(assert (=> b!458569 m!441727))

(assert (=> b!458569 m!441727))

(assert (=> b!458569 m!441757))

(assert (=> b!458572 m!441727))

(assert (=> b!458572 m!441727))

(declare-fun m!441999 () Bool)

(assert (=> b!458572 m!441999))

(assert (=> b!458578 m!441731))

(assert (=> b!458578 m!441731))

(assert (=> b!458578 m!441729))

(assert (=> b!458578 m!441733))

(assert (=> b!458578 m!441729))

(assert (=> b!458578 m!441727))

(assert (=> b!458578 m!441727))

(declare-fun m!442001 () Bool)

(assert (=> b!458578 m!442001))

(declare-fun m!442003 () Bool)

(assert (=> b!458571 m!442003))

(assert (=> b!458377 d!74657))

(declare-fun b!458586 () Bool)

(declare-fun e!267735 () Bool)

(assert (=> b!458586 (= e!267735 tp_is_empty!12333)))

(declare-fun mapIsEmpty!20152 () Bool)

(declare-fun mapRes!20152 () Bool)

(assert (=> mapIsEmpty!20152 mapRes!20152))

(declare-fun b!458585 () Bool)

(declare-fun e!267736 () Bool)

(assert (=> b!458585 (= e!267736 tp_is_empty!12333)))

(declare-fun condMapEmpty!20152 () Bool)

(declare-fun mapDefault!20152 () ValueCell!5823)

(assert (=> mapNonEmpty!20146 (= condMapEmpty!20152 (= mapRest!20146 ((as const (Array (_ BitVec 32) ValueCell!5823)) mapDefault!20152)))))

(assert (=> mapNonEmpty!20146 (= tp!38818 (and e!267735 mapRes!20152))))

(declare-fun mapNonEmpty!20152 () Bool)

(declare-fun tp!38827 () Bool)

(assert (=> mapNonEmpty!20152 (= mapRes!20152 (and tp!38827 e!267736))))

(declare-fun mapKey!20152 () (_ BitVec 32))

(declare-fun mapRest!20152 () (Array (_ BitVec 32) ValueCell!5823))

(declare-fun mapValue!20152 () ValueCell!5823)

(assert (=> mapNonEmpty!20152 (= mapRest!20146 (store mapRest!20152 mapKey!20152 mapValue!20152))))

(assert (= (and mapNonEmpty!20146 condMapEmpty!20152) mapIsEmpty!20152))

(assert (= (and mapNonEmpty!20146 (not condMapEmpty!20152)) mapNonEmpty!20152))

(assert (= (and mapNonEmpty!20152 ((_ is ValueCellFull!5823) mapValue!20152)) b!458585))

(assert (= (and mapNonEmpty!20146 ((_ is ValueCellFull!5823) mapDefault!20152)) b!458586))

(declare-fun m!442005 () Bool)

(assert (=> mapNonEmpty!20152 m!442005))

(declare-fun b_lambda!9847 () Bool)

(assert (= b_lambda!9845 (or (and start!41112 b_free!10995) b_lambda!9847)))

(declare-fun b_lambda!9849 () Bool)

(assert (= b_lambda!9837 (or (and start!41112 b_free!10995) b_lambda!9849)))

(declare-fun b_lambda!9851 () Bool)

(assert (= b_lambda!9835 (or (and start!41112 b_free!10995) b_lambda!9851)))

(declare-fun b_lambda!9853 () Bool)

(assert (= b_lambda!9843 (or (and start!41112 b_free!10995) b_lambda!9853)))

(declare-fun b_lambda!9855 () Bool)

(assert (= b_lambda!9839 (or (and start!41112 b_free!10995) b_lambda!9855)))

(declare-fun b_lambda!9857 () Bool)

(assert (= b_lambda!9841 (or (and start!41112 b_free!10995) b_lambda!9857)))

(declare-fun b_lambda!9859 () Bool)

(assert (= b_lambda!9833 (or (and start!41112 b_free!10995) b_lambda!9859)))

(declare-fun b_lambda!9861 () Bool)

(assert (= b_lambda!9831 (or (and start!41112 b_free!10995) b_lambda!9861)))

(check-sat (not d!74627) (not b_lambda!9859) (not b!458489) (not b!458560) (not b!458476) (not b_lambda!9847) (not d!74633) (not b!458521) (not bm!30137) (not b!458566) (not b!458547) (not b!458478) (not b!458569) (not d!74629) (not b!458512) (not b_lambda!9861) (not b!458556) (not b!458568) (not b!458493) (not b_lambda!9849) (not b!458563) (not b!458484) (not b!458488) (not b_lambda!9853) (not b!458555) (not d!74657) (not bm!30131) (not b!458541) (not b!458496) (not b!458499) (not b_next!10995) (not b!458515) (not b!458557) (not b_lambda!9855) (not bm!30138) (not bm!30142) (not bm!30141) (not b!458480) (not b!458528) (not b!458498) (not b_lambda!9857) (not d!74625) (not b!458551) (not b!458572) (not b!458516) (not bm!30145) (not bm!30128) (not bm!30132) tp_is_empty!12333 (not b!458490) (not b_lambda!9851) (not b!458492) (not b!458486) (not d!74655) (not b!458522) (not b!458487) (not b!458575) (not b!458578) (not b!458571) (not b!458546) (not b!458477) (not b!458565) (not bm!30144) (not b!458505) (not mapNonEmpty!20152) (not d!74635) (not bm!30143) (not b!458567) (not b!458577) (not b!458542) (not b!458504) (not b!458550) (not b!458559) (not b_lambda!9829) (not b!458540) (not b!458552) b_and!19253 (not b!458448) (not b!458449) (not b!458545) (not b!458481))
(check-sat b_and!19253 (not b_next!10995))
