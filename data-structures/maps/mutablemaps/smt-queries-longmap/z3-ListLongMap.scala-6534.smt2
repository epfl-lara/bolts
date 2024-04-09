; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83118 () Bool)

(assert start!83118)

(declare-fun b!969104 () Bool)

(declare-fun res!648761 () Bool)

(declare-fun e!546369 () Bool)

(assert (=> b!969104 (=> (not res!648761) (not e!546369))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34291 0))(
  ( (V!34292 (val!11041 Int)) )
))
(declare-datatypes ((ValueCell!10509 0))(
  ( (ValueCellFull!10509 (v!13600 V!34291)) (EmptyCell!10509) )
))
(declare-datatypes ((array!60009 0))(
  ( (array!60010 (arr!28864 (Array (_ BitVec 32) ValueCell!10509)) (size!29344 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60009)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60011 0))(
  ( (array!60012 (arr!28865 (Array (_ BitVec 32) (_ BitVec 64))) (size!29345 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60011)

(assert (=> b!969104 (= res!648761 (and (= (size!29344 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29345 _keys!1717) (size!29344 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34981 () Bool)

(declare-fun mapRes!34981 () Bool)

(assert (=> mapIsEmpty!34981 mapRes!34981))

(declare-fun b!969105 () Bool)

(assert (=> b!969105 (= e!546369 false)))

(declare-fun lt!431566 () Bool)

(declare-datatypes ((List!20140 0))(
  ( (Nil!20137) (Cons!20136 (h!21298 (_ BitVec 64)) (t!28511 List!20140)) )
))
(declare-fun arrayNoDuplicates!0 (array!60011 (_ BitVec 32) List!20140) Bool)

(assert (=> b!969105 (= lt!431566 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20137))))

(declare-fun mapNonEmpty!34981 () Bool)

(declare-fun tp!66550 () Bool)

(declare-fun e!546368 () Bool)

(assert (=> mapNonEmpty!34981 (= mapRes!34981 (and tp!66550 e!546368))))

(declare-fun mapValue!34981 () ValueCell!10509)

(declare-fun mapKey!34981 () (_ BitVec 32))

(declare-fun mapRest!34981 () (Array (_ BitVec 32) ValueCell!10509))

(assert (=> mapNonEmpty!34981 (= (arr!28864 _values!1425) (store mapRest!34981 mapKey!34981 mapValue!34981))))

(declare-fun b!969106 () Bool)

(declare-fun tp_is_empty!21981 () Bool)

(assert (=> b!969106 (= e!546368 tp_is_empty!21981)))

(declare-fun b!969107 () Bool)

(declare-fun e!546370 () Bool)

(assert (=> b!969107 (= e!546370 tp_is_empty!21981)))

(declare-fun b!969108 () Bool)

(declare-fun e!546372 () Bool)

(assert (=> b!969108 (= e!546372 (and e!546370 mapRes!34981))))

(declare-fun condMapEmpty!34981 () Bool)

(declare-fun mapDefault!34981 () ValueCell!10509)

(assert (=> b!969108 (= condMapEmpty!34981 (= (arr!28864 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10509)) mapDefault!34981)))))

(declare-fun res!648762 () Bool)

(assert (=> start!83118 (=> (not res!648762) (not e!546369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83118 (= res!648762 (validMask!0 mask!2147))))

(assert (=> start!83118 e!546369))

(assert (=> start!83118 true))

(declare-fun array_inv!22239 (array!60009) Bool)

(assert (=> start!83118 (and (array_inv!22239 _values!1425) e!546372)))

(declare-fun array_inv!22240 (array!60011) Bool)

(assert (=> start!83118 (array_inv!22240 _keys!1717)))

(declare-fun b!969109 () Bool)

(declare-fun res!648763 () Bool)

(assert (=> b!969109 (=> (not res!648763) (not e!546369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60011 (_ BitVec 32)) Bool)

(assert (=> b!969109 (= res!648763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83118 res!648762) b!969104))

(assert (= (and b!969104 res!648761) b!969109))

(assert (= (and b!969109 res!648763) b!969105))

(assert (= (and b!969108 condMapEmpty!34981) mapIsEmpty!34981))

(assert (= (and b!969108 (not condMapEmpty!34981)) mapNonEmpty!34981))

(get-info :version)

(assert (= (and mapNonEmpty!34981 ((_ is ValueCellFull!10509) mapValue!34981)) b!969106))

(assert (= (and b!969108 ((_ is ValueCellFull!10509) mapDefault!34981)) b!969107))

(assert (= start!83118 b!969108))

(declare-fun m!897275 () Bool)

(assert (=> b!969105 m!897275))

(declare-fun m!897277 () Bool)

(assert (=> mapNonEmpty!34981 m!897277))

(declare-fun m!897279 () Bool)

(assert (=> start!83118 m!897279))

(declare-fun m!897281 () Bool)

(assert (=> start!83118 m!897281))

(declare-fun m!897283 () Bool)

(assert (=> start!83118 m!897283))

(declare-fun m!897285 () Bool)

(assert (=> b!969109 m!897285))

(check-sat (not b!969109) (not b!969105) tp_is_empty!21981 (not mapNonEmpty!34981) (not start!83118))
(check-sat)
