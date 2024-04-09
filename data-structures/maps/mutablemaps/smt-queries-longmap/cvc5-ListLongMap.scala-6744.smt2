; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84556 () Bool)

(assert start!84556)

(declare-fun b_free!20023 () Bool)

(declare-fun b_next!20023 () Bool)

(assert (=> start!84556 (= b_free!20023 (not b_next!20023))))

(declare-fun tp!69854 () Bool)

(declare-fun b_and!32135 () Bool)

(assert (=> start!84556 (= tp!69854 b_and!32135)))

(declare-fun b!988522 () Bool)

(declare-fun e!557441 () Bool)

(declare-fun tp_is_empty!23239 () Bool)

(assert (=> b!988522 (= e!557441 tp_is_empty!23239)))

(declare-fun b!988523 () Bool)

(declare-fun res!661279 () Bool)

(declare-fun e!557442 () Bool)

(assert (=> b!988523 (=> (not res!661279) (not e!557442))))

(declare-datatypes ((array!62425 0))(
  ( (array!62426 (arr!30063 (Array (_ BitVec 32) (_ BitVec 64))) (size!30543 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62425)

(declare-datatypes ((List!20919 0))(
  ( (Nil!20916) (Cons!20915 (h!22077 (_ BitVec 64)) (t!29864 List!20919)) )
))
(declare-fun arrayNoDuplicates!0 (array!62425 (_ BitVec 32) List!20919) Bool)

(assert (=> b!988523 (= res!661279 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20916))))

(declare-fun b!988525 () Bool)

(declare-fun res!661277 () Bool)

(assert (=> b!988525 (=> (not res!661277) (not e!557442))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62425 (_ BitVec 32)) Bool)

(assert (=> b!988525 (= res!661277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36897 () Bool)

(declare-fun mapRes!36897 () Bool)

(declare-fun tp!69855 () Bool)

(assert (=> mapNonEmpty!36897 (= mapRes!36897 (and tp!69855 e!557441))))

(declare-datatypes ((V!35969 0))(
  ( (V!35970 (val!11670 Int)) )
))
(declare-datatypes ((ValueCell!11138 0))(
  ( (ValueCellFull!11138 (v!14237 V!35969)) (EmptyCell!11138) )
))
(declare-datatypes ((array!62427 0))(
  ( (array!62428 (arr!30064 (Array (_ BitVec 32) ValueCell!11138)) (size!30544 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62427)

(declare-fun mapValue!36897 () ValueCell!11138)

(declare-fun mapRest!36897 () (Array (_ BitVec 32) ValueCell!11138))

(declare-fun mapKey!36897 () (_ BitVec 32))

(assert (=> mapNonEmpty!36897 (= (arr!30064 _values!1278) (store mapRest!36897 mapKey!36897 mapValue!36897))))

(declare-fun b!988526 () Bool)

(declare-fun e!557438 () Bool)

(assert (=> b!988526 (= e!557438 tp_is_empty!23239)))

(declare-fun b!988527 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988527 (= e!557442 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30063 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14968 0))(
  ( (tuple2!14969 (_1!7494 (_ BitVec 64)) (_2!7494 V!35969)) )
))
(declare-datatypes ((List!20920 0))(
  ( (Nil!20917) (Cons!20916 (h!22078 tuple2!14968) (t!29865 List!20920)) )
))
(declare-datatypes ((ListLongMap!13679 0))(
  ( (ListLongMap!13680 (toList!6855 List!20920)) )
))
(declare-fun lt!438486 () ListLongMap!13679)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35969)

(declare-fun defaultEntry!1281 () Int)

(declare-fun minValue!1220 () V!35969)

(declare-fun getCurrentListMapNoExtraKeys!3505 (array!62425 array!62427 (_ BitVec 32) (_ BitVec 32) V!35969 V!35969 (_ BitVec 32) Int) ListLongMap!13679)

(assert (=> b!988527 (= lt!438486 (getCurrentListMapNoExtraKeys!3505 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988528 () Bool)

(declare-fun res!661273 () Bool)

(assert (=> b!988528 (=> (not res!661273) (not e!557442))))

(assert (=> b!988528 (= res!661273 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30543 _keys!1544))))))

(declare-fun res!661274 () Bool)

(assert (=> start!84556 (=> (not res!661274) (not e!557442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84556 (= res!661274 (validMask!0 mask!1948))))

(assert (=> start!84556 e!557442))

(assert (=> start!84556 true))

(assert (=> start!84556 tp_is_empty!23239))

(declare-fun e!557439 () Bool)

(declare-fun array_inv!23083 (array!62427) Bool)

(assert (=> start!84556 (and (array_inv!23083 _values!1278) e!557439)))

(assert (=> start!84556 tp!69854))

(declare-fun array_inv!23084 (array!62425) Bool)

(assert (=> start!84556 (array_inv!23084 _keys!1544)))

(declare-fun b!988524 () Bool)

(declare-fun res!661278 () Bool)

(assert (=> b!988524 (=> (not res!661278) (not e!557442))))

(assert (=> b!988524 (= res!661278 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!988529 () Bool)

(assert (=> b!988529 (= e!557439 (and e!557438 mapRes!36897))))

(declare-fun condMapEmpty!36897 () Bool)

(declare-fun mapDefault!36897 () ValueCell!11138)

