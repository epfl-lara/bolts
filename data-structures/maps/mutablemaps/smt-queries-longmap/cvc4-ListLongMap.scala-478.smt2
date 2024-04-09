; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9930 () Bool)

(assert start!9930)

(declare-fun b!75055 () Bool)

(declare-fun b_free!2133 () Bool)

(declare-fun b_next!2133 () Bool)

(assert (=> b!75055 (= b_free!2133 (not b_next!2133))))

(declare-fun tp!8583 () Bool)

(declare-fun b_and!4597 () Bool)

(assert (=> b!75055 (= tp!8583 b_and!4597)))

(declare-fun b!75075 () Bool)

(declare-fun b_free!2135 () Bool)

(declare-fun b_next!2135 () Bool)

(assert (=> b!75075 (= b_free!2135 (not b_next!2135))))

(declare-fun tp!8584 () Bool)

(declare-fun b_and!4599 () Bool)

(assert (=> b!75075 (= tp!8584 b_and!4599)))

(declare-datatypes ((V!2957 0))(
  ( (V!2958 (val!1286 Int)) )
))
(declare-datatypes ((array!3912 0))(
  ( (array!3913 (arr!1866 (Array (_ BitVec 32) (_ BitVec 64))) (size!2105 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!898 0))(
  ( (ValueCellFull!898 (v!2550 V!2957)) (EmptyCell!898) )
))
(declare-datatypes ((array!3914 0))(
  ( (array!3915 (arr!1867 (Array (_ BitVec 32) ValueCell!898)) (size!2106 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!704 0))(
  ( (LongMapFixedSize!705 (defaultEntry!2235 Int) (mask!6212 (_ BitVec 32)) (extraKeys!2090 (_ BitVec 32)) (zeroValue!2135 V!2957) (minValue!2135 V!2957) (_size!401 (_ BitVec 32)) (_keys!3891 array!3912) (_values!2218 array!3914) (_vacant!401 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!514 0))(
  ( (Cell!515 (v!2551 LongMapFixedSize!704)) )
))
(declare-datatypes ((LongMap!514 0))(
  ( (LongMap!515 (underlying!268 Cell!514)) )
))
(declare-fun thiss!992 () LongMap!514)

(declare-fun e!49068 () Bool)

(declare-fun e!49070 () Bool)

(declare-fun tp_is_empty!2483 () Bool)

(declare-fun array_inv!1109 (array!3912) Bool)

(declare-fun array_inv!1110 (array!3914) Bool)

(assert (=> b!75055 (= e!49070 (and tp!8583 tp_is_empty!2483 (array_inv!1109 (_keys!3891 (v!2551 (underlying!268 thiss!992)))) (array_inv!1110 (_values!2218 (v!2551 (underlying!268 thiss!992)))) e!49068))))

(declare-fun b!75056 () Bool)

(declare-fun e!49076 () Bool)

(assert (=> b!75056 (= e!49076 tp_is_empty!2483)))

(declare-fun b!75057 () Bool)

(declare-fun res!39624 () Bool)

(declare-fun e!49081 () Bool)

(assert (=> b!75057 (=> (not res!39624) (not e!49081))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!75057 (= res!39624 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2105 (_keys!3891 (v!2551 (underlying!268 thiss!992)))))))))

(declare-fun b!75058 () Bool)

(declare-fun e!49079 () Bool)

(assert (=> b!75058 (= e!49079 tp_is_empty!2483)))

(declare-fun b!75059 () Bool)

(declare-fun e!49084 () Bool)

(assert (=> b!75059 (= e!49084 e!49070)))

(declare-fun b!75060 () Bool)

(declare-fun e!49085 () Bool)

(declare-fun mapRes!3203 () Bool)

(assert (=> b!75060 (= e!49068 (and e!49085 mapRes!3203))))

(declare-fun condMapEmpty!3204 () Bool)

(declare-fun mapDefault!3204 () ValueCell!898)

