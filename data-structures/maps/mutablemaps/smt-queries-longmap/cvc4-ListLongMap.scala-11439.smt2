; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133468 () Bool)

(assert start!133468)

(declare-fun mapIsEmpty!59154 () Bool)

(declare-fun mapRes!59154 () Bool)

(assert (=> mapIsEmpty!59154 mapRes!59154))

(declare-fun b!1559825 () Bool)

(declare-fun res!1066738 () Bool)

(declare-fun e!869176 () Bool)

(assert (=> b!1559825 (=> (not res!1066738) (not e!869176))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103717 0))(
  ( (array!103718 (arr!50046 (Array (_ BitVec 32) (_ BitVec 64))) (size!50597 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103717)

(declare-datatypes ((V!59565 0))(
  ( (V!59566 (val!19343 Int)) )
))
(declare-datatypes ((ValueCell!18229 0))(
  ( (ValueCellFull!18229 (v!22092 V!59565)) (EmptyCell!18229) )
))
(declare-datatypes ((array!103719 0))(
  ( (array!103720 (arr!50047 (Array (_ BitVec 32) ValueCell!18229)) (size!50598 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103719)

(assert (=> b!1559825 (= res!1066738 (and (= (size!50598 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50597 _keys!637) (size!50598 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559826 () Bool)

(assert (=> b!1559826 (= e!869176 false)))

(declare-fun lt!670857 () Bool)

(declare-datatypes ((tuple2!25160 0))(
  ( (tuple2!25161 (_1!12590 (_ BitVec 64)) (_2!12590 V!59565)) )
))
(declare-datatypes ((List!36517 0))(
  ( (Nil!36514) (Cons!36513 (h!37960 tuple2!25160) (t!51257 List!36517)) )
))
(declare-datatypes ((ListLongMap!22607 0))(
  ( (ListLongMap!22608 (toList!11319 List!36517)) )
))
(declare-fun contains!10239 (ListLongMap!22607 (_ BitVec 64)) Bool)

(assert (=> b!1559826 (= lt!670857 (contains!10239 (ListLongMap!22608 Nil!36514) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559827 () Bool)

(declare-fun res!1066742 () Bool)

(assert (=> b!1559827 (=> (not res!1066742) (not e!869176))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559827 (= res!1066742 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50597 _keys!637)) (bvsge from!782 (size!50597 _keys!637))))))

(declare-fun mapNonEmpty!59154 () Bool)

(declare-fun tp!112810 () Bool)

(declare-fun e!869175 () Bool)

(assert (=> mapNonEmpty!59154 (= mapRes!59154 (and tp!112810 e!869175))))

(declare-fun mapRest!59154 () (Array (_ BitVec 32) ValueCell!18229))

(declare-fun mapValue!59154 () ValueCell!18229)

(declare-fun mapKey!59154 () (_ BitVec 32))

(assert (=> mapNonEmpty!59154 (= (arr!50047 _values!487) (store mapRest!59154 mapKey!59154 mapValue!59154))))

(declare-fun b!1559828 () Bool)

(declare-fun res!1066741 () Bool)

(assert (=> b!1559828 (=> (not res!1066741) (not e!869176))))

(assert (=> b!1559828 (= res!1066741 (not (contains!10239 (ListLongMap!22608 Nil!36514) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559829 () Bool)

(declare-fun e!869173 () Bool)

(declare-fun tp_is_empty!38519 () Bool)

(assert (=> b!1559829 (= e!869173 tp_is_empty!38519)))

(declare-fun b!1559830 () Bool)

(declare-fun res!1066740 () Bool)

(assert (=> b!1559830 (=> (not res!1066740) (not e!869176))))

(declare-datatypes ((List!36518 0))(
  ( (Nil!36515) (Cons!36514 (h!37961 (_ BitVec 64)) (t!51258 List!36518)) )
))
(declare-fun arrayNoDuplicates!0 (array!103717 (_ BitVec 32) List!36518) Bool)

(assert (=> b!1559830 (= res!1066740 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36515))))

(declare-fun b!1559831 () Bool)

(assert (=> b!1559831 (= e!869175 tp_is_empty!38519)))

(declare-fun res!1066737 () Bool)

(assert (=> start!133468 (=> (not res!1066737) (not e!869176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133468 (= res!1066737 (validMask!0 mask!947))))

(assert (=> start!133468 e!869176))

(assert (=> start!133468 true))

(declare-fun array_inv!38825 (array!103717) Bool)

(assert (=> start!133468 (array_inv!38825 _keys!637)))

(declare-fun e!869174 () Bool)

(declare-fun array_inv!38826 (array!103719) Bool)

(assert (=> start!133468 (and (array_inv!38826 _values!487) e!869174)))

(declare-fun b!1559832 () Bool)

(declare-fun res!1066739 () Bool)

(assert (=> b!1559832 (=> (not res!1066739) (not e!869176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103717 (_ BitVec 32)) Bool)

(assert (=> b!1559832 (= res!1066739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559833 () Bool)

(assert (=> b!1559833 (= e!869174 (and e!869173 mapRes!59154))))

(declare-fun condMapEmpty!59154 () Bool)

(declare-fun mapDefault!59154 () ValueCell!18229)

