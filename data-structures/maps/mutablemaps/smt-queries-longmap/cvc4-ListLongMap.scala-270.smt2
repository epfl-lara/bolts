; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4448 () Bool)

(assert start!4448)

(declare-fun b_free!1211 () Bool)

(declare-fun b_next!1211 () Bool)

(assert (=> start!4448 (= b_free!1211 (not b_next!1211))))

(declare-fun tp!5071 () Bool)

(declare-fun b_and!2035 () Bool)

(assert (=> start!4448 (= tp!5071 b_and!2035)))

(declare-fun b!34410 () Bool)

(declare-fun res!20851 () Bool)

(declare-fun e!21835 () Bool)

(assert (=> b!34410 (=> (not res!20851) (not e!21835))))

(declare-datatypes ((array!2337 0))(
  ( (array!2338 (arr!1116 (Array (_ BitVec 32) (_ BitVec 64))) (size!1217 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2337)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34410 (= res!20851 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun res!20848 () Bool)

(assert (=> start!4448 (=> (not res!20848) (not e!21835))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4448 (= res!20848 (validMask!0 mask!2294))))

(assert (=> start!4448 e!21835))

(assert (=> start!4448 true))

(assert (=> start!4448 tp!5071))

(declare-datatypes ((V!1911 0))(
  ( (V!1912 (val!809 Int)) )
))
(declare-datatypes ((ValueCell!583 0))(
  ( (ValueCellFull!583 (v!1904 V!1911)) (EmptyCell!583) )
))
(declare-datatypes ((array!2339 0))(
  ( (array!2340 (arr!1117 (Array (_ BitVec 32) ValueCell!583)) (size!1218 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2339)

(declare-fun e!21836 () Bool)

(declare-fun array_inv!743 (array!2339) Bool)

(assert (=> start!4448 (and (array_inv!743 _values!1501) e!21836)))

(declare-fun array_inv!744 (array!2337) Bool)

(assert (=> start!4448 (array_inv!744 _keys!1833)))

(declare-fun tp_is_empty!1565 () Bool)

(assert (=> start!4448 tp_is_empty!1565))

(declare-fun b!34411 () Bool)

(declare-fun res!20854 () Bool)

(assert (=> b!34411 (=> (not res!20854) (not e!21835))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34411 (= res!20854 (and (= (size!1218 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1217 _keys!1833) (size!1218 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34412 () Bool)

(declare-fun res!20853 () Bool)

(assert (=> b!34412 (=> (not res!20853) (not e!21835))))

(declare-datatypes ((List!906 0))(
  ( (Nil!903) (Cons!902 (h!1469 (_ BitVec 64)) (t!3613 List!906)) )
))
(declare-fun arrayNoDuplicates!0 (array!2337 (_ BitVec 32) List!906) Bool)

(assert (=> b!34412 (= res!20853 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!903))))

(declare-fun mapIsEmpty!1894 () Bool)

(declare-fun mapRes!1894 () Bool)

(assert (=> mapIsEmpty!1894 mapRes!1894))

(declare-fun b!34413 () Bool)

(declare-fun e!21837 () Bool)

(assert (=> b!34413 (= e!21837 tp_is_empty!1565)))

(declare-fun b!34414 () Bool)

(declare-fun res!20849 () Bool)

(assert (=> b!34414 (=> (not res!20849) (not e!21835))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1911)

(declare-fun minValue!1443 () V!1911)

(declare-datatypes ((tuple2!1302 0))(
  ( (tuple2!1303 (_1!661 (_ BitVec 64)) (_2!661 V!1911)) )
))
(declare-datatypes ((List!907 0))(
  ( (Nil!904) (Cons!903 (h!1470 tuple2!1302) (t!3614 List!907)) )
))
(declare-datatypes ((ListLongMap!883 0))(
  ( (ListLongMap!884 (toList!457 List!907)) )
))
(declare-fun contains!400 (ListLongMap!883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!278 (array!2337 array!2339 (_ BitVec 32) (_ BitVec 32) V!1911 V!1911 (_ BitVec 32) Int) ListLongMap!883)

(assert (=> b!34414 (= res!20849 (not (contains!400 (getCurrentListMap!278 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34415 () Bool)

(declare-fun res!20852 () Bool)

(assert (=> b!34415 (=> (not res!20852) (not e!21835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2337 (_ BitVec 32)) Bool)

(assert (=> b!34415 (= res!20852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34416 () Bool)

(assert (=> b!34416 (= e!21836 (and e!21837 mapRes!1894))))

(declare-fun condMapEmpty!1894 () Bool)

(declare-fun mapDefault!1894 () ValueCell!583)

