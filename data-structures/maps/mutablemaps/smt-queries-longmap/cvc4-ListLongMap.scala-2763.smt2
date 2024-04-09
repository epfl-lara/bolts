; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40442 () Bool)

(assert start!40442)

(declare-fun b!444614 () Bool)

(declare-fun res!263778 () Bool)

(declare-fun e!261441 () Bool)

(assert (=> b!444614 (=> (not res!263778) (not e!261441))))

(declare-datatypes ((array!27409 0))(
  ( (array!27410 (arr!13149 (Array (_ BitVec 32) (_ BitVec 64))) (size!13501 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27409)

(declare-datatypes ((List!7849 0))(
  ( (Nil!7846) (Cons!7845 (h!8701 (_ BitVec 64)) (t!13615 List!7849)) )
))
(declare-fun arrayNoDuplicates!0 (array!27409 (_ BitVec 32) List!7849) Bool)

(assert (=> b!444614 (= res!263778 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7846))))

(declare-fun b!444615 () Bool)

(declare-fun res!263777 () Bool)

(assert (=> b!444615 (=> (not res!263777) (not e!261441))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16863 0))(
  ( (V!16864 (val!5954 Int)) )
))
(declare-datatypes ((ValueCell!5566 0))(
  ( (ValueCellFull!5566 (v!8201 V!16863)) (EmptyCell!5566) )
))
(declare-datatypes ((array!27411 0))(
  ( (array!27412 (arr!13150 (Array (_ BitVec 32) ValueCell!5566)) (size!13502 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27411)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444615 (= res!263777 (and (= (size!13502 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13501 _keys!709) (size!13502 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444616 () Bool)

(declare-fun res!263783 () Bool)

(assert (=> b!444616 (=> (not res!263783) (not e!261441))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444616 (= res!263783 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13501 _keys!709))))))

(declare-fun b!444617 () Bool)

(declare-fun res!263781 () Bool)

(assert (=> b!444617 (=> (not res!263781) (not e!261441))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444617 (= res!263781 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19356 () Bool)

(declare-fun mapRes!19356 () Bool)

(assert (=> mapIsEmpty!19356 mapRes!19356))

(declare-fun b!444618 () Bool)

(declare-fun e!261436 () Bool)

(declare-fun tp_is_empty!11819 () Bool)

(assert (=> b!444618 (= e!261436 tp_is_empty!11819)))

(declare-fun res!263776 () Bool)

(assert (=> start!40442 (=> (not res!263776) (not e!261441))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40442 (= res!263776 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13501 _keys!709))))))

(assert (=> start!40442 e!261441))

(assert (=> start!40442 true))

(declare-fun e!261439 () Bool)

(declare-fun array_inv!9524 (array!27411) Bool)

(assert (=> start!40442 (and (array_inv!9524 _values!549) e!261439)))

(declare-fun array_inv!9525 (array!27409) Bool)

(assert (=> start!40442 (array_inv!9525 _keys!709)))

(declare-fun b!444619 () Bool)

(declare-fun e!261438 () Bool)

(assert (=> b!444619 (= e!261438 tp_is_empty!11819)))

(declare-fun b!444620 () Bool)

(declare-fun res!263782 () Bool)

(assert (=> b!444620 (=> (not res!263782) (not e!261441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27409 (_ BitVec 32)) Bool)

(assert (=> b!444620 (= res!263782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19356 () Bool)

(declare-fun tp!37338 () Bool)

(assert (=> mapNonEmpty!19356 (= mapRes!19356 (and tp!37338 e!261438))))

(declare-fun mapKey!19356 () (_ BitVec 32))

(declare-fun mapValue!19356 () ValueCell!5566)

(declare-fun mapRest!19356 () (Array (_ BitVec 32) ValueCell!5566))

(assert (=> mapNonEmpty!19356 (= (arr!13150 _values!549) (store mapRest!19356 mapKey!19356 mapValue!19356))))

(declare-fun b!444621 () Bool)

(declare-fun e!261440 () Bool)

(assert (=> b!444621 (= e!261441 e!261440)))

(declare-fun res!263785 () Bool)

(assert (=> b!444621 (=> (not res!263785) (not e!261440))))

(declare-fun lt!203511 () array!27409)

(assert (=> b!444621 (= res!263785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203511 mask!1025))))

(assert (=> b!444621 (= lt!203511 (array!27410 (store (arr!13149 _keys!709) i!563 k!794) (size!13501 _keys!709)))))

(declare-fun b!444622 () Bool)

(declare-fun res!263780 () Bool)

(assert (=> b!444622 (=> (not res!263780) (not e!261441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444622 (= res!263780 (validMask!0 mask!1025))))

(declare-fun b!444623 () Bool)

(declare-fun res!263784 () Bool)

(assert (=> b!444623 (=> (not res!263784) (not e!261441))))

(assert (=> b!444623 (= res!263784 (or (= (select (arr!13149 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13149 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444624 () Bool)

(assert (=> b!444624 (= e!261439 (and e!261436 mapRes!19356))))

(declare-fun condMapEmpty!19356 () Bool)

(declare-fun mapDefault!19356 () ValueCell!5566)

