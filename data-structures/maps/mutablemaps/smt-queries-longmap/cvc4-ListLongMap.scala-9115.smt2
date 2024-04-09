; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109514 () Bool)

(assert start!109514)

(declare-fun b_free!28967 () Bool)

(declare-fun b_next!28967 () Bool)

(assert (=> start!109514 (= b_free!28967 (not b_next!28967))))

(declare-fun tp!102020 () Bool)

(declare-fun b_and!47067 () Bool)

(assert (=> start!109514 (= tp!102020 b_and!47067)))

(declare-fun res!861758 () Bool)

(declare-fun e!739698 () Bool)

(assert (=> start!109514 (=> (not res!861758) (not e!739698))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109514 (= res!861758 (validMask!0 mask!2175))))

(assert (=> start!109514 e!739698))

(declare-fun tp_is_empty!34607 () Bool)

(assert (=> start!109514 tp_is_empty!34607))

(assert (=> start!109514 true))

(declare-datatypes ((V!51245 0))(
  ( (V!51246 (val!17378 Int)) )
))
(declare-datatypes ((ValueCell!16405 0))(
  ( (ValueCellFull!16405 (v!19979 V!51245)) (EmptyCell!16405) )
))
(declare-datatypes ((array!86193 0))(
  ( (array!86194 (arr!41593 (Array (_ BitVec 32) ValueCell!16405)) (size!42144 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86193)

(declare-fun e!739701 () Bool)

(declare-fun array_inv!31479 (array!86193) Bool)

(assert (=> start!109514 (and (array_inv!31479 _values!1445) e!739701)))

(declare-datatypes ((array!86195 0))(
  ( (array!86196 (arr!41594 (Array (_ BitVec 32) (_ BitVec 64))) (size!42145 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86195)

(declare-fun array_inv!31480 (array!86195) Bool)

(assert (=> start!109514 (array_inv!31480 _keys!1741)))

(assert (=> start!109514 tp!102020))

(declare-fun b!1296532 () Bool)

(assert (=> b!1296532 (= e!739698 false)))

(declare-fun minValue!1387 () V!51245)

(declare-fun zeroValue!1387 () V!51245)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!580441 () Bool)

(declare-datatypes ((tuple2!22538 0))(
  ( (tuple2!22539 (_1!11279 (_ BitVec 64)) (_2!11279 V!51245)) )
))
(declare-datatypes ((List!29703 0))(
  ( (Nil!29700) (Cons!29699 (h!30908 tuple2!22538) (t!43274 List!29703)) )
))
(declare-datatypes ((ListLongMap!20207 0))(
  ( (ListLongMap!20208 (toList!10119 List!29703)) )
))
(declare-fun contains!8173 (ListLongMap!20207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5093 (array!86195 array!86193 (_ BitVec 32) (_ BitVec 32) V!51245 V!51245 (_ BitVec 32) Int) ListLongMap!20207)

(assert (=> b!1296532 (= lt!580441 (contains!8173 (getCurrentListMap!5093 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296533 () Bool)

(declare-fun res!861757 () Bool)

(assert (=> b!1296533 (=> (not res!861757) (not e!739698))))

(assert (=> b!1296533 (= res!861757 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42145 _keys!1741))))))

(declare-fun b!1296534 () Bool)

(declare-fun res!861756 () Bool)

(assert (=> b!1296534 (=> (not res!861756) (not e!739698))))

(declare-datatypes ((List!29704 0))(
  ( (Nil!29701) (Cons!29700 (h!30909 (_ BitVec 64)) (t!43275 List!29704)) )
))
(declare-fun arrayNoDuplicates!0 (array!86195 (_ BitVec 32) List!29704) Bool)

(assert (=> b!1296534 (= res!861756 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29701))))

(declare-fun b!1296535 () Bool)

(declare-fun e!739700 () Bool)

(declare-fun mapRes!53471 () Bool)

(assert (=> b!1296535 (= e!739701 (and e!739700 mapRes!53471))))

(declare-fun condMapEmpty!53471 () Bool)

(declare-fun mapDefault!53471 () ValueCell!16405)

