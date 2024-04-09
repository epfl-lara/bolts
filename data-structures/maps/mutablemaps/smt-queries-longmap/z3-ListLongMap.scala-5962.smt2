; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77628 () Bool)

(assert start!77628)

(declare-fun b_free!16185 () Bool)

(declare-fun b_next!16185 () Bool)

(assert (=> start!77628 (= b_free!16185 (not b_next!16185))))

(declare-fun tp!56817 () Bool)

(declare-fun b_and!26569 () Bool)

(assert (=> start!77628 (= tp!56817 b_and!26569)))

(declare-fun b!904221 () Bool)

(declare-fun res!610215 () Bool)

(declare-fun e!506707 () Bool)

(assert (=> b!904221 (=> (not res!610215) (not e!506707))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53236 0))(
  ( (array!53237 (arr!25573 (Array (_ BitVec 32) (_ BitVec 64))) (size!26033 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53236)

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!904221 (= res!610215 (and (= (select (arr!25573 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904222 () Bool)

(declare-fun e!506702 () Bool)

(assert (=> b!904222 (= e!506707 (not e!506702))))

(declare-fun res!610217 () Bool)

(assert (=> b!904222 (=> res!610217 e!506702)))

(assert (=> b!904222 (= res!610217 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26033 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904222 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!29769 0))(
  ( (V!29770 (val!9352 Int)) )
))
(declare-fun zeroValue!1094 () V!29769)

(declare-datatypes ((ValueCell!8820 0))(
  ( (ValueCellFull!8820 (v!11857 V!29769)) (EmptyCell!8820) )
))
(declare-datatypes ((array!53238 0))(
  ( (array!53239 (arr!25574 (Array (_ BitVec 32) ValueCell!8820)) (size!26034 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53238)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29769)

(declare-datatypes ((Unit!30641 0))(
  ( (Unit!30642) )
))
(declare-fun lt!408163 () Unit!30641)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lemmaKeyInListMapIsInArray!183 (array!53236 array!53238 (_ BitVec 32) (_ BitVec 32) V!29769 V!29769 (_ BitVec 64) Int) Unit!30641)

(assert (=> b!904222 (= lt!408163 (lemmaKeyInListMapIsInArray!183 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904223 () Bool)

(declare-fun e!506704 () Bool)

(declare-fun e!506705 () Bool)

(declare-fun mapRes!29617 () Bool)

(assert (=> b!904223 (= e!506704 (and e!506705 mapRes!29617))))

(declare-fun condMapEmpty!29617 () Bool)

(declare-fun mapDefault!29617 () ValueCell!8820)

(assert (=> b!904223 (= condMapEmpty!29617 (= (arr!25574 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8820)) mapDefault!29617)))))

(declare-fun b!904224 () Bool)

(declare-fun e!506708 () Bool)

(declare-fun tp_is_empty!18603 () Bool)

(assert (=> b!904224 (= e!506708 tp_is_empty!18603)))

(declare-fun b!904225 () Bool)

(declare-fun res!610214 () Bool)

(assert (=> b!904225 (=> (not res!610214) (not e!506707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53236 (_ BitVec 32)) Bool)

(assert (=> b!904225 (= res!610214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29617 () Bool)

(declare-fun tp!56818 () Bool)

(assert (=> mapNonEmpty!29617 (= mapRes!29617 (and tp!56818 e!506708))))

(declare-fun mapValue!29617 () ValueCell!8820)

(declare-fun mapKey!29617 () (_ BitVec 32))

(declare-fun mapRest!29617 () (Array (_ BitVec 32) ValueCell!8820))

(assert (=> mapNonEmpty!29617 (= (arr!25574 _values!1152) (store mapRest!29617 mapKey!29617 mapValue!29617))))

(declare-fun b!904226 () Bool)

(declare-fun res!610216 () Bool)

(assert (=> b!904226 (=> (not res!610216) (not e!506707))))

(declare-datatypes ((tuple2!12168 0))(
  ( (tuple2!12169 (_1!6094 (_ BitVec 64)) (_2!6094 V!29769)) )
))
(declare-datatypes ((List!18043 0))(
  ( (Nil!18040) (Cons!18039 (h!19185 tuple2!12168) (t!25434 List!18043)) )
))
(declare-datatypes ((ListLongMap!10879 0))(
  ( (ListLongMap!10880 (toList!5455 List!18043)) )
))
(declare-fun contains!4468 (ListLongMap!10879 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2692 (array!53236 array!53238 (_ BitVec 32) (_ BitVec 32) V!29769 V!29769 (_ BitVec 32) Int) ListLongMap!10879)

(assert (=> b!904226 (= res!610216 (contains!4468 (getCurrentListMap!2692 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!904227 () Bool)

(assert (=> b!904227 (= e!506705 tp_is_empty!18603)))

(declare-fun b!904228 () Bool)

(declare-fun res!610219 () Bool)

(assert (=> b!904228 (=> (not res!610219) (not e!506707))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904228 (= res!610219 (inRange!0 i!717 mask!1756))))

(declare-fun b!904229 () Bool)

(declare-fun res!610221 () Bool)

(assert (=> b!904229 (=> (not res!610221) (not e!506707))))

(assert (=> b!904229 (= res!610221 (and (= (size!26034 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26033 _keys!1386) (size!26034 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904230 () Bool)

(declare-fun e!506706 () Bool)

(assert (=> b!904230 (= e!506706 true)))

(declare-fun lt!408164 () V!29769)

(declare-fun lt!408162 () ListLongMap!10879)

(declare-fun apply!437 (ListLongMap!10879 (_ BitVec 64)) V!29769)

(assert (=> b!904230 (= lt!408164 (apply!437 lt!408162 k0!1033))))

(declare-fun res!610220 () Bool)

(assert (=> start!77628 (=> (not res!610220) (not e!506707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77628 (= res!610220 (validMask!0 mask!1756))))

(assert (=> start!77628 e!506707))

(declare-fun array_inv!20016 (array!53238) Bool)

(assert (=> start!77628 (and (array_inv!20016 _values!1152) e!506704)))

(assert (=> start!77628 tp!56817))

(assert (=> start!77628 true))

(assert (=> start!77628 tp_is_empty!18603))

(declare-fun array_inv!20017 (array!53236) Bool)

(assert (=> start!77628 (array_inv!20017 _keys!1386)))

(declare-fun mapIsEmpty!29617 () Bool)

(assert (=> mapIsEmpty!29617 mapRes!29617))

(declare-fun b!904231 () Bool)

(assert (=> b!904231 (= e!506702 e!506706)))

(declare-fun res!610218 () Bool)

(assert (=> b!904231 (=> res!610218 e!506706)))

(assert (=> b!904231 (= res!610218 (not (contains!4468 lt!408162 k0!1033)))))

(assert (=> b!904231 (= lt!408162 (getCurrentListMap!2692 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904232 () Bool)

(declare-fun res!610213 () Bool)

(assert (=> b!904232 (=> (not res!610213) (not e!506707))))

(declare-datatypes ((List!18044 0))(
  ( (Nil!18041) (Cons!18040 (h!19186 (_ BitVec 64)) (t!25435 List!18044)) )
))
(declare-fun arrayNoDuplicates!0 (array!53236 (_ BitVec 32) List!18044) Bool)

(assert (=> b!904232 (= res!610213 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18041))))

(assert (= (and start!77628 res!610220) b!904229))

(assert (= (and b!904229 res!610221) b!904225))

(assert (= (and b!904225 res!610214) b!904232))

(assert (= (and b!904232 res!610213) b!904226))

(assert (= (and b!904226 res!610216) b!904228))

(assert (= (and b!904228 res!610219) b!904221))

(assert (= (and b!904221 res!610215) b!904222))

(assert (= (and b!904222 (not res!610217)) b!904231))

(assert (= (and b!904231 (not res!610218)) b!904230))

(assert (= (and b!904223 condMapEmpty!29617) mapIsEmpty!29617))

(assert (= (and b!904223 (not condMapEmpty!29617)) mapNonEmpty!29617))

(get-info :version)

(assert (= (and mapNonEmpty!29617 ((_ is ValueCellFull!8820) mapValue!29617)) b!904224))

(assert (= (and b!904223 ((_ is ValueCellFull!8820) mapDefault!29617)) b!904227))

(assert (= start!77628 b!904223))

(declare-fun m!839831 () Bool)

(assert (=> b!904230 m!839831))

(declare-fun m!839833 () Bool)

(assert (=> b!904225 m!839833))

(declare-fun m!839835 () Bool)

(assert (=> b!904226 m!839835))

(assert (=> b!904226 m!839835))

(declare-fun m!839837 () Bool)

(assert (=> b!904226 m!839837))

(declare-fun m!839839 () Bool)

(assert (=> b!904232 m!839839))

(declare-fun m!839841 () Bool)

(assert (=> mapNonEmpty!29617 m!839841))

(declare-fun m!839843 () Bool)

(assert (=> b!904221 m!839843))

(declare-fun m!839845 () Bool)

(assert (=> b!904228 m!839845))

(declare-fun m!839847 () Bool)

(assert (=> b!904231 m!839847))

(declare-fun m!839849 () Bool)

(assert (=> b!904231 m!839849))

(declare-fun m!839851 () Bool)

(assert (=> b!904222 m!839851))

(declare-fun m!839853 () Bool)

(assert (=> b!904222 m!839853))

(declare-fun m!839855 () Bool)

(assert (=> start!77628 m!839855))

(declare-fun m!839857 () Bool)

(assert (=> start!77628 m!839857))

(declare-fun m!839859 () Bool)

(assert (=> start!77628 m!839859))

(check-sat (not b_next!16185) tp_is_empty!18603 b_and!26569 (not b!904225) (not start!77628) (not mapNonEmpty!29617) (not b!904222) (not b!904232) (not b!904226) (not b!904231) (not b!904228) (not b!904230))
(check-sat b_and!26569 (not b_next!16185))
