; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112548 () Bool)

(assert start!112548)

(declare-fun b_free!30907 () Bool)

(declare-fun b_next!30907 () Bool)

(assert (=> start!112548 (= b_free!30907 (not b_next!30907))))

(declare-fun tp!108358 () Bool)

(declare-fun b_and!49825 () Bool)

(assert (=> start!112548 (= tp!108358 b_and!49825)))

(declare-fun b!1334497 () Bool)

(declare-fun e!760059 () Bool)

(declare-fun tp_is_empty!36817 () Bool)

(assert (=> b!1334497 (= e!760059 tp_is_empty!36817)))

(declare-fun b!1334498 () Bool)

(declare-fun e!760058 () Bool)

(assert (=> b!1334498 (= e!760058 tp_is_empty!36817)))

(declare-fun b!1334499 () Bool)

(declare-fun res!885782 () Bool)

(declare-fun e!760056 () Bool)

(assert (=> b!1334499 (=> (not res!885782) (not e!760056))))

(declare-datatypes ((array!90479 0))(
  ( (array!90480 (arr!43701 (Array (_ BitVec 32) (_ BitVec 64))) (size!44252 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90479)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90479 (_ BitVec 32)) Bool)

(assert (=> b!1334499 (= res!885782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!885778 () Bool)

(assert (=> start!112548 (=> (not res!885778) (not e!760056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112548 (= res!885778 (validMask!0 mask!1998))))

(assert (=> start!112548 e!760056))

(declare-datatypes ((V!54193 0))(
  ( (V!54194 (val!18483 Int)) )
))
(declare-datatypes ((ValueCell!17510 0))(
  ( (ValueCellFull!17510 (v!21118 V!54193)) (EmptyCell!17510) )
))
(declare-datatypes ((array!90481 0))(
  ( (array!90482 (arr!43702 (Array (_ BitVec 32) ValueCell!17510)) (size!44253 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90481)

(declare-fun e!760060 () Bool)

(declare-fun array_inv!32893 (array!90481) Bool)

(assert (=> start!112548 (and (array_inv!32893 _values!1320) e!760060)))

(assert (=> start!112548 true))

(declare-fun array_inv!32894 (array!90479) Bool)

(assert (=> start!112548 (array_inv!32894 _keys!1590)))

(assert (=> start!112548 tp!108358))

(assert (=> start!112548 tp_is_empty!36817))

(declare-fun mapIsEmpty!56899 () Bool)

(declare-fun mapRes!56899 () Bool)

(assert (=> mapIsEmpty!56899 mapRes!56899))

(declare-fun b!1334500 () Bool)

(assert (=> b!1334500 (= e!760056 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54193)

(declare-fun zeroValue!1262 () V!54193)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun lt!592298 () Bool)

(declare-datatypes ((tuple2!23992 0))(
  ( (tuple2!23993 (_1!12006 (_ BitVec 64)) (_2!12006 V!54193)) )
))
(declare-datatypes ((List!31162 0))(
  ( (Nil!31159) (Cons!31158 (h!32367 tuple2!23992) (t!45433 List!31162)) )
))
(declare-datatypes ((ListLongMap!21661 0))(
  ( (ListLongMap!21662 (toList!10846 List!31162)) )
))
(declare-fun contains!8946 (ListLongMap!21661 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5757 (array!90479 array!90481 (_ BitVec 32) (_ BitVec 32) V!54193 V!54193 (_ BitVec 32) Int) ListLongMap!21661)

(assert (=> b!1334500 (= lt!592298 (contains!8946 (getCurrentListMap!5757 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1334501 () Bool)

(declare-fun res!885779 () Bool)

(assert (=> b!1334501 (=> (not res!885779) (not e!760056))))

(declare-datatypes ((List!31163 0))(
  ( (Nil!31160) (Cons!31159 (h!32368 (_ BitVec 64)) (t!45434 List!31163)) )
))
(declare-fun arrayNoDuplicates!0 (array!90479 (_ BitVec 32) List!31163) Bool)

(assert (=> b!1334501 (= res!885779 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31160))))

(declare-fun b!1334502 () Bool)

(declare-fun res!885781 () Bool)

(assert (=> b!1334502 (=> (not res!885781) (not e!760056))))

(assert (=> b!1334502 (= res!885781 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44252 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334503 () Bool)

(declare-fun res!885780 () Bool)

(assert (=> b!1334503 (=> (not res!885780) (not e!760056))))

(assert (=> b!1334503 (= res!885780 (and (= (size!44253 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44252 _keys!1590) (size!44253 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56899 () Bool)

(declare-fun tp!108359 () Bool)

(assert (=> mapNonEmpty!56899 (= mapRes!56899 (and tp!108359 e!760058))))

(declare-fun mapKey!56899 () (_ BitVec 32))

(declare-fun mapRest!56899 () (Array (_ BitVec 32) ValueCell!17510))

(declare-fun mapValue!56899 () ValueCell!17510)

(assert (=> mapNonEmpty!56899 (= (arr!43702 _values!1320) (store mapRest!56899 mapKey!56899 mapValue!56899))))

(declare-fun b!1334504 () Bool)

(assert (=> b!1334504 (= e!760060 (and e!760059 mapRes!56899))))

(declare-fun condMapEmpty!56899 () Bool)

(declare-fun mapDefault!56899 () ValueCell!17510)

