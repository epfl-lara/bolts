; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100276 () Bool)

(assert start!100276)

(declare-fun b!1195490 () Bool)

(declare-fun res!795597 () Bool)

(declare-fun e!679362 () Bool)

(assert (=> b!1195490 (=> (not res!795597) (not e!679362))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77378 0))(
  ( (array!77379 (arr!37332 (Array (_ BitVec 32) (_ BitVec 64))) (size!37869 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77378)

(assert (=> b!1195490 (= res!795597 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37869 _keys!1208))))))

(declare-fun mapNonEmpty!47297 () Bool)

(declare-fun mapRes!47297 () Bool)

(declare-fun tp!89908 () Bool)

(declare-fun e!679363 () Bool)

(assert (=> mapNonEmpty!47297 (= mapRes!47297 (and tp!89908 e!679363))))

(declare-datatypes ((V!45537 0))(
  ( (V!45538 (val!15210 Int)) )
))
(declare-datatypes ((ValueCell!14444 0))(
  ( (ValueCellFull!14444 (v!17849 V!45537)) (EmptyCell!14444) )
))
(declare-fun mapRest!47297 () (Array (_ BitVec 32) ValueCell!14444))

(declare-datatypes ((array!77380 0))(
  ( (array!77381 (arr!37333 (Array (_ BitVec 32) ValueCell!14444)) (size!37870 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77380)

(declare-fun mapKey!47297 () (_ BitVec 32))

(declare-fun mapValue!47297 () ValueCell!14444)

(assert (=> mapNonEmpty!47297 (= (arr!37333 _values!996) (store mapRest!47297 mapKey!47297 mapValue!47297))))

(declare-fun b!1195491 () Bool)

(declare-fun res!795592 () Bool)

(assert (=> b!1195491 (=> (not res!795592) (not e!679362))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1195491 (= res!795592 (and (= (size!37870 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37869 _keys!1208) (size!37870 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195492 () Bool)

(declare-fun tp_is_empty!30307 () Bool)

(assert (=> b!1195492 (= e!679363 tp_is_empty!30307)))

(declare-fun b!1195493 () Bool)

(declare-fun e!679364 () Bool)

(declare-fun e!679361 () Bool)

(assert (=> b!1195493 (= e!679364 (and e!679361 mapRes!47297))))

(declare-fun condMapEmpty!47297 () Bool)

(declare-fun mapDefault!47297 () ValueCell!14444)

