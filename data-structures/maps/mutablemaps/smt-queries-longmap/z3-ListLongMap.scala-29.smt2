; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!608 () Bool)

(assert start!608)

(declare-fun b_free!81 () Bool)

(declare-fun b_next!81 () Bool)

(assert (=> start!608 (= b_free!81 (not b_next!81))))

(declare-fun tp!460 () Bool)

(declare-fun b_and!219 () Bool)

(assert (=> start!608 (= tp!460 b_and!219)))

(declare-fun b!3784 () Bool)

(declare-fun e!1908 () Bool)

(assert (=> b!3784 (= e!1908 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!389 0))(
  ( (V!390 (val!85 Int)) )
))
(declare-datatypes ((ValueCell!63 0))(
  ( (ValueCellFull!63 (v!1172 V!389)) (EmptyCell!63) )
))
(declare-datatypes ((array!251 0))(
  ( (array!252 (arr!118 (Array (_ BitVec 32) ValueCell!63)) (size!180 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!251)

(declare-fun minValue!1434 () V!389)

(declare-fun lt!522 () Bool)

(declare-datatypes ((array!253 0))(
  ( (array!254 (arr!119 (Array (_ BitVec 32) (_ BitVec 64))) (size!181 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!253)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!389)

(declare-datatypes ((tuple2!64 0))(
  ( (tuple2!65 (_1!32 (_ BitVec 64)) (_2!32 V!389)) )
))
(declare-datatypes ((List!71 0))(
  ( (Nil!68) (Cons!67 (h!633 tuple2!64) (t!2198 List!71)) )
))
(declare-datatypes ((ListLongMap!69 0))(
  ( (ListLongMap!70 (toList!50 List!71)) )
))
(declare-fun contains!20 (ListLongMap!69 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!9 (array!253 array!251 (_ BitVec 32) (_ BitVec 32) V!389 V!389 (_ BitVec 32) Int) ListLongMap!69)

(assert (=> b!3784 (= lt!522 (contains!20 (getCurrentListMap!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!197 () Bool)

(declare-fun mapRes!197 () Bool)

(assert (=> mapIsEmpty!197 mapRes!197))

(declare-fun b!3785 () Bool)

(declare-fun e!1906 () Bool)

(declare-fun tp_is_empty!159 () Bool)

(assert (=> b!3785 (= e!1906 tp_is_empty!159)))

(declare-fun res!5368 () Bool)

(assert (=> start!608 (=> (not res!5368) (not e!1908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!608 (= res!5368 (validMask!0 mask!2250))))

(assert (=> start!608 e!1908))

(assert (=> start!608 tp!460))

(assert (=> start!608 true))

(declare-fun e!1907 () Bool)

(declare-fun array_inv!83 (array!251) Bool)

(assert (=> start!608 (and (array_inv!83 _values!1492) e!1907)))

(assert (=> start!608 tp_is_empty!159))

(declare-fun array_inv!84 (array!253) Bool)

(assert (=> start!608 (array_inv!84 _keys!1806)))

(declare-fun b!3786 () Bool)

(declare-fun res!5366 () Bool)

(assert (=> b!3786 (=> (not res!5366) (not e!1908))))

(assert (=> b!3786 (= res!5366 (and (= (size!180 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!181 _keys!1806) (size!180 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3787 () Bool)

(assert (=> b!3787 (= e!1907 (and e!1906 mapRes!197))))

(declare-fun condMapEmpty!197 () Bool)

(declare-fun mapDefault!197 () ValueCell!63)

(assert (=> b!3787 (= condMapEmpty!197 (= (arr!118 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!63)) mapDefault!197)))))

(declare-fun b!3788 () Bool)

(declare-fun res!5367 () Bool)

(assert (=> b!3788 (=> (not res!5367) (not e!1908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!253 (_ BitVec 32)) Bool)

(assert (=> b!3788 (= res!5367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!197 () Bool)

(declare-fun tp!461 () Bool)

(declare-fun e!1910 () Bool)

(assert (=> mapNonEmpty!197 (= mapRes!197 (and tp!461 e!1910))))

(declare-fun mapRest!197 () (Array (_ BitVec 32) ValueCell!63))

(declare-fun mapKey!197 () (_ BitVec 32))

(declare-fun mapValue!197 () ValueCell!63)

(assert (=> mapNonEmpty!197 (= (arr!118 _values!1492) (store mapRest!197 mapKey!197 mapValue!197))))

(declare-fun b!3789 () Bool)

(declare-fun res!5365 () Bool)

(assert (=> b!3789 (=> (not res!5365) (not e!1908))))

(declare-datatypes ((List!72 0))(
  ( (Nil!69) (Cons!68 (h!634 (_ BitVec 64)) (t!2199 List!72)) )
))
(declare-fun arrayNoDuplicates!0 (array!253 (_ BitVec 32) List!72) Bool)

(assert (=> b!3789 (= res!5365 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!69))))

(declare-fun b!3790 () Bool)

(assert (=> b!3790 (= e!1910 tp_is_empty!159)))

(assert (= (and start!608 res!5368) b!3786))

(assert (= (and b!3786 res!5366) b!3788))

(assert (= (and b!3788 res!5367) b!3789))

(assert (= (and b!3789 res!5365) b!3784))

(assert (= (and b!3787 condMapEmpty!197) mapIsEmpty!197))

(assert (= (and b!3787 (not condMapEmpty!197)) mapNonEmpty!197))

(get-info :version)

(assert (= (and mapNonEmpty!197 ((_ is ValueCellFull!63) mapValue!197)) b!3790))

(assert (= (and b!3787 ((_ is ValueCellFull!63) mapDefault!197)) b!3785))

(assert (= start!608 b!3787))

(declare-fun m!1887 () Bool)

(assert (=> b!3788 m!1887))

(declare-fun m!1889 () Bool)

(assert (=> b!3784 m!1889))

(assert (=> b!3784 m!1889))

(declare-fun m!1891 () Bool)

(assert (=> b!3784 m!1891))

(declare-fun m!1893 () Bool)

(assert (=> b!3789 m!1893))

(declare-fun m!1895 () Bool)

(assert (=> mapNonEmpty!197 m!1895))

(declare-fun m!1897 () Bool)

(assert (=> start!608 m!1897))

(declare-fun m!1899 () Bool)

(assert (=> start!608 m!1899))

(declare-fun m!1901 () Bool)

(assert (=> start!608 m!1901))

(check-sat (not b!3789) (not mapNonEmpty!197) tp_is_empty!159 (not b_next!81) (not b!3788) (not b!3784) (not start!608) b_and!219)
(check-sat b_and!219 (not b_next!81))
