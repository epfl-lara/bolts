; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101220 () Bool)

(assert start!101220)

(declare-fun b_free!26107 () Bool)

(declare-fun b_next!26107 () Bool)

(assert (=> start!101220 (= b_free!26107 (not b_next!26107))))

(declare-fun tp!91343 () Bool)

(declare-fun b_and!43341 () Bool)

(assert (=> start!101220 (= tp!91343 b_and!43341)))

(declare-fun b!1214552 () Bool)

(declare-fun res!806436 () Bool)

(declare-fun e!689756 () Bool)

(assert (=> b!1214552 (=> (not res!806436) (not e!689756))))

(declare-datatypes ((array!78380 0))(
  ( (array!78381 (arr!37821 (Array (_ BitVec 32) (_ BitVec 64))) (size!38358 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78380)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78380 (_ BitVec 32)) Bool)

(assert (=> b!1214552 (= res!806436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1214553 () Bool)

(declare-fun e!689752 () Bool)

(assert (=> b!1214553 (= e!689756 e!689752)))

(declare-fun res!806445 () Bool)

(assert (=> b!1214553 (=> (not res!806445) (not e!689752))))

(declare-fun lt!552334 () array!78380)

(assert (=> b!1214553 (= res!806445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552334 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1214553 (= lt!552334 (array!78381 (store (arr!37821 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38358 _keys!1208)))))

(declare-fun b!1214554 () Bool)

(declare-fun res!806441 () Bool)

(assert (=> b!1214554 (=> (not res!806441) (not e!689756))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214554 (= res!806441 (validKeyInArray!0 k!934))))

(declare-fun b!1214556 () Bool)

(declare-fun e!689751 () Bool)

(declare-fun tp_is_empty!30811 () Bool)

(assert (=> b!1214556 (= e!689751 tp_is_empty!30811)))

(declare-fun b!1214557 () Bool)

(declare-fun res!806443 () Bool)

(assert (=> b!1214557 (=> (not res!806443) (not e!689756))))

(declare-datatypes ((List!26834 0))(
  ( (Nil!26831) (Cons!26830 (h!28039 (_ BitVec 64)) (t!39928 List!26834)) )
))
(declare-fun arrayNoDuplicates!0 (array!78380 (_ BitVec 32) List!26834) Bool)

(assert (=> b!1214557 (= res!806443 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26831))))

(declare-fun b!1214558 () Bool)

(declare-fun res!806442 () Bool)

(assert (=> b!1214558 (=> (not res!806442) (not e!689756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214558 (= res!806442 (validMask!0 mask!1564))))

(declare-fun b!1214559 () Bool)

(declare-fun res!806437 () Bool)

(assert (=> b!1214559 (=> (not res!806437) (not e!689752))))

(assert (=> b!1214559 (= res!806437 (arrayNoDuplicates!0 lt!552334 #b00000000000000000000000000000000 Nil!26831))))

(declare-fun mapIsEmpty!48091 () Bool)

(declare-fun mapRes!48091 () Bool)

(assert (=> mapIsEmpty!48091 mapRes!48091))

(declare-fun mapNonEmpty!48091 () Bool)

(declare-fun tp!91344 () Bool)

(declare-fun e!689757 () Bool)

(assert (=> mapNonEmpty!48091 (= mapRes!48091 (and tp!91344 e!689757))))

(declare-fun mapKey!48091 () (_ BitVec 32))

(declare-datatypes ((V!46209 0))(
  ( (V!46210 (val!15462 Int)) )
))
(declare-datatypes ((ValueCell!14696 0))(
  ( (ValueCellFull!14696 (v!18116 V!46209)) (EmptyCell!14696) )
))
(declare-fun mapValue!48091 () ValueCell!14696)

(declare-datatypes ((array!78382 0))(
  ( (array!78383 (arr!37822 (Array (_ BitVec 32) ValueCell!14696)) (size!38359 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78382)

(declare-fun mapRest!48091 () (Array (_ BitVec 32) ValueCell!14696))

(assert (=> mapNonEmpty!48091 (= (arr!37822 _values!996) (store mapRest!48091 mapKey!48091 mapValue!48091))))

(declare-fun b!1214555 () Bool)

(declare-fun e!689755 () Bool)

(assert (=> b!1214555 (= e!689755 (and e!689751 mapRes!48091))))

(declare-fun condMapEmpty!48091 () Bool)

(declare-fun mapDefault!48091 () ValueCell!14696)

