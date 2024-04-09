; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82076 () Bool)

(assert start!82076)

(declare-fun b_free!18455 () Bool)

(declare-fun b_next!18455 () Bool)

(assert (=> start!82076 (= b_free!18455 (not b_next!18455))))

(declare-fun tp!64176 () Bool)

(declare-fun b_and!29961 () Bool)

(assert (=> start!82076 (= tp!64176 b_and!29961)))

(declare-fun b!956725 () Bool)

(declare-fun e!539160 () Bool)

(declare-fun tp_is_empty!21071 () Bool)

(assert (=> b!956725 (= e!539160 tp_is_empty!21071)))

(declare-fun b!956726 () Bool)

(declare-fun res!640671 () Bool)

(declare-fun e!539161 () Bool)

(assert (=> b!956726 (=> (not res!640671) (not e!539161))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!33077 0))(
  ( (V!33078 (val!10586 Int)) )
))
(declare-datatypes ((ValueCell!10054 0))(
  ( (ValueCellFull!10054 (v!13142 V!33077)) (EmptyCell!10054) )
))
(declare-datatypes ((array!58261 0))(
  ( (array!58262 (arr!28005 (Array (_ BitVec 32) ValueCell!10054)) (size!28485 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58261)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-datatypes ((array!58263 0))(
  ( (array!58264 (arr!28006 (Array (_ BitVec 32) (_ BitVec 64))) (size!28486 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58263)

(assert (=> b!956726 (= res!640671 (and (= (size!28485 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28486 _keys!1441) (size!28485 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956727 () Bool)

(declare-fun res!640669 () Bool)

(assert (=> b!956727 (=> (not res!640669) (not e!539161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58263 (_ BitVec 32)) Bool)

(assert (=> b!956727 (= res!640669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956728 () Bool)

(assert (=> b!956728 (= e!539161 (not true))))

(declare-fun zeroValue!1139 () V!33077)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!33077)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13794 0))(
  ( (tuple2!13795 (_1!6907 (_ BitVec 64)) (_2!6907 V!33077)) )
))
(declare-datatypes ((List!19639 0))(
  ( (Nil!19636) (Cons!19635 (h!20797 tuple2!13794) (t!28010 List!19639)) )
))
(declare-datatypes ((ListLongMap!12505 0))(
  ( (ListLongMap!12506 (toList!6268 List!19639)) )
))
(declare-fun contains!5319 (ListLongMap!12505 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3453 (array!58263 array!58261 (_ BitVec 32) (_ BitVec 32) V!33077 V!33077 (_ BitVec 32) Int) ListLongMap!12505)

(assert (=> b!956728 (contains!5319 (getCurrentListMap!3453 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!28006 _keys!1441) i!735))))

(declare-datatypes ((Unit!32133 0))(
  ( (Unit!32134) )
))
(declare-fun lt!430207 () Unit!32133)

(declare-fun lemmaInListMapFromThenFromZero!21 (array!58263 array!58261 (_ BitVec 32) (_ BitVec 32) V!33077 V!33077 (_ BitVec 32) (_ BitVec 32) Int) Unit!32133)

(assert (=> b!956728 (= lt!430207 (lemmaInListMapFromThenFromZero!21 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!956729 () Bool)

(declare-fun res!640675 () Bool)

(assert (=> b!956729 (=> (not res!640675) (not e!539161))))

(assert (=> b!956729 (= res!640675 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28486 _keys!1441))))))

(declare-fun mapIsEmpty!33571 () Bool)

(declare-fun mapRes!33571 () Bool)

(assert (=> mapIsEmpty!33571 mapRes!33571))

(declare-fun b!956730 () Bool)

(declare-fun res!640670 () Bool)

(assert (=> b!956730 (=> (not res!640670) (not e!539161))))

(assert (=> b!956730 (= res!640670 (contains!5319 (getCurrentListMap!3453 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!28006 _keys!1441) i!735)))))

(declare-fun b!956731 () Bool)

(declare-fun res!640673 () Bool)

(assert (=> b!956731 (=> (not res!640673) (not e!539161))))

(declare-datatypes ((List!19640 0))(
  ( (Nil!19637) (Cons!19636 (h!20798 (_ BitVec 64)) (t!28011 List!19640)) )
))
(declare-fun arrayNoDuplicates!0 (array!58263 (_ BitVec 32) List!19640) Bool)

(assert (=> b!956731 (= res!640673 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19637))))

(declare-fun b!956732 () Bool)

(declare-fun res!640672 () Bool)

(assert (=> b!956732 (=> (not res!640672) (not e!539161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956732 (= res!640672 (validKeyInArray!0 (select (arr!28006 _keys!1441) i!735)))))

(declare-fun res!640674 () Bool)

(assert (=> start!82076 (=> (not res!640674) (not e!539161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82076 (= res!640674 (validMask!0 mask!1823))))

(assert (=> start!82076 e!539161))

(assert (=> start!82076 true))

(assert (=> start!82076 tp_is_empty!21071))

(declare-fun array_inv!21669 (array!58263) Bool)

(assert (=> start!82076 (array_inv!21669 _keys!1441)))

(declare-fun e!539159 () Bool)

(declare-fun array_inv!21670 (array!58261) Bool)

(assert (=> start!82076 (and (array_inv!21670 _values!1197) e!539159)))

(assert (=> start!82076 tp!64176))

(declare-fun mapNonEmpty!33571 () Bool)

(declare-fun tp!64177 () Bool)

(declare-fun e!539162 () Bool)

(assert (=> mapNonEmpty!33571 (= mapRes!33571 (and tp!64177 e!539162))))

(declare-fun mapValue!33571 () ValueCell!10054)

(declare-fun mapKey!33571 () (_ BitVec 32))

(declare-fun mapRest!33571 () (Array (_ BitVec 32) ValueCell!10054))

(assert (=> mapNonEmpty!33571 (= (arr!28005 _values!1197) (store mapRest!33571 mapKey!33571 mapValue!33571))))

(declare-fun b!956733 () Bool)

(assert (=> b!956733 (= e!539159 (and e!539160 mapRes!33571))))

(declare-fun condMapEmpty!33571 () Bool)

(declare-fun mapDefault!33571 () ValueCell!10054)

