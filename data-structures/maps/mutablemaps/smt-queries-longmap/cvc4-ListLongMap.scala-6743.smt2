; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84554 () Bool)

(assert start!84554)

(declare-fun b_free!20021 () Bool)

(declare-fun b_next!20021 () Bool)

(assert (=> start!84554 (= b_free!20021 (not b_next!20021))))

(declare-fun tp!69849 () Bool)

(declare-fun b_and!32133 () Bool)

(assert (=> start!84554 (= tp!69849 b_and!32133)))

(declare-fun b!988492 () Bool)

(declare-fun e!557427 () Bool)

(declare-fun e!557425 () Bool)

(declare-fun mapRes!36894 () Bool)

(assert (=> b!988492 (= e!557427 (and e!557425 mapRes!36894))))

(declare-fun condMapEmpty!36894 () Bool)

(declare-datatypes ((V!35965 0))(
  ( (V!35966 (val!11669 Int)) )
))
(declare-datatypes ((ValueCell!11137 0))(
  ( (ValueCellFull!11137 (v!14236 V!35965)) (EmptyCell!11137) )
))
(declare-datatypes ((array!62423 0))(
  ( (array!62424 (arr!30062 (Array (_ BitVec 32) ValueCell!11137)) (size!30542 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62423)

(declare-fun mapDefault!36894 () ValueCell!11137)

