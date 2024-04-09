; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99634 () Bool)

(assert start!99634)

(declare-fun b_free!25177 () Bool)

(declare-fun b_next!25177 () Bool)

(assert (=> start!99634 (= b_free!25177 (not b_next!25177))))

(declare-fun tp!88245 () Bool)

(declare-fun b_and!41235 () Bool)

(assert (=> start!99634 (= tp!88245 b_and!41235)))

(declare-fun b!1179533 () Bool)

(declare-fun e!670632 () Bool)

(declare-fun e!670633 () Bool)

(assert (=> b!1179533 (= e!670632 e!670633)))

(declare-fun res!783763 () Bool)

(assert (=> b!1179533 (=> (not res!783763) (not e!670633))))

(declare-datatypes ((array!76186 0))(
  ( (array!76187 (arr!36739 (Array (_ BitVec 32) (_ BitVec 64))) (size!37276 (_ BitVec 32))) )
))
(declare-fun lt!533103 () array!76186)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76186 (_ BitVec 32)) Bool)

(assert (=> b!1179533 (= res!783763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533103 mask!1564))))

(declare-fun _keys!1208 () array!76186)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179533 (= lt!533103 (array!76187 (store (arr!36739 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37276 _keys!1208)))))

(declare-fun b!1179534 () Bool)

(declare-fun res!783753 () Bool)

(assert (=> b!1179534 (=> (not res!783753) (not e!670632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179534 (= res!783753 (validMask!0 mask!1564))))

(declare-fun b!1179535 () Bool)

(declare-fun e!670630 () Bool)

(declare-fun e!670642 () Bool)

(assert (=> b!1179535 (= e!670630 e!670642)))

(declare-fun res!783755 () Bool)

(assert (=> b!1179535 (=> res!783755 e!670642)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179535 (= res!783755 (not (= (select (arr!36739 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179536 () Bool)

(declare-fun e!670634 () Bool)

(declare-fun tp_is_empty!29707 () Bool)

(assert (=> b!1179536 (= e!670634 tp_is_empty!29707)))

(declare-fun b!1179537 () Bool)

(declare-fun e!670639 () Bool)

(declare-fun e!670640 () Bool)

(declare-fun mapRes!46388 () Bool)

(assert (=> b!1179537 (= e!670639 (and e!670640 mapRes!46388))))

(declare-fun condMapEmpty!46388 () Bool)

(declare-datatypes ((V!44737 0))(
  ( (V!44738 (val!14910 Int)) )
))
(declare-datatypes ((ValueCell!14144 0))(
  ( (ValueCellFull!14144 (v!17549 V!44737)) (EmptyCell!14144) )
))
(declare-datatypes ((array!76188 0))(
  ( (array!76189 (arr!36740 (Array (_ BitVec 32) ValueCell!14144)) (size!37277 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76188)

(declare-fun mapDefault!46388 () ValueCell!14144)

