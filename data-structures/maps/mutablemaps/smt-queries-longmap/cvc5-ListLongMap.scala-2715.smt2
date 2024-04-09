; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40116 () Bool)

(assert start!40116)

(declare-fun b_free!10375 () Bool)

(declare-fun b_next!10375 () Bool)

(assert (=> start!40116 (= b_free!10375 (not b_next!10375))))

(declare-fun tp!36654 () Bool)

(declare-fun b_and!18361 () Bool)

(assert (=> start!40116 (= tp!36654 b_and!18361)))

(declare-fun b!438161 () Bool)

(declare-fun res!258761 () Bool)

(declare-fun e!258473 () Bool)

(assert (=> b!438161 (=> (not res!258761) (not e!258473))))

(declare-datatypes ((array!26851 0))(
  ( (array!26852 (arr!12872 (Array (_ BitVec 32) (_ BitVec 64))) (size!13224 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26851)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26851 (_ BitVec 32)) Bool)

(assert (=> b!438161 (= res!258761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438162 () Bool)

(declare-fun e!258472 () Bool)

(declare-fun tp_is_empty!11527 () Bool)

(assert (=> b!438162 (= e!258472 tp_is_empty!11527)))

(declare-fun res!258763 () Bool)

(assert (=> start!40116 (=> (not res!258763) (not e!258473))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40116 (= res!258763 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13224 _keys!709))))))

(assert (=> start!40116 e!258473))

(assert (=> start!40116 tp_is_empty!11527))

(assert (=> start!40116 tp!36654))

(assert (=> start!40116 true))

(declare-datatypes ((V!16475 0))(
  ( (V!16476 (val!5808 Int)) )
))
(declare-datatypes ((ValueCell!5420 0))(
  ( (ValueCellFull!5420 (v!8051 V!16475)) (EmptyCell!5420) )
))
(declare-datatypes ((array!26853 0))(
  ( (array!26854 (arr!12873 (Array (_ BitVec 32) ValueCell!5420)) (size!13225 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26853)

(declare-fun e!258474 () Bool)

(declare-fun array_inv!9344 (array!26853) Bool)

(assert (=> start!40116 (and (array_inv!9344 _values!549) e!258474)))

(declare-fun array_inv!9345 (array!26851) Bool)

(assert (=> start!40116 (array_inv!9345 _keys!709)))

(declare-fun b!438163 () Bool)

(declare-fun e!258476 () Bool)

(assert (=> b!438163 (= e!258476 tp_is_empty!11527)))

(declare-fun b!438164 () Bool)

(declare-fun res!258770 () Bool)

(assert (=> b!438164 (=> (not res!258770) (not e!258473))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438164 (= res!258770 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13224 _keys!709))))))

(declare-fun b!438165 () Bool)

(declare-fun e!258475 () Bool)

(declare-fun e!258477 () Bool)

(assert (=> b!438165 (= e!258475 e!258477)))

(declare-fun res!258769 () Bool)

(assert (=> b!438165 (=> (not res!258769) (not e!258477))))

(assert (=> b!438165 (= res!258769 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16475)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201896 () array!26851)

(declare-fun zeroValue!515 () V!16475)

(declare-fun lt!201894 () array!26853)

(declare-datatypes ((tuple2!7634 0))(
  ( (tuple2!7635 (_1!3827 (_ BitVec 64)) (_2!3827 V!16475)) )
))
(declare-datatypes ((List!7677 0))(
  ( (Nil!7674) (Cons!7673 (h!8529 tuple2!7634) (t!13441 List!7677)) )
))
(declare-datatypes ((ListLongMap!6561 0))(
  ( (ListLongMap!6562 (toList!3296 List!7677)) )
))
(declare-fun lt!201893 () ListLongMap!6561)

(declare-fun getCurrentListMapNoExtraKeys!1478 (array!26851 array!26853 (_ BitVec 32) (_ BitVec 32) V!16475 V!16475 (_ BitVec 32) Int) ListLongMap!6561)

(assert (=> b!438165 (= lt!201893 (getCurrentListMapNoExtraKeys!1478 lt!201896 lt!201894 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16475)

(assert (=> b!438165 (= lt!201894 (array!26854 (store (arr!12873 _values!549) i!563 (ValueCellFull!5420 v!412)) (size!13225 _values!549)))))

(declare-fun lt!201897 () ListLongMap!6561)

(assert (=> b!438165 (= lt!201897 (getCurrentListMapNoExtraKeys!1478 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438166 () Bool)

(assert (=> b!438166 (= e!258473 e!258475)))

(declare-fun res!258768 () Bool)

(assert (=> b!438166 (=> (not res!258768) (not e!258475))))

(assert (=> b!438166 (= res!258768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201896 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!438166 (= lt!201896 (array!26852 (store (arr!12872 _keys!709) i!563 k!794) (size!13224 _keys!709)))))

(declare-fun b!438167 () Bool)

(declare-fun res!258771 () Bool)

(assert (=> b!438167 (=> (not res!258771) (not e!258473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438167 (= res!258771 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18912 () Bool)

(declare-fun mapRes!18912 () Bool)

(assert (=> mapIsEmpty!18912 mapRes!18912))

(declare-fun mapNonEmpty!18912 () Bool)

(declare-fun tp!36653 () Bool)

(assert (=> mapNonEmpty!18912 (= mapRes!18912 (and tp!36653 e!258472))))

(declare-fun mapValue!18912 () ValueCell!5420)

(declare-fun mapRest!18912 () (Array (_ BitVec 32) ValueCell!5420))

(declare-fun mapKey!18912 () (_ BitVec 32))

(assert (=> mapNonEmpty!18912 (= (arr!12873 _values!549) (store mapRest!18912 mapKey!18912 mapValue!18912))))

(declare-fun b!438168 () Bool)

(declare-fun res!258762 () Bool)

(assert (=> b!438168 (=> (not res!258762) (not e!258475))))

(declare-datatypes ((List!7678 0))(
  ( (Nil!7675) (Cons!7674 (h!8530 (_ BitVec 64)) (t!13442 List!7678)) )
))
(declare-fun arrayNoDuplicates!0 (array!26851 (_ BitVec 32) List!7678) Bool)

(assert (=> b!438168 (= res!258762 (arrayNoDuplicates!0 lt!201896 #b00000000000000000000000000000000 Nil!7675))))

(declare-fun b!438169 () Bool)

(declare-fun res!258767 () Bool)

(assert (=> b!438169 (=> (not res!258767) (not e!258473))))

(assert (=> b!438169 (= res!258767 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7675))))

(declare-fun b!438170 () Bool)

(declare-fun res!258760 () Bool)

(assert (=> b!438170 (=> (not res!258760) (not e!258473))))

(assert (=> b!438170 (= res!258760 (or (= (select (arr!12872 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12872 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438171 () Bool)

(declare-fun res!258766 () Bool)

(assert (=> b!438171 (=> (not res!258766) (not e!258475))))

(assert (=> b!438171 (= res!258766 (bvsle from!863 i!563))))

(declare-fun b!438172 () Bool)

(declare-fun res!258765 () Bool)

(assert (=> b!438172 (=> (not res!258765) (not e!258473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438172 (= res!258765 (validKeyInArray!0 k!794))))

(declare-fun b!438173 () Bool)

(declare-fun res!258759 () Bool)

(assert (=> b!438173 (=> (not res!258759) (not e!258473))))

(declare-fun arrayContainsKey!0 (array!26851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438173 (= res!258759 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438174 () Bool)

(assert (=> b!438174 (= e!258474 (and e!258476 mapRes!18912))))

(declare-fun condMapEmpty!18912 () Bool)

(declare-fun mapDefault!18912 () ValueCell!5420)

