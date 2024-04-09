; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40546 () Bool)

(assert start!40546)

(declare-fun res!265206 () Bool)

(declare-fun e!262332 () Bool)

(assert (=> start!40546 (=> (not res!265206) (not e!262332))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27573 0))(
  ( (array!27574 (arr!13230 (Array (_ BitVec 32) (_ BitVec 64))) (size!13582 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27573)

(assert (=> start!40546 (= res!265206 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13582 _keys!709))))))

(assert (=> start!40546 e!262332))

(assert (=> start!40546 true))

(declare-datatypes ((V!16975 0))(
  ( (V!16976 (val!5996 Int)) )
))
(declare-datatypes ((ValueCell!5608 0))(
  ( (ValueCellFull!5608 (v!8247 V!16975)) (EmptyCell!5608) )
))
(declare-datatypes ((array!27575 0))(
  ( (array!27576 (arr!13231 (Array (_ BitVec 32) ValueCell!5608)) (size!13583 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27575)

(declare-fun e!262331 () Bool)

(declare-fun array_inv!9582 (array!27575) Bool)

(assert (=> start!40546 (and (array_inv!9582 _values!549) e!262331)))

(declare-fun array_inv!9583 (array!27573) Bool)

(assert (=> start!40546 (array_inv!9583 _keys!709)))

(declare-fun b!446588 () Bool)

(declare-fun e!262329 () Bool)

(assert (=> b!446588 (= e!262332 e!262329)))

(declare-fun res!265203 () Bool)

(assert (=> b!446588 (=> (not res!265203) (not e!262329))))

(declare-fun lt!203814 () array!27573)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27573 (_ BitVec 32)) Bool)

(assert (=> b!446588 (= res!265203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203814 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446588 (= lt!203814 (array!27574 (store (arr!13230 _keys!709) i!563 k!794) (size!13582 _keys!709)))))

(declare-fun b!446589 () Bool)

(declare-fun res!265208 () Bool)

(assert (=> b!446589 (=> (not res!265208) (not e!262332))))

(assert (=> b!446589 (= res!265208 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13582 _keys!709))))))

(declare-fun b!446590 () Bool)

(declare-fun res!265209 () Bool)

(assert (=> b!446590 (=> (not res!265209) (not e!262332))))

(declare-datatypes ((List!7896 0))(
  ( (Nil!7893) (Cons!7892 (h!8748 (_ BitVec 64)) (t!13664 List!7896)) )
))
(declare-fun arrayNoDuplicates!0 (array!27573 (_ BitVec 32) List!7896) Bool)

(assert (=> b!446590 (= res!265209 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7893))))

(declare-fun mapIsEmpty!19485 () Bool)

(declare-fun mapRes!19485 () Bool)

(assert (=> mapIsEmpty!19485 mapRes!19485))

(declare-fun b!446591 () Bool)

(declare-fun res!265211 () Bool)

(assert (=> b!446591 (=> (not res!265211) (not e!262332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446591 (= res!265211 (validMask!0 mask!1025))))

(declare-fun b!446592 () Bool)

(declare-fun res!265210 () Bool)

(assert (=> b!446592 (=> (not res!265210) (not e!262332))))

(assert (=> b!446592 (= res!265210 (or (= (select (arr!13230 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13230 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446593 () Bool)

(declare-fun res!265212 () Bool)

(assert (=> b!446593 (=> (not res!265212) (not e!262332))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!446593 (= res!265212 (and (= (size!13583 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13582 _keys!709) (size!13583 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446594 () Bool)

(declare-fun res!265207 () Bool)

(assert (=> b!446594 (=> (not res!265207) (not e!262332))))

(assert (=> b!446594 (= res!265207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19485 () Bool)

(declare-fun tp!37512 () Bool)

(declare-fun e!262330 () Bool)

(assert (=> mapNonEmpty!19485 (= mapRes!19485 (and tp!37512 e!262330))))

(declare-fun mapValue!19485 () ValueCell!5608)

(declare-fun mapKey!19485 () (_ BitVec 32))

(declare-fun mapRest!19485 () (Array (_ BitVec 32) ValueCell!5608))

(assert (=> mapNonEmpty!19485 (= (arr!13231 _values!549) (store mapRest!19485 mapKey!19485 mapValue!19485))))

(declare-fun b!446595 () Bool)

(declare-fun e!262333 () Bool)

(assert (=> b!446595 (= e!262331 (and e!262333 mapRes!19485))))

(declare-fun condMapEmpty!19485 () Bool)

(declare-fun mapDefault!19485 () ValueCell!5608)

