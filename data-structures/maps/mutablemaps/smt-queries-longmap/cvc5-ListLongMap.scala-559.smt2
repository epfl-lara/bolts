; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15208 () Bool)

(assert start!15208)

(declare-fun b!146209 () Bool)

(declare-fun b_free!3097 () Bool)

(declare-fun b_next!3097 () Bool)

(assert (=> b!146209 (= b_free!3097 (not b_next!3097))))

(declare-fun tp!11796 () Bool)

(declare-fun b_and!9137 () Bool)

(assert (=> b!146209 (= tp!11796 b_and!9137)))

(declare-fun b!146213 () Bool)

(declare-fun b_free!3099 () Bool)

(declare-fun b_next!3099 () Bool)

(assert (=> b!146213 (= b_free!3099 (not b_next!3099))))

(declare-fun tp!11795 () Bool)

(declare-fun b_and!9139 () Bool)

(assert (=> b!146213 (= tp!11795 b_and!9139)))

(declare-fun b!146198 () Bool)

(declare-fun e!95317 () Bool)

(declare-fun e!95308 () Bool)

(declare-fun mapRes!4968 () Bool)

(assert (=> b!146198 (= e!95317 (and e!95308 mapRes!4968))))

(declare-fun condMapEmpty!4968 () Bool)

(declare-datatypes ((V!3601 0))(
  ( (V!3602 (val!1527 Int)) )
))
(declare-datatypes ((array!4974 0))(
  ( (array!4975 (arr!2348 (Array (_ BitVec 32) (_ BitVec 64))) (size!2624 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1139 0))(
  ( (ValueCellFull!1139 (v!3343 V!3601)) (EmptyCell!1139) )
))
(declare-datatypes ((array!4976 0))(
  ( (array!4977 (arr!2349 (Array (_ BitVec 32) ValueCell!1139)) (size!2625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1186 0))(
  ( (LongMapFixedSize!1187 (defaultEntry!3009 Int) (mask!7383 (_ BitVec 32)) (extraKeys!2754 (_ BitVec 32)) (zeroValue!2854 V!3601) (minValue!2854 V!3601) (_size!642 (_ BitVec 32)) (_keys!4778 array!4974) (_values!2992 array!4976) (_vacant!642 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1186)

(declare-fun mapDefault!4968 () ValueCell!1139)

