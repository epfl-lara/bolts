; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82206 () Bool)

(assert start!82206)

(declare-fun b!957617 () Bool)

(declare-fun e!539902 () Bool)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((array!58431 0))(
  ( (array!58432 (arr!28085 (Array (_ BitVec 32) (_ BitVec 64))) (size!28565 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58431)

(assert (=> b!957617 (= e!539902 (bvsgt from!2064 (size!28565 _keys!1668)))))

(declare-fun b!957618 () Bool)

(declare-fun res!641110 () Bool)

(assert (=> b!957618 (=> (not res!641110) (not e!539902))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957618 (= res!641110 (validKeyInArray!0 (select (arr!28085 _keys!1668) i!793)))))

(declare-fun b!957619 () Bool)

(declare-fun e!539900 () Bool)

(declare-fun tp_is_empty!21157 () Bool)

(assert (=> b!957619 (= e!539900 tp_is_empty!21157)))

(declare-fun b!957620 () Bool)

(declare-fun e!539903 () Bool)

(assert (=> b!957620 (= e!539903 tp_is_empty!21157)))

(declare-fun b!957621 () Bool)

(declare-fun res!641113 () Bool)

(assert (=> b!957621 (=> (not res!641113) (not e!539902))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58431 (_ BitVec 32)) Bool)

(assert (=> b!957621 (= res!641113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957622 () Bool)

(declare-fun res!641114 () Bool)

(assert (=> b!957622 (=> (not res!641114) (not e!539902))))

(assert (=> b!957622 (= res!641114 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28565 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28565 _keys!1668))))))

(declare-fun mapNonEmpty!33715 () Bool)

(declare-fun mapRes!33715 () Bool)

(declare-fun tp!64321 () Bool)

(assert (=> mapNonEmpty!33715 (= mapRes!33715 (and tp!64321 e!539900))))

(declare-fun mapKey!33715 () (_ BitVec 32))

(declare-datatypes ((V!33193 0))(
  ( (V!33194 (val!10629 Int)) )
))
(declare-datatypes ((ValueCell!10097 0))(
  ( (ValueCellFull!10097 (v!13186 V!33193)) (EmptyCell!10097) )
))
(declare-datatypes ((array!58433 0))(
  ( (array!58434 (arr!28086 (Array (_ BitVec 32) ValueCell!10097)) (size!28566 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58433)

(declare-fun mapRest!33715 () (Array (_ BitVec 32) ValueCell!10097))

(declare-fun mapValue!33715 () ValueCell!10097)

(assert (=> mapNonEmpty!33715 (= (arr!28086 _values!1386) (store mapRest!33715 mapKey!33715 mapValue!33715))))

(declare-fun mapIsEmpty!33715 () Bool)

(assert (=> mapIsEmpty!33715 mapRes!33715))

(declare-fun res!641111 () Bool)

(assert (=> start!82206 (=> (not res!641111) (not e!539902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82206 (= res!641111 (validMask!0 mask!2088))))

(assert (=> start!82206 e!539902))

(assert (=> start!82206 true))

(declare-fun array_inv!21729 (array!58431) Bool)

(assert (=> start!82206 (array_inv!21729 _keys!1668)))

(declare-fun e!539901 () Bool)

(declare-fun array_inv!21730 (array!58433) Bool)

(assert (=> start!82206 (and (array_inv!21730 _values!1386) e!539901)))

(declare-fun b!957623 () Bool)

(declare-fun res!641115 () Bool)

(assert (=> b!957623 (=> (not res!641115) (not e!539902))))

(declare-datatypes ((List!19659 0))(
  ( (Nil!19656) (Cons!19655 (h!20817 (_ BitVec 64)) (t!28030 List!19659)) )
))
(declare-fun arrayNoDuplicates!0 (array!58431 (_ BitVec 32) List!19659) Bool)

(assert (=> b!957623 (= res!641115 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19656))))

(declare-fun b!957624 () Bool)

(declare-fun res!641112 () Bool)

(assert (=> b!957624 (=> (not res!641112) (not e!539902))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957624 (= res!641112 (and (= (size!28566 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28565 _keys!1668) (size!28566 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957625 () Bool)

(assert (=> b!957625 (= e!539901 (and e!539903 mapRes!33715))))

(declare-fun condMapEmpty!33715 () Bool)

(declare-fun mapDefault!33715 () ValueCell!10097)

