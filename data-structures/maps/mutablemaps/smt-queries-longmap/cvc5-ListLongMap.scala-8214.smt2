; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100198 () Bool)

(assert start!100198)

(declare-fun res!794818 () Bool)

(declare-fun e!678850 () Bool)

(assert (=> start!100198 (=> (not res!794818) (not e!678850))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77282 0))(
  ( (array!77283 (arr!37286 (Array (_ BitVec 32) (_ BitVec 64))) (size!37823 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77282)

(assert (=> start!100198 (= res!794818 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37823 _keys!1208))))))

(assert (=> start!100198 e!678850))

(declare-fun array_inv!28324 (array!77282) Bool)

(assert (=> start!100198 (array_inv!28324 _keys!1208)))

(assert (=> start!100198 true))

(declare-datatypes ((V!45473 0))(
  ( (V!45474 (val!15186 Int)) )
))
(declare-datatypes ((ValueCell!14420 0))(
  ( (ValueCellFull!14420 (v!17825 V!45473)) (EmptyCell!14420) )
))
(declare-datatypes ((array!77284 0))(
  ( (array!77285 (arr!37287 (Array (_ BitVec 32) ValueCell!14420)) (size!37824 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77284)

(declare-fun e!678852 () Bool)

(declare-fun array_inv!28325 (array!77284) Bool)

(assert (=> start!100198 (and (array_inv!28325 _values!996) e!678852)))

(declare-fun b!1194447 () Bool)

(declare-fun res!794813 () Bool)

(assert (=> b!1194447 (=> (not res!794813) (not e!678850))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194447 (= res!794813 (validMask!0 mask!1564))))

(declare-fun b!1194448 () Bool)

(declare-fun res!794822 () Bool)

(assert (=> b!1194448 (=> (not res!794822) (not e!678850))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1194448 (= res!794822 (= (select (arr!37286 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47219 () Bool)

(declare-fun mapRes!47219 () Bool)

(declare-fun tp!89830 () Bool)

(declare-fun e!678851 () Bool)

(assert (=> mapNonEmpty!47219 (= mapRes!47219 (and tp!89830 e!678851))))

(declare-fun mapRest!47219 () (Array (_ BitVec 32) ValueCell!14420))

(declare-fun mapKey!47219 () (_ BitVec 32))

(declare-fun mapValue!47219 () ValueCell!14420)

(assert (=> mapNonEmpty!47219 (= (arr!37287 _values!996) (store mapRest!47219 mapKey!47219 mapValue!47219))))

(declare-fun b!1194449 () Bool)

(declare-fun res!794820 () Bool)

(assert (=> b!1194449 (=> (not res!794820) (not e!678850))))

(declare-datatypes ((List!26422 0))(
  ( (Nil!26419) (Cons!26418 (h!27627 (_ BitVec 64)) (t!39100 List!26422)) )
))
(declare-fun arrayNoDuplicates!0 (array!77282 (_ BitVec 32) List!26422) Bool)

(assert (=> b!1194449 (= res!794820 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26419))))

(declare-fun b!1194450 () Bool)

(declare-fun res!794814 () Bool)

(declare-fun e!678849 () Bool)

(assert (=> b!1194450 (=> (not res!794814) (not e!678849))))

(declare-fun lt!542727 () array!77282)

(assert (=> b!1194450 (= res!794814 (arrayNoDuplicates!0 lt!542727 #b00000000000000000000000000000000 Nil!26419))))

(declare-fun b!1194451 () Bool)

(declare-fun res!794815 () Bool)

(assert (=> b!1194451 (=> (not res!794815) (not e!678850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77282 (_ BitVec 32)) Bool)

(assert (=> b!1194451 (= res!794815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194452 () Bool)

(declare-fun e!678854 () Bool)

(declare-fun tp_is_empty!30259 () Bool)

(assert (=> b!1194452 (= e!678854 tp_is_empty!30259)))

(declare-fun b!1194453 () Bool)

(declare-fun res!794817 () Bool)

(assert (=> b!1194453 (=> (not res!794817) (not e!678849))))

(assert (=> b!1194453 (= res!794817 (bvslt (size!37823 _keys!1208) #b01111111111111111111111111111111))))

(declare-fun b!1194454 () Bool)

(assert (=> b!1194454 (= e!678851 tp_is_empty!30259)))

(declare-fun b!1194455 () Bool)

(assert (=> b!1194455 (= e!678852 (and e!678854 mapRes!47219))))

(declare-fun condMapEmpty!47219 () Bool)

(declare-fun mapDefault!47219 () ValueCell!14420)

