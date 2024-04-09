; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11116 () Bool)

(assert start!11116)

(declare-fun b!90590 () Bool)

(declare-fun b_free!2301 () Bool)

(declare-fun b_next!2301 () Bool)

(assert (=> b!90590 (= b_free!2301 (not b_next!2301))))

(declare-fun tp!9154 () Bool)

(declare-fun b_and!5453 () Bool)

(assert (=> b!90590 (= tp!9154 b_and!5453)))

(declare-fun b!90588 () Bool)

(declare-fun b_free!2303 () Bool)

(declare-fun b_next!2303 () Bool)

(assert (=> b!90588 (= b_free!2303 (not b_next!2303))))

(declare-fun tp!9151 () Bool)

(declare-fun b_and!5455 () Bool)

(assert (=> b!90588 (= tp!9151 b_and!5455)))

(declare-fun b!90578 () Bool)

(declare-fun res!46194 () Bool)

(declare-fun e!59025 () Bool)

(assert (=> b!90578 (=> (not res!46194) (not e!59025))))

(declare-datatypes ((V!3069 0))(
  ( (V!3070 (val!1328 Int)) )
))
(declare-datatypes ((array!4100 0))(
  ( (array!4101 (arr!1950 (Array (_ BitVec 32) (_ BitVec 64))) (size!2197 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!940 0))(
  ( (ValueCellFull!940 (v!2703 V!3069)) (EmptyCell!940) )
))
(declare-datatypes ((array!4102 0))(
  ( (array!4103 (arr!1951 (Array (_ BitVec 32) ValueCell!940)) (size!2198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!788 0))(
  ( (LongMapFixedSize!789 (defaultEntry!2395 Int) (mask!6449 (_ BitVec 32)) (extraKeys!2226 (_ BitVec 32)) (zeroValue!2283 V!3069) (minValue!2283 V!3069) (_size!443 (_ BitVec 32)) (_keys!4075 array!4100) (_values!2378 array!4102) (_vacant!443 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!788)

(declare-datatypes ((Cell!592 0))(
  ( (Cell!593 (v!2704 LongMapFixedSize!788)) )
))
(declare-datatypes ((LongMap!592 0))(
  ( (LongMap!593 (underlying!307 Cell!592)) )
))
(declare-fun thiss!992 () LongMap!592)

(assert (=> b!90578 (= res!46194 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6449 newMap!16)) (_size!443 (v!2704 (underlying!307 thiss!992)))))))

(declare-fun b!90579 () Bool)

(declare-fun e!59034 () Bool)

(declare-fun tp_is_empty!2567 () Bool)

(assert (=> b!90579 (= e!59034 tp_is_empty!2567)))

(declare-fun b!90580 () Bool)

(declare-fun e!59026 () Bool)

(declare-fun mapRes!3519 () Bool)

(assert (=> b!90580 (= e!59026 (and e!59034 mapRes!3519))))

(declare-fun condMapEmpty!3519 () Bool)

(declare-fun mapDefault!3519 () ValueCell!940)

