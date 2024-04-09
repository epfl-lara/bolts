; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83106 () Bool)

(assert start!83106)

(declare-fun mapIsEmpty!34963 () Bool)

(declare-fun mapRes!34963 () Bool)

(assert (=> mapIsEmpty!34963 mapRes!34963))

(declare-fun b!968996 () Bool)

(declare-fun res!648709 () Bool)

(declare-fun e!546278 () Bool)

(assert (=> b!968996 (=> (not res!648709) (not e!546278))))

(declare-datatypes ((array!59987 0))(
  ( (array!59988 (arr!28853 (Array (_ BitVec 32) (_ BitVec 64))) (size!29333 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59987)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59987 (_ BitVec 32)) Bool)

(assert (=> b!968996 (= res!648709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968997 () Bool)

(assert (=> b!968997 (= e!546278 false)))

(declare-fun lt!431548 () Bool)

(declare-datatypes ((List!20136 0))(
  ( (Nil!20133) (Cons!20132 (h!21294 (_ BitVec 64)) (t!28507 List!20136)) )
))
(declare-fun arrayNoDuplicates!0 (array!59987 (_ BitVec 32) List!20136) Bool)

(assert (=> b!968997 (= lt!431548 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20133))))

(declare-fun b!968998 () Bool)

(declare-fun e!546282 () Bool)

(declare-fun tp_is_empty!21969 () Bool)

(assert (=> b!968998 (= e!546282 tp_is_empty!21969)))

(declare-fun res!648707 () Bool)

(assert (=> start!83106 (=> (not res!648707) (not e!546278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83106 (= res!648707 (validMask!0 mask!2147))))

(assert (=> start!83106 e!546278))

(assert (=> start!83106 true))

(declare-datatypes ((V!34275 0))(
  ( (V!34276 (val!11035 Int)) )
))
(declare-datatypes ((ValueCell!10503 0))(
  ( (ValueCellFull!10503 (v!13594 V!34275)) (EmptyCell!10503) )
))
(declare-datatypes ((array!59989 0))(
  ( (array!59990 (arr!28854 (Array (_ BitVec 32) ValueCell!10503)) (size!29334 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59989)

(declare-fun e!546280 () Bool)

(declare-fun array_inv!22231 (array!59989) Bool)

(assert (=> start!83106 (and (array_inv!22231 _values!1425) e!546280)))

(declare-fun array_inv!22232 (array!59987) Bool)

(assert (=> start!83106 (array_inv!22232 _keys!1717)))

(declare-fun mapNonEmpty!34963 () Bool)

(declare-fun tp!66532 () Bool)

(assert (=> mapNonEmpty!34963 (= mapRes!34963 (and tp!66532 e!546282))))

(declare-fun mapValue!34963 () ValueCell!10503)

(declare-fun mapRest!34963 () (Array (_ BitVec 32) ValueCell!10503))

(declare-fun mapKey!34963 () (_ BitVec 32))

(assert (=> mapNonEmpty!34963 (= (arr!28854 _values!1425) (store mapRest!34963 mapKey!34963 mapValue!34963))))

(declare-fun b!968999 () Bool)

(declare-fun res!648708 () Bool)

(assert (=> b!968999 (=> (not res!648708) (not e!546278))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968999 (= res!648708 (and (= (size!29334 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29333 _keys!1717) (size!29334 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969000 () Bool)

(declare-fun e!546279 () Bool)

(assert (=> b!969000 (= e!546279 tp_is_empty!21969)))

(declare-fun b!969001 () Bool)

(assert (=> b!969001 (= e!546280 (and e!546279 mapRes!34963))))

(declare-fun condMapEmpty!34963 () Bool)

(declare-fun mapDefault!34963 () ValueCell!10503)

(assert (=> b!969001 (= condMapEmpty!34963 (= (arr!28854 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10503)) mapDefault!34963)))))

(assert (= (and start!83106 res!648707) b!968999))

(assert (= (and b!968999 res!648708) b!968996))

(assert (= (and b!968996 res!648709) b!968997))

(assert (= (and b!969001 condMapEmpty!34963) mapIsEmpty!34963))

(assert (= (and b!969001 (not condMapEmpty!34963)) mapNonEmpty!34963))

(get-info :version)

(assert (= (and mapNonEmpty!34963 ((_ is ValueCellFull!10503) mapValue!34963)) b!968998))

(assert (= (and b!969001 ((_ is ValueCellFull!10503) mapDefault!34963)) b!969000))

(assert (= start!83106 b!969001))

(declare-fun m!897203 () Bool)

(assert (=> b!968996 m!897203))

(declare-fun m!897205 () Bool)

(assert (=> b!968997 m!897205))

(declare-fun m!897207 () Bool)

(assert (=> start!83106 m!897207))

(declare-fun m!897209 () Bool)

(assert (=> start!83106 m!897209))

(declare-fun m!897211 () Bool)

(assert (=> start!83106 m!897211))

(declare-fun m!897213 () Bool)

(assert (=> mapNonEmpty!34963 m!897213))

(check-sat (not start!83106) (not b!968996) (not b!968997) (not mapNonEmpty!34963) tp_is_empty!21969)
(check-sat)
