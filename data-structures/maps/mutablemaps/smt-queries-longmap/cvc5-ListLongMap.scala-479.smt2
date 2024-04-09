; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10034 () Bool)

(assert start!10034)

(declare-fun b!75928 () Bool)

(declare-fun b_free!2137 () Bool)

(declare-fun b_next!2137 () Bool)

(assert (=> b!75928 (= b_free!2137 (not b_next!2137))))

(declare-fun tp!8602 () Bool)

(declare-fun b_and!4637 () Bool)

(assert (=> b!75928 (= tp!8602 b_and!4637)))

(declare-fun b!75924 () Bool)

(declare-fun b_free!2139 () Bool)

(declare-fun b_next!2139 () Bool)

(assert (=> b!75924 (= b_free!2139 (not b_next!2139))))

(declare-fun tp!8601 () Bool)

(declare-fun b_and!4639 () Bool)

(assert (=> b!75924 (= tp!8601 b_and!4639)))

(declare-fun mapIsEmpty!3215 () Bool)

(declare-fun mapRes!3216 () Bool)

(assert (=> mapIsEmpty!3215 mapRes!3216))

(declare-fun b!75911 () Bool)

(declare-fun e!49599 () Bool)

(declare-fun tp_is_empty!2485 () Bool)

(assert (=> b!75911 (= e!49599 tp_is_empty!2485)))

(declare-fun b!75912 () Bool)

(declare-fun res!39991 () Bool)

(declare-fun e!49593 () Bool)

(assert (=> b!75912 (=> (not res!39991) (not e!49593))))

(declare-datatypes ((V!2961 0))(
  ( (V!2962 (val!1287 Int)) )
))
(declare-datatypes ((array!3918 0))(
  ( (array!3919 (arr!1868 (Array (_ BitVec 32) (_ BitVec 64))) (size!2108 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!899 0))(
  ( (ValueCellFull!899 (v!2559 V!2961)) (EmptyCell!899) )
))
(declare-datatypes ((array!3920 0))(
  ( (array!3921 (arr!1869 (Array (_ BitVec 32) ValueCell!899)) (size!2109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!706 0))(
  ( (LongMapFixedSize!707 (defaultEntry!2246 Int) (mask!6229 (_ BitVec 32)) (extraKeys!2099 (_ BitVec 32)) (zeroValue!2145 V!2961) (minValue!2145 V!2961) (_size!402 (_ BitVec 32)) (_keys!3904 array!3918) (_values!2229 array!3920) (_vacant!402 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!706)

(declare-datatypes ((Cell!516 0))(
  ( (Cell!517 (v!2560 LongMapFixedSize!706)) )
))
(declare-datatypes ((LongMap!516 0))(
  ( (LongMap!517 (underlying!269 Cell!516)) )
))
(declare-fun thiss!992 () LongMap!516)

(assert (=> b!75912 (= res!39991 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6229 newMap!16)) (_size!402 (v!2560 (underlying!269 thiss!992)))))))

(declare-fun b!75913 () Bool)

(declare-fun e!49587 () Bool)

(assert (=> b!75913 (= e!49587 (and e!49599 mapRes!3216))))

(declare-fun condMapEmpty!3216 () Bool)

(declare-fun mapDefault!3215 () ValueCell!899)

