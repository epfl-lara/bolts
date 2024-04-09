; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72252 () Bool)

(assert start!72252)

(declare-fun mapNonEmpty!24548 () Bool)

(declare-fun mapRes!24548 () Bool)

(declare-fun tp!47543 () Bool)

(declare-fun e!467074 () Bool)

(assert (=> mapNonEmpty!24548 (= mapRes!24548 (and tp!47543 e!467074))))

(declare-datatypes ((V!25453 0))(
  ( (V!25454 (val!7700 Int)) )
))
(declare-datatypes ((ValueCell!7213 0))(
  ( (ValueCellFull!7213 (v!10120 V!25453)) (EmptyCell!7213) )
))
(declare-fun mapRest!24548 () (Array (_ BitVec 32) ValueCell!7213))

(declare-fun mapValue!24548 () ValueCell!7213)

(declare-fun mapKey!24548 () (_ BitVec 32))

(declare-datatypes ((array!46878 0))(
  ( (array!46879 (arr!22469 (Array (_ BitVec 32) ValueCell!7213)) (size!22910 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46878)

(assert (=> mapNonEmpty!24548 (= (arr!22469 _values!688) (store mapRest!24548 mapKey!24548 mapValue!24548))))

(declare-fun mapIsEmpty!24548 () Bool)

(assert (=> mapIsEmpty!24548 mapRes!24548))

(declare-fun b!836923 () Bool)

(declare-fun e!467077 () Bool)

(declare-fun tp_is_empty!15305 () Bool)

(assert (=> b!836923 (= e!467077 tp_is_empty!15305)))

(declare-fun b!836924 () Bool)

(declare-fun res!569341 () Bool)

(declare-fun e!467075 () Bool)

(assert (=> b!836924 (=> (not res!569341) (not e!467075))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836924 (= res!569341 (validMask!0 mask!1196))))

(declare-fun b!836925 () Bool)

(declare-fun e!467076 () Bool)

(assert (=> b!836925 (= e!467076 (and e!467077 mapRes!24548))))

(declare-fun condMapEmpty!24548 () Bool)

(declare-fun mapDefault!24548 () ValueCell!7213)

