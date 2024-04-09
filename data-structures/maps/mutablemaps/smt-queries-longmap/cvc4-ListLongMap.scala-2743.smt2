; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40308 () Bool)

(assert start!40308)

(declare-fun mapNonEmpty!19173 () Bool)

(declare-fun mapRes!19173 () Bool)

(declare-fun tp!37155 () Bool)

(declare-fun e!260345 () Bool)

(assert (=> mapNonEmpty!19173 (= mapRes!19173 (and tp!37155 e!260345))))

(declare-fun mapKey!19173 () (_ BitVec 32))

(declare-datatypes ((V!16703 0))(
  ( (V!16704 (val!5894 Int)) )
))
(declare-datatypes ((ValueCell!5506 0))(
  ( (ValueCellFull!5506 (v!8141 V!16703)) (EmptyCell!5506) )
))
(declare-fun mapValue!19173 () ValueCell!5506)

(declare-fun mapRest!19173 () (Array (_ BitVec 32) ValueCell!5506))

(declare-datatypes ((array!27183 0))(
  ( (array!27184 (arr!13037 (Array (_ BitVec 32) ValueCell!5506)) (size!13389 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27183)

(assert (=> mapNonEmpty!19173 (= (arr!13037 _values!549) (store mapRest!19173 mapKey!19173 mapValue!19173))))

(declare-fun b!442338 () Bool)

(declare-fun e!260344 () Bool)

(assert (=> b!442338 (= e!260344 false)))

(declare-fun lt!203175 () Bool)

(declare-datatypes ((array!27185 0))(
  ( (array!27186 (arr!13038 (Array (_ BitVec 32) (_ BitVec 64))) (size!13390 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27185)

(declare-datatypes ((List!7806 0))(
  ( (Nil!7803) (Cons!7802 (h!8658 (_ BitVec 64)) (t!13572 List!7806)) )
))
(declare-fun arrayNoDuplicates!0 (array!27185 (_ BitVec 32) List!7806) Bool)

(assert (=> b!442338 (= lt!203175 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7803))))

(declare-fun mapIsEmpty!19173 () Bool)

(assert (=> mapIsEmpty!19173 mapRes!19173))

(declare-fun b!442339 () Bool)

(declare-fun e!260346 () Bool)

(declare-fun tp_is_empty!11699 () Bool)

(assert (=> b!442339 (= e!260346 tp_is_empty!11699)))

(declare-fun b!442340 () Bool)

(declare-fun res!262067 () Bool)

(assert (=> b!442340 (=> (not res!262067) (not e!260344))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27185 (_ BitVec 32)) Bool)

(assert (=> b!442340 (= res!262067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442341 () Bool)

(assert (=> b!442341 (= e!260345 tp_is_empty!11699)))

(declare-fun res!262064 () Bool)

(assert (=> start!40308 (=> (not res!262064) (not e!260344))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40308 (= res!262064 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13390 _keys!709))))))

(assert (=> start!40308 e!260344))

(assert (=> start!40308 true))

(declare-fun e!260347 () Bool)

(declare-fun array_inv!9452 (array!27183) Bool)

(assert (=> start!40308 (and (array_inv!9452 _values!549) e!260347)))

(declare-fun array_inv!9453 (array!27185) Bool)

(assert (=> start!40308 (array_inv!9453 _keys!709)))

(declare-fun b!442342 () Bool)

(declare-fun res!262066 () Bool)

(assert (=> b!442342 (=> (not res!262066) (not e!260344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442342 (= res!262066 (validMask!0 mask!1025))))

(declare-fun b!442343 () Bool)

(declare-fun res!262065 () Bool)

(assert (=> b!442343 (=> (not res!262065) (not e!260344))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442343 (= res!262065 (and (= (size!13389 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13390 _keys!709) (size!13389 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442344 () Bool)

(assert (=> b!442344 (= e!260347 (and e!260346 mapRes!19173))))

(declare-fun condMapEmpty!19173 () Bool)

(declare-fun mapDefault!19173 () ValueCell!5506)

