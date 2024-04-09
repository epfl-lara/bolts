; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13132 () Bool)

(assert start!13132)

(declare-fun b!115035 () Bool)

(declare-fun b_free!2649 () Bool)

(declare-fun b_next!2649 () Bool)

(assert (=> b!115035 (= b_free!2649 (not b_next!2649))))

(declare-fun tp!10309 () Bool)

(declare-fun b_and!7125 () Bool)

(assert (=> b!115035 (= tp!10309 b_and!7125)))

(declare-fun b!115029 () Bool)

(declare-fun b_free!2651 () Bool)

(declare-fun b_next!2651 () Bool)

(assert (=> b!115029 (= b_free!2651 (not b_next!2651))))

(declare-fun tp!10311 () Bool)

(declare-fun b_and!7127 () Bool)

(assert (=> b!115029 (= tp!10311 b_and!7127)))

(declare-fun b!115026 () Bool)

(declare-datatypes ((Unit!3600 0))(
  ( (Unit!3601) )
))
(declare-fun e!74882 () Unit!3600)

(declare-fun Unit!3602 () Unit!3600)

(assert (=> b!115026 (= e!74882 Unit!3602)))

(declare-fun mapNonEmpty!4155 () Bool)

(declare-fun mapRes!4156 () Bool)

(declare-fun tp!10310 () Bool)

(declare-fun e!74892 () Bool)

(assert (=> mapNonEmpty!4155 (= mapRes!4156 (and tp!10310 e!74892))))

(declare-datatypes ((V!3301 0))(
  ( (V!3302 (val!1415 Int)) )
))
(declare-datatypes ((array!4484 0))(
  ( (array!4485 (arr!2124 (Array (_ BitVec 32) (_ BitVec 64))) (size!2384 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1027 0))(
  ( (ValueCellFull!1027 (v!2997 V!3301)) (EmptyCell!1027) )
))
(declare-datatypes ((array!4486 0))(
  ( (array!4487 (arr!2125 (Array (_ BitVec 32) ValueCell!1027)) (size!2385 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!962 0))(
  ( (LongMapFixedSize!963 (defaultEntry!2690 Int) (mask!6888 (_ BitVec 32)) (extraKeys!2479 (_ BitVec 32)) (zeroValue!2557 V!3301) (minValue!2557 V!3301) (_size!530 (_ BitVec 32)) (_keys!4412 array!4484) (_values!2673 array!4486) (_vacant!530 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!760 0))(
  ( (Cell!761 (v!2998 LongMapFixedSize!962)) )
))
(declare-datatypes ((LongMap!760 0))(
  ( (LongMap!761 (underlying!391 Cell!760)) )
))
(declare-fun thiss!992 () LongMap!760)

(declare-fun mapRest!4155 () (Array (_ BitVec 32) ValueCell!1027))

(declare-fun mapValue!4155 () ValueCell!1027)

(declare-fun mapKey!4155 () (_ BitVec 32))

(assert (=> mapNonEmpty!4155 (= (arr!2125 (_values!2673 (v!2998 (underlying!391 thiss!992)))) (store mapRest!4155 mapKey!4155 mapValue!4155))))

(declare-fun mapIsEmpty!4155 () Bool)

(assert (=> mapIsEmpty!4155 mapRes!4156))

(declare-fun mapNonEmpty!4156 () Bool)

(declare-fun mapRes!4155 () Bool)

(declare-fun tp!10312 () Bool)

(declare-fun e!74880 () Bool)

(assert (=> mapNonEmpty!4156 (= mapRes!4155 (and tp!10312 e!74880))))

(declare-fun mapValue!4156 () ValueCell!1027)

(declare-fun mapRest!4156 () (Array (_ BitVec 32) ValueCell!1027))

(declare-fun mapKey!4156 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!962)

(assert (=> mapNonEmpty!4156 (= (arr!2125 (_values!2673 newMap!16)) (store mapRest!4156 mapKey!4156 mapValue!4156))))

(declare-fun b!115028 () Bool)

(declare-fun res!56541 () Bool)

(declare-fun e!74881 () Bool)

(assert (=> b!115028 (=> (not res!56541) (not e!74881))))

(assert (=> b!115028 (= res!56541 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6888 newMap!16)) (_size!530 (v!2998 (underlying!391 thiss!992)))))))

(declare-fun e!74885 () Bool)

(declare-fun tp_is_empty!2741 () Bool)

(declare-fun e!74893 () Bool)

(declare-fun array_inv!1283 (array!4484) Bool)

(declare-fun array_inv!1284 (array!4486) Bool)

(assert (=> b!115029 (= e!74893 (and tp!10311 tp_is_empty!2741 (array_inv!1283 (_keys!4412 newMap!16)) (array_inv!1284 (_values!2673 newMap!16)) e!74885))))

(declare-fun b!115030 () Bool)

(declare-fun e!74884 () Bool)

(assert (=> b!115030 (= e!74884 tp_is_empty!2741)))

(declare-fun mapIsEmpty!4156 () Bool)

(assert (=> mapIsEmpty!4156 mapRes!4155))

(declare-fun b!115031 () Bool)

(declare-fun e!74888 () Bool)

(assert (=> b!115031 (= e!74888 false)))

(declare-fun lt!59981 () Unit!3600)

(assert (=> b!115031 (= lt!59981 e!74882)))

(declare-fun c!20560 () Bool)

(declare-datatypes ((tuple2!2476 0))(
  ( (tuple2!2477 (_1!1248 (_ BitVec 64)) (_2!1248 V!3301)) )
))
(declare-datatypes ((List!1679 0))(
  ( (Nil!1676) (Cons!1675 (h!2275 tuple2!2476) (t!5933 List!1679)) )
))
(declare-datatypes ((ListLongMap!1623 0))(
  ( (ListLongMap!1624 (toList!827 List!1679)) )
))
(declare-fun lt!59982 () ListLongMap!1623)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!855 (ListLongMap!1623 (_ BitVec 64)) Bool)

(assert (=> b!115031 (= c!20560 (contains!855 lt!59982 (select (arr!2124 (_keys!4412 (v!2998 (underlying!391 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2478 0))(
  ( (tuple2!2479 (_1!1249 Bool) (_2!1249 LongMapFixedSize!962)) )
))
(declare-fun lt!59979 () tuple2!2478)

(declare-fun update!172 (LongMapFixedSize!962 (_ BitVec 64) V!3301) tuple2!2478)

(declare-fun get!1391 (ValueCell!1027 V!3301) V!3301)

(declare-fun dynLambda!403 (Int (_ BitVec 64)) V!3301)

(assert (=> b!115031 (= lt!59979 (update!172 newMap!16 (select (arr!2124 (_keys!4412 (v!2998 (underlying!391 thiss!992)))) from!355) (get!1391 (select (arr!2125 (_values!2673 (v!2998 (underlying!391 thiss!992)))) from!355) (dynLambda!403 (defaultEntry!2690 (v!2998 (underlying!391 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!115032 () Bool)

(declare-fun e!74890 () Bool)

(assert (=> b!115032 (= e!74885 (and e!74890 mapRes!4155))))

(declare-fun condMapEmpty!4155 () Bool)

(declare-fun mapDefault!4155 () ValueCell!1027)

