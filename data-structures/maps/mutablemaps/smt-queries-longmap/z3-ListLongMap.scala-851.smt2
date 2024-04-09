; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20216 () Bool)

(assert start!20216)

(declare-fun b_free!4863 () Bool)

(declare-fun b_next!4863 () Bool)

(assert (=> start!20216 (= b_free!4863 (not b_next!4863))))

(declare-fun tp!17621 () Bool)

(declare-fun b_and!11627 () Bool)

(assert (=> start!20216 (= tp!17621 b_and!11627)))

(declare-fun b!198450 () Bool)

(declare-fun res!94120 () Bool)

(declare-fun e!130434 () Bool)

(assert (=> b!198450 (=> (not res!94120) (not e!130434))))

(declare-datatypes ((array!8686 0))(
  ( (array!8687 (arr!4093 (Array (_ BitVec 32) (_ BitVec 64))) (size!4418 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8686)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5939 0))(
  ( (V!5940 (val!2404 Int)) )
))
(declare-datatypes ((ValueCell!2016 0))(
  ( (ValueCellFull!2016 (v!4370 V!5939)) (EmptyCell!2016) )
))
(declare-datatypes ((array!8688 0))(
  ( (array!8689 (arr!4094 (Array (_ BitVec 32) ValueCell!2016)) (size!4419 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8688)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198450 (= res!94120 (and (= (size!4419 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4418 _keys!825) (size!4419 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198451 () Bool)

(declare-fun e!130433 () Bool)

(declare-fun e!130435 () Bool)

(declare-fun mapRes!8147 () Bool)

(assert (=> b!198451 (= e!130433 (and e!130435 mapRes!8147))))

(declare-fun condMapEmpty!8147 () Bool)

(declare-fun mapDefault!8147 () ValueCell!2016)

(assert (=> b!198451 (= condMapEmpty!8147 (= (arr!4094 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2016)) mapDefault!8147)))))

(declare-fun b!198452 () Bool)

(declare-fun res!94121 () Bool)

(assert (=> b!198452 (=> (not res!94121) (not e!130434))))

(declare-datatypes ((List!2580 0))(
  ( (Nil!2577) (Cons!2576 (h!3218 (_ BitVec 64)) (t!7519 List!2580)) )
))
(declare-fun arrayNoDuplicates!0 (array!8686 (_ BitVec 32) List!2580) Bool)

(assert (=> b!198452 (= res!94121 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2577))))

(declare-fun mapIsEmpty!8147 () Bool)

(assert (=> mapIsEmpty!8147 mapRes!8147))

(declare-fun b!198454 () Bool)

(declare-fun tp_is_empty!4719 () Bool)

(assert (=> b!198454 (= e!130435 tp_is_empty!4719)))

(declare-fun b!198455 () Bool)

(declare-fun res!94122 () Bool)

(assert (=> b!198455 (=> (not res!94122) (not e!130434))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198455 (= res!94122 (= (select (arr!4093 _keys!825) i!601) k0!843))))

(declare-fun b!198456 () Bool)

(declare-fun res!94123 () Bool)

(assert (=> b!198456 (=> (not res!94123) (not e!130434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8686 (_ BitVec 32)) Bool)

(assert (=> b!198456 (= res!94123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198457 () Bool)

(declare-fun res!94126 () Bool)

(assert (=> b!198457 (=> (not res!94126) (not e!130434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198457 (= res!94126 (validKeyInArray!0 k0!843))))

(declare-fun b!198458 () Bool)

(assert (=> b!198458 (= e!130434 false)))

(declare-fun v!520 () V!5939)

(declare-fun zeroValue!615 () V!5939)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!3642 0))(
  ( (tuple2!3643 (_1!1831 (_ BitVec 64)) (_2!1831 V!5939)) )
))
(declare-datatypes ((List!2581 0))(
  ( (Nil!2578) (Cons!2577 (h!3219 tuple2!3642) (t!7520 List!2581)) )
))
(declare-datatypes ((ListLongMap!2569 0))(
  ( (ListLongMap!2570 (toList!1300 List!2581)) )
))
(declare-fun lt!97950 () ListLongMap!2569)

(declare-fun minValue!615 () V!5939)

(declare-fun getCurrentListMapNoExtraKeys!257 (array!8686 array!8688 (_ BitVec 32) (_ BitVec 32) V!5939 V!5939 (_ BitVec 32) Int) ListLongMap!2569)

(assert (=> b!198458 (= lt!97950 (getCurrentListMapNoExtraKeys!257 _keys!825 (array!8689 (store (arr!4094 _values!649) i!601 (ValueCellFull!2016 v!520)) (size!4419 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97951 () ListLongMap!2569)

(assert (=> b!198458 (= lt!97951 (getCurrentListMapNoExtraKeys!257 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198453 () Bool)

(declare-fun e!130432 () Bool)

(assert (=> b!198453 (= e!130432 tp_is_empty!4719)))

(declare-fun res!94124 () Bool)

(assert (=> start!20216 (=> (not res!94124) (not e!130434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20216 (= res!94124 (validMask!0 mask!1149))))

(assert (=> start!20216 e!130434))

(declare-fun array_inv!2671 (array!8688) Bool)

(assert (=> start!20216 (and (array_inv!2671 _values!649) e!130433)))

(assert (=> start!20216 true))

(assert (=> start!20216 tp_is_empty!4719))

(declare-fun array_inv!2672 (array!8686) Bool)

(assert (=> start!20216 (array_inv!2672 _keys!825)))

(assert (=> start!20216 tp!17621))

(declare-fun mapNonEmpty!8147 () Bool)

(declare-fun tp!17620 () Bool)

(assert (=> mapNonEmpty!8147 (= mapRes!8147 (and tp!17620 e!130432))))

(declare-fun mapValue!8147 () ValueCell!2016)

(declare-fun mapRest!8147 () (Array (_ BitVec 32) ValueCell!2016))

(declare-fun mapKey!8147 () (_ BitVec 32))

(assert (=> mapNonEmpty!8147 (= (arr!4094 _values!649) (store mapRest!8147 mapKey!8147 mapValue!8147))))

(declare-fun b!198459 () Bool)

(declare-fun res!94125 () Bool)

(assert (=> b!198459 (=> (not res!94125) (not e!130434))))

(assert (=> b!198459 (= res!94125 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4418 _keys!825))))))

(assert (= (and start!20216 res!94124) b!198450))

(assert (= (and b!198450 res!94120) b!198456))

(assert (= (and b!198456 res!94123) b!198452))

(assert (= (and b!198452 res!94121) b!198459))

(assert (= (and b!198459 res!94125) b!198457))

(assert (= (and b!198457 res!94126) b!198455))

(assert (= (and b!198455 res!94122) b!198458))

(assert (= (and b!198451 condMapEmpty!8147) mapIsEmpty!8147))

(assert (= (and b!198451 (not condMapEmpty!8147)) mapNonEmpty!8147))

(get-info :version)

(assert (= (and mapNonEmpty!8147 ((_ is ValueCellFull!2016) mapValue!8147)) b!198453))

(assert (= (and b!198451 ((_ is ValueCellFull!2016) mapDefault!8147)) b!198454))

(assert (= start!20216 b!198451))

(declare-fun m!225067 () Bool)

(assert (=> b!198457 m!225067))

(declare-fun m!225069 () Bool)

(assert (=> start!20216 m!225069))

(declare-fun m!225071 () Bool)

(assert (=> start!20216 m!225071))

(declare-fun m!225073 () Bool)

(assert (=> start!20216 m!225073))

(declare-fun m!225075 () Bool)

(assert (=> b!198458 m!225075))

(declare-fun m!225077 () Bool)

(assert (=> b!198458 m!225077))

(declare-fun m!225079 () Bool)

(assert (=> b!198458 m!225079))

(declare-fun m!225081 () Bool)

(assert (=> mapNonEmpty!8147 m!225081))

(declare-fun m!225083 () Bool)

(assert (=> b!198452 m!225083))

(declare-fun m!225085 () Bool)

(assert (=> b!198455 m!225085))

(declare-fun m!225087 () Bool)

(assert (=> b!198456 m!225087))

(check-sat (not b!198452) (not b!198458) (not start!20216) (not b!198456) (not b!198457) (not b_next!4863) tp_is_empty!4719 b_and!11627 (not mapNonEmpty!8147))
(check-sat b_and!11627 (not b_next!4863))
