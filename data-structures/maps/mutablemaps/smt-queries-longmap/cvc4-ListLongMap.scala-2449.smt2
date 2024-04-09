; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38524 () Bool)

(assert start!38524)

(declare-fun b!397763 () Bool)

(declare-fun res!228561 () Bool)

(declare-fun e!240489 () Bool)

(assert (=> b!397763 (=> (not res!228561) (not e!240489))))

(declare-datatypes ((array!23753 0))(
  ( (array!23754 (arr!11323 (Array (_ BitVec 32) (_ BitVec 64))) (size!11675 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23753)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397763 (= res!228561 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397764 () Bool)

(declare-fun res!228555 () Bool)

(assert (=> b!397764 (=> (not res!228555) (not e!240489))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397764 (= res!228555 (or (= (select (arr!11323 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11323 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397766 () Bool)

(declare-fun res!228556 () Bool)

(assert (=> b!397766 (=> (not res!228556) (not e!240489))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23753 (_ BitVec 32)) Bool)

(assert (=> b!397766 (= res!228556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397767 () Bool)

(declare-fun e!240491 () Bool)

(declare-fun tp_is_empty!9935 () Bool)

(assert (=> b!397767 (= e!240491 tp_is_empty!9935)))

(declare-fun b!397768 () Bool)

(declare-fun res!228560 () Bool)

(assert (=> b!397768 (=> (not res!228560) (not e!240489))))

(assert (=> b!397768 (= res!228560 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11675 _keys!709))))))

(declare-fun b!397769 () Bool)

(declare-fun res!228563 () Bool)

(assert (=> b!397769 (=> (not res!228563) (not e!240489))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14351 0))(
  ( (V!14352 (val!5012 Int)) )
))
(declare-datatypes ((ValueCell!4624 0))(
  ( (ValueCellFull!4624 (v!7255 V!14351)) (EmptyCell!4624) )
))
(declare-datatypes ((array!23755 0))(
  ( (array!23756 (arr!11324 (Array (_ BitVec 32) ValueCell!4624)) (size!11676 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23755)

(assert (=> b!397769 (= res!228563 (and (= (size!11676 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11675 _keys!709) (size!11676 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397765 () Bool)

(declare-fun e!240492 () Bool)

(assert (=> b!397765 (= e!240492 tp_is_empty!9935)))

(declare-fun res!228557 () Bool)

(assert (=> start!38524 (=> (not res!228557) (not e!240489))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38524 (= res!228557 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11675 _keys!709))))))

(assert (=> start!38524 e!240489))

(assert (=> start!38524 true))

(declare-fun e!240490 () Bool)

(declare-fun array_inv!8290 (array!23755) Bool)

(assert (=> start!38524 (and (array_inv!8290 _values!549) e!240490)))

(declare-fun array_inv!8291 (array!23753) Bool)

(assert (=> start!38524 (array_inv!8291 _keys!709)))

(declare-fun mapIsEmpty!16524 () Bool)

(declare-fun mapRes!16524 () Bool)

(assert (=> mapIsEmpty!16524 mapRes!16524))

(declare-fun b!397770 () Bool)

(declare-fun res!228562 () Bool)

(assert (=> b!397770 (=> (not res!228562) (not e!240489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397770 (= res!228562 (validKeyInArray!0 k!794))))

(declare-fun b!397771 () Bool)

(declare-fun res!228559 () Bool)

(assert (=> b!397771 (=> (not res!228559) (not e!240489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397771 (= res!228559 (validMask!0 mask!1025))))

(declare-fun b!397772 () Bool)

(assert (=> b!397772 (= e!240490 (and e!240491 mapRes!16524))))

(declare-fun condMapEmpty!16524 () Bool)

(declare-fun mapDefault!16524 () ValueCell!4624)

