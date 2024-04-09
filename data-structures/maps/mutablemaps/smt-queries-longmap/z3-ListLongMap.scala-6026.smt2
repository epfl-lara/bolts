; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78070 () Bool)

(assert start!78070)

(declare-fun b_free!16569 () Bool)

(declare-fun b_next!16569 () Bool)

(assert (=> start!78070 (= b_free!16569 (not b_next!16569))))

(declare-fun tp!57979 () Bool)

(declare-fun b_and!27159 () Bool)

(assert (=> start!78070 (= tp!57979 b_and!27159)))

(declare-fun b!910840 () Bool)

(declare-fun res!614691 () Bool)

(declare-fun e!510799 () Bool)

(assert (=> b!910840 (=> (not res!614691) (not e!510799))))

(declare-datatypes ((array!53984 0))(
  ( (array!53985 (arr!25944 (Array (_ BitVec 32) (_ BitVec 64))) (size!26404 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53984)

(declare-datatypes ((List!18329 0))(
  ( (Nil!18326) (Cons!18325 (h!19471 (_ BitVec 64)) (t!25922 List!18329)) )
))
(declare-fun arrayNoDuplicates!0 (array!53984 (_ BitVec 32) List!18329) Bool)

(assert (=> b!910840 (= res!614691 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18326))))

(declare-fun mapIsEmpty!30202 () Bool)

(declare-fun mapRes!30202 () Bool)

(assert (=> mapIsEmpty!30202 mapRes!30202))

(declare-fun b!910841 () Bool)

(declare-fun res!614692 () Bool)

(assert (=> b!910841 (=> (not res!614692) (not e!510799))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53984 (_ BitVec 32)) Bool)

(assert (=> b!910841 (= res!614692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910842 () Bool)

(declare-fun e!510800 () Bool)

(declare-fun e!510801 () Bool)

(assert (=> b!910842 (= e!510800 (and e!510801 mapRes!30202))))

(declare-fun condMapEmpty!30202 () Bool)

(declare-datatypes ((V!30281 0))(
  ( (V!30282 (val!9544 Int)) )
))
(declare-datatypes ((ValueCell!9012 0))(
  ( (ValueCellFull!9012 (v!12053 V!30281)) (EmptyCell!9012) )
))
(declare-datatypes ((array!53986 0))(
  ( (array!53987 (arr!25945 (Array (_ BitVec 32) ValueCell!9012)) (size!26405 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53986)

(declare-fun mapDefault!30202 () ValueCell!9012)

(assert (=> b!910842 (= condMapEmpty!30202 (= (arr!25945 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9012)) mapDefault!30202)))))

(declare-fun b!910843 () Bool)

(declare-fun tp_is_empty!18987 () Bool)

(assert (=> b!910843 (= e!510801 tp_is_empty!18987)))

(declare-fun b!910844 () Bool)

(declare-fun res!614690 () Bool)

(assert (=> b!910844 (=> (not res!614690) (not e!510799))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910844 (= res!614690 (and (= (size!26405 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26404 _keys!1386) (size!26405 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614689 () Bool)

(assert (=> start!78070 (=> (not res!614689) (not e!510799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78070 (= res!614689 (validMask!0 mask!1756))))

(assert (=> start!78070 e!510799))

(declare-fun array_inv!20268 (array!53986) Bool)

(assert (=> start!78070 (and (array_inv!20268 _values!1152) e!510800)))

(assert (=> start!78070 tp!57979))

(assert (=> start!78070 true))

(assert (=> start!78070 tp_is_empty!18987))

(declare-fun array_inv!20269 (array!53984) Bool)

(assert (=> start!78070 (array_inv!20269 _keys!1386)))

(declare-fun b!910839 () Bool)

(declare-fun e!510802 () Bool)

(assert (=> b!910839 (= e!510802 tp_is_empty!18987)))

(declare-fun b!910845 () Bool)

(assert (=> b!910845 (= e!510799 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30281)

(declare-fun minValue!1094 () V!30281)

(declare-fun lt!410281 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12478 0))(
  ( (tuple2!12479 (_1!6249 (_ BitVec 64)) (_2!6249 V!30281)) )
))
(declare-datatypes ((List!18330 0))(
  ( (Nil!18327) (Cons!18326 (h!19472 tuple2!12478) (t!25923 List!18330)) )
))
(declare-datatypes ((ListLongMap!11189 0))(
  ( (ListLongMap!11190 (toList!5610 List!18330)) )
))
(declare-fun contains!4619 (ListLongMap!11189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2840 (array!53984 array!53986 (_ BitVec 32) (_ BitVec 32) V!30281 V!30281 (_ BitVec 32) Int) ListLongMap!11189)

(assert (=> b!910845 (= lt!410281 (contains!4619 (getCurrentListMap!2840 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!30202 () Bool)

(declare-fun tp!57978 () Bool)

(assert (=> mapNonEmpty!30202 (= mapRes!30202 (and tp!57978 e!510802))))

(declare-fun mapRest!30202 () (Array (_ BitVec 32) ValueCell!9012))

(declare-fun mapValue!30202 () ValueCell!9012)

(declare-fun mapKey!30202 () (_ BitVec 32))

(assert (=> mapNonEmpty!30202 (= (arr!25945 _values!1152) (store mapRest!30202 mapKey!30202 mapValue!30202))))

(assert (= (and start!78070 res!614689) b!910844))

(assert (= (and b!910844 res!614690) b!910841))

(assert (= (and b!910841 res!614692) b!910840))

(assert (= (and b!910840 res!614691) b!910845))

(assert (= (and b!910842 condMapEmpty!30202) mapIsEmpty!30202))

(assert (= (and b!910842 (not condMapEmpty!30202)) mapNonEmpty!30202))

(get-info :version)

(assert (= (and mapNonEmpty!30202 ((_ is ValueCellFull!9012) mapValue!30202)) b!910839))

(assert (= (and b!910842 ((_ is ValueCellFull!9012) mapDefault!30202)) b!910843))

(assert (= start!78070 b!910842))

(declare-fun m!845813 () Bool)

(assert (=> start!78070 m!845813))

(declare-fun m!845815 () Bool)

(assert (=> start!78070 m!845815))

(declare-fun m!845817 () Bool)

(assert (=> start!78070 m!845817))

(declare-fun m!845819 () Bool)

(assert (=> mapNonEmpty!30202 m!845819))

(declare-fun m!845821 () Bool)

(assert (=> b!910841 m!845821))

(declare-fun m!845823 () Bool)

(assert (=> b!910840 m!845823))

(declare-fun m!845825 () Bool)

(assert (=> b!910845 m!845825))

(assert (=> b!910845 m!845825))

(declare-fun m!845827 () Bool)

(assert (=> b!910845 m!845827))

(check-sat (not b_next!16569) (not mapNonEmpty!30202) b_and!27159 (not b!910841) (not b!910845) (not start!78070) tp_is_empty!18987 (not b!910840))
(check-sat b_and!27159 (not b_next!16569))
