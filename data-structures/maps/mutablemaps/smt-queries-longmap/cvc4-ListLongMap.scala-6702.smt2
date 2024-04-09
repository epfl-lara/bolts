; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84216 () Bool)

(assert start!84216)

(declare-fun b_free!19889 () Bool)

(declare-fun b_next!19889 () Bool)

(assert (=> start!84216 (= b_free!19889 (not b_next!19889))))

(declare-fun tp!69272 () Bool)

(declare-fun b_and!31873 () Bool)

(assert (=> start!84216 (= tp!69272 b_and!31873)))

(declare-fun b!984447 () Bool)

(declare-fun e!554992 () Bool)

(declare-fun tp_is_empty!22991 () Bool)

(assert (=> b!984447 (= e!554992 tp_is_empty!22991)))

(declare-fun b!984448 () Bool)

(declare-fun e!554994 () Bool)

(assert (=> b!984448 (= e!554994 tp_is_empty!22991)))

(declare-fun b!984449 () Bool)

(declare-fun e!554995 () Bool)

(declare-fun mapRes!36515 () Bool)

(assert (=> b!984449 (= e!554995 (and e!554994 mapRes!36515))))

(declare-fun condMapEmpty!36515 () Bool)

(declare-datatypes ((V!35637 0))(
  ( (V!35638 (val!11546 Int)) )
))
(declare-datatypes ((ValueCell!11014 0))(
  ( (ValueCellFull!11014 (v!14108 V!35637)) (EmptyCell!11014) )
))
(declare-datatypes ((array!61951 0))(
  ( (array!61952 (arr!29829 (Array (_ BitVec 32) ValueCell!11014)) (size!30309 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61951)

(declare-fun mapDefault!36515 () ValueCell!11014)

