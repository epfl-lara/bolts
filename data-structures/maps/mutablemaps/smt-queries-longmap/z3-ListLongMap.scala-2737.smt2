; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40250 () Bool)

(assert start!40250)

(declare-fun b_free!10509 () Bool)

(declare-fun b_next!10509 () Bool)

(assert (=> start!40250 (= b_free!10509 (not b_next!10509))))

(declare-fun tp!37056 () Bool)

(declare-fun b_and!18495 () Bool)

(assert (=> start!40250 (= tp!37056 b_and!18495)))

(declare-fun b!441377 () Bool)

(declare-fun res!261384 () Bool)

(declare-fun e!259881 () Bool)

(assert (=> b!441377 (=> (not res!261384) (not e!259881))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27109 0))(
  ( (array!27110 (arr!13001 (Array (_ BitVec 32) (_ BitVec 64))) (size!13353 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27109)

(assert (=> b!441377 (= res!261384 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13353 _keys!709))))))

(declare-fun b!441378 () Bool)

(declare-fun e!259885 () Bool)

(declare-fun e!259879 () Bool)

(assert (=> b!441378 (= e!259885 e!259879)))

(declare-fun res!261382 () Bool)

(assert (=> b!441378 (=> (not res!261382) (not e!259879))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!441378 (= res!261382 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16653 0))(
  ( (V!16654 (val!5875 Int)) )
))
(declare-fun minValue!515 () V!16653)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202901 () array!27109)

(declare-fun zeroValue!515 () V!16653)

(declare-datatypes ((ValueCell!5487 0))(
  ( (ValueCellFull!5487 (v!8118 V!16653)) (EmptyCell!5487) )
))
(declare-datatypes ((array!27111 0))(
  ( (array!27112 (arr!13002 (Array (_ BitVec 32) ValueCell!5487)) (size!13354 (_ BitVec 32))) )
))
(declare-fun lt!202898 () array!27111)

(declare-datatypes ((tuple2!7740 0))(
  ( (tuple2!7741 (_1!3880 (_ BitVec 64)) (_2!3880 V!16653)) )
))
(declare-datatypes ((List!7781 0))(
  ( (Nil!7778) (Cons!7777 (h!8633 tuple2!7740) (t!13545 List!7781)) )
))
(declare-datatypes ((ListLongMap!6667 0))(
  ( (ListLongMap!6668 (toList!3349 List!7781)) )
))
(declare-fun lt!202899 () ListLongMap!6667)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1531 (array!27109 array!27111 (_ BitVec 32) (_ BitVec 32) V!16653 V!16653 (_ BitVec 32) Int) ListLongMap!6667)

(assert (=> b!441378 (= lt!202899 (getCurrentListMapNoExtraKeys!1531 lt!202901 lt!202898 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27111)

(declare-fun v!412 () V!16653)

(assert (=> b!441378 (= lt!202898 (array!27112 (store (arr!13002 _values!549) i!563 (ValueCellFull!5487 v!412)) (size!13354 _values!549)))))

(declare-fun lt!202902 () ListLongMap!6667)

(assert (=> b!441378 (= lt!202902 (getCurrentListMapNoExtraKeys!1531 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441379 () Bool)

(declare-fun res!261374 () Bool)

(assert (=> b!441379 (=> (not res!261374) (not e!259881))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441379 (= res!261374 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441380 () Bool)

(assert (=> b!441380 (= e!259879 (not true))))

(declare-fun +!1482 (ListLongMap!6667 tuple2!7740) ListLongMap!6667)

(assert (=> b!441380 (= (getCurrentListMapNoExtraKeys!1531 lt!202901 lt!202898 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1482 (getCurrentListMapNoExtraKeys!1531 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7741 k0!794 v!412)))))

(declare-datatypes ((Unit!13079 0))(
  ( (Unit!13080) )
))
(declare-fun lt!202900 () Unit!13079)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!660 (array!27109 array!27111 (_ BitVec 32) (_ BitVec 32) V!16653 V!16653 (_ BitVec 32) (_ BitVec 64) V!16653 (_ BitVec 32) Int) Unit!13079)

(assert (=> b!441380 (= lt!202900 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!660 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!261373 () Bool)

(assert (=> start!40250 (=> (not res!261373) (not e!259881))))

(assert (=> start!40250 (= res!261373 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13353 _keys!709))))))

(assert (=> start!40250 e!259881))

(declare-fun tp_is_empty!11661 () Bool)

(assert (=> start!40250 tp_is_empty!11661))

(assert (=> start!40250 tp!37056))

(assert (=> start!40250 true))

(declare-fun e!259880 () Bool)

(declare-fun array_inv!9426 (array!27111) Bool)

(assert (=> start!40250 (and (array_inv!9426 _values!549) e!259880)))

(declare-fun array_inv!9427 (array!27109) Bool)

(assert (=> start!40250 (array_inv!9427 _keys!709)))

(declare-fun b!441381 () Bool)

(declare-fun e!259883 () Bool)

(declare-fun mapRes!19113 () Bool)

(assert (=> b!441381 (= e!259880 (and e!259883 mapRes!19113))))

(declare-fun condMapEmpty!19113 () Bool)

(declare-fun mapDefault!19113 () ValueCell!5487)

(assert (=> b!441381 (= condMapEmpty!19113 (= (arr!13002 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5487)) mapDefault!19113)))))

(declare-fun b!441382 () Bool)

(assert (=> b!441382 (= e!259881 e!259885)))

(declare-fun res!261380 () Bool)

(assert (=> b!441382 (=> (not res!261380) (not e!259885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27109 (_ BitVec 32)) Bool)

(assert (=> b!441382 (= res!261380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202901 mask!1025))))

(assert (=> b!441382 (= lt!202901 (array!27110 (store (arr!13001 _keys!709) i!563 k0!794) (size!13353 _keys!709)))))

(declare-fun b!441383 () Bool)

(declare-fun res!261383 () Bool)

(assert (=> b!441383 (=> (not res!261383) (not e!259885))))

(declare-datatypes ((List!7782 0))(
  ( (Nil!7779) (Cons!7778 (h!8634 (_ BitVec 64)) (t!13546 List!7782)) )
))
(declare-fun arrayNoDuplicates!0 (array!27109 (_ BitVec 32) List!7782) Bool)

(assert (=> b!441383 (= res!261383 (arrayNoDuplicates!0 lt!202901 #b00000000000000000000000000000000 Nil!7779))))

(declare-fun b!441384 () Bool)

(declare-fun res!261381 () Bool)

(assert (=> b!441384 (=> (not res!261381) (not e!259881))))

(assert (=> b!441384 (= res!261381 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7779))))

(declare-fun b!441385 () Bool)

(declare-fun res!261377 () Bool)

(assert (=> b!441385 (=> (not res!261377) (not e!259881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441385 (= res!261377 (validKeyInArray!0 k0!794))))

(declare-fun b!441386 () Bool)

(declare-fun res!261372 () Bool)

(assert (=> b!441386 (=> (not res!261372) (not e!259881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441386 (= res!261372 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19113 () Bool)

(assert (=> mapIsEmpty!19113 mapRes!19113))

(declare-fun b!441387 () Bool)

(declare-fun e!259884 () Bool)

(assert (=> b!441387 (= e!259884 tp_is_empty!11661)))

(declare-fun b!441388 () Bool)

(assert (=> b!441388 (= e!259883 tp_is_empty!11661)))

(declare-fun b!441389 () Bool)

(declare-fun res!261375 () Bool)

(assert (=> b!441389 (=> (not res!261375) (not e!259881))))

(assert (=> b!441389 (= res!261375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19113 () Bool)

(declare-fun tp!37055 () Bool)

(assert (=> mapNonEmpty!19113 (= mapRes!19113 (and tp!37055 e!259884))))

(declare-fun mapValue!19113 () ValueCell!5487)

(declare-fun mapKey!19113 () (_ BitVec 32))

(declare-fun mapRest!19113 () (Array (_ BitVec 32) ValueCell!5487))

(assert (=> mapNonEmpty!19113 (= (arr!13002 _values!549) (store mapRest!19113 mapKey!19113 mapValue!19113))))

(declare-fun b!441390 () Bool)

(declare-fun res!261378 () Bool)

(assert (=> b!441390 (=> (not res!261378) (not e!259881))))

(assert (=> b!441390 (= res!261378 (or (= (select (arr!13001 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13001 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441391 () Bool)

(declare-fun res!261379 () Bool)

(assert (=> b!441391 (=> (not res!261379) (not e!259881))))

(assert (=> b!441391 (= res!261379 (and (= (size!13354 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13353 _keys!709) (size!13354 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441392 () Bool)

(declare-fun res!261376 () Bool)

(assert (=> b!441392 (=> (not res!261376) (not e!259885))))

(assert (=> b!441392 (= res!261376 (bvsle from!863 i!563))))

(assert (= (and start!40250 res!261373) b!441386))

(assert (= (and b!441386 res!261372) b!441391))

(assert (= (and b!441391 res!261379) b!441389))

(assert (= (and b!441389 res!261375) b!441384))

(assert (= (and b!441384 res!261381) b!441377))

(assert (= (and b!441377 res!261384) b!441385))

(assert (= (and b!441385 res!261377) b!441390))

(assert (= (and b!441390 res!261378) b!441379))

(assert (= (and b!441379 res!261374) b!441382))

(assert (= (and b!441382 res!261380) b!441383))

(assert (= (and b!441383 res!261383) b!441392))

(assert (= (and b!441392 res!261376) b!441378))

(assert (= (and b!441378 res!261382) b!441380))

(assert (= (and b!441381 condMapEmpty!19113) mapIsEmpty!19113))

(assert (= (and b!441381 (not condMapEmpty!19113)) mapNonEmpty!19113))

(get-info :version)

(assert (= (and mapNonEmpty!19113 ((_ is ValueCellFull!5487) mapValue!19113)) b!441387))

(assert (= (and b!441381 ((_ is ValueCellFull!5487) mapDefault!19113)) b!441388))

(assert (= start!40250 b!441381))

(declare-fun m!428223 () Bool)

(assert (=> start!40250 m!428223))

(declare-fun m!428225 () Bool)

(assert (=> start!40250 m!428225))

(declare-fun m!428227 () Bool)

(assert (=> b!441386 m!428227))

(declare-fun m!428229 () Bool)

(assert (=> b!441389 m!428229))

(declare-fun m!428231 () Bool)

(assert (=> b!441379 m!428231))

(declare-fun m!428233 () Bool)

(assert (=> b!441380 m!428233))

(declare-fun m!428235 () Bool)

(assert (=> b!441380 m!428235))

(assert (=> b!441380 m!428235))

(declare-fun m!428237 () Bool)

(assert (=> b!441380 m!428237))

(declare-fun m!428239 () Bool)

(assert (=> b!441380 m!428239))

(declare-fun m!428241 () Bool)

(assert (=> b!441382 m!428241))

(declare-fun m!428243 () Bool)

(assert (=> b!441382 m!428243))

(declare-fun m!428245 () Bool)

(assert (=> b!441384 m!428245))

(declare-fun m!428247 () Bool)

(assert (=> b!441383 m!428247))

(declare-fun m!428249 () Bool)

(assert (=> mapNonEmpty!19113 m!428249))

(declare-fun m!428251 () Bool)

(assert (=> b!441385 m!428251))

(declare-fun m!428253 () Bool)

(assert (=> b!441390 m!428253))

(declare-fun m!428255 () Bool)

(assert (=> b!441378 m!428255))

(declare-fun m!428257 () Bool)

(assert (=> b!441378 m!428257))

(declare-fun m!428259 () Bool)

(assert (=> b!441378 m!428259))

(check-sat (not mapNonEmpty!19113) (not b!441385) (not b!441379) (not b!441386) (not b!441382) (not b!441380) (not b_next!10509) (not start!40250) (not b!441383) (not b!441389) (not b!441378) (not b!441384) b_and!18495 tp_is_empty!11661)
(check-sat b_and!18495 (not b_next!10509))
