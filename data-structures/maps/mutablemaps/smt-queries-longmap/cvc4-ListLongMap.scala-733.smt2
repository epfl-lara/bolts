; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17118 () Bool)

(assert start!17118)

(declare-fun b!172040 () Bool)

(declare-fun b_free!4241 () Bool)

(declare-fun b_next!4241 () Bool)

(assert (=> b!172040 (= b_free!4241 (not b_next!4241))))

(declare-fun tp!15357 () Bool)

(declare-fun b_and!10699 () Bool)

(assert (=> b!172040 (= tp!15357 b_and!10699)))

(declare-fun b!172039 () Bool)

(declare-fun e!113558 () Bool)

(declare-datatypes ((V!4997 0))(
  ( (V!4998 (val!2051 Int)) )
))
(declare-datatypes ((ValueCell!1663 0))(
  ( (ValueCellFull!1663 (v!3915 V!4997)) (EmptyCell!1663) )
))
(declare-datatypes ((array!7140 0))(
  ( (array!7141 (arr!3396 (Array (_ BitVec 32) (_ BitVec 64))) (size!3690 (_ BitVec 32))) )
))
(declare-datatypes ((array!7142 0))(
  ( (array!7143 (arr!3397 (Array (_ BitVec 32) ValueCell!1663)) (size!3691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2234 0))(
  ( (LongMapFixedSize!2235 (defaultEntry!3563 Int) (mask!8396 (_ BitVec 32)) (extraKeys!3302 (_ BitVec 32)) (zeroValue!3404 V!4997) (minValue!3406 V!4997) (_size!1166 (_ BitVec 32)) (_keys!5397 array!7140) (_values!3546 array!7142) (_vacant!1166 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2234)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172039 (= e!113558 (not (validMask!0 (mask!8396 thiss!1248))))))

(declare-fun res!81704 () Bool)

(assert (=> start!17118 (=> (not res!81704) (not e!113558))))

(declare-fun valid!941 (LongMapFixedSize!2234) Bool)

(assert (=> start!17118 (= res!81704 (valid!941 thiss!1248))))

(assert (=> start!17118 e!113558))

(declare-fun e!113554 () Bool)

(assert (=> start!17118 e!113554))

(assert (=> start!17118 true))

(declare-fun mapIsEmpty!6817 () Bool)

(declare-fun mapRes!6817 () Bool)

(assert (=> mapIsEmpty!6817 mapRes!6817))

(declare-fun tp_is_empty!4013 () Bool)

(declare-fun e!113557 () Bool)

(declare-fun array_inv!2165 (array!7140) Bool)

(declare-fun array_inv!2166 (array!7142) Bool)

(assert (=> b!172040 (= e!113554 (and tp!15357 tp_is_empty!4013 (array_inv!2165 (_keys!5397 thiss!1248)) (array_inv!2166 (_values!3546 thiss!1248)) e!113557))))

(declare-fun b!172041 () Bool)

(declare-fun e!113556 () Bool)

(assert (=> b!172041 (= e!113557 (and e!113556 mapRes!6817))))

(declare-fun condMapEmpty!6817 () Bool)

(declare-fun mapDefault!6817 () ValueCell!1663)

