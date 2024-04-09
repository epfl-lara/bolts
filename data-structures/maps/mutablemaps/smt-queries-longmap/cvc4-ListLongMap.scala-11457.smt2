; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133576 () Bool)

(assert start!133576)

(declare-fun b_free!31961 () Bool)

(declare-fun b_next!31961 () Bool)

(assert (=> start!133576 (= b_free!31961 (not b_next!31961))))

(declare-fun tp!113008 () Bool)

(declare-fun b_and!51443 () Bool)

(assert (=> start!133576 (= tp!113008 b_and!51443)))

(declare-fun b!1561083 () Bool)

(declare-fun res!1067498 () Bool)

(declare-fun e!869986 () Bool)

(assert (=> b!1561083 (=> (not res!1067498) (not e!869986))))

(declare-datatypes ((array!103925 0))(
  ( (array!103926 (arr!50150 (Array (_ BitVec 32) (_ BitVec 64))) (size!50701 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103925)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561083 (= res!1067498 (validKeyInArray!0 (select (arr!50150 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59316 () Bool)

(declare-fun mapRes!59316 () Bool)

(declare-fun tp!113007 () Bool)

(declare-fun e!869983 () Bool)

(assert (=> mapNonEmpty!59316 (= mapRes!59316 (and tp!113007 e!869983))))

(declare-datatypes ((V!59709 0))(
  ( (V!59710 (val!19397 Int)) )
))
(declare-datatypes ((ValueCell!18283 0))(
  ( (ValueCellFull!18283 (v!22146 V!59709)) (EmptyCell!18283) )
))
(declare-fun mapValue!59316 () ValueCell!18283)

(declare-fun mapKey!59316 () (_ BitVec 32))

(declare-datatypes ((array!103927 0))(
  ( (array!103928 (arr!50151 (Array (_ BitVec 32) ValueCell!18283)) (size!50702 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103927)

(declare-fun mapRest!59316 () (Array (_ BitVec 32) ValueCell!18283))

(assert (=> mapNonEmpty!59316 (= (arr!50151 _values!487) (store mapRest!59316 mapKey!59316 mapValue!59316))))

(declare-fun b!1561084 () Bool)

(declare-fun res!1067495 () Bool)

(assert (=> b!1561084 (=> (not res!1067495) (not e!869986))))

(assert (=> b!1561084 (= res!1067495 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50701 _keys!637)) (bvslt from!782 (size!50701 _keys!637))))))

(declare-fun b!1561085 () Bool)

(declare-fun res!1067494 () Bool)

(assert (=> b!1561085 (=> (not res!1067494) (not e!869986))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561085 (= res!1067494 (and (= (size!50702 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50701 _keys!637) (size!50702 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561086 () Bool)

(declare-fun e!869984 () Bool)

(declare-fun tp_is_empty!38627 () Bool)

(assert (=> b!1561086 (= e!869984 tp_is_empty!38627)))

(declare-fun mapIsEmpty!59316 () Bool)

(assert (=> mapIsEmpty!59316 mapRes!59316))

(declare-fun b!1561087 () Bool)

(assert (=> b!1561087 (= e!869983 tp_is_empty!38627)))

(declare-fun b!1561088 () Bool)

(declare-fun res!1067496 () Bool)

(assert (=> b!1561088 (=> (not res!1067496) (not e!869986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103925 (_ BitVec 32)) Bool)

(assert (=> b!1561088 (= res!1067496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561089 () Bool)

(declare-fun e!869985 () Bool)

(assert (=> b!1561089 (= e!869985 (and e!869984 mapRes!59316))))

(declare-fun condMapEmpty!59316 () Bool)

(declare-fun mapDefault!59316 () ValueCell!18283)

