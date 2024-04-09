; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133756 () Bool)

(assert start!133756)

(declare-fun b_free!32087 () Bool)

(declare-fun b_next!32087 () Bool)

(assert (=> start!133756 (= b_free!32087 (not b_next!32087))))

(declare-fun tp!113466 () Bool)

(declare-fun b_and!51667 () Bool)

(assert (=> start!133756 (= tp!113466 b_and!51667)))

(declare-fun b!1563448 () Bool)

(declare-fun res!1068955 () Bool)

(declare-fun e!871388 () Bool)

(assert (=> b!1563448 (=> (not res!1068955) (not e!871388))))

(declare-datatypes ((array!104275 0))(
  ( (array!104276 (arr!50325 (Array (_ BitVec 32) (_ BitVec 64))) (size!50876 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104275)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104275 (_ BitVec 32)) Bool)

(assert (=> b!1563448 (= res!1068955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563449 () Bool)

(declare-fun e!871389 () Bool)

(declare-fun tp_is_empty!38807 () Bool)

(assert (=> b!1563449 (= e!871389 tp_is_empty!38807)))

(declare-fun mapNonEmpty!59586 () Bool)

(declare-fun mapRes!59586 () Bool)

(declare-fun tp!113467 () Bool)

(assert (=> mapNonEmpty!59586 (= mapRes!59586 (and tp!113467 e!871389))))

(declare-datatypes ((V!59949 0))(
  ( (V!59950 (val!19487 Int)) )
))
(declare-datatypes ((ValueCell!18373 0))(
  ( (ValueCellFull!18373 (v!22236 V!59949)) (EmptyCell!18373) )
))
(declare-fun mapRest!59586 () (Array (_ BitVec 32) ValueCell!18373))

(declare-fun mapKey!59586 () (_ BitVec 32))

(declare-datatypes ((array!104277 0))(
  ( (array!104278 (arr!50326 (Array (_ BitVec 32) ValueCell!18373)) (size!50877 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104277)

(declare-fun mapValue!59586 () ValueCell!18373)

(assert (=> mapNonEmpty!59586 (= (arr!50326 _values!487) (store mapRest!59586 mapKey!59586 mapValue!59586))))

(declare-fun res!1068954 () Bool)

(assert (=> start!133756 (=> (not res!1068954) (not e!871388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133756 (= res!1068954 (validMask!0 mask!947))))

(assert (=> start!133756 e!871388))

(assert (=> start!133756 tp!113466))

(assert (=> start!133756 tp_is_empty!38807))

(assert (=> start!133756 true))

(declare-fun array_inv!39037 (array!104275) Bool)

(assert (=> start!133756 (array_inv!39037 _keys!637)))

(declare-fun e!871387 () Bool)

(declare-fun array_inv!39038 (array!104277) Bool)

(assert (=> start!133756 (and (array_inv!39038 _values!487) e!871387)))

(declare-fun b!1563450 () Bool)

(declare-fun e!871391 () Bool)

(assert (=> b!1563450 (= e!871388 e!871391)))

(declare-fun res!1068953 () Bool)

(assert (=> b!1563450 (=> (not res!1068953) (not e!871391))))

(declare-datatypes ((tuple2!25302 0))(
  ( (tuple2!25303 (_1!12661 (_ BitVec 64)) (_2!12661 V!59949)) )
))
(declare-datatypes ((List!36689 0))(
  ( (Nil!36686) (Cons!36685 (h!38132 tuple2!25302) (t!51543 List!36689)) )
))
(declare-datatypes ((ListLongMap!22749 0))(
  ( (ListLongMap!22750 (toList!11390 List!36689)) )
))
(declare-fun lt!671837 () ListLongMap!22749)

(declare-fun contains!10310 (ListLongMap!22749 (_ BitVec 64)) Bool)

(assert (=> b!1563450 (= res!1068953 (not (contains!10310 lt!671837 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59949)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59949)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6747 (array!104275 array!104277 (_ BitVec 32) (_ BitVec 32) V!59949 V!59949 (_ BitVec 32) Int) ListLongMap!22749)

(assert (=> b!1563450 (= lt!671837 (getCurrentListMapNoExtraKeys!6747 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563451 () Bool)

(assert (=> b!1563451 (= e!871391 false)))

(declare-fun lt!671838 () Bool)

(assert (=> b!1563451 (= lt!671838 (contains!10310 lt!671837 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563452 () Bool)

(declare-fun res!1068952 () Bool)

(assert (=> b!1563452 (=> (not res!1068952) (not e!871388))))

(assert (=> b!1563452 (= res!1068952 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50876 _keys!637)) (bvslt from!782 (size!50876 _keys!637))))))

(declare-fun mapIsEmpty!59586 () Bool)

(assert (=> mapIsEmpty!59586 mapRes!59586))

(declare-fun b!1563453 () Bool)

(declare-fun res!1068950 () Bool)

(assert (=> b!1563453 (=> (not res!1068950) (not e!871388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563453 (= res!1068950 (not (validKeyInArray!0 (select (arr!50325 _keys!637) from!782))))))

(declare-fun b!1563454 () Bool)

(declare-fun e!871390 () Bool)

(assert (=> b!1563454 (= e!871390 tp_is_empty!38807)))

(declare-fun b!1563455 () Bool)

(declare-fun res!1068951 () Bool)

(assert (=> b!1563455 (=> (not res!1068951) (not e!871388))))

(assert (=> b!1563455 (= res!1068951 (and (= (size!50877 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50876 _keys!637) (size!50877 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563456 () Bool)

(assert (=> b!1563456 (= e!871387 (and e!871390 mapRes!59586))))

(declare-fun condMapEmpty!59586 () Bool)

(declare-fun mapDefault!59586 () ValueCell!18373)

