; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100094 () Bool)

(assert start!100094)

(declare-fun b_free!25637 () Bool)

(declare-fun b_next!25637 () Bool)

(assert (=> start!100094 (= b_free!25637 (not b_next!25637))))

(declare-fun tp!89626 () Bool)

(declare-fun b_and!42155 () Bool)

(assert (=> start!100094 (= tp!89626 b_and!42155)))

(declare-fun b!1192579 () Bool)

(declare-fun res!793454 () Bool)

(declare-fun e!677888 () Bool)

(assert (=> b!1192579 (=> (not res!793454) (not e!677888))))

(declare-datatypes ((array!77098 0))(
  ( (array!77099 (arr!37195 (Array (_ BitVec 32) (_ BitVec 64))) (size!37732 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77098)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45349 0))(
  ( (V!45350 (val!15140 Int)) )
))
(declare-datatypes ((ValueCell!14374 0))(
  ( (ValueCellFull!14374 (v!17779 V!45349)) (EmptyCell!14374) )
))
(declare-datatypes ((array!77100 0))(
  ( (array!77101 (arr!37196 (Array (_ BitVec 32) ValueCell!14374)) (size!37733 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77100)

(assert (=> b!1192579 (= res!793454 (and (= (size!37733 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37732 _keys!1208) (size!37733 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47078 () Bool)

(declare-fun mapRes!47078 () Bool)

(assert (=> mapIsEmpty!47078 mapRes!47078))

(declare-fun b!1192580 () Bool)

(declare-fun e!677892 () Bool)

(declare-fun e!677890 () Bool)

(assert (=> b!1192580 (= e!677892 (and e!677890 mapRes!47078))))

(declare-fun condMapEmpty!47078 () Bool)

(declare-fun mapDefault!47078 () ValueCell!14374)

