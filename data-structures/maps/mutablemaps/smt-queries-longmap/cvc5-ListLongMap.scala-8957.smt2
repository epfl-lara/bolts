; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108504 () Bool)

(assert start!108504)

(declare-fun b_free!28015 () Bool)

(declare-fun b_next!28015 () Bool)

(assert (=> start!108504 (= b_free!28015 (not b_next!28015))))

(declare-fun tp!99156 () Bool)

(declare-fun b_and!46085 () Bool)

(assert (=> start!108504 (= tp!99156 b_and!46085)))

(declare-fun b!1280095 () Bool)

(declare-fun e!731453 () Bool)

(assert (=> b!1280095 (= e!731453 false)))

(declare-datatypes ((V!49977 0))(
  ( (V!49978 (val!16902 Int)) )
))
(declare-fun minValue!1387 () V!49977)

(declare-fun zeroValue!1387 () V!49977)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15929 0))(
  ( (ValueCellFull!15929 (v!19500 V!49977)) (EmptyCell!15929) )
))
(declare-datatypes ((array!84341 0))(
  ( (array!84342 (arr!40670 (Array (_ BitVec 32) ValueCell!15929)) (size!41221 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84341)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576031 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84343 0))(
  ( (array!84344 (arr!40671 (Array (_ BitVec 32) (_ BitVec 64))) (size!41222 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84343)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21778 0))(
  ( (tuple2!21779 (_1!10899 (_ BitVec 64)) (_2!10899 V!49977)) )
))
(declare-datatypes ((List!28988 0))(
  ( (Nil!28985) (Cons!28984 (h!30193 tuple2!21778) (t!42535 List!28988)) )
))
(declare-datatypes ((ListLongMap!19447 0))(
  ( (ListLongMap!19448 (toList!9739 List!28988)) )
))
(declare-fun contains!7792 (ListLongMap!19447 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4759 (array!84343 array!84341 (_ BitVec 32) (_ BitVec 32) V!49977 V!49977 (_ BitVec 32) Int) ListLongMap!19447)

(assert (=> b!1280095 (= lt!576031 (contains!7792 (getCurrentListMap!4759 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280096 () Bool)

(declare-fun e!731451 () Bool)

(declare-fun tp_is_empty!33655 () Bool)

(assert (=> b!1280096 (= e!731451 tp_is_empty!33655)))

(declare-fun b!1280097 () Bool)

(declare-fun e!731454 () Bool)

(assert (=> b!1280097 (= e!731454 tp_is_empty!33655)))

(declare-fun b!1280098 () Bool)

(declare-fun res!850402 () Bool)

(assert (=> b!1280098 (=> (not res!850402) (not e!731453))))

(assert (=> b!1280098 (= res!850402 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41222 _keys!1741))))))

(declare-fun mapIsEmpty!52034 () Bool)

(declare-fun mapRes!52034 () Bool)

(assert (=> mapIsEmpty!52034 mapRes!52034))

(declare-fun mapNonEmpty!52034 () Bool)

(declare-fun tp!99155 () Bool)

(assert (=> mapNonEmpty!52034 (= mapRes!52034 (and tp!99155 e!731454))))

(declare-fun mapValue!52034 () ValueCell!15929)

(declare-fun mapRest!52034 () (Array (_ BitVec 32) ValueCell!15929))

(declare-fun mapKey!52034 () (_ BitVec 32))

(assert (=> mapNonEmpty!52034 (= (arr!40670 _values!1445) (store mapRest!52034 mapKey!52034 mapValue!52034))))

(declare-fun b!1280099 () Bool)

(declare-fun res!850403 () Bool)

(assert (=> b!1280099 (=> (not res!850403) (not e!731453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84343 (_ BitVec 32)) Bool)

(assert (=> b!1280099 (= res!850403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280100 () Bool)

(declare-fun res!850406 () Bool)

(assert (=> b!1280100 (=> (not res!850406) (not e!731453))))

(declare-datatypes ((List!28989 0))(
  ( (Nil!28986) (Cons!28985 (h!30194 (_ BitVec 64)) (t!42536 List!28989)) )
))
(declare-fun arrayNoDuplicates!0 (array!84343 (_ BitVec 32) List!28989) Bool)

(assert (=> b!1280100 (= res!850406 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28986))))

(declare-fun res!850405 () Bool)

(assert (=> start!108504 (=> (not res!850405) (not e!731453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108504 (= res!850405 (validMask!0 mask!2175))))

(assert (=> start!108504 e!731453))

(assert (=> start!108504 tp_is_empty!33655))

(assert (=> start!108504 true))

(declare-fun e!731455 () Bool)

(declare-fun array_inv!30859 (array!84341) Bool)

(assert (=> start!108504 (and (array_inv!30859 _values!1445) e!731455)))

(declare-fun array_inv!30860 (array!84343) Bool)

(assert (=> start!108504 (array_inv!30860 _keys!1741)))

(assert (=> start!108504 tp!99156))

(declare-fun b!1280101 () Bool)

(assert (=> b!1280101 (= e!731455 (and e!731451 mapRes!52034))))

(declare-fun condMapEmpty!52034 () Bool)

(declare-fun mapDefault!52034 () ValueCell!15929)

