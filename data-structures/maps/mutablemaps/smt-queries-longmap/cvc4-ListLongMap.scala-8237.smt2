; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100392 () Bool)

(assert start!100392)

(declare-fun b!1197619 () Bool)

(declare-fun res!797108 () Bool)

(declare-fun e!680387 () Bool)

(assert (=> b!1197619 (=> (not res!797108) (not e!680387))))

(declare-datatypes ((array!77562 0))(
  ( (array!77563 (arr!37423 (Array (_ BitVec 32) (_ BitVec 64))) (size!37960 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77562)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77562 (_ BitVec 32)) Bool)

(assert (=> b!1197619 (= res!797108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197620 () Bool)

(declare-fun res!797106 () Bool)

(assert (=> b!1197620 (=> (not res!797106) (not e!680387))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45661 0))(
  ( (V!45662 (val!15257 Int)) )
))
(declare-datatypes ((ValueCell!14491 0))(
  ( (ValueCellFull!14491 (v!17896 V!45661)) (EmptyCell!14491) )
))
(declare-datatypes ((array!77564 0))(
  ( (array!77565 (arr!37424 (Array (_ BitVec 32) ValueCell!14491)) (size!37961 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77564)

(assert (=> b!1197620 (= res!797106 (and (= (size!37961 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37960 _keys!1208) (size!37961 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!797109 () Bool)

(assert (=> start!100392 (=> (not res!797109) (not e!680387))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100392 (= res!797109 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37960 _keys!1208))))))

(assert (=> start!100392 e!680387))

(declare-fun array_inv!28426 (array!77562) Bool)

(assert (=> start!100392 (array_inv!28426 _keys!1208)))

(assert (=> start!100392 true))

(declare-fun e!680390 () Bool)

(declare-fun array_inv!28427 (array!77564) Bool)

(assert (=> start!100392 (and (array_inv!28427 _values!996) e!680390)))

(declare-fun b!1197621 () Bool)

(declare-fun res!797100 () Bool)

(assert (=> b!1197621 (=> (not res!797100) (not e!680387))))

(declare-datatypes ((List!26492 0))(
  ( (Nil!26489) (Cons!26488 (h!27697 (_ BitVec 64)) (t!39200 List!26492)) )
))
(declare-fun arrayNoDuplicates!0 (array!77562 (_ BitVec 32) List!26492) Bool)

(assert (=> b!1197621 (= res!797100 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26489))))

(declare-fun mapNonEmpty!47441 () Bool)

(declare-fun mapRes!47441 () Bool)

(declare-fun tp!90097 () Bool)

(declare-fun e!680389 () Bool)

(assert (=> mapNonEmpty!47441 (= mapRes!47441 (and tp!90097 e!680389))))

(declare-fun mapRest!47441 () (Array (_ BitVec 32) ValueCell!14491))

(declare-fun mapValue!47441 () ValueCell!14491)

(declare-fun mapKey!47441 () (_ BitVec 32))

(assert (=> mapNonEmpty!47441 (= (arr!37424 _values!996) (store mapRest!47441 mapKey!47441 mapValue!47441))))

(declare-fun b!1197622 () Bool)

(declare-fun res!797101 () Bool)

(assert (=> b!1197622 (=> (not res!797101) (not e!680387))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197622 (= res!797101 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37960 _keys!1208))))))

(declare-fun b!1197623 () Bool)

(declare-fun e!680385 () Bool)

(declare-fun tp_is_empty!30401 () Bool)

(assert (=> b!1197623 (= e!680385 tp_is_empty!30401)))

(declare-fun b!1197624 () Bool)

(declare-fun e!680388 () Bool)

(assert (=> b!1197624 (= e!680388 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197624 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39644 0))(
  ( (Unit!39645) )
))
(declare-fun lt!543281 () Unit!39644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77562 (_ BitVec 64) (_ BitVec 32)) Unit!39644)

(assert (=> b!1197624 (= lt!543281 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1197625 () Bool)

(declare-fun res!797107 () Bool)

(assert (=> b!1197625 (=> (not res!797107) (not e!680387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197625 (= res!797107 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47441 () Bool)

(assert (=> mapIsEmpty!47441 mapRes!47441))

(declare-fun b!1197626 () Bool)

(declare-fun res!797103 () Bool)

(assert (=> b!1197626 (=> (not res!797103) (not e!680388))))

(declare-fun lt!543282 () array!77562)

(assert (=> b!1197626 (= res!797103 (arrayNoDuplicates!0 lt!543282 #b00000000000000000000000000000000 Nil!26489))))

(declare-fun b!1197627 () Bool)

(declare-fun res!797102 () Bool)

(assert (=> b!1197627 (=> (not res!797102) (not e!680387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197627 (= res!797102 (validKeyInArray!0 k!934))))

(declare-fun b!1197628 () Bool)

(assert (=> b!1197628 (= e!680389 tp_is_empty!30401)))

(declare-fun b!1197629 () Bool)

(declare-fun res!797104 () Bool)

(assert (=> b!1197629 (=> (not res!797104) (not e!680387))))

(assert (=> b!1197629 (= res!797104 (= (select (arr!37423 _keys!1208) i!673) k!934))))

(declare-fun b!1197630 () Bool)

(assert (=> b!1197630 (= e!680390 (and e!680385 mapRes!47441))))

(declare-fun condMapEmpty!47441 () Bool)

(declare-fun mapDefault!47441 () ValueCell!14491)

