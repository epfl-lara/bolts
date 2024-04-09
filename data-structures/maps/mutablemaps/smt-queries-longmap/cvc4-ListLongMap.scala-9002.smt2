; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108812 () Bool)

(assert start!108812)

(declare-fun b_free!28289 () Bool)

(declare-fun b_next!28289 () Bool)

(assert (=> start!108812 (= b_free!28289 (not b_next!28289))))

(declare-fun tp!99983 () Bool)

(declare-fun b_and!46365 () Bool)

(assert (=> start!108812 (= tp!99983 b_and!46365)))

(declare-fun b!1284402 () Bool)

(declare-fun res!853329 () Bool)

(declare-fun e!733705 () Bool)

(assert (=> b!1284402 (=> (not res!853329) (not e!733705))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84873 0))(
  ( (array!84874 (arr!40934 (Array (_ BitVec 32) (_ BitVec 64))) (size!41485 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84873)

(assert (=> b!1284402 (= res!853329 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41485 _keys!1741))))))

(declare-fun b!1284403 () Bool)

(declare-fun e!733703 () Bool)

(declare-fun tp_is_empty!33929 () Bool)

(assert (=> b!1284403 (= e!733703 tp_is_empty!33929)))

(declare-fun b!1284404 () Bool)

(declare-fun e!733702 () Bool)

(assert (=> b!1284404 (= e!733702 tp_is_empty!33929)))

(declare-fun b!1284405 () Bool)

(declare-fun res!853332 () Bool)

(assert (=> b!1284405 (=> (not res!853332) (not e!733705))))

(declare-datatypes ((List!29177 0))(
  ( (Nil!29174) (Cons!29173 (h!30382 (_ BitVec 64)) (t!42728 List!29177)) )
))
(declare-fun arrayNoDuplicates!0 (array!84873 (_ BitVec 32) List!29177) Bool)

(assert (=> b!1284405 (= res!853332 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29174))))

(declare-fun mapNonEmpty!52451 () Bool)

(declare-fun mapRes!52451 () Bool)

(declare-fun tp!99984 () Bool)

(assert (=> mapNonEmpty!52451 (= mapRes!52451 (and tp!99984 e!733702))))

(declare-datatypes ((V!50341 0))(
  ( (V!50342 (val!17039 Int)) )
))
(declare-datatypes ((ValueCell!16066 0))(
  ( (ValueCellFull!16066 (v!19639 V!50341)) (EmptyCell!16066) )
))
(declare-fun mapRest!52451 () (Array (_ BitVec 32) ValueCell!16066))

(declare-datatypes ((array!84875 0))(
  ( (array!84876 (arr!40935 (Array (_ BitVec 32) ValueCell!16066)) (size!41486 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84875)

(declare-fun mapValue!52451 () ValueCell!16066)

(declare-fun mapKey!52451 () (_ BitVec 32))

(assert (=> mapNonEmpty!52451 (= (arr!40935 _values!1445) (store mapRest!52451 mapKey!52451 mapValue!52451))))

(declare-fun b!1284406 () Bool)

(declare-fun res!853328 () Bool)

(assert (=> b!1284406 (=> (not res!853328) (not e!733705))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84873 (_ BitVec 32)) Bool)

(assert (=> b!1284406 (= res!853328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284407 () Bool)

(declare-fun e!733704 () Bool)

(assert (=> b!1284407 (= e!733704 (and e!733703 mapRes!52451))))

(declare-fun condMapEmpty!52451 () Bool)

(declare-fun mapDefault!52451 () ValueCell!16066)

