; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97536 () Bool)

(assert start!97536)

(declare-fun b!1112962 () Bool)

(declare-fun e!634524 () Bool)

(declare-fun tp_is_empty!27731 () Bool)

(assert (=> b!1112962 (= e!634524 tp_is_empty!27731)))

(declare-fun b!1112963 () Bool)

(declare-fun res!742850 () Bool)

(declare-fun e!634529 () Bool)

(assert (=> b!1112963 (=> (not res!742850) (not e!634529))))

(declare-datatypes ((array!72318 0))(
  ( (array!72319 (arr!34808 (Array (_ BitVec 32) (_ BitVec 64))) (size!35345 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72318)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72318 (_ BitVec 32)) Bool)

(assert (=> b!1112963 (= res!742850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112964 () Bool)

(declare-fun res!742842 () Bool)

(assert (=> b!1112964 (=> (not res!742842) (not e!634529))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112964 (= res!742842 (validKeyInArray!0 k!934))))

(declare-fun b!1112965 () Bool)

(declare-fun e!634526 () Bool)

(assert (=> b!1112965 (= e!634526 (not true))))

(declare-fun arrayContainsKey!0 (array!72318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112965 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36433 0))(
  ( (Unit!36434) )
))
(declare-fun lt!496581 () Unit!36433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72318 (_ BitVec 64) (_ BitVec 32)) Unit!36433)

(assert (=> b!1112965 (= lt!496581 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112966 () Bool)

(declare-fun res!742851 () Bool)

(assert (=> b!1112966 (=> (not res!742851) (not e!634529))))

(assert (=> b!1112966 (= res!742851 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35345 _keys!1208))))))

(declare-fun b!1112967 () Bool)

(assert (=> b!1112967 (= e!634529 e!634526)))

(declare-fun res!742847 () Bool)

(assert (=> b!1112967 (=> (not res!742847) (not e!634526))))

(declare-fun lt!496580 () array!72318)

(assert (=> b!1112967 (= res!742847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496580 mask!1564))))

(assert (=> b!1112967 (= lt!496580 (array!72319 (store (arr!34808 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35345 _keys!1208)))))

(declare-fun b!1112968 () Bool)

(declare-fun e!634525 () Bool)

(assert (=> b!1112968 (= e!634525 tp_is_empty!27731)))

(declare-fun b!1112969 () Bool)

(declare-fun res!742846 () Bool)

(assert (=> b!1112969 (=> (not res!742846) (not e!634529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112969 (= res!742846 (validMask!0 mask!1564))))

(declare-fun b!1112970 () Bool)

(declare-fun res!742843 () Bool)

(assert (=> b!1112970 (=> (not res!742843) (not e!634529))))

(assert (=> b!1112970 (= res!742843 (= (select (arr!34808 _keys!1208) i!673) k!934))))

(declare-fun b!1112971 () Bool)

(declare-fun res!742845 () Bool)

(assert (=> b!1112971 (=> (not res!742845) (not e!634529))))

(declare-datatypes ((List!24409 0))(
  ( (Nil!24406) (Cons!24405 (h!25614 (_ BitVec 64)) (t!34897 List!24409)) )
))
(declare-fun arrayNoDuplicates!0 (array!72318 (_ BitVec 32) List!24409) Bool)

(assert (=> b!1112971 (= res!742845 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24406))))

(declare-fun mapIsEmpty!43414 () Bool)

(declare-fun mapRes!43414 () Bool)

(assert (=> mapIsEmpty!43414 mapRes!43414))

(declare-fun res!742848 () Bool)

(assert (=> start!97536 (=> (not res!742848) (not e!634529))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97536 (= res!742848 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35345 _keys!1208))))))

(assert (=> start!97536 e!634529))

(declare-fun array_inv!26636 (array!72318) Bool)

(assert (=> start!97536 (array_inv!26636 _keys!1208)))

(assert (=> start!97536 true))

(declare-datatypes ((V!42101 0))(
  ( (V!42102 (val!13922 Int)) )
))
(declare-datatypes ((ValueCell!13156 0))(
  ( (ValueCellFull!13156 (v!16556 V!42101)) (EmptyCell!13156) )
))
(declare-datatypes ((array!72320 0))(
  ( (array!72321 (arr!34809 (Array (_ BitVec 32) ValueCell!13156)) (size!35346 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72320)

(declare-fun e!634527 () Bool)

(declare-fun array_inv!26637 (array!72320) Bool)

(assert (=> start!97536 (and (array_inv!26637 _values!996) e!634527)))

(declare-fun b!1112972 () Bool)

(assert (=> b!1112972 (= e!634527 (and e!634525 mapRes!43414))))

(declare-fun condMapEmpty!43414 () Bool)

(declare-fun mapDefault!43414 () ValueCell!13156)

