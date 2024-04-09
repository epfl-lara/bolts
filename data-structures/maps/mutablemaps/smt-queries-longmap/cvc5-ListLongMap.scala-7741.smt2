; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97226 () Bool)

(assert start!97226)

(declare-fun b!1105669 () Bool)

(declare-fun res!737869 () Bool)

(declare-fun e!631060 () Bool)

(assert (=> b!1105669 (=> (not res!737869) (not e!631060))))

(declare-datatypes ((array!71714 0))(
  ( (array!71715 (arr!34506 (Array (_ BitVec 32) (_ BitVec 64))) (size!35043 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71714)

(declare-datatypes ((List!24198 0))(
  ( (Nil!24195) (Cons!24194 (h!25403 (_ BitVec 64)) (t!34470 List!24198)) )
))
(declare-fun arrayNoDuplicates!0 (array!71714 (_ BitVec 32) List!24198) Bool)

(assert (=> b!1105669 (= res!737869 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24195))))

(declare-fun b!1105670 () Bool)

(declare-fun e!631059 () Bool)

(declare-fun tp_is_empty!27421 () Bool)

(assert (=> b!1105670 (= e!631059 tp_is_empty!27421)))

(declare-fun b!1105671 () Bool)

(declare-fun e!631056 () Bool)

(assert (=> b!1105671 (= e!631060 e!631056)))

(declare-fun res!737871 () Bool)

(assert (=> b!1105671 (=> (not res!737871) (not e!631056))))

(declare-fun lt!495327 () array!71714)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71714 (_ BitVec 32)) Bool)

(assert (=> b!1105671 (= res!737871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495327 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105671 (= lt!495327 (array!71715 (store (arr!34506 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35043 _keys!1208)))))

(declare-fun b!1105672 () Bool)

(declare-fun e!631061 () Bool)

(assert (=> b!1105672 (= e!631061 tp_is_empty!27421)))

(declare-fun b!1105673 () Bool)

(assert (=> b!1105673 (= e!631056 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105673 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36217 0))(
  ( (Unit!36218) )
))
(declare-fun lt!495326 () Unit!36217)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71714 (_ BitVec 64) (_ BitVec 32)) Unit!36217)

(assert (=> b!1105673 (= lt!495326 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105674 () Bool)

(declare-fun res!737868 () Bool)

(assert (=> b!1105674 (=> (not res!737868) (not e!631060))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41689 0))(
  ( (V!41690 (val!13767 Int)) )
))
(declare-datatypes ((ValueCell!13001 0))(
  ( (ValueCellFull!13001 (v!16401 V!41689)) (EmptyCell!13001) )
))
(declare-datatypes ((array!71716 0))(
  ( (array!71717 (arr!34507 (Array (_ BitVec 32) ValueCell!13001)) (size!35044 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71716)

(assert (=> b!1105674 (= res!737868 (and (= (size!35044 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35043 _keys!1208) (size!35044 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105675 () Bool)

(declare-fun res!737874 () Bool)

(assert (=> b!1105675 (=> (not res!737874) (not e!631060))))

(assert (=> b!1105675 (= res!737874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42949 () Bool)

(declare-fun mapRes!42949 () Bool)

(assert (=> mapIsEmpty!42949 mapRes!42949))

(declare-fun res!737870 () Bool)

(assert (=> start!97226 (=> (not res!737870) (not e!631060))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97226 (= res!737870 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35043 _keys!1208))))))

(assert (=> start!97226 e!631060))

(declare-fun array_inv!26416 (array!71714) Bool)

(assert (=> start!97226 (array_inv!26416 _keys!1208)))

(assert (=> start!97226 true))

(declare-fun e!631058 () Bool)

(declare-fun array_inv!26417 (array!71716) Bool)

(assert (=> start!97226 (and (array_inv!26417 _values!996) e!631058)))

(declare-fun b!1105676 () Bool)

(declare-fun res!737872 () Bool)

(assert (=> b!1105676 (=> (not res!737872) (not e!631060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105676 (= res!737872 (validKeyInArray!0 k!934))))

(declare-fun b!1105677 () Bool)

(assert (=> b!1105677 (= e!631058 (and e!631059 mapRes!42949))))

(declare-fun condMapEmpty!42949 () Bool)

(declare-fun mapDefault!42949 () ValueCell!13001)

