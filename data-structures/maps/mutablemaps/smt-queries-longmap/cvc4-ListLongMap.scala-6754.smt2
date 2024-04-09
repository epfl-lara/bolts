; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84760 () Bool)

(assert start!84760)

(declare-fun b_free!20087 () Bool)

(declare-fun b_next!20087 () Bool)

(assert (=> start!84760 (= b_free!20087 (not b_next!20087))))

(declare-fun tp!70060 () Bool)

(declare-fun b_and!32275 () Bool)

(assert (=> start!84760 (= tp!70060 b_and!32275)))

(declare-fun b!990708 () Bool)

(declare-fun res!662478 () Bool)

(declare-fun e!558680 () Bool)

(assert (=> b!990708 (=> (not res!662478) (not e!558680))))

(declare-datatypes ((array!62557 0))(
  ( (array!62558 (arr!30125 (Array (_ BitVec 32) (_ BitVec 64))) (size!30605 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62557)

(declare-datatypes ((List!20967 0))(
  ( (Nil!20964) (Cons!20963 (h!22125 (_ BitVec 64)) (t!29952 List!20967)) )
))
(declare-fun arrayNoDuplicates!0 (array!62557 (_ BitVec 32) List!20967) Bool)

(assert (=> b!990708 (= res!662478 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20964))))

(declare-fun b!990709 () Bool)

(declare-fun e!558683 () Bool)

(assert (=> b!990709 (= e!558683 false)))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36053 0))(
  ( (V!36054 (val!11702 Int)) )
))
(declare-fun minValue!1220 () V!36053)

(declare-datatypes ((ValueCell!11170 0))(
  ( (ValueCellFull!11170 (v!14275 V!36053)) (EmptyCell!11170) )
))
(declare-datatypes ((array!62559 0))(
  ( (array!62560 (arr!30126 (Array (_ BitVec 32) ValueCell!11170)) (size!30606 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62559)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!36053)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((tuple2!15018 0))(
  ( (tuple2!15019 (_1!7519 (_ BitVec 64)) (_2!7519 V!36053)) )
))
(declare-datatypes ((List!20968 0))(
  ( (Nil!20965) (Cons!20964 (h!22126 tuple2!15018) (t!29953 List!20968)) )
))
(declare-datatypes ((ListLongMap!13729 0))(
  ( (ListLongMap!13730 (toList!6880 List!20968)) )
))
(declare-fun lt!439633 () ListLongMap!13729)

(declare-fun getCurrentListMap!3889 (array!62557 array!62559 (_ BitVec 32) (_ BitVec 32) V!36053 V!36053 (_ BitVec 32) Int) ListLongMap!13729)

(assert (=> b!990709 (= lt!439633 (getCurrentListMap!3889 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990710 () Bool)

(declare-fun res!662476 () Bool)

(assert (=> b!990710 (=> (not res!662476) (not e!558680))))

(assert (=> b!990710 (= res!662476 (and (= (size!30606 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30605 _keys!1544) (size!30606 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37007 () Bool)

(declare-fun mapRes!37007 () Bool)

(assert (=> mapIsEmpty!37007 mapRes!37007))

(declare-fun b!990711 () Bool)

(declare-fun res!662475 () Bool)

(assert (=> b!990711 (=> (not res!662475) (not e!558680))))

(assert (=> b!990711 (= res!662475 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30605 _keys!1544))))))

(declare-fun b!990712 () Bool)

(declare-fun e!558684 () Bool)

(declare-fun e!558685 () Bool)

(assert (=> b!990712 (= e!558684 (and e!558685 mapRes!37007))))

(declare-fun condMapEmpty!37007 () Bool)

(declare-fun mapDefault!37007 () ValueCell!11170)

