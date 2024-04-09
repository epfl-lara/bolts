; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12966 () Bool)

(assert start!12966)

(declare-fun b!113004 () Bool)

(declare-fun b_free!2589 () Bool)

(declare-fun b_next!2589 () Bool)

(assert (=> b!113004 (= b_free!2589 (not b_next!2589))))

(declare-fun tp!10121 () Bool)

(declare-fun b_and!6957 () Bool)

(assert (=> b!113004 (= tp!10121 b_and!6957)))

(declare-fun b!113001 () Bool)

(declare-fun b_free!2591 () Bool)

(declare-fun b_next!2591 () Bool)

(assert (=> b!113001 (= b_free!2591 (not b_next!2591))))

(declare-fun tp!10122 () Bool)

(declare-fun b_and!6959 () Bool)

(assert (=> b!113001 (= tp!10122 b_and!6959)))

(declare-fun b!112983 () Bool)

(declare-fun e!73461 () Bool)

(declare-fun e!73455 () Bool)

(assert (=> b!112983 (= e!73461 e!73455)))

(declare-fun mapIsEmpty!4055 () Bool)

(declare-fun mapRes!4055 () Bool)

(assert (=> mapIsEmpty!4055 mapRes!4055))

(declare-fun b!112985 () Bool)

(declare-fun res!55703 () Bool)

(declare-fun e!73452 () Bool)

(assert (=> b!112985 (=> res!55703 e!73452)))

(declare-datatypes ((V!3261 0))(
  ( (V!3262 (val!1400 Int)) )
))
(declare-datatypes ((array!4420 0))(
  ( (array!4421 (arr!2094 (Array (_ BitVec 32) (_ BitVec 64))) (size!2353 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1012 0))(
  ( (ValueCellFull!1012 (v!2959 V!3261)) (EmptyCell!1012) )
))
(declare-datatypes ((array!4422 0))(
  ( (array!4423 (arr!2095 (Array (_ BitVec 32) ValueCell!1012)) (size!2354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!932 0))(
  ( (LongMapFixedSize!933 (defaultEntry!2662 Int) (mask!6846 (_ BitVec 32)) (extraKeys!2453 (_ BitVec 32)) (zeroValue!2530 V!3261) (minValue!2530 V!3261) (_size!515 (_ BitVec 32)) (_keys!4382 array!4420) (_values!2645 array!4422) (_vacant!515 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!732 0))(
  ( (Cell!733 (v!2960 LongMapFixedSize!932)) )
))
(declare-datatypes ((LongMap!732 0))(
  ( (LongMap!733 (underlying!377 Cell!732)) )
))
(declare-fun thiss!992 () LongMap!732)

(assert (=> b!112985 (= res!55703 (or (not (= (size!2354 (_values!2645 (v!2960 (underlying!377 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6846 (v!2960 (underlying!377 thiss!992)))))) (not (= (size!2353 (_keys!4382 (v!2960 (underlying!377 thiss!992)))) (size!2354 (_values!2645 (v!2960 (underlying!377 thiss!992)))))) (bvslt (mask!6846 (v!2960 (underlying!377 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2453 (v!2960 (underlying!377 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2453 (v!2960 (underlying!377 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!112986 () Bool)

(declare-fun e!73464 () Bool)

(declare-fun tp_is_empty!2711 () Bool)

(assert (=> b!112986 (= e!73464 tp_is_empty!2711)))

(declare-fun b!112987 () Bool)

(declare-fun res!55704 () Bool)

(declare-fun e!73462 () Bool)

(assert (=> b!112987 (=> (not res!55704) (not e!73462))))

(declare-fun newMap!16 () LongMapFixedSize!932)

(declare-fun valid!430 (LongMapFixedSize!932) Bool)

(assert (=> b!112987 (= res!55704 (valid!430 newMap!16))))

(declare-fun b!112988 () Bool)

(declare-fun e!73468 () Bool)

(assert (=> b!112988 (= e!73462 e!73468)))

(declare-fun res!55707 () Bool)

(assert (=> b!112988 (=> (not res!55707) (not e!73468))))

(declare-datatypes ((tuple2!2446 0))(
  ( (tuple2!2447 (_1!1233 (_ BitVec 64)) (_2!1233 V!3261)) )
))
(declare-datatypes ((List!1662 0))(
  ( (Nil!1659) (Cons!1658 (h!2258 tuple2!2446) (t!5852 List!1662)) )
))
(declare-datatypes ((ListLongMap!1605 0))(
  ( (ListLongMap!1606 (toList!818 List!1662)) )
))
(declare-fun lt!58531 () ListLongMap!1605)

(declare-fun lt!58529 () ListLongMap!1605)

(assert (=> b!112988 (= res!55707 (= lt!58531 lt!58529))))

(declare-fun map!1303 (LongMapFixedSize!932) ListLongMap!1605)

(assert (=> b!112988 (= lt!58529 (map!1303 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!494 (array!4420 array!4422 (_ BitVec 32) (_ BitVec 32) V!3261 V!3261 (_ BitVec 32) Int) ListLongMap!1605)

(assert (=> b!112988 (= lt!58531 (getCurrentListMap!494 (_keys!4382 (v!2960 (underlying!377 thiss!992))) (_values!2645 (v!2960 (underlying!377 thiss!992))) (mask!6846 (v!2960 (underlying!377 thiss!992))) (extraKeys!2453 (v!2960 (underlying!377 thiss!992))) (zeroValue!2530 (v!2960 (underlying!377 thiss!992))) (minValue!2530 (v!2960 (underlying!377 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2662 (v!2960 (underlying!377 thiss!992)))))))

(declare-fun b!112989 () Bool)

(declare-fun e!73466 () Bool)

(declare-fun e!73456 () Bool)

(assert (=> b!112989 (= e!73466 (and e!73456 mapRes!4055))))

(declare-fun condMapEmpty!4056 () Bool)

(declare-fun mapDefault!4056 () ValueCell!1012)

