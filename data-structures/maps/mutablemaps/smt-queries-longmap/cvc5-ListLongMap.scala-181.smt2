; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3630 () Bool)

(assert start!3630)

(declare-fun b!25083 () Bool)

(declare-fun b_free!763 () Bool)

(declare-fun b_next!763 () Bool)

(assert (=> b!25083 (= b_free!763 (not b_next!763))))

(declare-fun tp!3540 () Bool)

(declare-fun b_and!1559 () Bool)

(assert (=> b!25083 (= tp!3540 b_and!1559)))

(declare-fun bm!2224 () Bool)

(declare-datatypes ((V!1195 0))(
  ( (V!1196 (val!540 Int)) )
))
(declare-datatypes ((ValueCell!314 0))(
  ( (ValueCellFull!314 (v!1617 V!1195)) (EmptyCell!314) )
))
(declare-datatypes ((array!1285 0))(
  ( (array!1286 (arr!607 (Array (_ BitVec 32) ValueCell!314)) (size!708 (_ BitVec 32))) )
))
(declare-datatypes ((array!1287 0))(
  ( (array!1288 (arr!608 (Array (_ BitVec 32) (_ BitVec 64))) (size!709 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!214 0))(
  ( (LongMapFixedSize!215 (defaultEntry!1764 Int) (mask!4763 (_ BitVec 32)) (extraKeys!1657 (_ BitVec 32)) (zeroValue!1684 V!1195) (minValue!1684 V!1195) (_size!154 (_ BitVec 32)) (_keys!3190 array!1287) (_values!1749 array!1285) (_vacant!154 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!950 0))(
  ( (tuple2!951 (_1!482 Bool) (_2!482 LongMapFixedSize!214)) )
))
(declare-fun call!2228 () tuple2!950)

(declare-fun c!3454 () Bool)

(declare-datatypes ((Cell!214 0))(
  ( (Cell!215 (v!1618 LongMapFixedSize!214)) )
))
(declare-datatypes ((LongMap!214 0))(
  ( (LongMap!215 (underlying!118 Cell!214)) )
))
(declare-fun thiss!938 () LongMap!214)

(declare-fun c!3452 () Bool)

(declare-fun lt!9700 () LongMapFixedSize!214)

(declare-fun update!36 (LongMapFixedSize!214 (_ BitVec 64) V!1195) tuple2!950)

(assert (=> bm!2224 (= call!2228 (update!36 lt!9700 (ite (or c!3452 c!3454) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3452 c!3454) (zeroValue!1684 (v!1618 (underlying!118 thiss!938))) (minValue!1684 (v!1618 (underlying!118 thiss!938))))))))

(declare-fun b!25072 () Bool)

(declare-fun e!16211 () Bool)

(declare-fun tp_is_empty!1027 () Bool)

(assert (=> b!25072 (= e!16211 tp_is_empty!1027)))

(declare-fun b!25073 () Bool)

(declare-fun e!16219 () Bool)

(declare-fun e!16208 () Bool)

(assert (=> b!25073 (= e!16219 e!16208)))

(declare-fun b!25074 () Bool)

(declare-fun c!3453 () Bool)

(declare-fun lt!9698 () Bool)

(assert (=> b!25074 (= c!3453 (and (not (= (bvand (extraKeys!1657 (v!1618 (underlying!118 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!9698))))

(declare-datatypes ((tuple2!952 0))(
  ( (tuple2!953 (_1!483 Bool) (_2!483 Cell!214)) )
))
(declare-fun e!16217 () tuple2!952)

(declare-fun e!16210 () tuple2!952)

(assert (=> b!25074 (= e!16217 e!16210)))

(declare-fun b!25075 () Bool)

(declare-fun res!15181 () Bool)

(declare-fun e!16218 () Bool)

(assert (=> b!25075 (=> (not res!15181) (not e!16218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!25075 (= res!15181 (validMask!0 (mask!4763 (v!1618 (underlying!118 thiss!938)))))))

(declare-fun res!15180 () Bool)

(declare-fun e!16212 () Bool)

(assert (=> start!3630 (=> (not res!15180) (not e!16212))))

(declare-fun valid!110 (LongMap!214) Bool)

(assert (=> start!3630 (= res!15180 (valid!110 thiss!938))))

(assert (=> start!3630 e!16212))

(declare-fun e!16216 () Bool)

(assert (=> start!3630 e!16216))

(declare-fun mapNonEmpty!1036 () Bool)

(declare-fun mapRes!1036 () Bool)

(declare-fun tp!3541 () Bool)

(assert (=> mapNonEmpty!1036 (= mapRes!1036 (and tp!3541 e!16211))))

(declare-fun mapRest!1036 () (Array (_ BitVec 32) ValueCell!314))

(declare-fun mapValue!1036 () ValueCell!314)

(declare-fun mapKey!1036 () (_ BitVec 32))

(assert (=> mapNonEmpty!1036 (= (arr!607 (_values!1749 (v!1618 (underlying!118 thiss!938)))) (store mapRest!1036 mapKey!1036 mapValue!1036))))

(declare-fun b!25076 () Bool)

(assert (=> b!25076 (= e!16216 e!16219)))

(declare-fun b!25077 () Bool)

(declare-fun e!16214 () Bool)

(assert (=> b!25077 (= e!16214 tp_is_empty!1027)))

(declare-fun bm!2225 () Bool)

(declare-fun call!2227 () tuple2!950)

(assert (=> bm!2225 (= call!2227 call!2228)))

(declare-fun b!25078 () Bool)

(declare-fun e!16215 () Bool)

(assert (=> b!25078 (= e!16215 (and e!16214 mapRes!1036))))

(declare-fun condMapEmpty!1036 () Bool)

(declare-fun mapDefault!1036 () ValueCell!314)

