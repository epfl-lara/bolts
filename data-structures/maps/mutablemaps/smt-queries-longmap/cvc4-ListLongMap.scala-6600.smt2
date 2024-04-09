; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83516 () Bool)

(assert start!83516)

(declare-fun b_free!19475 () Bool)

(declare-fun b_next!19475 () Bool)

(assert (=> start!83516 (= b_free!19475 (not b_next!19475))))

(declare-fun tp!67713 () Bool)

(declare-fun b_and!31095 () Bool)

(assert (=> start!83516 (= tp!67713 b_and!31095)))

(declare-fun mapIsEmpty!35578 () Bool)

(declare-fun mapRes!35578 () Bool)

(assert (=> mapIsEmpty!35578 mapRes!35578))

(declare-fun b!975127 () Bool)

(declare-fun res!652881 () Bool)

(declare-fun e!549616 () Bool)

(assert (=> b!975127 (=> (not res!652881) (not e!549616))))

(declare-datatypes ((array!60773 0))(
  ( (array!60774 (arr!29246 (Array (_ BitVec 32) (_ BitVec 64))) (size!29726 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60773)

(declare-datatypes ((List!20423 0))(
  ( (Nil!20420) (Cons!20419 (h!21581 (_ BitVec 64)) (t!28908 List!20423)) )
))
(declare-fun arrayNoDuplicates!0 (array!60773 (_ BitVec 32) List!20423) Bool)

(assert (=> b!975127 (= res!652881 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20420))))

(declare-fun b!975128 () Bool)

(declare-fun res!652879 () Bool)

(assert (=> b!975128 (=> (not res!652879) (not e!549616))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975128 (= res!652879 (validKeyInArray!0 (select (arr!29246 _keys!1717) i!822)))))

(declare-fun b!975129 () Bool)

(declare-fun res!652880 () Bool)

(assert (=> b!975129 (=> (not res!652880) (not e!549616))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60773 (_ BitVec 32)) Bool)

(assert (=> b!975129 (= res!652880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975130 () Bool)

(declare-fun res!652883 () Bool)

(assert (=> b!975130 (=> (not res!652883) (not e!549616))))

(declare-datatypes ((V!34821 0))(
  ( (V!34822 (val!11240 Int)) )
))
(declare-datatypes ((ValueCell!10708 0))(
  ( (ValueCellFull!10708 (v!13799 V!34821)) (EmptyCell!10708) )
))
(declare-datatypes ((array!60775 0))(
  ( (array!60776 (arr!29247 (Array (_ BitVec 32) ValueCell!10708)) (size!29727 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60775)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975130 (= res!652883 (and (= (size!29727 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29726 _keys!1717) (size!29727 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975131 () Bool)

(declare-fun e!549615 () Bool)

(declare-fun tp_is_empty!22379 () Bool)

(assert (=> b!975131 (= e!549615 tp_is_empty!22379)))

(declare-fun res!652884 () Bool)

(assert (=> start!83516 (=> (not res!652884) (not e!549616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83516 (= res!652884 (validMask!0 mask!2147))))

(assert (=> start!83516 e!549616))

(assert (=> start!83516 true))

(declare-fun e!549614 () Bool)

(declare-fun array_inv!22513 (array!60775) Bool)

(assert (=> start!83516 (and (array_inv!22513 _values!1425) e!549614)))

(assert (=> start!83516 tp_is_empty!22379))

(assert (=> start!83516 tp!67713))

(declare-fun array_inv!22514 (array!60773) Bool)

(assert (=> start!83516 (array_inv!22514 _keys!1717)))

(declare-fun b!975132 () Bool)

(assert (=> b!975132 (= e!549616 false)))

(declare-datatypes ((tuple2!14550 0))(
  ( (tuple2!14551 (_1!7285 (_ BitVec 64)) (_2!7285 V!34821)) )
))
(declare-datatypes ((List!20424 0))(
  ( (Nil!20421) (Cons!20420 (h!21582 tuple2!14550) (t!28909 List!20424)) )
))
(declare-datatypes ((ListLongMap!13261 0))(
  ( (ListLongMap!13262 (toList!6646 List!20424)) )
))
(declare-fun lt!432793 () ListLongMap!13261)

(declare-fun zeroValue!1367 () V!34821)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34821)

(declare-fun getCurrentListMap!3831 (array!60773 array!60775 (_ BitVec 32) (_ BitVec 32) V!34821 V!34821 (_ BitVec 32) Int) ListLongMap!13261)

(assert (=> b!975132 (= lt!432793 (getCurrentListMap!3831 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975133 () Bool)

(declare-fun res!652885 () Bool)

(assert (=> b!975133 (=> (not res!652885) (not e!549616))))

(assert (=> b!975133 (= res!652885 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29726 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29726 _keys!1717))))))

(declare-fun b!975134 () Bool)

(declare-fun e!549617 () Bool)

(assert (=> b!975134 (= e!549617 tp_is_empty!22379)))

(declare-fun mapNonEmpty!35578 () Bool)

(declare-fun tp!67714 () Bool)

(assert (=> mapNonEmpty!35578 (= mapRes!35578 (and tp!67714 e!549615))))

(declare-fun mapKey!35578 () (_ BitVec 32))

(declare-fun mapValue!35578 () ValueCell!10708)

(declare-fun mapRest!35578 () (Array (_ BitVec 32) ValueCell!10708))

(assert (=> mapNonEmpty!35578 (= (arr!29247 _values!1425) (store mapRest!35578 mapKey!35578 mapValue!35578))))

(declare-fun b!975135 () Bool)

(declare-fun res!652882 () Bool)

(assert (=> b!975135 (=> (not res!652882) (not e!549616))))

(declare-fun contains!5679 (ListLongMap!13261 (_ BitVec 64)) Bool)

(assert (=> b!975135 (= res!652882 (contains!5679 (getCurrentListMap!3831 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29246 _keys!1717) i!822)))))

(declare-fun b!975136 () Bool)

(assert (=> b!975136 (= e!549614 (and e!549617 mapRes!35578))))

(declare-fun condMapEmpty!35578 () Bool)

(declare-fun mapDefault!35578 () ValueCell!10708)

