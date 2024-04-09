; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20238 () Bool)

(assert start!20238)

(declare-fun b_free!4885 () Bool)

(declare-fun b_next!4885 () Bool)

(assert (=> start!20238 (= b_free!4885 (not b_next!4885))))

(declare-fun tp!17687 () Bool)

(declare-fun b_and!11649 () Bool)

(assert (=> start!20238 (= tp!17687 b_and!11649)))

(declare-fun b!198780 () Bool)

(declare-fun e!130596 () Bool)

(declare-fun tp_is_empty!4741 () Bool)

(assert (=> b!198780 (= e!130596 tp_is_empty!4741)))

(declare-fun b!198781 () Bool)

(declare-fun res!94351 () Bool)

(declare-fun e!130600 () Bool)

(assert (=> b!198781 (=> (not res!94351) (not e!130600))))

(declare-datatypes ((array!8722 0))(
  ( (array!8723 (arr!4111 (Array (_ BitVec 32) (_ BitVec 64))) (size!4436 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8722)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8722 (_ BitVec 32)) Bool)

(assert (=> b!198781 (= res!94351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!94356 () Bool)

(assert (=> start!20238 (=> (not res!94356) (not e!130600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20238 (= res!94356 (validMask!0 mask!1149))))

(assert (=> start!20238 e!130600))

(declare-datatypes ((V!5969 0))(
  ( (V!5970 (val!2415 Int)) )
))
(declare-datatypes ((ValueCell!2027 0))(
  ( (ValueCellFull!2027 (v!4381 V!5969)) (EmptyCell!2027) )
))
(declare-datatypes ((array!8724 0))(
  ( (array!8725 (arr!4112 (Array (_ BitVec 32) ValueCell!2027)) (size!4437 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8724)

(declare-fun e!130597 () Bool)

(declare-fun array_inv!2683 (array!8724) Bool)

(assert (=> start!20238 (and (array_inv!2683 _values!649) e!130597)))

(assert (=> start!20238 true))

(assert (=> start!20238 tp_is_empty!4741))

(declare-fun array_inv!2684 (array!8722) Bool)

(assert (=> start!20238 (array_inv!2684 _keys!825)))

(assert (=> start!20238 tp!17687))

(declare-fun b!198782 () Bool)

(declare-fun res!94353 () Bool)

(assert (=> b!198782 (=> (not res!94353) (not e!130600))))

(declare-datatypes ((List!2594 0))(
  ( (Nil!2591) (Cons!2590 (h!3232 (_ BitVec 64)) (t!7533 List!2594)) )
))
(declare-fun arrayNoDuplicates!0 (array!8722 (_ BitVec 32) List!2594) Bool)

(assert (=> b!198782 (= res!94353 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2591))))

(declare-fun b!198783 () Bool)

(declare-fun res!94357 () Bool)

(assert (=> b!198783 (=> (not res!94357) (not e!130600))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198783 (= res!94357 (validKeyInArray!0 k!843))))

(declare-fun b!198784 () Bool)

(declare-fun e!130598 () Bool)

(declare-fun mapRes!8180 () Bool)

(assert (=> b!198784 (= e!130597 (and e!130598 mapRes!8180))))

(declare-fun condMapEmpty!8180 () Bool)

(declare-fun mapDefault!8180 () ValueCell!2027)

