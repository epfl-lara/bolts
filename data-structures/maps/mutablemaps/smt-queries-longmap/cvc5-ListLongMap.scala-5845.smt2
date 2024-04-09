; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75528 () Bool)

(assert start!75528)

(declare-fun b!888274 () Bool)

(declare-fun b_free!15571 () Bool)

(declare-fun b_next!15571 () Bool)

(assert (=> b!888274 (= b_free!15571 (not b_next!15571))))

(declare-fun tp!54665 () Bool)

(declare-fun b_and!25827 () Bool)

(assert (=> b!888274 (= tp!54665 b_and!25827)))

(declare-fun mapNonEmpty!28385 () Bool)

(declare-fun mapRes!28385 () Bool)

(declare-fun tp!54664 () Bool)

(declare-fun e!494984 () Bool)

(assert (=> mapNonEmpty!28385 (= mapRes!28385 (and tp!54664 e!494984))))

(declare-fun mapKey!28385 () (_ BitVec 32))

(declare-datatypes ((V!28831 0))(
  ( (V!28832 (val!9000 Int)) )
))
(declare-datatypes ((ValueCell!8468 0))(
  ( (ValueCellFull!8468 (v!11469 V!28831)) (EmptyCell!8468) )
))
(declare-fun mapValue!28385 () ValueCell!8468)

(declare-datatypes ((array!51754 0))(
  ( (array!51755 (arr!24884 (Array (_ BitVec 32) (_ BitVec 64))) (size!25326 (_ BitVec 32))) )
))
(declare-datatypes ((array!51756 0))(
  ( (array!51757 (arr!24885 (Array (_ BitVec 32) ValueCell!8468)) (size!25327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3952 0))(
  ( (LongMapFixedSize!3953 (defaultEntry!5170 Int) (mask!25585 (_ BitVec 32)) (extraKeys!4864 (_ BitVec 32)) (zeroValue!4968 V!28831) (minValue!4968 V!28831) (_size!2031 (_ BitVec 32)) (_keys!9845 array!51754) (_values!5155 array!51756) (_vacant!2031 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3952)

(declare-fun mapRest!28385 () (Array (_ BitVec 32) ValueCell!8468))

(assert (=> mapNonEmpty!28385 (= (arr!24885 (_values!5155 thiss!1181)) (store mapRest!28385 mapKey!28385 mapValue!28385))))

(declare-fun b!888271 () Bool)

(declare-fun e!494983 () Bool)

(declare-fun e!494986 () Bool)

(assert (=> b!888271 (= e!494983 (and e!494986 mapRes!28385))))

(declare-fun condMapEmpty!28385 () Bool)

(declare-fun mapDefault!28385 () ValueCell!8468)

