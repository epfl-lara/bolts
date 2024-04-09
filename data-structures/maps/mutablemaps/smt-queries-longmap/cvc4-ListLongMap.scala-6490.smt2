; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82812 () Bool)

(assert start!82812)

(declare-fun b_free!18917 () Bool)

(declare-fun b_next!18917 () Bool)

(assert (=> start!82812 (= b_free!18917 (not b_next!18917))))

(declare-fun tp!65871 () Bool)

(declare-fun b_and!30423 () Bool)

(assert (=> start!82812 (= tp!65871 b_and!30423)))

(declare-fun b!965482 () Bool)

(declare-fun res!646386 () Bool)

(declare-fun e!544294 () Bool)

(assert (=> b!965482 (=> (not res!646386) (not e!544294))))

(declare-datatypes ((array!59503 0))(
  ( (array!59504 (arr!28616 (Array (_ BitVec 32) (_ BitVec 64))) (size!29096 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59503)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965482 (= res!646386 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29096 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29096 _keys!1686))))))

(declare-fun mapIsEmpty!34573 () Bool)

(declare-fun mapRes!34573 () Bool)

(assert (=> mapIsEmpty!34573 mapRes!34573))

(declare-fun b!965484 () Bool)

(declare-fun e!544293 () Bool)

(declare-fun tp_is_empty!21719 () Bool)

(assert (=> b!965484 (= e!544293 tp_is_empty!21719)))

(declare-fun b!965485 () Bool)

(declare-fun res!646382 () Bool)

(assert (=> b!965485 (=> (not res!646382) (not e!544294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965485 (= res!646382 (validKeyInArray!0 (select (arr!28616 _keys!1686) i!803)))))

(declare-fun b!965486 () Bool)

(declare-fun e!544290 () Bool)

(assert (=> b!965486 (= e!544290 tp_is_empty!21719)))

(declare-fun b!965487 () Bool)

(declare-fun res!646384 () Bool)

(assert (=> b!965487 (=> (not res!646384) (not e!544294))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33941 0))(
  ( (V!33942 (val!10910 Int)) )
))
(declare-datatypes ((ValueCell!10378 0))(
  ( (ValueCellFull!10378 (v!13468 V!33941)) (EmptyCell!10378) )
))
(declare-datatypes ((array!59505 0))(
  ( (array!59506 (arr!28617 (Array (_ BitVec 32) ValueCell!10378)) (size!29097 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59505)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965487 (= res!646384 (and (= (size!29097 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29096 _keys!1686) (size!29097 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965488 () Bool)

(declare-fun res!646385 () Bool)

(assert (=> b!965488 (=> (not res!646385) (not e!544294))))

(declare-fun minValue!1342 () V!33941)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33941)

(declare-datatypes ((tuple2!14108 0))(
  ( (tuple2!14109 (_1!7064 (_ BitVec 64)) (_2!7064 V!33941)) )
))
(declare-datatypes ((List!19987 0))(
  ( (Nil!19984) (Cons!19983 (h!21145 tuple2!14108) (t!28358 List!19987)) )
))
(declare-datatypes ((ListLongMap!12819 0))(
  ( (ListLongMap!12820 (toList!6425 List!19987)) )
))
(declare-fun contains!5479 (ListLongMap!12819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3610 (array!59503 array!59505 (_ BitVec 32) (_ BitVec 32) V!33941 V!33941 (_ BitVec 32) Int) ListLongMap!12819)

(assert (=> b!965488 (= res!646385 (contains!5479 (getCurrentListMap!3610 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28616 _keys!1686) i!803)))))

(declare-fun b!965489 () Bool)

(declare-fun res!646383 () Bool)

(assert (=> b!965489 (=> (not res!646383) (not e!544294))))

(declare-datatypes ((List!19988 0))(
  ( (Nil!19985) (Cons!19984 (h!21146 (_ BitVec 64)) (t!28359 List!19988)) )
))
(declare-fun arrayNoDuplicates!0 (array!59503 (_ BitVec 32) List!19988) Bool)

(assert (=> b!965489 (= res!646383 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19985))))

(declare-fun mapNonEmpty!34573 () Bool)

(declare-fun tp!65872 () Bool)

(assert (=> mapNonEmpty!34573 (= mapRes!34573 (and tp!65872 e!544293))))

(declare-fun mapRest!34573 () (Array (_ BitVec 32) ValueCell!10378))

(declare-fun mapKey!34573 () (_ BitVec 32))

(declare-fun mapValue!34573 () ValueCell!10378)

(assert (=> mapNonEmpty!34573 (= (arr!28617 _values!1400) (store mapRest!34573 mapKey!34573 mapValue!34573))))

(declare-fun b!965483 () Bool)

(declare-fun e!544291 () Bool)

(assert (=> b!965483 (= e!544291 (and e!544290 mapRes!34573))))

(declare-fun condMapEmpty!34573 () Bool)

(declare-fun mapDefault!34573 () ValueCell!10378)

