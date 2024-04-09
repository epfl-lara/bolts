; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82072 () Bool)

(assert start!82072)

(declare-fun b_free!18451 () Bool)

(declare-fun b_next!18451 () Bool)

(assert (=> start!82072 (= b_free!18451 (not b_next!18451))))

(declare-fun tp!64164 () Bool)

(declare-fun b_and!29957 () Bool)

(assert (=> start!82072 (= tp!64164 b_and!29957)))

(declare-fun res!640631 () Bool)

(declare-fun e!539130 () Bool)

(assert (=> start!82072 (=> (not res!640631) (not e!539130))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82072 (= res!640631 (validMask!0 mask!1823))))

(assert (=> start!82072 e!539130))

(assert (=> start!82072 true))

(declare-fun tp_is_empty!21067 () Bool)

(assert (=> start!82072 tp_is_empty!21067))

(declare-datatypes ((array!58253 0))(
  ( (array!58254 (arr!28001 (Array (_ BitVec 32) (_ BitVec 64))) (size!28481 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58253)

(declare-fun array_inv!21665 (array!58253) Bool)

(assert (=> start!82072 (array_inv!21665 _keys!1441)))

(declare-datatypes ((V!33073 0))(
  ( (V!33074 (val!10584 Int)) )
))
(declare-datatypes ((ValueCell!10052 0))(
  ( (ValueCellFull!10052 (v!13140 V!33073)) (EmptyCell!10052) )
))
(declare-datatypes ((array!58255 0))(
  ( (array!58256 (arr!28002 (Array (_ BitVec 32) ValueCell!10052)) (size!28482 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58255)

(declare-fun e!539132 () Bool)

(declare-fun array_inv!21666 (array!58255) Bool)

(assert (=> start!82072 (and (array_inv!21666 _values!1197) e!539132)))

(assert (=> start!82072 tp!64164))

(declare-fun b!956665 () Bool)

(declare-fun res!640627 () Bool)

(assert (=> b!956665 (=> (not res!640627) (not e!539130))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!956665 (= res!640627 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28481 _keys!1441))))))

(declare-fun mapNonEmpty!33565 () Bool)

(declare-fun mapRes!33565 () Bool)

(declare-fun tp!64165 () Bool)

(declare-fun e!539129 () Bool)

(assert (=> mapNonEmpty!33565 (= mapRes!33565 (and tp!64165 e!539129))))

(declare-fun mapRest!33565 () (Array (_ BitVec 32) ValueCell!10052))

(declare-fun mapKey!33565 () (_ BitVec 32))

(declare-fun mapValue!33565 () ValueCell!10052)

(assert (=> mapNonEmpty!33565 (= (arr!28002 _values!1197) (store mapRest!33565 mapKey!33565 mapValue!33565))))

(declare-fun b!956666 () Bool)

(declare-fun res!640632 () Bool)

(assert (=> b!956666 (=> (not res!640632) (not e!539130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58253 (_ BitVec 32)) Bool)

(assert (=> b!956666 (= res!640632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956667 () Bool)

(declare-fun res!640629 () Bool)

(assert (=> b!956667 (=> (not res!640629) (not e!539130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956667 (= res!640629 (validKeyInArray!0 (select (arr!28001 _keys!1441) i!735)))))

(declare-fun b!956668 () Bool)

(declare-fun e!539131 () Bool)

(assert (=> b!956668 (= e!539131 tp_is_empty!21067)))

(declare-fun b!956669 () Bool)

(declare-fun res!640628 () Bool)

(assert (=> b!956669 (=> (not res!640628) (not e!539130))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!33073)

(declare-fun minValue!1139 () V!33073)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13790 0))(
  ( (tuple2!13791 (_1!6905 (_ BitVec 64)) (_2!6905 V!33073)) )
))
(declare-datatypes ((List!19636 0))(
  ( (Nil!19633) (Cons!19632 (h!20794 tuple2!13790) (t!28007 List!19636)) )
))
(declare-datatypes ((ListLongMap!12501 0))(
  ( (ListLongMap!12502 (toList!6266 List!19636)) )
))
(declare-fun contains!5317 (ListLongMap!12501 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3451 (array!58253 array!58255 (_ BitVec 32) (_ BitVec 32) V!33073 V!33073 (_ BitVec 32) Int) ListLongMap!12501)

(assert (=> b!956669 (= res!640628 (contains!5317 (getCurrentListMap!3451 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!28001 _keys!1441) i!735)))))

(declare-fun b!956670 () Bool)

(assert (=> b!956670 (= e!539129 tp_is_empty!21067)))

(declare-fun b!956671 () Bool)

(assert (=> b!956671 (= e!539130 (not true))))

(assert (=> b!956671 (contains!5317 (getCurrentListMap!3451 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!28001 _keys!1441) i!735))))

(declare-datatypes ((Unit!32129 0))(
  ( (Unit!32130) )
))
(declare-fun lt!430201 () Unit!32129)

(declare-fun lemmaInListMapFromThenFromZero!19 (array!58253 array!58255 (_ BitVec 32) (_ BitVec 32) V!33073 V!33073 (_ BitVec 32) (_ BitVec 32) Int) Unit!32129)

(assert (=> b!956671 (= lt!430201 (lemmaInListMapFromThenFromZero!19 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!956672 () Bool)

(assert (=> b!956672 (= e!539132 (and e!539131 mapRes!33565))))

(declare-fun condMapEmpty!33565 () Bool)

(declare-fun mapDefault!33565 () ValueCell!10052)

