; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100562 () Bool)

(assert start!100562)

(declare-fun b_free!25849 () Bool)

(declare-fun b_next!25849 () Bool)

(assert (=> start!100562 (= b_free!25849 (not b_next!25849))))

(declare-fun tp!90537 () Bool)

(declare-fun b_and!42599 () Bool)

(assert (=> start!100562 (= tp!90537 b_and!42599)))

(declare-fun b!1201227 () Bool)

(declare-fun e!682192 () Bool)

(declare-fun e!682191 () Bool)

(declare-fun mapRes!47672 () Bool)

(assert (=> b!1201227 (= e!682192 (and e!682191 mapRes!47672))))

(declare-fun condMapEmpty!47672 () Bool)

(declare-datatypes ((V!45865 0))(
  ( (V!45866 (val!15333 Int)) )
))
(declare-datatypes ((ValueCell!14567 0))(
  ( (ValueCellFull!14567 (v!17972 V!45865)) (EmptyCell!14567) )
))
(declare-datatypes ((array!77860 0))(
  ( (array!77861 (arr!37571 (Array (_ BitVec 32) ValueCell!14567)) (size!38108 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77860)

(declare-fun mapDefault!47672 () ValueCell!14567)

