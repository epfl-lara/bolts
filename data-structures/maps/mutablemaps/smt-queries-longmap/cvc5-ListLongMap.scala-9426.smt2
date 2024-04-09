; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112200 () Bool)

(assert start!112200)

(declare-fun b_free!30559 () Bool)

(declare-fun b_next!30559 () Bool)

(assert (=> start!112200 (= b_free!30559 (not b_next!30559))))

(declare-fun tp!107315 () Bool)

(declare-fun b_and!49219 () Bool)

(assert (=> start!112200 (= tp!107315 b_and!49219)))

(declare-fun b!1328299 () Bool)

(declare-fun res!881405 () Bool)

(declare-fun e!757366 () Bool)

(assert (=> b!1328299 (=> (not res!881405) (not e!757366))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89801 0))(
  ( (array!89802 (arr!43362 (Array (_ BitVec 32) (_ BitVec 64))) (size!43913 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89801)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328299 (= res!881405 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43913 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!881408 () Bool)

(assert (=> start!112200 (=> (not res!881408) (not e!757366))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112200 (= res!881408 (validMask!0 mask!1998))))

(assert (=> start!112200 e!757366))

(declare-datatypes ((V!53729 0))(
  ( (V!53730 (val!18309 Int)) )
))
(declare-datatypes ((ValueCell!17336 0))(
  ( (ValueCellFull!17336 (v!20944 V!53729)) (EmptyCell!17336) )
))
(declare-datatypes ((array!89803 0))(
  ( (array!89804 (arr!43363 (Array (_ BitVec 32) ValueCell!17336)) (size!43914 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89803)

(declare-fun e!757369 () Bool)

(declare-fun array_inv!32671 (array!89803) Bool)

(assert (=> start!112200 (and (array_inv!32671 _values!1320) e!757369)))

(assert (=> start!112200 true))

(declare-fun array_inv!32672 (array!89801) Bool)

(assert (=> start!112200 (array_inv!32672 _keys!1590)))

(assert (=> start!112200 tp!107315))

(declare-fun tp_is_empty!36469 () Bool)

(assert (=> start!112200 tp_is_empty!36469))

(declare-fun b!1328300 () Bool)

(declare-fun e!757365 () Bool)

(assert (=> b!1328300 (= e!757365 tp_is_empty!36469)))

(declare-fun b!1328301 () Bool)

(declare-fun res!881407 () Bool)

(assert (=> b!1328301 (=> (not res!881407) (not e!757366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89801 (_ BitVec 32)) Bool)

(assert (=> b!1328301 (= res!881407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328302 () Bool)

(declare-fun res!881406 () Bool)

(assert (=> b!1328302 (=> (not res!881406) (not e!757366))))

(declare-datatypes ((List!30904 0))(
  ( (Nil!30901) (Cons!30900 (h!32109 (_ BitVec 64)) (t!44917 List!30904)) )
))
(declare-fun arrayNoDuplicates!0 (array!89801 (_ BitVec 32) List!30904) Bool)

(assert (=> b!1328302 (= res!881406 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30901))))

(declare-fun mapIsEmpty!56377 () Bool)

(declare-fun mapRes!56377 () Bool)

(assert (=> mapIsEmpty!56377 mapRes!56377))

(declare-fun b!1328303 () Bool)

(declare-fun e!757367 () Bool)

(assert (=> b!1328303 (= e!757367 tp_is_empty!36469)))

(declare-fun b!1328304 () Bool)

(assert (=> b!1328304 (= e!757369 (and e!757367 mapRes!56377))))

(declare-fun condMapEmpty!56377 () Bool)

(declare-fun mapDefault!56377 () ValueCell!17336)

