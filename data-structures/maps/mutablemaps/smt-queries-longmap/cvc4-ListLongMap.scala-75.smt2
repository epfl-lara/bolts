; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1030 () Bool)

(assert start!1030)

(declare-fun b_free!359 () Bool)

(declare-fun b_next!359 () Bool)

(assert (=> start!1030 (= b_free!359 (not b_next!359))))

(declare-fun tp!1315 () Bool)

(declare-fun b_and!511 () Bool)

(assert (=> start!1030 (= tp!1315 b_and!511)))

(declare-fun b!8979 () Bool)

(declare-fun res!8251 () Bool)

(declare-fun e!5124 () Bool)

(assert (=> b!8979 (=> (not res!8251) (not e!5124))))

(declare-datatypes ((array!797 0))(
  ( (array!798 (arr!384 (Array (_ BitVec 32) (_ BitVec 64))) (size!446 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!797)

(declare-datatypes ((List!264 0))(
  ( (Nil!261) (Cons!260 (h!826 (_ BitVec 64)) (t!2405 List!264)) )
))
(declare-fun arrayNoDuplicates!0 (array!797 (_ BitVec 32) List!264) Bool)

(assert (=> b!8979 (= res!8251 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!261))))

(declare-fun b!8980 () Bool)

(declare-fun e!5125 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8980 (= e!5125 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8981 () Bool)

(declare-fun e!5123 () Bool)

(declare-fun e!5122 () Bool)

(declare-fun mapRes!635 () Bool)

(assert (=> b!8981 (= e!5123 (and e!5122 mapRes!635))))

(declare-fun condMapEmpty!635 () Bool)

(declare-datatypes ((V!759 0))(
  ( (V!760 (val!224 Int)) )
))
(declare-datatypes ((ValueCell!202 0))(
  ( (ValueCellFull!202 (v!1318 V!759)) (EmptyCell!202) )
))
(declare-datatypes ((array!799 0))(
  ( (array!800 (arr!385 (Array (_ BitVec 32) ValueCell!202)) (size!447 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!799)

(declare-fun mapDefault!635 () ValueCell!202)

