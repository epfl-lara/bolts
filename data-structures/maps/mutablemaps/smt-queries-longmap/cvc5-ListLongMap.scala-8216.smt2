; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100224 () Bool)

(assert start!100224)

(declare-fun b!1194738 () Bool)

(declare-fun res!795031 () Bool)

(declare-fun e!678998 () Bool)

(assert (=> b!1194738 (=> (not res!795031) (not e!678998))))

(declare-datatypes ((array!77304 0))(
  ( (array!77305 (arr!37296 (Array (_ BitVec 32) (_ BitVec 64))) (size!37833 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77304)

(declare-datatypes ((List!26426 0))(
  ( (Nil!26423) (Cons!26422 (h!27631 (_ BitVec 64)) (t!39104 List!26426)) )
))
(declare-fun arrayNoDuplicates!0 (array!77304 (_ BitVec 32) List!26426) Bool)

(assert (=> b!1194738 (= res!795031 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26423))))

(declare-fun b!1194739 () Bool)

(declare-fun e!678997 () Bool)

(assert (=> b!1194739 (= e!678998 e!678997)))

(declare-fun res!795033 () Bool)

(assert (=> b!1194739 (=> (not res!795033) (not e!678997))))

(declare-fun lt!542768 () array!77304)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77304 (_ BitVec 32)) Bool)

(assert (=> b!1194739 (= res!795033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542768 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194739 (= lt!542768 (array!77305 (store (arr!37296 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37833 _keys!1208)))))

(declare-fun mapNonEmpty!47240 () Bool)

(declare-fun mapRes!47240 () Bool)

(declare-fun tp!89851 () Bool)

(declare-fun e!679002 () Bool)

(assert (=> mapNonEmpty!47240 (= mapRes!47240 (and tp!89851 e!679002))))

(declare-datatypes ((V!45489 0))(
  ( (V!45490 (val!15192 Int)) )
))
(declare-datatypes ((ValueCell!14426 0))(
  ( (ValueCellFull!14426 (v!17831 V!45489)) (EmptyCell!14426) )
))
(declare-fun mapRest!47240 () (Array (_ BitVec 32) ValueCell!14426))

(declare-fun mapKey!47240 () (_ BitVec 32))

(declare-datatypes ((array!77306 0))(
  ( (array!77307 (arr!37297 (Array (_ BitVec 32) ValueCell!14426)) (size!37834 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77306)

(declare-fun mapValue!47240 () ValueCell!14426)

(assert (=> mapNonEmpty!47240 (= (arr!37297 _values!996) (store mapRest!47240 mapKey!47240 mapValue!47240))))

(declare-fun b!1194741 () Bool)

(declare-fun res!795035 () Bool)

(assert (=> b!1194741 (=> (not res!795035) (not e!678998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194741 (= res!795035 (validMask!0 mask!1564))))

(declare-fun b!1194742 () Bool)

(declare-fun res!795030 () Bool)

(assert (=> b!1194742 (=> (not res!795030) (not e!678998))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194742 (= res!795030 (validKeyInArray!0 k!934))))

(declare-fun b!1194743 () Bool)

(declare-fun res!795032 () Bool)

(assert (=> b!1194743 (=> (not res!795032) (not e!678998))))

(assert (=> b!1194743 (= res!795032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194744 () Bool)

(declare-fun tp_is_empty!30271 () Bool)

(assert (=> b!1194744 (= e!679002 tp_is_empty!30271)))

(declare-fun b!1194745 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1194745 (= e!678997 (not (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37833 _keys!1208)) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000))))))

(declare-fun arrayContainsKey!0 (array!77304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194745 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39550 0))(
  ( (Unit!39551) )
))
(declare-fun lt!542769 () Unit!39550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77304 (_ BitVec 64) (_ BitVec 32)) Unit!39550)

(assert (=> b!1194745 (= lt!542769 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!795029 () Bool)

(assert (=> start!100224 (=> (not res!795029) (not e!678998))))

(assert (=> start!100224 (= res!795029 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37833 _keys!1208))))))

(assert (=> start!100224 e!678998))

(declare-fun array_inv!28332 (array!77304) Bool)

(assert (=> start!100224 (array_inv!28332 _keys!1208)))

(assert (=> start!100224 true))

(declare-fun e!678999 () Bool)

(declare-fun array_inv!28333 (array!77306) Bool)

(assert (=> start!100224 (and (array_inv!28333 _values!996) e!678999)))

(declare-fun b!1194740 () Bool)

(declare-fun res!795026 () Bool)

(assert (=> b!1194740 (=> (not res!795026) (not e!678998))))

(assert (=> b!1194740 (= res!795026 (= (select (arr!37296 _keys!1208) i!673) k!934))))

(declare-fun b!1194746 () Bool)

(declare-fun e!679000 () Bool)

(assert (=> b!1194746 (= e!678999 (and e!679000 mapRes!47240))))

(declare-fun condMapEmpty!47240 () Bool)

(declare-fun mapDefault!47240 () ValueCell!14426)

