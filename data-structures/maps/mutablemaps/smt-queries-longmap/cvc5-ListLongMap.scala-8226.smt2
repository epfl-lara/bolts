; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100300 () Bool)

(assert start!100300)

(declare-fun b!1195958 () Bool)

(declare-fun res!795953 () Bool)

(declare-fun e!679578 () Bool)

(assert (=> b!1195958 (=> (not res!795953) (not e!679578))))

(declare-datatypes ((array!77424 0))(
  ( (array!77425 (arr!37355 (Array (_ BitVec 32) (_ BitVec 64))) (size!37892 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77424)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77424 (_ BitVec 32)) Bool)

(assert (=> b!1195958 (= res!795953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195959 () Bool)

(declare-fun res!795959 () Bool)

(assert (=> b!1195959 (=> (not res!795959) (not e!679578))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45569 0))(
  ( (V!45570 (val!15222 Int)) )
))
(declare-datatypes ((ValueCell!14456 0))(
  ( (ValueCellFull!14456 (v!17861 V!45569)) (EmptyCell!14456) )
))
(declare-datatypes ((array!77426 0))(
  ( (array!77427 (arr!37356 (Array (_ BitVec 32) ValueCell!14456)) (size!37893 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77426)

(assert (=> b!1195959 (= res!795959 (and (= (size!37893 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37892 _keys!1208) (size!37893 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!795952 () Bool)

(assert (=> start!100300 (=> (not res!795952) (not e!679578))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100300 (= res!795952 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37892 _keys!1208))))))

(assert (=> start!100300 e!679578))

(declare-fun array_inv!28376 (array!77424) Bool)

(assert (=> start!100300 (array_inv!28376 _keys!1208)))

(assert (=> start!100300 true))

(declare-fun e!679580 () Bool)

(declare-fun array_inv!28377 (array!77426) Bool)

(assert (=> start!100300 (and (array_inv!28377 _values!996) e!679580)))

(declare-fun mapNonEmpty!47333 () Bool)

(declare-fun mapRes!47333 () Bool)

(declare-fun tp!89944 () Bool)

(declare-fun e!679582 () Bool)

(assert (=> mapNonEmpty!47333 (= mapRes!47333 (and tp!89944 e!679582))))

(declare-fun mapKey!47333 () (_ BitVec 32))

(declare-fun mapValue!47333 () ValueCell!14456)

(declare-fun mapRest!47333 () (Array (_ BitVec 32) ValueCell!14456))

(assert (=> mapNonEmpty!47333 (= (arr!37356 _values!996) (store mapRest!47333 mapKey!47333 mapValue!47333))))

(declare-fun mapIsEmpty!47333 () Bool)

(assert (=> mapIsEmpty!47333 mapRes!47333))

(declare-fun b!1195960 () Bool)

(declare-fun res!795957 () Bool)

(assert (=> b!1195960 (=> (not res!795957) (not e!679578))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1195960 (= res!795957 (= (select (arr!37355 _keys!1208) i!673) k!934))))

(declare-fun b!1195961 () Bool)

(declare-fun tp_is_empty!30331 () Bool)

(assert (=> b!1195961 (= e!679582 tp_is_empty!30331)))

(declare-fun b!1195962 () Bool)

(declare-fun res!795955 () Bool)

(assert (=> b!1195962 (=> (not res!795955) (not e!679578))))

(declare-datatypes ((List!26453 0))(
  ( (Nil!26450) (Cons!26449 (h!27658 (_ BitVec 64)) (t!39131 List!26453)) )
))
(declare-fun arrayNoDuplicates!0 (array!77424 (_ BitVec 32) List!26453) Bool)

(assert (=> b!1195962 (= res!795955 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26450))))

(declare-fun b!1195963 () Bool)

(declare-fun e!679581 () Bool)

(assert (=> b!1195963 (= e!679578 e!679581)))

(declare-fun res!795960 () Bool)

(assert (=> b!1195963 (=> (not res!795960) (not e!679581))))

(declare-fun lt!542964 () array!77424)

(assert (=> b!1195963 (= res!795960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542964 mask!1564))))

(assert (=> b!1195963 (= lt!542964 (array!77425 (store (arr!37355 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37892 _keys!1208)))))

(declare-fun b!1195964 () Bool)

(assert (=> b!1195964 (= e!679581 (not true))))

(declare-fun arrayContainsKey!0 (array!77424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195964 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39600 0))(
  ( (Unit!39601) )
))
(declare-fun lt!542963 () Unit!39600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77424 (_ BitVec 64) (_ BitVec 32)) Unit!39600)

(assert (=> b!1195964 (= lt!542963 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195965 () Bool)

(declare-fun res!795954 () Bool)

(assert (=> b!1195965 (=> (not res!795954) (not e!679578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195965 (= res!795954 (validMask!0 mask!1564))))

(declare-fun b!1195966 () Bool)

(declare-fun res!795956 () Bool)

(assert (=> b!1195966 (=> (not res!795956) (not e!679581))))

(assert (=> b!1195966 (= res!795956 (arrayNoDuplicates!0 lt!542964 #b00000000000000000000000000000000 Nil!26450))))

(declare-fun b!1195967 () Bool)

(declare-fun res!795958 () Bool)

(assert (=> b!1195967 (=> (not res!795958) (not e!679578))))

(assert (=> b!1195967 (= res!795958 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37892 _keys!1208))))))

(declare-fun b!1195968 () Bool)

(declare-fun e!679579 () Bool)

(assert (=> b!1195968 (= e!679580 (and e!679579 mapRes!47333))))

(declare-fun condMapEmpty!47333 () Bool)

(declare-fun mapDefault!47333 () ValueCell!14456)

