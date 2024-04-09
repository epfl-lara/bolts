; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82940 () Bool)

(assert start!82940)

(declare-fun b_free!19039 () Bool)

(declare-fun b_next!19039 () Bool)

(assert (=> start!82940 (= b_free!19039 (not b_next!19039))))

(declare-fun tp!66246 () Bool)

(declare-fun b_and!30545 () Bool)

(assert (=> start!82940 (= tp!66246 b_and!30545)))

(declare-fun b!967332 () Bool)

(declare-fun e!545254 () Bool)

(declare-fun tp_is_empty!21847 () Bool)

(assert (=> b!967332 (= e!545254 tp_is_empty!21847)))

(declare-fun b!967333 () Bool)

(declare-fun e!545252 () Bool)

(assert (=> b!967333 (= e!545252 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59749 0))(
  ( (array!59750 (arr!28739 (Array (_ BitVec 32) (_ BitVec 64))) (size!29219 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59749)

(declare-datatypes ((V!34113 0))(
  ( (V!34114 (val!10974 Int)) )
))
(declare-fun minValue!1342 () V!34113)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10442 0))(
  ( (ValueCellFull!10442 (v!13532 V!34113)) (EmptyCell!10442) )
))
(declare-datatypes ((array!59751 0))(
  ( (array!59752 (arr!28740 (Array (_ BitVec 32) ValueCell!10442)) (size!29220 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59751)

(declare-fun zeroValue!1342 () V!34113)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14204 0))(
  ( (tuple2!14205 (_1!7112 (_ BitVec 64)) (_2!7112 V!34113)) )
))
(declare-datatypes ((List!20077 0))(
  ( (Nil!20074) (Cons!20073 (h!21235 tuple2!14204) (t!28448 List!20077)) )
))
(declare-datatypes ((ListLongMap!12915 0))(
  ( (ListLongMap!12916 (toList!6473 List!20077)) )
))
(declare-fun contains!5524 (ListLongMap!12915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3658 (array!59749 array!59751 (_ BitVec 32) (_ BitVec 32) V!34113 V!34113 (_ BitVec 32) Int) ListLongMap!12915)

(assert (=> b!967333 (contains!5524 (getCurrentListMap!3658 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28739 _keys!1686) i!803))))

(declare-datatypes ((Unit!32297 0))(
  ( (Unit!32298) )
))
(declare-fun lt!431370 () Unit!32297)

(declare-fun lemmaInListMapFromThenInFromMinusOne!55 (array!59749 array!59751 (_ BitVec 32) (_ BitVec 32) V!34113 V!34113 (_ BitVec 32) (_ BitVec 32) Int) Unit!32297)

(assert (=> b!967333 (= lt!431370 (lemmaInListMapFromThenInFromMinusOne!55 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967334 () Bool)

(declare-fun res!647663 () Bool)

(assert (=> b!967334 (=> (not res!647663) (not e!545252))))

(assert (=> b!967334 (= res!647663 (contains!5524 (getCurrentListMap!3658 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28739 _keys!1686) i!803)))))

(declare-fun b!967335 () Bool)

(declare-fun res!647657 () Bool)

(assert (=> b!967335 (=> (not res!647657) (not e!545252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967335 (= res!647657 (validKeyInArray!0 (select (arr!28739 _keys!1686) i!803)))))

(declare-fun b!967336 () Bool)

(declare-fun res!647662 () Bool)

(assert (=> b!967336 (=> (not res!647662) (not e!545252))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967336 (= res!647662 (bvsgt from!2084 newFrom!159))))

(declare-fun mapNonEmpty!34765 () Bool)

(declare-fun mapRes!34765 () Bool)

(declare-fun tp!66247 () Bool)

(declare-fun e!545253 () Bool)

(assert (=> mapNonEmpty!34765 (= mapRes!34765 (and tp!66247 e!545253))))

(declare-fun mapKey!34765 () (_ BitVec 32))

(declare-fun mapValue!34765 () ValueCell!10442)

(declare-fun mapRest!34765 () (Array (_ BitVec 32) ValueCell!10442))

(assert (=> mapNonEmpty!34765 (= (arr!28740 _values!1400) (store mapRest!34765 mapKey!34765 mapValue!34765))))

(declare-fun b!967337 () Bool)

(declare-fun res!647659 () Bool)

(assert (=> b!967337 (=> (not res!647659) (not e!545252))))

(assert (=> b!967337 (= res!647659 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29219 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29219 _keys!1686))))))

(declare-fun mapIsEmpty!34765 () Bool)

(assert (=> mapIsEmpty!34765 mapRes!34765))

(declare-fun b!967338 () Bool)

(declare-fun e!545250 () Bool)

(assert (=> b!967338 (= e!545250 (and e!545254 mapRes!34765))))

(declare-fun condMapEmpty!34765 () Bool)

(declare-fun mapDefault!34765 () ValueCell!10442)

