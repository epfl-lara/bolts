; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83112 () Bool)

(assert start!83112)

(declare-fun mapNonEmpty!34972 () Bool)

(declare-fun mapRes!34972 () Bool)

(declare-fun tp!66541 () Bool)

(declare-fun e!546324 () Bool)

(assert (=> mapNonEmpty!34972 (= mapRes!34972 (and tp!66541 e!546324))))

(declare-fun mapKey!34972 () (_ BitVec 32))

(declare-datatypes ((V!34283 0))(
  ( (V!34284 (val!11038 Int)) )
))
(declare-datatypes ((ValueCell!10506 0))(
  ( (ValueCellFull!10506 (v!13597 V!34283)) (EmptyCell!10506) )
))
(declare-datatypes ((array!59999 0))(
  ( (array!60000 (arr!28859 (Array (_ BitVec 32) ValueCell!10506)) (size!29339 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59999)

(declare-fun mapValue!34972 () ValueCell!10506)

(declare-fun mapRest!34972 () (Array (_ BitVec 32) ValueCell!10506))

(assert (=> mapNonEmpty!34972 (= (arr!28859 _values!1425) (store mapRest!34972 mapKey!34972 mapValue!34972))))

(declare-fun b!969050 () Bool)

(declare-fun e!546327 () Bool)

(assert (=> b!969050 (= e!546327 false)))

(declare-fun lt!431557 () Bool)

(declare-datatypes ((array!60001 0))(
  ( (array!60002 (arr!28860 (Array (_ BitVec 32) (_ BitVec 64))) (size!29340 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60001)

(declare-datatypes ((List!20139 0))(
  ( (Nil!20136) (Cons!20135 (h!21297 (_ BitVec 64)) (t!28510 List!20139)) )
))
(declare-fun arrayNoDuplicates!0 (array!60001 (_ BitVec 32) List!20139) Bool)

(assert (=> b!969050 (= lt!431557 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20136))))

(declare-fun b!969051 () Bool)

(declare-fun res!648735 () Bool)

(assert (=> b!969051 (=> (not res!648735) (not e!546327))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969051 (= res!648735 (and (= (size!29339 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29340 _keys!1717) (size!29339 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969052 () Bool)

(declare-fun e!546325 () Bool)

(declare-fun e!546323 () Bool)

(assert (=> b!969052 (= e!546325 (and e!546323 mapRes!34972))))

(declare-fun condMapEmpty!34972 () Bool)

(declare-fun mapDefault!34972 () ValueCell!10506)

(assert (=> b!969052 (= condMapEmpty!34972 (= (arr!28859 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10506)) mapDefault!34972)))))

(declare-fun res!648736 () Bool)

(assert (=> start!83112 (=> (not res!648736) (not e!546327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83112 (= res!648736 (validMask!0 mask!2147))))

(assert (=> start!83112 e!546327))

(assert (=> start!83112 true))

(declare-fun array_inv!22235 (array!59999) Bool)

(assert (=> start!83112 (and (array_inv!22235 _values!1425) e!546325)))

(declare-fun array_inv!22236 (array!60001) Bool)

(assert (=> start!83112 (array_inv!22236 _keys!1717)))

(declare-fun b!969053 () Bool)

(declare-fun tp_is_empty!21975 () Bool)

(assert (=> b!969053 (= e!546324 tp_is_empty!21975)))

(declare-fun b!969054 () Bool)

(assert (=> b!969054 (= e!546323 tp_is_empty!21975)))

(declare-fun b!969055 () Bool)

(declare-fun res!648734 () Bool)

(assert (=> b!969055 (=> (not res!648734) (not e!546327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60001 (_ BitVec 32)) Bool)

(assert (=> b!969055 (= res!648734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!34972 () Bool)

(assert (=> mapIsEmpty!34972 mapRes!34972))

(assert (= (and start!83112 res!648736) b!969051))

(assert (= (and b!969051 res!648735) b!969055))

(assert (= (and b!969055 res!648734) b!969050))

(assert (= (and b!969052 condMapEmpty!34972) mapIsEmpty!34972))

(assert (= (and b!969052 (not condMapEmpty!34972)) mapNonEmpty!34972))

(get-info :version)

(assert (= (and mapNonEmpty!34972 ((_ is ValueCellFull!10506) mapValue!34972)) b!969053))

(assert (= (and b!969052 ((_ is ValueCellFull!10506) mapDefault!34972)) b!969054))

(assert (= start!83112 b!969052))

(declare-fun m!897239 () Bool)

(assert (=> mapNonEmpty!34972 m!897239))

(declare-fun m!897241 () Bool)

(assert (=> b!969050 m!897241))

(declare-fun m!897243 () Bool)

(assert (=> start!83112 m!897243))

(declare-fun m!897245 () Bool)

(assert (=> start!83112 m!897245))

(declare-fun m!897247 () Bool)

(assert (=> start!83112 m!897247))

(declare-fun m!897249 () Bool)

(assert (=> b!969055 m!897249))

(check-sat (not b!969055) (not mapNonEmpty!34972) tp_is_empty!21975 (not b!969050) (not start!83112))
(check-sat)
