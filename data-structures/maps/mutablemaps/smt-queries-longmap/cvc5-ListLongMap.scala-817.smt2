; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19966 () Bool)

(assert start!19966)

(declare-datatypes ((array!8282 0))(
  ( (array!8283 (arr!3896 (Array (_ BitVec 32) (_ BitVec 64))) (size!4221 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8282)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun b!195699 () Bool)

(declare-datatypes ((V!5665 0))(
  ( (V!5666 (val!2301 Int)) )
))
(declare-datatypes ((ValueCell!1913 0))(
  ( (ValueCellFull!1913 (v!4266 V!5665)) (EmptyCell!1913) )
))
(declare-datatypes ((array!8284 0))(
  ( (array!8285 (arr!3897 (Array (_ BitVec 32) ValueCell!1913)) (size!4222 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8284)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun e!128791 () Bool)

(assert (=> b!195699 (= e!128791 (and (= (size!4222 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4221 _keys!825) (size!4222 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011) (= (size!4221 _keys!825) (bvadd #b00000000000000000000000000000001 mask!1149)) (bvsgt #b00000000000000000000000000000000 (size!4221 _keys!825))))))

(declare-fun res!92360 () Bool)

(assert (=> start!19966 (=> (not res!92360) (not e!128791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19966 (= res!92360 (validMask!0 mask!1149))))

(assert (=> start!19966 e!128791))

(assert (=> start!19966 true))

(declare-fun e!128793 () Bool)

(declare-fun array_inv!2521 (array!8284) Bool)

(assert (=> start!19966 (and (array_inv!2521 _values!649) e!128793)))

(declare-fun array_inv!2522 (array!8282) Bool)

(assert (=> start!19966 (array_inv!2522 _keys!825)))

(declare-fun mapNonEmpty!7823 () Bool)

(declare-fun mapRes!7823 () Bool)

(declare-fun tp!17111 () Bool)

(declare-fun e!128794 () Bool)

(assert (=> mapNonEmpty!7823 (= mapRes!7823 (and tp!17111 e!128794))))

(declare-fun mapKey!7823 () (_ BitVec 32))

(declare-fun mapValue!7823 () ValueCell!1913)

(declare-fun mapRest!7823 () (Array (_ BitVec 32) ValueCell!1913))

(assert (=> mapNonEmpty!7823 (= (arr!3897 _values!649) (store mapRest!7823 mapKey!7823 mapValue!7823))))

(declare-fun b!195700 () Bool)

(declare-fun tp_is_empty!4513 () Bool)

(assert (=> b!195700 (= e!128794 tp_is_empty!4513)))

(declare-fun b!195701 () Bool)

(declare-fun e!128792 () Bool)

(assert (=> b!195701 (= e!128793 (and e!128792 mapRes!7823))))

(declare-fun condMapEmpty!7823 () Bool)

(declare-fun mapDefault!7823 () ValueCell!1913)

