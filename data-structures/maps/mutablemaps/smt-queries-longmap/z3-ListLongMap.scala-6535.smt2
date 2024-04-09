; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83124 () Bool)

(assert start!83124)

(declare-fun res!648788 () Bool)

(declare-fun e!546415 () Bool)

(assert (=> start!83124 (=> (not res!648788) (not e!546415))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83124 (= res!648788 (validMask!0 mask!2147))))

(assert (=> start!83124 e!546415))

(assert (=> start!83124 true))

(declare-datatypes ((V!34299 0))(
  ( (V!34300 (val!11044 Int)) )
))
(declare-datatypes ((ValueCell!10512 0))(
  ( (ValueCellFull!10512 (v!13603 V!34299)) (EmptyCell!10512) )
))
(declare-datatypes ((array!60021 0))(
  ( (array!60022 (arr!28870 (Array (_ BitVec 32) ValueCell!10512)) (size!29350 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60021)

(declare-fun e!546413 () Bool)

(declare-fun array_inv!22243 (array!60021) Bool)

(assert (=> start!83124 (and (array_inv!22243 _values!1425) e!546413)))

(declare-datatypes ((array!60023 0))(
  ( (array!60024 (arr!28871 (Array (_ BitVec 32) (_ BitVec 64))) (size!29351 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60023)

(declare-fun array_inv!22244 (array!60023) Bool)

(assert (=> start!83124 (array_inv!22244 _keys!1717)))

(declare-fun b!969158 () Bool)

(declare-fun e!546417 () Bool)

(declare-fun tp_is_empty!21987 () Bool)

(assert (=> b!969158 (= e!546417 tp_is_empty!21987)))

(declare-fun mapIsEmpty!34990 () Bool)

(declare-fun mapRes!34990 () Bool)

(assert (=> mapIsEmpty!34990 mapRes!34990))

(declare-fun b!969159 () Bool)

(assert (=> b!969159 (= e!546413 (and e!546417 mapRes!34990))))

(declare-fun condMapEmpty!34990 () Bool)

(declare-fun mapDefault!34990 () ValueCell!10512)

(assert (=> b!969159 (= condMapEmpty!34990 (= (arr!28870 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10512)) mapDefault!34990)))))

(declare-fun b!969160 () Bool)

(declare-fun e!546416 () Bool)

(assert (=> b!969160 (= e!546416 tp_is_empty!21987)))

(declare-fun mapNonEmpty!34990 () Bool)

(declare-fun tp!66559 () Bool)

(assert (=> mapNonEmpty!34990 (= mapRes!34990 (and tp!66559 e!546416))))

(declare-fun mapKey!34990 () (_ BitVec 32))

(declare-fun mapValue!34990 () ValueCell!10512)

(declare-fun mapRest!34990 () (Array (_ BitVec 32) ValueCell!10512))

(assert (=> mapNonEmpty!34990 (= (arr!28870 _values!1425) (store mapRest!34990 mapKey!34990 mapValue!34990))))

(declare-fun b!969161 () Bool)

(declare-fun res!648789 () Bool)

(assert (=> b!969161 (=> (not res!648789) (not e!546415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60023 (_ BitVec 32)) Bool)

(assert (=> b!969161 (= res!648789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969162 () Bool)

(assert (=> b!969162 (= e!546415 false)))

(declare-fun lt!431575 () Bool)

(declare-datatypes ((List!20141 0))(
  ( (Nil!20138) (Cons!20137 (h!21299 (_ BitVec 64)) (t!28512 List!20141)) )
))
(declare-fun arrayNoDuplicates!0 (array!60023 (_ BitVec 32) List!20141) Bool)

(assert (=> b!969162 (= lt!431575 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20138))))

(declare-fun b!969163 () Bool)

(declare-fun res!648790 () Bool)

(assert (=> b!969163 (=> (not res!648790) (not e!546415))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969163 (= res!648790 (and (= (size!29350 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29351 _keys!1717) (size!29350 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83124 res!648788) b!969163))

(assert (= (and b!969163 res!648790) b!969161))

(assert (= (and b!969161 res!648789) b!969162))

(assert (= (and b!969159 condMapEmpty!34990) mapIsEmpty!34990))

(assert (= (and b!969159 (not condMapEmpty!34990)) mapNonEmpty!34990))

(get-info :version)

(assert (= (and mapNonEmpty!34990 ((_ is ValueCellFull!10512) mapValue!34990)) b!969160))

(assert (= (and b!969159 ((_ is ValueCellFull!10512) mapDefault!34990)) b!969158))

(assert (= start!83124 b!969159))

(declare-fun m!897311 () Bool)

(assert (=> start!83124 m!897311))

(declare-fun m!897313 () Bool)

(assert (=> start!83124 m!897313))

(declare-fun m!897315 () Bool)

(assert (=> start!83124 m!897315))

(declare-fun m!897317 () Bool)

(assert (=> mapNonEmpty!34990 m!897317))

(declare-fun m!897319 () Bool)

(assert (=> b!969161 m!897319))

(declare-fun m!897321 () Bool)

(assert (=> b!969162 m!897321))

(check-sat (not mapNonEmpty!34990) (not b!969161) tp_is_empty!21987 (not start!83124) (not b!969162))
(check-sat)
