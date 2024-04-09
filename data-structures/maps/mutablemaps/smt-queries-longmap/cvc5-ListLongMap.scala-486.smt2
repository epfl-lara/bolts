; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10526 () Bool)

(assert start!10526)

(declare-fun b!82769 () Bool)

(declare-fun b_free!2221 () Bool)

(declare-fun b_next!2221 () Bool)

(assert (=> b!82769 (= b_free!2221 (not b_next!2221))))

(declare-fun tp!8882 () Bool)

(declare-fun b_and!5029 () Bool)

(assert (=> b!82769 (= tp!8882 b_and!5029)))

(declare-fun b!82778 () Bool)

(declare-fun b_free!2223 () Bool)

(declare-fun b_next!2223 () Bool)

(assert (=> b!82778 (= b_free!2223 (not b_next!2223))))

(declare-fun tp!8880 () Bool)

(declare-fun b_and!5031 () Bool)

(assert (=> b!82778 (= tp!8880 b_and!5031)))

(declare-fun b!82767 () Bool)

(declare-fun e!54042 () Bool)

(declare-datatypes ((V!3017 0))(
  ( (V!3018 (val!1308 Int)) )
))
(declare-datatypes ((array!4010 0))(
  ( (array!4011 (arr!1910 (Array (_ BitVec 32) (_ BitVec 64))) (size!2153 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!920 0))(
  ( (ValueCellFull!920 (v!2629 V!3017)) (EmptyCell!920) )
))
(declare-datatypes ((array!4012 0))(
  ( (array!4013 (arr!1911 (Array (_ BitVec 32) ValueCell!920)) (size!2154 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!748 0))(
  ( (LongMapFixedSize!749 (defaultEntry!2316 Int) (mask!6334 (_ BitVec 32)) (extraKeys!2159 (_ BitVec 32)) (zeroValue!2210 V!3017) (minValue!2210 V!3017) (_size!423 (_ BitVec 32)) (_keys!3984 array!4010) (_values!2299 array!4012) (_vacant!423 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!556 0))(
  ( (Cell!557 (v!2630 LongMapFixedSize!748)) )
))
(declare-datatypes ((LongMap!556 0))(
  ( (LongMap!557 (underlying!289 Cell!556)) )
))
(declare-fun thiss!992 () LongMap!556)

(assert (=> b!82767 (= e!54042 (or (not (= (size!2154 (_values!2299 (v!2630 (underlying!289 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6334 (v!2630 (underlying!289 thiss!992)))))) (not (= (size!2153 (_keys!3984 (v!2630 (underlying!289 thiss!992)))) (size!2154 (_values!2299 (v!2630 (underlying!289 thiss!992)))))) (bvslt (mask!6334 (v!2630 (underlying!289 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2159 (v!2630 (underlying!289 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!82768 () Bool)

(declare-fun res!42881 () Bool)

(declare-fun e!54044 () Bool)

(assert (=> b!82768 (=> (not res!42881) (not e!54044))))

(declare-fun newMap!16 () LongMapFixedSize!748)

(declare-fun valid!323 (LongMapFixedSize!748) Bool)

(assert (=> b!82768 (= res!42881 (valid!323 newMap!16))))

(declare-fun tp_is_empty!2527 () Bool)

(declare-fun e!54046 () Bool)

(declare-fun e!54049 () Bool)

(declare-fun array_inv!1141 (array!4010) Bool)

(declare-fun array_inv!1142 (array!4012) Bool)

(assert (=> b!82769 (= e!54046 (and tp!8882 tp_is_empty!2527 (array_inv!1141 (_keys!3984 (v!2630 (underlying!289 thiss!992)))) (array_inv!1142 (_values!2299 (v!2630 (underlying!289 thiss!992)))) e!54049))))

(declare-fun b!82770 () Bool)

(declare-fun e!54055 () Bool)

(declare-fun e!54039 () Bool)

(declare-fun mapRes!3367 () Bool)

(assert (=> b!82770 (= e!54055 (and e!54039 mapRes!3367))))

(declare-fun condMapEmpty!3367 () Bool)

(declare-fun mapDefault!3368 () ValueCell!920)

