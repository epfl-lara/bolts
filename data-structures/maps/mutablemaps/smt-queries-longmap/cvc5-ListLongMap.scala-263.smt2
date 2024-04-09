; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4322 () Bool)

(assert start!4322)

(declare-fun b_free!1165 () Bool)

(declare-fun b_next!1165 () Bool)

(assert (=> start!4322 (= b_free!1165 (not b_next!1165))))

(declare-fun tp!4924 () Bool)

(declare-fun b_and!1983 () Bool)

(assert (=> start!4322 (= tp!4924 b_and!1983)))

(declare-fun mapNonEmpty!1816 () Bool)

(declare-fun mapRes!1816 () Bool)

(declare-fun tp!4923 () Bool)

(declare-fun e!21142 () Bool)

(assert (=> mapNonEmpty!1816 (= mapRes!1816 (and tp!4923 e!21142))))

(declare-datatypes ((V!1851 0))(
  ( (V!1852 (val!786 Int)) )
))
(declare-datatypes ((ValueCell!560 0))(
  ( (ValueCellFull!560 (v!1878 V!1851)) (EmptyCell!560) )
))
(declare-datatypes ((array!2247 0))(
  ( (array!2248 (arr!1074 (Array (_ BitVec 32) ValueCell!560)) (size!1175 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2247)

(declare-fun mapValue!1816 () ValueCell!560)

(declare-fun mapRest!1816 () (Array (_ BitVec 32) ValueCell!560))

(declare-fun mapKey!1816 () (_ BitVec 32))

(assert (=> mapNonEmpty!1816 (= (arr!1074 _values!1501) (store mapRest!1816 mapKey!1816 mapValue!1816))))

(declare-fun b!33281 () Bool)

(declare-fun e!21144 () Bool)

(assert (=> b!33281 (= e!21144 (not true))))

(declare-datatypes ((SeekEntryResult!133 0))(
  ( (MissingZero!133 (index!2654 (_ BitVec 32))) (Found!133 (index!2655 (_ BitVec 32))) (Intermediate!133 (undefined!945 Bool) (index!2656 (_ BitVec 32)) (x!6809 (_ BitVec 32))) (Undefined!133) (MissingVacant!133 (index!2657 (_ BitVec 32))) )
))
(declare-fun lt!12102 () SeekEntryResult!133)

(declare-fun lt!12105 () (_ BitVec 32))

(assert (=> b!33281 (and (is-Found!133 lt!12102) (= (index!2655 lt!12102) lt!12105))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!2249 0))(
  ( (array!2250 (arr!1075 (Array (_ BitVec 32) (_ BitVec 64))) (size!1176 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2249)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2249 (_ BitVec 32)) SeekEntryResult!133)

(assert (=> b!33281 (= lt!12102 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!738 0))(
  ( (Unit!739) )
))
(declare-fun lt!12103 () Unit!738)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2249 (_ BitVec 32)) Unit!738)

(assert (=> b!33281 (= lt!12103 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12105 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1270 0))(
  ( (tuple2!1271 (_1!645 (_ BitVec 64)) (_2!645 V!1851)) )
))
(declare-datatypes ((List!873 0))(
  ( (Nil!870) (Cons!869 (h!1436 tuple2!1270) (t!3574 List!873)) )
))
(declare-datatypes ((ListLongMap!851 0))(
  ( (ListLongMap!852 (toList!441 List!873)) )
))
(declare-fun lt!12106 () ListLongMap!851)

(declare-fun contains!381 (ListLongMap!851 (_ BitVec 64)) Bool)

(assert (=> b!33281 (contains!381 lt!12106 (select (arr!1075 _keys!1833) lt!12105))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!12104 () Unit!738)

(declare-fun zeroValue!1443 () V!1851)

(declare-fun minValue!1443 () V!1851)

(declare-fun lemmaValidKeyInArrayIsInListMap!55 (array!2249 array!2247 (_ BitVec 32) (_ BitVec 32) V!1851 V!1851 (_ BitVec 32) Int) Unit!738)

(assert (=> b!33281 (= lt!12104 (lemmaValidKeyInArrayIsInListMap!55 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12105 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2249 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33281 (= lt!12105 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33282 () Bool)

(declare-fun res!20202 () Bool)

(assert (=> b!33282 (=> (not res!20202) (not e!21144))))

(declare-fun arrayContainsKey!0 (array!2249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33282 (= res!20202 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33283 () Bool)

(declare-fun res!20203 () Bool)

(declare-fun e!21141 () Bool)

(assert (=> b!33283 (=> (not res!20203) (not e!21141))))

(declare-datatypes ((List!874 0))(
  ( (Nil!871) (Cons!870 (h!1437 (_ BitVec 64)) (t!3575 List!874)) )
))
(declare-fun arrayNoDuplicates!0 (array!2249 (_ BitVec 32) List!874) Bool)

(assert (=> b!33283 (= res!20203 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!871))))

(declare-fun b!33284 () Bool)

(declare-fun res!20198 () Bool)

(assert (=> b!33284 (=> (not res!20198) (not e!21141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2249 (_ BitVec 32)) Bool)

(assert (=> b!33284 (= res!20198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33285 () Bool)

(declare-fun e!21140 () Bool)

(declare-fun e!21143 () Bool)

(assert (=> b!33285 (= e!21140 (and e!21143 mapRes!1816))))

(declare-fun condMapEmpty!1816 () Bool)

(declare-fun mapDefault!1816 () ValueCell!560)

