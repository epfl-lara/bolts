; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112426 () Bool)

(assert start!112426)

(declare-fun b_free!30785 () Bool)

(declare-fun b_next!30785 () Bool)

(assert (=> start!112426 (= b_free!30785 (not b_next!30785))))

(declare-fun tp!107992 () Bool)

(declare-fun b_and!49635 () Bool)

(assert (=> start!112426 (= tp!107992 b_and!49635)))

(declare-fun b!1332376 () Bool)

(declare-fun res!884276 () Bool)

(declare-fun e!759062 () Bool)

(assert (=> b!1332376 (=> (not res!884276) (not e!759062))))

(declare-datatypes ((array!90239 0))(
  ( (array!90240 (arr!43581 (Array (_ BitVec 32) (_ BitVec 64))) (size!44132 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90239)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90239 (_ BitVec 32)) Bool)

(assert (=> b!1332376 (= res!884276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332377 () Bool)

(declare-fun res!884280 () Bool)

(assert (=> b!1332377 (=> (not res!884280) (not e!759062))))

(declare-datatypes ((List!31070 0))(
  ( (Nil!31067) (Cons!31066 (h!32275 (_ BitVec 64)) (t!45275 List!31070)) )
))
(declare-fun arrayNoDuplicates!0 (array!90239 (_ BitVec 32) List!31070) Bool)

(assert (=> b!1332377 (= res!884280 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31067))))

(declare-fun b!1332378 () Bool)

(declare-fun res!884281 () Bool)

(assert (=> b!1332378 (=> (not res!884281) (not e!759062))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332378 (= res!884281 (not (= (select (arr!43581 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1332379 () Bool)

(declare-fun e!759064 () Bool)

(declare-fun e!759063 () Bool)

(declare-fun mapRes!56716 () Bool)

(assert (=> b!1332379 (= e!759064 (and e!759063 mapRes!56716))))

(declare-fun condMapEmpty!56716 () Bool)

(declare-datatypes ((V!54029 0))(
  ( (V!54030 (val!18422 Int)) )
))
(declare-datatypes ((ValueCell!17449 0))(
  ( (ValueCellFull!17449 (v!21057 V!54029)) (EmptyCell!17449) )
))
(declare-datatypes ((array!90241 0))(
  ( (array!90242 (arr!43582 (Array (_ BitVec 32) ValueCell!17449)) (size!44133 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90241)

(declare-fun mapDefault!56716 () ValueCell!17449)

