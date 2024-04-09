; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38506 () Bool)

(assert start!38506)

(declare-fun res!228294 () Bool)

(declare-fun e!240326 () Bool)

(assert (=> start!38506 (=> (not res!228294) (not e!240326))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23717 0))(
  ( (array!23718 (arr!11305 (Array (_ BitVec 32) (_ BitVec 64))) (size!11657 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23717)

(assert (=> start!38506 (= res!228294 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11657 _keys!709))))))

(assert (=> start!38506 e!240326))

(assert (=> start!38506 true))

(declare-datatypes ((V!14327 0))(
  ( (V!14328 (val!5003 Int)) )
))
(declare-datatypes ((ValueCell!4615 0))(
  ( (ValueCellFull!4615 (v!7246 V!14327)) (EmptyCell!4615) )
))
(declare-datatypes ((array!23719 0))(
  ( (array!23720 (arr!11306 (Array (_ BitVec 32) ValueCell!4615)) (size!11658 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23719)

(declare-fun e!240327 () Bool)

(declare-fun array_inv!8278 (array!23719) Bool)

(assert (=> start!38506 (and (array_inv!8278 _values!549) e!240327)))

(declare-fun array_inv!8279 (array!23717) Bool)

(assert (=> start!38506 (array_inv!8279 _keys!709)))

(declare-fun b!397412 () Bool)

(declare-fun res!228288 () Bool)

(assert (=> b!397412 (=> (not res!228288) (not e!240326))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!397412 (= res!228288 (and (= (size!11658 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11657 _keys!709) (size!11658 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397413 () Bool)

(declare-fun res!228289 () Bool)

(assert (=> b!397413 (=> (not res!228289) (not e!240326))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397413 (= res!228289 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397414 () Bool)

(declare-fun res!228287 () Bool)

(assert (=> b!397414 (=> (not res!228287) (not e!240326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397414 (= res!228287 (validKeyInArray!0 k!794))))

(declare-fun b!397415 () Bool)

(declare-fun e!240329 () Bool)

(assert (=> b!397415 (= e!240329 false)))

(declare-fun lt!187292 () Bool)

(declare-fun lt!187293 () array!23717)

(declare-datatypes ((List!6515 0))(
  ( (Nil!6512) (Cons!6511 (h!7367 (_ BitVec 64)) (t!11697 List!6515)) )
))
(declare-fun arrayNoDuplicates!0 (array!23717 (_ BitVec 32) List!6515) Bool)

(assert (=> b!397415 (= lt!187292 (arrayNoDuplicates!0 lt!187293 #b00000000000000000000000000000000 Nil!6512))))

(declare-fun b!397416 () Bool)

(assert (=> b!397416 (= e!240326 e!240329)))

(declare-fun res!228292 () Bool)

(assert (=> b!397416 (=> (not res!228292) (not e!240329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23717 (_ BitVec 32)) Bool)

(assert (=> b!397416 (= res!228292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187293 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397416 (= lt!187293 (array!23718 (store (arr!11305 _keys!709) i!563 k!794) (size!11657 _keys!709)))))

(declare-fun b!397417 () Bool)

(declare-fun e!240328 () Bool)

(declare-fun mapRes!16497 () Bool)

(assert (=> b!397417 (= e!240327 (and e!240328 mapRes!16497))))

(declare-fun condMapEmpty!16497 () Bool)

(declare-fun mapDefault!16497 () ValueCell!4615)

