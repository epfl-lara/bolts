; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82854 () Bool)

(assert start!82854)

(declare-fun b_free!18953 () Bool)

(declare-fun b_next!18953 () Bool)

(assert (=> start!82854 (= b_free!18953 (not b_next!18953))))

(declare-fun tp!65989 () Bool)

(declare-fun b_and!30459 () Bool)

(assert (=> start!82854 (= tp!65989 b_and!30459)))

(declare-fun b!966032 () Bool)

(declare-fun res!646744 () Bool)

(declare-fun e!544606 () Bool)

(assert (=> b!966032 (=> (not res!646744) (not e!544606))))

(declare-datatypes ((array!59585 0))(
  ( (array!59586 (arr!28657 (Array (_ BitVec 32) (_ BitVec 64))) (size!29137 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59585)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59585 (_ BitVec 32)) Bool)

(assert (=> b!966032 (= res!646744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966033 () Bool)

(declare-fun e!544609 () Bool)

(declare-fun e!544608 () Bool)

(declare-fun mapRes!34636 () Bool)

(assert (=> b!966033 (= e!544609 (and e!544608 mapRes!34636))))

(declare-fun condMapEmpty!34636 () Bool)

(declare-datatypes ((V!33997 0))(
  ( (V!33998 (val!10931 Int)) )
))
(declare-datatypes ((ValueCell!10399 0))(
  ( (ValueCellFull!10399 (v!13489 V!33997)) (EmptyCell!10399) )
))
(declare-datatypes ((array!59587 0))(
  ( (array!59588 (arr!28658 (Array (_ BitVec 32) ValueCell!10399)) (size!29138 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59587)

(declare-fun mapDefault!34636 () ValueCell!10399)

