; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38508 () Bool)

(assert start!38508)

(declare-fun b!397451 () Bool)

(declare-fun res!228316 () Bool)

(declare-fun e!240346 () Bool)

(assert (=> b!397451 (=> (not res!228316) (not e!240346))))

(declare-datatypes ((array!23721 0))(
  ( (array!23722 (arr!11307 (Array (_ BitVec 32) (_ BitVec 64))) (size!11659 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23721)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23721 (_ BitVec 32)) Bool)

(assert (=> b!397451 (= res!228316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397452 () Bool)

(declare-fun e!240349 () Bool)

(assert (=> b!397452 (= e!240349 false)))

(declare-fun lt!187299 () Bool)

(declare-fun lt!187298 () array!23721)

(declare-datatypes ((List!6516 0))(
  ( (Nil!6513) (Cons!6512 (h!7368 (_ BitVec 64)) (t!11698 List!6516)) )
))
(declare-fun arrayNoDuplicates!0 (array!23721 (_ BitVec 32) List!6516) Bool)

(assert (=> b!397452 (= lt!187299 (arrayNoDuplicates!0 lt!187298 #b00000000000000000000000000000000 Nil!6513))))

(declare-fun b!397453 () Bool)

(declare-fun e!240345 () Bool)

(declare-fun tp_is_empty!9919 () Bool)

(assert (=> b!397453 (= e!240345 tp_is_empty!9919)))

(declare-fun res!228323 () Bool)

(assert (=> start!38508 (=> (not res!228323) (not e!240346))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38508 (= res!228323 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11659 _keys!709))))))

(assert (=> start!38508 e!240346))

(assert (=> start!38508 true))

(declare-datatypes ((V!14331 0))(
  ( (V!14332 (val!5004 Int)) )
))
(declare-datatypes ((ValueCell!4616 0))(
  ( (ValueCellFull!4616 (v!7247 V!14331)) (EmptyCell!4616) )
))
(declare-datatypes ((array!23723 0))(
  ( (array!23724 (arr!11308 (Array (_ BitVec 32) ValueCell!4616)) (size!11660 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23723)

(declare-fun e!240347 () Bool)

(declare-fun array_inv!8280 (array!23723) Bool)

(assert (=> start!38508 (and (array_inv!8280 _values!549) e!240347)))

(declare-fun array_inv!8281 (array!23721) Bool)

(assert (=> start!38508 (array_inv!8281 _keys!709)))

(declare-fun b!397454 () Bool)

(declare-fun res!228318 () Bool)

(assert (=> b!397454 (=> (not res!228318) (not e!240346))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397454 (= res!228318 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397455 () Bool)

(assert (=> b!397455 (= e!240346 e!240349)))

(declare-fun res!228324 () Bool)

(assert (=> b!397455 (=> (not res!228324) (not e!240349))))

(assert (=> b!397455 (= res!228324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187298 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397455 (= lt!187298 (array!23722 (store (arr!11307 _keys!709) i!563 k!794) (size!11659 _keys!709)))))

(declare-fun b!397456 () Bool)

(declare-fun res!228317 () Bool)

(assert (=> b!397456 (=> (not res!228317) (not e!240346))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397456 (= res!228317 (and (= (size!11660 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11659 _keys!709) (size!11660 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16500 () Bool)

(declare-fun mapRes!16500 () Bool)

(declare-fun tp!32295 () Bool)

(assert (=> mapNonEmpty!16500 (= mapRes!16500 (and tp!32295 e!240345))))

(declare-fun mapValue!16500 () ValueCell!4616)

(declare-fun mapKey!16500 () (_ BitVec 32))

(declare-fun mapRest!16500 () (Array (_ BitVec 32) ValueCell!4616))

(assert (=> mapNonEmpty!16500 (= (arr!11308 _values!549) (store mapRest!16500 mapKey!16500 mapValue!16500))))

(declare-fun b!397457 () Bool)

(declare-fun res!228320 () Bool)

(assert (=> b!397457 (=> (not res!228320) (not e!240346))))

(assert (=> b!397457 (= res!228320 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6513))))

(declare-fun b!397458 () Bool)

(declare-fun res!228322 () Bool)

(assert (=> b!397458 (=> (not res!228322) (not e!240346))))

(assert (=> b!397458 (= res!228322 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11659 _keys!709))))))

(declare-fun b!397459 () Bool)

(declare-fun e!240348 () Bool)

(assert (=> b!397459 (= e!240347 (and e!240348 mapRes!16500))))

(declare-fun condMapEmpty!16500 () Bool)

(declare-fun mapDefault!16500 () ValueCell!4616)

