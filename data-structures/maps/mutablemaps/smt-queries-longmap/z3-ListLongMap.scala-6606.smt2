; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83550 () Bool)

(assert start!83550)

(declare-fun b_free!19509 () Bool)

(declare-fun b_next!19509 () Bool)

(assert (=> start!83550 (= b_free!19509 (not b_next!19509))))

(declare-fun tp!67816 () Bool)

(declare-fun b_and!31131 () Bool)

(assert (=> start!83550 (= tp!67816 b_and!31131)))

(declare-fun mapIsEmpty!35629 () Bool)

(declare-fun mapRes!35629 () Bool)

(assert (=> mapIsEmpty!35629 mapRes!35629))

(declare-fun b!975653 () Bool)

(declare-fun e!549884 () Bool)

(declare-fun e!549886 () Bool)

(assert (=> b!975653 (= e!549884 (and e!549886 mapRes!35629))))

(declare-fun condMapEmpty!35629 () Bool)

(declare-datatypes ((V!34867 0))(
  ( (V!34868 (val!11257 Int)) )
))
(declare-datatypes ((ValueCell!10725 0))(
  ( (ValueCellFull!10725 (v!13816 V!34867)) (EmptyCell!10725) )
))
(declare-datatypes ((array!60841 0))(
  ( (array!60842 (arr!29280 (Array (_ BitVec 32) ValueCell!10725)) (size!29760 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60841)

(declare-fun mapDefault!35629 () ValueCell!10725)

(assert (=> b!975653 (= condMapEmpty!35629 (= (arr!29280 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10725)) mapDefault!35629)))))

(declare-fun b!975654 () Bool)

(declare-fun res!653256 () Bool)

(declare-fun e!549885 () Bool)

(assert (=> b!975654 (=> (not res!653256) (not e!549885))))

(declare-datatypes ((array!60843 0))(
  ( (array!60844 (arr!29281 (Array (_ BitVec 32) (_ BitVec 64))) (size!29761 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60843)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975654 (= res!653256 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29761 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29761 _keys!1717))))))

(declare-fun b!975655 () Bool)

(declare-fun res!653250 () Bool)

(assert (=> b!975655 (=> (not res!653250) (not e!549885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975655 (= res!653250 (validKeyInArray!0 (select (arr!29281 _keys!1717) i!822)))))

(declare-fun b!975656 () Bool)

(declare-fun res!653254 () Bool)

(assert (=> b!975656 (=> (not res!653254) (not e!549885))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975656 (= res!653254 (and (= (size!29760 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29761 _keys!1717) (size!29760 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35629 () Bool)

(declare-fun tp!67815 () Bool)

(declare-fun e!549887 () Bool)

(assert (=> mapNonEmpty!35629 (= mapRes!35629 (and tp!67815 e!549887))))

(declare-fun mapValue!35629 () ValueCell!10725)

(declare-fun mapRest!35629 () (Array (_ BitVec 32) ValueCell!10725))

(declare-fun mapKey!35629 () (_ BitVec 32))

(assert (=> mapNonEmpty!35629 (= (arr!29280 _values!1425) (store mapRest!35629 mapKey!35629 mapValue!35629))))

(declare-fun b!975657 () Bool)

(declare-fun res!653251 () Bool)

(assert (=> b!975657 (=> (not res!653251) (not e!549885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60843 (_ BitVec 32)) Bool)

(assert (=> b!975657 (= res!653251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!653253 () Bool)

(assert (=> start!83550 (=> (not res!653253) (not e!549885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83550 (= res!653253 (validMask!0 mask!2147))))

(assert (=> start!83550 e!549885))

(assert (=> start!83550 true))

(declare-fun array_inv!22541 (array!60841) Bool)

(assert (=> start!83550 (and (array_inv!22541 _values!1425) e!549884)))

(declare-fun tp_is_empty!22413 () Bool)

(assert (=> start!83550 tp_is_empty!22413))

(assert (=> start!83550 tp!67816))

(declare-fun array_inv!22542 (array!60843) Bool)

(assert (=> start!83550 (array_inv!22542 _keys!1717)))

(declare-fun b!975658 () Bool)

(assert (=> b!975658 (= e!549887 tp_is_empty!22413)))

(declare-fun b!975659 () Bool)

(declare-fun res!653257 () Bool)

(assert (=> b!975659 (=> (not res!653257) (not e!549885))))

(declare-datatypes ((List!20452 0))(
  ( (Nil!20449) (Cons!20448 (h!21610 (_ BitVec 64)) (t!28941 List!20452)) )
))
(declare-fun arrayNoDuplicates!0 (array!60843 (_ BitVec 32) List!20452) Bool)

(assert (=> b!975659 (= res!653257 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20449))))

(declare-fun b!975660 () Bool)

(assert (=> b!975660 (= e!549886 tp_is_empty!22413)))

(declare-fun b!975661 () Bool)

(declare-fun e!549883 () Bool)

(assert (=> b!975661 (= e!549883 (not (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29761 _keys!1717))))))

(declare-datatypes ((tuple2!14580 0))(
  ( (tuple2!14581 (_1!7300 (_ BitVec 64)) (_2!7300 V!34867)) )
))
(declare-datatypes ((List!20453 0))(
  ( (Nil!20450) (Cons!20449 (h!21611 tuple2!14580) (t!28942 List!20453)) )
))
(declare-datatypes ((ListLongMap!13291 0))(
  ( (ListLongMap!13292 (toList!6661 List!20453)) )
))
(declare-fun lt!432854 () ListLongMap!13291)

(declare-fun lt!432855 () (_ BitVec 64))

(declare-fun zeroValue!1367 () V!34867)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34867)

(declare-fun +!2875 (ListLongMap!13291 tuple2!14580) ListLongMap!13291)

(declare-fun getCurrentListMap!3846 (array!60843 array!60841 (_ BitVec 32) (_ BitVec 32) V!34867 V!34867 (_ BitVec 32) Int) ListLongMap!13291)

(declare-fun get!15182 (ValueCell!10725 V!34867) V!34867)

(declare-fun dynLambda!1714 (Int (_ BitVec 64)) V!34867)

(assert (=> b!975661 (= lt!432854 (+!2875 (getCurrentListMap!3846 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14581 lt!432855 (get!15182 (select (arr!29280 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1714 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32411 0))(
  ( (Unit!32412) )
))
(declare-fun lt!432856 () Unit!32411)

(declare-fun lemmaListMapRecursiveValidKeyArray!286 (array!60843 array!60841 (_ BitVec 32) (_ BitVec 32) V!34867 V!34867 (_ BitVec 32) Int) Unit!32411)

(assert (=> b!975661 (= lt!432856 (lemmaListMapRecursiveValidKeyArray!286 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975662 () Bool)

(declare-fun res!653255 () Bool)

(assert (=> b!975662 (=> (not res!653255) (not e!549885))))

(declare-fun contains!5693 (ListLongMap!13291 (_ BitVec 64)) Bool)

(assert (=> b!975662 (= res!653255 (contains!5693 (getCurrentListMap!3846 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29281 _keys!1717) i!822)))))

(declare-fun b!975663 () Bool)

(assert (=> b!975663 (= e!549885 e!549883)))

(declare-fun res!653252 () Bool)

(assert (=> b!975663 (=> (not res!653252) (not e!549883))))

(assert (=> b!975663 (= res!653252 (validKeyInArray!0 lt!432855))))

(assert (=> b!975663 (= lt!432855 (select (arr!29281 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!975663 (= lt!432854 (getCurrentListMap!3846 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83550 res!653253) b!975656))

(assert (= (and b!975656 res!653254) b!975657))

(assert (= (and b!975657 res!653251) b!975659))

(assert (= (and b!975659 res!653257) b!975654))

(assert (= (and b!975654 res!653256) b!975655))

(assert (= (and b!975655 res!653250) b!975662))

(assert (= (and b!975662 res!653255) b!975663))

(assert (= (and b!975663 res!653252) b!975661))

(assert (= (and b!975653 condMapEmpty!35629) mapIsEmpty!35629))

(assert (= (and b!975653 (not condMapEmpty!35629)) mapNonEmpty!35629))

(get-info :version)

(assert (= (and mapNonEmpty!35629 ((_ is ValueCellFull!10725) mapValue!35629)) b!975658))

(assert (= (and b!975653 ((_ is ValueCellFull!10725) mapDefault!35629)) b!975660))

(assert (= start!83550 b!975653))

(declare-fun b_lambda!14577 () Bool)

(assert (=> (not b_lambda!14577) (not b!975661)))

(declare-fun t!28940 () Bool)

(declare-fun tb!6339 () Bool)

(assert (=> (and start!83550 (= defaultEntry!1428 defaultEntry!1428) t!28940) tb!6339))

(declare-fun result!12647 () Bool)

(assert (=> tb!6339 (= result!12647 tp_is_empty!22413)))

(assert (=> b!975661 t!28940))

(declare-fun b_and!31133 () Bool)

(assert (= b_and!31131 (and (=> t!28940 result!12647) b_and!31133)))

(declare-fun m!902923 () Bool)

(assert (=> b!975655 m!902923))

(assert (=> b!975655 m!902923))

(declare-fun m!902925 () Bool)

(assert (=> b!975655 m!902925))

(declare-fun m!902927 () Bool)

(assert (=> start!83550 m!902927))

(declare-fun m!902929 () Bool)

(assert (=> start!83550 m!902929))

(declare-fun m!902931 () Bool)

(assert (=> start!83550 m!902931))

(declare-fun m!902933 () Bool)

(assert (=> b!975663 m!902933))

(declare-fun m!902935 () Bool)

(assert (=> b!975663 m!902935))

(declare-fun m!902937 () Bool)

(assert (=> b!975663 m!902937))

(declare-fun m!902939 () Bool)

(assert (=> mapNonEmpty!35629 m!902939))

(declare-fun m!902941 () Bool)

(assert (=> b!975662 m!902941))

(assert (=> b!975662 m!902923))

(assert (=> b!975662 m!902941))

(assert (=> b!975662 m!902923))

(declare-fun m!902943 () Bool)

(assert (=> b!975662 m!902943))

(declare-fun m!902945 () Bool)

(assert (=> b!975661 m!902945))

(declare-fun m!902947 () Bool)

(assert (=> b!975661 m!902947))

(declare-fun m!902949 () Bool)

(assert (=> b!975661 m!902949))

(assert (=> b!975661 m!902947))

(declare-fun m!902951 () Bool)

(assert (=> b!975661 m!902951))

(assert (=> b!975661 m!902945))

(assert (=> b!975661 m!902949))

(declare-fun m!902953 () Bool)

(assert (=> b!975661 m!902953))

(declare-fun m!902955 () Bool)

(assert (=> b!975661 m!902955))

(declare-fun m!902957 () Bool)

(assert (=> b!975659 m!902957))

(declare-fun m!902959 () Bool)

(assert (=> b!975657 m!902959))

(check-sat (not start!83550) b_and!31133 (not b!975657) tp_is_empty!22413 (not b!975659) (not b_lambda!14577) (not b_next!19509) (not mapNonEmpty!35629) (not b!975655) (not b!975661) (not b!975663) (not b!975662))
(check-sat b_and!31133 (not b_next!19509))
