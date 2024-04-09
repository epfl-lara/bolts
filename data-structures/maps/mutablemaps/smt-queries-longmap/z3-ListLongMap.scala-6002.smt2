; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77894 () Bool)

(assert start!77894)

(declare-fun b_free!16425 () Bool)

(declare-fun b_next!16425 () Bool)

(assert (=> start!77894 (= b_free!16425 (not b_next!16425))))

(declare-fun tp!57540 () Bool)

(declare-fun b_and!27011 () Bool)

(assert (=> start!77894 (= tp!57540 b_and!27011)))

(declare-fun mapNonEmpty!29980 () Bool)

(declare-fun mapRes!29980 () Bool)

(declare-fun tp!57541 () Bool)

(declare-fun e!509575 () Bool)

(assert (=> mapNonEmpty!29980 (= mapRes!29980 (and tp!57541 e!509575))))

(declare-datatypes ((V!30089 0))(
  ( (V!30090 (val!9472 Int)) )
))
(declare-datatypes ((ValueCell!8940 0))(
  ( (ValueCellFull!8940 (v!11979 V!30089)) (EmptyCell!8940) )
))
(declare-datatypes ((array!53706 0))(
  ( (array!53707 (arr!25807 (Array (_ BitVec 32) ValueCell!8940)) (size!26267 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53706)

(declare-fun mapRest!29980 () (Array (_ BitVec 32) ValueCell!8940))

(declare-fun mapKey!29980 () (_ BitVec 32))

(declare-fun mapValue!29980 () ValueCell!8940)

(assert (=> mapNonEmpty!29980 (= (arr!25807 _values!1152) (store mapRest!29980 mapKey!29980 mapValue!29980))))

(declare-fun res!613702 () Bool)

(declare-fun e!509578 () Bool)

(assert (=> start!77894 (=> (not res!613702) (not e!509578))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77894 (= res!613702 (validMask!0 mask!1756))))

(assert (=> start!77894 e!509578))

(declare-fun e!509577 () Bool)

(declare-fun array_inv!20176 (array!53706) Bool)

(assert (=> start!77894 (and (array_inv!20176 _values!1152) e!509577)))

(assert (=> start!77894 tp!57540))

(assert (=> start!77894 true))

(declare-fun tp_is_empty!18843 () Bool)

(assert (=> start!77894 tp_is_empty!18843))

(declare-datatypes ((array!53708 0))(
  ( (array!53709 (arr!25808 (Array (_ BitVec 32) (_ BitVec 64))) (size!26268 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53708)

(declare-fun array_inv!20177 (array!53708) Bool)

(assert (=> start!77894 (array_inv!20177 _keys!1386)))

(declare-fun b!909073 () Bool)

(declare-fun res!613701 () Bool)

(assert (=> b!909073 (=> (not res!613701) (not e!509578))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909073 (= res!613701 (and (= (size!26267 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26268 _keys!1386) (size!26267 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909074 () Bool)

(assert (=> b!909074 (= e!509578 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409909 () Bool)

(declare-fun zeroValue!1094 () V!30089)

(declare-fun minValue!1094 () V!30089)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12372 0))(
  ( (tuple2!12373 (_1!6196 (_ BitVec 64)) (_2!6196 V!30089)) )
))
(declare-datatypes ((List!18229 0))(
  ( (Nil!18226) (Cons!18225 (h!19371 tuple2!12372) (t!25818 List!18229)) )
))
(declare-datatypes ((ListLongMap!11083 0))(
  ( (ListLongMap!11084 (toList!5557 List!18229)) )
))
(declare-fun contains!4564 (ListLongMap!11083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2787 (array!53708 array!53706 (_ BitVec 32) (_ BitVec 32) V!30089 V!30089 (_ BitVec 32) Int) ListLongMap!11083)

(assert (=> b!909074 (= lt!409909 (contains!4564 (getCurrentListMap!2787 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909075 () Bool)

(declare-fun res!613699 () Bool)

(assert (=> b!909075 (=> (not res!613699) (not e!509578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53708 (_ BitVec 32)) Bool)

(assert (=> b!909075 (= res!613699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909076 () Bool)

(declare-fun e!509579 () Bool)

(assert (=> b!909076 (= e!509577 (and e!509579 mapRes!29980))))

(declare-fun condMapEmpty!29980 () Bool)

(declare-fun mapDefault!29980 () ValueCell!8940)

(assert (=> b!909076 (= condMapEmpty!29980 (= (arr!25807 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8940)) mapDefault!29980)))))

(declare-fun mapIsEmpty!29980 () Bool)

(assert (=> mapIsEmpty!29980 mapRes!29980))

(declare-fun b!909077 () Bool)

(declare-fun res!613700 () Bool)

(assert (=> b!909077 (=> (not res!613700) (not e!509578))))

(declare-datatypes ((List!18230 0))(
  ( (Nil!18227) (Cons!18226 (h!19372 (_ BitVec 64)) (t!25819 List!18230)) )
))
(declare-fun arrayNoDuplicates!0 (array!53708 (_ BitVec 32) List!18230) Bool)

(assert (=> b!909077 (= res!613700 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18227))))

(declare-fun b!909078 () Bool)

(assert (=> b!909078 (= e!509579 tp_is_empty!18843)))

(declare-fun b!909079 () Bool)

(assert (=> b!909079 (= e!509575 tp_is_empty!18843)))

(assert (= (and start!77894 res!613702) b!909073))

(assert (= (and b!909073 res!613701) b!909075))

(assert (= (and b!909075 res!613699) b!909077))

(assert (= (and b!909077 res!613700) b!909074))

(assert (= (and b!909076 condMapEmpty!29980) mapIsEmpty!29980))

(assert (= (and b!909076 (not condMapEmpty!29980)) mapNonEmpty!29980))

(get-info :version)

(assert (= (and mapNonEmpty!29980 ((_ is ValueCellFull!8940) mapValue!29980)) b!909079))

(assert (= (and b!909076 ((_ is ValueCellFull!8940) mapDefault!29980)) b!909078))

(assert (= start!77894 b!909076))

(declare-fun m!844477 () Bool)

(assert (=> b!909075 m!844477))

(declare-fun m!844479 () Bool)

(assert (=> start!77894 m!844479))

(declare-fun m!844481 () Bool)

(assert (=> start!77894 m!844481))

(declare-fun m!844483 () Bool)

(assert (=> start!77894 m!844483))

(declare-fun m!844485 () Bool)

(assert (=> b!909074 m!844485))

(assert (=> b!909074 m!844485))

(declare-fun m!844487 () Bool)

(assert (=> b!909074 m!844487))

(declare-fun m!844489 () Bool)

(assert (=> mapNonEmpty!29980 m!844489))

(declare-fun m!844491 () Bool)

(assert (=> b!909077 m!844491))

(check-sat (not b_next!16425) (not start!77894) (not mapNonEmpty!29980) (not b!909077) (not b!909074) b_and!27011 (not b!909075) tp_is_empty!18843)
(check-sat b_and!27011 (not b_next!16425))
