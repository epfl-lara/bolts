; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72892 () Bool)

(assert start!72892)

(declare-fun b_free!13779 () Bool)

(declare-fun b_next!13779 () Bool)

(assert (=> start!72892 (= b_free!13779 (not b_next!13779))))

(declare-fun tp!48842 () Bool)

(declare-fun b_and!22883 () Bool)

(assert (=> start!72892 (= tp!48842 b_and!22883)))

(declare-fun res!574577 () Bool)

(declare-fun e!472046 () Bool)

(assert (=> start!72892 (=> (not res!574577) (not e!472046))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48030 0))(
  ( (array!48031 (arr!23042 (Array (_ BitVec 32) (_ BitVec 64))) (size!23483 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48030)

(assert (=> start!72892 (= res!574577 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23483 _keys!868))))))

(assert (=> start!72892 e!472046))

(assert (=> start!72892 true))

(assert (=> start!72892 tp!48842))

(declare-fun array_inv!18290 (array!48030) Bool)

(assert (=> start!72892 (array_inv!18290 _keys!868)))

(declare-datatypes ((V!26267 0))(
  ( (V!26268 (val!8005 Int)) )
))
(declare-datatypes ((ValueCell!7518 0))(
  ( (ValueCellFull!7518 (v!10426 V!26267)) (EmptyCell!7518) )
))
(declare-datatypes ((array!48032 0))(
  ( (array!48033 (arr!23043 (Array (_ BitVec 32) ValueCell!7518)) (size!23484 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48032)

(declare-fun e!472049 () Bool)

(declare-fun array_inv!18291 (array!48032) Bool)

(assert (=> start!72892 (and (array_inv!18291 _values!688) e!472049)))

(declare-fun tp_is_empty!15915 () Bool)

(assert (=> start!72892 tp_is_empty!15915))

(declare-fun b!845587 () Bool)

(declare-fun res!574578 () Bool)

(assert (=> b!845587 (=> (not res!574578) (not e!472046))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48030 (_ BitVec 32)) Bool)

(assert (=> b!845587 (= res!574578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845588 () Bool)

(assert (=> b!845588 (= e!472046 false)))

(declare-datatypes ((tuple2!10472 0))(
  ( (tuple2!10473 (_1!5246 (_ BitVec 64)) (_2!5246 V!26267)) )
))
(declare-datatypes ((List!16382 0))(
  ( (Nil!16379) (Cons!16378 (h!17509 tuple2!10472) (t!22761 List!16382)) )
))
(declare-datatypes ((ListLongMap!9255 0))(
  ( (ListLongMap!9256 (toList!4643 List!16382)) )
))
(declare-fun lt!381384 () ListLongMap!9255)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26267)

(declare-fun zeroValue!654 () V!26267)

(declare-fun getCurrentListMapNoExtraKeys!2632 (array!48030 array!48032 (_ BitVec 32) (_ BitVec 32) V!26267 V!26267 (_ BitVec 32) Int) ListLongMap!9255)

(assert (=> b!845588 (= lt!381384 (getCurrentListMapNoExtraKeys!2632 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845589 () Bool)

(declare-fun e!472048 () Bool)

(assert (=> b!845589 (= e!472048 tp_is_empty!15915)))

(declare-fun b!845590 () Bool)

(declare-fun res!574574 () Bool)

(assert (=> b!845590 (=> (not res!574574) (not e!472046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845590 (= res!574574 (validMask!0 mask!1196))))

(declare-fun b!845591 () Bool)

(declare-fun res!574576 () Bool)

(assert (=> b!845591 (=> (not res!574576) (not e!472046))))

(declare-datatypes ((List!16383 0))(
  ( (Nil!16380) (Cons!16379 (h!17510 (_ BitVec 64)) (t!22762 List!16383)) )
))
(declare-fun arrayNoDuplicates!0 (array!48030 (_ BitVec 32) List!16383) Bool)

(assert (=> b!845591 (= res!574576 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16380))))

(declare-fun mapIsEmpty!25472 () Bool)

(declare-fun mapRes!25472 () Bool)

(assert (=> mapIsEmpty!25472 mapRes!25472))

(declare-fun b!845592 () Bool)

(declare-fun e!472047 () Bool)

(assert (=> b!845592 (= e!472049 (and e!472047 mapRes!25472))))

(declare-fun condMapEmpty!25472 () Bool)

(declare-fun mapDefault!25472 () ValueCell!7518)

(assert (=> b!845592 (= condMapEmpty!25472 (= (arr!23043 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7518)) mapDefault!25472)))))

(declare-fun b!845593 () Bool)

(declare-fun res!574571 () Bool)

(assert (=> b!845593 (=> (not res!574571) (not e!472046))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!845593 (= res!574571 (and (= (select (arr!23042 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!25472 () Bool)

(declare-fun tp!48841 () Bool)

(assert (=> mapNonEmpty!25472 (= mapRes!25472 (and tp!48841 e!472048))))

(declare-fun mapValue!25472 () ValueCell!7518)

(declare-fun mapRest!25472 () (Array (_ BitVec 32) ValueCell!7518))

(declare-fun mapKey!25472 () (_ BitVec 32))

(assert (=> mapNonEmpty!25472 (= (arr!23043 _values!688) (store mapRest!25472 mapKey!25472 mapValue!25472))))

(declare-fun b!845594 () Bool)

(declare-fun res!574575 () Bool)

(assert (=> b!845594 (=> (not res!574575) (not e!472046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845594 (= res!574575 (validKeyInArray!0 k0!854))))

(declare-fun b!845595 () Bool)

(assert (=> b!845595 (= e!472047 tp_is_empty!15915)))

(declare-fun b!845596 () Bool)

(declare-fun res!574573 () Bool)

(assert (=> b!845596 (=> (not res!574573) (not e!472046))))

(assert (=> b!845596 (= res!574573 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23483 _keys!868))))))

(declare-fun b!845597 () Bool)

(declare-fun res!574572 () Bool)

(assert (=> b!845597 (=> (not res!574572) (not e!472046))))

(assert (=> b!845597 (= res!574572 (and (= (size!23484 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23483 _keys!868) (size!23484 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72892 res!574577) b!845590))

(assert (= (and b!845590 res!574574) b!845597))

(assert (= (and b!845597 res!574572) b!845587))

(assert (= (and b!845587 res!574578) b!845591))

(assert (= (and b!845591 res!574576) b!845596))

(assert (= (and b!845596 res!574573) b!845594))

(assert (= (and b!845594 res!574575) b!845593))

(assert (= (and b!845593 res!574571) b!845588))

(assert (= (and b!845592 condMapEmpty!25472) mapIsEmpty!25472))

(assert (= (and b!845592 (not condMapEmpty!25472)) mapNonEmpty!25472))

(get-info :version)

(assert (= (and mapNonEmpty!25472 ((_ is ValueCellFull!7518) mapValue!25472)) b!845589))

(assert (= (and b!845592 ((_ is ValueCellFull!7518) mapDefault!25472)) b!845595))

(assert (= start!72892 b!845592))

(declare-fun m!787373 () Bool)

(assert (=> b!845590 m!787373))

(declare-fun m!787375 () Bool)

(assert (=> b!845594 m!787375))

(declare-fun m!787377 () Bool)

(assert (=> b!845593 m!787377))

(declare-fun m!787379 () Bool)

(assert (=> b!845587 m!787379))

(declare-fun m!787381 () Bool)

(assert (=> b!845591 m!787381))

(declare-fun m!787383 () Bool)

(assert (=> mapNonEmpty!25472 m!787383))

(declare-fun m!787385 () Bool)

(assert (=> b!845588 m!787385))

(declare-fun m!787387 () Bool)

(assert (=> start!72892 m!787387))

(declare-fun m!787389 () Bool)

(assert (=> start!72892 m!787389))

(check-sat (not b!845588) tp_is_empty!15915 (not mapNonEmpty!25472) (not b!845591) (not b!845594) b_and!22883 (not b!845587) (not b!845590) (not b_next!13779) (not start!72892))
(check-sat b_and!22883 (not b_next!13779))
