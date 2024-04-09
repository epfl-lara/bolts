; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3968 () Bool)

(assert start!3968)

(declare-fun b_free!875 () Bool)

(declare-fun b_next!875 () Bool)

(assert (=> start!3968 (= b_free!875 (not b_next!875))))

(declare-fun tp!4045 () Bool)

(declare-fun b_and!1687 () Bool)

(assert (=> start!3968 (= tp!4045 b_and!1687)))

(declare-fun b!28552 () Bool)

(declare-fun e!18465 () Bool)

(declare-fun tp_is_empty!1229 () Bool)

(assert (=> b!28552 (= e!18465 tp_is_empty!1229)))

(declare-fun b!28553 () Bool)

(declare-fun res!17010 () Bool)

(declare-fun e!18461 () Bool)

(assert (=> b!28553 (=> (not res!17010) (not e!18461))))

(declare-datatypes ((array!1683 0))(
  ( (array!1684 (arr!795 (Array (_ BitVec 32) (_ BitVec 64))) (size!896 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1683)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28553 (= res!17010 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28554 () Bool)

(declare-fun e!18463 () Bool)

(assert (=> b!28554 (= e!18463 tp_is_empty!1229)))

(declare-fun b!28555 () Bool)

(declare-fun e!18464 () Bool)

(assert (=> b!28555 (= e!18464 e!18461)))

(declare-fun res!17004 () Bool)

(assert (=> b!28555 (=> (not res!17004) (not e!18461))))

(declare-datatypes ((V!1463 0))(
  ( (V!1464 (val!641 Int)) )
))
(declare-datatypes ((tuple2!1050 0))(
  ( (tuple2!1051 (_1!535 (_ BitVec 64)) (_2!535 V!1463)) )
))
(declare-datatypes ((List!664 0))(
  ( (Nil!661) (Cons!660 (h!1227 tuple2!1050) (t!3359 List!664)) )
))
(declare-datatypes ((ListLongMap!631 0))(
  ( (ListLongMap!632 (toList!331 List!664)) )
))
(declare-fun lt!10849 () ListLongMap!631)

(declare-fun contains!268 (ListLongMap!631 (_ BitVec 64)) Bool)

(assert (=> b!28555 (= res!17004 (not (contains!268 lt!10849 k!1304)))))

(declare-datatypes ((ValueCell!415 0))(
  ( (ValueCellFull!415 (v!1730 V!1463)) (EmptyCell!415) )
))
(declare-datatypes ((array!1685 0))(
  ( (array!1686 (arr!796 (Array (_ BitVec 32) ValueCell!415)) (size!897 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1685)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1463)

(declare-fun minValue!1443 () V!1463)

(declare-fun getCurrentListMap!158 (array!1683 array!1685 (_ BitVec 32) (_ BitVec 32) V!1463 V!1463 (_ BitVec 32) Int) ListLongMap!631)

(assert (=> b!28555 (= lt!10849 (getCurrentListMap!158 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28556 () Bool)

(declare-fun res!17011 () Bool)

(assert (=> b!28556 (=> (not res!17011) (not e!18464))))

(declare-datatypes ((List!665 0))(
  ( (Nil!662) (Cons!661 (h!1228 (_ BitVec 64)) (t!3360 List!665)) )
))
(declare-fun arrayNoDuplicates!0 (array!1683 (_ BitVec 32) List!665) Bool)

(assert (=> b!28556 (= res!17011 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!662))))

(declare-fun b!28557 () Bool)

(declare-fun res!17006 () Bool)

(assert (=> b!28557 (=> (not res!17006) (not e!18464))))

(assert (=> b!28557 (= res!17006 (and (= (size!897 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!896 _keys!1833) (size!897 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1372 () Bool)

(declare-fun mapRes!1372 () Bool)

(assert (=> mapIsEmpty!1372 mapRes!1372))

(declare-fun b!28558 () Bool)

(declare-fun e!18462 () Bool)

(assert (=> b!28558 (= e!18462 (and e!18465 mapRes!1372))))

(declare-fun condMapEmpty!1372 () Bool)

(declare-fun mapDefault!1372 () ValueCell!415)

