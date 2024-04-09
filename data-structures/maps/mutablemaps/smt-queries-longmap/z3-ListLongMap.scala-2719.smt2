; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40142 () Bool)

(assert start!40142)

(declare-fun b_free!10401 () Bool)

(declare-fun b_next!10401 () Bool)

(assert (=> start!40142 (= b_free!10401 (not b_next!10401))))

(declare-fun tp!36731 () Bool)

(declare-fun b_and!18387 () Bool)

(assert (=> start!40142 (= tp!36731 b_and!18387)))

(declare-fun b!438785 () Bool)

(declare-fun res!259268 () Bool)

(declare-fun e!258748 () Bool)

(assert (=> b!438785 (=> (not res!259268) (not e!258748))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26899 0))(
  ( (array!26900 (arr!12896 (Array (_ BitVec 32) (_ BitVec 64))) (size!13248 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26899)

(assert (=> b!438785 (= res!259268 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13248 _keys!709))))))

(declare-fun mapIsEmpty!18951 () Bool)

(declare-fun mapRes!18951 () Bool)

(assert (=> mapIsEmpty!18951 mapRes!18951))

(declare-fun b!438786 () Bool)

(declare-fun e!258751 () Bool)

(declare-fun e!258750 () Bool)

(assert (=> b!438786 (= e!258751 (and e!258750 mapRes!18951))))

(declare-fun condMapEmpty!18951 () Bool)

(declare-datatypes ((V!16509 0))(
  ( (V!16510 (val!5821 Int)) )
))
(declare-datatypes ((ValueCell!5433 0))(
  ( (ValueCellFull!5433 (v!8064 V!16509)) (EmptyCell!5433) )
))
(declare-datatypes ((array!26901 0))(
  ( (array!26902 (arr!12897 (Array (_ BitVec 32) ValueCell!5433)) (size!13249 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26901)

(declare-fun mapDefault!18951 () ValueCell!5433)

(assert (=> b!438786 (= condMapEmpty!18951 (= (arr!12897 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5433)) mapDefault!18951)))))

(declare-fun b!438787 () Bool)

(declare-fun res!259278 () Bool)

(declare-fun e!258747 () Bool)

(assert (=> b!438787 (=> (not res!259278) (not e!258747))))

(declare-fun lt!202089 () array!26899)

(declare-datatypes ((List!7695 0))(
  ( (Nil!7692) (Cons!7691 (h!8547 (_ BitVec 64)) (t!13459 List!7695)) )
))
(declare-fun arrayNoDuplicates!0 (array!26899 (_ BitVec 32) List!7695) Bool)

(assert (=> b!438787 (= res!259278 (arrayNoDuplicates!0 lt!202089 #b00000000000000000000000000000000 Nil!7692))))

(declare-fun b!438788 () Bool)

(declare-fun e!258746 () Bool)

(declare-fun tp_is_empty!11553 () Bool)

(assert (=> b!438788 (= e!258746 tp_is_empty!11553)))

(declare-fun b!438789 () Bool)

(declare-fun e!258749 () Bool)

(assert (=> b!438789 (= e!258749 (not true))))

(declare-fun minValue!515 () V!16509)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16509)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16509)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!202092 () array!26901)

(declare-datatypes ((tuple2!7652 0))(
  ( (tuple2!7653 (_1!3836 (_ BitVec 64)) (_2!3836 V!16509)) )
))
(declare-datatypes ((List!7696 0))(
  ( (Nil!7693) (Cons!7692 (h!8548 tuple2!7652) (t!13460 List!7696)) )
))
(declare-datatypes ((ListLongMap!6579 0))(
  ( (ListLongMap!6580 (toList!3305 List!7696)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1487 (array!26899 array!26901 (_ BitVec 32) (_ BitVec 32) V!16509 V!16509 (_ BitVec 32) Int) ListLongMap!6579)

(declare-fun +!1445 (ListLongMap!6579 tuple2!7652) ListLongMap!6579)

(assert (=> b!438789 (= (getCurrentListMapNoExtraKeys!1487 lt!202089 lt!202092 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1445 (getCurrentListMapNoExtraKeys!1487 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7653 k0!794 v!412)))))

(declare-datatypes ((Unit!13005 0))(
  ( (Unit!13006) )
))
(declare-fun lt!202088 () Unit!13005)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!623 (array!26899 array!26901 (_ BitVec 32) (_ BitVec 32) V!16509 V!16509 (_ BitVec 32) (_ BitVec 64) V!16509 (_ BitVec 32) Int) Unit!13005)

(assert (=> b!438789 (= lt!202088 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!623 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!259277 () Bool)

(assert (=> start!40142 (=> (not res!259277) (not e!258748))))

(assert (=> start!40142 (= res!259277 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13248 _keys!709))))))

(assert (=> start!40142 e!258748))

(assert (=> start!40142 tp_is_empty!11553))

(assert (=> start!40142 tp!36731))

(assert (=> start!40142 true))

(declare-fun array_inv!9358 (array!26901) Bool)

(assert (=> start!40142 (and (array_inv!9358 _values!549) e!258751)))

(declare-fun array_inv!9359 (array!26899) Bool)

(assert (=> start!40142 (array_inv!9359 _keys!709)))

(declare-fun b!438790 () Bool)

(declare-fun res!259267 () Bool)

(assert (=> b!438790 (=> (not res!259267) (not e!258748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438790 (= res!259267 (validKeyInArray!0 k0!794))))

(declare-fun b!438791 () Bool)

(declare-fun res!259273 () Bool)

(assert (=> b!438791 (=> (not res!259273) (not e!258748))))

(declare-fun arrayContainsKey!0 (array!26899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438791 (= res!259273 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!438792 () Bool)

(assert (=> b!438792 (= e!258748 e!258747)))

(declare-fun res!259270 () Bool)

(assert (=> b!438792 (=> (not res!259270) (not e!258747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26899 (_ BitVec 32)) Bool)

(assert (=> b!438792 (= res!259270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202089 mask!1025))))

(assert (=> b!438792 (= lt!202089 (array!26900 (store (arr!12896 _keys!709) i!563 k0!794) (size!13248 _keys!709)))))

(declare-fun b!438793 () Bool)

(declare-fun res!259276 () Bool)

(assert (=> b!438793 (=> (not res!259276) (not e!258748))))

(assert (=> b!438793 (= res!259276 (or (= (select (arr!12896 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12896 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438794 () Bool)

(declare-fun res!259275 () Bool)

(assert (=> b!438794 (=> (not res!259275) (not e!258748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438794 (= res!259275 (validMask!0 mask!1025))))

(declare-fun b!438795 () Bool)

(assert (=> b!438795 (= e!258747 e!258749)))

(declare-fun res!259274 () Bool)

(assert (=> b!438795 (=> (not res!259274) (not e!258749))))

(assert (=> b!438795 (= res!259274 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202090 () ListLongMap!6579)

(assert (=> b!438795 (= lt!202090 (getCurrentListMapNoExtraKeys!1487 lt!202089 lt!202092 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438795 (= lt!202092 (array!26902 (store (arr!12897 _values!549) i!563 (ValueCellFull!5433 v!412)) (size!13249 _values!549)))))

(declare-fun lt!202091 () ListLongMap!6579)

(assert (=> b!438795 (= lt!202091 (getCurrentListMapNoExtraKeys!1487 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438796 () Bool)

(assert (=> b!438796 (= e!258750 tp_is_empty!11553)))

(declare-fun b!438797 () Bool)

(declare-fun res!259271 () Bool)

(assert (=> b!438797 (=> (not res!259271) (not e!258748))))

(assert (=> b!438797 (= res!259271 (and (= (size!13249 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13248 _keys!709) (size!13249 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18951 () Bool)

(declare-fun tp!36732 () Bool)

(assert (=> mapNonEmpty!18951 (= mapRes!18951 (and tp!36732 e!258746))))

(declare-fun mapValue!18951 () ValueCell!5433)

(declare-fun mapKey!18951 () (_ BitVec 32))

(declare-fun mapRest!18951 () (Array (_ BitVec 32) ValueCell!5433))

(assert (=> mapNonEmpty!18951 (= (arr!12897 _values!549) (store mapRest!18951 mapKey!18951 mapValue!18951))))

(declare-fun b!438798 () Bool)

(declare-fun res!259272 () Bool)

(assert (=> b!438798 (=> (not res!259272) (not e!258748))))

(assert (=> b!438798 (= res!259272 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7692))))

(declare-fun b!438799 () Bool)

(declare-fun res!259266 () Bool)

(assert (=> b!438799 (=> (not res!259266) (not e!258747))))

(assert (=> b!438799 (= res!259266 (bvsle from!863 i!563))))

(declare-fun b!438800 () Bool)

(declare-fun res!259269 () Bool)

(assert (=> b!438800 (=> (not res!259269) (not e!258748))))

(assert (=> b!438800 (= res!259269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40142 res!259277) b!438794))

(assert (= (and b!438794 res!259275) b!438797))

(assert (= (and b!438797 res!259271) b!438800))

(assert (= (and b!438800 res!259269) b!438798))

(assert (= (and b!438798 res!259272) b!438785))

(assert (= (and b!438785 res!259268) b!438790))

(assert (= (and b!438790 res!259267) b!438793))

(assert (= (and b!438793 res!259276) b!438791))

(assert (= (and b!438791 res!259273) b!438792))

(assert (= (and b!438792 res!259270) b!438787))

(assert (= (and b!438787 res!259278) b!438799))

(assert (= (and b!438799 res!259266) b!438795))

(assert (= (and b!438795 res!259274) b!438789))

(assert (= (and b!438786 condMapEmpty!18951) mapIsEmpty!18951))

(assert (= (and b!438786 (not condMapEmpty!18951)) mapNonEmpty!18951))

(get-info :version)

(assert (= (and mapNonEmpty!18951 ((_ is ValueCellFull!5433) mapValue!18951)) b!438788))

(assert (= (and b!438786 ((_ is ValueCellFull!5433) mapDefault!18951)) b!438796))

(assert (= start!40142 b!438786))

(declare-fun m!426171 () Bool)

(assert (=> b!438789 m!426171))

(declare-fun m!426173 () Bool)

(assert (=> b!438789 m!426173))

(assert (=> b!438789 m!426173))

(declare-fun m!426175 () Bool)

(assert (=> b!438789 m!426175))

(declare-fun m!426177 () Bool)

(assert (=> b!438789 m!426177))

(declare-fun m!426179 () Bool)

(assert (=> b!438794 m!426179))

(declare-fun m!426181 () Bool)

(assert (=> b!438795 m!426181))

(declare-fun m!426183 () Bool)

(assert (=> b!438795 m!426183))

(declare-fun m!426185 () Bool)

(assert (=> b!438795 m!426185))

(declare-fun m!426187 () Bool)

(assert (=> start!40142 m!426187))

(declare-fun m!426189 () Bool)

(assert (=> start!40142 m!426189))

(declare-fun m!426191 () Bool)

(assert (=> mapNonEmpty!18951 m!426191))

(declare-fun m!426193 () Bool)

(assert (=> b!438800 m!426193))

(declare-fun m!426195 () Bool)

(assert (=> b!438791 m!426195))

(declare-fun m!426197 () Bool)

(assert (=> b!438792 m!426197))

(declare-fun m!426199 () Bool)

(assert (=> b!438792 m!426199))

(declare-fun m!426201 () Bool)

(assert (=> b!438787 m!426201))

(declare-fun m!426203 () Bool)

(assert (=> b!438798 m!426203))

(declare-fun m!426205 () Bool)

(assert (=> b!438790 m!426205))

(declare-fun m!426207 () Bool)

(assert (=> b!438793 m!426207))

(check-sat (not b!438792) (not b!438798) tp_is_empty!11553 (not b!438787) (not b!438794) (not mapNonEmpty!18951) (not b_next!10401) (not b!438800) (not b!438795) b_and!18387 (not b!438791) (not b!438789) (not b!438790) (not start!40142))
(check-sat b_and!18387 (not b_next!10401))
