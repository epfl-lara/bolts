; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100028 () Bool)

(assert start!100028)

(declare-fun b_free!25571 () Bool)

(declare-fun b_next!25571 () Bool)

(assert (=> start!100028 (= b_free!25571 (not b_next!25571))))

(declare-fun tp!89428 () Bool)

(declare-fun b_and!42023 () Bool)

(assert (=> start!100028 (= tp!89428 b_and!42023)))

(declare-fun b!1191028 () Bool)

(declare-fun res!792258 () Bool)

(declare-fun e!677097 () Bool)

(assert (=> b!1191028 (=> (not res!792258) (not e!677097))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191028 (= res!792258 (validMask!0 mask!1564))))

(declare-fun b!1191029 () Bool)

(declare-fun res!792266 () Bool)

(assert (=> b!1191029 (=> (not res!792266) (not e!677097))))

(declare-datatypes ((array!76968 0))(
  ( (array!76969 (arr!37130 (Array (_ BitVec 32) (_ BitVec 64))) (size!37667 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76968)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76968 (_ BitVec 32)) Bool)

(assert (=> b!1191029 (= res!792266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191030 () Bool)

(declare-fun e!677094 () Bool)

(declare-fun e!677098 () Bool)

(declare-fun mapRes!46979 () Bool)

(assert (=> b!1191030 (= e!677094 (and e!677098 mapRes!46979))))

(declare-fun condMapEmpty!46979 () Bool)

(declare-datatypes ((V!45261 0))(
  ( (V!45262 (val!15107 Int)) )
))
(declare-datatypes ((ValueCell!14341 0))(
  ( (ValueCellFull!14341 (v!17746 V!45261)) (EmptyCell!14341) )
))
(declare-datatypes ((array!76970 0))(
  ( (array!76971 (arr!37131 (Array (_ BitVec 32) ValueCell!14341)) (size!37668 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76970)

(declare-fun mapDefault!46979 () ValueCell!14341)

