; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4140 () Bool)

(assert start!4140)

(declare-fun b_free!1047 () Bool)

(declare-fun b_next!1047 () Bool)

(assert (=> start!4140 (= b_free!1047 (not b_next!1047))))

(declare-fun tp!4561 () Bool)

(declare-fun b_and!1859 () Bool)

(assert (=> start!4140 (= tp!4561 b_and!1859)))

(declare-fun b!31156 () Bool)

(declare-fun res!18834 () Bool)

(declare-fun e!19932 () Bool)

(assert (=> b!31156 (=> (not res!18834) (not e!19932))))

(declare-datatypes ((array!2009 0))(
  ( (array!2010 (arr!958 (Array (_ BitVec 32) (_ BitVec 64))) (size!1059 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2009)

(declare-datatypes ((List!784 0))(
  ( (Nil!781) (Cons!780 (h!1347 (_ BitVec 64)) (t!3479 List!784)) )
))
(declare-fun arrayNoDuplicates!0 (array!2009 (_ BitVec 32) List!784) Bool)

(assert (=> b!31156 (= res!18834 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!781))))

(declare-fun b!31157 () Bool)

(declare-fun e!19933 () Bool)

(declare-fun tp_is_empty!1401 () Bool)

(assert (=> b!31157 (= e!19933 tp_is_empty!1401)))

(declare-fun b!31158 () Bool)

(declare-fun res!18840 () Bool)

(assert (=> b!31158 (=> (not res!18840) (not e!19932))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31158 (= res!18840 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!31159 () Bool)

(declare-fun res!18836 () Bool)

(assert (=> b!31159 (=> (not res!18836) (not e!19932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31159 (= res!18836 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1630 () Bool)

(declare-fun mapRes!1630 () Bool)

(declare-fun tp!4560 () Bool)

(assert (=> mapNonEmpty!1630 (= mapRes!1630 (and tp!4560 e!19933))))

(declare-datatypes ((V!1693 0))(
  ( (V!1694 (val!727 Int)) )
))
(declare-datatypes ((ValueCell!501 0))(
  ( (ValueCellFull!501 (v!1816 V!1693)) (EmptyCell!501) )
))
(declare-datatypes ((array!2011 0))(
  ( (array!2012 (arr!959 (Array (_ BitVec 32) ValueCell!501)) (size!1060 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2011)

(declare-fun mapRest!1630 () (Array (_ BitVec 32) ValueCell!501))

(declare-fun mapValue!1630 () ValueCell!501)

(declare-fun mapKey!1630 () (_ BitVec 32))

(assert (=> mapNonEmpty!1630 (= (arr!959 _values!1501) (store mapRest!1630 mapKey!1630 mapValue!1630))))

(declare-fun mapIsEmpty!1630 () Bool)

(assert (=> mapIsEmpty!1630 mapRes!1630))

(declare-fun res!18837 () Bool)

(assert (=> start!4140 (=> (not res!18837) (not e!19932))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4140 (= res!18837 (validMask!0 mask!2294))))

(assert (=> start!4140 e!19932))

(assert (=> start!4140 true))

(assert (=> start!4140 tp!4561))

(declare-fun e!19936 () Bool)

(declare-fun array_inv!637 (array!2011) Bool)

(assert (=> start!4140 (and (array_inv!637 _values!1501) e!19936)))

(declare-fun array_inv!638 (array!2009) Bool)

(assert (=> start!4140 (array_inv!638 _keys!1833)))

(assert (=> start!4140 tp_is_empty!1401))

(declare-fun b!31160 () Bool)

(declare-fun res!18838 () Bool)

(assert (=> b!31160 (=> (not res!18838) (not e!19932))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!124 0))(
  ( (MissingZero!124 (index!2618 (_ BitVec 32))) (Found!124 (index!2619 (_ BitVec 32))) (Intermediate!124 (undefined!936 Bool) (index!2620 (_ BitVec 32)) (x!6610 (_ BitVec 32))) (Undefined!124) (MissingVacant!124 (index!2621 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!2009 (_ BitVec 32)) SeekEntryResult!124)

(assert (=> b!31160 (= res!18838 (not ((_ is Found!124) (seekEntry!0 k0!1304 _keys!1833 mask!2294))))))

(declare-fun b!31161 () Bool)

(declare-fun res!18839 () Bool)

(assert (=> b!31161 (=> (not res!18839) (not e!19932))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31161 (= res!18839 (and (= (size!1060 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1059 _keys!1833) (size!1060 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31162 () Bool)

(declare-fun e!19935 () Bool)

(assert (=> b!31162 (= e!19935 tp_is_empty!1401)))

(declare-fun b!31163 () Bool)

(declare-fun res!18835 () Bool)

(assert (=> b!31163 (=> (not res!18835) (not e!19932))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1693)

(declare-fun minValue!1443 () V!1693)

(declare-datatypes ((tuple2!1182 0))(
  ( (tuple2!1183 (_1!601 (_ BitVec 64)) (_2!601 V!1693)) )
))
(declare-datatypes ((List!785 0))(
  ( (Nil!782) (Cons!781 (h!1348 tuple2!1182) (t!3480 List!785)) )
))
(declare-datatypes ((ListLongMap!763 0))(
  ( (ListLongMap!764 (toList!397 List!785)) )
))
(declare-fun contains!334 (ListLongMap!763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!222 (array!2009 array!2011 (_ BitVec 32) (_ BitVec 32) V!1693 V!1693 (_ BitVec 32) Int) ListLongMap!763)

(assert (=> b!31163 (= res!18835 (not (contains!334 (getCurrentListMap!222 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!31164 () Bool)

(assert (=> b!31164 (= e!19932 (not (= (size!1059 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun b!31165 () Bool)

(assert (=> b!31165 (= e!19936 (and e!19935 mapRes!1630))))

(declare-fun condMapEmpty!1630 () Bool)

(declare-fun mapDefault!1630 () ValueCell!501)

(assert (=> b!31165 (= condMapEmpty!1630 (= (arr!959 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!501)) mapDefault!1630)))))

(declare-fun b!31166 () Bool)

(declare-fun res!18841 () Bool)

(assert (=> b!31166 (=> (not res!18841) (not e!19932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2009 (_ BitVec 32)) Bool)

(assert (=> b!31166 (= res!18841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4140 res!18837) b!31161))

(assert (= (and b!31161 res!18839) b!31166))

(assert (= (and b!31166 res!18841) b!31156))

(assert (= (and b!31156 res!18834) b!31159))

(assert (= (and b!31159 res!18836) b!31163))

(assert (= (and b!31163 res!18835) b!31158))

(assert (= (and b!31158 res!18840) b!31160))

(assert (= (and b!31160 res!18838) b!31164))

(assert (= (and b!31165 condMapEmpty!1630) mapIsEmpty!1630))

(assert (= (and b!31165 (not condMapEmpty!1630)) mapNonEmpty!1630))

(assert (= (and mapNonEmpty!1630 ((_ is ValueCellFull!501) mapValue!1630)) b!31157))

(assert (= (and b!31165 ((_ is ValueCellFull!501) mapDefault!1630)) b!31162))

(assert (= start!4140 b!31165))

(declare-fun m!25021 () Bool)

(assert (=> b!31163 m!25021))

(assert (=> b!31163 m!25021))

(declare-fun m!25023 () Bool)

(assert (=> b!31163 m!25023))

(declare-fun m!25025 () Bool)

(assert (=> b!31160 m!25025))

(declare-fun m!25027 () Bool)

(assert (=> b!31156 m!25027))

(declare-fun m!25029 () Bool)

(assert (=> b!31166 m!25029))

(declare-fun m!25031 () Bool)

(assert (=> b!31158 m!25031))

(declare-fun m!25033 () Bool)

(assert (=> mapNonEmpty!1630 m!25033))

(declare-fun m!25035 () Bool)

(assert (=> start!4140 m!25035))

(declare-fun m!25037 () Bool)

(assert (=> start!4140 m!25037))

(declare-fun m!25039 () Bool)

(assert (=> start!4140 m!25039))

(declare-fun m!25041 () Bool)

(assert (=> b!31159 m!25041))

(check-sat (not b!31156) (not b_next!1047) b_and!1859 (not mapNonEmpty!1630) tp_is_empty!1401 (not b!31166) (not start!4140) (not b!31163) (not b!31159) (not b!31160) (not b!31158))
(check-sat b_and!1859 (not b_next!1047))
