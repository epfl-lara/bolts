; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40256 () Bool)

(assert start!40256)

(declare-fun b_free!10515 () Bool)

(declare-fun b_next!10515 () Bool)

(assert (=> start!40256 (= b_free!10515 (not b_next!10515))))

(declare-fun tp!37073 () Bool)

(declare-fun b_and!18501 () Bool)

(assert (=> start!40256 (= tp!37073 b_and!18501)))

(declare-fun res!261500 () Bool)

(declare-fun e!259946 () Bool)

(assert (=> start!40256 (=> (not res!261500) (not e!259946))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27121 0))(
  ( (array!27122 (arr!13007 (Array (_ BitVec 32) (_ BitVec 64))) (size!13359 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27121)

(assert (=> start!40256 (= res!261500 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13359 _keys!709))))))

(assert (=> start!40256 e!259946))

(declare-fun tp_is_empty!11667 () Bool)

(assert (=> start!40256 tp_is_empty!11667))

(assert (=> start!40256 tp!37073))

(assert (=> start!40256 true))

(declare-datatypes ((V!16661 0))(
  ( (V!16662 (val!5878 Int)) )
))
(declare-datatypes ((ValueCell!5490 0))(
  ( (ValueCellFull!5490 (v!8121 V!16661)) (EmptyCell!5490) )
))
(declare-datatypes ((array!27123 0))(
  ( (array!27124 (arr!13008 (Array (_ BitVec 32) ValueCell!5490)) (size!13360 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27123)

(declare-fun e!259942 () Bool)

(declare-fun array_inv!9430 (array!27123) Bool)

(assert (=> start!40256 (and (array_inv!9430 _values!549) e!259942)))

(declare-fun array_inv!9431 (array!27121) Bool)

(assert (=> start!40256 (array_inv!9431 _keys!709)))

(declare-fun b!441521 () Bool)

(declare-fun res!261499 () Bool)

(assert (=> b!441521 (=> (not res!261499) (not e!259946))))

(declare-datatypes ((List!7786 0))(
  ( (Nil!7783) (Cons!7782 (h!8638 (_ BitVec 64)) (t!13550 List!7786)) )
))
(declare-fun arrayNoDuplicates!0 (array!27121 (_ BitVec 32) List!7786) Bool)

(assert (=> b!441521 (= res!261499 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7783))))

(declare-fun b!441522 () Bool)

(declare-fun e!259947 () Bool)

(assert (=> b!441522 (= e!259947 tp_is_empty!11667)))

(declare-fun b!441523 () Bool)

(declare-fun res!261493 () Bool)

(assert (=> b!441523 (=> (not res!261493) (not e!259946))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441523 (= res!261493 (validMask!0 mask!1025))))

(declare-fun b!441524 () Bool)

(declare-fun e!259948 () Bool)

(assert (=> b!441524 (= e!259948 tp_is_empty!11667)))

(declare-fun b!441525 () Bool)

(declare-fun mapRes!19122 () Bool)

(assert (=> b!441525 (= e!259942 (and e!259948 mapRes!19122))))

(declare-fun condMapEmpty!19122 () Bool)

(declare-fun mapDefault!19122 () ValueCell!5490)

(assert (=> b!441525 (= condMapEmpty!19122 (= (arr!13008 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5490)) mapDefault!19122)))))

(declare-fun b!441526 () Bool)

(declare-fun res!261490 () Bool)

(assert (=> b!441526 (=> (not res!261490) (not e!259946))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441526 (= res!261490 (validKeyInArray!0 k0!794))))

(declare-fun b!441527 () Bool)

(declare-fun res!261501 () Bool)

(assert (=> b!441527 (=> (not res!261501) (not e!259946))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!441527 (= res!261501 (and (= (size!13360 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13359 _keys!709) (size!13360 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19122 () Bool)

(declare-fun tp!37074 () Bool)

(assert (=> mapNonEmpty!19122 (= mapRes!19122 (and tp!37074 e!259947))))

(declare-fun mapKey!19122 () (_ BitVec 32))

(declare-fun mapValue!19122 () ValueCell!5490)

(declare-fun mapRest!19122 () (Array (_ BitVec 32) ValueCell!5490))

(assert (=> mapNonEmpty!19122 (= (arr!13008 _values!549) (store mapRest!19122 mapKey!19122 mapValue!19122))))

(declare-fun b!441528 () Bool)

(declare-fun e!259943 () Bool)

(assert (=> b!441528 (= e!259943 (not true))))

(declare-fun minValue!515 () V!16661)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202944 () array!27123)

(declare-fun lt!202943 () array!27121)

(declare-fun zeroValue!515 () V!16661)

(declare-fun v!412 () V!16661)

(declare-datatypes ((tuple2!7746 0))(
  ( (tuple2!7747 (_1!3883 (_ BitVec 64)) (_2!3883 V!16661)) )
))
(declare-datatypes ((List!7787 0))(
  ( (Nil!7784) (Cons!7783 (h!8639 tuple2!7746) (t!13551 List!7787)) )
))
(declare-datatypes ((ListLongMap!6673 0))(
  ( (ListLongMap!6674 (toList!3352 List!7787)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1534 (array!27121 array!27123 (_ BitVec 32) (_ BitVec 32) V!16661 V!16661 (_ BitVec 32) Int) ListLongMap!6673)

(declare-fun +!1485 (ListLongMap!6673 tuple2!7746) ListLongMap!6673)

(assert (=> b!441528 (= (getCurrentListMapNoExtraKeys!1534 lt!202943 lt!202944 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1485 (getCurrentListMapNoExtraKeys!1534 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7747 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13085 0))(
  ( (Unit!13086) )
))
(declare-fun lt!202945 () Unit!13085)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!663 (array!27121 array!27123 (_ BitVec 32) (_ BitVec 32) V!16661 V!16661 (_ BitVec 32) (_ BitVec 64) V!16661 (_ BitVec 32) Int) Unit!13085)

(assert (=> b!441528 (= lt!202945 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!663 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441529 () Bool)

(declare-fun e!259944 () Bool)

(assert (=> b!441529 (= e!259944 e!259943)))

(declare-fun res!261498 () Bool)

(assert (=> b!441529 (=> (not res!261498) (not e!259943))))

(assert (=> b!441529 (= res!261498 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202947 () ListLongMap!6673)

(assert (=> b!441529 (= lt!202947 (getCurrentListMapNoExtraKeys!1534 lt!202943 lt!202944 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441529 (= lt!202944 (array!27124 (store (arr!13008 _values!549) i!563 (ValueCellFull!5490 v!412)) (size!13360 _values!549)))))

(declare-fun lt!202946 () ListLongMap!6673)

(assert (=> b!441529 (= lt!202946 (getCurrentListMapNoExtraKeys!1534 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441530 () Bool)

(declare-fun res!261495 () Bool)

(assert (=> b!441530 (=> (not res!261495) (not e!259946))))

(declare-fun arrayContainsKey!0 (array!27121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441530 (= res!261495 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441531 () Bool)

(declare-fun res!261489 () Bool)

(assert (=> b!441531 (=> (not res!261489) (not e!259946))))

(assert (=> b!441531 (= res!261489 (or (= (select (arr!13007 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13007 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441532 () Bool)

(declare-fun res!261491 () Bool)

(assert (=> b!441532 (=> (not res!261491) (not e!259946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27121 (_ BitVec 32)) Bool)

(assert (=> b!441532 (= res!261491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19122 () Bool)

(assert (=> mapIsEmpty!19122 mapRes!19122))

(declare-fun b!441533 () Bool)

(declare-fun res!261496 () Bool)

(assert (=> b!441533 (=> (not res!261496) (not e!259944))))

(assert (=> b!441533 (= res!261496 (bvsle from!863 i!563))))

(declare-fun b!441534 () Bool)

(declare-fun res!261497 () Bool)

(assert (=> b!441534 (=> (not res!261497) (not e!259946))))

(assert (=> b!441534 (= res!261497 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13359 _keys!709))))))

(declare-fun b!441535 () Bool)

(assert (=> b!441535 (= e!259946 e!259944)))

(declare-fun res!261494 () Bool)

(assert (=> b!441535 (=> (not res!261494) (not e!259944))))

(assert (=> b!441535 (= res!261494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202943 mask!1025))))

(assert (=> b!441535 (= lt!202943 (array!27122 (store (arr!13007 _keys!709) i!563 k0!794) (size!13359 _keys!709)))))

(declare-fun b!441536 () Bool)

(declare-fun res!261492 () Bool)

(assert (=> b!441536 (=> (not res!261492) (not e!259944))))

(assert (=> b!441536 (= res!261492 (arrayNoDuplicates!0 lt!202943 #b00000000000000000000000000000000 Nil!7783))))

(assert (= (and start!40256 res!261500) b!441523))

(assert (= (and b!441523 res!261493) b!441527))

(assert (= (and b!441527 res!261501) b!441532))

(assert (= (and b!441532 res!261491) b!441521))

(assert (= (and b!441521 res!261499) b!441534))

(assert (= (and b!441534 res!261497) b!441526))

(assert (= (and b!441526 res!261490) b!441531))

(assert (= (and b!441531 res!261489) b!441530))

(assert (= (and b!441530 res!261495) b!441535))

(assert (= (and b!441535 res!261494) b!441536))

(assert (= (and b!441536 res!261492) b!441533))

(assert (= (and b!441533 res!261496) b!441529))

(assert (= (and b!441529 res!261498) b!441528))

(assert (= (and b!441525 condMapEmpty!19122) mapIsEmpty!19122))

(assert (= (and b!441525 (not condMapEmpty!19122)) mapNonEmpty!19122))

(get-info :version)

(assert (= (and mapNonEmpty!19122 ((_ is ValueCellFull!5490) mapValue!19122)) b!441522))

(assert (= (and b!441525 ((_ is ValueCellFull!5490) mapDefault!19122)) b!441524))

(assert (= start!40256 b!441525))

(declare-fun m!428337 () Bool)

(assert (=> start!40256 m!428337))

(declare-fun m!428339 () Bool)

(assert (=> start!40256 m!428339))

(declare-fun m!428341 () Bool)

(assert (=> mapNonEmpty!19122 m!428341))

(declare-fun m!428343 () Bool)

(assert (=> b!441521 m!428343))

(declare-fun m!428345 () Bool)

(assert (=> b!441536 m!428345))

(declare-fun m!428347 () Bool)

(assert (=> b!441531 m!428347))

(declare-fun m!428349 () Bool)

(assert (=> b!441529 m!428349))

(declare-fun m!428351 () Bool)

(assert (=> b!441529 m!428351))

(declare-fun m!428353 () Bool)

(assert (=> b!441529 m!428353))

(declare-fun m!428355 () Bool)

(assert (=> b!441526 m!428355))

(declare-fun m!428357 () Bool)

(assert (=> b!441528 m!428357))

(declare-fun m!428359 () Bool)

(assert (=> b!441528 m!428359))

(assert (=> b!441528 m!428359))

(declare-fun m!428361 () Bool)

(assert (=> b!441528 m!428361))

(declare-fun m!428363 () Bool)

(assert (=> b!441528 m!428363))

(declare-fun m!428365 () Bool)

(assert (=> b!441532 m!428365))

(declare-fun m!428367 () Bool)

(assert (=> b!441530 m!428367))

(declare-fun m!428369 () Bool)

(assert (=> b!441535 m!428369))

(declare-fun m!428371 () Bool)

(assert (=> b!441535 m!428371))

(declare-fun m!428373 () Bool)

(assert (=> b!441523 m!428373))

(check-sat (not b_next!10515) (not mapNonEmpty!19122) (not b!441529) (not b!441528) b_and!18501 tp_is_empty!11667 (not b!441536) (not start!40256) (not b!441521) (not b!441530) (not b!441535) (not b!441523) (not b!441532) (not b!441526))
(check-sat b_and!18501 (not b_next!10515))
