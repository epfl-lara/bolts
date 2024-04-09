; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79436 () Bool)

(assert start!79436)

(declare-fun b_free!17595 () Bool)

(declare-fun b_next!17595 () Bool)

(assert (=> start!79436 (= b_free!17595 (not b_next!17595))))

(declare-fun tp!61229 () Bool)

(declare-fun b_and!28767 () Bool)

(assert (=> start!79436 (= tp!61229 b_and!28767)))

(declare-fun b!933033 () Bool)

(declare-fun res!628543 () Bool)

(declare-fun e!523960 () Bool)

(assert (=> b!933033 (=> (not res!628543) (not e!523960))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56166 0))(
  ( (array!56167 (arr!27023 (Array (_ BitVec 32) (_ BitVec 64))) (size!27483 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56166)

(assert (=> b!933033 (= res!628543 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27483 _keys!1487))))))

(declare-fun b!933034 () Bool)

(declare-fun res!628545 () Bool)

(assert (=> b!933034 (=> (not res!628545) (not e!523960))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31769 0))(
  ( (V!31770 (val!10102 Int)) )
))
(declare-datatypes ((ValueCell!9570 0))(
  ( (ValueCellFull!9570 (v!12621 V!31769)) (EmptyCell!9570) )
))
(declare-datatypes ((array!56168 0))(
  ( (array!56169 (arr!27024 (Array (_ BitVec 32) ValueCell!9570)) (size!27484 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56168)

(assert (=> b!933034 (= res!628545 (and (= (size!27484 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27483 _keys!1487) (size!27484 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933035 () Bool)

(declare-fun res!628540 () Bool)

(declare-fun e!523962 () Bool)

(assert (=> b!933035 (=> (not res!628540) (not e!523962))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31769)

(declare-datatypes ((tuple2!13346 0))(
  ( (tuple2!13347 (_1!6683 (_ BitVec 64)) (_2!6683 V!31769)) )
))
(declare-datatypes ((List!19154 0))(
  ( (Nil!19151) (Cons!19150 (h!20296 tuple2!13346) (t!27301 List!19154)) )
))
(declare-datatypes ((ListLongMap!12057 0))(
  ( (ListLongMap!12058 (toList!6044 List!19154)) )
))
(declare-fun lt!420218 () ListLongMap!12057)

(declare-fun apply!828 (ListLongMap!12057 (_ BitVec 64)) V!31769)

(assert (=> b!933035 (= res!628540 (= (apply!828 lt!420218 k0!1099) v!791))))

(declare-fun b!933036 () Bool)

(assert (=> b!933036 (= e!523960 e!523962)))

(declare-fun res!628541 () Bool)

(assert (=> b!933036 (=> (not res!628541) (not e!523962))))

(declare-fun contains!5043 (ListLongMap!12057 (_ BitVec 64)) Bool)

(assert (=> b!933036 (= res!628541 (contains!5043 lt!420218 k0!1099))))

(declare-fun zeroValue!1173 () V!31769)

(declare-fun minValue!1173 () V!31769)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3236 (array!56166 array!56168 (_ BitVec 32) (_ BitVec 32) V!31769 V!31769 (_ BitVec 32) Int) ListLongMap!12057)

(assert (=> b!933036 (= lt!420218 (getCurrentListMap!3236 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933037 () Bool)

(declare-fun e!523959 () Bool)

(declare-fun tp_is_empty!20103 () Bool)

(assert (=> b!933037 (= e!523959 tp_is_empty!20103)))

(declare-fun b!933038 () Bool)

(declare-fun e!523961 () Bool)

(assert (=> b!933038 (= e!523962 e!523961)))

(declare-fun res!628542 () Bool)

(assert (=> b!933038 (=> (not res!628542) (not e!523961))))

(declare-fun lt!420219 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933038 (= res!628542 (validKeyInArray!0 lt!420219))))

(assert (=> b!933038 (= lt!420219 (select (arr!27023 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!628544 () Bool)

(assert (=> start!79436 (=> (not res!628544) (not e!523960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79436 (= res!628544 (validMask!0 mask!1881))))

(assert (=> start!79436 e!523960))

(assert (=> start!79436 true))

(assert (=> start!79436 tp_is_empty!20103))

(declare-fun e!523964 () Bool)

(declare-fun array_inv!20998 (array!56168) Bool)

(assert (=> start!79436 (and (array_inv!20998 _values!1231) e!523964)))

(assert (=> start!79436 tp!61229))

(declare-fun array_inv!20999 (array!56166) Bool)

(assert (=> start!79436 (array_inv!20999 _keys!1487)))

(declare-fun mapIsEmpty!31914 () Bool)

(declare-fun mapRes!31914 () Bool)

(assert (=> mapIsEmpty!31914 mapRes!31914))

(declare-fun b!933039 () Bool)

(declare-fun res!628547 () Bool)

(assert (=> b!933039 (=> (not res!628547) (not e!523962))))

(assert (=> b!933039 (= res!628547 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933040 () Bool)

(assert (=> b!933040 (= e!523961 (not true))))

(declare-datatypes ((List!19155 0))(
  ( (Nil!19152) (Cons!19151 (h!20297 (_ BitVec 64)) (t!27302 List!19155)) )
))
(declare-fun arrayNoDuplicates!0 (array!56166 (_ BitVec 32) List!19155) Bool)

(assert (=> b!933040 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19152)))

(declare-datatypes ((Unit!31482 0))(
  ( (Unit!31483) )
))
(declare-fun lt!420220 () Unit!31482)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56166 (_ BitVec 32) (_ BitVec 32)) Unit!31482)

(assert (=> b!933040 (= lt!420220 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420215 () tuple2!13346)

(declare-fun +!2747 (ListLongMap!12057 tuple2!13346) ListLongMap!12057)

(assert (=> b!933040 (contains!5043 (+!2747 lt!420218 lt!420215) k0!1099)))

(declare-fun lt!420214 () Unit!31482)

(declare-fun lt!420216 () V!31769)

(declare-fun addStillContains!503 (ListLongMap!12057 (_ BitVec 64) V!31769 (_ BitVec 64)) Unit!31482)

(assert (=> b!933040 (= lt!420214 (addStillContains!503 lt!420218 lt!420219 lt!420216 k0!1099))))

(assert (=> b!933040 (= (getCurrentListMap!3236 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2747 (getCurrentListMap!3236 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420215))))

(assert (=> b!933040 (= lt!420215 (tuple2!13347 lt!420219 lt!420216))))

(declare-fun get!14227 (ValueCell!9570 V!31769) V!31769)

(declare-fun dynLambda!1586 (Int (_ BitVec 64)) V!31769)

(assert (=> b!933040 (= lt!420216 (get!14227 (select (arr!27024 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1586 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420217 () Unit!31482)

(declare-fun lemmaListMapRecursiveValidKeyArray!182 (array!56166 array!56168 (_ BitVec 32) (_ BitVec 32) V!31769 V!31769 (_ BitVec 32) Int) Unit!31482)

(assert (=> b!933040 (= lt!420217 (lemmaListMapRecursiveValidKeyArray!182 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933041 () Bool)

(declare-fun e!523958 () Bool)

(assert (=> b!933041 (= e!523958 tp_is_empty!20103)))

(declare-fun mapNonEmpty!31914 () Bool)

(declare-fun tp!61230 () Bool)

(assert (=> mapNonEmpty!31914 (= mapRes!31914 (and tp!61230 e!523959))))

(declare-fun mapValue!31914 () ValueCell!9570)

(declare-fun mapKey!31914 () (_ BitVec 32))

(declare-fun mapRest!31914 () (Array (_ BitVec 32) ValueCell!9570))

(assert (=> mapNonEmpty!31914 (= (arr!27024 _values!1231) (store mapRest!31914 mapKey!31914 mapValue!31914))))

(declare-fun b!933042 () Bool)

(declare-fun res!628546 () Bool)

(assert (=> b!933042 (=> (not res!628546) (not e!523960))))

(assert (=> b!933042 (= res!628546 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19152))))

(declare-fun b!933043 () Bool)

(declare-fun res!628539 () Bool)

(assert (=> b!933043 (=> (not res!628539) (not e!523962))))

(assert (=> b!933043 (= res!628539 (validKeyInArray!0 k0!1099))))

(declare-fun b!933044 () Bool)

(declare-fun res!628538 () Bool)

(assert (=> b!933044 (=> (not res!628538) (not e!523960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56166 (_ BitVec 32)) Bool)

(assert (=> b!933044 (= res!628538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933045 () Bool)

(assert (=> b!933045 (= e!523964 (and e!523958 mapRes!31914))))

(declare-fun condMapEmpty!31914 () Bool)

(declare-fun mapDefault!31914 () ValueCell!9570)

(assert (=> b!933045 (= condMapEmpty!31914 (= (arr!27024 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9570)) mapDefault!31914)))))

(assert (= (and start!79436 res!628544) b!933034))

(assert (= (and b!933034 res!628545) b!933044))

(assert (= (and b!933044 res!628538) b!933042))

(assert (= (and b!933042 res!628546) b!933033))

(assert (= (and b!933033 res!628543) b!933036))

(assert (= (and b!933036 res!628541) b!933035))

(assert (= (and b!933035 res!628540) b!933039))

(assert (= (and b!933039 res!628547) b!933043))

(assert (= (and b!933043 res!628539) b!933038))

(assert (= (and b!933038 res!628542) b!933040))

(assert (= (and b!933045 condMapEmpty!31914) mapIsEmpty!31914))

(assert (= (and b!933045 (not condMapEmpty!31914)) mapNonEmpty!31914))

(get-info :version)

(assert (= (and mapNonEmpty!31914 ((_ is ValueCellFull!9570) mapValue!31914)) b!933037))

(assert (= (and b!933045 ((_ is ValueCellFull!9570) mapDefault!31914)) b!933041))

(assert (= start!79436 b!933045))

(declare-fun b_lambda!13959 () Bool)

(assert (=> (not b_lambda!13959) (not b!933040)))

(declare-fun t!27300 () Bool)

(declare-fun tb!5997 () Bool)

(assert (=> (and start!79436 (= defaultEntry!1235 defaultEntry!1235) t!27300) tb!5997))

(declare-fun result!11811 () Bool)

(assert (=> tb!5997 (= result!11811 tp_is_empty!20103)))

(assert (=> b!933040 t!27300))

(declare-fun b_and!28769 () Bool)

(assert (= b_and!28767 (and (=> t!27300 result!11811) b_and!28769)))

(declare-fun m!867227 () Bool)

(assert (=> mapNonEmpty!31914 m!867227))

(declare-fun m!867229 () Bool)

(assert (=> b!933040 m!867229))

(assert (=> b!933040 m!867229))

(declare-fun m!867231 () Bool)

(assert (=> b!933040 m!867231))

(declare-fun m!867233 () Bool)

(assert (=> b!933040 m!867233))

(declare-fun m!867235 () Bool)

(assert (=> b!933040 m!867235))

(declare-fun m!867237 () Bool)

(assert (=> b!933040 m!867237))

(declare-fun m!867239 () Bool)

(assert (=> b!933040 m!867239))

(assert (=> b!933040 m!867233))

(assert (=> b!933040 m!867235))

(declare-fun m!867241 () Bool)

(assert (=> b!933040 m!867241))

(declare-fun m!867243 () Bool)

(assert (=> b!933040 m!867243))

(declare-fun m!867245 () Bool)

(assert (=> b!933040 m!867245))

(declare-fun m!867247 () Bool)

(assert (=> b!933040 m!867247))

(declare-fun m!867249 () Bool)

(assert (=> b!933040 m!867249))

(assert (=> b!933040 m!867237))

(declare-fun m!867251 () Bool)

(assert (=> b!933040 m!867251))

(declare-fun m!867253 () Bool)

(assert (=> b!933042 m!867253))

(declare-fun m!867255 () Bool)

(assert (=> b!933036 m!867255))

(declare-fun m!867257 () Bool)

(assert (=> b!933036 m!867257))

(declare-fun m!867259 () Bool)

(assert (=> b!933038 m!867259))

(declare-fun m!867261 () Bool)

(assert (=> b!933038 m!867261))

(declare-fun m!867263 () Bool)

(assert (=> b!933035 m!867263))

(declare-fun m!867265 () Bool)

(assert (=> b!933044 m!867265))

(declare-fun m!867267 () Bool)

(assert (=> start!79436 m!867267))

(declare-fun m!867269 () Bool)

(assert (=> start!79436 m!867269))

(declare-fun m!867271 () Bool)

(assert (=> start!79436 m!867271))

(declare-fun m!867273 () Bool)

(assert (=> b!933043 m!867273))

(check-sat (not b!933036) tp_is_empty!20103 (not b!933038) (not b_next!17595) (not b!933042) (not b_lambda!13959) (not mapNonEmpty!31914) (not b!933044) (not start!79436) (not b!933043) b_and!28769 (not b!933035) (not b!933040))
(check-sat b_and!28769 (not b_next!17595))
