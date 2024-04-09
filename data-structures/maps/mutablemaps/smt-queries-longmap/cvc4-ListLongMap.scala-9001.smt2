; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108806 () Bool)

(assert start!108806)

(declare-fun b_free!28283 () Bool)

(declare-fun b_next!28283 () Bool)

(assert (=> start!108806 (= b_free!28283 (not b_next!28283))))

(declare-fun tp!99966 () Bool)

(declare-fun b_and!46359 () Bool)

(assert (=> start!108806 (= tp!99966 b_and!46359)))

(declare-fun res!853284 () Bool)

(declare-fun e!733659 () Bool)

(assert (=> start!108806 (=> (not res!853284) (not e!733659))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108806 (= res!853284 (validMask!0 mask!2175))))

(assert (=> start!108806 e!733659))

(declare-fun tp_is_empty!33923 () Bool)

(assert (=> start!108806 tp_is_empty!33923))

(assert (=> start!108806 true))

(declare-datatypes ((V!50333 0))(
  ( (V!50334 (val!17036 Int)) )
))
(declare-datatypes ((ValueCell!16063 0))(
  ( (ValueCellFull!16063 (v!19636 V!50333)) (EmptyCell!16063) )
))
(declare-datatypes ((array!84861 0))(
  ( (array!84862 (arr!40928 (Array (_ BitVec 32) ValueCell!16063)) (size!41479 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84861)

(declare-fun e!733660 () Bool)

(declare-fun array_inv!31023 (array!84861) Bool)

(assert (=> start!108806 (and (array_inv!31023 _values!1445) e!733660)))

(declare-datatypes ((array!84863 0))(
  ( (array!84864 (arr!40929 (Array (_ BitVec 32) (_ BitVec 64))) (size!41480 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84863)

(declare-fun array_inv!31024 (array!84863) Bool)

(assert (=> start!108806 (array_inv!31024 _keys!1741)))

(assert (=> start!108806 tp!99966))

(declare-fun mapNonEmpty!52442 () Bool)

(declare-fun mapRes!52442 () Bool)

(declare-fun tp!99965 () Bool)

(declare-fun e!733657 () Bool)

(assert (=> mapNonEmpty!52442 (= mapRes!52442 (and tp!99965 e!733657))))

(declare-fun mapRest!52442 () (Array (_ BitVec 32) ValueCell!16063))

(declare-fun mapValue!52442 () ValueCell!16063)

(declare-fun mapKey!52442 () (_ BitVec 32))

(assert (=> mapNonEmpty!52442 (= (arr!40928 _values!1445) (store mapRest!52442 mapKey!52442 mapValue!52442))))

(declare-fun b!1284330 () Bool)

(declare-fun res!853285 () Bool)

(assert (=> b!1284330 (=> (not res!853285) (not e!733659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84863 (_ BitVec 32)) Bool)

(assert (=> b!1284330 (= res!853285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284331 () Bool)

(declare-fun res!853283 () Bool)

(assert (=> b!1284331 (=> (not res!853283) (not e!733659))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284331 (= res!853283 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41480 _keys!1741))))))

(declare-fun b!1284332 () Bool)

(assert (=> b!1284332 (= e!733657 tp_is_empty!33923)))

(declare-fun b!1284333 () Bool)

(assert (=> b!1284333 (= e!733659 false)))

(declare-fun minValue!1387 () V!50333)

(declare-fun zeroValue!1387 () V!50333)

(declare-fun lt!576747 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21964 0))(
  ( (tuple2!21965 (_1!10992 (_ BitVec 64)) (_2!10992 V!50333)) )
))
(declare-datatypes ((List!29173 0))(
  ( (Nil!29170) (Cons!29169 (h!30378 tuple2!21964) (t!42724 List!29173)) )
))
(declare-datatypes ((ListLongMap!19633 0))(
  ( (ListLongMap!19634 (toList!9832 List!29173)) )
))
(declare-fun contains!7887 (ListLongMap!19633 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4850 (array!84863 array!84861 (_ BitVec 32) (_ BitVec 32) V!50333 V!50333 (_ BitVec 32) Int) ListLongMap!19633)

(assert (=> b!1284333 (= lt!576747 (contains!7887 (getCurrentListMap!4850 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284334 () Bool)

(declare-fun e!733658 () Bool)

(assert (=> b!1284334 (= e!733658 tp_is_empty!33923)))

(declare-fun b!1284335 () Bool)

(assert (=> b!1284335 (= e!733660 (and e!733658 mapRes!52442))))

(declare-fun condMapEmpty!52442 () Bool)

(declare-fun mapDefault!52442 () ValueCell!16063)

