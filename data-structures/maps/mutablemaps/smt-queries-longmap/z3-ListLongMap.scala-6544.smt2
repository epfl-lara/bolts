; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83178 () Bool)

(assert start!83178)

(declare-fun b_free!19143 () Bool)

(declare-fun b_next!19143 () Bool)

(assert (=> start!83178 (= b_free!19143 (not b_next!19143))))

(declare-fun tp!66709 () Bool)

(declare-fun b_and!30649 () Bool)

(assert (=> start!83178 (= tp!66709 b_and!30649)))

(declare-fun b!969875 () Bool)

(declare-fun res!649267 () Bool)

(declare-fun e!546819 () Bool)

(assert (=> b!969875 (=> (not res!649267) (not e!546819))))

(declare-datatypes ((array!60127 0))(
  ( (array!60128 (arr!28923 (Array (_ BitVec 32) (_ BitVec 64))) (size!29403 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60127)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969875 (= res!649267 (validKeyInArray!0 (select (arr!28923 _keys!1717) i!822)))))

(declare-fun b!969876 () Bool)

(declare-fun e!546822 () Bool)

(declare-fun e!546821 () Bool)

(declare-fun mapRes!35071 () Bool)

(assert (=> b!969876 (= e!546822 (and e!546821 mapRes!35071))))

(declare-fun condMapEmpty!35071 () Bool)

(declare-datatypes ((V!34371 0))(
  ( (V!34372 (val!11071 Int)) )
))
(declare-datatypes ((ValueCell!10539 0))(
  ( (ValueCellFull!10539 (v!13630 V!34371)) (EmptyCell!10539) )
))
(declare-datatypes ((array!60129 0))(
  ( (array!60130 (arr!28924 (Array (_ BitVec 32) ValueCell!10539)) (size!29404 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60129)

(declare-fun mapDefault!35071 () ValueCell!10539)

(assert (=> b!969876 (= condMapEmpty!35071 (= (arr!28924 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10539)) mapDefault!35071)))))

(declare-fun res!649262 () Bool)

(assert (=> start!83178 (=> (not res!649262) (not e!546819))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83178 (= res!649262 (validMask!0 mask!2147))))

(assert (=> start!83178 e!546819))

(assert (=> start!83178 true))

(declare-fun array_inv!22281 (array!60129) Bool)

(assert (=> start!83178 (and (array_inv!22281 _values!1425) e!546822)))

(declare-fun tp_is_empty!22041 () Bool)

(assert (=> start!83178 tp_is_empty!22041))

(assert (=> start!83178 tp!66709))

(declare-fun array_inv!22282 (array!60127) Bool)

(assert (=> start!83178 (array_inv!22282 _keys!1717)))

(declare-fun b!969877 () Bool)

(declare-fun res!649265 () Bool)

(assert (=> b!969877 (=> (not res!649265) (not e!546819))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969877 (= res!649265 (and (= (size!29404 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29403 _keys!1717) (size!29404 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969878 () Bool)

(declare-fun res!649264 () Bool)

(assert (=> b!969878 (=> (not res!649264) (not e!546819))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969878 (= res!649264 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29403 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29403 _keys!1717))))))

(declare-fun b!969879 () Bool)

(declare-fun res!649266 () Bool)

(assert (=> b!969879 (=> (not res!649266) (not e!546819))))

(declare-datatypes ((List!20175 0))(
  ( (Nil!20172) (Cons!20171 (h!21333 (_ BitVec 64)) (t!28546 List!20175)) )
))
(declare-fun arrayNoDuplicates!0 (array!60127 (_ BitVec 32) List!20175) Bool)

(assert (=> b!969879 (= res!649266 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20172))))

(declare-fun mapIsEmpty!35071 () Bool)

(assert (=> mapIsEmpty!35071 mapRes!35071))

(declare-fun b!969880 () Bool)

(declare-fun res!649263 () Bool)

(assert (=> b!969880 (=> (not res!649263) (not e!546819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60127 (_ BitVec 32)) Bool)

(assert (=> b!969880 (= res!649263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969881 () Bool)

(declare-fun e!546818 () Bool)

(assert (=> b!969881 (= e!546818 tp_is_empty!22041)))

(declare-fun b!969882 () Bool)

(assert (=> b!969882 (= e!546819 false)))

(declare-fun lt!431647 () Bool)

(declare-fun zeroValue!1367 () V!34371)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34371)

(declare-datatypes ((tuple2!14282 0))(
  ( (tuple2!14283 (_1!7151 (_ BitVec 64)) (_2!7151 V!34371)) )
))
(declare-datatypes ((List!20176 0))(
  ( (Nil!20173) (Cons!20172 (h!21334 tuple2!14282) (t!28547 List!20176)) )
))
(declare-datatypes ((ListLongMap!12993 0))(
  ( (ListLongMap!12994 (toList!6512 List!20176)) )
))
(declare-fun contains!5567 (ListLongMap!12993 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3697 (array!60127 array!60129 (_ BitVec 32) (_ BitVec 32) V!34371 V!34371 (_ BitVec 32) Int) ListLongMap!12993)

(assert (=> b!969882 (= lt!431647 (contains!5567 (getCurrentListMap!3697 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28923 _keys!1717) i!822)))))

(declare-fun b!969883 () Bool)

(assert (=> b!969883 (= e!546821 tp_is_empty!22041)))

(declare-fun mapNonEmpty!35071 () Bool)

(declare-fun tp!66708 () Bool)

(assert (=> mapNonEmpty!35071 (= mapRes!35071 (and tp!66708 e!546818))))

(declare-fun mapRest!35071 () (Array (_ BitVec 32) ValueCell!10539))

(declare-fun mapKey!35071 () (_ BitVec 32))

(declare-fun mapValue!35071 () ValueCell!10539)

(assert (=> mapNonEmpty!35071 (= (arr!28924 _values!1425) (store mapRest!35071 mapKey!35071 mapValue!35071))))

(assert (= (and start!83178 res!649262) b!969877))

(assert (= (and b!969877 res!649265) b!969880))

(assert (= (and b!969880 res!649263) b!969879))

(assert (= (and b!969879 res!649266) b!969878))

(assert (= (and b!969878 res!649264) b!969875))

(assert (= (and b!969875 res!649267) b!969882))

(assert (= (and b!969876 condMapEmpty!35071) mapIsEmpty!35071))

(assert (= (and b!969876 (not condMapEmpty!35071)) mapNonEmpty!35071))

(get-info :version)

(assert (= (and mapNonEmpty!35071 ((_ is ValueCellFull!10539) mapValue!35071)) b!969881))

(assert (= (and b!969876 ((_ is ValueCellFull!10539) mapDefault!35071)) b!969883))

(assert (= start!83178 b!969876))

(declare-fun m!897823 () Bool)

(assert (=> b!969882 m!897823))

(declare-fun m!897825 () Bool)

(assert (=> b!969882 m!897825))

(assert (=> b!969882 m!897823))

(assert (=> b!969882 m!897825))

(declare-fun m!897827 () Bool)

(assert (=> b!969882 m!897827))

(declare-fun m!897829 () Bool)

(assert (=> b!969880 m!897829))

(declare-fun m!897831 () Bool)

(assert (=> mapNonEmpty!35071 m!897831))

(assert (=> b!969875 m!897825))

(assert (=> b!969875 m!897825))

(declare-fun m!897833 () Bool)

(assert (=> b!969875 m!897833))

(declare-fun m!897835 () Bool)

(assert (=> b!969879 m!897835))

(declare-fun m!897837 () Bool)

(assert (=> start!83178 m!897837))

(declare-fun m!897839 () Bool)

(assert (=> start!83178 m!897839))

(declare-fun m!897841 () Bool)

(assert (=> start!83178 m!897841))

(check-sat (not b!969882) (not b!969875) (not start!83178) (not b!969880) (not mapNonEmpty!35071) (not b!969879) (not b_next!19143) tp_is_empty!22041 b_and!30649)
(check-sat b_and!30649 (not b_next!19143))
