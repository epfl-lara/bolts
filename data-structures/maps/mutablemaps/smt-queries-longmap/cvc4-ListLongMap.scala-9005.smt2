; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108830 () Bool)

(assert start!108830)

(declare-fun b_free!28307 () Bool)

(declare-fun b_next!28307 () Bool)

(assert (=> start!108830 (= b_free!28307 (not b_next!28307))))

(declare-fun tp!100038 () Bool)

(declare-fun b_and!46383 () Bool)

(assert (=> start!108830 (= tp!100038 b_and!46383)))

(declare-fun b!1284618 () Bool)

(declare-fun res!853465 () Bool)

(declare-fun e!733839 () Bool)

(assert (=> b!1284618 (=> (not res!853465) (not e!733839))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84909 0))(
  ( (array!84910 (arr!40952 (Array (_ BitVec 32) (_ BitVec 64))) (size!41503 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84909)

(assert (=> b!1284618 (= res!853465 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41503 _keys!1741))))))

(declare-fun b!1284619 () Bool)

(declare-fun res!853463 () Bool)

(assert (=> b!1284619 (=> (not res!853463) (not e!733839))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84909 (_ BitVec 32)) Bool)

(assert (=> b!1284619 (= res!853463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284620 () Bool)

(declare-fun res!853466 () Bool)

(assert (=> b!1284620 (=> (not res!853466) (not e!733839))))

(declare-datatypes ((List!29191 0))(
  ( (Nil!29188) (Cons!29187 (h!30396 (_ BitVec 64)) (t!42742 List!29191)) )
))
(declare-fun arrayNoDuplicates!0 (array!84909 (_ BitVec 32) List!29191) Bool)

(assert (=> b!1284620 (= res!853466 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29188))))

(declare-fun b!1284621 () Bool)

(declare-fun e!733837 () Bool)

(declare-fun tp_is_empty!33947 () Bool)

(assert (=> b!1284621 (= e!733837 tp_is_empty!33947)))

(declare-fun mapNonEmpty!52478 () Bool)

(declare-fun mapRes!52478 () Bool)

(declare-fun tp!100037 () Bool)

(declare-fun e!733836 () Bool)

(assert (=> mapNonEmpty!52478 (= mapRes!52478 (and tp!100037 e!733836))))

(declare-datatypes ((V!50365 0))(
  ( (V!50366 (val!17048 Int)) )
))
(declare-datatypes ((ValueCell!16075 0))(
  ( (ValueCellFull!16075 (v!19648 V!50365)) (EmptyCell!16075) )
))
(declare-fun mapRest!52478 () (Array (_ BitVec 32) ValueCell!16075))

(declare-datatypes ((array!84911 0))(
  ( (array!84912 (arr!40953 (Array (_ BitVec 32) ValueCell!16075)) (size!41504 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84911)

(declare-fun mapKey!52478 () (_ BitVec 32))

(declare-fun mapValue!52478 () ValueCell!16075)

(assert (=> mapNonEmpty!52478 (= (arr!40953 _values!1445) (store mapRest!52478 mapKey!52478 mapValue!52478))))

(declare-fun res!853467 () Bool)

(assert (=> start!108830 (=> (not res!853467) (not e!733839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108830 (= res!853467 (validMask!0 mask!2175))))

(assert (=> start!108830 e!733839))

(assert (=> start!108830 tp_is_empty!33947))

(assert (=> start!108830 true))

(declare-fun e!733840 () Bool)

(declare-fun array_inv!31041 (array!84911) Bool)

(assert (=> start!108830 (and (array_inv!31041 _values!1445) e!733840)))

(declare-fun array_inv!31042 (array!84909) Bool)

(assert (=> start!108830 (array_inv!31042 _keys!1741)))

(assert (=> start!108830 tp!100038))

(declare-fun b!1284622 () Bool)

(assert (=> b!1284622 (= e!733840 (and e!733837 mapRes!52478))))

(declare-fun condMapEmpty!52478 () Bool)

(declare-fun mapDefault!52478 () ValueCell!16075)

