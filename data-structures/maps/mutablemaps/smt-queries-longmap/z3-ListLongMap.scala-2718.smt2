; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40136 () Bool)

(assert start!40136)

(declare-fun b_free!10395 () Bool)

(declare-fun b_next!10395 () Bool)

(assert (=> start!40136 (= b_free!10395 (not b_next!10395))))

(declare-fun tp!36713 () Bool)

(declare-fun b_and!18381 () Bool)

(assert (=> start!40136 (= tp!36713 b_and!18381)))

(declare-fun b!438641 () Bool)

(declare-fun e!258685 () Bool)

(declare-fun e!258684 () Bool)

(declare-fun mapRes!18942 () Bool)

(assert (=> b!438641 (= e!258685 (and e!258684 mapRes!18942))))

(declare-fun condMapEmpty!18942 () Bool)

(declare-datatypes ((V!16501 0))(
  ( (V!16502 (val!5818 Int)) )
))
(declare-datatypes ((ValueCell!5430 0))(
  ( (ValueCellFull!5430 (v!8061 V!16501)) (EmptyCell!5430) )
))
(declare-datatypes ((array!26887 0))(
  ( (array!26888 (arr!12890 (Array (_ BitVec 32) ValueCell!5430)) (size!13242 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26887)

(declare-fun mapDefault!18942 () ValueCell!5430)

(assert (=> b!438641 (= condMapEmpty!18942 (= (arr!12890 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5430)) mapDefault!18942)))))

(declare-fun b!438642 () Bool)

(declare-fun res!259159 () Bool)

(declare-fun e!258683 () Bool)

(assert (=> b!438642 (=> (not res!259159) (not e!258683))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438642 (= res!259159 (validMask!0 mask!1025))))

(declare-fun b!438643 () Bool)

(declare-fun res!259154 () Bool)

(assert (=> b!438643 (=> (not res!259154) (not e!258683))))

(declare-datatypes ((array!26889 0))(
  ( (array!26890 (arr!12891 (Array (_ BitVec 32) (_ BitVec 64))) (size!13243 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26889)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438643 (= res!259154 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!438644 () Bool)

(declare-fun e!258687 () Bool)

(assert (=> b!438644 (= e!258687 (not true))))

(declare-fun minValue!515 () V!16501)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16501)

(declare-fun lt!202047 () array!26889)

(declare-fun lt!202046 () array!26887)

(declare-fun v!412 () V!16501)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7648 0))(
  ( (tuple2!7649 (_1!3834 (_ BitVec 64)) (_2!3834 V!16501)) )
))
(declare-datatypes ((List!7691 0))(
  ( (Nil!7688) (Cons!7687 (h!8543 tuple2!7648) (t!13455 List!7691)) )
))
(declare-datatypes ((ListLongMap!6575 0))(
  ( (ListLongMap!6576 (toList!3303 List!7691)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1485 (array!26889 array!26887 (_ BitVec 32) (_ BitVec 32) V!16501 V!16501 (_ BitVec 32) Int) ListLongMap!6575)

(declare-fun +!1443 (ListLongMap!6575 tuple2!7648) ListLongMap!6575)

(assert (=> b!438644 (= (getCurrentListMapNoExtraKeys!1485 lt!202047 lt!202046 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1443 (getCurrentListMapNoExtraKeys!1485 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7649 k0!794 v!412)))))

(declare-datatypes ((Unit!13001 0))(
  ( (Unit!13002) )
))
(declare-fun lt!202044 () Unit!13001)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!621 (array!26889 array!26887 (_ BitVec 32) (_ BitVec 32) V!16501 V!16501 (_ BitVec 32) (_ BitVec 64) V!16501 (_ BitVec 32) Int) Unit!13001)

(assert (=> b!438644 (= lt!202044 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!621 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438645 () Bool)

(declare-fun res!259158 () Bool)

(assert (=> b!438645 (=> (not res!259158) (not e!258683))))

(assert (=> b!438645 (= res!259158 (or (= (select (arr!12891 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12891 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438646 () Bool)

(declare-fun tp_is_empty!11547 () Bool)

(assert (=> b!438646 (= e!258684 tp_is_empty!11547)))

(declare-fun b!438647 () Bool)

(declare-fun res!259160 () Bool)

(declare-fun e!258688 () Bool)

(assert (=> b!438647 (=> (not res!259160) (not e!258688))))

(declare-datatypes ((List!7692 0))(
  ( (Nil!7689) (Cons!7688 (h!8544 (_ BitVec 64)) (t!13456 List!7692)) )
))
(declare-fun arrayNoDuplicates!0 (array!26889 (_ BitVec 32) List!7692) Bool)

(assert (=> b!438647 (= res!259160 (arrayNoDuplicates!0 lt!202047 #b00000000000000000000000000000000 Nil!7689))))

(declare-fun mapNonEmpty!18942 () Bool)

(declare-fun tp!36714 () Bool)

(declare-fun e!258682 () Bool)

(assert (=> mapNonEmpty!18942 (= mapRes!18942 (and tp!36714 e!258682))))

(declare-fun mapRest!18942 () (Array (_ BitVec 32) ValueCell!5430))

(declare-fun mapKey!18942 () (_ BitVec 32))

(declare-fun mapValue!18942 () ValueCell!5430)

(assert (=> mapNonEmpty!18942 (= (arr!12890 _values!549) (store mapRest!18942 mapKey!18942 mapValue!18942))))

(declare-fun b!438648 () Bool)

(assert (=> b!438648 (= e!258682 tp_is_empty!11547)))

(declare-fun b!438649 () Bool)

(assert (=> b!438649 (= e!258688 e!258687)))

(declare-fun res!259156 () Bool)

(assert (=> b!438649 (=> (not res!259156) (not e!258687))))

(assert (=> b!438649 (= res!259156 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202045 () ListLongMap!6575)

(assert (=> b!438649 (= lt!202045 (getCurrentListMapNoExtraKeys!1485 lt!202047 lt!202046 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438649 (= lt!202046 (array!26888 (store (arr!12890 _values!549) i!563 (ValueCellFull!5430 v!412)) (size!13242 _values!549)))))

(declare-fun lt!202043 () ListLongMap!6575)

(assert (=> b!438649 (= lt!202043 (getCurrentListMapNoExtraKeys!1485 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18942 () Bool)

(assert (=> mapIsEmpty!18942 mapRes!18942))

(declare-fun b!438650 () Bool)

(assert (=> b!438650 (= e!258683 e!258688)))

(declare-fun res!259150 () Bool)

(assert (=> b!438650 (=> (not res!259150) (not e!258688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26889 (_ BitVec 32)) Bool)

(assert (=> b!438650 (= res!259150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202047 mask!1025))))

(assert (=> b!438650 (= lt!202047 (array!26890 (store (arr!12891 _keys!709) i!563 k0!794) (size!13243 _keys!709)))))

(declare-fun b!438651 () Bool)

(declare-fun res!259149 () Bool)

(assert (=> b!438651 (=> (not res!259149) (not e!258683))))

(assert (=> b!438651 (= res!259149 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13243 _keys!709))))))

(declare-fun b!438652 () Bool)

(declare-fun res!259155 () Bool)

(assert (=> b!438652 (=> (not res!259155) (not e!258683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438652 (= res!259155 (validKeyInArray!0 k0!794))))

(declare-fun b!438653 () Bool)

(declare-fun res!259161 () Bool)

(assert (=> b!438653 (=> (not res!259161) (not e!258683))))

(assert (=> b!438653 (= res!259161 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7689))))

(declare-fun b!438654 () Bool)

(declare-fun res!259152 () Bool)

(assert (=> b!438654 (=> (not res!259152) (not e!258688))))

(assert (=> b!438654 (= res!259152 (bvsle from!863 i!563))))

(declare-fun res!259151 () Bool)

(assert (=> start!40136 (=> (not res!259151) (not e!258683))))

(assert (=> start!40136 (= res!259151 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13243 _keys!709))))))

(assert (=> start!40136 e!258683))

(assert (=> start!40136 tp_is_empty!11547))

(assert (=> start!40136 tp!36713))

(assert (=> start!40136 true))

(declare-fun array_inv!9354 (array!26887) Bool)

(assert (=> start!40136 (and (array_inv!9354 _values!549) e!258685)))

(declare-fun array_inv!9355 (array!26889) Bool)

(assert (=> start!40136 (array_inv!9355 _keys!709)))

(declare-fun b!438655 () Bool)

(declare-fun res!259157 () Bool)

(assert (=> b!438655 (=> (not res!259157) (not e!258683))))

(assert (=> b!438655 (= res!259157 (and (= (size!13242 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13243 _keys!709) (size!13242 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438656 () Bool)

(declare-fun res!259153 () Bool)

(assert (=> b!438656 (=> (not res!259153) (not e!258683))))

(assert (=> b!438656 (= res!259153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40136 res!259151) b!438642))

(assert (= (and b!438642 res!259159) b!438655))

(assert (= (and b!438655 res!259157) b!438656))

(assert (= (and b!438656 res!259153) b!438653))

(assert (= (and b!438653 res!259161) b!438651))

(assert (= (and b!438651 res!259149) b!438652))

(assert (= (and b!438652 res!259155) b!438645))

(assert (= (and b!438645 res!259158) b!438643))

(assert (= (and b!438643 res!259154) b!438650))

(assert (= (and b!438650 res!259150) b!438647))

(assert (= (and b!438647 res!259160) b!438654))

(assert (= (and b!438654 res!259152) b!438649))

(assert (= (and b!438649 res!259156) b!438644))

(assert (= (and b!438641 condMapEmpty!18942) mapIsEmpty!18942))

(assert (= (and b!438641 (not condMapEmpty!18942)) mapNonEmpty!18942))

(get-info :version)

(assert (= (and mapNonEmpty!18942 ((_ is ValueCellFull!5430) mapValue!18942)) b!438648))

(assert (= (and b!438641 ((_ is ValueCellFull!5430) mapDefault!18942)) b!438646))

(assert (= start!40136 b!438641))

(declare-fun m!426057 () Bool)

(assert (=> mapNonEmpty!18942 m!426057))

(declare-fun m!426059 () Bool)

(assert (=> b!438644 m!426059))

(declare-fun m!426061 () Bool)

(assert (=> b!438644 m!426061))

(assert (=> b!438644 m!426061))

(declare-fun m!426063 () Bool)

(assert (=> b!438644 m!426063))

(declare-fun m!426065 () Bool)

(assert (=> b!438644 m!426065))

(declare-fun m!426067 () Bool)

(assert (=> start!40136 m!426067))

(declare-fun m!426069 () Bool)

(assert (=> start!40136 m!426069))

(declare-fun m!426071 () Bool)

(assert (=> b!438653 m!426071))

(declare-fun m!426073 () Bool)

(assert (=> b!438656 m!426073))

(declare-fun m!426075 () Bool)

(assert (=> b!438645 m!426075))

(declare-fun m!426077 () Bool)

(assert (=> b!438650 m!426077))

(declare-fun m!426079 () Bool)

(assert (=> b!438650 m!426079))

(declare-fun m!426081 () Bool)

(assert (=> b!438643 m!426081))

(declare-fun m!426083 () Bool)

(assert (=> b!438647 m!426083))

(declare-fun m!426085 () Bool)

(assert (=> b!438649 m!426085))

(declare-fun m!426087 () Bool)

(assert (=> b!438649 m!426087))

(declare-fun m!426089 () Bool)

(assert (=> b!438649 m!426089))

(declare-fun m!426091 () Bool)

(assert (=> b!438652 m!426091))

(declare-fun m!426093 () Bool)

(assert (=> b!438642 m!426093))

(check-sat (not b!438647) b_and!18381 (not b!438644) (not b!438642) (not b!438650) (not b!438656) (not b!438653) (not start!40136) tp_is_empty!11547 (not mapNonEmpty!18942) (not b!438652) (not b!438643) (not b_next!10395) (not b!438649))
(check-sat b_and!18381 (not b_next!10395))
