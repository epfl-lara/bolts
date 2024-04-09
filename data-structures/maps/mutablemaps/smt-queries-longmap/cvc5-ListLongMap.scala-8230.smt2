; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100324 () Bool)

(assert start!100324)

(declare-fun b!1196426 () Bool)

(declare-fun res!796320 () Bool)

(declare-fun e!679795 () Bool)

(assert (=> b!1196426 (=> (not res!796320) (not e!679795))))

(declare-datatypes ((array!77470 0))(
  ( (array!77471 (arr!37378 (Array (_ BitVec 32) (_ BitVec 64))) (size!37915 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77470)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77470 (_ BitVec 32)) Bool)

(assert (=> b!1196426 (= res!796320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196427 () Bool)

(declare-fun e!679793 () Bool)

(assert (=> b!1196427 (= e!679795 e!679793)))

(declare-fun res!796318 () Bool)

(assert (=> b!1196427 (=> (not res!796318) (not e!679793))))

(declare-fun lt!543036 () array!77470)

(assert (=> b!1196427 (= res!796318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543036 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196427 (= lt!543036 (array!77471 (store (arr!37378 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37915 _keys!1208)))))

(declare-fun b!1196428 () Bool)

(declare-fun res!796317 () Bool)

(assert (=> b!1196428 (=> (not res!796317) (not e!679795))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45601 0))(
  ( (V!45602 (val!15234 Int)) )
))
(declare-datatypes ((ValueCell!14468 0))(
  ( (ValueCellFull!14468 (v!17873 V!45601)) (EmptyCell!14468) )
))
(declare-datatypes ((array!77472 0))(
  ( (array!77473 (arr!37379 (Array (_ BitVec 32) ValueCell!14468)) (size!37916 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77472)

(assert (=> b!1196428 (= res!796317 (and (= (size!37916 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37915 _keys!1208) (size!37916 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47369 () Bool)

(declare-fun mapRes!47369 () Bool)

(assert (=> mapIsEmpty!47369 mapRes!47369))

(declare-fun b!1196430 () Bool)

(declare-fun res!796319 () Bool)

(assert (=> b!1196430 (=> (not res!796319) (not e!679795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196430 (= res!796319 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47369 () Bool)

(declare-fun tp!89980 () Bool)

(declare-fun e!679797 () Bool)

(assert (=> mapNonEmpty!47369 (= mapRes!47369 (and tp!89980 e!679797))))

(declare-fun mapRest!47369 () (Array (_ BitVec 32) ValueCell!14468))

(declare-fun mapValue!47369 () ValueCell!14468)

(declare-fun mapKey!47369 () (_ BitVec 32))

(assert (=> mapNonEmpty!47369 (= (arr!37379 _values!996) (store mapRest!47369 mapKey!47369 mapValue!47369))))

(declare-fun b!1196431 () Bool)

(declare-fun e!679794 () Bool)

(declare-fun e!679796 () Bool)

(assert (=> b!1196431 (= e!679794 (and e!679796 mapRes!47369))))

(declare-fun condMapEmpty!47369 () Bool)

(declare-fun mapDefault!47369 () ValueCell!14468)

