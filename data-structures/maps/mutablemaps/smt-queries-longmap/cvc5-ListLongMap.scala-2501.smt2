; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38832 () Bool)

(assert start!38832)

(declare-fun b!405065 () Bool)

(declare-fun e!243588 () Bool)

(declare-fun tp_is_empty!10243 () Bool)

(assert (=> b!405065 (= e!243588 tp_is_empty!10243)))

(declare-fun b!405066 () Bool)

(declare-fun res!233828 () Bool)

(declare-fun e!243586 () Bool)

(assert (=> b!405066 (=> (not res!233828) (not e!243586))))

(declare-datatypes ((array!24347 0))(
  ( (array!24348 (arr!11620 (Array (_ BitVec 32) (_ BitVec 64))) (size!11972 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24347)

(declare-datatypes ((List!6737 0))(
  ( (Nil!6734) (Cons!6733 (h!7589 (_ BitVec 64)) (t!11919 List!6737)) )
))
(declare-fun arrayNoDuplicates!0 (array!24347 (_ BitVec 32) List!6737) Bool)

(assert (=> b!405066 (= res!233828 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6734))))

(declare-fun b!405067 () Bool)

(declare-fun res!233830 () Bool)

(assert (=> b!405067 (=> (not res!233830) (not e!243586))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405067 (= res!233830 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16986 () Bool)

(declare-fun mapRes!16986 () Bool)

(declare-fun tp!33105 () Bool)

(declare-fun e!243584 () Bool)

(assert (=> mapNonEmpty!16986 (= mapRes!16986 (and tp!33105 e!243584))))

(declare-fun mapKey!16986 () (_ BitVec 32))

(declare-datatypes ((V!14763 0))(
  ( (V!14764 (val!5166 Int)) )
))
(declare-datatypes ((ValueCell!4778 0))(
  ( (ValueCellFull!4778 (v!7409 V!14763)) (EmptyCell!4778) )
))
(declare-datatypes ((array!24349 0))(
  ( (array!24350 (arr!11621 (Array (_ BitVec 32) ValueCell!4778)) (size!11973 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24349)

(declare-fun mapRest!16986 () (Array (_ BitVec 32) ValueCell!4778))

(declare-fun mapValue!16986 () ValueCell!4778)

(assert (=> mapNonEmpty!16986 (= (arr!11621 _values!549) (store mapRest!16986 mapKey!16986 mapValue!16986))))

(declare-fun res!233825 () Bool)

(assert (=> start!38832 (=> (not res!233825) (not e!243586))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38832 (= res!233825 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11972 _keys!709))))))

(assert (=> start!38832 e!243586))

(assert (=> start!38832 true))

(declare-fun e!243589 () Bool)

(declare-fun array_inv!8488 (array!24349) Bool)

(assert (=> start!38832 (and (array_inv!8488 _values!549) e!243589)))

(declare-fun array_inv!8489 (array!24347) Bool)

(assert (=> start!38832 (array_inv!8489 _keys!709)))

(declare-fun b!405068 () Bool)

(assert (=> b!405068 (= e!243584 tp_is_empty!10243)))

(declare-fun b!405069 () Bool)

(declare-fun res!233824 () Bool)

(assert (=> b!405069 (=> (not res!233824) (not e!243586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24347 (_ BitVec 32)) Bool)

(assert (=> b!405069 (= res!233824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405070 () Bool)

(declare-fun res!233831 () Bool)

(assert (=> b!405070 (=> (not res!233831) (not e!243586))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405070 (= res!233831 (and (= (size!11973 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11972 _keys!709) (size!11973 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405071 () Bool)

(declare-fun res!233832 () Bool)

(assert (=> b!405071 (=> (not res!233832) (not e!243586))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405071 (= res!233832 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11972 _keys!709))))))

(declare-fun mapIsEmpty!16986 () Bool)

(assert (=> mapIsEmpty!16986 mapRes!16986))

(declare-fun b!405072 () Bool)

(assert (=> b!405072 (= e!243589 (and e!243588 mapRes!16986))))

(declare-fun condMapEmpty!16986 () Bool)

(declare-fun mapDefault!16986 () ValueCell!4778)

