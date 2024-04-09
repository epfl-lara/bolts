; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79326 () Bool)

(assert start!79326)

(declare-fun b_free!17511 () Bool)

(declare-fun b_next!17511 () Bool)

(assert (=> start!79326 (= b_free!17511 (not b_next!17511))))

(declare-fun tp!60975 () Bool)

(declare-fun b_and!28595 () Bool)

(assert (=> start!79326 (= tp!60975 b_and!28595)))

(declare-fun b!931161 () Bool)

(declare-fun res!627224 () Bool)

(declare-fun e!522970 () Bool)

(assert (=> b!931161 (=> (not res!627224) (not e!522970))))

(declare-datatypes ((array!56006 0))(
  ( (array!56007 (arr!26944 (Array (_ BitVec 32) (_ BitVec 64))) (size!27404 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56006)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31657 0))(
  ( (V!31658 (val!10060 Int)) )
))
(declare-datatypes ((ValueCell!9528 0))(
  ( (ValueCellFull!9528 (v!12578 V!31657)) (EmptyCell!9528) )
))
(declare-datatypes ((array!56008 0))(
  ( (array!56009 (arr!26945 (Array (_ BitVec 32) ValueCell!9528)) (size!27405 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56008)

(assert (=> b!931161 (= res!627224 (and (= (size!27405 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27404 _keys!1487) (size!27405 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931162 () Bool)

(declare-fun e!522975 () Bool)

(declare-fun e!522974 () Bool)

(declare-fun mapRes!31785 () Bool)

(assert (=> b!931162 (= e!522975 (and e!522974 mapRes!31785))))

(declare-fun condMapEmpty!31785 () Bool)

(declare-fun mapDefault!31785 () ValueCell!9528)

(assert (=> b!931162 (= condMapEmpty!31785 (= (arr!26945 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9528)) mapDefault!31785)))))

(declare-fun b!931163 () Bool)

(declare-fun res!627222 () Bool)

(assert (=> b!931163 (=> (not res!627222) (not e!522970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56006 (_ BitVec 32)) Bool)

(assert (=> b!931163 (= res!627222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931164 () Bool)

(declare-fun res!627220 () Bool)

(assert (=> b!931164 (=> (not res!627220) (not e!522970))))

(declare-datatypes ((List!19095 0))(
  ( (Nil!19092) (Cons!19091 (h!20237 (_ BitVec 64)) (t!27160 List!19095)) )
))
(declare-fun arrayNoDuplicates!0 (array!56006 (_ BitVec 32) List!19095) Bool)

(assert (=> b!931164 (= res!627220 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19092))))

(declare-fun b!931165 () Bool)

(declare-fun e!522971 () Bool)

(declare-fun tp_is_empty!20019 () Bool)

(assert (=> b!931165 (= e!522971 tp_is_empty!20019)))

(declare-fun b!931166 () Bool)

(declare-fun e!522973 () Bool)

(assert (=> b!931166 (= e!522973 false)))

(declare-fun lt!419349 () V!31657)

(declare-datatypes ((tuple2!13278 0))(
  ( (tuple2!13279 (_1!6649 (_ BitVec 64)) (_2!6649 V!31657)) )
))
(declare-datatypes ((List!19096 0))(
  ( (Nil!19093) (Cons!19092 (h!20238 tuple2!13278) (t!27161 List!19096)) )
))
(declare-datatypes ((ListLongMap!11989 0))(
  ( (ListLongMap!11990 (toList!6010 List!19096)) )
))
(declare-fun lt!419348 () ListLongMap!11989)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!796 (ListLongMap!11989 (_ BitVec 64)) V!31657)

(assert (=> b!931166 (= lt!419349 (apply!796 lt!419348 k0!1099))))

(declare-fun res!627223 () Bool)

(assert (=> start!79326 (=> (not res!627223) (not e!522970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79326 (= res!627223 (validMask!0 mask!1881))))

(assert (=> start!79326 e!522970))

(assert (=> start!79326 true))

(declare-fun array_inv!20946 (array!56008) Bool)

(assert (=> start!79326 (and (array_inv!20946 _values!1231) e!522975)))

(assert (=> start!79326 tp!60975))

(declare-fun array_inv!20947 (array!56006) Bool)

(assert (=> start!79326 (array_inv!20947 _keys!1487)))

(assert (=> start!79326 tp_is_empty!20019))

(declare-fun b!931167 () Bool)

(declare-fun res!627221 () Bool)

(assert (=> b!931167 (=> (not res!627221) (not e!522970))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931167 (= res!627221 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27404 _keys!1487))))))

(declare-fun mapNonEmpty!31785 () Bool)

(declare-fun tp!60974 () Bool)

(assert (=> mapNonEmpty!31785 (= mapRes!31785 (and tp!60974 e!522971))))

(declare-fun mapValue!31785 () ValueCell!9528)

(declare-fun mapKey!31785 () (_ BitVec 32))

(declare-fun mapRest!31785 () (Array (_ BitVec 32) ValueCell!9528))

(assert (=> mapNonEmpty!31785 (= (arr!26945 _values!1231) (store mapRest!31785 mapKey!31785 mapValue!31785))))

(declare-fun mapIsEmpty!31785 () Bool)

(assert (=> mapIsEmpty!31785 mapRes!31785))

(declare-fun b!931168 () Bool)

(assert (=> b!931168 (= e!522974 tp_is_empty!20019)))

(declare-fun b!931169 () Bool)

(assert (=> b!931169 (= e!522970 e!522973)))

(declare-fun res!627219 () Bool)

(assert (=> b!931169 (=> (not res!627219) (not e!522973))))

(declare-fun contains!5014 (ListLongMap!11989 (_ BitVec 64)) Bool)

(assert (=> b!931169 (= res!627219 (contains!5014 lt!419348 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31657)

(declare-fun minValue!1173 () V!31657)

(declare-fun getCurrentListMap!3208 (array!56006 array!56008 (_ BitVec 32) (_ BitVec 32) V!31657 V!31657 (_ BitVec 32) Int) ListLongMap!11989)

(assert (=> b!931169 (= lt!419348 (getCurrentListMap!3208 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!79326 res!627223) b!931161))

(assert (= (and b!931161 res!627224) b!931163))

(assert (= (and b!931163 res!627222) b!931164))

(assert (= (and b!931164 res!627220) b!931167))

(assert (= (and b!931167 res!627221) b!931169))

(assert (= (and b!931169 res!627219) b!931166))

(assert (= (and b!931162 condMapEmpty!31785) mapIsEmpty!31785))

(assert (= (and b!931162 (not condMapEmpty!31785)) mapNonEmpty!31785))

(get-info :version)

(assert (= (and mapNonEmpty!31785 ((_ is ValueCellFull!9528) mapValue!31785)) b!931165))

(assert (= (and b!931162 ((_ is ValueCellFull!9528) mapDefault!31785)) b!931168))

(assert (= start!79326 b!931162))

(declare-fun m!865183 () Bool)

(assert (=> b!931163 m!865183))

(declare-fun m!865185 () Bool)

(assert (=> b!931169 m!865185))

(declare-fun m!865187 () Bool)

(assert (=> b!931169 m!865187))

(declare-fun m!865189 () Bool)

(assert (=> b!931164 m!865189))

(declare-fun m!865191 () Bool)

(assert (=> b!931166 m!865191))

(declare-fun m!865193 () Bool)

(assert (=> start!79326 m!865193))

(declare-fun m!865195 () Bool)

(assert (=> start!79326 m!865195))

(declare-fun m!865197 () Bool)

(assert (=> start!79326 m!865197))

(declare-fun m!865199 () Bool)

(assert (=> mapNonEmpty!31785 m!865199))

(check-sat (not mapNonEmpty!31785) tp_is_empty!20019 (not b_next!17511) (not b!931169) b_and!28595 (not b!931164) (not b!931163) (not b!931166) (not start!79326))
(check-sat b_and!28595 (not b_next!17511))
