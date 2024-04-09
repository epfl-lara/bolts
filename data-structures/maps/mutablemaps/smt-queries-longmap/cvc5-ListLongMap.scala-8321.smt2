; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101310 () Bool)

(assert start!101310)

(declare-fun b_free!26197 () Bool)

(declare-fun b_next!26197 () Bool)

(assert (=> start!101310 (= b_free!26197 (not b_next!26197))))

(declare-fun tp!91613 () Bool)

(declare-fun b_and!43521 () Bool)

(assert (=> start!101310 (= tp!91613 b_and!43521)))

(declare-fun b!1216554 () Bool)

(declare-fun e!690721 () Bool)

(declare-fun e!690720 () Bool)

(declare-fun mapRes!48226 () Bool)

(assert (=> b!1216554 (= e!690721 (and e!690720 mapRes!48226))))

(declare-fun condMapEmpty!48226 () Bool)

(declare-datatypes ((V!46329 0))(
  ( (V!46330 (val!15507 Int)) )
))
(declare-datatypes ((ValueCell!14741 0))(
  ( (ValueCellFull!14741 (v!18161 V!46329)) (EmptyCell!14741) )
))
(declare-datatypes ((array!78550 0))(
  ( (array!78551 (arr!37906 (Array (_ BitVec 32) ValueCell!14741)) (size!38443 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78550)

(declare-fun mapDefault!48226 () ValueCell!14741)

