; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40454 () Bool)

(assert start!40454)

(declare-fun b!444848 () Bool)

(declare-fun e!261547 () Bool)

(assert (=> b!444848 (= e!261547 false)))

(declare-fun lt!203546 () Bool)

(declare-datatypes ((array!27431 0))(
  ( (array!27432 (arr!13160 (Array (_ BitVec 32) (_ BitVec 64))) (size!13512 (_ BitVec 32))) )
))
(declare-fun lt!203547 () array!27431)

(declare-datatypes ((List!7854 0))(
  ( (Nil!7851) (Cons!7850 (h!8706 (_ BitVec 64)) (t!13620 List!7854)) )
))
(declare-fun arrayNoDuplicates!0 (array!27431 (_ BitVec 32) List!7854) Bool)

(assert (=> b!444848 (= lt!203546 (arrayNoDuplicates!0 lt!203547 #b00000000000000000000000000000000 Nil!7851))))

(declare-fun b!444849 () Bool)

(declare-fun e!261548 () Bool)

(assert (=> b!444849 (= e!261548 e!261547)))

(declare-fun res!263957 () Bool)

(assert (=> b!444849 (=> (not res!263957) (not e!261547))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27431 (_ BitVec 32)) Bool)

(assert (=> b!444849 (= res!263957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203547 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!27431)

(assert (=> b!444849 (= lt!203547 (array!27432 (store (arr!13160 _keys!709) i!563 k!794) (size!13512 _keys!709)))))

(declare-fun b!444850 () Bool)

(declare-fun res!263964 () Bool)

(assert (=> b!444850 (=> (not res!263964) (not e!261548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444850 (= res!263964 (validMask!0 mask!1025))))

(declare-fun b!444851 () Bool)

(declare-fun e!261546 () Bool)

(declare-fun e!261545 () Bool)

(declare-fun mapRes!19374 () Bool)

(assert (=> b!444851 (= e!261546 (and e!261545 mapRes!19374))))

(declare-fun condMapEmpty!19374 () Bool)

(declare-datatypes ((V!16879 0))(
  ( (V!16880 (val!5960 Int)) )
))
(declare-datatypes ((ValueCell!5572 0))(
  ( (ValueCellFull!5572 (v!8207 V!16879)) (EmptyCell!5572) )
))
(declare-datatypes ((array!27433 0))(
  ( (array!27434 (arr!13161 (Array (_ BitVec 32) ValueCell!5572)) (size!13513 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27433)

(declare-fun mapDefault!19374 () ValueCell!5572)

