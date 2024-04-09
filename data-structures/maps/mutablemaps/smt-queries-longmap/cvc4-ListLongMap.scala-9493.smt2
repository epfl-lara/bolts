; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112606 () Bool)

(assert start!112606)

(declare-fun b_free!30965 () Bool)

(declare-fun b_next!30965 () Bool)

(assert (=> start!112606 (= b_free!30965 (not b_next!30965))))

(declare-fun tp!108533 () Bool)

(declare-fun b_and!49883 () Bool)

(assert (=> start!112606 (= tp!108533 b_and!49883)))

(declare-fun b!1335220 () Bool)

(declare-fun res!886241 () Bool)

(declare-fun e!760495 () Bool)

(assert (=> b!1335220 (=> (not res!886241) (not e!760495))))

(declare-datatypes ((array!90587 0))(
  ( (array!90588 (arr!43755 (Array (_ BitVec 32) (_ BitVec 64))) (size!44306 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90587)

(declare-datatypes ((List!31196 0))(
  ( (Nil!31193) (Cons!31192 (h!32401 (_ BitVec 64)) (t!45467 List!31196)) )
))
(declare-fun arrayNoDuplicates!0 (array!90587 (_ BitVec 32) List!31196) Bool)

(assert (=> b!1335220 (= res!886241 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31193))))

(declare-fun res!886240 () Bool)

(assert (=> start!112606 (=> (not res!886240) (not e!760495))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112606 (= res!886240 (validMask!0 mask!1998))))

(assert (=> start!112606 e!760495))

(declare-datatypes ((V!54269 0))(
  ( (V!54270 (val!18512 Int)) )
))
(declare-datatypes ((ValueCell!17539 0))(
  ( (ValueCellFull!17539 (v!21147 V!54269)) (EmptyCell!17539) )
))
(declare-datatypes ((array!90589 0))(
  ( (array!90590 (arr!43756 (Array (_ BitVec 32) ValueCell!17539)) (size!44307 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90589)

(declare-fun e!760491 () Bool)

(declare-fun array_inv!32933 (array!90589) Bool)

(assert (=> start!112606 (and (array_inv!32933 _values!1320) e!760491)))

(assert (=> start!112606 true))

(declare-fun array_inv!32934 (array!90587) Bool)

(assert (=> start!112606 (array_inv!32934 _keys!1590)))

(assert (=> start!112606 tp!108533))

(declare-fun tp_is_empty!36875 () Bool)

(assert (=> start!112606 tp_is_empty!36875))

(declare-fun b!1335221 () Bool)

(declare-fun e!760494 () Bool)

(declare-fun mapRes!56986 () Bool)

(assert (=> b!1335221 (= e!760491 (and e!760494 mapRes!56986))))

(declare-fun condMapEmpty!56986 () Bool)

(declare-fun mapDefault!56986 () ValueCell!17539)

