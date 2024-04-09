; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112494 () Bool)

(assert start!112494)

(declare-fun b_free!30853 () Bool)

(declare-fun b_next!30853 () Bool)

(assert (=> start!112494 (= b_free!30853 (not b_next!30853))))

(declare-fun tp!108196 () Bool)

(declare-fun b_and!49717 () Bool)

(assert (=> start!112494 (= tp!108196 b_and!49717)))

(declare-fun b!1333321 () Bool)

(declare-fun res!884904 () Bool)

(declare-fun e!759576 () Bool)

(assert (=> b!1333321 (=> (not res!884904) (not e!759576))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90373 0))(
  ( (array!90374 (arr!43648 (Array (_ BitVec 32) (_ BitVec 64))) (size!44199 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90373)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((V!54121 0))(
  ( (V!54122 (val!18456 Int)) )
))
(declare-fun minValue!1262 () V!54121)

(declare-fun zeroValue!1262 () V!54121)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17483 0))(
  ( (ValueCellFull!17483 (v!21091 V!54121)) (EmptyCell!17483) )
))
(declare-datatypes ((array!90375 0))(
  ( (array!90376 (arr!43649 (Array (_ BitVec 32) ValueCell!17483)) (size!44200 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90375)

(declare-datatypes ((tuple2!23942 0))(
  ( (tuple2!23943 (_1!11981 (_ BitVec 64)) (_2!11981 V!54121)) )
))
(declare-datatypes ((List!31119 0))(
  ( (Nil!31116) (Cons!31115 (h!32324 tuple2!23942) (t!45338 List!31119)) )
))
(declare-datatypes ((ListLongMap!21611 0))(
  ( (ListLongMap!21612 (toList!10821 List!31119)) )
))
(declare-fun contains!8921 (ListLongMap!21611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5741 (array!90373 array!90375 (_ BitVec 32) (_ BitVec 32) V!54121 V!54121 (_ BitVec 32) Int) ListLongMap!21611)

(assert (=> b!1333321 (= res!884904 (contains!8921 (getCurrentListMap!5741 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333322 () Bool)

(declare-fun res!884903 () Bool)

(assert (=> b!1333322 (=> (not res!884903) (not e!759576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90373 (_ BitVec 32)) Bool)

(assert (=> b!1333322 (= res!884903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333323 () Bool)

(declare-fun res!884909 () Bool)

(assert (=> b!1333323 (=> (not res!884909) (not e!759576))))

(assert (=> b!1333323 (= res!884909 (not (= (select (arr!43648 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333324 () Bool)

(declare-fun e!759572 () Bool)

(declare-fun tp_is_empty!36763 () Bool)

(assert (=> b!1333324 (= e!759572 tp_is_empty!36763)))

(declare-fun b!1333325 () Bool)

(declare-fun res!884901 () Bool)

(assert (=> b!1333325 (=> (not res!884901) (not e!759576))))

(declare-datatypes ((List!31120 0))(
  ( (Nil!31117) (Cons!31116 (h!32325 (_ BitVec 64)) (t!45339 List!31120)) )
))
(declare-fun arrayNoDuplicates!0 (array!90373 (_ BitVec 32) List!31120) Bool)

(assert (=> b!1333325 (= res!884901 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31117))))

(declare-fun res!884908 () Bool)

(assert (=> start!112494 (=> (not res!884908) (not e!759576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112494 (= res!884908 (validMask!0 mask!1998))))

(assert (=> start!112494 e!759576))

(declare-fun e!759575 () Bool)

(declare-fun array_inv!32863 (array!90375) Bool)

(assert (=> start!112494 (and (array_inv!32863 _values!1320) e!759575)))

(assert (=> start!112494 true))

(declare-fun array_inv!32864 (array!90373) Bool)

(assert (=> start!112494 (array_inv!32864 _keys!1590)))

(assert (=> start!112494 tp!108196))

(assert (=> start!112494 tp_is_empty!36763))

(declare-fun mapNonEmpty!56818 () Bool)

(declare-fun mapRes!56818 () Bool)

(declare-fun tp!108197 () Bool)

(assert (=> mapNonEmpty!56818 (= mapRes!56818 (and tp!108197 e!759572))))

(declare-fun mapKey!56818 () (_ BitVec 32))

(declare-fun mapValue!56818 () ValueCell!17483)

(declare-fun mapRest!56818 () (Array (_ BitVec 32) ValueCell!17483))

(assert (=> mapNonEmpty!56818 (= (arr!43649 _values!1320) (store mapRest!56818 mapKey!56818 mapValue!56818))))

(declare-fun b!1333326 () Bool)

(declare-fun e!759573 () Bool)

(assert (=> b!1333326 (= e!759575 (and e!759573 mapRes!56818))))

(declare-fun condMapEmpty!56818 () Bool)

(declare-fun mapDefault!56818 () ValueCell!17483)

