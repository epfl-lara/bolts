; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82908 () Bool)

(assert start!82908)

(declare-fun b_free!19007 () Bool)

(declare-fun b_next!19007 () Bool)

(assert (=> start!82908 (= b_free!19007 (not b_next!19007))))

(declare-fun tp!66150 () Bool)

(declare-fun b_and!30513 () Bool)

(assert (=> start!82908 (= tp!66150 b_and!30513)))

(declare-fun mapIsEmpty!34717 () Bool)

(declare-fun mapRes!34717 () Bool)

(assert (=> mapIsEmpty!34717 mapRes!34717))

(declare-fun b!966804 () Bool)

(declare-fun res!647274 () Bool)

(declare-fun e!545010 () Bool)

(assert (=> b!966804 (=> (not res!647274) (not e!545010))))

(declare-datatypes ((array!59693 0))(
  ( (array!59694 (arr!28711 (Array (_ BitVec 32) (_ BitVec 64))) (size!29191 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59693)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59693 (_ BitVec 32)) Bool)

(assert (=> b!966804 (= res!647274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966805 () Bool)

(declare-fun res!647278 () Bool)

(assert (=> b!966805 (=> (not res!647278) (not e!545010))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34069 0))(
  ( (V!34070 (val!10958 Int)) )
))
(declare-datatypes ((ValueCell!10426 0))(
  ( (ValueCellFull!10426 (v!13516 V!34069)) (EmptyCell!10426) )
))
(declare-datatypes ((array!59695 0))(
  ( (array!59696 (arr!28712 (Array (_ BitVec 32) ValueCell!10426)) (size!29192 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59695)

(declare-fun minValue!1342 () V!34069)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34069)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14184 0))(
  ( (tuple2!14185 (_1!7102 (_ BitVec 64)) (_2!7102 V!34069)) )
))
(declare-datatypes ((List!20058 0))(
  ( (Nil!20055) (Cons!20054 (h!21216 tuple2!14184) (t!28429 List!20058)) )
))
(declare-datatypes ((ListLongMap!12895 0))(
  ( (ListLongMap!12896 (toList!6463 List!20058)) )
))
(declare-fun contains!5514 (ListLongMap!12895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3648 (array!59693 array!59695 (_ BitVec 32) (_ BitVec 32) V!34069 V!34069 (_ BitVec 32) Int) ListLongMap!12895)

(assert (=> b!966805 (= res!647278 (contains!5514 (getCurrentListMap!3648 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28711 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34717 () Bool)

(declare-fun tp!66151 () Bool)

(declare-fun e!545013 () Bool)

(assert (=> mapNonEmpty!34717 (= mapRes!34717 (and tp!66151 e!545013))))

(declare-fun mapRest!34717 () (Array (_ BitVec 32) ValueCell!10426))

(declare-fun mapValue!34717 () ValueCell!10426)

(declare-fun mapKey!34717 () (_ BitVec 32))

(assert (=> mapNonEmpty!34717 (= (arr!28712 _values!1400) (store mapRest!34717 mapKey!34717 mapValue!34717))))

(declare-fun b!966806 () Bool)

(declare-fun res!647279 () Bool)

(assert (=> b!966806 (=> (not res!647279) (not e!545010))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966806 (= res!647279 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966807 () Bool)

(declare-fun res!647272 () Bool)

(assert (=> b!966807 (=> (not res!647272) (not e!545010))))

(declare-datatypes ((List!20059 0))(
  ( (Nil!20056) (Cons!20055 (h!21217 (_ BitVec 64)) (t!28430 List!20059)) )
))
(declare-fun arrayNoDuplicates!0 (array!59693 (_ BitVec 32) List!20059) Bool)

(assert (=> b!966807 (= res!647272 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20056))))

(declare-fun b!966808 () Bool)

(assert (=> b!966808 (= e!545010 (not true))))

(assert (=> b!966808 (contains!5514 (getCurrentListMap!3648 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28711 _keys!1686) i!803))))

(declare-datatypes ((Unit!32279 0))(
  ( (Unit!32280) )
))
(declare-fun lt!431322 () Unit!32279)

(declare-fun lemmaInListMapFromThenInFromMinusOne!46 (array!59693 array!59695 (_ BitVec 32) (_ BitVec 32) V!34069 V!34069 (_ BitVec 32) (_ BitVec 32) Int) Unit!32279)

(assert (=> b!966808 (= lt!431322 (lemmaInListMapFromThenInFromMinusOne!46 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966809 () Bool)

(declare-fun tp_is_empty!21815 () Bool)

(assert (=> b!966809 (= e!545013 tp_is_empty!21815)))

(declare-fun b!966810 () Bool)

(declare-fun res!647275 () Bool)

(assert (=> b!966810 (=> (not res!647275) (not e!545010))))

(assert (=> b!966810 (= res!647275 (and (= (size!29192 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29191 _keys!1686) (size!29192 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966811 () Bool)

(declare-fun e!545014 () Bool)

(declare-fun e!545012 () Bool)

(assert (=> b!966811 (= e!545014 (and e!545012 mapRes!34717))))

(declare-fun condMapEmpty!34717 () Bool)

(declare-fun mapDefault!34717 () ValueCell!10426)

