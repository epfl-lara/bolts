; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109284 () Bool)

(assert start!109284)

(declare-fun b_free!28737 () Bool)

(declare-fun b_next!28737 () Bool)

(assert (=> start!109284 (= b_free!28737 (not b_next!28737))))

(declare-fun tp!101331 () Bool)

(declare-fun b_and!46837 () Bool)

(assert (=> start!109284 (= tp!101331 b_and!46837)))

(declare-fun b!1292383 () Bool)

(declare-fun e!737676 () Bool)

(declare-fun tp_is_empty!34377 () Bool)

(assert (=> b!1292383 (= e!737676 tp_is_empty!34377)))

(declare-fun b!1292384 () Bool)

(declare-fun res!858806 () Bool)

(declare-fun e!737677 () Bool)

(assert (=> b!1292384 (=> (not res!858806) (not e!737677))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85747 0))(
  ( (array!85748 (arr!41370 (Array (_ BitVec 32) (_ BitVec 64))) (size!41921 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85747)

(assert (=> b!1292384 (= res!858806 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41921 _keys!1741))))))

(declare-fun res!858807 () Bool)

(assert (=> start!109284 (=> (not res!858807) (not e!737677))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109284 (= res!858807 (validMask!0 mask!2175))))

(assert (=> start!109284 e!737677))

(assert (=> start!109284 tp_is_empty!34377))

(assert (=> start!109284 true))

(declare-datatypes ((V!50939 0))(
  ( (V!50940 (val!17263 Int)) )
))
(declare-datatypes ((ValueCell!16290 0))(
  ( (ValueCellFull!16290 (v!19864 V!50939)) (EmptyCell!16290) )
))
(declare-datatypes ((array!85749 0))(
  ( (array!85750 (arr!41371 (Array (_ BitVec 32) ValueCell!16290)) (size!41922 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85749)

(declare-fun e!737679 () Bool)

(declare-fun array_inv!31317 (array!85749) Bool)

(assert (=> start!109284 (and (array_inv!31317 _values!1445) e!737679)))

(declare-fun array_inv!31318 (array!85747) Bool)

(assert (=> start!109284 (array_inv!31318 _keys!1741)))

(assert (=> start!109284 tp!101331))

(declare-fun mapIsEmpty!53126 () Bool)

(declare-fun mapRes!53126 () Bool)

(assert (=> mapIsEmpty!53126 mapRes!53126))

(declare-fun b!1292385 () Bool)

(declare-fun res!858809 () Bool)

(assert (=> b!1292385 (=> (not res!858809) (not e!737677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85747 (_ BitVec 32)) Bool)

(assert (=> b!1292385 (= res!858809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292386 () Bool)

(declare-fun res!858810 () Bool)

(assert (=> b!1292386 (=> (not res!858810) (not e!737677))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292386 (= res!858810 (and (= (size!41922 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41921 _keys!1741) (size!41922 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292387 () Bool)

(assert (=> b!1292387 (= e!737677 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22346 0))(
  ( (tuple2!22347 (_1!11183 (_ BitVec 64)) (_2!11183 V!50939)) )
))
(declare-datatypes ((List!29533 0))(
  ( (Nil!29530) (Cons!29529 (h!30738 tuple2!22346) (t!43104 List!29533)) )
))
(declare-datatypes ((ListLongMap!20015 0))(
  ( (ListLongMap!20016 (toList!10023 List!29533)) )
))
(declare-fun contains!8079 (ListLongMap!20015 (_ BitVec 64)) Bool)

(assert (=> b!1292387 (not (contains!8079 (ListLongMap!20016 Nil!29530) k0!1205))))

(declare-datatypes ((Unit!42727 0))(
  ( (Unit!42728) )
))
(declare-fun lt!579277 () Unit!42727)

(declare-fun emptyContainsNothing!120 ((_ BitVec 64)) Unit!42727)

(assert (=> b!1292387 (= lt!579277 (emptyContainsNothing!120 k0!1205))))

(declare-fun b!1292388 () Bool)

(declare-fun res!858805 () Bool)

(assert (=> b!1292388 (=> (not res!858805) (not e!737677))))

(declare-fun minValue!1387 () V!50939)

(declare-fun zeroValue!1387 () V!50939)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5015 (array!85747 array!85749 (_ BitVec 32) (_ BitVec 32) V!50939 V!50939 (_ BitVec 32) Int) ListLongMap!20015)

(assert (=> b!1292388 (= res!858805 (contains!8079 (getCurrentListMap!5015 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292389 () Bool)

(declare-fun res!858804 () Bool)

(assert (=> b!1292389 (=> (not res!858804) (not e!737677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292389 (= res!858804 (not (validKeyInArray!0 (select (arr!41370 _keys!1741) from!2144))))))

(declare-fun b!1292390 () Bool)

(declare-fun res!858808 () Bool)

(assert (=> b!1292390 (=> (not res!858808) (not e!737677))))

(declare-datatypes ((List!29534 0))(
  ( (Nil!29531) (Cons!29530 (h!30739 (_ BitVec 64)) (t!43105 List!29534)) )
))
(declare-fun arrayNoDuplicates!0 (array!85747 (_ BitVec 32) List!29534) Bool)

(assert (=> b!1292390 (= res!858808 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29531))))

(declare-fun b!1292391 () Bool)

(declare-fun e!737678 () Bool)

(assert (=> b!1292391 (= e!737678 tp_is_empty!34377)))

(declare-fun mapNonEmpty!53126 () Bool)

(declare-fun tp!101330 () Bool)

(assert (=> mapNonEmpty!53126 (= mapRes!53126 (and tp!101330 e!737676))))

(declare-fun mapKey!53126 () (_ BitVec 32))

(declare-fun mapValue!53126 () ValueCell!16290)

(declare-fun mapRest!53126 () (Array (_ BitVec 32) ValueCell!16290))

(assert (=> mapNonEmpty!53126 (= (arr!41371 _values!1445) (store mapRest!53126 mapKey!53126 mapValue!53126))))

(declare-fun b!1292392 () Bool)

(assert (=> b!1292392 (= e!737679 (and e!737678 mapRes!53126))))

(declare-fun condMapEmpty!53126 () Bool)

(declare-fun mapDefault!53126 () ValueCell!16290)

(assert (=> b!1292392 (= condMapEmpty!53126 (= (arr!41371 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16290)) mapDefault!53126)))))

(declare-fun b!1292393 () Bool)

(declare-fun res!858803 () Bool)

(assert (=> b!1292393 (=> (not res!858803) (not e!737677))))

(assert (=> b!1292393 (= res!858803 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41921 _keys!1741))))))

(assert (= (and start!109284 res!858807) b!1292386))

(assert (= (and b!1292386 res!858810) b!1292385))

(assert (= (and b!1292385 res!858809) b!1292390))

(assert (= (and b!1292390 res!858808) b!1292384))

(assert (= (and b!1292384 res!858806) b!1292388))

(assert (= (and b!1292388 res!858805) b!1292393))

(assert (= (and b!1292393 res!858803) b!1292389))

(assert (= (and b!1292389 res!858804) b!1292387))

(assert (= (and b!1292392 condMapEmpty!53126) mapIsEmpty!53126))

(assert (= (and b!1292392 (not condMapEmpty!53126)) mapNonEmpty!53126))

(get-info :version)

(assert (= (and mapNonEmpty!53126 ((_ is ValueCellFull!16290) mapValue!53126)) b!1292383))

(assert (= (and b!1292392 ((_ is ValueCellFull!16290) mapDefault!53126)) b!1292391))

(assert (= start!109284 b!1292392))

(declare-fun m!1184969 () Bool)

(assert (=> b!1292388 m!1184969))

(assert (=> b!1292388 m!1184969))

(declare-fun m!1184971 () Bool)

(assert (=> b!1292388 m!1184971))

(declare-fun m!1184973 () Bool)

(assert (=> mapNonEmpty!53126 m!1184973))

(declare-fun m!1184975 () Bool)

(assert (=> b!1292390 m!1184975))

(declare-fun m!1184977 () Bool)

(assert (=> b!1292385 m!1184977))

(declare-fun m!1184979 () Bool)

(assert (=> b!1292387 m!1184979))

(declare-fun m!1184981 () Bool)

(assert (=> b!1292387 m!1184981))

(declare-fun m!1184983 () Bool)

(assert (=> b!1292389 m!1184983))

(assert (=> b!1292389 m!1184983))

(declare-fun m!1184985 () Bool)

(assert (=> b!1292389 m!1184985))

(declare-fun m!1184987 () Bool)

(assert (=> start!109284 m!1184987))

(declare-fun m!1184989 () Bool)

(assert (=> start!109284 m!1184989))

(declare-fun m!1184991 () Bool)

(assert (=> start!109284 m!1184991))

(check-sat (not b_next!28737) (not mapNonEmpty!53126) (not b!1292389) (not b!1292387) (not start!109284) b_and!46837 (not b!1292388) tp_is_empty!34377 (not b!1292390) (not b!1292385))
(check-sat b_and!46837 (not b_next!28737))
