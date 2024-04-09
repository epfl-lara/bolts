; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98244 () Bool)

(assert start!98244)

(declare-fun b_free!23909 () Bool)

(declare-fun b_next!23909 () Bool)

(assert (=> start!98244 (= b_free!23909 (not b_next!23909))))

(declare-fun tp!84432 () Bool)

(declare-fun b_and!38623 () Bool)

(assert (=> start!98244 (= tp!84432 b_and!38623)))

(declare-fun mapIsEmpty!44476 () Bool)

(declare-fun mapRes!44476 () Bool)

(assert (=> mapIsEmpty!44476 mapRes!44476))

(declare-fun b!1130530 () Bool)

(declare-fun e!643441 () Bool)

(declare-fun e!643445 () Bool)

(assert (=> b!1130530 (= e!643441 e!643445)))

(declare-fun res!755433 () Bool)

(assert (=> b!1130530 (=> (not res!755433) (not e!643445))))

(declare-datatypes ((array!73696 0))(
  ( (array!73697 (arr!35497 (Array (_ BitVec 32) (_ BitVec 64))) (size!36034 (_ BitVec 32))) )
))
(declare-fun lt!502035 () array!73696)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73696 (_ BitVec 32)) Bool)

(assert (=> b!1130530 (= res!755433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502035 mask!1564))))

(declare-fun _keys!1208 () array!73696)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130530 (= lt!502035 (array!73697 (store (arr!35497 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36034 _keys!1208)))))

(declare-fun b!1130531 () Bool)

(declare-fun call!48387 () Bool)

(assert (=> b!1130531 call!48387))

(declare-datatypes ((Unit!36989 0))(
  ( (Unit!36990) )
))
(declare-fun lt!502040 () Unit!36989)

(declare-fun call!48383 () Unit!36989)

(assert (=> b!1130531 (= lt!502040 call!48383)))

(declare-fun e!643447 () Unit!36989)

(assert (=> b!1130531 (= e!643447 lt!502040)))

(declare-fun res!755429 () Bool)

(assert (=> start!98244 (=> (not res!755429) (not e!643441))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98244 (= res!755429 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36034 _keys!1208))))))

(assert (=> start!98244 e!643441))

(declare-fun tp_is_empty!28439 () Bool)

(assert (=> start!98244 tp_is_empty!28439))

(declare-fun array_inv!27100 (array!73696) Bool)

(assert (=> start!98244 (array_inv!27100 _keys!1208)))

(assert (=> start!98244 true))

(assert (=> start!98244 tp!84432))

(declare-datatypes ((V!43045 0))(
  ( (V!43046 (val!14276 Int)) )
))
(declare-datatypes ((ValueCell!13510 0))(
  ( (ValueCellFull!13510 (v!16910 V!43045)) (EmptyCell!13510) )
))
(declare-datatypes ((array!73698 0))(
  ( (array!73699 (arr!35498 (Array (_ BitVec 32) ValueCell!13510)) (size!36035 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73698)

(declare-fun e!643435 () Bool)

(declare-fun array_inv!27101 (array!73698) Bool)

(assert (=> start!98244 (and (array_inv!27101 _values!996) e!643435)))

(declare-fun b!1130532 () Bool)

(declare-fun e!643437 () Bool)

(assert (=> b!1130532 (= e!643435 (and e!643437 mapRes!44476))))

(declare-fun condMapEmpty!44476 () Bool)

(declare-fun mapDefault!44476 () ValueCell!13510)

