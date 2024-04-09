; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133606 () Bool)

(assert start!133606)

(declare-fun b_free!31991 () Bool)

(declare-fun b_next!31991 () Bool)

(assert (=> start!133606 (= b_free!31991 (not b_next!31991))))

(declare-fun tp!113097 () Bool)

(declare-fun b_and!51503 () Bool)

(assert (=> start!133606 (= tp!113097 b_and!51503)))

(declare-fun b!1561519 () Bool)

(declare-fun res!1067764 () Bool)

(declare-fun e!870210 () Bool)

(assert (=> b!1561519 (=> (not res!1067764) (not e!870210))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103985 0))(
  ( (array!103986 (arr!50180 (Array (_ BitVec 32) (_ BitVec 64))) (size!50731 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103985)

(assert (=> b!1561519 (= res!1067764 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50731 _keys!637)) (bvslt from!782 (size!50731 _keys!637))))))

(declare-fun b!1561520 () Bool)

(declare-fun res!1067768 () Bool)

(assert (=> b!1561520 (=> (not res!1067768) (not e!870210))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103985 (_ BitVec 32)) Bool)

(assert (=> b!1561520 (= res!1067768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561521 () Bool)

(declare-fun res!1067767 () Bool)

(assert (=> b!1561521 (=> (not res!1067767) (not e!870210))))

(declare-datatypes ((List!36602 0))(
  ( (Nil!36599) (Cons!36598 (h!38045 (_ BitVec 64)) (t!51390 List!36602)) )
))
(declare-fun arrayNoDuplicates!0 (array!103985 (_ BitVec 32) List!36602) Bool)

(assert (=> b!1561521 (= res!1067767 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36599))))

(declare-fun b!1561522 () Bool)

(declare-fun e!870208 () Bool)

(declare-fun tp_is_empty!38657 () Bool)

(assert (=> b!1561522 (= e!870208 tp_is_empty!38657)))

(declare-fun b!1561523 () Bool)

(declare-fun res!1067765 () Bool)

(assert (=> b!1561523 (=> (not res!1067765) (not e!870210))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59749 0))(
  ( (V!59750 (val!19412 Int)) )
))
(declare-datatypes ((ValueCell!18298 0))(
  ( (ValueCellFull!18298 (v!22161 V!59749)) (EmptyCell!18298) )
))
(declare-datatypes ((array!103987 0))(
  ( (array!103988 (arr!50181 (Array (_ BitVec 32) ValueCell!18298)) (size!50732 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103987)

(assert (=> b!1561523 (= res!1067765 (and (= (size!50732 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50731 _keys!637) (size!50732 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561524 () Bool)

(declare-fun res!1067763 () Bool)

(assert (=> b!1561524 (=> (not res!1067763) (not e!870210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561524 (= res!1067763 (validKeyInArray!0 (select (arr!50180 _keys!637) from!782)))))

(declare-fun b!1561525 () Bool)

(declare-fun e!870209 () Bool)

(assert (=> b!1561525 (= e!870209 tp_is_empty!38657)))

(declare-fun mapNonEmpty!59361 () Bool)

(declare-fun mapRes!59361 () Bool)

(declare-fun tp!113098 () Bool)

(assert (=> mapNonEmpty!59361 (= mapRes!59361 (and tp!113098 e!870209))))

(declare-fun mapKey!59361 () (_ BitVec 32))

(declare-fun mapRest!59361 () (Array (_ BitVec 32) ValueCell!18298))

(declare-fun mapValue!59361 () ValueCell!18298)

(assert (=> mapNonEmpty!59361 (= (arr!50181 _values!487) (store mapRest!59361 mapKey!59361 mapValue!59361))))

(declare-fun b!1561526 () Bool)

(declare-fun e!870212 () Bool)

(assert (=> b!1561526 (= e!870212 (and e!870208 mapRes!59361))))

(declare-fun condMapEmpty!59361 () Bool)

(declare-fun mapDefault!59361 () ValueCell!18298)

