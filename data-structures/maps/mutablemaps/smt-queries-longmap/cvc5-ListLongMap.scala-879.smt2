; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20382 () Bool)

(assert start!20382)

(declare-fun b_free!5029 () Bool)

(declare-fun b_next!5029 () Bool)

(assert (=> start!20382 (= b_free!5029 (not b_next!5029))))

(declare-fun tp!18118 () Bool)

(declare-fun b_and!11793 () Bool)

(assert (=> start!20382 (= tp!18118 b_and!11793)))

(declare-fun res!96035 () Bool)

(declare-fun e!131833 () Bool)

(assert (=> start!20382 (=> (not res!96035) (not e!131833))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20382 (= res!96035 (validMask!0 mask!1149))))

(assert (=> start!20382 e!131833))

(declare-datatypes ((V!6161 0))(
  ( (V!6162 (val!2487 Int)) )
))
(declare-datatypes ((ValueCell!2099 0))(
  ( (ValueCellFull!2099 (v!4453 V!6161)) (EmptyCell!2099) )
))
(declare-datatypes ((array!8998 0))(
  ( (array!8999 (arr!4249 (Array (_ BitVec 32) ValueCell!2099)) (size!4574 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8998)

(declare-fun e!131835 () Bool)

(declare-fun array_inv!2789 (array!8998) Bool)

(assert (=> start!20382 (and (array_inv!2789 _values!649) e!131835)))

(assert (=> start!20382 true))

(declare-fun tp_is_empty!4885 () Bool)

(assert (=> start!20382 tp_is_empty!4885))

(declare-datatypes ((array!9000 0))(
  ( (array!9001 (arr!4250 (Array (_ BitVec 32) (_ BitVec 64))) (size!4575 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9000)

(declare-fun array_inv!2790 (array!9000) Bool)

(assert (=> start!20382 (array_inv!2790 _keys!825)))

(assert (=> start!20382 tp!18118))

(declare-fun b!201106 () Bool)

(declare-fun e!131837 () Bool)

(declare-fun mapRes!8396 () Bool)

(assert (=> b!201106 (= e!131835 (and e!131837 mapRes!8396))))

(declare-fun condMapEmpty!8396 () Bool)

(declare-fun mapDefault!8396 () ValueCell!2099)

