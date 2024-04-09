; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81772 () Bool)

(assert start!81772)

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun e!537165 () Bool)

(declare-datatypes ((array!57775 0))(
  ( (array!57776 (arr!27768 (Array (_ BitVec 32) (_ BitVec 64))) (size!28248 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57775)

(declare-datatypes ((V!32753 0))(
  ( (V!32754 (val!10464 Int)) )
))
(declare-datatypes ((ValueCell!9932 0))(
  ( (ValueCellFull!9932 (v!13018 V!32753)) (EmptyCell!9932) )
))
(declare-datatypes ((array!57777 0))(
  ( (array!57778 (arr!27769 (Array (_ BitVec 32) ValueCell!9932)) (size!28249 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57777)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun b!953547 () Bool)

(assert (=> b!953547 (= e!537165 (and (= (size!28249 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28248 _keys!1441) (size!28249 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011) (= (size!28248 _keys!1441) (bvadd #b00000000000000000000000000000001 mask!1823)) (bvsgt #b00000000000000000000000000000000 (size!28248 _keys!1441))))))

(declare-fun b!953548 () Bool)

(declare-fun e!537163 () Bool)

(declare-fun e!537164 () Bool)

(declare-fun mapRes!33187 () Bool)

(assert (=> b!953548 (= e!537163 (and e!537164 mapRes!33187))))

(declare-fun condMapEmpty!33187 () Bool)

(declare-fun mapDefault!33187 () ValueCell!9932)

