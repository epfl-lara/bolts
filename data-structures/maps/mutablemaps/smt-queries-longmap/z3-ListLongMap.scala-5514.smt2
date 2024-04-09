; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72898 () Bool)

(assert start!72898)

(declare-fun b_free!13785 () Bool)

(declare-fun b_next!13785 () Bool)

(assert (=> start!72898 (= b_free!13785 (not b_next!13785))))

(declare-fun tp!48859 () Bool)

(declare-fun b_and!22889 () Bool)

(assert (=> start!72898 (= tp!48859 b_and!22889)))

(declare-fun b!845686 () Bool)

(declare-fun res!574648 () Bool)

(declare-fun e!472095 () Bool)

(assert (=> b!845686 (=> (not res!574648) (not e!472095))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845686 (= res!574648 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25481 () Bool)

(declare-fun mapRes!25481 () Bool)

(assert (=> mapIsEmpty!25481 mapRes!25481))

(declare-fun b!845687 () Bool)

(declare-fun res!574644 () Bool)

(assert (=> b!845687 (=> (not res!574644) (not e!472095))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48042 0))(
  ( (array!48043 (arr!23048 (Array (_ BitVec 32) (_ BitVec 64))) (size!23489 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48042)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845687 (= res!574644 (and (= (select (arr!23048 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845688 () Bool)

(declare-fun res!574649 () Bool)

(assert (=> b!845688 (=> (not res!574649) (not e!472095))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26275 0))(
  ( (V!26276 (val!8008 Int)) )
))
(declare-datatypes ((ValueCell!7521 0))(
  ( (ValueCellFull!7521 (v!10429 V!26275)) (EmptyCell!7521) )
))
(declare-datatypes ((array!48044 0))(
  ( (array!48045 (arr!23049 (Array (_ BitVec 32) ValueCell!7521)) (size!23490 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48044)

(assert (=> b!845688 (= res!574649 (and (= (size!23490 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23489 _keys!868) (size!23490 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845689 () Bool)

(declare-fun e!472092 () Bool)

(declare-fun e!472091 () Bool)

(assert (=> b!845689 (= e!472092 (and e!472091 mapRes!25481))))

(declare-fun condMapEmpty!25481 () Bool)

(declare-fun mapDefault!25481 () ValueCell!7521)

(assert (=> b!845689 (= condMapEmpty!25481 (= (arr!23049 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7521)) mapDefault!25481)))))

(declare-fun b!845690 () Bool)

(declare-fun res!574643 () Bool)

(assert (=> b!845690 (=> (not res!574643) (not e!472095))))

(declare-datatypes ((List!16387 0))(
  ( (Nil!16384) (Cons!16383 (h!17514 (_ BitVec 64)) (t!22766 List!16387)) )
))
(declare-fun arrayNoDuplicates!0 (array!48042 (_ BitVec 32) List!16387) Bool)

(assert (=> b!845690 (= res!574643 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16384))))

(declare-fun mapNonEmpty!25481 () Bool)

(declare-fun tp!48860 () Bool)

(declare-fun e!472093 () Bool)

(assert (=> mapNonEmpty!25481 (= mapRes!25481 (and tp!48860 e!472093))))

(declare-fun mapKey!25481 () (_ BitVec 32))

(declare-fun mapValue!25481 () ValueCell!7521)

(declare-fun mapRest!25481 () (Array (_ BitVec 32) ValueCell!7521))

(assert (=> mapNonEmpty!25481 (= (arr!23049 _values!688) (store mapRest!25481 mapKey!25481 mapValue!25481))))

(declare-fun b!845692 () Bool)

(assert (=> b!845692 (= e!472095 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26275)

(declare-fun zeroValue!654 () V!26275)

(declare-datatypes ((tuple2!10476 0))(
  ( (tuple2!10477 (_1!5248 (_ BitVec 64)) (_2!5248 V!26275)) )
))
(declare-datatypes ((List!16388 0))(
  ( (Nil!16385) (Cons!16384 (h!17515 tuple2!10476) (t!22767 List!16388)) )
))
(declare-datatypes ((ListLongMap!9259 0))(
  ( (ListLongMap!9260 (toList!4645 List!16388)) )
))
(declare-fun lt!381393 () ListLongMap!9259)

(declare-fun getCurrentListMapNoExtraKeys!2634 (array!48042 array!48044 (_ BitVec 32) (_ BitVec 32) V!26275 V!26275 (_ BitVec 32) Int) ListLongMap!9259)

(assert (=> b!845692 (= lt!381393 (getCurrentListMapNoExtraKeys!2634 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845693 () Bool)

(declare-fun tp_is_empty!15921 () Bool)

(assert (=> b!845693 (= e!472091 tp_is_empty!15921)))

(declare-fun b!845694 () Bool)

(declare-fun res!574647 () Bool)

(assert (=> b!845694 (=> (not res!574647) (not e!472095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48042 (_ BitVec 32)) Bool)

(assert (=> b!845694 (= res!574647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845695 () Bool)

(declare-fun res!574645 () Bool)

(assert (=> b!845695 (=> (not res!574645) (not e!472095))))

(assert (=> b!845695 (= res!574645 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23489 _keys!868))))))

(declare-fun b!845696 () Bool)

(assert (=> b!845696 (= e!472093 tp_is_empty!15921)))

(declare-fun res!574646 () Bool)

(assert (=> start!72898 (=> (not res!574646) (not e!472095))))

(assert (=> start!72898 (= res!574646 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23489 _keys!868))))))

(assert (=> start!72898 e!472095))

(assert (=> start!72898 true))

(assert (=> start!72898 tp!48859))

(declare-fun array_inv!18294 (array!48042) Bool)

(assert (=> start!72898 (array_inv!18294 _keys!868)))

(declare-fun array_inv!18295 (array!48044) Bool)

(assert (=> start!72898 (and (array_inv!18295 _values!688) e!472092)))

(assert (=> start!72898 tp_is_empty!15921))

(declare-fun b!845691 () Bool)

(declare-fun res!574650 () Bool)

(assert (=> b!845691 (=> (not res!574650) (not e!472095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845691 (= res!574650 (validKeyInArray!0 k0!854))))

(assert (= (and start!72898 res!574646) b!845686))

(assert (= (and b!845686 res!574648) b!845688))

(assert (= (and b!845688 res!574649) b!845694))

(assert (= (and b!845694 res!574647) b!845690))

(assert (= (and b!845690 res!574643) b!845695))

(assert (= (and b!845695 res!574645) b!845691))

(assert (= (and b!845691 res!574650) b!845687))

(assert (= (and b!845687 res!574644) b!845692))

(assert (= (and b!845689 condMapEmpty!25481) mapIsEmpty!25481))

(assert (= (and b!845689 (not condMapEmpty!25481)) mapNonEmpty!25481))

(get-info :version)

(assert (= (and mapNonEmpty!25481 ((_ is ValueCellFull!7521) mapValue!25481)) b!845696))

(assert (= (and b!845689 ((_ is ValueCellFull!7521) mapDefault!25481)) b!845693))

(assert (= start!72898 b!845689))

(declare-fun m!787427 () Bool)

(assert (=> mapNonEmpty!25481 m!787427))

(declare-fun m!787429 () Bool)

(assert (=> b!845687 m!787429))

(declare-fun m!787431 () Bool)

(assert (=> b!845690 m!787431))

(declare-fun m!787433 () Bool)

(assert (=> b!845686 m!787433))

(declare-fun m!787435 () Bool)

(assert (=> b!845692 m!787435))

(declare-fun m!787437 () Bool)

(assert (=> b!845691 m!787437))

(declare-fun m!787439 () Bool)

(assert (=> start!72898 m!787439))

(declare-fun m!787441 () Bool)

(assert (=> start!72898 m!787441))

(declare-fun m!787443 () Bool)

(assert (=> b!845694 m!787443))

(check-sat (not b!845686) (not b!845694) (not mapNonEmpty!25481) (not b!845692) b_and!22889 (not b!845691) tp_is_empty!15921 (not start!72898) (not b!845690) (not b_next!13785))
(check-sat b_and!22889 (not b_next!13785))
