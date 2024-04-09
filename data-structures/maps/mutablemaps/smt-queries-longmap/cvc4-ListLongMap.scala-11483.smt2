; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133732 () Bool)

(assert start!133732)

(declare-fun b_free!32063 () Bool)

(declare-fun b_next!32063 () Bool)

(assert (=> start!133732 (= b_free!32063 (not b_next!32063))))

(declare-fun tp!113394 () Bool)

(declare-fun b_and!51643 () Bool)

(assert (=> start!133732 (= tp!113394 b_and!51643)))

(declare-fun b!1563088 () Bool)

(declare-fun res!1068701 () Bool)

(declare-fun e!871172 () Bool)

(assert (=> b!1563088 (=> (not res!1068701) (not e!871172))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104227 0))(
  ( (array!104228 (arr!50301 (Array (_ BitVec 32) (_ BitVec 64))) (size!50852 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104227)

(assert (=> b!1563088 (= res!1068701 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50852 _keys!637)) (bvslt from!782 (size!50852 _keys!637))))))

(declare-fun b!1563089 () Bool)

(declare-fun res!1068698 () Bool)

(assert (=> b!1563089 (=> (not res!1068698) (not e!871172))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59917 0))(
  ( (V!59918 (val!19475 Int)) )
))
(declare-datatypes ((ValueCell!18361 0))(
  ( (ValueCellFull!18361 (v!22224 V!59917)) (EmptyCell!18361) )
))
(declare-datatypes ((array!104229 0))(
  ( (array!104230 (arr!50302 (Array (_ BitVec 32) ValueCell!18361)) (size!50853 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104229)

(assert (=> b!1563089 (= res!1068698 (and (= (size!50853 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50852 _keys!637) (size!50853 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563090 () Bool)

(declare-fun e!871175 () Bool)

(declare-fun tp_is_empty!38783 () Bool)

(assert (=> b!1563090 (= e!871175 tp_is_empty!38783)))

(declare-fun res!1068702 () Bool)

(assert (=> start!133732 (=> (not res!1068702) (not e!871172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133732 (= res!1068702 (validMask!0 mask!947))))

(assert (=> start!133732 e!871172))

(assert (=> start!133732 tp!113394))

(assert (=> start!133732 tp_is_empty!38783))

(assert (=> start!133732 true))

(declare-fun array_inv!39019 (array!104227) Bool)

(assert (=> start!133732 (array_inv!39019 _keys!637)))

(declare-fun e!871170 () Bool)

(declare-fun array_inv!39020 (array!104229) Bool)

(assert (=> start!133732 (and (array_inv!39020 _values!487) e!871170)))

(declare-fun b!1563091 () Bool)

(declare-fun e!871171 () Bool)

(assert (=> b!1563091 (= e!871172 e!871171)))

(declare-fun res!1068699 () Bool)

(assert (=> b!1563091 (=> (not res!1068699) (not e!871171))))

(declare-datatypes ((tuple2!25280 0))(
  ( (tuple2!25281 (_1!12650 (_ BitVec 64)) (_2!12650 V!59917)) )
))
(declare-datatypes ((List!36669 0))(
  ( (Nil!36666) (Cons!36665 (h!38112 tuple2!25280) (t!51523 List!36669)) )
))
(declare-datatypes ((ListLongMap!22727 0))(
  ( (ListLongMap!22728 (toList!11379 List!36669)) )
))
(declare-fun lt!671766 () ListLongMap!22727)

(declare-fun contains!10299 (ListLongMap!22727 (_ BitVec 64)) Bool)

(assert (=> b!1563091 (= res!1068699 (not (contains!10299 lt!671766 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59917)

(declare-fun minValue!453 () V!59917)

(declare-fun getCurrentListMapNoExtraKeys!6738 (array!104227 array!104229 (_ BitVec 32) (_ BitVec 32) V!59917 V!59917 (_ BitVec 32) Int) ListLongMap!22727)

(assert (=> b!1563091 (= lt!671766 (getCurrentListMapNoExtraKeys!6738 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563092 () Bool)

(declare-fun res!1068700 () Bool)

(assert (=> b!1563092 (=> (not res!1068700) (not e!871172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563092 (= res!1068700 (not (validKeyInArray!0 (select (arr!50301 _keys!637) from!782))))))

(declare-fun mapNonEmpty!59550 () Bool)

(declare-fun mapRes!59550 () Bool)

(declare-fun tp!113395 () Bool)

(declare-fun e!871173 () Bool)

(assert (=> mapNonEmpty!59550 (= mapRes!59550 (and tp!113395 e!871173))))

(declare-fun mapKey!59550 () (_ BitVec 32))

(declare-fun mapRest!59550 () (Array (_ BitVec 32) ValueCell!18361))

(declare-fun mapValue!59550 () ValueCell!18361)

(assert (=> mapNonEmpty!59550 (= (arr!50302 _values!487) (store mapRest!59550 mapKey!59550 mapValue!59550))))

(declare-fun b!1563093 () Bool)

(assert (=> b!1563093 (= e!871173 tp_is_empty!38783)))

(declare-fun b!1563094 () Bool)

(declare-fun res!1068703 () Bool)

(assert (=> b!1563094 (=> (not res!1068703) (not e!871172))))

(declare-datatypes ((List!36670 0))(
  ( (Nil!36667) (Cons!36666 (h!38113 (_ BitVec 64)) (t!51524 List!36670)) )
))
(declare-fun arrayNoDuplicates!0 (array!104227 (_ BitVec 32) List!36670) Bool)

(assert (=> b!1563094 (= res!1068703 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36667))))

(declare-fun b!1563095 () Bool)

(assert (=> b!1563095 (= e!871170 (and e!871175 mapRes!59550))))

(declare-fun condMapEmpty!59550 () Bool)

(declare-fun mapDefault!59550 () ValueCell!18361)

