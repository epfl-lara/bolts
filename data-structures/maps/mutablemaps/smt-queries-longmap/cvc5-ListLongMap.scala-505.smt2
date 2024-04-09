; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11958 () Bool)

(assert start!11958)

(declare-fun b!100710 () Bool)

(declare-fun b_free!2449 () Bool)

(declare-fun b_next!2449 () Bool)

(assert (=> b!100710 (= b_free!2449 (not b_next!2449))))

(declare-fun tp!9647 () Bool)

(declare-fun b_and!6205 () Bool)

(assert (=> b!100710 (= tp!9647 b_and!6205)))

(declare-fun b!100706 () Bool)

(declare-fun b_free!2451 () Bool)

(declare-fun b_next!2451 () Bool)

(assert (=> b!100706 (= b_free!2451 (not b_next!2451))))

(declare-fun tp!9646 () Bool)

(declare-fun b_and!6207 () Bool)

(assert (=> b!100706 (= tp!9646 b_and!6207)))

(declare-fun b!100701 () Bool)

(declare-fun e!65575 () Bool)

(declare-fun e!65577 () Bool)

(assert (=> b!100701 (= e!65575 e!65577)))

(declare-fun b!100702 () Bool)

(declare-fun e!65581 () Bool)

(declare-fun e!65583 () Bool)

(declare-fun mapRes!3791 () Bool)

(assert (=> b!100702 (= e!65581 (and e!65583 mapRes!3791))))

(declare-fun condMapEmpty!3791 () Bool)

(declare-datatypes ((V!3169 0))(
  ( (V!3170 (val!1365 Int)) )
))
(declare-datatypes ((array!4264 0))(
  ( (array!4265 (arr!2024 (Array (_ BitVec 32) (_ BitVec 64))) (size!2276 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!977 0))(
  ( (ValueCellFull!977 (v!2830 V!3169)) (EmptyCell!977) )
))
(declare-datatypes ((array!4266 0))(
  ( (array!4267 (arr!2025 (Array (_ BitVec 32) ValueCell!977)) (size!2277 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!862 0))(
  ( (LongMapFixedSize!863 (defaultEntry!2522 Int) (mask!6639 (_ BitVec 32)) (extraKeys!2335 (_ BitVec 32)) (zeroValue!2401 V!3169) (minValue!2401 V!3169) (_size!480 (_ BitVec 32)) (_keys!4220 array!4264) (_values!2505 array!4266) (_vacant!480 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!666 0))(
  ( (Cell!667 (v!2831 LongMapFixedSize!862)) )
))
(declare-datatypes ((LongMap!666 0))(
  ( (LongMap!667 (underlying!344 Cell!666)) )
))
(declare-fun thiss!992 () LongMap!666)

(declare-fun mapDefault!3791 () ValueCell!977)

