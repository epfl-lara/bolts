; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109060 () Bool)

(assert start!109060)

(declare-fun b_free!28513 () Bool)

(declare-fun b_next!28513 () Bool)

(assert (=> start!109060 (= b_free!28513 (not b_next!28513))))

(declare-fun tp!100658 () Bool)

(declare-fun b_and!46613 () Bool)

(assert (=> start!109060 (= tp!100658 b_and!46613)))

(declare-fun b!1288419 () Bool)

(declare-fun res!855853 () Bool)

(declare-fun e!735732 () Bool)

(assert (=> b!1288419 (=> (not res!855853) (not e!735732))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50641 0))(
  ( (V!50642 (val!17151 Int)) )
))
(declare-datatypes ((ValueCell!16178 0))(
  ( (ValueCellFull!16178 (v!19752 V!50641)) (EmptyCell!16178) )
))
(declare-datatypes ((array!85307 0))(
  ( (array!85308 (arr!41150 (Array (_ BitVec 32) ValueCell!16178)) (size!41701 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85307)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85309 0))(
  ( (array!85310 (arr!41151 (Array (_ BitVec 32) (_ BitVec 64))) (size!41702 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85309)

(assert (=> b!1288419 (= res!855853 (and (= (size!41701 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41702 _keys!1741) (size!41701 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288420 () Bool)

(declare-fun res!855854 () Bool)

(assert (=> b!1288420 (=> (not res!855854) (not e!735732))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1288420 (= res!855854 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41702 _keys!1741))))))

(declare-fun b!1288421 () Bool)

(declare-fun res!855855 () Bool)

(assert (=> b!1288421 (=> (not res!855855) (not e!735732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288421 (= res!855855 (not (validKeyInArray!0 (select (arr!41151 _keys!1741) from!2144))))))

(declare-fun b!1288422 () Bool)

(declare-fun res!855849 () Bool)

(assert (=> b!1288422 (=> (not res!855849) (not e!735732))))

(declare-datatypes ((List!29351 0))(
  ( (Nil!29348) (Cons!29347 (h!30556 (_ BitVec 64)) (t!42922 List!29351)) )
))
(declare-fun arrayNoDuplicates!0 (array!85309 (_ BitVec 32) List!29351) Bool)

(assert (=> b!1288422 (= res!855849 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29348))))

(declare-fun b!1288423 () Bool)

(declare-fun e!735728 () Bool)

(declare-fun e!735733 () Bool)

(declare-fun mapRes!52790 () Bool)

(assert (=> b!1288423 (= e!735728 (and e!735733 mapRes!52790))))

(declare-fun condMapEmpty!52790 () Bool)

(declare-fun mapDefault!52790 () ValueCell!16178)

