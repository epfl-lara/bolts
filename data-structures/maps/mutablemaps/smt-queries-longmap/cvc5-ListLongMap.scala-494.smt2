; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11124 () Bool)

(assert start!11124)

(declare-fun b!90833 () Bool)

(declare-fun b_free!2317 () Bool)

(declare-fun b_next!2317 () Bool)

(assert (=> b!90833 (= b_free!2317 (not b_next!2317))))

(declare-fun tp!9202 () Bool)

(declare-fun b_and!5485 () Bool)

(assert (=> b!90833 (= tp!9202 b_and!5485)))

(declare-fun b!90831 () Bool)

(declare-fun b_free!2319 () Bool)

(declare-fun b_next!2319 () Bool)

(assert (=> b!90831 (= b_free!2319 (not b_next!2319))))

(declare-fun tp!9201 () Bool)

(declare-fun b_and!5487 () Bool)

(assert (=> b!90831 (= tp!9201 b_and!5487)))

(declare-fun b!90827 () Bool)

(declare-fun e!59251 () Bool)

(declare-datatypes ((V!3081 0))(
  ( (V!3082 (val!1332 Int)) )
))
(declare-datatypes ((array!4116 0))(
  ( (array!4117 (arr!1958 (Array (_ BitVec 32) (_ BitVec 64))) (size!2205 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!944 0))(
  ( (ValueCellFull!944 (v!2711 V!3081)) (EmptyCell!944) )
))
(declare-datatypes ((array!4118 0))(
  ( (array!4119 (arr!1959 (Array (_ BitVec 32) ValueCell!944)) (size!2206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!796 0))(
  ( (LongMapFixedSize!797 (defaultEntry!2399 Int) (mask!6457 (_ BitVec 32)) (extraKeys!2230 (_ BitVec 32)) (zeroValue!2287 V!3081) (minValue!2287 V!3081) (_size!447 (_ BitVec 32)) (_keys!4079 array!4116) (_values!2382 array!4118) (_vacant!447 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2280 0))(
  ( (tuple2!2281 (_1!1150 Bool) (_2!1150 LongMapFixedSize!796)) )
))
(declare-fun lt!44053 () tuple2!2280)

(declare-fun valid!352 (LongMapFixedSize!796) Bool)

(assert (=> b!90827 (= e!59251 (valid!352 (_2!1150 lt!44053)))))

(declare-fun b!90828 () Bool)

(declare-fun res!46296 () Bool)

(assert (=> b!90828 (=> res!46296 e!59251)))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!600 0))(
  ( (Cell!601 (v!2712 LongMapFixedSize!796)) )
))
(declare-datatypes ((LongMap!600 0))(
  ( (LongMap!601 (underlying!311 Cell!600)) )
))
(declare-fun thiss!992 () LongMap!600)

(assert (=> b!90828 (= res!46296 (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2205 (_keys!4079 (v!2712 (underlying!311 thiss!992))))))))

(declare-fun b!90829 () Bool)

(declare-fun e!59248 () Bool)

(declare-fun tp_is_empty!2575 () Bool)

(assert (=> b!90829 (= e!59248 tp_is_empty!2575)))

(declare-fun mapIsEmpty!3543 () Bool)

(declare-fun mapRes!3544 () Bool)

(assert (=> mapIsEmpty!3543 mapRes!3544))

(declare-fun b!90830 () Bool)

(declare-datatypes ((Unit!2722 0))(
  ( (Unit!2723) )
))
(declare-fun e!59242 () Unit!2722)

(declare-fun Unit!2724 () Unit!2722)

(assert (=> b!90830 (= e!59242 Unit!2724)))

(declare-fun b!90832 () Bool)

(declare-fun e!59237 () Bool)

(assert (=> b!90832 (= e!59237 tp_is_empty!2575)))

(declare-fun mapNonEmpty!3543 () Bool)

(declare-fun tp!9200 () Bool)

(assert (=> mapNonEmpty!3543 (= mapRes!3544 (and tp!9200 e!59248))))

(declare-fun mapRest!3544 () (Array (_ BitVec 32) ValueCell!944))

(declare-fun mapValue!3544 () ValueCell!944)

(declare-fun newMap!16 () LongMapFixedSize!796)

(declare-fun mapKey!3544 () (_ BitVec 32))

(assert (=> mapNonEmpty!3543 (= (arr!1959 (_values!2382 newMap!16)) (store mapRest!3544 mapKey!3544 mapValue!3544))))

(declare-fun mapIsEmpty!3544 () Bool)

(declare-fun mapRes!3543 () Bool)

(assert (=> mapIsEmpty!3544 mapRes!3543))

(declare-fun e!59253 () Bool)

(declare-fun e!59250 () Bool)

(declare-fun array_inv!1175 (array!4116) Bool)

(declare-fun array_inv!1176 (array!4118) Bool)

(assert (=> b!90833 (= e!59250 (and tp!9202 tp_is_empty!2575 (array_inv!1175 (_keys!4079 (v!2712 (underlying!311 thiss!992)))) (array_inv!1176 (_values!2382 (v!2712 (underlying!311 thiss!992)))) e!59253))))

(declare-fun b!90834 () Bool)

(declare-fun e!59238 () Bool)

(assert (=> b!90834 (= e!59253 (and e!59238 mapRes!3543))))

(declare-fun condMapEmpty!3544 () Bool)

(declare-fun mapDefault!3543 () ValueCell!944)

