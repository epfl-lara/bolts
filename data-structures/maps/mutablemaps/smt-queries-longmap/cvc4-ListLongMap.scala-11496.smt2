; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133820 () Bool)

(assert start!133820)

(declare-fun b!1564249 () Bool)

(declare-fun res!1069491 () Bool)

(declare-fun e!871867 () Bool)

(assert (=> b!1564249 (=> (not res!1069491) (not e!871867))))

(declare-datatypes ((V!60021 0))(
  ( (V!60022 (val!19514 Int)) )
))
(declare-datatypes ((tuple2!25338 0))(
  ( (tuple2!25339 (_1!12679 (_ BitVec 64)) (_2!12679 V!60021)) )
))
(declare-datatypes ((List!36725 0))(
  ( (Nil!36722) (Cons!36721 (h!38168 tuple2!25338) (t!51579 List!36725)) )
))
(declare-datatypes ((ListLongMap!22785 0))(
  ( (ListLongMap!22786 (toList!11408 List!36725)) )
))
(declare-fun contains!10329 (ListLongMap!22785 (_ BitVec 64)) Bool)

(assert (=> b!1564249 (= res!1069491 (not (contains!10329 (ListLongMap!22786 Nil!36722) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!59670 () Bool)

(declare-fun mapRes!59670 () Bool)

(declare-fun tp!113596 () Bool)

(declare-fun e!871865 () Bool)

(assert (=> mapNonEmpty!59670 (= mapRes!59670 (and tp!113596 e!871865))))

(declare-fun mapKey!59670 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18400 0))(
  ( (ValueCellFull!18400 (v!22263 V!60021)) (EmptyCell!18400) )
))
(declare-fun mapRest!59670 () (Array (_ BitVec 32) ValueCell!18400))

(declare-fun mapValue!59670 () ValueCell!18400)

(declare-datatypes ((array!104379 0))(
  ( (array!104380 (arr!50376 (Array (_ BitVec 32) ValueCell!18400)) (size!50927 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104379)

(assert (=> mapNonEmpty!59670 (= (arr!50376 _values!487) (store mapRest!59670 mapKey!59670 mapValue!59670))))

(declare-fun b!1564250 () Bool)

(declare-fun res!1069492 () Bool)

(assert (=> b!1564250 (=> (not res!1069492) (not e!871867))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104381 0))(
  ( (array!104382 (arr!50377 (Array (_ BitVec 32) (_ BitVec 64))) (size!50928 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104381)

(assert (=> b!1564250 (= res!1069492 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50928 _keys!637)) (bvsge from!782 (size!50928 _keys!637))))))

(declare-fun res!1069488 () Bool)

(assert (=> start!133820 (=> (not res!1069488) (not e!871867))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133820 (= res!1069488 (validMask!0 mask!947))))

(assert (=> start!133820 e!871867))

(assert (=> start!133820 true))

(declare-fun array_inv!39075 (array!104381) Bool)

(assert (=> start!133820 (array_inv!39075 _keys!637)))

(declare-fun e!871868 () Bool)

(declare-fun array_inv!39076 (array!104379) Bool)

(assert (=> start!133820 (and (array_inv!39076 _values!487) e!871868)))

(declare-fun b!1564251 () Bool)

(declare-fun e!871866 () Bool)

(assert (=> b!1564251 (= e!871868 (and e!871866 mapRes!59670))))

(declare-fun condMapEmpty!59670 () Bool)

(declare-fun mapDefault!59670 () ValueCell!18400)

