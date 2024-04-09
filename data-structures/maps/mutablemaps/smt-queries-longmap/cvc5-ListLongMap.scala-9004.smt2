; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108820 () Bool)

(assert start!108820)

(declare-fun b_free!28297 () Bool)

(declare-fun b_next!28297 () Bool)

(assert (=> start!108820 (= b_free!28297 (not b_next!28297))))

(declare-fun tp!100007 () Bool)

(declare-fun b_and!46373 () Bool)

(assert (=> start!108820 (= tp!100007 b_and!46373)))

(declare-fun b!1284498 () Bool)

(declare-fun res!853390 () Bool)

(declare-fun e!733765 () Bool)

(assert (=> b!1284498 (=> (not res!853390) (not e!733765))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84889 0))(
  ( (array!84890 (arr!40942 (Array (_ BitVec 32) (_ BitVec 64))) (size!41493 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84889)

(declare-datatypes ((V!50353 0))(
  ( (V!50354 (val!17043 Int)) )
))
(declare-datatypes ((ValueCell!16070 0))(
  ( (ValueCellFull!16070 (v!19643 V!50353)) (EmptyCell!16070) )
))
(declare-datatypes ((array!84891 0))(
  ( (array!84892 (arr!40943 (Array (_ BitVec 32) ValueCell!16070)) (size!41494 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84891)

(assert (=> b!1284498 (= res!853390 (and (= (size!41494 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41493 _keys!1741) (size!41494 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284499 () Bool)

(declare-fun e!733764 () Bool)

(declare-fun tp_is_empty!33937 () Bool)

(assert (=> b!1284499 (= e!733764 tp_is_empty!33937)))

(declare-fun res!853388 () Bool)

(assert (=> start!108820 (=> (not res!853388) (not e!733765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108820 (= res!853388 (validMask!0 mask!2175))))

(assert (=> start!108820 e!733765))

(assert (=> start!108820 tp_is_empty!33937))

(assert (=> start!108820 true))

(declare-fun e!733763 () Bool)

(declare-fun array_inv!31031 (array!84891) Bool)

(assert (=> start!108820 (and (array_inv!31031 _values!1445) e!733763)))

(declare-fun array_inv!31032 (array!84889) Bool)

(assert (=> start!108820 (array_inv!31032 _keys!1741)))

(assert (=> start!108820 tp!100007))

(declare-fun b!1284500 () Bool)

(declare-fun res!853389 () Bool)

(assert (=> b!1284500 (=> (not res!853389) (not e!733765))))

(declare-datatypes ((List!29183 0))(
  ( (Nil!29180) (Cons!29179 (h!30388 (_ BitVec 64)) (t!42734 List!29183)) )
))
(declare-fun arrayNoDuplicates!0 (array!84889 (_ BitVec 32) List!29183) Bool)

(assert (=> b!1284500 (= res!853389 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29180))))

(declare-fun mapIsEmpty!52463 () Bool)

(declare-fun mapRes!52463 () Bool)

(assert (=> mapIsEmpty!52463 mapRes!52463))

(declare-fun b!1284501 () Bool)

(declare-fun e!733762 () Bool)

(assert (=> b!1284501 (= e!733763 (and e!733762 mapRes!52463))))

(declare-fun condMapEmpty!52463 () Bool)

(declare-fun mapDefault!52463 () ValueCell!16070)

