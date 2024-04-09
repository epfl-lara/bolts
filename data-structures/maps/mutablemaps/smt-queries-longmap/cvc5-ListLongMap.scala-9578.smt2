; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113366 () Bool)

(assert start!113366)

(declare-fun b_free!31381 () Bool)

(declare-fun b_next!31381 () Bool)

(assert (=> start!113366 (= b_free!31381 (not b_next!31381))))

(declare-fun tp!109949 () Bool)

(declare-fun b_and!50625 () Bool)

(assert (=> start!113366 (= tp!109949 b_and!50625)))

(declare-fun b!1344685 () Bool)

(declare-fun res!892270 () Bool)

(declare-fun e!765309 () Bool)

(assert (=> b!1344685 (=> (not res!892270) (not e!765309))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344685 (= res!892270 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344686 () Bool)

(declare-fun res!892277 () Bool)

(assert (=> b!1344686 (=> (not res!892277) (not e!765309))))

(declare-datatypes ((array!91559 0))(
  ( (array!91560 (arr!44231 (Array (_ BitVec 32) (_ BitVec 64))) (size!44782 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91559)

(declare-datatypes ((List!31498 0))(
  ( (Nil!31495) (Cons!31494 (h!32703 (_ BitVec 64)) (t!46043 List!31498)) )
))
(declare-fun arrayNoDuplicates!0 (array!91559 (_ BitVec 32) List!31498) Bool)

(assert (=> b!1344686 (= res!892277 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31495))))

(declare-fun b!1344687 () Bool)

(declare-fun e!765310 () Bool)

(declare-fun e!765313 () Bool)

(declare-fun mapRes!57778 () Bool)

(assert (=> b!1344687 (= e!765310 (and e!765313 mapRes!57778))))

(declare-fun condMapEmpty!57778 () Bool)

(declare-datatypes ((V!54945 0))(
  ( (V!54946 (val!18765 Int)) )
))
(declare-datatypes ((ValueCell!17792 0))(
  ( (ValueCellFull!17792 (v!21411 V!54945)) (EmptyCell!17792) )
))
(declare-datatypes ((array!91561 0))(
  ( (array!91562 (arr!44232 (Array (_ BitVec 32) ValueCell!17792)) (size!44783 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91561)

(declare-fun mapDefault!57778 () ValueCell!17792)

