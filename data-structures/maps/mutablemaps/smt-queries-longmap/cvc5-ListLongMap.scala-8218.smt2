; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100252 () Bool)

(assert start!100252)

(declare-fun mapNonEmpty!47261 () Bool)

(declare-fun mapRes!47261 () Bool)

(declare-fun tp!89872 () Bool)

(declare-fun e!679149 () Bool)

(assert (=> mapNonEmpty!47261 (= mapRes!47261 (and tp!89872 e!679149))))

(declare-fun mapKey!47261 () (_ BitVec 32))

(declare-datatypes ((V!45505 0))(
  ( (V!45506 (val!15198 Int)) )
))
(declare-datatypes ((ValueCell!14432 0))(
  ( (ValueCellFull!14432 (v!17837 V!45505)) (EmptyCell!14432) )
))
(declare-fun mapValue!47261 () ValueCell!14432)

(declare-datatypes ((array!77330 0))(
  ( (array!77331 (arr!37308 (Array (_ BitVec 32) ValueCell!14432)) (size!37845 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77330)

(declare-fun mapRest!47261 () (Array (_ BitVec 32) ValueCell!14432))

(assert (=> mapNonEmpty!47261 (= (arr!37308 _values!996) (store mapRest!47261 mapKey!47261 mapValue!47261))))

(declare-fun b!1195022 () Bool)

(declare-fun e!679147 () Bool)

(declare-fun tp_is_empty!30283 () Bool)

(assert (=> b!1195022 (= e!679147 tp_is_empty!30283)))

(declare-fun b!1195023 () Bool)

(declare-fun e!679150 () Bool)

(declare-fun e!679148 () Bool)

(assert (=> b!1195023 (= e!679150 e!679148)))

(declare-fun res!795238 () Bool)

(assert (=> b!1195023 (=> (not res!795238) (not e!679148))))

(declare-datatypes ((array!77332 0))(
  ( (array!77333 (arr!37309 (Array (_ BitVec 32) (_ BitVec 64))) (size!37846 (_ BitVec 32))) )
))
(declare-fun lt!542820 () array!77332)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77332 (_ BitVec 32)) Bool)

(assert (=> b!1195023 (= res!795238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542820 mask!1564))))

(declare-fun _keys!1208 () array!77332)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195023 (= lt!542820 (array!77333 (store (arr!37309 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37846 _keys!1208)))))

(declare-fun res!795234 () Bool)

(assert (=> start!100252 (=> (not res!795234) (not e!679150))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100252 (= res!795234 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37846 _keys!1208))))))

(assert (=> start!100252 e!679150))

(declare-fun array_inv!28338 (array!77332) Bool)

(assert (=> start!100252 (array_inv!28338 _keys!1208)))

(assert (=> start!100252 true))

(declare-fun e!679146 () Bool)

(declare-fun array_inv!28339 (array!77330) Bool)

(assert (=> start!100252 (and (array_inv!28339 _values!996) e!679146)))

(declare-fun b!1195024 () Bool)

(declare-fun res!795240 () Bool)

(assert (=> b!1195024 (=> (not res!795240) (not e!679150))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195024 (= res!795240 (validKeyInArray!0 k!934))))

(declare-fun b!1195025 () Bool)

(declare-fun res!795241 () Bool)

(assert (=> b!1195025 (=> (not res!795241) (not e!679150))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195025 (= res!795241 (and (= (size!37845 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37846 _keys!1208) (size!37845 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195026 () Bool)

(declare-fun res!795233 () Bool)

(assert (=> b!1195026 (=> (not res!795233) (not e!679148))))

(declare-datatypes ((List!26431 0))(
  ( (Nil!26428) (Cons!26427 (h!27636 (_ BitVec 64)) (t!39109 List!26431)) )
))
(declare-fun arrayNoDuplicates!0 (array!77332 (_ BitVec 32) List!26431) Bool)

(assert (=> b!1195026 (= res!795233 (arrayNoDuplicates!0 lt!542820 #b00000000000000000000000000000000 Nil!26428))))

(declare-fun b!1195027 () Bool)

(declare-fun res!795232 () Bool)

(assert (=> b!1195027 (=> (not res!795232) (not e!679150))))

(assert (=> b!1195027 (= res!795232 (= (select (arr!37309 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47261 () Bool)

(assert (=> mapIsEmpty!47261 mapRes!47261))

(declare-fun b!1195028 () Bool)

(declare-fun res!795239 () Bool)

(assert (=> b!1195028 (=> (not res!795239) (not e!679150))))

(assert (=> b!1195028 (= res!795239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195029 () Bool)

(declare-fun res!795236 () Bool)

(assert (=> b!1195029 (=> (not res!795236) (not e!679150))))

(assert (=> b!1195029 (= res!795236 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37846 _keys!1208))))))

(declare-fun b!1195030 () Bool)

(declare-fun res!795235 () Bool)

(assert (=> b!1195030 (=> (not res!795235) (not e!679150))))

(assert (=> b!1195030 (= res!795235 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26428))))

(declare-fun b!1195031 () Bool)

(assert (=> b!1195031 (= e!679149 tp_is_empty!30283)))

(declare-fun b!1195032 () Bool)

(assert (=> b!1195032 (= e!679148 (not true))))

(declare-fun arrayContainsKey!0 (array!77332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195032 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39558 0))(
  ( (Unit!39559) )
))
(declare-fun lt!542819 () Unit!39558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77332 (_ BitVec 64) (_ BitVec 32)) Unit!39558)

(assert (=> b!1195032 (= lt!542819 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195033 () Bool)

(declare-fun res!795237 () Bool)

(assert (=> b!1195033 (=> (not res!795237) (not e!679150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195033 (= res!795237 (validMask!0 mask!1564))))

(declare-fun b!1195034 () Bool)

(assert (=> b!1195034 (= e!679146 (and e!679147 mapRes!47261))))

(declare-fun condMapEmpty!47261 () Bool)

(declare-fun mapDefault!47261 () ValueCell!14432)

