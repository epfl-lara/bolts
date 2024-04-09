; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11364 () Bool)

(assert start!11364)

(declare-fun b!94044 () Bool)

(declare-fun b_free!2397 () Bool)

(declare-fun b_next!2397 () Bool)

(assert (=> b!94044 (= b_free!2397 (not b_next!2397))))

(declare-fun tp!9458 () Bool)

(declare-fun b_and!5737 () Bool)

(assert (=> b!94044 (= tp!9458 b_and!5737)))

(declare-fun b!94051 () Bool)

(declare-fun b_free!2399 () Bool)

(declare-fun b_next!2399 () Bool)

(assert (=> b!94051 (= b_free!2399 (not b_next!2399))))

(declare-fun tp!9457 () Bool)

(declare-fun b_and!5739 () Bool)

(assert (=> b!94051 (= tp!9457 b_and!5739)))

(declare-fun b!94034 () Bool)

(declare-fun e!61431 () Bool)

(declare-fun tp_is_empty!2615 () Bool)

(assert (=> b!94034 (= e!61431 tp_is_empty!2615)))

(declare-fun mapIsEmpty!3681 () Bool)

(declare-fun mapRes!3681 () Bool)

(assert (=> mapIsEmpty!3681 mapRes!3681))

(declare-fun b!94035 () Bool)

(declare-fun e!61423 () Bool)

(assert (=> b!94035 (= e!61423 tp_is_empty!2615)))

(declare-fun b!94036 () Bool)

(declare-fun res!47633 () Bool)

(declare-fun e!61432 () Bool)

(assert (=> b!94036 (=> (not res!47633) (not e!61432))))

(declare-datatypes ((V!3133 0))(
  ( (V!3134 (val!1352 Int)) )
))
(declare-datatypes ((array!4204 0))(
  ( (array!4205 (arr!1998 (Array (_ BitVec 32) (_ BitVec 64))) (size!2246 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!964 0))(
  ( (ValueCellFull!964 (v!2764 V!3133)) (EmptyCell!964) )
))
(declare-datatypes ((array!4206 0))(
  ( (array!4207 (arr!1999 (Array (_ BitVec 32) ValueCell!964)) (size!2247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!836 0))(
  ( (LongMapFixedSize!837 (defaultEntry!2437 Int) (mask!6512 (_ BitVec 32)) (extraKeys!2266 (_ BitVec 32)) (zeroValue!2324 V!3133) (minValue!2324 V!3133) (_size!467 (_ BitVec 32)) (_keys!4119 array!4204) (_values!2420 array!4206) (_vacant!467 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!640 0))(
  ( (Cell!641 (v!2765 LongMapFixedSize!836)) )
))
(declare-datatypes ((LongMap!640 0))(
  ( (LongMap!641 (underlying!331 Cell!640)) )
))
(declare-fun thiss!992 () LongMap!640)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!94036 (= res!47633 (validMask!0 (mask!6512 (v!2765 (underlying!331 thiss!992)))))))

(declare-fun b!94037 () Bool)

(declare-fun e!61427 () Bool)

(assert (=> b!94037 (= e!61427 tp_is_empty!2615)))

(declare-fun b!94038 () Bool)

(declare-fun e!61433 () Bool)

(declare-fun e!61429 () Bool)

(assert (=> b!94038 (= e!61433 e!61429)))

(declare-fun b!94039 () Bool)

(declare-fun res!47630 () Bool)

(declare-fun e!61426 () Bool)

(assert (=> b!94039 (=> (not res!47630) (not e!61426))))

(declare-fun newMap!16 () LongMapFixedSize!836)

(assert (=> b!94039 (= res!47630 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6512 newMap!16)) (_size!467 (v!2765 (underlying!331 thiss!992)))))))

(declare-fun b!94040 () Bool)

(declare-fun e!61430 () Bool)

(declare-fun e!61428 () Bool)

(declare-fun mapRes!3682 () Bool)

(assert (=> b!94040 (= e!61430 (and e!61428 mapRes!3682))))

(declare-fun condMapEmpty!3682 () Bool)

(declare-fun mapDefault!3682 () ValueCell!964)

