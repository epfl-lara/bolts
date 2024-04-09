; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39004 () Bool)

(assert start!39004)

(declare-fun b!408419 () Bool)

(declare-fun e!245132 () Bool)

(declare-fun e!245135 () Bool)

(assert (=> b!408419 (= e!245132 e!245135)))

(declare-fun res!236403 () Bool)

(assert (=> b!408419 (=> (not res!236403) (not e!245135))))

(declare-datatypes ((array!24685 0))(
  ( (array!24686 (arr!11789 (Array (_ BitVec 32) (_ BitVec 64))) (size!12141 (_ BitVec 32))) )
))
(declare-fun lt!188787 () array!24685)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24685 (_ BitVec 32)) Bool)

(assert (=> b!408419 (= res!236403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188787 mask!1025))))

(declare-fun _keys!709 () array!24685)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408419 (= lt!188787 (array!24686 (store (arr!11789 _keys!709) i!563 k!794) (size!12141 _keys!709)))))

(declare-fun res!236405 () Bool)

(assert (=> start!39004 (=> (not res!236405) (not e!245132))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39004 (= res!236405 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12141 _keys!709))))))

(assert (=> start!39004 e!245132))

(assert (=> start!39004 true))

(declare-datatypes ((V!14991 0))(
  ( (V!14992 (val!5252 Int)) )
))
(declare-datatypes ((ValueCell!4864 0))(
  ( (ValueCellFull!4864 (v!7495 V!14991)) (EmptyCell!4864) )
))
(declare-datatypes ((array!24687 0))(
  ( (array!24688 (arr!11790 (Array (_ BitVec 32) ValueCell!4864)) (size!12142 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24687)

(declare-fun e!245137 () Bool)

(declare-fun array_inv!8612 (array!24687) Bool)

(assert (=> start!39004 (and (array_inv!8612 _values!549) e!245137)))

(declare-fun array_inv!8613 (array!24685) Bool)

(assert (=> start!39004 (array_inv!8613 _keys!709)))

(declare-fun b!408420 () Bool)

(assert (=> b!408420 (= e!245135 false)))

(declare-fun lt!188786 () Bool)

(declare-datatypes ((List!6810 0))(
  ( (Nil!6807) (Cons!6806 (h!7662 (_ BitVec 64)) (t!11992 List!6810)) )
))
(declare-fun arrayNoDuplicates!0 (array!24685 (_ BitVec 32) List!6810) Bool)

(assert (=> b!408420 (= lt!188786 (arrayNoDuplicates!0 lt!188787 #b00000000000000000000000000000000 Nil!6807))))

(declare-fun mapNonEmpty!17244 () Bool)

(declare-fun mapRes!17244 () Bool)

(declare-fun tp!33363 () Bool)

(declare-fun e!245136 () Bool)

(assert (=> mapNonEmpty!17244 (= mapRes!17244 (and tp!33363 e!245136))))

(declare-fun mapValue!17244 () ValueCell!4864)

(declare-fun mapRest!17244 () (Array (_ BitVec 32) ValueCell!4864))

(declare-fun mapKey!17244 () (_ BitVec 32))

(assert (=> mapNonEmpty!17244 (= (arr!11790 _values!549) (store mapRest!17244 mapKey!17244 mapValue!17244))))

(declare-fun b!408421 () Bool)

(declare-fun e!245133 () Bool)

(declare-fun tp_is_empty!10415 () Bool)

(assert (=> b!408421 (= e!245133 tp_is_empty!10415)))

(declare-fun b!408422 () Bool)

(declare-fun res!236409 () Bool)

(assert (=> b!408422 (=> (not res!236409) (not e!245132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408422 (= res!236409 (validMask!0 mask!1025))))

(declare-fun b!408423 () Bool)

(declare-fun res!236406 () Bool)

(assert (=> b!408423 (=> (not res!236406) (not e!245132))))

(assert (=> b!408423 (= res!236406 (or (= (select (arr!11789 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11789 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408424 () Bool)

(assert (=> b!408424 (= e!245136 tp_is_empty!10415)))

(declare-fun b!408425 () Bool)

(declare-fun res!236410 () Bool)

(assert (=> b!408425 (=> (not res!236410) (not e!245132))))

(assert (=> b!408425 (= res!236410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408426 () Bool)

(declare-fun res!236404 () Bool)

(assert (=> b!408426 (=> (not res!236404) (not e!245132))))

(declare-fun arrayContainsKey!0 (array!24685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408426 (= res!236404 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!408427 () Bool)

(declare-fun res!236411 () Bool)

(assert (=> b!408427 (=> (not res!236411) (not e!245132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408427 (= res!236411 (validKeyInArray!0 k!794))))

(declare-fun b!408428 () Bool)

(declare-fun res!236408 () Bool)

(assert (=> b!408428 (=> (not res!236408) (not e!245132))))

(assert (=> b!408428 (= res!236408 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12141 _keys!709))))))

(declare-fun mapIsEmpty!17244 () Bool)

(assert (=> mapIsEmpty!17244 mapRes!17244))

(declare-fun b!408429 () Bool)

(declare-fun res!236407 () Bool)

(assert (=> b!408429 (=> (not res!236407) (not e!245132))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408429 (= res!236407 (and (= (size!12142 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12141 _keys!709) (size!12142 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408430 () Bool)

(declare-fun res!236412 () Bool)

(assert (=> b!408430 (=> (not res!236412) (not e!245132))))

(assert (=> b!408430 (= res!236412 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6807))))

(declare-fun b!408431 () Bool)

(assert (=> b!408431 (= e!245137 (and e!245133 mapRes!17244))))

(declare-fun condMapEmpty!17244 () Bool)

(declare-fun mapDefault!17244 () ValueCell!4864)

