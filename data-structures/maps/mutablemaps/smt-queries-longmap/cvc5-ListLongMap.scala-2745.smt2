; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40316 () Bool)

(assert start!40316)

(declare-fun b!442422 () Bool)

(declare-fun res!262114 () Bool)

(declare-fun e!260407 () Bool)

(assert (=> b!442422 (=> (not res!262114) (not e!260407))))

(declare-datatypes ((array!27197 0))(
  ( (array!27198 (arr!13044 (Array (_ BitVec 32) (_ BitVec 64))) (size!13396 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27197)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16715 0))(
  ( (V!16716 (val!5898 Int)) )
))
(declare-datatypes ((ValueCell!5510 0))(
  ( (ValueCellFull!5510 (v!8145 V!16715)) (EmptyCell!5510) )
))
(declare-datatypes ((array!27199 0))(
  ( (array!27200 (arr!13045 (Array (_ BitVec 32) ValueCell!5510)) (size!13397 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27199)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442422 (= res!262114 (and (= (size!13397 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13396 _keys!709) (size!13397 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19185 () Bool)

(declare-fun mapRes!19185 () Bool)

(assert (=> mapIsEmpty!19185 mapRes!19185))

(declare-fun b!442423 () Bool)

(assert (=> b!442423 (= e!260407 false)))

(declare-fun lt!203187 () Bool)

(declare-datatypes ((List!7808 0))(
  ( (Nil!7805) (Cons!7804 (h!8660 (_ BitVec 64)) (t!13574 List!7808)) )
))
(declare-fun arrayNoDuplicates!0 (array!27197 (_ BitVec 32) List!7808) Bool)

(assert (=> b!442423 (= lt!203187 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7805))))

(declare-fun b!442424 () Bool)

(declare-fun e!260408 () Bool)

(declare-fun tp_is_empty!11707 () Bool)

(assert (=> b!442424 (= e!260408 tp_is_empty!11707)))

(declare-fun b!442425 () Bool)

(declare-fun res!262115 () Bool)

(assert (=> b!442425 (=> (not res!262115) (not e!260407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442425 (= res!262115 (validMask!0 mask!1025))))

(declare-fun b!442426 () Bool)

(declare-fun res!262113 () Bool)

(assert (=> b!442426 (=> (not res!262113) (not e!260407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27197 (_ BitVec 32)) Bool)

(assert (=> b!442426 (= res!262113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442427 () Bool)

(declare-fun e!260406 () Bool)

(assert (=> b!442427 (= e!260406 tp_is_empty!11707)))

(declare-fun mapNonEmpty!19185 () Bool)

(declare-fun tp!37167 () Bool)

(assert (=> mapNonEmpty!19185 (= mapRes!19185 (and tp!37167 e!260408))))

(declare-fun mapValue!19185 () ValueCell!5510)

(declare-fun mapKey!19185 () (_ BitVec 32))

(declare-fun mapRest!19185 () (Array (_ BitVec 32) ValueCell!5510))

(assert (=> mapNonEmpty!19185 (= (arr!13045 _values!549) (store mapRest!19185 mapKey!19185 mapValue!19185))))

(declare-fun res!262112 () Bool)

(assert (=> start!40316 (=> (not res!262112) (not e!260407))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40316 (= res!262112 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13396 _keys!709))))))

(assert (=> start!40316 e!260407))

(assert (=> start!40316 true))

(declare-fun e!260404 () Bool)

(declare-fun array_inv!9458 (array!27199) Bool)

(assert (=> start!40316 (and (array_inv!9458 _values!549) e!260404)))

(declare-fun array_inv!9459 (array!27197) Bool)

(assert (=> start!40316 (array_inv!9459 _keys!709)))

(declare-fun b!442428 () Bool)

(assert (=> b!442428 (= e!260404 (and e!260406 mapRes!19185))))

(declare-fun condMapEmpty!19185 () Bool)

(declare-fun mapDefault!19185 () ValueCell!5510)

