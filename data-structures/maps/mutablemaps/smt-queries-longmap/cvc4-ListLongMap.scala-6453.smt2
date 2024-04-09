; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82590 () Bool)

(assert start!82590)

(declare-fun b_free!18695 () Bool)

(declare-fun b_next!18695 () Bool)

(assert (=> start!82590 (= b_free!18695 (not b_next!18695))))

(declare-fun tp!65205 () Bool)

(declare-fun b_and!30201 () Bool)

(assert (=> start!82590 (= tp!65205 b_and!30201)))

(declare-fun b!962018 () Bool)

(declare-fun res!643921 () Bool)

(declare-fun e!542545 () Bool)

(assert (=> b!962018 (=> (not res!643921) (not e!542545))))

(declare-datatypes ((array!59079 0))(
  ( (array!59080 (arr!28404 (Array (_ BitVec 32) (_ BitVec 64))) (size!28884 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59079)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962018 (= res!643921 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28884 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28884 _keys!1686))))))

(declare-fun b!962019 () Bool)

(declare-fun e!542548 () Bool)

(declare-fun tp_is_empty!21497 () Bool)

(assert (=> b!962019 (= e!542548 tp_is_empty!21497)))

(declare-fun mapIsEmpty!34240 () Bool)

(declare-fun mapRes!34240 () Bool)

(assert (=> mapIsEmpty!34240 mapRes!34240))

(declare-fun b!962020 () Bool)

(declare-fun e!542546 () Bool)

(assert (=> b!962020 (= e!542546 tp_is_empty!21497)))

(declare-fun b!962021 () Bool)

(declare-fun res!643920 () Bool)

(assert (=> b!962021 (=> (not res!643920) (not e!542545))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33645 0))(
  ( (V!33646 (val!10799 Int)) )
))
(declare-datatypes ((ValueCell!10267 0))(
  ( (ValueCellFull!10267 (v!13357 V!33645)) (EmptyCell!10267) )
))
(declare-datatypes ((array!59081 0))(
  ( (array!59082 (arr!28405 (Array (_ BitVec 32) ValueCell!10267)) (size!28885 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59081)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!962021 (= res!643920 (and (= (size!28885 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28884 _keys!1686) (size!28885 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962022 () Bool)

(declare-fun res!643919 () Bool)

(assert (=> b!962022 (=> (not res!643919) (not e!542545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962022 (= res!643919 (validKeyInArray!0 (select (arr!28404 _keys!1686) i!803)))))

(declare-fun res!643917 () Bool)

(assert (=> start!82590 (=> (not res!643917) (not e!542545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82590 (= res!643917 (validMask!0 mask!2110))))

(assert (=> start!82590 e!542545))

(assert (=> start!82590 true))

(declare-fun e!542544 () Bool)

(declare-fun array_inv!21935 (array!59081) Bool)

(assert (=> start!82590 (and (array_inv!21935 _values!1400) e!542544)))

(declare-fun array_inv!21936 (array!59079) Bool)

(assert (=> start!82590 (array_inv!21936 _keys!1686)))

(assert (=> start!82590 tp!65205))

(assert (=> start!82590 tp_is_empty!21497))

(declare-fun b!962023 () Bool)

(declare-fun res!643922 () Bool)

(assert (=> b!962023 (=> (not res!643922) (not e!542545))))

(declare-datatypes ((List!19838 0))(
  ( (Nil!19835) (Cons!19834 (h!20996 (_ BitVec 64)) (t!28209 List!19838)) )
))
(declare-fun arrayNoDuplicates!0 (array!59079 (_ BitVec 32) List!19838) Bool)

(assert (=> b!962023 (= res!643922 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19835))))

(declare-fun b!962024 () Bool)

(declare-fun res!643918 () Bool)

(assert (=> b!962024 (=> (not res!643918) (not e!542545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59079 (_ BitVec 32)) Bool)

(assert (=> b!962024 (= res!643918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34240 () Bool)

(declare-fun tp!65206 () Bool)

(assert (=> mapNonEmpty!34240 (= mapRes!34240 (and tp!65206 e!542548))))

(declare-fun mapKey!34240 () (_ BitVec 32))

(declare-fun mapRest!34240 () (Array (_ BitVec 32) ValueCell!10267))

(declare-fun mapValue!34240 () ValueCell!10267)

(assert (=> mapNonEmpty!34240 (= (arr!28405 _values!1400) (store mapRest!34240 mapKey!34240 mapValue!34240))))

(declare-fun b!962025 () Bool)

(assert (=> b!962025 (= e!542545 false)))

(declare-fun minValue!1342 () V!33645)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!430791 () Bool)

(declare-fun zeroValue!1342 () V!33645)

(declare-datatypes ((tuple2!13954 0))(
  ( (tuple2!13955 (_1!6987 (_ BitVec 64)) (_2!6987 V!33645)) )
))
(declare-datatypes ((List!19839 0))(
  ( (Nil!19836) (Cons!19835 (h!20997 tuple2!13954) (t!28210 List!19839)) )
))
(declare-datatypes ((ListLongMap!12665 0))(
  ( (ListLongMap!12666 (toList!6348 List!19839)) )
))
(declare-fun contains!5402 (ListLongMap!12665 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3533 (array!59079 array!59081 (_ BitVec 32) (_ BitVec 32) V!33645 V!33645 (_ BitVec 32) Int) ListLongMap!12665)

(assert (=> b!962025 (= lt!430791 (contains!5402 (getCurrentListMap!3533 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28404 _keys!1686) i!803)))))

(declare-fun b!962026 () Bool)

(assert (=> b!962026 (= e!542544 (and e!542546 mapRes!34240))))

(declare-fun condMapEmpty!34240 () Bool)

(declare-fun mapDefault!34240 () ValueCell!10267)

