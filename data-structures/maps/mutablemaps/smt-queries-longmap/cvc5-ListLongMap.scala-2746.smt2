; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40322 () Bool)

(assert start!40322)

(declare-fun b!442495 () Bool)

(declare-fun res!262162 () Bool)

(declare-fun e!260453 () Bool)

(assert (=> b!442495 (=> (not res!262162) (not e!260453))))

(declare-datatypes ((array!27209 0))(
  ( (array!27210 (arr!13050 (Array (_ BitVec 32) (_ BitVec 64))) (size!13402 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27209)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27209 (_ BitVec 32)) Bool)

(assert (=> b!442495 (= res!262162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442496 () Bool)

(declare-fun res!262160 () Bool)

(assert (=> b!442496 (=> (not res!262160) (not e!260453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442496 (= res!262160 (validMask!0 mask!1025))))

(declare-fun b!442497 () Bool)

(declare-fun res!262161 () Bool)

(assert (=> b!442497 (=> (not res!262161) (not e!260453))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442497 (= res!262161 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13402 _keys!709))))))

(declare-fun b!442498 () Bool)

(declare-fun e!260452 () Bool)

(declare-fun e!260449 () Bool)

(declare-fun mapRes!19194 () Bool)

(assert (=> b!442498 (= e!260452 (and e!260449 mapRes!19194))))

(declare-fun condMapEmpty!19194 () Bool)

(declare-datatypes ((V!16723 0))(
  ( (V!16724 (val!5901 Int)) )
))
(declare-datatypes ((ValueCell!5513 0))(
  ( (ValueCellFull!5513 (v!8148 V!16723)) (EmptyCell!5513) )
))
(declare-datatypes ((array!27211 0))(
  ( (array!27212 (arr!13051 (Array (_ BitVec 32) ValueCell!5513)) (size!13403 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27211)

(declare-fun mapDefault!19194 () ValueCell!5513)

