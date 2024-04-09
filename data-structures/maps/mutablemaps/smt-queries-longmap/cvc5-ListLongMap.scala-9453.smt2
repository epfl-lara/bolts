; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112362 () Bool)

(assert start!112362)

(declare-fun b_free!30721 () Bool)

(declare-fun b_next!30721 () Bool)

(assert (=> start!112362 (= b_free!30721 (not b_next!30721))))

(declare-fun tp!107801 () Bool)

(declare-fun b_and!49507 () Bool)

(assert (=> start!112362 (= tp!107801 b_and!49507)))

(declare-fun res!883412 () Bool)

(declare-fun e!758584 () Bool)

(assert (=> start!112362 (=> (not res!883412) (not e!758584))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112362 (= res!883412 (validMask!0 mask!1998))))

(assert (=> start!112362 e!758584))

(declare-datatypes ((V!53945 0))(
  ( (V!53946 (val!18390 Int)) )
))
(declare-datatypes ((ValueCell!17417 0))(
  ( (ValueCellFull!17417 (v!21025 V!53945)) (EmptyCell!17417) )
))
(declare-datatypes ((array!90113 0))(
  ( (array!90114 (arr!43518 (Array (_ BitVec 32) ValueCell!17417)) (size!44069 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90113)

(declare-fun e!758582 () Bool)

(declare-fun array_inv!32779 (array!90113) Bool)

(assert (=> start!112362 (and (array_inv!32779 _values!1320) e!758582)))

(assert (=> start!112362 true))

(declare-datatypes ((array!90115 0))(
  ( (array!90116 (arr!43519 (Array (_ BitVec 32) (_ BitVec 64))) (size!44070 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90115)

(declare-fun array_inv!32780 (array!90115) Bool)

(assert (=> start!112362 (array_inv!32780 _keys!1590)))

(assert (=> start!112362 tp!107801))

(declare-fun tp_is_empty!36631 () Bool)

(assert (=> start!112362 tp_is_empty!36631))

(declare-fun mapNonEmpty!56620 () Bool)

(declare-fun mapRes!56620 () Bool)

(declare-fun tp!107800 () Bool)

(declare-fun e!758581 () Bool)

(assert (=> mapNonEmpty!56620 (= mapRes!56620 (and tp!107800 e!758581))))

(declare-fun mapRest!56620 () (Array (_ BitVec 32) ValueCell!17417))

(declare-fun mapKey!56620 () (_ BitVec 32))

(declare-fun mapValue!56620 () ValueCell!17417)

(assert (=> mapNonEmpty!56620 (= (arr!43518 _values!1320) (store mapRest!56620 mapKey!56620 mapValue!56620))))

(declare-fun b!1331160 () Bool)

(declare-fun res!883416 () Bool)

(assert (=> b!1331160 (=> (not res!883416) (not e!758584))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331160 (= res!883416 (validKeyInArray!0 (select (arr!43519 _keys!1590) from!1980)))))

(declare-fun b!1331161 () Bool)

(assert (=> b!1331161 (= e!758581 tp_is_empty!36631)))

(declare-fun b!1331162 () Bool)

(declare-fun res!883417 () Bool)

(assert (=> b!1331162 (=> (not res!883417) (not e!758584))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331162 (= res!883417 (and (= (size!44069 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44070 _keys!1590) (size!44069 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331163 () Bool)

(declare-fun e!758580 () Bool)

(assert (=> b!1331163 (= e!758582 (and e!758580 mapRes!56620))))

(declare-fun condMapEmpty!56620 () Bool)

(declare-fun mapDefault!56620 () ValueCell!17417)

