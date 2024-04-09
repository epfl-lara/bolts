; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19964 () Bool)

(assert start!19964)

(declare-fun mapIsEmpty!7820 () Bool)

(declare-fun mapRes!7820 () Bool)

(assert (=> mapIsEmpty!7820 mapRes!7820))

(declare-fun b!195687 () Bool)

(declare-fun e!128780 () Bool)

(declare-fun tp_is_empty!4511 () Bool)

(assert (=> b!195687 (= e!128780 tp_is_empty!4511)))

(declare-fun res!92357 () Bool)

(declare-fun e!128777 () Bool)

(assert (=> start!19964 (=> (not res!92357) (not e!128777))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19964 (= res!92357 (validMask!0 mask!1149))))

(assert (=> start!19964 e!128777))

(assert (=> start!19964 true))

(declare-datatypes ((V!5661 0))(
  ( (V!5662 (val!2300 Int)) )
))
(declare-datatypes ((ValueCell!1912 0))(
  ( (ValueCellFull!1912 (v!4265 V!5661)) (EmptyCell!1912) )
))
(declare-datatypes ((array!8278 0))(
  ( (array!8279 (arr!3894 (Array (_ BitVec 32) ValueCell!1912)) (size!4219 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8278)

(declare-fun e!128778 () Bool)

(declare-fun array_inv!2519 (array!8278) Bool)

(assert (=> start!19964 (and (array_inv!2519 _values!649) e!128778)))

(declare-datatypes ((array!8280 0))(
  ( (array!8281 (arr!3895 (Array (_ BitVec 32) (_ BitVec 64))) (size!4220 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8280)

(declare-fun array_inv!2520 (array!8280) Bool)

(assert (=> start!19964 (array_inv!2520 _keys!825)))

(declare-fun b!195688 () Bool)

(assert (=> b!195688 (= e!128778 (and e!128780 mapRes!7820))))

(declare-fun condMapEmpty!7820 () Bool)

(declare-fun mapDefault!7820 () ValueCell!1912)

