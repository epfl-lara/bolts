; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83172 () Bool)

(assert start!83172)

(declare-fun b_free!19137 () Bool)

(declare-fun b_next!19137 () Bool)

(assert (=> start!83172 (= b_free!19137 (not b_next!19137))))

(declare-fun tp!66691 () Bool)

(declare-fun b_and!30643 () Bool)

(assert (=> start!83172 (= tp!66691 b_and!30643)))

(declare-fun mapNonEmpty!35062 () Bool)

(declare-fun mapRes!35062 () Bool)

(declare-fun tp!66690 () Bool)

(declare-fun e!546773 () Bool)

(assert (=> mapNonEmpty!35062 (= mapRes!35062 (and tp!66690 e!546773))))

(declare-datatypes ((V!34363 0))(
  ( (V!34364 (val!11068 Int)) )
))
(declare-datatypes ((ValueCell!10536 0))(
  ( (ValueCellFull!10536 (v!13627 V!34363)) (EmptyCell!10536) )
))
(declare-datatypes ((array!60115 0))(
  ( (array!60116 (arr!28917 (Array (_ BitVec 32) ValueCell!10536)) (size!29397 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60115)

(declare-fun mapValue!35062 () ValueCell!10536)

(declare-fun mapKey!35062 () (_ BitVec 32))

(declare-fun mapRest!35062 () (Array (_ BitVec 32) ValueCell!10536))

(assert (=> mapNonEmpty!35062 (= (arr!28917 _values!1425) (store mapRest!35062 mapKey!35062 mapValue!35062))))

(declare-fun b!969794 () Bool)

(declare-fun res!649210 () Bool)

(declare-fun e!546777 () Bool)

(assert (=> b!969794 (=> (not res!649210) (not e!546777))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60117 0))(
  ( (array!60118 (arr!28918 (Array (_ BitVec 32) (_ BitVec 64))) (size!29398 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60117)

(assert (=> b!969794 (= res!649210 (and (= (size!29397 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29398 _keys!1717) (size!29397 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969795 () Bool)

(declare-fun res!649209 () Bool)

(assert (=> b!969795 (=> (not res!649209) (not e!546777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60117 (_ BitVec 32)) Bool)

(assert (=> b!969795 (= res!649209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969796 () Bool)

(assert (=> b!969796 (= e!546777 false)))

(declare-fun lt!431638 () Bool)

(declare-fun zeroValue!1367 () V!34363)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34363)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14278 0))(
  ( (tuple2!14279 (_1!7149 (_ BitVec 64)) (_2!7149 V!34363)) )
))
(declare-datatypes ((List!20170 0))(
  ( (Nil!20167) (Cons!20166 (h!21328 tuple2!14278) (t!28541 List!20170)) )
))
(declare-datatypes ((ListLongMap!12989 0))(
  ( (ListLongMap!12990 (toList!6510 List!20170)) )
))
(declare-fun contains!5565 (ListLongMap!12989 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3695 (array!60117 array!60115 (_ BitVec 32) (_ BitVec 32) V!34363 V!34363 (_ BitVec 32) Int) ListLongMap!12989)

(assert (=> b!969796 (= lt!431638 (contains!5565 (getCurrentListMap!3695 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28918 _keys!1717) i!822)))))

(declare-fun b!969797 () Bool)

(declare-fun e!546774 () Bool)

(declare-fun tp_is_empty!22035 () Bool)

(assert (=> b!969797 (= e!546774 tp_is_empty!22035)))

(declare-fun res!649208 () Bool)

(assert (=> start!83172 (=> (not res!649208) (not e!546777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83172 (= res!649208 (validMask!0 mask!2147))))

(assert (=> start!83172 e!546777))

(assert (=> start!83172 true))

(declare-fun e!546775 () Bool)

(declare-fun array_inv!22275 (array!60115) Bool)

(assert (=> start!83172 (and (array_inv!22275 _values!1425) e!546775)))

(assert (=> start!83172 tp_is_empty!22035))

(assert (=> start!83172 tp!66691))

(declare-fun array_inv!22276 (array!60117) Bool)

(assert (=> start!83172 (array_inv!22276 _keys!1717)))

(declare-fun b!969798 () Bool)

(declare-fun res!649212 () Bool)

(assert (=> b!969798 (=> (not res!649212) (not e!546777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969798 (= res!649212 (validKeyInArray!0 (select (arr!28918 _keys!1717) i!822)))))

(declare-fun b!969799 () Bool)

(assert (=> b!969799 (= e!546773 tp_is_empty!22035)))

(declare-fun mapIsEmpty!35062 () Bool)

(assert (=> mapIsEmpty!35062 mapRes!35062))

(declare-fun b!969800 () Bool)

(declare-fun res!649211 () Bool)

(assert (=> b!969800 (=> (not res!649211) (not e!546777))))

(declare-datatypes ((List!20171 0))(
  ( (Nil!20168) (Cons!20167 (h!21329 (_ BitVec 64)) (t!28542 List!20171)) )
))
(declare-fun arrayNoDuplicates!0 (array!60117 (_ BitVec 32) List!20171) Bool)

(assert (=> b!969800 (= res!649211 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20168))))

(declare-fun b!969801 () Bool)

(declare-fun res!649213 () Bool)

(assert (=> b!969801 (=> (not res!649213) (not e!546777))))

(assert (=> b!969801 (= res!649213 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29398 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29398 _keys!1717))))))

(declare-fun b!969802 () Bool)

(assert (=> b!969802 (= e!546775 (and e!546774 mapRes!35062))))

(declare-fun condMapEmpty!35062 () Bool)

(declare-fun mapDefault!35062 () ValueCell!10536)

(assert (=> b!969802 (= condMapEmpty!35062 (= (arr!28917 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10536)) mapDefault!35062)))))

(assert (= (and start!83172 res!649208) b!969794))

(assert (= (and b!969794 res!649210) b!969795))

(assert (= (and b!969795 res!649209) b!969800))

(assert (= (and b!969800 res!649211) b!969801))

(assert (= (and b!969801 res!649213) b!969798))

(assert (= (and b!969798 res!649212) b!969796))

(assert (= (and b!969802 condMapEmpty!35062) mapIsEmpty!35062))

(assert (= (and b!969802 (not condMapEmpty!35062)) mapNonEmpty!35062))

(get-info :version)

(assert (= (and mapNonEmpty!35062 ((_ is ValueCellFull!10536) mapValue!35062)) b!969799))

(assert (= (and b!969802 ((_ is ValueCellFull!10536) mapDefault!35062)) b!969797))

(assert (= start!83172 b!969802))

(declare-fun m!897763 () Bool)

(assert (=> b!969798 m!897763))

(assert (=> b!969798 m!897763))

(declare-fun m!897765 () Bool)

(assert (=> b!969798 m!897765))

(declare-fun m!897767 () Bool)

(assert (=> b!969800 m!897767))

(declare-fun m!897769 () Bool)

(assert (=> start!83172 m!897769))

(declare-fun m!897771 () Bool)

(assert (=> start!83172 m!897771))

(declare-fun m!897773 () Bool)

(assert (=> start!83172 m!897773))

(declare-fun m!897775 () Bool)

(assert (=> b!969795 m!897775))

(declare-fun m!897777 () Bool)

(assert (=> mapNonEmpty!35062 m!897777))

(declare-fun m!897779 () Bool)

(assert (=> b!969796 m!897779))

(assert (=> b!969796 m!897763))

(assert (=> b!969796 m!897779))

(assert (=> b!969796 m!897763))

(declare-fun m!897781 () Bool)

(assert (=> b!969796 m!897781))

(check-sat (not b_next!19137) b_and!30643 tp_is_empty!22035 (not mapNonEmpty!35062) (not start!83172) (not b!969798) (not b!969800) (not b!969795) (not b!969796))
(check-sat b_and!30643 (not b_next!19137))
