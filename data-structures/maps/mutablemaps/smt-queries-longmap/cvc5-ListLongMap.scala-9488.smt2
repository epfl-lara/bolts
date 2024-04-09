; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112572 () Bool)

(assert start!112572)

(declare-fun b_free!30931 () Bool)

(declare-fun b_next!30931 () Bool)

(assert (=> start!112572 (= b_free!30931 (not b_next!30931))))

(declare-fun tp!108430 () Bool)

(declare-fun b_and!49849 () Bool)

(assert (=> start!112572 (= tp!108430 b_and!49849)))

(declare-fun b!1334785 () Bool)

(declare-fun e!760240 () Bool)

(declare-fun tp_is_empty!36841 () Bool)

(assert (=> b!1334785 (= e!760240 tp_is_empty!36841)))

(declare-fun b!1334786 () Bool)

(declare-fun res!885959 () Bool)

(declare-fun e!760236 () Bool)

(assert (=> b!1334786 (=> (not res!885959) (not e!760236))))

(declare-datatypes ((array!90521 0))(
  ( (array!90522 (arr!43722 (Array (_ BitVec 32) (_ BitVec 64))) (size!44273 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90521)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90521 (_ BitVec 32)) Bool)

(assert (=> b!1334786 (= res!885959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!885958 () Bool)

(assert (=> start!112572 (=> (not res!885958) (not e!760236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112572 (= res!885958 (validMask!0 mask!1998))))

(assert (=> start!112572 e!760236))

(declare-datatypes ((V!54225 0))(
  ( (V!54226 (val!18495 Int)) )
))
(declare-datatypes ((ValueCell!17522 0))(
  ( (ValueCellFull!17522 (v!21130 V!54225)) (EmptyCell!17522) )
))
(declare-datatypes ((array!90523 0))(
  ( (array!90524 (arr!43723 (Array (_ BitVec 32) ValueCell!17522)) (size!44274 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90523)

(declare-fun e!760238 () Bool)

(declare-fun array_inv!32907 (array!90523) Bool)

(assert (=> start!112572 (and (array_inv!32907 _values!1320) e!760238)))

(assert (=> start!112572 true))

(declare-fun array_inv!32908 (array!90521) Bool)

(assert (=> start!112572 (array_inv!32908 _keys!1590)))

(assert (=> start!112572 tp!108430))

(assert (=> start!112572 tp_is_empty!36841))

(declare-fun b!1334787 () Bool)

(declare-fun mapRes!56935 () Bool)

(assert (=> b!1334787 (= e!760238 (and e!760240 mapRes!56935))))

(declare-fun condMapEmpty!56935 () Bool)

(declare-fun mapDefault!56935 () ValueCell!17522)

