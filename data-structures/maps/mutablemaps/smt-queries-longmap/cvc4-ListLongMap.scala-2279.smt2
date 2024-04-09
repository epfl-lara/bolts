; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37148 () Bool)

(assert start!37148)

(declare-fun b_free!8267 () Bool)

(declare-fun b_next!8267 () Bool)

(assert (=> start!37148 (= b_free!8267 (not b_next!8267))))

(declare-fun tp!29517 () Bool)

(declare-fun b_and!15527 () Bool)

(assert (=> start!37148 (= tp!29517 b_and!15527)))

(declare-fun b!374247 () Bool)

(declare-fun res!211112 () Bool)

(declare-fun e!228097 () Bool)

(assert (=> b!374247 (=> (not res!211112) (not e!228097))))

(declare-datatypes ((array!21735 0))(
  ( (array!21736 (arr!10333 (Array (_ BitVec 32) (_ BitVec 64))) (size!10685 (_ BitVec 32))) )
))
(declare-fun lt!172584 () array!21735)

(declare-datatypes ((List!5835 0))(
  ( (Nil!5832) (Cons!5831 (h!6687 (_ BitVec 64)) (t!10993 List!5835)) )
))
(declare-fun arrayNoDuplicates!0 (array!21735 (_ BitVec 32) List!5835) Bool)

(assert (=> b!374247 (= res!211112 (arrayNoDuplicates!0 lt!172584 #b00000000000000000000000000000000 Nil!5832))))

(declare-fun b!374248 () Bool)

(declare-fun e!228092 () Bool)

(assert (=> b!374248 (= e!228092 e!228097)))

(declare-fun res!211107 () Bool)

(assert (=> b!374248 (=> (not res!211107) (not e!228097))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21735 (_ BitVec 32)) Bool)

(assert (=> b!374248 (= res!211107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172584 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21735)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374248 (= lt!172584 (array!21736 (store (arr!10333 _keys!658) i!548 k!778) (size!10685 _keys!658)))))

(declare-fun b!374249 () Bool)

(declare-fun e!228099 () Bool)

(declare-fun e!228095 () Bool)

(declare-fun mapRes!14937 () Bool)

(assert (=> b!374249 (= e!228099 (and e!228095 mapRes!14937))))

(declare-fun condMapEmpty!14937 () Bool)

(declare-datatypes ((V!12991 0))(
  ( (V!12992 (val!4502 Int)) )
))
(declare-datatypes ((ValueCell!4114 0))(
  ( (ValueCellFull!4114 (v!6695 V!12991)) (EmptyCell!4114) )
))
(declare-datatypes ((array!21737 0))(
  ( (array!21738 (arr!10334 (Array (_ BitVec 32) ValueCell!4114)) (size!10686 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21737)

(declare-fun mapDefault!14937 () ValueCell!4114)

