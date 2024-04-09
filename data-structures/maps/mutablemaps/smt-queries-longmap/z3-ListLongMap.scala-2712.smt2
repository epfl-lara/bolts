; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40100 () Bool)

(assert start!40100)

(declare-fun b_free!10359 () Bool)

(declare-fun b_next!10359 () Bool)

(assert (=> start!40100 (= b_free!10359 (not b_next!10359))))

(declare-fun tp!36606 () Bool)

(declare-fun b_and!18345 () Bool)

(assert (=> start!40100 (= tp!36606 b_and!18345)))

(declare-fun b!437777 () Bool)

(declare-fun res!258455 () Bool)

(declare-fun e!258304 () Bool)

(assert (=> b!437777 (=> (not res!258455) (not e!258304))))

(declare-datatypes ((array!26819 0))(
  ( (array!26820 (arr!12856 (Array (_ BitVec 32) (_ BitVec 64))) (size!13208 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26819)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437777 (= res!258455 (or (= (select (arr!12856 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12856 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437778 () Bool)

(declare-fun res!258447 () Bool)

(declare-fun e!258305 () Bool)

(assert (=> b!437778 (=> (not res!258447) (not e!258305))))

(declare-fun lt!201775 () array!26819)

(declare-datatypes ((List!7663 0))(
  ( (Nil!7660) (Cons!7659 (h!8515 (_ BitVec 64)) (t!13427 List!7663)) )
))
(declare-fun arrayNoDuplicates!0 (array!26819 (_ BitVec 32) List!7663) Bool)

(assert (=> b!437778 (= res!258447 (arrayNoDuplicates!0 lt!201775 #b00000000000000000000000000000000 Nil!7660))))

(declare-fun b!437779 () Bool)

(declare-fun e!258310 () Bool)

(assert (=> b!437779 (= e!258310 (not true))))

(declare-datatypes ((V!16453 0))(
  ( (V!16454 (val!5800 Int)) )
))
(declare-fun minValue!515 () V!16453)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5412 0))(
  ( (ValueCellFull!5412 (v!8043 V!16453)) (EmptyCell!5412) )
))
(declare-datatypes ((array!26821 0))(
  ( (array!26822 (arr!12857 (Array (_ BitVec 32) ValueCell!5412)) (size!13209 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26821)

(declare-fun zeroValue!515 () V!16453)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!201774 () array!26821)

(declare-fun v!412 () V!16453)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7618 0))(
  ( (tuple2!7619 (_1!3819 (_ BitVec 64)) (_2!3819 V!16453)) )
))
(declare-datatypes ((List!7664 0))(
  ( (Nil!7661) (Cons!7660 (h!8516 tuple2!7618) (t!13428 List!7664)) )
))
(declare-datatypes ((ListLongMap!6545 0))(
  ( (ListLongMap!6546 (toList!3288 List!7664)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1470 (array!26819 array!26821 (_ BitVec 32) (_ BitVec 32) V!16453 V!16453 (_ BitVec 32) Int) ListLongMap!6545)

(declare-fun +!1431 (ListLongMap!6545 tuple2!7618) ListLongMap!6545)

(assert (=> b!437779 (= (getCurrentListMapNoExtraKeys!1470 lt!201775 lt!201774 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1431 (getCurrentListMapNoExtraKeys!1470 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7619 k0!794 v!412)))))

(declare-datatypes ((Unit!12977 0))(
  ( (Unit!12978) )
))
(declare-fun lt!201776 () Unit!12977)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!609 (array!26819 array!26821 (_ BitVec 32) (_ BitVec 32) V!16453 V!16453 (_ BitVec 32) (_ BitVec 64) V!16453 (_ BitVec 32) Int) Unit!12977)

(assert (=> b!437779 (= lt!201776 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!609 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437780 () Bool)

(declare-fun res!258450 () Bool)

(assert (=> b!437780 (=> (not res!258450) (not e!258305))))

(assert (=> b!437780 (= res!258450 (bvsle from!863 i!563))))

(declare-fun b!437781 () Bool)

(declare-fun e!258308 () Bool)

(declare-fun tp_is_empty!11511 () Bool)

(assert (=> b!437781 (= e!258308 tp_is_empty!11511)))

(declare-fun b!437782 () Bool)

(assert (=> b!437782 (= e!258304 e!258305)))

(declare-fun res!258452 () Bool)

(assert (=> b!437782 (=> (not res!258452) (not e!258305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26819 (_ BitVec 32)) Bool)

(assert (=> b!437782 (= res!258452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201775 mask!1025))))

(assert (=> b!437782 (= lt!201775 (array!26820 (store (arr!12856 _keys!709) i!563 k0!794) (size!13208 _keys!709)))))

(declare-fun b!437783 () Bool)

(declare-fun res!258451 () Bool)

(assert (=> b!437783 (=> (not res!258451) (not e!258304))))

(assert (=> b!437783 (= res!258451 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7660))))

(declare-fun mapIsEmpty!18888 () Bool)

(declare-fun mapRes!18888 () Bool)

(assert (=> mapIsEmpty!18888 mapRes!18888))

(declare-fun b!437784 () Bool)

(declare-fun res!258459 () Bool)

(assert (=> b!437784 (=> (not res!258459) (not e!258304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437784 (= res!258459 (validMask!0 mask!1025))))

(declare-fun b!437785 () Bool)

(declare-fun res!258457 () Bool)

(assert (=> b!437785 (=> (not res!258457) (not e!258304))))

(assert (=> b!437785 (= res!258457 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13208 _keys!709))))))

(declare-fun mapNonEmpty!18888 () Bool)

(declare-fun tp!36605 () Bool)

(assert (=> mapNonEmpty!18888 (= mapRes!18888 (and tp!36605 e!258308))))

(declare-fun mapKey!18888 () (_ BitVec 32))

(declare-fun mapValue!18888 () ValueCell!5412)

(declare-fun mapRest!18888 () (Array (_ BitVec 32) ValueCell!5412))

(assert (=> mapNonEmpty!18888 (= (arr!12857 _values!549) (store mapRest!18888 mapKey!18888 mapValue!18888))))

(declare-fun b!437787 () Bool)

(declare-fun res!258453 () Bool)

(assert (=> b!437787 (=> (not res!258453) (not e!258304))))

(declare-fun arrayContainsKey!0 (array!26819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437787 (= res!258453 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437788 () Bool)

(declare-fun res!258458 () Bool)

(assert (=> b!437788 (=> (not res!258458) (not e!258304))))

(assert (=> b!437788 (= res!258458 (and (= (size!13209 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13208 _keys!709) (size!13209 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437789 () Bool)

(declare-fun res!258449 () Bool)

(assert (=> b!437789 (=> (not res!258449) (not e!258304))))

(assert (=> b!437789 (= res!258449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437790 () Bool)

(declare-fun e!258306 () Bool)

(declare-fun e!258309 () Bool)

(assert (=> b!437790 (= e!258306 (and e!258309 mapRes!18888))))

(declare-fun condMapEmpty!18888 () Bool)

(declare-fun mapDefault!18888 () ValueCell!5412)

(assert (=> b!437790 (= condMapEmpty!18888 (= (arr!12857 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5412)) mapDefault!18888)))))

(declare-fun b!437791 () Bool)

(assert (=> b!437791 (= e!258305 e!258310)))

(declare-fun res!258456 () Bool)

(assert (=> b!437791 (=> (not res!258456) (not e!258310))))

(assert (=> b!437791 (= res!258456 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201773 () ListLongMap!6545)

(assert (=> b!437791 (= lt!201773 (getCurrentListMapNoExtraKeys!1470 lt!201775 lt!201774 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437791 (= lt!201774 (array!26822 (store (arr!12857 _values!549) i!563 (ValueCellFull!5412 v!412)) (size!13209 _values!549)))))

(declare-fun lt!201777 () ListLongMap!6545)

(assert (=> b!437791 (= lt!201777 (getCurrentListMapNoExtraKeys!1470 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437792 () Bool)

(declare-fun res!258448 () Bool)

(assert (=> b!437792 (=> (not res!258448) (not e!258304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437792 (= res!258448 (validKeyInArray!0 k0!794))))

(declare-fun b!437786 () Bool)

(assert (=> b!437786 (= e!258309 tp_is_empty!11511)))

(declare-fun res!258454 () Bool)

(assert (=> start!40100 (=> (not res!258454) (not e!258304))))

(assert (=> start!40100 (= res!258454 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13208 _keys!709))))))

(assert (=> start!40100 e!258304))

(assert (=> start!40100 tp_is_empty!11511))

(assert (=> start!40100 tp!36606))

(assert (=> start!40100 true))

(declare-fun array_inv!9334 (array!26821) Bool)

(assert (=> start!40100 (and (array_inv!9334 _values!549) e!258306)))

(declare-fun array_inv!9335 (array!26819) Bool)

(assert (=> start!40100 (array_inv!9335 _keys!709)))

(assert (= (and start!40100 res!258454) b!437784))

(assert (= (and b!437784 res!258459) b!437788))

(assert (= (and b!437788 res!258458) b!437789))

(assert (= (and b!437789 res!258449) b!437783))

(assert (= (and b!437783 res!258451) b!437785))

(assert (= (and b!437785 res!258457) b!437792))

(assert (= (and b!437792 res!258448) b!437777))

(assert (= (and b!437777 res!258455) b!437787))

(assert (= (and b!437787 res!258453) b!437782))

(assert (= (and b!437782 res!258452) b!437778))

(assert (= (and b!437778 res!258447) b!437780))

(assert (= (and b!437780 res!258450) b!437791))

(assert (= (and b!437791 res!258456) b!437779))

(assert (= (and b!437790 condMapEmpty!18888) mapIsEmpty!18888))

(assert (= (and b!437790 (not condMapEmpty!18888)) mapNonEmpty!18888))

(get-info :version)

(assert (= (and mapNonEmpty!18888 ((_ is ValueCellFull!5412) mapValue!18888)) b!437781))

(assert (= (and b!437790 ((_ is ValueCellFull!5412) mapDefault!18888)) b!437786))

(assert (= start!40100 b!437790))

(declare-fun m!425373 () Bool)

(assert (=> b!437791 m!425373))

(declare-fun m!425375 () Bool)

(assert (=> b!437791 m!425375))

(declare-fun m!425377 () Bool)

(assert (=> b!437791 m!425377))

(declare-fun m!425379 () Bool)

(assert (=> b!437787 m!425379))

(declare-fun m!425381 () Bool)

(assert (=> b!437789 m!425381))

(declare-fun m!425383 () Bool)

(assert (=> b!437782 m!425383))

(declare-fun m!425385 () Bool)

(assert (=> b!437782 m!425385))

(declare-fun m!425387 () Bool)

(assert (=> b!437792 m!425387))

(declare-fun m!425389 () Bool)

(assert (=> b!437778 m!425389))

(declare-fun m!425391 () Bool)

(assert (=> b!437777 m!425391))

(declare-fun m!425393 () Bool)

(assert (=> start!40100 m!425393))

(declare-fun m!425395 () Bool)

(assert (=> start!40100 m!425395))

(declare-fun m!425397 () Bool)

(assert (=> b!437779 m!425397))

(declare-fun m!425399 () Bool)

(assert (=> b!437779 m!425399))

(assert (=> b!437779 m!425399))

(declare-fun m!425401 () Bool)

(assert (=> b!437779 m!425401))

(declare-fun m!425403 () Bool)

(assert (=> b!437779 m!425403))

(declare-fun m!425405 () Bool)

(assert (=> mapNonEmpty!18888 m!425405))

(declare-fun m!425407 () Bool)

(assert (=> b!437784 m!425407))

(declare-fun m!425409 () Bool)

(assert (=> b!437783 m!425409))

(check-sat (not b!437779) (not start!40100) (not b!437778) (not mapNonEmpty!18888) (not b!437792) (not b_next!10359) b_and!18345 tp_is_empty!11511 (not b!437787) (not b!437783) (not b!437791) (not b!437789) (not b!437782) (not b!437784))
(check-sat b_and!18345 (not b_next!10359))
