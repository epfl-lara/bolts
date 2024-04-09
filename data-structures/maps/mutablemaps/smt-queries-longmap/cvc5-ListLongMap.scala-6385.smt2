; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82096 () Bool)

(assert start!82096)

(declare-fun b!956827 () Bool)

(declare-fun e!539273 () Bool)

(declare-datatypes ((array!58291 0))(
  ( (array!58292 (arr!28019 (Array (_ BitVec 32) (_ BitVec 64))) (size!28499 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58291)

(assert (=> b!956827 (= e!539273 (bvsgt #b00000000000000000000000000000000 (size!28499 _keys!1668)))))

(declare-fun mapNonEmpty!33595 () Bool)

(declare-fun mapRes!33595 () Bool)

(declare-fun tp!64201 () Bool)

(declare-fun e!539271 () Bool)

(assert (=> mapNonEmpty!33595 (= mapRes!33595 (and tp!64201 e!539271))))

(declare-datatypes ((V!33097 0))(
  ( (V!33098 (val!10593 Int)) )
))
(declare-datatypes ((ValueCell!10061 0))(
  ( (ValueCellFull!10061 (v!13149 V!33097)) (EmptyCell!10061) )
))
(declare-fun mapValue!33595 () ValueCell!10061)

(declare-fun mapKey!33595 () (_ BitVec 32))

(declare-datatypes ((array!58293 0))(
  ( (array!58294 (arr!28020 (Array (_ BitVec 32) ValueCell!10061)) (size!28500 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58293)

(declare-fun mapRest!33595 () (Array (_ BitVec 32) ValueCell!10061))

(assert (=> mapNonEmpty!33595 (= (arr!28020 _values!1386) (store mapRest!33595 mapKey!33595 mapValue!33595))))

(declare-fun b!956828 () Bool)

(declare-fun tp_is_empty!21085 () Bool)

(assert (=> b!956828 (= e!539271 tp_is_empty!21085)))

(declare-fun b!956829 () Bool)

(declare-fun res!640700 () Bool)

(assert (=> b!956829 (=> (not res!640700) (not e!539273))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58291 (_ BitVec 32)) Bool)

(assert (=> b!956829 (= res!640700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun res!640701 () Bool)

(assert (=> start!82096 (=> (not res!640701) (not e!539273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82096 (= res!640701 (validMask!0 mask!2088))))

(assert (=> start!82096 e!539273))

(assert (=> start!82096 true))

(declare-fun e!539272 () Bool)

(declare-fun array_inv!21683 (array!58293) Bool)

(assert (=> start!82096 (and (array_inv!21683 _values!1386) e!539272)))

(declare-fun array_inv!21684 (array!58291) Bool)

(assert (=> start!82096 (array_inv!21684 _keys!1668)))

(declare-fun b!956830 () Bool)

(declare-fun e!539274 () Bool)

(assert (=> b!956830 (= e!539274 tp_is_empty!21085)))

(declare-fun b!956831 () Bool)

(declare-fun res!640702 () Bool)

(assert (=> b!956831 (=> (not res!640702) (not e!539273))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!956831 (= res!640702 (and (= (size!28500 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28499 _keys!1668) (size!28500 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33595 () Bool)

(assert (=> mapIsEmpty!33595 mapRes!33595))

(declare-fun b!956832 () Bool)

(assert (=> b!956832 (= e!539272 (and e!539274 mapRes!33595))))

(declare-fun condMapEmpty!33595 () Bool)

(declare-fun mapDefault!33595 () ValueCell!10061)

