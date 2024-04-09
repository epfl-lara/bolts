; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77964 () Bool)

(assert start!77964)

(declare-fun b_free!16479 () Bool)

(declare-fun b_next!16479 () Bool)

(assert (=> start!77964 (= b_free!16479 (not b_next!16479))))

(declare-fun tp!57706 () Bool)

(declare-fun b_and!27067 () Bool)

(assert (=> start!77964 (= tp!57706 b_and!27067)))

(declare-fun b!909768 () Bool)

(declare-fun res!614088 () Bool)

(declare-fun e!510056 () Bool)

(assert (=> b!909768 (=> (not res!614088) (not e!510056))))

(declare-datatypes ((array!53812 0))(
  ( (array!53813 (arr!25859 (Array (_ BitVec 32) (_ BitVec 64))) (size!26319 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53812)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53812 (_ BitVec 32)) Bool)

(assert (=> b!909768 (= res!614088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909769 () Bool)

(assert (=> b!909769 (= e!510056 false)))

(declare-datatypes ((V!30161 0))(
  ( (V!30162 (val!9499 Int)) )
))
(declare-datatypes ((ValueCell!8967 0))(
  ( (ValueCellFull!8967 (v!12007 V!30161)) (EmptyCell!8967) )
))
(declare-datatypes ((array!53814 0))(
  ( (array!53815 (arr!25860 (Array (_ BitVec 32) ValueCell!8967)) (size!26320 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53814)

(declare-fun defaultEntry!1160 () Int)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30161)

(declare-fun lt!410068 () Bool)

(declare-fun zeroValue!1094 () V!30161)

(declare-datatypes ((tuple2!12412 0))(
  ( (tuple2!12413 (_1!6216 (_ BitVec 64)) (_2!6216 V!30161)) )
))
(declare-datatypes ((List!18266 0))(
  ( (Nil!18263) (Cons!18262 (h!19408 tuple2!12412) (t!25857 List!18266)) )
))
(declare-datatypes ((ListLongMap!11123 0))(
  ( (ListLongMap!11124 (toList!5577 List!18266)) )
))
(declare-fun contains!4585 (ListLongMap!11123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2807 (array!53812 array!53814 (_ BitVec 32) (_ BitVec 32) V!30161 V!30161 (_ BitVec 32) Int) ListLongMap!11123)

(assert (=> b!909769 (= lt!410068 (contains!4585 (getCurrentListMap!2807 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909770 () Bool)

(declare-fun e!510054 () Bool)

(declare-fun e!510053 () Bool)

(declare-fun mapRes!30064 () Bool)

(assert (=> b!909770 (= e!510054 (and e!510053 mapRes!30064))))

(declare-fun condMapEmpty!30064 () Bool)

(declare-fun mapDefault!30064 () ValueCell!8967)

(assert (=> b!909770 (= condMapEmpty!30064 (= (arr!25860 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8967)) mapDefault!30064)))))

(declare-fun b!909771 () Bool)

(declare-fun res!614087 () Bool)

(assert (=> b!909771 (=> (not res!614087) (not e!510056))))

(assert (=> b!909771 (= res!614087 (and (= (size!26320 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26319 _keys!1386) (size!26320 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909767 () Bool)

(declare-fun e!510055 () Bool)

(declare-fun tp_is_empty!18897 () Bool)

(assert (=> b!909767 (= e!510055 tp_is_empty!18897)))

(declare-fun res!614089 () Bool)

(assert (=> start!77964 (=> (not res!614089) (not e!510056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77964 (= res!614089 (validMask!0 mask!1756))))

(assert (=> start!77964 e!510056))

(declare-fun array_inv!20204 (array!53814) Bool)

(assert (=> start!77964 (and (array_inv!20204 _values!1152) e!510054)))

(assert (=> start!77964 tp!57706))

(assert (=> start!77964 true))

(assert (=> start!77964 tp_is_empty!18897))

(declare-fun array_inv!20205 (array!53812) Bool)

(assert (=> start!77964 (array_inv!20205 _keys!1386)))

(declare-fun b!909772 () Bool)

(declare-fun res!614086 () Bool)

(assert (=> b!909772 (=> (not res!614086) (not e!510056))))

(declare-datatypes ((List!18267 0))(
  ( (Nil!18264) (Cons!18263 (h!19409 (_ BitVec 64)) (t!25858 List!18267)) )
))
(declare-fun arrayNoDuplicates!0 (array!53812 (_ BitVec 32) List!18267) Bool)

(assert (=> b!909772 (= res!614086 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18264))))

(declare-fun mapNonEmpty!30064 () Bool)

(declare-fun tp!57705 () Bool)

(assert (=> mapNonEmpty!30064 (= mapRes!30064 (and tp!57705 e!510055))))

(declare-fun mapKey!30064 () (_ BitVec 32))

(declare-fun mapRest!30064 () (Array (_ BitVec 32) ValueCell!8967))

(declare-fun mapValue!30064 () ValueCell!8967)

(assert (=> mapNonEmpty!30064 (= (arr!25860 _values!1152) (store mapRest!30064 mapKey!30064 mapValue!30064))))

(declare-fun b!909773 () Bool)

(assert (=> b!909773 (= e!510053 tp_is_empty!18897)))

(declare-fun mapIsEmpty!30064 () Bool)

(assert (=> mapIsEmpty!30064 mapRes!30064))

(assert (= (and start!77964 res!614089) b!909771))

(assert (= (and b!909771 res!614087) b!909768))

(assert (= (and b!909768 res!614088) b!909772))

(assert (= (and b!909772 res!614086) b!909769))

(assert (= (and b!909770 condMapEmpty!30064) mapIsEmpty!30064))

(assert (= (and b!909770 (not condMapEmpty!30064)) mapNonEmpty!30064))

(get-info :version)

(assert (= (and mapNonEmpty!30064 ((_ is ValueCellFull!8967) mapValue!30064)) b!909767))

(assert (= (and b!909770 ((_ is ValueCellFull!8967) mapDefault!30064)) b!909773))

(assert (= start!77964 b!909770))

(declare-fun m!845001 () Bool)

(assert (=> mapNonEmpty!30064 m!845001))

(declare-fun m!845003 () Bool)

(assert (=> start!77964 m!845003))

(declare-fun m!845005 () Bool)

(assert (=> start!77964 m!845005))

(declare-fun m!845007 () Bool)

(assert (=> start!77964 m!845007))

(declare-fun m!845009 () Bool)

(assert (=> b!909769 m!845009))

(assert (=> b!909769 m!845009))

(declare-fun m!845011 () Bool)

(assert (=> b!909769 m!845011))

(declare-fun m!845013 () Bool)

(assert (=> b!909772 m!845013))

(declare-fun m!845015 () Bool)

(assert (=> b!909768 m!845015))

(check-sat (not b!909768) (not b_next!16479) tp_is_empty!18897 (not b!909769) (not mapNonEmpty!30064) b_and!27067 (not b!909772) (not start!77964))
(check-sat b_and!27067 (not b_next!16479))
