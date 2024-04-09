; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17296 () Bool)

(assert start!17296)

(declare-fun b!173226 () Bool)

(declare-fun b_free!4309 () Bool)

(declare-fun b_next!4309 () Bool)

(assert (=> b!173226 (= b_free!4309 (not b_next!4309))))

(declare-fun tp!15591 () Bool)

(declare-fun b_and!10767 () Bool)

(assert (=> b!173226 (= tp!15591 b_and!10767)))

(declare-fun b!173221 () Bool)

(declare-fun e!114434 () Bool)

(declare-fun tp_is_empty!4081 () Bool)

(assert (=> b!173221 (= e!114434 tp_is_empty!4081)))

(declare-fun b!173222 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5089 0))(
  ( (V!5090 (val!2085 Int)) )
))
(declare-datatypes ((tuple2!3234 0))(
  ( (tuple2!3235 (_1!1627 (_ BitVec 64)) (_2!1627 V!5089)) )
))
(declare-datatypes ((List!2225 0))(
  ( (Nil!2222) (Cons!2221 (h!2838 tuple2!3234) (t!7040 List!2225)) )
))
(declare-datatypes ((ListLongMap!2175 0))(
  ( (ListLongMap!2176 (toList!1103 List!2225)) )
))
(declare-fun lt!85742 () ListLongMap!2175)

(declare-fun v!309 () V!5089)

(declare-datatypes ((ValueCell!1697 0))(
  ( (ValueCellFull!1697 (v!3949 V!5089)) (EmptyCell!1697) )
))
(declare-datatypes ((array!7292 0))(
  ( (array!7293 (arr!3464 (Array (_ BitVec 32) (_ BitVec 64))) (size!3763 (_ BitVec 32))) )
))
(declare-datatypes ((array!7294 0))(
  ( (array!7295 (arr!3465 (Array (_ BitVec 32) ValueCell!1697)) (size!3764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2302 0))(
  ( (LongMapFixedSize!2303 (defaultEntry!3597 Int) (mask!8469 (_ BitVec 32)) (extraKeys!3336 (_ BitVec 32)) (zeroValue!3438 V!5089) (minValue!3440 V!5089) (_size!1200 (_ BitVec 32)) (_keys!5438 array!7292) (_values!3580 array!7294) (_vacant!1200 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2302)

(declare-fun e!114435 () Bool)

(declare-fun +!240 (ListLongMap!2175 tuple2!3234) ListLongMap!2175)

(declare-fun map!1880 (LongMapFixedSize!2302) ListLongMap!2175)

(assert (=> b!173222 (= e!114435 (= lt!85742 (+!240 (map!1880 thiss!1248) (tuple2!3235 key!828 v!309))))))

(declare-fun mapIsEmpty!6948 () Bool)

(declare-fun mapRes!6948 () Bool)

(assert (=> mapIsEmpty!6948 mapRes!6948))

(declare-fun b!173223 () Bool)

(declare-fun e!114432 () Bool)

(assert (=> b!173223 (= e!114432 (and e!114434 mapRes!6948))))

(declare-fun condMapEmpty!6948 () Bool)

(declare-fun mapDefault!6948 () ValueCell!1697)

