; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35998 () Bool)

(assert start!35998)

(declare-fun b!361300 () Bool)

(declare-fun e!221279 () Bool)

(declare-fun tp_is_empty!8383 () Bool)

(assert (=> b!361300 (= e!221279 tp_is_empty!8383)))

(declare-fun res!201055 () Bool)

(declare-fun e!221278 () Bool)

(assert (=> start!35998 (=> (not res!201055) (not e!221278))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35998 (= res!201055 (validMask!0 mask!1943))))

(assert (=> start!35998 e!221278))

(assert (=> start!35998 true))

(declare-datatypes ((V!12155 0))(
  ( (V!12156 (val!4236 Int)) )
))
(declare-datatypes ((ValueCell!3848 0))(
  ( (ValueCellFull!3848 (v!6427 V!12155)) (EmptyCell!3848) )
))
(declare-datatypes ((array!20293 0))(
  ( (array!20294 (arr!9631 (Array (_ BitVec 32) ValueCell!3848)) (size!9983 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20293)

(declare-fun e!221276 () Bool)

(declare-fun array_inv!7084 (array!20293) Bool)

(assert (=> start!35998 (and (array_inv!7084 _values!1277) e!221276)))

(declare-datatypes ((array!20295 0))(
  ( (array!20296 (arr!9632 (Array (_ BitVec 32) (_ BitVec 64))) (size!9984 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20295)

(declare-fun array_inv!7085 (array!20295) Bool)

(assert (=> start!35998 (array_inv!7085 _keys!1541)))

(declare-fun b!361301 () Bool)

(declare-fun res!201056 () Bool)

(assert (=> b!361301 (=> (not res!201056) (not e!221278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20295 (_ BitVec 32)) Bool)

(assert (=> b!361301 (= res!201056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361302 () Bool)

(declare-fun e!221280 () Bool)

(assert (=> b!361302 (= e!221280 tp_is_empty!8383)))

(declare-fun b!361303 () Bool)

(declare-fun mapRes!14100 () Bool)

(assert (=> b!361303 (= e!221276 (and e!221280 mapRes!14100))))

(declare-fun condMapEmpty!14100 () Bool)

(declare-fun mapDefault!14100 () ValueCell!3848)

