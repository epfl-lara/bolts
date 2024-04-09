; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3938 () Bool)

(assert start!3938)

(declare-fun b_free!845 () Bool)

(declare-fun b_next!845 () Bool)

(assert (=> start!3938 (= b_free!845 (not b_next!845))))

(declare-fun tp!3955 () Bool)

(declare-fun b_and!1657 () Bool)

(assert (=> start!3938 (= tp!3955 b_and!1657)))

(declare-fun b!28085 () Bool)

(declare-fun res!16674 () Bool)

(declare-fun e!18202 () Bool)

(assert (=> b!28085 (=> (not res!16674) (not e!18202))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1423 0))(
  ( (V!1424 (val!626 Int)) )
))
(declare-datatypes ((ValueCell!400 0))(
  ( (ValueCellFull!400 (v!1715 V!1423)) (EmptyCell!400) )
))
(declare-datatypes ((array!1623 0))(
  ( (array!1624 (arr!765 (Array (_ BitVec 32) ValueCell!400)) (size!866 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1623)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1625 0))(
  ( (array!1626 (arr!766 (Array (_ BitVec 32) (_ BitVec 64))) (size!867 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1625)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1423)

(declare-fun minValue!1443 () V!1423)

(declare-datatypes ((tuple2!1026 0))(
  ( (tuple2!1027 (_1!523 (_ BitVec 64)) (_2!523 V!1423)) )
))
(declare-datatypes ((List!642 0))(
  ( (Nil!639) (Cons!638 (h!1205 tuple2!1026) (t!3337 List!642)) )
))
(declare-datatypes ((ListLongMap!607 0))(
  ( (ListLongMap!608 (toList!319 List!642)) )
))
(declare-fun contains!256 (ListLongMap!607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!147 (array!1625 array!1623 (_ BitVec 32) (_ BitVec 32) V!1423 V!1423 (_ BitVec 32) Int) ListLongMap!607)

(assert (=> b!28085 (= res!16674 (not (contains!256 (getCurrentListMap!147 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1327 () Bool)

(declare-fun mapRes!1327 () Bool)

(assert (=> mapIsEmpty!1327 mapRes!1327))

(declare-fun res!16676 () Bool)

(assert (=> start!3938 (=> (not res!16676) (not e!18202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3938 (= res!16676 (validMask!0 mask!2294))))

(assert (=> start!3938 e!18202))

(assert (=> start!3938 true))

(assert (=> start!3938 tp!3955))

(declare-fun e!18201 () Bool)

(declare-fun array_inv!521 (array!1623) Bool)

(assert (=> start!3938 (and (array_inv!521 _values!1501) e!18201)))

(declare-fun array_inv!522 (array!1625) Bool)

(assert (=> start!3938 (array_inv!522 _keys!1833)))

(declare-fun tp_is_empty!1199 () Bool)

(assert (=> start!3938 tp_is_empty!1199))

(declare-fun b!28086 () Bool)

(assert (=> b!28086 (= e!18202 false)))

(declare-fun lt!10752 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1625 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28086 (= lt!10752 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28087 () Bool)

(declare-fun res!16673 () Bool)

(assert (=> b!28087 (=> (not res!16673) (not e!18202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1625 (_ BitVec 32)) Bool)

(assert (=> b!28087 (= res!16673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28088 () Bool)

(declare-fun res!16677 () Bool)

(assert (=> b!28088 (=> (not res!16677) (not e!18202))))

(declare-datatypes ((List!643 0))(
  ( (Nil!640) (Cons!639 (h!1206 (_ BitVec 64)) (t!3338 List!643)) )
))
(declare-fun arrayNoDuplicates!0 (array!1625 (_ BitVec 32) List!643) Bool)

(assert (=> b!28088 (= res!16677 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!640))))

(declare-fun mapNonEmpty!1327 () Bool)

(declare-fun tp!3954 () Bool)

(declare-fun e!18204 () Bool)

(assert (=> mapNonEmpty!1327 (= mapRes!1327 (and tp!3954 e!18204))))

(declare-fun mapRest!1327 () (Array (_ BitVec 32) ValueCell!400))

(declare-fun mapValue!1327 () ValueCell!400)

(declare-fun mapKey!1327 () (_ BitVec 32))

(assert (=> mapNonEmpty!1327 (= (arr!765 _values!1501) (store mapRest!1327 mapKey!1327 mapValue!1327))))

(declare-fun b!28089 () Bool)

(declare-fun res!16675 () Bool)

(assert (=> b!28089 (=> (not res!16675) (not e!18202))))

(declare-fun arrayContainsKey!0 (array!1625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28089 (= res!16675 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28090 () Bool)

(assert (=> b!28090 (= e!18204 tp_is_empty!1199)))

(declare-fun b!28091 () Bool)

(declare-fun e!18205 () Bool)

(assert (=> b!28091 (= e!18201 (and e!18205 mapRes!1327))))

(declare-fun condMapEmpty!1327 () Bool)

(declare-fun mapDefault!1327 () ValueCell!400)

