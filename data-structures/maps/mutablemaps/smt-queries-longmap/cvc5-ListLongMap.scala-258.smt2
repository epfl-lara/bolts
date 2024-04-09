; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4268 () Bool)

(assert start!4268)

(declare-fun b_free!1135 () Bool)

(declare-fun b_next!1135 () Bool)

(assert (=> start!4268 (= b_free!1135 (not b_next!1135))))

(declare-fun tp!4830 () Bool)

(declare-fun b_and!1951 () Bool)

(assert (=> start!4268 (= tp!4830 b_and!1951)))

(declare-fun res!19824 () Bool)

(declare-fun e!20766 () Bool)

(assert (=> start!4268 (=> (not res!19824) (not e!20766))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4268 (= res!19824 (validMask!0 mask!2294))))

(assert (=> start!4268 e!20766))

(assert (=> start!4268 true))

(assert (=> start!4268 tp!4830))

(declare-datatypes ((V!1811 0))(
  ( (V!1812 (val!771 Int)) )
))
(declare-datatypes ((ValueCell!545 0))(
  ( (ValueCellFull!545 (v!1862 V!1811)) (EmptyCell!545) )
))
(declare-datatypes ((array!2187 0))(
  ( (array!2188 (arr!1045 (Array (_ BitVec 32) ValueCell!545)) (size!1146 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2187)

(declare-fun e!20768 () Bool)

(declare-fun array_inv!693 (array!2187) Bool)

(assert (=> start!4268 (and (array_inv!693 _values!1501) e!20768)))

(declare-datatypes ((array!2189 0))(
  ( (array!2190 (arr!1046 (Array (_ BitVec 32) (_ BitVec 64))) (size!1147 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2189)

(declare-fun array_inv!694 (array!2189) Bool)

(assert (=> start!4268 (array_inv!694 _keys!1833)))

(declare-fun tp_is_empty!1489 () Bool)

(assert (=> start!4268 tp_is_empty!1489))

(declare-fun b!32677 () Bool)

(declare-fun res!19820 () Bool)

(assert (=> b!32677 (=> (not res!19820) (not e!20766))))

(declare-datatypes ((List!848 0))(
  ( (Nil!845) (Cons!844 (h!1411 (_ BitVec 64)) (t!3547 List!848)) )
))
(declare-fun arrayNoDuplicates!0 (array!2189 (_ BitVec 32) List!848) Bool)

(assert (=> b!32677 (= res!19820 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!845))))

(declare-fun b!32678 () Bool)

(declare-fun e!20770 () Bool)

(assert (=> b!32678 (= e!20766 e!20770)))

(declare-fun res!19821 () Bool)

(assert (=> b!32678 (=> (not res!19821) (not e!20770))))

(declare-datatypes ((tuple2!1246 0))(
  ( (tuple2!1247 (_1!633 (_ BitVec 64)) (_2!633 V!1811)) )
))
(declare-datatypes ((List!849 0))(
  ( (Nil!846) (Cons!845 (h!1412 tuple2!1246) (t!3548 List!849)) )
))
(declare-datatypes ((ListLongMap!827 0))(
  ( (ListLongMap!828 (toList!429 List!849)) )
))
(declare-fun lt!11859 () ListLongMap!827)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!368 (ListLongMap!827 (_ BitVec 64)) Bool)

(assert (=> b!32678 (= res!19821 (not (contains!368 lt!11859 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1811)

(declare-fun minValue!1443 () V!1811)

(declare-fun getCurrentListMap!254 (array!2189 array!2187 (_ BitVec 32) (_ BitVec 32) V!1811 V!1811 (_ BitVec 32) Int) ListLongMap!827)

(assert (=> b!32678 (= lt!11859 (getCurrentListMap!254 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32679 () Bool)

(declare-fun res!19822 () Bool)

(assert (=> b!32679 (=> (not res!19822) (not e!20770))))

(declare-fun arrayContainsKey!0 (array!2189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32679 (= res!19822 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32680 () Bool)

(declare-fun res!19819 () Bool)

(assert (=> b!32680 (=> (not res!19819) (not e!20766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32680 (= res!19819 (validKeyInArray!0 k!1304))))

(declare-fun b!32681 () Bool)

(declare-fun e!20769 () Bool)

(assert (=> b!32681 (= e!20769 tp_is_empty!1489)))

(declare-fun mapIsEmpty!1768 () Bool)

(declare-fun mapRes!1768 () Bool)

(assert (=> mapIsEmpty!1768 mapRes!1768))

(declare-fun b!32682 () Bool)

(assert (=> b!32682 (= e!20768 (and e!20769 mapRes!1768))))

(declare-fun condMapEmpty!1768 () Bool)

(declare-fun mapDefault!1768 () ValueCell!545)

