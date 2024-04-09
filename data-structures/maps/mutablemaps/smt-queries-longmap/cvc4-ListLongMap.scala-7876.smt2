; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98040 () Bool)

(assert start!98040)

(declare-fun b_free!23705 () Bool)

(declare-fun b_next!23705 () Bool)

(assert (=> start!98040 (= b_free!23705 (not b_next!23705))))

(declare-fun tp!83820 () Bool)

(declare-fun b_and!38215 () Bool)

(assert (=> start!98040 (= tp!83820 b_and!38215)))

(declare-fun b!1124176 () Bool)

(declare-fun res!751186 () Bool)

(declare-fun e!640000 () Bool)

(assert (=> b!1124176 (=> res!751186 e!640000)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1124176 (= res!751186 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124177 () Bool)

(declare-fun e!640008 () Bool)

(declare-fun e!640010 () Bool)

(declare-fun mapRes!44170 () Bool)

(assert (=> b!1124177 (= e!640008 (and e!640010 mapRes!44170))))

(declare-fun condMapEmpty!44170 () Bool)

(declare-datatypes ((V!42773 0))(
  ( (V!42774 (val!14174 Int)) )
))
(declare-datatypes ((ValueCell!13408 0))(
  ( (ValueCellFull!13408 (v!16808 V!42773)) (EmptyCell!13408) )
))
(declare-datatypes ((array!73296 0))(
  ( (array!73297 (arr!35297 (Array (_ BitVec 32) ValueCell!13408)) (size!35834 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73296)

(declare-fun mapDefault!44170 () ValueCell!13408)

