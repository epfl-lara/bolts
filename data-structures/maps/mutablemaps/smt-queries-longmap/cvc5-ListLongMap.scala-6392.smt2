; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82176 () Bool)

(assert start!82176)

(declare-fun mapNonEmpty!33670 () Bool)

(declare-fun mapRes!33670 () Bool)

(declare-fun tp!64276 () Bool)

(declare-fun e!539677 () Bool)

(assert (=> mapNonEmpty!33670 (= mapRes!33670 (and tp!64276 e!539677))))

(declare-fun mapKey!33670 () (_ BitVec 32))

(declare-datatypes ((V!33153 0))(
  ( (V!33154 (val!10614 Int)) )
))
(declare-datatypes ((ValueCell!10082 0))(
  ( (ValueCellFull!10082 (v!13171 V!33153)) (EmptyCell!10082) )
))
(declare-datatypes ((array!58373 0))(
  ( (array!58374 (arr!28056 (Array (_ BitVec 32) ValueCell!10082)) (size!28536 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58373)

(declare-fun mapRest!33670 () (Array (_ BitVec 32) ValueCell!10082))

(declare-fun mapValue!33670 () ValueCell!10082)

(assert (=> mapNonEmpty!33670 (= (arr!28056 _values!1386) (store mapRest!33670 mapKey!33670 mapValue!33670))))

(declare-fun b!957342 () Bool)

(declare-fun e!539675 () Bool)

(declare-fun tp_is_empty!21127 () Bool)

(assert (=> b!957342 (= e!539675 tp_is_empty!21127)))

(declare-fun b!957343 () Bool)

(declare-fun e!539678 () Bool)

(assert (=> b!957343 (= e!539678 false)))

(declare-fun lt!430277 () Bool)

(declare-datatypes ((array!58375 0))(
  ( (array!58376 (arr!28057 (Array (_ BitVec 32) (_ BitVec 64))) (size!28537 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58375)

(declare-datatypes ((List!19650 0))(
  ( (Nil!19647) (Cons!19646 (h!20808 (_ BitVec 64)) (t!28021 List!19650)) )
))
(declare-fun arrayNoDuplicates!0 (array!58375 (_ BitVec 32) List!19650) Bool)

(assert (=> b!957343 (= lt!430277 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19647))))

(declare-fun b!957344 () Bool)

(declare-fun res!640970 () Bool)

(assert (=> b!957344 (=> (not res!640970) (not e!539678))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957344 (= res!640970 (and (= (size!28536 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28537 _keys!1668) (size!28536 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33670 () Bool)

(assert (=> mapIsEmpty!33670 mapRes!33670))

(declare-fun b!957345 () Bool)

(declare-fun e!539674 () Bool)

(assert (=> b!957345 (= e!539674 (and e!539675 mapRes!33670))))

(declare-fun condMapEmpty!33670 () Bool)

(declare-fun mapDefault!33670 () ValueCell!10082)

