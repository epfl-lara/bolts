; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100280 () Bool)

(assert start!100280)

(declare-fun mapIsEmpty!47303 () Bool)

(declare-fun mapRes!47303 () Bool)

(assert (=> mapIsEmpty!47303 mapRes!47303))

(declare-fun b!1195568 () Bool)

(declare-fun e!679398 () Bool)

(declare-fun tp_is_empty!30311 () Bool)

(assert (=> b!1195568 (= e!679398 tp_is_empty!30311)))

(declare-fun b!1195569 () Bool)

(declare-fun e!679401 () Bool)

(assert (=> b!1195569 (= e!679401 (not true))))

(declare-datatypes ((array!77386 0))(
  ( (array!77387 (arr!37336 (Array (_ BitVec 32) (_ BitVec 64))) (size!37873 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77386)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195569 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39584 0))(
  ( (Unit!39585) )
))
(declare-fun lt!542903 () Unit!39584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77386 (_ BitVec 64) (_ BitVec 32)) Unit!39584)

(assert (=> b!1195569 (= lt!542903 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195570 () Bool)

(declare-fun res!795661 () Bool)

(declare-fun e!679400 () Bool)

(assert (=> b!1195570 (=> (not res!795661) (not e!679400))))

(declare-datatypes ((List!26444 0))(
  ( (Nil!26441) (Cons!26440 (h!27649 (_ BitVec 64)) (t!39122 List!26444)) )
))
(declare-fun arrayNoDuplicates!0 (array!77386 (_ BitVec 32) List!26444) Bool)

(assert (=> b!1195570 (= res!795661 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26441))))

(declare-fun b!1195571 () Bool)

(declare-fun e!679399 () Bool)

(assert (=> b!1195571 (= e!679399 tp_is_empty!30311)))

(declare-fun b!1195572 () Bool)

(declare-fun res!795660 () Bool)

(assert (=> b!1195572 (=> (not res!795660) (not e!679401))))

(declare-fun lt!542904 () array!77386)

(assert (=> b!1195572 (= res!795660 (arrayNoDuplicates!0 lt!542904 #b00000000000000000000000000000000 Nil!26441))))

(declare-fun mapNonEmpty!47303 () Bool)

(declare-fun tp!89914 () Bool)

(assert (=> mapNonEmpty!47303 (= mapRes!47303 (and tp!89914 e!679399))))

(declare-datatypes ((V!45541 0))(
  ( (V!45542 (val!15212 Int)) )
))
(declare-datatypes ((ValueCell!14446 0))(
  ( (ValueCellFull!14446 (v!17851 V!45541)) (EmptyCell!14446) )
))
(declare-fun mapValue!47303 () ValueCell!14446)

(declare-datatypes ((array!77388 0))(
  ( (array!77389 (arr!37337 (Array (_ BitVec 32) ValueCell!14446)) (size!37874 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77388)

(declare-fun mapRest!47303 () (Array (_ BitVec 32) ValueCell!14446))

(declare-fun mapKey!47303 () (_ BitVec 32))

(assert (=> mapNonEmpty!47303 (= (arr!37337 _values!996) (store mapRest!47303 mapKey!47303 mapValue!47303))))

(declare-fun b!1195573 () Bool)

(assert (=> b!1195573 (= e!679400 e!679401)))

(declare-fun res!795655 () Bool)

(assert (=> b!1195573 (=> (not res!795655) (not e!679401))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77386 (_ BitVec 32)) Bool)

(assert (=> b!1195573 (= res!795655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542904 mask!1564))))

(assert (=> b!1195573 (= lt!542904 (array!77387 (store (arr!37336 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37873 _keys!1208)))))

(declare-fun b!1195574 () Bool)

(declare-fun res!795652 () Bool)

(assert (=> b!1195574 (=> (not res!795652) (not e!679400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195574 (= res!795652 (validMask!0 mask!1564))))

(declare-fun b!1195575 () Bool)

(declare-fun e!679402 () Bool)

(assert (=> b!1195575 (= e!679402 (and e!679398 mapRes!47303))))

(declare-fun condMapEmpty!47303 () Bool)

(declare-fun mapDefault!47303 () ValueCell!14446)

