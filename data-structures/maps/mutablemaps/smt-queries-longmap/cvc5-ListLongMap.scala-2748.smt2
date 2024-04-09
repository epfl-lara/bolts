; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40334 () Bool)

(assert start!40334)

(declare-fun mapNonEmpty!19212 () Bool)

(declare-fun mapRes!19212 () Bool)

(declare-fun tp!37194 () Bool)

(declare-fun e!260552 () Bool)

(assert (=> mapNonEmpty!19212 (= mapRes!19212 (and tp!37194 e!260552))))

(declare-datatypes ((V!16739 0))(
  ( (V!16740 (val!5907 Int)) )
))
(declare-datatypes ((ValueCell!5519 0))(
  ( (ValueCellFull!5519 (v!8154 V!16739)) (EmptyCell!5519) )
))
(declare-datatypes ((array!27231 0))(
  ( (array!27232 (arr!13061 (Array (_ BitVec 32) ValueCell!5519)) (size!13413 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27231)

(declare-fun mapRest!19212 () (Array (_ BitVec 32) ValueCell!5519))

(declare-fun mapKey!19212 () (_ BitVec 32))

(declare-fun mapValue!19212 () ValueCell!5519)

(assert (=> mapNonEmpty!19212 (= (arr!13061 _values!549) (store mapRest!19212 mapKey!19212 mapValue!19212))))

(declare-fun b!442722 () Bool)

(declare-fun e!260555 () Bool)

(declare-fun e!260553 () Bool)

(assert (=> b!442722 (= e!260555 e!260553)))

(declare-fun res!262333 () Bool)

(assert (=> b!442722 (=> (not res!262333) (not e!260553))))

(declare-datatypes ((array!27233 0))(
  ( (array!27234 (arr!13062 (Array (_ BitVec 32) (_ BitVec 64))) (size!13414 (_ BitVec 32))) )
))
(declare-fun lt!203226 () array!27233)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27233 (_ BitVec 32)) Bool)

(assert (=> b!442722 (= res!262333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203226 mask!1025))))

(declare-fun _keys!709 () array!27233)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442722 (= lt!203226 (array!27234 (store (arr!13062 _keys!709) i!563 k!794) (size!13414 _keys!709)))))

(declare-fun b!442723 () Bool)

(declare-fun tp_is_empty!11725 () Bool)

(assert (=> b!442723 (= e!260552 tp_is_empty!11725)))

(declare-fun b!442724 () Bool)

(declare-fun e!260550 () Bool)

(assert (=> b!442724 (= e!260550 tp_is_empty!11725)))

(declare-fun b!442726 () Bool)

(declare-fun res!262332 () Bool)

(assert (=> b!442726 (=> (not res!262332) (not e!260555))))

(assert (=> b!442726 (= res!262332 (or (= (select (arr!13062 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13062 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442727 () Bool)

(assert (=> b!442727 (= e!260553 false)))

(declare-fun lt!203225 () Bool)

(declare-datatypes ((List!7814 0))(
  ( (Nil!7811) (Cons!7810 (h!8666 (_ BitVec 64)) (t!13580 List!7814)) )
))
(declare-fun arrayNoDuplicates!0 (array!27233 (_ BitVec 32) List!7814) Bool)

(assert (=> b!442727 (= lt!203225 (arrayNoDuplicates!0 lt!203226 #b00000000000000000000000000000000 Nil!7811))))

(declare-fun b!442725 () Bool)

(declare-fun res!262339 () Bool)

(assert (=> b!442725 (=> (not res!262339) (not e!260555))))

(declare-fun arrayContainsKey!0 (array!27233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442725 (= res!262339 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!262331 () Bool)

(assert (=> start!40334 (=> (not res!262331) (not e!260555))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40334 (= res!262331 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13414 _keys!709))))))

(assert (=> start!40334 e!260555))

(assert (=> start!40334 true))

(declare-fun e!260554 () Bool)

(declare-fun array_inv!9468 (array!27231) Bool)

(assert (=> start!40334 (and (array_inv!9468 _values!549) e!260554)))

(declare-fun array_inv!9469 (array!27233) Bool)

(assert (=> start!40334 (array_inv!9469 _keys!709)))

(declare-fun b!442728 () Bool)

(assert (=> b!442728 (= e!260554 (and e!260550 mapRes!19212))))

(declare-fun condMapEmpty!19212 () Bool)

(declare-fun mapDefault!19212 () ValueCell!5519)

