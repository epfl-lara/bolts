; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79460 () Bool)

(assert start!79460)

(declare-fun b_free!17619 () Bool)

(declare-fun b_next!17619 () Bool)

(assert (=> start!79460 (= b_free!17619 (not b_next!17619))))

(declare-fun tp!61301 () Bool)

(declare-fun b_and!28815 () Bool)

(assert (=> start!79460 (= tp!61301 b_and!28815)))

(declare-fun b!933525 () Bool)

(declare-fun res!628907 () Bool)

(declare-fun e!524215 () Bool)

(assert (=> b!933525 (=> (not res!628907) (not e!524215))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933525 (= res!628907 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!628906 () Bool)

(declare-fun e!524214 () Bool)

(assert (=> start!79460 (=> (not res!628906) (not e!524214))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79460 (= res!628906 (validMask!0 mask!1881))))

(assert (=> start!79460 e!524214))

(assert (=> start!79460 true))

(declare-fun tp_is_empty!20127 () Bool)

(assert (=> start!79460 tp_is_empty!20127))

(declare-datatypes ((V!31801 0))(
  ( (V!31802 (val!10114 Int)) )
))
(declare-datatypes ((ValueCell!9582 0))(
  ( (ValueCellFull!9582 (v!12633 V!31801)) (EmptyCell!9582) )
))
(declare-datatypes ((array!56214 0))(
  ( (array!56215 (arr!27047 (Array (_ BitVec 32) ValueCell!9582)) (size!27507 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56214)

(declare-fun e!524213 () Bool)

(declare-fun array_inv!21006 (array!56214) Bool)

(assert (=> start!79460 (and (array_inv!21006 _values!1231) e!524213)))

(assert (=> start!79460 tp!61301))

(declare-datatypes ((array!56216 0))(
  ( (array!56217 (arr!27048 (Array (_ BitVec 32) (_ BitVec 64))) (size!27508 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56216)

(declare-fun array_inv!21007 (array!56216) Bool)

(assert (=> start!79460 (array_inv!21007 _keys!1487)))

(declare-fun b!933526 () Bool)

(declare-fun res!628904 () Bool)

(assert (=> b!933526 (=> (not res!628904) (not e!524214))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!933526 (= res!628904 (and (= (size!27507 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27508 _keys!1487) (size!27507 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31950 () Bool)

(declare-fun mapRes!31950 () Bool)

(assert (=> mapIsEmpty!31950 mapRes!31950))

(declare-fun b!933527 () Bool)

(assert (=> b!933527 (= e!524214 e!524215)))

(declare-fun res!628898 () Bool)

(assert (=> b!933527 (=> (not res!628898) (not e!524215))))

(declare-datatypes ((tuple2!13368 0))(
  ( (tuple2!13369 (_1!6694 (_ BitVec 64)) (_2!6694 V!31801)) )
))
(declare-datatypes ((List!19175 0))(
  ( (Nil!19172) (Cons!19171 (h!20317 tuple2!13368) (t!27346 List!19175)) )
))
(declare-datatypes ((ListLongMap!12079 0))(
  ( (ListLongMap!12080 (toList!6055 List!19175)) )
))
(declare-fun lt!420468 () ListLongMap!12079)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5054 (ListLongMap!12079 (_ BitVec 64)) Bool)

(assert (=> b!933527 (= res!628898 (contains!5054 lt!420468 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31801)

(declare-fun minValue!1173 () V!31801)

(declare-fun getCurrentListMap!3247 (array!56216 array!56214 (_ BitVec 32) (_ BitVec 32) V!31801 V!31801 (_ BitVec 32) Int) ListLongMap!12079)

(assert (=> b!933527 (= lt!420468 (getCurrentListMap!3247 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933528 () Bool)

(declare-fun e!524210 () Bool)

(assert (=> b!933528 (= e!524210 tp_is_empty!20127)))

(declare-fun b!933529 () Bool)

(declare-fun e!524211 () Bool)

(assert (=> b!933529 (= e!524211 (not true))))

(declare-datatypes ((List!19176 0))(
  ( (Nil!19173) (Cons!19172 (h!20318 (_ BitVec 64)) (t!27347 List!19176)) )
))
(declare-fun arrayNoDuplicates!0 (array!56216 (_ BitVec 32) List!19176) Bool)

(assert (=> b!933529 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19173)))

(declare-datatypes ((Unit!31498 0))(
  ( (Unit!31499) )
))
(declare-fun lt!420470 () Unit!31498)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56216 (_ BitVec 32) (_ BitVec 32)) Unit!31498)

(assert (=> b!933529 (= lt!420470 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420467 () tuple2!13368)

(declare-fun +!2755 (ListLongMap!12079 tuple2!13368) ListLongMap!12079)

(assert (=> b!933529 (contains!5054 (+!2755 lt!420468 lt!420467) k0!1099)))

(declare-fun lt!420469 () (_ BitVec 64))

(declare-fun lt!420472 () V!31801)

(declare-fun lt!420466 () Unit!31498)

(declare-fun addStillContains!511 (ListLongMap!12079 (_ BitVec 64) V!31801 (_ BitVec 64)) Unit!31498)

(assert (=> b!933529 (= lt!420466 (addStillContains!511 lt!420468 lt!420469 lt!420472 k0!1099))))

(assert (=> b!933529 (= (getCurrentListMap!3247 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2755 (getCurrentListMap!3247 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420467))))

(assert (=> b!933529 (= lt!420467 (tuple2!13369 lt!420469 lt!420472))))

(declare-fun get!14243 (ValueCell!9582 V!31801) V!31801)

(declare-fun dynLambda!1594 (Int (_ BitVec 64)) V!31801)

(assert (=> b!933529 (= lt!420472 (get!14243 (select (arr!27047 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1594 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420471 () Unit!31498)

(declare-fun lemmaListMapRecursiveValidKeyArray!190 (array!56216 array!56214 (_ BitVec 32) (_ BitVec 32) V!31801 V!31801 (_ BitVec 32) Int) Unit!31498)

(assert (=> b!933529 (= lt!420471 (lemmaListMapRecursiveValidKeyArray!190 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933530 () Bool)

(declare-fun res!628903 () Bool)

(assert (=> b!933530 (=> (not res!628903) (not e!524215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933530 (= res!628903 (validKeyInArray!0 k0!1099))))

(declare-fun b!933531 () Bool)

(assert (=> b!933531 (= e!524213 (and e!524210 mapRes!31950))))

(declare-fun condMapEmpty!31950 () Bool)

(declare-fun mapDefault!31950 () ValueCell!9582)

(assert (=> b!933531 (= condMapEmpty!31950 (= (arr!27047 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9582)) mapDefault!31950)))))

(declare-fun mapNonEmpty!31950 () Bool)

(declare-fun tp!61302 () Bool)

(declare-fun e!524216 () Bool)

(assert (=> mapNonEmpty!31950 (= mapRes!31950 (and tp!61302 e!524216))))

(declare-fun mapRest!31950 () (Array (_ BitVec 32) ValueCell!9582))

(declare-fun mapValue!31950 () ValueCell!9582)

(declare-fun mapKey!31950 () (_ BitVec 32))

(assert (=> mapNonEmpty!31950 (= (arr!27047 _values!1231) (store mapRest!31950 mapKey!31950 mapValue!31950))))

(declare-fun b!933532 () Bool)

(assert (=> b!933532 (= e!524215 e!524211)))

(declare-fun res!628900 () Bool)

(assert (=> b!933532 (=> (not res!628900) (not e!524211))))

(assert (=> b!933532 (= res!628900 (validKeyInArray!0 lt!420469))))

(assert (=> b!933532 (= lt!420469 (select (arr!27048 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933533 () Bool)

(declare-fun res!628902 () Bool)

(assert (=> b!933533 (=> (not res!628902) (not e!524214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56216 (_ BitVec 32)) Bool)

(assert (=> b!933533 (= res!628902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933534 () Bool)

(declare-fun res!628899 () Bool)

(assert (=> b!933534 (=> (not res!628899) (not e!524214))))

(assert (=> b!933534 (= res!628899 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27508 _keys!1487))))))

(declare-fun b!933535 () Bool)

(assert (=> b!933535 (= e!524216 tp_is_empty!20127)))

(declare-fun b!933536 () Bool)

(declare-fun res!628905 () Bool)

(assert (=> b!933536 (=> (not res!628905) (not e!524214))))

(assert (=> b!933536 (= res!628905 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19173))))

(declare-fun b!933537 () Bool)

(declare-fun res!628901 () Bool)

(assert (=> b!933537 (=> (not res!628901) (not e!524215))))

(declare-fun v!791 () V!31801)

(declare-fun apply!837 (ListLongMap!12079 (_ BitVec 64)) V!31801)

(assert (=> b!933537 (= res!628901 (= (apply!837 lt!420468 k0!1099) v!791))))

(assert (= (and start!79460 res!628906) b!933526))

(assert (= (and b!933526 res!628904) b!933533))

(assert (= (and b!933533 res!628902) b!933536))

(assert (= (and b!933536 res!628905) b!933534))

(assert (= (and b!933534 res!628899) b!933527))

(assert (= (and b!933527 res!628898) b!933537))

(assert (= (and b!933537 res!628901) b!933525))

(assert (= (and b!933525 res!628907) b!933530))

(assert (= (and b!933530 res!628903) b!933532))

(assert (= (and b!933532 res!628900) b!933529))

(assert (= (and b!933531 condMapEmpty!31950) mapIsEmpty!31950))

(assert (= (and b!933531 (not condMapEmpty!31950)) mapNonEmpty!31950))

(get-info :version)

(assert (= (and mapNonEmpty!31950 ((_ is ValueCellFull!9582) mapValue!31950)) b!933535))

(assert (= (and b!933531 ((_ is ValueCellFull!9582) mapDefault!31950)) b!933528))

(assert (= start!79460 b!933531))

(declare-fun b_lambda!13983 () Bool)

(assert (=> (not b_lambda!13983) (not b!933529)))

(declare-fun t!27345 () Bool)

(declare-fun tb!6021 () Bool)

(assert (=> (and start!79460 (= defaultEntry!1235 defaultEntry!1235) t!27345) tb!6021))

(declare-fun result!11859 () Bool)

(assert (=> tb!6021 (= result!11859 tp_is_empty!20127)))

(assert (=> b!933529 t!27345))

(declare-fun b_and!28817 () Bool)

(assert (= b_and!28815 (and (=> t!27345 result!11859) b_and!28817)))

(declare-fun m!867803 () Bool)

(assert (=> start!79460 m!867803))

(declare-fun m!867805 () Bool)

(assert (=> start!79460 m!867805))

(declare-fun m!867807 () Bool)

(assert (=> start!79460 m!867807))

(declare-fun m!867809 () Bool)

(assert (=> b!933537 m!867809))

(declare-fun m!867811 () Bool)

(assert (=> b!933533 m!867811))

(declare-fun m!867813 () Bool)

(assert (=> b!933536 m!867813))

(declare-fun m!867815 () Bool)

(assert (=> mapNonEmpty!31950 m!867815))

(declare-fun m!867817 () Bool)

(assert (=> b!933527 m!867817))

(declare-fun m!867819 () Bool)

(assert (=> b!933527 m!867819))

(declare-fun m!867821 () Bool)

(assert (=> b!933530 m!867821))

(declare-fun m!867823 () Bool)

(assert (=> b!933532 m!867823))

(declare-fun m!867825 () Bool)

(assert (=> b!933532 m!867825))

(declare-fun m!867827 () Bool)

(assert (=> b!933529 m!867827))

(declare-fun m!867829 () Bool)

(assert (=> b!933529 m!867829))

(declare-fun m!867831 () Bool)

(assert (=> b!933529 m!867831))

(assert (=> b!933529 m!867827))

(assert (=> b!933529 m!867829))

(declare-fun m!867833 () Bool)

(assert (=> b!933529 m!867833))

(declare-fun m!867835 () Bool)

(assert (=> b!933529 m!867835))

(declare-fun m!867837 () Bool)

(assert (=> b!933529 m!867837))

(declare-fun m!867839 () Bool)

(assert (=> b!933529 m!867839))

(declare-fun m!867841 () Bool)

(assert (=> b!933529 m!867841))

(assert (=> b!933529 m!867841))

(declare-fun m!867843 () Bool)

(assert (=> b!933529 m!867843))

(declare-fun m!867845 () Bool)

(assert (=> b!933529 m!867845))

(declare-fun m!867847 () Bool)

(assert (=> b!933529 m!867847))

(assert (=> b!933529 m!867837))

(declare-fun m!867849 () Bool)

(assert (=> b!933529 m!867849))

(check-sat (not b!933529) (not b!933536) (not mapNonEmpty!31950) (not b!933527) (not b!933537) (not b!933530) (not start!79460) (not b!933532) (not b!933533) b_and!28817 (not b_next!17619) (not b_lambda!13983) tp_is_empty!20127)
(check-sat b_and!28817 (not b_next!17619))
