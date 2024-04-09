; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100298 () Bool)

(assert start!100298)

(declare-fun b!1195919 () Bool)

(declare-fun res!795925 () Bool)

(declare-fun e!679562 () Bool)

(assert (=> b!1195919 (=> (not res!795925) (not e!679562))))

(declare-datatypes ((array!77420 0))(
  ( (array!77421 (arr!37353 (Array (_ BitVec 32) (_ BitVec 64))) (size!37890 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77420)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45565 0))(
  ( (V!45566 (val!15221 Int)) )
))
(declare-datatypes ((ValueCell!14455 0))(
  ( (ValueCellFull!14455 (v!17860 V!45565)) (EmptyCell!14455) )
))
(declare-datatypes ((array!77422 0))(
  ( (array!77423 (arr!37354 (Array (_ BitVec 32) ValueCell!14455)) (size!37891 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77422)

(assert (=> b!1195919 (= res!795925 (and (= (size!37891 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37890 _keys!1208) (size!37891 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47330 () Bool)

(declare-fun mapRes!47330 () Bool)

(declare-fun tp!89941 () Bool)

(declare-fun e!679563 () Bool)

(assert (=> mapNonEmpty!47330 (= mapRes!47330 (and tp!89941 e!679563))))

(declare-fun mapValue!47330 () ValueCell!14455)

(declare-fun mapRest!47330 () (Array (_ BitVec 32) ValueCell!14455))

(declare-fun mapKey!47330 () (_ BitVec 32))

(assert (=> mapNonEmpty!47330 (= (arr!37354 _values!996) (store mapRest!47330 mapKey!47330 mapValue!47330))))

(declare-fun res!795928 () Bool)

(assert (=> start!100298 (=> (not res!795928) (not e!679562))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100298 (= res!795928 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37890 _keys!1208))))))

(assert (=> start!100298 e!679562))

(declare-fun array_inv!28374 (array!77420) Bool)

(assert (=> start!100298 (array_inv!28374 _keys!1208)))

(assert (=> start!100298 true))

(declare-fun e!679559 () Bool)

(declare-fun array_inv!28375 (array!77422) Bool)

(assert (=> start!100298 (and (array_inv!28375 _values!996) e!679559)))

(declare-fun b!1195920 () Bool)

(declare-fun res!795927 () Bool)

(assert (=> b!1195920 (=> (not res!795927) (not e!679562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77420 (_ BitVec 32)) Bool)

(assert (=> b!1195920 (= res!795927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195921 () Bool)

(declare-fun res!795923 () Bool)

(assert (=> b!1195921 (=> (not res!795923) (not e!679562))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195921 (= res!795923 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37890 _keys!1208))))))

(declare-fun b!1195922 () Bool)

(declare-fun res!795926 () Bool)

(declare-fun e!679560 () Bool)

(assert (=> b!1195922 (=> (not res!795926) (not e!679560))))

(declare-fun lt!542957 () array!77420)

(declare-datatypes ((List!26452 0))(
  ( (Nil!26449) (Cons!26448 (h!27657 (_ BitVec 64)) (t!39130 List!26452)) )
))
(declare-fun arrayNoDuplicates!0 (array!77420 (_ BitVec 32) List!26452) Bool)

(assert (=> b!1195922 (= res!795926 (arrayNoDuplicates!0 lt!542957 #b00000000000000000000000000000000 Nil!26449))))

(declare-fun b!1195923 () Bool)

(declare-fun res!795930 () Bool)

(assert (=> b!1195923 (=> (not res!795930) (not e!679562))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195923 (= res!795930 (validKeyInArray!0 k!934))))

(declare-fun b!1195924 () Bool)

(declare-fun res!795929 () Bool)

(assert (=> b!1195924 (=> (not res!795929) (not e!679562))))

(assert (=> b!1195924 (= res!795929 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26449))))

(declare-fun b!1195925 () Bool)

(declare-fun tp_is_empty!30329 () Bool)

(assert (=> b!1195925 (= e!679563 tp_is_empty!30329)))

(declare-fun b!1195926 () Bool)

(declare-fun e!679561 () Bool)

(assert (=> b!1195926 (= e!679559 (and e!679561 mapRes!47330))))

(declare-fun condMapEmpty!47330 () Bool)

(declare-fun mapDefault!47330 () ValueCell!14455)

