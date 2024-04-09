; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110738 () Bool)

(assert start!110738)

(declare-fun b_free!29537 () Bool)

(declare-fun b_next!29537 () Bool)

(assert (=> start!110738 (= b_free!29537 (not b_next!29537))))

(declare-fun tp!103934 () Bool)

(declare-fun b_and!47755 () Bool)

(assert (=> start!110738 (= tp!103934 b_and!47755)))

(declare-fun b!1309910 () Bool)

(declare-fun res!869665 () Bool)

(declare-fun e!747363 () Bool)

(assert (=> b!1309910 (=> (not res!869665) (not e!747363))))

(declare-datatypes ((array!87489 0))(
  ( (array!87490 (arr!42220 (Array (_ BitVec 32) (_ BitVec 64))) (size!42771 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87489)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87489 (_ BitVec 32)) Bool)

(assert (=> b!1309910 (= res!869665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309911 () Bool)

(declare-fun res!869662 () Bool)

(assert (=> b!1309911 (=> (not res!869662) (not e!747363))))

(declare-datatypes ((List!30144 0))(
  ( (Nil!30141) (Cons!30140 (h!31349 (_ BitVec 64)) (t!43757 List!30144)) )
))
(declare-fun arrayNoDuplicates!0 (array!87489 (_ BitVec 32) List!30144) Bool)

(assert (=> b!1309911 (= res!869662 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30141))))

(declare-fun b!1309912 () Bool)

(declare-fun res!869660 () Bool)

(assert (=> b!1309912 (=> (not res!869660) (not e!747363))))

(declare-datatypes ((V!52125 0))(
  ( (V!52126 (val!17708 Int)) )
))
(declare-datatypes ((ValueCell!16735 0))(
  ( (ValueCellFull!16735 (v!20333 V!52125)) (EmptyCell!16735) )
))
(declare-datatypes ((array!87491 0))(
  ( (array!87492 (arr!42221 (Array (_ BitVec 32) ValueCell!16735)) (size!42772 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87491)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309912 (= res!869660 (and (= (size!42772 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42771 _keys!1628) (size!42772 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309913 () Bool)

(declare-fun res!869666 () Bool)

(assert (=> b!1309913 (=> (not res!869666) (not e!747363))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309913 (= res!869666 (validKeyInArray!0 (select (arr!42220 _keys!1628) from!2020)))))

(declare-fun b!1309914 () Bool)

(assert (=> b!1309914 (= e!747363 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52125)

(declare-fun zeroValue!1296 () V!52125)

(declare-datatypes ((tuple2!22978 0))(
  ( (tuple2!22979 (_1!11499 (_ BitVec 64)) (_2!11499 V!52125)) )
))
(declare-datatypes ((List!30145 0))(
  ( (Nil!30142) (Cons!30141 (h!31350 tuple2!22978) (t!43758 List!30145)) )
))
(declare-datatypes ((ListLongMap!20647 0))(
  ( (ListLongMap!20648 (toList!10339 List!30145)) )
))
(declare-fun contains!8425 (ListLongMap!20647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5295 (array!87489 array!87491 (_ BitVec 32) (_ BitVec 32) V!52125 V!52125 (_ BitVec 32) Int) ListLongMap!20647)

(assert (=> b!1309914 (contains!8425 (getCurrentListMap!5295 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43268 0))(
  ( (Unit!43269) )
))
(declare-fun lt!585256 () Unit!43268)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!8 (array!87489 array!87491 (_ BitVec 32) (_ BitVec 32) V!52125 V!52125 (_ BitVec 64) (_ BitVec 32) Int) Unit!43268)

(assert (=> b!1309914 (= lt!585256 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!8 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54529 () Bool)

(declare-fun mapRes!54529 () Bool)

(assert (=> mapIsEmpty!54529 mapRes!54529))

(declare-fun b!1309915 () Bool)

(declare-fun e!747364 () Bool)

(declare-fun tp_is_empty!35267 () Bool)

(assert (=> b!1309915 (= e!747364 tp_is_empty!35267)))

(declare-fun b!1309916 () Bool)

(declare-fun res!869658 () Bool)

(assert (=> b!1309916 (=> (not res!869658) (not e!747363))))

(assert (=> b!1309916 (= res!869658 (contains!8425 (getCurrentListMap!5295 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309917 () Bool)

(declare-fun res!869659 () Bool)

(assert (=> b!1309917 (=> (not res!869659) (not e!747363))))

(assert (=> b!1309917 (= res!869659 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!869663 () Bool)

(assert (=> start!110738 (=> (not res!869663) (not e!747363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110738 (= res!869663 (validMask!0 mask!2040))))

(assert (=> start!110738 e!747363))

(assert (=> start!110738 tp!103934))

(declare-fun array_inv!31899 (array!87489) Bool)

(assert (=> start!110738 (array_inv!31899 _keys!1628)))

(assert (=> start!110738 true))

(assert (=> start!110738 tp_is_empty!35267))

(declare-fun e!747365 () Bool)

(declare-fun array_inv!31900 (array!87491) Bool)

(assert (=> start!110738 (and (array_inv!31900 _values!1354) e!747365)))

(declare-fun b!1309918 () Bool)

(declare-fun res!869661 () Bool)

(assert (=> b!1309918 (=> (not res!869661) (not e!747363))))

(assert (=> b!1309918 (= res!869661 (not (= (select (arr!42220 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1309919 () Bool)

(declare-fun e!747362 () Bool)

(assert (=> b!1309919 (= e!747362 tp_is_empty!35267)))

(declare-fun mapNonEmpty!54529 () Bool)

(declare-fun tp!103933 () Bool)

(assert (=> mapNonEmpty!54529 (= mapRes!54529 (and tp!103933 e!747362))))

(declare-fun mapValue!54529 () ValueCell!16735)

(declare-fun mapRest!54529 () (Array (_ BitVec 32) ValueCell!16735))

(declare-fun mapKey!54529 () (_ BitVec 32))

(assert (=> mapNonEmpty!54529 (= (arr!42221 _values!1354) (store mapRest!54529 mapKey!54529 mapValue!54529))))

(declare-fun b!1309920 () Bool)

(declare-fun res!869664 () Bool)

(assert (=> b!1309920 (=> (not res!869664) (not e!747363))))

(assert (=> b!1309920 (= res!869664 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42771 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309921 () Bool)

(assert (=> b!1309921 (= e!747365 (and e!747364 mapRes!54529))))

(declare-fun condMapEmpty!54529 () Bool)

(declare-fun mapDefault!54529 () ValueCell!16735)

