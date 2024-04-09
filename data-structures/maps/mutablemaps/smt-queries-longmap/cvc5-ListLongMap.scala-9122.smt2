; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109552 () Bool)

(assert start!109552)

(declare-fun b_free!29005 () Bool)

(declare-fun b_next!29005 () Bool)

(assert (=> start!109552 (= b_free!29005 (not b_next!29005))))

(declare-fun tp!102134 () Bool)

(declare-fun b_and!47105 () Bool)

(assert (=> start!109552 (= tp!102134 b_and!47105)))

(declare-fun b!1296997 () Bool)

(declare-fun res!862052 () Bool)

(declare-fun e!739983 () Bool)

(assert (=> b!1296997 (=> (not res!862052) (not e!739983))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86267 0))(
  ( (array!86268 (arr!41630 (Array (_ BitVec 32) (_ BitVec 64))) (size!42181 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86267)

(assert (=> b!1296997 (= res!862052 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42181 _keys!1741))))))

(declare-fun res!862050 () Bool)

(assert (=> start!109552 (=> (not res!862050) (not e!739983))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109552 (= res!862050 (validMask!0 mask!2175))))

(assert (=> start!109552 e!739983))

(declare-fun tp_is_empty!34645 () Bool)

(assert (=> start!109552 tp_is_empty!34645))

(assert (=> start!109552 true))

(declare-datatypes ((V!51297 0))(
  ( (V!51298 (val!17397 Int)) )
))
(declare-datatypes ((ValueCell!16424 0))(
  ( (ValueCellFull!16424 (v!19998 V!51297)) (EmptyCell!16424) )
))
(declare-datatypes ((array!86269 0))(
  ( (array!86270 (arr!41631 (Array (_ BitVec 32) ValueCell!16424)) (size!42182 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86269)

(declare-fun e!739984 () Bool)

(declare-fun array_inv!31509 (array!86269) Bool)

(assert (=> start!109552 (and (array_inv!31509 _values!1445) e!739984)))

(declare-fun array_inv!31510 (array!86267) Bool)

(assert (=> start!109552 (array_inv!31510 _keys!1741)))

(assert (=> start!109552 tp!102134))

(declare-fun b!1296998 () Bool)

(declare-fun e!739986 () Bool)

(declare-fun mapRes!53528 () Bool)

(assert (=> b!1296998 (= e!739984 (and e!739986 mapRes!53528))))

(declare-fun condMapEmpty!53528 () Bool)

(declare-fun mapDefault!53528 () ValueCell!16424)

