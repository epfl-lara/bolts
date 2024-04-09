; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82082 () Bool)

(assert start!82082)

(declare-fun res!640684 () Bool)

(declare-fun e!539204 () Bool)

(assert (=> start!82082 (=> (not res!640684) (not e!539204))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82082 (= res!640684 (validMask!0 mask!2088))))

(assert (=> start!82082 e!539204))

(assert (=> start!82082 true))

(declare-datatypes ((V!33085 0))(
  ( (V!33086 (val!10589 Int)) )
))
(declare-datatypes ((ValueCell!10057 0))(
  ( (ValueCellFull!10057 (v!13145 V!33085)) (EmptyCell!10057) )
))
(declare-datatypes ((array!58273 0))(
  ( (array!58274 (arr!28011 (Array (_ BitVec 32) ValueCell!10057)) (size!28491 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58273)

(declare-fun e!539206 () Bool)

(declare-fun array_inv!21675 (array!58273) Bool)

(assert (=> start!82082 (and (array_inv!21675 _values!1386) e!539206)))

(declare-datatypes ((array!58275 0))(
  ( (array!58276 (arr!28012 (Array (_ BitVec 32) (_ BitVec 64))) (size!28492 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58275)

(declare-fun array_inv!21676 (array!58275) Bool)

(assert (=> start!82082 (array_inv!21676 _keys!1668)))

(declare-fun b!956767 () Bool)

(declare-fun e!539208 () Bool)

(declare-fun tp_is_empty!21077 () Bool)

(assert (=> b!956767 (= e!539208 tp_is_empty!21077)))

(declare-fun mapIsEmpty!33580 () Bool)

(declare-fun mapRes!33580 () Bool)

(assert (=> mapIsEmpty!33580 mapRes!33580))

(declare-fun mapNonEmpty!33580 () Bool)

(declare-fun tp!64186 () Bool)

(assert (=> mapNonEmpty!33580 (= mapRes!33580 (and tp!64186 e!539208))))

(declare-fun mapValue!33580 () ValueCell!10057)

(declare-fun mapRest!33580 () (Array (_ BitVec 32) ValueCell!10057))

(declare-fun mapKey!33580 () (_ BitVec 32))

(assert (=> mapNonEmpty!33580 (= (arr!28011 _values!1386) (store mapRest!33580 mapKey!33580 mapValue!33580))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun b!956768 () Bool)

(assert (=> b!956768 (= e!539204 (and (= (size!28491 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28492 _keys!1668) (size!28491 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011) (not (= (size!28492 _keys!1668) (bvadd #b00000000000000000000000000000001 mask!2088)))))))

(declare-fun b!956769 () Bool)

(declare-fun e!539205 () Bool)

(assert (=> b!956769 (= e!539205 tp_is_empty!21077)))

(declare-fun b!956770 () Bool)

(assert (=> b!956770 (= e!539206 (and e!539205 mapRes!33580))))

(declare-fun condMapEmpty!33580 () Bool)

(declare-fun mapDefault!33580 () ValueCell!10057)

