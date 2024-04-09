; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110958 () Bool)

(assert start!110958)

(declare-fun b_free!29757 () Bool)

(declare-fun b_next!29757 () Bool)

(assert (=> start!110958 (= b_free!29757 (not b_next!29757))))

(declare-fun tp!104593 () Bool)

(declare-fun b_and!47975 () Bool)

(assert (=> start!110958 (= tp!104593 b_and!47975)))

(declare-fun mapIsEmpty!54859 () Bool)

(declare-fun mapRes!54859 () Bool)

(assert (=> mapIsEmpty!54859 mapRes!54859))

(declare-fun b!1313121 () Bool)

(declare-fun e!749012 () Bool)

(declare-fun tp_is_empty!35487 () Bool)

(assert (=> b!1313121 (= e!749012 tp_is_empty!35487)))

(declare-fun b!1313122 () Bool)

(declare-fun res!871881 () Bool)

(declare-fun e!749014 () Bool)

(assert (=> b!1313122 (=> (not res!871881) (not e!749014))))

(declare-datatypes ((array!87921 0))(
  ( (array!87922 (arr!42436 (Array (_ BitVec 32) (_ BitVec 64))) (size!42987 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87921)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87921 (_ BitVec 32)) Bool)

(assert (=> b!1313122 (= res!871881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313123 () Bool)

(declare-fun res!871880 () Bool)

(assert (=> b!1313123 (=> (not res!871880) (not e!749014))))

(declare-datatypes ((List!30306 0))(
  ( (Nil!30303) (Cons!30302 (h!31511 (_ BitVec 64)) (t!43919 List!30306)) )
))
(declare-fun arrayNoDuplicates!0 (array!87921 (_ BitVec 32) List!30306) Bool)

(assert (=> b!1313123 (= res!871880 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30303))))

(declare-fun b!1313124 () Bool)

(declare-fun res!871882 () Bool)

(assert (=> b!1313124 (=> (not res!871882) (not e!749014))))

(declare-datatypes ((V!52419 0))(
  ( (V!52420 (val!17818 Int)) )
))
(declare-datatypes ((ValueCell!16845 0))(
  ( (ValueCellFull!16845 (v!20443 V!52419)) (EmptyCell!16845) )
))
(declare-datatypes ((array!87923 0))(
  ( (array!87924 (arr!42437 (Array (_ BitVec 32) ValueCell!16845)) (size!42988 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87923)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313124 (= res!871882 (and (= (size!42988 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42987 _keys!1628) (size!42988 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313125 () Bool)

(declare-fun e!749013 () Bool)

(assert (=> b!1313125 (= e!749013 tp_is_empty!35487)))

(declare-fun res!871879 () Bool)

(assert (=> start!110958 (=> (not res!871879) (not e!749014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110958 (= res!871879 (validMask!0 mask!2040))))

(assert (=> start!110958 e!749014))

(assert (=> start!110958 tp!104593))

(declare-fun array_inv!32037 (array!87921) Bool)

(assert (=> start!110958 (array_inv!32037 _keys!1628)))

(assert (=> start!110958 true))

(assert (=> start!110958 tp_is_empty!35487))

(declare-fun e!749015 () Bool)

(declare-fun array_inv!32038 (array!87923) Bool)

(assert (=> start!110958 (and (array_inv!32038 _values!1354) e!749015)))

(declare-fun mapNonEmpty!54859 () Bool)

(declare-fun tp!104594 () Bool)

(assert (=> mapNonEmpty!54859 (= mapRes!54859 (and tp!104594 e!749013))))

(declare-fun mapRest!54859 () (Array (_ BitVec 32) ValueCell!16845))

(declare-fun mapKey!54859 () (_ BitVec 32))

(declare-fun mapValue!54859 () ValueCell!16845)

(assert (=> mapNonEmpty!54859 (= (arr!42437 _values!1354) (store mapRest!54859 mapKey!54859 mapValue!54859))))

(declare-fun b!1313126 () Bool)

(assert (=> b!1313126 (= e!749014 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585577 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52419)

(declare-fun zeroValue!1296 () V!52419)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23146 0))(
  ( (tuple2!23147 (_1!11583 (_ BitVec 64)) (_2!11583 V!52419)) )
))
(declare-datatypes ((List!30307 0))(
  ( (Nil!30304) (Cons!30303 (h!31512 tuple2!23146) (t!43920 List!30307)) )
))
(declare-datatypes ((ListLongMap!20815 0))(
  ( (ListLongMap!20816 (toList!10423 List!30307)) )
))
(declare-fun contains!8509 (ListLongMap!20815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5379 (array!87921 array!87923 (_ BitVec 32) (_ BitVec 32) V!52419 V!52419 (_ BitVec 32) Int) ListLongMap!20815)

(assert (=> b!1313126 (= lt!585577 (contains!8509 (getCurrentListMap!5379 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313127 () Bool)

(assert (=> b!1313127 (= e!749015 (and e!749012 mapRes!54859))))

(declare-fun condMapEmpty!54859 () Bool)

(declare-fun mapDefault!54859 () ValueCell!16845)

(assert (=> b!1313127 (= condMapEmpty!54859 (= (arr!42437 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16845)) mapDefault!54859)))))

(declare-fun b!1313128 () Bool)

(declare-fun res!871883 () Bool)

(assert (=> b!1313128 (=> (not res!871883) (not e!749014))))

(assert (=> b!1313128 (= res!871883 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42987 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!110958 res!871879) b!1313124))

(assert (= (and b!1313124 res!871882) b!1313122))

(assert (= (and b!1313122 res!871881) b!1313123))

(assert (= (and b!1313123 res!871880) b!1313128))

(assert (= (and b!1313128 res!871883) b!1313126))

(assert (= (and b!1313127 condMapEmpty!54859) mapIsEmpty!54859))

(assert (= (and b!1313127 (not condMapEmpty!54859)) mapNonEmpty!54859))

(get-info :version)

(assert (= (and mapNonEmpty!54859 ((_ is ValueCellFull!16845) mapValue!54859)) b!1313125))

(assert (= (and b!1313127 ((_ is ValueCellFull!16845) mapDefault!54859)) b!1313121))

(assert (= start!110958 b!1313127))

(declare-fun m!1202083 () Bool)

(assert (=> b!1313122 m!1202083))

(declare-fun m!1202085 () Bool)

(assert (=> b!1313126 m!1202085))

(assert (=> b!1313126 m!1202085))

(declare-fun m!1202087 () Bool)

(assert (=> b!1313126 m!1202087))

(declare-fun m!1202089 () Bool)

(assert (=> start!110958 m!1202089))

(declare-fun m!1202091 () Bool)

(assert (=> start!110958 m!1202091))

(declare-fun m!1202093 () Bool)

(assert (=> start!110958 m!1202093))

(declare-fun m!1202095 () Bool)

(assert (=> mapNonEmpty!54859 m!1202095))

(declare-fun m!1202097 () Bool)

(assert (=> b!1313123 m!1202097))

(check-sat tp_is_empty!35487 (not b!1313123) (not b!1313126) (not b!1313122) (not start!110958) (not mapNonEmpty!54859) (not b_next!29757) b_and!47975)
(check-sat b_and!47975 (not b_next!29757))
