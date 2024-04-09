; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110976 () Bool)

(assert start!110976)

(declare-fun b_free!29775 () Bool)

(declare-fun b_next!29775 () Bool)

(assert (=> start!110976 (= b_free!29775 (not b_next!29775))))

(declare-fun tp!104647 () Bool)

(declare-fun b_and!47993 () Bool)

(assert (=> start!110976 (= tp!104647 b_and!47993)))

(declare-fun b!1313337 () Bool)

(declare-fun res!872016 () Bool)

(declare-fun e!749149 () Bool)

(assert (=> b!1313337 (=> (not res!872016) (not e!749149))))

(declare-datatypes ((array!87955 0))(
  ( (array!87956 (arr!42453 (Array (_ BitVec 32) (_ BitVec 64))) (size!43004 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87955)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313337 (= res!872016 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43004 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313338 () Bool)

(declare-fun res!872018 () Bool)

(assert (=> b!1313338 (=> (not res!872018) (not e!749149))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87955 (_ BitVec 32)) Bool)

(assert (=> b!1313338 (= res!872018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313339 () Bool)

(assert (=> b!1313339 (= e!749149 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((V!52443 0))(
  ( (V!52444 (val!17827 Int)) )
))
(declare-fun minValue!1296 () V!52443)

(declare-datatypes ((ValueCell!16854 0))(
  ( (ValueCellFull!16854 (v!20452 V!52443)) (EmptyCell!16854) )
))
(declare-datatypes ((array!87957 0))(
  ( (array!87958 (arr!42454 (Array (_ BitVec 32) ValueCell!16854)) (size!43005 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87957)

(declare-fun zeroValue!1296 () V!52443)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585604 () Bool)

(declare-datatypes ((tuple2!23156 0))(
  ( (tuple2!23157 (_1!11588 (_ BitVec 64)) (_2!11588 V!52443)) )
))
(declare-datatypes ((List!30319 0))(
  ( (Nil!30316) (Cons!30315 (h!31524 tuple2!23156) (t!43932 List!30319)) )
))
(declare-datatypes ((ListLongMap!20825 0))(
  ( (ListLongMap!20826 (toList!10428 List!30319)) )
))
(declare-fun contains!8514 (ListLongMap!20825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5384 (array!87955 array!87957 (_ BitVec 32) (_ BitVec 32) V!52443 V!52443 (_ BitVec 32) Int) ListLongMap!20825)

(assert (=> b!1313339 (= lt!585604 (contains!8514 (getCurrentListMap!5384 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54886 () Bool)

(declare-fun mapRes!54886 () Bool)

(assert (=> mapIsEmpty!54886 mapRes!54886))

(declare-fun b!1313340 () Bool)

(declare-fun e!749146 () Bool)

(declare-fun tp_is_empty!35505 () Bool)

(assert (=> b!1313340 (= e!749146 tp_is_empty!35505)))

(declare-fun b!1313341 () Bool)

(declare-fun e!749150 () Bool)

(assert (=> b!1313341 (= e!749150 tp_is_empty!35505)))

(declare-fun b!1313342 () Bool)

(declare-fun e!749147 () Bool)

(assert (=> b!1313342 (= e!749147 (and e!749146 mapRes!54886))))

(declare-fun condMapEmpty!54886 () Bool)

(declare-fun mapDefault!54886 () ValueCell!16854)

(assert (=> b!1313342 (= condMapEmpty!54886 (= (arr!42454 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16854)) mapDefault!54886)))))

(declare-fun mapNonEmpty!54886 () Bool)

(declare-fun tp!104648 () Bool)

(assert (=> mapNonEmpty!54886 (= mapRes!54886 (and tp!104648 e!749150))))

(declare-fun mapKey!54886 () (_ BitVec 32))

(declare-fun mapValue!54886 () ValueCell!16854)

(declare-fun mapRest!54886 () (Array (_ BitVec 32) ValueCell!16854))

(assert (=> mapNonEmpty!54886 (= (arr!42454 _values!1354) (store mapRest!54886 mapKey!54886 mapValue!54886))))

(declare-fun res!872014 () Bool)

(assert (=> start!110976 (=> (not res!872014) (not e!749149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110976 (= res!872014 (validMask!0 mask!2040))))

(assert (=> start!110976 e!749149))

(assert (=> start!110976 tp!104647))

(declare-fun array_inv!32051 (array!87955) Bool)

(assert (=> start!110976 (array_inv!32051 _keys!1628)))

(assert (=> start!110976 true))

(assert (=> start!110976 tp_is_empty!35505))

(declare-fun array_inv!32052 (array!87957) Bool)

(assert (=> start!110976 (and (array_inv!32052 _values!1354) e!749147)))

(declare-fun b!1313343 () Bool)

(declare-fun res!872017 () Bool)

(assert (=> b!1313343 (=> (not res!872017) (not e!749149))))

(declare-datatypes ((List!30320 0))(
  ( (Nil!30317) (Cons!30316 (h!31525 (_ BitVec 64)) (t!43933 List!30320)) )
))
(declare-fun arrayNoDuplicates!0 (array!87955 (_ BitVec 32) List!30320) Bool)

(assert (=> b!1313343 (= res!872017 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30317))))

(declare-fun b!1313344 () Bool)

(declare-fun res!872015 () Bool)

(assert (=> b!1313344 (=> (not res!872015) (not e!749149))))

(assert (=> b!1313344 (= res!872015 (and (= (size!43005 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43004 _keys!1628) (size!43005 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110976 res!872014) b!1313344))

(assert (= (and b!1313344 res!872015) b!1313338))

(assert (= (and b!1313338 res!872018) b!1313343))

(assert (= (and b!1313343 res!872017) b!1313337))

(assert (= (and b!1313337 res!872016) b!1313339))

(assert (= (and b!1313342 condMapEmpty!54886) mapIsEmpty!54886))

(assert (= (and b!1313342 (not condMapEmpty!54886)) mapNonEmpty!54886))

(get-info :version)

(assert (= (and mapNonEmpty!54886 ((_ is ValueCellFull!16854) mapValue!54886)) b!1313341))

(assert (= (and b!1313342 ((_ is ValueCellFull!16854) mapDefault!54886)) b!1313340))

(assert (= start!110976 b!1313342))

(declare-fun m!1202227 () Bool)

(assert (=> mapNonEmpty!54886 m!1202227))

(declare-fun m!1202229 () Bool)

(assert (=> b!1313339 m!1202229))

(assert (=> b!1313339 m!1202229))

(declare-fun m!1202231 () Bool)

(assert (=> b!1313339 m!1202231))

(declare-fun m!1202233 () Bool)

(assert (=> start!110976 m!1202233))

(declare-fun m!1202235 () Bool)

(assert (=> start!110976 m!1202235))

(declare-fun m!1202237 () Bool)

(assert (=> start!110976 m!1202237))

(declare-fun m!1202239 () Bool)

(assert (=> b!1313338 m!1202239))

(declare-fun m!1202241 () Bool)

(assert (=> b!1313343 m!1202241))

(check-sat (not start!110976) tp_is_empty!35505 (not b!1313339) (not b!1313338) (not b_next!29775) (not mapNonEmpty!54886) b_and!47993 (not b!1313343))
(check-sat b_and!47993 (not b_next!29775))
