; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133808 () Bool)

(assert start!133808)

(declare-fun b!1564087 () Bool)

(declare-fun res!1069384 () Bool)

(declare-fun e!871778 () Bool)

(assert (=> b!1564087 (=> (not res!1069384) (not e!871778))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104359 0))(
  ( (array!104360 (arr!50366 (Array (_ BitVec 32) (_ BitVec 64))) (size!50917 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104359)

(assert (=> b!1564087 (= res!1069384 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50917 _keys!637)) (bvsge from!782 (size!50917 _keys!637))))))

(declare-fun mapIsEmpty!59652 () Bool)

(declare-fun mapRes!59652 () Bool)

(assert (=> mapIsEmpty!59652 mapRes!59652))

(declare-fun b!1564088 () Bool)

(declare-fun res!1069380 () Bool)

(assert (=> b!1564088 (=> (not res!1069380) (not e!871778))))

(declare-datatypes ((V!60005 0))(
  ( (V!60006 (val!19508 Int)) )
))
(declare-datatypes ((tuple2!25328 0))(
  ( (tuple2!25329 (_1!12674 (_ BitVec 64)) (_2!12674 V!60005)) )
))
(declare-datatypes ((List!36717 0))(
  ( (Nil!36714) (Cons!36713 (h!38160 tuple2!25328) (t!51571 List!36717)) )
))
(declare-datatypes ((ListLongMap!22775 0))(
  ( (ListLongMap!22776 (toList!11403 List!36717)) )
))
(declare-fun contains!10324 (ListLongMap!22775 (_ BitVec 64)) Bool)

(assert (=> b!1564088 (= res!1069380 (not (contains!10324 (ListLongMap!22776 Nil!36714) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1069382 () Bool)

(assert (=> start!133808 (=> (not res!1069382) (not e!871778))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133808 (= res!1069382 (validMask!0 mask!947))))

(assert (=> start!133808 e!871778))

(assert (=> start!133808 true))

(declare-fun array_inv!39069 (array!104359) Bool)

(assert (=> start!133808 (array_inv!39069 _keys!637)))

(declare-datatypes ((ValueCell!18394 0))(
  ( (ValueCellFull!18394 (v!22257 V!60005)) (EmptyCell!18394) )
))
(declare-datatypes ((array!104361 0))(
  ( (array!104362 (arr!50367 (Array (_ BitVec 32) ValueCell!18394)) (size!50918 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104361)

(declare-fun e!871777 () Bool)

(declare-fun array_inv!39070 (array!104361) Bool)

(assert (=> start!133808 (and (array_inv!39070 _values!487) e!871777)))

(declare-fun b!1564089 () Bool)

(declare-fun e!871776 () Bool)

(assert (=> b!1564089 (= e!871777 (and e!871776 mapRes!59652))))

(declare-fun condMapEmpty!59652 () Bool)

(declare-fun mapDefault!59652 () ValueCell!18394)

