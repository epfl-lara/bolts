; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4156 () Bool)

(assert start!4156)

(declare-fun b_free!1063 () Bool)

(declare-fun b_next!1063 () Bool)

(assert (=> start!4156 (= b_free!1063 (not b_next!1063))))

(declare-fun tp!4609 () Bool)

(declare-fun b_and!1875 () Bool)

(assert (=> start!4156 (= tp!4609 b_and!1875)))

(declare-fun b!31378 () Bool)

(declare-fun res!18987 () Bool)

(declare-fun e!20054 () Bool)

(assert (=> b!31378 (=> (not res!18987) (not e!20054))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31378 (= res!18987 (validKeyInArray!0 k!1304))))

(declare-fun res!18985 () Bool)

(assert (=> start!4156 (=> (not res!18985) (not e!20054))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4156 (= res!18985 (validMask!0 mask!2294))))

(assert (=> start!4156 e!20054))

(assert (=> start!4156 true))

(assert (=> start!4156 tp!4609))

(declare-datatypes ((V!1715 0))(
  ( (V!1716 (val!735 Int)) )
))
(declare-datatypes ((ValueCell!509 0))(
  ( (ValueCellFull!509 (v!1824 V!1715)) (EmptyCell!509) )
))
(declare-datatypes ((array!2041 0))(
  ( (array!2042 (arr!974 (Array (_ BitVec 32) ValueCell!509)) (size!1075 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2041)

(declare-fun e!20052 () Bool)

(declare-fun array_inv!651 (array!2041) Bool)

(assert (=> start!4156 (and (array_inv!651 _values!1501) e!20052)))

(declare-datatypes ((array!2043 0))(
  ( (array!2044 (arr!975 (Array (_ BitVec 32) (_ BitVec 64))) (size!1076 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2043)

(declare-fun array_inv!652 (array!2043) Bool)

(assert (=> start!4156 (array_inv!652 _keys!1833)))

(declare-fun tp_is_empty!1417 () Bool)

(assert (=> start!4156 tp_is_empty!1417))

(declare-fun b!31379 () Bool)

(declare-fun res!18984 () Bool)

(assert (=> b!31379 (=> (not res!18984) (not e!20054))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31379 (= res!18984 (and (= (size!1075 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1076 _keys!1833) (size!1075 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1654 () Bool)

(declare-fun mapRes!1654 () Bool)

(assert (=> mapIsEmpty!1654 mapRes!1654))

(declare-fun b!31380 () Bool)

(declare-fun res!18986 () Bool)

(assert (=> b!31380 (=> (not res!18986) (not e!20054))))

(declare-datatypes ((List!799 0))(
  ( (Nil!796) (Cons!795 (h!1362 (_ BitVec 64)) (t!3494 List!799)) )
))
(declare-fun arrayNoDuplicates!0 (array!2043 (_ BitVec 32) List!799) Bool)

(assert (=> b!31380 (= res!18986 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!796))))

(declare-fun b!31381 () Bool)

(declare-fun e!20053 () Bool)

(assert (=> b!31381 (= e!20053 tp_is_empty!1417)))

(declare-fun b!31382 () Bool)

(declare-fun e!20055 () Bool)

(assert (=> b!31382 (= e!20055 tp_is_empty!1417)))

(declare-fun b!31383 () Bool)

(assert (=> b!31383 (= e!20054 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11565 () Bool)

(declare-fun zeroValue!1443 () V!1715)

(declare-fun minValue!1443 () V!1715)

(declare-datatypes ((tuple2!1196 0))(
  ( (tuple2!1197 (_1!608 (_ BitVec 64)) (_2!608 V!1715)) )
))
(declare-datatypes ((List!800 0))(
  ( (Nil!797) (Cons!796 (h!1363 tuple2!1196) (t!3495 List!800)) )
))
(declare-datatypes ((ListLongMap!777 0))(
  ( (ListLongMap!778 (toList!404 List!800)) )
))
(declare-fun contains!341 (ListLongMap!777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!229 (array!2043 array!2041 (_ BitVec 32) (_ BitVec 32) V!1715 V!1715 (_ BitVec 32) Int) ListLongMap!777)

(assert (=> b!31383 (= lt!11565 (contains!341 (getCurrentListMap!229 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun mapNonEmpty!1654 () Bool)

(declare-fun tp!4608 () Bool)

(assert (=> mapNonEmpty!1654 (= mapRes!1654 (and tp!4608 e!20053))))

(declare-fun mapRest!1654 () (Array (_ BitVec 32) ValueCell!509))

(declare-fun mapValue!1654 () ValueCell!509)

(declare-fun mapKey!1654 () (_ BitVec 32))

(assert (=> mapNonEmpty!1654 (= (arr!974 _values!1501) (store mapRest!1654 mapKey!1654 mapValue!1654))))

(declare-fun b!31384 () Bool)

(declare-fun res!18988 () Bool)

(assert (=> b!31384 (=> (not res!18988) (not e!20054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2043 (_ BitVec 32)) Bool)

(assert (=> b!31384 (= res!18988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31385 () Bool)

(assert (=> b!31385 (= e!20052 (and e!20055 mapRes!1654))))

(declare-fun condMapEmpty!1654 () Bool)

(declare-fun mapDefault!1654 () ValueCell!509)

