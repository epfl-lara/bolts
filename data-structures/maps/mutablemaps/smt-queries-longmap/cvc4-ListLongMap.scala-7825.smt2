; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97734 () Bool)

(assert start!97734)

(declare-fun b!1116823 () Bool)

(declare-fun e!636309 () Bool)

(declare-fun tp_is_empty!27929 () Bool)

(assert (=> b!1116823 (= e!636309 tp_is_empty!27929)))

(declare-fun mapNonEmpty!43711 () Bool)

(declare-fun mapRes!43711 () Bool)

(declare-fun tp!82956 () Bool)

(declare-fun e!636307 () Bool)

(assert (=> mapNonEmpty!43711 (= mapRes!43711 (and tp!82956 e!636307))))

(declare-datatypes ((V!42365 0))(
  ( (V!42366 (val!14021 Int)) )
))
(declare-datatypes ((ValueCell!13255 0))(
  ( (ValueCellFull!13255 (v!16655 V!42365)) (EmptyCell!13255) )
))
(declare-fun mapRest!43711 () (Array (_ BitVec 32) ValueCell!13255))

(declare-fun mapValue!43711 () ValueCell!13255)

(declare-fun mapKey!43711 () (_ BitVec 32))

(declare-datatypes ((array!72696 0))(
  ( (array!72697 (arr!34997 (Array (_ BitVec 32) ValueCell!13255)) (size!35534 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72696)

(assert (=> mapNonEmpty!43711 (= (arr!34997 _values!996) (store mapRest!43711 mapKey!43711 mapValue!43711))))

(declare-fun b!1116824 () Bool)

(declare-fun e!636311 () Bool)

(declare-fun e!636306 () Bool)

(assert (=> b!1116824 (= e!636311 e!636306)))

(declare-fun res!745816 () Bool)

(assert (=> b!1116824 (=> (not res!745816) (not e!636306))))

(declare-datatypes ((array!72698 0))(
  ( (array!72699 (arr!34998 (Array (_ BitVec 32) (_ BitVec 64))) (size!35535 (_ BitVec 32))) )
))
(declare-fun lt!497174 () array!72698)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72698 (_ BitVec 32)) Bool)

(assert (=> b!1116824 (= res!745816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497174 mask!1564))))

(declare-fun _keys!1208 () array!72698)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116824 (= lt!497174 (array!72699 (store (arr!34998 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35535 _keys!1208)))))

(declare-fun b!1116825 () Bool)

(declare-fun res!745815 () Bool)

(assert (=> b!1116825 (=> (not res!745815) (not e!636311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116825 (= res!745815 (validMask!0 mask!1564))))

(declare-fun res!745820 () Bool)

(assert (=> start!97734 (=> (not res!745820) (not e!636311))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97734 (= res!745820 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35535 _keys!1208))))))

(assert (=> start!97734 e!636311))

(declare-fun array_inv!26758 (array!72698) Bool)

(assert (=> start!97734 (array_inv!26758 _keys!1208)))

(assert (=> start!97734 true))

(declare-fun e!636310 () Bool)

(declare-fun array_inv!26759 (array!72696) Bool)

(assert (=> start!97734 (and (array_inv!26759 _values!996) e!636310)))

(declare-fun b!1116826 () Bool)

(assert (=> b!1116826 (= e!636307 tp_is_empty!27929)))

(declare-fun b!1116827 () Bool)

(assert (=> b!1116827 (= e!636306 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116827 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36559 0))(
  ( (Unit!36560) )
))
(declare-fun lt!497175 () Unit!36559)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72698 (_ BitVec 64) (_ BitVec 32)) Unit!36559)

(assert (=> b!1116827 (= lt!497175 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43711 () Bool)

(assert (=> mapIsEmpty!43711 mapRes!43711))

(declare-fun b!1116828 () Bool)

(declare-fun res!745819 () Bool)

(assert (=> b!1116828 (=> (not res!745819) (not e!636311))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116828 (= res!745819 (and (= (size!35534 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35535 _keys!1208) (size!35534 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116829 () Bool)

(declare-fun res!745821 () Bool)

(assert (=> b!1116829 (=> (not res!745821) (not e!636311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116829 (= res!745821 (validKeyInArray!0 k!934))))

(declare-fun b!1116830 () Bool)

(declare-fun res!745812 () Bool)

(assert (=> b!1116830 (=> (not res!745812) (not e!636311))))

(assert (=> b!1116830 (= res!745812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116831 () Bool)

(assert (=> b!1116831 (= e!636310 (and e!636309 mapRes!43711))))

(declare-fun condMapEmpty!43711 () Bool)

(declare-fun mapDefault!43711 () ValueCell!13255)

