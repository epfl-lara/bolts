; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81802 () Bool)

(assert start!81802)

(declare-fun mapNonEmpty!33217 () Bool)

(declare-fun mapRes!33217 () Bool)

(declare-fun tp!63607 () Bool)

(declare-fun e!537307 () Bool)

(assert (=> mapNonEmpty!33217 (= mapRes!33217 (and tp!63607 e!537307))))

(declare-datatypes ((V!32773 0))(
  ( (V!32774 (val!10472 Int)) )
))
(declare-datatypes ((ValueCell!9940 0))(
  ( (ValueCellFull!9940 (v!13026 V!32773)) (EmptyCell!9940) )
))
(declare-fun mapValue!33217 () ValueCell!9940)

(declare-fun mapKey!33217 () (_ BitVec 32))

(declare-datatypes ((array!57811 0))(
  ( (array!57812 (arr!27784 (Array (_ BitVec 32) ValueCell!9940)) (size!28264 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57811)

(declare-fun mapRest!33217 () (Array (_ BitVec 32) ValueCell!9940))

(assert (=> mapNonEmpty!33217 (= (arr!27784 _values!1197) (store mapRest!33217 mapKey!33217 mapValue!33217))))

(declare-fun b!953705 () Bool)

(declare-fun e!537303 () Bool)

(declare-fun e!537304 () Bool)

(assert (=> b!953705 (= e!537303 (and e!537304 mapRes!33217))))

(declare-fun condMapEmpty!33217 () Bool)

(declare-fun mapDefault!33217 () ValueCell!9940)

