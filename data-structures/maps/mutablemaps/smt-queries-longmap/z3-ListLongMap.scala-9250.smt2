; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110886 () Bool)

(assert start!110886)

(declare-fun b_free!29685 () Bool)

(declare-fun b_next!29685 () Bool)

(assert (=> start!110886 (= b_free!29685 (not b_next!29685))))

(declare-fun tp!104378 () Bool)

(declare-fun b_and!47903 () Bool)

(assert (=> start!110886 (= tp!104378 b_and!47903)))

(declare-fun b!1312142 () Bool)

(declare-fun res!871228 () Bool)

(declare-fun e!748471 () Bool)

(assert (=> b!1312142 (=> (not res!871228) (not e!748471))))

(declare-datatypes ((array!87781 0))(
  ( (array!87782 (arr!42366 (Array (_ BitVec 32) (_ BitVec 64))) (size!42917 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87781)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312142 (= res!871228 (not (= (select (arr!42366 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1312143 () Bool)

(declare-fun res!871227 () Bool)

(assert (=> b!1312143 (=> (not res!871227) (not e!748471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312143 (= res!871227 (validKeyInArray!0 (select (arr!42366 _keys!1628) from!2020)))))

(declare-fun b!1312144 () Bool)

(declare-fun e!748473 () Bool)

(declare-fun tp_is_empty!35415 () Bool)

(assert (=> b!1312144 (= e!748473 tp_is_empty!35415)))

(declare-fun b!1312145 () Bool)

(declare-fun res!871224 () Bool)

(assert (=> b!1312145 (=> (not res!871224) (not e!748471))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312145 (= res!871224 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312146 () Bool)

(declare-fun res!871231 () Bool)

(assert (=> b!1312146 (=> (not res!871231) (not e!748471))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52323 0))(
  ( (V!52324 (val!17782 Int)) )
))
(declare-datatypes ((ValueCell!16809 0))(
  ( (ValueCellFull!16809 (v!20407 V!52323)) (EmptyCell!16809) )
))
(declare-datatypes ((array!87783 0))(
  ( (array!87784 (arr!42367 (Array (_ BitVec 32) ValueCell!16809)) (size!42918 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87783)

(declare-fun zeroValue!1296 () V!52323)

(declare-fun minValue!1296 () V!52323)

(declare-datatypes ((tuple2!23096 0))(
  ( (tuple2!23097 (_1!11558 (_ BitVec 64)) (_2!11558 V!52323)) )
))
(declare-datatypes ((List!30255 0))(
  ( (Nil!30252) (Cons!30251 (h!31460 tuple2!23096) (t!43868 List!30255)) )
))
(declare-datatypes ((ListLongMap!20765 0))(
  ( (ListLongMap!20766 (toList!10398 List!30255)) )
))
(declare-fun contains!8484 (ListLongMap!20765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5354 (array!87781 array!87783 (_ BitVec 32) (_ BitVec 32) V!52323 V!52323 (_ BitVec 32) Int) ListLongMap!20765)

(assert (=> b!1312146 (= res!871231 (contains!8484 (getCurrentListMap!5354 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312147 () Bool)

(declare-fun res!871230 () Bool)

(assert (=> b!1312147 (=> (not res!871230) (not e!748471))))

(assert (=> b!1312147 (= res!871230 (and (= (size!42918 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42917 _keys!1628) (size!42918 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312148 () Bool)

(declare-fun res!871229 () Bool)

(assert (=> b!1312148 (=> (not res!871229) (not e!748471))))

(assert (=> b!1312148 (= res!871229 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42917 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312149 () Bool)

(declare-fun res!871232 () Bool)

(assert (=> b!1312149 (=> (not res!871232) (not e!748471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87781 (_ BitVec 32)) Bool)

(assert (=> b!1312149 (= res!871232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312150 () Bool)

(declare-fun e!748474 () Bool)

(declare-fun mapRes!54751 () Bool)

(assert (=> b!1312150 (= e!748474 (and e!748473 mapRes!54751))))

(declare-fun condMapEmpty!54751 () Bool)

(declare-fun mapDefault!54751 () ValueCell!16809)

(assert (=> b!1312150 (= condMapEmpty!54751 (= (arr!42367 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16809)) mapDefault!54751)))))

(declare-fun mapNonEmpty!54751 () Bool)

(declare-fun tp!104377 () Bool)

(declare-fun e!748475 () Bool)

(assert (=> mapNonEmpty!54751 (= mapRes!54751 (and tp!104377 e!748475))))

(declare-fun mapRest!54751 () (Array (_ BitVec 32) ValueCell!16809))

(declare-fun mapKey!54751 () (_ BitVec 32))

(declare-fun mapValue!54751 () ValueCell!16809)

(assert (=> mapNonEmpty!54751 (= (arr!42367 _values!1354) (store mapRest!54751 mapKey!54751 mapValue!54751))))

(declare-fun b!1312152 () Bool)

(declare-fun res!871225 () Bool)

(assert (=> b!1312152 (=> (not res!871225) (not e!748471))))

(declare-datatypes ((List!30256 0))(
  ( (Nil!30253) (Cons!30252 (h!31461 (_ BitVec 64)) (t!43869 List!30256)) )
))
(declare-fun arrayNoDuplicates!0 (array!87781 (_ BitVec 32) List!30256) Bool)

(assert (=> b!1312152 (= res!871225 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30253))))

(declare-fun b!1312153 () Bool)

(assert (=> b!1312153 (= e!748475 tp_is_empty!35415)))

(declare-fun mapIsEmpty!54751 () Bool)

(assert (=> mapIsEmpty!54751 mapRes!54751))

(declare-fun res!871226 () Bool)

(assert (=> start!110886 (=> (not res!871226) (not e!748471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110886 (= res!871226 (validMask!0 mask!2040))))

(assert (=> start!110886 e!748471))

(assert (=> start!110886 tp!104378))

(declare-fun array_inv!31995 (array!87781) Bool)

(assert (=> start!110886 (array_inv!31995 _keys!1628)))

(assert (=> start!110886 true))

(assert (=> start!110886 tp_is_empty!35415))

(declare-fun array_inv!31996 (array!87783) Bool)

(assert (=> start!110886 (and (array_inv!31996 _values!1354) e!748474)))

(declare-fun b!1312151 () Bool)

(assert (=> b!1312151 (= e!748471 (not true))))

(assert (=> b!1312151 (contains!8484 (getCurrentListMap!5354 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43320 0))(
  ( (Unit!43321) )
))
(declare-fun lt!585478 () Unit!43320)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!13 (array!87781 array!87783 (_ BitVec 32) (_ BitVec 32) V!52323 V!52323 (_ BitVec 64) (_ BitVec 32) Int) Unit!43320)

(assert (=> b!1312151 (= lt!585478 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!13 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(assert (= (and start!110886 res!871226) b!1312147))

(assert (= (and b!1312147 res!871230) b!1312149))

(assert (= (and b!1312149 res!871232) b!1312152))

(assert (= (and b!1312152 res!871225) b!1312148))

(assert (= (and b!1312148 res!871229) b!1312146))

(assert (= (and b!1312146 res!871231) b!1312142))

(assert (= (and b!1312142 res!871228) b!1312143))

(assert (= (and b!1312143 res!871227) b!1312145))

(assert (= (and b!1312145 res!871224) b!1312151))

(assert (= (and b!1312150 condMapEmpty!54751) mapIsEmpty!54751))

(assert (= (and b!1312150 (not condMapEmpty!54751)) mapNonEmpty!54751))

(get-info :version)

(assert (= (and mapNonEmpty!54751 ((_ is ValueCellFull!16809) mapValue!54751)) b!1312153))

(assert (= (and b!1312150 ((_ is ValueCellFull!16809) mapDefault!54751)) b!1312144))

(assert (= start!110886 b!1312150))

(declare-fun m!1201415 () Bool)

(assert (=> b!1312151 m!1201415))

(assert (=> b!1312151 m!1201415))

(declare-fun m!1201417 () Bool)

(assert (=> b!1312151 m!1201417))

(declare-fun m!1201419 () Bool)

(assert (=> b!1312151 m!1201419))

(declare-fun m!1201421 () Bool)

(assert (=> mapNonEmpty!54751 m!1201421))

(declare-fun m!1201423 () Bool)

(assert (=> b!1312142 m!1201423))

(declare-fun m!1201425 () Bool)

(assert (=> b!1312152 m!1201425))

(assert (=> b!1312143 m!1201423))

(assert (=> b!1312143 m!1201423))

(declare-fun m!1201427 () Bool)

(assert (=> b!1312143 m!1201427))

(declare-fun m!1201429 () Bool)

(assert (=> b!1312149 m!1201429))

(declare-fun m!1201431 () Bool)

(assert (=> start!110886 m!1201431))

(declare-fun m!1201433 () Bool)

(assert (=> start!110886 m!1201433))

(declare-fun m!1201435 () Bool)

(assert (=> start!110886 m!1201435))

(declare-fun m!1201437 () Bool)

(assert (=> b!1312146 m!1201437))

(assert (=> b!1312146 m!1201437))

(declare-fun m!1201439 () Bool)

(assert (=> b!1312146 m!1201439))

(check-sat (not b!1312146) (not b!1312152) (not b_next!29685) (not start!110886) (not b!1312143) (not mapNonEmpty!54751) (not b!1312149) tp_is_empty!35415 (not b!1312151) b_and!47903)
(check-sat b_and!47903 (not b_next!29685))
