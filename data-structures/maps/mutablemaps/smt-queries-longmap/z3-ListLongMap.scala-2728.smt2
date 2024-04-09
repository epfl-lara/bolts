; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40196 () Bool)

(assert start!40196)

(declare-fun b_free!10455 () Bool)

(declare-fun b_next!10455 () Bool)

(assert (=> start!40196 (= b_free!10455 (not b_next!10455))))

(declare-fun tp!36893 () Bool)

(declare-fun b_and!18441 () Bool)

(assert (=> start!40196 (= tp!36893 b_and!18441)))

(declare-fun b!440081 () Bool)

(declare-fun res!260320 () Bool)

(declare-fun e!259318 () Bool)

(assert (=> b!440081 (=> (not res!260320) (not e!259318))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440081 (= res!260320 (validKeyInArray!0 k0!794))))

(declare-fun b!440082 () Bool)

(declare-fun res!260319 () Bool)

(assert (=> b!440082 (=> (not res!260319) (not e!259318))))

(declare-datatypes ((array!27005 0))(
  ( (array!27006 (arr!12949 (Array (_ BitVec 32) (_ BitVec 64))) (size!13301 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27005)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16581 0))(
  ( (V!16582 (val!5848 Int)) )
))
(declare-datatypes ((ValueCell!5460 0))(
  ( (ValueCellFull!5460 (v!8091 V!16581)) (EmptyCell!5460) )
))
(declare-datatypes ((array!27007 0))(
  ( (array!27008 (arr!12950 (Array (_ BitVec 32) ValueCell!5460)) (size!13302 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27007)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!440082 (= res!260319 (and (= (size!13302 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13301 _keys!709) (size!13302 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!260329 () Bool)

(assert (=> start!40196 (=> (not res!260329) (not e!259318))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40196 (= res!260329 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13301 _keys!709))))))

(assert (=> start!40196 e!259318))

(declare-fun tp_is_empty!11607 () Bool)

(assert (=> start!40196 tp_is_empty!11607))

(assert (=> start!40196 tp!36893))

(assert (=> start!40196 true))

(declare-fun e!259312 () Bool)

(declare-fun array_inv!9390 (array!27007) Bool)

(assert (=> start!40196 (and (array_inv!9390 _values!549) e!259312)))

(declare-fun array_inv!9391 (array!27005) Bool)

(assert (=> start!40196 (array_inv!9391 _keys!709)))

(declare-fun b!440083 () Bool)

(declare-fun res!260322 () Bool)

(declare-fun e!259315 () Bool)

(assert (=> b!440083 (=> (not res!260322) (not e!259315))))

(declare-fun lt!202493 () array!27005)

(declare-datatypes ((List!7737 0))(
  ( (Nil!7734) (Cons!7733 (h!8589 (_ BitVec 64)) (t!13501 List!7737)) )
))
(declare-fun arrayNoDuplicates!0 (array!27005 (_ BitVec 32) List!7737) Bool)

(assert (=> b!440083 (= res!260322 (arrayNoDuplicates!0 lt!202493 #b00000000000000000000000000000000 Nil!7734))))

(declare-fun b!440084 () Bool)

(declare-fun res!260331 () Bool)

(assert (=> b!440084 (=> (not res!260331) (not e!259318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27005 (_ BitVec 32)) Bool)

(assert (=> b!440084 (= res!260331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440085 () Bool)

(declare-fun res!260324 () Bool)

(assert (=> b!440085 (=> (not res!260324) (not e!259318))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440085 (= res!260324 (or (= (select (arr!12949 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12949 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440086 () Bool)

(declare-fun e!259314 () Bool)

(assert (=> b!440086 (= e!259314 tp_is_empty!11607)))

(declare-fun b!440087 () Bool)

(declare-fun e!259313 () Bool)

(assert (=> b!440087 (= e!259313 (not true))))

(declare-fun minValue!515 () V!16581)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202494 () array!27007)

(declare-fun zeroValue!515 () V!16581)

(declare-fun v!412 () V!16581)

(declare-datatypes ((tuple2!7696 0))(
  ( (tuple2!7697 (_1!3858 (_ BitVec 64)) (_2!3858 V!16581)) )
))
(declare-datatypes ((List!7738 0))(
  ( (Nil!7735) (Cons!7734 (h!8590 tuple2!7696) (t!13502 List!7738)) )
))
(declare-datatypes ((ListLongMap!6623 0))(
  ( (ListLongMap!6624 (toList!3327 List!7738)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1509 (array!27005 array!27007 (_ BitVec 32) (_ BitVec 32) V!16581 V!16581 (_ BitVec 32) Int) ListLongMap!6623)

(declare-fun +!1463 (ListLongMap!6623 tuple2!7696) ListLongMap!6623)

(assert (=> b!440087 (= (getCurrentListMapNoExtraKeys!1509 lt!202493 lt!202494 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1463 (getCurrentListMapNoExtraKeys!1509 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7697 k0!794 v!412)))))

(declare-datatypes ((Unit!13041 0))(
  ( (Unit!13042) )
))
(declare-fun lt!202495 () Unit!13041)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!641 (array!27005 array!27007 (_ BitVec 32) (_ BitVec 32) V!16581 V!16581 (_ BitVec 32) (_ BitVec 64) V!16581 (_ BitVec 32) Int) Unit!13041)

(assert (=> b!440087 (= lt!202495 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!641 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19032 () Bool)

(declare-fun mapRes!19032 () Bool)

(assert (=> mapIsEmpty!19032 mapRes!19032))

(declare-fun mapNonEmpty!19032 () Bool)

(declare-fun tp!36894 () Bool)

(assert (=> mapNonEmpty!19032 (= mapRes!19032 (and tp!36894 e!259314))))

(declare-fun mapRest!19032 () (Array (_ BitVec 32) ValueCell!5460))

(declare-fun mapKey!19032 () (_ BitVec 32))

(declare-fun mapValue!19032 () ValueCell!5460)

(assert (=> mapNonEmpty!19032 (= (arr!12950 _values!549) (store mapRest!19032 mapKey!19032 mapValue!19032))))

(declare-fun b!440088 () Bool)

(declare-fun res!260323 () Bool)

(assert (=> b!440088 (=> (not res!260323) (not e!259318))))

(assert (=> b!440088 (= res!260323 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7734))))

(declare-fun b!440089 () Bool)

(declare-fun res!260328 () Bool)

(assert (=> b!440089 (=> (not res!260328) (not e!259315))))

(assert (=> b!440089 (= res!260328 (bvsle from!863 i!563))))

(declare-fun b!440090 () Bool)

(declare-fun res!260321 () Bool)

(assert (=> b!440090 (=> (not res!260321) (not e!259318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440090 (= res!260321 (validMask!0 mask!1025))))

(declare-fun b!440091 () Bool)

(declare-fun e!259317 () Bool)

(assert (=> b!440091 (= e!259312 (and e!259317 mapRes!19032))))

(declare-fun condMapEmpty!19032 () Bool)

(declare-fun mapDefault!19032 () ValueCell!5460)

(assert (=> b!440091 (= condMapEmpty!19032 (= (arr!12950 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5460)) mapDefault!19032)))))

(declare-fun b!440092 () Bool)

(assert (=> b!440092 (= e!259318 e!259315)))

(declare-fun res!260326 () Bool)

(assert (=> b!440092 (=> (not res!260326) (not e!259315))))

(assert (=> b!440092 (= res!260326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202493 mask!1025))))

(assert (=> b!440092 (= lt!202493 (array!27006 (store (arr!12949 _keys!709) i!563 k0!794) (size!13301 _keys!709)))))

(declare-fun b!440093 () Bool)

(assert (=> b!440093 (= e!259317 tp_is_empty!11607)))

(declare-fun b!440094 () Bool)

(declare-fun res!260330 () Bool)

(assert (=> b!440094 (=> (not res!260330) (not e!259318))))

(declare-fun arrayContainsKey!0 (array!27005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440094 (= res!260330 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440095 () Bool)

(assert (=> b!440095 (= e!259315 e!259313)))

(declare-fun res!260327 () Bool)

(assert (=> b!440095 (=> (not res!260327) (not e!259313))))

(assert (=> b!440095 (= res!260327 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202497 () ListLongMap!6623)

(assert (=> b!440095 (= lt!202497 (getCurrentListMapNoExtraKeys!1509 lt!202493 lt!202494 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440095 (= lt!202494 (array!27008 (store (arr!12950 _values!549) i!563 (ValueCellFull!5460 v!412)) (size!13302 _values!549)))))

(declare-fun lt!202496 () ListLongMap!6623)

(assert (=> b!440095 (= lt!202496 (getCurrentListMapNoExtraKeys!1509 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440096 () Bool)

(declare-fun res!260325 () Bool)

(assert (=> b!440096 (=> (not res!260325) (not e!259318))))

(assert (=> b!440096 (= res!260325 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13301 _keys!709))))))

(assert (= (and start!40196 res!260329) b!440090))

(assert (= (and b!440090 res!260321) b!440082))

(assert (= (and b!440082 res!260319) b!440084))

(assert (= (and b!440084 res!260331) b!440088))

(assert (= (and b!440088 res!260323) b!440096))

(assert (= (and b!440096 res!260325) b!440081))

(assert (= (and b!440081 res!260320) b!440085))

(assert (= (and b!440085 res!260324) b!440094))

(assert (= (and b!440094 res!260330) b!440092))

(assert (= (and b!440092 res!260326) b!440083))

(assert (= (and b!440083 res!260322) b!440089))

(assert (= (and b!440089 res!260328) b!440095))

(assert (= (and b!440095 res!260327) b!440087))

(assert (= (and b!440091 condMapEmpty!19032) mapIsEmpty!19032))

(assert (= (and b!440091 (not condMapEmpty!19032)) mapNonEmpty!19032))

(get-info :version)

(assert (= (and mapNonEmpty!19032 ((_ is ValueCellFull!5460) mapValue!19032)) b!440086))

(assert (= (and b!440091 ((_ is ValueCellFull!5460) mapDefault!19032)) b!440093))

(assert (= start!40196 b!440091))

(declare-fun m!427197 () Bool)

(assert (=> b!440088 m!427197))

(declare-fun m!427199 () Bool)

(assert (=> b!440092 m!427199))

(declare-fun m!427201 () Bool)

(assert (=> b!440092 m!427201))

(declare-fun m!427203 () Bool)

(assert (=> start!40196 m!427203))

(declare-fun m!427205 () Bool)

(assert (=> start!40196 m!427205))

(declare-fun m!427207 () Bool)

(assert (=> b!440095 m!427207))

(declare-fun m!427209 () Bool)

(assert (=> b!440095 m!427209))

(declare-fun m!427211 () Bool)

(assert (=> b!440095 m!427211))

(declare-fun m!427213 () Bool)

(assert (=> b!440085 m!427213))

(declare-fun m!427215 () Bool)

(assert (=> b!440087 m!427215))

(declare-fun m!427217 () Bool)

(assert (=> b!440087 m!427217))

(assert (=> b!440087 m!427217))

(declare-fun m!427219 () Bool)

(assert (=> b!440087 m!427219))

(declare-fun m!427221 () Bool)

(assert (=> b!440087 m!427221))

(declare-fun m!427223 () Bool)

(assert (=> b!440081 m!427223))

(declare-fun m!427225 () Bool)

(assert (=> b!440090 m!427225))

(declare-fun m!427227 () Bool)

(assert (=> b!440084 m!427227))

(declare-fun m!427229 () Bool)

(assert (=> b!440094 m!427229))

(declare-fun m!427231 () Bool)

(assert (=> mapNonEmpty!19032 m!427231))

(declare-fun m!427233 () Bool)

(assert (=> b!440083 m!427233))

(check-sat (not b!440084) (not b_next!10455) (not b!440094) (not mapNonEmpty!19032) b_and!18441 (not b!440092) (not b!440090) (not b!440081) tp_is_empty!11607 (not start!40196) (not b!440095) (not b!440083) (not b!440087) (not b!440088))
(check-sat b_and!18441 (not b_next!10455))
