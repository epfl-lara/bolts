; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11280 () Bool)

(assert start!11280)

(declare-fun b!92861 () Bool)

(declare-fun b_free!2361 () Bool)

(declare-fun b_next!2361 () Bool)

(assert (=> b!92861 (= b_free!2361 (not b_next!2361))))

(declare-fun tp!9343 () Bool)

(declare-fun b_and!5641 () Bool)

(assert (=> b!92861 (= tp!9343 b_and!5641)))

(declare-fun b!92876 () Bool)

(declare-fun b_free!2363 () Bool)

(declare-fun b_next!2363 () Bool)

(assert (=> b!92876 (= b_free!2363 (not b_next!2363))))

(declare-fun tp!9341 () Bool)

(declare-fun b_and!5643 () Bool)

(assert (=> b!92876 (= tp!9341 b_and!5643)))

(declare-fun b!92860 () Bool)

(declare-fun e!60595 () Bool)

(declare-fun e!60609 () Bool)

(declare-fun mapRes!3620 () Bool)

(assert (=> b!92860 (= e!60595 (and e!60609 mapRes!3620))))

(declare-fun condMapEmpty!3620 () Bool)

(declare-datatypes ((V!3109 0))(
  ( (V!3110 (val!1343 Int)) )
))
(declare-datatypes ((array!4164 0))(
  ( (array!4165 (arr!1980 (Array (_ BitVec 32) (_ BitVec 64))) (size!2228 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!955 0))(
  ( (ValueCellFull!955 (v!2742 V!3109)) (EmptyCell!955) )
))
(declare-datatypes ((array!4166 0))(
  ( (array!4167 (arr!1981 (Array (_ BitVec 32) ValueCell!955)) (size!2229 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!818 0))(
  ( (LongMapFixedSize!819 (defaultEntry!2423 Int) (mask!6491 (_ BitVec 32)) (extraKeys!2252 (_ BitVec 32)) (zeroValue!2310 V!3109) (minValue!2310 V!3109) (_size!458 (_ BitVec 32)) (_keys!4105 array!4164) (_values!2406 array!4166) (_vacant!458 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!622 0))(
  ( (Cell!623 (v!2743 LongMapFixedSize!818)) )
))
(declare-datatypes ((LongMap!622 0))(
  ( (LongMap!623 (underlying!322 Cell!622)) )
))
(declare-fun thiss!992 () LongMap!622)

(declare-fun mapDefault!3619 () ValueCell!955)

