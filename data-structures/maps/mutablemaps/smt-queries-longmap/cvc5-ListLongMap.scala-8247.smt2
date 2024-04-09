; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100466 () Bool)

(assert start!100466)

(declare-fun b_free!25753 () Bool)

(declare-fun b_next!25753 () Bool)

(assert (=> start!100466 (= b_free!25753 (not b_next!25753))))

(declare-fun tp!90249 () Bool)

(declare-fun b_and!42407 () Bool)

(assert (=> start!100466 (= tp!90249 b_and!42407)))

(declare-fun b!1198904 () Bool)

(declare-fun e!681027 () Bool)

(declare-fun tp_is_empty!30457 () Bool)

(assert (=> b!1198904 (= e!681027 tp_is_empty!30457)))

(declare-fun b!1198905 () Bool)

(declare-fun res!798057 () Bool)

(declare-fun e!681024 () Bool)

(assert (=> b!1198905 (=> (not res!798057) (not e!681024))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198905 (= res!798057 (validMask!0 mask!1564))))

(declare-fun b!1198906 () Bool)

(declare-fun res!798048 () Bool)

(assert (=> b!1198906 (=> (not res!798048) (not e!681024))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77672 0))(
  ( (array!77673 (arr!37477 (Array (_ BitVec 32) (_ BitVec 64))) (size!38014 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77672)

(assert (=> b!1198906 (= res!798048 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38014 _keys!1208))))))

(declare-fun b!1198907 () Bool)

(declare-fun res!798056 () Bool)

(assert (=> b!1198907 (=> (not res!798056) (not e!681024))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45737 0))(
  ( (V!45738 (val!15285 Int)) )
))
(declare-datatypes ((ValueCell!14519 0))(
  ( (ValueCellFull!14519 (v!17924 V!45737)) (EmptyCell!14519) )
))
(declare-datatypes ((array!77674 0))(
  ( (array!77675 (arr!37478 (Array (_ BitVec 32) ValueCell!14519)) (size!38015 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77674)

(assert (=> b!1198907 (= res!798056 (and (= (size!38015 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38014 _keys!1208) (size!38015 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198908 () Bool)

(declare-fun res!798055 () Bool)

(assert (=> b!1198908 (=> (not res!798055) (not e!681024))))

(declare-datatypes ((List!26534 0))(
  ( (Nil!26531) (Cons!26530 (h!27739 (_ BitVec 64)) (t!39274 List!26534)) )
))
(declare-fun arrayNoDuplicates!0 (array!77672 (_ BitVec 32) List!26534) Bool)

(assert (=> b!1198908 (= res!798055 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26531))))

(declare-fun b!1198909 () Bool)

(declare-fun e!681028 () Bool)

(assert (=> b!1198909 (= e!681024 e!681028)))

(declare-fun res!798053 () Bool)

(assert (=> b!1198909 (=> (not res!798053) (not e!681028))))

(declare-fun lt!543586 () array!77672)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77672 (_ BitVec 32)) Bool)

(assert (=> b!1198909 (= res!798053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543586 mask!1564))))

(assert (=> b!1198909 (= lt!543586 (array!77673 (store (arr!37477 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38014 _keys!1208)))))

(declare-fun b!1198910 () Bool)

(declare-fun res!798047 () Bool)

(assert (=> b!1198910 (=> (not res!798047) (not e!681024))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198910 (= res!798047 (validKeyInArray!0 k!934))))

(declare-fun b!1198911 () Bool)

(declare-fun e!681022 () Bool)

(assert (=> b!1198911 (= e!681022 tp_is_empty!30457)))

(declare-fun b!1198912 () Bool)

(declare-fun e!681025 () Bool)

(assert (=> b!1198912 (= e!681028 (not e!681025))))

(declare-fun res!798054 () Bool)

(assert (=> b!1198912 (=> res!798054 e!681025)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1198912 (= res!798054 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198912 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39686 0))(
  ( (Unit!39687) )
))
(declare-fun lt!543589 () Unit!39686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77672 (_ BitVec 64) (_ BitVec 32)) Unit!39686)

(assert (=> b!1198912 (= lt!543589 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198914 () Bool)

(declare-fun res!798049 () Bool)

(assert (=> b!1198914 (=> (not res!798049) (not e!681028))))

(assert (=> b!1198914 (= res!798049 (arrayNoDuplicates!0 lt!543586 #b00000000000000000000000000000000 Nil!26531))))

(declare-fun b!1198915 () Bool)

(declare-fun res!798050 () Bool)

(assert (=> b!1198915 (=> (not res!798050) (not e!681024))))

(assert (=> b!1198915 (= res!798050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198916 () Bool)

(declare-fun res!798051 () Bool)

(assert (=> b!1198916 (=> (not res!798051) (not e!681024))))

(assert (=> b!1198916 (= res!798051 (= (select (arr!37477 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47528 () Bool)

(declare-fun mapRes!47528 () Bool)

(declare-fun tp!90250 () Bool)

(assert (=> mapNonEmpty!47528 (= mapRes!47528 (and tp!90250 e!681022))))

(declare-fun mapKey!47528 () (_ BitVec 32))

(declare-fun mapRest!47528 () (Array (_ BitVec 32) ValueCell!14519))

(declare-fun mapValue!47528 () ValueCell!14519)

(assert (=> mapNonEmpty!47528 (= (arr!37478 _values!996) (store mapRest!47528 mapKey!47528 mapValue!47528))))

(declare-fun res!798052 () Bool)

(assert (=> start!100466 (=> (not res!798052) (not e!681024))))

(assert (=> start!100466 (= res!798052 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38014 _keys!1208))))))

(assert (=> start!100466 e!681024))

(assert (=> start!100466 tp_is_empty!30457))

(declare-fun array_inv!28466 (array!77672) Bool)

(assert (=> start!100466 (array_inv!28466 _keys!1208)))

(assert (=> start!100466 true))

(assert (=> start!100466 tp!90249))

(declare-fun e!681023 () Bool)

(declare-fun array_inv!28467 (array!77674) Bool)

(assert (=> start!100466 (and (array_inv!28467 _values!996) e!681023)))

(declare-fun b!1198913 () Bool)

(assert (=> b!1198913 (= e!681023 (and e!681027 mapRes!47528))))

(declare-fun condMapEmpty!47528 () Bool)

(declare-fun mapDefault!47528 () ValueCell!14519)

