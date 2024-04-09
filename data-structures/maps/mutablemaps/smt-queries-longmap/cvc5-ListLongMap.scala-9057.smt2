; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109162 () Bool)

(assert start!109162)

(declare-fun b_free!28615 () Bool)

(declare-fun b_next!28615 () Bool)

(assert (=> start!109162 (= b_free!28615 (not b_next!28615))))

(declare-fun tp!100964 () Bool)

(declare-fun b_and!46715 () Bool)

(assert (=> start!109162 (= tp!100964 b_and!46715)))

(declare-fun b!1290255 () Bool)

(declare-fun res!857227 () Bool)

(declare-fun e!736650 () Bool)

(assert (=> b!1290255 (=> (not res!857227) (not e!736650))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50777 0))(
  ( (V!50778 (val!17202 Int)) )
))
(declare-datatypes ((ValueCell!16229 0))(
  ( (ValueCellFull!16229 (v!19803 V!50777)) (EmptyCell!16229) )
))
(declare-datatypes ((array!85509 0))(
  ( (array!85510 (arr!41251 (Array (_ BitVec 32) ValueCell!16229)) (size!41802 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85509)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85511 0))(
  ( (array!85512 (arr!41252 (Array (_ BitVec 32) (_ BitVec 64))) (size!41803 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85511)

(assert (=> b!1290255 (= res!857227 (and (= (size!41802 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41803 _keys!1741) (size!41802 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290256 () Bool)

(declare-fun res!857231 () Bool)

(assert (=> b!1290256 (=> (not res!857231) (not e!736650))))

(declare-datatypes ((List!29438 0))(
  ( (Nil!29435) (Cons!29434 (h!30643 (_ BitVec 64)) (t!43009 List!29438)) )
))
(declare-fun arrayNoDuplicates!0 (array!85511 (_ BitVec 32) List!29438) Bool)

(assert (=> b!1290256 (= res!857231 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29435))))

(declare-fun b!1290257 () Bool)

(declare-fun res!857228 () Bool)

(assert (=> b!1290257 (=> (not res!857228) (not e!736650))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290257 (= res!857228 (not (validKeyInArray!0 (select (arr!41252 _keys!1741) from!2144))))))

(declare-fun b!1290259 () Bool)

(declare-fun res!857232 () Bool)

(assert (=> b!1290259 (=> (not res!857232) (not e!736650))))

(assert (=> b!1290259 (= res!857232 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41803 _keys!1741))))))

(declare-fun mapNonEmpty!52943 () Bool)

(declare-fun mapRes!52943 () Bool)

(declare-fun tp!100965 () Bool)

(declare-fun e!736651 () Bool)

(assert (=> mapNonEmpty!52943 (= mapRes!52943 (and tp!100965 e!736651))))

(declare-fun mapRest!52943 () (Array (_ BitVec 32) ValueCell!16229))

(declare-fun mapKey!52943 () (_ BitVec 32))

(declare-fun mapValue!52943 () ValueCell!16229)

(assert (=> mapNonEmpty!52943 (= (arr!41251 _values!1445) (store mapRest!52943 mapKey!52943 mapValue!52943))))

(declare-fun b!1290260 () Bool)

(declare-fun e!736647 () Bool)

(declare-fun e!736649 () Bool)

(assert (=> b!1290260 (= e!736647 (and e!736649 mapRes!52943))))

(declare-fun condMapEmpty!52943 () Bool)

(declare-fun mapDefault!52943 () ValueCell!16229)

