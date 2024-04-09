; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133900 () Bool)

(assert start!133900)

(declare-fun b_free!32129 () Bool)

(declare-fun b_next!32129 () Bool)

(assert (=> start!133900 (= b_free!32129 (not b_next!32129))))

(declare-fun tp!113683 () Bool)

(declare-fun b_and!51709 () Bool)

(assert (=> start!133900 (= tp!113683 b_and!51709)))

(declare-fun res!1069907 () Bool)

(declare-fun e!872284 () Bool)

(assert (=> start!133900 (=> (not res!1069907) (not e!872284))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133900 (= res!1069907 (validMask!0 mask!947))))

(assert (=> start!133900 e!872284))

(assert (=> start!133900 tp!113683))

(declare-fun tp_is_empty!38903 () Bool)

(assert (=> start!133900 tp_is_empty!38903))

(assert (=> start!133900 true))

(declare-datatypes ((array!104465 0))(
  ( (array!104466 (arr!50417 (Array (_ BitVec 32) (_ BitVec 64))) (size!50968 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104465)

(declare-fun array_inv!39101 (array!104465) Bool)

(assert (=> start!133900 (array_inv!39101 _keys!637)))

(declare-datatypes ((V!60077 0))(
  ( (V!60078 (val!19535 Int)) )
))
(declare-datatypes ((ValueCell!18421 0))(
  ( (ValueCellFull!18421 (v!22286 V!60077)) (EmptyCell!18421) )
))
(declare-datatypes ((array!104467 0))(
  ( (array!104468 (arr!50418 (Array (_ BitVec 32) ValueCell!18421)) (size!50969 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104467)

(declare-fun e!872287 () Bool)

(declare-fun array_inv!39102 (array!104467) Bool)

(assert (=> start!133900 (and (array_inv!39102 _values!487) e!872287)))

(declare-fun b!1564925 () Bool)

(declare-fun res!1069903 () Bool)

(assert (=> b!1564925 (=> (not res!1069903) (not e!872284))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564925 (= res!1069903 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50968 _keys!637)) (bvslt from!782 (size!50968 _keys!637))))))

(declare-fun b!1564926 () Bool)

(assert (=> b!1564926 (= e!872284 (bvsge from!782 (size!50969 _values!487)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60077)

(declare-datatypes ((tuple2!25366 0))(
  ( (tuple2!25367 (_1!12693 (_ BitVec 64)) (_2!12693 V!60077)) )
))
(declare-datatypes ((List!36753 0))(
  ( (Nil!36750) (Cons!36749 (h!38196 tuple2!25366) (t!51607 List!36753)) )
))
(declare-datatypes ((ListLongMap!22813 0))(
  ( (ListLongMap!22814 (toList!11422 List!36753)) )
))
(declare-fun lt!672056 () ListLongMap!22813)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60077)

(declare-fun getCurrentListMapNoExtraKeys!6762 (array!104465 array!104467 (_ BitVec 32) (_ BitVec 32) V!60077 V!60077 (_ BitVec 32) Int) ListLongMap!22813)

(assert (=> b!1564926 (= lt!672056 (getCurrentListMapNoExtraKeys!6762 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1564927 () Bool)

(declare-fun e!872286 () Bool)

(assert (=> b!1564927 (= e!872286 tp_is_empty!38903)))

(declare-fun b!1564928 () Bool)

(declare-fun res!1069908 () Bool)

(assert (=> b!1564928 (=> (not res!1069908) (not e!872284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564928 (= res!1069908 (validKeyInArray!0 (select (arr!50417 _keys!637) from!782)))))

(declare-fun b!1564929 () Bool)

(declare-fun res!1069906 () Bool)

(assert (=> b!1564929 (=> (not res!1069906) (not e!872284))))

(assert (=> b!1564929 (= res!1069906 (and (= (size!50969 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50968 _keys!637) (size!50969 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564930 () Bool)

(declare-fun e!872288 () Bool)

(assert (=> b!1564930 (= e!872288 tp_is_empty!38903)))

(declare-fun b!1564931 () Bool)

(declare-fun res!1069905 () Bool)

(assert (=> b!1564931 (=> (not res!1069905) (not e!872284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104465 (_ BitVec 32)) Bool)

(assert (=> b!1564931 (= res!1069905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564932 () Bool)

(declare-fun res!1069904 () Bool)

(assert (=> b!1564932 (=> (not res!1069904) (not e!872284))))

(declare-datatypes ((List!36754 0))(
  ( (Nil!36751) (Cons!36750 (h!38197 (_ BitVec 64)) (t!51608 List!36754)) )
))
(declare-fun arrayNoDuplicates!0 (array!104465 (_ BitVec 32) List!36754) Bool)

(assert (=> b!1564932 (= res!1069904 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36751))))

(declare-fun mapIsEmpty!59740 () Bool)

(declare-fun mapRes!59740 () Bool)

(assert (=> mapIsEmpty!59740 mapRes!59740))

(declare-fun b!1564933 () Bool)

(assert (=> b!1564933 (= e!872287 (and e!872286 mapRes!59740))))

(declare-fun condMapEmpty!59740 () Bool)

(declare-fun mapDefault!59740 () ValueCell!18421)

