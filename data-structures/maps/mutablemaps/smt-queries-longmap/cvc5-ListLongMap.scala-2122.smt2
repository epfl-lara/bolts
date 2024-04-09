; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35930 () Bool)

(assert start!35930)

(declare-fun b!360894 () Bool)

(declare-fun e!220965 () Bool)

(declare-fun tp_is_empty!8353 () Bool)

(assert (=> b!360894 (= e!220965 tp_is_empty!8353)))

(declare-fun b!360895 () Bool)

(declare-fun e!220966 () Bool)

(declare-datatypes ((array!20225 0))(
  ( (array!20226 (arr!9601 (Array (_ BitVec 32) (_ BitVec 64))) (size!9953 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20225)

(assert (=> b!360895 (= e!220966 (bvsgt #b00000000000000000000000000000000 (size!9953 _keys!1541)))))

(declare-fun res!200840 () Bool)

(assert (=> start!35930 (=> (not res!200840) (not e!220966))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35930 (= res!200840 (validMask!0 mask!1943))))

(assert (=> start!35930 e!220966))

(assert (=> start!35930 true))

(declare-datatypes ((V!12115 0))(
  ( (V!12116 (val!4221 Int)) )
))
(declare-datatypes ((ValueCell!3833 0))(
  ( (ValueCellFull!3833 (v!6411 V!12115)) (EmptyCell!3833) )
))
(declare-datatypes ((array!20227 0))(
  ( (array!20228 (arr!9602 (Array (_ BitVec 32) ValueCell!3833)) (size!9954 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20227)

(declare-fun e!220962 () Bool)

(declare-fun array_inv!7058 (array!20227) Bool)

(assert (=> start!35930 (and (array_inv!7058 _values!1277) e!220962)))

(declare-fun array_inv!7059 (array!20225) Bool)

(assert (=> start!35930 (array_inv!7059 _keys!1541)))

(declare-fun b!360896 () Bool)

(declare-fun res!200839 () Bool)

(assert (=> b!360896 (=> (not res!200839) (not e!220966))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!360896 (= res!200839 (and (= (size!9954 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9953 _keys!1541) (size!9954 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!360897 () Bool)

(declare-fun e!220963 () Bool)

(declare-fun mapRes!14043 () Bool)

(assert (=> b!360897 (= e!220962 (and e!220963 mapRes!14043))))

(declare-fun condMapEmpty!14043 () Bool)

(declare-fun mapDefault!14043 () ValueCell!3833)

