; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82438 () Bool)

(assert start!82438)

(declare-fun res!643239 () Bool)

(declare-fun e!541643 () Bool)

(assert (=> start!82438 (=> (not res!643239) (not e!541643))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82438 (= res!643239 (validMask!0 mask!2110))))

(assert (=> start!82438 e!541643))

(assert (=> start!82438 true))

(declare-datatypes ((V!33501 0))(
  ( (V!33502 (val!10745 Int)) )
))
(declare-datatypes ((ValueCell!10213 0))(
  ( (ValueCellFull!10213 (v!13302 V!33501)) (EmptyCell!10213) )
))
(declare-datatypes ((array!58875 0))(
  ( (array!58876 (arr!28307 (Array (_ BitVec 32) ValueCell!10213)) (size!28787 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58875)

(declare-fun e!541641 () Bool)

(declare-fun array_inv!21867 (array!58875) Bool)

(assert (=> start!82438 (and (array_inv!21867 _values!1400) e!541641)))

(declare-datatypes ((array!58877 0))(
  ( (array!58878 (arr!28308 (Array (_ BitVec 32) (_ BitVec 64))) (size!28788 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58877)

(declare-fun array_inv!21868 (array!58877) Bool)

(assert (=> start!82438 (array_inv!21868 _keys!1686)))

(declare-fun mapNonEmpty!34063 () Bool)

(declare-fun mapRes!34063 () Bool)

(declare-fun tp!64993 () Bool)

(declare-fun e!541642 () Bool)

(assert (=> mapNonEmpty!34063 (= mapRes!34063 (and tp!64993 e!541642))))

(declare-fun mapRest!34063 () (Array (_ BitVec 32) ValueCell!10213))

(declare-fun mapValue!34063 () ValueCell!10213)

(declare-fun mapKey!34063 () (_ BitVec 32))

(assert (=> mapNonEmpty!34063 (= (arr!28307 _values!1400) (store mapRest!34063 mapKey!34063 mapValue!34063))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun b!960790 () Bool)

(assert (=> b!960790 (= e!541643 (and (= (size!28787 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28788 _keys!1686) (size!28787 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011) (not (= (size!28788 _keys!1686) (bvadd #b00000000000000000000000000000001 mask!2110)))))))

(declare-fun b!960791 () Bool)

(declare-fun e!541639 () Bool)

(declare-fun tp_is_empty!21389 () Bool)

(assert (=> b!960791 (= e!541639 tp_is_empty!21389)))

(declare-fun mapIsEmpty!34063 () Bool)

(assert (=> mapIsEmpty!34063 mapRes!34063))

(declare-fun b!960792 () Bool)

(assert (=> b!960792 (= e!541641 (and e!541639 mapRes!34063))))

(declare-fun condMapEmpty!34063 () Bool)

(declare-fun mapDefault!34063 () ValueCell!10213)

