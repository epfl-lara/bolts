; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37020 () Bool)

(assert start!37020)

(declare-fun b_free!8139 () Bool)

(declare-fun b_next!8139 () Bool)

(assert (=> start!37020 (= b_free!8139 (not b_next!8139))))

(declare-fun tp!29132 () Bool)

(declare-fun b_and!15399 () Bool)

(assert (=> start!37020 (= tp!29132 b_and!15399)))

(declare-fun b!371555 () Bool)

(declare-fun e!226755 () Bool)

(assert (=> b!371555 (= e!226755 (not true))))

(declare-datatypes ((V!12821 0))(
  ( (V!12822 (val!4438 Int)) )
))
(declare-datatypes ((tuple2!5862 0))(
  ( (tuple2!5863 (_1!2941 (_ BitVec 64)) (_2!2941 V!12821)) )
))
(declare-datatypes ((List!5734 0))(
  ( (Nil!5731) (Cons!5730 (h!6586 tuple2!5862) (t!10892 List!5734)) )
))
(declare-datatypes ((ListLongMap!4789 0))(
  ( (ListLongMap!4790 (toList!2410 List!5734)) )
))
(declare-fun lt!170371 () ListLongMap!4789)

(declare-fun lt!170370 () ListLongMap!4789)

(assert (=> b!371555 (and (= lt!170371 lt!170370) (= lt!170370 lt!170371))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!170367 () ListLongMap!4789)

(declare-fun v!373 () V!12821)

(declare-fun +!751 (ListLongMap!4789 tuple2!5862) ListLongMap!4789)

(assert (=> b!371555 (= lt!170370 (+!751 lt!170367 (tuple2!5863 k0!778 v!373)))))

(declare-datatypes ((ValueCell!4050 0))(
  ( (ValueCellFull!4050 (v!6631 V!12821)) (EmptyCell!4050) )
))
(declare-datatypes ((array!21485 0))(
  ( (array!21486 (arr!10208 (Array (_ BitVec 32) ValueCell!4050)) (size!10560 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21485)

(declare-datatypes ((Unit!11407 0))(
  ( (Unit!11408) )
))
(declare-fun lt!170368 () Unit!11407)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12821)

(declare-datatypes ((array!21487 0))(
  ( (array!21488 (arr!10209 (Array (_ BitVec 32) (_ BitVec 64))) (size!10561 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21487)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12821)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!11 (array!21487 array!21485 (_ BitVec 32) (_ BitVec 32) V!12821 V!12821 (_ BitVec 32) (_ BitVec 64) V!12821 (_ BitVec 32) Int) Unit!11407)

(assert (=> b!371555 (= lt!170368 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!11 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170369 () array!21487)

(declare-fun getCurrentListMapNoExtraKeys!678 (array!21487 array!21485 (_ BitVec 32) (_ BitVec 32) V!12821 V!12821 (_ BitVec 32) Int) ListLongMap!4789)

(assert (=> b!371555 (= lt!170371 (getCurrentListMapNoExtraKeys!678 lt!170369 (array!21486 (store (arr!10208 _values!506) i!548 (ValueCellFull!4050 v!373)) (size!10560 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371555 (= lt!170367 (getCurrentListMapNoExtraKeys!678 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371556 () Bool)

(declare-fun res!208988 () Bool)

(declare-fun e!226756 () Bool)

(assert (=> b!371556 (=> (not res!208988) (not e!226756))))

(declare-datatypes ((List!5735 0))(
  ( (Nil!5732) (Cons!5731 (h!6587 (_ BitVec 64)) (t!10893 List!5735)) )
))
(declare-fun arrayNoDuplicates!0 (array!21487 (_ BitVec 32) List!5735) Bool)

(assert (=> b!371556 (= res!208988 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5732))))

(declare-fun b!371557 () Bool)

(declare-fun e!226753 () Bool)

(declare-fun e!226757 () Bool)

(declare-fun mapRes!14745 () Bool)

(assert (=> b!371557 (= e!226753 (and e!226757 mapRes!14745))))

(declare-fun condMapEmpty!14745 () Bool)

(declare-fun mapDefault!14745 () ValueCell!4050)

(assert (=> b!371557 (= condMapEmpty!14745 (= (arr!10208 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4050)) mapDefault!14745)))))

(declare-fun b!371558 () Bool)

(declare-fun res!208986 () Bool)

(assert (=> b!371558 (=> (not res!208986) (not e!226756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21487 (_ BitVec 32)) Bool)

(assert (=> b!371558 (= res!208986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371559 () Bool)

(declare-fun res!208989 () Bool)

(assert (=> b!371559 (=> (not res!208989) (not e!226756))))

(assert (=> b!371559 (= res!208989 (and (= (size!10560 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10561 _keys!658) (size!10560 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371560 () Bool)

(declare-fun res!208992 () Bool)

(assert (=> b!371560 (=> (not res!208992) (not e!226756))))

(assert (=> b!371560 (= res!208992 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10561 _keys!658))))))

(declare-fun mapIsEmpty!14745 () Bool)

(assert (=> mapIsEmpty!14745 mapRes!14745))

(declare-fun b!371561 () Bool)

(declare-fun tp_is_empty!8787 () Bool)

(assert (=> b!371561 (= e!226757 tp_is_empty!8787)))

(declare-fun b!371562 () Bool)

(declare-fun res!208994 () Bool)

(assert (=> b!371562 (=> (not res!208994) (not e!226755))))

(assert (=> b!371562 (= res!208994 (arrayNoDuplicates!0 lt!170369 #b00000000000000000000000000000000 Nil!5732))))

(declare-fun b!371563 () Bool)

(declare-fun res!208985 () Bool)

(assert (=> b!371563 (=> (not res!208985) (not e!226756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371563 (= res!208985 (validKeyInArray!0 k0!778))))

(declare-fun b!371565 () Bool)

(assert (=> b!371565 (= e!226756 e!226755)))

(declare-fun res!208990 () Bool)

(assert (=> b!371565 (=> (not res!208990) (not e!226755))))

(assert (=> b!371565 (= res!208990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170369 mask!970))))

(assert (=> b!371565 (= lt!170369 (array!21488 (store (arr!10209 _keys!658) i!548 k0!778) (size!10561 _keys!658)))))

(declare-fun mapNonEmpty!14745 () Bool)

(declare-fun tp!29133 () Bool)

(declare-fun e!226754 () Bool)

(assert (=> mapNonEmpty!14745 (= mapRes!14745 (and tp!29133 e!226754))))

(declare-fun mapValue!14745 () ValueCell!4050)

(declare-fun mapRest!14745 () (Array (_ BitVec 32) ValueCell!4050))

(declare-fun mapKey!14745 () (_ BitVec 32))

(assert (=> mapNonEmpty!14745 (= (arr!10208 _values!506) (store mapRest!14745 mapKey!14745 mapValue!14745))))

(declare-fun b!371564 () Bool)

(declare-fun res!208987 () Bool)

(assert (=> b!371564 (=> (not res!208987) (not e!226756))))

(declare-fun arrayContainsKey!0 (array!21487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371564 (= res!208987 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!208993 () Bool)

(assert (=> start!37020 (=> (not res!208993) (not e!226756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37020 (= res!208993 (validMask!0 mask!970))))

(assert (=> start!37020 e!226756))

(declare-fun array_inv!7538 (array!21485) Bool)

(assert (=> start!37020 (and (array_inv!7538 _values!506) e!226753)))

(assert (=> start!37020 tp!29132))

(assert (=> start!37020 true))

(assert (=> start!37020 tp_is_empty!8787))

(declare-fun array_inv!7539 (array!21487) Bool)

(assert (=> start!37020 (array_inv!7539 _keys!658)))

(declare-fun b!371566 () Bool)

(declare-fun res!208991 () Bool)

(assert (=> b!371566 (=> (not res!208991) (not e!226756))))

(assert (=> b!371566 (= res!208991 (or (= (select (arr!10209 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10209 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371567 () Bool)

(assert (=> b!371567 (= e!226754 tp_is_empty!8787)))

(assert (= (and start!37020 res!208993) b!371559))

(assert (= (and b!371559 res!208989) b!371558))

(assert (= (and b!371558 res!208986) b!371556))

(assert (= (and b!371556 res!208988) b!371560))

(assert (= (and b!371560 res!208992) b!371563))

(assert (= (and b!371563 res!208985) b!371566))

(assert (= (and b!371566 res!208991) b!371564))

(assert (= (and b!371564 res!208987) b!371565))

(assert (= (and b!371565 res!208990) b!371562))

(assert (= (and b!371562 res!208994) b!371555))

(assert (= (and b!371557 condMapEmpty!14745) mapIsEmpty!14745))

(assert (= (and b!371557 (not condMapEmpty!14745)) mapNonEmpty!14745))

(get-info :version)

(assert (= (and mapNonEmpty!14745 ((_ is ValueCellFull!4050) mapValue!14745)) b!371567))

(assert (= (and b!371557 ((_ is ValueCellFull!4050) mapDefault!14745)) b!371561))

(assert (= start!37020 b!371557))

(declare-fun m!367527 () Bool)

(assert (=> mapNonEmpty!14745 m!367527))

(declare-fun m!367529 () Bool)

(assert (=> b!371555 m!367529))

(declare-fun m!367531 () Bool)

(assert (=> b!371555 m!367531))

(declare-fun m!367533 () Bool)

(assert (=> b!371555 m!367533))

(declare-fun m!367535 () Bool)

(assert (=> b!371555 m!367535))

(declare-fun m!367537 () Bool)

(assert (=> b!371555 m!367537))

(declare-fun m!367539 () Bool)

(assert (=> b!371562 m!367539))

(declare-fun m!367541 () Bool)

(assert (=> b!371558 m!367541))

(declare-fun m!367543 () Bool)

(assert (=> b!371565 m!367543))

(declare-fun m!367545 () Bool)

(assert (=> b!371565 m!367545))

(declare-fun m!367547 () Bool)

(assert (=> b!371563 m!367547))

(declare-fun m!367549 () Bool)

(assert (=> b!371564 m!367549))

(declare-fun m!367551 () Bool)

(assert (=> start!37020 m!367551))

(declare-fun m!367553 () Bool)

(assert (=> start!37020 m!367553))

(declare-fun m!367555 () Bool)

(assert (=> start!37020 m!367555))

(declare-fun m!367557 () Bool)

(assert (=> b!371566 m!367557))

(declare-fun m!367559 () Bool)

(assert (=> b!371556 m!367559))

(check-sat (not start!37020) (not b!371555) (not b_next!8139) (not b!371562) (not b!371556) (not b!371565) tp_is_empty!8787 (not b!371564) (not b!371563) (not mapNonEmpty!14745) (not b!371558) b_and!15399)
(check-sat b_and!15399 (not b_next!8139))
