; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13088 () Bool)

(assert start!13088)

(declare-fun b!114436 () Bool)

(declare-fun b_free!2629 () Bool)

(declare-fun b_next!2629 () Bool)

(assert (=> b!114436 (= b_free!2629 (not b_next!2629))))

(declare-fun tp!10246 () Bool)

(declare-fun b_and!7073 () Bool)

(assert (=> b!114436 (= tp!10246 b_and!7073)))

(declare-fun b!114439 () Bool)

(declare-fun b_free!2631 () Bool)

(declare-fun b_next!2631 () Bool)

(assert (=> b!114439 (= b_free!2631 (not b_next!2631))))

(declare-fun tp!10247 () Bool)

(declare-fun b_and!7075 () Bool)

(assert (=> b!114439 (= tp!10247 b_and!7075)))

(declare-fun b!114430 () Bool)

(declare-fun res!56314 () Bool)

(declare-fun e!74472 () Bool)

(assert (=> b!114430 (=> (not res!56314) (not e!74472))))

(declare-datatypes ((V!3289 0))(
  ( (V!3290 (val!1410 Int)) )
))
(declare-datatypes ((array!4462 0))(
  ( (array!4463 (arr!2114 (Array (_ BitVec 32) (_ BitVec 64))) (size!2374 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1022 0))(
  ( (ValueCellFull!1022 (v!2985 V!3289)) (EmptyCell!1022) )
))
(declare-datatypes ((array!4464 0))(
  ( (array!4465 (arr!2115 (Array (_ BitVec 32) ValueCell!1022)) (size!2375 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!952 0))(
  ( (LongMapFixedSize!953 (defaultEntry!2682 Int) (mask!6878 (_ BitVec 32)) (extraKeys!2471 (_ BitVec 32)) (zeroValue!2549 V!3289) (minValue!2549 V!3289) (_size!525 (_ BitVec 32)) (_keys!4404 array!4462) (_values!2665 array!4464) (_vacant!525 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!952)

(declare-fun valid!440 (LongMapFixedSize!952) Bool)

(assert (=> b!114430 (= res!56314 (valid!440 newMap!16))))

(declare-fun b!114431 () Bool)

(declare-fun e!74465 () Bool)

(assert (=> b!114431 (= e!74472 e!74465)))

(declare-fun res!56310 () Bool)

(assert (=> b!114431 (=> (not res!56310) (not e!74465))))

(declare-datatypes ((tuple2!2464 0))(
  ( (tuple2!2465 (_1!1242 (_ BitVec 64)) (_2!1242 V!3289)) )
))
(declare-datatypes ((List!1672 0))(
  ( (Nil!1669) (Cons!1668 (h!2268 tuple2!2464) (t!5906 List!1672)) )
))
(declare-datatypes ((ListLongMap!1617 0))(
  ( (ListLongMap!1618 (toList!824 List!1672)) )
))
(declare-fun lt!59567 () ListLongMap!1617)

(declare-fun lt!59574 () ListLongMap!1617)

(assert (=> b!114431 (= res!56310 (= lt!59567 lt!59574))))

(declare-fun map!1317 (LongMapFixedSize!952) ListLongMap!1617)

(assert (=> b!114431 (= lt!59574 (map!1317 newMap!16))))

(declare-datatypes ((Cell!750 0))(
  ( (Cell!751 (v!2986 LongMapFixedSize!952)) )
))
(declare-datatypes ((LongMap!750 0))(
  ( (LongMap!751 (underlying!386 Cell!750)) )
))
(declare-fun thiss!992 () LongMap!750)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!500 (array!4462 array!4464 (_ BitVec 32) (_ BitVec 32) V!3289 V!3289 (_ BitVec 32) Int) ListLongMap!1617)

(assert (=> b!114431 (= lt!59567 (getCurrentListMap!500 (_keys!4404 (v!2986 (underlying!386 thiss!992))) (_values!2665 (v!2986 (underlying!386 thiss!992))) (mask!6878 (v!2986 (underlying!386 thiss!992))) (extraKeys!2471 (v!2986 (underlying!386 thiss!992))) (zeroValue!2549 (v!2986 (underlying!386 thiss!992))) (minValue!2549 (v!2986 (underlying!386 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2682 (v!2986 (underlying!386 thiss!992)))))))

(declare-fun res!56316 () Bool)

(assert (=> start!13088 (=> (not res!56316) (not e!74472))))

(declare-fun valid!441 (LongMap!750) Bool)

(assert (=> start!13088 (= res!56316 (valid!441 thiss!992))))

(assert (=> start!13088 e!74472))

(declare-fun e!74459 () Bool)

(assert (=> start!13088 e!74459))

(assert (=> start!13088 true))

(declare-fun e!74455 () Bool)

(assert (=> start!13088 e!74455))

(declare-fun b!114432 () Bool)

(declare-fun e!74462 () Bool)

(declare-fun e!74463 () Bool)

(assert (=> b!114432 (= e!74462 e!74463)))

(declare-fun res!56312 () Bool)

(assert (=> b!114432 (=> (not res!56312) (not e!74463))))

(declare-datatypes ((tuple2!2466 0))(
  ( (tuple2!2467 (_1!1243 Bool) (_2!1243 LongMapFixedSize!952)) )
))
(declare-fun lt!59578 () tuple2!2466)

(assert (=> b!114432 (= res!56312 (and (_1!1243 lt!59578) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!3582 0))(
  ( (Unit!3583) )
))
(declare-fun lt!59573 () Unit!3582)

(declare-fun e!74467 () Unit!3582)

(assert (=> b!114432 (= lt!59573 e!74467)))

(declare-fun c!20461 () Bool)

(declare-fun contains!850 (ListLongMap!1617 (_ BitVec 64)) Bool)

(assert (=> b!114432 (= c!20461 (contains!850 lt!59574 (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355)))))

(declare-fun lt!59575 () V!3289)

(declare-fun update!169 (LongMapFixedSize!952 (_ BitVec 64) V!3289) tuple2!2466)

(assert (=> b!114432 (= lt!59578 (update!169 newMap!16 (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355) lt!59575))))

(declare-fun mapIsEmpty!4121 () Bool)

(declare-fun mapRes!4121 () Bool)

(assert (=> mapIsEmpty!4121 mapRes!4121))

(declare-fun b!114433 () Bool)

(declare-fun e!74466 () Bool)

(declare-fun tp_is_empty!2731 () Bool)

(assert (=> b!114433 (= e!74466 tp_is_empty!2731)))

(declare-fun b!114434 () Bool)

(declare-fun e!74460 () Bool)

(assert (=> b!114434 (= e!74460 (valid!440 (v!2986 (underlying!386 thiss!992))))))

(declare-fun b!114435 () Bool)

(declare-fun Unit!3584 () Unit!3582)

(assert (=> b!114435 (= e!74467 Unit!3584)))

(declare-fun lt!59568 () Unit!3582)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!125 (array!4462 array!4464 (_ BitVec 32) (_ BitVec 32) V!3289 V!3289 (_ BitVec 64) (_ BitVec 32) Int) Unit!3582)

(assert (=> b!114435 (= lt!59568 (lemmaListMapContainsThenArrayContainsFrom!125 (_keys!4404 (v!2986 (underlying!386 thiss!992))) (_values!2665 (v!2986 (underlying!386 thiss!992))) (mask!6878 (v!2986 (underlying!386 thiss!992))) (extraKeys!2471 (v!2986 (underlying!386 thiss!992))) (zeroValue!2549 (v!2986 (underlying!386 thiss!992))) (minValue!2549 (v!2986 (underlying!386 thiss!992))) (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2682 (v!2986 (underlying!386 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114435 (arrayContainsKey!0 (_keys!4404 (v!2986 (underlying!386 thiss!992))) (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59566 () Unit!3582)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4462 (_ BitVec 32) (_ BitVec 32)) Unit!3582)

(assert (=> b!114435 (= lt!59566 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4404 (v!2986 (underlying!386 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1673 0))(
  ( (Nil!1670) (Cons!1669 (h!2269 (_ BitVec 64)) (t!5907 List!1673)) )
))
(declare-fun arrayNoDuplicates!0 (array!4462 (_ BitVec 32) List!1673) Bool)

(assert (=> b!114435 (arrayNoDuplicates!0 (_keys!4404 (v!2986 (underlying!386 thiss!992))) from!355 Nil!1670)))

(declare-fun lt!59580 () Unit!3582)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4462 (_ BitVec 32) (_ BitVec 64) List!1673) Unit!3582)

(assert (=> b!114435 (= lt!59580 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4404 (v!2986 (underlying!386 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355) (Cons!1669 (select (arr!2114 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) from!355) Nil!1670)))))

(assert (=> b!114435 false))

(declare-fun mapNonEmpty!4121 () Bool)

(declare-fun tp!10245 () Bool)

(declare-fun e!74468 () Bool)

(assert (=> mapNonEmpty!4121 (= mapRes!4121 (and tp!10245 e!74468))))

(declare-fun mapKey!4122 () (_ BitVec 32))

(declare-fun mapRest!4121 () (Array (_ BitVec 32) ValueCell!1022))

(declare-fun mapValue!4121 () ValueCell!1022)

(assert (=> mapNonEmpty!4121 (= (arr!2115 (_values!2665 (v!2986 (underlying!386 thiss!992)))) (store mapRest!4121 mapKey!4122 mapValue!4121))))

(declare-fun e!74464 () Bool)

(declare-fun e!74461 () Bool)

(declare-fun array_inv!1275 (array!4462) Bool)

(declare-fun array_inv!1276 (array!4464) Bool)

(assert (=> b!114436 (= e!74461 (and tp!10246 tp_is_empty!2731 (array_inv!1275 (_keys!4404 (v!2986 (underlying!386 thiss!992)))) (array_inv!1276 (_values!2665 (v!2986 (underlying!386 thiss!992)))) e!74464))))

(declare-fun b!114437 () Bool)

(declare-fun res!56311 () Bool)

(assert (=> b!114437 (=> (not res!56311) (not e!74472))))

(assert (=> b!114437 (= res!56311 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2374 (_keys!4404 (v!2986 (underlying!386 thiss!992)))))))))

(declare-fun b!114438 () Bool)

(declare-fun e!74458 () Bool)

(assert (=> b!114438 (= e!74458 tp_is_empty!2731)))

(declare-fun e!74456 () Bool)

(assert (=> b!114439 (= e!74455 (and tp!10247 tp_is_empty!2731 (array_inv!1275 (_keys!4404 newMap!16)) (array_inv!1276 (_values!2665 newMap!16)) e!74456))))

(declare-fun b!114440 () Bool)

(declare-fun mapRes!4122 () Bool)

(assert (=> b!114440 (= e!74456 (and e!74466 mapRes!4122))))

(declare-fun condMapEmpty!4122 () Bool)

(declare-fun mapDefault!4122 () ValueCell!1022)

