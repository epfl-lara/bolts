; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83776 () Bool)

(assert start!83776)

(declare-fun b_free!19557 () Bool)

(declare-fun b_next!19557 () Bool)

(assert (=> start!83776 (= b_free!19557 (not b_next!19557))))

(declare-fun tp!68114 () Bool)

(declare-fun b_and!31225 () Bool)

(assert (=> start!83776 (= tp!68114 b_and!31225)))

(declare-fun b!977739 () Bool)

(declare-fun res!654443 () Bool)

(declare-fun e!551309 () Bool)

(assert (=> b!977739 (=> (not res!654443) (not e!551309))))

(declare-datatypes ((array!61119 0))(
  ( (array!61120 (arr!29413 (Array (_ BitVec 32) (_ BitVec 64))) (size!29893 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61119)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61119 (_ BitVec 32)) Bool)

(assert (=> b!977739 (= res!654443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977740 () Bool)

(declare-fun e!551307 () Bool)

(declare-fun tp_is_empty!22551 () Bool)

(assert (=> b!977740 (= e!551307 tp_is_empty!22551)))

(declare-fun b!977742 () Bool)

(declare-fun res!654445 () Bool)

(assert (=> b!977742 (=> (not res!654445) (not e!551309))))

(declare-datatypes ((V!35051 0))(
  ( (V!35052 (val!11326 Int)) )
))
(declare-datatypes ((ValueCell!10794 0))(
  ( (ValueCellFull!10794 (v!13888 V!35051)) (EmptyCell!10794) )
))
(declare-datatypes ((array!61121 0))(
  ( (array!61122 (arr!29414 (Array (_ BitVec 32) ValueCell!10794)) (size!29894 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61121)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977742 (= res!654445 (and (= (size!29894 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29893 _keys!1544) (size!29894 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35855 () Bool)

(declare-fun mapRes!35855 () Bool)

(assert (=> mapIsEmpty!35855 mapRes!35855))

(declare-fun b!977743 () Bool)

(assert (=> b!977743 (= e!551309 false)))

(declare-datatypes ((tuple2!14618 0))(
  ( (tuple2!14619 (_1!7319 (_ BitVec 64)) (_2!7319 V!35051)) )
))
(declare-datatypes ((List!20517 0))(
  ( (Nil!20514) (Cons!20513 (h!21675 tuple2!14618) (t!29040 List!20517)) )
))
(declare-datatypes ((ListLongMap!13329 0))(
  ( (ListLongMap!13330 (toList!6680 List!20517)) )
))
(declare-fun lt!433471 () ListLongMap!13329)

(declare-fun minValue!1220 () V!35051)

(declare-fun zeroValue!1220 () V!35051)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun +!2886 (ListLongMap!13329 tuple2!14618) ListLongMap!13329)

(declare-fun getCurrentListMapNoExtraKeys!3347 (array!61119 array!61121 (_ BitVec 32) (_ BitVec 32) V!35051 V!35051 (_ BitVec 32) Int) ListLongMap!13329)

(assert (=> b!977743 (= lt!433471 (+!2886 (getCurrentListMapNoExtraKeys!3347 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!977744 () Bool)

(declare-fun res!654442 () Bool)

(assert (=> b!977744 (=> (not res!654442) (not e!551309))))

(assert (=> b!977744 (= res!654442 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29893 _keys!1544))))))

(declare-fun b!977745 () Bool)

(declare-fun e!551306 () Bool)

(assert (=> b!977745 (= e!551306 tp_is_empty!22551)))

(declare-fun mapNonEmpty!35855 () Bool)

(declare-fun tp!68113 () Bool)

(assert (=> mapNonEmpty!35855 (= mapRes!35855 (and tp!68113 e!551306))))

(declare-fun mapValue!35855 () ValueCell!10794)

(declare-fun mapRest!35855 () (Array (_ BitVec 32) ValueCell!10794))

(declare-fun mapKey!35855 () (_ BitVec 32))

(assert (=> mapNonEmpty!35855 (= (arr!29414 _values!1278) (store mapRest!35855 mapKey!35855 mapValue!35855))))

(declare-fun b!977746 () Bool)

(declare-fun res!654444 () Bool)

(assert (=> b!977746 (=> (not res!654444) (not e!551309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977746 (= res!654444 (validKeyInArray!0 (select (arr!29413 _keys!1544) from!1932)))))

(declare-fun b!977741 () Bool)

(declare-fun res!654447 () Bool)

(assert (=> b!977741 (=> (not res!654447) (not e!551309))))

(assert (=> b!977741 (= res!654447 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!654446 () Bool)

(assert (=> start!83776 (=> (not res!654446) (not e!551309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83776 (= res!654446 (validMask!0 mask!1948))))

(assert (=> start!83776 e!551309))

(assert (=> start!83776 true))

(assert (=> start!83776 tp_is_empty!22551))

(declare-fun e!551305 () Bool)

(declare-fun array_inv!22639 (array!61121) Bool)

(assert (=> start!83776 (and (array_inv!22639 _values!1278) e!551305)))

(assert (=> start!83776 tp!68114))

(declare-fun array_inv!22640 (array!61119) Bool)

(assert (=> start!83776 (array_inv!22640 _keys!1544)))

(declare-fun b!977747 () Bool)

(declare-fun res!654441 () Bool)

(assert (=> b!977747 (=> (not res!654441) (not e!551309))))

(declare-datatypes ((List!20518 0))(
  ( (Nil!20515) (Cons!20514 (h!21676 (_ BitVec 64)) (t!29041 List!20518)) )
))
(declare-fun arrayNoDuplicates!0 (array!61119 (_ BitVec 32) List!20518) Bool)

(assert (=> b!977747 (= res!654441 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20515))))

(declare-fun b!977748 () Bool)

(assert (=> b!977748 (= e!551305 (and e!551307 mapRes!35855))))

(declare-fun condMapEmpty!35855 () Bool)

(declare-fun mapDefault!35855 () ValueCell!10794)

(assert (=> b!977748 (= condMapEmpty!35855 (= (arr!29414 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10794)) mapDefault!35855)))))

(assert (= (and start!83776 res!654446) b!977742))

(assert (= (and b!977742 res!654445) b!977739))

(assert (= (and b!977739 res!654443) b!977747))

(assert (= (and b!977747 res!654441) b!977744))

(assert (= (and b!977744 res!654442) b!977746))

(assert (= (and b!977746 res!654444) b!977741))

(assert (= (and b!977741 res!654447) b!977743))

(assert (= (and b!977748 condMapEmpty!35855) mapIsEmpty!35855))

(assert (= (and b!977748 (not condMapEmpty!35855)) mapNonEmpty!35855))

(get-info :version)

(assert (= (and mapNonEmpty!35855 ((_ is ValueCellFull!10794) mapValue!35855)) b!977745))

(assert (= (and b!977748 ((_ is ValueCellFull!10794) mapDefault!35855)) b!977740))

(assert (= start!83776 b!977748))

(declare-fun m!904951 () Bool)

(assert (=> b!977743 m!904951))

(assert (=> b!977743 m!904951))

(declare-fun m!904953 () Bool)

(assert (=> b!977743 m!904953))

(declare-fun m!904955 () Bool)

(assert (=> mapNonEmpty!35855 m!904955))

(declare-fun m!904957 () Bool)

(assert (=> b!977746 m!904957))

(assert (=> b!977746 m!904957))

(declare-fun m!904959 () Bool)

(assert (=> b!977746 m!904959))

(declare-fun m!904961 () Bool)

(assert (=> b!977739 m!904961))

(declare-fun m!904963 () Bool)

(assert (=> b!977747 m!904963))

(declare-fun m!904965 () Bool)

(assert (=> start!83776 m!904965))

(declare-fun m!904967 () Bool)

(assert (=> start!83776 m!904967))

(declare-fun m!904969 () Bool)

(assert (=> start!83776 m!904969))

(check-sat tp_is_empty!22551 (not b!977747) (not b!977746) (not start!83776) b_and!31225 (not b!977743) (not mapNonEmpty!35855) (not b!977739) (not b_next!19557))
(check-sat b_and!31225 (not b_next!19557))
