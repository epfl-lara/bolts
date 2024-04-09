; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4192 () Bool)

(assert start!4192)

(declare-fun b_free!1099 () Bool)

(declare-fun b_next!1099 () Bool)

(assert (=> start!4192 (= b_free!1099 (not b_next!1099))))

(declare-fun tp!4716 () Bool)

(declare-fun b_and!1911 () Bool)

(assert (=> start!4192 (= tp!4716 b_and!1911)))

(declare-fun mapNonEmpty!1708 () Bool)

(declare-fun mapRes!1708 () Bool)

(declare-fun tp!4717 () Bool)

(declare-fun e!20324 () Bool)

(assert (=> mapNonEmpty!1708 (= mapRes!1708 (and tp!4717 e!20324))))

(declare-datatypes ((V!1763 0))(
  ( (V!1764 (val!753 Int)) )
))
(declare-datatypes ((ValueCell!527 0))(
  ( (ValueCellFull!527 (v!1842 V!1763)) (EmptyCell!527) )
))
(declare-datatypes ((array!2113 0))(
  ( (array!2114 (arr!1010 (Array (_ BitVec 32) ValueCell!527)) (size!1111 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2113)

(declare-fun mapKey!1708 () (_ BitVec 32))

(declare-fun mapValue!1708 () ValueCell!527)

(declare-fun mapRest!1708 () (Array (_ BitVec 32) ValueCell!527))

(assert (=> mapNonEmpty!1708 (= (arr!1010 _values!1501) (store mapRest!1708 mapKey!1708 mapValue!1708))))

(declare-fun b!31886 () Bool)

(declare-fun res!19336 () Bool)

(declare-fun e!20323 () Bool)

(assert (=> b!31886 (=> (not res!19336) (not e!20323))))

(declare-datatypes ((array!2115 0))(
  ( (array!2116 (arr!1011 (Array (_ BitVec 32) (_ BitVec 64))) (size!1112 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2115)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2115 (_ BitVec 32)) Bool)

(assert (=> b!31886 (= res!19336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31887 () Bool)

(declare-fun res!19332 () Bool)

(assert (=> b!31887 (=> (not res!19332) (not e!20323))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31887 (= res!19332 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31888 () Bool)

(declare-fun tp_is_empty!1453 () Bool)

(assert (=> b!31888 (= e!20324 tp_is_empty!1453)))

(declare-fun b!31889 () Bool)

(declare-fun res!19330 () Bool)

(assert (=> b!31889 (=> (not res!19330) (not e!20323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31889 (= res!19330 (validKeyInArray!0 k!1304))))

(declare-fun b!31890 () Bool)

(declare-fun res!19333 () Bool)

(assert (=> b!31890 (=> (not res!19333) (not e!20323))))

(declare-datatypes ((List!823 0))(
  ( (Nil!820) (Cons!819 (h!1386 (_ BitVec 64)) (t!3518 List!823)) )
))
(declare-fun arrayNoDuplicates!0 (array!2115 (_ BitVec 32) List!823) Bool)

(assert (=> b!31890 (= res!19333 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!820))))

(declare-fun b!31892 () Bool)

(declare-fun res!19334 () Bool)

(assert (=> b!31892 (=> (not res!19334) (not e!20323))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1763)

(declare-fun minValue!1443 () V!1763)

(declare-datatypes ((tuple2!1220 0))(
  ( (tuple2!1221 (_1!620 (_ BitVec 64)) (_2!620 V!1763)) )
))
(declare-datatypes ((List!824 0))(
  ( (Nil!821) (Cons!820 (h!1387 tuple2!1220) (t!3519 List!824)) )
))
(declare-datatypes ((ListLongMap!801 0))(
  ( (ListLongMap!802 (toList!416 List!824)) )
))
(declare-fun contains!353 (ListLongMap!801 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!241 (array!2115 array!2113 (_ BitVec 32) (_ BitVec 32) V!1763 V!1763 (_ BitVec 32) Int) ListLongMap!801)

(assert (=> b!31892 (= res!19334 (not (contains!353 (getCurrentListMap!241 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31893 () Bool)

(declare-fun res!19331 () Bool)

(assert (=> b!31893 (=> (not res!19331) (not e!20323))))

(assert (=> b!31893 (= res!19331 (and (= (size!1111 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1112 _keys!1833) (size!1111 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1708 () Bool)

(assert (=> mapIsEmpty!1708 mapRes!1708))

(declare-fun b!31894 () Bool)

(declare-fun e!20322 () Bool)

(declare-fun e!20325 () Bool)

(assert (=> b!31894 (= e!20322 (and e!20325 mapRes!1708))))

(declare-fun condMapEmpty!1708 () Bool)

(declare-fun mapDefault!1708 () ValueCell!527)

