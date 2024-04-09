; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97174 () Bool)

(assert start!97174)

(declare-fun mapNonEmpty!42892 () Bool)

(declare-fun mapRes!42892 () Bool)

(declare-fun tp!81813 () Bool)

(declare-fun e!630697 () Bool)

(assert (=> mapNonEmpty!42892 (= mapRes!42892 (and tp!81813 e!630697))))

(declare-datatypes ((V!41641 0))(
  ( (V!41642 (val!13749 Int)) )
))
(declare-datatypes ((ValueCell!12983 0))(
  ( (ValueCellFull!12983 (v!16383 V!41641)) (EmptyCell!12983) )
))
(declare-fun mapRest!42892 () (Array (_ BitVec 32) ValueCell!12983))

(declare-fun mapKey!42892 () (_ BitVec 32))

(declare-fun mapValue!42892 () ValueCell!12983)

(declare-datatypes ((array!71644 0))(
  ( (array!71645 (arr!34472 (Array (_ BitVec 32) ValueCell!12983)) (size!35009 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71644)

(assert (=> mapNonEmpty!42892 (= (arr!34472 _values!996) (store mapRest!42892 mapKey!42892 mapValue!42892))))

(declare-fun b!1104917 () Bool)

(declare-fun res!737309 () Bool)

(declare-fun e!630694 () Bool)

(assert (=> b!1104917 (=> (not res!737309) (not e!630694))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104917 (= res!737309 (validMask!0 mask!1564))))

(declare-fun b!1104918 () Bool)

(declare-fun res!737303 () Bool)

(assert (=> b!1104918 (=> (not res!737303) (not e!630694))))

(declare-datatypes ((array!71646 0))(
  ( (array!71647 (arr!34473 (Array (_ BitVec 32) (_ BitVec 64))) (size!35010 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71646)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104918 (= res!737303 (and (= (size!35009 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35010 _keys!1208) (size!35009 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104919 () Bool)

(declare-fun e!630692 () Bool)

(declare-fun tp_is_empty!27385 () Bool)

(assert (=> b!1104919 (= e!630692 tp_is_empty!27385)))

(declare-fun b!1104920 () Bool)

(assert (=> b!1104920 (= e!630697 tp_is_empty!27385)))

(declare-fun b!1104921 () Bool)

(declare-fun res!737311 () Bool)

(assert (=> b!1104921 (=> (not res!737311) (not e!630694))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104921 (= res!737311 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35010 _keys!1208))))))

(declare-fun res!737302 () Bool)

(assert (=> start!97174 (=> (not res!737302) (not e!630694))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97174 (= res!737302 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35010 _keys!1208))))))

(assert (=> start!97174 e!630694))

(declare-fun array_inv!26398 (array!71646) Bool)

(assert (=> start!97174 (array_inv!26398 _keys!1208)))

(assert (=> start!97174 true))

(declare-fun e!630696 () Bool)

(declare-fun array_inv!26399 (array!71644) Bool)

(assert (=> start!97174 (and (array_inv!26399 _values!996) e!630696)))

(declare-fun b!1104922 () Bool)

(declare-fun res!737306 () Bool)

(assert (=> b!1104922 (=> (not res!737306) (not e!630694))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104922 (= res!737306 (= (select (arr!34473 _keys!1208) i!673) k!934))))

(declare-fun b!1104923 () Bool)

(declare-fun res!737308 () Bool)

(assert (=> b!1104923 (=> (not res!737308) (not e!630694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104923 (= res!737308 (validKeyInArray!0 k!934))))

(declare-fun b!1104924 () Bool)

(declare-fun e!630693 () Bool)

(assert (=> b!1104924 (= e!630694 e!630693)))

(declare-fun res!737305 () Bool)

(assert (=> b!1104924 (=> (not res!737305) (not e!630693))))

(declare-fun lt!495203 () array!71646)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71646 (_ BitVec 32)) Bool)

(assert (=> b!1104924 (= res!737305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495203 mask!1564))))

(assert (=> b!1104924 (= lt!495203 (array!71647 (store (arr!34473 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35010 _keys!1208)))))

(declare-fun b!1104925 () Bool)

(declare-fun res!737304 () Bool)

(assert (=> b!1104925 (=> (not res!737304) (not e!630694))))

(declare-datatypes ((List!24187 0))(
  ( (Nil!24184) (Cons!24183 (h!25392 (_ BitVec 64)) (t!34459 List!24187)) )
))
(declare-fun arrayNoDuplicates!0 (array!71646 (_ BitVec 32) List!24187) Bool)

(assert (=> b!1104925 (= res!737304 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24184))))

(declare-fun b!1104926 () Bool)

(declare-fun res!737307 () Bool)

(assert (=> b!1104926 (=> (not res!737307) (not e!630693))))

(assert (=> b!1104926 (= res!737307 (arrayNoDuplicates!0 lt!495203 #b00000000000000000000000000000000 Nil!24184))))

(declare-fun b!1104927 () Bool)

(declare-fun res!737310 () Bool)

(assert (=> b!1104927 (=> (not res!737310) (not e!630694))))

(assert (=> b!1104927 (= res!737310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104928 () Bool)

(assert (=> b!1104928 (= e!630693 (not (bvslt #b00000000000000000000000000000000 (size!35010 _keys!1208))))))

(declare-fun arrayContainsKey!0 (array!71646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104928 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36191 0))(
  ( (Unit!36192) )
))
(declare-fun lt!495204 () Unit!36191)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71646 (_ BitVec 64) (_ BitVec 32)) Unit!36191)

(assert (=> b!1104928 (= lt!495204 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1104929 () Bool)

(assert (=> b!1104929 (= e!630696 (and e!630692 mapRes!42892))))

(declare-fun condMapEmpty!42892 () Bool)

(declare-fun mapDefault!42892 () ValueCell!12983)

