; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112552 () Bool)

(assert start!112552)

(declare-fun b_free!30911 () Bool)

(declare-fun b_next!30911 () Bool)

(assert (=> start!112552 (= b_free!30911 (not b_next!30911))))

(declare-fun tp!108371 () Bool)

(declare-fun b_and!49829 () Bool)

(assert (=> start!112552 (= tp!108371 b_and!49829)))

(declare-fun b!1334545 () Bool)

(declare-fun e!760087 () Bool)

(declare-fun tp_is_empty!36821 () Bool)

(assert (=> b!1334545 (= e!760087 tp_is_empty!36821)))

(declare-fun b!1334546 () Bool)

(declare-fun e!760086 () Bool)

(declare-fun mapRes!56905 () Bool)

(assert (=> b!1334546 (= e!760086 (and e!760087 mapRes!56905))))

(declare-fun condMapEmpty!56905 () Bool)

(declare-datatypes ((V!54197 0))(
  ( (V!54198 (val!18485 Int)) )
))
(declare-datatypes ((ValueCell!17512 0))(
  ( (ValueCellFull!17512 (v!21120 V!54197)) (EmptyCell!17512) )
))
(declare-datatypes ((array!90487 0))(
  ( (array!90488 (arr!43705 (Array (_ BitVec 32) ValueCell!17512)) (size!44256 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90487)

(declare-fun mapDefault!56905 () ValueCell!17512)

