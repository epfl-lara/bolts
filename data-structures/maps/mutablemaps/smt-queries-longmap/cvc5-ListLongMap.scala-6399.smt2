; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82218 () Bool)

(assert start!82218)

(declare-fun b_free!18463 () Bool)

(declare-fun b_next!18463 () Bool)

(assert (=> start!82218 (= b_free!18463 (not b_next!18463))))

(declare-fun tp!64351 () Bool)

(declare-fun b_and!29969 () Bool)

(assert (=> start!82218 (= tp!64351 b_and!29969)))

(declare-fun b!957780 () Bool)

(declare-fun res!641221 () Bool)

(declare-fun e!539993 () Bool)

(assert (=> b!957780 (=> (not res!641221) (not e!539993))))

(declare-datatypes ((array!58455 0))(
  ( (array!58456 (arr!28097 (Array (_ BitVec 32) (_ BitVec 64))) (size!28577 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58455)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58455 (_ BitVec 32)) Bool)

(assert (=> b!957780 (= res!641221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957781 () Bool)

(declare-fun e!539990 () Bool)

(declare-fun e!539992 () Bool)

(declare-fun mapRes!33733 () Bool)

(assert (=> b!957781 (= e!539990 (and e!539992 mapRes!33733))))

(declare-fun condMapEmpty!33733 () Bool)

(declare-datatypes ((V!33209 0))(
  ( (V!33210 (val!10635 Int)) )
))
(declare-datatypes ((ValueCell!10103 0))(
  ( (ValueCellFull!10103 (v!13192 V!33209)) (EmptyCell!10103) )
))
(declare-datatypes ((array!58457 0))(
  ( (array!58458 (arr!28098 (Array (_ BitVec 32) ValueCell!10103)) (size!28578 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58457)

(declare-fun mapDefault!33733 () ValueCell!10103)

