; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112534 () Bool)

(assert start!112534)

(declare-fun b_free!30893 () Bool)

(declare-fun b_next!30893 () Bool)

(assert (=> start!112534 (= b_free!30893 (not b_next!30893))))

(declare-fun tp!108316 () Bool)

(declare-fun b_and!49797 () Bool)

(assert (=> start!112534 (= tp!108316 b_and!49797)))

(declare-fun b!1334201 () Bool)

(declare-fun res!885562 () Bool)

(declare-fun e!759937 () Bool)

(assert (=> b!1334201 (=> (not res!885562) (not e!759937))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90451 0))(
  ( (array!90452 (arr!43687 (Array (_ BitVec 32) (_ BitVec 64))) (size!44238 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90451)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334201 (= res!885562 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44238 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334202 () Bool)

(declare-fun res!885564 () Bool)

(assert (=> b!1334202 (=> (not res!885564) (not e!759937))))

(declare-datatypes ((V!54173 0))(
  ( (V!54174 (val!18476 Int)) )
))
(declare-datatypes ((ValueCell!17503 0))(
  ( (ValueCellFull!17503 (v!21111 V!54173)) (EmptyCell!17503) )
))
(declare-datatypes ((array!90453 0))(
  ( (array!90454 (arr!43688 (Array (_ BitVec 32) ValueCell!17503)) (size!44239 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90453)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54173)

(declare-fun zeroValue!1262 () V!54173)

(declare-datatypes ((tuple2!23978 0))(
  ( (tuple2!23979 (_1!11999 (_ BitVec 64)) (_2!11999 V!54173)) )
))
(declare-datatypes ((List!31150 0))(
  ( (Nil!31147) (Cons!31146 (h!32355 tuple2!23978) (t!45409 List!31150)) )
))
(declare-datatypes ((ListLongMap!21647 0))(
  ( (ListLongMap!21648 (toList!10839 List!31150)) )
))
(declare-fun contains!8939 (ListLongMap!21647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5753 (array!90451 array!90453 (_ BitVec 32) (_ BitVec 32) V!54173 V!54173 (_ BitVec 32) Int) ListLongMap!21647)

(assert (=> b!1334202 (= res!885564 (contains!8939 (getCurrentListMap!5753 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1334203 () Bool)

(declare-fun res!885559 () Bool)

(assert (=> b!1334203 (=> (not res!885559) (not e!759937))))

(assert (=> b!1334203 (= res!885559 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334204 () Bool)

(declare-fun e!759935 () Bool)

(declare-fun e!759934 () Bool)

(declare-fun mapRes!56878 () Bool)

(assert (=> b!1334204 (= e!759935 (and e!759934 mapRes!56878))))

(declare-fun condMapEmpty!56878 () Bool)

(declare-fun mapDefault!56878 () ValueCell!17503)

