; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33468 () Bool)

(assert start!33468)

(declare-fun res!182933 () Bool)

(declare-fun e!203772 () Bool)

(assert (=> start!33468 (=> (not res!182933) (not e!203772))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33468 (= res!182933 (validMask!0 mask!2385))))

(assert (=> start!33468 e!203772))

(assert (=> start!33468 true))

(declare-datatypes ((V!9927 0))(
  ( (V!9928 (val!3401 Int)) )
))
(declare-datatypes ((ValueCell!3013 0))(
  ( (ValueCellFull!3013 (v!5556 V!9927)) (EmptyCell!3013) )
))
(declare-datatypes ((array!17023 0))(
  ( (array!17024 (arr!8043 (Array (_ BitVec 32) ValueCell!3013)) (size!8395 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17023)

(declare-fun e!203773 () Bool)

(declare-fun array_inv!5978 (array!17023) Bool)

(assert (=> start!33468 (and (array_inv!5978 _values!1525) e!203773)))

(declare-datatypes ((array!17025 0))(
  ( (array!17026 (arr!8044 (Array (_ BitVec 32) (_ BitVec 64))) (size!8396 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17025)

(declare-fun array_inv!5979 (array!17025) Bool)

(assert (=> start!33468 (array_inv!5979 _keys!1895)))

(declare-fun mapNonEmpty!11454 () Bool)

(declare-fun mapRes!11454 () Bool)

(declare-fun tp!23829 () Bool)

(declare-fun e!203774 () Bool)

(assert (=> mapNonEmpty!11454 (= mapRes!11454 (and tp!23829 e!203774))))

(declare-fun mapValue!11454 () ValueCell!3013)

(declare-fun mapKey!11454 () (_ BitVec 32))

(declare-fun mapRest!11454 () (Array (_ BitVec 32) ValueCell!3013))

(assert (=> mapNonEmpty!11454 (= (arr!8043 _values!1525) (store mapRest!11454 mapKey!11454 mapValue!11454))))

(declare-fun mapIsEmpty!11454 () Bool)

(assert (=> mapIsEmpty!11454 mapRes!11454))

(declare-fun b!331924 () Bool)

(declare-fun tp_is_empty!6713 () Bool)

(assert (=> b!331924 (= e!203774 tp_is_empty!6713)))

(declare-fun b!331925 () Bool)

(declare-fun e!203775 () Bool)

(assert (=> b!331925 (= e!203773 (and e!203775 mapRes!11454))))

(declare-fun condMapEmpty!11454 () Bool)

(declare-fun mapDefault!11454 () ValueCell!3013)

