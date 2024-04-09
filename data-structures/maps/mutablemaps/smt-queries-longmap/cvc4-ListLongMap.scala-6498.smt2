; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82860 () Bool)

(assert start!82860)

(declare-fun b_free!18959 () Bool)

(declare-fun b_next!18959 () Bool)

(assert (=> start!82860 (= b_free!18959 (not b_next!18959))))

(declare-fun tp!66006 () Bool)

(declare-fun b_and!30465 () Bool)

(assert (=> start!82860 (= tp!66006 b_and!30465)))

(declare-fun b!966114 () Bool)

(declare-fun res!646798 () Bool)

(declare-fun e!544651 () Bool)

(assert (=> b!966114 (=> (not res!646798) (not e!544651))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34005 0))(
  ( (V!34006 (val!10934 Int)) )
))
(declare-datatypes ((ValueCell!10402 0))(
  ( (ValueCellFull!10402 (v!13492 V!34005)) (EmptyCell!10402) )
))
(declare-datatypes ((array!59597 0))(
  ( (array!59598 (arr!28663 (Array (_ BitVec 32) ValueCell!10402)) (size!29143 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59597)

(declare-datatypes ((array!59599 0))(
  ( (array!59600 (arr!28664 (Array (_ BitVec 32) (_ BitVec 64))) (size!29144 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59599)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966114 (= res!646798 (and (= (size!29143 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29144 _keys!1686) (size!29143 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966115 () Bool)

(declare-fun e!544653 () Bool)

(declare-fun tp_is_empty!21767 () Bool)

(assert (=> b!966115 (= e!544653 tp_is_empty!21767)))

(declare-fun b!966116 () Bool)

(declare-fun res!646801 () Bool)

(assert (=> b!966116 (=> (not res!646801) (not e!544651))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966116 (= res!646801 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29144 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29144 _keys!1686))))))

(declare-fun b!966117 () Bool)

(declare-fun e!544650 () Bool)

(assert (=> b!966117 (= e!544650 tp_is_empty!21767)))

(declare-fun mapIsEmpty!34645 () Bool)

(declare-fun mapRes!34645 () Bool)

(assert (=> mapIsEmpty!34645 mapRes!34645))

(declare-fun mapNonEmpty!34645 () Bool)

(declare-fun tp!66007 () Bool)

(assert (=> mapNonEmpty!34645 (= mapRes!34645 (and tp!66007 e!544650))))

(declare-fun mapRest!34645 () (Array (_ BitVec 32) ValueCell!10402))

(declare-fun mapKey!34645 () (_ BitVec 32))

(declare-fun mapValue!34645 () ValueCell!10402)

(assert (=> mapNonEmpty!34645 (= (arr!28663 _values!1400) (store mapRest!34645 mapKey!34645 mapValue!34645))))

(declare-fun b!966118 () Bool)

(declare-fun res!646797 () Bool)

(assert (=> b!966118 (=> (not res!646797) (not e!544651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966118 (= res!646797 (validKeyInArray!0 (select (arr!28664 _keys!1686) i!803)))))

(declare-fun res!646799 () Bool)

(assert (=> start!82860 (=> (not res!646799) (not e!544651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82860 (= res!646799 (validMask!0 mask!2110))))

(assert (=> start!82860 e!544651))

(assert (=> start!82860 true))

(declare-fun e!544654 () Bool)

(declare-fun array_inv!22101 (array!59597) Bool)

(assert (=> start!82860 (and (array_inv!22101 _values!1400) e!544654)))

(declare-fun array_inv!22102 (array!59599) Bool)

(assert (=> start!82860 (array_inv!22102 _keys!1686)))

(assert (=> start!82860 tp!66006))

(assert (=> start!82860 tp_is_empty!21767))

(declare-fun b!966113 () Bool)

(assert (=> b!966113 (= e!544651 false)))

(declare-fun lt!431259 () Bool)

(declare-fun minValue!1342 () V!34005)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34005)

(declare-datatypes ((tuple2!14142 0))(
  ( (tuple2!14143 (_1!7081 (_ BitVec 64)) (_2!7081 V!34005)) )
))
(declare-datatypes ((List!20019 0))(
  ( (Nil!20016) (Cons!20015 (h!21177 tuple2!14142) (t!28390 List!20019)) )
))
(declare-datatypes ((ListLongMap!12853 0))(
  ( (ListLongMap!12854 (toList!6442 List!20019)) )
))
(declare-fun contains!5493 (ListLongMap!12853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3627 (array!59599 array!59597 (_ BitVec 32) (_ BitVec 32) V!34005 V!34005 (_ BitVec 32) Int) ListLongMap!12853)

(assert (=> b!966113 (= lt!431259 (contains!5493 (getCurrentListMap!3627 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28664 _keys!1686) i!803)))))

(declare-fun b!966119 () Bool)

(assert (=> b!966119 (= e!544654 (and e!544653 mapRes!34645))))

(declare-fun condMapEmpty!34645 () Bool)

(declare-fun mapDefault!34645 () ValueCell!10402)

