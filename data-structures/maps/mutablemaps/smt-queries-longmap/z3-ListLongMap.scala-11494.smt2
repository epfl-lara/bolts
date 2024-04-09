; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133806 () Bool)

(assert start!133806)

(declare-fun b!1564060 () Bool)

(declare-fun res!1069366 () Bool)

(declare-fun e!871759 () Bool)

(assert (=> b!1564060 (=> (not res!1069366) (not e!871759))))

(declare-datatypes ((V!60003 0))(
  ( (V!60004 (val!19507 Int)) )
))
(declare-datatypes ((tuple2!25326 0))(
  ( (tuple2!25327 (_1!12673 (_ BitVec 64)) (_2!12673 V!60003)) )
))
(declare-datatypes ((List!36715 0))(
  ( (Nil!36712) (Cons!36711 (h!38158 tuple2!25326) (t!51569 List!36715)) )
))
(declare-datatypes ((ListLongMap!22773 0))(
  ( (ListLongMap!22774 (toList!11402 List!36715)) )
))
(declare-fun contains!10323 (ListLongMap!22773 (_ BitVec 64)) Bool)

(assert (=> b!1564060 (= res!1069366 (not (contains!10323 (ListLongMap!22774 Nil!36712) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!59649 () Bool)

(declare-fun mapRes!59649 () Bool)

(assert (=> mapIsEmpty!59649 mapRes!59649))

(declare-fun b!1564062 () Bool)

(declare-fun e!871762 () Bool)

(declare-fun tp_is_empty!38847 () Bool)

(assert (=> b!1564062 (= e!871762 tp_is_empty!38847)))

(declare-fun b!1564063 () Bool)

(declare-fun res!1069363 () Bool)

(assert (=> b!1564063 (=> (not res!1069363) (not e!871759))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104355 0))(
  ( (array!104356 (arr!50364 (Array (_ BitVec 32) (_ BitVec 64))) (size!50915 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104355)

(declare-datatypes ((ValueCell!18393 0))(
  ( (ValueCellFull!18393 (v!22256 V!60003)) (EmptyCell!18393) )
))
(declare-datatypes ((array!104357 0))(
  ( (array!104358 (arr!50365 (Array (_ BitVec 32) ValueCell!18393)) (size!50916 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104357)

(assert (=> b!1564063 (= res!1069363 (and (= (size!50916 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50915 _keys!637) (size!50916 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59649 () Bool)

(declare-fun tp!113575 () Bool)

(assert (=> mapNonEmpty!59649 (= mapRes!59649 (and tp!113575 e!871762))))

(declare-fun mapKey!59649 () (_ BitVec 32))

(declare-fun mapRest!59649 () (Array (_ BitVec 32) ValueCell!18393))

(declare-fun mapValue!59649 () ValueCell!18393)

(assert (=> mapNonEmpty!59649 (= (arr!50365 _values!487) (store mapRest!59649 mapKey!59649 mapValue!59649))))

(declare-fun b!1564064 () Bool)

(assert (=> b!1564064 (= e!871759 false)))

(declare-fun lt!671934 () Bool)

(assert (=> b!1564064 (= lt!671934 (contains!10323 (ListLongMap!22774 Nil!36712) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564065 () Bool)

(declare-fun res!1069364 () Bool)

(assert (=> b!1564065 (=> (not res!1069364) (not e!871759))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564065 (= res!1069364 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50915 _keys!637)) (bvsge from!782 (size!50915 _keys!637))))))

(declare-fun b!1564066 () Bool)

(declare-fun res!1069367 () Bool)

(assert (=> b!1564066 (=> (not res!1069367) (not e!871759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104355 (_ BitVec 32)) Bool)

(assert (=> b!1564066 (= res!1069367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1069365 () Bool)

(assert (=> start!133806 (=> (not res!1069365) (not e!871759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133806 (= res!1069365 (validMask!0 mask!947))))

(assert (=> start!133806 e!871759))

(assert (=> start!133806 true))

(declare-fun array_inv!39067 (array!104355) Bool)

(assert (=> start!133806 (array_inv!39067 _keys!637)))

(declare-fun e!871760 () Bool)

(declare-fun array_inv!39068 (array!104357) Bool)

(assert (=> start!133806 (and (array_inv!39068 _values!487) e!871760)))

(declare-fun b!1564061 () Bool)

(declare-fun e!871763 () Bool)

(assert (=> b!1564061 (= e!871763 tp_is_empty!38847)))

(declare-fun b!1564067 () Bool)

(declare-fun res!1069362 () Bool)

(assert (=> b!1564067 (=> (not res!1069362) (not e!871759))))

(declare-datatypes ((List!36716 0))(
  ( (Nil!36713) (Cons!36712 (h!38159 (_ BitVec 64)) (t!51570 List!36716)) )
))
(declare-fun arrayNoDuplicates!0 (array!104355 (_ BitVec 32) List!36716) Bool)

(assert (=> b!1564067 (= res!1069362 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36713))))

(declare-fun b!1564068 () Bool)

(assert (=> b!1564068 (= e!871760 (and e!871763 mapRes!59649))))

(declare-fun condMapEmpty!59649 () Bool)

(declare-fun mapDefault!59649 () ValueCell!18393)

(assert (=> b!1564068 (= condMapEmpty!59649 (= (arr!50365 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18393)) mapDefault!59649)))))

(assert (= (and start!133806 res!1069365) b!1564063))

(assert (= (and b!1564063 res!1069363) b!1564066))

(assert (= (and b!1564066 res!1069367) b!1564067))

(assert (= (and b!1564067 res!1069362) b!1564065))

(assert (= (and b!1564065 res!1069364) b!1564060))

(assert (= (and b!1564060 res!1069366) b!1564064))

(assert (= (and b!1564068 condMapEmpty!59649) mapIsEmpty!59649))

(assert (= (and b!1564068 (not condMapEmpty!59649)) mapNonEmpty!59649))

(get-info :version)

(assert (= (and mapNonEmpty!59649 ((_ is ValueCellFull!18393) mapValue!59649)) b!1564062))

(assert (= (and b!1564068 ((_ is ValueCellFull!18393) mapDefault!59649)) b!1564061))

(assert (= start!133806 b!1564068))

(declare-fun m!1439405 () Bool)

(assert (=> mapNonEmpty!59649 m!1439405))

(declare-fun m!1439407 () Bool)

(assert (=> b!1564066 m!1439407))

(declare-fun m!1439409 () Bool)

(assert (=> b!1564060 m!1439409))

(declare-fun m!1439411 () Bool)

(assert (=> start!133806 m!1439411))

(declare-fun m!1439413 () Bool)

(assert (=> start!133806 m!1439413))

(declare-fun m!1439415 () Bool)

(assert (=> start!133806 m!1439415))

(declare-fun m!1439417 () Bool)

(assert (=> b!1564064 m!1439417))

(declare-fun m!1439419 () Bool)

(assert (=> b!1564067 m!1439419))

(check-sat (not b!1564066) (not mapNonEmpty!59649) tp_is_empty!38847 (not b!1564067) (not start!133806) (not b!1564060) (not b!1564064))
(check-sat)
