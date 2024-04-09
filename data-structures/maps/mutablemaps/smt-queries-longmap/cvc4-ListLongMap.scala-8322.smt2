; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101320 () Bool)

(assert start!101320)

(declare-fun b_free!26207 () Bool)

(declare-fun b_next!26207 () Bool)

(assert (=> start!101320 (= b_free!26207 (not b_next!26207))))

(declare-fun tp!91643 () Bool)

(declare-fun b_and!43541 () Bool)

(assert (=> start!101320 (= tp!91643 b_and!43541)))

(declare-fun mapNonEmpty!48241 () Bool)

(declare-fun mapRes!48241 () Bool)

(declare-fun tp!91644 () Bool)

(declare-fun e!690854 () Bool)

(assert (=> mapNonEmpty!48241 (= mapRes!48241 (and tp!91644 e!690854))))

(declare-fun mapKey!48241 () (_ BitVec 32))

(declare-datatypes ((V!46341 0))(
  ( (V!46342 (val!15512 Int)) )
))
(declare-datatypes ((ValueCell!14746 0))(
  ( (ValueCellFull!14746 (v!18166 V!46341)) (EmptyCell!14746) )
))
(declare-fun mapValue!48241 () ValueCell!14746)

(declare-fun mapRest!48241 () (Array (_ BitVec 32) ValueCell!14746))

(declare-datatypes ((array!78568 0))(
  ( (array!78569 (arr!37915 (Array (_ BitVec 32) ValueCell!14746)) (size!38452 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78568)

(assert (=> mapNonEmpty!48241 (= (arr!37915 _values!996) (store mapRest!48241 mapKey!48241 mapValue!48241))))

(declare-fun b!1216804 () Bool)

(declare-fun e!690859 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78570 0))(
  ( (array!78571 (arr!37916 (Array (_ BitVec 32) (_ BitVec 64))) (size!38453 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78570)

(assert (=> b!1216804 (= e!690859 (bvslt from!1455 (size!38453 _keys!1208)))))

(declare-fun res!808141 () Bool)

(declare-fun e!690853 () Bool)

(assert (=> start!101320 (=> (not res!808141) (not e!690853))))

(assert (=> start!101320 (= res!808141 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38453 _keys!1208))))))

(assert (=> start!101320 e!690853))

(declare-fun tp_is_empty!30911 () Bool)

(assert (=> start!101320 tp_is_empty!30911))

(declare-fun array_inv!28770 (array!78570) Bool)

(assert (=> start!101320 (array_inv!28770 _keys!1208)))

(assert (=> start!101320 true))

(assert (=> start!101320 tp!91643))

(declare-fun e!690857 () Bool)

(declare-fun array_inv!28771 (array!78568) Bool)

(assert (=> start!101320 (and (array_inv!28771 _values!996) e!690857)))

(declare-fun b!1216805 () Bool)

(assert (=> b!1216805 (= e!690854 tp_is_empty!30911)))

(declare-fun b!1216806 () Bool)

(declare-fun e!690861 () Bool)

(declare-fun e!690856 () Bool)

(assert (=> b!1216806 (= e!690861 (not e!690856))))

(declare-fun res!808142 () Bool)

(assert (=> b!1216806 (=> res!808142 e!690856)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216806 (= res!808142 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216806 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40278 0))(
  ( (Unit!40279) )
))
(declare-fun lt!553005 () Unit!40278)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78570 (_ BitVec 64) (_ BitVec 32)) Unit!40278)

(assert (=> b!1216806 (= lt!553005 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1216807 () Bool)

(declare-fun res!808143 () Bool)

(assert (=> b!1216807 (=> (not res!808143) (not e!690861))))

(declare-fun lt!553003 () array!78570)

(declare-datatypes ((List!26903 0))(
  ( (Nil!26900) (Cons!26899 (h!28108 (_ BitVec 64)) (t!40097 List!26903)) )
))
(declare-fun arrayNoDuplicates!0 (array!78570 (_ BitVec 32) List!26903) Bool)

(assert (=> b!1216807 (= res!808143 (arrayNoDuplicates!0 lt!553003 #b00000000000000000000000000000000 Nil!26900))))

(declare-fun b!1216808 () Bool)

(declare-fun res!808147 () Bool)

(assert (=> b!1216808 (=> (not res!808147) (not e!690853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216808 (= res!808147 (validKeyInArray!0 k!934))))

(declare-fun b!1216809 () Bool)

(assert (=> b!1216809 (= e!690853 e!690861)))

(declare-fun res!808145 () Bool)

(assert (=> b!1216809 (=> (not res!808145) (not e!690861))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78570 (_ BitVec 32)) Bool)

(assert (=> b!1216809 (= res!808145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553003 mask!1564))))

(assert (=> b!1216809 (= lt!553003 (array!78571 (store (arr!37916 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38453 _keys!1208)))))

(declare-fun b!1216810 () Bool)

(declare-fun res!808149 () Bool)

(assert (=> b!1216810 (=> (not res!808149) (not e!690853))))

(assert (=> b!1216810 (= res!808149 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38453 _keys!1208))))))

(declare-fun b!1216811 () Bool)

(declare-fun res!808148 () Bool)

(assert (=> b!1216811 (=> (not res!808148) (not e!690853))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1216811 (= res!808148 (and (= (size!38452 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38453 _keys!1208) (size!38452 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216812 () Bool)

(declare-fun e!690855 () Bool)

(assert (=> b!1216812 (= e!690857 (and e!690855 mapRes!48241))))

(declare-fun condMapEmpty!48241 () Bool)

(declare-fun mapDefault!48241 () ValueCell!14746)

