; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83914 () Bool)

(assert start!83914)

(declare-fun b_free!19695 () Bool)

(declare-fun b_next!19695 () Bool)

(assert (=> start!83914 (= b_free!19695 (not b_next!19695))))

(declare-fun tp!68528 () Bool)

(declare-fun b_and!31497 () Bool)

(assert (=> start!83914 (= tp!68528 b_and!31497)))

(declare-fun b!980056 () Bool)

(declare-fun res!656004 () Bool)

(declare-fun e!552457 () Bool)

(assert (=> b!980056 (=> (not res!656004) (not e!552457))))

(declare-datatypes ((array!61387 0))(
  ( (array!61388 (arr!29547 (Array (_ BitVec 32) (_ BitVec 64))) (size!30027 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61387)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61387 (_ BitVec 32)) Bool)

(assert (=> b!980056 (= res!656004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980057 () Bool)

(declare-fun res!656005 () Bool)

(assert (=> b!980057 (=> (not res!656005) (not e!552457))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980057 (= res!656005 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30027 _keys!1544))))))

(declare-fun mapNonEmpty!36062 () Bool)

(declare-fun mapRes!36062 () Bool)

(declare-fun tp!68527 () Bool)

(declare-fun e!552456 () Bool)

(assert (=> mapNonEmpty!36062 (= mapRes!36062 (and tp!68527 e!552456))))

(declare-datatypes ((V!35235 0))(
  ( (V!35236 (val!11395 Int)) )
))
(declare-datatypes ((ValueCell!10863 0))(
  ( (ValueCellFull!10863 (v!13957 V!35235)) (EmptyCell!10863) )
))
(declare-datatypes ((array!61389 0))(
  ( (array!61390 (arr!29548 (Array (_ BitVec 32) ValueCell!10863)) (size!30028 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61389)

(declare-fun mapValue!36062 () ValueCell!10863)

(declare-fun mapKey!36062 () (_ BitVec 32))

(declare-fun mapRest!36062 () (Array (_ BitVec 32) ValueCell!10863))

(assert (=> mapNonEmpty!36062 (= (arr!29548 _values!1278) (store mapRest!36062 mapKey!36062 mapValue!36062))))

(declare-fun b!980058 () Bool)

(declare-fun e!552458 () Bool)

(assert (=> b!980058 (= e!552458 true)))

(declare-datatypes ((tuple2!14722 0))(
  ( (tuple2!14723 (_1!7371 (_ BitVec 64)) (_2!7371 V!35235)) )
))
(declare-datatypes ((List!20613 0))(
  ( (Nil!20610) (Cons!20609 (h!21771 tuple2!14722) (t!29272 List!20613)) )
))
(declare-datatypes ((ListLongMap!13433 0))(
  ( (ListLongMap!13434 (toList!6732 List!20613)) )
))
(declare-fun lt!435058 () ListLongMap!13433)

(declare-fun lt!435057 () tuple2!14722)

(declare-fun lt!435055 () ListLongMap!13433)

(declare-fun lt!435063 () tuple2!14722)

(declare-fun +!2938 (ListLongMap!13433 tuple2!14722) ListLongMap!13433)

(assert (=> b!980058 (= lt!435055 (+!2938 (+!2938 lt!435058 lt!435063) lt!435057))))

(declare-datatypes ((Unit!32551 0))(
  ( (Unit!32552) )
))
(declare-fun lt!435060 () Unit!32551)

(declare-fun zeroValue!1220 () V!35235)

(declare-fun lt!435062 () V!35235)

(declare-fun addCommutativeForDiffKeys!600 (ListLongMap!13433 (_ BitVec 64) V!35235 (_ BitVec 64) V!35235) Unit!32551)

(assert (=> b!980058 (= lt!435060 (addCommutativeForDiffKeys!600 lt!435058 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29547 _keys!1544) from!1932) lt!435062))))

(declare-fun res!656006 () Bool)

(assert (=> start!83914 (=> (not res!656006) (not e!552457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83914 (= res!656006 (validMask!0 mask!1948))))

(assert (=> start!83914 e!552457))

(assert (=> start!83914 true))

(declare-fun tp_is_empty!22689 () Bool)

(assert (=> start!83914 tp_is_empty!22689))

(declare-fun e!552455 () Bool)

(declare-fun array_inv!22731 (array!61389) Bool)

(assert (=> start!83914 (and (array_inv!22731 _values!1278) e!552455)))

(assert (=> start!83914 tp!68528))

(declare-fun array_inv!22732 (array!61387) Bool)

(assert (=> start!83914 (array_inv!22732 _keys!1544)))

(declare-fun b!980059 () Bool)

(declare-fun e!552454 () Bool)

(assert (=> b!980059 (= e!552454 tp_is_empty!22689)))

(declare-fun b!980060 () Bool)

(assert (=> b!980060 (= e!552457 (not e!552458))))

(declare-fun res!656010 () Bool)

(assert (=> b!980060 (=> res!656010 e!552458)))

(assert (=> b!980060 (= res!656010 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29547 _keys!1544) from!1932)))))

(declare-fun lt!435056 () tuple2!14722)

(declare-fun lt!435061 () ListLongMap!13433)

(assert (=> b!980060 (= (+!2938 lt!435061 lt!435063) (+!2938 lt!435055 lt!435056))))

(declare-fun lt!435059 () ListLongMap!13433)

(assert (=> b!980060 (= lt!435055 (+!2938 lt!435059 lt!435063))))

(assert (=> b!980060 (= lt!435063 (tuple2!14723 (select (arr!29547 _keys!1544) from!1932) lt!435062))))

(assert (=> b!980060 (= lt!435061 (+!2938 lt!435059 lt!435056))))

(declare-fun minValue!1220 () V!35235)

(assert (=> b!980060 (= lt!435056 (tuple2!14723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435064 () Unit!32551)

(assert (=> b!980060 (= lt!435064 (addCommutativeForDiffKeys!600 lt!435059 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29547 _keys!1544) from!1932) lt!435062))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15335 (ValueCell!10863 V!35235) V!35235)

(declare-fun dynLambda!1772 (Int (_ BitVec 64)) V!35235)

(assert (=> b!980060 (= lt!435062 (get!15335 (select (arr!29548 _values!1278) from!1932) (dynLambda!1772 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980060 (= lt!435059 (+!2938 lt!435058 lt!435057))))

(assert (=> b!980060 (= lt!435057 (tuple2!14723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3397 (array!61387 array!61389 (_ BitVec 32) (_ BitVec 32) V!35235 V!35235 (_ BitVec 32) Int) ListLongMap!13433)

(assert (=> b!980060 (= lt!435058 (getCurrentListMapNoExtraKeys!3397 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980061 () Bool)

(declare-fun res!656007 () Bool)

(assert (=> b!980061 (=> (not res!656007) (not e!552457))))

(assert (=> b!980061 (= res!656007 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980062 () Bool)

(declare-fun res!656009 () Bool)

(assert (=> b!980062 (=> (not res!656009) (not e!552457))))

(declare-datatypes ((List!20614 0))(
  ( (Nil!20611) (Cons!20610 (h!21772 (_ BitVec 64)) (t!29273 List!20614)) )
))
(declare-fun arrayNoDuplicates!0 (array!61387 (_ BitVec 32) List!20614) Bool)

(assert (=> b!980062 (= res!656009 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20611))))

(declare-fun mapIsEmpty!36062 () Bool)

(assert (=> mapIsEmpty!36062 mapRes!36062))

(declare-fun b!980063 () Bool)

(assert (=> b!980063 (= e!552456 tp_is_empty!22689)))

(declare-fun b!980064 () Bool)

(declare-fun res!656003 () Bool)

(assert (=> b!980064 (=> (not res!656003) (not e!552457))))

(assert (=> b!980064 (= res!656003 (and (= (size!30028 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30027 _keys!1544) (size!30028 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980065 () Bool)

(declare-fun res!656008 () Bool)

(assert (=> b!980065 (=> (not res!656008) (not e!552457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980065 (= res!656008 (validKeyInArray!0 (select (arr!29547 _keys!1544) from!1932)))))

(declare-fun b!980066 () Bool)

(assert (=> b!980066 (= e!552455 (and e!552454 mapRes!36062))))

(declare-fun condMapEmpty!36062 () Bool)

(declare-fun mapDefault!36062 () ValueCell!10863)

(assert (=> b!980066 (= condMapEmpty!36062 (= (arr!29548 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10863)) mapDefault!36062)))))

(assert (= (and start!83914 res!656006) b!980064))

(assert (= (and b!980064 res!656003) b!980056))

(assert (= (and b!980056 res!656004) b!980062))

(assert (= (and b!980062 res!656009) b!980057))

(assert (= (and b!980057 res!656005) b!980065))

(assert (= (and b!980065 res!656008) b!980061))

(assert (= (and b!980061 res!656007) b!980060))

(assert (= (and b!980060 (not res!656010)) b!980058))

(assert (= (and b!980066 condMapEmpty!36062) mapIsEmpty!36062))

(assert (= (and b!980066 (not condMapEmpty!36062)) mapNonEmpty!36062))

(get-info :version)

(assert (= (and mapNonEmpty!36062 ((_ is ValueCellFull!10863) mapValue!36062)) b!980063))

(assert (= (and b!980066 ((_ is ValueCellFull!10863) mapDefault!36062)) b!980059))

(assert (= start!83914 b!980066))

(declare-fun b_lambda!14769 () Bool)

(assert (=> (not b_lambda!14769) (not b!980060)))

(declare-fun t!29271 () Bool)

(declare-fun tb!6509 () Bool)

(assert (=> (and start!83914 (= defaultEntry!1281 defaultEntry!1281) t!29271) tb!6509))

(declare-fun result!12999 () Bool)

(assert (=> tb!6509 (= result!12999 tp_is_empty!22689)))

(assert (=> b!980060 t!29271))

(declare-fun b_and!31499 () Bool)

(assert (= b_and!31497 (and (=> t!29271 result!12999) b_and!31499)))

(declare-fun m!907625 () Bool)

(assert (=> b!980060 m!907625))

(declare-fun m!907627 () Bool)

(assert (=> b!980060 m!907627))

(declare-fun m!907629 () Bool)

(assert (=> b!980060 m!907629))

(declare-fun m!907631 () Bool)

(assert (=> b!980060 m!907631))

(declare-fun m!907633 () Bool)

(assert (=> b!980060 m!907633))

(declare-fun m!907635 () Bool)

(assert (=> b!980060 m!907635))

(declare-fun m!907637 () Bool)

(assert (=> b!980060 m!907637))

(declare-fun m!907639 () Bool)

(assert (=> b!980060 m!907639))

(assert (=> b!980060 m!907635))

(declare-fun m!907641 () Bool)

(assert (=> b!980060 m!907641))

(declare-fun m!907643 () Bool)

(assert (=> b!980060 m!907643))

(assert (=> b!980060 m!907625))

(assert (=> b!980060 m!907643))

(declare-fun m!907645 () Bool)

(assert (=> b!980060 m!907645))

(declare-fun m!907647 () Bool)

(assert (=> b!980056 m!907647))

(assert (=> b!980065 m!907635))

(assert (=> b!980065 m!907635))

(declare-fun m!907649 () Bool)

(assert (=> b!980065 m!907649))

(declare-fun m!907651 () Bool)

(assert (=> mapNonEmpty!36062 m!907651))

(declare-fun m!907653 () Bool)

(assert (=> b!980062 m!907653))

(declare-fun m!907655 () Bool)

(assert (=> b!980058 m!907655))

(assert (=> b!980058 m!907655))

(declare-fun m!907657 () Bool)

(assert (=> b!980058 m!907657))

(assert (=> b!980058 m!907635))

(assert (=> b!980058 m!907635))

(declare-fun m!907659 () Bool)

(assert (=> b!980058 m!907659))

(declare-fun m!907661 () Bool)

(assert (=> start!83914 m!907661))

(declare-fun m!907663 () Bool)

(assert (=> start!83914 m!907663))

(declare-fun m!907665 () Bool)

(assert (=> start!83914 m!907665))

(check-sat (not mapNonEmpty!36062) (not b!980058) (not b!980062) (not b!980056) (not b!980065) tp_is_empty!22689 (not b!980060) (not start!83914) b_and!31499 (not b_next!19695) (not b_lambda!14769))
(check-sat b_and!31499 (not b_next!19695))
