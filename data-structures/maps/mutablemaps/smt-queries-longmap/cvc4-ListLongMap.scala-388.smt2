; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7340 () Bool)

(assert start!7340)

(declare-fun mapNonEmpty!2042 () Bool)

(declare-fun mapRes!2042 () Bool)

(declare-fun tp!6191 () Bool)

(declare-fun e!30154 () Bool)

(assert (=> mapNonEmpty!2042 (= mapRes!2042 (and tp!6191 e!30154))))

(declare-fun mapKey!2042 () (_ BitVec 32))

(declare-datatypes ((V!2411 0))(
  ( (V!2412 (val!1043 Int)) )
))
(declare-datatypes ((ValueCell!715 0))(
  ( (ValueCellFull!715 (v!2102 V!2411)) (EmptyCell!715) )
))
(declare-fun mapRest!2042 () (Array (_ BitVec 32) ValueCell!715))

(declare-fun mapValue!2042 () ValueCell!715)

(declare-datatypes ((array!3076 0))(
  ( (array!3077 (arr!1477 (Array (_ BitVec 32) ValueCell!715)) (size!1699 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3076)

(assert (=> mapNonEmpty!2042 (= (arr!1477 _values!1550) (store mapRest!2042 mapKey!2042 mapValue!2042))))

(declare-fun b!47153 () Bool)

(declare-fun e!30155 () Bool)

(declare-fun tp_is_empty!2009 () Bool)

(assert (=> b!47153 (= e!30155 tp_is_empty!2009)))

(declare-fun e!30151 () Bool)

(declare-datatypes ((array!3078 0))(
  ( (array!3079 (arr!1478 (Array (_ BitVec 32) (_ BitVec 64))) (size!1700 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3078)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun b!47154 () Bool)

(declare-fun mask!2458 () (_ BitVec 32))

(assert (=> b!47154 (= e!30151 (and (= (size!1699 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1700 _keys!1940) (size!1699 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011) (= (size!1700 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458)) (bvsgt #b00000000000000000000000000000000 (size!1700 _keys!1940))))))

(declare-fun res!27445 () Bool)

(assert (=> start!7340 (=> (not res!27445) (not e!30151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7340 (= res!27445 (validMask!0 mask!2458))))

(assert (=> start!7340 e!30151))

(assert (=> start!7340 true))

(declare-fun e!30153 () Bool)

(declare-fun array_inv!840 (array!3076) Bool)

(assert (=> start!7340 (and (array_inv!840 _values!1550) e!30153)))

(declare-fun array_inv!841 (array!3078) Bool)

(assert (=> start!7340 (array_inv!841 _keys!1940)))

(declare-fun b!47152 () Bool)

(assert (=> b!47152 (= e!30154 tp_is_empty!2009)))

(declare-fun b!47155 () Bool)

(assert (=> b!47155 (= e!30153 (and e!30155 mapRes!2042))))

(declare-fun condMapEmpty!2042 () Bool)

(declare-fun mapDefault!2042 () ValueCell!715)

