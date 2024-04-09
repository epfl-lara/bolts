; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81798 () Bool)

(assert start!81798)

(declare-fun b!953669 () Bool)

(declare-fun res!638765 () Bool)

(declare-fun e!537275 () Bool)

(assert (=> b!953669 (=> (not res!638765) (not e!537275))))

(declare-datatypes ((array!57803 0))(
  ( (array!57804 (arr!27780 (Array (_ BitVec 32) (_ BitVec 64))) (size!28260 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57803)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57803 (_ BitVec 32)) Bool)

(assert (=> b!953669 (= res!638765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953670 () Bool)

(assert (=> b!953670 (= e!537275 (and (bvsle #b00000000000000000000000000000000 (size!28260 _keys!1441)) (bvsge (size!28260 _keys!1441) #b01111111111111111111111111111111)))))

(declare-fun b!953671 () Bool)

(declare-fun e!537274 () Bool)

(declare-fun tp_is_empty!20839 () Bool)

(assert (=> b!953671 (= e!537274 tp_is_empty!20839)))

(declare-fun b!953672 () Bool)

(declare-fun res!638763 () Bool)

(assert (=> b!953672 (=> (not res!638763) (not e!537275))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32769 0))(
  ( (V!32770 (val!10470 Int)) )
))
(declare-datatypes ((ValueCell!9938 0))(
  ( (ValueCellFull!9938 (v!13024 V!32769)) (EmptyCell!9938) )
))
(declare-datatypes ((array!57805 0))(
  ( (array!57806 (arr!27781 (Array (_ BitVec 32) ValueCell!9938)) (size!28261 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57805)

(assert (=> b!953672 (= res!638763 (and (= (size!28261 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28260 _keys!1441) (size!28261 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953673 () Bool)

(declare-fun e!537273 () Bool)

(declare-fun mapRes!33211 () Bool)

(assert (=> b!953673 (= e!537273 (and e!537274 mapRes!33211))))

(declare-fun condMapEmpty!33211 () Bool)

(declare-fun mapDefault!33211 () ValueCell!9938)

