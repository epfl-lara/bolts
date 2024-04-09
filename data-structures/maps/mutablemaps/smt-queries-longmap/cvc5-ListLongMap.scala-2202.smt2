; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36600 () Bool)

(assert start!36600)

(declare-fun b!365161 () Bool)

(declare-fun e!223603 () Bool)

(declare-datatypes ((List!5546 0))(
  ( (Nil!5543) (Cons!5542 (h!6398 (_ BitVec 64)) (t!10704 List!5546)) )
))
(declare-fun noDuplicate!184 (List!5546) Bool)

(assert (=> b!365161 (= e!223603 (not (noDuplicate!184 Nil!5543)))))

(declare-fun b!365163 () Bool)

(declare-fun res!204227 () Bool)

(assert (=> b!365163 (=> (not res!204227) (not e!223603))))

(declare-datatypes ((array!20827 0))(
  ( (array!20828 (arr!9885 (Array (_ BitVec 32) (_ BitVec 64))) (size!10237 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20827)

(assert (=> b!365163 (= res!204227 (and (bvsle #b00000000000000000000000000000000 (size!10237 _keys!658)) (bvslt (size!10237 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!14220 () Bool)

(declare-fun mapRes!14220 () Bool)

(assert (=> mapIsEmpty!14220 mapRes!14220))

(declare-fun b!365164 () Bool)

(declare-fun e!223604 () Bool)

(declare-fun tp_is_empty!8449 () Bool)

(assert (=> b!365164 (= e!223604 tp_is_empty!8449)))

(declare-fun b!365162 () Bool)

(declare-fun res!204228 () Bool)

(assert (=> b!365162 (=> (not res!204228) (not e!223603))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20827 (_ BitVec 32)) Bool)

(assert (=> b!365162 (= res!204228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!204226 () Bool)

(assert (=> start!36600 (=> (not res!204226) (not e!223603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36600 (= res!204226 (validMask!0 mask!970))))

(assert (=> start!36600 e!223603))

(assert (=> start!36600 true))

(declare-datatypes ((V!12371 0))(
  ( (V!12372 (val!4269 Int)) )
))
(declare-datatypes ((ValueCell!3881 0))(
  ( (ValueCellFull!3881 (v!6460 V!12371)) (EmptyCell!3881) )
))
(declare-datatypes ((array!20829 0))(
  ( (array!20830 (arr!9886 (Array (_ BitVec 32) ValueCell!3881)) (size!10238 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20829)

(declare-fun e!223605 () Bool)

(declare-fun array_inv!7314 (array!20829) Bool)

(assert (=> start!36600 (and (array_inv!7314 _values!506) e!223605)))

(declare-fun array_inv!7315 (array!20827) Bool)

(assert (=> start!36600 (array_inv!7315 _keys!658)))

(declare-fun b!365165 () Bool)

(declare-fun e!223606 () Bool)

(assert (=> b!365165 (= e!223605 (and e!223606 mapRes!14220))))

(declare-fun condMapEmpty!14220 () Bool)

(declare-fun mapDefault!14220 () ValueCell!3881)

