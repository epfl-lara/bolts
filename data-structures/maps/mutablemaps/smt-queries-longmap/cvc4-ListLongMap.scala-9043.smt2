; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109082 () Bool)

(assert start!109082)

(declare-fun b_free!28535 () Bool)

(declare-fun b_next!28535 () Bool)

(assert (=> start!109082 (= b_free!28535 (not b_next!28535))))

(declare-fun tp!100725 () Bool)

(declare-fun b_and!46635 () Bool)

(assert (=> start!109082 (= tp!100725 b_and!46635)))

(declare-fun b!1288815 () Bool)

(declare-fun res!856150 () Bool)

(declare-fun e!735926 () Bool)

(assert (=> b!1288815 (=> (not res!856150) (not e!735926))))

(declare-datatypes ((array!85349 0))(
  ( (array!85350 (arr!41171 (Array (_ BitVec 32) (_ BitVec 64))) (size!41722 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85349)

(declare-datatypes ((List!29368 0))(
  ( (Nil!29365) (Cons!29364 (h!30573 (_ BitVec 64)) (t!42939 List!29368)) )
))
(declare-fun arrayNoDuplicates!0 (array!85349 (_ BitVec 32) List!29368) Bool)

(assert (=> b!1288815 (= res!856150 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29365))))

(declare-fun mapNonEmpty!52823 () Bool)

(declare-fun mapRes!52823 () Bool)

(declare-fun tp!100724 () Bool)

(declare-fun e!735929 () Bool)

(assert (=> mapNonEmpty!52823 (= mapRes!52823 (and tp!100724 e!735929))))

(declare-datatypes ((V!50669 0))(
  ( (V!50670 (val!17162 Int)) )
))
(declare-datatypes ((ValueCell!16189 0))(
  ( (ValueCellFull!16189 (v!19763 V!50669)) (EmptyCell!16189) )
))
(declare-fun mapValue!52823 () ValueCell!16189)

(declare-fun mapKey!52823 () (_ BitVec 32))

(declare-datatypes ((array!85351 0))(
  ( (array!85352 (arr!41172 (Array (_ BitVec 32) ValueCell!16189)) (size!41723 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85351)

(declare-fun mapRest!52823 () (Array (_ BitVec 32) ValueCell!16189))

(assert (=> mapNonEmpty!52823 (= (arr!41172 _values!1445) (store mapRest!52823 mapKey!52823 mapValue!52823))))

(declare-fun b!1288816 () Bool)

(declare-fun res!856145 () Bool)

(assert (=> b!1288816 (=> (not res!856145) (not e!735926))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288816 (= res!856145 (not (validKeyInArray!0 (select (arr!41171 _keys!1741) from!2144))))))

(declare-fun b!1288817 () Bool)

(declare-fun res!856151 () Bool)

(assert (=> b!1288817 (=> (not res!856151) (not e!735926))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85349 (_ BitVec 32)) Bool)

(assert (=> b!1288817 (= res!856151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288818 () Bool)

(declare-fun e!735927 () Bool)

(declare-fun e!735928 () Bool)

(assert (=> b!1288818 (= e!735927 (and e!735928 mapRes!52823))))

(declare-fun condMapEmpty!52823 () Bool)

(declare-fun mapDefault!52823 () ValueCell!16189)

