; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40600 () Bool)

(assert start!40600)

(declare-fun b_free!10603 () Bool)

(declare-fun b_next!10603 () Bool)

(assert (=> start!40600 (= b_free!10603 (not b_next!10603))))

(declare-fun tp!37629 () Bool)

(declare-fun b_and!18629 () Bool)

(assert (=> start!40600 (= tp!37629 b_and!18629)))

(declare-fun res!265931 () Bool)

(declare-fun e!262742 () Bool)

(assert (=> start!40600 (=> (not res!265931) (not e!262742))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27649 0))(
  ( (array!27650 (arr!13267 (Array (_ BitVec 32) (_ BitVec 64))) (size!13619 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27649)

(assert (=> start!40600 (= res!265931 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13619 _keys!709))))))

(assert (=> start!40600 e!262742))

(declare-fun tp_is_empty!11941 () Bool)

(assert (=> start!40600 tp_is_empty!11941))

(assert (=> start!40600 tp!37629))

(assert (=> start!40600 true))

(declare-datatypes ((V!17027 0))(
  ( (V!17028 (val!6015 Int)) )
))
(declare-datatypes ((ValueCell!5627 0))(
  ( (ValueCellFull!5627 (v!8266 V!17027)) (EmptyCell!5627) )
))
(declare-datatypes ((array!27651 0))(
  ( (array!27652 (arr!13268 (Array (_ BitVec 32) ValueCell!5627)) (size!13620 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27651)

(declare-fun e!262739 () Bool)

(declare-fun array_inv!9608 (array!27651) Bool)

(assert (=> start!40600 (and (array_inv!9608 _values!549) e!262739)))

(declare-fun array_inv!9609 (array!27649) Bool)

(assert (=> start!40600 (array_inv!9609 _keys!709)))

(declare-fun mapNonEmpty!19545 () Bool)

(declare-fun mapRes!19545 () Bool)

(declare-fun tp!37628 () Bool)

(declare-fun e!262738 () Bool)

(assert (=> mapNonEmpty!19545 (= mapRes!19545 (and tp!37628 e!262738))))

(declare-fun mapValue!19545 () ValueCell!5627)

(declare-fun mapKey!19545 () (_ BitVec 32))

(declare-fun mapRest!19545 () (Array (_ BitVec 32) ValueCell!5627))

(assert (=> mapNonEmpty!19545 (= (arr!13268 _values!549) (store mapRest!19545 mapKey!19545 mapValue!19545))))

(declare-fun b!447542 () Bool)

(declare-fun res!265932 () Bool)

(assert (=> b!447542 (=> (not res!265932) (not e!262742))))

(declare-datatypes ((List!7926 0))(
  ( (Nil!7923) (Cons!7922 (h!8778 (_ BitVec 64)) (t!13696 List!7926)) )
))
(declare-fun arrayNoDuplicates!0 (array!27649 (_ BitVec 32) List!7926) Bool)

(assert (=> b!447542 (= res!265932 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7923))))

(declare-fun b!447543 () Bool)

(declare-fun res!265938 () Bool)

(assert (=> b!447543 (=> (not res!265938) (not e!262742))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447543 (= res!265938 (validMask!0 mask!1025))))

(declare-fun b!447544 () Bool)

(declare-fun e!262740 () Bool)

(assert (=> b!447544 (= e!262740 false)))

(declare-fun minValue!515 () V!17027)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7816 0))(
  ( (tuple2!7817 (_1!3918 (_ BitVec 64)) (_2!3918 V!17027)) )
))
(declare-datatypes ((List!7927 0))(
  ( (Nil!7924) (Cons!7923 (h!8779 tuple2!7816) (t!13697 List!7927)) )
))
(declare-datatypes ((ListLongMap!6743 0))(
  ( (ListLongMap!6744 (toList!3387 List!7927)) )
))
(declare-fun lt!203989 () ListLongMap!6743)

(declare-fun zeroValue!515 () V!17027)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!203988 () array!27649)

(declare-fun v!412 () V!17027)

(declare-fun getCurrentListMapNoExtraKeys!1567 (array!27649 array!27651 (_ BitVec 32) (_ BitVec 32) V!17027 V!17027 (_ BitVec 32) Int) ListLongMap!6743)

(assert (=> b!447544 (= lt!203989 (getCurrentListMapNoExtraKeys!1567 lt!203988 (array!27652 (store (arr!13268 _values!549) i!563 (ValueCellFull!5627 v!412)) (size!13620 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203987 () ListLongMap!6743)

(assert (=> b!447544 (= lt!203987 (getCurrentListMapNoExtraKeys!1567 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447545 () Bool)

(declare-fun res!265937 () Bool)

(assert (=> b!447545 (=> (not res!265937) (not e!262742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27649 (_ BitVec 32)) Bool)

(assert (=> b!447545 (= res!265937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447546 () Bool)

(declare-fun res!265929 () Bool)

(assert (=> b!447546 (=> (not res!265929) (not e!262742))))

(assert (=> b!447546 (= res!265929 (or (= (select (arr!13267 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13267 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447547 () Bool)

(declare-fun e!262741 () Bool)

(assert (=> b!447547 (= e!262741 tp_is_empty!11941)))

(declare-fun b!447548 () Bool)

(declare-fun res!265930 () Bool)

(assert (=> b!447548 (=> (not res!265930) (not e!262740))))

(assert (=> b!447548 (= res!265930 (arrayNoDuplicates!0 lt!203988 #b00000000000000000000000000000000 Nil!7923))))

(declare-fun mapIsEmpty!19545 () Bool)

(assert (=> mapIsEmpty!19545 mapRes!19545))

(declare-fun b!447549 () Bool)

(assert (=> b!447549 (= e!262739 (and e!262741 mapRes!19545))))

(declare-fun condMapEmpty!19545 () Bool)

(declare-fun mapDefault!19545 () ValueCell!5627)

