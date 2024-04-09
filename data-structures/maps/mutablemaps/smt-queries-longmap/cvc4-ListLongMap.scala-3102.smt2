; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43564 () Bool)

(assert start!43564)

(declare-fun b_free!12335 () Bool)

(declare-fun b_next!12335 () Bool)

(assert (=> start!43564 (= b_free!12335 (not b_next!12335))))

(declare-fun tp!43287 () Bool)

(declare-fun b_and!21113 () Bool)

(assert (=> start!43564 (= tp!43287 b_and!21113)))

(declare-fun res!287669 () Bool)

(declare-fun e!283936 () Bool)

(assert (=> start!43564 (=> (not res!287669) (not e!283936))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43564 (= res!287669 (validMask!0 mask!2352))))

(assert (=> start!43564 e!283936))

(assert (=> start!43564 true))

(declare-fun tp_is_empty!13847 () Bool)

(assert (=> start!43564 tp_is_empty!13847))

(declare-datatypes ((V!19533 0))(
  ( (V!19534 (val!6971 Int)) )
))
(declare-datatypes ((ValueCell!6562 0))(
  ( (ValueCellFull!6562 (v!9260 V!19533)) (EmptyCell!6562) )
))
(declare-datatypes ((array!31317 0))(
  ( (array!31318 (arr!15058 (Array (_ BitVec 32) ValueCell!6562)) (size!15416 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31317)

(declare-fun e!283934 () Bool)

(declare-fun array_inv!10840 (array!31317) Bool)

(assert (=> start!43564 (and (array_inv!10840 _values!1516) e!283934)))

(assert (=> start!43564 tp!43287))

(declare-datatypes ((array!31319 0))(
  ( (array!31320 (arr!15059 (Array (_ BitVec 32) (_ BitVec 64))) (size!15417 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31319)

(declare-fun array_inv!10841 (array!31319) Bool)

(assert (=> start!43564 (array_inv!10841 _keys!1874)))

(declare-fun mapIsEmpty!22480 () Bool)

(declare-fun mapRes!22480 () Bool)

(assert (=> mapIsEmpty!22480 mapRes!22480))

(declare-fun b!482482 () Bool)

(declare-fun res!287673 () Bool)

(assert (=> b!482482 (=> (not res!287673) (not e!283936))))

(declare-datatypes ((List!9266 0))(
  ( (Nil!9263) (Cons!9262 (h!10118 (_ BitVec 64)) (t!15488 List!9266)) )
))
(declare-fun arrayNoDuplicates!0 (array!31319 (_ BitVec 32) List!9266) Bool)

(assert (=> b!482482 (= res!287673 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9263))))

(declare-fun b!482483 () Bool)

(declare-fun e!283935 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482483 (= e!283935 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!22480 () Bool)

(declare-fun tp!43288 () Bool)

(declare-fun e!283939 () Bool)

(assert (=> mapNonEmpty!22480 (= mapRes!22480 (and tp!43288 e!283939))))

(declare-fun mapRest!22480 () (Array (_ BitVec 32) ValueCell!6562))

(declare-fun mapValue!22480 () ValueCell!6562)

(declare-fun mapKey!22480 () (_ BitVec 32))

(assert (=> mapNonEmpty!22480 (= (arr!15058 _values!1516) (store mapRest!22480 mapKey!22480 mapValue!22480))))

(declare-fun b!482484 () Bool)

(declare-fun res!287674 () Bool)

(assert (=> b!482484 (=> (not res!287674) (not e!283936))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!482484 (= res!287674 (and (= (size!15416 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15417 _keys!1874) (size!15416 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482485 () Bool)

(assert (=> b!482485 (= e!283935 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482486 () Bool)

(declare-fun e!283938 () Bool)

(assert (=> b!482486 (= e!283938 tp_is_empty!13847)))

(declare-fun b!482487 () Bool)

(declare-fun res!287670 () Bool)

(assert (=> b!482487 (=> (not res!287670) (not e!283936))))

(declare-fun minValue!1458 () V!19533)

(declare-fun zeroValue!1458 () V!19533)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9150 0))(
  ( (tuple2!9151 (_1!4585 (_ BitVec 64)) (_2!4585 V!19533)) )
))
(declare-datatypes ((List!9267 0))(
  ( (Nil!9264) (Cons!9263 (h!10119 tuple2!9150) (t!15489 List!9267)) )
))
(declare-datatypes ((ListLongMap!8077 0))(
  ( (ListLongMap!8078 (toList!4054 List!9267)) )
))
(declare-fun contains!2665 (ListLongMap!8077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2346 (array!31319 array!31317 (_ BitVec 32) (_ BitVec 32) V!19533 V!19533 (_ BitVec 32) Int) ListLongMap!8077)

(assert (=> b!482487 (= res!287670 (contains!2665 (getCurrentListMap!2346 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482488 () Bool)

(assert (=> b!482488 (= e!283934 (and e!283938 mapRes!22480))))

(declare-fun condMapEmpty!22480 () Bool)

(declare-fun mapDefault!22480 () ValueCell!6562)

