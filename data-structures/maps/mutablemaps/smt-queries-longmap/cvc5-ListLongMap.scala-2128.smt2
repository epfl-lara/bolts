; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36004 () Bool)

(assert start!36004)

(declare-fun b!361356 () Bool)

(declare-fun e!221324 () Bool)

(declare-fun tp_is_empty!8389 () Bool)

(assert (=> b!361356 (= e!221324 tp_is_empty!8389)))

(declare-fun mapIsEmpty!14109 () Bool)

(declare-fun mapRes!14109 () Bool)

(assert (=> mapIsEmpty!14109 mapRes!14109))

(declare-fun b!361357 () Bool)

(declare-fun res!201084 () Bool)

(declare-fun e!221322 () Bool)

(assert (=> b!361357 (=> (not res!201084) (not e!221322))))

(declare-datatypes ((array!20305 0))(
  ( (array!20306 (arr!9637 (Array (_ BitVec 32) (_ BitVec 64))) (size!9989 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20305)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20305 (_ BitVec 32)) Bool)

(assert (=> b!361357 (= res!201084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361358 () Bool)

(declare-fun res!201085 () Bool)

(assert (=> b!361358 (=> (not res!201085) (not e!221322))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-datatypes ((V!12163 0))(
  ( (V!12164 (val!4239 Int)) )
))
(declare-datatypes ((ValueCell!3851 0))(
  ( (ValueCellFull!3851 (v!6430 V!12163)) (EmptyCell!3851) )
))
(declare-datatypes ((array!20307 0))(
  ( (array!20308 (arr!9638 (Array (_ BitVec 32) ValueCell!3851)) (size!9990 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20307)

(assert (=> b!361358 (= res!201085 (and (= (size!9990 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9989 _keys!1541) (size!9990 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14109 () Bool)

(declare-fun tp!28185 () Bool)

(declare-fun e!221321 () Bool)

(assert (=> mapNonEmpty!14109 (= mapRes!14109 (and tp!28185 e!221321))))

(declare-fun mapValue!14109 () ValueCell!3851)

(declare-fun mapKey!14109 () (_ BitVec 32))

(declare-fun mapRest!14109 () (Array (_ BitVec 32) ValueCell!3851))

(assert (=> mapNonEmpty!14109 (= (arr!9638 _values!1277) (store mapRest!14109 mapKey!14109 mapValue!14109))))

(declare-fun b!361359 () Bool)

(declare-fun e!221325 () Bool)

(assert (=> b!361359 (= e!221325 (and e!221324 mapRes!14109))))

(declare-fun condMapEmpty!14109 () Bool)

(declare-fun mapDefault!14109 () ValueCell!3851)

