; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77906 () Bool)

(assert start!77906)

(declare-fun b_free!16437 () Bool)

(declare-fun b_next!16437 () Bool)

(assert (=> start!77906 (= b_free!16437 (not b_next!16437))))

(declare-fun tp!57576 () Bool)

(declare-fun b_and!27023 () Bool)

(assert (=> start!77906 (= tp!57576 b_and!27023)))

(declare-fun mapNonEmpty!29998 () Bool)

(declare-fun mapRes!29998 () Bool)

(declare-fun tp!57577 () Bool)

(declare-fun e!509666 () Bool)

(assert (=> mapNonEmpty!29998 (= mapRes!29998 (and tp!57577 e!509666))))

(declare-datatypes ((V!30105 0))(
  ( (V!30106 (val!9478 Int)) )
))
(declare-datatypes ((ValueCell!8946 0))(
  ( (ValueCellFull!8946 (v!11985 V!30105)) (EmptyCell!8946) )
))
(declare-datatypes ((array!53728 0))(
  ( (array!53729 (arr!25818 (Array (_ BitVec 32) ValueCell!8946)) (size!26278 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53728)

(declare-fun mapRest!29998 () (Array (_ BitVec 32) ValueCell!8946))

(declare-fun mapValue!29998 () ValueCell!8946)

(declare-fun mapKey!29998 () (_ BitVec 32))

(assert (=> mapNonEmpty!29998 (= (arr!25818 _values!1152) (store mapRest!29998 mapKey!29998 mapValue!29998))))

(declare-fun res!613772 () Bool)

(declare-fun e!509669 () Bool)

(assert (=> start!77906 (=> (not res!613772) (not e!509669))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77906 (= res!613772 (validMask!0 mask!1756))))

(assert (=> start!77906 e!509669))

(declare-fun e!509667 () Bool)

(declare-fun array_inv!20184 (array!53728) Bool)

(assert (=> start!77906 (and (array_inv!20184 _values!1152) e!509667)))

(assert (=> start!77906 tp!57576))

(assert (=> start!77906 true))

(declare-fun tp_is_empty!18855 () Bool)

(assert (=> start!77906 tp_is_empty!18855))

(declare-datatypes ((array!53730 0))(
  ( (array!53731 (arr!25819 (Array (_ BitVec 32) (_ BitVec 64))) (size!26279 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53730)

(declare-fun array_inv!20185 (array!53730) Bool)

(assert (=> start!77906 (array_inv!20185 _keys!1386)))

(declare-fun b!909199 () Bool)

(assert (=> b!909199 (= e!509666 tp_is_empty!18855)))

(declare-fun b!909200 () Bool)

(declare-fun e!509665 () Bool)

(assert (=> b!909200 (= e!509665 tp_is_empty!18855)))

(declare-fun b!909201 () Bool)

(declare-fun res!613774 () Bool)

(assert (=> b!909201 (=> (not res!613774) (not e!509669))))

(declare-datatypes ((List!18236 0))(
  ( (Nil!18233) (Cons!18232 (h!19378 (_ BitVec 64)) (t!25825 List!18236)) )
))
(declare-fun arrayNoDuplicates!0 (array!53730 (_ BitVec 32) List!18236) Bool)

(assert (=> b!909201 (= res!613774 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18233))))

(declare-fun b!909202 () Bool)

(assert (=> b!909202 (= e!509669 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30105)

(declare-fun lt!409927 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30105)

(declare-datatypes ((tuple2!12378 0))(
  ( (tuple2!12379 (_1!6199 (_ BitVec 64)) (_2!6199 V!30105)) )
))
(declare-datatypes ((List!18237 0))(
  ( (Nil!18234) (Cons!18233 (h!19379 tuple2!12378) (t!25826 List!18237)) )
))
(declare-datatypes ((ListLongMap!11089 0))(
  ( (ListLongMap!11090 (toList!5560 List!18237)) )
))
(declare-fun contains!4567 (ListLongMap!11089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2790 (array!53730 array!53728 (_ BitVec 32) (_ BitVec 32) V!30105 V!30105 (_ BitVec 32) Int) ListLongMap!11089)

(assert (=> b!909202 (= lt!409927 (contains!4567 (getCurrentListMap!2790 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapIsEmpty!29998 () Bool)

(assert (=> mapIsEmpty!29998 mapRes!29998))

(declare-fun b!909203 () Bool)

(assert (=> b!909203 (= e!509667 (and e!509665 mapRes!29998))))

(declare-fun condMapEmpty!29998 () Bool)

(declare-fun mapDefault!29998 () ValueCell!8946)

(assert (=> b!909203 (= condMapEmpty!29998 (= (arr!25818 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8946)) mapDefault!29998)))))

(declare-fun b!909204 () Bool)

(declare-fun res!613773 () Bool)

(assert (=> b!909204 (=> (not res!613773) (not e!509669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53730 (_ BitVec 32)) Bool)

(assert (=> b!909204 (= res!613773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909205 () Bool)

(declare-fun res!613771 () Bool)

(assert (=> b!909205 (=> (not res!613771) (not e!509669))))

(assert (=> b!909205 (= res!613771 (and (= (size!26278 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26279 _keys!1386) (size!26278 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77906 res!613772) b!909205))

(assert (= (and b!909205 res!613771) b!909204))

(assert (= (and b!909204 res!613773) b!909201))

(assert (= (and b!909201 res!613774) b!909202))

(assert (= (and b!909203 condMapEmpty!29998) mapIsEmpty!29998))

(assert (= (and b!909203 (not condMapEmpty!29998)) mapNonEmpty!29998))

(get-info :version)

(assert (= (and mapNonEmpty!29998 ((_ is ValueCellFull!8946) mapValue!29998)) b!909199))

(assert (= (and b!909203 ((_ is ValueCellFull!8946) mapDefault!29998)) b!909200))

(assert (= start!77906 b!909203))

(declare-fun m!844573 () Bool)

(assert (=> b!909202 m!844573))

(assert (=> b!909202 m!844573))

(declare-fun m!844575 () Bool)

(assert (=> b!909202 m!844575))

(declare-fun m!844577 () Bool)

(assert (=> start!77906 m!844577))

(declare-fun m!844579 () Bool)

(assert (=> start!77906 m!844579))

(declare-fun m!844581 () Bool)

(assert (=> start!77906 m!844581))

(declare-fun m!844583 () Bool)

(assert (=> b!909201 m!844583))

(declare-fun m!844585 () Bool)

(assert (=> mapNonEmpty!29998 m!844585))

(declare-fun m!844587 () Bool)

(assert (=> b!909204 m!844587))

(check-sat (not b!909201) (not b_next!16437) tp_is_empty!18855 b_and!27023 (not start!77906) (not b!909204) (not mapNonEmpty!29998) (not b!909202))
(check-sat b_and!27023 (not b_next!16437))
