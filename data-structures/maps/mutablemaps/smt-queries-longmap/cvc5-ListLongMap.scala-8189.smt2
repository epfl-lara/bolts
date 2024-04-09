; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100036 () Bool)

(assert start!100036)

(declare-fun b_free!25579 () Bool)

(declare-fun b_next!25579 () Bool)

(assert (=> start!100036 (= b_free!25579 (not b_next!25579))))

(declare-fun tp!89451 () Bool)

(declare-fun b_and!42039 () Bool)

(assert (=> start!100036 (= tp!89451 b_and!42039)))

(declare-fun b!1191216 () Bool)

(declare-fun res!792411 () Bool)

(declare-fun e!677192 () Bool)

(assert (=> b!1191216 (=> (not res!792411) (not e!677192))))

(declare-datatypes ((array!76984 0))(
  ( (array!76985 (arr!37138 (Array (_ BitVec 32) (_ BitVec 64))) (size!37675 (_ BitVec 32))) )
))
(declare-fun lt!541720 () array!76984)

(declare-datatypes ((List!26319 0))(
  ( (Nil!26316) (Cons!26315 (h!27524 (_ BitVec 64)) (t!38897 List!26319)) )
))
(declare-fun arrayNoDuplicates!0 (array!76984 (_ BitVec 32) List!26319) Bool)

(assert (=> b!1191216 (= res!792411 (arrayNoDuplicates!0 lt!541720 #b00000000000000000000000000000000 Nil!26316))))

(declare-fun b!1191217 () Bool)

(declare-fun e!677194 () Bool)

(declare-fun e!677193 () Bool)

(declare-fun mapRes!46991 () Bool)

(assert (=> b!1191217 (= e!677194 (and e!677193 mapRes!46991))))

(declare-fun condMapEmpty!46991 () Bool)

(declare-datatypes ((V!45273 0))(
  ( (V!45274 (val!15111 Int)) )
))
(declare-datatypes ((ValueCell!14345 0))(
  ( (ValueCellFull!14345 (v!17750 V!45273)) (EmptyCell!14345) )
))
(declare-datatypes ((array!76986 0))(
  ( (array!76987 (arr!37139 (Array (_ BitVec 32) ValueCell!14345)) (size!37676 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76986)

(declare-fun mapDefault!46991 () ValueCell!14345)

