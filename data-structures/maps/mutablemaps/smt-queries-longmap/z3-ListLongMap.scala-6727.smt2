; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84364 () Bool)

(assert start!84364)

(declare-fun mapIsEmpty!36737 () Bool)

(declare-fun mapRes!36737 () Bool)

(assert (=> mapIsEmpty!36737 mapRes!36737))

(declare-fun b!986374 () Bool)

(declare-fun e!556203 () Bool)

(declare-fun tp_is_empty!23139 () Bool)

(assert (=> b!986374 (= e!556203 tp_is_empty!23139)))

(declare-fun b!986375 () Bool)

(declare-fun e!556201 () Bool)

(declare-fun e!556202 () Bool)

(assert (=> b!986375 (= e!556201 (and e!556202 mapRes!36737))))

(declare-fun condMapEmpty!36737 () Bool)

(declare-datatypes ((V!35835 0))(
  ( (V!35836 (val!11620 Int)) )
))
(declare-datatypes ((ValueCell!11088 0))(
  ( (ValueCellFull!11088 (v!14182 V!35835)) (EmptyCell!11088) )
))
(declare-datatypes ((array!62229 0))(
  ( (array!62230 (arr!29968 (Array (_ BitVec 32) ValueCell!11088)) (size!30448 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62229)

(declare-fun mapDefault!36737 () ValueCell!11088)

(assert (=> b!986375 (= condMapEmpty!36737 (= (arr!29968 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11088)) mapDefault!36737)))))

(declare-fun b!986376 () Bool)

(declare-fun res!660047 () Bool)

(declare-fun e!556204 () Bool)

(assert (=> b!986376 (=> (not res!660047) (not e!556204))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62231 0))(
  ( (array!62232 (arr!29969 (Array (_ BitVec 32) (_ BitVec 64))) (size!30449 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62231)

(assert (=> b!986376 (= res!660047 (and (= (size!30448 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30449 _keys!1544) (size!30448 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986377 () Bool)

(assert (=> b!986377 (= e!556204 false)))

(declare-fun lt!437449 () Bool)

(declare-datatypes ((List!20858 0))(
  ( (Nil!20855) (Cons!20854 (h!22016 (_ BitVec 64)) (t!29765 List!20858)) )
))
(declare-fun arrayNoDuplicates!0 (array!62231 (_ BitVec 32) List!20858) Bool)

(assert (=> b!986377 (= lt!437449 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20855))))

(declare-fun b!986378 () Bool)

(assert (=> b!986378 (= e!556202 tp_is_empty!23139)))

(declare-fun res!660048 () Bool)

(assert (=> start!84364 (=> (not res!660048) (not e!556204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84364 (= res!660048 (validMask!0 mask!1948))))

(assert (=> start!84364 e!556204))

(assert (=> start!84364 true))

(declare-fun array_inv!23025 (array!62229) Bool)

(assert (=> start!84364 (and (array_inv!23025 _values!1278) e!556201)))

(declare-fun array_inv!23026 (array!62231) Bool)

(assert (=> start!84364 (array_inv!23026 _keys!1544)))

(declare-fun b!986379 () Bool)

(declare-fun res!660046 () Bool)

(assert (=> b!986379 (=> (not res!660046) (not e!556204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62231 (_ BitVec 32)) Bool)

(assert (=> b!986379 (= res!660046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36737 () Bool)

(declare-fun tp!69593 () Bool)

(assert (=> mapNonEmpty!36737 (= mapRes!36737 (and tp!69593 e!556203))))

(declare-fun mapKey!36737 () (_ BitVec 32))

(declare-fun mapRest!36737 () (Array (_ BitVec 32) ValueCell!11088))

(declare-fun mapValue!36737 () ValueCell!11088)

(assert (=> mapNonEmpty!36737 (= (arr!29968 _values!1278) (store mapRest!36737 mapKey!36737 mapValue!36737))))

(assert (= (and start!84364 res!660048) b!986376))

(assert (= (and b!986376 res!660047) b!986379))

(assert (= (and b!986379 res!660046) b!986377))

(assert (= (and b!986375 condMapEmpty!36737) mapIsEmpty!36737))

(assert (= (and b!986375 (not condMapEmpty!36737)) mapNonEmpty!36737))

(get-info :version)

(assert (= (and mapNonEmpty!36737 ((_ is ValueCellFull!11088) mapValue!36737)) b!986374))

(assert (= (and b!986375 ((_ is ValueCellFull!11088) mapDefault!36737)) b!986378))

(assert (= start!84364 b!986375))

(declare-fun m!913283 () Bool)

(assert (=> b!986377 m!913283))

(declare-fun m!913285 () Bool)

(assert (=> start!84364 m!913285))

(declare-fun m!913287 () Bool)

(assert (=> start!84364 m!913287))

(declare-fun m!913289 () Bool)

(assert (=> start!84364 m!913289))

(declare-fun m!913291 () Bool)

(assert (=> b!986379 m!913291))

(declare-fun m!913293 () Bool)

(assert (=> mapNonEmpty!36737 m!913293))

(check-sat (not b!986377) (not b!986379) (not mapNonEmpty!36737) (not start!84364) tp_is_empty!23139)
(check-sat)
