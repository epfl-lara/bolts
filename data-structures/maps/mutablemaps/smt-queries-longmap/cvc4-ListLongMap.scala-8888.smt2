; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107964 () Bool)

(assert start!107964)

(declare-fun b!1275202 () Bool)

(declare-fun e!727973 () Bool)

(declare-fun tp_is_empty!33245 () Bool)

(assert (=> b!1275202 (= e!727973 tp_is_empty!33245)))

(declare-fun res!847708 () Bool)

(declare-fun e!727972 () Bool)

(assert (=> start!107964 (=> (not res!847708) (not e!727972))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107964 (= res!847708 (validMask!0 mask!1805))))

(assert (=> start!107964 e!727972))

(assert (=> start!107964 true))

(declare-datatypes ((V!49429 0))(
  ( (V!49430 (val!16697 Int)) )
))
(declare-datatypes ((ValueCell!15724 0))(
  ( (ValueCellFull!15724 (v!19291 V!49429)) (EmptyCell!15724) )
))
(declare-datatypes ((array!83537 0))(
  ( (array!83538 (arr!40281 (Array (_ BitVec 32) ValueCell!15724)) (size!40832 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83537)

(declare-fun e!727970 () Bool)

(declare-fun array_inv!30569 (array!83537) Bool)

(assert (=> start!107964 (and (array_inv!30569 _values!1187) e!727970)))

(declare-datatypes ((array!83539 0))(
  ( (array!83540 (arr!40282 (Array (_ BitVec 32) (_ BitVec 64))) (size!40833 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83539)

(declare-fun array_inv!30570 (array!83539) Bool)

(assert (=> start!107964 (array_inv!30570 _keys!1427)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun b!1275203 () Bool)

(assert (=> b!1275203 (= e!727972 (and (= (size!40832 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40833 _keys!1427) (size!40832 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011) (= (size!40833 _keys!1427) (bvadd #b00000000000000000000000000000001 mask!1805)) (bvsgt #b00000000000000000000000000000000 (size!40833 _keys!1427))))))

(declare-fun b!1275204 () Bool)

(declare-fun e!727971 () Bool)

(declare-fun mapRes!51380 () Bool)

(assert (=> b!1275204 (= e!727970 (and e!727971 mapRes!51380))))

(declare-fun condMapEmpty!51380 () Bool)

(declare-fun mapDefault!51380 () ValueCell!15724)

