; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97538 () Bool)

(assert start!97538)

(declare-fun b!1113001 () Bool)

(declare-fun res!742879 () Bool)

(declare-fun e!634546 () Bool)

(assert (=> b!1113001 (=> (not res!742879) (not e!634546))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113001 (= res!742879 (validMask!0 mask!1564))))

(declare-fun b!1113002 () Bool)

(declare-fun e!634544 () Bool)

(declare-fun tp_is_empty!27733 () Bool)

(assert (=> b!1113002 (= e!634544 tp_is_empty!27733)))

(declare-fun mapIsEmpty!43417 () Bool)

(declare-fun mapRes!43417 () Bool)

(assert (=> mapIsEmpty!43417 mapRes!43417))

(declare-fun b!1113003 () Bool)

(declare-fun res!742877 () Bool)

(assert (=> b!1113003 (=> (not res!742877) (not e!634546))))

(declare-datatypes ((array!72322 0))(
  ( (array!72323 (arr!34810 (Array (_ BitVec 32) (_ BitVec 64))) (size!35347 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72322)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72322 (_ BitVec 32)) Bool)

(assert (=> b!1113003 (= res!742877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113004 () Bool)

(declare-fun e!634543 () Bool)

(assert (=> b!1113004 (= e!634546 e!634543)))

(declare-fun res!742873 () Bool)

(assert (=> b!1113004 (=> (not res!742873) (not e!634543))))

(declare-fun lt!496586 () array!72322)

(assert (=> b!1113004 (= res!742873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496586 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113004 (= lt!496586 (array!72323 (store (arr!34810 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35347 _keys!1208)))))

(declare-fun b!1113005 () Bool)

(declare-fun res!742880 () Bool)

(assert (=> b!1113005 (=> (not res!742880) (not e!634546))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42105 0))(
  ( (V!42106 (val!13923 Int)) )
))
(declare-datatypes ((ValueCell!13157 0))(
  ( (ValueCellFull!13157 (v!16557 V!42105)) (EmptyCell!13157) )
))
(declare-datatypes ((array!72324 0))(
  ( (array!72325 (arr!34811 (Array (_ BitVec 32) ValueCell!13157)) (size!35348 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72324)

(assert (=> b!1113005 (= res!742880 (and (= (size!35348 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35347 _keys!1208) (size!35348 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113006 () Bool)

(declare-fun res!742872 () Bool)

(assert (=> b!1113006 (=> (not res!742872) (not e!634546))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1113006 (= res!742872 (= (select (arr!34810 _keys!1208) i!673) k!934))))

(declare-fun b!1113007 () Bool)

(declare-fun res!742874 () Bool)

(assert (=> b!1113007 (=> (not res!742874) (not e!634543))))

(declare-datatypes ((List!24410 0))(
  ( (Nil!24407) (Cons!24406 (h!25615 (_ BitVec 64)) (t!34898 List!24410)) )
))
(declare-fun arrayNoDuplicates!0 (array!72322 (_ BitVec 32) List!24410) Bool)

(assert (=> b!1113007 (= res!742874 (arrayNoDuplicates!0 lt!496586 #b00000000000000000000000000000000 Nil!24407))))

(declare-fun b!1113008 () Bool)

(declare-fun e!634542 () Bool)

(assert (=> b!1113008 (= e!634542 tp_is_empty!27733)))

(declare-fun b!1113009 () Bool)

(declare-fun res!742878 () Bool)

(assert (=> b!1113009 (=> (not res!742878) (not e!634546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113009 (= res!742878 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43417 () Bool)

(declare-fun tp!82662 () Bool)

(assert (=> mapNonEmpty!43417 (= mapRes!43417 (and tp!82662 e!634544))))

(declare-fun mapRest!43417 () (Array (_ BitVec 32) ValueCell!13157))

(declare-fun mapKey!43417 () (_ BitVec 32))

(declare-fun mapValue!43417 () ValueCell!13157)

(assert (=> mapNonEmpty!43417 (= (arr!34811 _values!996) (store mapRest!43417 mapKey!43417 mapValue!43417))))

(declare-fun res!742875 () Bool)

(assert (=> start!97538 (=> (not res!742875) (not e!634546))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97538 (= res!742875 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35347 _keys!1208))))))

(assert (=> start!97538 e!634546))

(declare-fun array_inv!26638 (array!72322) Bool)

(assert (=> start!97538 (array_inv!26638 _keys!1208)))

(assert (=> start!97538 true))

(declare-fun e!634547 () Bool)

(declare-fun array_inv!26639 (array!72324) Bool)

(assert (=> start!97538 (and (array_inv!26639 _values!996) e!634547)))

(declare-fun b!1113010 () Bool)

(declare-fun res!742881 () Bool)

(assert (=> b!1113010 (=> (not res!742881) (not e!634546))))

(assert (=> b!1113010 (= res!742881 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24407))))

(declare-fun b!1113011 () Bool)

(declare-fun res!742876 () Bool)

(assert (=> b!1113011 (=> (not res!742876) (not e!634546))))

(assert (=> b!1113011 (= res!742876 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35347 _keys!1208))))))

(declare-fun b!1113012 () Bool)

(assert (=> b!1113012 (= e!634547 (and e!634542 mapRes!43417))))

(declare-fun condMapEmpty!43417 () Bool)

(declare-fun mapDefault!43417 () ValueCell!13157)

