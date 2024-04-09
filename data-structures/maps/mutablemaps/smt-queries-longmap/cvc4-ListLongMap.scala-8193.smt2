; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100064 () Bool)

(assert start!100064)

(declare-fun b_free!25607 () Bool)

(declare-fun b_next!25607 () Bool)

(assert (=> start!100064 (= b_free!25607 (not b_next!25607))))

(declare-fun tp!89536 () Bool)

(declare-fun b_and!42095 () Bool)

(assert (=> start!100064 (= tp!89536 b_and!42095)))

(declare-fun b!1191874 () Bool)

(declare-fun res!792911 () Bool)

(declare-fun e!677532 () Bool)

(assert (=> b!1191874 (=> (not res!792911) (not e!677532))))

(declare-datatypes ((array!77038 0))(
  ( (array!77039 (arr!37165 (Array (_ BitVec 32) (_ BitVec 64))) (size!37702 (_ BitVec 32))) )
))
(declare-fun lt!541974 () array!77038)

(declare-datatypes ((List!26342 0))(
  ( (Nil!26339) (Cons!26338 (h!27547 (_ BitVec 64)) (t!38948 List!26342)) )
))
(declare-fun arrayNoDuplicates!0 (array!77038 (_ BitVec 32) List!26342) Bool)

(assert (=> b!1191874 (= res!792911 (arrayNoDuplicates!0 lt!541974 #b00000000000000000000000000000000 Nil!26339))))

(declare-fun b!1191875 () Bool)

(declare-fun e!677528 () Bool)

(declare-fun e!677527 () Bool)

(declare-fun mapRes!47033 () Bool)

(assert (=> b!1191875 (= e!677528 (and e!677527 mapRes!47033))))

(declare-fun condMapEmpty!47033 () Bool)

(declare-datatypes ((V!45309 0))(
  ( (V!45310 (val!15125 Int)) )
))
(declare-datatypes ((ValueCell!14359 0))(
  ( (ValueCellFull!14359 (v!17764 V!45309)) (EmptyCell!14359) )
))
(declare-datatypes ((array!77040 0))(
  ( (array!77041 (arr!37166 (Array (_ BitVec 32) ValueCell!14359)) (size!37703 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77040)

(declare-fun mapDefault!47033 () ValueCell!14359)

