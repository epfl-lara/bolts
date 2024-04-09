; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84040 () Bool)

(assert start!84040)

(declare-fun b_free!19767 () Bool)

(declare-fun b_next!19767 () Bool)

(assert (=> start!84040 (= b_free!19767 (not b_next!19767))))

(declare-fun tp!68824 () Bool)

(declare-fun b_and!31635 () Bool)

(assert (=> start!84040 (= tp!68824 b_and!31635)))

(declare-fun mapIsEmpty!36251 () Bool)

(declare-fun mapRes!36251 () Bool)

(assert (=> mapIsEmpty!36251 mapRes!36251))

(declare-fun b!981814 () Bool)

(declare-fun e!553499 () Bool)

(assert (=> b!981814 (= e!553499 (not true))))

(declare-datatypes ((V!35403 0))(
  ( (V!35404 (val!11458 Int)) )
))
(declare-datatypes ((tuple2!14782 0))(
  ( (tuple2!14783 (_1!7401 (_ BitVec 64)) (_2!7401 V!35403)) )
))
(declare-datatypes ((List!20688 0))(
  ( (Nil!20685) (Cons!20684 (h!21846 tuple2!14782) (t!29413 List!20688)) )
))
(declare-datatypes ((ListLongMap!13493 0))(
  ( (ListLongMap!13494 (toList!6762 List!20688)) )
))
(declare-fun lt!435876 () ListLongMap!13493)

(declare-fun lt!435878 () tuple2!14782)

(declare-fun lt!435877 () tuple2!14782)

(declare-fun +!2965 (ListLongMap!13493 tuple2!14782) ListLongMap!13493)

(assert (=> b!981814 (= (+!2965 (+!2965 lt!435876 lt!435878) lt!435877) (+!2965 (+!2965 lt!435876 lt!435877) lt!435878))))

(declare-fun lt!435880 () V!35403)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61621 0))(
  ( (array!61622 (arr!29664 (Array (_ BitVec 32) (_ BitVec 64))) (size!30144 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61621)

(assert (=> b!981814 (= lt!435877 (tuple2!14783 (select (arr!29664 _keys!1544) from!1932) lt!435880))))

(declare-fun zeroValue!1220 () V!35403)

(assert (=> b!981814 (= lt!435878 (tuple2!14783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32605 0))(
  ( (Unit!32606) )
))
(declare-fun lt!435879 () Unit!32605)

(declare-fun addCommutativeForDiffKeys!627 (ListLongMap!13493 (_ BitVec 64) V!35403 (_ BitVec 64) V!35403) Unit!32605)

(assert (=> b!981814 (= lt!435879 (addCommutativeForDiffKeys!627 lt!435876 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29664 _keys!1544) from!1932) lt!435880))))

(declare-fun b!981815 () Bool)

(declare-fun e!553498 () Bool)

(declare-fun tp_is_empty!22815 () Bool)

(assert (=> b!981815 (= e!553498 tp_is_empty!22815)))

(declare-fun b!981817 () Bool)

(declare-fun res!657130 () Bool)

(declare-fun e!553500 () Bool)

(assert (=> b!981817 (=> (not res!657130) (not e!553500))))

(assert (=> b!981817 (= res!657130 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30144 _keys!1544))))))

(declare-fun b!981818 () Bool)

(declare-fun res!657132 () Bool)

(assert (=> b!981818 (=> (not res!657132) (not e!553500))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61621 (_ BitVec 32)) Bool)

(assert (=> b!981818 (= res!657132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981819 () Bool)

(declare-fun res!657131 () Bool)

(assert (=> b!981819 (=> (not res!657131) (not e!553500))))

(declare-datatypes ((List!20689 0))(
  ( (Nil!20686) (Cons!20685 (h!21847 (_ BitVec 64)) (t!29414 List!20689)) )
))
(declare-fun arrayNoDuplicates!0 (array!61621 (_ BitVec 32) List!20689) Bool)

(assert (=> b!981819 (= res!657131 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20686))))

(declare-fun b!981820 () Bool)

(declare-fun res!657129 () Bool)

(assert (=> b!981820 (=> (not res!657129) (not e!553500))))

(declare-datatypes ((ValueCell!10926 0))(
  ( (ValueCellFull!10926 (v!14020 V!35403)) (EmptyCell!10926) )
))
(declare-datatypes ((array!61623 0))(
  ( (array!61624 (arr!29665 (Array (_ BitVec 32) ValueCell!10926)) (size!30145 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61623)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981820 (= res!657129 (and (= (size!30145 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30144 _keys!1544) (size!30145 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981821 () Bool)

(declare-fun e!553502 () Bool)

(declare-fun e!553501 () Bool)

(assert (=> b!981821 (= e!553502 (and e!553501 mapRes!36251))))

(declare-fun condMapEmpty!36251 () Bool)

(declare-fun mapDefault!36251 () ValueCell!10926)

(assert (=> b!981821 (= condMapEmpty!36251 (= (arr!29665 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10926)) mapDefault!36251)))))

(declare-fun b!981822 () Bool)

(declare-fun res!657128 () Bool)

(assert (=> b!981822 (=> (not res!657128) (not e!553500))))

(assert (=> b!981822 (= res!657128 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981823 () Bool)

(assert (=> b!981823 (= e!553500 e!553499)))

(declare-fun res!657133 () Bool)

(assert (=> b!981823 (=> (not res!657133) (not e!553499))))

(assert (=> b!981823 (= res!657133 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29664 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15399 (ValueCell!10926 V!35403) V!35403)

(declare-fun dynLambda!1794 (Int (_ BitVec 64)) V!35403)

(assert (=> b!981823 (= lt!435880 (get!15399 (select (arr!29665 _values!1278) from!1932) (dynLambda!1794 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35403)

(declare-fun getCurrentListMapNoExtraKeys!3421 (array!61621 array!61623 (_ BitVec 32) (_ BitVec 32) V!35403 V!35403 (_ BitVec 32) Int) ListLongMap!13493)

(assert (=> b!981823 (= lt!435876 (getCurrentListMapNoExtraKeys!3421 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!657134 () Bool)

(assert (=> start!84040 (=> (not res!657134) (not e!553500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84040 (= res!657134 (validMask!0 mask!1948))))

(assert (=> start!84040 e!553500))

(assert (=> start!84040 true))

(assert (=> start!84040 tp_is_empty!22815))

(declare-fun array_inv!22813 (array!61623) Bool)

(assert (=> start!84040 (and (array_inv!22813 _values!1278) e!553502)))

(assert (=> start!84040 tp!68824))

(declare-fun array_inv!22814 (array!61621) Bool)

(assert (=> start!84040 (array_inv!22814 _keys!1544)))

(declare-fun b!981816 () Bool)

(assert (=> b!981816 (= e!553501 tp_is_empty!22815)))

(declare-fun b!981824 () Bool)

(declare-fun res!657135 () Bool)

(assert (=> b!981824 (=> (not res!657135) (not e!553500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981824 (= res!657135 (validKeyInArray!0 (select (arr!29664 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36251 () Bool)

(declare-fun tp!68825 () Bool)

(assert (=> mapNonEmpty!36251 (= mapRes!36251 (and tp!68825 e!553498))))

(declare-fun mapRest!36251 () (Array (_ BitVec 32) ValueCell!10926))

(declare-fun mapKey!36251 () (_ BitVec 32))

(declare-fun mapValue!36251 () ValueCell!10926)

(assert (=> mapNonEmpty!36251 (= (arr!29665 _values!1278) (store mapRest!36251 mapKey!36251 mapValue!36251))))

(assert (= (and start!84040 res!657134) b!981820))

(assert (= (and b!981820 res!657129) b!981818))

(assert (= (and b!981818 res!657132) b!981819))

(assert (= (and b!981819 res!657131) b!981817))

(assert (= (and b!981817 res!657130) b!981824))

(assert (= (and b!981824 res!657135) b!981822))

(assert (= (and b!981822 res!657128) b!981823))

(assert (= (and b!981823 res!657133) b!981814))

(assert (= (and b!981821 condMapEmpty!36251) mapIsEmpty!36251))

(assert (= (and b!981821 (not condMapEmpty!36251)) mapNonEmpty!36251))

(get-info :version)

(assert (= (and mapNonEmpty!36251 ((_ is ValueCellFull!10926) mapValue!36251)) b!981815))

(assert (= (and b!981821 ((_ is ValueCellFull!10926) mapDefault!36251)) b!981816))

(assert (= start!84040 b!981821))

(declare-fun b_lambda!14835 () Bool)

(assert (=> (not b_lambda!14835) (not b!981823)))

(declare-fun t!29412 () Bool)

(declare-fun tb!6575 () Bool)

(assert (=> (and start!84040 (= defaultEntry!1281 defaultEntry!1281) t!29412) tb!6575))

(declare-fun result!13131 () Bool)

(assert (=> tb!6575 (= result!13131 tp_is_empty!22815)))

(assert (=> b!981823 t!29412))

(declare-fun b_and!31637 () Bool)

(assert (= b_and!31635 (and (=> t!29412 result!13131) b_and!31637)))

(declare-fun m!909273 () Bool)

(assert (=> b!981819 m!909273))

(declare-fun m!909275 () Bool)

(assert (=> b!981823 m!909275))

(declare-fun m!909277 () Bool)

(assert (=> b!981823 m!909277))

(declare-fun m!909279 () Bool)

(assert (=> b!981823 m!909279))

(declare-fun m!909281 () Bool)

(assert (=> b!981823 m!909281))

(assert (=> b!981823 m!909277))

(assert (=> b!981823 m!909281))

(declare-fun m!909283 () Bool)

(assert (=> b!981823 m!909283))

(declare-fun m!909285 () Bool)

(assert (=> mapNonEmpty!36251 m!909285))

(assert (=> b!981824 m!909275))

(assert (=> b!981824 m!909275))

(declare-fun m!909287 () Bool)

(assert (=> b!981824 m!909287))

(assert (=> b!981814 m!909275))

(declare-fun m!909289 () Bool)

(assert (=> b!981814 m!909289))

(assert (=> b!981814 m!909275))

(declare-fun m!909291 () Bool)

(assert (=> b!981814 m!909291))

(declare-fun m!909293 () Bool)

(assert (=> b!981814 m!909293))

(assert (=> b!981814 m!909289))

(declare-fun m!909295 () Bool)

(assert (=> b!981814 m!909295))

(assert (=> b!981814 m!909293))

(declare-fun m!909297 () Bool)

(assert (=> b!981814 m!909297))

(declare-fun m!909299 () Bool)

(assert (=> b!981818 m!909299))

(declare-fun m!909301 () Bool)

(assert (=> start!84040 m!909301))

(declare-fun m!909303 () Bool)

(assert (=> start!84040 m!909303))

(declare-fun m!909305 () Bool)

(assert (=> start!84040 m!909305))

(check-sat (not b!981818) b_and!31637 (not b!981824) (not b!981814) (not b_next!19767) (not b!981819) (not mapNonEmpty!36251) (not b!981823) tp_is_empty!22815 (not b_lambda!14835) (not start!84040))
(check-sat b_and!31637 (not b_next!19767))
