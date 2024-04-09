; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112982 () Bool)

(assert start!112982)

(declare-fun mapNonEmpty!57217 () Bool)

(declare-fun mapRes!57217 () Bool)

(declare-fun tp!108917 () Bool)

(declare-fun e!762485 () Bool)

(assert (=> mapNonEmpty!57217 (= mapRes!57217 (and tp!108917 e!762485))))

(declare-datatypes ((V!54449 0))(
  ( (V!54450 (val!18579 Int)) )
))
(declare-datatypes ((ValueCell!17606 0))(
  ( (ValueCellFull!17606 (v!21224 V!54449)) (EmptyCell!17606) )
))
(declare-fun mapRest!57217 () (Array (_ BitVec 32) ValueCell!17606))

(declare-fun mapKey!57217 () (_ BitVec 32))

(declare-fun mapValue!57217 () ValueCell!17606)

(declare-datatypes ((array!90849 0))(
  ( (array!90850 (arr!43877 (Array (_ BitVec 32) ValueCell!17606)) (size!44428 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90849)

(assert (=> mapNonEmpty!57217 (= (arr!43877 _values!1303) (store mapRest!57217 mapKey!57217 mapValue!57217))))

(declare-fun b!1338839 () Bool)

(declare-fun res!888317 () Bool)

(declare-fun e!762482 () Bool)

(assert (=> b!1338839 (=> (not res!888317) (not e!762482))))

(declare-datatypes ((List!31264 0))(
  ( (Nil!31261) (Cons!31260 (h!32469 (_ BitVec 64)) (t!45603 List!31264)) )
))
(declare-fun noDuplicate!2103 (List!31264) Bool)

(assert (=> b!1338839 (= res!888317 (noDuplicate!2103 Nil!31261))))

(declare-fun b!1338840 () Bool)

(declare-fun e!762486 () Bool)

(assert (=> b!1338840 (= e!762482 e!762486)))

(declare-fun res!888316 () Bool)

(assert (=> b!1338840 (=> res!888316 e!762486)))

(declare-fun contains!9009 (List!31264 (_ BitVec 64)) Bool)

(assert (=> b!1338840 (= res!888316 (contains!9009 Nil!31261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338841 () Bool)

(declare-fun e!762481 () Bool)

(declare-fun tp_is_empty!37009 () Bool)

(assert (=> b!1338841 (= e!762481 tp_is_empty!37009)))

(declare-fun b!1338842 () Bool)

(assert (=> b!1338842 (= e!762485 tp_is_empty!37009)))

(declare-fun b!1338843 () Bool)

(declare-fun res!888314 () Bool)

(assert (=> b!1338843 (=> (not res!888314) (not e!762482))))

(declare-datatypes ((array!90851 0))(
  ( (array!90852 (arr!43878 (Array (_ BitVec 32) (_ BitVec 64))) (size!44429 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90851)

(assert (=> b!1338843 (= res!888314 (and (bvsle #b00000000000000000000000000000000 (size!44429 _keys!1571)) (bvslt (size!44429 _keys!1571) #b01111111111111111111111111111111)))))

(declare-fun b!1338844 () Bool)

(declare-fun res!888313 () Bool)

(assert (=> b!1338844 (=> (not res!888313) (not e!762482))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90851 (_ BitVec 32)) Bool)

(assert (=> b!1338844 (= res!888313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1338845 () Bool)

(declare-fun e!762483 () Bool)

(assert (=> b!1338845 (= e!762483 (and e!762481 mapRes!57217))))

(declare-fun condMapEmpty!57217 () Bool)

(declare-fun mapDefault!57217 () ValueCell!17606)

