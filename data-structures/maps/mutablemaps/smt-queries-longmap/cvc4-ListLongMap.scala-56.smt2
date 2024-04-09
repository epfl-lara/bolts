; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!852 () Bool)

(assert start!852)

(declare-fun b_free!245 () Bool)

(declare-fun b_next!245 () Bool)

(assert (=> start!852 (= b_free!245 (not b_next!245))))

(declare-fun tp!964 () Bool)

(declare-fun b_and!391 () Bool)

(assert (=> start!852 (= tp!964 b_and!391)))

(declare-fun b!6955 () Bool)

(declare-fun res!7145 () Bool)

(declare-fun e!3848 () Bool)

(assert (=> b!6955 (=> (not res!7145) (not e!3848))))

(declare-datatypes ((array!579 0))(
  ( (array!580 (arr!278 (Array (_ BitVec 32) (_ BitVec 64))) (size!340 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!579)

(declare-datatypes ((List!186 0))(
  ( (Nil!183) (Cons!182 (h!748 (_ BitVec 64)) (t!2321 List!186)) )
))
(declare-fun arrayNoDuplicates!0 (array!579 (_ BitVec 32) List!186) Bool)

(assert (=> b!6955 (= res!7145 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!183))))

(declare-fun b!6956 () Bool)

(declare-fun res!7146 () Bool)

(assert (=> b!6956 (=> (not res!7146) (not e!3848))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!579 (_ BitVec 32)) Bool)

(assert (=> b!6956 (= res!7146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6957 () Bool)

(declare-fun e!3851 () Bool)

(declare-fun tp_is_empty!323 () Bool)

(assert (=> b!6957 (= e!3851 tp_is_empty!323)))

(declare-fun mapIsEmpty!455 () Bool)

(declare-fun mapRes!455 () Bool)

(assert (=> mapIsEmpty!455 mapRes!455))

(declare-fun b!6958 () Bool)

(declare-fun e!3847 () Bool)

(declare-fun e!3844 () Bool)

(assert (=> b!6958 (= e!3847 e!3844)))

(declare-fun res!7143 () Bool)

(assert (=> b!6958 (=> res!7143 e!3844)))

(assert (=> b!6958 (= res!7143 (not (= (size!340 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1380 () (_ BitVec 32))

(assert (=> b!6958 (arrayForallSeekEntryOrOpenFound!0 lt!1380 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!125 0))(
  ( (Unit!126) )
))
(declare-fun lt!1378 () Unit!125)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!125)

(assert (=> b!6958 (= lt!1378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1380))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!579 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6958 (= lt!1380 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6959 () Bool)

(assert (=> b!6959 (= e!3844 true)))

(declare-datatypes ((SeekEntryResult!30 0))(
  ( (MissingZero!30 (index!2239 (_ BitVec 32))) (Found!30 (index!2240 (_ BitVec 32))) (Intermediate!30 (undefined!842 Bool) (index!2241 (_ BitVec 32)) (x!2568 (_ BitVec 32))) (Undefined!30) (MissingVacant!30 (index!2242 (_ BitVec 32))) )
))
(declare-fun lt!1376 () SeekEntryResult!30)

(assert (=> b!6959 (and (is-Found!30 lt!1376) (= (index!2240 lt!1376) lt!1380))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!579 (_ BitVec 32)) SeekEntryResult!30)

(assert (=> b!6959 (= lt!1376 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!1377 () Unit!125)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!579 (_ BitVec 32)) Unit!125)

(assert (=> b!6959 (= lt!1377 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!1380 _keys!1806 mask!2250))))

(declare-fun b!6960 () Bool)

(declare-fun e!3846 () Bool)

(declare-fun arrayContainsKey!0 (array!579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6960 (= e!3846 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6961 () Bool)

(assert (=> b!6961 (= e!3848 (not e!3847))))

(declare-fun res!7149 () Bool)

(assert (=> b!6961 (=> res!7149 e!3847)))

(assert (=> b!6961 (= res!7149 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6961 e!3846))

(declare-fun c!500 () Bool)

(assert (=> b!6961 (= c!500 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!607 0))(
  ( (V!608 (val!167 Int)) )
))
(declare-datatypes ((ValueCell!145 0))(
  ( (ValueCellFull!145 (v!1258 V!607)) (EmptyCell!145) )
))
(declare-datatypes ((array!581 0))(
  ( (array!582 (arr!279 (Array (_ BitVec 32) ValueCell!145)) (size!341 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!581)

(declare-fun minValue!1434 () V!607)

(declare-fun lt!1379 () Unit!125)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!607)

(declare-fun lemmaKeyInListMapIsInArray!44 (array!579 array!581 (_ BitVec 32) (_ BitVec 32) V!607 V!607 (_ BitVec 64) Int) Unit!125)

(assert (=> b!6961 (= lt!1379 (lemmaKeyInListMapIsInArray!44 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6962 () Bool)

(declare-fun res!7144 () Bool)

(assert (=> b!6962 (=> (not res!7144) (not e!3848))))

(assert (=> b!6962 (= res!7144 (and (= (size!341 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!340 _keys!1806) (size!341 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6963 () Bool)

(assert (=> b!6963 (= e!3846 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6964 () Bool)

(declare-fun res!7142 () Bool)

(assert (=> b!6964 (=> (not res!7142) (not e!3848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6964 (= res!7142 (validKeyInArray!0 k!1278))))

(declare-fun res!7148 () Bool)

(assert (=> start!852 (=> (not res!7148) (not e!3848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!852 (= res!7148 (validMask!0 mask!2250))))

(assert (=> start!852 e!3848))

(assert (=> start!852 tp!964))

(assert (=> start!852 true))

(declare-fun e!3849 () Bool)

(declare-fun array_inv!203 (array!581) Bool)

(assert (=> start!852 (and (array_inv!203 _values!1492) e!3849)))

(assert (=> start!852 tp_is_empty!323))

(declare-fun array_inv!204 (array!579) Bool)

(assert (=> start!852 (array_inv!204 _keys!1806)))

(declare-fun b!6965 () Bool)

(declare-fun e!3850 () Bool)

(assert (=> b!6965 (= e!3850 tp_is_empty!323)))

(declare-fun b!6966 () Bool)

(assert (=> b!6966 (= e!3849 (and e!3850 mapRes!455))))

(declare-fun condMapEmpty!455 () Bool)

(declare-fun mapDefault!455 () ValueCell!145)

