; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20006 () Bool)

(assert start!20006)

(declare-fun b!195897 () Bool)

(declare-fun e!128964 () Bool)

(declare-fun tp_is_empty!4531 () Bool)

(assert (=> b!195897 (= e!128964 tp_is_empty!4531)))

(declare-fun mapNonEmpty!7859 () Bool)

(declare-fun mapRes!7859 () Bool)

(declare-fun tp!17147 () Bool)

(assert (=> mapNonEmpty!7859 (= mapRes!7859 (and tp!17147 e!128964))))

(declare-datatypes ((V!5689 0))(
  ( (V!5690 (val!2310 Int)) )
))
(declare-datatypes ((ValueCell!1922 0))(
  ( (ValueCellFull!1922 (v!4275 V!5689)) (EmptyCell!1922) )
))
(declare-fun mapValue!7859 () ValueCell!1922)

(declare-fun mapKey!7859 () (_ BitVec 32))

(declare-datatypes ((array!8320 0))(
  ( (array!8321 (arr!3912 (Array (_ BitVec 32) ValueCell!1922)) (size!4237 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8320)

(declare-fun mapRest!7859 () (Array (_ BitVec 32) ValueCell!1922))

(assert (=> mapNonEmpty!7859 (= (arr!3912 _values!649) (store mapRest!7859 mapKey!7859 mapValue!7859))))

(declare-fun res!92442 () Bool)

(declare-fun e!128962 () Bool)

(assert (=> start!20006 (=> (not res!92442) (not e!128962))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20006 (= res!92442 (validMask!0 mask!1149))))

(assert (=> start!20006 e!128962))

(assert (=> start!20006 true))

(declare-fun e!128963 () Bool)

(declare-fun array_inv!2531 (array!8320) Bool)

(assert (=> start!20006 (and (array_inv!2531 _values!649) e!128963)))

(declare-datatypes ((array!8322 0))(
  ( (array!8323 (arr!3913 (Array (_ BitVec 32) (_ BitVec 64))) (size!4238 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8322)

(declare-fun array_inv!2532 (array!8322) Bool)

(assert (=> start!20006 (array_inv!2532 _keys!825)))

(declare-fun b!195898 () Bool)

(declare-datatypes ((List!2475 0))(
  ( (Nil!2472) (Cons!2471 (h!3113 (_ BitVec 64)) (t!7414 List!2475)) )
))
(declare-fun noDuplicate!57 (List!2475) Bool)

(assert (=> b!195898 (= e!128962 (not (noDuplicate!57 Nil!2472)))))

(declare-fun mapIsEmpty!7859 () Bool)

(assert (=> mapIsEmpty!7859 mapRes!7859))

(declare-fun b!195899 () Bool)

(declare-fun e!128966 () Bool)

(assert (=> b!195899 (= e!128963 (and e!128966 mapRes!7859))))

(declare-fun condMapEmpty!7859 () Bool)

(declare-fun mapDefault!7859 () ValueCell!1922)

