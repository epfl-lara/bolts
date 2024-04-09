; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40784 () Bool)

(assert start!40784)

(declare-fun b_free!10765 () Bool)

(declare-fun b_next!10765 () Bool)

(assert (=> start!40784 (= b_free!10765 (not b_next!10765))))

(declare-fun tp!38117 () Bool)

(declare-fun b_and!18835 () Bool)

(assert (=> start!40784 (= tp!38117 b_and!18835)))

(declare-fun b!451745 () Bool)

(declare-fun res!269085 () Bool)

(declare-fun e!264575 () Bool)

(assert (=> b!451745 (=> (not res!269085) (not e!264575))))

(declare-datatypes ((array!27975 0))(
  ( (array!27976 (arr!13429 (Array (_ BitVec 32) (_ BitVec 64))) (size!13781 (_ BitVec 32))) )
))
(declare-fun lt!205017 () array!27975)

(declare-datatypes ((List!8069 0))(
  ( (Nil!8066) (Cons!8065 (h!8921 (_ BitVec 64)) (t!13865 List!8069)) )
))
(declare-fun arrayNoDuplicates!0 (array!27975 (_ BitVec 32) List!8069) Bool)

(assert (=> b!451745 (= res!269085 (arrayNoDuplicates!0 lt!205017 #b00000000000000000000000000000000 Nil!8066))))

(declare-fun b!451746 () Bool)

(declare-fun res!269095 () Bool)

(declare-fun e!264576 () Bool)

(assert (=> b!451746 (=> (not res!269095) (not e!264576))))

(declare-fun _keys!709 () array!27975)

(assert (=> b!451746 (= res!269095 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8066))))

(declare-fun b!451747 () Bool)

(declare-fun e!264582 () Bool)

(declare-fun e!264580 () Bool)

(assert (=> b!451747 (= e!264582 (not e!264580))))

(declare-fun res!269093 () Bool)

(assert (=> b!451747 (=> res!269093 e!264580)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451747 (= res!269093 (validKeyInArray!0 (select (arr!13429 _keys!709) from!863)))))

(declare-fun e!264579 () Bool)

(assert (=> b!451747 e!264579))

(declare-fun c!56021 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451747 (= c!56021 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!17243 0))(
  ( (V!17244 (val!6096 Int)) )
))
(declare-fun minValue!515 () V!17243)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5708 0))(
  ( (ValueCellFull!5708 (v!8351 V!17243)) (EmptyCell!5708) )
))
(declare-datatypes ((array!27977 0))(
  ( (array!27978 (arr!13430 (Array (_ BitVec 32) ValueCell!5708)) (size!13782 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27977)

(declare-fun zeroValue!515 () V!17243)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!13161 0))(
  ( (Unit!13162) )
))
(declare-fun lt!205016 () Unit!13161)

(declare-fun v!412 () V!17243)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!699 (array!27975 array!27977 (_ BitVec 32) (_ BitVec 32) V!17243 V!17243 (_ BitVec 32) (_ BitVec 64) V!17243 (_ BitVec 32) Int) Unit!13161)

(assert (=> b!451747 (= lt!205016 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!699 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451748 () Bool)

(declare-fun res!269088 () Bool)

(assert (=> b!451748 (=> (not res!269088) (not e!264576))))

(assert (=> b!451748 (= res!269088 (and (= (size!13782 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13781 _keys!709) (size!13782 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451749 () Bool)

(declare-fun res!269089 () Bool)

(assert (=> b!451749 (=> (not res!269089) (not e!264575))))

(assert (=> b!451749 (= res!269089 (bvsle from!863 i!563))))

(declare-fun res!269091 () Bool)

(assert (=> start!40784 (=> (not res!269091) (not e!264576))))

(assert (=> start!40784 (= res!269091 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13781 _keys!709))))))

(assert (=> start!40784 e!264576))

(declare-fun tp_is_empty!12103 () Bool)

(assert (=> start!40784 tp_is_empty!12103))

(assert (=> start!40784 tp!38117))

(assert (=> start!40784 true))

(declare-fun e!264577 () Bool)

(declare-fun array_inv!9722 (array!27977) Bool)

(assert (=> start!40784 (and (array_inv!9722 _values!549) e!264577)))

(declare-fun array_inv!9723 (array!27975) Bool)

(assert (=> start!40784 (array_inv!9723 _keys!709)))

(declare-fun b!451750 () Bool)

(assert (=> b!451750 (= e!264580 (bvslt from!863 (size!13782 _values!549)))))

(declare-fun lt!205019 () array!27977)

(declare-datatypes ((tuple2!7964 0))(
  ( (tuple2!7965 (_1!3992 (_ BitVec 64)) (_2!3992 V!17243)) )
))
(declare-datatypes ((List!8070 0))(
  ( (Nil!8067) (Cons!8066 (h!8922 tuple2!7964) (t!13866 List!8070)) )
))
(declare-datatypes ((ListLongMap!6891 0))(
  ( (ListLongMap!6892 (toList!3461 List!8070)) )
))
(declare-fun lt!205018 () ListLongMap!6891)

(declare-fun +!1528 (ListLongMap!6891 tuple2!7964) ListLongMap!6891)

(declare-fun getCurrentListMapNoExtraKeys!1638 (array!27975 array!27977 (_ BitVec 32) (_ BitVec 32) V!17243 V!17243 (_ BitVec 32) Int) ListLongMap!6891)

(declare-fun get!6625 (ValueCell!5708 V!17243) V!17243)

(declare-fun dynLambda!852 (Int (_ BitVec 64)) V!17243)

(assert (=> b!451750 (= lt!205018 (+!1528 (getCurrentListMapNoExtraKeys!1638 lt!205017 lt!205019 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7965 (select (arr!13429 lt!205017) from!863) (get!6625 (select (arr!13430 lt!205019) from!863) (dynLambda!852 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451751 () Bool)

(declare-fun res!269083 () Bool)

(assert (=> b!451751 (=> (not res!269083) (not e!264576))))

(assert (=> b!451751 (= res!269083 (validKeyInArray!0 k!794))))

(declare-fun b!451752 () Bool)

(declare-fun e!264578 () Bool)

(assert (=> b!451752 (= e!264578 tp_is_empty!12103)))

(declare-fun b!451753 () Bool)

(assert (=> b!451753 (= e!264575 e!264582)))

(declare-fun res!269090 () Bool)

(assert (=> b!451753 (=> (not res!269090) (not e!264582))))

(assert (=> b!451753 (= res!269090 (= from!863 i!563))))

(assert (=> b!451753 (= lt!205018 (getCurrentListMapNoExtraKeys!1638 lt!205017 lt!205019 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451753 (= lt!205019 (array!27978 (store (arr!13430 _values!549) i!563 (ValueCellFull!5708 v!412)) (size!13782 _values!549)))))

(declare-fun lt!205020 () ListLongMap!6891)

(assert (=> b!451753 (= lt!205020 (getCurrentListMapNoExtraKeys!1638 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!29905 () ListLongMap!6891)

(declare-fun bm!29902 () Bool)

(assert (=> bm!29902 (= call!29905 (getCurrentListMapNoExtraKeys!1638 (ite c!56021 lt!205017 _keys!709) (ite c!56021 lt!205019 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19791 () Bool)

(declare-fun mapRes!19791 () Bool)

(assert (=> mapIsEmpty!19791 mapRes!19791))

(declare-fun bm!29903 () Bool)

(declare-fun call!29906 () ListLongMap!6891)

(assert (=> bm!29903 (= call!29906 (getCurrentListMapNoExtraKeys!1638 (ite c!56021 _keys!709 lt!205017) (ite c!56021 _values!549 lt!205019) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451754 () Bool)

(assert (=> b!451754 (= e!264576 e!264575)))

(declare-fun res!269096 () Bool)

(assert (=> b!451754 (=> (not res!269096) (not e!264575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27975 (_ BitVec 32)) Bool)

(assert (=> b!451754 (= res!269096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205017 mask!1025))))

(assert (=> b!451754 (= lt!205017 (array!27976 (store (arr!13429 _keys!709) i!563 k!794) (size!13781 _keys!709)))))

(declare-fun b!451755 () Bool)

(declare-fun res!269086 () Bool)

(assert (=> b!451755 (=> (not res!269086) (not e!264576))))

(declare-fun arrayContainsKey!0 (array!27975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451755 (= res!269086 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19791 () Bool)

(declare-fun tp!38118 () Bool)

(assert (=> mapNonEmpty!19791 (= mapRes!19791 (and tp!38118 e!264578))))

(declare-fun mapValue!19791 () ValueCell!5708)

(declare-fun mapRest!19791 () (Array (_ BitVec 32) ValueCell!5708))

(declare-fun mapKey!19791 () (_ BitVec 32))

(assert (=> mapNonEmpty!19791 (= (arr!13430 _values!549) (store mapRest!19791 mapKey!19791 mapValue!19791))))

(declare-fun b!451756 () Bool)

(declare-fun e!264574 () Bool)

(assert (=> b!451756 (= e!264574 tp_is_empty!12103)))

(declare-fun b!451757 () Bool)

(assert (=> b!451757 (= e!264577 (and e!264574 mapRes!19791))))

(declare-fun condMapEmpty!19791 () Bool)

(declare-fun mapDefault!19791 () ValueCell!5708)

