; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13162 () Bool)

(assert start!13162)

(declare-fun b!115711 () Bool)

(declare-fun b_free!2709 () Bool)

(declare-fun b_next!2709 () Bool)

(assert (=> b!115711 (= b_free!2709 (not b_next!2709))))

(declare-fun tp!10492 () Bool)

(declare-fun b_and!7201 () Bool)

(assert (=> b!115711 (= tp!10492 b_and!7201)))

(declare-fun b!115713 () Bool)

(declare-fun b_free!2711 () Bool)

(declare-fun b_next!2711 () Bool)

(assert (=> b!115713 (= b_free!2711 (not b_next!2711))))

(declare-fun tp!10489 () Bool)

(declare-fun b_and!7203 () Bool)

(assert (=> b!115713 (= tp!10489 b_and!7203)))

(declare-fun b!115703 () Bool)

(declare-fun e!75492 () Bool)

(declare-fun tp_is_empty!2771 () Bool)

(assert (=> b!115703 (= e!75492 tp_is_empty!2771)))

(declare-fun b!115704 () Bool)

(declare-fun e!75489 () Bool)

(assert (=> b!115704 (= e!75489 tp_is_empty!2771)))

(declare-fun b!115705 () Bool)

(declare-fun e!75493 () Bool)

(assert (=> b!115705 (= e!75493 false)))

(declare-datatypes ((V!3341 0))(
  ( (V!3342 (val!1430 Int)) )
))
(declare-datatypes ((tuple2!2502 0))(
  ( (tuple2!2503 (_1!1261 (_ BitVec 64)) (_2!1261 V!3341)) )
))
(declare-datatypes ((List!1690 0))(
  ( (Nil!1687) (Cons!1686 (h!2286 tuple2!2502) (t!5956 List!1690)) )
))
(declare-datatypes ((ListLongMap!1641 0))(
  ( (ListLongMap!1642 (toList!836 List!1690)) )
))
(declare-fun lt!60099 () ListLongMap!1641)

(declare-datatypes ((array!4544 0))(
  ( (array!4545 (arr!2154 (Array (_ BitVec 32) (_ BitVec 64))) (size!2414 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1042 0))(
  ( (ValueCellFull!1042 (v!3025 V!3341)) (EmptyCell!1042) )
))
(declare-datatypes ((array!4546 0))(
  ( (array!4547 (arr!2155 (Array (_ BitVec 32) ValueCell!1042)) (size!2415 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!992 0))(
  ( (LongMapFixedSize!993 (defaultEntry!2705 Int) (mask!6913 (_ BitVec 32)) (extraKeys!2494 (_ BitVec 32)) (zeroValue!2572 V!3341) (minValue!2572 V!3341) (_size!545 (_ BitVec 32)) (_keys!4427 array!4544) (_values!2688 array!4546) (_vacant!545 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!992)

(declare-fun map!1338 (LongMapFixedSize!992) ListLongMap!1641)

(assert (=> b!115705 (= lt!60099 (map!1338 newMap!16))))

(declare-fun lt!60098 () ListLongMap!1641)

(declare-datatypes ((Cell!786 0))(
  ( (Cell!787 (v!3026 LongMapFixedSize!992)) )
))
(declare-datatypes ((LongMap!786 0))(
  ( (LongMap!787 (underlying!404 Cell!786)) )
))
(declare-fun thiss!992 () LongMap!786)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!509 (array!4544 array!4546 (_ BitVec 32) (_ BitVec 32) V!3341 V!3341 (_ BitVec 32) Int) ListLongMap!1641)

(assert (=> b!115705 (= lt!60098 (getCurrentListMap!509 (_keys!4427 (v!3026 (underlying!404 thiss!992))) (_values!2688 (v!3026 (underlying!404 thiss!992))) (mask!6913 (v!3026 (underlying!404 thiss!992))) (extraKeys!2494 (v!3026 (underlying!404 thiss!992))) (zeroValue!2572 (v!3026 (underlying!404 thiss!992))) (minValue!2572 (v!3026 (underlying!404 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2705 (v!3026 (underlying!404 thiss!992)))))))

(declare-fun b!115706 () Bool)

(declare-fun e!75484 () Bool)

(declare-fun e!75486 () Bool)

(assert (=> b!115706 (= e!75484 e!75486)))

(declare-fun res!56737 () Bool)

(assert (=> start!13162 (=> (not res!56737) (not e!75493))))

(declare-fun valid!461 (LongMap!786) Bool)

(assert (=> start!13162 (= res!56737 (valid!461 thiss!992))))

(assert (=> start!13162 e!75493))

(declare-fun e!75494 () Bool)

(assert (=> start!13162 e!75494))

(assert (=> start!13162 true))

(declare-fun e!75490 () Bool)

(assert (=> start!13162 e!75490))

(declare-fun b!115707 () Bool)

(declare-fun e!75485 () Bool)

(assert (=> b!115707 (= e!75485 tp_is_empty!2771)))

(declare-fun b!115708 () Bool)

(assert (=> b!115708 (= e!75494 e!75484)))

(declare-fun b!115709 () Bool)

(declare-fun res!56740 () Bool)

(assert (=> b!115709 (=> (not res!56740) (not e!75493))))

(assert (=> b!115709 (= res!56740 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6913 newMap!16)) (_size!545 (v!3026 (underlying!404 thiss!992)))))))

(declare-fun mapIsEmpty!4245 () Bool)

(declare-fun mapRes!4245 () Bool)

(assert (=> mapIsEmpty!4245 mapRes!4245))

(declare-fun mapIsEmpty!4246 () Bool)

(declare-fun mapRes!4246 () Bool)

(assert (=> mapIsEmpty!4246 mapRes!4246))

(declare-fun b!115710 () Bool)

(declare-fun e!75487 () Bool)

(assert (=> b!115710 (= e!75487 (and e!75485 mapRes!4245))))

(declare-fun condMapEmpty!4245 () Bool)

(declare-fun mapDefault!4246 () ValueCell!1042)

