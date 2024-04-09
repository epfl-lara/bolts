; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82100 () Bool)

(assert start!82100)

(declare-fun mapIsEmpty!33601 () Bool)

(declare-fun mapRes!33601 () Bool)

(assert (=> mapIsEmpty!33601 mapRes!33601))

(declare-fun b!956863 () Bool)

(declare-fun e!539301 () Bool)

(declare-fun tp_is_empty!21089 () Bool)

(assert (=> b!956863 (= e!539301 tp_is_empty!21089)))

(declare-fun b!956864 () Bool)

(declare-fun e!539303 () Bool)

(assert (=> b!956864 (= e!539303 tp_is_empty!21089)))

(declare-fun b!956865 () Bool)

(declare-fun e!539304 () Bool)

(declare-datatypes ((array!58299 0))(
  ( (array!58300 (arr!28023 (Array (_ BitVec 32) (_ BitVec 64))) (size!28503 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58299)

(assert (=> b!956865 (= e!539304 (bvsgt #b00000000000000000000000000000000 (size!28503 _keys!1668)))))

(declare-fun res!640719 () Bool)

(assert (=> start!82100 (=> (not res!640719) (not e!539304))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82100 (= res!640719 (validMask!0 mask!2088))))

(assert (=> start!82100 e!539304))

(assert (=> start!82100 true))

(declare-datatypes ((V!33101 0))(
  ( (V!33102 (val!10595 Int)) )
))
(declare-datatypes ((ValueCell!10063 0))(
  ( (ValueCellFull!10063 (v!13151 V!33101)) (EmptyCell!10063) )
))
(declare-datatypes ((array!58301 0))(
  ( (array!58302 (arr!28024 (Array (_ BitVec 32) ValueCell!10063)) (size!28504 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58301)

(declare-fun e!539302 () Bool)

(declare-fun array_inv!21687 (array!58301) Bool)

(assert (=> start!82100 (and (array_inv!21687 _values!1386) e!539302)))

(declare-fun array_inv!21688 (array!58299) Bool)

(assert (=> start!82100 (array_inv!21688 _keys!1668)))

(declare-fun b!956866 () Bool)

(declare-fun res!640720 () Bool)

(assert (=> b!956866 (=> (not res!640720) (not e!539304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58299 (_ BitVec 32)) Bool)

(assert (=> b!956866 (= res!640720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33601 () Bool)

(declare-fun tp!64207 () Bool)

(assert (=> mapNonEmpty!33601 (= mapRes!33601 (and tp!64207 e!539301))))

(declare-fun mapRest!33601 () (Array (_ BitVec 32) ValueCell!10063))

(declare-fun mapKey!33601 () (_ BitVec 32))

(declare-fun mapValue!33601 () ValueCell!10063)

(assert (=> mapNonEmpty!33601 (= (arr!28024 _values!1386) (store mapRest!33601 mapKey!33601 mapValue!33601))))

(declare-fun b!956867 () Bool)

(assert (=> b!956867 (= e!539302 (and e!539303 mapRes!33601))))

(declare-fun condMapEmpty!33601 () Bool)

(declare-fun mapDefault!33601 () ValueCell!10063)

