; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79260 () Bool)

(assert start!79260)

(declare-fun b_free!17445 () Bool)

(declare-fun b_next!17445 () Bool)

(assert (=> start!79260 (= b_free!17445 (not b_next!17445))))

(declare-fun tp!60777 () Bool)

(declare-fun b_and!28529 () Bool)

(assert (=> start!79260 (= tp!60777 b_and!28529)))

(declare-fun mapNonEmpty!31686 () Bool)

(declare-fun mapRes!31686 () Bool)

(declare-fun tp!60776 () Bool)

(declare-fun e!522380 () Bool)

(assert (=> mapNonEmpty!31686 (= mapRes!31686 (and tp!60776 e!522380))))

(declare-datatypes ((V!31569 0))(
  ( (V!31570 (val!10027 Int)) )
))
(declare-datatypes ((ValueCell!9495 0))(
  ( (ValueCellFull!9495 (v!12545 V!31569)) (EmptyCell!9495) )
))
(declare-fun mapRest!31686 () (Array (_ BitVec 32) ValueCell!9495))

(declare-fun mapKey!31686 () (_ BitVec 32))

(declare-fun mapValue!31686 () ValueCell!9495)

(declare-datatypes ((array!55876 0))(
  ( (array!55877 (arr!26879 (Array (_ BitVec 32) ValueCell!9495)) (size!27339 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55876)

(assert (=> mapNonEmpty!31686 (= (arr!26879 _values!1231) (store mapRest!31686 mapKey!31686 mapValue!31686))))

(declare-fun b!930207 () Bool)

(declare-fun res!626562 () Bool)

(declare-fun e!522377 () Bool)

(assert (=> b!930207 (=> (not res!626562) (not e!522377))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55878 0))(
  ( (array!55879 (arr!26880 (Array (_ BitVec 32) (_ BitVec 64))) (size!27340 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55878)

(assert (=> b!930207 (= res!626562 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27340 _keys!1487))))))

(declare-fun b!930208 () Bool)

(declare-fun e!522381 () Bool)

(declare-fun e!522376 () Bool)

(assert (=> b!930208 (= e!522381 (and e!522376 mapRes!31686))))

(declare-fun condMapEmpty!31686 () Bool)

(declare-fun mapDefault!31686 () ValueCell!9495)

(assert (=> b!930208 (= condMapEmpty!31686 (= (arr!26879 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9495)) mapDefault!31686)))))

(declare-fun b!930209 () Bool)

(declare-fun res!626567 () Bool)

(assert (=> b!930209 (=> (not res!626567) (not e!522377))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!930209 (= res!626567 (and (= (size!27339 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27340 _keys!1487) (size!27339 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930210 () Bool)

(declare-fun res!626564 () Bool)

(assert (=> b!930210 (=> (not res!626564) (not e!522377))))

(declare-datatypes ((List!19041 0))(
  ( (Nil!19038) (Cons!19037 (h!20183 (_ BitVec 64)) (t!27106 List!19041)) )
))
(declare-fun arrayNoDuplicates!0 (array!55878 (_ BitVec 32) List!19041) Bool)

(assert (=> b!930210 (= res!626564 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19038))))

(declare-fun mapIsEmpty!31686 () Bool)

(assert (=> mapIsEmpty!31686 mapRes!31686))

(declare-fun res!626566 () Bool)

(assert (=> start!79260 (=> (not res!626566) (not e!522377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79260 (= res!626566 (validMask!0 mask!1881))))

(assert (=> start!79260 e!522377))

(assert (=> start!79260 true))

(declare-fun array_inv!20904 (array!55876) Bool)

(assert (=> start!79260 (and (array_inv!20904 _values!1231) e!522381)))

(assert (=> start!79260 tp!60777))

(declare-fun array_inv!20905 (array!55878) Bool)

(assert (=> start!79260 (array_inv!20905 _keys!1487)))

(declare-fun tp_is_empty!19953 () Bool)

(assert (=> start!79260 tp_is_empty!19953))

(declare-fun b!930211 () Bool)

(assert (=> b!930211 (= e!522376 tp_is_empty!19953)))

(declare-fun b!930212 () Bool)

(declare-fun e!522378 () Bool)

(assert (=> b!930212 (= e!522377 e!522378)))

(declare-fun res!626563 () Bool)

(assert (=> b!930212 (=> (not res!626563) (not e!522378))))

(declare-datatypes ((tuple2!13220 0))(
  ( (tuple2!13221 (_1!6620 (_ BitVec 64)) (_2!6620 V!31569)) )
))
(declare-datatypes ((List!19042 0))(
  ( (Nil!19039) (Cons!19038 (h!20184 tuple2!13220) (t!27107 List!19042)) )
))
(declare-datatypes ((ListLongMap!11931 0))(
  ( (ListLongMap!11932 (toList!5981 List!19042)) )
))
(declare-fun lt!419169 () ListLongMap!11931)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4994 (ListLongMap!11931 (_ BitVec 64)) Bool)

(assert (=> b!930212 (= res!626563 (contains!4994 lt!419169 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31569)

(declare-fun minValue!1173 () V!31569)

(declare-fun getCurrentListMap!3188 (array!55878 array!55876 (_ BitVec 32) (_ BitVec 32) V!31569 V!31569 (_ BitVec 32) Int) ListLongMap!11931)

(assert (=> b!930212 (= lt!419169 (getCurrentListMap!3188 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930213 () Bool)

(declare-fun res!626565 () Bool)

(assert (=> b!930213 (=> (not res!626565) (not e!522377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55878 (_ BitVec 32)) Bool)

(assert (=> b!930213 (= res!626565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930214 () Bool)

(assert (=> b!930214 (= e!522378 false)))

(declare-fun lt!419168 () V!31569)

(declare-fun apply!769 (ListLongMap!11931 (_ BitVec 64)) V!31569)

(assert (=> b!930214 (= lt!419168 (apply!769 lt!419169 k0!1099))))

(declare-fun b!930215 () Bool)

(assert (=> b!930215 (= e!522380 tp_is_empty!19953)))

(assert (= (and start!79260 res!626566) b!930209))

(assert (= (and b!930209 res!626567) b!930213))

(assert (= (and b!930213 res!626565) b!930210))

(assert (= (and b!930210 res!626564) b!930207))

(assert (= (and b!930207 res!626562) b!930212))

(assert (= (and b!930212 res!626563) b!930214))

(assert (= (and b!930208 condMapEmpty!31686) mapIsEmpty!31686))

(assert (= (and b!930208 (not condMapEmpty!31686)) mapNonEmpty!31686))

(get-info :version)

(assert (= (and mapNonEmpty!31686 ((_ is ValueCellFull!9495) mapValue!31686)) b!930215))

(assert (= (and b!930208 ((_ is ValueCellFull!9495) mapDefault!31686)) b!930211))

(assert (= start!79260 b!930208))

(declare-fun m!864565 () Bool)

(assert (=> b!930212 m!864565))

(declare-fun m!864567 () Bool)

(assert (=> b!930212 m!864567))

(declare-fun m!864569 () Bool)

(assert (=> b!930213 m!864569))

(declare-fun m!864571 () Bool)

(assert (=> start!79260 m!864571))

(declare-fun m!864573 () Bool)

(assert (=> start!79260 m!864573))

(declare-fun m!864575 () Bool)

(assert (=> start!79260 m!864575))

(declare-fun m!864577 () Bool)

(assert (=> mapNonEmpty!31686 m!864577))

(declare-fun m!864579 () Bool)

(assert (=> b!930214 m!864579))

(declare-fun m!864581 () Bool)

(assert (=> b!930210 m!864581))

(check-sat (not b!930210) (not b_next!17445) b_and!28529 (not mapNonEmpty!31686) (not b!930213) (not b!930212) (not start!79260) (not b!930214) tp_is_empty!19953)
(check-sat b_and!28529 (not b_next!17445))
