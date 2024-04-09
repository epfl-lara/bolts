; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76360 () Bool)

(assert start!76360)

(declare-fun b!895589 () Bool)

(declare-fun b_free!15919 () Bool)

(declare-fun b_next!15919 () Bool)

(assert (=> b!895589 (= b_free!15919 (not b_next!15919))))

(declare-fun tp!55774 () Bool)

(declare-fun b_and!26229 () Bool)

(assert (=> b!895589 (= tp!55774 b_and!26229)))

(declare-fun b!895583 () Bool)

(declare-fun res!605861 () Bool)

(declare-fun e!500469 () Bool)

(assert (=> b!895583 (=> (not res!605861) (not e!500469))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895583 (= res!605861 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895584 () Bool)

(declare-fun e!500468 () Bool)

(declare-fun e!500466 () Bool)

(declare-fun mapRes!28972 () Bool)

(assert (=> b!895584 (= e!500468 (and e!500466 mapRes!28972))))

(declare-fun condMapEmpty!28972 () Bool)

(declare-datatypes ((array!52486 0))(
  ( (array!52487 (arr!25232 (Array (_ BitVec 32) (_ BitVec 64))) (size!25683 (_ BitVec 32))) )
))
(declare-datatypes ((V!29295 0))(
  ( (V!29296 (val!9174 Int)) )
))
(declare-datatypes ((ValueCell!8642 0))(
  ( (ValueCellFull!8642 (v!11661 V!29295)) (EmptyCell!8642) )
))
(declare-datatypes ((array!52488 0))(
  ( (array!52489 (arr!25233 (Array (_ BitVec 32) ValueCell!8642)) (size!25684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4300 0))(
  ( (LongMapFixedSize!4301 (defaultEntry!5362 Int) (mask!25964 (_ BitVec 32)) (extraKeys!5058 (_ BitVec 32)) (zeroValue!5162 V!29295) (minValue!5162 V!29295) (_size!2205 (_ BitVec 32)) (_keys!10077 array!52486) (_values!5349 array!52488) (_vacant!2205 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4300)

(declare-fun mapDefault!28972 () ValueCell!8642)

