; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20108 () Bool)

(assert start!20108)

(declare-fun b_free!4755 () Bool)

(declare-fun b_next!4755 () Bool)

(assert (=> start!20108 (= b_free!4755 (not b_next!4755))))

(declare-fun tp!17296 () Bool)

(declare-fun b_and!11519 () Bool)

(assert (=> start!20108 (= tp!17296 b_and!11519)))

(declare-fun res!92991 () Bool)

(declare-fun e!129625 () Bool)

(assert (=> start!20108 (=> (not res!92991) (not e!129625))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20108 (= res!92991 (validMask!0 mask!1149))))

(assert (=> start!20108 e!129625))

(declare-datatypes ((V!5795 0))(
  ( (V!5796 (val!2350 Int)) )
))
(declare-datatypes ((ValueCell!1962 0))(
  ( (ValueCellFull!1962 (v!4316 V!5795)) (EmptyCell!1962) )
))
(declare-datatypes ((array!8476 0))(
  ( (array!8477 (arr!3988 (Array (_ BitVec 32) ValueCell!1962)) (size!4313 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8476)

(declare-fun e!129622 () Bool)

(declare-fun array_inv!2593 (array!8476) Bool)

(assert (=> start!20108 (and (array_inv!2593 _values!649) e!129622)))

(assert (=> start!20108 true))

(declare-fun tp_is_empty!4611 () Bool)

(assert (=> start!20108 tp_is_empty!4611))

(declare-datatypes ((array!8478 0))(
  ( (array!8479 (arr!3989 (Array (_ BitVec 32) (_ BitVec 64))) (size!4314 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8478)

(declare-fun array_inv!2594 (array!8478) Bool)

(assert (=> start!20108 (array_inv!2594 _keys!825)))

(assert (=> start!20108 tp!17296))

(declare-fun b!196830 () Bool)

(assert (=> b!196830 (= e!129625 false)))

(declare-datatypes ((tuple2!3576 0))(
  ( (tuple2!3577 (_1!1798 (_ BitVec 64)) (_2!1798 V!5795)) )
))
(declare-datatypes ((List!2512 0))(
  ( (Nil!2509) (Cons!2508 (h!3150 tuple2!3576) (t!7451 List!2512)) )
))
(declare-datatypes ((ListLongMap!2503 0))(
  ( (ListLongMap!2504 (toList!1267 List!2512)) )
))
(declare-fun lt!97684 () ListLongMap!2503)

(declare-fun zeroValue!615 () V!5795)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5795)

(declare-fun getCurrentListMapNoExtraKeys!224 (array!8478 array!8476 (_ BitVec 32) (_ BitVec 32) V!5795 V!5795 (_ BitVec 32) Int) ListLongMap!2503)

(assert (=> b!196830 (= lt!97684 (getCurrentListMapNoExtraKeys!224 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!196831 () Bool)

(declare-fun e!129621 () Bool)

(assert (=> b!196831 (= e!129621 tp_is_empty!4611)))

(declare-fun b!196832 () Bool)

(declare-fun res!92992 () Bool)

(assert (=> b!196832 (=> (not res!92992) (not e!129625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8478 (_ BitVec 32)) Bool)

(assert (=> b!196832 (= res!92992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196833 () Bool)

(declare-fun res!92986 () Bool)

(assert (=> b!196833 (=> (not res!92986) (not e!129625))))

(declare-datatypes ((List!2513 0))(
  ( (Nil!2510) (Cons!2509 (h!3151 (_ BitVec 64)) (t!7452 List!2513)) )
))
(declare-fun arrayNoDuplicates!0 (array!8478 (_ BitVec 32) List!2513) Bool)

(assert (=> b!196833 (= res!92986 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2510))))

(declare-fun b!196834 () Bool)

(declare-fun res!92990 () Bool)

(assert (=> b!196834 (=> (not res!92990) (not e!129625))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196834 (= res!92990 (= (select (arr!3989 _keys!825) i!601) k0!843))))

(declare-fun b!196835 () Bool)

(declare-fun e!129624 () Bool)

(assert (=> b!196835 (= e!129624 tp_is_empty!4611)))

(declare-fun mapIsEmpty!7985 () Bool)

(declare-fun mapRes!7985 () Bool)

(assert (=> mapIsEmpty!7985 mapRes!7985))

(declare-fun b!196836 () Bool)

(assert (=> b!196836 (= e!129622 (and e!129624 mapRes!7985))))

(declare-fun condMapEmpty!7985 () Bool)

(declare-fun mapDefault!7985 () ValueCell!1962)

(assert (=> b!196836 (= condMapEmpty!7985 (= (arr!3988 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1962)) mapDefault!7985)))))

(declare-fun mapNonEmpty!7985 () Bool)

(declare-fun tp!17297 () Bool)

(assert (=> mapNonEmpty!7985 (= mapRes!7985 (and tp!17297 e!129621))))

(declare-fun mapValue!7985 () ValueCell!1962)

(declare-fun mapKey!7985 () (_ BitVec 32))

(declare-fun mapRest!7985 () (Array (_ BitVec 32) ValueCell!1962))

(assert (=> mapNonEmpty!7985 (= (arr!3988 _values!649) (store mapRest!7985 mapKey!7985 mapValue!7985))))

(declare-fun b!196837 () Bool)

(declare-fun res!92987 () Bool)

(assert (=> b!196837 (=> (not res!92987) (not e!129625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196837 (= res!92987 (validKeyInArray!0 k0!843))))

(declare-fun b!196838 () Bool)

(declare-fun res!92988 () Bool)

(assert (=> b!196838 (=> (not res!92988) (not e!129625))))

(assert (=> b!196838 (= res!92988 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4314 _keys!825))))))

(declare-fun b!196839 () Bool)

(declare-fun res!92989 () Bool)

(assert (=> b!196839 (=> (not res!92989) (not e!129625))))

(assert (=> b!196839 (= res!92989 (and (= (size!4313 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4314 _keys!825) (size!4313 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20108 res!92991) b!196839))

(assert (= (and b!196839 res!92989) b!196832))

(assert (= (and b!196832 res!92992) b!196833))

(assert (= (and b!196833 res!92986) b!196838))

(assert (= (and b!196838 res!92988) b!196837))

(assert (= (and b!196837 res!92987) b!196834))

(assert (= (and b!196834 res!92990) b!196830))

(assert (= (and b!196836 condMapEmpty!7985) mapIsEmpty!7985))

(assert (= (and b!196836 (not condMapEmpty!7985)) mapNonEmpty!7985))

(get-info :version)

(assert (= (and mapNonEmpty!7985 ((_ is ValueCellFull!1962) mapValue!7985)) b!196831))

(assert (= (and b!196836 ((_ is ValueCellFull!1962) mapDefault!7985)) b!196835))

(assert (= start!20108 b!196836))

(declare-fun m!223959 () Bool)

(assert (=> b!196837 m!223959))

(declare-fun m!223961 () Bool)

(assert (=> start!20108 m!223961))

(declare-fun m!223963 () Bool)

(assert (=> start!20108 m!223963))

(declare-fun m!223965 () Bool)

(assert (=> start!20108 m!223965))

(declare-fun m!223967 () Bool)

(assert (=> b!196834 m!223967))

(declare-fun m!223969 () Bool)

(assert (=> b!196832 m!223969))

(declare-fun m!223971 () Bool)

(assert (=> b!196830 m!223971))

(declare-fun m!223973 () Bool)

(assert (=> b!196833 m!223973))

(declare-fun m!223975 () Bool)

(assert (=> mapNonEmpty!7985 m!223975))

(check-sat (not b_next!4755) b_and!11519 (not b!196830) (not b!196833) (not mapNonEmpty!7985) (not start!20108) (not b!196832) (not b!196837) tp_is_empty!4611)
(check-sat b_and!11519 (not b_next!4755))
