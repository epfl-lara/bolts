; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84772 () Bool)

(assert start!84772)

(declare-fun b_free!20099 () Bool)

(declare-fun b_next!20099 () Bool)

(assert (=> start!84772 (= b_free!20099 (not b_next!20099))))

(declare-fun tp!70097 () Bool)

(declare-fun b_and!32291 () Bool)

(assert (=> start!84772 (= tp!70097 b_and!32291)))

(declare-fun mapNonEmpty!37025 () Bool)

(declare-fun mapRes!37025 () Bool)

(declare-fun tp!70096 () Bool)

(declare-fun e!558788 () Bool)

(assert (=> mapNonEmpty!37025 (= mapRes!37025 (and tp!70096 e!558788))))

(declare-datatypes ((V!36069 0))(
  ( (V!36070 (val!11708 Int)) )
))
(declare-datatypes ((ValueCell!11176 0))(
  ( (ValueCellFull!11176 (v!14281 V!36069)) (EmptyCell!11176) )
))
(declare-fun mapValue!37025 () ValueCell!11176)

(declare-datatypes ((array!62579 0))(
  ( (array!62580 (arr!30136 (Array (_ BitVec 32) ValueCell!11176)) (size!30616 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62579)

(declare-fun mapKey!37025 () (_ BitVec 32))

(declare-fun mapRest!37025 () (Array (_ BitVec 32) ValueCell!11176))

(assert (=> mapNonEmpty!37025 (= (arr!30136 _values!1278) (store mapRest!37025 mapKey!37025 mapValue!37025))))

(declare-fun res!662601 () Bool)

(declare-fun e!558790 () Bool)

(assert (=> start!84772 (=> (not res!662601) (not e!558790))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84772 (= res!662601 (validMask!0 mask!1948))))

(assert (=> start!84772 e!558790))

(assert (=> start!84772 true))

(declare-fun tp_is_empty!23315 () Bool)

(assert (=> start!84772 tp_is_empty!23315))

(declare-fun e!558792 () Bool)

(declare-fun array_inv!23139 (array!62579) Bool)

(assert (=> start!84772 (and (array_inv!23139 _values!1278) e!558792)))

(assert (=> start!84772 tp!70097))

(declare-datatypes ((array!62581 0))(
  ( (array!62582 (arr!30137 (Array (_ BitVec 32) (_ BitVec 64))) (size!30617 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62581)

(declare-fun array_inv!23140 (array!62581) Bool)

(assert (=> start!84772 (array_inv!23140 _keys!1544)))

(declare-fun b!990892 () Bool)

(assert (=> b!990892 (= e!558788 tp_is_empty!23315)))

(declare-fun b!990893 () Bool)

(declare-fun e!558791 () Bool)

(assert (=> b!990893 (= e!558791 tp_is_empty!23315)))

(declare-fun b!990894 () Bool)

(assert (=> b!990894 (= e!558792 (and e!558791 mapRes!37025))))

(declare-fun condMapEmpty!37025 () Bool)

(declare-fun mapDefault!37025 () ValueCell!11176)

