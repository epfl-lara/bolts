; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101578 () Bool)

(assert start!101578)

(declare-fun b_free!26329 () Bool)

(declare-fun b_next!26329 () Bool)

(assert (=> start!101578 (= b_free!26329 (not b_next!26329))))

(declare-fun tp!92024 () Bool)

(declare-fun b_and!43875 () Bool)

(assert (=> start!101578 (= tp!92024 b_and!43875)))

(declare-fun mapIsEmpty!48439 () Bool)

(declare-fun mapRes!48439 () Bool)

(assert (=> mapIsEmpty!48439 mapRes!48439))

(declare-fun b!1220981 () Bool)

(declare-fun e!693386 () Bool)

(declare-fun e!693390 () Bool)

(assert (=> b!1220981 (= e!693386 (not e!693390))))

(declare-fun res!811231 () Bool)

(assert (=> b!1220981 (=> res!811231 e!693390)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1220981 (= res!811231 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78820 0))(
  ( (array!78821 (arr!38036 (Array (_ BitVec 32) (_ BitVec 64))) (size!38573 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78820)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220981 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40370 0))(
  ( (Unit!40371) )
))
(declare-fun lt!555316 () Unit!40370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78820 (_ BitVec 64) (_ BitVec 32)) Unit!40370)

(assert (=> b!1220981 (= lt!555316 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220982 () Bool)

(declare-fun e!693391 () Bool)

(declare-datatypes ((List!27005 0))(
  ( (Nil!27002) (Cons!27001 (h!28210 (_ BitVec 64)) (t!40321 List!27005)) )
))
(declare-fun noDuplicate!1653 (List!27005) Bool)

(assert (=> b!1220982 (= e!693391 (noDuplicate!1653 Nil!27002))))

(declare-fun b!1220984 () Bool)

(declare-fun res!811227 () Bool)

(declare-fun e!693382 () Bool)

(assert (=> b!1220984 (=> (not res!811227) (not e!693382))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78820 (_ BitVec 32)) Bool)

(assert (=> b!1220984 (= res!811227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220985 () Bool)

(declare-fun res!811223 () Bool)

(assert (=> b!1220985 (=> (not res!811223) (not e!693382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220985 (= res!811223 (validMask!0 mask!1564))))

(declare-fun b!1220986 () Bool)

(declare-fun e!693384 () Bool)

(assert (=> b!1220986 (= e!693384 e!693391)))

(declare-fun res!811233 () Bool)

(assert (=> b!1220986 (=> res!811233 e!693391)))

(assert (=> b!1220986 (= res!811233 (or (bvsge (size!38573 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38573 _keys!1208)) (bvsge from!1455 (size!38573 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!78820 (_ BitVec 32) List!27005) Bool)

(assert (=> b!1220986 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27002)))

(declare-fun lt!555317 () Unit!40370)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78820 (_ BitVec 32) (_ BitVec 32)) Unit!40370)

(assert (=> b!1220986 (= lt!555317 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220986 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555326 () Unit!40370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78820 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40370)

(assert (=> b!1220986 (= lt!555326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!48439 () Bool)

(declare-fun tp!92025 () Bool)

(declare-fun e!693383 () Bool)

(assert (=> mapNonEmpty!48439 (= mapRes!48439 (and tp!92025 e!693383))))

(declare-datatypes ((V!46505 0))(
  ( (V!46506 (val!15573 Int)) )
))
(declare-datatypes ((ValueCell!14807 0))(
  ( (ValueCellFull!14807 (v!18232 V!46505)) (EmptyCell!14807) )
))
(declare-fun mapRest!48439 () (Array (_ BitVec 32) ValueCell!14807))

(declare-fun mapValue!48439 () ValueCell!14807)

(declare-fun mapKey!48439 () (_ BitVec 32))

(declare-datatypes ((array!78822 0))(
  ( (array!78823 (arr!38037 (Array (_ BitVec 32) ValueCell!14807)) (size!38574 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78822)

(assert (=> mapNonEmpty!48439 (= (arr!38037 _values!996) (store mapRest!48439 mapKey!48439 mapValue!48439))))

(declare-fun b!1220987 () Bool)

(declare-fun tp_is_empty!31033 () Bool)

(assert (=> b!1220987 (= e!693383 tp_is_empty!31033)))

(declare-fun b!1220988 () Bool)

(declare-fun res!811226 () Bool)

(assert (=> b!1220988 (=> (not res!811226) (not e!693382))))

(assert (=> b!1220988 (= res!811226 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38573 _keys!1208))))))

(declare-fun b!1220989 () Bool)

(declare-fun res!811229 () Bool)

(assert (=> b!1220989 (=> (not res!811229) (not e!693382))))

(assert (=> b!1220989 (= res!811229 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27002))))

(declare-fun b!1220990 () Bool)

(declare-fun e!693381 () Bool)

(declare-fun e!693388 () Bool)

(assert (=> b!1220990 (= e!693381 e!693388)))

(declare-fun res!811228 () Bool)

(assert (=> b!1220990 (=> res!811228 e!693388)))

(assert (=> b!1220990 (= res!811228 (not (= (select (arr!38036 _keys!1208) from!1455) k!934)))))

(declare-fun res!811237 () Bool)

(assert (=> start!101578 (=> (not res!811237) (not e!693382))))

(assert (=> start!101578 (= res!811237 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38573 _keys!1208))))))

(assert (=> start!101578 e!693382))

(assert (=> start!101578 tp_is_empty!31033))

(declare-fun array_inv!28858 (array!78820) Bool)

(assert (=> start!101578 (array_inv!28858 _keys!1208)))

(assert (=> start!101578 true))

(assert (=> start!101578 tp!92024))

(declare-fun e!693393 () Bool)

(declare-fun array_inv!28859 (array!78822) Bool)

(assert (=> start!101578 (and (array_inv!28859 _values!996) e!693393)))

(declare-fun b!1220983 () Bool)

(declare-fun e!693389 () Bool)

(assert (=> b!1220983 (= e!693393 (and e!693389 mapRes!48439))))

(declare-fun condMapEmpty!48439 () Bool)

(declare-fun mapDefault!48439 () ValueCell!14807)

