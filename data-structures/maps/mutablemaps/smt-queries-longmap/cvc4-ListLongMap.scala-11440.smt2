; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133474 () Bool)

(assert start!133474)

(declare-fun b!1559906 () Bool)

(declare-fun e!869222 () Bool)

(declare-fun tp_is_empty!38525 () Bool)

(assert (=> b!1559906 (= e!869222 tp_is_empty!38525)))

(declare-fun b!1559907 () Bool)

(declare-fun e!869221 () Bool)

(assert (=> b!1559907 (= e!869221 tp_is_empty!38525)))

(declare-fun mapNonEmpty!59163 () Bool)

(declare-fun mapRes!59163 () Bool)

(declare-fun tp!112819 () Bool)

(assert (=> mapNonEmpty!59163 (= mapRes!59163 (and tp!112819 e!869221))))

(declare-datatypes ((V!59573 0))(
  ( (V!59574 (val!19346 Int)) )
))
(declare-datatypes ((ValueCell!18232 0))(
  ( (ValueCellFull!18232 (v!22095 V!59573)) (EmptyCell!18232) )
))
(declare-fun mapRest!59163 () (Array (_ BitVec 32) ValueCell!18232))

(declare-fun mapValue!59163 () ValueCell!18232)

(declare-fun mapKey!59163 () (_ BitVec 32))

(declare-datatypes ((array!103729 0))(
  ( (array!103730 (arr!50052 (Array (_ BitVec 32) ValueCell!18232)) (size!50603 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103729)

(assert (=> mapNonEmpty!59163 (= (arr!50052 _values!487) (store mapRest!59163 mapKey!59163 mapValue!59163))))

(declare-fun res!1066792 () Bool)

(declare-fun e!869219 () Bool)

(assert (=> start!133474 (=> (not res!1066792) (not e!869219))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133474 (= res!1066792 (validMask!0 mask!947))))

(assert (=> start!133474 e!869219))

(assert (=> start!133474 true))

(declare-datatypes ((array!103731 0))(
  ( (array!103732 (arr!50053 (Array (_ BitVec 32) (_ BitVec 64))) (size!50604 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103731)

(declare-fun array_inv!38829 (array!103731) Bool)

(assert (=> start!133474 (array_inv!38829 _keys!637)))

(declare-fun e!869218 () Bool)

(declare-fun array_inv!38830 (array!103729) Bool)

(assert (=> start!133474 (and (array_inv!38830 _values!487) e!869218)))

(declare-fun b!1559908 () Bool)

(declare-fun res!1066793 () Bool)

(assert (=> b!1559908 (=> (not res!1066793) (not e!869219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103731 (_ BitVec 32)) Bool)

(assert (=> b!1559908 (= res!1066793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559909 () Bool)

(declare-fun res!1066791 () Bool)

(assert (=> b!1559909 (=> (not res!1066791) (not e!869219))))

(declare-datatypes ((tuple2!25164 0))(
  ( (tuple2!25165 (_1!12592 (_ BitVec 64)) (_2!12592 V!59573)) )
))
(declare-datatypes ((List!36521 0))(
  ( (Nil!36518) (Cons!36517 (h!37964 tuple2!25164) (t!51261 List!36521)) )
))
(declare-datatypes ((ListLongMap!22611 0))(
  ( (ListLongMap!22612 (toList!11321 List!36521)) )
))
(declare-fun contains!10241 (ListLongMap!22611 (_ BitVec 64)) Bool)

(assert (=> b!1559909 (= res!1066791 (not (contains!10241 (ListLongMap!22612 Nil!36518) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559910 () Bool)

(declare-fun res!1066794 () Bool)

(assert (=> b!1559910 (=> (not res!1066794) (not e!869219))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559910 (= res!1066794 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50604 _keys!637)) (bvsge from!782 (size!50604 _keys!637))))))

(declare-fun b!1559911 () Bool)

(assert (=> b!1559911 (= e!869219 false)))

(declare-fun lt!670866 () Bool)

(assert (=> b!1559911 (= lt!670866 (contains!10241 (ListLongMap!22612 Nil!36518) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559912 () Bool)

(declare-fun res!1066795 () Bool)

(assert (=> b!1559912 (=> (not res!1066795) (not e!869219))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559912 (= res!1066795 (and (= (size!50603 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50604 _keys!637) (size!50603 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59163 () Bool)

(assert (=> mapIsEmpty!59163 mapRes!59163))

(declare-fun b!1559913 () Bool)

(declare-fun res!1066796 () Bool)

(assert (=> b!1559913 (=> (not res!1066796) (not e!869219))))

(declare-datatypes ((List!36522 0))(
  ( (Nil!36519) (Cons!36518 (h!37965 (_ BitVec 64)) (t!51262 List!36522)) )
))
(declare-fun arrayNoDuplicates!0 (array!103731 (_ BitVec 32) List!36522) Bool)

(assert (=> b!1559913 (= res!1066796 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36519))))

(declare-fun b!1559914 () Bool)

(assert (=> b!1559914 (= e!869218 (and e!869222 mapRes!59163))))

(declare-fun condMapEmpty!59163 () Bool)

(declare-fun mapDefault!59163 () ValueCell!18232)

