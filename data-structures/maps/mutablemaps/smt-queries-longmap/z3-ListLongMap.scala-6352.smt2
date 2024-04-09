; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81878 () Bool)

(assert start!81878)

(declare-fun b_free!18345 () Bool)

(declare-fun b_next!18345 () Bool)

(assert (=> start!81878 (= b_free!18345 (not b_next!18345))))

(declare-fun tp!63735 () Bool)

(declare-fun b_and!29849 () Bool)

(assert (=> start!81878 (= tp!63735 b_and!29849)))

(declare-fun b!954385 () Bool)

(declare-fun res!639216 () Bool)

(declare-fun e!537724 () Bool)

(assert (=> b!954385 (=> (not res!639216) (not e!537724))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57903 0))(
  ( (array!57904 (arr!27827 (Array (_ BitVec 32) (_ BitVec 64))) (size!28307 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57903)

(assert (=> b!954385 (= res!639216 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28307 _keys!1441))))))

(declare-fun b!954386 () Bool)

(declare-fun res!639214 () Bool)

(assert (=> b!954386 (=> (not res!639214) (not e!537724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954386 (= res!639214 (validKeyInArray!0 (select (arr!27827 _keys!1441) i!735)))))

(declare-fun b!954387 () Bool)

(declare-fun e!537726 () Bool)

(declare-fun e!537723 () Bool)

(declare-fun mapRes!33295 () Bool)

(assert (=> b!954387 (= e!537726 (and e!537723 mapRes!33295))))

(declare-fun condMapEmpty!33295 () Bool)

(declare-datatypes ((V!32835 0))(
  ( (V!32836 (val!10495 Int)) )
))
(declare-datatypes ((ValueCell!9963 0))(
  ( (ValueCellFull!9963 (v!13050 V!32835)) (EmptyCell!9963) )
))
(declare-datatypes ((array!57905 0))(
  ( (array!57906 (arr!27828 (Array (_ BitVec 32) ValueCell!9963)) (size!28308 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57905)

(declare-fun mapDefault!33295 () ValueCell!9963)

(assert (=> b!954387 (= condMapEmpty!33295 (= (arr!27828 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9963)) mapDefault!33295)))))

(declare-fun b!954388 () Bool)

(assert (=> b!954388 (= e!537724 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32835)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun lt!429856 () Bool)

(declare-fun minValue!1139 () V!32835)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13718 0))(
  ( (tuple2!13719 (_1!6869 (_ BitVec 64)) (_2!6869 V!32835)) )
))
(declare-datatypes ((List!19535 0))(
  ( (Nil!19532) (Cons!19531 (h!20693 tuple2!13718) (t!27904 List!19535)) )
))
(declare-datatypes ((ListLongMap!12429 0))(
  ( (ListLongMap!12430 (toList!6230 List!19535)) )
))
(declare-fun contains!5280 (ListLongMap!12429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3415 (array!57903 array!57905 (_ BitVec 32) (_ BitVec 32) V!32835 V!32835 (_ BitVec 32) Int) ListLongMap!12429)

(assert (=> b!954388 (= lt!429856 (contains!5280 (getCurrentListMap!3415 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27827 _keys!1441) i!735)))))

(declare-fun b!954389 () Bool)

(declare-fun res!639215 () Bool)

(assert (=> b!954389 (=> (not res!639215) (not e!537724))))

(declare-datatypes ((List!19536 0))(
  ( (Nil!19533) (Cons!19532 (h!20694 (_ BitVec 64)) (t!27905 List!19536)) )
))
(declare-fun arrayNoDuplicates!0 (array!57903 (_ BitVec 32) List!19536) Bool)

(assert (=> b!954389 (= res!639215 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19533))))

(declare-fun b!954390 () Bool)

(declare-fun res!639212 () Bool)

(assert (=> b!954390 (=> (not res!639212) (not e!537724))))

(assert (=> b!954390 (= res!639212 (and (= (size!28308 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28307 _keys!1441) (size!28308 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33295 () Bool)

(assert (=> mapIsEmpty!33295 mapRes!33295))

(declare-fun b!954391 () Bool)

(declare-fun e!537725 () Bool)

(declare-fun tp_is_empty!20889 () Bool)

(assert (=> b!954391 (= e!537725 tp_is_empty!20889)))

(declare-fun res!639217 () Bool)

(assert (=> start!81878 (=> (not res!639217) (not e!537724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81878 (= res!639217 (validMask!0 mask!1823))))

(assert (=> start!81878 e!537724))

(assert (=> start!81878 true))

(assert (=> start!81878 tp_is_empty!20889))

(declare-fun array_inv!21545 (array!57903) Bool)

(assert (=> start!81878 (array_inv!21545 _keys!1441)))

(declare-fun array_inv!21546 (array!57905) Bool)

(assert (=> start!81878 (and (array_inv!21546 _values!1197) e!537726)))

(assert (=> start!81878 tp!63735))

(declare-fun mapNonEmpty!33295 () Bool)

(declare-fun tp!63736 () Bool)

(assert (=> mapNonEmpty!33295 (= mapRes!33295 (and tp!63736 e!537725))))

(declare-fun mapValue!33295 () ValueCell!9963)

(declare-fun mapKey!33295 () (_ BitVec 32))

(declare-fun mapRest!33295 () (Array (_ BitVec 32) ValueCell!9963))

(assert (=> mapNonEmpty!33295 (= (arr!27828 _values!1197) (store mapRest!33295 mapKey!33295 mapValue!33295))))

(declare-fun b!954392 () Bool)

(declare-fun res!639213 () Bool)

(assert (=> b!954392 (=> (not res!639213) (not e!537724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57903 (_ BitVec 32)) Bool)

(assert (=> b!954392 (= res!639213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954393 () Bool)

(assert (=> b!954393 (= e!537723 tp_is_empty!20889)))

(assert (= (and start!81878 res!639217) b!954390))

(assert (= (and b!954390 res!639212) b!954392))

(assert (= (and b!954392 res!639213) b!954389))

(assert (= (and b!954389 res!639215) b!954385))

(assert (= (and b!954385 res!639216) b!954386))

(assert (= (and b!954386 res!639214) b!954388))

(assert (= (and b!954387 condMapEmpty!33295) mapIsEmpty!33295))

(assert (= (and b!954387 (not condMapEmpty!33295)) mapNonEmpty!33295))

(get-info :version)

(assert (= (and mapNonEmpty!33295 ((_ is ValueCellFull!9963) mapValue!33295)) b!954391))

(assert (= (and b!954387 ((_ is ValueCellFull!9963) mapDefault!33295)) b!954393))

(assert (= start!81878 b!954387))

(declare-fun m!886199 () Bool)

(assert (=> b!954386 m!886199))

(assert (=> b!954386 m!886199))

(declare-fun m!886201 () Bool)

(assert (=> b!954386 m!886201))

(declare-fun m!886203 () Bool)

(assert (=> b!954388 m!886203))

(assert (=> b!954388 m!886199))

(assert (=> b!954388 m!886203))

(assert (=> b!954388 m!886199))

(declare-fun m!886205 () Bool)

(assert (=> b!954388 m!886205))

(declare-fun m!886207 () Bool)

(assert (=> b!954392 m!886207))

(declare-fun m!886209 () Bool)

(assert (=> b!954389 m!886209))

(declare-fun m!886211 () Bool)

(assert (=> mapNonEmpty!33295 m!886211))

(declare-fun m!886213 () Bool)

(assert (=> start!81878 m!886213))

(declare-fun m!886215 () Bool)

(assert (=> start!81878 m!886215))

(declare-fun m!886217 () Bool)

(assert (=> start!81878 m!886217))

(check-sat b_and!29849 (not start!81878) (not b!954386) (not mapNonEmpty!33295) (not b_next!18345) tp_is_empty!20889 (not b!954389) (not b!954388) (not b!954392))
(check-sat b_and!29849 (not b_next!18345))
