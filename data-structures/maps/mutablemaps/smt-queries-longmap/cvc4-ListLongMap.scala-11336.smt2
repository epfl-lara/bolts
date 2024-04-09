; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131956 () Bool)

(assert start!131956)

(declare-fun b_free!31637 () Bool)

(declare-fun b_next!31637 () Bool)

(assert (=> start!131956 (= b_free!31637 (not b_next!31637))))

(declare-fun tp!111164 () Bool)

(declare-fun b_and!51057 () Bool)

(assert (=> start!131956 (= tp!111164 b_and!51057)))

(declare-fun b!1544640 () Bool)

(declare-fun res!1059546 () Bool)

(declare-fun e!859801 () Bool)

(assert (=> b!1544640 (=> (not res!1059546) (not e!859801))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102999 0))(
  ( (array!103000 (arr!49697 (Array (_ BitVec 32) (_ BitVec 64))) (size!50248 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102999)

(assert (=> b!1544640 (= res!1059546 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50248 _keys!618))))))

(declare-fun b!1544641 () Bool)

(declare-fun res!1059544 () Bool)

(assert (=> b!1544641 (=> (not res!1059544) (not e!859801))))

(declare-datatypes ((List!36115 0))(
  ( (Nil!36112) (Cons!36111 (h!37557 (_ BitVec 64)) (t!50816 List!36115)) )
))
(declare-fun arrayNoDuplicates!0 (array!102999 (_ BitVec 32) List!36115) Bool)

(assert (=> b!1544641 (= res!1059544 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36112))))

(declare-fun bm!68999 () Bool)

(declare-datatypes ((V!58993 0))(
  ( (V!58994 (val!19034 Int)) )
))
(declare-datatypes ((tuple2!24596 0))(
  ( (tuple2!24597 (_1!12308 (_ BitVec 64)) (_2!12308 V!58993)) )
))
(declare-datatypes ((List!36116 0))(
  ( (Nil!36113) (Cons!36112 (h!37558 tuple2!24596) (t!50817 List!36116)) )
))
(declare-datatypes ((ListLongMap!22217 0))(
  ( (ListLongMap!22218 (toList!11124 List!36116)) )
))
(declare-fun call!69004 () ListLongMap!22217)

(declare-fun call!69006 () ListLongMap!22217)

(assert (=> bm!68999 (= call!69004 call!69006)))

(declare-fun b!1544642 () Bool)

(declare-fun res!1059547 () Bool)

(assert (=> b!1544642 (=> (not res!1059547) (not e!859801))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102999 (_ BitVec 32)) Bool)

(assert (=> b!1544642 (= res!1059547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58573 () Bool)

(declare-fun mapRes!58573 () Bool)

(assert (=> mapIsEmpty!58573 mapRes!58573))

(declare-fun b!1544643 () Bool)

(declare-fun e!859800 () ListLongMap!22217)

(declare-fun call!69002 () ListLongMap!22217)

(assert (=> b!1544643 (= e!859800 call!69002)))

(declare-fun bm!69000 () Bool)

(declare-fun call!69003 () ListLongMap!22217)

(assert (=> bm!69000 (= call!69003 call!69004)))

(declare-fun bm!69001 () Bool)

(declare-fun call!69005 () ListLongMap!22217)

(assert (=> bm!69001 (= call!69002 call!69005)))

(declare-fun b!1544644 () Bool)

(assert (=> b!1544644 (= e!859800 call!69003)))

(declare-fun res!1059548 () Bool)

(assert (=> start!131956 (=> (not res!1059548) (not e!859801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131956 (= res!1059548 (validMask!0 mask!926))))

(assert (=> start!131956 e!859801))

(declare-fun array_inv!38579 (array!102999) Bool)

(assert (=> start!131956 (array_inv!38579 _keys!618)))

(declare-fun tp_is_empty!37913 () Bool)

(assert (=> start!131956 tp_is_empty!37913))

(assert (=> start!131956 true))

(assert (=> start!131956 tp!111164))

(declare-datatypes ((ValueCell!18046 0))(
  ( (ValueCellFull!18046 (v!21832 V!58993)) (EmptyCell!18046) )
))
(declare-datatypes ((array!103001 0))(
  ( (array!103002 (arr!49698 (Array (_ BitVec 32) ValueCell!18046)) (size!50249 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103001)

(declare-fun e!859799 () Bool)

(declare-fun array_inv!38580 (array!103001) Bool)

(assert (=> start!131956 (and (array_inv!38580 _values!470) e!859799)))

(declare-fun b!1544645 () Bool)

(declare-fun e!859794 () Bool)

(assert (=> b!1544645 (= e!859799 (and e!859794 mapRes!58573))))

(declare-fun condMapEmpty!58573 () Bool)

(declare-fun mapDefault!58573 () ValueCell!18046)

