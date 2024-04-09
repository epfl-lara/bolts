; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20114 () Bool)

(assert start!20114)

(declare-fun b_free!4761 () Bool)

(declare-fun b_next!4761 () Bool)

(assert (=> start!20114 (= b_free!4761 (not b_next!4761))))

(declare-fun tp!17314 () Bool)

(declare-fun b_and!11525 () Bool)

(assert (=> start!20114 (= tp!17314 b_and!11525)))

(declare-fun b!196920 () Bool)

(declare-fun res!93053 () Bool)

(declare-fun e!129668 () Bool)

(assert (=> b!196920 (=> (not res!93053) (not e!129668))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196920 (= res!93053 (validKeyInArray!0 k0!843))))

(declare-fun res!93054 () Bool)

(assert (=> start!20114 (=> (not res!93054) (not e!129668))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20114 (= res!93054 (validMask!0 mask!1149))))

(assert (=> start!20114 e!129668))

(declare-datatypes ((V!5803 0))(
  ( (V!5804 (val!2353 Int)) )
))
(declare-datatypes ((ValueCell!1965 0))(
  ( (ValueCellFull!1965 (v!4319 V!5803)) (EmptyCell!1965) )
))
(declare-datatypes ((array!8488 0))(
  ( (array!8489 (arr!3994 (Array (_ BitVec 32) ValueCell!1965)) (size!4319 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8488)

(declare-fun e!129669 () Bool)

(declare-fun array_inv!2597 (array!8488) Bool)

(assert (=> start!20114 (and (array_inv!2597 _values!649) e!129669)))

(assert (=> start!20114 true))

(declare-fun tp_is_empty!4617 () Bool)

(assert (=> start!20114 tp_is_empty!4617))

(declare-datatypes ((array!8490 0))(
  ( (array!8491 (arr!3995 (Array (_ BitVec 32) (_ BitVec 64))) (size!4320 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8490)

(declare-fun array_inv!2598 (array!8490) Bool)

(assert (=> start!20114 (array_inv!2598 _keys!825)))

(assert (=> start!20114 tp!17314))

(declare-fun b!196921 () Bool)

(declare-fun res!93055 () Bool)

(assert (=> b!196921 (=> (not res!93055) (not e!129668))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196921 (= res!93055 (= (select (arr!3995 _keys!825) i!601) k0!843))))

(declare-fun b!196922 () Bool)

(assert (=> b!196922 (= e!129668 false)))

(declare-datatypes ((tuple2!3580 0))(
  ( (tuple2!3581 (_1!1800 (_ BitVec 64)) (_2!1800 V!5803)) )
))
(declare-datatypes ((List!2516 0))(
  ( (Nil!2513) (Cons!2512 (h!3154 tuple2!3580) (t!7455 List!2516)) )
))
(declare-datatypes ((ListLongMap!2507 0))(
  ( (ListLongMap!2508 (toList!1269 List!2516)) )
))
(declare-fun lt!97693 () ListLongMap!2507)

(declare-fun zeroValue!615 () V!5803)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5803)

(declare-fun getCurrentListMapNoExtraKeys!226 (array!8490 array!8488 (_ BitVec 32) (_ BitVec 32) V!5803 V!5803 (_ BitVec 32) Int) ListLongMap!2507)

(assert (=> b!196922 (= lt!97693 (getCurrentListMapNoExtraKeys!226 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!196923 () Bool)

(declare-fun e!129667 () Bool)

(assert (=> b!196923 (= e!129667 tp_is_empty!4617)))

(declare-fun b!196924 () Bool)

(declare-fun res!93050 () Bool)

(assert (=> b!196924 (=> (not res!93050) (not e!129668))))

(declare-datatypes ((List!2517 0))(
  ( (Nil!2514) (Cons!2513 (h!3155 (_ BitVec 64)) (t!7456 List!2517)) )
))
(declare-fun arrayNoDuplicates!0 (array!8490 (_ BitVec 32) List!2517) Bool)

(assert (=> b!196924 (= res!93050 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2514))))

(declare-fun mapIsEmpty!7994 () Bool)

(declare-fun mapRes!7994 () Bool)

(assert (=> mapIsEmpty!7994 mapRes!7994))

(declare-fun b!196925 () Bool)

(declare-fun res!93052 () Bool)

(assert (=> b!196925 (=> (not res!93052) (not e!129668))))

(assert (=> b!196925 (= res!93052 (and (= (size!4319 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4320 _keys!825) (size!4319 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196926 () Bool)

(declare-fun e!129666 () Bool)

(assert (=> b!196926 (= e!129669 (and e!129666 mapRes!7994))))

(declare-fun condMapEmpty!7994 () Bool)

(declare-fun mapDefault!7994 () ValueCell!1965)

(assert (=> b!196926 (= condMapEmpty!7994 (= (arr!3994 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1965)) mapDefault!7994)))))

(declare-fun b!196927 () Bool)

(declare-fun res!93049 () Bool)

(assert (=> b!196927 (=> (not res!93049) (not e!129668))))

(assert (=> b!196927 (= res!93049 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4320 _keys!825))))))

(declare-fun b!196928 () Bool)

(assert (=> b!196928 (= e!129666 tp_is_empty!4617)))

(declare-fun b!196929 () Bool)

(declare-fun res!93051 () Bool)

(assert (=> b!196929 (=> (not res!93051) (not e!129668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8490 (_ BitVec 32)) Bool)

(assert (=> b!196929 (= res!93051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!7994 () Bool)

(declare-fun tp!17315 () Bool)

(assert (=> mapNonEmpty!7994 (= mapRes!7994 (and tp!17315 e!129667))))

(declare-fun mapValue!7994 () ValueCell!1965)

(declare-fun mapKey!7994 () (_ BitVec 32))

(declare-fun mapRest!7994 () (Array (_ BitVec 32) ValueCell!1965))

(assert (=> mapNonEmpty!7994 (= (arr!3994 _values!649) (store mapRest!7994 mapKey!7994 mapValue!7994))))

(assert (= (and start!20114 res!93054) b!196925))

(assert (= (and b!196925 res!93052) b!196929))

(assert (= (and b!196929 res!93051) b!196924))

(assert (= (and b!196924 res!93050) b!196927))

(assert (= (and b!196927 res!93049) b!196920))

(assert (= (and b!196920 res!93053) b!196921))

(assert (= (and b!196921 res!93055) b!196922))

(assert (= (and b!196926 condMapEmpty!7994) mapIsEmpty!7994))

(assert (= (and b!196926 (not condMapEmpty!7994)) mapNonEmpty!7994))

(get-info :version)

(assert (= (and mapNonEmpty!7994 ((_ is ValueCellFull!1965) mapValue!7994)) b!196923))

(assert (= (and b!196926 ((_ is ValueCellFull!1965) mapDefault!7994)) b!196928))

(assert (= start!20114 b!196926))

(declare-fun m!224013 () Bool)

(assert (=> b!196922 m!224013))

(declare-fun m!224015 () Bool)

(assert (=> b!196921 m!224015))

(declare-fun m!224017 () Bool)

(assert (=> b!196924 m!224017))

(declare-fun m!224019 () Bool)

(assert (=> mapNonEmpty!7994 m!224019))

(declare-fun m!224021 () Bool)

(assert (=> b!196920 m!224021))

(declare-fun m!224023 () Bool)

(assert (=> start!20114 m!224023))

(declare-fun m!224025 () Bool)

(assert (=> start!20114 m!224025))

(declare-fun m!224027 () Bool)

(assert (=> start!20114 m!224027))

(declare-fun m!224029 () Bool)

(assert (=> b!196929 m!224029))

(check-sat (not b!196922) (not b!196929) b_and!11525 (not b!196924) tp_is_empty!4617 (not b_next!4761) (not start!20114) (not b!196920) (not mapNonEmpty!7994))
(check-sat b_and!11525 (not b_next!4761))
