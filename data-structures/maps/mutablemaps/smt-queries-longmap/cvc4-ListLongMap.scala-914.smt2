; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20596 () Bool)

(assert start!20596)

(declare-fun b_free!5243 () Bool)

(declare-fun b_next!5243 () Bool)

(assert (=> start!20596 (= b_free!5243 (not b_next!5243))))

(declare-fun tp!18761 () Bool)

(declare-fun b_and!12007 () Bool)

(assert (=> start!20596 (= tp!18761 b_and!12007)))

(declare-fun b!204976 () Bool)

(declare-fun res!98942 () Bool)

(declare-fun e!134081 () Bool)

(assert (=> b!204976 (=> (not res!98942) (not e!134081))))

(declare-datatypes ((array!9410 0))(
  ( (array!9411 (arr!4455 (Array (_ BitVec 32) (_ BitVec 64))) (size!4780 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9410)

(declare-datatypes ((List!2851 0))(
  ( (Nil!2848) (Cons!2847 (h!3489 (_ BitVec 64)) (t!7790 List!2851)) )
))
(declare-fun arrayNoDuplicates!0 (array!9410 (_ BitVec 32) List!2851) Bool)

(assert (=> b!204976 (= res!98942 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2848))))

(declare-fun b!204977 () Bool)

(declare-fun e!134082 () Bool)

(declare-fun tp_is_empty!5099 () Bool)

(assert (=> b!204977 (= e!134082 tp_is_empty!5099)))

(declare-fun res!98943 () Bool)

(assert (=> start!20596 (=> (not res!98943) (not e!134081))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20596 (= res!98943 (validMask!0 mask!1149))))

(assert (=> start!20596 e!134081))

(declare-datatypes ((V!6445 0))(
  ( (V!6446 (val!2594 Int)) )
))
(declare-datatypes ((ValueCell!2206 0))(
  ( (ValueCellFull!2206 (v!4560 V!6445)) (EmptyCell!2206) )
))
(declare-datatypes ((array!9412 0))(
  ( (array!9413 (arr!4456 (Array (_ BitVec 32) ValueCell!2206)) (size!4781 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9412)

(declare-fun e!134086 () Bool)

(declare-fun array_inv!2933 (array!9412) Bool)

(assert (=> start!20596 (and (array_inv!2933 _values!649) e!134086)))

(assert (=> start!20596 true))

(assert (=> start!20596 tp_is_empty!5099))

(declare-fun array_inv!2934 (array!9410) Bool)

(assert (=> start!20596 (array_inv!2934 _keys!825)))

(assert (=> start!20596 tp!18761))

(declare-fun b!204978 () Bool)

(declare-fun e!134084 () Bool)

(declare-fun mapRes!8717 () Bool)

(assert (=> b!204978 (= e!134086 (and e!134084 mapRes!8717))))

(declare-fun condMapEmpty!8717 () Bool)

(declare-fun mapDefault!8717 () ValueCell!2206)

