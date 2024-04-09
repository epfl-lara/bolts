; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70976 () Bool)

(assert start!70976)

(declare-fun b_free!13169 () Bool)

(declare-fun b_next!13169 () Bool)

(assert (=> start!70976 (= b_free!13169 (not b_next!13169))))

(declare-fun tp!46258 () Bool)

(declare-fun b_and!22083 () Bool)

(assert (=> start!70976 (= tp!46258 b_and!22083)))

(declare-fun b!823852 () Bool)

(declare-fun e!458323 () Bool)

(declare-fun e!458321 () Bool)

(declare-fun mapRes!23935 () Bool)

(assert (=> b!823852 (= e!458323 (and e!458321 mapRes!23935))))

(declare-fun condMapEmpty!23935 () Bool)

(declare-datatypes ((V!24839 0))(
  ( (V!24840 (val!7487 Int)) )
))
(declare-datatypes ((ValueCell!7024 0))(
  ( (ValueCellFull!7024 (v!9916 V!24839)) (EmptyCell!7024) )
))
(declare-datatypes ((array!45906 0))(
  ( (array!45907 (arr!21997 (Array (_ BitVec 32) ValueCell!7024)) (size!22418 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45906)

(declare-fun mapDefault!23935 () ValueCell!7024)

