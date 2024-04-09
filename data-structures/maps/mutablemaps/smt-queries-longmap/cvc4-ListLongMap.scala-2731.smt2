; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40216 () Bool)

(assert start!40216)

(declare-fun b_free!10475 () Bool)

(declare-fun b_next!10475 () Bool)

(assert (=> start!40216 (= b_free!10475 (not b_next!10475))))

(declare-fun tp!36953 () Bool)

(declare-fun b_and!18461 () Bool)

(assert (=> start!40216 (= tp!36953 b_and!18461)))

(declare-fun b!440561 () Bool)

(declare-fun res!260711 () Bool)

(declare-fun e!259522 () Bool)

(assert (=> b!440561 (=> (not res!260711) (not e!259522))))

(declare-datatypes ((array!27041 0))(
  ( (array!27042 (arr!12967 (Array (_ BitVec 32) (_ BitVec 64))) (size!13319 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27041)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27041 (_ BitVec 32)) Bool)

(assert (=> b!440561 (= res!260711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!260719 () Bool)

(assert (=> start!40216 (=> (not res!260719) (not e!259522))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40216 (= res!260719 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13319 _keys!709))))))

(assert (=> start!40216 e!259522))

(declare-fun tp_is_empty!11627 () Bool)

(assert (=> start!40216 tp_is_empty!11627))

(assert (=> start!40216 tp!36953))

(assert (=> start!40216 true))

(declare-datatypes ((V!16607 0))(
  ( (V!16608 (val!5858 Int)) )
))
(declare-datatypes ((ValueCell!5470 0))(
  ( (ValueCellFull!5470 (v!8101 V!16607)) (EmptyCell!5470) )
))
(declare-datatypes ((array!27043 0))(
  ( (array!27044 (arr!12968 (Array (_ BitVec 32) ValueCell!5470)) (size!13320 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27043)

(declare-fun e!259526 () Bool)

(declare-fun array_inv!9404 (array!27043) Bool)

(assert (=> start!40216 (and (array_inv!9404 _values!549) e!259526)))

(declare-fun array_inv!9405 (array!27041) Bool)

(assert (=> start!40216 (array_inv!9405 _keys!709)))

(declare-fun b!440562 () Bool)

(declare-fun res!260721 () Bool)

(assert (=> b!440562 (=> (not res!260721) (not e!259522))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440562 (= res!260721 (validKeyInArray!0 k!794))))

(declare-fun b!440563 () Bool)

(declare-fun res!260713 () Bool)

(declare-fun e!259523 () Bool)

(assert (=> b!440563 (=> (not res!260713) (not e!259523))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440563 (= res!260713 (bvsle from!863 i!563))))

(declare-fun b!440564 () Bool)

(declare-fun res!260717 () Bool)

(assert (=> b!440564 (=> (not res!260717) (not e!259523))))

(declare-fun lt!202644 () array!27041)

(declare-datatypes ((List!7752 0))(
  ( (Nil!7749) (Cons!7748 (h!8604 (_ BitVec 64)) (t!13516 List!7752)) )
))
(declare-fun arrayNoDuplicates!0 (array!27041 (_ BitVec 32) List!7752) Bool)

(assert (=> b!440564 (= res!260717 (arrayNoDuplicates!0 lt!202644 #b00000000000000000000000000000000 Nil!7749))))

(declare-fun b!440565 () Bool)

(declare-fun res!260720 () Bool)

(assert (=> b!440565 (=> (not res!260720) (not e!259522))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!440565 (= res!260720 (and (= (size!13320 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13319 _keys!709) (size!13320 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440566 () Bool)

(declare-fun res!260715 () Bool)

(assert (=> b!440566 (=> (not res!260715) (not e!259522))))

(assert (=> b!440566 (= res!260715 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13319 _keys!709))))))

(declare-fun b!440567 () Bool)

(declare-fun e!259524 () Bool)

(assert (=> b!440567 (= e!259524 (not true))))

(declare-fun minValue!515 () V!16607)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16607)

(declare-fun lt!202646 () array!27043)

(declare-fun v!412 () V!16607)

(declare-datatypes ((tuple2!7712 0))(
  ( (tuple2!7713 (_1!3866 (_ BitVec 64)) (_2!3866 V!16607)) )
))
(declare-datatypes ((List!7753 0))(
  ( (Nil!7750) (Cons!7749 (h!8605 tuple2!7712) (t!13517 List!7753)) )
))
(declare-datatypes ((ListLongMap!6639 0))(
  ( (ListLongMap!6640 (toList!3335 List!7753)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1517 (array!27041 array!27043 (_ BitVec 32) (_ BitVec 32) V!16607 V!16607 (_ BitVec 32) Int) ListLongMap!6639)

(declare-fun +!1471 (ListLongMap!6639 tuple2!7712) ListLongMap!6639)

(assert (=> b!440567 (= (getCurrentListMapNoExtraKeys!1517 lt!202644 lt!202646 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1471 (getCurrentListMapNoExtraKeys!1517 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7713 k!794 v!412)))))

(declare-datatypes ((Unit!13057 0))(
  ( (Unit!13058) )
))
(declare-fun lt!202647 () Unit!13057)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!649 (array!27041 array!27043 (_ BitVec 32) (_ BitVec 32) V!16607 V!16607 (_ BitVec 32) (_ BitVec 64) V!16607 (_ BitVec 32) Int) Unit!13057)

(assert (=> b!440567 (= lt!202647 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!649 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440568 () Bool)

(declare-fun res!260710 () Bool)

(assert (=> b!440568 (=> (not res!260710) (not e!259522))))

(assert (=> b!440568 (= res!260710 (or (= (select (arr!12967 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12967 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440569 () Bool)

(declare-fun res!260716 () Bool)

(assert (=> b!440569 (=> (not res!260716) (not e!259522))))

(declare-fun arrayContainsKey!0 (array!27041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440569 (= res!260716 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19062 () Bool)

(declare-fun mapRes!19062 () Bool)

(declare-fun tp!36954 () Bool)

(declare-fun e!259525 () Bool)

(assert (=> mapNonEmpty!19062 (= mapRes!19062 (and tp!36954 e!259525))))

(declare-fun mapKey!19062 () (_ BitVec 32))

(declare-fun mapValue!19062 () ValueCell!5470)

(declare-fun mapRest!19062 () (Array (_ BitVec 32) ValueCell!5470))

(assert (=> mapNonEmpty!19062 (= (arr!12968 _values!549) (store mapRest!19062 mapKey!19062 mapValue!19062))))

(declare-fun b!440570 () Bool)

(declare-fun e!259527 () Bool)

(assert (=> b!440570 (= e!259526 (and e!259527 mapRes!19062))))

(declare-fun condMapEmpty!19062 () Bool)

(declare-fun mapDefault!19062 () ValueCell!5470)

