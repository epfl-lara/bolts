; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40536 () Bool)

(assert start!40536)

(declare-fun b!446385 () Bool)

(declare-fun e!262240 () Bool)

(assert (=> b!446385 (= e!262240 false)))

(declare-fun lt!203793 () Bool)

(declare-datatypes ((array!27553 0))(
  ( (array!27554 (arr!13220 (Array (_ BitVec 32) (_ BitVec 64))) (size!13572 (_ BitVec 32))) )
))
(declare-fun lt!203792 () array!27553)

(declare-datatypes ((List!7891 0))(
  ( (Nil!7888) (Cons!7887 (h!8743 (_ BitVec 64)) (t!13659 List!7891)) )
))
(declare-fun arrayNoDuplicates!0 (array!27553 (_ BitVec 32) List!7891) Bool)

(assert (=> b!446385 (= lt!203793 (arrayNoDuplicates!0 lt!203792 #b00000000000000000000000000000000 Nil!7888))))

(declare-fun b!446386 () Bool)

(declare-fun e!262242 () Bool)

(declare-fun tp_is_empty!11893 () Bool)

(assert (=> b!446386 (= e!262242 tp_is_empty!11893)))

(declare-fun b!446387 () Bool)

(declare-fun res!265044 () Bool)

(declare-fun e!262243 () Bool)

(assert (=> b!446387 (=> (not res!265044) (not e!262243))))

(declare-fun _keys!709 () array!27553)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27553 (_ BitVec 32)) Bool)

(assert (=> b!446387 (= res!265044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19470 () Bool)

(declare-fun mapRes!19470 () Bool)

(declare-fun tp!37497 () Bool)

(assert (=> mapNonEmpty!19470 (= mapRes!19470 (and tp!37497 e!262242))))

(declare-fun mapKey!19470 () (_ BitVec 32))

(declare-datatypes ((V!16963 0))(
  ( (V!16964 (val!5991 Int)) )
))
(declare-datatypes ((ValueCell!5603 0))(
  ( (ValueCellFull!5603 (v!8242 V!16963)) (EmptyCell!5603) )
))
(declare-datatypes ((array!27555 0))(
  ( (array!27556 (arr!13221 (Array (_ BitVec 32) ValueCell!5603)) (size!13573 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27555)

(declare-fun mapValue!19470 () ValueCell!5603)

(declare-fun mapRest!19470 () (Array (_ BitVec 32) ValueCell!5603))

(assert (=> mapNonEmpty!19470 (= (arr!13221 _values!549) (store mapRest!19470 mapKey!19470 mapValue!19470))))

(declare-fun b!446388 () Bool)

(declare-fun e!262241 () Bool)

(declare-fun e!262239 () Bool)

(assert (=> b!446388 (= e!262241 (and e!262239 mapRes!19470))))

(declare-fun condMapEmpty!19470 () Bool)

(declare-fun mapDefault!19470 () ValueCell!5603)

