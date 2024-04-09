; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82952 () Bool)

(assert start!82952)

(declare-fun b_free!19051 () Bool)

(declare-fun b_next!19051 () Bool)

(assert (=> start!82952 (= b_free!19051 (not b_next!19051))))

(declare-fun tp!66283 () Bool)

(declare-fun b_and!30557 () Bool)

(assert (=> start!82952 (= tp!66283 b_and!30557)))

(declare-fun b!967530 () Bool)

(declare-fun e!545343 () Bool)

(declare-fun tp_is_empty!21859 () Bool)

(assert (=> b!967530 (= e!545343 tp_is_empty!21859)))

(declare-fun b!967531 () Bool)

(declare-fun res!647804 () Bool)

(declare-fun e!545341 () Bool)

(assert (=> b!967531 (=> (not res!647804) (not e!545341))))

(declare-datatypes ((array!59773 0))(
  ( (array!59774 (arr!28751 (Array (_ BitVec 32) (_ BitVec 64))) (size!29231 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59773)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967531 (= res!647804 (validKeyInArray!0 (select (arr!28751 _keys!1686) i!803)))))

(declare-fun b!967533 () Bool)

(declare-fun res!647802 () Bool)

(assert (=> b!967533 (=> (not res!647802) (not e!545341))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34129 0))(
  ( (V!34130 (val!10980 Int)) )
))
(declare-datatypes ((ValueCell!10448 0))(
  ( (ValueCellFull!10448 (v!13538 V!34129)) (EmptyCell!10448) )
))
(declare-datatypes ((array!59775 0))(
  ( (array!59776 (arr!28752 (Array (_ BitVec 32) ValueCell!10448)) (size!29232 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59775)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!967533 (= res!647802 (and (= (size!29232 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29231 _keys!1686) (size!29232 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967534 () Bool)

(declare-fun e!545340 () Bool)

(assert (=> b!967534 (= e!545340 tp_is_empty!21859)))

(declare-fun b!967535 () Bool)

(declare-fun res!647803 () Bool)

(assert (=> b!967535 (=> (not res!647803) (not e!545341))))

(declare-fun minValue!1342 () V!34129)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34129)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14214 0))(
  ( (tuple2!14215 (_1!7117 (_ BitVec 64)) (_2!7117 V!34129)) )
))
(declare-datatypes ((List!20087 0))(
  ( (Nil!20084) (Cons!20083 (h!21245 tuple2!14214) (t!28458 List!20087)) )
))
(declare-datatypes ((ListLongMap!12925 0))(
  ( (ListLongMap!12926 (toList!6478 List!20087)) )
))
(declare-fun contains!5529 (ListLongMap!12925 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3663 (array!59773 array!59775 (_ BitVec 32) (_ BitVec 32) V!34129 V!34129 (_ BitVec 32) Int) ListLongMap!12925)

(assert (=> b!967535 (= res!647803 (contains!5529 (getCurrentListMap!3663 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28751 _keys!1686) i!803)))))

(declare-fun b!967536 () Bool)

(declare-fun res!647807 () Bool)

(assert (=> b!967536 (=> (not res!647807) (not e!545341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59773 (_ BitVec 32)) Bool)

(assert (=> b!967536 (= res!647807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967537 () Bool)

(declare-fun res!647805 () Bool)

(assert (=> b!967537 (=> (not res!647805) (not e!545341))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967537 (= res!647805 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29231 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29231 _keys!1686))))))

(declare-fun mapNonEmpty!34783 () Bool)

(declare-fun mapRes!34783 () Bool)

(declare-fun tp!66282 () Bool)

(assert (=> mapNonEmpty!34783 (= mapRes!34783 (and tp!66282 e!545340))))

(declare-fun mapValue!34783 () ValueCell!10448)

(declare-fun mapRest!34783 () (Array (_ BitVec 32) ValueCell!10448))

(declare-fun mapKey!34783 () (_ BitVec 32))

(assert (=> mapNonEmpty!34783 (= (arr!28752 _values!1400) (store mapRest!34783 mapKey!34783 mapValue!34783))))

(declare-fun b!967532 () Bool)

(declare-fun res!647801 () Bool)

(assert (=> b!967532 (=> (not res!647801) (not e!545341))))

(declare-datatypes ((List!20088 0))(
  ( (Nil!20085) (Cons!20084 (h!21246 (_ BitVec 64)) (t!28459 List!20088)) )
))
(declare-fun arrayNoDuplicates!0 (array!59773 (_ BitVec 32) List!20088) Bool)

(assert (=> b!967532 (= res!647801 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20085))))

(declare-fun res!647800 () Bool)

(assert (=> start!82952 (=> (not res!647800) (not e!545341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82952 (= res!647800 (validMask!0 mask!2110))))

(assert (=> start!82952 e!545341))

(assert (=> start!82952 true))

(declare-fun e!545342 () Bool)

(declare-fun array_inv!22153 (array!59775) Bool)

(assert (=> start!82952 (and (array_inv!22153 _values!1400) e!545342)))

(declare-fun array_inv!22154 (array!59773) Bool)

(assert (=> start!82952 (array_inv!22154 _keys!1686)))

(assert (=> start!82952 tp!66283))

(assert (=> start!82952 tp_is_empty!21859))

(declare-fun b!967538 () Bool)

(declare-fun res!647806 () Bool)

(assert (=> b!967538 (=> (not res!647806) (not e!545341))))

(assert (=> b!967538 (= res!647806 (bvsgt from!2084 newFrom!159))))

(declare-fun mapIsEmpty!34783 () Bool)

(assert (=> mapIsEmpty!34783 mapRes!34783))

(declare-fun b!967539 () Bool)

(assert (=> b!967539 (= e!545341 (not true))))

(assert (=> b!967539 (contains!5529 (getCurrentListMap!3663 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28751 _keys!1686) i!803))))

(declare-datatypes ((Unit!32307 0))(
  ( (Unit!32308) )
))
(declare-fun lt!431388 () Unit!32307)

(declare-fun lemmaInListMapFromThenInFromMinusOne!60 (array!59773 array!59775 (_ BitVec 32) (_ BitVec 32) V!34129 V!34129 (_ BitVec 32) (_ BitVec 32) Int) Unit!32307)

(assert (=> b!967539 (= lt!431388 (lemmaInListMapFromThenInFromMinusOne!60 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967540 () Bool)

(assert (=> b!967540 (= e!545342 (and e!545343 mapRes!34783))))

(declare-fun condMapEmpty!34783 () Bool)

(declare-fun mapDefault!34783 () ValueCell!10448)

