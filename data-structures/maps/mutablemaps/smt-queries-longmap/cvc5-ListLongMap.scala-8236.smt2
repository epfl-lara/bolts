; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100382 () Bool)

(assert start!100382)

(declare-fun b!1197424 () Bool)

(declare-fun res!796958 () Bool)

(declare-fun e!680297 () Bool)

(assert (=> b!1197424 (=> (not res!796958) (not e!680297))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197424 (= res!796958 (validKeyInArray!0 k!934))))

(declare-fun b!1197425 () Bool)

(declare-fun res!796951 () Bool)

(assert (=> b!1197425 (=> (not res!796951) (not e!680297))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197425 (= res!796951 (validMask!0 mask!1564))))

(declare-fun b!1197426 () Bool)

(declare-fun res!796955 () Bool)

(assert (=> b!1197426 (=> (not res!796955) (not e!680297))))

(declare-datatypes ((array!77542 0))(
  ( (array!77543 (arr!37413 (Array (_ BitVec 32) (_ BitVec 64))) (size!37950 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77542)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77542 (_ BitVec 32)) Bool)

(assert (=> b!1197426 (= res!796955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197427 () Bool)

(declare-fun res!796954 () Bool)

(declare-fun e!680296 () Bool)

(assert (=> b!1197427 (=> (not res!796954) (not e!680296))))

(declare-fun lt!543251 () array!77542)

(declare-datatypes ((List!26488 0))(
  ( (Nil!26485) (Cons!26484 (h!27693 (_ BitVec 64)) (t!39196 List!26488)) )
))
(declare-fun arrayNoDuplicates!0 (array!77542 (_ BitVec 32) List!26488) Bool)

(assert (=> b!1197427 (= res!796954 (arrayNoDuplicates!0 lt!543251 #b00000000000000000000000000000000 Nil!26485))))

(declare-fun b!1197428 () Bool)

(declare-fun res!796953 () Bool)

(assert (=> b!1197428 (=> (not res!796953) (not e!680297))))

(declare-datatypes ((V!45649 0))(
  ( (V!45650 (val!15252 Int)) )
))
(declare-datatypes ((ValueCell!14486 0))(
  ( (ValueCellFull!14486 (v!17891 V!45649)) (EmptyCell!14486) )
))
(declare-datatypes ((array!77544 0))(
  ( (array!77545 (arr!37414 (Array (_ BitVec 32) ValueCell!14486)) (size!37951 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77544)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197428 (= res!796953 (and (= (size!37951 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37950 _keys!1208) (size!37951 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47426 () Bool)

(declare-fun mapRes!47426 () Bool)

(declare-fun tp!90082 () Bool)

(declare-fun e!680298 () Bool)

(assert (=> mapNonEmpty!47426 (= mapRes!47426 (and tp!90082 e!680298))))

(declare-fun mapValue!47426 () ValueCell!14486)

(declare-fun mapRest!47426 () (Array (_ BitVec 32) ValueCell!14486))

(declare-fun mapKey!47426 () (_ BitVec 32))

(assert (=> mapNonEmpty!47426 (= (arr!37414 _values!996) (store mapRest!47426 mapKey!47426 mapValue!47426))))

(declare-fun b!1197429 () Bool)

(declare-fun e!680295 () Bool)

(declare-fun e!680299 () Bool)

(assert (=> b!1197429 (= e!680295 (and e!680299 mapRes!47426))))

(declare-fun condMapEmpty!47426 () Bool)

(declare-fun mapDefault!47426 () ValueCell!14486)

