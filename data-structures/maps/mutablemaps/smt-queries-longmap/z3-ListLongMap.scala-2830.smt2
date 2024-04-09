; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40954 () Bool)

(assert start!40954)

(declare-fun b_free!10881 () Bool)

(declare-fun b_next!10881 () Bool)

(assert (=> start!40954 (= b_free!10881 (not b_next!10881))))

(declare-fun tp!38469 () Bool)

(declare-fun b_and!19041 () Bool)

(assert (=> start!40954 (= tp!38469 b_and!19041)))

(declare-fun b!455252 () Bool)

(declare-fun res!271533 () Bool)

(declare-fun e!266178 () Bool)

(assert (=> b!455252 (=> (not res!271533) (not e!266178))))

(declare-datatypes ((array!28207 0))(
  ( (array!28208 (arr!13544 (Array (_ BitVec 32) (_ BitVec 64))) (size!13896 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28207)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28207 (_ BitVec 32)) Bool)

(assert (=> b!455252 (= res!271533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455253 () Bool)

(declare-fun e!266175 () Bool)

(declare-fun tp_is_empty!12219 () Bool)

(assert (=> b!455253 (= e!266175 tp_is_empty!12219)))

(declare-fun b!455254 () Bool)

(declare-fun e!266180 () Bool)

(declare-fun e!266179 () Bool)

(declare-fun mapRes!19969 () Bool)

(assert (=> b!455254 (= e!266180 (and e!266179 mapRes!19969))))

(declare-fun condMapEmpty!19969 () Bool)

(declare-datatypes ((V!17397 0))(
  ( (V!17398 (val!6154 Int)) )
))
(declare-datatypes ((ValueCell!5766 0))(
  ( (ValueCellFull!5766 (v!8416 V!17397)) (EmptyCell!5766) )
))
(declare-datatypes ((array!28209 0))(
  ( (array!28210 (arr!13545 (Array (_ BitVec 32) ValueCell!5766)) (size!13897 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28209)

(declare-fun mapDefault!19969 () ValueCell!5766)

(assert (=> b!455254 (= condMapEmpty!19969 (= (arr!13545 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5766)) mapDefault!19969)))))

(declare-fun res!271537 () Bool)

(assert (=> start!40954 (=> (not res!271537) (not e!266178))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40954 (= res!271537 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13896 _keys!709))))))

(assert (=> start!40954 e!266178))

(assert (=> start!40954 tp_is_empty!12219))

(assert (=> start!40954 tp!38469))

(assert (=> start!40954 true))

(declare-fun array_inv!9798 (array!28209) Bool)

(assert (=> start!40954 (and (array_inv!9798 _values!549) e!266180)))

(declare-fun array_inv!9799 (array!28207) Bool)

(assert (=> start!40954 (array_inv!9799 _keys!709)))

(declare-fun b!455255 () Bool)

(declare-fun e!266176 () Bool)

(assert (=> b!455255 (= e!266178 e!266176)))

(declare-fun res!271531 () Bool)

(assert (=> b!455255 (=> (not res!271531) (not e!266176))))

(declare-fun lt!206300 () array!28207)

(assert (=> b!455255 (= res!271531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206300 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455255 (= lt!206300 (array!28208 (store (arr!13544 _keys!709) i!563 k0!794) (size!13896 _keys!709)))))

(declare-fun b!455256 () Bool)

(declare-fun res!271529 () Bool)

(assert (=> b!455256 (=> (not res!271529) (not e!266178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455256 (= res!271529 (validMask!0 mask!1025))))

(declare-fun b!455257 () Bool)

(declare-fun res!271527 () Bool)

(assert (=> b!455257 (=> (not res!271527) (not e!266178))))

(assert (=> b!455257 (= res!271527 (or (= (select (arr!13544 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13544 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455258 () Bool)

(declare-fun res!271528 () Bool)

(assert (=> b!455258 (=> (not res!271528) (not e!266178))))

(declare-datatypes ((List!8160 0))(
  ( (Nil!8157) (Cons!8156 (h!9012 (_ BitVec 64)) (t!13996 List!8160)) )
))
(declare-fun arrayNoDuplicates!0 (array!28207 (_ BitVec 32) List!8160) Bool)

(assert (=> b!455258 (= res!271528 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8157))))

(declare-fun b!455259 () Bool)

(declare-fun res!271535 () Bool)

(assert (=> b!455259 (=> (not res!271535) (not e!266178))))

(assert (=> b!455259 (= res!271535 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13896 _keys!709))))))

(declare-fun b!455260 () Bool)

(declare-fun res!271532 () Bool)

(assert (=> b!455260 (=> (not res!271532) (not e!266176))))

(assert (=> b!455260 (= res!271532 (bvsle from!863 i!563))))

(declare-fun b!455261 () Bool)

(declare-fun res!271530 () Bool)

(assert (=> b!455261 (=> (not res!271530) (not e!266178))))

(declare-fun arrayContainsKey!0 (array!28207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455261 (= res!271530 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!455262 () Bool)

(assert (=> b!455262 (= e!266179 tp_is_empty!12219)))

(declare-fun b!455263 () Bool)

(declare-fun res!271538 () Bool)

(assert (=> b!455263 (=> (not res!271538) (not e!266178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455263 (= res!271538 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!19969 () Bool)

(assert (=> mapIsEmpty!19969 mapRes!19969))

(declare-fun b!455264 () Bool)

(assert (=> b!455264 (= e!266176 false)))

(declare-fun minValue!515 () V!17397)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8052 0))(
  ( (tuple2!8053 (_1!4036 (_ BitVec 64)) (_2!4036 V!17397)) )
))
(declare-datatypes ((List!8161 0))(
  ( (Nil!8158) (Cons!8157 (h!9013 tuple2!8052) (t!13997 List!8161)) )
))
(declare-datatypes ((ListLongMap!6979 0))(
  ( (ListLongMap!6980 (toList!3505 List!8161)) )
))
(declare-fun lt!206299 () ListLongMap!6979)

(declare-fun v!412 () V!17397)

(declare-fun zeroValue!515 () V!17397)

(declare-fun getCurrentListMapNoExtraKeys!1681 (array!28207 array!28209 (_ BitVec 32) (_ BitVec 32) V!17397 V!17397 (_ BitVec 32) Int) ListLongMap!6979)

(assert (=> b!455264 (= lt!206299 (getCurrentListMapNoExtraKeys!1681 lt!206300 (array!28210 (store (arr!13545 _values!549) i!563 (ValueCellFull!5766 v!412)) (size!13897 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206301 () ListLongMap!6979)

(assert (=> b!455264 (= lt!206301 (getCurrentListMapNoExtraKeys!1681 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455265 () Bool)

(declare-fun res!271536 () Bool)

(assert (=> b!455265 (=> (not res!271536) (not e!266178))))

(assert (=> b!455265 (= res!271536 (and (= (size!13897 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13896 _keys!709) (size!13897 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19969 () Bool)

(declare-fun tp!38470 () Bool)

(assert (=> mapNonEmpty!19969 (= mapRes!19969 (and tp!38470 e!266175))))

(declare-fun mapValue!19969 () ValueCell!5766)

(declare-fun mapRest!19969 () (Array (_ BitVec 32) ValueCell!5766))

(declare-fun mapKey!19969 () (_ BitVec 32))

(assert (=> mapNonEmpty!19969 (= (arr!13545 _values!549) (store mapRest!19969 mapKey!19969 mapValue!19969))))

(declare-fun b!455266 () Bool)

(declare-fun res!271534 () Bool)

(assert (=> b!455266 (=> (not res!271534) (not e!266176))))

(assert (=> b!455266 (= res!271534 (arrayNoDuplicates!0 lt!206300 #b00000000000000000000000000000000 Nil!8157))))

(assert (= (and start!40954 res!271537) b!455256))

(assert (= (and b!455256 res!271529) b!455265))

(assert (= (and b!455265 res!271536) b!455252))

(assert (= (and b!455252 res!271533) b!455258))

(assert (= (and b!455258 res!271528) b!455259))

(assert (= (and b!455259 res!271535) b!455263))

(assert (= (and b!455263 res!271538) b!455257))

(assert (= (and b!455257 res!271527) b!455261))

(assert (= (and b!455261 res!271530) b!455255))

(assert (= (and b!455255 res!271531) b!455266))

(assert (= (and b!455266 res!271534) b!455260))

(assert (= (and b!455260 res!271532) b!455264))

(assert (= (and b!455254 condMapEmpty!19969) mapIsEmpty!19969))

(assert (= (and b!455254 (not condMapEmpty!19969)) mapNonEmpty!19969))

(get-info :version)

(assert (= (and mapNonEmpty!19969 ((_ is ValueCellFull!5766) mapValue!19969)) b!455253))

(assert (= (and b!455254 ((_ is ValueCellFull!5766) mapDefault!19969)) b!455262))

(assert (= start!40954 b!455254))

(declare-fun m!439071 () Bool)

(assert (=> mapNonEmpty!19969 m!439071))

(declare-fun m!439073 () Bool)

(assert (=> b!455256 m!439073))

(declare-fun m!439075 () Bool)

(assert (=> b!455255 m!439075))

(declare-fun m!439077 () Bool)

(assert (=> b!455255 m!439077))

(declare-fun m!439079 () Bool)

(assert (=> b!455266 m!439079))

(declare-fun m!439081 () Bool)

(assert (=> b!455252 m!439081))

(declare-fun m!439083 () Bool)

(assert (=> b!455257 m!439083))

(declare-fun m!439085 () Bool)

(assert (=> b!455258 m!439085))

(declare-fun m!439087 () Bool)

(assert (=> b!455264 m!439087))

(declare-fun m!439089 () Bool)

(assert (=> b!455264 m!439089))

(declare-fun m!439091 () Bool)

(assert (=> b!455264 m!439091))

(declare-fun m!439093 () Bool)

(assert (=> b!455263 m!439093))

(declare-fun m!439095 () Bool)

(assert (=> b!455261 m!439095))

(declare-fun m!439097 () Bool)

(assert (=> start!40954 m!439097))

(declare-fun m!439099 () Bool)

(assert (=> start!40954 m!439099))

(check-sat (not start!40954) tp_is_empty!12219 (not b!455266) (not b_next!10881) (not b!455255) b_and!19041 (not b!455256) (not b!455264) (not b!455263) (not b!455261) (not b!455258) (not b!455252) (not mapNonEmpty!19969))
(check-sat b_and!19041 (not b_next!10881))
