; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133558 () Bool)

(assert start!133558)

(declare-fun b_free!31943 () Bool)

(declare-fun b_next!31943 () Bool)

(assert (=> start!133558 (= b_free!31943 (not b_next!31943))))

(declare-fun tp!112953 () Bool)

(declare-fun b_and!51409 () Bool)

(assert (=> start!133558 (= tp!112953 b_and!51409)))

(declare-fun b!1560824 () Bool)

(declare-fun res!1067332 () Bool)

(declare-fun e!869849 () Bool)

(assert (=> b!1560824 (=> (not res!1067332) (not e!869849))))

(declare-datatypes ((array!103889 0))(
  ( (array!103890 (arr!50132 (Array (_ BitVec 32) (_ BitVec 64))) (size!50683 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103889)

(declare-datatypes ((List!36563 0))(
  ( (Nil!36560) (Cons!36559 (h!38006 (_ BitVec 64)) (t!51303 List!36563)) )
))
(declare-fun arrayNoDuplicates!0 (array!103889 (_ BitVec 32) List!36563) Bool)

(assert (=> b!1560824 (= res!1067332 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36560))))

(declare-fun b!1560825 () Bool)

(declare-fun res!1067336 () Bool)

(assert (=> b!1560825 (=> (not res!1067336) (not e!869849))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59685 0))(
  ( (V!59686 (val!19388 Int)) )
))
(declare-datatypes ((ValueCell!18274 0))(
  ( (ValueCellFull!18274 (v!22137 V!59685)) (EmptyCell!18274) )
))
(declare-datatypes ((array!103891 0))(
  ( (array!103892 (arr!50133 (Array (_ BitVec 32) ValueCell!18274)) (size!50684 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103891)

(assert (=> b!1560825 (= res!1067336 (and (= (size!50684 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50683 _keys!637) (size!50684 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067331 () Bool)

(assert (=> start!133558 (=> (not res!1067331) (not e!869849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133558 (= res!1067331 (validMask!0 mask!947))))

(assert (=> start!133558 e!869849))

(assert (=> start!133558 tp!112953))

(declare-fun tp_is_empty!38609 () Bool)

(assert (=> start!133558 tp_is_empty!38609))

(assert (=> start!133558 true))

(declare-fun array_inv!38895 (array!103889) Bool)

(assert (=> start!133558 (array_inv!38895 _keys!637)))

(declare-fun e!869848 () Bool)

(declare-fun array_inv!38896 (array!103891) Bool)

(assert (=> start!133558 (and (array_inv!38896 _values!487) e!869848)))

(declare-fun b!1560826 () Bool)

(declare-fun e!869850 () Bool)

(assert (=> b!1560826 (= e!869850 tp_is_empty!38609)))

(declare-fun b!1560827 () Bool)

(declare-fun res!1067333 () Bool)

(assert (=> b!1560827 (=> (not res!1067333) (not e!869849))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560827 (= res!1067333 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50683 _keys!637)) (bvslt from!782 (size!50683 _keys!637))))))

(declare-fun b!1560828 () Bool)

(declare-fun res!1067335 () Bool)

(assert (=> b!1560828 (=> (not res!1067335) (not e!869849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560828 (= res!1067335 (validKeyInArray!0 (select (arr!50132 _keys!637) from!782)))))

(declare-fun b!1560829 () Bool)

(declare-fun e!869852 () Bool)

(assert (=> b!1560829 (= e!869852 tp_is_empty!38609)))

(declare-fun mapIsEmpty!59289 () Bool)

(declare-fun mapRes!59289 () Bool)

(assert (=> mapIsEmpty!59289 mapRes!59289))

(declare-fun b!1560830 () Bool)

(assert (=> b!1560830 (= e!869848 (and e!869852 mapRes!59289))))

(declare-fun condMapEmpty!59289 () Bool)

(declare-fun mapDefault!59289 () ValueCell!18274)

