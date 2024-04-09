; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110564 () Bool)

(assert start!110564)

(declare-fun b_free!29363 () Bool)

(declare-fun b_next!29363 () Bool)

(assert (=> start!110564 (= b_free!29363 (not b_next!29363))))

(declare-fun tp!103411 () Bool)

(declare-fun b_and!47581 () Bool)

(assert (=> start!110564 (= tp!103411 b_and!47581)))

(declare-fun b!1307394 () Bool)

(declare-fun e!746057 () Bool)

(assert (=> b!1307394 (= e!746057 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87161 0))(
  ( (array!87162 (arr!42056 (Array (_ BitVec 32) (_ BitVec 64))) (size!42607 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87161)

(declare-fun lt!584995 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51893 0))(
  ( (V!51894 (val!17621 Int)) )
))
(declare-fun minValue!1296 () V!51893)

(declare-datatypes ((ValueCell!16648 0))(
  ( (ValueCellFull!16648 (v!20246 V!51893)) (EmptyCell!16648) )
))
(declare-datatypes ((array!87163 0))(
  ( (array!87164 (arr!42057 (Array (_ BitVec 32) ValueCell!16648)) (size!42608 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87163)

(declare-fun zeroValue!1296 () V!51893)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22846 0))(
  ( (tuple2!22847 (_1!11433 (_ BitVec 64)) (_2!11433 V!51893)) )
))
(declare-datatypes ((List!30020 0))(
  ( (Nil!30017) (Cons!30016 (h!31225 tuple2!22846) (t!43633 List!30020)) )
))
(declare-datatypes ((ListLongMap!20515 0))(
  ( (ListLongMap!20516 (toList!10273 List!30020)) )
))
(declare-fun contains!8359 (ListLongMap!20515 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5229 (array!87161 array!87163 (_ BitVec 32) (_ BitVec 32) V!51893 V!51893 (_ BitVec 32) Int) ListLongMap!20515)

(assert (=> b!1307394 (= lt!584995 (contains!8359 (getCurrentListMap!5229 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307395 () Bool)

(declare-fun e!746056 () Bool)

(declare-fun e!746060 () Bool)

(declare-fun mapRes!54268 () Bool)

(assert (=> b!1307395 (= e!746056 (and e!746060 mapRes!54268))))

(declare-fun condMapEmpty!54268 () Bool)

(declare-fun mapDefault!54268 () ValueCell!16648)

