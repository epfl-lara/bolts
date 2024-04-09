; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20478 () Bool)

(assert start!20478)

(declare-fun b_free!5125 () Bool)

(declare-fun b_next!5125 () Bool)

(assert (=> start!20478 (= b_free!5125 (not b_next!5125))))

(declare-fun tp!18407 () Bool)

(declare-fun b_and!11889 () Bool)

(assert (=> start!20478 (= tp!18407 b_and!11889)))

(declare-fun res!97334 () Bool)

(declare-fun e!132843 () Bool)

(assert (=> start!20478 (=> (not res!97334) (not e!132843))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20478 (= res!97334 (validMask!0 mask!1149))))

(assert (=> start!20478 e!132843))

(declare-datatypes ((V!6289 0))(
  ( (V!6290 (val!2535 Int)) )
))
(declare-datatypes ((ValueCell!2147 0))(
  ( (ValueCellFull!2147 (v!4501 V!6289)) (EmptyCell!2147) )
))
(declare-datatypes ((array!9186 0))(
  ( (array!9187 (arr!4343 (Array (_ BitVec 32) ValueCell!2147)) (size!4668 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9186)

(declare-fun e!132845 () Bool)

(declare-fun array_inv!2857 (array!9186) Bool)

(assert (=> start!20478 (and (array_inv!2857 _values!649) e!132845)))

(assert (=> start!20478 true))

(declare-fun tp_is_empty!4981 () Bool)

(assert (=> start!20478 tp_is_empty!4981))

(declare-datatypes ((array!9188 0))(
  ( (array!9189 (arr!4344 (Array (_ BitVec 32) (_ BitVec 64))) (size!4669 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9188)

(declare-fun array_inv!2858 (array!9188) Bool)

(assert (=> start!20478 (array_inv!2858 _keys!825)))

(assert (=> start!20478 tp!18407))

(declare-fun b!202843 () Bool)

(declare-fun res!97338 () Bool)

(assert (=> b!202843 (=> (not res!97338) (not e!132843))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202843 (= res!97338 (and (= (size!4668 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4669 _keys!825) (size!4668 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202844 () Bool)

(declare-fun res!97341 () Bool)

(assert (=> b!202844 (=> (not res!97341) (not e!132843))))

(declare-datatypes ((List!2769 0))(
  ( (Nil!2766) (Cons!2765 (h!3407 (_ BitVec 64)) (t!7708 List!2769)) )
))
(declare-fun arrayNoDuplicates!0 (array!9188 (_ BitVec 32) List!2769) Bool)

(assert (=> b!202844 (= res!97341 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2766))))

(declare-fun b!202845 () Bool)

(declare-fun e!132846 () Bool)

(declare-fun mapRes!8540 () Bool)

(assert (=> b!202845 (= e!132845 (and e!132846 mapRes!8540))))

(declare-fun condMapEmpty!8540 () Bool)

(declare-fun mapDefault!8540 () ValueCell!2147)

