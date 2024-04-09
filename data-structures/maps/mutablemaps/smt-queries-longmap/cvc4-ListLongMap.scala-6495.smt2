; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82842 () Bool)

(assert start!82842)

(declare-fun b_free!18941 () Bool)

(declare-fun b_next!18941 () Bool)

(assert (=> start!82842 (= b_free!18941 (not b_next!18941))))

(declare-fun tp!65952 () Bool)

(declare-fun b_and!30447 () Bool)

(assert (=> start!82842 (= tp!65952 b_and!30447)))

(declare-fun b!965870 () Bool)

(declare-fun res!646639 () Bool)

(declare-fun e!544517 () Bool)

(assert (=> b!965870 (=> (not res!646639) (not e!544517))))

(declare-datatypes ((array!59563 0))(
  ( (array!59564 (arr!28646 (Array (_ BitVec 32) (_ BitVec 64))) (size!29126 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59563)

(declare-datatypes ((List!20007 0))(
  ( (Nil!20004) (Cons!20003 (h!21165 (_ BitVec 64)) (t!28378 List!20007)) )
))
(declare-fun arrayNoDuplicates!0 (array!59563 (_ BitVec 32) List!20007) Bool)

(assert (=> b!965870 (= res!646639 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20004))))

(declare-fun b!965871 () Bool)

(assert (=> b!965871 (= e!544517 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33981 0))(
  ( (V!33982 (val!10925 Int)) )
))
(declare-datatypes ((ValueCell!10393 0))(
  ( (ValueCellFull!10393 (v!13483 V!33981)) (EmptyCell!10393) )
))
(declare-datatypes ((array!59565 0))(
  ( (array!59566 (arr!28647 (Array (_ BitVec 32) ValueCell!10393)) (size!29127 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59565)

(declare-fun minValue!1342 () V!33981)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!431232 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33981)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14130 0))(
  ( (tuple2!14131 (_1!7075 (_ BitVec 64)) (_2!7075 V!33981)) )
))
(declare-datatypes ((List!20008 0))(
  ( (Nil!20005) (Cons!20004 (h!21166 tuple2!14130) (t!28379 List!20008)) )
))
(declare-datatypes ((ListLongMap!12841 0))(
  ( (ListLongMap!12842 (toList!6436 List!20008)) )
))
(declare-fun contains!5487 (ListLongMap!12841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3621 (array!59563 array!59565 (_ BitVec 32) (_ BitVec 32) V!33981 V!33981 (_ BitVec 32) Int) ListLongMap!12841)

(assert (=> b!965871 (= lt!431232 (contains!5487 (getCurrentListMap!3621 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28646 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34618 () Bool)

(declare-fun mapRes!34618 () Bool)

(declare-fun tp!65953 () Bool)

(declare-fun e!544518 () Bool)

(assert (=> mapNonEmpty!34618 (= mapRes!34618 (and tp!65953 e!544518))))

(declare-fun mapRest!34618 () (Array (_ BitVec 32) ValueCell!10393))

(declare-fun mapKey!34618 () (_ BitVec 32))

(declare-fun mapValue!34618 () ValueCell!10393)

(assert (=> mapNonEmpty!34618 (= (arr!28647 _values!1400) (store mapRest!34618 mapKey!34618 mapValue!34618))))

(declare-fun mapIsEmpty!34618 () Bool)

(assert (=> mapIsEmpty!34618 mapRes!34618))

(declare-fun b!965872 () Bool)

(declare-fun tp_is_empty!21749 () Bool)

(assert (=> b!965872 (= e!544518 tp_is_empty!21749)))

(declare-fun b!965874 () Bool)

(declare-fun e!544519 () Bool)

(assert (=> b!965874 (= e!544519 tp_is_empty!21749)))

(declare-fun b!965875 () Bool)

(declare-fun res!646636 () Bool)

(assert (=> b!965875 (=> (not res!646636) (not e!544517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965875 (= res!646636 (validKeyInArray!0 (select (arr!28646 _keys!1686) i!803)))))

(declare-fun b!965876 () Bool)

(declare-fun res!646637 () Bool)

(assert (=> b!965876 (=> (not res!646637) (not e!544517))))

(assert (=> b!965876 (= res!646637 (and (= (size!29127 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29126 _keys!1686) (size!29127 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965877 () Bool)

(declare-fun res!646635 () Bool)

(assert (=> b!965877 (=> (not res!646635) (not e!544517))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965877 (= res!646635 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29126 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29126 _keys!1686))))))

(declare-fun b!965878 () Bool)

(declare-fun e!544515 () Bool)

(assert (=> b!965878 (= e!544515 (and e!544519 mapRes!34618))))

(declare-fun condMapEmpty!34618 () Bool)

(declare-fun mapDefault!34618 () ValueCell!10393)

