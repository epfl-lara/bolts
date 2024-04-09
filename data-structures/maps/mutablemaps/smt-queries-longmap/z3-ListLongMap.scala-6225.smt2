; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79652 () Bool)

(assert start!79652)

(declare-fun b_free!17673 () Bool)

(declare-fun b_next!17673 () Bool)

(assert (=> start!79652 (= b_free!17673 (not b_next!17673))))

(declare-fun tp!61475 () Bool)

(declare-fun b_and!28955 () Bool)

(assert (=> start!79652 (= tp!61475 b_and!28955)))

(declare-fun b!935657 () Bool)

(declare-fun e!525424 () Bool)

(declare-fun tp_is_empty!20181 () Bool)

(assert (=> b!935657 (= e!525424 tp_is_empty!20181)))

(declare-fun b!935658 () Bool)

(declare-fun e!525431 () Bool)

(assert (=> b!935658 (= e!525431 true)))

(declare-fun lt!421790 () Bool)

(declare-datatypes ((List!19221 0))(
  ( (Nil!19218) (Cons!19217 (h!20363 (_ BitVec 64)) (t!27446 List!19221)) )
))
(declare-fun contains!5088 (List!19221 (_ BitVec 64)) Bool)

(assert (=> b!935658 (= lt!421790 (contains!5088 Nil!19218 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935659 () Bool)

(declare-fun e!525426 () Bool)

(assert (=> b!935659 (= e!525426 tp_is_empty!20181)))

(declare-fun res!630170 () Bool)

(declare-fun e!525428 () Bool)

(assert (=> start!79652 (=> (not res!630170) (not e!525428))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79652 (= res!630170 (validMask!0 mask!1881))))

(assert (=> start!79652 e!525428))

(assert (=> start!79652 true))

(assert (=> start!79652 tp_is_empty!20181))

(declare-datatypes ((V!31873 0))(
  ( (V!31874 (val!10141 Int)) )
))
(declare-datatypes ((ValueCell!9609 0))(
  ( (ValueCellFull!9609 (v!12666 V!31873)) (EmptyCell!9609) )
))
(declare-datatypes ((array!56326 0))(
  ( (array!56327 (arr!27099 (Array (_ BitVec 32) ValueCell!9609)) (size!27559 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56326)

(declare-fun e!525423 () Bool)

(declare-fun array_inv!21042 (array!56326) Bool)

(assert (=> start!79652 (and (array_inv!21042 _values!1231) e!525423)))

(assert (=> start!79652 tp!61475))

(declare-datatypes ((array!56328 0))(
  ( (array!56329 (arr!27100 (Array (_ BitVec 32) (_ BitVec 64))) (size!27560 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56328)

(declare-fun array_inv!21043 (array!56328) Bool)

(assert (=> start!79652 (array_inv!21043 _keys!1487)))

(declare-fun b!935660 () Bool)

(declare-fun res!630171 () Bool)

(assert (=> b!935660 (=> (not res!630171) (not e!525428))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935660 (= res!630171 (and (= (size!27559 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27560 _keys!1487) (size!27559 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32043 () Bool)

(declare-fun mapRes!32043 () Bool)

(declare-fun tp!61476 () Bool)

(assert (=> mapNonEmpty!32043 (= mapRes!32043 (and tp!61476 e!525426))))

(declare-fun mapValue!32043 () ValueCell!9609)

(declare-fun mapKey!32043 () (_ BitVec 32))

(declare-fun mapRest!32043 () (Array (_ BitVec 32) ValueCell!9609))

(assert (=> mapNonEmpty!32043 (= (arr!27099 _values!1231) (store mapRest!32043 mapKey!32043 mapValue!32043))))

(declare-fun b!935661 () Bool)

(declare-fun res!630169 () Bool)

(assert (=> b!935661 (=> res!630169 e!525431)))

(declare-fun noDuplicate!1360 (List!19221) Bool)

(assert (=> b!935661 (= res!630169 (not (noDuplicate!1360 Nil!19218)))))

(declare-fun b!935662 () Bool)

(declare-fun e!525427 () Bool)

(assert (=> b!935662 (= e!525428 e!525427)))

(declare-fun res!630175 () Bool)

(assert (=> b!935662 (=> (not res!630175) (not e!525427))))

(declare-datatypes ((tuple2!13414 0))(
  ( (tuple2!13415 (_1!6717 (_ BitVec 64)) (_2!6717 V!31873)) )
))
(declare-datatypes ((List!19222 0))(
  ( (Nil!19219) (Cons!19218 (h!20364 tuple2!13414) (t!27447 List!19222)) )
))
(declare-datatypes ((ListLongMap!12125 0))(
  ( (ListLongMap!12126 (toList!6078 List!19222)) )
))
(declare-fun lt!421784 () ListLongMap!12125)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5089 (ListLongMap!12125 (_ BitVec 64)) Bool)

(assert (=> b!935662 (= res!630175 (contains!5089 lt!421784 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31873)

(declare-fun minValue!1173 () V!31873)

(declare-fun getCurrentListMap!3269 (array!56328 array!56326 (_ BitVec 32) (_ BitVec 32) V!31873 V!31873 (_ BitVec 32) Int) ListLongMap!12125)

(assert (=> b!935662 (= lt!421784 (getCurrentListMap!3269 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935663 () Bool)

(declare-fun res!630179 () Bool)

(assert (=> b!935663 (=> (not res!630179) (not e!525428))))

(assert (=> b!935663 (= res!630179 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27560 _keys!1487))))))

(declare-fun mapIsEmpty!32043 () Bool)

(assert (=> mapIsEmpty!32043 mapRes!32043))

(declare-fun b!935664 () Bool)

(declare-fun e!525425 () Bool)

(assert (=> b!935664 (= e!525425 (not e!525431))))

(declare-fun res!630167 () Bool)

(assert (=> b!935664 (=> res!630167 e!525431)))

(assert (=> b!935664 (= res!630167 (or (bvsge (size!27560 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27560 _keys!1487))))))

(declare-fun e!525430 () Bool)

(assert (=> b!935664 e!525430))

(declare-fun c!97259 () Bool)

(assert (=> b!935664 (= c!97259 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31560 0))(
  ( (Unit!31561) )
))
(declare-fun lt!421786 () Unit!31560)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!289 (array!56328 array!56326 (_ BitVec 32) (_ BitVec 32) V!31873 V!31873 (_ BitVec 64) (_ BitVec 32) Int) Unit!31560)

(assert (=> b!935664 (= lt!421786 (lemmaListMapContainsThenArrayContainsFrom!289 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56328 (_ BitVec 32) List!19221) Bool)

(assert (=> b!935664 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19218)))

(declare-fun lt!421787 () Unit!31560)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56328 (_ BitVec 32) (_ BitVec 32)) Unit!31560)

(assert (=> b!935664 (= lt!421787 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421791 () tuple2!13414)

(declare-fun +!2776 (ListLongMap!12125 tuple2!13414) ListLongMap!12125)

(assert (=> b!935664 (contains!5089 (+!2776 lt!421784 lt!421791) k0!1099)))

(declare-fun lt!421788 () (_ BitVec 64))

(declare-fun lt!421785 () V!31873)

(declare-fun lt!421792 () Unit!31560)

(declare-fun addStillContains!532 (ListLongMap!12125 (_ BitVec 64) V!31873 (_ BitVec 64)) Unit!31560)

(assert (=> b!935664 (= lt!421792 (addStillContains!532 lt!421784 lt!421788 lt!421785 k0!1099))))

(assert (=> b!935664 (= (getCurrentListMap!3269 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2776 (getCurrentListMap!3269 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421791))))

(assert (=> b!935664 (= lt!421791 (tuple2!13415 lt!421788 lt!421785))))

(declare-fun get!14294 (ValueCell!9609 V!31873) V!31873)

(declare-fun dynLambda!1615 (Int (_ BitVec 64)) V!31873)

(assert (=> b!935664 (= lt!421785 (get!14294 (select (arr!27099 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1615 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421789 () Unit!31560)

(declare-fun lemmaListMapRecursiveValidKeyArray!211 (array!56328 array!56326 (_ BitVec 32) (_ BitVec 32) V!31873 V!31873 (_ BitVec 32) Int) Unit!31560)

(assert (=> b!935664 (= lt!421789 (lemmaListMapRecursiveValidKeyArray!211 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935665 () Bool)

(assert (=> b!935665 (= e!525427 e!525425)))

(declare-fun res!630174 () Bool)

(assert (=> b!935665 (=> (not res!630174) (not e!525425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935665 (= res!630174 (validKeyInArray!0 lt!421788))))

(assert (=> b!935665 (= lt!421788 (select (arr!27100 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!935666 () Bool)

(declare-fun arrayContainsKey!0 (array!56328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935666 (= e!525430 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!935667 () Bool)

(assert (=> b!935667 (= e!525423 (and e!525424 mapRes!32043))))

(declare-fun condMapEmpty!32043 () Bool)

(declare-fun mapDefault!32043 () ValueCell!9609)

(assert (=> b!935667 (= condMapEmpty!32043 (= (arr!27099 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9609)) mapDefault!32043)))))

(declare-fun b!935668 () Bool)

(declare-fun res!630178 () Bool)

(assert (=> b!935668 (=> (not res!630178) (not e!525427))))

(declare-fun v!791 () V!31873)

(declare-fun apply!857 (ListLongMap!12125 (_ BitVec 64)) V!31873)

(assert (=> b!935668 (= res!630178 (= (apply!857 lt!421784 k0!1099) v!791))))

(declare-fun b!935669 () Bool)

(assert (=> b!935669 (= e!525430 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935670 () Bool)

(declare-fun res!630177 () Bool)

(assert (=> b!935670 (=> (not res!630177) (not e!525427))))

(assert (=> b!935670 (= res!630177 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935671 () Bool)

(declare-fun res!630172 () Bool)

(assert (=> b!935671 (=> (not res!630172) (not e!525428))))

(assert (=> b!935671 (= res!630172 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19218))))

(declare-fun b!935672 () Bool)

(declare-fun res!630176 () Bool)

(assert (=> b!935672 (=> (not res!630176) (not e!525427))))

(assert (=> b!935672 (= res!630176 (validKeyInArray!0 k0!1099))))

(declare-fun b!935673 () Bool)

(declare-fun res!630173 () Bool)

(assert (=> b!935673 (=> res!630173 e!525431)))

(assert (=> b!935673 (= res!630173 (contains!5088 Nil!19218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935674 () Bool)

(declare-fun res!630168 () Bool)

(assert (=> b!935674 (=> (not res!630168) (not e!525428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56328 (_ BitVec 32)) Bool)

(assert (=> b!935674 (= res!630168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79652 res!630170) b!935660))

(assert (= (and b!935660 res!630171) b!935674))

(assert (= (and b!935674 res!630168) b!935671))

(assert (= (and b!935671 res!630172) b!935663))

(assert (= (and b!935663 res!630179) b!935662))

(assert (= (and b!935662 res!630175) b!935668))

(assert (= (and b!935668 res!630178) b!935670))

(assert (= (and b!935670 res!630177) b!935672))

(assert (= (and b!935672 res!630176) b!935665))

(assert (= (and b!935665 res!630174) b!935664))

(assert (= (and b!935664 c!97259) b!935666))

(assert (= (and b!935664 (not c!97259)) b!935669))

(assert (= (and b!935664 (not res!630167)) b!935661))

(assert (= (and b!935661 (not res!630169)) b!935673))

(assert (= (and b!935673 (not res!630173)) b!935658))

(assert (= (and b!935667 condMapEmpty!32043) mapIsEmpty!32043))

(assert (= (and b!935667 (not condMapEmpty!32043)) mapNonEmpty!32043))

(get-info :version)

(assert (= (and mapNonEmpty!32043 ((_ is ValueCellFull!9609) mapValue!32043)) b!935659))

(assert (= (and b!935667 ((_ is ValueCellFull!9609) mapDefault!32043)) b!935657))

(assert (= start!79652 b!935667))

(declare-fun b_lambda!14109 () Bool)

(assert (=> (not b_lambda!14109) (not b!935664)))

(declare-fun t!27445 () Bool)

(declare-fun tb!6075 () Bool)

(assert (=> (and start!79652 (= defaultEntry!1235 defaultEntry!1235) t!27445) tb!6075))

(declare-fun result!11975 () Bool)

(assert (=> tb!6075 (= result!11975 tp_is_empty!20181)))

(assert (=> b!935664 t!27445))

(declare-fun b_and!28957 () Bool)

(assert (= b_and!28955 (and (=> t!27445 result!11975) b_and!28957)))

(declare-fun m!870279 () Bool)

(assert (=> b!935673 m!870279))

(declare-fun m!870281 () Bool)

(assert (=> start!79652 m!870281))

(declare-fun m!870283 () Bool)

(assert (=> start!79652 m!870283))

(declare-fun m!870285 () Bool)

(assert (=> start!79652 m!870285))

(declare-fun m!870287 () Bool)

(assert (=> b!935666 m!870287))

(declare-fun m!870289 () Bool)

(assert (=> mapNonEmpty!32043 m!870289))

(declare-fun m!870291 () Bool)

(assert (=> b!935671 m!870291))

(declare-fun m!870293 () Bool)

(assert (=> b!935665 m!870293))

(declare-fun m!870295 () Bool)

(assert (=> b!935665 m!870295))

(declare-fun m!870297 () Bool)

(assert (=> b!935668 m!870297))

(declare-fun m!870299 () Bool)

(assert (=> b!935658 m!870299))

(declare-fun m!870301 () Bool)

(assert (=> b!935664 m!870301))

(declare-fun m!870303 () Bool)

(assert (=> b!935664 m!870303))

(declare-fun m!870305 () Bool)

(assert (=> b!935664 m!870305))

(declare-fun m!870307 () Bool)

(assert (=> b!935664 m!870307))

(declare-fun m!870309 () Bool)

(assert (=> b!935664 m!870309))

(assert (=> b!935664 m!870307))

(assert (=> b!935664 m!870309))

(declare-fun m!870311 () Bool)

(assert (=> b!935664 m!870311))

(declare-fun m!870313 () Bool)

(assert (=> b!935664 m!870313))

(declare-fun m!870315 () Bool)

(assert (=> b!935664 m!870315))

(declare-fun m!870317 () Bool)

(assert (=> b!935664 m!870317))

(declare-fun m!870319 () Bool)

(assert (=> b!935664 m!870319))

(assert (=> b!935664 m!870315))

(declare-fun m!870321 () Bool)

(assert (=> b!935664 m!870321))

(declare-fun m!870323 () Bool)

(assert (=> b!935664 m!870323))

(assert (=> b!935664 m!870303))

(declare-fun m!870325 () Bool)

(assert (=> b!935664 m!870325))

(declare-fun m!870327 () Bool)

(assert (=> b!935661 m!870327))

(declare-fun m!870329 () Bool)

(assert (=> b!935674 m!870329))

(declare-fun m!870331 () Bool)

(assert (=> b!935662 m!870331))

(declare-fun m!870333 () Bool)

(assert (=> b!935662 m!870333))

(declare-fun m!870335 () Bool)

(assert (=> b!935672 m!870335))

(check-sat (not b!935658) (not start!79652) (not b!935661) (not b!935674) (not b!935668) (not b!935664) (not b!935665) (not b!935673) (not b_lambda!14109) (not b!935672) (not b!935662) tp_is_empty!20181 (not b!935671) (not b_next!17673) (not b!935666) (not mapNonEmpty!32043) b_and!28957)
(check-sat b_and!28957 (not b_next!17673))
