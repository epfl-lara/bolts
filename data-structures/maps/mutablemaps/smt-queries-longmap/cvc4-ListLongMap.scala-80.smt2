; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1118 () Bool)

(assert start!1118)

(declare-fun b_free!389 () Bool)

(declare-fun b_next!389 () Bool)

(assert (=> start!1118 (= b_free!389 (not b_next!389))))

(declare-fun tp!1411 () Bool)

(declare-fun b_and!545 () Bool)

(assert (=> start!1118 (= tp!1411 b_and!545)))

(declare-fun mapIsEmpty!686 () Bool)

(declare-fun mapRes!686 () Bool)

(assert (=> mapIsEmpty!686 mapRes!686))

(declare-fun res!8749 () Bool)

(declare-fun e!5686 () Bool)

(assert (=> start!1118 (=> (not res!8749) (not e!5686))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1118 (= res!8749 (validMask!0 mask!2250))))

(assert (=> start!1118 e!5686))

(assert (=> start!1118 tp!1411))

(assert (=> start!1118 true))

(declare-datatypes ((V!799 0))(
  ( (V!800 (val!239 Int)) )
))
(declare-datatypes ((ValueCell!217 0))(
  ( (ValueCellFull!217 (v!1335 V!799)) (EmptyCell!217) )
))
(declare-datatypes ((array!859 0))(
  ( (array!860 (arr!413 (Array (_ BitVec 32) ValueCell!217)) (size!475 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!859)

(declare-fun e!5682 () Bool)

(declare-fun array_inv!299 (array!859) Bool)

(assert (=> start!1118 (and (array_inv!299 _values!1492) e!5682)))

(declare-fun tp_is_empty!467 () Bool)

(assert (=> start!1118 tp_is_empty!467))

(declare-datatypes ((array!861 0))(
  ( (array!862 (arr!414 (Array (_ BitVec 32) (_ BitVec 64))) (size!476 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!861)

(declare-fun array_inv!300 (array!861) Bool)

(assert (=> start!1118 (array_inv!300 _keys!1806)))

(declare-fun b!9912 () Bool)

(declare-fun e!5687 () Bool)

(declare-fun e!5679 () Bool)

(assert (=> b!9912 (= e!5687 e!5679)))

(declare-fun res!8752 () Bool)

(assert (=> b!9912 (=> res!8752 e!5679)))

(assert (=> b!9912 (= res!8752 (not (= (size!476 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!2347 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!861 (_ BitVec 32)) Bool)

(assert (=> b!9912 (arrayForallSeekEntryOrOpenFound!0 lt!2347 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!205 0))(
  ( (Unit!206) )
))
(declare-fun lt!2345 () Unit!205)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!205)

(assert (=> b!9912 (= lt!2345 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2347))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!861 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9912 (= lt!2347 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9913 () Bool)

(declare-fun res!8750 () Bool)

(assert (=> b!9913 (=> (not res!8750) (not e!5686))))

(assert (=> b!9913 (= res!8750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9914 () Bool)

(declare-fun res!8759 () Bool)

(declare-fun e!5684 () Bool)

(assert (=> b!9914 (=> (not res!8759) (not e!5684))))

(declare-datatypes ((SeekEntryResult!44 0))(
  ( (MissingZero!44 (index!2295 (_ BitVec 32))) (Found!44 (index!2296 (_ BitVec 32))) (Intermediate!44 (undefined!856 Bool) (index!2297 (_ BitVec 32)) (x!2824 (_ BitVec 32))) (Undefined!44) (MissingVacant!44 (index!2298 (_ BitVec 32))) )
))
(declare-fun lt!2349 () SeekEntryResult!44)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!9914 (= res!8759 (inRange!0 (index!2296 lt!2349) mask!2250))))

(declare-fun b!9915 () Bool)

(declare-fun e!5680 () Bool)

(assert (=> b!9915 (= e!5680 tp_is_empty!467)))

(declare-fun mapNonEmpty!686 () Bool)

(declare-fun tp!1412 () Bool)

(assert (=> mapNonEmpty!686 (= mapRes!686 (and tp!1412 e!5680))))

(declare-fun mapRest!686 () (Array (_ BitVec 32) ValueCell!217))

(declare-fun mapKey!686 () (_ BitVec 32))

(declare-fun mapValue!686 () ValueCell!217)

(assert (=> mapNonEmpty!686 (= (arr!413 _values!1492) (store mapRest!686 mapKey!686 mapValue!686))))

(declare-fun b!9916 () Bool)

(declare-fun e!5683 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!9916 (= e!5683 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9917 () Bool)

(declare-fun res!8755 () Bool)

(assert (=> b!9917 (=> res!8755 e!5679)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!861 (_ BitVec 32)) SeekEntryResult!44)

(assert (=> b!9917 (= res!8755 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!44 lt!2347))))))

(declare-fun b!9918 () Bool)

(declare-fun e!5685 () Bool)

(assert (=> b!9918 (= e!5685 tp_is_empty!467)))

(declare-fun b!9919 () Bool)

(declare-fun res!8756 () Bool)

(assert (=> b!9919 (=> (not res!8756) (not e!5686))))

(assert (=> b!9919 (= res!8756 (and (= (size!475 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!476 _keys!1806) (size!475 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9920 () Bool)

(declare-fun res!8754 () Bool)

(assert (=> b!9920 (=> (not res!8754) (not e!5686))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!799)

(declare-fun zeroValue!1434 () V!799)

(declare-datatypes ((tuple2!260 0))(
  ( (tuple2!261 (_1!130 (_ BitVec 64)) (_2!130 V!799)) )
))
(declare-datatypes ((List!285 0))(
  ( (Nil!282) (Cons!281 (h!847 tuple2!260) (t!2430 List!285)) )
))
(declare-datatypes ((ListLongMap!265 0))(
  ( (ListLongMap!266 (toList!148 List!285)) )
))
(declare-fun contains!127 (ListLongMap!265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!107 (array!861 array!859 (_ BitVec 32) (_ BitVec 32) V!799 V!799 (_ BitVec 32) Int) ListLongMap!265)

(assert (=> b!9920 (= res!8754 (contains!127 (getCurrentListMap!107 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9921 () Bool)

(assert (=> b!9921 (= e!5684 (= (select (arr!414 _keys!1806) (index!2296 lt!2349)) k!1278))))

(declare-fun b!9922 () Bool)

(declare-fun res!8753 () Bool)

(assert (=> b!9922 (=> (not res!8753) (not e!5686))))

(declare-datatypes ((List!286 0))(
  ( (Nil!283) (Cons!282 (h!848 (_ BitVec 64)) (t!2431 List!286)) )
))
(declare-fun arrayNoDuplicates!0 (array!861 (_ BitVec 32) List!286) Bool)

(assert (=> b!9922 (= res!8753 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!283))))

(declare-fun b!9923 () Bool)

(assert (=> b!9923 (= e!5679 e!5684)))

(declare-fun res!8758 () Bool)

(assert (=> b!9923 (=> (not res!8758) (not e!5684))))

(assert (=> b!9923 (= res!8758 (is-Found!44 lt!2349))))

(assert (=> b!9923 (and (is-Found!44 lt!2349) (= (index!2296 lt!2349) lt!2347))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!861 (_ BitVec 32)) SeekEntryResult!44)

(assert (=> b!9923 (= lt!2349 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!2348 () Unit!205)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!861 (_ BitVec 32)) Unit!205)

(assert (=> b!9923 (= lt!2348 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!2347 _keys!1806 mask!2250))))

(declare-fun b!9924 () Bool)

(assert (=> b!9924 (= e!5686 (not e!5687))))

(declare-fun res!8757 () Bool)

(assert (=> b!9924 (=> res!8757 e!5687)))

(declare-fun arrayContainsKey!0 (array!861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9924 (= res!8757 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9924 e!5683))

(declare-fun c!826 () Bool)

(assert (=> b!9924 (= c!826 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2346 () Unit!205)

(declare-fun lemmaKeyInListMapIsInArray!77 (array!861 array!859 (_ BitVec 32) (_ BitVec 32) V!799 V!799 (_ BitVec 64) Int) Unit!205)

(assert (=> b!9924 (= lt!2346 (lemmaKeyInListMapIsInArray!77 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9925 () Bool)

(assert (=> b!9925 (= e!5683 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9926 () Bool)

(assert (=> b!9926 (= e!5682 (and e!5685 mapRes!686))))

(declare-fun condMapEmpty!686 () Bool)

(declare-fun mapDefault!686 () ValueCell!217)

