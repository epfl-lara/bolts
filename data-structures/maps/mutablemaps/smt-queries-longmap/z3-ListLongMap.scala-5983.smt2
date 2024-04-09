; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77754 () Bool)

(assert start!77754)

(declare-fun b_free!16311 () Bool)

(declare-fun b_next!16311 () Bool)

(assert (=> start!77754 (= b_free!16311 (not b_next!16311))))

(declare-fun tp!57196 () Bool)

(declare-fun b_and!26793 () Bool)

(assert (=> start!77754 (= tp!57196 b_and!26793)))

(declare-fun mapNonEmpty!29806 () Bool)

(declare-fun mapRes!29806 () Bool)

(declare-fun tp!57195 () Bool)

(declare-fun e!508176 () Bool)

(assert (=> mapNonEmpty!29806 (= mapRes!29806 (and tp!57195 e!508176))))

(declare-datatypes ((V!29937 0))(
  ( (V!29938 (val!9415 Int)) )
))
(declare-datatypes ((ValueCell!8883 0))(
  ( (ValueCellFull!8883 (v!11920 V!29937)) (EmptyCell!8883) )
))
(declare-datatypes ((array!53484 0))(
  ( (array!53485 (arr!25697 (Array (_ BitVec 32) ValueCell!8883)) (size!26157 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53484)

(declare-fun mapKey!29806 () (_ BitVec 32))

(declare-fun mapRest!29806 () (Array (_ BitVec 32) ValueCell!8883))

(declare-fun mapValue!29806 () ValueCell!8883)

(assert (=> mapNonEmpty!29806 (= (arr!25697 _values!1152) (store mapRest!29806 mapKey!29806 mapValue!29806))))

(declare-fun b!906736 () Bool)

(declare-fun res!612065 () Bool)

(declare-fun e!508180 () Bool)

(assert (=> b!906736 (=> (not res!612065) (not e!508180))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53486 0))(
  ( (array!53487 (arr!25698 (Array (_ BitVec 32) (_ BitVec 64))) (size!26158 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53486)

(assert (=> b!906736 (= res!612065 (and (= (size!26157 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26158 _keys!1386) (size!26157 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906737 () Bool)

(declare-fun e!508174 () Bool)

(declare-fun e!508175 () Bool)

(assert (=> b!906737 (= e!508174 (not e!508175))))

(declare-fun res!612070 () Bool)

(assert (=> b!906737 (=> res!612070 e!508175)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906737 (= res!612070 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26158 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409028 () V!29937)

(declare-fun get!13528 (ValueCell!8883 V!29937) V!29937)

(declare-fun dynLambda!1358 (Int (_ BitVec 64)) V!29937)

(assert (=> b!906737 (= lt!409028 (get!13528 (select (arr!25697 _values!1152) i!717) (dynLambda!1358 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906737 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun minValue!1094 () V!29937)

(declare-datatypes ((Unit!30745 0))(
  ( (Unit!30746) )
))
(declare-fun lt!409029 () Unit!30745)

(declare-fun zeroValue!1094 () V!29937)

(declare-fun lemmaKeyInListMapIsInArray!231 (array!53486 array!53484 (_ BitVec 32) (_ BitVec 32) V!29937 V!29937 (_ BitVec 64) Int) Unit!30745)

(assert (=> b!906737 (= lt!409029 (lemmaKeyInListMapIsInArray!231 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906738 () Bool)

(declare-fun e!508179 () Bool)

(assert (=> b!906738 (= e!508175 e!508179)))

(declare-fun res!612071 () Bool)

(assert (=> b!906738 (=> res!612071 e!508179)))

(declare-datatypes ((tuple2!12278 0))(
  ( (tuple2!12279 (_1!6149 (_ BitVec 64)) (_2!6149 V!29937)) )
))
(declare-datatypes ((List!18140 0))(
  ( (Nil!18137) (Cons!18136 (h!19282 tuple2!12278) (t!25631 List!18140)) )
))
(declare-datatypes ((ListLongMap!10989 0))(
  ( (ListLongMap!10990 (toList!5510 List!18140)) )
))
(declare-fun lt!409030 () ListLongMap!10989)

(declare-fun contains!4520 (ListLongMap!10989 (_ BitVec 64)) Bool)

(assert (=> b!906738 (= res!612071 (not (contains!4520 lt!409030 k0!1033)))))

(declare-fun getCurrentListMap!2744 (array!53486 array!53484 (_ BitVec 32) (_ BitVec 32) V!29937 V!29937 (_ BitVec 32) Int) ListLongMap!10989)

(assert (=> b!906738 (= lt!409030 (getCurrentListMap!2744 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906739 () Bool)

(declare-fun tp_is_empty!18729 () Bool)

(assert (=> b!906739 (= e!508176 tp_is_empty!18729)))

(declare-fun b!906740 () Bool)

(declare-fun res!612069 () Bool)

(assert (=> b!906740 (=> (not res!612069) (not e!508180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53486 (_ BitVec 32)) Bool)

(assert (=> b!906740 (= res!612069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906741 () Bool)

(assert (=> b!906741 (= e!508179 true)))

(declare-fun lt!409027 () ListLongMap!10989)

(declare-fun apply!486 (ListLongMap!10989 (_ BitVec 64)) V!29937)

(assert (=> b!906741 (= (apply!486 lt!409027 k0!1033) lt!409028)))

(declare-fun lt!409031 () Unit!30745)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!33 (array!53486 array!53484 (_ BitVec 32) (_ BitVec 32) V!29937 V!29937 (_ BitVec 64) V!29937 (_ BitVec 32) Int) Unit!30745)

(assert (=> b!906741 (= lt!409031 (lemmaListMapApplyFromThenApplyFromZero!33 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409028 i!717 defaultEntry!1160))))

(declare-fun res!612068 () Bool)

(assert (=> start!77754 (=> (not res!612068) (not e!508180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77754 (= res!612068 (validMask!0 mask!1756))))

(assert (=> start!77754 e!508180))

(declare-fun e!508178 () Bool)

(declare-fun array_inv!20098 (array!53484) Bool)

(assert (=> start!77754 (and (array_inv!20098 _values!1152) e!508178)))

(assert (=> start!77754 tp!57196))

(assert (=> start!77754 true))

(assert (=> start!77754 tp_is_empty!18729))

(declare-fun array_inv!20099 (array!53486) Bool)

(assert (=> start!77754 (array_inv!20099 _keys!1386)))

(declare-fun b!906742 () Bool)

(declare-fun res!612063 () Bool)

(assert (=> b!906742 (=> (not res!612063) (not e!508180))))

(declare-datatypes ((List!18141 0))(
  ( (Nil!18138) (Cons!18137 (h!19283 (_ BitVec 64)) (t!25632 List!18141)) )
))
(declare-fun arrayNoDuplicates!0 (array!53486 (_ BitVec 32) List!18141) Bool)

(assert (=> b!906742 (= res!612063 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18138))))

(declare-fun b!906743 () Bool)

(declare-fun e!508177 () Bool)

(assert (=> b!906743 (= e!508178 (and e!508177 mapRes!29806))))

(declare-fun condMapEmpty!29806 () Bool)

(declare-fun mapDefault!29806 () ValueCell!8883)

(assert (=> b!906743 (= condMapEmpty!29806 (= (arr!25697 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8883)) mapDefault!29806)))))

(declare-fun mapIsEmpty!29806 () Bool)

(assert (=> mapIsEmpty!29806 mapRes!29806))

(declare-fun b!906744 () Bool)

(declare-fun res!612067 () Bool)

(assert (=> b!906744 (=> res!612067 e!508179)))

(assert (=> b!906744 (= res!612067 (not (= (apply!486 lt!409030 k0!1033) lt!409028)))))

(declare-fun b!906745 () Bool)

(declare-fun res!612072 () Bool)

(assert (=> b!906745 (=> (not res!612072) (not e!508174))))

(assert (=> b!906745 (= res!612072 (and (= (select (arr!25698 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906746 () Bool)

(declare-fun res!612066 () Bool)

(assert (=> b!906746 (=> (not res!612066) (not e!508174))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906746 (= res!612066 (inRange!0 i!717 mask!1756))))

(declare-fun b!906747 () Bool)

(assert (=> b!906747 (= e!508180 e!508174)))

(declare-fun res!612064 () Bool)

(assert (=> b!906747 (=> (not res!612064) (not e!508174))))

(assert (=> b!906747 (= res!612064 (contains!4520 lt!409027 k0!1033))))

(assert (=> b!906747 (= lt!409027 (getCurrentListMap!2744 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906748 () Bool)

(assert (=> b!906748 (= e!508177 tp_is_empty!18729)))

(assert (= (and start!77754 res!612068) b!906736))

(assert (= (and b!906736 res!612065) b!906740))

(assert (= (and b!906740 res!612069) b!906742))

(assert (= (and b!906742 res!612063) b!906747))

(assert (= (and b!906747 res!612064) b!906746))

(assert (= (and b!906746 res!612066) b!906745))

(assert (= (and b!906745 res!612072) b!906737))

(assert (= (and b!906737 (not res!612070)) b!906738))

(assert (= (and b!906738 (not res!612071)) b!906744))

(assert (= (and b!906744 (not res!612067)) b!906741))

(assert (= (and b!906743 condMapEmpty!29806) mapIsEmpty!29806))

(assert (= (and b!906743 (not condMapEmpty!29806)) mapNonEmpty!29806))

(get-info :version)

(assert (= (and mapNonEmpty!29806 ((_ is ValueCellFull!8883) mapValue!29806)) b!906739))

(assert (= (and b!906743 ((_ is ValueCellFull!8883) mapDefault!29806)) b!906748))

(assert (= start!77754 b!906743))

(declare-fun b_lambda!13215 () Bool)

(assert (=> (not b_lambda!13215) (not b!906737)))

(declare-fun t!25630 () Bool)

(declare-fun tb!5341 () Bool)

(assert (=> (and start!77754 (= defaultEntry!1160 defaultEntry!1160) t!25630) tb!5341))

(declare-fun result!10469 () Bool)

(assert (=> tb!5341 (= result!10469 tp_is_empty!18729)))

(assert (=> b!906737 t!25630))

(declare-fun b_and!26795 () Bool)

(assert (= b_and!26793 (and (=> t!25630 result!10469) b_and!26795)))

(declare-fun m!842211 () Bool)

(assert (=> b!906746 m!842211))

(declare-fun m!842213 () Bool)

(assert (=> b!906742 m!842213))

(declare-fun m!842215 () Bool)

(assert (=> b!906744 m!842215))

(declare-fun m!842217 () Bool)

(assert (=> b!906745 m!842217))

(declare-fun m!842219 () Bool)

(assert (=> mapNonEmpty!29806 m!842219))

(declare-fun m!842221 () Bool)

(assert (=> b!906740 m!842221))

(declare-fun m!842223 () Bool)

(assert (=> start!77754 m!842223))

(declare-fun m!842225 () Bool)

(assert (=> start!77754 m!842225))

(declare-fun m!842227 () Bool)

(assert (=> start!77754 m!842227))

(declare-fun m!842229 () Bool)

(assert (=> b!906747 m!842229))

(declare-fun m!842231 () Bool)

(assert (=> b!906747 m!842231))

(declare-fun m!842233 () Bool)

(assert (=> b!906741 m!842233))

(declare-fun m!842235 () Bool)

(assert (=> b!906741 m!842235))

(declare-fun m!842237 () Bool)

(assert (=> b!906738 m!842237))

(declare-fun m!842239 () Bool)

(assert (=> b!906738 m!842239))

(declare-fun m!842241 () Bool)

(assert (=> b!906737 m!842241))

(declare-fun m!842243 () Bool)

(assert (=> b!906737 m!842243))

(declare-fun m!842245 () Bool)

(assert (=> b!906737 m!842245))

(declare-fun m!842247 () Bool)

(assert (=> b!906737 m!842247))

(assert (=> b!906737 m!842241))

(assert (=> b!906737 m!842245))

(declare-fun m!842249 () Bool)

(assert (=> b!906737 m!842249))

(check-sat b_and!26795 (not b!906741) (not b!906744) tp_is_empty!18729 (not b!906737) (not b!906747) (not mapNonEmpty!29806) (not start!77754) (not b_lambda!13215) (not b!906738) (not b!906740) (not b!906746) (not b_next!16311) (not b!906742))
(check-sat b_and!26795 (not b_next!16311))
