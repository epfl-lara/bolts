; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37000 () Bool)

(assert start!37000)

(declare-fun b_free!8119 () Bool)

(declare-fun b_next!8119 () Bool)

(assert (=> start!37000 (= b_free!8119 (not b_next!8119))))

(declare-fun tp!29073 () Bool)

(declare-fun b_and!15379 () Bool)

(assert (=> start!37000 (= tp!29073 b_and!15379)))

(declare-fun mapNonEmpty!14715 () Bool)

(declare-fun mapRes!14715 () Bool)

(declare-fun tp!29072 () Bool)

(declare-fun e!226578 () Bool)

(assert (=> mapNonEmpty!14715 (= mapRes!14715 (and tp!29072 e!226578))))

(declare-datatypes ((V!12795 0))(
  ( (V!12796 (val!4428 Int)) )
))
(declare-datatypes ((ValueCell!4040 0))(
  ( (ValueCellFull!4040 (v!6621 V!12795)) (EmptyCell!4040) )
))
(declare-datatypes ((array!21447 0))(
  ( (array!21448 (arr!10189 (Array (_ BitVec 32) ValueCell!4040)) (size!10541 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21447)

(declare-fun mapValue!14715 () ValueCell!4040)

(declare-fun mapKey!14715 () (_ BitVec 32))

(declare-fun mapRest!14715 () (Array (_ BitVec 32) ValueCell!4040))

(assert (=> mapNonEmpty!14715 (= (arr!10189 _values!506) (store mapRest!14715 mapKey!14715 mapValue!14715))))

(declare-fun b!371165 () Bool)

(declare-fun e!226577 () Bool)

(declare-fun e!226575 () Bool)

(assert (=> b!371165 (= e!226577 e!226575)))

(declare-fun res!208692 () Bool)

(assert (=> b!371165 (=> (not res!208692) (not e!226575))))

(declare-datatypes ((array!21449 0))(
  ( (array!21450 (arr!10190 (Array (_ BitVec 32) (_ BitVec 64))) (size!10542 (_ BitVec 32))) )
))
(declare-fun lt!170218 () array!21449)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21449 (_ BitVec 32)) Bool)

(assert (=> b!371165 (= res!208692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170218 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21449)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371165 (= lt!170218 (array!21450 (store (arr!10190 _keys!658) i!548 k!778) (size!10542 _keys!658)))))

(declare-fun b!371166 () Bool)

(declare-fun e!226574 () Bool)

(declare-fun e!226573 () Bool)

(assert (=> b!371166 (= e!226574 (and e!226573 mapRes!14715))))

(declare-fun condMapEmpty!14715 () Bool)

(declare-fun mapDefault!14715 () ValueCell!4040)

