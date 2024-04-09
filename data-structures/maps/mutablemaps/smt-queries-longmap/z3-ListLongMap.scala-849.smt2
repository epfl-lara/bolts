; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20204 () Bool)

(assert start!20204)

(declare-fun b_free!4851 () Bool)

(declare-fun b_next!4851 () Bool)

(assert (=> start!20204 (= b_free!4851 (not b_next!4851))))

(declare-fun tp!17584 () Bool)

(declare-fun b_and!11615 () Bool)

(assert (=> start!20204 (= tp!17584 b_and!11615)))

(declare-fun res!93994 () Bool)

(declare-fun e!130343 () Bool)

(assert (=> start!20204 (=> (not res!93994) (not e!130343))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20204 (= res!93994 (validMask!0 mask!1149))))

(assert (=> start!20204 e!130343))

(declare-datatypes ((V!5923 0))(
  ( (V!5924 (val!2398 Int)) )
))
(declare-datatypes ((ValueCell!2010 0))(
  ( (ValueCellFull!2010 (v!4364 V!5923)) (EmptyCell!2010) )
))
(declare-datatypes ((array!8662 0))(
  ( (array!8663 (arr!4081 (Array (_ BitVec 32) ValueCell!2010)) (size!4406 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8662)

(declare-fun e!130341 () Bool)

(declare-fun array_inv!2661 (array!8662) Bool)

(assert (=> start!20204 (and (array_inv!2661 _values!649) e!130341)))

(assert (=> start!20204 true))

(declare-fun tp_is_empty!4707 () Bool)

(assert (=> start!20204 tp_is_empty!4707))

(declare-datatypes ((array!8664 0))(
  ( (array!8665 (arr!4082 (Array (_ BitVec 32) (_ BitVec 64))) (size!4407 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8664)

(declare-fun array_inv!2662 (array!8664) Bool)

(assert (=> start!20204 (array_inv!2662 _keys!825)))

(assert (=> start!20204 tp!17584))

(declare-fun b!198270 () Bool)

(declare-fun res!93996 () Bool)

(assert (=> b!198270 (=> (not res!93996) (not e!130343))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198270 (= res!93996 (and (= (size!4406 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4407 _keys!825) (size!4406 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198271 () Bool)

(declare-fun res!93999 () Bool)

(assert (=> b!198271 (=> (not res!93999) (not e!130343))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198271 (= res!93999 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4407 _keys!825))))))

(declare-fun b!198272 () Bool)

(declare-fun res!93997 () Bool)

(assert (=> b!198272 (=> (not res!93997) (not e!130343))))

(declare-datatypes ((List!2572 0))(
  ( (Nil!2569) (Cons!2568 (h!3210 (_ BitVec 64)) (t!7511 List!2572)) )
))
(declare-fun arrayNoDuplicates!0 (array!8664 (_ BitVec 32) List!2572) Bool)

(assert (=> b!198272 (= res!93997 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2569))))

(declare-fun b!198273 () Bool)

(declare-fun e!130344 () Bool)

(declare-fun mapRes!8129 () Bool)

(assert (=> b!198273 (= e!130341 (and e!130344 mapRes!8129))))

(declare-fun condMapEmpty!8129 () Bool)

(declare-fun mapDefault!8129 () ValueCell!2010)

(assert (=> b!198273 (= condMapEmpty!8129 (= (arr!4081 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2010)) mapDefault!8129)))))

(declare-fun b!198274 () Bool)

(declare-fun res!93995 () Bool)

(assert (=> b!198274 (=> (not res!93995) (not e!130343))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!198274 (= res!93995 (= (select (arr!4082 _keys!825) i!601) k0!843))))

(declare-fun b!198275 () Bool)

(declare-fun res!94000 () Bool)

(assert (=> b!198275 (=> (not res!94000) (not e!130343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8664 (_ BitVec 32)) Bool)

(assert (=> b!198275 (= res!94000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8129 () Bool)

(declare-fun tp!17585 () Bool)

(declare-fun e!130345 () Bool)

(assert (=> mapNonEmpty!8129 (= mapRes!8129 (and tp!17585 e!130345))))

(declare-fun mapKey!8129 () (_ BitVec 32))

(declare-fun mapValue!8129 () ValueCell!2010)

(declare-fun mapRest!8129 () (Array (_ BitVec 32) ValueCell!2010))

(assert (=> mapNonEmpty!8129 (= (arr!4081 _values!649) (store mapRest!8129 mapKey!8129 mapValue!8129))))

(declare-fun b!198276 () Bool)

(assert (=> b!198276 (= e!130343 false)))

(declare-fun v!520 () V!5923)

(declare-fun zeroValue!615 () V!5923)

(declare-datatypes ((tuple2!3634 0))(
  ( (tuple2!3635 (_1!1827 (_ BitVec 64)) (_2!1827 V!5923)) )
))
(declare-datatypes ((List!2573 0))(
  ( (Nil!2570) (Cons!2569 (h!3211 tuple2!3634) (t!7512 List!2573)) )
))
(declare-datatypes ((ListLongMap!2561 0))(
  ( (ListLongMap!2562 (toList!1296 List!2573)) )
))
(declare-fun lt!97915 () ListLongMap!2561)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5923)

(declare-fun getCurrentListMapNoExtraKeys!253 (array!8664 array!8662 (_ BitVec 32) (_ BitVec 32) V!5923 V!5923 (_ BitVec 32) Int) ListLongMap!2561)

(assert (=> b!198276 (= lt!97915 (getCurrentListMapNoExtraKeys!253 _keys!825 (array!8663 (store (arr!4081 _values!649) i!601 (ValueCellFull!2010 v!520)) (size!4406 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97914 () ListLongMap!2561)

(assert (=> b!198276 (= lt!97914 (getCurrentListMapNoExtraKeys!253 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198277 () Bool)

(assert (=> b!198277 (= e!130344 tp_is_empty!4707)))

(declare-fun mapIsEmpty!8129 () Bool)

(assert (=> mapIsEmpty!8129 mapRes!8129))

(declare-fun b!198278 () Bool)

(declare-fun res!93998 () Bool)

(assert (=> b!198278 (=> (not res!93998) (not e!130343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198278 (= res!93998 (validKeyInArray!0 k0!843))))

(declare-fun b!198279 () Bool)

(assert (=> b!198279 (= e!130345 tp_is_empty!4707)))

(assert (= (and start!20204 res!93994) b!198270))

(assert (= (and b!198270 res!93996) b!198275))

(assert (= (and b!198275 res!94000) b!198272))

(assert (= (and b!198272 res!93997) b!198271))

(assert (= (and b!198271 res!93999) b!198278))

(assert (= (and b!198278 res!93998) b!198274))

(assert (= (and b!198274 res!93995) b!198276))

(assert (= (and b!198273 condMapEmpty!8129) mapIsEmpty!8129))

(assert (= (and b!198273 (not condMapEmpty!8129)) mapNonEmpty!8129))

(get-info :version)

(assert (= (and mapNonEmpty!8129 ((_ is ValueCellFull!2010) mapValue!8129)) b!198279))

(assert (= (and b!198273 ((_ is ValueCellFull!2010) mapDefault!8129)) b!198277))

(assert (= start!20204 b!198273))

(declare-fun m!224935 () Bool)

(assert (=> b!198272 m!224935))

(declare-fun m!224937 () Bool)

(assert (=> mapNonEmpty!8129 m!224937))

(declare-fun m!224939 () Bool)

(assert (=> start!20204 m!224939))

(declare-fun m!224941 () Bool)

(assert (=> start!20204 m!224941))

(declare-fun m!224943 () Bool)

(assert (=> start!20204 m!224943))

(declare-fun m!224945 () Bool)

(assert (=> b!198274 m!224945))

(declare-fun m!224947 () Bool)

(assert (=> b!198276 m!224947))

(declare-fun m!224949 () Bool)

(assert (=> b!198276 m!224949))

(declare-fun m!224951 () Bool)

(assert (=> b!198276 m!224951))

(declare-fun m!224953 () Bool)

(assert (=> b!198278 m!224953))

(declare-fun m!224955 () Bool)

(assert (=> b!198275 m!224955))

(check-sat (not b!198275) b_and!11615 (not start!20204) (not mapNonEmpty!8129) (not b!198278) (not b!198276) (not b_next!4851) (not b!198272) tp_is_empty!4707)
(check-sat b_and!11615 (not b_next!4851))
