; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81858 () Bool)

(assert start!81858)

(declare-fun b_free!18325 () Bool)

(declare-fun b_next!18325 () Bool)

(assert (=> start!81858 (= b_free!18325 (not b_next!18325))))

(declare-fun tp!63675 () Bool)

(declare-fun b_and!29829 () Bool)

(assert (=> start!81858 (= tp!63675 b_and!29829)))

(declare-fun mapIsEmpty!33265 () Bool)

(declare-fun mapRes!33265 () Bool)

(assert (=> mapIsEmpty!33265 mapRes!33265))

(declare-fun b!954115 () Bool)

(declare-fun e!537573 () Bool)

(declare-fun tp_is_empty!20869 () Bool)

(assert (=> b!954115 (= e!537573 tp_is_empty!20869)))

(declare-fun b!954116 () Bool)

(declare-fun e!537576 () Bool)

(declare-fun e!537572 () Bool)

(assert (=> b!954116 (= e!537576 (and e!537572 mapRes!33265))))

(declare-fun condMapEmpty!33265 () Bool)

(declare-datatypes ((V!32809 0))(
  ( (V!32810 (val!10485 Int)) )
))
(declare-datatypes ((ValueCell!9953 0))(
  ( (ValueCellFull!9953 (v!13040 V!32809)) (EmptyCell!9953) )
))
(declare-datatypes ((array!57867 0))(
  ( (array!57868 (arr!27809 (Array (_ BitVec 32) ValueCell!9953)) (size!28289 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57867)

(declare-fun mapDefault!33265 () ValueCell!9953)

