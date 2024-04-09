; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40576 () Bool)

(assert start!40576)

(declare-fun b_free!10579 () Bool)

(declare-fun b_next!10579 () Bool)

(assert (=> start!40576 (= b_free!10579 (not b_next!10579))))

(declare-fun tp!37556 () Bool)

(declare-fun b_and!18605 () Bool)

(assert (=> start!40576 (= tp!37556 b_and!18605)))

(declare-fun b!447002 () Bool)

(declare-fun res!265505 () Bool)

(declare-fun e!262525 () Bool)

(assert (=> b!447002 (=> (not res!265505) (not e!262525))))

(declare-datatypes ((array!27603 0))(
  ( (array!27604 (arr!13244 (Array (_ BitVec 32) (_ BitVec 64))) (size!13596 (_ BitVec 32))) )
))
(declare-fun lt!203886 () array!27603)

(declare-datatypes ((List!7908 0))(
  ( (Nil!7905) (Cons!7904 (h!8760 (_ BitVec 64)) (t!13678 List!7908)) )
))
(declare-fun arrayNoDuplicates!0 (array!27603 (_ BitVec 32) List!7908) Bool)

(assert (=> b!447002 (= res!265505 (arrayNoDuplicates!0 lt!203886 #b00000000000000000000000000000000 Nil!7905))))

(declare-fun b!447003 () Bool)

(declare-fun res!265500 () Bool)

(declare-fun e!262526 () Bool)

(assert (=> b!447003 (=> (not res!265500) (not e!262526))))

(declare-fun _keys!709 () array!27603)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27603 (_ BitVec 32)) Bool)

(assert (=> b!447003 (= res!265500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447004 () Bool)

(declare-fun res!265498 () Bool)

(assert (=> b!447004 (=> (not res!265498) (not e!262526))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447004 (= res!265498 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13596 _keys!709))))))

(declare-fun b!447005 () Bool)

(declare-fun res!265504 () Bool)

(assert (=> b!447005 (=> (not res!265504) (not e!262526))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447005 (= res!265504 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!447006 () Bool)

(declare-fun res!265496 () Bool)

(assert (=> b!447006 (=> (not res!265496) (not e!262526))))

(assert (=> b!447006 (= res!265496 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7905))))

(declare-fun b!447007 () Bool)

(declare-fun res!265506 () Bool)

(assert (=> b!447007 (=> (not res!265506) (not e!262525))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!447007 (= res!265506 (bvsle from!863 i!563))))

(declare-fun b!447008 () Bool)

(declare-datatypes ((V!16995 0))(
  ( (V!16996 (val!6003 Int)) )
))
(declare-datatypes ((ValueCell!5615 0))(
  ( (ValueCellFull!5615 (v!8254 V!16995)) (EmptyCell!5615) )
))
(declare-datatypes ((array!27605 0))(
  ( (array!27606 (arr!13245 (Array (_ BitVec 32) ValueCell!5615)) (size!13597 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27605)

(assert (=> b!447008 (= e!262525 (bvsge i!563 (size!13597 _values!549)))))

(declare-fun minValue!515 () V!16995)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16995)

(declare-datatypes ((tuple2!7796 0))(
  ( (tuple2!7797 (_1!3908 (_ BitVec 64)) (_2!3908 V!16995)) )
))
(declare-datatypes ((List!7909 0))(
  ( (Nil!7906) (Cons!7905 (h!8761 tuple2!7796) (t!13679 List!7909)) )
))
(declare-datatypes ((ListLongMap!6723 0))(
  ( (ListLongMap!6724 (toList!3377 List!7909)) )
))
(declare-fun lt!203887 () ListLongMap!6723)

(declare-fun getCurrentListMapNoExtraKeys!1557 (array!27603 array!27605 (_ BitVec 32) (_ BitVec 32) V!16995 V!16995 (_ BitVec 32) Int) ListLongMap!6723)

(assert (=> b!447008 (= lt!203887 (getCurrentListMapNoExtraKeys!1557 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447009 () Bool)

(declare-fun e!262522 () Bool)

(declare-fun tp_is_empty!11917 () Bool)

(assert (=> b!447009 (= e!262522 tp_is_empty!11917)))

(declare-fun mapIsEmpty!19509 () Bool)

(declare-fun mapRes!19509 () Bool)

(assert (=> mapIsEmpty!19509 mapRes!19509))

(declare-fun b!447010 () Bool)

(assert (=> b!447010 (= e!262526 e!262525)))

(declare-fun res!265497 () Bool)

(assert (=> b!447010 (=> (not res!265497) (not e!262525))))

(assert (=> b!447010 (= res!265497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203886 mask!1025))))

(assert (=> b!447010 (= lt!203886 (array!27604 (store (arr!13244 _keys!709) i!563 k!794) (size!13596 _keys!709)))))

(declare-fun b!447011 () Bool)

(declare-fun res!265495 () Bool)

(assert (=> b!447011 (=> (not res!265495) (not e!262526))))

(assert (=> b!447011 (= res!265495 (or (= (select (arr!13244 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13244 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!265501 () Bool)

(assert (=> start!40576 (=> (not res!265501) (not e!262526))))

(assert (=> start!40576 (= res!265501 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13596 _keys!709))))))

(assert (=> start!40576 e!262526))

(assert (=> start!40576 tp_is_empty!11917))

(assert (=> start!40576 tp!37556))

(assert (=> start!40576 true))

(declare-fun e!262523 () Bool)

(declare-fun array_inv!9592 (array!27605) Bool)

(assert (=> start!40576 (and (array_inv!9592 _values!549) e!262523)))

(declare-fun array_inv!9593 (array!27603) Bool)

(assert (=> start!40576 (array_inv!9593 _keys!709)))

(declare-fun b!447012 () Bool)

(declare-fun res!265499 () Bool)

(assert (=> b!447012 (=> (not res!265499) (not e!262526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447012 (= res!265499 (validKeyInArray!0 k!794))))

(declare-fun b!447013 () Bool)

(declare-fun res!265502 () Bool)

(assert (=> b!447013 (=> (not res!265502) (not e!262526))))

(assert (=> b!447013 (= res!265502 (and (= (size!13597 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13596 _keys!709) (size!13597 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447014 () Bool)

(assert (=> b!447014 (= e!262523 (and e!262522 mapRes!19509))))

(declare-fun condMapEmpty!19509 () Bool)

(declare-fun mapDefault!19509 () ValueCell!5615)

