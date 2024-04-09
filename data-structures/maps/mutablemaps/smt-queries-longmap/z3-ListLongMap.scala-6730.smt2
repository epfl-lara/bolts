; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84382 () Bool)

(assert start!84382)

(declare-fun b!986536 () Bool)

(declare-fun res!660129 () Bool)

(declare-fun e!556339 () Bool)

(assert (=> b!986536 (=> (not res!660129) (not e!556339))))

(declare-datatypes ((array!62263 0))(
  ( (array!62264 (arr!29985 (Array (_ BitVec 32) (_ BitVec 64))) (size!30465 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62263)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62263 (_ BitVec 32)) Bool)

(assert (=> b!986536 (= res!660129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36764 () Bool)

(declare-fun mapRes!36764 () Bool)

(declare-fun tp!69620 () Bool)

(declare-fun e!556338 () Bool)

(assert (=> mapNonEmpty!36764 (= mapRes!36764 (and tp!69620 e!556338))))

(declare-datatypes ((V!35859 0))(
  ( (V!35860 (val!11629 Int)) )
))
(declare-datatypes ((ValueCell!11097 0))(
  ( (ValueCellFull!11097 (v!14191 V!35859)) (EmptyCell!11097) )
))
(declare-fun mapRest!36764 () (Array (_ BitVec 32) ValueCell!11097))

(declare-datatypes ((array!62265 0))(
  ( (array!62266 (arr!29986 (Array (_ BitVec 32) ValueCell!11097)) (size!30466 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62265)

(declare-fun mapValue!36764 () ValueCell!11097)

(declare-fun mapKey!36764 () (_ BitVec 32))

(assert (=> mapNonEmpty!36764 (= (arr!29986 _values!1278) (store mapRest!36764 mapKey!36764 mapValue!36764))))

(declare-fun b!986537 () Bool)

(declare-fun res!660127 () Bool)

(assert (=> b!986537 (=> (not res!660127) (not e!556339))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986537 (= res!660127 (and (= (size!30466 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30465 _keys!1544) (size!30466 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!660128 () Bool)

(assert (=> start!84382 (=> (not res!660128) (not e!556339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84382 (= res!660128 (validMask!0 mask!1948))))

(assert (=> start!84382 e!556339))

(assert (=> start!84382 true))

(declare-fun e!556336 () Bool)

(declare-fun array_inv!23037 (array!62265) Bool)

(assert (=> start!84382 (and (array_inv!23037 _values!1278) e!556336)))

(declare-fun array_inv!23038 (array!62263) Bool)

(assert (=> start!84382 (array_inv!23038 _keys!1544)))

(declare-fun b!986538 () Bool)

(declare-fun e!556337 () Bool)

(assert (=> b!986538 (= e!556336 (and e!556337 mapRes!36764))))

(declare-fun condMapEmpty!36764 () Bool)

(declare-fun mapDefault!36764 () ValueCell!11097)

(assert (=> b!986538 (= condMapEmpty!36764 (= (arr!29986 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11097)) mapDefault!36764)))))

(declare-fun b!986539 () Bool)

(declare-fun tp_is_empty!23157 () Bool)

(assert (=> b!986539 (= e!556337 tp_is_empty!23157)))

(declare-fun mapIsEmpty!36764 () Bool)

(assert (=> mapIsEmpty!36764 mapRes!36764))

(declare-fun b!986540 () Bool)

(assert (=> b!986540 (= e!556338 tp_is_empty!23157)))

(declare-fun b!986541 () Bool)

(assert (=> b!986541 (= e!556339 false)))

(declare-fun lt!437476 () Bool)

(declare-datatypes ((List!20863 0))(
  ( (Nil!20860) (Cons!20859 (h!22021 (_ BitVec 64)) (t!29770 List!20863)) )
))
(declare-fun arrayNoDuplicates!0 (array!62263 (_ BitVec 32) List!20863) Bool)

(assert (=> b!986541 (= lt!437476 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20860))))

(assert (= (and start!84382 res!660128) b!986537))

(assert (= (and b!986537 res!660127) b!986536))

(assert (= (and b!986536 res!660129) b!986541))

(assert (= (and b!986538 condMapEmpty!36764) mapIsEmpty!36764))

(assert (= (and b!986538 (not condMapEmpty!36764)) mapNonEmpty!36764))

(get-info :version)

(assert (= (and mapNonEmpty!36764 ((_ is ValueCellFull!11097) mapValue!36764)) b!986540))

(assert (= (and b!986538 ((_ is ValueCellFull!11097) mapDefault!36764)) b!986539))

(assert (= start!84382 b!986538))

(declare-fun m!913391 () Bool)

(assert (=> b!986536 m!913391))

(declare-fun m!913393 () Bool)

(assert (=> mapNonEmpty!36764 m!913393))

(declare-fun m!913395 () Bool)

(assert (=> start!84382 m!913395))

(declare-fun m!913397 () Bool)

(assert (=> start!84382 m!913397))

(declare-fun m!913399 () Bool)

(assert (=> start!84382 m!913399))

(declare-fun m!913401 () Bool)

(assert (=> b!986541 m!913401))

(check-sat (not b!986536) (not mapNonEmpty!36764) (not start!84382) (not b!986541) tp_is_empty!23157)
(check-sat)
