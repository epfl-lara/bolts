; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112608 () Bool)

(assert start!112608)

(declare-fun b_free!30967 () Bool)

(declare-fun b_next!30967 () Bool)

(assert (=> start!112608 (= b_free!30967 (not b_next!30967))))

(declare-fun tp!108539 () Bool)

(declare-fun b_and!49885 () Bool)

(assert (=> start!112608 (= tp!108539 b_and!49885)))

(declare-fun b!1335244 () Bool)

(declare-fun e!760510 () Bool)

(declare-fun tp_is_empty!36877 () Bool)

(assert (=> b!1335244 (= e!760510 tp_is_empty!36877)))

(declare-fun b!1335245 () Bool)

(declare-fun res!886259 () Bool)

(declare-fun e!760509 () Bool)

(assert (=> b!1335245 (=> (not res!886259) (not e!760509))))

(declare-datatypes ((V!54273 0))(
  ( (V!54274 (val!18513 Int)) )
))
(declare-datatypes ((ValueCell!17540 0))(
  ( (ValueCellFull!17540 (v!21148 V!54273)) (EmptyCell!17540) )
))
(declare-datatypes ((array!90591 0))(
  ( (array!90592 (arr!43757 (Array (_ BitVec 32) ValueCell!17540)) (size!44308 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90591)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90593 0))(
  ( (array!90594 (arr!43758 (Array (_ BitVec 32) (_ BitVec 64))) (size!44309 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90593)

(assert (=> b!1335245 (= res!886259 (and (= (size!44308 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44309 _keys!1590) (size!44308 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335246 () Bool)

(declare-fun e!760507 () Bool)

(assert (=> b!1335246 (= e!760507 tp_is_empty!36877)))

(declare-fun mapIsEmpty!56989 () Bool)

(declare-fun mapRes!56989 () Bool)

(assert (=> mapIsEmpty!56989 mapRes!56989))

(declare-fun mapNonEmpty!56989 () Bool)

(declare-fun tp!108538 () Bool)

(assert (=> mapNonEmpty!56989 (= mapRes!56989 (and tp!108538 e!760507))))

(declare-fun mapRest!56989 () (Array (_ BitVec 32) ValueCell!17540))

(declare-fun mapValue!56989 () ValueCell!17540)

(declare-fun mapKey!56989 () (_ BitVec 32))

(assert (=> mapNonEmpty!56989 (= (arr!43757 _values!1320) (store mapRest!56989 mapKey!56989 mapValue!56989))))

(declare-fun b!1335247 () Bool)

(declare-fun res!886258 () Bool)

(assert (=> b!1335247 (=> (not res!886258) (not e!760509))))

(declare-datatypes ((List!31197 0))(
  ( (Nil!31194) (Cons!31193 (h!32402 (_ BitVec 64)) (t!45468 List!31197)) )
))
(declare-fun arrayNoDuplicates!0 (array!90593 (_ BitVec 32) List!31197) Bool)

(assert (=> b!1335247 (= res!886258 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31194))))

(declare-fun b!1335248 () Bool)

(declare-fun res!886256 () Bool)

(assert (=> b!1335248 (=> (not res!886256) (not e!760509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90593 (_ BitVec 32)) Bool)

(assert (=> b!1335248 (= res!886256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!886257 () Bool)

(assert (=> start!112608 (=> (not res!886257) (not e!760509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112608 (= res!886257 (validMask!0 mask!1998))))

(assert (=> start!112608 e!760509))

(declare-fun e!760506 () Bool)

(declare-fun array_inv!32935 (array!90591) Bool)

(assert (=> start!112608 (and (array_inv!32935 _values!1320) e!760506)))

(assert (=> start!112608 true))

(declare-fun array_inv!32936 (array!90593) Bool)

(assert (=> start!112608 (array_inv!32936 _keys!1590)))

(assert (=> start!112608 tp!108539))

(assert (=> start!112608 tp_is_empty!36877))

(declare-fun b!1335249 () Bool)

(assert (=> b!1335249 (= e!760509 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54273)

(declare-fun zeroValue!1262 () V!54273)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592379 () Bool)

(declare-datatypes ((tuple2!24026 0))(
  ( (tuple2!24027 (_1!12023 (_ BitVec 64)) (_2!12023 V!54273)) )
))
(declare-datatypes ((List!31198 0))(
  ( (Nil!31195) (Cons!31194 (h!32403 tuple2!24026) (t!45469 List!31198)) )
))
(declare-datatypes ((ListLongMap!21695 0))(
  ( (ListLongMap!21696 (toList!10863 List!31198)) )
))
(declare-fun contains!8963 (ListLongMap!21695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5774 (array!90593 array!90591 (_ BitVec 32) (_ BitVec 32) V!54273 V!54273 (_ BitVec 32) Int) ListLongMap!21695)

(assert (=> b!1335249 (= lt!592379 (contains!8963 (getCurrentListMap!5774 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1335250 () Bool)

(assert (=> b!1335250 (= e!760506 (and e!760510 mapRes!56989))))

(declare-fun condMapEmpty!56989 () Bool)

(declare-fun mapDefault!56989 () ValueCell!17540)

