; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107990 () Bool)

(assert start!107990)

(declare-fun mapIsEmpty!51404 () Bool)

(declare-fun mapRes!51404 () Bool)

(assert (=> mapIsEmpty!51404 mapRes!51404))

(declare-fun b!1275336 () Bool)

(declare-fun e!728082 () Bool)

(declare-datatypes ((array!83565 0))(
  ( (array!83566 (arr!40293 (Array (_ BitVec 32) (_ BitVec 64))) (size!40844 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83565)

(assert (=> b!1275336 (= e!728082 (and (bvsle #b00000000000000000000000000000000 (size!40844 _keys!1427)) (bvsge (size!40844 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun b!1275337 () Bool)

(declare-fun e!728084 () Bool)

(declare-fun e!728081 () Bool)

(assert (=> b!1275337 (= e!728084 (and e!728081 mapRes!51404))))

(declare-fun condMapEmpty!51404 () Bool)

(declare-datatypes ((V!49445 0))(
  ( (V!49446 (val!16703 Int)) )
))
(declare-datatypes ((ValueCell!15730 0))(
  ( (ValueCellFull!15730 (v!19297 V!49445)) (EmptyCell!15730) )
))
(declare-datatypes ((array!83567 0))(
  ( (array!83568 (arr!40294 (Array (_ BitVec 32) ValueCell!15730)) (size!40845 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83567)

(declare-fun mapDefault!51404 () ValueCell!15730)

