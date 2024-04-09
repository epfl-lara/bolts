; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100400 () Bool)

(assert start!100400)

(declare-fun b!1197775 () Bool)

(declare-fun res!797227 () Bool)

(declare-fun e!680462 () Bool)

(assert (=> b!1197775 (=> (not res!797227) (not e!680462))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77578 0))(
  ( (array!77579 (arr!37431 (Array (_ BitVec 32) (_ BitVec 64))) (size!37968 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77578)

(assert (=> b!1197775 (= res!797227 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37968 _keys!1208))))))

(declare-fun b!1197776 () Bool)

(declare-fun res!797226 () Bool)

(assert (=> b!1197776 (=> (not res!797226) (not e!680462))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197776 (= res!797226 (validMask!0 mask!1564))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!45673 0))(
  ( (V!45674 (val!15261 Int)) )
))
(declare-datatypes ((ValueCell!14495 0))(
  ( (ValueCellFull!14495 (v!17900 V!45673)) (EmptyCell!14495) )
))
(declare-datatypes ((array!77580 0))(
  ( (array!77581 (arr!37432 (Array (_ BitVec 32) ValueCell!14495)) (size!37969 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77580)

(declare-fun e!680460 () Bool)

(declare-fun b!1197777 () Bool)

(assert (=> b!1197777 (= e!680460 (not (or (bvsle from!1455 i!673) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37968 _keys!1208)) (bvslt i!673 (size!37969 _values!996)))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197777 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39650 0))(
  ( (Unit!39651) )
))
(declare-fun lt!543305 () Unit!39650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77578 (_ BitVec 64) (_ BitVec 32)) Unit!39650)

(assert (=> b!1197777 (= lt!543305 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1197778 () Bool)

(declare-fun res!797224 () Bool)

(assert (=> b!1197778 (=> (not res!797224) (not e!680460))))

(declare-fun lt!543306 () array!77578)

(declare-datatypes ((List!26495 0))(
  ( (Nil!26492) (Cons!26491 (h!27700 (_ BitVec 64)) (t!39203 List!26495)) )
))
(declare-fun arrayNoDuplicates!0 (array!77578 (_ BitVec 32) List!26495) Bool)

(assert (=> b!1197778 (= res!797224 (arrayNoDuplicates!0 lt!543306 #b00000000000000000000000000000000 Nil!26492))))

(declare-fun mapIsEmpty!47453 () Bool)

(declare-fun mapRes!47453 () Bool)

(assert (=> mapIsEmpty!47453 mapRes!47453))

(declare-fun b!1197779 () Bool)

(declare-fun e!680459 () Bool)

(declare-fun e!680457 () Bool)

(assert (=> b!1197779 (= e!680459 (and e!680457 mapRes!47453))))

(declare-fun condMapEmpty!47453 () Bool)

(declare-fun mapDefault!47453 () ValueCell!14495)

