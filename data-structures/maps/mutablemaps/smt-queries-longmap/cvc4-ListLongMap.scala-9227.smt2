; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110750 () Bool)

(assert start!110750)

(declare-fun b_free!29549 () Bool)

(declare-fun b_next!29549 () Bool)

(assert (=> start!110750 (= b_free!29549 (not b_next!29549))))

(declare-fun tp!103969 () Bool)

(declare-fun b_and!47767 () Bool)

(assert (=> start!110750 (= tp!103969 b_and!47767)))

(declare-fun b!1310126 () Bool)

(declare-fun res!869825 () Bool)

(declare-fun e!747455 () Bool)

(assert (=> b!1310126 (=> (not res!869825) (not e!747455))))

(declare-datatypes ((array!87513 0))(
  ( (array!87514 (arr!42232 (Array (_ BitVec 32) (_ BitVec 64))) (size!42783 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87513)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52141 0))(
  ( (V!52142 (val!17714 Int)) )
))
(declare-datatypes ((ValueCell!16741 0))(
  ( (ValueCellFull!16741 (v!20339 V!52141)) (EmptyCell!16741) )
))
(declare-datatypes ((array!87515 0))(
  ( (array!87516 (arr!42233 (Array (_ BitVec 32) ValueCell!16741)) (size!42784 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87515)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310126 (= res!869825 (and (= (size!42784 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42783 _keys!1628) (size!42784 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310127 () Bool)

(declare-fun e!747453 () Bool)

(declare-fun tp_is_empty!35279 () Bool)

(assert (=> b!1310127 (= e!747453 tp_is_empty!35279)))

(declare-fun b!1310128 () Bool)

(declare-fun res!869821 () Bool)

(assert (=> b!1310128 (=> (not res!869821) (not e!747455))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310128 (= res!869821 (validKeyInArray!0 (select (arr!42232 _keys!1628) from!2020)))))

(declare-fun b!1310129 () Bool)

(declare-fun e!747452 () Bool)

(assert (=> b!1310129 (= e!747452 tp_is_empty!35279)))

(declare-fun b!1310130 () Bool)

(declare-fun res!869826 () Bool)

(assert (=> b!1310130 (=> (not res!869826) (not e!747455))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1310130 (= res!869826 (not (= (select (arr!42232 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1310131 () Bool)

(declare-fun res!869827 () Bool)

(assert (=> b!1310131 (=> (not res!869827) (not e!747455))))

(assert (=> b!1310131 (= res!869827 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42783 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310132 () Bool)

(declare-fun e!747451 () Bool)

(declare-fun mapRes!54547 () Bool)

(assert (=> b!1310132 (= e!747451 (and e!747452 mapRes!54547))))

(declare-fun condMapEmpty!54547 () Bool)

(declare-fun mapDefault!54547 () ValueCell!16741)

