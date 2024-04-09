; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20716 () Bool)

(assert start!20716)

(declare-fun b_free!5363 () Bool)

(declare-fun b_next!5363 () Bool)

(assert (=> start!20716 (= b_free!5363 (not b_next!5363))))

(declare-fun tp!19120 () Bool)

(declare-fun b_and!12127 () Bool)

(assert (=> start!20716 (= tp!19120 b_and!12127)))

(declare-fun b!207012 () Bool)

(declare-fun res!100432 () Bool)

(declare-fun e!135219 () Bool)

(assert (=> b!207012 (=> (not res!100432) (not e!135219))))

(declare-datatypes ((array!9646 0))(
  ( (array!9647 (arr!4573 (Array (_ BitVec 32) (_ BitVec 64))) (size!4898 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9646)

(declare-datatypes ((List!2940 0))(
  ( (Nil!2937) (Cons!2936 (h!3578 (_ BitVec 64)) (t!7879 List!2940)) )
))
(declare-fun arrayNoDuplicates!0 (array!9646 (_ BitVec 32) List!2940) Bool)

(assert (=> b!207012 (= res!100432 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2937))))

(declare-fun b!207013 () Bool)

(declare-fun e!135220 () Bool)

(declare-fun tp_is_empty!5219 () Bool)

(assert (=> b!207013 (= e!135220 tp_is_empty!5219)))

(declare-fun res!100436 () Bool)

(assert (=> start!20716 (=> (not res!100436) (not e!135219))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20716 (= res!100436 (validMask!0 mask!1149))))

(assert (=> start!20716 e!135219))

(declare-datatypes ((V!6605 0))(
  ( (V!6606 (val!2654 Int)) )
))
(declare-datatypes ((ValueCell!2266 0))(
  ( (ValueCellFull!2266 (v!4620 V!6605)) (EmptyCell!2266) )
))
(declare-datatypes ((array!9648 0))(
  ( (array!9649 (arr!4574 (Array (_ BitVec 32) ValueCell!2266)) (size!4899 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9648)

(declare-fun e!135216 () Bool)

(declare-fun array_inv!3017 (array!9648) Bool)

(assert (=> start!20716 (and (array_inv!3017 _values!649) e!135216)))

(assert (=> start!20716 true))

(assert (=> start!20716 tp_is_empty!5219))

(declare-fun array_inv!3018 (array!9646) Bool)

(assert (=> start!20716 (array_inv!3018 _keys!825)))

(assert (=> start!20716 tp!19120))

(declare-fun b!207014 () Bool)

(declare-fun mapRes!8897 () Bool)

(assert (=> b!207014 (= e!135216 (and e!135220 mapRes!8897))))

(declare-fun condMapEmpty!8897 () Bool)

(declare-fun mapDefault!8897 () ValueCell!2266)

