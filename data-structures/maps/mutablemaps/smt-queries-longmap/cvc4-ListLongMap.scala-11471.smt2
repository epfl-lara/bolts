; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133660 () Bool)

(assert start!133660)

(declare-fun b_free!32045 () Bool)

(declare-fun b_next!32045 () Bool)

(assert (=> start!133660 (= b_free!32045 (not b_next!32045))))

(declare-fun tp!113259 () Bool)

(declare-fun b_and!51611 () Bool)

(assert (=> start!133660 (= tp!113259 b_and!51611)))

(declare-fun mapNonEmpty!59442 () Bool)

(declare-fun mapRes!59442 () Bool)

(declare-fun tp!113260 () Bool)

(declare-fun e!870625 () Bool)

(assert (=> mapNonEmpty!59442 (= mapRes!59442 (and tp!113260 e!870625))))

(declare-datatypes ((V!59821 0))(
  ( (V!59822 (val!19439 Int)) )
))
(declare-datatypes ((ValueCell!18325 0))(
  ( (ValueCellFull!18325 (v!22188 V!59821)) (EmptyCell!18325) )
))
(declare-fun mapRest!59442 () (Array (_ BitVec 32) ValueCell!18325))

(declare-datatypes ((array!104089 0))(
  ( (array!104090 (arr!50232 (Array (_ BitVec 32) ValueCell!18325)) (size!50783 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104089)

(declare-fun mapKey!59442 () (_ BitVec 32))

(declare-fun mapValue!59442 () ValueCell!18325)

(assert (=> mapNonEmpty!59442 (= (arr!50232 _values!487) (store mapRest!59442 mapKey!59442 mapValue!59442))))

(declare-fun mapIsEmpty!59442 () Bool)

(assert (=> mapIsEmpty!59442 mapRes!59442))

(declare-fun b!1562310 () Bool)

(declare-fun res!1068261 () Bool)

(declare-fun e!870626 () Bool)

(assert (=> b!1562310 (=> (not res!1068261) (not e!870626))))

(declare-datatypes ((array!104091 0))(
  ( (array!104092 (arr!50233 (Array (_ BitVec 32) (_ BitVec 64))) (size!50784 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104091)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562310 (= res!1068261 (validKeyInArray!0 (select (arr!50233 _keys!637) from!782)))))

(declare-fun b!1562311 () Bool)

(declare-fun res!1068262 () Bool)

(assert (=> b!1562311 (=> (not res!1068262) (not e!870626))))

(assert (=> b!1562311 (= res!1068262 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50784 _keys!637)) (bvslt from!782 (size!50784 _keys!637))))))

(declare-fun b!1562312 () Bool)

(declare-fun res!1068260 () Bool)

(assert (=> b!1562312 (=> (not res!1068260) (not e!870626))))

(declare-datatypes ((List!36640 0))(
  ( (Nil!36637) (Cons!36636 (h!38083 (_ BitVec 64)) (t!51482 List!36640)) )
))
(declare-fun arrayNoDuplicates!0 (array!104091 (_ BitVec 32) List!36640) Bool)

(assert (=> b!1562312 (= res!1068260 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36637))))

(declare-fun b!1562313 () Bool)

(declare-fun res!1068259 () Bool)

(assert (=> b!1562313 (=> (not res!1068259) (not e!870626))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104091 (_ BitVec 32)) Bool)

(assert (=> b!1562313 (= res!1068259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562314 () Bool)

(declare-fun e!870623 () Bool)

(declare-fun e!870624 () Bool)

(assert (=> b!1562314 (= e!870623 (and e!870624 mapRes!59442))))

(declare-fun condMapEmpty!59442 () Bool)

(declare-fun mapDefault!59442 () ValueCell!18325)

