; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20844 () Bool)

(assert start!20844)

(declare-fun b_free!5485 () Bool)

(declare-fun b_next!5485 () Bool)

(assert (=> start!20844 (= b_free!5485 (not b_next!5485))))

(declare-fun tp!19495 () Bool)

(declare-fun b_and!12249 () Bool)

(assert (=> start!20844 (= tp!19495 b_and!12249)))

(declare-fun res!101745 () Bool)

(declare-fun e!136177 () Bool)

(assert (=> start!20844 (=> (not res!101745) (not e!136177))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20844 (= res!101745 (validMask!0 mask!1149))))

(assert (=> start!20844 e!136177))

(declare-datatypes ((V!6777 0))(
  ( (V!6778 (val!2718 Int)) )
))
(declare-datatypes ((ValueCell!2330 0))(
  ( (ValueCellFull!2330 (v!4684 V!6777)) (EmptyCell!2330) )
))
(declare-datatypes ((array!9896 0))(
  ( (array!9897 (arr!4698 (Array (_ BitVec 32) ValueCell!2330)) (size!5023 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9896)

(declare-fun e!136180 () Bool)

(declare-fun array_inv!3105 (array!9896) Bool)

(assert (=> start!20844 (and (array_inv!3105 _values!649) e!136180)))

(assert (=> start!20844 true))

(declare-fun tp_is_empty!5347 () Bool)

(assert (=> start!20844 tp_is_empty!5347))

(declare-datatypes ((array!9898 0))(
  ( (array!9899 (arr!4699 (Array (_ BitVec 32) (_ BitVec 64))) (size!5024 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9898)

(declare-fun array_inv!3106 (array!9898) Bool)

(assert (=> start!20844 (array_inv!3106 _keys!825)))

(assert (=> start!20844 tp!19495))

(declare-fun b!208896 () Bool)

(declare-fun e!136179 () Bool)

(declare-fun mapRes!9089 () Bool)

(assert (=> b!208896 (= e!136180 (and e!136179 mapRes!9089))))

(declare-fun condMapEmpty!9089 () Bool)

(declare-fun mapDefault!9089 () ValueCell!2330)

