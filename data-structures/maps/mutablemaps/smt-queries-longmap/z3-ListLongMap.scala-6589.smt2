; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83448 () Bool)

(assert start!83448)

(declare-fun b_free!19413 () Bool)

(declare-fun b_next!19413 () Bool)

(assert (=> start!83448 (= b_free!19413 (not b_next!19413))))

(declare-fun tp!67519 () Bool)

(declare-fun b_and!31033 () Bool)

(assert (=> start!83448 (= tp!67519 b_and!31033)))

(declare-fun b!974134 () Bool)

(declare-fun res!652194 () Bool)

(declare-fun e!549096 () Bool)

(assert (=> b!974134 (=> (not res!652194) (not e!549096))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34731 0))(
  ( (V!34732 (val!11206 Int)) )
))
(declare-datatypes ((ValueCell!10674 0))(
  ( (ValueCellFull!10674 (v!13765 V!34731)) (EmptyCell!10674) )
))
(declare-datatypes ((array!60643 0))(
  ( (array!60644 (arr!29181 (Array (_ BitVec 32) ValueCell!10674)) (size!29661 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60643)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60645 0))(
  ( (array!60646 (arr!29182 (Array (_ BitVec 32) (_ BitVec 64))) (size!29662 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60645)

(assert (=> b!974134 (= res!652194 (and (= (size!29661 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29662 _keys!1717) (size!29661 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974135 () Bool)

(declare-fun e!549095 () Bool)

(declare-fun e!549099 () Bool)

(declare-fun mapRes!35476 () Bool)

(assert (=> b!974135 (= e!549095 (and e!549099 mapRes!35476))))

(declare-fun condMapEmpty!35476 () Bool)

(declare-fun mapDefault!35476 () ValueCell!10674)

(assert (=> b!974135 (= condMapEmpty!35476 (= (arr!29181 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10674)) mapDefault!35476)))))

(declare-fun b!974136 () Bool)

(declare-fun res!652197 () Bool)

(assert (=> b!974136 (=> (not res!652197) (not e!549096))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974136 (= res!652197 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29662 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29662 _keys!1717))))))

(declare-fun res!652193 () Bool)

(assert (=> start!83448 (=> (not res!652193) (not e!549096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83448 (= res!652193 (validMask!0 mask!2147))))

(assert (=> start!83448 e!549096))

(assert (=> start!83448 true))

(declare-fun array_inv!22469 (array!60643) Bool)

(assert (=> start!83448 (and (array_inv!22469 _values!1425) e!549095)))

(declare-fun tp_is_empty!22311 () Bool)

(assert (=> start!83448 tp_is_empty!22311))

(assert (=> start!83448 tp!67519))

(declare-fun array_inv!22470 (array!60645) Bool)

(assert (=> start!83448 (array_inv!22470 _keys!1717)))

(declare-fun b!974137 () Bool)

(declare-fun res!652195 () Bool)

(assert (=> b!974137 (=> (not res!652195) (not e!549096))))

(declare-fun zeroValue!1367 () V!34731)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34731)

(declare-datatypes ((tuple2!14496 0))(
  ( (tuple2!14497 (_1!7258 (_ BitVec 64)) (_2!7258 V!34731)) )
))
(declare-datatypes ((List!20374 0))(
  ( (Nil!20371) (Cons!20370 (h!21532 tuple2!14496) (t!28859 List!20374)) )
))
(declare-datatypes ((ListLongMap!13207 0))(
  ( (ListLongMap!13208 (toList!6619 List!20374)) )
))
(declare-fun contains!5660 (ListLongMap!13207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3804 (array!60645 array!60643 (_ BitVec 32) (_ BitVec 32) V!34731 V!34731 (_ BitVec 32) Int) ListLongMap!13207)

(assert (=> b!974137 (= res!652195 (contains!5660 (getCurrentListMap!3804 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29182 _keys!1717) i!822)))))

(declare-fun b!974138 () Bool)

(declare-fun e!549097 () Bool)

(assert (=> b!974138 (= e!549097 tp_is_empty!22311)))

(declare-fun mapNonEmpty!35476 () Bool)

(declare-fun tp!67518 () Bool)

(assert (=> mapNonEmpty!35476 (= mapRes!35476 (and tp!67518 e!549097))))

(declare-fun mapRest!35476 () (Array (_ BitVec 32) ValueCell!10674))

(declare-fun mapValue!35476 () ValueCell!10674)

(declare-fun mapKey!35476 () (_ BitVec 32))

(assert (=> mapNonEmpty!35476 (= (arr!29181 _values!1425) (store mapRest!35476 mapKey!35476 mapValue!35476))))

(declare-fun b!974139 () Bool)

(declare-fun res!652198 () Bool)

(assert (=> b!974139 (=> (not res!652198) (not e!549096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974139 (= res!652198 (validKeyInArray!0 (select (arr!29182 _keys!1717) i!822)))))

(declare-fun b!974140 () Bool)

(assert (=> b!974140 (= e!549099 tp_is_empty!22311)))

(declare-fun b!974141 () Bool)

(declare-fun res!652192 () Bool)

(assert (=> b!974141 (=> (not res!652192) (not e!549096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60645 (_ BitVec 32)) Bool)

(assert (=> b!974141 (= res!652192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35476 () Bool)

(assert (=> mapIsEmpty!35476 mapRes!35476))

(declare-fun b!974142 () Bool)

(assert (=> b!974142 (= e!549096 false)))

(declare-fun lt!432700 () ListLongMap!13207)

(assert (=> b!974142 (= lt!432700 (getCurrentListMap!3804 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974143 () Bool)

(declare-fun res!652196 () Bool)

(assert (=> b!974143 (=> (not res!652196) (not e!549096))))

(declare-datatypes ((List!20375 0))(
  ( (Nil!20372) (Cons!20371 (h!21533 (_ BitVec 64)) (t!28860 List!20375)) )
))
(declare-fun arrayNoDuplicates!0 (array!60645 (_ BitVec 32) List!20375) Bool)

(assert (=> b!974143 (= res!652196 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20372))))

(assert (= (and start!83448 res!652193) b!974134))

(assert (= (and b!974134 res!652194) b!974141))

(assert (= (and b!974141 res!652192) b!974143))

(assert (= (and b!974143 res!652196) b!974136))

(assert (= (and b!974136 res!652197) b!974139))

(assert (= (and b!974139 res!652198) b!974137))

(assert (= (and b!974137 res!652195) b!974142))

(assert (= (and b!974135 condMapEmpty!35476) mapIsEmpty!35476))

(assert (= (and b!974135 (not condMapEmpty!35476)) mapNonEmpty!35476))

(get-info :version)

(assert (= (and mapNonEmpty!35476 ((_ is ValueCellFull!10674) mapValue!35476)) b!974138))

(assert (= (and b!974135 ((_ is ValueCellFull!10674) mapDefault!35476)) b!974140))

(assert (= start!83448 b!974135))

(declare-fun m!901803 () Bool)

(assert (=> b!974139 m!901803))

(assert (=> b!974139 m!901803))

(declare-fun m!901805 () Bool)

(assert (=> b!974139 m!901805))

(declare-fun m!901807 () Bool)

(assert (=> mapNonEmpty!35476 m!901807))

(declare-fun m!901809 () Bool)

(assert (=> b!974141 m!901809))

(declare-fun m!901811 () Bool)

(assert (=> start!83448 m!901811))

(declare-fun m!901813 () Bool)

(assert (=> start!83448 m!901813))

(declare-fun m!901815 () Bool)

(assert (=> start!83448 m!901815))

(declare-fun m!901817 () Bool)

(assert (=> b!974143 m!901817))

(declare-fun m!901819 () Bool)

(assert (=> b!974137 m!901819))

(assert (=> b!974137 m!901803))

(assert (=> b!974137 m!901819))

(assert (=> b!974137 m!901803))

(declare-fun m!901821 () Bool)

(assert (=> b!974137 m!901821))

(declare-fun m!901823 () Bool)

(assert (=> b!974142 m!901823))

(check-sat b_and!31033 (not b!974137) (not b!974142) (not mapNonEmpty!35476) (not b!974143) tp_is_empty!22311 (not b!974139) (not start!83448) (not b_next!19413) (not b!974141))
(check-sat b_and!31033 (not b_next!19413))
