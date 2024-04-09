; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112458 () Bool)

(assert start!112458)

(declare-fun b_free!30817 () Bool)

(declare-fun b_next!30817 () Bool)

(assert (=> start!112458 (= b_free!30817 (not b_next!30817))))

(declare-fun tp!108088 () Bool)

(declare-fun b_and!49669 () Bool)

(assert (=> start!112458 (= tp!108088 b_and!49669)))

(declare-fun b!1332766 () Bool)

(declare-fun res!884518 () Bool)

(declare-fun e!759303 () Bool)

(assert (=> b!1332766 (=> (not res!884518) (not e!759303))))

(declare-datatypes ((array!90301 0))(
  ( (array!90302 (arr!43612 (Array (_ BitVec 32) (_ BitVec 64))) (size!44163 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90301)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90301 (_ BitVec 32)) Bool)

(assert (=> b!1332766 (= res!884518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332767 () Bool)

(declare-fun res!884522 () Bool)

(assert (=> b!1332767 (=> (not res!884522) (not e!759303))))

(declare-datatypes ((V!54073 0))(
  ( (V!54074 (val!18438 Int)) )
))
(declare-datatypes ((ValueCell!17465 0))(
  ( (ValueCellFull!17465 (v!21073 V!54073)) (EmptyCell!17465) )
))
(declare-datatypes ((array!90303 0))(
  ( (array!90304 (arr!43613 (Array (_ BitVec 32) ValueCell!17465)) (size!44164 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90303)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332767 (= res!884522 (and (= (size!44164 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44163 _keys!1590) (size!44164 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884520 () Bool)

(assert (=> start!112458 (=> (not res!884520) (not e!759303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112458 (= res!884520 (validMask!0 mask!1998))))

(assert (=> start!112458 e!759303))

(declare-fun e!759300 () Bool)

(declare-fun array_inv!32839 (array!90303) Bool)

(assert (=> start!112458 (and (array_inv!32839 _values!1320) e!759300)))

(assert (=> start!112458 true))

(declare-fun array_inv!32840 (array!90301) Bool)

(assert (=> start!112458 (array_inv!32840 _keys!1590)))

(assert (=> start!112458 tp!108088))

(declare-fun tp_is_empty!36727 () Bool)

(assert (=> start!112458 tp_is_empty!36727))

(declare-fun b!1332768 () Bool)

(declare-fun res!884519 () Bool)

(assert (=> b!1332768 (=> (not res!884519) (not e!759303))))

(declare-datatypes ((List!31094 0))(
  ( (Nil!31091) (Cons!31090 (h!32299 (_ BitVec 64)) (t!45299 List!31094)) )
))
(declare-fun arrayNoDuplicates!0 (array!90301 (_ BitVec 32) List!31094) Bool)

(assert (=> b!1332768 (= res!884519 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31091))))

(declare-fun b!1332769 () Bool)

(declare-fun res!884521 () Bool)

(assert (=> b!1332769 (=> (not res!884521) (not e!759303))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332769 (= res!884521 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44163 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332770 () Bool)

(declare-fun e!759301 () Bool)

(assert (=> b!1332770 (= e!759301 tp_is_empty!36727)))

(declare-fun mapIsEmpty!56764 () Bool)

(declare-fun mapRes!56764 () Bool)

(assert (=> mapIsEmpty!56764 mapRes!56764))

(declare-fun b!1332771 () Bool)

(declare-fun e!759304 () Bool)

(assert (=> b!1332771 (= e!759300 (and e!759304 mapRes!56764))))

(declare-fun condMapEmpty!56764 () Bool)

(declare-fun mapDefault!56764 () ValueCell!17465)

