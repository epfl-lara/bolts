; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113336 () Bool)

(assert start!113336)

(declare-fun b_free!31351 () Bool)

(declare-fun b_next!31351 () Bool)

(assert (=> start!113336 (= b_free!31351 (not b_next!31351))))

(declare-fun tp!109859 () Bool)

(declare-fun b_and!50583 () Bool)

(assert (=> start!113336 (= tp!109859 b_and!50583)))

(declare-fun b!1344202 () Bool)

(declare-fun e!765086 () Bool)

(declare-fun tp_is_empty!37351 () Bool)

(assert (=> b!1344202 (= e!765086 tp_is_empty!37351)))

(declare-fun res!891932 () Bool)

(declare-fun e!765085 () Bool)

(assert (=> start!113336 (=> (not res!891932) (not e!765085))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113336 (= res!891932 (validMask!0 mask!1977))))

(assert (=> start!113336 e!765085))

(assert (=> start!113336 tp_is_empty!37351))

(assert (=> start!113336 true))

(declare-datatypes ((array!91499 0))(
  ( (array!91500 (arr!44201 (Array (_ BitVec 32) (_ BitVec 64))) (size!44752 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91499)

(declare-fun array_inv!33231 (array!91499) Bool)

(assert (=> start!113336 (array_inv!33231 _keys!1571)))

(declare-datatypes ((V!54905 0))(
  ( (V!54906 (val!18750 Int)) )
))
(declare-datatypes ((ValueCell!17777 0))(
  ( (ValueCellFull!17777 (v!21396 V!54905)) (EmptyCell!17777) )
))
(declare-datatypes ((array!91501 0))(
  ( (array!91502 (arr!44202 (Array (_ BitVec 32) ValueCell!17777)) (size!44753 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91501)

(declare-fun e!765083 () Bool)

(declare-fun array_inv!33232 (array!91501) Bool)

(assert (=> start!113336 (and (array_inv!33232 _values!1303) e!765083)))

(assert (=> start!113336 tp!109859))

(declare-fun b!1344203 () Bool)

(declare-fun res!891933 () Bool)

(assert (=> b!1344203 (=> (not res!891933) (not e!765085))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344203 (= res!891933 (and (= (size!44753 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44752 _keys!1571) (size!44753 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57733 () Bool)

(declare-fun mapRes!57733 () Bool)

(declare-fun tp!109858 () Bool)

(declare-fun e!765084 () Bool)

(assert (=> mapNonEmpty!57733 (= mapRes!57733 (and tp!109858 e!765084))))

(declare-fun mapValue!57733 () ValueCell!17777)

(declare-fun mapRest!57733 () (Array (_ BitVec 32) ValueCell!17777))

(declare-fun mapKey!57733 () (_ BitVec 32))

(assert (=> mapNonEmpty!57733 (= (arr!44202 _values!1303) (store mapRest!57733 mapKey!57733 mapValue!57733))))

(declare-fun b!1344204 () Bool)

(assert (=> b!1344204 (= e!765084 tp_is_empty!37351)))

(declare-fun b!1344205 () Bool)

(assert (=> b!1344205 (= e!765083 (and e!765086 mapRes!57733))))

(declare-fun condMapEmpty!57733 () Bool)

(declare-fun mapDefault!57733 () ValueCell!17777)

