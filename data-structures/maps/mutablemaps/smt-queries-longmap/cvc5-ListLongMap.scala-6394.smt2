; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82188 () Bool)

(assert start!82188)

(declare-fun b!957449 () Bool)

(declare-fun e!539768 () Bool)

(assert (=> b!957449 (= e!539768 false)))

(declare-fun lt!430295 () Bool)

(declare-datatypes ((array!58397 0))(
  ( (array!58398 (arr!28068 (Array (_ BitVec 32) (_ BitVec 64))) (size!28548 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58397)

(declare-datatypes ((List!19654 0))(
  ( (Nil!19651) (Cons!19650 (h!20812 (_ BitVec 64)) (t!28025 List!19654)) )
))
(declare-fun arrayNoDuplicates!0 (array!58397 (_ BitVec 32) List!19654) Bool)

(assert (=> b!957449 (= lt!430295 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19651))))

(declare-fun b!957450 () Bool)

(declare-fun res!641023 () Bool)

(assert (=> b!957450 (=> (not res!641023) (not e!539768))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33169 0))(
  ( (V!33170 (val!10620 Int)) )
))
(declare-datatypes ((ValueCell!10088 0))(
  ( (ValueCellFull!10088 (v!13177 V!33169)) (EmptyCell!10088) )
))
(declare-datatypes ((array!58399 0))(
  ( (array!58400 (arr!28069 (Array (_ BitVec 32) ValueCell!10088)) (size!28549 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58399)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957450 (= res!641023 (and (= (size!28549 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28548 _keys!1668) (size!28549 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957451 () Bool)

(declare-fun e!539764 () Bool)

(declare-fun tp_is_empty!21139 () Bool)

(assert (=> b!957451 (= e!539764 tp_is_empty!21139)))

(declare-fun mapNonEmpty!33688 () Bool)

(declare-fun mapRes!33688 () Bool)

(declare-fun tp!64294 () Bool)

(declare-fun e!539766 () Bool)

(assert (=> mapNonEmpty!33688 (= mapRes!33688 (and tp!64294 e!539766))))

(declare-fun mapRest!33688 () (Array (_ BitVec 32) ValueCell!10088))

(declare-fun mapValue!33688 () ValueCell!10088)

(declare-fun mapKey!33688 () (_ BitVec 32))

(assert (=> mapNonEmpty!33688 (= (arr!28069 _values!1386) (store mapRest!33688 mapKey!33688 mapValue!33688))))

(declare-fun res!641025 () Bool)

(assert (=> start!82188 (=> (not res!641025) (not e!539768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82188 (= res!641025 (validMask!0 mask!2088))))

(assert (=> start!82188 e!539768))

(assert (=> start!82188 true))

(declare-fun e!539765 () Bool)

(declare-fun array_inv!21717 (array!58399) Bool)

(assert (=> start!82188 (and (array_inv!21717 _values!1386) e!539765)))

(declare-fun array_inv!21718 (array!58397) Bool)

(assert (=> start!82188 (array_inv!21718 _keys!1668)))

(declare-fun mapIsEmpty!33688 () Bool)

(assert (=> mapIsEmpty!33688 mapRes!33688))

(declare-fun b!957452 () Bool)

(assert (=> b!957452 (= e!539765 (and e!539764 mapRes!33688))))

(declare-fun condMapEmpty!33688 () Bool)

(declare-fun mapDefault!33688 () ValueCell!10088)

