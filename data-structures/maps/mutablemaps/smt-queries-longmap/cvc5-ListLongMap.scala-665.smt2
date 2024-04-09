; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16442 () Bool)

(assert start!16442)

(declare-fun b!163525 () Bool)

(declare-fun b_free!3799 () Bool)

(declare-fun b_next!3799 () Bool)

(assert (=> b!163525 (= b_free!3799 (not b_next!3799))))

(declare-fun tp!13985 () Bool)

(declare-fun b_and!10231 () Bool)

(assert (=> b!163525 (= tp!13985 b_and!10231)))

(declare-fun b!163520 () Bool)

(declare-fun e!107295 () Bool)

(declare-fun e!107296 () Bool)

(declare-fun mapRes!6107 () Bool)

(assert (=> b!163520 (= e!107295 (and e!107296 mapRes!6107))))

(declare-fun condMapEmpty!6107 () Bool)

(declare-datatypes ((V!4449 0))(
  ( (V!4450 (val!1845 Int)) )
))
(declare-datatypes ((ValueCell!1457 0))(
  ( (ValueCellFull!1457 (v!3706 V!4449)) (EmptyCell!1457) )
))
(declare-datatypes ((array!6290 0))(
  ( (array!6291 (arr!2984 (Array (_ BitVec 32) (_ BitVec 64))) (size!3271 (_ BitVec 32))) )
))
(declare-datatypes ((array!6292 0))(
  ( (array!6293 (arr!2985 (Array (_ BitVec 32) ValueCell!1457)) (size!3272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1822 0))(
  ( (LongMapFixedSize!1823 (defaultEntry!3353 Int) (mask!8017 (_ BitVec 32)) (extraKeys!3094 (_ BitVec 32)) (zeroValue!3196 V!4449) (minValue!3196 V!4449) (_size!960 (_ BitVec 32)) (_keys!5168 array!6290) (_values!3336 array!6292) (_vacant!960 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1822)

(declare-fun mapDefault!6107 () ValueCell!1457)

