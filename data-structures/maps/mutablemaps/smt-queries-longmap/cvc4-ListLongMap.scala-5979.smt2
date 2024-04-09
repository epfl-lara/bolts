; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77732 () Bool)

(assert start!77732)

(declare-fun b_free!16289 () Bool)

(declare-fun b_next!16289 () Bool)

(assert (=> start!77732 (= b_free!16289 (not b_next!16289))))

(declare-fun tp!57130 () Bool)

(declare-fun b_and!26749 () Bool)

(assert (=> start!77732 (= tp!57130 b_and!26749)))

(declare-fun b!906286 () Bool)

(declare-fun res!611742 () Bool)

(declare-fun e!507911 () Bool)

(assert (=> b!906286 (=> (not res!611742) (not e!507911))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53442 0))(
  ( (array!53443 (arr!25676 (Array (_ BitVec 32) (_ BitVec 64))) (size!26136 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53442)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!906286 (= res!611742 (and (= (select (arr!25676 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906287 () Bool)

(declare-fun e!507914 () Bool)

(declare-fun e!507917 () Bool)

(declare-fun mapRes!29773 () Bool)

(assert (=> b!906287 (= e!507914 (and e!507917 mapRes!29773))))

(declare-fun condMapEmpty!29773 () Bool)

(declare-datatypes ((V!29907 0))(
  ( (V!29908 (val!9404 Int)) )
))
(declare-datatypes ((ValueCell!8872 0))(
  ( (ValueCellFull!8872 (v!11909 V!29907)) (EmptyCell!8872) )
))
(declare-datatypes ((array!53444 0))(
  ( (array!53445 (arr!25677 (Array (_ BitVec 32) ValueCell!8872)) (size!26137 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53444)

(declare-fun mapDefault!29773 () ValueCell!8872)

