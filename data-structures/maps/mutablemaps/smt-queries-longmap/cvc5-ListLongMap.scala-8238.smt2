; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100394 () Bool)

(assert start!100394)

(declare-fun b!1197658 () Bool)

(declare-fun e!680407 () Bool)

(assert (=> b!1197658 (= e!680407 (not true))))

(declare-datatypes ((array!77566 0))(
  ( (array!77567 (arr!37425 (Array (_ BitVec 32) (_ BitVec 64))) (size!37962 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77566)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197658 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39646 0))(
  ( (Unit!39647) )
))
(declare-fun lt!543287 () Unit!39646)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77566 (_ BitVec 64) (_ BitVec 32)) Unit!39646)

(assert (=> b!1197658 (= lt!543287 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!797139 () Bool)

(declare-fun e!680406 () Bool)

(assert (=> start!100394 (=> (not res!797139) (not e!680406))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100394 (= res!797139 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37962 _keys!1208))))))

(assert (=> start!100394 e!680406))

(declare-fun array_inv!28428 (array!77566) Bool)

(assert (=> start!100394 (array_inv!28428 _keys!1208)))

(assert (=> start!100394 true))

(declare-datatypes ((V!45665 0))(
  ( (V!45666 (val!15258 Int)) )
))
(declare-datatypes ((ValueCell!14492 0))(
  ( (ValueCellFull!14492 (v!17897 V!45665)) (EmptyCell!14492) )
))
(declare-datatypes ((array!77568 0))(
  ( (array!77569 (arr!37426 (Array (_ BitVec 32) ValueCell!14492)) (size!37963 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77568)

(declare-fun e!680403 () Bool)

(declare-fun array_inv!28429 (array!77568) Bool)

(assert (=> start!100394 (and (array_inv!28429 _values!996) e!680403)))

(declare-fun b!1197659 () Bool)

(declare-fun res!797133 () Bool)

(assert (=> b!1197659 (=> (not res!797133) (not e!680406))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1197659 (= res!797133 (and (= (size!37963 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37962 _keys!1208) (size!37963 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197660 () Bool)

(declare-fun res!797136 () Bool)

(assert (=> b!1197660 (=> (not res!797136) (not e!680407))))

(declare-fun lt!543288 () array!77566)

(declare-datatypes ((List!26493 0))(
  ( (Nil!26490) (Cons!26489 (h!27698 (_ BitVec 64)) (t!39201 List!26493)) )
))
(declare-fun arrayNoDuplicates!0 (array!77566 (_ BitVec 32) List!26493) Bool)

(assert (=> b!1197660 (= res!797136 (arrayNoDuplicates!0 lt!543288 #b00000000000000000000000000000000 Nil!26490))))

(declare-fun mapIsEmpty!47444 () Bool)

(declare-fun mapRes!47444 () Bool)

(assert (=> mapIsEmpty!47444 mapRes!47444))

(declare-fun b!1197661 () Bool)

(declare-fun res!797137 () Bool)

(assert (=> b!1197661 (=> (not res!797137) (not e!680406))))

(assert (=> b!1197661 (= res!797137 (= (select (arr!37425 _keys!1208) i!673) k!934))))

(declare-fun b!1197662 () Bool)

(declare-fun res!797135 () Bool)

(assert (=> b!1197662 (=> (not res!797135) (not e!680406))))

(assert (=> b!1197662 (= res!797135 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26490))))

(declare-fun b!1197663 () Bool)

(assert (=> b!1197663 (= e!680406 e!680407)))

(declare-fun res!797138 () Bool)

(assert (=> b!1197663 (=> (not res!797138) (not e!680407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77566 (_ BitVec 32)) Bool)

(assert (=> b!1197663 (= res!797138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543288 mask!1564))))

(assert (=> b!1197663 (= lt!543288 (array!77567 (store (arr!37425 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37962 _keys!1208)))))

(declare-fun b!1197664 () Bool)

(declare-fun e!680408 () Bool)

(declare-fun tp_is_empty!30403 () Bool)

(assert (=> b!1197664 (= e!680408 tp_is_empty!30403)))

(declare-fun b!1197665 () Bool)

(declare-fun res!797134 () Bool)

(assert (=> b!1197665 (=> (not res!797134) (not e!680406))))

(assert (=> b!1197665 (= res!797134 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37962 _keys!1208))))))

(declare-fun b!1197666 () Bool)

(declare-fun res!797130 () Bool)

(assert (=> b!1197666 (=> (not res!797130) (not e!680406))))

(assert (=> b!1197666 (= res!797130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197667 () Bool)

(declare-fun e!680404 () Bool)

(assert (=> b!1197667 (= e!680403 (and e!680404 mapRes!47444))))

(declare-fun condMapEmpty!47444 () Bool)

(declare-fun mapDefault!47444 () ValueCell!14492)

