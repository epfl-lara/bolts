; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38362 () Bool)

(assert start!38362)

(declare-fun b!395364 () Bool)

(declare-fun res!226736 () Bool)

(declare-fun e!239372 () Bool)

(assert (=> b!395364 (=> (not res!226736) (not e!239372))))

(declare-datatypes ((array!23527 0))(
  ( (array!23528 (arr!11213 (Array (_ BitVec 32) (_ BitVec 64))) (size!11565 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23527)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14199 0))(
  ( (V!14200 (val!4955 Int)) )
))
(declare-datatypes ((ValueCell!4567 0))(
  ( (ValueCellFull!4567 (v!7197 V!14199)) (EmptyCell!4567) )
))
(declare-datatypes ((array!23529 0))(
  ( (array!23530 (arr!11214 (Array (_ BitVec 32) ValueCell!4567)) (size!11566 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23529)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395364 (= res!226736 (and (= (size!11566 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11565 _keys!709) (size!11566 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395365 () Bool)

(assert (=> b!395365 (= e!239372 false)))

(declare-fun lt!187055 () Bool)

(declare-datatypes ((List!6477 0))(
  ( (Nil!6474) (Cons!6473 (h!7329 (_ BitVec 64)) (t!11659 List!6477)) )
))
(declare-fun arrayNoDuplicates!0 (array!23527 (_ BitVec 32) List!6477) Bool)

(assert (=> b!395365 (= lt!187055 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6474))))

(declare-fun b!395366 () Bool)

(declare-fun res!226737 () Bool)

(assert (=> b!395366 (=> (not res!226737) (not e!239372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395366 (= res!226737 (validMask!0 mask!1025))))

(declare-fun b!395367 () Bool)

(declare-fun res!226735 () Bool)

(assert (=> b!395367 (=> (not res!226735) (not e!239372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23527 (_ BitVec 32)) Bool)

(assert (=> b!395367 (= res!226735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395368 () Bool)

(declare-fun e!239374 () Bool)

(declare-fun tp_is_empty!9821 () Bool)

(assert (=> b!395368 (= e!239374 tp_is_empty!9821)))

(declare-fun b!395369 () Bool)

(declare-fun e!239371 () Bool)

(declare-fun e!239373 () Bool)

(declare-fun mapRes!16344 () Bool)

(assert (=> b!395369 (= e!239371 (and e!239373 mapRes!16344))))

(declare-fun condMapEmpty!16344 () Bool)

(declare-fun mapDefault!16344 () ValueCell!4567)

