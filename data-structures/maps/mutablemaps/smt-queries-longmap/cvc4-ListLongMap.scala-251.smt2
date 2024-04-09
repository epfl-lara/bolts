; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4190 () Bool)

(assert start!4190)

(declare-fun b_free!1097 () Bool)

(declare-fun b_next!1097 () Bool)

(assert (=> start!4190 (= b_free!1097 (not b_next!1097))))

(declare-fun tp!4710 () Bool)

(declare-fun b_and!1909 () Bool)

(assert (=> start!4190 (= tp!4710 b_and!1909)))

(declare-fun b!31856 () Bool)

(declare-fun res!19310 () Bool)

(declare-fun e!20311 () Bool)

(assert (=> b!31856 (=> (not res!19310) (not e!20311))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31856 (= res!19310 (validKeyInArray!0 k!1304))))

(declare-fun res!19314 () Bool)

(assert (=> start!4190 (=> (not res!19314) (not e!20311))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4190 (= res!19314 (validMask!0 mask!2294))))

(assert (=> start!4190 e!20311))

(assert (=> start!4190 true))

(assert (=> start!4190 tp!4710))

(declare-datatypes ((V!1759 0))(
  ( (V!1760 (val!752 Int)) )
))
(declare-datatypes ((ValueCell!526 0))(
  ( (ValueCellFull!526 (v!1841 V!1759)) (EmptyCell!526) )
))
(declare-datatypes ((array!2109 0))(
  ( (array!2110 (arr!1008 (Array (_ BitVec 32) ValueCell!526)) (size!1109 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2109)

(declare-fun e!20310 () Bool)

(declare-fun array_inv!673 (array!2109) Bool)

(assert (=> start!4190 (and (array_inv!673 _values!1501) e!20310)))

(declare-datatypes ((array!2111 0))(
  ( (array!2112 (arr!1009 (Array (_ BitVec 32) (_ BitVec 64))) (size!1110 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2111)

(declare-fun array_inv!674 (array!2111) Bool)

(assert (=> start!4190 (array_inv!674 _keys!1833)))

(declare-fun tp_is_empty!1451 () Bool)

(assert (=> start!4190 tp_is_empty!1451))

(declare-fun b!31857 () Bool)

(declare-fun e!20308 () Bool)

(assert (=> b!31857 (= e!20308 tp_is_empty!1451)))

(declare-fun b!31858 () Bool)

(declare-fun res!19309 () Bool)

(assert (=> b!31858 (=> (not res!19309) (not e!20311))))

(declare-fun arrayContainsKey!0 (array!2111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31858 (= res!19309 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1705 () Bool)

(declare-fun mapRes!1705 () Bool)

(declare-fun tp!4711 () Bool)

(assert (=> mapNonEmpty!1705 (= mapRes!1705 (and tp!4711 e!20308))))

(declare-fun mapValue!1705 () ValueCell!526)

(declare-fun mapKey!1705 () (_ BitVec 32))

(declare-fun mapRest!1705 () (Array (_ BitVec 32) ValueCell!526))

(assert (=> mapNonEmpty!1705 (= (arr!1008 _values!1501) (store mapRest!1705 mapKey!1705 mapValue!1705))))

(declare-fun b!31859 () Bool)

(declare-fun res!19313 () Bool)

(assert (=> b!31859 (=> (not res!19313) (not e!20311))))

(declare-datatypes ((List!822 0))(
  ( (Nil!819) (Cons!818 (h!1385 (_ BitVec 64)) (t!3517 List!822)) )
))
(declare-fun arrayNoDuplicates!0 (array!2111 (_ BitVec 32) List!822) Bool)

(assert (=> b!31859 (= res!19313 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!819))))

(declare-fun b!31860 () Bool)

(declare-fun res!19311 () Bool)

(assert (=> b!31860 (=> (not res!19311) (not e!20311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2111 (_ BitVec 32)) Bool)

(assert (=> b!31860 (= res!19311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31861 () Bool)

(declare-fun e!20309 () Bool)

(assert (=> b!31861 (= e!20310 (and e!20309 mapRes!1705))))

(declare-fun condMapEmpty!1705 () Bool)

(declare-fun mapDefault!1705 () ValueCell!526)

