; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83884 () Bool)

(assert start!83884)

(declare-fun b_free!19665 () Bool)

(declare-fun b_next!19665 () Bool)

(assert (=> start!83884 (= b_free!19665 (not b_next!19665))))

(declare-fun tp!68438 () Bool)

(declare-fun b_and!31437 () Bool)

(assert (=> start!83884 (= tp!68438 b_and!31437)))

(declare-fun mapNonEmpty!36017 () Bool)

(declare-fun mapRes!36017 () Bool)

(declare-fun tp!68437 () Bool)

(declare-fun e!552188 () Bool)

(assert (=> mapNonEmpty!36017 (= mapRes!36017 (and tp!68437 e!552188))))

(declare-fun mapKey!36017 () (_ BitVec 32))

(declare-datatypes ((V!35195 0))(
  ( (V!35196 (val!11380 Int)) )
))
(declare-datatypes ((ValueCell!10848 0))(
  ( (ValueCellFull!10848 (v!13942 V!35195)) (EmptyCell!10848) )
))
(declare-datatypes ((array!61331 0))(
  ( (array!61332 (arr!29519 (Array (_ BitVec 32) ValueCell!10848)) (size!29999 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61331)

(declare-fun mapRest!36017 () (Array (_ BitVec 32) ValueCell!10848))

(declare-fun mapValue!36017 () ValueCell!10848)

(assert (=> mapNonEmpty!36017 (= (arr!29519 _values!1278) (store mapRest!36017 mapKey!36017 mapValue!36017))))

(declare-fun res!655646 () Bool)

(declare-fun e!552185 () Bool)

(assert (=> start!83884 (=> (not res!655646) (not e!552185))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83884 (= res!655646 (validMask!0 mask!1948))))

(assert (=> start!83884 e!552185))

(assert (=> start!83884 true))

(declare-fun tp_is_empty!22659 () Bool)

(assert (=> start!83884 tp_is_empty!22659))

(declare-fun e!552184 () Bool)

(declare-fun array_inv!22713 (array!61331) Bool)

(assert (=> start!83884 (and (array_inv!22713 _values!1278) e!552184)))

(assert (=> start!83884 tp!68438))

(declare-datatypes ((array!61333 0))(
  ( (array!61334 (arr!29520 (Array (_ BitVec 32) (_ BitVec 64))) (size!30000 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61333)

(declare-fun array_inv!22714 (array!61333) Bool)

(assert (=> start!83884 (array_inv!22714 _keys!1544)))

(declare-fun b!979531 () Bool)

(declare-fun res!655650 () Bool)

(assert (=> b!979531 (=> (not res!655650) (not e!552185))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979531 (= res!655650 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979532 () Bool)

(declare-fun res!655644 () Bool)

(assert (=> b!979532 (=> (not res!655644) (not e!552185))))

(declare-datatypes ((List!20591 0))(
  ( (Nil!20588) (Cons!20587 (h!21749 (_ BitVec 64)) (t!29220 List!20591)) )
))
(declare-fun arrayNoDuplicates!0 (array!61333 (_ BitVec 32) List!20591) Bool)

(assert (=> b!979532 (= res!655644 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20588))))

(declare-fun b!979533 () Bool)

(declare-fun res!655648 () Bool)

(assert (=> b!979533 (=> (not res!655648) (not e!552185))))

(assert (=> b!979533 (= res!655648 (and (= (size!29999 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30000 _keys!1544) (size!29999 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36017 () Bool)

(assert (=> mapIsEmpty!36017 mapRes!36017))

(declare-fun b!979534 () Bool)

(declare-fun e!552183 () Bool)

(assert (=> b!979534 (= e!552184 (and e!552183 mapRes!36017))))

(declare-fun condMapEmpty!36017 () Bool)

(declare-fun mapDefault!36017 () ValueCell!10848)

(assert (=> b!979534 (= condMapEmpty!36017 (= (arr!29519 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10848)) mapDefault!36017)))))

(declare-fun b!979535 () Bool)

(declare-fun e!552187 () Bool)

(assert (=> b!979535 (= e!552185 (not e!552187))))

(declare-fun res!655643 () Bool)

(assert (=> b!979535 (=> res!655643 e!552187)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979535 (= res!655643 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29520 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14698 0))(
  ( (tuple2!14699 (_1!7359 (_ BitVec 64)) (_2!7359 V!35195)) )
))
(declare-datatypes ((List!20592 0))(
  ( (Nil!20589) (Cons!20588 (h!21750 tuple2!14698) (t!29221 List!20592)) )
))
(declare-datatypes ((ListLongMap!13409 0))(
  ( (ListLongMap!13410 (toList!6720 List!20592)) )
))
(declare-fun lt!434612 () ListLongMap!13409)

(declare-fun lt!434607 () ListLongMap!13409)

(declare-fun lt!434610 () tuple2!14698)

(declare-fun lt!434613 () tuple2!14698)

(declare-fun +!2926 (ListLongMap!13409 tuple2!14698) ListLongMap!13409)

(assert (=> b!979535 (= (+!2926 lt!434607 lt!434613) (+!2926 lt!434612 lt!434610))))

(declare-fun lt!434614 () ListLongMap!13409)

(assert (=> b!979535 (= lt!434612 (+!2926 lt!434614 lt!434613))))

(declare-fun lt!434605 () V!35195)

(assert (=> b!979535 (= lt!434613 (tuple2!14699 (select (arr!29520 _keys!1544) from!1932) lt!434605))))

(assert (=> b!979535 (= lt!434607 (+!2926 lt!434614 lt!434610))))

(declare-fun minValue!1220 () V!35195)

(assert (=> b!979535 (= lt!434610 (tuple2!14699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32527 0))(
  ( (Unit!32528) )
))
(declare-fun lt!434611 () Unit!32527)

(declare-fun addCommutativeForDiffKeys!588 (ListLongMap!13409 (_ BitVec 64) V!35195 (_ BitVec 64) V!35195) Unit!32527)

(assert (=> b!979535 (= lt!434611 (addCommutativeForDiffKeys!588 lt!434614 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29520 _keys!1544) from!1932) lt!434605))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15314 (ValueCell!10848 V!35195) V!35195)

(declare-fun dynLambda!1761 (Int (_ BitVec 64)) V!35195)

(assert (=> b!979535 (= lt!434605 (get!15314 (select (arr!29519 _values!1278) from!1932) (dynLambda!1761 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434606 () ListLongMap!13409)

(declare-fun lt!434608 () tuple2!14698)

(assert (=> b!979535 (= lt!434614 (+!2926 lt!434606 lt!434608))))

(declare-fun zeroValue!1220 () V!35195)

(assert (=> b!979535 (= lt!434608 (tuple2!14699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3386 (array!61333 array!61331 (_ BitVec 32) (_ BitVec 32) V!35195 V!35195 (_ BitVec 32) Int) ListLongMap!13409)

(assert (=> b!979535 (= lt!434606 (getCurrentListMapNoExtraKeys!3386 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979536 () Bool)

(declare-fun res!655647 () Bool)

(assert (=> b!979536 (=> (not res!655647) (not e!552185))))

(assert (=> b!979536 (= res!655647 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30000 _keys!1544))))))

(declare-fun b!979537 () Bool)

(assert (=> b!979537 (= e!552187 true)))

(assert (=> b!979537 (= lt!434612 (+!2926 (+!2926 lt!434606 lt!434613) lt!434608))))

(declare-fun lt!434609 () Unit!32527)

(assert (=> b!979537 (= lt!434609 (addCommutativeForDiffKeys!588 lt!434606 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29520 _keys!1544) from!1932) lt!434605))))

(declare-fun b!979538 () Bool)

(declare-fun res!655649 () Bool)

(assert (=> b!979538 (=> (not res!655649) (not e!552185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979538 (= res!655649 (validKeyInArray!0 (select (arr!29520 _keys!1544) from!1932)))))

(declare-fun b!979539 () Bool)

(assert (=> b!979539 (= e!552183 tp_is_empty!22659)))

(declare-fun b!979540 () Bool)

(assert (=> b!979540 (= e!552188 tp_is_empty!22659)))

(declare-fun b!979541 () Bool)

(declare-fun res!655645 () Bool)

(assert (=> b!979541 (=> (not res!655645) (not e!552185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61333 (_ BitVec 32)) Bool)

(assert (=> b!979541 (= res!655645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!83884 res!655646) b!979533))

(assert (= (and b!979533 res!655648) b!979541))

(assert (= (and b!979541 res!655645) b!979532))

(assert (= (and b!979532 res!655644) b!979536))

(assert (= (and b!979536 res!655647) b!979538))

(assert (= (and b!979538 res!655649) b!979531))

(assert (= (and b!979531 res!655650) b!979535))

(assert (= (and b!979535 (not res!655643)) b!979537))

(assert (= (and b!979534 condMapEmpty!36017) mapIsEmpty!36017))

(assert (= (and b!979534 (not condMapEmpty!36017)) mapNonEmpty!36017))

(get-info :version)

(assert (= (and mapNonEmpty!36017 ((_ is ValueCellFull!10848) mapValue!36017)) b!979540))

(assert (= (and b!979534 ((_ is ValueCellFull!10848) mapDefault!36017)) b!979539))

(assert (= start!83884 b!979534))

(declare-fun b_lambda!14739 () Bool)

(assert (=> (not b_lambda!14739) (not b!979535)))

(declare-fun t!29219 () Bool)

(declare-fun tb!6479 () Bool)

(assert (=> (and start!83884 (= defaultEntry!1281 defaultEntry!1281) t!29219) tb!6479))

(declare-fun result!12939 () Bool)

(assert (=> tb!6479 (= result!12939 tp_is_empty!22659)))

(assert (=> b!979535 t!29219))

(declare-fun b_and!31439 () Bool)

(assert (= b_and!31437 (and (=> t!29219 result!12939) b_and!31439)))

(declare-fun m!906995 () Bool)

(assert (=> b!979541 m!906995))

(declare-fun m!906997 () Bool)

(assert (=> b!979537 m!906997))

(assert (=> b!979537 m!906997))

(declare-fun m!906999 () Bool)

(assert (=> b!979537 m!906999))

(declare-fun m!907001 () Bool)

(assert (=> b!979537 m!907001))

(assert (=> b!979537 m!907001))

(declare-fun m!907003 () Bool)

(assert (=> b!979537 m!907003))

(declare-fun m!907005 () Bool)

(assert (=> start!83884 m!907005))

(declare-fun m!907007 () Bool)

(assert (=> start!83884 m!907007))

(declare-fun m!907009 () Bool)

(assert (=> start!83884 m!907009))

(assert (=> b!979538 m!907001))

(assert (=> b!979538 m!907001))

(declare-fun m!907011 () Bool)

(assert (=> b!979538 m!907011))

(declare-fun m!907013 () Bool)

(assert (=> mapNonEmpty!36017 m!907013))

(declare-fun m!907015 () Bool)

(assert (=> b!979532 m!907015))

(assert (=> b!979535 m!907001))

(declare-fun m!907017 () Bool)

(assert (=> b!979535 m!907017))

(declare-fun m!907019 () Bool)

(assert (=> b!979535 m!907019))

(assert (=> b!979535 m!907001))

(declare-fun m!907021 () Bool)

(assert (=> b!979535 m!907021))

(declare-fun m!907023 () Bool)

(assert (=> b!979535 m!907023))

(declare-fun m!907025 () Bool)

(assert (=> b!979535 m!907025))

(declare-fun m!907027 () Bool)

(assert (=> b!979535 m!907027))

(declare-fun m!907029 () Bool)

(assert (=> b!979535 m!907029))

(declare-fun m!907031 () Bool)

(assert (=> b!979535 m!907031))

(declare-fun m!907033 () Bool)

(assert (=> b!979535 m!907033))

(assert (=> b!979535 m!907031))

(assert (=> b!979535 m!907033))

(declare-fun m!907035 () Bool)

(assert (=> b!979535 m!907035))

(check-sat (not b!979537) (not b_next!19665) (not b!979538) b_and!31439 (not b!979535) (not b_lambda!14739) (not b!979532) tp_is_empty!22659 (not start!83884) (not b!979541) (not mapNonEmpty!36017))
(check-sat b_and!31439 (not b_next!19665))
