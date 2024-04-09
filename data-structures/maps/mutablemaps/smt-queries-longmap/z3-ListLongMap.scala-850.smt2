; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20210 () Bool)

(assert start!20210)

(declare-fun b_free!4857 () Bool)

(declare-fun b_next!4857 () Bool)

(assert (=> start!20210 (= b_free!4857 (not b_next!4857))))

(declare-fun tp!17602 () Bool)

(declare-fun b_and!11621 () Bool)

(assert (=> start!20210 (= tp!17602 b_and!11621)))

(declare-fun b!198360 () Bool)

(declare-fun res!94060 () Bool)

(declare-fun e!130390 () Bool)

(assert (=> b!198360 (=> (not res!94060) (not e!130390))))

(declare-datatypes ((array!8674 0))(
  ( (array!8675 (arr!4087 (Array (_ BitVec 32) (_ BitVec 64))) (size!4412 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8674)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8674 (_ BitVec 32)) Bool)

(assert (=> b!198360 (= res!94060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198361 () Bool)

(declare-fun res!94063 () Bool)

(assert (=> b!198361 (=> (not res!94063) (not e!130390))))

(declare-datatypes ((List!2577 0))(
  ( (Nil!2574) (Cons!2573 (h!3215 (_ BitVec 64)) (t!7516 List!2577)) )
))
(declare-fun arrayNoDuplicates!0 (array!8674 (_ BitVec 32) List!2577) Bool)

(assert (=> b!198361 (= res!94063 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2574))))

(declare-fun b!198362 () Bool)

(declare-fun res!94061 () Bool)

(assert (=> b!198362 (=> (not res!94061) (not e!130390))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198362 (= res!94061 (validKeyInArray!0 k0!843))))

(declare-fun b!198363 () Bool)

(declare-fun res!94062 () Bool)

(assert (=> b!198363 (=> (not res!94062) (not e!130390))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5931 0))(
  ( (V!5932 (val!2401 Int)) )
))
(declare-datatypes ((ValueCell!2013 0))(
  ( (ValueCellFull!2013 (v!4367 V!5931)) (EmptyCell!2013) )
))
(declare-datatypes ((array!8676 0))(
  ( (array!8677 (arr!4088 (Array (_ BitVec 32) ValueCell!2013)) (size!4413 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8676)

(assert (=> b!198363 (= res!94062 (and (= (size!4413 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4412 _keys!825) (size!4413 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8138 () Bool)

(declare-fun mapRes!8138 () Bool)

(declare-fun tp!17603 () Bool)

(declare-fun e!130389 () Bool)

(assert (=> mapNonEmpty!8138 (= mapRes!8138 (and tp!17603 e!130389))))

(declare-fun mapValue!8138 () ValueCell!2013)

(declare-fun mapKey!8138 () (_ BitVec 32))

(declare-fun mapRest!8138 () (Array (_ BitVec 32) ValueCell!2013))

(assert (=> mapNonEmpty!8138 (= (arr!4088 _values!649) (store mapRest!8138 mapKey!8138 mapValue!8138))))

(declare-fun b!198364 () Bool)

(assert (=> b!198364 (= e!130390 false)))

(declare-fun v!520 () V!5931)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5931)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5931)

(declare-datatypes ((tuple2!3640 0))(
  ( (tuple2!3641 (_1!1830 (_ BitVec 64)) (_2!1830 V!5931)) )
))
(declare-datatypes ((List!2578 0))(
  ( (Nil!2575) (Cons!2574 (h!3216 tuple2!3640) (t!7517 List!2578)) )
))
(declare-datatypes ((ListLongMap!2567 0))(
  ( (ListLongMap!2568 (toList!1299 List!2578)) )
))
(declare-fun lt!97933 () ListLongMap!2567)

(declare-fun getCurrentListMapNoExtraKeys!256 (array!8674 array!8676 (_ BitVec 32) (_ BitVec 32) V!5931 V!5931 (_ BitVec 32) Int) ListLongMap!2567)

(assert (=> b!198364 (= lt!97933 (getCurrentListMapNoExtraKeys!256 _keys!825 (array!8677 (store (arr!4088 _values!649) i!601 (ValueCellFull!2013 v!520)) (size!4413 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97932 () ListLongMap!2567)

(assert (=> b!198364 (= lt!97932 (getCurrentListMapNoExtraKeys!256 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198365 () Bool)

(declare-fun e!130386 () Bool)

(declare-fun e!130388 () Bool)

(assert (=> b!198365 (= e!130386 (and e!130388 mapRes!8138))))

(declare-fun condMapEmpty!8138 () Bool)

(declare-fun mapDefault!8138 () ValueCell!2013)

(assert (=> b!198365 (= condMapEmpty!8138 (= (arr!4088 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2013)) mapDefault!8138)))))

(declare-fun res!94059 () Bool)

(assert (=> start!20210 (=> (not res!94059) (not e!130390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20210 (= res!94059 (validMask!0 mask!1149))))

(assert (=> start!20210 e!130390))

(declare-fun array_inv!2667 (array!8676) Bool)

(assert (=> start!20210 (and (array_inv!2667 _values!649) e!130386)))

(assert (=> start!20210 true))

(declare-fun tp_is_empty!4713 () Bool)

(assert (=> start!20210 tp_is_empty!4713))

(declare-fun array_inv!2668 (array!8674) Bool)

(assert (=> start!20210 (array_inv!2668 _keys!825)))

(assert (=> start!20210 tp!17602))

(declare-fun b!198366 () Bool)

(declare-fun res!94057 () Bool)

(assert (=> b!198366 (=> (not res!94057) (not e!130390))))

(assert (=> b!198366 (= res!94057 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4412 _keys!825))))))

(declare-fun b!198367 () Bool)

(assert (=> b!198367 (= e!130388 tp_is_empty!4713)))

(declare-fun mapIsEmpty!8138 () Bool)

(assert (=> mapIsEmpty!8138 mapRes!8138))

(declare-fun b!198368 () Bool)

(assert (=> b!198368 (= e!130389 tp_is_empty!4713)))

(declare-fun b!198369 () Bool)

(declare-fun res!94058 () Bool)

(assert (=> b!198369 (=> (not res!94058) (not e!130390))))

(assert (=> b!198369 (= res!94058 (= (select (arr!4087 _keys!825) i!601) k0!843))))

(assert (= (and start!20210 res!94059) b!198363))

(assert (= (and b!198363 res!94062) b!198360))

(assert (= (and b!198360 res!94060) b!198361))

(assert (= (and b!198361 res!94063) b!198366))

(assert (= (and b!198366 res!94057) b!198362))

(assert (= (and b!198362 res!94061) b!198369))

(assert (= (and b!198369 res!94058) b!198364))

(assert (= (and b!198365 condMapEmpty!8138) mapIsEmpty!8138))

(assert (= (and b!198365 (not condMapEmpty!8138)) mapNonEmpty!8138))

(get-info :version)

(assert (= (and mapNonEmpty!8138 ((_ is ValueCellFull!2013) mapValue!8138)) b!198368))

(assert (= (and b!198365 ((_ is ValueCellFull!2013) mapDefault!8138)) b!198367))

(assert (= start!20210 b!198365))

(declare-fun m!225001 () Bool)

(assert (=> b!198362 m!225001))

(declare-fun m!225003 () Bool)

(assert (=> b!198361 m!225003))

(declare-fun m!225005 () Bool)

(assert (=> start!20210 m!225005))

(declare-fun m!225007 () Bool)

(assert (=> start!20210 m!225007))

(declare-fun m!225009 () Bool)

(assert (=> start!20210 m!225009))

(declare-fun m!225011 () Bool)

(assert (=> b!198364 m!225011))

(declare-fun m!225013 () Bool)

(assert (=> b!198364 m!225013))

(declare-fun m!225015 () Bool)

(assert (=> b!198364 m!225015))

(declare-fun m!225017 () Bool)

(assert (=> b!198360 m!225017))

(declare-fun m!225019 () Bool)

(assert (=> mapNonEmpty!8138 m!225019))

(declare-fun m!225021 () Bool)

(assert (=> b!198369 m!225021))

(check-sat (not start!20210) (not b!198364) tp_is_empty!4713 (not b!198362) (not b_next!4857) b_and!11621 (not b!198361) (not mapNonEmpty!8138) (not b!198360))
(check-sat b_and!11621 (not b_next!4857))
