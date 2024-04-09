; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133462 () Bool)

(assert start!133462)

(declare-fun b!1559744 () Bool)

(declare-fun res!1066683 () Bool)

(declare-fun e!869131 () Bool)

(assert (=> b!1559744 (=> (not res!1066683) (not e!869131))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103705 0))(
  ( (array!103706 (arr!50040 (Array (_ BitVec 32) (_ BitVec 64))) (size!50591 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103705)

(declare-datatypes ((V!59557 0))(
  ( (V!59558 (val!19340 Int)) )
))
(declare-datatypes ((ValueCell!18226 0))(
  ( (ValueCellFull!18226 (v!22089 V!59557)) (EmptyCell!18226) )
))
(declare-datatypes ((array!103707 0))(
  ( (array!103708 (arr!50041 (Array (_ BitVec 32) ValueCell!18226)) (size!50592 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103707)

(assert (=> b!1559744 (= res!1066683 (and (= (size!50592 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50591 _keys!637) (size!50592 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559745 () Bool)

(declare-fun e!869130 () Bool)

(declare-fun tp_is_empty!38513 () Bool)

(assert (=> b!1559745 (= e!869130 tp_is_empty!38513)))

(declare-fun b!1559746 () Bool)

(declare-fun res!1066686 () Bool)

(assert (=> b!1559746 (=> (not res!1066686) (not e!869131))))

(declare-datatypes ((tuple2!25154 0))(
  ( (tuple2!25155 (_1!12587 (_ BitVec 64)) (_2!12587 V!59557)) )
))
(declare-datatypes ((List!36511 0))(
  ( (Nil!36508) (Cons!36507 (h!37954 tuple2!25154) (t!51251 List!36511)) )
))
(declare-datatypes ((ListLongMap!22601 0))(
  ( (ListLongMap!22602 (toList!11316 List!36511)) )
))
(declare-fun contains!10236 (ListLongMap!22601 (_ BitVec 64)) Bool)

(assert (=> b!1559746 (= res!1066686 (not (contains!10236 (ListLongMap!22602 Nil!36508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559747 () Bool)

(declare-fun res!1066684 () Bool)

(assert (=> b!1559747 (=> (not res!1066684) (not e!869131))))

(declare-datatypes ((List!36512 0))(
  ( (Nil!36509) (Cons!36508 (h!37955 (_ BitVec 64)) (t!51252 List!36512)) )
))
(declare-fun arrayNoDuplicates!0 (array!103705 (_ BitVec 32) List!36512) Bool)

(assert (=> b!1559747 (= res!1066684 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36509))))

(declare-fun mapIsEmpty!59145 () Bool)

(declare-fun mapRes!59145 () Bool)

(assert (=> mapIsEmpty!59145 mapRes!59145))

(declare-fun b!1559749 () Bool)

(declare-fun res!1066685 () Bool)

(assert (=> b!1559749 (=> (not res!1066685) (not e!869131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103705 (_ BitVec 32)) Bool)

(assert (=> b!1559749 (= res!1066685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59145 () Bool)

(declare-fun tp!112801 () Bool)

(assert (=> mapNonEmpty!59145 (= mapRes!59145 (and tp!112801 e!869130))))

(declare-fun mapRest!59145 () (Array (_ BitVec 32) ValueCell!18226))

(declare-fun mapValue!59145 () ValueCell!18226)

(declare-fun mapKey!59145 () (_ BitVec 32))

(assert (=> mapNonEmpty!59145 (= (arr!50041 _values!487) (store mapRest!59145 mapKey!59145 mapValue!59145))))

(declare-fun b!1559750 () Bool)

(assert (=> b!1559750 (= e!869131 false)))

(declare-fun lt!670848 () Bool)

(assert (=> b!1559750 (= lt!670848 (contains!10236 (ListLongMap!22602 Nil!36508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559751 () Bool)

(declare-fun e!869128 () Bool)

(assert (=> b!1559751 (= e!869128 tp_is_empty!38513)))

(declare-fun b!1559752 () Bool)

(declare-fun res!1066687 () Bool)

(assert (=> b!1559752 (=> (not res!1066687) (not e!869131))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559752 (= res!1066687 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50591 _keys!637)) (bvsge from!782 (size!50591 _keys!637))))))

(declare-fun res!1066688 () Bool)

(assert (=> start!133462 (=> (not res!1066688) (not e!869131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133462 (= res!1066688 (validMask!0 mask!947))))

(assert (=> start!133462 e!869131))

(assert (=> start!133462 true))

(declare-fun array_inv!38819 (array!103705) Bool)

(assert (=> start!133462 (array_inv!38819 _keys!637)))

(declare-fun e!869129 () Bool)

(declare-fun array_inv!38820 (array!103707) Bool)

(assert (=> start!133462 (and (array_inv!38820 _values!487) e!869129)))

(declare-fun b!1559748 () Bool)

(assert (=> b!1559748 (= e!869129 (and e!869128 mapRes!59145))))

(declare-fun condMapEmpty!59145 () Bool)

(declare-fun mapDefault!59145 () ValueCell!18226)

