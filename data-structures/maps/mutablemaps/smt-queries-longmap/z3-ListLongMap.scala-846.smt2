; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20186 () Bool)

(assert start!20186)

(declare-fun b_free!4833 () Bool)

(declare-fun b_next!4833 () Bool)

(assert (=> start!20186 (= b_free!4833 (not b_next!4833))))

(declare-fun tp!17530 () Bool)

(declare-fun b_and!11597 () Bool)

(assert (=> start!20186 (= tp!17530 b_and!11597)))

(declare-fun b!198000 () Bool)

(declare-fun res!93810 () Bool)

(declare-fun e!130209 () Bool)

(assert (=> b!198000 (=> (not res!93810) (not e!130209))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8628 0))(
  ( (array!8629 (arr!4064 (Array (_ BitVec 32) (_ BitVec 64))) (size!4389 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8628)

(assert (=> b!198000 (= res!93810 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4389 _keys!825))))))

(declare-fun b!198001 () Bool)

(declare-fun e!130206 () Bool)

(declare-fun tp_is_empty!4689 () Bool)

(assert (=> b!198001 (= e!130206 tp_is_empty!4689)))

(declare-fun b!198002 () Bool)

(declare-fun e!130208 () Bool)

(declare-fun e!130210 () Bool)

(declare-fun mapRes!8102 () Bool)

(assert (=> b!198002 (= e!130208 (and e!130210 mapRes!8102))))

(declare-fun condMapEmpty!8102 () Bool)

(declare-datatypes ((V!5899 0))(
  ( (V!5900 (val!2389 Int)) )
))
(declare-datatypes ((ValueCell!2001 0))(
  ( (ValueCellFull!2001 (v!4355 V!5899)) (EmptyCell!2001) )
))
(declare-datatypes ((array!8630 0))(
  ( (array!8631 (arr!4065 (Array (_ BitVec 32) ValueCell!2001)) (size!4390 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8630)

(declare-fun mapDefault!8102 () ValueCell!2001)

(assert (=> b!198002 (= condMapEmpty!8102 (= (arr!4065 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2001)) mapDefault!8102)))))

(declare-fun b!198003 () Bool)

(declare-fun res!93805 () Bool)

(assert (=> b!198003 (=> (not res!93805) (not e!130209))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198003 (= res!93805 (and (= (size!4390 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4389 _keys!825) (size!4390 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8102 () Bool)

(declare-fun tp!17531 () Bool)

(assert (=> mapNonEmpty!8102 (= mapRes!8102 (and tp!17531 e!130206))))

(declare-fun mapRest!8102 () (Array (_ BitVec 32) ValueCell!2001))

(declare-fun mapKey!8102 () (_ BitVec 32))

(declare-fun mapValue!8102 () ValueCell!2001)

(assert (=> mapNonEmpty!8102 (= (arr!4065 _values!649) (store mapRest!8102 mapKey!8102 mapValue!8102))))

(declare-fun b!198004 () Bool)

(declare-fun res!93807 () Bool)

(assert (=> b!198004 (=> (not res!93807) (not e!130209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8628 (_ BitVec 32)) Bool)

(assert (=> b!198004 (= res!93807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!93809 () Bool)

(assert (=> start!20186 (=> (not res!93809) (not e!130209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20186 (= res!93809 (validMask!0 mask!1149))))

(assert (=> start!20186 e!130209))

(declare-fun array_inv!2647 (array!8630) Bool)

(assert (=> start!20186 (and (array_inv!2647 _values!649) e!130208)))

(assert (=> start!20186 true))

(assert (=> start!20186 tp_is_empty!4689))

(declare-fun array_inv!2648 (array!8628) Bool)

(assert (=> start!20186 (array_inv!2648 _keys!825)))

(assert (=> start!20186 tp!17530))

(declare-fun b!198005 () Bool)

(declare-fun res!93808 () Bool)

(assert (=> b!198005 (=> (not res!93808) (not e!130209))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198005 (= res!93808 (validKeyInArray!0 k0!843))))

(declare-fun b!198006 () Bool)

(declare-fun res!93811 () Bool)

(assert (=> b!198006 (=> (not res!93811) (not e!130209))))

(declare-datatypes ((List!2559 0))(
  ( (Nil!2556) (Cons!2555 (h!3197 (_ BitVec 64)) (t!7498 List!2559)) )
))
(declare-fun arrayNoDuplicates!0 (array!8628 (_ BitVec 32) List!2559) Bool)

(assert (=> b!198006 (= res!93811 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2556))))

(declare-fun b!198007 () Bool)

(assert (=> b!198007 (= e!130209 false)))

(declare-datatypes ((tuple2!3620 0))(
  ( (tuple2!3621 (_1!1820 (_ BitVec 64)) (_2!1820 V!5899)) )
))
(declare-datatypes ((List!2560 0))(
  ( (Nil!2557) (Cons!2556 (h!3198 tuple2!3620) (t!7499 List!2560)) )
))
(declare-datatypes ((ListLongMap!2547 0))(
  ( (ListLongMap!2548 (toList!1289 List!2560)) )
))
(declare-fun lt!97860 () ListLongMap!2547)

(declare-fun v!520 () V!5899)

(declare-fun zeroValue!615 () V!5899)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5899)

(declare-fun getCurrentListMapNoExtraKeys!246 (array!8628 array!8630 (_ BitVec 32) (_ BitVec 32) V!5899 V!5899 (_ BitVec 32) Int) ListLongMap!2547)

(assert (=> b!198007 (= lt!97860 (getCurrentListMapNoExtraKeys!246 _keys!825 (array!8631 (store (arr!4065 _values!649) i!601 (ValueCellFull!2001 v!520)) (size!4390 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97861 () ListLongMap!2547)

(assert (=> b!198007 (= lt!97861 (getCurrentListMapNoExtraKeys!246 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198008 () Bool)

(assert (=> b!198008 (= e!130210 tp_is_empty!4689)))

(declare-fun mapIsEmpty!8102 () Bool)

(assert (=> mapIsEmpty!8102 mapRes!8102))

(declare-fun b!198009 () Bool)

(declare-fun res!93806 () Bool)

(assert (=> b!198009 (=> (not res!93806) (not e!130209))))

(assert (=> b!198009 (= res!93806 (= (select (arr!4064 _keys!825) i!601) k0!843))))

(assert (= (and start!20186 res!93809) b!198003))

(assert (= (and b!198003 res!93805) b!198004))

(assert (= (and b!198004 res!93807) b!198006))

(assert (= (and b!198006 res!93811) b!198000))

(assert (= (and b!198000 res!93810) b!198005))

(assert (= (and b!198005 res!93808) b!198009))

(assert (= (and b!198009 res!93806) b!198007))

(assert (= (and b!198002 condMapEmpty!8102) mapIsEmpty!8102))

(assert (= (and b!198002 (not condMapEmpty!8102)) mapNonEmpty!8102))

(get-info :version)

(assert (= (and mapNonEmpty!8102 ((_ is ValueCellFull!2001) mapValue!8102)) b!198001))

(assert (= (and b!198002 ((_ is ValueCellFull!2001) mapDefault!8102)) b!198008))

(assert (= start!20186 b!198002))

(declare-fun m!224737 () Bool)

(assert (=> start!20186 m!224737))

(declare-fun m!224739 () Bool)

(assert (=> start!20186 m!224739))

(declare-fun m!224741 () Bool)

(assert (=> start!20186 m!224741))

(declare-fun m!224743 () Bool)

(assert (=> mapNonEmpty!8102 m!224743))

(declare-fun m!224745 () Bool)

(assert (=> b!198005 m!224745))

(declare-fun m!224747 () Bool)

(assert (=> b!198009 m!224747))

(declare-fun m!224749 () Bool)

(assert (=> b!198004 m!224749))

(declare-fun m!224751 () Bool)

(assert (=> b!198006 m!224751))

(declare-fun m!224753 () Bool)

(assert (=> b!198007 m!224753))

(declare-fun m!224755 () Bool)

(assert (=> b!198007 m!224755))

(declare-fun m!224757 () Bool)

(assert (=> b!198007 m!224757))

(check-sat (not b_next!4833) (not mapNonEmpty!8102) b_and!11597 (not start!20186) (not b!198004) (not b!198006) tp_is_empty!4689 (not b!198005) (not b!198007))
(check-sat b_and!11597 (not b_next!4833))
