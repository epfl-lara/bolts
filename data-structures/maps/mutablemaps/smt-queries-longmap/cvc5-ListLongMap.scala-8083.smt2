; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99400 () Bool)

(assert start!99400)

(declare-fun b_free!24943 () Bool)

(declare-fun b_next!24943 () Bool)

(assert (=> start!99400 (= b_free!24943 (not b_next!24943))))

(declare-fun tp!87543 () Bool)

(declare-fun b_and!40767 () Bool)

(assert (=> start!99400 (= tp!87543 b_and!40767)))

(declare-fun b!1172063 () Bool)

(declare-fun res!778236 () Bool)

(declare-fun e!666229 () Bool)

(assert (=> b!1172063 (=> (not res!778236) (not e!666229))))

(declare-datatypes ((array!75722 0))(
  ( (array!75723 (arr!36507 (Array (_ BitVec 32) (_ BitVec 64))) (size!37044 (_ BitVec 32))) )
))
(declare-fun lt!528053 () array!75722)

(declare-datatypes ((List!25768 0))(
  ( (Nil!25765) (Cons!25764 (h!26973 (_ BitVec 64)) (t!37710 List!25768)) )
))
(declare-fun arrayNoDuplicates!0 (array!75722 (_ BitVec 32) List!25768) Bool)

(assert (=> b!1172063 (= res!778236 (arrayNoDuplicates!0 lt!528053 #b00000000000000000000000000000000 Nil!25765))))

(declare-fun b!1172064 () Bool)

(declare-fun e!666235 () Bool)

(declare-fun e!666236 () Bool)

(declare-fun mapRes!46037 () Bool)

(assert (=> b!1172064 (= e!666235 (and e!666236 mapRes!46037))))

(declare-fun condMapEmpty!46037 () Bool)

(declare-datatypes ((V!44425 0))(
  ( (V!44426 (val!14793 Int)) )
))
(declare-datatypes ((ValueCell!14027 0))(
  ( (ValueCellFull!14027 (v!17432 V!44425)) (EmptyCell!14027) )
))
(declare-datatypes ((array!75724 0))(
  ( (array!75725 (arr!36508 (Array (_ BitVec 32) ValueCell!14027)) (size!37045 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75724)

(declare-fun mapDefault!46037 () ValueCell!14027)

