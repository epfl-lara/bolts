; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132168 () Bool)

(assert start!132168)

(declare-fun b_free!31849 () Bool)

(declare-fun b_next!31849 () Bool)

(assert (=> start!132168 (= b_free!31849 (not b_next!31849))))

(declare-fun tp!111799 () Bool)

(declare-fun b_and!51275 () Bool)

(assert (=> start!132168 (= tp!111799 b_and!51275)))

(declare-fun b!1549777 () Bool)

(declare-fun e!862717 () Bool)

(declare-fun tp_is_empty!38125 () Bool)

(assert (=> b!1549777 (= e!862717 tp_is_empty!38125)))

(declare-fun b!1549778 () Bool)

(declare-fun res!1061776 () Bool)

(declare-fun e!862715 () Bool)

(assert (=> b!1549778 (=> (not res!1061776) (not e!862715))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549778 (= res!1061776 (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549779 () Bool)

(declare-fun e!862711 () Bool)

(declare-fun mapRes!58891 () Bool)

(assert (=> b!1549779 (= e!862711 (and e!862717 mapRes!58891))))

(declare-fun condMapEmpty!58891 () Bool)

(declare-datatypes ((V!59277 0))(
  ( (V!59278 (val!19140 Int)) )
))
(declare-datatypes ((ValueCell!18152 0))(
  ( (ValueCellFull!18152 (v!21938 V!59277)) (EmptyCell!18152) )
))
(declare-datatypes ((array!103411 0))(
  ( (array!103412 (arr!49903 (Array (_ BitVec 32) ValueCell!18152)) (size!50454 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103411)

(declare-fun mapDefault!58891 () ValueCell!18152)

