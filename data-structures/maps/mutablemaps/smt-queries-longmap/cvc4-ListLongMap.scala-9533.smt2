; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113100 () Bool)

(assert start!113100)

(declare-fun b_free!31115 () Bool)

(declare-fun b_next!31115 () Bool)

(assert (=> start!113100 (= b_free!31115 (not b_next!31115))))

(declare-fun tp!109151 () Bool)

(declare-fun b_and!50155 () Bool)

(assert (=> start!113100 (= tp!109151 b_and!50155)))

(declare-fun b!1339999 () Bool)

(declare-fun e!763313 () Bool)

(declare-fun e!763316 () Bool)

(declare-fun mapRes!57379 () Bool)

(assert (=> b!1339999 (= e!763313 (and e!763316 mapRes!57379))))

(declare-fun condMapEmpty!57379 () Bool)

(declare-datatypes ((V!54589 0))(
  ( (V!54590 (val!18632 Int)) )
))
(declare-datatypes ((ValueCell!17659 0))(
  ( (ValueCellFull!17659 (v!21278 V!54589)) (EmptyCell!17659) )
))
(declare-datatypes ((array!91047 0))(
  ( (array!91048 (arr!43975 (Array (_ BitVec 32) ValueCell!17659)) (size!44526 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91047)

(declare-fun mapDefault!57379 () ValueCell!17659)

